#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool GJSmartPrefab::init() {
    m_prefabID = (*reinterpret_cast<int*>(geode::base::get() + GEODE_WINDOWS(0x6ba174) GEODE_IOS(0x84be00)))++;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
GJSmartPrefab* GJSmartPrefab::createWithCoder(DS_Dictionary* dict) {
    auto ret = GJSmartPrefab::create();
    ret->dataLoaded(dict);
    return ret;
}

bool GJSmartPrefab::canEncode() { return true; }

void GJSmartPrefab::dataLoaded(DS_Dictionary* dict) {
    m_prefabData = dict->getStringForKey("1");
    m_prefabChance = dict->getIntegerForKey("2");
}
#endif

#if defined(GEODE_IS_IOS)
#endif

