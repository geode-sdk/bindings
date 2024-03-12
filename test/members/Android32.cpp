#include "Common.hpp"

#ifdef GEODE_IS_ANDROID32

using namespace geode::prelude;

// Add known android struct members here

GEODE_MEMBER_CHECK(CCMenuItemSprite, m_pfnSelector, 0x11c);

GEODE_SIZE_CHECK(CCObject, 0x34);
GEODE_SIZE_CHECK(CCNode, 0x108);
GEODE_SIZE_CHECK(CCNodeRGBA, 0x118);
GEODE_SIZE_CHECK(CCLayer, 0x13c);
GEODE_SIZE_CHECK(CCLayerRGBA, 0x14c);
GEODE_SIZE_CHECK(CCLayerColor, 0x1b8);
GEODE_SIZE_CHECK(CCSprite, 0x1fc);

GEODE_SIZE_CHECK(CCMenu, 0x154);
GEODE_SIZE_CHECK(CCMenuItem, 0x12c);
GEODE_SIZE_CHECK(CCMenuItemSprite, 0x138);

GEODE_SIZE_CHECK(CCScale9Sprite, 0x1a4);

GEODE_SIZE_CHECK(FLAlertLayer, 0x1f0);
GEODE_SIZE_CHECK(BoomListView, 0x164);
GEODE_SIZE_CHECK(CustomListView, 0x168);
GEODE_SIZE_CHECK(CCMenuItemSpriteExtra, 0x174);
GEODE_SIZE_CHECK(LoadingLayer, 0x15c);
GEODE_SIZE_CHECK(GJDropDownLayer, 0x1e0);
GEODE_SIZE_CHECK(TableViewCell, 0x19c);
GEODE_SIZE_CHECK(Slider, 0x158);
GEODE_SIZE_CHECK(SliderTouchLogic, 0x174);
GEODE_SIZE_CHECK(CCScrollLayerExt, 0x184);
GEODE_SIZE_CHECK(TableView, 0x1dc);
GEODE_SIZE_CHECK(CCTextInputNode, 0x1a0);
GEODE_SIZE_CHECK(CCTouchDispatcher, 0x6c);
GEODE_SIZE_CHECK(CCSpritePlus, 0x208);

// GEODE_MEMBER_CHECK(CCTouchDispatcher, m_forcePrio, 0x60);

GEODE_MEMBER_CHECK(CCTextInputNode, m_maxLabelWidth, 0x164);
GEODE_MEMBER_CHECK(CCTextInputNode, m_textField, 0x17c);
GEODE_MEMBER_CHECK(FLAlertLayer, m_buttonMenu, 0x1b8);
GEODE_MEMBER_CHECK(FLAlertLayer, m_mainLayer, 0x1c8);
GEODE_MEMBER_CHECK(TableView, m_cellArray, 0x1b0);
GEODE_MEMBER_CHECK(TableViewCell, m_backgroundLayer, 0x190);
GEODE_SIZE_CHECK(CCBlockLayer, 0x1bc);


GEODE_SIZE_CHECK(GameObject, 0x488);
GEODE_SIZE_CHECK(EnhancedGameObject, 0x4f0);
GEODE_SIZE_CHECK(EffectGameObject, 0x668);
GEODE_SIZE_CHECK(TextGameObject, 0x490);
GEODE_SIZE_CHECK(SmartGameObject, 0x490);
GEODE_SIZE_CHECK(ParticleGameObject, 0x618);
GEODE_SIZE_CHECK(SpecialAnimGameObject, 0x4f0);
GEODE_SIZE_CHECK(RingObject, 0x668);
GEODE_SIZE_CHECK(StartPosObject, 0x668);
GEODE_SIZE_CHECK(LabelGameObject, 0x690);
GEODE_SIZE_CHECK(TeleportPortalObject, 0x6a0);
// GEODE_SIZE_CHECK(EventLinkTrigger, 0x688);

GEODE_MEMBER_CHECK(GJGameState, m_unk284, 0x284);
GEODE_MEMBER_CHECK(GJGameState, m_unk2b8, 0x2b4);
GEODE_MEMBER_CHECK(GJGameState, m_unk2e8, 0x2e8);

GEODE_SIZE_CHECK(GJBaseGameLayer, 0x2d60);

GEODE_MEMBER_CHECK(GJBaseGameLayer, m_level, 0x5f8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_player1, 0x88C); //used in PlayLayer::destroyPlayer for example // no silly createPlayer() is easier
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_player2, 0x890);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_levelSettings, 0x894);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_unknownCD0, 0x8ac);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_unk918, 0x918);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_groupDict, 0x954);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_objectLayer, 0x9c4);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_massiveFloatArray, 0xA40); //loop in init
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_isPracticeMode, 0x2a94);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_levelLength, 0x2ab8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_queuedButtons, 0x2B48);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_uiLayer, 0x2c04);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_sections, 0x2c2c);

GEODE_MEMBER_CHECK(PlayLayer, m_circleWaveArray, 0x2e18);
GEODE_MEMBER_CHECK(PlayLayer, m_progressBar, 0x2e38);

GEODE_MEMBER_CHECK(PlayerObject, m_unk4e4, 0x4d4);
GEODE_MEMBER_CHECK(PlayerObject, m_collidedObject, 0x514);
GEODE_MEMBER_CHECK(PlayerObject, m_particleSystems, 0x580);
GEODE_MEMBER_CHECK(PlayerObject, m_ghostTrail, 0x5d0);
GEODE_MEMBER_CHECK(PlayerObject, m_waveTrail, 0x610);
GEODE_MEMBER_CHECK(PlayerObject, m_unk644, 0x62c);
GEODE_MEMBER_CHECK(PlayerObject, m_unk658, 0x640);
GEODE_MEMBER_CHECK(PlayerObject, m_unk6a2, 0x68a);
GEODE_MEMBER_CHECK(PlayerObject, m_unk6a3, 0x68b);
GEODE_MEMBER_CHECK(PlayerObject, m_unk6a4, 0x6a4);
GEODE_MEMBER_CHECK(PlayerObject, m_objectSnappedTo, 0x6c0);
GEODE_MEMBER_CHECK(PlayerObject, m_unk6dc, 0x6d8);
GEODE_MEMBER_CHECK(PlayerObject, m_unk708, 0x704);
GEODE_MEMBER_CHECK(PlayerObject, m_hasCustomGlowColor, 0x770);
GEODE_MEMBER_CHECK(PlayerObject, m_isDart, 0x7ac);
GEODE_MEMBER_CHECK(PlayerObject, m_vehicleSize, 0x7e0);
GEODE_MEMBER_CHECK(PlayerObject, m_playerSpeed, 0x7e4);
GEODE_MEMBER_CHECK(PlayerObject, m_unk7e0, 0x7e8);
GEODE_MEMBER_CHECK(PlayerObject, m_lastGroundedPos, 0x81c);
GEODE_MEMBER_CHECK(PlayerObject, m_touchingRings, 0x824);
GEODE_MEMBER_CHECK(PlayerObject, m_position, 0x850);
GEODE_MEMBER_CHECK(PlayerObject, m_unk880, 0x880);
GEODE_MEMBER_CHECK(PlayerObject, m_platformerXVelocity, 0x8a8);
GEODE_MEMBER_CHECK(PlayerObject, m_isPlatformer, 0x920);
GEODE_MEMBER_CHECK(PlayerObject, m_unk930, 0x988);
GEODE_MEMBER_CHECK(PlayerObject, m_parentLayer, 0x9ac);
GEODE_MEMBER_CHECK(PlayerObject, m_actionManager, 0x9b0);

//GEODE_MEMBER_CHECK(LevelEditorLayer, m_coinCount, 0x2da8);
GEODE_MEMBER_CHECK(LevelEditorLayer, m_editorUI, 0x2e04);
//GEODE_MEMBER_CHECK(LevelEditorLayer, m_undoObjects, 0x2dec);

GEODE_MEMBER_CHECK(GameManager, m_gameLayer, 0x174);

GEODE_MEMBER_CHECK(EditorUI, m_selectedObjects, 0x260);
GEODE_MEMBER_CHECK(EditorUI, m_selectedObject, 0x370);
GEODE_MEMBER_CHECK(EditorUI, m_buttonBar, 0x1bc);
GEODE_MEMBER_CHECK(EditorUI, m_transformControl, 0x218);
GEODE_MEMBER_CHECK(EditorUI, m_editButtonBar, 0x22c);
GEODE_MEMBER_CHECK(EditorUI, m_positionSlider, 0x230);

GEODE_SIZE_CHECK(SetupTriggerPopup, 0x2a8);
GEODE_MEMBER_CHECK(ColorSelectPopup, m_colorAction, 0x2f0);


// playerobject and gameobject are kinda messed up rn
// GEODE_MEMBER_CHECK(PlayerObject, m_isDart, 0x794);
// GEODE_MEMBER_CHECK(PlayerObject, m_position, 0x804);

GEODE_MEMBER_CHECK(FMODAudioEngine, m_system, 0x184);

GEODE_MEMBER_CHECK(GameManager, m_playLayer, 0x16c);
GEODE_MEMBER_CHECK(GameManager, m_gameLayer, 0x174);

GEODE_SIZE_CHECK(GJGameState, 0x4b0);
GEODE_SIZE_CHECK(SimplePlayer, 0x22c);
GEODE_SIZE_CHECK(PlayLayer, 0x2F58);
// GEODE_SIZE_CHECK(PlayerObject, 0x970);

GEODE_MEMBER_CHECK(GameObject, m_hasExtendedCollision, 0x218);
GEODE_MEMBER_CHECK(GameObject, m_scaleX, 0x3e8);

GEODE_MEMBER_CHECK(EditorUI, m_editButtonBar, 0x22c);
GEODE_MEMBER_CHECK(EditorUI, m_positionSlider, 0x230);
GEODE_MEMBER_CHECK(EditorUI, m_selectedObjects, 0x260);
GEODE_MEMBER_CHECK(EditorUI, m_selectedMode, 0x338);
GEODE_MEMBER_CHECK(EditorUI, m_selectedObject, 0x370);

GEODE_MEMBER_CHECK(ChallengesPage, m_dots, 0x1FC)
GEODE_MEMBER_CHECK(ChallengesPage, m_challengeNodes, 0x210)

#endif