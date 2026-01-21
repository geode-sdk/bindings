#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCNodeRGBA* cocos2d::CCNodeRGBA::create() {
	auto pRet = new cocos2d::CCNodeRGBA();

	if (pRet->init()) {
		pRet->autorelease();
		return pRet;
	}

	delete pRet;
	return nullptr;
}
#endif

