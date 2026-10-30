#include <Geode/binding/FRequestProfilePage.hpp>
#include <Geode/mapping/CCString.hpp>

bool FRequestProfilePage::ownsTouchPrio() { return true; }

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void FRequestProfilePage::updateLevelsLabel() {
    auto end = m_pageStartIdx + m_pageEndIdx;
    auto count = m_itemCount;
    if (end >= count) end = count;
    m_pageLabel->setString(cocos2d::CCString::createWithFormat("%i to %i of %i", m_pageStartIdx + 1, end, count)->getCString());
    this->updateSelectUI();
}

void FRequestProfilePage::updatePageArrows() {
    m_prevButton->setVisible(m_pageStartIdx != 0);
    m_nextButton->setVisible(m_pageStartIdx + m_pageEndIdx < m_itemCount);
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

