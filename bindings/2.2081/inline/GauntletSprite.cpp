#include <Geode/Geode.hpp>

GauntletSprite::GauntletSprite() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
cocos2d::ccColor3B GauntletSprite::colorForType(GauntletType type) {
    switch (type) {
        case GauntletType::Fire: return { 255, 200, 200 };
        case GauntletType::Lava: return { 200, 200, 200 };
        case GauntletType::Bonus: return { 225, 225, 100 };
        case GauntletType::Monster: return { 200, 200, 200 };
        case GauntletType::Doom: return { 200, 200, 200 };
        default: return { 225, 225, 225 };
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
GauntletSprite* GauntletSprite::create(GauntletType type, bool locked) {
    auto ret = new GauntletSprite();
    if (ret->init(type, locked)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void GauntletSprite::addNormalSprite() {
    auto normalSprite = cocos2d::CCSprite::createWithSpriteFrameName(GauntletNode::frameForType(m_gauntletType).c_str());
    this->addChild(normalSprite);
    normalSprite->setPosition(this->getContentSize() / 2);
}

bool GauntletSprite::init(GauntletType type, bool locked) {
    if (!CCNode::init()) return false;

    m_gauntletType = type;
    this->setContentSize({ 60.0f, 60.0f });
    this->toggleLockedSprite(locked);

    return true;
}

float GauntletSprite::luminanceForType(GauntletType type) {
    switch (type) {
        case GauntletType::Fire: return 1.1f;
        case GauntletType::Ice: return 0.9f;
        case GauntletType::Shadow: return 1.6f;
        case GauntletType::Lava: return 1.3f;
        case GauntletType::Bonus: return 0.9f;
        case GauntletType::Chaos: return 1.5f;
        case GauntletType::Spike: return 0.8f;
        default: return 1.0f;
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

