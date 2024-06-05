#include "Common.hpp"

#ifdef GEODE_IS_ANDROID64

using namespace geode::prelude;


GEODE_SIZE_CHECK(GJBaseGameLayer, 0x3690);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_player1, 0xdb8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_player2, 0xdc0);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_objectLayer, 0xff0);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_queuedButtons, 0x3308);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_uiLayer, 0x3468);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_started, 0x3490);

GEODE_SIZE_CHECK(PlayLayer, 0x3970);
GEODE_MEMBER_CHECK(PlayLayer, m_circleWaveArray, 0x37b0);
GEODE_MEMBER_CHECK(PlayLayer, m_attemptLabel, 0x37d0);
GEODE_MEMBER_CHECK(PlayLayer, m_progressBar, 0x37e8);
GEODE_MEMBER_CHECK(PlayLayer, m_isPaused, 0x386d);

GEODE_SIZE_CHECK(GameObject, 0x538);
GEODE_MEMBER_CHECK(GameObject, m_particleString, 0x310);

GEODE_SIZE_CHECK(PlayerObject, 0xc38);
GEODE_MEMBER_CHECK(PlayerObject, m_particleSystems, 0x678);
GEODE_MEMBER_CHECK(PlayerObject, m_gv0096, 0x802);
GEODE_MEMBER_CHECK(PlayerObject, m_spiderSprite, 0x878);
GEODE_MEMBER_CHECK(PlayerObject, m_gameLayer, 0xc10);

#endif
