#include "Common.hpp"

#ifdef GEODE_IS_ARM_MAC

// GEODE_SIZE_CHECK(PlayLayer, 0x3790);

// GEODE_SIZE_CHECK(FMODAudioEngine, 0x648);
GEODE_MEMBER_CHECK(FMODAudioEngine, m_system, 0x1e8);


GEODE_MEMBER_CHECK(GJBaseGameLayer, m_groupDict, 0xde0);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_massiveFloatArray, 0xf6C);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_shaderLayer, 0x2fd8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_startPosObject, 0x2fe8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_isPracticeMode, 0x3050);


GEODE_SIZE_CHECK(CCTextInputNode, 0x258);

#endif
