#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCLayerGradient* cocos2d::CCLayerGradient::create() {
    auto ret = new CCLayerGradient();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::CCLayerGradient* cocos2d::CCLayerGradient::create(cocos2d::ccColor4B const& a1, cocos2d::ccColor4B const& a2, cocos2d::CCPoint const& a3) {
	auto ret = create(a1, a2);
	ret->setVector(a3);
	return ret;
}
#endif

