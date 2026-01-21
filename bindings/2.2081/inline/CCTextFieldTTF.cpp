#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCTextFieldTTF* cocos2d::CCTextFieldTTF::textFieldWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize) {
    auto ret = new CCTextFieldTTF();
    if (ret->initWithPlaceHolder("", dimensions, alignment, fontName, fontSize)) {
        ret->autorelease();
        if (placeholder) ret->setPlaceHolder(placeholder);
    }
    delete ret;
    return nullptr;
}

bool cocos2d::CCTextFieldTTF::initWithPlaceHolder(const char* placeholder, const char* fontName, float fontSize) {
    if (placeholder) {
        CC_SAFE_DELETE(m_pPlaceHolder);
        m_pPlaceHolder = new std::string(placeholder);
    }
    return CCLabelTTF::initWithString(m_pPlaceHolder->c_str(), fontName, fontSize);
}

bool cocos2d::CCTextFieldTTF::initWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize) {
    if (placeholder) {
        CC_SAFE_DELETE(m_pPlaceHolder);
        m_pPlaceHolder = new std::string(placeholder);
    }
    return CCLabelTTF::initWithString(m_pPlaceHolder->c_str(), fontName, fontSize, dimensions, alignment);
}
#endif

