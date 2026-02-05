#include <Geode/Bindings.hpp>

#if !defined(GEODE_IS_IOS)
SpriteDescription::SpriteDescription() {
    m_rotation = 0;
    m_zValue = 0;
    m_tag = 0;
    m_usesCustomTag = false;
    m_texture = nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SpriteDescription::~SpriteDescription() {
    CC_SAFE_RELEASE(m_texture);
}

SpriteDescription* SpriteDescription::createDescription(DS_Dictionary* dict) {
    auto ret = new SpriteDescription();
    if (ret->initDescription(dict)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

SpriteDescription* SpriteDescription::createDescription(cocos2d::CCDictionary* dict) {
    auto ret = new SpriteDescription();
    if (ret->initDescription(dict)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool SpriteDescription::initDescription(cocos2d::CCDictionary* dict) {
    m_position = cocos2d::CCPointFromString(dict->valueForKey("position")->getCString());
    m_scale = cocos2d::CCPointFromString(dict->valueForKey("scale")->getCString());
    m_flipped = cocos2d::CCPointFromString(dict->valueForKey("flipped")->getCString());
    m_rotation = dict->valueForKey("rotation")->floatValue();
    m_zValue = dict->valueForKey("zValue")->intValue();
    m_tag = dict->valueForKey("tag")->intValue();
    m_usesCustomTag = dict->valueForKey("usesCustomTag")->boolValue();
    if (m_usesCustomTag) {
        auto frameName = dict->valueForKey("texture")->getCString();
        m_texture = cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()->spriteFrameByName(frameName);
        m_texture->retain();
        m_texture->setFrameName(frameName);
    }
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

