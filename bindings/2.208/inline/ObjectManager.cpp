#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
bool ObjectManager::animLoaded(char const* anim) {
    return m_loadedAnimations->objectForKey(anim) != nullptr;
}

cocos2d::CCDictionary* ObjectManager::getGlobalAnimCopy(char const* anim) {
    return static_cast<cocos2d::CCDictionary*>(static_cast<cocos2d::CCDictionary*>(m_objectDefinitions->objectForKey("GlobalAnimations"))->objectForKey(anim));
}

void ObjectManager::purgeObjectManager() {
    auto objectManager = reinterpret_cast<ObjectManager**>(geode::base::get() + 0x6a4e30);
    if (*objectManager) {
        (*objectManager)->release();
        *objectManager = nullptr;
    }
}

void ObjectManager::setLoaded(char const* objectName) {
    m_loadedAnimations->setObject(cocos2d::CCNode::create(), objectName);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

