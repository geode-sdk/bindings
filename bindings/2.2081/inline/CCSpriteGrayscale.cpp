#include <Geode/Geode.hpp>

CCSpriteGrayscale::CCSpriteGrayscale() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
CCSpriteGrayscale* CCSpriteGrayscale::create(gd::string const& file) {
    auto ret = new CCSpriteGrayscale();
    if (ret->initWithFile(file.c_str())) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

CCSpriteGrayscale* CCSpriteGrayscale::create(gd::string const& file, cocos2d::CCRect const& rect) {
    auto ret = new CCSpriteGrayscale();
    if (ret->initWithFile(file.c_str(), rect)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

CCSpriteGrayscale* CCSpriteGrayscale::createWithTexture(cocos2d::CCTexture2D* texture) {
    auto ret = new CCSpriteGrayscale();
    if (ret->initWithTexture(texture)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

CCSpriteGrayscale* CCSpriteGrayscale::createWithTexture(cocos2d::CCTexture2D* texture, cocos2d::CCRect const& rect, bool rotated) {
    auto ret = new CCSpriteGrayscale();
    if (ret->initWithTexture(texture, rect, rotated)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS)
CCSpriteGrayscale* CCSpriteGrayscale::createWithSpriteFrame(cocos2d::CCSpriteFrame* frame) {
    auto ret = new CCSpriteGrayscale();
    if (ret->initWithSpriteFrame(frame)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

