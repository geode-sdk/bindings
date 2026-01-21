#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
int ListButtonBar::getPage() {
    return m_scrollLayer->getRelativePageForNum(m_scrollLayer->m_page);
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

