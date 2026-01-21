#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
cocos2d::CCComponentContainer::CCComponentContainer(cocos2d::CCNode* p0) {
    m_pComponents = nullptr;
    m_pOwner = p0;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

