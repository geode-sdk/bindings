#include "Common.hpp"

#ifdef GEODE_IS_WINDOWS

using namespace geode::prelude;

GEODE_SIZE_CHECK(CCNode, 0x108);
// GEODE_MEMBER_CHECK(CCNode, m_pUserObject, 0xcc);

GEODE_SIZE_CHECK(CCSprite, 0x1fc);

GEODE_SIZE_CHECK(CCLayer, 0x13c);

GEODE_SIZE_CHECK(CCLayerColor, 0x1b8);

// GEODE_SIZE_CHECK(CCLabelBMFont, 0x194);

GEODE_SIZE_CHECK(CCDirector, 0x130);
GEODE_MEMBER_CHECK(CCDirector, m_pobOpenGLView, 0x8c);
GEODE_MEMBER_CHECK(CCDirector, m_fFrameRate, 0xac);
GEODE_MEMBER_CHECK(CCDirector, m_pRunningScene, 0xcc);
GEODE_MEMBER_CHECK(CCDirector, m_pobScenesStack, 0xd8);
GEODE_MEMBER_CHECK(CCDirector, m_obWinSizeInPoints, 0xe8);


GEODE_MEMBER_CHECK(CCTextInputNode, m_allowedChars, 0x174);
GEODE_MEMBER_CHECK(CCTextInputNode, m_maxLabelWidth, 0x18c);
GEODE_MEMBER_CHECK(CCTextInputNode, m_maxLabelScale, 0x190);
GEODE_MEMBER_CHECK(CCTextInputNode, m_placeholderScale, 0x194);
GEODE_MEMBER_CHECK(CCTextInputNode, m_placeholderColor, 0x198);

GEODE_MEMBER_CHECK(GJListLayer, m_listView, 0x1b8);

GEODE_MEMBER_CHECK(BoomListView, m_tableView, 0x144);
GEODE_MEMBER_CHECK(BoomListView, m_entries, 0x148);

GEODE_MEMBER_CHECK(TableView, m_cellArray, 0x1b0);
GEODE_MEMBER_CHECK(CCScrollLayerExt, m_cutContent, 0x16c);

GEODE_SIZE_CHECK(SliderThumb, 0x140);
GEODE_SIZE_CHECK(Slider, 0x158);
GEODE_MEMBER_CHECK(Slider, m_touchLogic, 0x13c);
GEODE_SIZE_CHECK(SliderTouchLogic, 0x178);

GEODE_MEMBER_CHECK(ButtonSprite, m_label, 0x214);

GEODE_MEMBER_CHECK(GameLevelManager, m_mainLevels, 0x110);
GEODE_MEMBER_CHECK(GameLevelManager, m_searchFilters, 0x114);
GEODE_MEMBER_CHECK(GameLevelManager, m_onlineLevels, 0x118);
GEODE_MEMBER_CHECK(GameLevelManager, m_followedCreators, 0x120);
GEODE_MEMBER_CHECK(GameLevelManager, m_GLM21, 0x124);
GEODE_MEMBER_CHECK(GameLevelManager, m_likedLevels, 0x12C);
GEODE_MEMBER_CHECK(GameLevelManager, m_ratedLevels, 0x130);
GEODE_MEMBER_CHECK(GameLevelManager, m_ratedDemons, 0x134);
GEODE_MEMBER_CHECK(GameLevelManager, m_reportedLevels, 0x138);
GEODE_MEMBER_CHECK(GameLevelManager, m_onlineFolders, 0x13C);
GEODE_MEMBER_CHECK(GameLevelManager, m_localLevelsFolders, 0x140);
GEODE_MEMBER_CHECK(GameLevelManager, m_dailyLevels, 0x144);
GEODE_MEMBER_CHECK(GameLevelManager, m_dailyIDUnk, 0x150);
GEODE_MEMBER_CHECK(GameLevelManager, m_weeklyIDUnk, 0x15C);
GEODE_MEMBER_CHECK(GameLevelManager, m_gauntletLevels, 0x16C);
GEODE_MEMBER_CHECK(GameLevelManager, m_availableFilters, 0x170);
GEODE_MEMBER_CHECK(GameLevelManager, m_savedGauntlets, 0x198);
GEODE_MEMBER_CHECK(GameLevelManager, m_levelManagerDelegate, 0x1ec);
GEODE_MEMBER_CHECK(GameLevelManager, m_commentUploadDelegate, 0x1f8);

GEODE_MEMBER_CHECK(GameStatsManager, m_trueString, 0x10c);
GEODE_MEMBER_CHECK(GameStatsManager, m_specialRewardDescriptions, 0x128);

GEODE_MEMBER_CHECK(GameStatsManager, m_specialChestsLite, 0x168);

GEODE_MEMBER_CHECK(GameStatsManager, m_dailyChests, 0x174);
GEODE_MEMBER_CHECK(GameStatsManager, m_worldAdvertChests, 0x178);
GEODE_MEMBER_CHECK(GameStatsManager, m_activeChallenges, 0x17C);
GEODE_MEMBER_CHECK(GameStatsManager, m_upcomingChallenges, 0x180);
GEODE_MEMBER_CHECK(GameStatsManager, m_playerStats, 0x190);
GEODE_MEMBER_CHECK(GameStatsManager, m_completedLevels, 0x1D4);
GEODE_MEMBER_CHECK(GameStatsManager, m_verifiedUserCoins, 0x1D8);
GEODE_MEMBER_CHECK(GameStatsManager, m_pendingUserCoins, 0x1DC);
GEODE_MEMBER_CHECK(GameStatsManager, m_purchasedItems, 0x1E0);
GEODE_MEMBER_CHECK(GameStatsManager, m_onlineCurrencyScores, 0x1E4);
GEODE_MEMBER_CHECK(GameStatsManager, m_mainCurrencyScores, 0x1E8);
GEODE_MEMBER_CHECK(GameStatsManager, m_gauntletCurrencyScores, 0x1EC);
GEODE_MEMBER_CHECK(GameStatsManager, m_timelyCurrencyScores, 0x1F0);
GEODE_MEMBER_CHECK(GameStatsManager, m_onlineStars, 0x1F4);
GEODE_MEMBER_CHECK(GameStatsManager, m_timelyStars, 0x1F8);
GEODE_MEMBER_CHECK(GameStatsManager, m_gauntletDiamondScores, 0x1FC);
GEODE_MEMBER_CHECK(GameStatsManager, m_timelyDiamondScores, 0x200);
GEODE_MEMBER_CHECK(GameStatsManager, m_unusedCurrencyAwardDict, 0x204);
GEODE_MEMBER_CHECK(GameStatsManager, m_challengeDiamonds, 0x208);
GEODE_MEMBER_CHECK(GameStatsManager, m_completedMappacks, 0x20C);
GEODE_MEMBER_CHECK(GameStatsManager, m_completedLists, 0x210);
GEODE_MEMBER_CHECK(GameStatsManager, m_weeklyChest, 0x214);
GEODE_MEMBER_CHECK(GameStatsManager, m_treasureRoomChests, 0x218);
GEODE_MEMBER_CHECK(GameStatsManager, m_miscChests, 0x228);
GEODE_MEMBER_CHECK(GameStatsManager, m_enabledItems, 0x22C);
GEODE_MEMBER_CHECK(GameStatsManager, m_GS29, 0x24C);
GEODE_MEMBER_CHECK(GameStatsManager, m_activePath, 0x250);

GEODE_SIZE_CHECK(GJBaseGameLayer, 0x2d80);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_gameState, 0x148);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_level, 0x5e0);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_player1, 0x878);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_player2, 0x87c);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_objectLayer, 0x9b8);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_massiveFloatArray, 0xa2c);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_isPracticeMode, 0x2a7c);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_practiceMusicSync, 0x2a7d);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_levelLength, 0x2aa0);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_isTestMode, 0x2aac);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_queuedButtons, 0x2b50);
GEODE_MEMBER_CHECK(GJBaseGameLayer, m_sections, 0x2c48);

GEODE_MEMBER_CHECK(PlayLayer, m_circleWaveArray, 0x2e38);
GEODE_MEMBER_CHECK(PlayLayer, m_attemptLabel, 0x2e4c);
GEODE_MEMBER_CHECK(PlayLayer, m_progressBar, 0x2e58);

// CustomSongWidget

GEODE_MEMBER_CHECK(CustomSongWidget, m_songInfoObject, 0x110);
GEODE_MEMBER_CHECK(CustomSongWidget, m_buttonMenu, 0x114);
GEODE_MEMBER_CHECK(CustomSongWidget, m_songLabel, 0x118);
GEODE_MEMBER_CHECK(CustomSongWidget, m_artistLabel, 0x11c);
GEODE_MEMBER_CHECK(CustomSongWidget, m_songIDLabel, 0x120);
GEODE_MEMBER_CHECK(CustomSongWidget, m_errorLabel, 0x124);
GEODE_MEMBER_CHECK(CustomSongWidget, m_downloadBtn, 0x128);
GEODE_MEMBER_CHECK(CustomSongWidget, m_cancelDownloadBtn, 0x12c);
GEODE_MEMBER_CHECK(CustomSongWidget, m_selectSongBtn, 0x130);
GEODE_MEMBER_CHECK(CustomSongWidget, m_getSongInfoBtn, 0x134);
GEODE_MEMBER_CHECK(CustomSongWidget, m_playbackBtn, 0x138);
GEODE_MEMBER_CHECK(CustomSongWidget, m_moreBtn, 0x13c);
GEODE_MEMBER_CHECK(CustomSongWidget, m_deleteBtn, 0x140);
GEODE_MEMBER_CHECK(CustomSongWidget, m_sliderGroove, 0x144);
GEODE_MEMBER_CHECK(CustomSongWidget, m_sliderBar, 0x148);
GEODE_MEMBER_CHECK(CustomSongWidget, m_bgSpr, 0x14c);
GEODE_MEMBER_CHECK(CustomSongWidget, m_songDelegate, 0x150);
GEODE_MEMBER_CHECK(CustomSongWidget, m_showSelectSongBtn, 0x154);
GEODE_MEMBER_CHECK(CustomSongWidget, m_showPlayMusicBtn, 0x155);
GEODE_MEMBER_CHECK(CustomSongWidget, m_showDownloadBtn, 0x156);
GEODE_MEMBER_CHECK(CustomSongWidget, m_isNotDownloading, 0x157);
GEODE_MEMBER_CHECK(CustomSongWidget, m_isRobtopSong, 0x158);
GEODE_MEMBER_CHECK(CustomSongWidget, m_isMusicLibrary, 0x159);
GEODE_MEMBER_CHECK(CustomSongWidget, m_customSongID, 0x15c);
GEODE_MEMBER_CHECK(CustomSongWidget, m_unkFloat, 0x160);
GEODE_MEMBER_CHECK(CustomSongWidget, m_unkBool1, 0x164);
GEODE_MEMBER_CHECK(CustomSongWidget, m_unkPtr, 0x168);
GEODE_MEMBER_CHECK(CustomSongWidget, m_hasLibrarySongs, 0x16c);
GEODE_MEMBER_CHECK(CustomSongWidget, m_hasSFX, 0x16d);
GEODE_MEMBER_CHECK(CustomSongWidget, m_unkBool2, 0x16e);
GEODE_MEMBER_CHECK(CustomSongWidget, m_songs, 0x170);
GEODE_MEMBER_CHECK(CustomSongWidget, m_sfx, 0x178);
GEODE_MEMBER_CHECK(CustomSongWidget, m_undownloadedAssets, 0x180);
GEODE_MEMBER_CHECK(CustomSongWidget, m_unkInt, 0x18c);
GEODE_MEMBER_CHECK(CustomSongWidget, m_assetInfoBtn, 0x190);

// unverified in 2.203
// GEODE_MEMBER_CHECK(GJBaseGameLayer, m_queuedButtons, 0x2b48);


GEODE_MEMBER_CHECK(PlayerObject, m_iconSprite, 0x5ec);
GEODE_MEMBER_CHECK(PlayerObject, m_waveTrail, 0x628);
GEODE_MEMBER_CHECK(PlayerObject, m_unk644, 0x644);
GEODE_MEMBER_CHECK(PlayerObject, m_unk6a2, 0x6a2);
GEODE_MEMBER_CHECK(PlayerObject, m_robotSprite, 0x6c8);
GEODE_MEMBER_CHECK(PlayerObject, m_unk708, 0x700);
GEODE_MEMBER_CHECK(PlayerObject, m_hasCustomGlowColor, 0x770);
GEODE_MEMBER_CHECK(PlayerObject, m_isDart, 0x7ac);
GEODE_MEMBER_CHECK(PlayerObject, m_lastGroundedPos, 0x81c);
GEODE_MEMBER_CHECK(PlayerObject, m_touchingRings, 0x824);
GEODE_MEMBER_CHECK(PlayerObject, m_lastActivatedPortal, 0x848);
GEODE_MEMBER_CHECK(PlayerObject, m_position, 0x854);
GEODE_MEMBER_CHECK(PlayerObject, m_unk880, 0x880);
GEODE_MEMBER_CHECK(PlayerObject, m_platformerXVelocity, 0x8a8);
GEODE_MEMBER_CHECK(PlayerObject, m_isPlatformer, 0x920);
GEODE_MEMBER_CHECK(PlayerObject, m_actionManager, 0x9a4);

GEODE_MEMBER_CHECK(FMODAudioEngine, m_system, 0x190);

GEODE_MEMBER_CHECK(GameManager, m_playLayer, 0x198);
GEODE_MEMBER_CHECK(GameManager, m_gameLayer, 0x1a0);

GEODE_SIZE_CHECK(PlayerFireBoostSprite, 0x200);
GEODE_SIZE_CHECK(SimplePlayer, 0x22c);
GEODE_SIZE_CHECK(PlayLayer, 0x2f78);
GEODE_SIZE_CHECK(GJGameLevel, 0x48c);
GEODE_SIZE_CHECK(GJGameState, 0x498);
// GEODE_SIZE_CHECK(PlayerObject, 0x980); // 0x998 in 2.203

GEODE_MEMBER_CHECK(GJGameState, m_unk1f8, 0x1f8);
GEODE_MEMBER_CHECK(GJGameState, m_unk20c, 0x214);
GEODE_MEMBER_CHECK(GJGameState, m_unk284, 0x294);
GEODE_MEMBER_CHECK(GJGameState, m_unk2b8, 0x2b4);

GEODE_SIZE_CHECK(GameObject, 0x498); // crying
GEODE_MEMBER_CHECK(GameObject, m_activeMainColorID, 0x22c);
GEODE_MEMBER_CHECK(GameObject, m_linkedGroup, 0x2f0);
GEODE_MEMBER_CHECK(GameObject, m_uniqueID, 0x318);
GEODE_MEMBER_CHECK(GameObject, m_realXPosition, 0x330);
GEODE_MEMBER_CHECK(GameObject, m_startPosition, 0x340);
GEODE_MEMBER_CHECK(GameObject, m_enterChannel, 0x374);
GEODE_MEMBER_CHECK(GameObject, m_objectMaterial, 0x376);
GEODE_MEMBER_CHECK(GameObject, m_objectID, 0x384);
GEODE_MEMBER_CHECK(GameObject, m_isDontBoostX, 0x46A);

GEODE_SIZE_CHECK(EnhancedGameObject, 0x500);
GEODE_MEMBER_CHECK(EnhancedGameObject, m_hasCustomAnimation, 0x4c2);
GEODE_MEMBER_CHECK(EnhancedGameObject, m_rotationSpeed, 0x4c8);

GEODE_SIZE_CHECK(EffectGameObject, 0x678);
GEODE_MEMBER_CHECK(EffectGameObject, m_opacity, 0x508);
GEODE_MEMBER_CHECK(EffectGameObject, m_isTouchTriggered, 0x518);

GEODE_MEMBER_CHECK(GJDropDownLayer, m_delegate, 0x1d8);
GEODE_MEMBER_CHECK(GJSongBrowser, m_page, 0x1e8);
GEODE_MEMBER_CHECK(GJSongBrowser, m_songID, 0x1ec);

GEODE_MEMBER_CHECK(LevelInfoLayer, m_level, 0x168);
GEODE_MEMBER_CHECK(LevelInfoLayer, m_challenge, 0x1d0);
GEODE_MEMBER_CHECK(LevelInfoLayer, m_playSprite, 0x1d8);
GEODE_MEMBER_CHECK(LevelInfoLayer, m_songWidget, 0x1e0);

GEODE_MEMBER_CHECK(ItemInfoPopup, m_accountID, 0x1f8);

GEODE_MEMBER_CHECK(CCApplication, m_resourceRootPath, 0x20);
GEODE_MEMBER_CHECK(CCApplication, m_startupScriptFilename, 0x38);
GEODE_MEMBER_CHECK(CCApplication, m_bUpdateController, 0x58);
GEODE_MEMBER_CHECK(CCApplication, m_bMouseControl, 0x88);
GEODE_MEMBER_CHECK(AppDelegate, m_runningScene, 0xA8);

GEODE_SIZE_CHECK(EditorUI, 0x3c0);
GEODE_MEMBER_CHECK(EditorUI, m_unk1b8, 0x1b8);
// GEODE_MEMBER_CHECK(EditorUI, m_unk1ec, 0x1ec);
GEODE_MEMBER_CHECK(EditorUI, m_rotationControl, 0x208);
GEODE_MEMBER_CHECK(EditorUI, m_transformControl, 0x21c);
GEODE_MEMBER_CHECK(EditorUI, m_editButtonDict, 0x228);
GEODE_MEMBER_CHECK(EditorUI, m_selectedObjects, 0x264);
GEODE_MEMBER_CHECK(EditorUI, m_deleteMenu, 0x268);
GEODE_MEMBER_CHECK(EditorUI, m_createButtonBars, 0x2e0);
GEODE_MEMBER_CHECK(EditorUI, m_editorLayer, 0x340);
GEODE_MEMBER_CHECK(EditorUI, m_selectedTab, 0x384);
GEODE_MEMBER_CHECK(EditorUI, m_unk3b4, 0x3b4);

GEODE_SIZE_CHECK(EditButtonBar, 0x124);

GEODE_MEMBER_CHECK(LevelEditorLayer, m_editorUI, 0x2e24);

GEODE_MEMBER_CHECK(HardStreak, m_pointArray, 0x158);

#endif
