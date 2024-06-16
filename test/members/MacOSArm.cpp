#include "Common.hpp"

#ifdef GEODE_IS_ARM_MAC

// GEODE_SIZE_CHECK(PlayLayer, 0x3790);
GEODE_MEMBER_CHECK(PlayLayer, m_coinArray, 0x3508);
GEODE_MEMBER_CHECK(PlayLayer, m_hasCompletedLevel, 0x368D);
GEODE_MEMBER_CHECK(PlayLayer, m_isPaused, 0x36F7);

// GEODE_SIZE_CHECK(FMODAudioEngine, 0x648);
GEODE_MEMBER_CHECK(FMODAudioEngine, m_system, 0x1e8);


GEODE_MEMBER_CHECK(GJBaseGameLayer, m_groupDict, 0xde0);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_massiveFloatArray, 0xf6c);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_shaderLayer, 0x2fd8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_startPosObject, 0x2fe8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_isPracticeMode, 0x3050);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_queuedButtons, 0x3158);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_unk3458, 0x3288);


GEODE_SIZE_CHECK(CCTextInputNode, 0x258);

#endif
