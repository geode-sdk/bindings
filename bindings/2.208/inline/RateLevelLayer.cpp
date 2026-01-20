#include <Geode/Geode.hpp>

RateLevelLayer::RateLevelLayer() {
    m_submitButton = nullptr;
    m_difficulties = nullptr;
    m_levelID = 0;
    m_levelRate = 0;
    m_delegate = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
RateLevelLayer::~RateLevelLayer() {
    CC_SAFE_RELEASE(m_difficulties);
}

RateLevelLayer* RateLevelLayer::create(int levelID) {
    auto ret = new RateLevelLayer();
    if (ret->init(levelID)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

