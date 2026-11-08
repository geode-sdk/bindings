#include <Geode/binding/GJChallengeItem.hpp>

void GJChallengeItem::setCount(int value) {
    m_count = value;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GJChallengeItem* GJChallengeItem::create() {
    return create(GJChallengeType::Unknown, 0, 0, 0, "");
}

GJChallengeItem* GJChallengeItem::createWithCoder(DS_Dictionary* dict) {
    auto ret = GJChallengeItem::create();
    ret->dataLoaded(dict);
    return ret;
}

bool GJChallengeItem::canEncode() { return true; }

void GJChallengeItem::dataLoaded(DS_Dictionary* dict) {
    m_challengeType = (GJChallengeType)dict->getIntegerForKey("1");
    m_timeLeft = dict->getIntegerForKey("5");
    m_canClaim = dict->getBoolForKey("6");
    m_name = dict->getStringForKey("7");
    m_count = dict->getIntegerForKey("2");
    m_goal = dict->getIntegerForKey("3");
    m_reward = dict->getIntegerForKey("4");
    m_position = dict->getIntegerForKey("8");
}

void GJChallengeItem::incrementCount(int add) {
    if (m_canClaim) return;
    auto newCount = m_count.value() + add;
    if (m_goal.value() <= newCount) {
        m_canClaim = true;
        m_count = m_goal.value();
    }
    else {
        m_count = newCount;
    }
}

bool GJChallengeItem::init(GJChallengeType challengeType, int goal, int reward, int timeLeft, std::string questName) {
    m_challengeType = challengeType;
    m_goal = goal;
    m_reward = reward;
    m_timeLeft = timeLeft;
    m_name = questName;
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

