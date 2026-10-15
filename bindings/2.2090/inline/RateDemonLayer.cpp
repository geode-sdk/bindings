#include <Geode/Bindings.hpp>

RateDemonLayer::RateDemonLayer() {
    m_uploadFinished = false;
    m_submitButton = nullptr;
    m_demons = nullptr;
    m_unkPtr = nullptr;
    m_levelID = 0;
    m_demonRate = 0;
    m_moderator = false;
    m_popup = nullptr;
    m_delegate = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
RateDemonLayer::~RateDemonLayer() {
    auto glm = GameLevelManager::sharedState();
    if (glm->m_uploadActionDelegate == this) glm->m_uploadActionDelegate = nullptr;
    CC_SAFE_RELEASE(m_demons);
}

RateDemonLayer* RateDemonLayer::create(int levelID) {
    auto ret = new RateDemonLayer();
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

