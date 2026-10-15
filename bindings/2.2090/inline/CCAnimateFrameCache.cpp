#include <Geode/Bindings.hpp>

CCAnimateFrameCache* CCAnimateFrameCache::get() {
    return CCAnimateFrameCache::sharedSpriteFrameCache();
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void CCAnimateFrameCache::purgeSharedSpriteFrameCache() {
    auto** instancePtr = reinterpret_cast<CCAnimateFrameCache**>(geode::base::get() + GEODE_WINDOWS(0x6c2e80) GEODE_IOS(0x86c220));
    if (*instancePtr) {
        (*instancePtr)->release();
        *instancePtr = nullptr;
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
cocos2d::CCDictionary* CCAnimateFrameCache::addDict(cocos2d::CCDictionary* dict, char const* filename) {
    m_animateDescriptions->setObject(dict, filename);
    auto container = static_cast<cocos2d::CCDictionary*>(dict->objectForKey("animationContainer"));
    auto keys = container->allKeys();
    for (int i = 0; i < keys->count(); i++) {
        auto key = static_cast<cocos2d::CCString*>(keys->objectAtIndex(i))->getCString();
        auto animation = static_cast<cocos2d::CCDictionary*>(container->objectForKey(key));
        auto frames = cocos2d::CCArray::create();
        m_animateFrames->setObject(frames, key);
        for (int i = 0; i < animation->count(); i++) {
            auto frame = animation->objectForKey(cocos2d::CCString::createWithFormat("sprite_%i", i)->getCString());
            frames->addObject(SpriteDescription::createDescription(static_cast<cocos2d::CCDictionary*>(frame)));
        }
    }
    return dict;
}

bool CCAnimateFrameCache::init() {
    m_animateFrames = cocos2d::CCDictionary::create();
    m_animateFrames->retain();
    m_unk040 = cocos2d::CCDictionary::create();
    m_unk040->retain();
    m_animateDescriptions = cocos2d::CCDictionary::create();
    m_animateDescriptions->retain();
    return true;
}

void CCAnimateFrameCache::removeSpriteFrames() {
    m_animateFrames->removeAllObjects();
    m_unk040->removeAllObjects();
    m_animateDescriptions->removeAllObjects();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

