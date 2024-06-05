#include "Common.hpp"

#ifdef GEODE_IS_ANDROID32

using namespace geode::prelude;

GEODE_SIZE_CHECK(GJBaseGameLayer, 0x2d68);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_player1, 0x894);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_player2, 0x898);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_queuedButtons, 0x2b5c);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_uiLayer, 0x2c10);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_started, 0x2c28);

GEODE_SIZE_CHECK(PlayLayer, 0x2f60);
GEODE_MEMBER_CHECK(PlayLayer, m_circleWaveArray, 0x2e24);
GEODE_MEMBER_CHECK(PlayLayer, m_attemptLabel, 0x2e38);
GEODE_MEMBER_CHECK(PlayLayer, m_progressBar, 0x2e44);
GEODE_MEMBER_CHECK(PlayLayer, m_isPaused, 0x2e99);

GEODE_SIZE_CHECK(GameObject, 0x488);
GEODE_MEMBER_CHECK(GameObject, m_particleString, 0x298);

GEODE_SIZE_CHECK(PlayerObject, 0x9c8);
GEODE_MEMBER_CHECK(PlayerObject, m_particleSystems, 0x580);
GEODE_MEMBER_CHECK(PlayerObject, m_gv0096, 0x68a);
GEODE_MEMBER_CHECK(PlayerObject, m_spiderSprite, 0x6d0);
GEODE_MEMBER_CHECK(PlayerObject, m_gameLayer, 0x9a8);

#endif
