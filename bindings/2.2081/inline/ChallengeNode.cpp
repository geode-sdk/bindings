#include <Geode/Geode.hpp>

ChallengeNode::ChallengeNode() {
    m_challengeItem = nullptr;
    m_countdownLabel = nullptr;
    m_unloaded = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void ChallengeNode::updateTimeLabel(gd::string text) {
    if (m_countdownLabel) m_countdownLabel->setString(text.c_str());
}
#endif

#if defined(GEODE_IS_WINDOWS)
ChallengeNode::~ChallengeNode() {
    CC_SAFE_RELEASE(m_challengeItem);
}

ChallengeNode* ChallengeNode::create(GJChallengeItem* challengeItem, ChallengesPage* challengesPage, bool isNew) {
    auto ret = new ChallengeNode();
    if (ret->init(challengeItem, challengesPage, isNew)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

