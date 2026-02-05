#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCPoint cocos2d::CCTouch::getDelta() const  {
	return getLocation() - getPreviousLocation();
}

cocos2d::CCPoint cocos2d::CCTouch::getPreviousLocation() const  {
	return CCDirector::sharedDirector()->convertToGL(m_prevPoint);
}

cocos2d::CCPoint cocos2d::CCTouch::getStartLocation() const  {
	return CCDirector::sharedDirector()->convertToGL(m_startPoint);
}
#endif

