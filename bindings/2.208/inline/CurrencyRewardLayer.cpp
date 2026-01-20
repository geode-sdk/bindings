#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void CurrencyRewardLayer::createObjects(CurrencySpriteType type, int count, cocos2d::CCPoint position, float time) {
    this->createObjectsFull(type, count, nullptr, position, time);
}

void CurrencyRewardLayer::createUnlockObject(cocos2d::CCSprite* sprite, cocos2d::CCPoint position, float time) {
    this->createObjectsFull(CurrencySpriteType::Icon, 1, sprite, position, time);
}

void CurrencyRewardLayer::incrementCount(int count) {
    if (m_orbsLabel == nullptr) return;
    m_orbs += count;
    this->pulseSprite(m_orbsSprite);
    m_orbsLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
}

void CurrencyRewardLayer::incrementDiamondsCount(int count) {
    if (m_diamondsLabel == nullptr) return;
    m_diamonds += count;
    this->pulseSprite(m_diamondsSprite);
    m_diamondsLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
}

void CurrencyRewardLayer::incrementMoonsCount(int count) {
    if (m_moonsLabel == nullptr) return;
    m_moons += count;
    this->pulseSprite(m_moonsSprite);
    m_moonsLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
}

void CurrencyRewardLayer::incrementSpecialCount1(int count) {
    if (m_keysLabel == nullptr) return;
    m_keys += count;
    this->pulseSprite(m_keysSprite);
    m_keysLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
}

void CurrencyRewardLayer::incrementSpecialCount2(int count) {
    if (m_shardsLabel == nullptr) return;
    m_shards += count;
    this->pulseSprite(m_shardsSprite);
    m_shardsLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
}

void CurrencyRewardLayer::incrementStarsCount(int count) {
    if (m_starsLabel == nullptr) return;
    m_stars += count;
    this->pulseSprite(m_starsSprite);
    m_starsLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
}
#endif

#if defined(GEODE_IS_IOS)
#endif

