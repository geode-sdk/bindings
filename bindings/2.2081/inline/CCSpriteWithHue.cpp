#include <Geode/Bindings.hpp>

CCSpriteWithHue::CCSpriteWithHue() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
CCSpriteWithHue* CCSpriteWithHue::create(gd::string const& file) {
    auto ret = new CCSpriteWithHue();
    if (ret->initWithFile(file.c_str())) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

CCSpriteWithHue* CCSpriteWithHue::create(gd::string const& file, cocos2d::CCRect const& rect) {
    auto ret = new CCSpriteWithHue();
    if (ret->initWithFile(file.c_str(), rect)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

CCSpriteWithHue* CCSpriteWithHue::createWithTexture(cocos2d::CCTexture2D* texture) {
    auto ret = new CCSpriteWithHue();
    if (ret->initWithTexture(texture)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

CCSpriteWithHue* CCSpriteWithHue::createWithTexture(cocos2d::CCTexture2D* texture, cocos2d::CCRect const& rect, bool rotated) {
    auto ret = new CCSpriteWithHue();
    if (ret->initWithTexture(texture, rect, rotated)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

float CCSpriteWithHue::getAlpha() {
    return _displayedOpacity / 255.f;
}

float CCSpriteWithHue::getHue() {
    return m_hue;
}

void CCSpriteWithHue::setCustomLuminance(float r, float g, float b) {
    m_luminance[0] = r;
    m_luminance[1] = g;
    m_luminance[2] = b;
}

void CCSpriteWithHue::setHue(float hue) {
    m_hue = hue;
    this->updateColorMatrix();
}

void CCSpriteWithHue::setupDefaultSettings() {
    m_hue = 0.f;
    this->setLuminance(1.f);
}

void CCSpriteWithHue::updateHue(float unused) {
    this->setHue(m_hue + 0.05235988f);
}
#endif

#if defined(GEODE_IS_WINDOWS)
CCSpriteWithHue* CCSpriteWithHue::createWithSpriteFrame(cocos2d::CCSpriteFrame* frame) {
    auto ret = new CCSpriteWithHue();
    if (ret->initWithSpriteFrame(frame)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

CCSpriteWithHue* CCSpriteWithHue::createWithSpriteFrameName(gd::string const& frameName) {
    return CCSpriteWithHue::createWithSpriteFrame(cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()->spriteFrameByName(frameName.c_str()));
}

void CCSpriteWithHue::getUniformLocations() {
    m_uHueLoc = glGetUniformLocation(m_pShaderProgram->getProgram(), "u_hue");
    m_uAlphaLoc = glGetUniformLocation(m_pShaderProgram->getProgram(), "u_alpha");
    m_uLumLoc = glGetUniformLocation(m_pShaderProgram->getProgram(), "u_lum");
}

void CCSpriteWithHue::setEvenLuminance(float luminance) {
    m_luminance[0] = luminance * 0.33f;
    m_luminance[1] = luminance * 0.33f;
    m_luminance[2] = luminance * 0.33f;
}

void CCSpriteWithHue::setHueDegrees(float degrees) {
    auto deg = degrees;
    while (deg < 0.f) deg += 360.f;
    this->setHue(deg / 360.f * 6.28318548f);
}

void CCSpriteWithHue::setLuminance(float luminance) {
    m_luminance[0] = luminance * 0.21f;
    m_luminance[1] = luminance * 0.72f;
    m_luminance[2] = luminance * 0.07f;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

