#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
bool CCContentManager::init() {
    m_pDictCache = cocos2d::CCDictionary::create();
    m_pDictCache->retain();
    return true;
}
#endif

