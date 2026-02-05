#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCLayerColor* cocos2d::CCLayerColor::create() {
	CCLayerColor* pRet = new CCLayerColor();
	if (pRet && pRet->init())
	{
		pRet->autorelease();
	}
	else
	{
		CC_SAFE_DELETE(pRet);
	}
	return pRet;
}

void cocos2d::CCLayerColor::changeWidthAndHeight(float w, float h) {
	this->setContentSize({ w, h });
}

void cocos2d::CCLayerColor::changeWidth(float w) {
	this->setContentSize({ w, m_obContentSize.height });
}

void cocos2d::CCLayerColor::changeHeight(float h) {
	this->setContentSize({ m_obContentSize.width, h });
}
#endif

