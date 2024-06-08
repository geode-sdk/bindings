#include "Common.hpp"

#ifdef GEODE_IS_ARM_MAC

GEODE_SIZE_CHECK(PlayLayer, 0x3790);

GEODE_SIZE_CHECK(FMODAudioEngine, 0x648);
GEODE_MEMBER_CHECK(FMODAudioEngine, m_system, 0x1e8);

#endif
