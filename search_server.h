#pragma once

#include <istream>
#include <ostream>
#include <set>
#include <list>
#include <vector>
#include <map>
#include <string>
#include <mutex>

using namespace std;

struct WordStatistics {
    size_t id;
    size_t word_frequency;
};

struct SearchResult {
    size_t doc_id;
    size_t hit_count;
};

struct QResult {
    string query;
    vector<SearchResult> result;
};

inline bool comp_search_results(const SearchResult &lhs, const SearchResult &rhs);

class InvertedIndex {
public:

    InvertedIndex() {
        docs.reserve(15000);
    }

    void Add(const string &document);

    const vector<WordStatistics> &Lookup(string word);

    const size_t GetDocument(size_t id) const {
        return docs[id];
    }

    constexpr size_t Size() const {
        return docs.size();
    }

    void ClearDataBase() {
        docs.clear();
        docs.reserve(15000);
        database.clear();
    }

    bool IsFresh() {
        return fresh;
    }

    void ReSetFresh() {
        fresh = false;
    }

private:
    map<string, vector<WordStatistics>> database;
    bool fresh = true;
    vector<size_t> docs;
};


class SearchServer {
public:
    SearchServer() = default;

    explicit SearchServer(istream &document_input);

    void UpdateDocumentBase(istream &document_input);

    void AddQueriesStream(istream &query_input, ostream &search_results_output);

private:
    InvertedIndex index;
};
