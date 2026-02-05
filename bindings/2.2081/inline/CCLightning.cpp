#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
cocos2d::CCLightning* cocos2d::CCLightning::lightningWithStrikePoint(cocos2d::CCPoint p0) {
	auto ret = new CCLightning();
	if (ret->initWithStrikePoint(p0)) {
		ret->autorelease();
		return ret;
	}
	delete ret;
	return nullptr;
}

bool cocos2d::CCLightning::initWithStrikePoint(cocos2d::CCPoint p0) {
	return this->initWithStrikePoint(p0, CCPointZero, .5f);
}

void cocos2d::CCLightning::strikeRandom() {
	m_seed = rand();
	this->strike();
}

void cocos2d::CCLightning::strikeWithSeed(uint64_t seed) {
	m_seed = seed;
	this->strike();
}
#endif

#if defined(GEODE_IS_WINDOWS)
cocos2d::CCLightning::~CCLightning() {
    if (m_lightningPoints) {
        free(m_lightningPoints);
        m_lightningPoints = nullptr;
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

