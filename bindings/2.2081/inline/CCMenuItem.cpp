#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void cocos2d::CCMenuItem::setTarget(cocos2d::CCObject* rec, cocos2d::SEL_MenuHandler selector) {
	m_pListener = rec;
	m_pfnSelector = selector;
}
#endif

