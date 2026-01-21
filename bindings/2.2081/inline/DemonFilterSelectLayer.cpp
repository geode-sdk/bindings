#include <Geode/Geode.hpp>

DemonFilterSelectLayer::DemonFilterSelectLayer() {
    m_demons = nullptr;
    m_unkPtr = nullptr;
    m_currentDemon = 0;
    m_delegate = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
DemonFilterSelectLayer::~DemonFilterSelectLayer() {
    CC_SAFE_RELEASE(m_demons);
}

DemonFilterSelectLayer* DemonFilterSelectLayer::create() {
    auto ret = new DemonFilterSelectLayer();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

