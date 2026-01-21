#include <Geode/Geode.hpp>

CCIndexPath::CCIndexPath() {
    m_row = 0;
    m_section = 0;
}

CCIndexPath* CCIndexPath::CCIndexPathWithSectionRow(int section, int row) {
    auto ret = new CCIndexPath();
    ret->m_row = row;
    ret->m_section = section;
    ret->autorelease();
    return ret;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

