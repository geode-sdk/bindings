#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCLabelTTF* cocos2d::CCLabelTTF::create() {
    auto ret = new CCLabelTTF();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::CCLabelTTF* cocos2d::CCLabelTTF::create(char const* string, char const* fontName, float fontSize) {
    return CCLabelTTF::create(string, fontName, fontSize,
        CCSizeZero, kCCTextAlignmentCenter, kCCVerticalTextAlignmentTop);
}

cocos2d::CCLabelTTF* cocos2d::CCLabelTTF::create(char const* string, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment hAlignment) {
    return CCLabelTTF::create(string, fontName, fontSize, dimensions, hAlignment, kCCVerticalTextAlignmentTop);
}

cocos2d::CCLabelTTF* cocos2d::CCLabelTTF::create(char const* string, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment hAlignment, cocos2d::CCVerticalTextAlignment vAlignment) {
    CCLabelTTF *pRet = new CCLabelTTF();
    if(pRet && pRet->initWithString(string, fontName, fontSize, dimensions, hAlignment, vAlignment))
    {
        pRet->autorelease();
        return pRet;
    }
    CC_SAFE_DELETE(pRet);
    return NULL;
}

cocos2d::CCLabelTTF* cocos2d::CCLabelTTF::createWithFontDefinition(char const* p0, cocos2d::ccFontDefinition& p1) {
    auto ret = new CCLabelTTF();
    if (ret->initWithStringAndTextDefinition(p0, p1)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::ccFontDefinition cocos2d::CCLabelTTF::_prepareTextDefinition(bool p0) {
    auto factor = CCDirector::sharedDirector()->getContentScaleFactor();

    ccFontDefinition texDef;
    texDef.m_fontSize = p0 ? m_fFontSize * factor : m_fFontSize;
    texDef.m_fontName = *m_pFontName;
    texDef.m_alignment = m_hAlignment;
    texDef.m_vertAlignment = m_vAlignment;
    texDef.m_dimensions = p0 ? CCSize { m_tDimensions.width * factor, m_tDimensions.height * factor } : m_tDimensions;
    
    if (m_strokeEnabled) {
        texDef.m_stroke.m_strokeEnabled = true;
        texDef.m_stroke.m_strokeColor = m_strokeColor;
        texDef.m_stroke.m_strokeSize = p0 ? m_strokeSize * factor : m_strokeSize;
    }
    else texDef.m_stroke.m_strokeEnabled = false;

    if (m_shadowEnabled) {
        texDef.m_shadow.m_shadowEnabled = true;
        texDef.m_shadow.m_shadowBlur = m_shadowBlur;
        texDef.m_shadow.m_shadowOpacity = m_shadowOpacity;
        texDef.m_shadow.m_shadowOffset = p0 ? CCSize { m_shadowOffset.width * factor, m_shadowOffset.height * factor } : m_shadowOffset;
    }
    else texDef.m_shadow.m_shadowEnabled = false;

    texDef.m_fontFillColor = m_textFillColor;

    return texDef;
}

void cocos2d::CCLabelTTF::_updateWithTextDefinition(cocos2d::ccFontDefinition& p0, bool p1) {
    m_tDimensions = p0.m_dimensions;
    m_hAlignment = p0.m_alignment;
    m_vAlignment = p0.m_vertAlignment;
    m_pFontName = new std::string(p0.m_fontName);
    m_fFontSize = p0.m_fontSize;

    if (p0.m_shadow.m_shadowEnabled) {
        this->enableShadow(p0.m_shadow.m_shadowOffset, p0.m_shadow.m_shadowOpacity, p0.m_shadow.m_shadowBlur, false);
    }

    if (p0.m_stroke.m_strokeEnabled) {
        this->enableStroke(p0.m_stroke.m_strokeColor, p0.m_stroke.m_strokeSize, false);
    }

    this->setFontFillColor(p0.m_fontFillColor, false);

    if (p1) this->updateTexture();
}

char const* cocos2d::CCLabelTTF::description() {
    return CCString::createWithFormat("<CCLabelTTF | FontName = %s, FontSize = %.1f>", m_pFontName->c_str(), m_fFontSize)->getCString();
}

void cocos2d::CCLabelTTF::disableShadow(bool p0) {
    if (m_shadowEnabled) {
        m_shadowEnabled = false;
        if (p0) this->updateTexture();
    }
}

void cocos2d::CCLabelTTF::disableStroke(bool p0) {
    if (m_strokeEnabled) {
        m_strokeEnabled = false;
        if (p0) this->updateTexture();
    }
}

void cocos2d::CCLabelTTF::enableShadow(cocos2d::CCSize const& p0, float p1, float p2, bool p3) {
    auto changed = false;
    if (!m_shadowEnabled) {
        m_shadowEnabled = true;
        changed = true;
    }
    if (m_shadowOffset.width != p0.width || m_shadowOffset.height != p0.height) {
        m_shadowOffset = p0;
        changed = true;
    }
    if (m_shadowOpacity != p1) {
        m_shadowOpacity = p1;
        changed = true;
    }
    if (m_shadowBlur != p2) {
        m_shadowBlur = p2;
        changed = true;
    }
    if (changed && p3) this->updateTexture();
}

void cocos2d::CCLabelTTF::enableStroke(cocos2d::ccColor3B const& p0, float p1, bool p2) {
    auto changed = false;
    if (!m_strokeEnabled) {
        m_strokeEnabled = true;
        changed = true;
    }
    if (m_strokeColor.r != p0.r || m_strokeColor.g != p0.g || m_strokeColor.b != p0.b) {
        m_strokeColor = p0;
        changed = true;
    }
    if (m_strokeSize != p1) {
        m_strokeSize = p1;
        changed = true;
    }
    if (changed && p2) this->updateTexture();
}

char const* cocos2d::CCLabelTTF::getFontName() {
    return m_pFontName->c_str();
}

cocos2d::ccFontDefinition* cocos2d::CCLabelTTF::getTextDefinition() {
    auto definition = new ccFontDefinition();
    *definition = _prepareTextDefinition(false);
    return definition;
}

bool cocos2d::CCLabelTTF::initWithString(char const* label, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment alignment) {
    return this->initWithString(label, fontName, fontSize, dimensions, alignment, kCCVerticalTextAlignmentTop);
}

bool cocos2d::CCLabelTTF::initWithStringAndTextDefinition(char const* p0, cocos2d::ccFontDefinition& p1) {
    if (!CCSprite::init()) return false;
    this->setShaderProgram(CCShaderCache::sharedShaderCache()->programForKey(kCCShader_PositionTextureColor));
    _updateWithTextDefinition(p1, false);
    this->setString(p0);
    return true;
}

void cocos2d::CCLabelTTF::setFontFillColor(cocos2d::ccColor3B const& p0, bool p1) {
    if (m_textFillColor.r != p0.r || m_textFillColor.g != p0.g || m_textFillColor.b != p0.b) {
        m_textFillColor = p0;
        if (p1) this->updateTexture();
    }
}

void cocos2d::CCLabelTTF::setFontName(char const* p0) {
    if (m_pFontName->compare(p0)) {
        delete m_pFontName;
        m_pFontName = new std::string(p0);
        if (m_string.size() > 0) this->updateTexture();
    }
}

void cocos2d::CCLabelTTF::setTextDefinition(cocos2d::ccFontDefinition* p0) {
    if (p0) _updateWithTextDefinition(*p0, true);
}
#endif

