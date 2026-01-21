#include <Geode/Geode.hpp>

ChallengesPage::ChallengesPage() {
    m_dots = nullptr;
    m_countdownLabel = nullptr;
    m_circle = nullptr;
    m_triedToLoad = false;
    m_unkBool = false;
    m_currencyRewardLayer = nullptr;
    m_challengeNodes = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
ChallengesPage::~ChallengesPage() {
    auto glm = GameLevelManager::sharedState();
    if (glm->m_GJChallengeDelegate == this) glm->m_GJChallengeDelegate = nullptr;
    if (m_currencyRewardLayer) m_currencyRewardLayer->m_delegate = nullptr;
    CC_SAFE_RELEASE(m_challengeNodes);
    CC_SAFE_RELEASE(m_dots);
}

ChallengesPage* ChallengesPage::create() {
    auto ret = new ChallengesPage();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void ChallengesPage::FLAlert_Clicked(FLAlertLayer* layer, bool btn2) {}
#endif

#if defined(GEODE_IS_IOS)
#endif

