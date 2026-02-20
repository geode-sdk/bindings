#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCMenuItem* cocos2d::CCMenuItem::create() {
	return CCMenuItem::create(nullptr, nullptr);
}

cocos2d::CCMenuItem* cocos2d::CCMenuItem::create(cocos2d::CCObject* rec, cocos2d::SEL_MenuHandler selector) {
	auto ret = new CCMenuItem();
	ret->initWithTarget(rec, selector);
	ret->autorelease();
	return ret;
}

void cocos2d::CCMenuItem::setTarget(cocos2d::CCObject* rec, cocos2d::SEL_MenuHandler selector) {
	m_pListener = rec;
	m_pfnSelector = selector;
}
#endif

