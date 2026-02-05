#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
int InfoLayer::getAccountID() {
    if (m_levelList) return m_levelList->m_accountID;
    if (m_level) return m_level->m_accountID.value();
    return 0;
}

int InfoLayer::getID() {
    if(m_score) return m_score->m_userID;
    if(m_levelList) return - m_levelList->m_listID;
    if(m_level) return m_level->m_levelID;
    return 0;
}

int InfoLayer::getRealID() {
    if (m_score) return m_score->m_userID;
    if (m_levelList) return m_levelList->m_listID;
    if (m_level) return m_level->m_levelID.value();
    return 0;
}

void InfoLayer::onSimilar(cocos2d::CCObject* sender) {
    auto searchObject = GJSearchObject::create(SearchType::Similar, cocos2d::CCString::createWithFormat("%i", m_level->m_levelID.value())->getCString());
    cocos2d::CCDirector::sharedDirector()->replaceScene(cocos2d::CCTransitionFade::create(.5f, LevelBrowserLayer::scene(searchObject)));
    m_buttonMenu->setEnabled(false);
}
#endif

#if defined(GEODE_IS_WINDOWS)
void InfoLayer::updateLevelsLabel() {
    auto end = m_pageEndIdx + m_pageStartIdx;
    auto count = m_itemCount;
    if (end > count) end = count;
    m_pageLabel->setString(cocos2d::CCString::createWithFormat("%i to %i of %i", m_pageStartIdx + 1, end, count)->getCString());
}
#endif

#if defined(GEODE_IS_IOS)
#endif

