#include "search_server.h"

#include <algorithm>
#include <iterator>
#include <sstream>

vector<string> SplitIntoWords(const string &line) {
    istringstream words_input(line);
    return {istream_iterator<string>(words_input), istream_iterator<string>()};
}

SearchServer::SearchServer(istream &document_input) {
    UpdateDocumentBase(document_input);
}

void SearchServer::UpdateDocumentBase(istream &document_input) {
    // if DB is not fresh (i.e. it has been populated)
    if (!index.IsFresh()) {
        // clear the database
        index.ClearDataBase();
    }
    // reset the index
    index.ReSetFresh();
    // add the document to the DB (Inverted Index)
    for (string current_document; getline(document_input, current_document);) {
        index.Add(current_document);
    }
}

/**
 * Function for comparing two pairs<doc_id, hit_count>.
 * @param lhs
 * @param rhs
 * @return true if the hit_count of the first pair is greater than the hit_count of the second pair
 *          and the id of the first pair is less than the id of the second pair;
 */
inline bool comp(const pair<size_t, size_t> &lhs, const pair<size_t, size_t> &rhs) {
    int64_t lhs_docid = lhs.first;
    int64_t rhs_docid = rhs.first;
    return make_pair(lhs.second, -lhs_docid) > make_pair(rhs.second, -rhs_docid);
}

void SearchServer::AddQueriesStream(
        istream &query_input, ostream &search_results_output
) {
    // create the vector that will store ids of documents as its indices and number of hit_counts as values
    vector<size_t> doc_id_to_hit_count;
    // reserve space beforehand, since we know that the number of docs is less than 50_000
    doc_id_to_hit_count.reserve(50000);
    for (string current_query; getline(query_input, current_query);) {
        // add the current query to the output
        search_results_output << current_query << ':';
        // assign 0 values to as many elements as there are in the DB
        doc_id_to_hit_count.assign(index.Size(), 0);
        // flag to check if the doc contains a word from query
        bool found = false;
        // check every word from the query
        for (auto word : SplitIntoWords(current_query)) {
            // index.Lookup returns the vector<WordStatistics> (doc_id, frequency of a word)
            for (const auto &[d_id, freq]: index.Lookup(move(word))) {
                // fill the vector accordingly
                doc_id_to_hit_count[d_id] += freq;
                // if at least one word is found, set the flag to true
                found = true;
            }
        }
        vector<pair<size_t, size_t>> search_results;
        // skip the whole section of sorting and outputting if the word is not found
        if (found) {
            for (size_t i = 0; i != doc_id_to_hit_count.size(); ++i) {
                // add a pair of doc id and its hit_count to search_results vector
                if (doc_id_to_hit_count[i] != 0) {
                    search_results.push_back(make_pair(i, doc_id_to_hit_count[i]));
                }
            }

            // here we select minimum of 5 and size of the search_results since we need
            // maximum 5 relevant results of the search
            size_t middle = (search_results.size() <= 5) ? search_results.size() : 5;

            // perform partial sort (sorts only elements from 0 to middle) by the given comparator
            // it works faster than complete sort
            partial_sort(
                    search_results.begin(),
                    search_results.begin() + middle,
                    search_results.end(),
                    comp
            );

            for (int i = 0; i < middle; ++i) {
                search_results_output << " {"
                                      << "docid: " << search_results[i].first << ", "
                                      << "hitcount: " << search_results[i].second << '}';
            }
        }
        search_results_output << "\n";
    }

}

/**
 * Adds a document id to the vector and
 * fills the map of word_to_DocumentStat. Every word in the document
 * is a key in the map, while values are pairs of the doc id and the word frequency.
 * This map wil be used for look up of documents.
 */
void InvertedIndex::Add(const string &document) {
    // id of a new document is the size of the vector
    const size_t docid = docs.size();
    docs.push_back(docid);
    // split the document into separate words
    for (string word : SplitIntoWords(document)) {
        // get the vector of WordStatistics (doc_id, frequency of the word in the doc)
        vector<WordStatistics> &documents = database[move(word)];
        // if the vector is empty or the docid is not the same -> the word for this document has just been inserted
        if (documents.empty() || documents.back().id != docid) {
            // so add new statistics for the document
            documents.push_back({docid, 1});
        } else {
            // increase the statistics for the docid
            ++documents.back().word_frequency;
        }
    }
}

/**
 * Searches for a given word in the map of word_to_list_of_document_ids.
 *
 * @param word to search for.
 * @return the list of document ids.
 */
const vector<WordStatistics> &InvertedIndex::Lookup(string word) {
    return database[move(word)];
}
