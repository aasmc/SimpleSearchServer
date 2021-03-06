#pragma once

#include <algorithm>
using namespace std;

template <typename It>
class IteratorRange {
public:
    IteratorRange(It first, It last) : first(first), last(last) {
    }

    It begin() const {
        return first;
    }

    It end() const {
        return last;
    }

    size_t size() const {
        return last - first;
    }

private:
    It first, last;
};

/**
 * Returns the head of the container (either top number of elements or the entire container).
 *
 * std::move_iterator is an iterator adaptor which behaves exactly like the underlying iterator
 * (which must be at least an LegacyInputIterator or model input_iterator (since C++20)),
 * except that dereferencing converts the value returned by the underlying iterator into an rvalue.
 * If this iterator is used as an input iterator, the effect is that the values are moved from, rather than copied from.
 *
 * @tparam Container
 * @param c
 * @param top
 * @return
 */
template <typename Container>
auto Head(Container& c, int top) {
    return IteratorRange(make_move_iterator(begin(c)), make_move_iterator(begin(c) + min<size_t>(max(top, 0), c.size())));
}

/**
 * Class that splits range of iterators into pages of certain size. Last page may
 * be smaller than the page size.
 *
 * @tparam Iterator type of iterators
 */
template<typename Iterator>
class Paginator {
private:
    vector<IteratorRange<Iterator>> pages;

public:
    Paginator(Iterator begin, Iterator end, size_t page_size) {
        for (size_t left = distance(begin, end); left > 0;) {
            size_t current_page_size = min(page_size, left);
            Iterator current_page_end = next(begin, current_page_size);
            pages.push_back({begin, current_page_end});

            left -= current_page_size;
            begin = current_page_end;
        }
    }

    auto begin() const {
        return pages.begin();
    }

    auto end() const {
        return pages.end();
    }

    size_t size() const {
        return pages.size();
    }
};

template<typename C>
auto Paginate(C &c, size_t page_size) {
    return Paginator(begin(c), end(c), page_size);
}
