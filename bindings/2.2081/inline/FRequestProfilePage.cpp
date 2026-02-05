#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void FRequestProfilePage::updateLevelsLabel() {}

void FRequestProfilePage::updatePageArrows() {
    m_prevButton->setVisible(m_pageStartIdx != 0);
    m_nextButton->setVisible(m_pageStartIdx + m_pageEndIdx < m_itemCount);
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

