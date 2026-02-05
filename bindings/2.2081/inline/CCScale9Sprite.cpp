#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::extension::CCScale9Sprite* cocos2d::extension::CCScale9Sprite::create() {
    auto ret = new CCScale9Sprite();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::extension::CCScale9Sprite* cocos2d::extension::CCScale9Sprite::create(char const* pszname) {
	CCScale9Sprite* ret = new CCScale9Sprite;
	if (ret->initWithFile(pszname)) {
		ret->autorelease();
		return ret;
	}

	delete ret;
	return nullptr;
}

cocos2d::extension::CCScale9Sprite* cocos2d::extension::CCScale9Sprite::create(cocos2d::CCRect capInsets, char const* filename) {
    CCScale9Sprite* ret = new CCScale9Sprite;
    if (ret->initWithFile(capInsets, filename)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::extension::CCScale9Sprite* cocos2d::extension::CCScale9Sprite::create(char const* filename, cocos2d::CCRect rect, cocos2d::CCRect capInsets) {
    CCScale9Sprite* ret = new CCScale9Sprite;
    if (ret->initWithFile(filename, rect, capInsets)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::extension::CCScale9Sprite* cocos2d::extension::CCScale9Sprite::createWithSpriteFrame(cocos2d::CCSpriteFrame* p0) {
    auto ret = new CCScale9Sprite();
    if (ret->initWithSpriteFrame(p0)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::extension::CCScale9Sprite* cocos2d::extension::CCScale9Sprite::createWithSpriteFrame(cocos2d::CCSpriteFrame* p0, cocos2d::CCRect p1) {
    auto ret = new CCScale9Sprite();
    if (ret->initWithSpriteFrame(p0, p1)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::extension::CCScale9Sprite* cocos2d::extension::CCScale9Sprite::createWithSpriteFrameName(char const* spriteFrameName) {
	CCScale9Sprite* ret = new CCScale9Sprite;
	if (ret->initWithSpriteFrameName(spriteFrameName)) {
		ret->autorelease();
		return ret;
	}

	delete ret;
	return nullptr;
}

cocos2d::extension::CCScale9Sprite* cocos2d::extension::CCScale9Sprite::createWithSpriteFrameName(char const* spriteFrameName, cocos2d::CCRect capInsets) {
	CCScale9Sprite* ret = new CCScale9Sprite;
	if (ret->initWithSpriteFrameName(spriteFrameName, capInsets)) {
		ret->autorelease();
		return ret;
	}

	delete ret;
	return nullptr;
}

cocos2d::extension::CCScale9Sprite* cocos2d::extension::CCScale9Sprite::resizableSpriteWithCapInsets(cocos2d::CCRect p0) {
    auto ret = new CCScale9Sprite();
    if (ret->initWithBatchNode(_scale9Image, m_spriteRect, p0)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

