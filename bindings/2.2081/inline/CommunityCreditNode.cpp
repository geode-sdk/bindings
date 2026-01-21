#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool CommunityCreditNode::init(int unlockType, int iconID, int unknown, gd::string author) {
    if (!CCNode::init()) return false;
    m_unlockType = unlockType;
    m_iconID = iconID;
    m_unknown = unknown;
    m_author = author;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

