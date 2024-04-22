#include "Common.hpp"

#ifdef GEODE_IS_IOS

GEODE_MEMBER_CHECK(GJBaseGameLayer, m_level, 0x780);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_player1, 0xc90);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_objectLayer, 0xea8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_massiveFloatArray, 0xf64);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_isPracticeMode, 0x3048);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_levelLength, 0x3078);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_isTestMode, 0x3088);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_queuedButtons, 0x3150);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_uiLayer, 0x3290);
GEODE_MEMBER_CHECK(PlayLayer, m_attemptLabel, 0x35f0);

GEODE_SIZE_CHECK(GJBaseGameLayer, 0x34b8);
GEODE_SIZE_CHECK(PlayLayer, 0x3780);
GEODE_SIZE_CHECK(GameObject, 0x548);
GEODE_SIZE_CHECK(PlayerObject, 0xbe8);

#endif