#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void DS_Dictionary::setSubDictForKey(char const* p0) {
    this->setSubDictForKey(p0, false, false);
}

void DS_Dictionary::stepOutOfSubDict() {
    if (dictTree.size() > 1) dictTree.pop_back();
}
#endif

