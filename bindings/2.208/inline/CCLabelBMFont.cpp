#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCLabelBMFont* cocos2d::CCLabelBMFont::create() {
	auto pRet = new CCLabelBMFont();

	if (pRet && pRet->init())
	{
		pRet->autorelease();
		return pRet;
	}

	CC_SAFE_DELETE(pRet);
	return nullptr;
}

cocos2d::CCLabelBMFont* cocos2d::CCLabelBMFont::create(char const* str, char const* fntFile, float width) {
    return cocos2d::CCLabelBMFont::create(str, fntFile, width, kCCTextAlignmentLeft, CCPointZero);
}

cocos2d::CCLabelBMFont* cocos2d::CCLabelBMFont::create(char const* str, char const* fntFile, float width, cocos2d::CCTextAlignment alignment) {
    return cocos2d::CCLabelBMFont::create(str, fntFile, width, alignment, CCPointZero);
}

char const* cocos2d::CCLabelBMFont::getFntFile() {
    return m_sFntFile.c_str();
}

void cocos2d::CCLabelBMFont::setFntFile(char const* filename) {
    if (filename != NULL && strcmp(filename, m_sFntFile.c_str()) != 0 ) {
        CCBMFontConfiguration *newConf = FNTConfigLoadFile(filename);
        CCAssert( newConf, "CCLabelBMFont: Impossible to create font. Please check file");

        m_sFntFile = filename;

        CC_SAFE_RETAIN(newConf);
        CC_SAFE_RELEASE(m_pConfiguration);
        m_pConfiguration = newConf;

        this->setTexture(CCTextureCache::sharedTextureCache()->addImage(m_pConfiguration->getAtlasName(), false));
        this->createFontChars();
    }
}
#endif

