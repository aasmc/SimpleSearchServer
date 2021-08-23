#pragma once

#include "iterator_range.h"

#include <string_view>
#include <sstream>
#include <vector>

using namespace std;

/**
 * Joins elements in a container [cont] into std::string with a given delimiter.
 * Elements in the container must override << operator.
 *
 * @tparam Container
 * @param c delimiter used to join the elements in container.
 * @param cont container of elements to be joined to string.
 * @return string representation of the joined elements.
 */
template<typename Container>
string Join(char c, const Container &cont) {
    ostringstream os;
    for (const auto &item : Head(cont, cont.size() - 1)) {
        os << item << c;
    }
    os << *rbegin(cont);
    return os.str();
}

/**
 * Removes leading and trailing spaces from a string view.
 * @param s string_view to be processed.
 * @return string_view that contains no leading or trailing spaces.
 */
string_view Strip(string_view s);

/**
 * Splits a given string_view into a vector of string_views by a given delimiter [sep].
 * @param s
 * @param sep
 * @return
 */
vector<string_view> SplitBy(string_view s, char sep);
