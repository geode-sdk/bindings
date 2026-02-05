#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
int cocos2d::CCTouchHandler::getPriority() {
	return m_nPriority;
}

void cocos2d::CCTouchHandler::setPriority(int prio) {
	m_nPriority = prio;
}
#endif

