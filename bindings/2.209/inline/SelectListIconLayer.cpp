#include <Geode/Bindings.hpp>

SelectListIconLayer::SelectListIconLayer() {
    m_difficulties = nullptr;
    m_currentDifficulty = 0;
    m_delegate = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SelectListIconLayer::~SelectListIconLayer() {
    CC_SAFE_RELEASE(m_difficulties);
}

SelectListIconLayer* SelectListIconLayer::create(int difficulty) {
    auto ret = new SelectListIconLayer();
    if (ret->init(difficulty)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

