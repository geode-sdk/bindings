#include "Common.hpp"

#ifdef GEODE_IS_ANDROID64

using namespace geode::prelude;

GEODE_SIZE_CHECK(CCObject, 0x38);
GEODE_SIZE_CHECK(CCNode, 0x140);
GEODE_SIZE_CHECK(CCNodeRGBA, 0x158);
GEODE_SIZE_CHECK(CCLayer, 0x198);
GEODE_SIZE_CHECK(CCLayerColor, 0x220);
GEODE_SIZE_CHECK(CCSprite, 0x258);

GEODE_SIZE_CHECK(CCMenu, 0x1b8);
GEODE_SIZE_CHECK(CCMenuItem, 0x178);
GEODE_SIZE_CHECK(CCMenuItemSprite, 0x190);

GEODE_SIZE_CHECK(CCScale9Sprite, 0x208);

GEODE_SIZE_CHECK(FLAlertLayer, 0x278);
GEODE_SIZE_CHECK(BoomListView, 0x1d0);
GEODE_SIZE_CHECK(CustomListView, 0x1d8);
GEODE_SIZE_CHECK(CCMenuItemSpriteExtra, 0x1d8);
GEODE_SIZE_CHECK(LoadingLayer, 0x1c8);
GEODE_SIZE_CHECK(GJDropDownLayer, 0x268);
GEODE_SIZE_CHECK(TableViewCell, 0x218);
GEODE_SIZE_CHECK(Slider, 0x1c8);
GEODE_SIZE_CHECK(SliderTouchLogic, 0x1e0);
GEODE_SIZE_CHECK(CCScrollLayerExt, 0x200);
GEODE_SIZE_CHECK(TableView, 0x290);
GEODE_SIZE_CHECK(CCTextInputNode, 0x238);
GEODE_SIZE_CHECK(CCTouchDispatcher, 0x90);

GEODE_MEMBER_CHECK(TableViewCell, m_mainLayer, 0x208);
GEODE_MEMBER_CHECK(TableView, m_cellDelegate, 0x268);
GEODE_MEMBER_CHECK(CCTextInputNode, m_textField, 0x1f8);

GEODE_MEMBER_CHECK(GameLevelManager, m_commentUploadDelegate, 0x2e8);

GEODE_MEMBER_CHECK(GJAccountManager, m_username, 0x148);
GEODE_MEMBER_CHECK(GJAccountManager, m_GJP2, 0x160);

// playerobject and gameobject are kinda messed up rn
// GEODE_MEMBER_CHECK(PlayerObject, m_isShip, 0x951);
// GEODE_MEMBER_CHECK(PlayerObject, m_position, 0x9d0);

GEODE_MEMBER_CHECK(SimplePlayer, m_hasCustomGlowColor, 0x29c);

GEODE_MEMBER_CHECK(GJBaseGameLayer, m_gameState, 0x1a8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_level, 0x890);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_player1, 0xdb0);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_player2, 0xdb8);
//GEODE_MEMBER_CHECK(GJBaseGameLayer, m_objectLayer, 0xfe8);
//^ figuring the actual position of this member is left as an exercise to the reader
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_massiveFloatArray, 0x10dc);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_isPracticeMode, 0x3208);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_queuedButtons, 0x3300);

GEODE_MEMBER_CHECK(GameManager, m_playLayer, 0x1d8);
GEODE_MEMBER_CHECK(GameManager, m_levelEditorLayer, 0x1e0);
GEODE_MEMBER_CHECK(GameManager, m_gameLayer, 0x1e8);

GEODE_MEMBER_CHECK(FMODAudioEngine, m_system, 0x218);

GEODE_SIZE_CHECK(SimplePlayer, 0x2a8);
//GEODE_SIZE_CHECK(PlayLayer, 0x3960);
GEODE_SIZE_CHECK(GJBaseGameLayer, 0x3688);
// GEODE_SIZE_CHECK(PlayerObject, 0xbb0);
// GEODE_SIZE_CHECK(GameObject, 0x538);

GEODE_MEMBER_CHECK(LevelInfoLayer, m_circle, 0x270);
GEODE_MEMBER_CHECK(LevelInfoLayer, m_challenge, 0x2A8);
GEODE_MEMBER_CHECK(LevelInfoLayer, m_songWidget, 0x2C8);

#endif