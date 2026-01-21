#include <Geode/Geode.hpp>

GravityEffectSprite::GravityEffectSprite() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GravityEffectSprite* GravityEffectSprite::create() {
    auto ret = new GravityEffectSprite();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void GravityEffectSprite::draw() {}

void GravityEffectSprite::updateSpritesColor(cocos2d::ccColor3B color) {
    if (auto gravityBatchNode = this->getChildByTag(1)) {
        auto children = gravityBatchNode->getChildren();
        for (int i = 0; i < children->count(); i++) {
            static_cast<cocos2d::CCSprite*>(children->objectAtIndex(i))->setColor(color);
        }
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

