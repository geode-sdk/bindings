
[[link(android)]]
class ArtistCell {
	TodoReturn onNewgrounds(cocos2d::CCObject*);
	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(SongInfoObject*);
	TodoReturn draw();
	TodoReturn init();
	TodoReturn onYouTube(cocos2d::CCObject*);
	TodoReturn ArtistCell(char const*, float, float);
	TodoReturn ~ArtistCell();
}

[[link(android)]]
class ButtonPage {
	TodoReturn init(cocos2d::CCArray*, cocos2d::CCPoint, int, float);
	TodoReturn create(cocos2d::CCArray*, cocos2d::CCPoint, int, float);
	TodoReturn ~ButtonPage();
}

[[link(android)]]
class FontObject {
	TodoReturn getFontWidth(int);
	TodoReturn parseConfigFile(char const*, float);
	TodoReturn initWithConfigFile(char const*, float);
	TodoReturn createWithConfigFile(char const*, float);
	TodoReturn ~FontObject();
}

[[link(android)]]
class GameObject {
	TodoReturn addToGroup(int);
	TodoReturn canReverse();
	TodoReturn copyGroups(GameObject*);
	TodoReturn createGlow(std::string);
	TodoReturn firstSetup();
	TodoReturn getGroupID(int);
	TodoReturn getRScaleX();
	TodoReturn getRScaleY();
	TodoReturn groupColor(cocos2d::_ccColor3B const&, bool);
	TodoReturn ignoreFade();
	TodoReturn removeGlow();
	TodoReturn setOpacity(unsigned char);
	TodoReturn setRScaleX(float);
	TodoReturn setRScaleY(float);
	TodoReturn setVisible(bool);
	TodoReturn addRotation(float);
	TodoReturn addRotation(float, float);
	TodoReturn commonSetup();
	TodoReturn customSetup();
	TodoReturn getColorKey(bool, bool);
	TodoReturn ignoreEnter();
	TodoReturn resetGroups();
	TodoReturn resetObject();
	TodoReturn setPosition(cocos2d::CCPoint const&);
	TodoReturn setRotation(float);
	TodoReturn setStartPos(cocos2d::CCPoint);
	TodoReturn shouldLockX();
	TodoReturn addEmptyGlow();
	TodoReturn canBeOrdered();
	TodoReturn colorForMode(int, bool);
	TodoReturn getBallFrame(int);
	TodoReturn getBoxOffset();
	TodoReturn getGlowFrame(std::string);
	TodoReturn getMainColor();
	TodoReturn isFacingDown();
	TodoReturn isFacingLeft();
	TodoReturn selectObject(cocos2d::_ccColor3B);
	TodoReturn setGlowColor(cocos2d::_ccColor3B const&);
	TodoReturn setRotationX(float);
	TodoReturn setRotationY(float);
	TodoReturn setRRotation(float);
	TodoReturn addNewSlope01(bool);
	TodoReturn addNewSlope02(bool);
	TodoReturn canRotateFree();
	TodoReturn claimParticle();
	TodoReturn createWithKey(int);
	TodoReturn destroyObject();
	TodoReturn disableObject();
	TodoReturn getColorFrame(std::string);
	TodoReturn getColorIndex();
	TodoReturn getObjectRect(float, float);
	TodoReturn getObjectRect();
	TodoReturn getParentMode();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn getSlopeAngle();
	TodoReturn isColorObject();
	TodoReturn isSpeedObject();
	TodoReturn makeInvisible();
	TodoReturn restoreObject();
	TodoReturn setChildColor(cocos2d::_ccColor3B const&);
	TodoReturn slopeFloorTop();
	TodoReturn slopeWallLeft();
	TodoReturn triggerObject(GJBaseGameLayer*, int, std::vector<int, std::allocator<int> > const*);
	TodoReturn activateObject();
	TodoReturn addColorSprite(std::string);
	TodoReturn addCustomChild(std::string, cocos2d::CCPoint, int);
	TodoReturn assignUniqueID();
	TodoReturn belongsToGroup(int);
	TodoReturn deselectObject();
	TodoReturn getGroupString();
	TodoReturn getObjectLabel();
	TodoReturn getObjectRect2(float, float);
	TodoReturn getOrientedBox();
	TodoReturn getTextKerning();
	TodoReturn isBasicTrigger();
	TodoReturn isColorTrigger();
	TodoReturn setAreaOpacity(float, float, int);
	TodoReturn setGlowOpacity(unsigned char);
	TodoReturn setObjectColor(cocos2d::_ccColor3B const&);
	TodoReturn setObjectLabel(cocos2d::CCLabelBMFont*);
	TodoReturn spawnXPosition();
	TodoReturn updateHSVState();
	TodoReturn updateStartPos();
	TodoReturn addToColorGroup(int);
	TodoReturn addToTempOffset(double, double);
	TodoReturn createWithFrame(char const*);
	TodoReturn didScaleXChange();
	TodoReturn didScaleYChange();
	TodoReturn duplicateValues(GameObject*);
	TodoReturn getBoundingRect();
	TodoReturn getCustomZLayer();
	TodoReturn getLastPosition();
	TodoReturn getObjectRadius();
	TodoReturn getObjectZLayer();
	TodoReturn getObjectZOrder();
	TodoReturn getRealPosition();
	TodoReturn groupOpacityMod();
	TodoReturn groupWasEnabled();
	TodoReturn initWithTexture(cocos2d::CCTexture2D*);
	TodoReturn isSpecialObject();
	TodoReturn parentForZLayer(int, bool, int);
	TodoReturn playShineEffect();
	TodoReturn removeFromGroup(int);
	TodoReturn resetMoveOffset();
	TodoReturn setCustomZLayer(int);
	TodoReturn setLastPosition(cocos2d::CCPoint const&);
	TodoReturn setupPixelScale();
	TodoReturn setupSpriteSize();
	TodoReturn unclaimParticle();
	TodoReturn updateBlendMode();
	TodoReturn updateMainColor(cocos2d::_ccColor3B const&);
	TodoReturn updateMainColor();
	TodoReturn addInternalChild(cocos2d::CCSprite*, std::string, cocos2d::CCPoint, int);
	TodoReturn blendModeChanged();
	TodoReturn canMultiActivate(bool);
	TodoReturn deactivateObject(bool);
	TodoReturn dirtifyObjectPos();
	TodoReturn fastRotateObject(float);
	TodoReturn getGroupDisabled();
	TodoReturn getMainColorMode();
	TodoReturn getScalePosDelta();
	TodoReturn groupWasDisabled();
	TodoReturn hasBeenActivated();
	TodoReturn isSettingsObject();
	TodoReturn objectFromVector(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&, GJBaseGameLayer*, bool);
	TodoReturn perspectiveFrame(char const*, int);
	TodoReturn resetColorGroups();
	TodoReturn saveActiveColors();
	TodoReturn setMainColorMode(int);
	TodoReturn setupColorSprite(int, bool);
	TodoReturn shouldBlendColor(GJSpriteColor*, bool);
	TodoReturn triggerActivated(float);
	TodoReturn updateIsOriented();
	TodoReturn activatedByPlayer(PlayerObject*);
	TodoReturn addNewSlope01Glow(bool);
	TodoReturn addNewSlope02Glow(bool);
	TodoReturn addToCustomScaleX(float);
	TodoReturn addToCustomScaleY(float);
	TodoReturn addToOpacityGroup(int);
	TodoReturn createSpriteColor(int);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn dirtifyObjectRect();
	TodoReturn getObjectRotation();
	TodoReturn getSecondaryColor();
	TodoReturn hasSecondaryColor();
	TodoReturn opacityModForMode(int, bool);
	TodoReturn removeColorSprite();
	TodoReturn resetRScaleForced();
	TodoReturn updateMainOpacity();
	TodoReturn updateOrientedBox();
	TodoReturn updateStartValues();
	TodoReturn updateTextKerning(int);
	TodoReturn animationTriggered();
	TodoReturn canChangeMainColor();
	TodoReturn duplicateColorMode(GameObject*);
	TodoReturn editorColorForMode(int);
	TodoReturn getHasRotateAction();
	TodoReturn getObjectDirection();
	TodoReturn getOuterObjectRect();
	TodoReturn isBasicEnterEffect(int);
	TodoReturn isSpawnableTrigger();
	TodoReturn isStoppableTrigger();
	TodoReturn reorderColorSprite();
	TodoReturn resetGroupDisabled();
	TodoReturn resetMainColorMode();
	TodoReturn setObjectRectDirty(bool);
	TodoReturn setupCustomSprites(std::string);
	TodoReturn transferObjectRect(cocos2d::CCRect&);
	TodoReturn updateCustomScaleX(float);
	TodoReturn updateCustomScaleY(float);
	TodoReturn addCustomBlackChild(std::string, float, bool);
	TodoReturn addCustomColorChild(std::string);
	TodoReturn duplicateAttributes(GameObject*);
	TodoReturn playPickupAnimation(cocos2d::CCSprite*, float, float, float, float);
	TodoReturn playPickupAnimation(cocos2d::CCSprite*, float, float, float, float, float, float, float, float, bool, float, float);
	TodoReturn quickUpdatePosition();
	TodoReturn updateMainColorOnly();
	TodoReturn updateParticleColor(cocos2d::_ccColor3B const&);
	TodoReturn usesFreezeAnimation();
	TodoReturn addColorSpriteToSelf();
	TodoReturn addInternalGlowChild(std::string, cocos2d::CCPoint);
	TodoReturn calculateOrientedBox();
	TodoReturn canChangeCustomColor();
	TodoReturn createAndAddParticle(int, char const*, int, cocos2d::tCCPositionType);
	TodoReturn createGroupContainer(int);
	TodoReturn getObjectRectPointer();
	TodoReturn getObjectTextureRect();
	TodoReturn ignoreEditorDuration();
	TodoReturn isConfigurablePortal();
	TodoReturn isSpecialSpawnObject();
	TodoReturn loadGroupsFromString(std::string);
	TodoReturn particleWasActivated();
	TodoReturn quickUpdatePosition2();
	TodoReturn setOrientedRectDirty(bool);
	TodoReturn updateSecondaryColor(cocos2d::_ccColor3B const&);
	TodoReturn updateSecondaryColor();
	TodoReturn usesSpecialAnimation();
	TodoReturn addMainSpriteToParent(bool);
	TodoReturn canAllowMultiActivate();
	TodoReturn dontCountTowardsLimit();
	TodoReturn getActiveColorForMode(int, bool);
	TodoReturn getHasSyncedAnimation();
	TodoReturn getSecondaryColorMode();
	TodoReturn getUnmodifiedPosition();
	TodoReturn perspectiveColorFrame(char const*, int);
	TodoReturn playDestroyObjectAnim(GJBaseGameLayer*);
	TodoReturn setSecondaryColorMode(int);
	TodoReturn updateCustomColorType(short);
	TodoReturn updateParticleOpacity(unsigned char);
	TodoReturn addColorSpriteToParent(bool);
	TodoReturn commonInteractiveSetup();
	TodoReturn getRelativeSpriteColor(int);
	TodoReturn shouldDrawEditorHitbox();
	TodoReturn updateSecondaryOpacity();
	TodoReturn canChangeSecondaryColor();
	TodoReturn determineSlopeDirection();
	TodoReturn resetSecondaryColorMode();
	TodoReturn setDefaultMainColorMode(int);
	TodoReturn shouldNotHideAnimFreeze();
	TodoReturn shouldShowPickupEffects();
	TodoReturn updateObjectEditorColor();
	TodoReturn editorColorForCustomMode(int);
	TodoReturn hasBeenActivatedByPlayer(PlayerObject*);
	TodoReturn isEditorSpawnableTrigger();
	TodoReturn updateSecondaryColorOnly();
	TodoReturn createColorGroupContainer(int);
	TodoReturn updateMainParticleOpacity(unsigned char);
	TodoReturn updateUnmodifiedPositions();
	TodoReturn spawnDefaultPickupParticle(GJBaseGameLayer*);
	TodoReturn addInternalCustomColorChild(std::string, cocos2d::CCPoint, int);
	TodoReturn createOpacityGroupContainer(int);
	TodoReturn setDefaultSecondaryColorMode(int);
	TodoReturn updateSecondaryParticleOpacity(unsigned char);
	TodoReturn init(char const*);
	TodoReturn update(float);
	TodoReturn addGlow(std::string);
	TodoReturn isFlipX();
	TodoReturn isFlipY();
	TodoReturn setType(GameObjectType);
	TodoReturn resetMID();
	TodoReturn setFlipX(bool);
	TodoReturn setFlipY(bool);
	TodoReturn setScale(float);
	TodoReturn isTrigger();
	TodoReturn setRScale(float);
	TodoReturn setScaleX(float);
	TodoReturn setScaleY(float);
	TodoReturn slopeYPos(float);
	TodoReturn slopeYPos(cocos2d::CCRect);
	TodoReturn slopeYPos(GameObject*);
	TodoReturn ~GameObject();
	TodoReturn getStartPos();
	TodoReturn getObjectRectDirty();
	TodoReturn getOrientedRectDirty();
	TodoReturn getType();
}

[[link(android)]]
class GJItemIcon {
	TodoReturn setOpacity(unsigned char);
	TodoReturn scaleForType(UnlockType);
	TodoReturn createStoreItem(UnlockType, int, bool, cocos2d::_ccColor3B);
	TodoReturn darkenStoreItem(ShopType);
	TodoReturn darkenStoreItem(cocos2d::_ccColor3B);
	TodoReturn createBrowserItem(UnlockType, int);
	TodoReturn toggleEnabledState(bool);
	TodoReturn changeToLockedState(float);
	TodoReturn unlockedColorForType(int);
	TodoReturn init(UnlockType, int, cocos2d::_ccColor3B, cocos2d::_ccColor3B, bool, bool, bool, cocos2d::_ccColor3B);
	TodoReturn create(UnlockType, int, cocos2d::_ccColor3B, cocos2d::_ccColor3B, bool, bool, bool, cocos2d::_ccColor3B);
	TodoReturn ~GJItemIcon();
}

[[link(android)]]
class GJPathPage {
	TodoReturn onIconInfo(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn onActivatePath(cocos2d::CCObject*);
	TodoReturn didPurchaseItem(GJStoreItem*);
	TodoReturn playUnlockAnimation();
	TodoReturn unlockAnimationStep2();
	TodoReturn unlockAnimationStep3();
	TodoReturn showCantAffordMessage(GJStoreItem*);
	TodoReturn unlockAnimationFinished();
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(int, GJPathsLayer*);
	TodoReturn show();
	TodoReturn create(int, GJPathsLayer*);
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onUnlock(cocos2d::CCObject*);
	TodoReturn ~GJPathPage();
}

[[link(android)]]
class GJUserCell {
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn loadFromScore(GJUserScore*);
	TodoReturn onSendMessage(cocos2d::CCObject*);
	TodoReturn onUnblockUser(cocos2d::CCObject*);
	TodoReturn onViewProfile(cocos2d::CCObject*);
	TodoReturn updateBGColor(int);
	TodoReturn onRemoveFriend(cocos2d::CCObject*);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn uploadActionFailed(int, int);
	TodoReturn onViewFriendRequest(cocos2d::CCObject*);
	TodoReturn uploadActionFinished(int, int);
	TodoReturn onCancelFriendRequest(cocos2d::CCObject*);
	TodoReturn draw();
	TodoReturn init();
	TodoReturn GJUserCell(char const*, float, float);
	TodoReturn ~GJUserCell();
}

[[link(android)]]
class HardStreak {
	TodoReturn firstSetup();
	TodoReturn stopStroke();
	TodoReturn resumeStroke();
	TodoReturn updateStroke(float);
	TodoReturn clearAboveXPos(float);
	TodoReturn normalizeAngle(double);
	TodoReturn clearBehindXPos(float);
	TodoReturn createDuplicate();
	TodoReturn quadCornerOffset(cocos2d::CCPoint, cocos2d::CCPoint, float);
	TodoReturn scheduleAutoUpdate();
	TodoReturn init();
	TodoReturn reset();
	TodoReturn create();
	TodoReturn addPoint(cocos2d::CCPoint);
	TodoReturn ~HardStreak();
}

[[link(android)]]
class LevelTools {
	TodoReturn posForTime(float, cocos2d::CCArray*, int, bool, int&);
	TodoReturn timeForPos(cocos2d::CCPoint, cocos2d::CCArray*, int, int, int, bool, bool, bool, bool, int);
	TodoReturn getAudioBPM(int);
	TodoReturn urlForAudio(int);
	TodoReturn getLevelList();
	TodoReturn getAudioTitle(int);
	TodoReturn getSongObject(int);
	TodoReturn nameForArtist(int);
	TodoReturn artistForAudio(int);
	TodoReturn fbURLForArtist(int);
	TodoReturn getAudioString(int);
	TodoReturn ngURLForArtist(int);
	TodoReturn ytURLForArtist(int);
	TodoReturn getLastTimewarp();
	TodoReturn getAudioFileName(int);
	TodoReturn sortSpeedObjects(cocos2d::CCArray*, GJBaseGameLayer*);
	TodoReturn valueForSpeedMod(int);
	TodoReturn offsetBPMForTrack(int);
	TodoReturn base64DecodeString(std::string);
	TodoReturn base64EncodeString(std::string);
	TodoReturn createStarPackDict();
	TodoReturn posForTimeInternal(float, cocos2d::CCArray*, int, bool, bool, bool, int&, int);
	TodoReturn toggleDebugLogging(bool);
	TodoReturn verifyLevelIntegrity(std::string, int);
	TodoReturn getLastGameplayRotated();
	TodoReturn getLastGameplayReversed();
	TodoReturn sortChannelOrderObjects(cocos2d::CCArray*, cocos2d::CCDictionary*, bool);
	TodoReturn moveTriggerObjectsToArray(cocos2d::CCArray*, cocos2d::CCDictionary*, int);
	TodoReturn getLevel(int, bool);
}

[[link(android)]]
class PauseLayer {
	TodoReturn onSettings(cocos2d::CCObject*);
	TodoReturn customSetup();
	TodoReturn onNormalMode(cocos2d::CCObject*);
	TodoReturn onRestartFull(cocos2d::CCObject*);
	TodoReturn tryShowBanner(float);
	TodoReturn keyBackClicked();
	TodoReturn onPracticeMode(cocos2d::CCObject*);
	TodoReturn onRecordReplays(cocos2d::CCObject*);
	TodoReturn sfxSliderChanged(cocos2d::CCObject*);
	TodoReturn setupProgressBars();
	TodoReturn createToggleButton(std::string, void (cocos2d::CCObject::*)(cocos2d::CCObject*), bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn musicSliderChanged(cocos2d::CCObject*);
	TodoReturn init(bool);
	TodoReturn keyUp(cocos2d::enumKeyCodes);
	TodoReturn create(bool);
	TodoReturn goEdit();
	TodoReturn onEdit(cocos2d::CCObject*);
	TodoReturn onHelp(cocos2d::CCObject*);
	TodoReturn onQuit(cocos2d::CCObject*);
	TodoReturn onTime(cocos2d::CCObject*);
	TodoReturn keyDown(cocos2d::enumKeyCodes);
	TodoReturn onReplay(cocos2d::CCObject*);
	TodoReturn onResume(cocos2d::CCObject*);
	TodoReturn onRestart(cocos2d::CCObject*);
	TodoReturn ~PauseLayer();
}

[[link(android)]]
class PriceLabel {
	TodoReturn setOpacity(float);
	TodoReturn init(int);
	TodoReturn create(int);
	TodoReturn setColor(cocos2d::_ccColor3B);
	TodoReturn setPrice(int);
	TodoReturn ~PriceLabel();
}

[[link(android)]]
class RingObject {
	TodoReturn resetObject();
	TodoReturn setRotation(float);
	TodoReturn spawnCircle();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn powerOnObject(int);
	TodoReturn triggerActivated(float);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn shouldDrawEditorHitbox();
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn setScale(float);
	TodoReturn setRScale(float);
	TodoReturn ~RingObject();
}

[[link(android)]]
class SetIDPopup {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn onResetValue(cocos2d::CCObject*);
	TodoReturn valueChanged();
	TodoReturn onItemIDArrow(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn updateTextInputLabel();
	TodoReturn init(int, int, int, std::string, std::string, bool, int, float, bool, bool);
	TodoReturn show();
	TodoReturn create(int, int, int, std::string, std::string, bool, int, float, bool, bool);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onCancel(cocos2d::CCObject*);
	TodoReturn ~SetIDPopup();
}

[[link(android)]]
class SFXBrowser {
	TodoReturn onExitFolder(cocos2d::CCObject*);
	TodoReturn onClearSearch(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn onUpdateLibrary(cocos2d::CCObject*);
	TodoReturn updatePageLabel();
	TodoReturn sortSelectClosed(SelectSFXSortLayer*);
	TodoReturn musicActionFailed(GJMusicAction);
	TodoReturn getSelectedCellIdx();
	TodoReturn setTextPopupClosed(SetTextPopup*, std::string);
	TodoReturn trySetupSFXBrowser();
	TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	TodoReturn musicActionFinished(GJMusicAction);
	TodoReturn onToggleCompactMode(cocos2d::CCObject*);
	TodoReturn shouldSnapToSelected();
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(int);
	TodoReturn create(int);
	TodoReturn onPage(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onSearch(cocos2d::CCObject*);
	TodoReturn onCredits(cocos2d::CCObject*);
	TodoReturn onSorting(cocos2d::CCObject*);
	TodoReturn setupList(SFXSearchResult*);
	TodoReturn ~SFXBrowser();
}

[[link(android)]]
class ShardsPage {
	TodoReturn onIconInfo(cocos2d::CCObject*);
	TodoReturn onSwitchPage(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init();
	TodoReturn show();
	TodoReturn create();
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn goToPage(int);
	TodoReturn ~ShardsPage();
}

[[link(android)]]
class SongObject {
	TodoReturn init(int);
	TodoReturn create(int);
	TodoReturn ~SongObject();
}

[[link(android)]]
class SongsLayer {
	TodoReturn customSetup();
	TodoReturn create();
	TodoReturn ~SongsLayer();
}

[[link(android)]]
class StatsLayer {
	TodoReturn customSetup();
	TodoReturn create();
	TodoReturn ~StatsLayer();
}

[[link(android)]]
class UndoObject {
	TodoReturn setObjects(cocos2d::CCArray*);
	TodoReturn createWithArray(cocos2d::CCArray*, UndoCommand);
	TodoReturn initWithTransformObjects(cocos2d::CCArray*, UndoCommand);
	TodoReturn createWithTransformObjects(cocos2d::CCArray*, UndoCommand);
	TodoReturn init(GameObject*, UndoCommand);
	TodoReturn init(cocos2d::CCArray*, UndoCommand);
	TodoReturn create(GameObject*, UndoCommand);
	TodoReturn ~UndoObject();
}

[[link(android)]]
class AppDelegate {
	TodoReturn checkSound();
	TodoReturn pauseSound();
	TodoReturn resumeSound();
	TodoReturn setupGLView();
	TodoReturn trySaveGame(bool);
	TodoReturn platformShutdown();
	TodoReturn hideLoadingCircle();
	TodoReturn loadingIsFinished();
	TodoReturn showLoadingCircle(bool, bool, bool);
	TodoReturn willSwitchToScene(cocos2d::CCScene*);
	TodoReturn setIdleTimerDisabled(bool);
	TodoReturn applicationWillBecomeActive();
	TodoReturn applicationWillResignActive();
	TodoReturn applicationDidEnterBackground();
	TodoReturn applicationDidFinishLaunching();
	TodoReturn applicationWillEnterForeground();
	TodoReturn get();
	TodoReturn bgScale();
	TodoReturn musicTest();
	TodoReturn pauseGame();
	TodoReturn ~AppDelegate();
}

[[link(android)]]
class CCCountdown {
	TodoReturn setOpacity(unsigned char);
	TodoReturn lapFinished();
	TodoReturn startTimerWithSeconds(float, void (cocos2d::CCObject::*)(), cocos2d::CCNode*);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~CCCountdown();
}

[[link(android)]]
class CCIndexPath {
	TodoReturn ~CCIndexPath();
}

[[link(android)]]
class CCMoveCNode {
	TodoReturn init();
	TodoReturn reset();
	TodoReturn create();
	TodoReturn ~CCMoveCNode();
}

[[link(android)]]
class CCURLObject {
	TodoReturn init(std::string, std::string);
	TodoReturn create(std::string, std::string);
	TodoReturn ~CCURLObject();
}

[[link(android)]]
class ColorAction {
	TodoReturn resetAction();
	TodoReturn saveToState(CAState&);
	TodoReturn setupFromMap(std::map<std::string, std::string, std::less<std::string>, std::allocator<std::pair<std::string const, std::string> > >&);
	TodoReturn loadFromState(CAState&);
	TodoReturn setupFromString(std::string);
	TodoReturn writeSaveString(fmt::BasicWriter<char>&);
	TodoReturn updateCustomColor(cocos2d::_ccColor3B, cocos2d::_ccColor3B);
	TodoReturn init(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float, double, bool, int, float, float);
	TodoReturn step(float);
	TodoReturn create(cocos2d::_ccColor3B, bool, int);
	TodoReturn create(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float, double, bool);
	TodoReturn create(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float, double, bool, int, float, float);
	TodoReturn create();
	TodoReturn getCopy();
	TodoReturn isInUse();
	TodoReturn ~ColorAction();
}

[[link(android)]]
class CommentCell {
	TodoReturn onUndelete();
	TodoReturn onGoToLevel(cocos2d::CCObject*);
	TodoReturn onViewProfile(cocos2d::CCObject*);
	TodoReturn updateBGColor(int);
	TodoReturn incrementLikes();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn loadFromComment(GJComment*);
	TodoReturn onConfirmDelete(cocos2d::CCObject*);
	TodoReturn incrementDislikes();
	TodoReturn updateLabelValues();
	TodoReturn draw();
	TodoReturn init();
	TodoReturn onLike(cocos2d::CCObject*);
	TodoReturn onDelete();
	TodoReturn onUnhide(cocos2d::CCObject*);
	TodoReturn likedItem(LikeItemType, int, bool);
	TodoReturn CommentCell(char const*, float, float);
	TodoReturn ~CommentCell();
}

[[link(android)]]
class DialogLayer {
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn addToMainScene();
	TodoReturn keyBackClicked();
	TodoReturn animateInDialog();
	TodoReturn handleDialogTap();
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn createDialogLayer(DialogObject*, cocos2d::CCArray*, int);
	TodoReturn createWithObjects(cocos2d::CCArray*, int);
	TodoReturn displayNextObject();
	TodoReturn fadeInTextFinished(TextArea*);
	TodoReturn animateInRandomSide();
	TodoReturn displayDialogObject(DialogObject*);
	TodoReturn updateChatPlacement(DialogChatPlacement);
	TodoReturn updateNavButtonFrame();
	TodoReturn finishCurrentAnimation();
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(DialogObject*, cocos2d::CCArray*, int);
	TodoReturn create(DialogObject*, int);
	TodoReturn keyDown(cocos2d::enumKeyCodes);
	TodoReturn onClose();
	TodoReturn onEnter();
	TodoReturn animateIn(DialogAnimationType);
	TodoReturn ~DialogLayer();
}

[[link(android)]]
class GameManager {
	TodoReturn addToGJLog(cocos2d::CCString*);
	TodoReturn clearGJLog();
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn joinReddit();
	TodoReturn keyForIcon(int, int);
	TodoReturn loadGround(int);
	TodoReturn printGJLog();
	TodoReturn reloadMenu();
	TodoReturn reorderKey(int, bool);
	TodoReturn subYouTube();
	TodoReturn tryCacheAd();
	TodoReturn unloadIcon(int, int, int);
	TodoReturn unlockIcon(int, IconType);
	TodoReturn colorForIdx(int);
	TodoReturn colorForPos(int);
	TodoReturn doQuickSave();
	TodoReturn fadeInMusic(std::string);
	TodoReturn getFontFile(int);
	TodoReturn getGTexture(int);
	TodoReturn joinDiscord();
	TodoReturn saveAdTimer();
	TodoReturn sharedState();
	TodoReturn startUpdate();
	TodoReturn unloadIcons(int);
	TodoReturn unlockColor(int, UnlockType);
	TodoReturn updateMusic();
	TodoReturn countForType(IconType);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn followTwitch();
	TodoReturn getBGTexture(int);
	TodoReturn getMGTexture(int);
	TodoReturn isIconLoaded(int, int);
	TodoReturn likeFacebook();
	TodoReturn resetAdTimer();
	TodoReturn safePopScene();
	TodoReturn followTwitter();
	TodoReturn itemPurchased(char const*);
	TodoReturn loadIconAsync(int, int, int, cocos2d::CCObject*);
	TodoReturn playMenuMusic();
	TodoReturn resetAllIcons();
	TodoReturn videoAdHidden();
	TodoReturn videoAdShowed();
	TodoReturn checkUsedIcons();
	TodoReturn getFontTexture(int);
	TodoReturn getNextUsedKey(int, bool);
	TodoReturn isIconUnlocked(int, IconType);
	TodoReturn levelIsPremium(int, int);
	TodoReturn loadBackground(int);
	TodoReturn loadDPadLayout(int, bool);
	TodoReturn playSFXTrigger(SFXTriggerGameObject*);
	TodoReturn reloadAllStep2();
	TodoReturn reloadAllStep3();
	TodoReturn reloadAllStep4();
	TodoReturn reloadAllStep5();
	TodoReturn saveDPadLayout(int, bool);
	TodoReturn shortenAdTimer(float);
	TodoReturn showMainMenuAd();
	TodoReturn addIconDelegate(cocos2d::CCObject*, int);
	TodoReturn fadeInMenuMusic();
	TodoReturn getGameVariable(char const*);
	TodoReturn isColorUnlocked(int, UnlockType);
	TodoReturn loadDeathEffect(int);
	TodoReturn loadGroundAsync(int);
	TodoReturn openEditorGuide();
	TodoReturn queueReloadMenu();
	TodoReturn setGameVariable(char const*, bool);
	TodoReturn unlockedPremium();
	TodoReturn updateCustomFPS();
	TodoReturn addGameAnimation(int, int, float, std::string, std::string, int);
	TodoReturn didExitPlayscene();
	TodoReturn getIconRequestID();
	TodoReturn getMenuMusicFile();
	TodoReturn loadMiddleground(int);
	TodoReturn recountUserStats(std::string);
	TodoReturn resetAchievement(std::string);
	TodoReturn resetCoinUnlocks();
	TodoReturn resolutionForKey(int);
	TodoReturn sheetNameForIcon(int, int);
	TodoReturn showInterstitial();
	TodoReturn switchScreenMode(bool, bool);
	TodoReturn unloadBackground();
	TodoReturn activeIconForType(IconType);
	TodoReturn iconAndTypeForKey(int, int&, int&);
	TodoReturn loadVideoSettings();
	TodoReturn logLoadedIconInfo();
	TodoReturn resetDPadSettings(bool);
	TodoReturn returnToLastScene(GJGameLevel*);
	TodoReturn verifyCoinUnlocks();
	TodoReturn verifyStarUnlocks();
	TodoReturn verifySyncedCoins();
	TodoReturn addNewCustomObject(std::string);
	TodoReturn claimItemsResponse(std::string);
	TodoReturn dpadConfigToString(UIButtonConfig&);
	TodoReturn eventUnlockFeature(char const*);
	TodoReturn framesForAnimation(int);
	TodoReturn getIntGameVariable(char const*);
	TodoReturn loadDpadFromString(UIButtonConfig&, std::string);
	TodoReturn removeCustomObject(int);
	TodoReturn removeIconDelegate(int);
	TodoReturn setIntGameVariable(char const*, int);
	TodoReturn toggleGameVariable(char const*);
	TodoReturn loadBackgroundAsync(int);
	TodoReturn prepareDPadSettings();
	TodoReturn rewardedVideoHidden();
	TodoReturn setupGameAnimations();
	TodoReturn switchCustomObjects(int, int);
	TodoReturn tryShowInterstitial(int, int, int);
	TodoReturn accountStatusChanged();
	TodoReturn canShowRewardedVideo();
	TodoReturn completedAchievement(std::string);
	TodoReturn defaultYOffsetForBG2(int);
	TodoReturn generateSecretNumber();
	TodoReturn getPracticeMusicFile();
	TodoReturn iconTypeToUnlockType(IconType);
	TodoReturn unlockTypeToIconType(int);
	TodoReturn addDuplicateLastFrame(int);
	TodoReturn finishedLoadingGAsync(int);
	TodoReturn frameTimeForAnimation(int);
	TodoReturn loadMiddlegroundAsync(int);
	TodoReturn stringForCustomObject(int);
	TodoReturn finishedLoadingBGAsync(cocos2d::CCObject*);
	TodoReturn finishedLoadingGAsync1(cocos2d::CCObject*);
	TodoReturn finishedLoadingGAsync2(cocos2d::CCObject*);
	TodoReturn finishedLoadingMGAsync(int);
	TodoReturn getNextUniqueObjectKey();
	TodoReturn shouldShowInterstitial(int, int, int);
	TodoReturn showInterstitialForced();
	TodoReturn addCustomAnimationFrame(int, int, std::string, std::string);
	TodoReturn finishedLoadingMGAsync1(cocos2d::CCObject*);
	TodoReturn finishedLoadingMGAsync2(cocos2d::CCObject*);
	TodoReturn getUnlockForAchievement(std::string, int&, UnlockType&);
	TodoReturn groundHasSecondaryColor(int);
	TodoReturn reportAchievementWithID(char const*, int, bool);
	TodoReturn rewardedVideoAdFinished(int);
	TodoReturn calculateBaseKeyForIcons();
	TodoReturn defaultFrameForAnimation(int);
	TodoReturn finishedLoadingIconAsync(cocos2d::CCObject*);
	TodoReturn reportPercentageForLevel(int, int, bool);
	TodoReturn syncPlatformAchievements();
	TodoReturn verifyAchievementUnlocks();
	TodoReturn getOrderedCustomObjectKeys();
	TodoReturn rewardedVideoHiddenDelayed();
	TodoReturn checkSteamAchievementUnlock();
	TodoReturn applicationDidEnterBackground();
	TodoReturn applicationWillEnterForeground();
	TodoReturn init();
	TodoReturn getUGV(char const*);
	TodoReturn setUGV(char const*, bool);
	TodoReturn update(float);
	TodoReturn iconKey(int, IconType);
	TodoReturn colorKey(int, UnlockType);
	TodoReturn loadFont(int);
	TodoReturn loadIcon(int, int, int);
	TodoReturn lockIcon(int, IconType);
	TodoReturn rateGame();
	TodoReturn firstLoad();
	TodoReturn lockColor(int, UnlockType);
	TodoReturn reloadAll(bool, bool, bool);
	TodoReturn ~GameManager();
}

[[link(android)]]
class GameToolbox {
	TodoReturn bounceTime(float);
	TodoReturn easeToText(int);
	TodoReturn fast_srand(unsigned long);
	TodoReturn gen_random(int);
	TodoReturn getResponse(cocos2d::extension::CCHttpResponse*);
	TodoReturn intToString(int);
	TodoReturn openAppPage();
	TodoReturn openRateURL(std::string, std::string);
	TodoReturn strongColor(cocos2d::_ccColor3B);
	TodoReturn colorToSepia(cocos2d::_ccColor3B, float);
	TodoReturn isRateEasing(int);
	TodoReturn addBackButton(cocos2d::CCLayer*, cocos2d::CCMenuItem*);
	TodoReturn fast_rand_0_1();
	TodoReturn getEasedValue(float, int, float);
	TodoReturn getfast_srand();
	TodoReturn getTimeString(int);
	TodoReturn hsvFromString(std::string const&, char const*);
	TodoReturn postClipVisit();
	TodoReturn stringFromHSV(cocos2d::_ccHSVValue, char const*);
	TodoReturn getEasedAction(cocos2d::CCActionInterval*, int, float);
	TodoReturn msToTimeString(int, int);
	TodoReturn pointsToString(int);
	TodoReturn transformColor(cocos2d::_ccColor3B const&, float, float, float);
	TodoReturn transformColor(cocos2d::_ccColor3B const&, cocos2d::_ccHSVValue);
	TodoReturn createHashString(std::string const&, int);
	TodoReturn doWeHaveInternet();
	TodoReturn getMultipliedHSV(cocos2d::_ccHSVValue const&, float);
	TodoReturn intToShortString(int);
	TodoReturn saveStringToFile(std::string const&, std::string const&);
	TodoReturn stringSetupToMap(std::string const&, char const*, std::map<std::string, std::string, std::less<std::string>, std::allocator<std::pair<std::string const, std::string> > >&);
	TodoReturn getDropActionWEnd(float, float, float, cocos2d::CCAction*, float);
	TodoReturn getInvertedEasing(int);
	TodoReturn getRelativeOffset(GameObject*, cocos2d::CCPoint);
	TodoReturn stringSetupToDict(std::string const&, char const*);
	TodoReturn createToggleButton(std::string, void (cocos2d::CCObject::*)(cocos2d::CCObject*), bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, float, float, float, cocos2d::CCPoint, char const*, bool, int, cocos2d::CCArray*);
	TodoReturn createToggleButton(std::string, void (cocos2d::CCObject::*)(cocos2d::CCObject*), bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCArray*);
	TodoReturn fast_rand_minus1_1();
	TodoReturn particleFromString(std::string const&, cocos2d::CCParticleSystemQuad*, bool);
	TodoReturn particleFromStruct(cocos2d::ParticleStruct const&, cocos2d::CCParticleSystemQuad*, bool);
	TodoReturn getDropActionWDelay(float, float, float, cocos2d::CCNode*, void (cocos2d::CCObject::*)());
	TodoReturn alignItemsVertically(cocos2d::CCArray*, float, cocos2d::CCPoint);
	TodoReturn contentScaleClipRect(cocos2d::CCRect&);
	TodoReturn multipliedColorValue(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float);
	TodoReturn preVisitWithClipRect(cocos2d::CCRect);
	TodoReturn saveParticleToString(cocos2d::CCParticleSystemQuad*);
	TodoReturn addRThumbScrollButton(cocos2d::CCLayer*);
	TodoReturn alignItemsHorisontally(cocos2d::CCArray*, float, cocos2d::CCPoint, bool);
	TodoReturn mergeDictsSkipConflict(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
	TodoReturn particleStringToStruct(std::string const&, cocos2d::ParticleStruct&);
	TodoReturn getLargestMergedIntDicts(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
	TodoReturn mergeDictsSaveLargestInt(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
	TodoReturn preVisitWithClippingRect(cocos2d::CCNode*, cocos2d::CCRect);
	TodoReturn timestampToHumanReadable(long);
	TodoReturn isIOS();
	TodoReturn fast_rand();
}

[[link(android)]]
class GJBigSprite {
	TodoReturn unloadSprite(std::string, int);
	TodoReturn loadSpriteAsync(std::string, int);
	TodoReturn updateSpriteVisibility();
	TodoReturn finishedLoadingSpriteAsync(cocos2d::CCObject*);
	TodoReturn init();
	TodoReturn create();
	TodoReturn unloadAll();
	TodoReturn ~GJBigSprite();
}

[[link(android)]]
class GJGameLevel {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn getCoinKey(int);
	TodoReturn getSongName();
	TodoReturn getLengthKey(int, bool);
	TodoReturn isPlatformer();
	TodoReturn saveNewScore(int, int);
	TodoReturn copyLevelInfo(GJGameLevel*);
	TodoReturn unverifyCoins();
	TodoReturn savePercentage(int, bool, int, int, bool);
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn encodeWithCoder(DS_Dictionary*);
	TodoReturn getListSnapshot();
	TodoReturn levelWasAltered();
	TodoReturn areCoinsVerified();
	TodoReturn getAudioFileName();
	TodoReturn getNormalPercent();
	TodoReturn setNormalPercent(int);
	TodoReturn lengthKeyToString(int);
	TodoReturn levelWasSubmitted();
	TodoReturn storeNewLocalScore(int, int);
	TodoReturn handleStatsConflict(GJGameLevel*);
	TodoReturn parseSettingsString(std::string);
	TodoReturn scoreStringToVector(std::string&, std::vector<int, std::allocator<int> >&);
	TodoReturn scoreVectorToString(std::vector<int, std::allocator<int> >&, int);
	TodoReturn getAverageDifficulty();
	TodoReturn demonIconForDifficulty(DemonDifficultyType);
	TodoReturn generateSettingsString();
	TodoReturn getLastBuildPageForTab(int);
	TodoReturn setLastBuildPageForTab(int, int);
	TodoReturn getUnpackedLevelDescription();
	TodoReturn init();
	TodoReturn create(cocos2d::CCDictionary*, bool);
	TodoReturn create();
	TodoReturn canEncode();
	TodoReturn ~GJGameLevel();
}

[[link(android)]]
class GJGameState {
	TodoReturn tweenValue(float, float, int, float, int, float, int, int);
	TodoReturn stopTweenAction(int);
	TodoReturn updateTweenAction(float, int);
	TodoReturn controlTweenAction(int, int, GJActionCommand);
	TodoReturn updateTweenActions(float);
	TodoReturn getGameObjectPhysics(GameObject*);
	TodoReturn processStateTriggers();
	TodoReturn GJGameState();
	TodoReturn ~GJGameState();
}

[[link(android)]]
class GJLevelList {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn totalLevels();
	TodoReturn reorderLevel(int, int);
	TodoReturn showListInfo();
	TodoReturn orderForLevel(int);
	TodoReturn addLevelToList(GJGameLevel*);
	TodoReturn completedLevels();
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn encodeWithCoder(DS_Dictionary*);
	TodoReturn parseListLevels(std::string);
	TodoReturn reorderLevelStep(int, bool);
	TodoReturn getListLevelsArray(cocos2d::CCArray*);
	TodoReturn updateLevelsString();
	TodoReturn duplicateListLevels(GJLevelList*);
	TodoReturn removeLevelFromList(int);
	TodoReturn frameForListDifficulty(int, DifficultyIconType);
	TodoReturn getUnpackedDescription();
	TodoReturn init();
	TodoReturn create(cocos2d::CCDictionary*);
	TodoReturn create();
	TodoReturn canEncode();
	TodoReturn ~GJLevelList();
}

[[link(android)]]
class GJListLayer {
	TodoReturn init(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, int);
	TodoReturn create(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, int);
	TodoReturn ~GJListLayer();
}

[[link(android)]]
class GJMapObject {
	TodoReturn playerJump();
	TodoReturn monsterIdle();
	TodoReturn monsterJump();
	TodoReturn moveMonster(cocos2d::CCPoint, float);
	TodoReturn moveMonster();
	TodoReturn moveFinished();
	TodoReturn touchMonster();
	TodoReturn updateShadow(float, float, cocos2d::CCPoint);
	TodoReturn createMonster(int);
	TodoReturn setObjectOrigin(cocos2d::CCPoint, float);
	TodoReturn startPlayerJumpLoop();
	TodoReturn startMonsterJumpLoop();
	TodoReturn init(cocos2d::CCNode*);
	TodoReturn create(cocos2d::CCNode*);
	TodoReturn ~GJMapObject();
}

[[link(android)]]
class GJScoreCell {
	TodoReturn onMoreLevels(cocos2d::CCObject*);
	TodoReturn loadFromScore(GJUserScore*);
	TodoReturn onViewProfile(cocos2d::CCObject*);
	TodoReturn updateBGColor(int);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn draw();
	TodoReturn init();
	TodoReturn onBan(cocos2d::CCObject*);
	TodoReturn onCheck(cocos2d::CCObject*);
	TodoReturn GJScoreCell(char const*, float, float);
	TodoReturn ~GJScoreCell();
}

[[link(android)]]
class GJShopLayer {
	TodoReturn onPlushies(cocos2d::CCObject*);
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn dialogClosed(DialogLayer*);
	TodoReturn onSelectItem(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn didPurchaseItem(GJStoreItem*);
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn exitVideoAdItems();
	TodoReturn showReactMessage();
	TodoReturn onCommunityCredits(cocos2d::CCObject*);
	TodoReturn rewardedVideoFinished();
	TodoReturn showCantAffordMessage(GJStoreItem*);
	TodoReturn updateCurrencyCounter();
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(ShopType);
	TodoReturn scene(ShopType);
	TodoReturn create(ShopType);
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onExit();
	TodoReturn onVideoAd(cocos2d::CCObject*);
	TodoReturn ~GJShopLayer();
}

[[link(android)]]
class GJStoreItem {
	TodoReturn getCurrencyKey();
	TodoReturn init(int, int, int, int, ShopType);
	TodoReturn create(int, int, int, int, ShopType);
	TodoReturn ~GJStoreItem();
}

[[link(android)]]
class GJUserScore {
	TodoReturn isCurrentUser();
	TodoReturn mergeWithScore(GJUserScore*);
	TodoReturn init();
	TodoReturn create(cocos2d::CCDictionary*);
	TodoReturn create();
	TodoReturn ~GJUserScore();
}

[[link(android)]]
class GJWorldNode {
	TodoReturn addDotsToLevel(int, bool);
	TodoReturn unlockActiveItem();
	TodoReturn dotPositionForLevel(int, int);
	TodoReturn positionForLevelButton(int);
	TodoReturn init(int, WorldSelectLayer*);
	TodoReturn create(int, WorldSelectLayer*);
	TodoReturn onLevel(cocos2d::CCObject*);
	TodoReturn playStep1();
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn ~GJWorldNode();
}

[[link(android)]]
class MapPackCell {
	TodoReturn reloadCell();
	TodoReturn onClaimReward(cocos2d::CCObject*);
	TodoReturn updateBGColor(int);
	TodoReturn loadFromMapPack(GJMapPack*);
	TodoReturn playCompleteEffect();
	TodoReturn draw();
	TodoReturn init();
	TodoReturn onClick(cocos2d::CCObject*);
	TodoReturn MapPackCell(char const*, float, float);
	TodoReturn ~MapPackCell();
}

[[link(android)]]
class OptionsCell {
	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(OptionsObject*);
	TodoReturn onToggleOption(cocos2d::CCObject*);
	TodoReturn OptionsCell(char const*, float, float);
	TodoReturn ~OptionsCell();
}

[[link(android)]]
class ProfilePage {
	TodoReturn onMessages(cocos2d::CCObject*);
	TodoReturn onMyLevels(cocos2d::CCObject*);
	TodoReturn onNextPage(cocos2d::CCObject*);
	TodoReturn onPrevPage(cocos2d::CCObject*);
	TodoReturn onRequests(cocos2d::CCObject*);
	TodoReturn onSettings(cocos2d::CCObject*);
	TodoReturn onBlockUser(cocos2d::CCObject*);
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn isOnWatchlist(int);
	TodoReturn onSendMessage(cocos2d::CCObject*);
	TodoReturn setupComments();
	TodoReturn setupPageInfo(std::string, char const*);
	TodoReturn keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn userInfoChanged(GJUserScore*);
	TodoReturn onCommentHistory(cocos2d::CCObject*);
	TodoReturn updatePageArrows();
	TodoReturn getUserInfoFailed(int);
	TodoReturn updateLevelsLabel();
	TodoReturn loadCommentsFailed(char const*);
	TodoReturn showNoAccountError();
	TodoReturn uploadActionFailed(int, int);
	TodoReturn commentDeleteFailed(int, int);
	TodoReturn commentUploadFailed(int, CommentError);
	TodoReturn getUserInfoFinished(GJUserScore*);
	TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*);
	TodoReturn loadPageFromUserInfo(GJUserScore*);
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*);
	TodoReturn uploadActionFinished(int, int);
	TodoReturn commentUploadFinished(int);
	TodoReturn updateUserScoreFailed();
	TodoReturn updateUserScoreFinished();
	TodoReturn toggleMainPageVisibility(bool);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(int, bool);
	TodoReturn show();
	TodoReturn create(int, bool);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn loadPage(int);
	TodoReturn onFollow(cocos2d::CCObject*);
	TodoReturn onFriend(cocos2d::CCObject*);
	TodoReturn onTwitch(cocos2d::CCObject*);
	TodoReturn onUpdate(cocos2d::CCObject*);
	TodoReturn blockUser();
	TodoReturn isCorrect(char const*);
	TodoReturn onComment(cocos2d::CCObject*);
	TodoReturn onFriends(cocos2d::CCObject*);
	TodoReturn onMyLists(cocos2d::CCObject*);
	TodoReturn onTwitter(cocos2d::CCObject*);
	TodoReturn onYouTube(cocos2d::CCObject*);
	TodoReturn ~ProfilePage();
}

[[link(android)]]
class RewardsPage {
	TodoReturn onFreeStuff(cocos2d::CCObject*);
	TodoReturn updateTimers(float);
	TodoReturn tryGetRewards();
	TodoReturn getRewardFrame(int, int);
	TodoReturn keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn unlockLayerClosed(RewardUnlockLayer*);
	TodoReturn rewardsStatusFailed();
	TodoReturn rewardsStatusFinished(int);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init();
	TodoReturn show();
	TodoReturn create();
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onReward(cocos2d::CCObject*);
	TodoReturn ~RewardsPage();
}

[[link(android)]]
class SecretLayer {
	TodoReturn getMessage();
	TodoReturn nodeWithTag(int);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn selectAThread();
	TodoReturn keyBackClicked();
	TodoReturn playCoinEffect();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn getBasicMessage();
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn getThreadMessage();
	TodoReturn updateSearchLabel(char const*);
	TodoReturn updateMessageLabel(std::string);
	TodoReturn init();
	TodoReturn scene();
	TodoReturn create();
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onSubmit(cocos2d::CCObject*);
	TodoReturn ~SecretLayer();
}

[[link(android)]]
class ShaderLayer {
	TodoReturn tweenValue(float, float, int, float, int, float);
	TodoReturn setupShader(bool);
	TodoReturn triggerBulge(float, float, float, float, float, int, int, float, bool);
	TodoReturn triggerSepia(float, float, int, float);
	TodoReturn updateZLayer(int, int, bool);
	TodoReturn triggerGlitch(float, float, float, float, float, float, float, bool);
	TodoReturn triggerPinchX(float, float, float, float, float, bool, int, int, float, bool);
	TodoReturn triggerPinchY(float, float, float, float, float, bool, int, int, float, bool);
	TodoReturn preBulgeShader();
	TodoReturn prePinchShader();
	TodoReturn preSepiaShader();
	TodoReturn tweenValueAuto(float, int, float, int, float);
	TodoReturn preCommonShader();
	TodoReturn preGlitchShader();
	TodoReturn resetAllShaders();
	TodoReturn toggleAntiAlias(bool);
	TodoReturn triggerHueShift(float, float, int, float);
	TodoReturn setupBulgeShader();
	TodoReturn setupPinchShader();
	TodoReturn setupSepiaShader();
	TodoReturn triggerGrayscale(float, float, bool, int, int, float);
	TodoReturn triggerPixelateX(float, float, bool, bool, int, float, bool);
	TodoReturn triggerPixelateY(float, float, bool, bool, int, float, bool);
	TodoReturn triggerShockLine(float, float, bool, bool, bool, bool, float, float, float, float, float, float, int, bool, bool, bool, float, bool, float, int, float);
	TodoReturn triggerShockWave(float, float, float, float, float, float, float, bool, float, float, float, int, bool, bool, bool, float, float, bool, float, int, float);
	TodoReturn preHueShiftShader();
	TodoReturn prePixelateShader();
	TodoReturn triggerChromaticX(float, float, int, float, bool);
	TodoReturn triggerChromaticY(float, float, int, float, bool);
	TodoReturn triggerLensCircle(float, float, float, float, int, int, float, float, int, float, bool);
	TodoReturn triggerRadialBlur(float, float, float, float, int, float, float, bool, int, int, float, bool);
	TodoReturn preChromaticShader();
	TodoReturn preGrayscaleShader();
	TodoReturn preShockLineShader();
	TodoReturn preShockWaveShader();
	TodoReturn triggerColorChange(float, float, float, float, float, float, float, int, float);
	TodoReturn triggerInvertColor(float, float, float, float, float, bool, bool, bool, int, float);
	TodoReturn triggerMotionBlurX(float, float, float, float, int, float, bool, int, int, float, bool, bool);
	TodoReturn triggerMotionBlurY(float, float, float, float, int, float, bool, int, int, float, bool, bool);
	TodoReturn performCalculations();
	TodoReturn preLensCircleShader();
	TodoReturn preMotionBlurShader();
	TodoReturn preRadialBlurShader();
	TodoReturn setupCommonUniforms();
	TodoReturn setupGlitchUniforms();
	TodoReturn setupHueShiftShader();
	TodoReturn updateEffectOffsets(cocos2d::CCPoint);
	TodoReturn objectPosToShaderPos(cocos2d::CCPoint);
	TodoReturn preColorChangeShader();
	TodoReturn preInvertColorShader();
	TodoReturn preSplitScreenShader();
	TodoReturn resetTargetContainer();
	TodoReturn setupGrayscaleShader();
	TodoReturn setupLensCircleShader();
	TodoReturn setupMotionBlurShader();
	TodoReturn setupRadialBlurShader();
	TodoReturn updateShockLineCenter(cocos2d::CCPoint);
	TodoReturn updateShockWaveCenter(cocos2d::CCPoint);
	TodoReturn prepareTargetContainer();
	TodoReturn setupChromaticUniforms();
	TodoReturn setupColorChangeShader();
	TodoReturn setupInvertColorShader();
	TodoReturn setupShockLineUniforms();
	TodoReturn setupShockWaveUniforms();
	TodoReturn setupSplitScreenShader();
	TodoReturn triggerChromaticGlitch(bool, float, float, float, float, float, float, float, int, float, bool, bool);
	TodoReturn triggerSplitScreenCols(float, float, int, float);
	TodoReturn triggerSplitScreenRows(float, float, int, float);
	TodoReturn updateMotionBlurSpeedX(float, float);
	TodoReturn updateMotionBlurSpeedY(float, float);
	TodoReturn preChromaticGlitchShader();
	TodoReturn setupChromaticGlitchUniforms();
	TodoReturn init();
	TodoReturn visit();
	TodoReturn create();
	TodoReturn update(float);
	TodoReturn ~ShaderLayer();
}

[[link(android)]]
class SliderThumb {
	TodoReturn setRotated(bool);
	TodoReturn setMaxOffset(float);
	TodoReturn init(cocos2d::CCNode*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, char const*);
	TodoReturn create(cocos2d::CCNode*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, char const*);
	TodoReturn getValue();
	TodoReturn setValue(float);
	TodoReturn ~SliderThumb();
}

[[link(android)]]
class StatsObject {
	TodoReturn init(char const*, int);
	TodoReturn create(char const*, int);
	TodoReturn ~StatsObject();
}

[[link(android)]]
class UploadPopup {
	TodoReturn keyBackClicked();
	TodoReturn onReturnToLevel(cocos2d::CCObject*);
	TodoReturn levelUploadFailed(GJGameLevel*);
	TodoReturn levelUploadFinished(GJGameLevel*);
	TodoReturn init(GJGameLevel*);
	TodoReturn show();
	TodoReturn create(GJGameLevel*);
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~UploadPopup();
}

[[link(android)]]
class AccountLayer {
	TodoReturn onRegister(cocos2d::CCObject*);
	TodoReturn updatePage(bool);
	TodoReturn customSetup();
	TodoReturn layerHidden();
	TodoReturn hideLoadingUI();
	TodoReturn showLoadingUI();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn syncAccountFailed(BackupAccountError, int);
	TodoReturn createToggleButton(std::string, void (cocos2d::CCObject::*)(cocos2d::CCObject*), bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn backupAccountFailed(BackupAccountError, int);
	TodoReturn syncAccountFinished();
	TodoReturn accountStatusChanged();
	TodoReturn backupAccountFinished();
	TodoReturn create();
	TodoReturn doSync();
	TodoReturn onHelp(cocos2d::CCObject*);
	TodoReturn onMore(cocos2d::CCObject*);
	TodoReturn onSync(cocos2d::CCObject*);
	TodoReturn onLogin(cocos2d::CCObject*);
	TodoReturn doBackup();
	TodoReturn onBackup(cocos2d::CCObject*);
	TodoReturn toggleUI(bool);
	TodoReturn exitLayer();
	TodoReturn ~AccountLayer();
}

[[link(android)]]
class BoomListView {
	TodoReturn getListCell(char const*);
	TodoReturn addObjectToList(cocos2d::CCNode*);
	TodoReturn cellForRowAtIndexPath(CCIndexPath&, TableView*);
	TodoReturn numberOfRowsInSection(unsigned int, TableView*);
	TodoReturn didSelectRowAtIndexPath(CCIndexPath&, TableView*);
	TodoReturn cellHeightForRowAtIndexPath(CCIndexPath&, TableView*);
	TodoReturn numberOfSectionsInTableView(TableView*);
	TodoReturn TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
	TodoReturn TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
	TodoReturn TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&);
	TodoReturn draw();
	TodoReturn init(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float);
	TodoReturn create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float);
	TodoReturn loadCell(TableViewCell*, int);
	TodoReturn lockList(bool);
	TodoReturn setupList(float);
	TodoReturn ~BoomListView();
}

[[link(android)]]
class ButtonSprite {
	TodoReturn updateBGImage(char const*);
	TodoReturn updateSpriteBGSize();
	TodoReturn updateSpriteOffset(cocos2d::CCPoint);
	TodoReturn init(char const*, int, int, float, bool, char const*, char const*, float);
	TodoReturn init(cocos2d::CCSprite*, int, int, float, float, bool, char const*, bool);
	TodoReturn create(char const*);
	TodoReturn create(char const*, float);
	TodoReturn create(char const*, int, int, float, bool);
	TodoReturn create(char const*, int, int, float, bool, char const*, char const*);
	TodoReturn create(char const*, int, int, float, bool, char const*, char const*, float);
	TodoReturn create(cocos2d::CCSprite*);
	TodoReturn create(cocos2d::CCSprite*, int, int, float, float, bool);
	TodoReturn create(cocos2d::CCSprite*, int, int, float, float, bool, char const*, bool);
	TodoReturn setColor(cocos2d::_ccColor3B);
	TodoReturn setString(char const*);
	TodoReturn ~ButtonSprite();
}

[[link(android)]]
class CCBlockLayer {
	TodoReturn enterLayer();
	TodoReturn customSetup();
	TodoReturn layerHidden();
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn layerVisible();
	TodoReturn keyBackClicked();
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn enterAnimFinished();
	TodoReturn decrementForcePrio();
	TodoReturn incrementForcePrio();
	TodoReturn registerWithTouchDispatcher();
	TodoReturn draw();
	TodoReturn init();
	TodoReturn create();
	TodoReturn enableUI();
	TodoReturn disableUI();
	TodoReturn exitLayer();
	TodoReturn hideLayer(bool);
	TodoReturn showLayer(bool);
	TodoReturn ~CCBlockLayer();
}

[[link(android)]]
class CCCircleWave {
	TodoReturn setPosition(cocos2d::CCPoint const&);
	TodoReturn followObject(cocos2d::CCNode*, bool);
	TodoReturn updatePosition(float);
	TodoReturn updateTweenAction(float, char const*);
	TodoReturn removeMeAndCleanup();
	TodoReturn draw();
	TodoReturn init(float, float, float, bool, bool);
	TodoReturn create(float, float, float, bool);
	TodoReturn create(float, float, float, bool, bool);
	TodoReturn baseSetup(float);
	TodoReturn ~CCCircleWave();
}

[[link(android)]]
class CCLightFlash {
	TodoReturn playEffect(cocos2d::CCPoint, cocos2d::_ccColor3B, float, float, float, float, float, float, float, float, float, float, float, float, float, float, int, bool, bool, float);
	TodoReturn cleanupFlash();
	TodoReturn removeLights();
	TodoReturn fadeAndRemove();
	TodoReturn init();
	TodoReturn create();
	TodoReturn showFlash();
	TodoReturn ~CCLightFlash();
}

[[link(android)]]
class CCLightStrip {
	TodoReturn updateTweenAction(float, char const*);
	TodoReturn draw();
	TodoReturn init(float, float, float, float, float);
	TodoReturn create(float, float, float, float, float);
	TodoReturn ~CCLightStrip();
}

[[link(android)]]
class CCSpritePart {
	TodoReturn setVisible(bool);
	TodoReturn frameChanged(std::string);
	TodoReturn getBeingUsed();
	TodoReturn hideInactive();
	TodoReturn setBeingUsed(bool);
	TodoReturn resetTextureRect();
	TodoReturn markAsNotBeingUsed();
	TodoReturn updateDisplayFrame(std::string);
	TodoReturn createWithSpriteFrameName(char const*);
	TodoReturn create(cocos2d::CCTexture2D*);
	TodoReturn ~CCSpritePart();
}

[[link(android)]]
class CCSpritePlus {
	TodoReturn stopFollow();
	TodoReturn addFollower(cocos2d::CCNode*);
	TodoReturn getFollower();
	TodoReturn setPosition(cocos2d::CCPoint const&);
	TodoReturn setRotation(float);
	TodoReturn followSprite(CCSpritePlus*);
	TodoReturn setRotationX(float);
	TodoReturn setRotationY(float);
	TodoReturn removeFollower(cocos2d::CCNode*);
	TodoReturn initWithTexture(cocos2d::CCTexture2D*);
	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn initWithSpriteFrameName(char const*);
	TodoReturn createWithSpriteFrameName(char const*);
	TodoReturn setFlipX(bool);
	TodoReturn setFlipY(bool);
	TodoReturn setScale(float);
	TodoReturn setScaleX(float);
	TodoReturn setScaleY(float);
	TodoReturn ~CCSpritePlus();
}

[[link(android)]]
class ColorAction2 {
	TodoReturn resetAction();
	TodoReturn updateCustomColor(cocos2d::_ccColor3B, cocos2d::_ccColor3B);
	TodoReturn step(float);
	TodoReturn ColorAction2(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float, double, bool, int, float, float);
}

[[link(android)]]
class CreatorLayer {
	TodoReturn onMapPacks(cocos2d::CCObject*);
	TodoReturn onMyLevels(cocos2d::CCObject*);
	TodoReturn onTopLists(cocos2d::CCObject*);
	TodoReturn onChallenge(cocos2d::CCObject*);
	TodoReturn onGauntlets(cocos2d::CCObject*);
	TodoReturn dialogClosed(DialogLayer*);
	TodoReturn onDailyLevel(cocos2d::CCObject*);
	TodoReturn onEventLevel(cocos2d::CCObject*);
	TodoReturn onFameLevels(cocos2d::CCObject*);
	TodoReturn onMultiplayer(cocos2d::CCObject*);
	TodoReturn onSavedLevels(cocos2d::CCObject*);
	TodoReturn onSecretVault(cocos2d::CCObject*);
	TodoReturn onWeeklyLevel(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn onAdventureMap(cocos2d::CCObject*);
	TodoReturn onLeaderboards(cocos2d::CCObject*);
	TodoReturn onOnlineLevels(cocos2d::CCObject*);
	TodoReturn onTreasureRoom(cocos2d::CCObject*);
	TodoReturn sceneWillResume();
	TodoReturn onFeaturedLevels(cocos2d::CCObject*);
	TodoReturn checkQuestsStatus();
	TodoReturn onOnlyFullVersion(cocos2d::CCObject*);
	TodoReturn canPlayOnlineLevels();
	TodoReturn init();
	TodoReturn scene();
	TodoReturn create();
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onPaths(cocos2d::CCObject*);
	TodoReturn ~CreatorLayer();
}

[[link(android)]]
class DialogObject {
	TodoReturn init(std::string, std::string, int, float, bool, cocos2d::_ccColor3B);
	TodoReturn create(std::string, std::string, int, float, bool, cocos2d::_ccColor3B);
	TodoReturn ~DialogObject();
}

[[link(android)]]
class FindBPMLayer {
	TodoReturn calculateBPM();
	TodoReturn registerTouch();
	TodoReturn recordingDidStop();
	TodoReturn init(int);
	TodoReturn create(int);
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onRecord(cocos2d::CCObject*);
	TodoReturn playMusic();
	TodoReturn ~FindBPMLayer();
}

[[link(android)]]
class FLAlertLayer {
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn keyBackClicked();
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn incrementForcePrio();
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(int);
	TodoReturn init(FLAlertLayerProtocol*, char const*, std::string, char const*, char const*, float, bool, float, float);
	TodoReturn show();
	TodoReturn create(FLAlertLayerProtocol*, char const*, std::string, char const*, char const*);
	TodoReturn create(FLAlertLayerProtocol*, char const*, std::string, char const*, char const*, float);
	TodoReturn create(FLAlertLayerProtocol*, char const*, std::string, char const*, char const*, float, bool, float, float);
	TodoReturn onBtn1(cocos2d::CCObject*);
	TodoReturn onBtn2(cocos2d::CCObject*);
	TodoReturn keyDown(cocos2d::enumKeyCodes);
	TodoReturn onEnter();
	TodoReturn ~FLAlertLayer();
}

[[link(android)]]
class GauntletNode {
	TodoReturn nameForType(GauntletType);
	TodoReturn frameForType(GauntletType);
	TodoReturn onClaimReward();
	TodoReturn init(GJMapPack*);
	TodoReturn create(GJMapPack*);
	TodoReturn ~GauntletNode();
}

[[link(android)]]
class GJHttpResult {
	TodoReturn init(bool, std::string, std::string, GJHttpType);
	TodoReturn create(bool, std::string, std::string, GJHttpType);
	TodoReturn ~GJHttpResult();
}

[[link(android)]]
class GJLocalScore {
	TodoReturn init(int, int);
	TodoReturn create(int, int);
	TodoReturn ~GJLocalScore();
}

[[link(android)]]
class GJMPDelegate {
	TodoReturn updateComments();
	TodoReturn joinLobbyFailed(int, GJMPErrorCode);
	TodoReturn joinLobbyFinished(int);
	TodoReturn didUploadMPComment(int);
}

[[link(android)]]
class GJPathsLayer {
	TodoReturn nameForPath(int);
	TodoReturn darkenButtons(bool);
	TodoReturn keyBackClicked();
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init();
	TodoReturn show();
	TodoReturn create();
	TodoReturn onExit();
	TodoReturn onPath(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~GJPathsLayer();
}

[[link(android)]]
class GJPathSprite {
	TodoReturn updateState();
	TodoReturn addRankLabel(int);
	TodoReturn addShardSprite();
	TodoReturn changeToLockedArt();
	TodoReturn init(int);
	TodoReturn create(int);
	TodoReturn ~GJPathSprite();
}

[[link(android)]]
class GJPromoPopup {
	TodoReturn keyBackClicked();
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(std::string);
	TodoReturn show();
	TodoReturn create(std::string);
	TodoReturn onExit();
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~GJPromoPopup();
}

[[link(android)]]
class GJRewardItem {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn isShardType(SpecialRewardItem);
	TodoReturn createSpecial(GJRewardType, int, int, SpecialRewardItem, int, SpecialRewardItem, int, int, int);
	TodoReturn getRewardCount(SpecialRewardItem);
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn encodeWithCoder(DS_Dictionary*);
	TodoReturn createWithObject(GJRewardType, GJRewardObject*);
	TodoReturn getNextShardType(SpecialRewardItem);
	TodoReturn rewardItemToStat(SpecialRewardItem);
	TodoReturn createWithObjects(GJRewardType, cocos2d::CCArray*);
	TodoReturn getRandomShardType();
	TodoReturn getRewardObjectForType(SpecialRewardItem);
	TodoReturn getRandomNonMaxShardType();
	TodoReturn init(int, int, std::string);
	TodoReturn create(int, int, std::string);
	TodoReturn create();
	TodoReturn canEncode();
	TodoReturn ~GJRewardItem();
}

[[link(android)]]
class GJValueTween {
	TodoReturn step(float);
}

[[link(android)]]
class LoadingLayer {
	TodoReturn loadAssets();
	TodoReturn updateProgress(int);
	TodoReturn loadingFinished();
	TodoReturn getLoadingString();
	TodoReturn init(bool);
	TodoReturn scene(bool);
	TodoReturn create(bool);
	TodoReturn ~LoadingLayer();
}

[[link(android)]]
class MPLobbyLayer {
	TodoReturn postComment();
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateLobby(float);
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn tryExitLobby();
	TodoReturn onUpdateLobby();
	TodoReturn keyBackClicked();
	TodoReturn updateComments();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn joinLobbyFailed(int, GJMPErrorCode);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn joinLobbyFinished(int);
	TodoReturn didUploadMPComment(int);
	TodoReturn uploadActionFailed(int, int);
	TodoReturn uploadActionFinished(int, int);
	TodoReturn init(int);
	TodoReturn keyUp(cocos2d::enumKeyCodes);
	TodoReturn scene(int);
	TodoReturn create(int);
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onBtn1(cocos2d::CCObject*);
	TodoReturn onBtn2(cocos2d::CCObject*);
	TodoReturn onBtn3(cocos2d::CCObject*);
	TodoReturn keyDown(cocos2d::enumKeyCodes);
	TodoReturn onComment(cocos2d::CCObject*);
	TodoReturn ~MPLobbyLayer();
}

[[link(android)]]
class MusicBrowser {
	TodoReturn sliderEnded(Slider*);
	TodoReturn onTagFilters(cocos2d::CCObject*);
	TodoReturn onClearSearch(cocos2d::CCObject*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn onArtistFilters(cocos2d::CCObject*);
	TodoReturn onUpdateLibrary(cocos2d::CCObject*);
	TodoReturn updatePageLabel();
	TodoReturn musicActionFailed(GJMusicAction);
	TodoReturn onPlaybackControl(cocos2d::CCObject*);
	TodoReturn setupSongControls();
	TodoReturn getSelectedCellIdx();
	TodoReturn setTextPopupClosed(SetTextPopup*, std::string);
	TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	TodoReturn musicActionFinished(GJMusicAction);
	TodoReturn trySetupMusicBrowser();
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(int);
	TodoReturn create(int);
	TodoReturn onPage(cocos2d::CCObject*);
	TodoReturn update(float);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onSearch(cocos2d::CCObject*);
	TodoReturn setupList(MusicSearchResult*);
	TodoReturn ~MusicBrowser();
}

[[link(android)]]
class OptionsLayer {
	TodoReturn customSetup();
	TodoReturn layerHidden();
	TodoReturn onMenuMusic(cocos2d::CCObject*);
	TodoReturn onProgressBar(cocos2d::CCObject*);
	TodoReturn onSecretVault(cocos2d::CCObject*);
	TodoReturn onSoundtracks(cocos2d::CCObject*);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn onRecordReplays(cocos2d::CCObject*);
	TodoReturn tryEnableRecord();
	TodoReturn sfxSliderChanged(cocos2d::CCObject*);
	TodoReturn createToggleButton(std::string, void (cocos2d::CCObject::*)(cocos2d::CCObject*), bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn musicSliderChanged(cocos2d::CCObject*);
	TodoReturn create();
	TodoReturn onHelp(cocos2d::CCObject*);
	TodoReturn onRate(cocos2d::CCObject*);
	TodoReturn onVideo(cocos2d::CCObject*);
	TodoReturn exitLayer();
	TodoReturn onAccount(cocos2d::CCObject*);
	TodoReturn onOptions(cocos2d::CCObject*);
	TodoReturn onSupport(cocos2d::CCObject*);
	TodoReturn ~OptionsLayer();
}

[[link(android)]]
class PlayerObject {
	TodoReturn bumpPlayer(float, int, bool, GameObject*);
	TodoReturn buttonDown(PlayerButton);
	TodoReturn didHitHead();
	TodoReturn isSafeFlip(float);
	TodoReturn isSafeMode(float);
	TodoReturn lockPlayer();
	TodoReturn pushButton(PlayerButton);
	TodoReturn pushPlayer(float);
	TodoReturn reverseMod();
	TodoReturn setOpacity(unsigned char);
	TodoReturn setVisible(bool);
	TodoReturn updateJump(float);
	TodoReturn updateMove(float);
	TodoReturn yStartDown();
	TodoReturn boostPlayer(float);
	TodoReturn createRobot(int);
	TodoReturn flashPlayer(float, float, cocos2d::_ccColor3B, cocos2d::_ccColor3B);
	TodoReturn flipGravity(bool, bool);
	TodoReturn gravityDown();
	TodoReturn resetObject();
	TodoReturn resetStreak();
	TodoReturn setPosition(cocos2d::CCPoint const&);
	TodoReturn setRotation(float);
	TodoReturn setupStreak();
	TodoReturn spawnCircle();
	TodoReturn stopDashing();
	TodoReturn stopStreak2();
	TodoReturn createSpider(int);
	TodoReturn getYVelocity();
	TodoReturn isBoostValid(float);
	TodoReturn preCollision();
	TodoReturn redirectDash(float);
	TodoReturn setYVelocity(double, int);
	TodoReturn spawnCircle2();
	TodoReturn startDashing(DashRingObject*);
	TodoReturn stopRotation(bool, int);
	TodoReturn getActiveMode();
	TodoReturn isInBasicMode();
	TodoReturn levelFlipping();
	TodoReturn levelWillFlip();
	TodoReturn modeDidChange();
	TodoReturn postCollision(float);
	TodoReturn propellPlayer(float, bool, int);
	TodoReturn releaseButton(PlayerButton);
	TodoReturn reversePlayer(EffectGameObject*);
	TodoReturn stopParticles();
	TodoReturn switchedDirTo(PlayerButton);
	TodoReturn testForMoving(float, GameObject*);
	TodoReturn toggleFlyMode(bool, bool);
	TodoReturn touchedObject(GameObject*);
	TodoReturn updateCollide(PlayerCollisionDirection, GameObject*);
	TodoReturn updateDashArt();
	TodoReturn updateEffects(float);
	TodoReturn updateSpecial(float);
	TodoReturn updateStreaks(float);
	TodoReturn updateTimeMod(float, bool);
	TodoReturn activateStreak();
	TodoReturn addToYVelocity(double, int);
	TodoReturn copyAttributes(PlayerObject*);
	TodoReturn fadeOutStreak2(float);
	TodoReturn getOldPosition(float);
	TodoReturn getOrientedBox();
	TodoReturn getSecondColor();
	TodoReturn incrementJumps();
	TodoReturn isInNormalMode();
	TodoReturn isSafeHeadTest();
	TodoReturn playBumpEffect(int, GameObject*);
	TodoReturn rotateGameplay(int, int, bool, float, float, bool, bool);
	TodoReturn setSecondColor(cocos2d::_ccColor3B const&);
	TodoReturn spiderTestJump(bool);
	TodoReturn storeCollision(PlayerCollisionDirection, int);
	TodoReturn switchedToMode(GameObjectType);
	TodoReturn toggleBirdMode(bool, bool);
	TodoReturn toggleDartMode(bool, bool);
	TodoReturn toggleRollMode(bool, bool);
	TodoReturn updateRotation(float);
	TodoReturn updateRotation(float, float);
	TodoReturn addAllParticles();
	TodoReturn doReversePlayer(bool);
	TodoReturn getRealPosition();
	TodoReturn hardFlipGravity();
	TodoReturn hitGroundNoJump(GameObject*, bool);
	TodoReturn playBurstEffect();
	TodoReturn playDeathEffect();
	TodoReturn playerDestroyed(bool);
	TodoReturn playerIsFalling(float);
	TodoReturn playSpawnEffect();
	TodoReturn resetPlayerIcon();
	TodoReturn runBallRotation(float);
	TodoReturn runRotateAction(bool, int);
	TodoReturn spawnDualCircle();
	TodoReturn spawnFromPlayer(PlayerObject*, bool);
	TodoReturn spiderTestJumpX(bool);
	TodoReturn spiderTestJumpY(bool);
	TodoReturn stopBurstEffect();
	TodoReturn toggleRobotMode(bool, bool);
	TodoReturn toggleSwingMode(bool, bool);
	TodoReturn updateGlowColor();
	TodoReturn updatePlayerArt();
	TodoReturn updateSwingFire();
	TodoReturn canStickToGround();
	TodoReturn deactivateStreak(bool);
	TodoReturn disableSwingFire();
	TodoReturn isSafeSpiderFlip(float);
	TodoReturn placeStreakPoint();
	TodoReturn playerIsMovingUp();
	TodoReturn playerTeleported();
	TodoReturn playingEndEffect();
	TodoReturn runBallRotation2();
	TodoReturn saveToCheckpoint(PlayerCheckpoint*);
	TodoReturn spawnScaleCircle();
	TodoReturn specialGroundHit();
	TodoReturn toggleSpiderMode(bool, bool);
	TodoReturn toggleVisibility(bool);
	TodoReturn updateCollideTop(float, GameObject*);
	TodoReturn updatePlayerGlow();
	TodoReturn addToTouchedRings(RingObject*);
	TodoReturn animationFinished(char const*);
	TodoReturn collidedWithSlope(float, GameObject*, bool);
	TodoReturn getObjectRotation();
	TodoReturn levelFlipFinished();
	TodoReturn performSlideCheck();
	TodoReturn preSlopeCollision(float, GameObject*);
	TodoReturn releaseAllButtons();
	TodoReturn resetAllParticles();
	TodoReturn resetCollisionLog(bool);
	TodoReturn resetTouchedRings();
	TodoReturn runNormalRotation(bool, float);
	TodoReturn runNormalRotation();
	TodoReturn spawnPortalCircle(cocos2d::_ccColor3B, float);
	TodoReturn toggleGhostEffect(GhostType);
	TodoReturn togglePlayerScale(bool, bool);
	TodoReturn updateCollideLeft(float, GameObject*);
	TodoReturn updatePlayerForce(cocos2d::CCPoint, bool);
	TodoReturn updatePlayerFrame(int);
	TodoReturn updatePlayerScale();
	TodoReturn updateStaticForce(float, float, bool);
	TodoReturn updateStreakBlend(bool);
	TodoReturn collidedWithObject(float, GameObject*);
	TodoReturn collidedWithObject(float, GameObject*, cocos2d::CCRect, bool);
	TodoReturn deactivateParticle();
	TodoReturn destroyFromHitHead();
	TodoReturn gameEventTriggered(int, int);
	TodoReturn loadFromCheckpoint(PlayerCheckpoint*);
	TodoReturn playCompleteEffect(bool, bool);
	TodoReturn removeAllParticles();
	TodoReturn rotateGameplayOnly(bool);
	TodoReturn tryPlaceCheckpoint();
	TodoReturn updateCollideRight(float, GameObject*);
	TodoReturn updateShipRotation(float);
	TodoReturn getCurrentXVelocity();
	TodoReturn handlePlayerCommand(int);
	TodoReturn redirectPlayerForce(float, float, float, float);
	TodoReturn resetStateVariables();
	TodoReturn updateCollideBottom(float, GameObject*);
	TodoReturn updateDashAnimation();
	TodoReturn updateJumpVariables();
	TodoReturn updateSlopeRotation(float);
	TodoReturn enablePlayerControls();
	TodoReturn getModifiedSlopeYVel();
	TodoReturn playDynamicSpiderRun();
	TodoReturn playSpiderDashEffect(cocos2d::CCPoint, cocos2d::CCPoint);
	TodoReturn resetCollisionValues();
	TodoReturn rotateGameplayObject(GameObject*);
	TodoReturn togglePlatformerMode(bool);
	TodoReturn updateCheckpointMode(bool);
	TodoReturn updateCheckpointTest();
	TodoReturn updateSlopeYVelocity(float);
	TodoReturn updateStateVariables();
	TodoReturn usingWallLimitedMode();
	TodoReturn animatePlatformerJump(float);
	TodoReturn checkSnapJumpToObject(GameObject*);
	TodoReturn disablePlayerControls();
	TodoReturn enableCustomGlowColor(cocos2d::_ccColor3B const&);
	TodoReturn playerIsFallingBugged();
	TodoReturn rotatePreSlopeObjects();
	TodoReturn updateInternalActions(float);
	TodoReturn updatePlayerBirdFrame(int);
	TodoReturn updatePlayerDartFrame(int);
	TodoReturn updatePlayerRollFrame(int);
	TodoReturn updatePlayerShipFrame(int);
	TodoReturn updateShipSpriteExtra(std::string);
	TodoReturn disableCustomGlowColor();
	TodoReturn removePlacedCheckpoint();
	TodoReturn spiderTestJumpInternal(bool);
	TodoReturn unrotateGameplayObject(GameObject*);
	TodoReturn updateLastGroundObject(GameObject*);
	TodoReturn updatePlayerRobotFrame(int);
	TodoReturn updatePlayerSwingFrame(int);
	TodoReturn createFadeOutDartStreak();
	TodoReturn removePendingCheckpoint();
	TodoReturn unrotatePreSlopeObjects();
	TodoReturn updatePlayerSpiderFrame(int);
	TodoReturn updatePlayerSpriteExtra(std::string);
	TodoReturn convertToClosestRotation(float);
	TodoReturn updatePlayerJetpackFrame(int);
	TodoReturn collidedWithSlopeInternal(float, GameObject*, bool);
	TodoReturn exitPlatformerAnimateJump();
	TodoReturn updateRobotAnimationSpeed();
	TodoReturn collidedWithObjectInternal(float, GameObject*, cocos2d::CCRect, bool);
	TodoReturn handleRotatedSlopeCollision(float, GameObject*, bool);
	TodoReturn stopPlatformerJumpAnimation();
	TodoReturn handleRotatedObjectCollision(float, GameObject*, cocos2d::CCRect, bool);
	TodoReturn handleRotatedCollisionInternal(float, GameObject*, cocos2d::CCRect, bool, bool, bool);
	TodoReturn init(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool);
	TodoReturn create(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool);
	TodoReturn update(float);
	TodoReturn flipMod();
	TodoReturn speedUp();
	TodoReturn isFlying();
	TodoReturn pushDown();
	TodoReturn ringJump(RingObject*, bool);
	TodoReturn setColor(cocos2d::_ccColor3B const&);
	TodoReturn setFlipX(bool);
	TodoReturn setFlipY(bool);
	TodoReturn setScale(float);
	TodoReturn yStartUp();
	TodoReturn gravityUp();
	TodoReturn hitGround(GameObject*, bool);
	TodoReturn logValues();
	TodoReturn setScaleX(float);
	TodoReturn setScaleY(float);
	TodoReturn speedDown();
	TodoReturn ~PlayerObject();
}

[[link(android)]]
class SearchButton {
	TodoReturn init(char const*, char const*, float, char const*);
	TodoReturn create(char const*, char const*, float, char const*);
	TodoReturn ~SearchButton();
}

[[link(android)]]
class SecretLayer2 {
	TodoReturn getMessage();
	TodoReturn nodeWithTag(int);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn dialogClosed(DialogLayer*);
	TodoReturn onSecretLevel(cocos2d::CCObject*);
	TodoReturn selectAThread();
	TodoReturn keyBackClicked();
	TodoReturn playCoinEffect();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn getBasicMessage();
	TodoReturn getErrorMessage();
	TodoReturn showSecretLevel();
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn getThreadMessage();
	TodoReturn updateSearchLabel(char const*);
	TodoReturn showCompletedLevel();
	TodoReturn updateMessageLabel(std::string);
	TodoReturn init();
	TodoReturn scene();
	TodoReturn create();
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onDoor(cocos2d::CCObject*);
	TodoReturn onExit();
	TodoReturn onSubmit(cocos2d::CCObject*);
	TodoReturn ~SecretLayer2();
}

[[link(android)]]
class SecretLayer3 {
	TodoReturn animateEyes();
	TodoReturn revealStep1();
	TodoReturn revealStep2();
	TodoReturn revealStep3();
	TodoReturn revealStep4();
	TodoReturn revealStep5();
	TodoReturn dialogClosed(DialogLayer*);
	TodoReturn keyBackClicked();
	TodoReturn showUnlockDialog();
	TodoReturn firstInteractionStep1();
	TodoReturn firstInteractionStep2();
	TodoReturn firstInteractionStep3();
	TodoReturn firstInteractionStep4();
	TodoReturn init();
	TodoReturn scene();
	TodoReturn create();
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onExit();
	TodoReturn onClick(cocos2d::CCObject*);
	TodoReturn onChest01(cocos2d::CCObject*);
	TodoReturn onChest02(cocos2d::CCObject*);
	TodoReturn ~SecretLayer3();
}

[[link(android)]]
class SecretLayer4 {
	TodoReturn getMessage();
	TodoReturn showDialog(int);
	TodoReturn nodeWithTag(int);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn dialogClosed(DialogLayer*);
	TodoReturn selectAThread();
	TodoReturn keyBackClicked();
	TodoReturn playCoinEffect();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn getBasicMessage();
	TodoReturn getErrorMessage();
	TodoReturn showFirstDialog();
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn getThreadMessage();
	TodoReturn updateSearchLabel(char const*);
	TodoReturn updateMessageLabel(std::string);
	TodoReturn init();
	TodoReturn scene();
	TodoReturn create();
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onExit();
	TodoReturn onSubmit(cocos2d::CCObject*);
	TodoReturn onChest01(cocos2d::CCObject*);
	TodoReturn ~SecretLayer4();
}

[[link(android)]]
class SetTextPopup {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn onResetValue(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn updateTextInputLabel();
	TodoReturn init(std::string, std::string, int, std::string, std::string, bool, float);
	TodoReturn show();
	TodoReturn create(std::string, std::string, int, std::string, std::string, bool, float);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onCancel(cocos2d::CCObject*);
	TodoReturn ~SetTextPopup();
}

[[link(android)]]
class SimpleObject {
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~SimpleObject();
}

[[link(android)]]
class SimplePlayer {
	TodoReturn setOpacity(unsigned char);
	TodoReturn updateColors();
	TodoReturn asyncLoadIcon(int, IconType);
	TodoReturn hideSecondary();
	TodoReturn setSecondColor(cocos2d::_ccColor3B const&);
	TodoReturn createRobotSprite(int);
	TodoReturn updatePlayerFrame(int, IconType);
	TodoReturn createSpiderSprite(int);
	TodoReturn iconFinishedLoading(int, IconType);
	TodoReturn enableCustomGlowColor(cocos2d::_ccColor3B const&);
	TodoReturn disableCustomGlowColor();
	TodoReturn init(int);
	TodoReturn create(int);
	TodoReturn hideAll();
	TodoReturn setColor(cocos2d::_ccColor3B const&);
	TodoReturn setColors(cocos2d::_ccColor3B const&, cocos2d::_ccColor3B const&);
	TodoReturn setFrames(char const*, char const*, char const*, char const*, char const*);
	TodoReturn ~SimplePlayer();
}

[[link(android)]]
class SlideInLayer {
	TodoReturn enterLayer();
	TodoReturn customSetup();
	TodoReturn layerHidden();
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn layerVisible();
	TodoReturn keyBackClicked();
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn enterAnimFinished();
	TodoReturn registerWithTouchDispatcher();
	TodoReturn draw();
	TodoReturn init();
	TodoReturn create();
	TodoReturn enableUI();
	TodoReturn disableUI();
	TodoReturn exitLayer(cocos2d::CCObject*);
	TodoReturn hideLayer(bool);
	TodoReturn showLayer(bool);
	TodoReturn ~SlideInLayer();
}

[[link(android)]]
class SupportLayer {
	TodoReturn customSetup();
	TodoReturn onGetReward(cocos2d::CCObject*);
	TodoReturn onLowDetail(cocos2d::CCObject*);
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn onRequestAccess(cocos2d::CCObject*);
	TodoReturn sendSupportMail();
	TodoReturn createToggleButton(std::string, void (cocos2d::CCObject::*)(cocos2d::CCObject*), bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn uploadActionFailed(int, int);
	TodoReturn uploadActionFinished(int, int);
	TodoReturn onSFX(cocos2d::CCObject*);
	TodoReturn onTOS(cocos2d::CCObject*);
	TodoReturn create();
	TodoReturn onEmail(cocos2d::CCObject*);
	TodoReturn onLinks(cocos2d::CCObject*);
	TodoReturn onRobTop(cocos2d::CCObject*);
	TodoReturn exitLayer();
	TodoReturn onCocos2d(cocos2d::CCObject*);
	TodoReturn onPrivacy(cocos2d::CCObject*);
	TodoReturn ~SupportLayer();
}

[[link(android)]]
class URLViewLayer {
	TodoReturn init(std::string, cocos2d::CCArray*);
	TodoReturn create(std::string, cocos2d::CCArray*);
	TodoReturn ~URLViewLayer();
}

[[link(android)]]
class BonusDropdown {
	TodoReturn init(std::string, int);
	TodoReturn show();
	TodoReturn create(std::string, int);
	TodoReturn ~BonusDropdown();
}

[[link(android)]]
class BoomListLayer {
	TodoReturn init(BoomListView*, char const*);
	TodoReturn create(BoomListView*, char const*);
	TodoReturn ~BoomListLayer();
}

[[link(android)]]
class CCAlertCircle {
	TodoReturn draw();
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~CCAlertCircle();
}

[[link(android)]]
class CCCircleAlert {
	TodoReturn init(float, float, float);
	TodoReturn create(float, float, float);
	TodoReturn ~CCCircleAlert();
}

[[link(android)]]
class ChallengeNode {
	TodoReturn onClaimReward(cocos2d::CCObject*);
	TodoReturn updateTimeLabel(std::string);
	TodoReturn init(GJChallengeItem*, ChallengesPage*, bool);
	TodoReturn create(GJChallengeItem*, ChallengesPage*, bool);
	TodoReturn ~ChallengeNode();
}

[[link(android)]]
class CustomSFXCell {
	TodoReturn shouldReload();
	TodoReturn updateBGColor(int);
	TodoReturn getActiveSFXID();
	TodoReturn loadFromObject(SFXInfoObject*);
	TodoReturn sfxObjectSelected(SFXInfoObject*);
	TodoReturn draw();
	TodoReturn init();
	TodoReturn CustomSFXCell(char const*, float, float);
	TodoReturn ~CustomSFXCell();
}

[[link(android)]]
class DrawGridLayer {
	TodoReturn posForTime(float);
	TodoReturn postUpdate();
	TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, bool, bool, int);
	TodoReturn addToGuides(GameObject*);
	TodoReturn addToEffects(EffectGameObject*);
	TodoReturn getPortalMinMax(GameObject*);
	TodoReturn loadTimeMarkers(std::string);
	TodoReturn removeFromGuides(GameObject*);
	TodoReturn sortSpeedObjects();
	TodoReturn addToSpeedObjects(EffectGameObject*);
	TodoReturn removeFromEffects(EffectGameObject*);
	TodoReturn updateTimeMarkers();
	TodoReturn addAudioLineObject(AudioLineGuideGameObject*);
	TodoReturn updateMusicGuideTime(float);
	TodoReturn removeAudioLineObject(AudioLineGuideGameObject*);
	TodoReturn removeFromSpeedObjects(EffectGameObject*);
	TodoReturn draw();
	TodoReturn init(cocos2d::CCNode*, LevelEditorLayer*);
	TodoReturn create(cocos2d::CCNode*, LevelEditorLayer*);
	TodoReturn update(float);
	TodoReturn ~DrawGridLayer();
}

[[link(android)]]
class EditButtonBar {
	TodoReturn reloadItems(int, int);
	TodoReturn loadFromItems(cocos2d::CCArray*, int, int, bool);
	TodoReturn init(cocos2d::CCArray*, cocos2d::CCPoint, int, bool, int, int);
	TodoReturn create(cocos2d::CCArray*, cocos2d::CCPoint, int, bool, int, int);
	TodoReturn onLeft(cocos2d::CCObject*);
	TodoReturn getPage();
	TodoReturn onRight(cocos2d::CCObject*);
	TodoReturn goToPage(int);
	TodoReturn ~EditButtonBar();
}

[[link(android)]]
class EndLevelLayer {
	TodoReturn getEndText();
	TodoReturn customSetup();
	TodoReturn onEveryplay(cocos2d::CCObject*);
	TodoReturn getCoinString();
	TodoReturn playEndEffect();
	TodoReturn tryShowBanner(float);
	TodoReturn keyBackClicked();
	TodoReturn playCoinEffect(float);
	TodoReturn playStarEffect(float);
	TodoReturn coinEnterFinished(cocos2d::CCPoint);
	TodoReturn enterAnimFinished();
	TodoReturn playDiamondEffect(float);
	TodoReturn starEnterFinished();
	TodoReturn coinEnterFinishedO(cocos2d::CCObject*);
	TodoReturn onLevelLeaderboard(cocos2d::CCObject*);
	TodoReturn playCurrencyEffect(float);
	TodoReturn diamondEnterFinished();
	TodoReturn currencyEnterFinished();
	TodoReturn keyUp(cocos2d::enumKeyCodes);
	TodoReturn create();
	TodoReturn goEdit();
	TodoReturn onEdit(cocos2d::CCObject*);
	TodoReturn onMenu(cocos2d::CCObject*);
	TodoReturn keyDown(cocos2d::enumKeyCodes);
	TodoReturn onReplay(cocos2d::CCObject*);
	TodoReturn showLayer(bool);
	TodoReturn ~EndLevelLayer();
}

[[link(android)]]
class ExtendedLayer {
	TodoReturn setPosition(cocos2d::CCPoint const&);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~ExtendedLayer();
}

[[link(android)]]
class FileOperation {
	TodoReturn getFilePath();
	TodoReturn readFile();
	TodoReturn saveFile();
}

[[link(android)]]
class GauntletLayer {
	TodoReturn setupGauntlet(cocos2d::CCArray*);
	TodoReturn keyBackClicked();
	TodoReturn loadLevelsFailed(char const*, int);
	TodoReturn unlockActiveItem();
	TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	TodoReturn init(GauntletType);
	TodoReturn scene(GauntletType);
	TodoReturn create(GauntletType);
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onLevel(cocos2d::CCObject*);
	TodoReturn ~GauntletLayer();
}

[[link(android)]]
class GJChestSprite {
	TodoReturn setOpacity(unsigned char);
	TodoReturn switchToState(ChestSpriteState, bool);
	TodoReturn init(int);
	TodoReturn create(int);
	TodoReturn setColor(cocos2d::_ccColor3B const&);
	TodoReturn ~GJChestSprite();
}

[[link(android)]]
class GJGarageLayer {
	TodoReturn onNavigate(cocos2d::CCObject*);
	TodoReturn toggleGlow();
	TodoReturn updateRate();
	TodoReturn onSelectTab(cocos2d::CCObject*);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn dialogClosed(DialogLayer*);
	TodoReturn getLockFrame(int, UnlockType);
	TodoReturn onToggleItem(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn titleForUnlock(int, UnlockType);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn setupIconSelect();
	TodoReturn showUnlockPopup(int, UnlockType);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn playShadowEffect();
	TodoReturn setupSpecialPage();
	TodoReturn updatePlayerName(char const*);
	TodoReturn playRainbowEffect();
	TodoReturn playerColorChanged();
	TodoReturn showUnlockPopupNew(int, UnlockType);
	TodoReturn updatePlayerColors();
	TodoReturn achievementForUnlock(int, UnlockType);
	TodoReturn descriptionForUnlock(int, UnlockType);
	TodoReturn listButtonBarSwitchedPage(ListButtonBar*, int);
	TodoReturn init();
	TodoReturn scene();
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn onShop(cocos2d::CCObject*);
	TodoReturn onArrow(cocos2d::CCObject*);
	TodoReturn onPaint(cocos2d::CCObject*);
	TodoReturn getItems(IconType);
	TodoReturn getItems(int, int, IconType, int);
	TodoReturn onSelect(cocos2d::CCObject*);
	TodoReturn onShards(cocos2d::CCObject*);
	TodoReturn onSpecial(cocos2d::CCObject*);
	TodoReturn selectTab(IconType);
	TodoReturn setupPage(int, IconType);
	TodoReturn ~GJGarageLayer();
}

[[link(android)]]
class GJGroundLayer {
	TodoReturn createLine(int);
	TodoReturn getGroundY();
	TodoReturn showGround();
	TodoReturn hideShadows();
	TodoReturn scaleGround(float);
	TodoReturn fadeInGround(float);
	TodoReturn fadeOutGround(float);
	TodoReturn updateShadows();
	TodoReturn fadeInFinished();
	TodoReturn positionGround(float);
	TodoReturn toggleVisible01(bool);
	TodoReturn toggleVisible02(bool);
	TodoReturn updateGroundPos(cocos2d::CCPoint);
	TodoReturn updateLineBlend(bool);
	TodoReturn deactivateGround();
	TodoReturn updateShadowXPos(float, float);
	TodoReturn loadGroundSprites(int, bool);
	TodoReturn updateGroundWidth(bool);
	TodoReturn updateGround01Color(cocos2d::_ccColor3B);
	TodoReturn updateGround02Color(cocos2d::_ccColor3B);
	TodoReturn draw();
	TodoReturn init(int, int);
	TodoReturn create(int, int);
	TodoReturn ~GJGroundLayer();
}

[[link(android)]]
class GJMessageCell {
	TodoReturn markAsRead();
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn updateToggle();
	TodoReturn onViewMessage(cocos2d::CCObject*);
	TodoReturn onViewProfile(cocos2d::CCObject*);
	TodoReturn updateBGColor(int);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn loadFromMessage(GJUserMessage*);
	TodoReturn onDeleteMessage(cocos2d::CCObject*);
	TodoReturn uploadActionFailed(int, int);
	TodoReturn uploadActionFinished(int, int);
	TodoReturn draw();
	TodoReturn init();
	TodoReturn onToggle(cocos2d::CCObject*);
	TodoReturn GJMessageCell(char const*, float, float);
	TodoReturn ~GJMessageCell();
}

[[link(android)]]
class GJRequestCell {
	TodoReturn markAsRead();
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn updateToggle();
	TodoReturn loadFromScore(GJUserScore*);
	TodoReturn onViewProfile(cocos2d::CCObject*);
	TodoReturn updateBGColor(int);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn onDeleteRequest(cocos2d::CCObject*);
	TodoReturn uploadActionFailed(int, int);
	TodoReturn onViewFriendRequest(cocos2d::CCObject*);
	TodoReturn uploadActionFinished(int, int);
	TodoReturn draw();
	TodoReturn init();
	TodoReturn onToggle(cocos2d::CCObject*);
	TodoReturn GJRequestCell(char const*, float, float);
	TodoReturn ~GJRequestCell();
}

[[link(android)]]
class GJRobotSprite {
	TodoReturn setOpacity(unsigned char);
	TodoReturn updateFrame(int);
	TodoReturn updateColors();
	TodoReturn hideSecondary();
	TodoReturn updateColor01(cocos2d::_ccColor3B);
	TodoReturn updateColor02(cocos2d::_ccColor3B);
	TodoReturn updateGlowColor(cocos2d::_ccColor3B, bool);
	TodoReturn init(int);
	TodoReturn init(int, std::string);
	TodoReturn create(int);
	TodoReturn hideGlow();
	TodoReturn showGlow();
	TodoReturn ~GJRobotSprite();
}

[[link(android)]]
class GJShaderState {
	TodoReturn tweenValue(float, float, int, float, int, float);
	TodoReturn stopTweenAction(int);
	TodoReturn updateTweenAction(float, int);
	TodoReturn updateTweenActions(float);
	TodoReturn timesyncShaderAction(int);
	TodoReturn timesyncShaderActions();
	TodoReturn reset();
}

[[link(android)]]
class GJSmartPrefab {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn encodeWithCoder(DS_Dictionary*);
	TodoReturn init();
	TodoReturn create();
	TodoReturn canEncode();
	TodoReturn ~GJSmartPrefab();
}

[[link(android)]]
class GJSongBrowser {
	TodoReturn onNextPage(cocos2d::CCObject*);
	TodoReturn onPrevPage(cocos2d::CCObject*);
	TodoReturn customSetup();
	TodoReturn onDeleteAll(cocos2d::CCObject*);
	TodoReturn setupPageInfo(int, int, int);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn setupSongBrowser(cocos2d::CCArray*);
	TodoReturn getSelectedCellIdx();
	TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	TodoReturn init();
	TodoReturn create();
	TodoReturn loadPage(int);
	TodoReturn exitLayer(cocos2d::CCObject*);
	TodoReturn ~GJSongBrowser();
}

[[link(android)]]
class GJUserMessage {
	TodoReturn init();
	TodoReturn create(cocos2d::CCDictionary*);
	TodoReturn create();
	TodoReturn ~GJUserMessage();
}

[[link(android)]]
class ItemInfoPopup {
	TodoReturn keyBackClicked();
	TodoReturn nameForUnlockType(int, UnlockType);
	TodoReturn isUnlockedByDefault(int, UnlockType);
	TodoReturn init(int, UnlockType);
	TodoReturn create(int, UnlockType);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onCredit(cocos2d::CCObject*);
	TodoReturn ~ItemInfoPopup();
}

[[link(android)]]
class LevelListCell {
	TodoReturn onListInfo(cocos2d::CCObject*);
	TodoReturn loadFromList(GJLevelList*);
	TodoReturn onViewProfile(cocos2d::CCObject*);
	TodoReturn updateBGColor(int);
	TodoReturn draw();
	TodoReturn init();
	TodoReturn create(float, float);
	TodoReturn onClick(cocos2d::CCObject*);
	TodoReturn LevelListCell(char const*, float, float);
	TodoReturn ~LevelListCell();
}

[[link(android)]]
class LikeItemLayer {
	TodoReturn triggerLike(bool);
	TodoReturn keyBackClicked();
	TodoReturn init(LikeItemType, int, int);
	TodoReturn create(LikeItemType, int, int);
	TodoReturn onLike(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onDislike(cocos2d::CCObject*);
	TodoReturn ~LikeItemLayer();
}

[[link(android)]]
class ListButtonBar {
	TodoReturn init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int);
	TodoReturn create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int);
	TodoReturn onLeft(cocos2d::CCObject*);
	TodoReturn getPage();
	TodoReturn onRight(cocos2d::CCObject*);
	TodoReturn goToPage(int);
	TodoReturn ~ListButtonBar();
}

[[link(android)]]
class LoadingCircle {
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn fadeAndRemove();
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn draw();
	TodoReturn init();
	TodoReturn show();
	TodoReturn create();
	TodoReturn ~LoadingCircle();
}

[[link(android)]]
class MenuGameLayer {
	TodoReturn getBGColor(int);
	TodoReturn resetPlayer();
	TodoReturn updateColor(float);
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn updateColors();
	TodoReturn destroyPlayer();
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init();
	TodoReturn create();
	TodoReturn update(float);
	TodoReturn tryJump(float);
	TodoReturn ~MenuGameLayer();
}

[[link(android)]]
class ObjectDecoder {
	TodoReturn sharedDecoder();
	TodoReturn getDecodedObject(int, DS_Dictionary*);
	TodoReturn init();
	TodoReturn ~ObjectDecoder();
	TodoReturn ObjectDecoder(ObjectDecoder const&);
	TodoReturn ObjectDecoder();
	TodoReturn cocos2d::CCObject* getDecodedObject(int, DS_Dictionary*);
	TodoReturn ObjectDecoderDelegate* getDelegate() const;
	TodoReturn virtual bool init();
	TodoReturn void setDelegate(ObjectDecoderDelegate*);
	TodoReturn static ObjectDecoder* sharedDecoder();
}

[[link(android)]]
class ObjectManager {
	TodoReturn animLoaded(char const*);
	TodoReturn getDefinition(char const*);
	TodoReturn loadCopiedSets();
	TodoReturn getGlobalAnimCopy(char const*);
	TodoReturn purgeObjectManager();
	TodoReturn loadCopiedAnimations();
	TodoReturn replaceAllOccurencesOfString(cocos2d::CCString*, cocos2d::CCString*, cocos2d::CCDictionary*);
	TodoReturn init();
	TodoReturn setup();
	TodoReturn instance();
	TodoReturn setLoaded(char const*);
	TodoReturn ~ObjectManager();
}

[[link(android)]]
class ObjectToolbox {
	TodoReturn sharedState();
	TodoReturn intKeyToFrame(int);
	TodoReturn gridNodeSizeForKey(int);
	TodoReturn perspectiveBlockFrame(int);
	TodoReturn init();
	TodoReturn allKeys();
	TodoReturn ~ObjectToolbox();
}

[[link(android)]]
class OptionsObject {
	TodoReturn toggleState();
	TodoReturn init(int, bool, std::string, OptionsObjectDelegate*);
	TodoReturn create(int, bool, std::string, OptionsObjectDelegate*);
	TodoReturn ~OptionsObject();
}

[[link(android)]]
class SetupEndPopup {
	TodoReturn onReversed(cocos2d::CCObject*);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateTargetID();
	TodoReturn onMultiActivate(cocos2d::CCObject*);
	TodoReturn onTargetIDArrow(cocos2d::CCObject*);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onLockY(cocos2d::CCObject*);
	TodoReturn ~SetupEndPopup();
}

[[link(android)]]
class SetupSFXPopup {
	TodoReturn onBrowseSFX(cocos2d::CCObject*);
	TodoReturn pageChanged();
	TodoReturn onPlusButton(cocos2d::CCObject*);
	TodoReturn updateLength();
	TodoReturn getActiveSFXID();
	TodoReturn valueDidChange(int, float);
	TodoReturn createSFXWidget();
	TodoReturn overridePlaySFX(SFXInfoObject*);
	TodoReturn sfxBrowserClosed(SFXBrowser*);
	TodoReturn sfxObjectSelected(SFXInfoObject*);
	TodoReturn init(SFXTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn create(SFXTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupSFXPopup();
}

[[link(android)]]
class SFXInfoObject {
	TodoReturn getLowerCaseName();
	TodoReturn init(int, std::string, int, int, int);
	TodoReturn create(int, std::string, int, int, int);
	TodoReturn ~SFXInfoObject();
}

[[link(android)]]
class SongInfoLayer {
	TodoReturn onDownload(cocos2d::CCObject*);
	TodoReturn onMenuMusic(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn onPracticeMusic(cocos2d::CCObject*);
	TodoReturn showCustomMusicUnlockInfo();
	TodoReturn init(std::string, std::string, std::string, std::string, std::string, std::string, int, std::string);
	TodoReturn onFB(cocos2d::CCObject*);
	TodoReturn onNG(cocos2d::CCObject*);
	TodoReturn onYT(cocos2d::CCObject*);
	TodoReturn onBPM(cocos2d::CCObject*);
	TodoReturn create(int);
	TodoReturn create(std::string, std::string, std::string, std::string, std::string, std::string, int, std::string);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SongInfoLayer();
}

[[link(android)]]
class TableViewCell {
	TodoReturn updateVisibility();
	TodoReturn TableViewCell(char const*, float, float);
	TodoReturn ~TableViewCell();
}

[[link(android)]]
class TutorialLayer {
	TodoReturn keyBackClicked();
	TodoReturn removeTutorialTexture();
	TodoReturn init();
	TodoReturn create();
	TodoReturn onNext(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn loadPage(int);
	TodoReturn ~TutorialLayer();
}

[[link(android)]]
class TutorialPopup {
	TodoReturn animateMenu();
	TodoReturn closeTutorial(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn registerForCallback(void (cocos2d::CCObject::*)(cocos2d::CCObject*), cocos2d::CCNode*);
	TodoReturn init(std::string);
	TodoReturn show();
	TodoReturn create(std::string);
	TodoReturn ~TutorialPopup();
}

[[link(android)]]
class AchievementBar {
	TodoReturn setOpacity(unsigned char);
	TodoReturn init(char const*, char const*, char const*, bool);
	TodoReturn show();
	TodoReturn create(char const*, char const*, char const*, bool);
	TodoReturn ~AchievementBar();
}

[[link(android)]]
class CCContentLayer {
	TodoReturn setPosition(cocos2d::CCPoint const&);
	TodoReturn create(cocos2d::_ccColor4B const&, float, float);
	TodoReturn ~CCContentLayer();
}

[[link(android)]]
class CCCounterLabel {
	TodoReturn updateString();
	TodoReturn enableCounter();
	TodoReturn updateCounter(float);
	TodoReturn disableCounter();
	TodoReturn getTargetCount();
	TodoReturn setTargetCount(int);
	TodoReturn calculateStepSize(int);
	TodoReturn fastUpdateCounter();
	TodoReturn init(int, char const*, FormatterType);
	TodoReturn create(int, char const*, FormatterType);
	TodoReturn ~CCCounterLabel();
}

[[link(android)]]
class CCExtenderNode {
	TodoReturn setOpacity(unsigned int);
}

[[link(android)]]
class ChallengesPage {
	TodoReturn updateDots();
	TodoReturn updateTimers(float);
	TodoReturn exitNodeAtSlot(int, float);
	TodoReturn keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn currencyWillExit(CurrencyRewardLayer*);
	TodoReturn tryGetChallenges();
	TodoReturn createChallengeNode(int, bool, float, bool);
	TodoReturn challengeStatusFailed();
	TodoReturn challengeStatusFinished();
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init();
	TodoReturn show();
	TodoReturn create();
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn claimItem(ChallengeNode*, GJChallengeItem*, cocos2d::CCPoint);
	TodoReturn ~ChallengesPage();
}

[[link(android)]]
class CreateMenuItem {
	TodoReturn init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*));
	TodoReturn create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*));
	TodoReturn ~CreateMenuItem();
}

[[link(android)]]
class CurrencySprite {
	TodoReturn initWithSprite(cocos2d::CCSprite*);
	TodoReturn createWithSprite(cocos2d::CCSprite*);
	TodoReturn spriteTypeToStat(CurrencySpriteType);
	TodoReturn rewardToSpriteType(int);
	TodoReturn init(CurrencySpriteType, bool);
	TodoReturn create(CurrencySpriteType, bool);
	TodoReturn ~CurrencySprite();
}

[[link(android)]]
class CustomListView {
	TodoReturn getListCell(char const*);
	TodoReturn getCellHeight(BoomListType);
	TodoReturn create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float);
	TodoReturn loadCell(TableViewCell*, int);
	TodoReturn reloadAll();
	TodoReturn setupList(float);
	TodoReturn ~CustomListView();
}

[[link(android)]]
class CustomSongCell {
	TodoReturn shouldReload();
	TodoReturn songIDChanged(int);
	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(SongInfoObject*);
	TodoReturn getActiveSongID();
	TodoReturn getSongFileName();
	TodoReturn getLevelSettings();
	TodoReturn draw();
	TodoReturn init();
	TodoReturn onDelete(cocos2d::CCObject*);
	TodoReturn CustomSongCell(char const*, float, float);
	TodoReturn ~CustomSongCell();
}

[[link(android)]]
class DailyLevelNode {
	TodoReturn onSkipLevel(cocos2d::CCObject*);
	TodoReturn onClaimReward(cocos2d::CCObject*);
	TodoReturn showSkipButton();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn updateTimeLabel(std::string);
	TodoReturn init(GJGameLevel*, DailyLevelPage*, bool);
	TodoReturn create(GJGameLevel*, DailyLevelPage*, bool);
	TodoReturn ~DailyLevelNode();
}

[[link(android)]]
class DailyLevelPage {
	TodoReturn getDailyTime();
	TodoReturn updateTimers(float);
	TodoReturn exitDailyNode(DailyLevelNode*, float);
	TodoReturn keyBackClicked();
	TodoReturn skipDailyLevel(DailyLevelNode*, GJGameLevel*);
	TodoReturn createDailyNode(GJGameLevel*, bool, float, bool);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn claimLevelReward(DailyLevelNode*, GJGameLevel*, cocos2d::CCPoint);
	TodoReturn refreshDailyPage();
	TodoReturn dailyStatusFailed(GJTimedLevelType, GJErrorCode);
	TodoReturn tryGetDailyStatus();
	TodoReturn createNodeIfLoaded();
	TodoReturn getDailyTimeString(int);
	TodoReturn dailyStatusFinished(GJTimedLevelType);
	TodoReturn levelDownloadFailed(int);
	TodoReturn downloadAndCreateNode();
	TodoReturn levelDownloadFinished(GJGameLevel*);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(GJTimedLevelType);
	TodoReturn show();
	TodoReturn create(GJTimedLevelType);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onTheSafe(cocos2d::CCObject*);
	TodoReturn ~DailyLevelPage();
}

[[link(android)]]
class DashRingObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn ~DashRingObject();
}

[[link(android)]]
class DialogDelegate {
	TodoReturn dialogClosed(DialogLayer*);
}

[[link(android)]]
class EditLevelLayer {
	TodoReturn onLevelInfo(cocos2d::CCObject*);
	TodoReturn onMoveToTop();
	TodoReturn onSetFolder(cocos2d::CCObject*);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn confirmClone(cocos2d::CCObject*);
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn onGuidelines(cocos2d::CCObject*);
	TodoReturn confirmDelete(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn setupLevelInfo();
	TodoReturn updateDescText(char const*);
	TodoReturn closeTextInputs();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn onLowDetailMode(cocos2d::CCObject*);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn verifyLevelName();
	TodoReturn confirmMoveToTop(cocos2d::CCObject*);
	TodoReturn setIDPopupClosed(SetIDPopup*, int);
	TodoReturn onLevelLeaderboard(cocos2d::CCObject*);
	TodoReturn uploadActionFailed(int, int);
	TodoReturn onUpdateDescription(cocos2d::CCObject*);
	TodoReturn uploadActionFinished(int, int);
	TodoReturn init(GJGameLevel*);
	TodoReturn scene(GJGameLevel*);
	TodoReturn create(GJGameLevel*);
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onEdit(cocos2d::CCObject*);
	TodoReturn onHelp(cocos2d::CCObject*);
	TodoReturn onPlay(cocos2d::CCObject*);
	TodoReturn onTest(cocos2d::CCObject*);
	TodoReturn keyDown(cocos2d::enumKeyCodes);
	TodoReturn onClone();
	TodoReturn onShare(cocos2d::CCObject*);
	TodoReturn onDelete();
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn ~EditLevelLayer();
}

[[link(android)]]
class FMODAudioState {
	TodoReturn ~FMODAudioState();
}

[[link(android)]]
class GameObjectCopy {
	TodoReturn resetObject();
	TodoReturn init(GameObject*);
	TodoReturn create(GameObject*);
	TodoReturn ~GameObjectCopy();
}

[[link(android)]]
class GauntletSprite {
	TodoReturn colorForType(GauntletType);
	TodoReturn addLockedSprite();
	TodoReturn addNormalSprite();
	TodoReturn luminanceForType(GauntletType);
	TodoReturn toggleLockedSprite(bool);
	TodoReturn init(GauntletType, bool);
	TodoReturn create(GauntletType, bool);
	TodoReturn ~GauntletSprite();
}

[[link(android)]]
class GJMessagePopup {
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn loadFromGJMessage(GJUserMessage*);
	TodoReturn uploadActionFailed(int, int);
	TodoReturn uploadActionFinished(int, int);
	TodoReturn downloadMessageFailed(int);
	TodoReturn downloadMessageFinished(GJUserMessage*);
	TodoReturn init(GJUserMessage*);
	TodoReturn create(GJUserMessage*);
	TodoReturn onBlock(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onReply(cocos2d::CCObject*);
	TodoReturn onRemove(cocos2d::CCObject*);
	TodoReturn blockUser();
	TodoReturn ~GJMessagePopup();
}

[[link(android)]]
class GJOptionsLayer {
	TodoReturn onNextPage(cocos2d::CCObject*);
	TodoReturn onPrevPage(cocos2d::CCObject*);
	TodoReturn addGVToggle(char const*, char const*, char const*);
	TodoReturn didToggleGV(std::string);
	TodoReturn countForPage(int);
	TodoReturn layerForPage(int);
	TodoReturn nextPosition(int);
	TodoReturn setupOptions();
	TodoReturn objectsForPage(int);
	TodoReturn offsetToNextPage();
	TodoReturn addToggleInternal(char const*, int, bool, char const*);
	TodoReturn incrementCountForPage(int);
	TodoReturn init(int);
	TodoReturn create(int);
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn infoKey(int);
	TodoReturn pageKey(int);
	TodoReturn goToPage(int);
	TodoReturn layerKey(int);
	TodoReturn onToggle(cocos2d::CCObject*);
	TodoReturn addToggle(char const*, int, bool, char const*);
	TodoReturn didToggle(int);
	TodoReturn objectKey(int);
	TodoReturn ~GJOptionsLayer();
}

[[link(android)]]
class GJRewardObject {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn isSpecialType();
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn encodeWithCoder(DS_Dictionary*);
	TodoReturn createItemUnlock(UnlockType, int);
	TodoReturn init(SpecialRewardItem, int, int);
	TodoReturn create(SpecialRewardItem, int, int);
	TodoReturn create();
	TodoReturn canEncode();
	TodoReturn ~GJRewardObject();
}

[[link(android)]]
class GJScaleControl {
	TodoReturn loadValues(GameObject*, cocos2d::CCArray*, std::unordered_map<int, GameObjectEditorState, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, GameObjectEditorState> > >&);
	TodoReturn finishTouch();
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn updateLabelX(float);
	TodoReturn updateLabelY(float);
	TodoReturn skewFromValue(float);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateLabelXY(float);
	TodoReturn valueFromSkew(float);
	TodoReturn scaleFromValue(float);
	TodoReturn valueFromScale(float);
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~GJScaleControl();
}

[[link(android)]]
class GJSearchObject {
	TodoReturn getSearchKey(SearchType, std::string, std::string, std::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int);
	TodoReturn createFromKey(char const*);
	TodoReturn getPageObject(int);
	TodoReturn getNextPageKey();
	TodoReturn getNextPageObject();
	TodoReturn getPrevPageObject();
	TodoReturn isLevelSearchObject();
	TodoReturn init(SearchType, std::string, std::string, std::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int);
	TodoReturn create(SearchType);
	TodoReturn create(SearchType, std::string);
	TodoReturn create(SearchType, std::string, std::string, std::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int);
	TodoReturn getKey();
	TodoReturn ~GJSearchObject();
}

[[link(android)]]
class GJSpiderSprite {
	TodoReturn init(int);
	TodoReturn create(int);
	TodoReturn ~GJSpiderSprite();
}

[[link(android)]]
class HSVLiveOverlay {
	TodoReturn hsvChanged(ConfigureHSVWidget*);
	TodoReturn onSelectTab(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn toggleControls(bool);
	TodoReturn createHSVWidget(int);
	TodoReturn closeColorSelect(cocos2d::CCObject*);
	TodoReturn determineStartValues();
	TodoReturn init(GameObject*, cocos2d::CCArray*);
	TodoReturn show();
	TodoReturn create(GameObject*, cocos2d::CCArray*);
	TodoReturn ~HSVLiveOverlay();
}

[[link(android)]]
class HSVWidgetPopup {
	TodoReturn keyBackClicked();
	TodoReturn init(cocos2d::_ccHSVValue, HSVWidgetDelegate*, std::string);
	TodoReturn create(cocos2d::_ccHSVValue, HSVWidgetDelegate*, std::string);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~HSVWidgetPopup();
}

[[link(android)]]
class KeyframeObject {
	TodoReturn setupSpline(std::vector<KeyframeObject*, std::allocator<KeyframeObject*> >&);
}

[[link(android)]]
class LevelAreaLayer {
	TodoReturn showDialog();
	TodoReturn onClickDoor(cocos2d::CCObject*);
	TodoReturn dialogClosed(DialogLayer*);
	TodoReturn onEnterTower();
	TodoReturn keyBackClicked();
	TodoReturn fadeInsideTower();
	TodoReturn init();
	TodoReturn scene();
	TodoReturn create();
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn addTorch(cocos2d::CCNode*, cocos2d::CCPoint, int, float, int, bool);
	TodoReturn addGodRay(float, float, float, float, float, cocos2d::CCPoint);
	TodoReturn ~LevelAreaLayer();
}

[[link(android)]]
class LevelInfoLayer {
	TodoReturn onFavorite(cocos2d::CCObject*);
	TodoReturn onFeatured(cocos2d::CCObject*);
	TodoReturn onAddToList(cocos2d::CCObject*);
	TodoReturn onLevelInfo(cocos2d::CCObject*);
	TodoReturn onRateDemon(cocos2d::CCObject*);
	TodoReturn onRateStars(cocos2d::CCObject*);
	TodoReturn onSetFolder(cocos2d::CCObject*);
	TodoReturn confirmClone(cocos2d::CCObject*);
	TodoReturn onPlayReplay(cocos2d::CCObject*);
	TodoReturn confirmDelete(cocos2d::CCObject*);
	TodoReturn downloadLevel();
	TodoReturn loadLevelStep();
	TodoReturn onOwnerDelete(cocos2d::CCObject*);
	TodoReturn onViewProfile(cocos2d::CCObject*);
	TodoReturn tryCloneLevel(cocos2d::CCObject*);
	TodoReturn incrementLikes();
	TodoReturn keyBackClicked();
	TodoReturn onRateStarsMod(cocos2d::CCObject*);
	TodoReturn setupLevelInfo();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn onLowDetailMode(cocos2d::CCObject*);
	TodoReturn rateLevelClosed();
	TodoReturn showSongWarning();
	TodoReturn showUpdateAlert(UpdateResponse);
	TodoReturn confirmMoveToTop(cocos2d::CCObject*);
	TodoReturn setIDPopupClosed(SetIDPopup*, int);
	TodoReturn incrementDislikes();
	TodoReturn levelDeleteFailed(int);
	TodoReturn levelUpdateFailed(int);
	TodoReturn numberInputClosed(NumberInputLayer*);
	TodoReturn setupProgressBars();
	TodoReturn updateLabelValues();
	TodoReturn updateSideButtons();
	TodoReturn confirmOwnerDelete(cocos2d::CCObject*);
	TodoReturn onLevelLeaderboard(cocos2d::CCObject*);
	TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	TodoReturn confirmMoveToBottom(cocos2d::CCObject*);
	TodoReturn levelDeleteFinished(int);
	TodoReturn levelDownloadFailed(int);
	TodoReturn levelUpdateFinished(GJGameLevel*, UpdateResponse);
	TodoReturn shouldDownloadLevel();
	TodoReturn setupPlatformerStats();
	TodoReturn levelDownloadFinished(GJGameLevel*);
	TodoReturn init(GJGameLevel*, bool);
	TodoReturn scene(GJGameLevel*, bool);
	TodoReturn create(GJGameLevel*, bool);
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn onLike(cocos2d::CCObject*);
	TodoReturn onPlay(cocos2d::CCObject*);
	TodoReturn onRate(cocos2d::CCObject*);
	TodoReturn keyDown(cocos2d::enumKeyCodes);
	TodoReturn onClone(cocos2d::CCObject*);
	TodoReturn onDelete(cocos2d::CCObject*);
	TodoReturn onGarage(cocos2d::CCObject*);
	TodoReturn onUpdate(cocos2d::CCObject*);
	TodoReturn likedItem(LikeItemType, int, bool);
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn playStep4();
	TodoReturn tryShowAd();
	TodoReturn ~LevelInfoLayer();
}

[[link(android)]]
class LevelListLayer {
	TodoReturn onFavorite(cocos2d::CCObject*);
	TodoReturn onListInfo(cocos2d::CCObject*);
	TodoReturn ownerDelete();
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn confirmClone(cocos2d::CCObject*);
	TodoReturn onSelectIcon(cocos2d::CCObject*);
	TodoReturn confirmDelete(cocos2d::CCObject*);
	TodoReturn onClaimReward(cocos2d::CCObject*);
	TodoReturn onDescription(cocos2d::CCObject*);
	TodoReturn onViewProfile(cocos2d::CCObject*);
	TodoReturn updateEditMode();
	TodoReturn updateStatsArt();
	TodoReturn verifyListName();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn iconSelectClosed(SelectListIconLayer*);
	TodoReturn loadLevelsFailed(char const*, int);
	TodoReturn onToggleEditMode(cocos2d::CCObject*);
	TodoReturn setIDPopupClosed(SetIDPopup*, int);
	TodoReturn updateResultArray(cocos2d::CCArray*);
	TodoReturn updateSideButtons();
	TodoReturn confirmOwnerDelete(cocos2d::CCObject*);
	TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	TodoReturn onRefreshLevelList(cocos2d::CCObject*);
	TodoReturn shareCommentClosed(std::string, ShareCommentLayer*);
	TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	TodoReturn levelListDeleteFailed(int);
	TodoReturn levelListDeleteFinished(int);
	TodoReturn init(GJLevelList*);
	TodoReturn scene(GJLevelList*);
	TodoReturn create(GJLevelList*);
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onExit();
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn onLike(cocos2d::CCObject*);
	TodoReturn onEnter();
	TodoReturn onShare(cocos2d::CCObject*);
	TodoReturn onDelete();
	TodoReturn cloneList();
	TodoReturn likedItem(LikeItemType, int, bool);
	TodoReturn ~LevelListLayer();
}

[[link(android)]]
class ListButtonPage {
	TodoReturn init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float);
	TodoReturn create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float);
	TodoReturn ~ListButtonPage();
}

[[link(android)]]
class MapSelectLayer {
	TodoReturn scrollWheel(float, float);
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn keyBackClicked();
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn checkTouchMonster(cocos2d::CCPoint);
	TodoReturn createObjectAtPoint(cocos2d::CCPoint);
	TodoReturn getConstrainedMapPos(cocos2d::CCPoint);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init();
	TodoReturn scene();
	TodoReturn create();
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onExit();
	TodoReturn update(float);
	TodoReturn ~MapSelectLayer();
}

[[link(android)]]
class RateDemonLayer {
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn selectRating(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn uploadActionFailed(int, int);
	TodoReturn uploadActionFinished(int, int);
	TodoReturn init(int);
	TodoReturn create(int);
	TodoReturn onRate(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~RateDemonLayer();
}

[[link(android)]]
class RateLevelLayer {
	TodoReturn selectRating(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn init(int);
	TodoReturn create(int);
	TodoReturn onRate(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~RateLevelLayer();
}

[[link(android)]]
class RateStarsLayer {
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn selectRating(cocos2d::CCObject*);
	TodoReturn onToggleCoins(cocos2d::CCObject*);
	TodoReturn getStarsButton(int, void (cocos2d::CCObject::*)(cocos2d::CCObject*), cocos2d::CCMenu*, float);
	TodoReturn keyBackClicked();
	TodoReturn uploadActionFailed(int, int);
	TodoReturn uploadActionFinished(int, int);
	TodoReturn init(int, bool, bool);
	TodoReturn create(int, bool, bool);
	TodoReturn onRate(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onFeature(cocos2d::CCObject*);
	TodoReturn ~RateStarsLayer();
}

[[link(android)]]
class ScrollingLayer {
	TodoReturn getViewRect();
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn setStartOffset(cocos2d::CCPoint);
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn draw();
	TodoReturn init(cocos2d::CCSize, cocos2d::CCPoint, float);
	TodoReturn visit();
	TodoReturn create(cocos2d::CCSize, cocos2d::CCPoint, float);
	TodoReturn ~ScrollingLayer();
}

[[link(android)]]
class SearchSFXPopup {
	TodoReturn onSearchFolders(cocos2d::CCObject*);
	TodoReturn init(std::string);
	TodoReturn create(std::string);
	TodoReturn ~SearchSFXPopup();
}

[[link(android)]]
class SelectArtLayer {
	TodoReturn keyBackClicked();
	TodoReturn onSelectCustom(cocos2d::CCObject*);
	TodoReturn updateSelectedCustom(int);
	TodoReturn init(SelectArtType, int);
	TodoReturn create(SelectArtType, int);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn selectArt(cocos2d::CCObject*);
	TodoReturn ~SelectArtLayer();
}

[[link(android)]]
class SetFolderPopup {
	TodoReturn valueChanged();
	TodoReturn onSetFolderName(cocos2d::CCObject*);
	TodoReturn setTextPopupClosed(SetTextPopup*, std::string);
	TodoReturn init(int, bool, std::string);
	TodoReturn create(int, bool, std::string);
	TodoReturn ~SetFolderPopup();
}

[[link(android)]]
class SetItemIDLayer {
	TodoReturn valueDidChange(int, float);
	TodoReturn updateEditorLabel();
	TodoReturn onCustomToggleTriggerValue(cocos2d::CCObject*);
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetItemIDLayer();
}

[[link(android)]]
class SetupCoinLayer {
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupCoinLayer();
}

[[link(android)]]
class SetupMGTrigger {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn onEasingRate(cocos2d::CCObject*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn sliderYChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn valuePopupClosed(ConfigureValuePopup*, float);
	TodoReturn updateEasingLabel();
	TodoReturn updateValueYLabel();
	TodoReturn posFromSliderValue(float);
	TodoReturn sliderValueFromPos(int);
	TodoReturn determineStartValues();
	TodoReturn updateEasingRateLabel();
	TodoReturn updateMoveCommandPosY();
	TodoReturn updateMoveCommandEasing();
	TodoReturn toggleEasingRateVisibility();
	TodoReturn updateMoveCommandEasingRate();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onEasing(cocos2d::CCObject*);
	TodoReturn ~SetupMGTrigger();
}

[[link(android)]]
class ShareListLayer {
	TodoReturn onUnlisted(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn updateUnlistedF();
	TodoReturn init(GJLevelList*);
	TodoReturn create(GJLevelList*);
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onShare(cocos2d::CCObject*);
	TodoReturn ~ShareListLayer();
}

[[link(android)]]
class SliderDelegate {
	TodoReturn sliderBegan(Slider*);
	TodoReturn sliderEnded(Slider*);
}

[[link(android)]]
class SongInfoObject {
	TodoReturn containsTag(int);
	TodoReturn getTagsString();
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn encodeWithCoder(DS_Dictionary*);
	TodoReturn init(int, std::string, std::string, int, float, std::string, std::string, std::string, int);
	TodoReturn create(int);
	TodoReturn create(int, std::string, std::string, int, float, std::string, std::string, std::string, int);
	TodoReturn create(cocos2d::CCDictionary*);
	TodoReturn addTags(std::string);
	TodoReturn canEncode();
	TodoReturn ~SongInfoObject();
}

[[link(android)]]
class SongSelectNode {
	TodoReturn onSongMode(int);
	TodoReturn onSongMode(cocos2d::CCObject*);
	TodoReturn selectSong(int);
	TodoReturn audioPrevious(cocos2d::CCObject*);
	TodoReturn songIDChanged(int);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn getActiveSongID();
	TodoReturn getSongFileName();
	TodoReturn getLevelSettings();
	TodoReturn onOpenCustomSong(cocos2d::CCObject*);
	TodoReturn updateAudioLabel();
	TodoReturn showCustomSongSelect();
	TodoReturn customSongLayerClosed();
	TodoReturn updateWidgetVisibility();
	TodoReturn init(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool);
	TodoReturn create(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool);
	TodoReturn audioNext(cocos2d::CCObject*);
	TodoReturn ~SongSelectNode();
}

[[link(android)]]
class StartPosObject {
	TodoReturn setSettings(LevelSettingsObject*);
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn loadSettingsFromString(std::string);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~StartPosObject();
}

[[link(android)]]
class TextAlertPopup {
	TodoReturn setLabelColor(cocos2d::_ccColor3B);
	TodoReturn setAlertPosition(cocos2d::CCPoint, cocos2d::CCPoint);
	TodoReturn init(std::string, float, float, int, std::string);
	TodoReturn create(std::string, float, float, int, std::string);
	TodoReturn ~TextAlertPopup();
}

[[link(android)]]
class TextGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn getTextKerning();
	TodoReturn updateTextObject(std::string, bool);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn updateTextKerning(int);
	TodoReturn init(cocos2d::CCTexture2D*);
	TodoReturn create(cocos2d::CCTexture2D*);
	TodoReturn ~TextGameObject();
}

[[link(android)]]
class UIOptionsLayer {
	TodoReturn onSaveLoad(cocos2d::CCObject*);
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn toggleUIGroup(int);
	TodoReturn valueDidChange(int, float);
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(bool);
	TodoReturn create(bool);
	TodoReturn getNode(int);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onReset(cocos2d::CCObject*);
	TodoReturn getValue(int);
	TodoReturn ~UIOptionsLayer();
}

[[link(android)]]
class WorldLevelPage {
	TodoReturn keyBackClicked();
	TodoReturn init(GJGameLevel*, GJWorldNode*);
	TodoReturn show();
	TodoReturn create(GJGameLevel*, GJWorldNode*);
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn onPlay(cocos2d::CCObject*);
	TodoReturn onSong(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~WorldLevelPage();
}

[[link(android)]]
class AchievementCell {
	TodoReturn loadFromDict(cocos2d::CCDictionary*);
	TodoReturn updateBGColor(int);
	TodoReturn draw();
	TodoReturn init();
	TodoReturn AchievementCell(char const*, float, float);
	TodoReturn ~AchievementCell();
}

[[link(android)]]
class BitmapFontCache {
	TodoReturn sharedFontCache();
	TodoReturn fontWithConfigFile(char const*, float);
	TodoReturn purgeSharedFontCache();
	TodoReturn init();
	TodoReturn ~BitmapFontCache();
}

[[link(android)]]
class BoomScrollLayer {
	TodoReturn claimTouch(cocos2d::CCTouch*);
	TodoReturn moveToPage(int);
	TodoReturn removePage(cocos2d::CCLayer*);
	TodoReturn selectPage(int);
	TodoReturn updateDots(float);
	TodoReturn quickUpdate();
	TodoReturn setDotScale(float);
	TodoReturn updatePages();
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn getTotalPages();
	TodoReturn moveToPageEnded();
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn instantMoveToPage(int);
	TodoReturn cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn removePageWithNumber(int);
	TodoReturn togglePageIndicators(bool);
	TodoReturn getRelativePageForNum(int);
	TodoReturn getRelativePosForPage(int);
	TodoReturn pageNumberForPosition(cocos2d::CCPoint);
	TodoReturn repositionPagesLooped();
	TodoReturn setupDynamicScrolling(cocos2d::CCArray*, DynamicScrollDelegate*);
	TodoReturn positionForPageWithNumber(int);
	TodoReturn setPagesIndicatorPosition(cocos2d::CCPoint);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(cocos2d::CCArray*, int, bool, cocos2d::CCArray*, DynamicScrollDelegate*);
	TodoReturn visit();
	TodoReturn create(cocos2d::CCArray*, int, bool);
	TodoReturn create(cocos2d::CCArray*, int, bool, cocos2d::CCArray*, DynamicScrollDelegate*);
	TodoReturn addPage(cocos2d::CCLayer*);
	TodoReturn addPage(cocos2d::CCLayer*, int);
	TodoReturn getPage(int);
	TodoReturn ~BoomScrollLayer();
}

[[link(android)]]
class CCNodeContainer {
	TodoReturn init();
	TodoReturn visit();
	TodoReturn create();
	TodoReturn ~CCNodeContainer();
}

[[link(android)]]
class CCSpriteWithHue {
	TodoReturn initShader();
	TodoReturn shaderBody();
	TodoReturn updateColor();
	TodoReturn setLuminance(float);
	TodoReturn getShaderName();
	TodoReturn setHueDegrees(float);
	TodoReturn initWithTexture(cocos2d::CCTexture2D*);
	TodoReturn initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
	TodoReturn initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
	TodoReturn setEvenLuminance(float);
	TodoReturn createWithTexture(cocos2d::CCTexture2D*);
	TodoReturn createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
	TodoReturn updateColorMatrix();
	TodoReturn setCustomLuminance(float, float, float);
	TodoReturn getUniformLocations();
	TodoReturn initWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn setupDefaultSettings();
	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(std::string const&);
	TodoReturn draw();
	TodoReturn create(std::string const&);
	TodoReturn create(std::string const&, cocos2d::CCRect const&);
	TodoReturn getHue();
	TodoReturn setHue(float);
	TodoReturn getAlpha();
	TodoReturn updateHue(float);
	TodoReturn ~CCSpriteWithHue();
}

[[link(android)]]
class CCTextInputNode {
	TodoReturn addTextArea(TextArea*);
	TodoReturn forceOffset();
	TodoReturn textChanged();
	TodoReturn updateLabel(std::string);
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn refreshLabel();
	TodoReturn setAllowedChars(std::string);
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
	TodoReturn keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
	TodoReturn onClickTrackNode(bool);
	TodoReturn setMaxLabelScale(float);
	TodoReturn setMaxLabelWidth(float);
	TodoReturn updateBlinkLabel();
	TodoReturn setLabelNormalColor(cocos2d::_ccColor3B);
	TodoReturn updateCursorPosition(cocos2d::CCPoint, cocos2d::CCRect);
	TodoReturn onTextFieldInsertText(cocos2d::CCTextFieldTTF*, char const*, int, cocos2d::enumKeyCodes);
	TodoReturn updateBlinkLabelToChar(int);
	TodoReturn updateDefaultFontValues(std::string);
	TodoReturn onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF*);
	TodoReturn onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF*);
	TodoReturn setLabelPlaceholderColor(cocos2d::_ccColor3B);
	TodoReturn setLabelPlaceholderScale(float);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(float, float, char const*, char const*, int, char const*);
	TodoReturn visit();
	TodoReturn create(float, float, char const*, char const*, int, char const*);
	TodoReturn getString();
	TodoReturn setString(std::string);
	TodoReturn ~CCTextInputNode();
}

[[link(android)]]
class CustomMusicCell {
	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(SongInfoObject*);
	TodoReturn CustomMusicCell(char const*, float, float);
	TodoReturn ~CustomMusicCell();
}

[[link(android)]]
class CustomSFXWidget {
	TodoReturn onDownload(cocos2d::CCObject*);
	TodoReturn onPlayback(cocos2d::CCObject*);
	TodoReturn updateError(GJSongError);
	TodoReturn verifySFXID(int);
	TodoReturn startDownload();
	TodoReturn updateSFXInfo();
	TodoReturn downloadFailed();
	TodoReturn hideLoadingArt();
	TodoReturn showLoadingArt();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn updateLengthMod(float);
	TodoReturn updateSFXObject(SFXInfoObject*);
	TodoReturn onCancelDownload(cocos2d::CCObject*);
	TodoReturn songStateChanged();
	TodoReturn downloadSFXFailed(int, GJSongError);
	TodoReturn updatePlaybackBtn();
	TodoReturn updateProgressBar(int);
	TodoReturn downloadSFXFinished(int);
	TodoReturn startMonitorDownload();
	TodoReturn updateDownloadProgress(float);
	TodoReturn init(SFXInfoObject*, CustomSFXDelegate*, bool, bool, bool, bool, bool);
	TodoReturn create(SFXInfoObject*, CustomSFXDelegate*, bool, bool, bool, bool, bool);
	TodoReturn onDelete(cocos2d::CCObject*);
	TodoReturn onSelect(cocos2d::CCObject*);
	TodoReturn deleteSFX();
	TodoReturn ~CustomSFXWidget();
}

[[link(android)]]
class CustomSongLayer {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn onCreateLines(cocos2d::CCObject*);
	TodoReturn onSongBrowser(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn onMusicBrowser(cocos2d::CCObject*);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn textInputReturn(CCTextInputNode*);
	TodoReturn musicBrowserClosed(MusicBrowser*);
	TodoReturn onNewgroundsBrowser(cocos2d::CCObject*);
	TodoReturn showNewgroundsMessage();
	TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	TodoReturn dropDownLayerWillClose(GJDropDownLayer*);
	TodoReturn init(CustomSongDelegate*);
	TodoReturn show();
	TodoReturn create(CustomSongDelegate*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onSearch(cocos2d::CCObject*);
	TodoReturn onOptions(cocos2d::CCObject*);
	TodoReturn ~CustomSongLayer();
}

[[link(android)]]
class EndPortalObject {
	TodoReturn setVisible(bool);
	TodoReturn getSpawnPos();
	TodoReturn setPosition(cocos2d::CCPoint const&);
	TodoReturn updateColors(cocos2d::_ccColor3B);
	TodoReturn updateEndPos(bool);
	TodoReturn triggerObject(GJBaseGameLayer*);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~EndPortalObject();
}

[[link(android)]]
class ExplodeItemNode {
	TodoReturn createSprites(int, int, float, float, float, float, float, float, cocos2d::_ccColor4F, cocos2d::_ccColor4F, bool);
	TodoReturn init(cocos2d::CCRenderTexture*);
	TodoReturn create(cocos2d::CCRenderTexture*);
	TodoReturn update(float);
	TodoReturn ~ExplodeItemNode();
}

[[link(android)]]
class FileSaveManager {
	TodoReturn sharedState();
	TodoReturn getStoreData();
	TodoReturn loadDataFromFile(char const*);
	TodoReturn init();
	TodoReturn firstLoad();
	TodoReturn ~FileSaveManager();
}

[[link(android)]]
class FindObjectPopup {
	TodoReturn onFindObjectID(cocos2d::CCObject*);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~FindObjectPopup();
}

[[link(android)]]
class FMODAudioEngine {
	TodoReturn pauseMusic(int);
	TodoReturn playEffect(std::string);
	TodoReturn playEffect(std::string, float, float, float);
	TodoReturn startMusic(int, int, int, int, bool, int);
	TodoReturn fadeInMusic(float, int);
	TodoReturn pauseEffect(unsigned int);
	TodoReturn pitchForIdx(int);
	TodoReturn printResult(FMOD_RESULT);
	TodoReturn resumeAudio();
	TodoReturn resumeMusic(int);
	TodoReturn stopChannel(int);
	TodoReturn stopChannel(int, AudioTargetType, bool, float);
	TodoReturn stopChannel(FMOD::Channel*, bool, float);
	TodoReturn storeEffect(FMOD::Sound*, std::string);
	TodoReturn createStream(std::string);
	TodoReturn fadeOutMusic(float, int);
	TodoReturn getMusicTime(int);
	TodoReturn isSoundReady(FMOD::Sound*);
	TodoReturn preloadMusic(std::string, bool, int);
	TodoReturn resumeEffect(unsigned int);
	TodoReturn sharedEngine();
	TodoReturn stopAllMusic();
	TodoReturn testFunction(int);
	TodoReturn unloadEffect(std::string);
	TodoReturn updateReverb(FMODReverbPreset, bool);
	TodoReturn clearAllAudio();
	TodoReturn getFMODStatus(int);
	TodoReturn pauseAllAudio();
	TodoReturn pauseAllMusic();
	TodoReturn preloadEffect(std::string);
	TodoReturn updateChannel(int, AudioTargetType, AudioModType, float, float);
	TodoReturn channelStopped(FMOD::Channel*, bool);
	TodoReturn enableMetering();
	TodoReturn getActiveMusic(int);
	TodoReturn getMusicTimeMS(int);
	TodoReturn isEffectLoaded(std::string);
	TodoReturn isMusicPlaying(int);
	TodoReturn isMusicPlaying(std::string, int);
	TodoReturn lengthForSound(std::string);
	TodoReturn loadAudioState(FMODAudioState&);
	TodoReturn resumeAllAudio();
	TodoReturn resumeAllMusic();
	TodoReturn reverbToString(FMODReverbPreset);
	TodoReturn saveAudioState(FMODAudioState&);
	TodoReturn setMusicTimeMS(unsigned int, bool, int);
	TodoReturn stopAllEffects();
	TodoReturn stopAndGetFade(FMOD::Channel*);
	TodoReturn swapMusicIndex(int, int);
	TodoReturn updateMetering();
	TodoReturn disableMetering();
	TodoReturn getChannelGroup(int, bool);
	TodoReturn pauseAllEffects();
	TodoReturn playEffectAsync(std::string);
	TodoReturn queuePlayEffect(std::string, float, float, float, float, bool, bool, int, int, int, int, bool, int, bool, int, float, int);
	TodoReturn queueStartMusic(std::string, float, float, float, bool, int, int, int, int, int, bool, int, bool);
	TodoReturn registerChannel(FMOD::Channel*, int, int);
	TodoReturn setChannelPitch(int, AudioTargetType, float);
	TodoReturn channelLinkSound(int, FMODSound*);
	TodoReturn countActiveMusic();
	TodoReturn getEffectsVolume();
	TodoReturn getMeteringValue();
	TodoReturn getMusicLengthMS(int);
	TodoReturn getNextChannelID();
	TodoReturn loadAndPlayMusic(std::string, unsigned int, int);
	TodoReturn resumeAllEffects();
	TodoReturn setChannelVolume(int, AudioTargetType, float);
	TodoReturn setEffectsVolume(float);
	TodoReturn setupAudioEngine();
	TodoReturn stopChannelTween(int, AudioTargetType, AudioModType);
	TodoReturn unloadAllEffects();
	TodoReturn getMusicChannelID(int);
	TodoReturn getTweenContainer(AudioTargetType);
	TodoReturn isChannelStopping(int);
	TodoReturn stopChannelTweens(int, AudioTargetType);
	TodoReturn stopMusicNotInSet(std::unordered_set<int, std::hash<int>, std::equal_to<int>, std::allocator<int> >&);
	TodoReturn unregisterChannel(int);
	TodoReturn updateQueuedMusic();
	TodoReturn channelForUniqueID(int);
	TodoReturn channelUnlinkSound(int);
	TodoReturn countActiveEffects();
	TodoReturn playEffectAdvanced(std::string, float, float, float, float, bool, bool, int, int, int, int, bool, int, bool, bool, int, int, float, int);
	TodoReturn preloadEffectAsync(std::string);
	TodoReturn stopAndRemoveMusic(int);
	TodoReturn triggerQueuedMusic(FMODQueuedMusic);
	TodoReturn activateQueuedMusic(int);
	TodoReturn channelForChannelID(int);
	TodoReturn setChannelVolumeMod(int, AudioTargetType, float);
	TodoReturn updateChannelTweens(float);
	TodoReturn updateQueuedEffects();
	TodoReturn waitUntilSoundReady(FMOD::Sound*);
	TodoReturn channelIDForUniqueID(int);
	TodoReturn releaseRemovedSounds();
	TodoReturn updateBackgroundFade();
	TodoReturn fadeInBackgroundMusic(float);
	TodoReturn getActiveMusicChannel(int);
	TodoReturn updateTemporaryEffects();
	TodoReturn getBackgroundMusicVolume();
	TodoReturn setBackgroundMusicVolume(float);
	TodoReturn queuedEffectFinishedLoading(std::string);
	TodoReturn stop();
	TodoReturn setup();
	TodoReturn start();
	TodoReturn update(float);
	TodoReturn loadMusic(std::string);
	TodoReturn loadMusic(std::string, float, float, float, bool, int, int);
	TodoReturn playMusic(std::string, bool, float, int);
	TodoReturn stopMusic(int);
	TodoReturn ~FMODAudioEngine();
}

[[link(android)]]
class GJActionManager {
	TodoReturn getInternalAction(int);
	TodoReturn runInternalAction(cocos2d::CCAction*, cocos2d::CCNode*);
	TodoReturn stopInternalAction(int);
	TodoReturn updateInternalActions(float, bool);
	TodoReturn stopAllInternalActions();
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~GJActionManager();
}

[[link(android)]]
class GJBaseGameLayer {
	TodoReturn addToGroup(GameObject*, int, bool);
	TodoReturn applyRemap(EffectGameObject*, std::vector<int, std::allocator<int> > const&, std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >&);
	TodoReturn applyShake(cocos2d::CCPoint&);
	TodoReturn atlasValue(int);
	TodoReturn bumpPlayer(PlayerObject*, EffectGameObject*);
	TodoReturn getBumpMod(PlayerObject*, int);
	TodoReturn isFlipping();
	TodoReturn moveObject(GameObject*, double, double, bool);
	TodoReturn pauseAudio();
	TodoReturn pickupItem(EffectGameObject*);
	TodoReturn postUpdate(float);
	TodoReturn resetAudio();
	TodoReturn sortGroups();
	TodoReturn spawnGroup(int, bool, double, std::vector<int, std::allocator<int> > const&, int, int);
	TodoReturn swapGround(int);
	TodoReturn updateOBB2(cocos2d::CCRect);
	TodoReturn updateZoom(float, float, int, float, int, int);
	TodoReturn addGuideArt(GameObject*);
	TodoReturn addKeyframe(KeyframeGameObject*);
	TodoReturn addToGroups(GameObject*, bool);
	TodoReturn addUIObject(GameObject*);
	TodoReturn cameraMoveX(float, float, float, bool);
	TodoReturn cameraMoveY(float, float, float, bool);
	TodoReturn checkForEnd();
	TodoReturn flipGravity(PlayerObject*, bool, bool);
	TodoReturn flipObjects();
	TodoReturn moveObjects(cocos2d::CCArray*, double, double, bool);
	TodoReturn queueButton(int, bool, bool);
	TodoReturn resetCamera();
	TodoReturn resetPlayer();
	TodoReturn resumeAudio();
	TodoReturn setupLayers();
	TodoReturn setupReplay(std::string);
	TodoReturn shakeCamera(float, float, float);
	TodoReturn spawnObject(GameObject*, double, std::vector<int, std::allocator<int> > const&);
	TodoReturn toggleGroup(int, bool);
	TodoReturn updateColor(cocos2d::_ccColor3B&, float, int, bool, float, cocos2d::_ccHSVValue&, int, bool, EffectGameObject*, int, int);
	TodoReturn addToSection(GameObject*);
	TodoReturn asyncGLoaded(int);
	TodoReturn createPlayer();
	TodoReturn flipFinished();
	TodoReturn getItemValue(int, int);
	TodoReturn handleButton(bool, int, bool);
	TodoReturn processItems();
	TodoReturn recordAction(int, bool, bool);
	TodoReturn restoreRemap(EffectGameObject*, std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >&);
	TodoReturn rotateObject(GameObject*, float);
	TodoReturn spawnPlayer2();
	TodoReturn tryGetObject(int);
	TodoReturn updateCamera(float);
	TodoReturn updateReplay();
	TodoReturn addAreaEffect(EnterEffectObject*, std::vector<EnterEffectInstance, std::allocator<EnterEffectInstance> >*, GJAreaActionType);
	TodoReturn applyTimeWarp(float);
	TodoReturn asyncBGLoaded(int);
	TodoReturn asyncMGLoaded(int);
	TodoReturn canProcessSFX(SFXTriggerState&, std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >&, std::unordered_map<int, float, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, float> > >&, std::vector<SFXTriggerState, std::allocator<SFXTriggerState> >&);
	TodoReturn checkSnapshot();
	TodoReturn claimParticle(std::string, int);
	TodoReturn destroyObject(GameObject*);
	TodoReturn destroyPlayer(PlayerObject*, GameObject*);
	TodoReturn enterDualMode(GameObject*, bool);
	TodoReturn getMaxPortalY();
	TodoReturn getMinPortalY();
	TodoReturn getSpecialKey(int, bool, bool);
	TodoReturn hasUniqueCoin(EffectGameObject*);
	TodoReturn preResumeGame();
	TodoReturn removePlayer2();
	TodoReturn rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint, cocos2d::CCPoint, bool, bool);
	TodoReturn spawnParticle(char const*, int, cocos2d::tCCPositionType, cocos2d::CCPoint);
	TodoReturn toggleFlipped(bool, bool);
	TodoReturn toggleGlitter(bool);
	TodoReturn updateTimeMod(float, bool, bool);
	TodoReturn animatePortalY(float, float, float, float);
	TodoReturn canTouchObject(GameObject*);
	TodoReturn checkCollision(int, int);
	TodoReturn createParticle(int, char const*, int, cocos2d::tCCPositionType);
	TodoReturn getGroupParent(int);
	TodoReturn getMinDistance(cocos2d::CCPoint, cocos2d::CCArray*, float, int);
	TodoReturn getOtherPlayer(PlayerObject*);
	TodoReturn getParticleKey(int, char const*, int, cocos2d::tCCPositionType);
	TodoReturn getStaticGroup(int);
	TodoReturn getStickyGroup(int);
	TodoReturn getTargetGroup(int, int);
	TodoReturn gravBumpPlayer(PlayerObject*, EffectGameObject*);
	TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::_ccColor3B);
	TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::_ccColor3B, float, float, int, bool, float);
	TodoReturn removeKeyframe(KeyframeGameObject*);
	TodoReturn reparentObject(cocos2d::CCNode*, cocos2d::CCNode*);
	TodoReturn rotateGameplay(RotateGameplayGameObject*);
	TodoReturn setGroupParent(GameObject*, int);
	TodoReturn sortAllGroupsX();
	TodoReturn stopSFXTrigger(SFXTriggerGameObject*);
	TodoReturn swapBackground(int);
	TodoReturn syncBGTextures();
	TodoReturn teleportPlayer(TeleportPortalObject*, PlayerObject*);
	TodoReturn toggleDualMode(GameObject*, bool, PlayerObject*, bool);
	TodoReturn tryResumeAudio();
	TodoReturn updateCounters(int, int);
	TodoReturn updateGuideArt();
	TodoReturn updateTimeWarp(float);
	TodoReturn updateTimeWarp(GameObject*, float);
	TodoReturn addRemapTargets(std::set<int, std::less<int>, std::allocator<int> >&);
	TodoReturn checkCollisions(PlayerObject*, float, bool);
	TodoReturn claimMoveAction(int, bool);
	TodoReturn collectedObject(EffectGameObject*);
	TodoReturn getGroundHeight(PlayerObject*, int);
	TodoReturn getParticleKey2(std::string);
	TodoReturn getPortalTarget(TeleportPortalObject*);
	TodoReturn getRecordString();
	TodoReturn isPlayer2Button(int);
	TodoReturn moveCameraToPos(cocos2d::CCPoint);
	TodoReturn objectsCollided(int, int);
	TodoReturn parentForZLayer(int, bool, int, int);
	TodoReturn playFlashEffect(float, int, float);
	TodoReturn processCommands(float);
	TodoReturn processSFXState(SFXTriggerState*, SFXTriggerState*, int, float);
	TodoReturn removeFromGroup(GameObject*, int);
	TodoReturn setupLevelStart(LevelSettingsObject*);
	TodoReturn stopCameraShake();
	TodoReturn switchToFlyMode(PlayerObject*, GameObject*, bool, int);
	TodoReturn toggleInfoLabel();
	TodoReturn unclaimParticle(char const*, cocos2d::CCParticleSystemQuad*);
	TodoReturn unlinkAllEvents();
	TodoReturn updateMGOffsetY(float, float, int, float, int, int);
	TodoReturn updateParticles(float);
	TodoReturn updateTimeLabel(int, int, bool);
	TodoReturn addObjectCounter(LabelGameObject*);
	TodoReturn addPickupTrigger(CountTriggerGameObject*);
	TodoReturn buttonIDToButton(int);
	TodoReturn controlEventLink(int, int, GJActionCommand);
	TodoReturn createBackground(int);
	TodoReturn createTextLayers();
	TodoReturn exitStaticCamera(bool, bool, float, int, float, bool, float, bool);
	TodoReturn getModifiedDelta(float);
	TodoReturn getSavedPosition(int, float);
	TodoReturn loadUpToPosition(float, int, int);
	TodoReturn opacityForObject(GameObject*);
	TodoReturn playerTookDamage(PlayerObject*);
	TodoReturn processSongState(int, float, float, int, float, float, std::vector<SongTriggerState, std::allocator<SongTriggerState> >*);
	TodoReturn removeBackground();
	TodoReturn removeFromGroups(GameObject*);
	TodoReturn reverseDirection(EffectGameObject*);
	TodoReturn sortStickyGroups();
	TodoReturn swapMiddleground(int);
	TodoReturn switchToRollMode(PlayerObject*, GameObject*, bool);
	TodoReturn toggleLockPlayer(bool, bool);
	TodoReturn tryGetMainObject(int);
	TodoReturn updateBGArtSpeed(float, float);
	TodoReturn updateCameraEdge(int, int);
	TodoReturn updateCameraMode(EffectGameObject*, bool);
	TodoReturn updateDualGround(PlayerObject*, int, bool, float);
	TodoReturn updateMGArtSpeed(float, float);
	TodoReturn updateVisibility(float);
	TodoReturn addToGroupParents(GameObject*);
	TodoReturn addToSpeedObjects(EffectGameObject*);
	TodoReturn checkRepellPlayer();
	TodoReturn checkSpawnObjects();
	TodoReturn controlAreaEffect(EnterEffectObject*, std::vector<EnterEffectInstance, std::allocator<EnterEffectInstance> >*, GJActionCommand);
	TodoReturn createGroundLayer(int, int);
	TodoReturn didRotateGameplay();
	TodoReturn gameEventToString(GJGameEvent);
	TodoReturn getCapacityString();
	TodoReturn getEnterEasingKey(int, float);
	TodoReturn getFollowSpeedVal(GameObject*, int, int, float, float);
	TodoReturn getOptimizedGroup(int);
	TodoReturn getPlayerButtonID(int, bool);
	TodoReturn getPlayTimerMilli();
	TodoReturn loadLevelSettings();
	TodoReturn moveObjectsSilent(int, double, double);
	TodoReturn orderSpawnObjects();
	TodoReturn playerTouchedRing(PlayerObject*, RingObject*);
	TodoReturn playGravityEffect(bool);
	TodoReturn playSpeedParticle(float);
	TodoReturn positionUIObjects();
	TodoReturn processSFXObjects();
	TodoReturn removeGroundLayer();
	TodoReturn removeGroupParent(int);
	TodoReturn resetStaticCamera(bool, bool);
	TodoReturn rotateAreaObjects(GameObject*, cocos2d::CCArray*, float, bool);
	TodoReturn setStartPosObject(StartPosObject*);
	TodoReturn sortSectionVector();
	TodoReturn switchToRobotMode(PlayerObject*, GameObject*, bool);
	TodoReturn toggleProgressbar();
	TodoReturn triggerAreaEffect(EnterEffectObject*);
	TodoReturn tryGetGroupParent(int);
	TodoReturn updateAttemptTime(float);
	TodoReturn updateCameraBGArt(cocos2d::CCPoint, float);
	TodoReturn updateLevelColors();
	TodoReturn updateShaderLayer(float);
	TodoReturn updateTimerLabels();
	TodoReturn activateCustomRing(RingObject*);
	TodoReturn activateEndTrigger(int, bool, bool);
	TodoReturn activateSFXTrigger(SFXTriggerGameObject*);
	TodoReturn animateInGroundNew(bool, float, bool);
	TodoReturn applyLevelSettings(GameObject*);
	TodoReturn clearPickedUpItems();
	TodoReturn createMiddleground(int);
	TodoReturn gameEventTriggered(GJGameEvent, int, int);
	TodoReturn generateSpawnRemap();
	TodoReturn getCameraEdgeValue(int);
	TodoReturn getMoveTargetDelta(EffectGameObject*, bool);
	TodoReturn getPortalTargetPos(TeleportPortalObject*, GameObject*, PlayerObject*);
	TodoReturn groupStickyObjects(cocos2d::CCArray*);
	TodoReturn loadStartPosObject();
	TodoReturn modifyGroupPhysics(AdvancedFollowEditObject*, cocos2d::CCArray*);
	TodoReturn optimizeMoveGroups();
	TodoReturn playExitDualEffect(PlayerObject*);
	TodoReturn processAreaActions(float, bool);
	TodoReturn processAreaEffects(std::vector<EnterEffectInstance, std::allocator<EnterEffectInstance> >*, GJAreaActionType, float, bool);
	TodoReturn processMoveActions();
	TodoReturn reAddToStickyGroup(GameObject*);
	TodoReturn registerSpawnRemap(std::vector<ChanceObject, std::allocator<ChanceObject> >&);
	TodoReturn removeMiddleground();
	TodoReturn resetGroupCounters(bool);
	TodoReturn switchToSpiderMode(PlayerObject*, GameObject*, bool);
	TodoReturn toggleHideAttempts(bool);
	TodoReturn toggleMGVisibility(bool);
	TodoReturn triggerMoveCommand(EffectGameObject*);
	TodoReturn updateEnterEffects(float);
	TodoReturn updateMaxGameplayY();
	TodoReturn updateQueuedLabels();
	TodoReturn updateVerifyDamage();
	TodoReturn activateSongTrigger(SongTriggerGameObject*);
	TodoReturn animateOutGroundNew(bool);
	TodoReturn applySFXEditTrigger(int, int, SFXTriggerGameObject*);
	TodoReturn checkpointActivated(CheckpointGameObject*);
	TodoReturn claimCustomParticle(std::string const&, cocos2d::ParticleStruct const&, int, int, int, bool);
	TodoReturn claimRotationAction(int, int, float&, float&, bool, bool);
	TodoReturn getEnterEasingValue(float, int, float, int);
	TodoReturn getTargetFlyCameraY(GameObject*);
	TodoReturn maxZOrderForShaderZ(int);
	TodoReturn minZOrderForShaderZ(int);
	TodoReturn modifyObjectPhysics(AdvancedFollowEditObject*, GameObjectPhysics&);
	TodoReturn performMathRounding(double, int);
	TodoReturn playerTouchedObject(PlayerObject*, GameObject*);
	TodoReturn preUpdateVisibility(float);
	TodoReturn processCameraObject(GameObject*, PlayerObject*);
	TodoReturn processStateObjects();
	TodoReturn registerStateObject(EffectGameObject*);
	TodoReturn resetGradientLayers();
	TodoReturn resetLevelVariables();
	TodoReturn restoreAllUIObjects();
	TodoReturn spawnGroupTriggered(int, float, bool, std::vector<int, std::allocator<int> > const&, int, int);
	TodoReturn spawnObjectsInOrder(cocos2d::CCArray*, double, std::vector<int, std::allocator<int> > const&, int, int);
	TodoReturn staticObjectsInRect(cocos2d::CCRect, bool);
	TodoReturn updateCameraOffsetX(float, float, int, float, int, int);
	TodoReturn updateCameraOffsetY(float, float, int, float, int, int);
	TodoReturn updateGroundShadows();
	TodoReturn updateKeyframeOrder(int);
	TodoReturn updateLayerCapacity(std::string);
	TodoReturn updateObjectSection(GameObject*);
	TodoReturn updateSpecialLabels();
	TodoReturn visitWithColorFlash();
	TodoReturn activateEventTrigger(EventLinkTrigger*, std::vector<int, std::allocator<int> > const&);
	TodoReturn activateResetTrigger(EffectGameObject*);
	TodoReturn activateTimerTrigger(TimerTriggerGameObject*, std::vector<int, std::allocator<int> > const&);
	TodoReturn addCustomEnterEffect(EnterEffectObject*, bool);
	TodoReturn calculateColorGroups();
	TodoReturn checkCollisionBlocks(EffectGameObject*, std::vector<EffectGameObject*, std::allocator<EffectGameObject*> >*, int);
	TodoReturn createCustomParticle(std::string const&, cocos2d::ParticleStruct const&, int, bool);
	TodoReturn generateTargetGroups();
	TodoReturn getCenterGroupObject(int, int);
	TodoReturn getSingleGroupObject(int);
	TodoReturn getTargetGroupOrigin(int, int);
	TodoReturn performMathOperation(double, double, int);
	TodoReturn playAnimationCommand(int, int);
	TodoReturn playerTouchedTrigger(PlayerObject*, EffectGameObject*);
	TodoReturn playerWillSwitchMode(PlayerObject*, GameObject*);
	TodoReturn processFollowActions();
	TodoReturn processQueuedButtons();
	TodoReturn rectIntersectsCircle(cocos2d::CCRect, cocos2d::CCPoint, float);
	TodoReturn refreshCounterLabels();
	TodoReturn refreshKeyframeAnims();
	TodoReturn removeAllCheckpoints();
	TodoReturn reorderObjectSection(GameObject*);
	TodoReturn spawnParticleTrigger(int, cocos2d::CCPoint, float, float);
	TodoReturn spawnParticleTrigger(SpawnParticleGameObject*);
	TodoReturn speedForShaderTarget(int);
	TodoReturn stopAllGroundActions();
	TodoReturn toggleGroupTriggered(int, bool, std::vector<int, std::allocator<int> > const&, int, int);
	TodoReturn transformAreaObjects(GameObject*, cocos2d::CCArray*, float, float, bool);
	TodoReturn triggerGravityChange(EffectGameObject*, int);
	TodoReturn triggerRotateCommand(EnhancedTriggerObject*);
	TodoReturn triggerShaderCommand(ShaderGameObject*);
	TodoReturn ungroupStickyObjects(cocos2d::CCArray*);
	TodoReturn updateGradientLayers();
	TodoReturn updatePlatformerTime();
	TodoReturn updateScreenRotation(float, bool, bool, float, int, float, int, int);
	TodoReturn activatedAudioTrigger(SFXTriggerGameObject*);
	TodoReturn activatedAudioTrigger(SFXTriggerGameObject*, float);
	TodoReturn assignNewStickyGroups(cocos2d::CCArray*);
	TodoReturn collisionCheckObjects(PlayerObject*, std::vector<GameObject*, std::allocator<GameObject*> >*, int, float);
	TodoReturn controlDynamicCommand(EffectGameObject*, int, std::vector<DynamicObjectAction, std::allocator<DynamicObjectAction> >&, GJActionCommand);
	TodoReturn createNewKeyframeAnim();
	TodoReturn damagingObjectsInRect(cocos2d::CCRect, bool);
	TodoReturn getCustomEnterEffects(int, bool);
	TodoReturn getGroupParentsString(GameObject*);
	TodoReturn getScaledGroundHeight(float);
	TodoReturn objectTypeToGameEvent(int);
	TodoReturn playerCircleCollision(PlayerObject*, GameObject*);
	TodoReturn playKeyframeAnimation(KeyframeAnimTriggerObject*, std::vector<int, std::allocator<int> > const&);
	TodoReturn processOptionsTrigger(GameOptionsTrigger*);
	TodoReturn removeFromStickyGroup(GameObject*);
	TodoReturn shouldExitHackedLevel();
	TodoReturn stopCustomEnterEffect(EnterEffectObject*);
	TodoReturn stopCustomEnterEffect(EnterEffectObject*, bool);
	TodoReturn toggleAudioVisualizer(bool);
	TodoReturn toggleMusicInPractice();
	TodoReturn unclaimCustomParticle(std::string const&, cocos2d::CCParticleSystemQuad*);
	TodoReturn updateAudioVisualizer();
	TodoReturn updateCollisionBlocks();
	TodoReturn updateExtraGameLayers();
	TodoReturn updateGameplayOffsetX(int, bool);
	TodoReturn updateGameplayOffsetY(int, bool);
	TodoReturn updateStaticCameraPos(cocos2d::CCPoint, bool, bool, bool, float, int, float);
	TodoReturn activateSFXEditTrigger(SFXTriggerGameObject*);
	TodoReturn animateInDualGroundNew(GameObject*, float, bool, float);
	TodoReturn canBeActivatedByPlayer(PlayerObject*, EffectGameObject*);
	TodoReturn controlGradientTrigger(GradientTriggerObject*, GJActionCommand);
	TodoReturn controlTriggersInGroup(int, GJActionCommand);
	TodoReturn getGroundHeightForMode(int);
	TodoReturn objectIntersectsCircle(GameObject*, GameObject*);
	TodoReturn playerIntersectsCircle(PlayerObject*, GameObject*);
	TodoReturn prepareTransformParent(bool);
	TodoReturn processMoveActionsStep(float, bool);
	TodoReturn processRotationActions();
	TodoReturn removeFromGroupParents(GameObject*);
	TodoReturn resetSongTriggerValues();
	TodoReturn resetSpawnChannelIndex();
	TodoReturn toggleGroundVisibility(bool);
	TodoReturn togglePlayerVisibility(bool);
	TodoReturn togglePlayerVisibility(bool, bool);
	TodoReturn triggerGradientCommand(GradientTriggerObject*);
	TodoReturn updateAllObjectSection();
	TodoReturn updateSpecialGroupData();
	TodoReturn activateItemEditTrigger(ItemTriggerGameObject*);
	TodoReturn activateSongEditTrigger(SongTriggerGameObject*);
	TodoReturn controlAreaEffectWithID(int, int, GJActionCommand);
	TodoReturn getPlayTimerFullSeconds();
	TodoReturn getRotateCommandTargets(EnhancedTriggerObject*, GameObject*&, GameObject*&, GameObject*&);
	TodoReturn playerWasTouchingObject(PlayerObject*, GameObject*);
	TodoReturn positionForShaderTarget(int);
	TodoReturn processTransformActions(bool);
	TodoReturn removeObjectFromSection(GameObject*);
	TodoReturn resetActiveEnterEffects();
	TodoReturn resetMoveOptimizedValue();
	TodoReturn resetStoppedAreaObjects();
	TodoReturn testInstantCountTrigger(int, int, int, bool, int, std::vector<int, std::allocator<int> > const&, int, int);
	TodoReturn togglePlayerStreakBlend(bool);
	TodoReturn triggerTransformCommand(TransformTriggerGameObject*);
	TodoReturn updateActiveEnterEffect(EnterEffectObject*);
	TodoReturn updateExtendedCollision(GameObject*, bool);
	TodoReturn addProximityVolumeEffect(int, int, SFXTriggerGameObject*);
	TodoReturn generateVisibilityGroups();
	TodoReturn manualUpdateObjectColors(GameObject*);
	TodoReturn processAreaVisualActions(float);
	TodoReturn removeCustomEnterEffects(int, bool);
	TodoReturn removeTemporaryParticles();
	TodoReturn updateInternalCamOffsetX(float, float, float);
	TodoReturn updateInternalCamOffsetY(float, float, float);
	TodoReturn volumeForProximityEffect(SFXTriggerInstance&);
	TodoReturn controlDynamicMoveCommand(EffectGameObject*, int, GJActionCommand);
	TodoReturn convertToClosestDirection(float, float);
	TodoReturn generateEnterEasingBuffer(int, float);
	TodoReturn generatePickupAnimRandVal(GameObject*, float&, float&);
	TodoReturn increaseBatchNodeCapacity();
	TodoReturn triggerDynamicMoveCommand(EffectGameObject*);
	TodoReturn updateLegacyLayerCapacity(int, int, int, int);
	TodoReturn updateSavePositionObjects();
	TodoReturn activateItemCompareTrigger(ItemTriggerGameObject*, std::vector<int, std::allocator<int> > const&);
	TodoReturn createPlayerCollisionBlock();
	TodoReturn generateEnterEasingBuffers(EnterEffectObject*);
	TodoReturn getActiveOrderSpawnObjects();
	TodoReturn loadGroupParentsFromString(GameObject*, std::string);
	TodoReturn prepareSavePositionObjects();
	TodoReturn processAreaFadeGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, bool);
	TodoReturn processAreaMoveGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool);
	TodoReturn processAreaTintGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, bool);
	TodoReturn processPlayerFollowActions(float);
	TodoReturn processQueuedAudioTriggers();
	TodoReturn triggerAreaEffectAnimation(EnterEffectObject*);
	TodoReturn clearActivatedAudioTriggers();
	TodoReturn controlDynamicRotateCommand(EffectGameObject*, int, GJActionCommand);
	TodoReturn processAdvancedFollowAction(AdvancedFollowInstance&, bool, float);
	TodoReturn processDynamicObjectActions(int, float);
	TodoReturn triggerDynamicRotateCommand(EnhancedTriggerObject*);
	TodoReturn updatePlayerCollisionBlocks();
	TodoReturn activateObjectControlTrigger(ObjectControlGameObject*);
	TodoReturn activatePlatformerEndTrigger(EndTriggerGameObject*, std::vector<int, std::allocator<int> > const&);
	TodoReturn activatePlayerControlTrigger(PlayerControlGameObject*);
	TodoReturn controlAdvancedFollowCommand(AdvancedFollowTriggerObject*, int, GJActionCommand);
	TodoReturn controlTriggersWithControlID(int, GJActionCommand);
	TodoReturn processAdvancedFollowActions(float);
	TodoReturn processAreaRotateGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool);
	TodoReturn regenerateEnterEasingBuffers();
	TodoReturn triggerAdvancedFollowCommand(AdvancedFollowTriggerObject*);
	TodoReturn updateDisabledObjectsLastPos(cocos2d::CCArray*);
	TodoReturn updateProximityVolumeEffects();
	TodoReturn updateStaticCameraPosToGroup(int, bool, bool, bool, float, float, int, float, bool, float);
	TodoReturn activatePersistentItemTrigger(ItemTriggerGameObject*);
	TodoReturn checkCameraLimitAfterTeleport(PlayerObject*, float);
	TodoReturn processActivatedAudioTriggers(float);
	TodoReturn restoreDefaultGameplayOffsetX();
	TodoReturn restoreDefaultGameplayOffsetY();
	TodoReturn processAreaTransformGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool);
	TodoReturn triggerAdvancedFollowEditCommand(AdvancedFollowEditObject*);
	TodoReturn init();
	TodoReturn visit();
	TodoReturn update(float);
	TodoReturn flipArt(bool);
	TodoReturn hasItem(int);
	TodoReturn getGroup(int);
	TodoReturn testTime();
	TodoReturn addPoints(int);
	TodoReturn ~GJBaseGameLayer();
}

[[link(android)]]
class GJBigSpriteNode {
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~GJBigSpriteNode();
}

[[link(android)]]
class GJChallengeItem {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn incrementCount(int);
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn encodeWithCoder(DS_Dictionary*);
	TodoReturn createFromString(std::string);
	TodoReturn init(GJChallengeType, int, int, int, std::string);
	TodoReturn create(GJChallengeType, int, int, int, std::string);
	TodoReturn create();
	TodoReturn canEncode();
	TodoReturn ~GJChallengeItem();
}

[[link(android)]]
class GJDropDownLayer {
	TodoReturn enterLayer();
	TodoReturn customSetup();
	TodoReturn layerHidden();
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn layerVisible();
	TodoReturn keyBackClicked();
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn enterAnimFinished();
	TodoReturn registerWithTouchDispatcher();
	TodoReturn draw();
	TodoReturn init(char const*);
	TodoReturn init(char const*, float);
	TodoReturn create(char const*);
	TodoReturn create(char const*, float);
	TodoReturn enableUI();
	TodoReturn disableUI();
	TodoReturn exitLayer(cocos2d::CCObject*);
	TodoReturn hideLayer(bool);
	TodoReturn showLayer(bool);
	TodoReturn ~GJDropDownLayer();
}

[[link(android)]]
class GJEffectManager {
	TodoReturn pauseTimer(int);
	TodoReturn playerDied();
	TodoReturn spawnGroup(int, float, bool, std::vector<int, std::allocator<int> > const&, int, int);
	TodoReturn startTimer(int, double, double, bool, bool, bool, float, bool, int, std::vector<int, std::allocator<int> > const&, int, int);
	TodoReturn colorExists(int);
	TodoReturn resumeTimer(int);
	TodoReturn saveToState(EffectManagerState&);
	TodoReturn shouldBlend(int);
	TodoReturn spawnObject(GameObject*, float, std::vector<int, std::allocator<int> > const&, int, int);
	TodoReturn timeForItem(int);
	TodoReturn timerExists(int);
	TodoReturn toggleGroup(int, bool);
	TodoReturn updateTimer(int, double);
	TodoReturn countForItem(int);
	TodoReturn playerButton(bool, bool);
	TodoReturn resetEffects();
	TodoReturn setFollowing(int, int, bool);
	TodoReturn updateColors(cocos2d::_ccColor3B, cocos2d::_ccColor3B);
	TodoReturn updateTimers(float, float);
	TodoReturn wasFollowing(int, int);
	TodoReturn colorForIndex(int);
	TodoReturn getMixedColor(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float);
	TodoReturn getSaveString();
	TodoReturn loadFromState(EffectManagerState&);
	TodoReturn processColors();
	TodoReturn updateEffects(float);
	TodoReturn addCountToItem(int, int);
	TodoReturn checkCollision(int const&, int const&);
	TodoReturn colorForEffect(cocos2d::_ccColor3B, cocos2d::_ccHSVValue);
	TodoReturn getColorAction(int);
	TodoReturn getColorSprite(int);
	TodoReturn isGroupEnabled(int);
	TodoReturn runPulseEffect(int, bool, float, float, float, PulseEffectType, cocos2d::_ccColor3B, cocos2d::_ccHSVValue, int, bool, bool, bool, bool, int, int);
	TodoReturn setColorAction(ColorAction*, int);
	TodoReturn colorForGroupID(int, cocos2d::_ccColor3B const&, bool);
	TodoReturn objectsCollided(int, int);
	TodoReturn opacityForIndex(int);
	TodoReturn postMoveActions();
	TodoReturn runCountTrigger(int, int, bool, int, bool, std::vector<int, std::allocator<int> > const&, int, int);
	TodoReturn runDeathTrigger(int, bool, std::vector<int, std::allocator<int> > const&, int, int);
	TodoReturn runTimerTrigger(int, double, bool, int, std::vector<int, std::allocator<int> > const&, int, int);
	TodoReturn setupFromString(std::string);
	TodoReturn wouldCreateLoop(InheritanceNode*, int);
	TodoReturn hasBeenTriggered(int, int);
	TodoReturn resetMoveActions();
	TodoReturn storeTriggeredID(int, int);
	TodoReturn createMoveCommand(cocos2d::CCPoint, int, float, int, float, bool, bool, bool, bool, float, float, int, int);
	TodoReturn preCollisionCheck();
	TodoReturn removeColorAction(int);
	TodoReturn removeTriggeredID(int, int);
	TodoReturn resetTriggeredIDs();
	TodoReturn saveCompletedMove(int, double, double);
	TodoReturn updateColorAction(ColorAction*);
	TodoReturn addMoveCalculation(CCMoveCNode*, cocos2d::CCPoint, GameObject*);
	TodoReturn colorActionChanged(ColorAction*);
	TodoReturn getAllColorActions();
	TodoReturn getAllColorSprites();
	TodoReturn getMoveCommandNode(GroupCommandObject2*);
	TodoReturn hasActiveDualTouch();
	TodoReturn keyForGroupIDColor(int, cocos2d::_ccColor3B const&, bool);
	TodoReturn opacityModForGroup(int);
	TodoReturn postCollisionCheck();
	TodoReturn prepareMoveActions(float, bool);
	TodoReturn resetToggledGroups();
	TodoReturn updateColorEffects(float);
	TodoReturn updateCountForItem(int, int);
	TodoReturn updatePulseEffects(float);
	TodoReturn activeColorForIndex(int);
	TodoReturn colorForPulseEffect(cocos2d::_ccColor3B const&, PulseEffectAction*);
	TodoReturn createFollowCommand(float, float, float, int, int, int, int);
	TodoReturn createRotateCommand(float, float, int, int, int, float, bool, bool, bool, int, int);
	TodoReturn getLoadedMoveOffset(std::unordered_map<int, std::pair<double, double>, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, std::pair<double, double> > > >&);
	TodoReturn getTempGroupCommand();
	TodoReturn processPulseActions();
	TodoReturn updateOpacityAction(OpacityEffectAction*);
	TodoReturn updateSpawnTriggers(float);
	TodoReturn getMoveCommandObject();
	TodoReturn toggleItemPersistent(int, bool);
	TodoReturn updateOpacityEffects(float);
	TodoReturn activeOpacityForIndex(int);
	TodoReturn calculateLightBGColor(cocos2d::_ccColor3B);
	TodoReturn createKeyframeCommand(int, cocos2d::CCArray*, GameObject*, int, int, bool, float, float, float, float, float, float, std::vector<int, std::allocator<int> > const&);
	TodoReturn handleObjectCollision(bool, int, int);
	TodoReturn removeAllPulseActions();
	TodoReturn toggleTimerPersistent(int, bool);
	TodoReturn tryGetMoveCommandNode(int);
	TodoReturn createTransformCommand(double, double, double, double, bool, float, int, int, int, float, bool, bool, int, int);
	TodoReturn processInheritedColors();
	TodoReturn resetTempGroupCommands(bool);
	TodoReturn runTouchTriggerCommand(int, bool, TouchTriggerType, TouchTriggerControl, bool, std::vector<int, std::allocator<int> > const&, int, int);
	TodoReturn calculateInheritedColor(int, ColorAction*);
	TodoReturn processMoveCalculations();
	TodoReturn registerRotationCommand(GroupCommandObject2*, bool);
	TodoReturn runOpacityActionOnGroup(int, float, float, int, int);
	TodoReturn transferPersistentItems();
	TodoReturn controlActionsForTrigger(EffectGameObject*, GJActionCommand);
	TodoReturn getOpacityActionForGroup(int);
	TodoReturn hasPulseEffectForGroupID(int);
	TodoReturn registerCollisionTrigger(int, int, int, bool, bool, std::vector<int, std::allocator<int> > const&, int, int);
	TodoReturn traverseInheritanceChain(InheritanceNode*);
	TodoReturn calculateBaseActiveColors();
	TodoReturn createPlayerFollowCommand(float, float, int, float, float, int, int, int);
	TodoReturn controlActionsForControlID(int, GJActionCommand);
	TodoReturn updateActiveOpacityEffects();
	TodoReturn addAllInheritedColorActions(cocos2d::CCArray*);
	TodoReturn processCopyColorPulseActions();
	TodoReturn removePersistentFromAllItems();
	TodoReturn removePersistentFromAllTimers();
	TodoReturn init();
	TodoReturn reset();
	TodoReturn create();
	TodoReturn ~GJEffectManager();
}

[[link(android)]]
class GJFriendRequest {
	TodoReturn init();
	TodoReturn create(cocos2d::CCDictionary*);
	TodoReturn create();
	TodoReturn ~GJFriendRequest();
}

[[link(android)]]
class GJGradientLayer {
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~GJGradientLayer();
}

[[link(android)]]
class GJObjectDecoder {
	TodoReturn sharedDecoder();
	TodoReturn getDecodedObject(int, DS_Dictionary*);
	TodoReturn init();
	TodoReturn ~GJObjectDecoder();
}

[[link(android)]]
class GJSmartTemplate {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn getPrefabs(std::string);
	TodoReturn savePrefab(std::string, std::string);
	TodoReturn isUnrequired(std::string);
	TodoReturn offsetForDir(GJSmartDirection, int);
	TodoReturn removePrefab(std::string, int);
	TodoReturn flipBlockType(SmartBlockType, bool, bool);
	TodoReturn offsetForType(SmartBlockType);
	TodoReturn scanForPrefab(std::string);
	TodoReturn flipBlockTypeX(SmartBlockType);
	TodoReturn flipBlockTypeY(SmartBlockType);
	TodoReturn getNoCornerKey(std::string);
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn encodeWithCoder(DS_Dictionary*);
	TodoReturn getPrefabWithID(std::string, int);
	TodoReturn getRandomPrefab(std::string);
	TodoReturn offsetForObject(SmartGameObject*);
	TodoReturn rotateBlockType(SmartBlockType, int);
	TodoReturn saveRemapToDict(std::string, std::string, cocos2d::CCDictionary*);
	TodoReturn getSimplifiedKey(std::string);
	TodoReturn getTemplateState(std::vector<SmartPrefabResult, std::allocator<SmartPrefabResult> >&);
	TodoReturn keyFromNeighbors(SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType);
	TodoReturn keyFromNeighbors(cocos2d::CCPoint, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*);
	TodoReturn generateRemapDict();
	TodoReturn getSimplifiedType(SmartBlockType, bool&);
	TodoReturn logTemplateStatus(bool);
	TodoReturn rotateBlockType90(SmartBlockType);
	TodoReturn smartObjectToType(SmartGameObject*, cocos2d::CCPoint);
	TodoReturn keyFromNeighborsOld(bool, bool, bool, bool, bool, bool, bool, bool);
	TodoReturn resetScannedPrefabs();
	TodoReturn shouldDiscardObject(SmartBlockType, GJSmartDirection);
	TodoReturn getVerySimplifiedKey(std::string);
	TodoReturn smartTypeToObjectKey(SmartBlockType);
	TodoReturn getTotalChanceForPrefab(std::string);
	TodoReturn applyTransformationsForType(SmartBlockType, cocos2d::CCSprite*);
	TodoReturn init();
	TodoReturn create();
	TodoReturn flipKey(std::string, bool, bool);
	TodoReturn canEncode();
	TodoReturn getPrefab(cocos2d::CCPoint, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*);
	TodoReturn getPrefab(std::string, bool, bool);
	TodoReturn rotateKey(std::string, int);
	TodoReturn saveRemap(std::string);
	TodoReturn ~GJSmartTemplate();
}

[[link(android)]]
class InfoAlertButton {
	TodoReturn init(std::string, std::string, float);
	TodoReturn create(std::string, std::string, float);
	TodoReturn activate();
	TodoReturn ~InfoAlertButton();
}

[[link(android)]]
class InheritanceNode {
	TodoReturn init(int, InheritanceNode*);
	TodoReturn create(int, InheritanceNode*);
	TodoReturn ~InheritanceNode();
}

[[link(android)]]
class LabelGameObject {
	TodoReturn setOpacity(unsigned char);
	TodoReturn createLabel(std::string);
	TodoReturn removeLabel();
	TodoReturn resetObject();
	TodoReturn updateLabel(float);
	TodoReturn updateLabel(std::string);
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn getTextKerning();
	TodoReturn setObjectColor(cocos2d::_ccColor3B const&);
	TodoReturn queueUpdateLabel(std::string);
	TodoReturn unlockLabelColor();
	TodoReturn updateLabelAlign(int);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn updateTextKerning(int);
	TodoReturn setupCustomSprites(std::string);
	TodoReturn updateLabelIfDirty();
	TodoReturn updatePreviewLabel();
	TodoReturn addMainSpriteToParent(bool);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~LabelGameObject();
}

[[link(android)]]
class MoreSearchLayer {
	TodoReturn onFeatured(cocos2d::CCObject*);
	TodoReturn onFollowed(cocos2d::CCObject*);
	TodoReturn onOriginal(cocos2d::CCObject*);
	TodoReturn onSongMode(cocos2d::CCObject*);
	TodoReturn selectSong(int);
	TodoReturn onCompleted(cocos2d::CCObject*);
	TodoReturn onLegendary(cocos2d::CCObject*);
	TodoReturn onTwoPlayer(cocos2d::CCObject*);
	TodoReturn onSongFilter(cocos2d::CCObject*);
	TodoReturn audioPrevious(cocos2d::CCObject*);
	TodoReturn onUncompleted(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn textInputReturn(CCTextInputNode*);
	TodoReturn toggleSongNodes(bool, bool);
	TodoReturn updateAudioLabel();
	TodoReturn createToggleButton(std::string, void (cocos2d::CCObject::*)(cocos2d::CCObject*), bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	TodoReturn init();
	TodoReturn create();
	TodoReturn onEpic(cocos2d::CCObject*);
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onCoins(cocos2d::CCObject*);
	TodoReturn onMythic(cocos2d::CCObject*);
	TodoReturn onNoStar(cocos2d::CCObject*);
	TodoReturn audioNext(cocos2d::CCObject*);
	TodoReturn onFriends(cocos2d::CCObject*);
	TodoReturn ~MoreSearchLayer();
}

[[link(android)]]
class PlatformToolbox {
	TodoReturn getRawPath(char const*);
	TodoReturn hideCursor();
	TodoReturn showCursor();
	TodoReturn gameDidSave();
	TodoReturn openAppPage();
	TodoReturn onGameLaunch();
	TodoReturn resizeWindow(float, float);
	TodoReturn doesFileExist(std::string);
	TodoReturn onNativePause();
	TodoReturn refreshWindow();
	TodoReturn getDisplaySize();
	TodoReturn onNativeResume();
	TodoReturn copyToClipboard(std::string);
	TodoReturn getUniqueUserID();
	TodoReturn toggleSmoothFix(bool);
	TodoReturn onToggleKeyboard();
	TodoReturn platformShutdown();
	TodoReturn setKeyboardState(bool);
	TodoReturn showAchievements();
	TodoReturn signInGooglePlay();
	TodoReturn toggleForceTimer(bool);
	TodoReturn toggleFullScreen(bool);
	TodoReturn toggleLockCursor(bool);
	TodoReturn isLowMemoryDevice();
	TodoReturn shouldResumeSound();
	TodoReturn signOutGooglePlay();
	TodoReturn tryShowRateDialog(std::string);
	TodoReturn activateGameCenter();
	TodoReturn isNetworkAvailable();
	TodoReturn setBlockBackButton(bool);
	TodoReturn toggleCallGLFinish(bool);
	TodoReturn toggleCPUSleepMode(bool);
	TodoReturn toggleMouseControl(bool);
	TodoReturn toggleVerticalSync(bool);
	TodoReturn updateMouseControl();
	TodoReturn updateWindowedSize(float, float);
	TodoReturn spriteFromSavedFile(std::string);
	TodoReturn getDeviceRefreshRate();
	TodoReturn isSignedInGooglePlay();
	TodoReturn isControllerConnected();
	TodoReturn reportLoadingFinished();
	TodoReturn reportAchievementWithID(char const*, int);
	TodoReturn downloadAndSavePromoImage(std::string, std::string);
	TodoReturn isLocalPlayerAuthenticated();
	TodoReturn loadAndDecryptFileToString(char const*, char const*);
	TodoReturn saveAndEncryptStringToFile(std::string, char const*, char const*);
	TodoReturn isHD();
	TodoReturn logEvent(char const*);
	TodoReturn sendMail(char const*, char const*, char const*);
	TodoReturn getUserID();
}

[[link(android)]]
class RetryLevelLayer {
	TodoReturn getEndText();
	TodoReturn customSetup();
	TodoReturn onEveryplay(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn onRewardedVideo(cocos2d::CCObject*);
	TodoReturn enterAnimFinished();
	TodoReturn setupLastProgress();
	TodoReturn rewardedVideoFinished();
	TodoReturn shouldOffsetRewardCurrency();
	TodoReturn keyUp(cocos2d::enumKeyCodes);
	TodoReturn create();
	TodoReturn onMenu(cocos2d::CCObject*);
	TodoReturn keyDown(cocos2d::enumKeyCodes);
	TodoReturn onReplay(cocos2d::CCObject*);
	TodoReturn showLayer(bool);
	TodoReturn ~RetryLevelLayer();
}

[[link(android)]]
class SelectFontLayer {
	TodoReturn onChangeFont(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn updateFontLabel();
	TodoReturn init(LevelEditorLayer*);
	TodoReturn create(LevelEditorLayer*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SelectFontLayer();
}

[[link(android)]]
class SetColorIDPopup {
	TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
	TodoReturn onSelectSpecialColor(cocos2d::CCObject*);
	TodoReturn init(int);
	TodoReturn create(int);
	TodoReturn ~SetColorIDPopup();
}

[[link(android)]]
class SetGroupIDLayer {
	TodoReturn addGroupID(int);
	TodoReturn onAddGroup(cocos2d::CCObject*);
	TodoReturn onArrowLeft(cocos2d::CCObject*);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn onArrowRight(cocos2d::CCObject*);
	TodoReturn onSmoothEase(cocos2d::CCObject*);
	TodoReturn updateZOrder();
	TodoReturn onToggleGuide(cocos2d::CCObject*);
	TodoReturn onZLayerShift(cocos2d::CCObject*);
	TodoReturn removeGroupID(int);
	TodoReturn keyBackClicked();
	TodoReturn onNextGroupID1(cocos2d::CCObject*);
	TodoReturn createTextInput(cocos2d::CCPoint, int, int, std::string, float, int);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn onAddGroupParent(cocos2d::CCObject*);
	TodoReturn onRemoveFromGroup(cocos2d::CCObject*);
	TodoReturn updateEditorLabel();
	TodoReturn updateEditorOrder();
	TodoReturn updateZOrderLabel();
	TodoReturn updateEditorLabel2();
	TodoReturn updateGroupIDLabel();
	TodoReturn updateOrderChannel();
	TodoReturn callRemoveFromGroup(float);
	TodoReturn updateEditorLayerID();
	TodoReturn updateZLayerButtons();
	TodoReturn determineStartValues();
	TodoReturn updateEditorLayerID2();
	TodoReturn updateGroupIDButtons();
	TodoReturn onToggleSelectedOrder(cocos2d::CCObject*);
	TodoReturn onNextFreeEditorLayer1(cocos2d::CCObject*);
	TodoReturn onNextFreeEditorLayer2(cocos2d::CCObject*);
	TodoReturn onNextFreeOrderChannel(cocos2d::CCObject*);
	TodoReturn updateEditorOrderLabel();
	TodoReturn updateOrderChannelLabel();
	TodoReturn init(GameObject*, cocos2d::CCArray*);
	TodoReturn create(GameObject*, cocos2d::CCArray*);
	TodoReturn onAnim(cocos2d::CCObject*);
	TodoReturn onCopy(cocos2d::CCObject*);
	TodoReturn onArrow(int, int);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onExtra(cocos2d::CCObject*);
	TodoReturn onPaste(cocos2d::CCObject*);
	TodoReturn onExtra2(cocos2d::CCObject*);
	TodoReturn onZLayer(cocos2d::CCObject*);
	TodoReturn ~SetGroupIDLayer();
}

[[link(android)]]
class SetupPulsePopup {
	TodoReturn onExclusive(cocos2d::CCObject*);
	TodoReturn selectColor(cocos2d::_ccColor3B);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn getColorValue();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateHoldTime();
	TodoReturn updateHSVValue();
	TodoReturn updateTargetID();
	TodoReturn onGroupMainOnly(cocos2d::CCObject*);
	TodoReturn onHSVLegacyMode(cocos2d::CCObject*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn updateCopyColor();
	TodoReturn updateHoldLabel(bool);
	TodoReturn updatePulseMode();
	TodoReturn updateColorValue();
	TodoReturn updateFadeInTime();
	TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
	TodoReturn colorValueChanged(cocos2d::_ccColor3B);
	TodoReturn onSelectPulseMode(cocos2d::CCObject*);
	TodoReturn onUpdateCopyColor(cocos2d::CCObject*);
	TodoReturn updateColorLabels();
	TodoReturn updateFadeInLabel(bool);
	TodoReturn updateFadeOutTime();
	TodoReturn onSelectTargetMode(cocos2d::CCObject*);
	TodoReturn updateFadeOutLabel(bool);
	TodoReturn onUpdateCustomColor(cocos2d::CCObject*);
	TodoReturn updateGroupMainOnly();
	TodoReturn determineStartValues();
	TodoReturn onGroupSecondaryOnly(cocos2d::CCObject*);
	TodoReturn onSelectSpecialColor(cocos2d::CCObject*);
	TodoReturn updateTextInputLabel();
	TodoReturn updatePulseTargetType();
	TodoReturn onSelectSpecialTargetID(cocos2d::CCObject*);
	TodoReturn updateGroupSecondaryOnly();
	TodoReturn updateCopyColorTextInputLabel();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn show();
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onCopy(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onPaste(cocos2d::CCObject*);
	TodoReturn ~SetupPulsePopup();
}

[[link(android)]]
class SetupShakePopup {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateShake();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateInterval();
	TodoReturn updateShakeLabel(bool);
	TodoReturn updateIntervalLabel(bool);
	TodoReturn determineStartValues();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupShakePopup();
}

[[link(android)]]
class SetupSpawnPopup {
	TodoReturn onAddRemap(cocos2d::CCObject*);
	TodoReturn onDeleteRemap(cocos2d::CCObject*);
	TodoReturn onSelectRemap(cocos2d::CCObject*);
	TodoReturn queueUpdateButtons();
	TodoReturn updateRemapButtons(float);
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupSpawnPopup();
}

[[link(android)]]
class SFXFolderObject {
	TodoReturn init(int, std::string, int);
	TodoReturn create(int, std::string, int);
	TodoReturn ~SFXFolderObject();
}

[[link(android)]]
class SFXSearchResult {
	TodoReturn updateObjects(AudioSortType);
	TodoReturn getActiveFolder();
	TodoReturn getSelectedPage(int, int);
	TodoReturn setActiveFolder(SFXFolderObject*);
	TodoReturn init(int);
	TodoReturn create(int);
	TodoReturn ~SFXSearchResult();
}

[[link(android)]]
class ShareLevelLayer {
	TodoReturn onSettings(cocos2d::CCObject*);
	TodoReturn setupStars();
	TodoReturn selectRating(cocos2d::CCObject*);
	TodoReturn getStarsButton(int, void (cocos2d::CCObject::*)(cocos2d::CCObject*), cocos2d::CCMenu*, float);
	TodoReturn keyBackClicked();
	TodoReturn init(GJGameLevel*);
	TodoReturn create(GJGameLevel*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onShare(cocos2d::CCObject*);
	TodoReturn ~ShareLevelLayer();
}

[[link(android)]]
class SmartGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn updateSmartFrame();
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn ~SmartGameObject();
}

[[link(android)]]
class TopArtistsLayer {
	TodoReturn onNextPage(cocos2d::CCObject*);
	TodoReturn onPrevPage(cocos2d::CCObject*);
	TodoReturn setupPageInfo(std::string, char const*);
	TodoReturn keyBackClicked();
	TodoReturn loadListFailed(char const*);
	TodoReturn loadListFinished(cocos2d::CCArray*, char const*);
	TodoReturn setupLeaderboard(cocos2d::CCArray*);
	TodoReturn updateLevelsLabel();
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init();
	TodoReturn show();
	TodoReturn create();
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn loadPage(int);
	TodoReturn isCorrect(char const*);
	TodoReturn ~TopArtistsLayer();
}

[[link(android)]]
class UISaveLoadLayer {
	TodoReturn init(UIOptionsLayer*);
	TodoReturn create(UIOptionsLayer*);
	TodoReturn onLoad(cocos2d::CCObject*);
	TodoReturn onSave(cocos2d::CCObject*);
	TodoReturn ~UISaveLoadLayer();
}

[[link(android)]]
class UploadListPopup {
	TodoReturn keyBackClicked();
	TodoReturn onReturnToList(cocos2d::CCObject*);
	TodoReturn listUploadFailed(GJLevelList*, int);
	TodoReturn listUploadFinished(GJLevelList*);
	TodoReturn init(GJLevelList*);
	TodoReturn show();
	TodoReturn create(GJLevelList*);
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~UploadListPopup();
}

[[link(android)]]
class AccountHelpLayer {
	TodoReturn updatePage();
	TodoReturn customSetup();
	TodoReturn layerHidden();
	TodoReturn verifyUnlink();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn onAccountManagement(cocos2d::CCObject*);
	TodoReturn accountStatusChanged();
	TodoReturn create();
	TodoReturn doUnlink();
	TodoReturn onUnlink(cocos2d::CCObject*);
	TodoReturn exitLayer();
	TodoReturn onReLogin(cocos2d::CCObject*);
	TodoReturn ~AccountHelpLayer();
}

[[link(android)]]
class CCAnimatedSprite {
	TodoReturn setOpacity(unsigned char);
	TodoReturn initWithType(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn runAnimation(std::string);
	TodoReturn switchToMode(spriteMode);
	TodoReturn cleanupSprite();
	TodoReturn createWithType(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn tweenToAnimation(std::string, float);
	TodoReturn animationFinished(char const*);
	TodoReturn willPlayAnimation();
	TodoReturn animationFinishedO(cocos2d::CCObject*);
	TodoReturn runAnimationForced(std::string);
	TodoReturn tweenToAnimationFinished();
	TodoReturn loadType(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn setColor(cocos2d::_ccColor3B const&);
	TodoReturn stopTween();
	TodoReturn ~CCAnimatedSprite();
}

[[link(android)]]
class CCContentManager {
	TodoReturn clearCache();
	TodoReturn sharedManager();
	TodoReturn init();
	TodoReturn addDict(char const*, bool);
	TodoReturn addDictDS(char const*);
	TodoReturn ~CCContentManager();
	TodoReturn CCContentManager(CCContentManager const&);
	TodoReturn CCContentManager();
	TodoReturn cocos2d::CCDictionary* addDict(char const*, bool);
	TodoReturn cocos2d::CCDictionary* addDictDS(char const*);
	TodoReturn void clearCache();
	TodoReturn bool init();
	TodoReturn static CCContentManager* sharedManager();
}

[[link(android)]]
class CCPartAnimSprite {
	TodoReturn countParts();
	TodoReturn setOpacity(unsigned char);
	TodoReturn displayFrame();
	TodoReturn setBlendFunc(cocos2d::_ccBlendFunc);
	TodoReturn tweenToFrame(cocos2d::CCSpriteFrame*, float);
	TodoReturn tweenSpriteTo(SpriteDescription*, float);
	TodoReturn getSpriteForKey(char const*);
	TodoReturn setDisplayFrame(cocos2d::CCSpriteFrame*);
	TodoReturn transformSprite(SpriteDescription*);
	TodoReturn initWithAnimDesc(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn isFrameDisplayed(cocos2d::CCSpriteFrame*);
	TodoReturn changeTextureOfID(char const*, char const*);
	TodoReturn createWithAnimDesc(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn dirtify();
	TodoReturn setColor(cocos2d::_ccColor3B);
	TodoReturn setFlipX(bool);
	TodoReturn setFlipY(bool);
	TodoReturn setScale(float);
	TodoReturn setScaleX(float);
	TodoReturn setScaleY(float);
	TodoReturn ~CCPartAnimSprite();
}

[[link(android)]]
class CCScrollLayerExt {
	TodoReturn scrollLayer(float);
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn scrollingEnd();
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn setContentOffset(cocos2d::CCPoint, bool);
	TodoReturn updateIndicators(float);
	TodoReturn constraintContent();
	TodoReturn doConstraintContent(bool);
	TodoReturn moveToTopWithOffset(float);
	TodoReturn setContentLayerSize(cocos2d::CCSize);
	TodoReturn preVisitWithClippingRect(cocos2d::CCRect);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn visit();
	TodoReturn getMaxY();
	TodoReturn getMinY();
	TodoReturn moveToTop();
	TodoReturn postVisit();
	TodoReturn CCScrollLayerExt(cocos2d::CCRect);
	TodoReturn ~CCScrollLayerExt();
}

[[link(android)]]
class CCSpriteCOpacity {
	TodoReturn setOpacity(unsigned char);
	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(char const*);
	TodoReturn ~CCSpriteCOpacity();
}

[[link(android)]]
class CheckpointObject {
	TodoReturn init();
	TodoReturn create();
	TodoReturn getObject();
	TodoReturn setObject(GameObject*);
	TodoReturn ~CheckpointObject();
}

[[link(android)]]
class ColorSelectPopup {
	TodoReturn colorToHex(cocos2d::_ccColor3B);
	TodoReturn hexToColor(std::string);
	TodoReturn selectColor(cocos2d::_ccColor3B);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn onTintGround(cocos2d::CCObject*);
	TodoReturn getColorValue();
	TodoReturn onCopyOpacity(cocos2d::CCObject*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateHSVMode();
	TodoReturn updateOpacity();
	TodoReturn onPlayerColor1(cocos2d::CCObject*);
	TodoReturn onPlayerColor2(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel();
	TodoReturn updateHSVValue();
	TodoReturn onHSVLegacyMode(cocos2d::CCObject*);
	TodoReturn onToggleHSVMode(cocos2d::CCObject*);
	TodoReturn updateCopyColor();
	TodoReturn closeColorSelect(cocos2d::CCObject*);
	TodoReturn onToggleTintMode(cocos2d::CCObject*);
	TodoReturn updateColorValue();
	TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
	TodoReturn colorValueChanged(cocos2d::_ccColor3B);
	TodoReturn onUpdateCopyColor(cocos2d::CCObject*);
	TodoReturn updateColorLabels();
	TodoReturn updateOpacityLabel();
	TodoReturn onUpdateCustomColor(cocos2d::CCObject*);
	TodoReturn determineStartValues();
	TodoReturn onSelectSpecialColor(cocos2d::CCObject*);
	TodoReturn updateCustomColorIdx();
	TodoReturn updateTextInputLabel();
	TodoReturn updateCopyColorTextInputLabel();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*, ColorAction*);
	TodoReturn show();
	TodoReturn create(cocos2d::_ccColor3B);
	TodoReturn create(ColorAction*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*, ColorAction*);
	TodoReturn onCopy(cocos2d::CCObject*);
	TodoReturn onPaste(cocos2d::CCObject*);
	TodoReturn onDefault(cocos2d::CCObject*);
	TodoReturn ~ColorSelectPopup();
}

[[link(android)]]
class CustomSongWidget {
	TodoReturn deleteSong();
	TodoReturn onDownload(cocos2d::CCObject*);
	TodoReturn onPlayback(cocos2d::CCObject*);
	TodoReturn updateError(GJSongError);
	TodoReturn verifySongID(int);
	TodoReturn onGetSongInfo(cocos2d::CCObject*);
	TodoReturn startDownload();
	TodoReturn downloadFailed();
	TodoReturn updateSongInfo();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn updateLengthMod(float);
	TodoReturn onCancelDownload(cocos2d::CCObject*);
	TodoReturn songStateChanged();
	TodoReturn updateSongObject(SongInfoObject*);
	TodoReturn downloadSFXFailed(int, GJSongError);
	TodoReturn musicActionFailed(GJMusicAction);
	TodoReturn updatePlaybackBtn();
	TodoReturn updateProgressBar(int);
	TodoReturn downloadSongFailed(int, GJSongError);
	TodoReturn loadSongInfoFailed(int, GJSongError);
	TodoReturn toggleUpdateButton(bool);
	TodoReturn downloadAssetFailed(int, GJAssetType, GJSongError);
	TodoReturn downloadSFXFinished(int);
	TodoReturn musicActionFinished(GJMusicAction);
	TodoReturn downloadSongFinished(int);
	TodoReturn loadSongInfoFinished(SongInfoObject*);
	TodoReturn startMonitorDownload();
	TodoReturn updateMultiAssetInfo(bool);
	TodoReturn downloadAssetFinished(int, GJAssetType);
	TodoReturn getSongInfoIfUnloaded();
	TodoReturn processNextMultiAsset();
	TodoReturn updateWithMultiAssets(std::string, std::string, int);
	TodoReturn updateDownloadProgress(float);
	TodoReturn startMultiAssetDownload();
	TodoReturn init(SongInfoObject*, CustomSongDelegate*, bool, bool, bool, bool, bool, bool);
	TodoReturn create(SongInfoObject*, CustomSongDelegate*, bool, bool, bool, bool, bool, bool);
	TodoReturn onMore(cocos2d::CCObject*);
	TodoReturn onDelete(cocos2d::CCObject*);
	TodoReturn onSelect(cocos2d::CCObject*);
	TodoReturn showError(bool);
	TodoReturn ~CustomSongWidget();
}

[[link(android)]]
class EditorPauseLayer {
	TodoReturn customSetup();
	TodoReturn onNewGroupX(cocos2d::CCObject*);
	TodoReturn onNewGroupY(cocos2d::CCObject*);
	TodoReturn onSelectAll(cocos2d::CCObject*);
	TodoReturn onCopyWColor(cocos2d::CCObject*);
	TodoReturn onCreateLoop(cocos2d::CCObject*);
	TodoReturn onExitEditor(cocos2d::CCObject*);
	TodoReturn onExitNoSave(cocos2d::CCObject*);
	TodoReturn doResetUnused();
	TodoReturn onBuildHelper(cocos2d::CCObject*);
	TodoReturn onKeybindings(cocos2d::CCObject*);
	TodoReturn onPasteWColor(cocos2d::CCObject*);
	TodoReturn onSaveAndExit(cocos2d::CCObject*);
	TodoReturn onSaveAndPlay(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn onCreateExtras(cocos2d::CCObject*);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn onSelectAllLeft(cocos2d::CCObject*);
	TodoReturn toggleDebugDraw(cocos2d::CCObject*);
	TodoReturn toggleGridOnTop(cocos2d::CCObject*);
	TodoReturn onCreateTemplate(cocos2d::CCObject*);
	TodoReturn onSelectAllRight(cocos2d::CCObject*);
	TodoReturn toggleEditorGrid(cocos2d::CCObject*);
	TodoReturn updateSongButton();
	TodoReturn onUnlockAllLayers(cocos2d::CCObject*);
	TodoReturn toggleEffectLines(cocos2d::CCObject*);
	TodoReturn togglePreviewAnim(cocos2d::CCObject*);
	TodoReturn toggleRecordOrder(cocos2d::CCObject*);
	TodoReturn uncheckAllPortals(cocos2d::CCObject*);
	TodoReturn toggleEditorGround(cocos2d::CCObject*);
	TodoReturn toggleFollowPlayer(cocos2d::CCObject*);
	TodoReturn toggleIgnoreDamage(cocos2d::CCObject*);
	TodoReturn toggleSelectFilter(cocos2d::CCObject*);
	TodoReturn onResetUnusedColors(cocos2d::CCObject*);
	TodoReturn toggleHideInvisible(cocos2d::CCObject*);
	TodoReturn togglePlaytestMusic(cocos2d::CCObject*);
	TodoReturn toggleEffectDuration(cocos2d::CCObject*);
	TodoReturn togglePreviewShaders(cocos2d::CCObject*);
	TodoReturn toggleShowObjectInfo(cocos2d::CCObject*);
	TodoReturn toggleEditorColorMode(cocos2d::CCObject*);
	TodoReturn toggleEditorBackground(cocos2d::CCObject*);
	TodoReturn togglePreviewParticles(cocos2d::CCObject*);
	TodoReturn init(LevelEditorLayer*);
	TodoReturn create(LevelEditorLayer*);
	TodoReturn onHelp(cocos2d::CCObject*);
	TodoReturn onSave(cocos2d::CCObject*);
	TodoReturn onSong(cocos2d::CCObject*);
	TodoReturn keyDown(cocos2d::enumKeyCodes);
	TodoReturn onAlignX(cocos2d::CCObject*);
	TodoReturn onAlignY(cocos2d::CCObject*);
	TodoReturn onResume(cocos2d::CCObject*);
	TodoReturn onOptions(cocos2d::CCObject*);
	TodoReturn onReGroup(cocos2d::CCObject*);
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn saveLevel();
	TodoReturn ~EditorPauseLayer();
}

[[link(android)]]
class EffectGameObject {
	TodoReturn canReverse();
	TodoReturn firstSetup();
	TodoReturn setOpacity(unsigned char);
	TodoReturn setRScaleX(float);
	TodoReturn setRScaleY(float);
	TodoReturn customSetup();
	TodoReturn setTargetID(int);
	TodoReturn canBeOrdered();
	TodoReturn setTargetID2(int);
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn restoreObject();
	TodoReturn triggerObject(GJBaseGameLayer*, int, std::vector<int, std::allocator<int> > const*);
	TodoReturn getObjectLabel();
	TodoReturn setObjectLabel(cocos2d::CCLabelBMFont*);
	TodoReturn spawnXPosition();
	TodoReturn triggerActivated(float);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn playTriggerEffect();
	TodoReturn resetSpawnTrigger();
	TodoReturn stateSensitiveOff(GJBaseGameLayer*);
	TodoReturn updateSpecialColor();
	TodoReturn updateSpeedModType();
	TodoReturn getTargetColorIndex();
	TodoReturn isSpecialSpawnObject();
	TodoReturn triggerEffectFinished();
	TodoReturn updateInteractiveHover(float);
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn EffectGameObject();
	TodoReturn ~EffectGameObject();
}

[[link(android)]]
class EventLinkTrigger {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, std::vector<int, std::allocator<int> > const*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~EventLinkTrigger();
}

[[link(android)]]
class FollowRewardPage {
	TodoReturn updateRate();
	TodoReturn onSpecialItem(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn onRewardedVideo(cocos2d::CCObject*);
	TodoReturn switchToOpenedState(CCMenuItemSpriteExtra*);
	TodoReturn rewardedVideoFinished();
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init();
	TodoReturn show();
	TodoReturn create();
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~FollowRewardPage();
}

[[link(android)]]
class GameLevelManager {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn followUser(int);
	TodoReturn getDailyID(GJTimedLevelType);
	TodoReturn getDescKey(int);
	TodoReturn getDiffKey(int);
	TodoReturn getDiffVal(int);
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	TodoReturn isDLActive(char const*);
	TodoReturn setDiffVal(int, bool);
	TodoReturn deleteLevel(GJGameLevel*);
	TodoReturn getLevelKey(int);
	TodoReturn getMapPacks(GJSearchObject*);
	TodoReturn getPageInfo(char const*);
	TodoReturn getTimeLeft(char const*, float);
	TodoReturn getUserList(UserListType);
	TodoReturn isTimeValid(char const*, float);
	TodoReturn keyHasTimer(char const*);
	TodoReturn reportLevel(int);
	TodoReturn saveMapPack(GJMapPack*);
	TodoReturn sharedState();
	TodoReturn unblockUser(int);
	TodoReturn updateLevel(GJGameLevel*);
	TodoReturn uploadLevel(GJGameLevel*);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn getGauntlets();
	TodoReturn getGJRewards(int);
	TodoReturn getIntForKey(char const*);
	TodoReturn getLengthStr(bool, bool, bool, bool, bool, bool);
	TodoReturn getMainLevel(int, bool);
	TodoReturn getReportKey(int);
	TodoReturn hasLikedItem(LikeItemType, int, bool, int);
	TodoReturn removeFriend(int);
	TodoReturn restoreItems();
	TodoReturn saveGauntlet(GJMapPack*);
	TodoReturn setIntForKey(int, char const*);
	TodoReturn unfollowUser(int);
	TodoReturn addDLToActive(char const*);
	TodoReturn deleteComment(int, CommentType, int);
	TodoReturn downloadLevel(int, bool);
	TodoReturn getBoolForKey(char const*);
	TodoReturn getCommentKey(int, int, int, CommentKeyType);
	TodoReturn getDailyTimer(GJTimedLevelType);
	TodoReturn getFolderName(int, bool);
	TodoReturn getGJUserInfo(int);
	TodoReturn getLevelLists(GJSearchObject*);
	TodoReturn getLocalLevel(int);
	TodoReturn getMapPackKey(int);
	TodoReturn getMessageKey(int);
	TodoReturn getSavedLevel(int);
	TodoReturn getSavedLevel(GJGameLevel*);
	TodoReturn getTopArtists(int, int);
	TodoReturn gotoLevelPage(GJGameLevel*);
	TodoReturn hasRatedDemon(int);
	TodoReturn isUpdateValid(int);
	TodoReturn makeTimeStamp(char const*);
	TodoReturn saveLevelList(GJLevelList*);
	TodoReturn setBoolForKey(bool, char const*);
	TodoReturn setFolderName(int, std::string, bool);
	TodoReturn setLevelStars(int, int, bool);
	TodoReturn storeUserInfo(GJUserScore*);
	TodoReturn storeUserName(int, int, std::string);
	TodoReturn uploadComment(std::string, CommentType, int, int);
	TodoReturn createNewLevel();
	TodoReturn createPageInfo(int, int, int);
	TodoReturn getGauntletKey(int);
	TodoReturn getLikeItemKey(LikeItemType, int, bool, int);
	TodoReturn getMessagesKey(bool, int);
	TodoReturn getSavedLevels(bool, int);
	TodoReturn getSearchScene(char const*);
	TodoReturn getUserInfoKey(int);
	TodoReturn resetAllTimers();
	TodoReturn resetGauntlets();
	TodoReturn responseToDict(std::string, bool);
	TodoReturn saveLocalScore(int, int, int);
	TodoReturn storeUserNames(std::string);
	TodoReturn submitUserInfo();
	TodoReturn tryGetUsername(int);
	TodoReturn deleteLevelList(GJLevelList*);
	TodoReturn getGJChallenges();
	TodoReturn getLevelListKey(int);
	TodoReturn getOnlineLevels(GJSearchObject*);
	TodoReturn getRateStarsKey(int);
	TodoReturn getSavedMapPack(int);
	TodoReturn getUserMessages(bool, int, int);
	TodoReturn handleItDelayed(bool, std::string, std::string, GJHttpType);
	TodoReturn isFollowingUser(int);
	TodoReturn likeFromLikeKey(char const*);
	TodoReturn markItemAsLiked(LikeItemType, int, bool, int);
	TodoReturn typeFromLikeKey(char const*);
	TodoReturn updateUsernames();
	TodoReturn updateUserScore();
	TodoReturn uploadLevelList(GJLevelList*);
	TodoReturn getActiveDailyID(GJTimedLevelType);
	TodoReturn getDifficultyStr(bool, bool, bool, bool, bool, bool, bool, bool);
	TodoReturn getLevelComments(int, int, int, int, CommentKeyType);
	TodoReturn getLevelSaveData();
	TodoReturn getNextLevelName(std::string);
	TodoReturn getSavedGauntlet(int);
	TodoReturn getTopArtistsKey(int);
	TodoReturn hasReportedLevel(int);
	TodoReturn limitSavedLevels();
	TodoReturn parseRestoreData(std::string);
	TodoReturn resetTimerForKey(char const*);
	TodoReturn setLevelFeatured(int, int, bool);
	TodoReturn storeUserMessage(GJUserMessage*);
	TodoReturn verifyLevelState(GJGameLevel*);
	TodoReturn deleteServerLevel(int);
	TodoReturn getAllUsedSongIDs();
	TodoReturn getBasePostString();
	TodoReturn getFriendRequests(bool, int, int);
	TodoReturn getGauntletLevels(int);
	TodoReturn getLocalLevelList(int);
	TodoReturn getPostCommentKey(int);
	TodoReturn getSavedLevelList(int);
	TodoReturn getStoredUserList(UserListType);
	TodoReturn hasDownloadedList(int);
	TodoReturn itemIDFromLikeKey(char const*);
	TodoReturn messageWasRemoved(int, bool);
	TodoReturn purgeUnusedLevels();
	TodoReturn readFriendRequest(int);
	TodoReturn requestUserAccess();
	TodoReturn saveFetchedLevels(cocos2d::CCArray*);
	TodoReturn storeSearchResult(cocos2d::CCArray*, std::string, char const*);
	TodoReturn suggestLevelStars(int, int, int);
	TodoReturn updateDescription(int, std::string);
	TodoReturn updateLevelOrders();
	TodoReturn uploadUserMessage(int, std::string, std::string);
	TodoReturn userNameForUserID(int);
	TodoReturn accountIDForUserID(int);
	TodoReturn areGauntletsLoaded();
	TodoReturn cleanupDailyLevels();
	TodoReturn createAndGetLevels(std::string);
	TodoReturn createAndGetScores(std::string, GJScoreType);
	TodoReturn createNewLevelList();
	TodoReturn deleteLevelComment(int, int);
	TodoReturn deleteUserMessages(GJUserMessage*, cocos2d::CCArray*, bool);
	TodoReturn getAccountComments(int, int, int);
	TodoReturn getCompletedLevels(bool);
	TodoReturn getSavedDailyLevel(int);
	TodoReturn getSavedLevelLists(int);
	TodoReturn getSplitIntFromKey(char const*, int);
	TodoReturn hasDownloadedLevel(int);
	TodoReturn hasRatedLevelStars(int);
	TodoReturn invalidateMessages(bool, bool);
	TodoReturn invalidateRequests(bool, bool);
	TodoReturn invalidateUserList(UserListType, bool);
	TodoReturn onBanUserCompleted(std::string, std::string);
	TodoReturn onGetNewsCompleted(std::string, std::string);
	TodoReturn pageFromCommentKey(char const*);
	TodoReturn performNetworkTest();
	TodoReturn ProcessHttpRequest(std::string, std::string, std::string, GJHttpType);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn removeUserFromList(int, UserListType);
	TodoReturn specialFromLikeKey(char const*);
	TodoReturn storeFriendRequest(GJFriendRequest*);
	TodoReturn typeFromCommentKey(char const*);
	TodoReturn updateLevelRewards(GJGameLevel*);
	TodoReturn uploadLevelComment(int, std::string, int);
	TodoReturn userIDForAccountID(int);
	TodoReturn acceptFriendRequest(int, int);
	TodoReturn createSmartTemplate();
	TodoReturn deleteSmartTemplate(GJSmartTemplate*);
	TodoReturn downloadUserMessage(int, bool);
	TodoReturn getDeleteCommentKey(int, int, int);
	TodoReturn getDeleteMessageKey(int, bool);
	TodoReturn getFriendRequestKey(bool, int);
	TodoReturn getLevelDownloadKey(int, bool);
	TodoReturn getLevelLeaderboard(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode);
	TodoReturn getLocalLevelByName(std::string);
	TodoReturn getLowestLevelOrder();
	TodoReturn getUploadMessageKey(int);
	TodoReturn hasLikedAccountItem(LikeItemType, int, bool, int);
	TodoReturn markLevelAsReported(int);
	TodoReturn onGetUsersCompleted(std::string, std::string);
	TodoReturn onLikeItemCompleted(std::string, std::string);
	TodoReturn resetStoredUserInfo(int);
	TodoReturn resetStoredUserList(UserListType);
	TodoReturn saveFetchedMapPacks(cocos2d::CCArray*);
	TodoReturn storeCommentsResult(cocos2d::CCArray*, std::string, char const*);
	TodoReturn uploadFriendRequest(int, std::string);
	TodoReturn writeSpecialFilters(GJSearchObject*);
	TodoReturn createAndGetMapPacks(std::string);
	TodoReturn deleteAccountComment(int, int);
	TodoReturn deleteFriendRequests(int, cocos2d::CCArray*, bool);
	TodoReturn getAccountCommentKey(int, int);
	TodoReturn getAllSmartTemplates();
	TodoReturn getGauntletSearchKey(int);
	TodoReturn getGJDailyLevelState(GJTimedLevelType);
	TodoReturn getHighestLevelOrder();
	TodoReturn getLeaderboardScores(char const*);
	TodoReturn getStoredUserMessage(int);
	TodoReturn markListAsDownloaded(int);
	TodoReturn onBlockUserCompleted(std::string, std::string);
	TodoReturn onRateDemonCompleted(std::string, std::string);
	TodoReturn onRateStarsCompleted(std::string, std::string);
	TodoReturn removeDelimiterChars(std::string, bool);
	TodoReturn resetAccountComments(int);
	TodoReturn resetDailyLevelState(GJTimedLevelType);
	TodoReturn storeDailyLevelState(int, int, GJTimedLevelType);
	TodoReturn updateSavedLevelList(GJLevelList*);
	TodoReturn uploadAccountComment(std::string);
	TodoReturn userInfoForAccountID(int);
	TodoReturn deleteServerLevelList(int);
	TodoReturn getLikeAccountItemKey(LikeItemType, int, bool, int);
	TodoReturn getNextFreeTemplateID();
	TodoReturn getSavedGauntletLevel(int);
	TodoReturn getStoredOnlineLevels(char const*);
	TodoReturn hasLikedItemFullCheck(LikeItemType, int, int);
	TodoReturn levelIDFromCommentKey(char const*);
	TodoReturn markLevelAsDownloaded(int);
	TodoReturn markLevelAsRatedDemon(int);
	TodoReturn markLevelAsRatedStars(int);
	TodoReturn saveFetchedLevelLists(cocos2d::CCArray*);
	TodoReturn storeUserMessageReply(int, GJUserMessage*);
	TodoReturn createAndGetLevelLists(std::string);
	TodoReturn getActiveSmartTemplate();
	TodoReturn getLevelLeaderboardKey(int, LevelLeaderboardType, LevelLeaderboardMode);
	TodoReturn getStoredLevelComments(char const*);
	TodoReturn onGetMapPacksCompleted(std::string, std::string);
	TodoReturn onGetUserListCompleted(std::string, std::string);
	TodoReturn onReportLevelCompleted(std::string, std::string);
	TodoReturn onUnblockUserCompleted(std::string, std::string);
	TodoReturn onUpdateLevelCompleted(std::string, std::string);
	TodoReturn onUploadLevelCompleted(std::string, std::string);
	TodoReturn setActiveSmartTemplate(GJSmartTemplate*);
	TodoReturn deleteSentFriendRequest(int);
	TodoReturn friendRequestWasRemoved(int, bool);
	TodoReturn hasDailyStateBeenLoaded(GJTimedLevelType);
	TodoReturn onGetGauntletsCompleted(std::string, std::string);
	TodoReturn onGetGJRewardsCompleted(std::string, std::string);
	TodoReturn onRemoveFriendCompleted(std::string, std::string);
	TodoReturn onRestoreItemsCompleted(std::string, std::string);
	TodoReturn createAndGetCommentsFull(std::string, int, bool);
	TodoReturn onDeleteCommentCompleted(std::string, std::string);
	TodoReturn onDownloadLevelCompleted(std::string, std::string);
	TodoReturn onGetGJUserInfoCompleted(std::string, std::string);
	TodoReturn onGetLevelListsCompleted(std::string, std::string);
	TodoReturn onGetTopArtistsCompleted(std::string, std::string);
	TodoReturn onSetLevelStarsCompleted(std::string, std::string);
	TodoReturn onUploadCommentCompleted(std::string, std::string);
	TodoReturn createAndGetLevelComments(std::string, int);
	TodoReturn getStoredUserMessageReply(int);
	TodoReturn levelIDFromPostCommentKey(char const*);
	TodoReturn onSubmitUserInfoCompleted(std::string, std::string);
	TodoReturn friendRequestFromAccountID(int);
	TodoReturn onGetGJChallengesCompleted(std::string, std::string);
	TodoReturn onGetOnlineLevelsCompleted(std::string, std::string);
	TodoReturn onGetUserMessagesCompleted(std::string, std::string);
	TodoReturn onUpdateUserScoreCompleted(std::string, std::string);
	TodoReturn onUploadLevelListCompleted(std::string, std::string);
	TodoReturn createAndGetAccountComments(std::string, int);
	TodoReturn onGetLevelCommentsCompleted(std::string, std::string);
	TodoReturn onGetLevelSaveDataCompleted(std::string, std::string);
	TodoReturn onSetLevelFeaturedCompleted(std::string, std::string);
	TodoReturn onDeleteServerLevelCompleted(std::string, std::string);
	TodoReturn onGetFriendRequestsCompleted(std::string, std::string);
	TodoReturn onReadFriendRequestCompleted(std::string, std::string);
	TodoReturn onRequestUserAccessCompleted(std::string, std::string);
	TodoReturn onSuggestLevelStarsCompleted(std::string, std::string);
	TodoReturn onUpdateDescriptionCompleted(std::string, std::string);
	TodoReturn onUploadUserMessageCompleted(std::string, std::string);
	TodoReturn resetCommentTimersForLevelID(int, CommentKeyType);
	TodoReturn getSavedDailyLevelFromLevelID(int);
	TodoReturn onDeleteUserMessagesCompleted(std::string, std::string);
	TodoReturn onGetAccountCommentsCompleted(std::string, std::string);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onAcceptFriendRequestCompleted(std::string, std::string);
	TodoReturn onDeleteFriendRequestCompleted(std::string, std::string);
	TodoReturn onDownloadUserMessageCompleted(std::string, std::string);
	TodoReturn onGetLevelLeaderboardCompleted(std::string, std::string);
	TodoReturn onUploadFriendRequestCompleted(std::string, std::string);
	TodoReturn onGetGJDailyLevelStateCompleted(std::string, std::string);
	TodoReturn onGetLeaderboardScoresCompleted(std::string, std::string);
	TodoReturn processOnDownloadLevelCompleted(std::string, std::string, bool);
	TodoReturn onDeleteServerLevelListCompleted(std::string, std::string);
	TodoReturn removeLevelDownloadedKeysFromDict(cocos2d::CCDictionary*);
	TodoReturn init();
	TodoReturn banUser(int);
	TodoReturn getNews();
	TodoReturn getUsers(GJSearchObject*);
	TodoReturn handleIt(bool, std::string, std::string, GJHttpType);
	TodoReturn likeItem(LikeItemType, int, bool, int);
	TodoReturn blockUser(int);
	TodoReturn getLenKey(int);
	TodoReturn getLenVal(int);
	TodoReturn rateDemon(int, int, bool);
	TodoReturn rateStars(int, int);
	TodoReturn saveLevel(GJGameLevel*);
	TodoReturn setLenVal(int, bool);
	TodoReturn ~GameLevelManager();
}

[[link(android)]]
class GameOptionsLayer {
	TodoReturn onUIOptions(cocos2d::CCObject*);
	TodoReturn setupOptions();
	TodoReturn onPracticeMusicSync(cocos2d::CCObject*);
	TodoReturn showPracticeMusicSyncUnlockInfo();
	TodoReturn init(GJBaseGameLayer*);
	TodoReturn create(GJBaseGameLayer*);
	TodoReturn didToggle(int);
	TodoReturn ~GameOptionsLayer();
}

[[link(android)]]
class GameRateDelegate {
	TodoReturn updateRate();
}

[[link(android)]]
class GameStatsManager {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn getItemKey(int, int);
	TodoReturn getLevelKey(int, bool, bool, bool);
	TodoReturn getLevelKey(GJGameLevel*);
	TodoReturn hasUserCoin(char const*);
	TodoReturn sharedState();
	TodoReturn addStoreItem(int, int, int, int, ShopType);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn getChallenge(int);
	TodoReturn getRewardKey(GJRewardType, int);
	TodoReturn getStoreItem(int);
	TodoReturn getStoreItem(int, int);
	TodoReturn isSecretCoin(std::string);
	TodoReturn purchaseItem(int);
	TodoReturn resetPreSync();
	TodoReturn collectReward(GJRewardType, GJRewardItem*);
	TodoReturn getMapPackKey(int);
	TodoReturn getRewardItem(GJRewardType);
	TodoReturn hasSecretCoin(char const*);
	TodoReturn incrementStat(char const*);
	TodoReturn incrementStat(char const*, int);
	TodoReturn isItemEnabled(UnlockType, int);
	TodoReturn storeUserCoin(char const*);
	TodoReturn awardSecretKey();
	TodoReturn completedLevel(GJGameLevel*);
	TodoReturn getCurrencyKey(GJGameLevel*);
	TodoReturn getStatFromKey(StatKey);
	TodoReturn isItemUnlocked(UnlockType, int);
	TodoReturn isPathUnlocked(StatKey);
	TodoReturn resetUserCoins();
	TodoReturn storeChallenge(int, GJChallengeItem*);
	TodoReturn claimListReward(GJLevelList*);
	TodoReturn getBaseCurrency(int, bool, int);
	TodoReturn getBaseDiamonds(int);
	TodoReturn getChallengeKey(GJChallengeItem*);
	TodoReturn getStarLevelKey(GJGameLevel*);
	TodoReturn removeChallenge(int);
	TodoReturn restorePostSync();
	TodoReturn setStatIfHigher(char const*, int);
	TodoReturn starsForMapPack(int);
	TodoReturn storeSecretCoin(char const*);
	TodoReturn uncompleteLevel(GJGameLevel*);
	TodoReturn unlockPathChest(int);
	TodoReturn verifyUserCoins();
	TodoReturn accountIDForIcon(int, UnlockType);
	TodoReturn areRewardsLoaded();
	TodoReturn checkAchievement(char const*);
	TodoReturn completedMapPack(GJMapPack*);
	TodoReturn createStoreItems();
	TodoReturn getBonusDiamonds(int);
	TodoReturn getDailyLevelKey(int);
	TodoReturn getDemonLevelKey(GJGameLevel*);
	TodoReturn getListRewardKey(GJLevelList*);
	TodoReturn getPathRewardKey(int);
	TodoReturn getSecretCoinKey(char const*);
	TodoReturn preProcessReward(GJRewardItem*);
	TodoReturn preSaveGameStats();
	TodoReturn recountUserCoins(bool);
	TodoReturn setupIconCredits();
	TodoReturn storeRewardState(GJRewardType, int, int, std::string);
	TodoReturn toggleEnableItem(UnlockType, int, bool);
	TodoReturn updateActivePath(StatKey);
	TodoReturn countSecretChests(GJRewardType);
	TodoReturn hasCompletedLevel(GJGameLevel*);
	TodoReturn isSecretCoinValid(std::string);
	TodoReturn postLoadGameStats();
	TodoReturn shopTypeForItemID(int);
	TodoReturn unlockSecretChest(int);
	TodoReturn checkCoinsForLevel(GJGameLevel*);
	TodoReturn collectVideoReward(int);
	TodoReturn completedChallenge(GJChallengeItem*);
	TodoReturn completedStarLevel(GJGameLevel*);
	TodoReturn getItemUnlockState(int, UnlockType);
	TodoReturn getQueuedChallenge(int);
	TodoReturn hasPendingUserCoin(char const*);
	TodoReturn incrementChallenge(GJChallengeType, int);
	TodoReturn setStarsForMapPack(int, int);
	TodoReturn storeChallengeTime(int);
	TodoReturn unlockSpecialChest(std::string);
	TodoReturn areChallengesLoaded();
	TodoReturn completedDailyLevel(GJGameLevel*);
	TodoReturn completedDemonLevel(GJGameLevel*);
	TodoReturn hasCompletedMapPack(int);
	TodoReturn incrementActivePath(int);
	TodoReturn isPathChestUnlocked(int);
	TodoReturn isStoreItemUnlocked(int);
	TodoReturn recountSpecialStats();
	TodoReturn resetChallengeTimer();
	TodoReturn trySelectActivePath();
	TodoReturn unlockGauntletChest(int);
	TodoReturn checkCoinAchievement(GJGameLevel*);
	TodoReturn getCompletedMapPacks();
	TodoReturn getGauntletRewardKey(int);
	TodoReturn getNextVideoAdReward();
	TodoReturn hasClaimedListReward(GJLevelList*);
	TodoReturn shouldAwardSecretKey();
	TodoReturn storePendingUserCoin(char const*);
	TodoReturn storeQueuedChallenge(int, GJChallengeItem*);
	TodoReturn usernameForAccountID(int);
	TodoReturn awardCurrencyForLevel(GJGameLevel*);
	TodoReturn awardDiamondsForLevel(GJGameLevel*);
	TodoReturn getSecretChestForItem(int, UnlockType);
	TodoReturn hasCompletedChallenge(GJChallengeItem*);
	TodoReturn hasCompletedMainLevel(int);
	TodoReturn hasCompletedStarLevel(GJGameLevel*);
	TodoReturn isSecretChestUnlocked(int);
	TodoReturn keyCostForSecretChest(int);
	TodoReturn processChallengeQueue(int);
	TodoReturn removeQueuedChallenge(int);
	TodoReturn createSecretChestItems();
	TodoReturn getItemUnlockStateLite(int, UnlockType);
	TodoReturn hasCompletedDailyLevel(int);
	TodoReturn hasCompletedDemonLevel(GJGameLevel*);
	TodoReturn hasRewardBeenCollected(GJRewardType, int);
	TodoReturn isSpecialChestUnlocked(std::string);
	TodoReturn createSpecialChestItems();
	TodoReturn getBaseCurrencyForLevel(GJGameLevel*);
	TodoReturn getRewardForSecretChest(int);
	TodoReturn hasCompletedOnlineLevel(int);
	TodoReturn isGauntletChestUnlocked(int);
	TodoReturn registerRewardsFromItem(GJRewardItem*);
	TodoReturn createSecretChestRewards();
	TodoReturn getRewardForSpecialChest(std::string);
	TodoReturn countUnlockedSecretChests(GJRewardType);
	TodoReturn getCollectedCoinsForLevel(GJGameLevel*);
	TodoReturn getSpecialChestKeyForItem(int, UnlockType);
	TodoReturn getTotalCollectedCurrency();
	TodoReturn getTotalCollectedDiamonds();
	TodoReturn hasCompletedGauntletLevel(int);
	TodoReturn generateItemUnlockableData();
	TodoReturn getAwardedCurrencyForLevel(GJGameLevel*);
	TodoReturn getAwardedDiamondsForLevel(GJGameLevel*);
	TodoReturn addSimpleSpecialChestReward(std::string, UnlockType, int, bool);
	TodoReturn addSpecialRewardDescription(std::string, std::string);
	TodoReturn getSecondaryQueuedChallenge(int);
	TodoReturn getSpecialRewardDescription(std::string, bool);
	TodoReturn getSpecialUnlockDescription(int, UnlockType, bool);
	TodoReturn isSpecialChestLiteUnlockable(std::string);
	TodoReturn removeErrorFromSpecialChests();
	TodoReturn resetSpecialStatAchievements();
	TodoReturn storeSecondaryQueuedChallenge(int, GJChallengeItem*);
	TodoReturn markLevelAsCompletedAndClaimed(GJGameLevel*);
	TodoReturn removeQueuedSecondaryChallenge(int);
	TodoReturn init();
	TodoReturn getStat(char const*);
	TodoReturn setStat(char const*, int);
	TodoReturn logCoins();
	TodoReturn tempClear();
	TodoReturn ~GameStatsManager();
}

[[link(android)]]
class GhostTrailEffect {
	TodoReturn runWithTarget(cocos2d::CCSprite*, float, float, float, float, bool);
	TodoReturn trailSnapshot(float);
	TodoReturn doBlendAdditive();
	TodoReturn draw();
	TodoReturn init();
	TodoReturn create();
	TodoReturn stopTrail();
	TodoReturn ~GhostTrailEffect();
}

[[link(android)]]
class GJAccountManager {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	TodoReturn isDLActive(char const*);
	TodoReturn getDLObject(char const*);
	TodoReturn sharedState();
	TodoReturn syncAccount(std::string);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn loginAccount(std::string, std::string);
	TodoReturn addDLToActive(char const*);
	TodoReturn addDLToActive(char const*, cocos2d::CCObject*);
	TodoReturn backupAccount(std::string);
	TodoReturn linkToAccount(std::string, std::string, int, int);
	TodoReturn getShaPassword(std::string);
	TodoReturn handleItDelayed(bool, std::string, std::string, GJHttpType);
	TodoReturn registerAccount(std::string, std::string, std::string);
	TodoReturn getAccountSyncURL();
	TodoReturn unlinkFromAccount();
	TodoReturn ProcessHttpRequest(std::string, std::string, std::string, GJHttpType);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn getAccountBackupURL();
	TodoReturn updateAccountSettings(int, int, int, std::string, std::string, std::string);
	TodoReturn onSyncAccountCompleted(std::string, std::string);
	TodoReturn onLoginAccountCompleted(std::string, std::string);
	TodoReturn onBackupAccountCompleted(std::string, std::string);
	TodoReturn onRegisterAccountCompleted(std::string, std::string);
	TodoReturn onGetAccountSyncURLCompleted(std::string, std::string);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onGetAccountBackupURLCompleted(std::string, std::string);
	TodoReturn onUpdateAccountSettingsCompleted(std::string, std::string);
	TodoReturn init();
	TodoReturn handleIt(bool, std::string, std::string, GJHttpType);
	TodoReturn ~GJAccountManager();
}

[[link(android)]]
class GJFlyGroundLayer {
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~GJFlyGroundLayer();
}

[[link(android)]]
class GJLevelScoreCell {
	TodoReturn loadFromScore(GJUserScore*);
	TodoReturn onViewProfile(cocos2d::CCObject*);
	TodoReturn updateBGColor(int);
	TodoReturn draw();
	TodoReturn init();
	TodoReturn GJLevelScoreCell(char const*, float, float);
	TodoReturn ~GJLevelScoreCell();
}

[[link(android)]]
class GJMoreGamesLayer {
	TodoReturn customSetup();
	TodoReturn getMoreGamesList();
	TodoReturn create();
	TodoReturn ~GJMoreGamesLayer();
}

[[link(android)]]
class GJRewardDelegate {
	TodoReturn rewardsStatusFailed();
	TodoReturn rewardsStatusFinished(int);
}

[[link(android)]]
class GJUnlockableItem {
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~GJUnlockableItem();
}

[[link(android)]]
class KeybindingsLayer {
	TodoReturn addKeyPair(char const*, char const*);
	TodoReturn onNextPage(cocos2d::CCObject*);
	TodoReturn onPrevPage(cocos2d::CCObject*);
	TodoReturn countForPage(int);
	TodoReturn layerForPage(int);
	TodoReturn nextPosition(int);
	TodoReturn keyBackClicked();
	TodoReturn objectsForPage(int);
	TodoReturn incrementCountForPage(int);
	TodoReturn init();
	TodoReturn create();
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn infoKey(int);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn pageKey(int);
	TodoReturn goToPage(int);
	TodoReturn layerKey(int);
	TodoReturn onToggle(cocos2d::CCObject*);
	TodoReturn objectKey(int);
	TodoReturn ~KeybindingsLayer();
}

[[link(android)]]
class LevelEditorLayer {
	TodoReturn addSpecial(GameObject*);
	TodoReturn addToGroup(GameObject*, int, bool);
	TodoReturn getGridPos(cocos2d::CCPoint);
	TodoReturn getSongIDs(bool&);
	TodoReturn onPlaytest();
	TodoReturn posForTime(float);
	TodoReturn postUpdate(float);
	TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, int);
	TodoReturn toggleGrid(bool);
	TodoReturn validGroup(GameObject*, bool);
	TodoReturn addKeyframe(KeyframeGameObject*);
	TodoReturn objectMoved(GameObject*);
	TodoReturn shouldBlend(int);
	TodoReturn updateColor(cocos2d::_ccColor3B&, float, int, bool, float, cocos2d::_ccHSVValue&, int, bool, EffectGameObject*, int, int);
	TodoReturn createObject(int, cocos2d::CCPoint, bool);
	TodoReturn handleAction(bool, cocos2d::CCArray*);
	TodoReturn removeObject(GameObject*, bool);
	TodoReturn stopPlayback();
	TodoReturn toggleGround(bool);
	TodoReturn updateEditor(float);
	TodoReturn addToRedoList(UndoObject*);
	TodoReturn addTouchPoint(cocos2d::CCPoint);
	TodoReturn addToUndoList(UndoObject*, bool);
	TodoReturn canPasteState();
	TodoReturn getAllObjects();
	TodoReturn getObjectRect(GameObject*, bool, bool);
	TodoReturn isLayerLocked(int);
	TodoReturn objectsInRect(cocos2d::CCRect, bool);
	TodoReturn removeSpecial(GameObject*);
	TodoReturn resetPlayback();
	TodoReturn updateOptions();
	TodoReturn addPlayerPoint(cocos2d::CCPoint);
	TodoReturn findGameObject(int);
	TodoReturn getLastObjectX();
	TodoReturn getLevelString();
	TodoReturn onStopPlaytest();
	TodoReturn recreateGroups();
	TodoReturn redoLastAction();
	TodoReturn refreshSpecial(GameObject*);
	TodoReturn runColorEffect(EffectGameObject*, int, float, float, bool);
	TodoReturn undoLastAction();
	TodoReturn addDelayedSpawn(EffectGameObject*, float);
	TodoReturn addPlayer2Point(cocos2d::CCPoint, bool);
	TodoReturn applyGroupState(GameObject*, GameObject*);
	TodoReturn copyObjectState(GameObject*);
	TodoReturn dirtifyTriggers();
	TodoReturn getLockedLayers();
	TodoReturn getSectionCount();
	TodoReturn getTriggerGroup(int);
	TodoReturn onPausePlaytest();
	TodoReturn pasteColorState(GameObject*, cocos2d::CCArray*);
	TodoReturn pasteGroupState(GameObject*, cocos2d::CCArray*);
	TodoReturn removeFromGroup(GameObject*, int);
	TodoReturn unlockAllLayers();
	TodoReturn updateDebugDraw();
	TodoReturn updateGridLayer();
	TodoReturn updateLevelFont(int);
	TodoReturn addExclusionList(cocos2d::CCArray*, cocos2d::CCDictionary*);
	TodoReturn addObjectsInRect(cocos2d::CCRect, bool, cocos2d::CCArray*, cocos2d::CCArray*);
	TodoReturn addObjectToGroup(GameObject*, int);
	TodoReturn clearTouchPoints();
	TodoReturn getNextFreeSFXID(cocos2d::CCArray*);
	TodoReturn objectAtPosition(cocos2d::CCPoint);
	TodoReturn onResumePlaytest();
	TodoReturn playerTookDamage(PlayerObject*);
	TodoReturn removeAllObjects();
	TodoReturn resetSPTriggered();
	TodoReturn toggleBackground(bool);
	TodoReturn updateEditorMode();
	TodoReturn updateVisibility(float);
	TodoReturn clearPlayerPoints();
	TodoReturn copyParticleState(ParticleGameObject*);
	TodoReturn didRotateGameplay();
	TodoReturn getNextFreeItemID(cocos2d::CCArray*);
	TodoReturn getRelativeOffset(GameObject*);
	TodoReturn objectsAtPosition(cocos2d::CCPoint);
	TodoReturn resetObjectVector();
	TodoReturn spawnGroupPreview(int, float, float, float, float, float, bool, bool);
	TodoReturn timeObjectChanged();
	TodoReturn updateBlendValues();
	TodoReturn updateGameObjects();
	TodoReturn updateObjectLabel(GameObject*);
	TodoReturn updatePreviewAnim();
	TodoReturn findStartPosObject();
	TodoReturn getNextFreeBlockID(cocos2d::CCArray*);
	TodoReturn getNextFreeGroupID(cocos2d::CCArray*);
	TodoReturn pasteParticleState(ParticleGameObject*, cocos2d::CCArray*);
	TodoReturn resetMovingObjects();
	TodoReturn resetToggledGroups();
	TodoReturn saveEditorPosition(cocos2d::CCPoint&, int);
	TodoReturn toggleGroupPreview(int, bool);
	TodoReturn updateObjectColors(cocos2d::CCArray*);
	TodoReturn addObjectFromVector(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn applyAttributeState(GameObject*, GameObject*);
	TodoReturn checkpointActivated(CheckpointGameObject*);
	TodoReturn claimCustomParticle(std::string const&, cocos2d::ParticleStruct const&, int, int, int, bool);
	TodoReturn getDelayedSpawnNode();
	TodoReturn getNextColorChannel();
	TodoReturn pasteAttributeState(GameObject*, cocos2d::CCArray*);
	TodoReturn stopTriggersInGroup(int, float);
	TodoReturn updateObjectSection(GameObject*);
	TodoReturn updateToggledGroups();
	TodoReturn addObjectsAtPosition(cocos2d::CCPoint, cocos2d::CCArray*, cocos2d::CCArray*);
	TodoReturn breakApartTextObject(TextGameObject*);
	TodoReturn getSelectedEffectPos();
	TodoReturn levelSettingsUpdated();
	TodoReturn reverseObjectChanged(EffectGameObject*);
	TodoReturn triggerFollowCommand(EffectGameObject*);
	TodoReturn triggerRotateCommand(EffectGameObject*);
	TodoReturn tryUpdateSpeedObject(EffectGameObject*, bool);
	TodoReturn typeExistsAtPosition(int, cocos2d::CCPoint, bool, bool, float);
	TodoReturn activatedAudioTrigger(SFXTriggerGameObject*);
	TodoReturn activateTriggerEffect(EffectGameObject*, float, float, float, bool);
	TodoReturn getNextFreeGradientID(cocos2d::CCArray*);
	TodoReturn getNextFreeSFXGroupID(cocos2d::CCArray*);
	TodoReturn sortBatchnodeChildren(float);
	TodoReturn toggleLockActiveLayer();
	TodoReturn transferDefaultColors(GJEffectManager*, GJEffectManager*);
	TodoReturn unclaimCustomParticle(std::string const&, cocos2d::CCParticleSystemQuad*);
	TodoReturn updateGridLayerParent();
	TodoReturn updateKeyframeObjects();
	TodoReturn updatePreviewParticle(ParticleGameObject*);
	TodoReturn createObjectsFromSetup(std::string&);
	TodoReturn getNextFreeEditorLayer(cocos2d::CCArray*);
	TodoReturn getSavedEditorPosition(int);
	TodoReturn getSelectedEditorOrder();
	TodoReturn removeAllObjectsOfType(int);
	TodoReturn resetDelayedSpawnNodes();
	TodoReturn updatePreviewParticles();
	TodoReturn addPlayerCollisionBlock();
	TodoReturn createObjectsFromString(std::string const&, bool, bool);
	TodoReturn getNextFreeAreaEffectID(cocos2d::CCArray*);
	TodoReturn getNextFreeEnterChannel(cocos2d::CCArray*);
	TodoReturn getNextFreeOrderChannel(cocos2d::CCArray*);
	TodoReturn getSavedEditorPositions();
	TodoReturn getSelectedOrderChannel();
	TodoReturn quickUpdateAllPositions();
	TodoReturn resetEffectTriggerOptim(GameObject*, cocos2d::CCArray*);
	TodoReturn fastUpdateDisabledGroups();
	TodoReturn forceShowSelectedObjects(bool);
	TodoReturn fullUpdateDisabledGroups();
	TodoReturn manualUpdateObjectColors(GameObject*);
	TodoReturn processLoadedMoveActions();
	TodoReturn resetUnusedColorChannels();
	TodoReturn updateKeyframeVisibility(bool);
	TodoReturn duplicateKeyframeAnimation(int);
	TodoReturn removePlayerCollisionBlock();
	TodoReturn rotationForSlopeNearObject(GameObject*);
	TodoReturn triggerPlayerFollowCommand(EffectGameObject*);
	TodoReturn resetToggledGroupsAndObjects();
	TodoReturn updateDisabledObjectsLastPos(cocos2d::CCArray*);
	TodoReturn reverseKeyframeAnimationOrder(int);
	TodoReturn updateAnimateOnTriggerObjects(bool);
	TodoReturn draw();
	TodoReturn init(GJGameLevel*, bool);
	TodoReturn scene(GJGameLevel*, bool);
	TodoReturn create(GJGameLevel*, bool);
	TodoReturn getSFXIDs();
	TodoReturn hasAction(bool);
	TodoReturn updateArt(float);
	TodoReturn ~LevelEditorLayer();
}

[[link(android)]]
class LevelLeaderboard {
	TodoReturn loadScores();
	TodoReturn onChangeMode(cocos2d::CCObject*);
	TodoReturn onChangeType(cocos2d::CCObject*);
	TodoReturn getLocalScores();
	TodoReturn keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn getSpriteButton(std::string, void (cocos2d::CCObject::*)(cocos2d::CCObject*), cocos2d::CCMenu*, float, cocos2d::CCPoint, int);
	TodoReturn setupLeaderboard(cocos2d::CCArray*);
	TodoReturn deleteLocalScores();
	TodoReturn reloadLeaderboard(LevelLeaderboardType, LevelLeaderboardMode);
	TodoReturn onDeleteLocalScores(cocos2d::CCObject*);
	TodoReturn loadLeaderboardFailed(char const*);
	TodoReturn updateUserScoreFailed();
	TodoReturn loadLeaderboardFinished(cocos2d::CCArray*, char const*);
	TodoReturn updateUserScoreFinished();
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode);
	TodoReturn show();
	TodoReturn create(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onUpdate(cocos2d::CCObject*);
	TodoReturn isCorrect(char const*);
	TodoReturn ~LevelLeaderboard();
}

[[link(android)]]
class LevelSearchLayer {
	TodoReturn getDiffKey(int);
	TodoReturn getTimeKey(int);
	TodoReturn onFollowed(cocos2d::CCObject*);
	TodoReturn onTrending(cocos2d::CCObject*);
	TodoReturn toggleStar(cocos2d::CCObject*);
	TodoReturn toggleTime(cocos2d::CCObject*);
	TodoReturn onMostLikes(cocos2d::CCObject*);
	TodoReturn onStarAward(cocos2d::CCObject*);
	TodoReturn onSuggested(cocos2d::CCObject*);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn clearFilters();
	TodoReturn onMostRecent(cocos2d::CCObject*);
	TodoReturn onSearchMode(cocos2d::CCObject*);
	TodoReturn onSearchUser(cocos2d::CCObject*);
	TodoReturn onLatestStars(cocos2d::CCObject*);
	TodoReturn onMoreOptions(cocos2d::CCObject*);
	TodoReturn toggleTimeNum(int, bool);
	TodoReturn getLevelLenKey();
	TodoReturn keyBackClicked();
	TodoReturn onSpecialDemon(cocos2d::CCObject*);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn getSearchObject(SearchType, std::string);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn getSearchDiffKey();
	TodoReturn onMostDownloaded(cocos2d::CCObject*);
	TodoReturn toggleDifficulty(cocos2d::CCObject*);
	TodoReturn onClearFreeSearch(cocos2d::CCObject*);
	TodoReturn updateSearchLabel(char const*);
	TodoReturn confirmClearFilters(cocos2d::CCObject*);
	TodoReturn toggleDifficultyNum(int, bool);
	TodoReturn demonFilterSelectClosed(int);
	TodoReturn init(int);
	TodoReturn scene(int);
	TodoReturn create(int);
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onMagic(cocos2d::CCObject*);
	TodoReturn onSearch(cocos2d::CCObject*);
	TodoReturn checkDiff(int);
	TodoReturn checkTime(int);
	TodoReturn onFriends(cocos2d::CCObject*);
	TodoReturn ~LevelSearchLayer();
}

[[link(android)]]
class LevelSelectLayer {
	TodoReturn onDownload(cocos2d::CCObject*);
	TodoReturn colorForPage(int);
	TodoReturn getColorValue(int, int, float);
	TodoReturn keyBackClicked();
	TodoReturn scrollLayerMoved(cocos2d::CCPoint);
	TodoReturn updatePageWithObject(cocos2d::CCObject*, cocos2d::CCObject*);
	TodoReturn init(int);
	TodoReturn scene(int);
	TodoReturn create(int);
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn onNext(cocos2d::CCObject*);
	TodoReturn onPlay(cocos2d::CCObject*);
	TodoReturn onPrev(cocos2d::CCObject*);
	TodoReturn keyDown(cocos2d::enumKeyCodes);
	TodoReturn tryShowAd();
	TodoReturn ~LevelSelectLayer();
}

[[link(android)]]
class LikeItemDelegate {
	TodoReturn likedItem(LikeItemType, int, bool);
}

[[link(android)]]
class MoreOptionsLayer {
	TodoReturn onGPSignIn(cocos2d::CCObject*);
	TodoReturn onNextPage(cocos2d::CCObject*);
	TodoReturn onParental(cocos2d::CCObject*);
	TodoReturn onPrevPage(cocos2d::CCObject*);
	TodoReturn onFMODDebug(cocos2d::CCObject*);
	TodoReturn onGPSignOut(cocos2d::CCObject*);
	TodoReturn countForPage(int);
	TodoReturn layerForPage(int);
	TodoReturn nextPosition(int);
	TodoReturn onKeybindings(cocos2d::CCObject*);
	TodoReturn onSongBrowser(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn objectsForPage(int);
	TodoReturn textInputReturn(CCTextInputNode*);
	TodoReturn offsetToNextPage();
	TodoReturn googlePlaySignedIn();
	TodoReturn incrementCountForPage(int);
	TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	TodoReturn dropDownLayerWillClose(GJDropDownLayer*);
	TodoReturn init();
	TodoReturn create();
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn infoKey(int);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn pageKey(int);
	TodoReturn goToPage(int);
	TodoReturn layerKey(int);
	TodoReturn onToggle(cocos2d::CCObject*);
	TodoReturn toggleGP();
	TodoReturn addToggle(char const*, char const*, char const*);
	TodoReturn objectKey(int);
	TodoReturn ~MoreOptionsLayer();
}

[[link(android)]]
class MultiplayerLayer {
	TodoReturn keyBackClicked();
	TodoReturn init();
	TodoReturn scene();
	TodoReturn create();
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onBtn1(cocos2d::CCObject*);
	TodoReturn onBtn2(cocos2d::CCObject*);
	TodoReturn ~MultiplayerLayer();
}

[[link(android)]]
class NumberInputLayer {
	TodoReturn deleteLast();
	TodoReturn inputNumber(int);
	TodoReturn keyBackClicked();
	TodoReturn updateNumberState();
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init();
	TodoReturn create();
	TodoReturn onDone(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onNumber(cocos2d::CCObject*);
	TodoReturn ~NumberInputLayer();
}

[[link(android)]]
class PlayerCheckpoint {
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~PlayerCheckpoint();
}

[[link(android)]]
class SelectEventLayer {
	TodoReturn nextPosition();
	TodoReturn keyBackClicked();
	TodoReturn onCustomToggleTriggerValue(cocos2d::CCObject*);
	TodoReturn init(SetupEventLinkPopup*, std::set<int, std::less<int>, std::allocator<int> >&);
	TodoReturn create(SetupEventLinkPopup*, std::set<int, std::less<int>, std::allocator<int> >&);
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn addToggle(int, std::string);
	TodoReturn ~SelectEventLayer();
}

[[link(android)]]
class SetTargetIDLayer {
	TodoReturn valueDidChange(int, float);
	TodoReturn determineStartValues();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*, std::string, std::string, int, int, int);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*, std::string, std::string, int, int, int);
	TodoReturn ~SetTargetIDLayer();
}

[[link(android)]]
class SetupPortalPopup {
	TodoReturn onUnboundMode(cocos2d::CCObject*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn updateCameraEasing();
	TodoReturn updateCameraPadding();
	TodoReturn determineStartValues();
	TodoReturn onEditCameraSettings(cocos2d::CCObject*);
	TodoReturn updateItemVisibility();
	TodoReturn updateCameraEasingLabel();
	TodoReturn updateCameraPaddingLabel();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupPortalPopup();
}

[[link(android)]]
class SetupReverbPopup {
	TodoReturn updateReverbLabel();
	TodoReturn init(SFXTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn create(SFXTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn onPlay(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onReverb(cocos2d::CCObject*);
	TodoReturn ~SetupReverbPopup();
}

[[link(android)]]
class SetupRotatePopup {
	TodoReturn onCustomToggleTriggerValue(cocos2d::CCObject*);
	TodoReturn init(EnhancedGameObject*, cocos2d::CCArray*);
	TodoReturn create(EnhancedGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupRotatePopup();
}

[[link(android)]]
class ShaderGameObject {
	TodoReturn customSetup();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn ~ShaderGameObject();
}

[[link(android)]]
class SliderTouchLogic {
	TodoReturn setRotated(bool);
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn setMaxOffset(float);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(cocos2d::CCNode*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, char const*, float);
	TodoReturn create(cocos2d::CCNode*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, char const*, float);
	TodoReturn ~SliderTouchLogic();
}

[[link(android)]]
class SongOptionsLayer {
	TodoReturn onPlayback(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn updatePlaybackBtn();
	TodoReturn init(CustomSongDelegate*);
	TodoReturn create(CustomSongDelegate*);
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onFadeIn(cocos2d::CCObject*);
	TodoReturn onFadeOut(cocos2d::CCObject*);
	TodoReturn ~SongOptionsLayer();
}

[[link(android)]]
class TextAreaDelegate {
	TodoReturn fadeInTextFinished(TextArea*);
}

[[link(android)]]
class TextStyleSection {
	TodoReturn createDelaySection(int, float);
	TodoReturn createShakeSection(int, int, int, int);
	TodoReturn createColoredSection(cocos2d::_ccColor3B, int, int);
	TodoReturn createInstantSection(int, int, float);
	TodoReturn init(int, int, TextStyleType);
	TodoReturn create(int, int, TextStyleType);
	TodoReturn ~TextStyleSection();
}

[[link(android)]]
class UserInfoDelegate {
	TodoReturn userInfoChanged(GJUserScore*);
	TodoReturn getUserInfoFailed(int);
	TodoReturn getUserInfoFinished(GJUserScore*);
}

[[link(android)]]
class UserListDelegate {
	TodoReturn forceReloadList(UserListType);
	TodoReturn userListChanged(cocos2d::CCArray*, UserListType);
	TodoReturn getUserListFailed(UserListType, GJErrorCode);
	TodoReturn getUserListFinished(cocos2d::CCArray*, UserListType);
}

[[link(android)]]
class WorldSelectLayer {
	TodoReturn setupWorlds();
	TodoReturn colorForPage(int);
	TodoReturn onFreeLevels(cocos2d::CCObject*);
	TodoReturn updateArrows();
	TodoReturn getColorValue(int, int, float);
	TodoReturn keyBackClicked();
	TodoReturn unblockButtons();
	TodoReturn scrollLayerMoved(cocos2d::CCPoint);
	TodoReturn showCompleteDialog();
	TodoReturn animateInActiveIsland();
	TodoReturn scrollLayerScrolledToPage(BoomScrollLayer*, int);
	TodoReturn scrollLayerWillScrollToPage(BoomScrollLayer*, int);
	TodoReturn init(int);
	TodoReturn scene(int);
	TodoReturn create(int);
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onExit();
	TodoReturn onNext(cocos2d::CCObject*);
	TodoReturn onPrev(cocos2d::CCObject*);
	TodoReturn goToPage(int, bool);
	TodoReturn onGarage(cocos2d::CCObject*);
	TodoReturn tryShowAd();
	TodoReturn ~WorldSelectLayer();
}

[[link(android)]]
class AccountLoginLayer {
	TodoReturn resetLabel(int);
	TodoReturn resetLabels();
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateLabel(AccountError);
	TodoReturn disableNodes();
	TodoReturn onForgotUser(cocos2d::CCObject*);
	TodoReturn hideLoadingUI();
	TodoReturn showLoadingUI();
	TodoReturn keyBackClicked();
	TodoReturn createTextInput(cocos2d::CCPoint, cocos2d::CCSize, char const*, int);
	TodoReturn createTextLabel(cocos2d::CCPoint, char const*, cocos2d::CCSize);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn onForgotPassword(cocos2d::CCObject*);
	TodoReturn loginAccountFailed(AccountError);
	TodoReturn createTextBackground(cocos2d::CCPoint, char const*, cocos2d::CCSize);
	TodoReturn loginAccountFinished(int, int);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(std::string);
	TodoReturn create(std::string);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onSubmit(cocos2d::CCObject*);
	TodoReturn toggleUI(bool);
	TodoReturn ~AccountLoginLayer();
}

[[link(android)]]
class AchievementsLayer {
	TodoReturn onNextPage(cocos2d::CCObject*);
	TodoReturn onPrevPage(cocos2d::CCObject*);
	TodoReturn customSetup();
	TodoReturn setupPageInfo(int, int, int);
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	TodoReturn create();
	TodoReturn keyDown(cocos2d::enumKeyCodes);
	TodoReturn loadPage(int);
	TodoReturn ~AchievementsLayer();
}

[[link(android)]]
class AudioEffectsLayer {
	TodoReturn getBGSquare();
	TodoReturn triggerEffect(float);
	TodoReturn resetAudioVars();
	TodoReturn updateTweenAction(float, char const*);
	TodoReturn draw();
	TodoReturn init(std::string);
	TodoReturn create(std::string);
	TodoReturn audioStep(float);
	TodoReturn goingDown();
	TodoReturn ~AudioEffectsLayer();
}

[[link(android)]]
class CCMenuItemToggler {
	TodoReturn activeItem();
	TodoReturn setEnabled(bool);
	TodoReturn unselected();
	TodoReturn normalTouch(cocos2d::CCObject*);
	TodoReturn setSizeMult(float);
	TodoReturn selectedTouch(cocos2d::CCObject*);
	TodoReturn init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*));
	TodoReturn create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*));
	TodoReturn toggle(bool);
	TodoReturn activate();
	TodoReturn selected();
	TodoReturn ~CCMenuItemToggler();
}

[[link(android)]]
class CCSpriteGrayscale {
	TodoReturn shaderBody();
	TodoReturn getShaderName();
	TodoReturn createWithTexture(cocos2d::CCTexture2D*);
	TodoReturn createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(std::string const&);
	TodoReturn create(std::string const&);
	TodoReturn create(std::string const&, cocos2d::CCRect const&);
	TodoReturn ~CCSpriteGrayscale();
}

[[link(android)]]
class ColorActionSprite {
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~ColorActionSprite();
}

[[link(android)]]
class CustomSFXDelegate {
	TodoReturn getActiveSFXID();
	TodoReturn overridePlaySFX(SFXInfoObject*);
	TodoReturn sfxObjectSelected(SFXInfoObject*);
}

[[link(android)]]
class DungeonBarsSprite {
	TodoReturn animateOutBars();
	TodoReturn init();
	TodoReturn visit();
	TodoReturn create();
	TodoReturn ~DungeonBarsSprite();
}

[[link(android)]]
class EditTriggersPopup {
	TodoReturn determineStartValues();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~EditTriggersPopup();
}

[[link(android)]]
class EnterEffectObject {
	TodoReturn customSetup();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn resetEnterAnimValues();
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn ~EnterEffectObject();
}

[[link(android)]]
class ExplodeItemSprite {
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~ExplodeItemSprite();
}

[[link(android)]]
class GJAccountDelegate {
	TodoReturn accountStatusChanged();
}

[[link(android)]]
class GJColorSetupLayer {
	TodoReturn keyBackClicked();
	TodoReturn colorSelectClosed(cocos2d::CCNode*);
	TodoReturn updateSpriteColor(ColorChannelSprite*, cocos2d::CCLabelBMFont*, int);
	TodoReturn updateSpriteColors();
	TodoReturn init(LevelSettingsObject*);
	TodoReturn create(LevelSettingsObject*);
	TodoReturn onPage(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onColor(cocos2d::CCObject*);
	TodoReturn showPage(int);
	TodoReturn ~GJColorSetupLayer();
}

[[link(android)]]
class GJPathRewardPopup {
	TodoReturn closePopup();
	TodoReturn keyBackClicked();
	TodoReturn init(int);
	TodoReturn create(int);
	TodoReturn onClaim(cocos2d::CCObject*);
	TodoReturn ~GJPathRewardPopup();
}

[[link(android)]]
class GJRotationControl {
	TodoReturn finishTouch();
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn updateSliderPosition(cocos2d::CCPoint);
	TodoReturn draw();
	TodoReturn init();
	TodoReturn create();
	TodoReturn setAngle(float);
	TodoReturn ~GJRotationControl();
}

[[link(android)]]
class GooglePlayManager {
	TodoReturn sharedState();
	TodoReturn googlePlaySignedIn();
	TodoReturn init();
	TodoReturn ~GooglePlayManager();
}

[[link(android)]]
class HSVWidgetDelegate {
	TodoReturn hsvChanged(ConfigureHSVWidget*);
	TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::_ccHSVValue);
}

[[link(android)]]
class LeaderboardsLayer {
	TodoReturn onCreators(cocos2d::CCObject*);
	TodoReturn refreshTabs();
	TodoReturn keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn toggleTabButtons();
	TodoReturn selectLeaderboard(LeaderboardState);
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	TodoReturn loadLeaderboardFailed(char const*);
	TodoReturn updateUserScoreFailed();
	TodoReturn loadLeaderboardFinished(cocos2d::CCArray*, char const*);
	TodoReturn updateUserScoreFinished();
	TodoReturn init(LeaderboardState);
	TodoReturn onTop(cocos2d::CCObject*);
	TodoReturn scene(LeaderboardState);
	TodoReturn create(LeaderboardState);
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn onWeek(cocos2d::CCObject*);
	TodoReturn onGlobal(cocos2d::CCObject*);
	TodoReturn isCorrect(char const*);
	TodoReturn setupTabs();
	TodoReturn ~LeaderboardsLayer();
}

[[link(android)]]
class LevelBrowserLayer {
	TodoReturn onGoToPage(cocos2d::CCObject*);
	TodoReturn onNextPage(cocos2d::CCObject*);
	TodoReturn onPrevPage(cocos2d::CCObject*);
	TodoReturn onDeleteAll(cocos2d::CCObject*);
	TodoReturn onFavorites(cocos2d::CCObject*);
	TodoReturn onLocalMode(cocos2d::CCObject*);
	TodoReturn onSavedMode(cocos2d::CCObject*);
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn onGoToFolder(cocos2d::CCObject*);
	TodoReturn createNewList(cocos2d::CCObject*);
	TodoReturn onClearSearch(cocos2d::CCObject*);
	TodoReturn setupPageInfo(std::string, char const*);
	TodoReturn createNewLevel(cocos2d::CCObject*);
	TodoReturn deleteSelected();
	TodoReturn getSearchTitle();
	TodoReturn keyBackClicked();
	TodoReturn onGoToLastPage(cocos2d::CCObject*);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn setSearchObject(GJSearchObject*);
	TodoReturn updatePageLabel();
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn loadLevelsFailed(char const*, int);
	TodoReturn onDeleteSelected(cocos2d::CCObject*);
	TodoReturn onMyOnlineLevels(cocos2d::CCObject*);
	TodoReturn reloadAllObjects();
	TodoReturn setIDPopupClosed(SetIDPopup*, int);
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	TodoReturn updateLevelsLabel();
	TodoReturn updateResultArray(cocos2d::CCArray*);
	TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	TodoReturn onToggleAllObjects(cocos2d::CCObject*);
	TodoReturn setTextPopupClosed(SetTextPopup*, std::string);
	TodoReturn shareCommentClosed(std::string, ShareCommentLayer*);
	TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	TodoReturn onRemoveAllFavorites(cocos2d::CCObject*);
	TodoReturn createNewSmartTemplate(cocos2d::CCObject*);
	TodoReturn getItemsMatchingSearch(cocos2d::CCArray*, std::string, GJSearchObject*);
	TodoReturn onEnterTransitionDidFinish();
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(GJSearchObject*);
	TodoReturn show();
	TodoReturn onNew(cocos2d::CCObject*);
	TodoReturn scene(GJSearchObject*);
	TodoReturn create(GJSearchObject*);
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onHelp(cocos2d::CCObject*);
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn keyDown(cocos2d::enumKeyCodes);
	TodoReturn onEnter();
	TodoReturn onSaved(cocos2d::CCObject*);
	TodoReturn loadPage(GJSearchObject*);
	TodoReturn onSearch(cocos2d::CCObject*);
	TodoReturn exitLayer(cocos2d::CCObject*);
	TodoReturn isCorrect(char const*);
	TodoReturn onRefresh(cocos2d::CCObject*);
	TodoReturn ~LevelBrowserLayer();
}

[[link(android)]]
class LevelFeatureLayer {
	TodoReturn updateStars();
	TodoReturn onToggleEpic(cocos2d::CCObject*);
	TodoReturn onSetEpicOnly(cocos2d::CCObject*);
	TodoReturn onSetFeatured(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn onRemoveValues(cocos2d::CCObject*);
	TodoReturn init(int);
	TodoReturn onUp(cocos2d::CCObject*);
	TodoReturn onUp2(cocos2d::CCObject*);
	TodoReturn create(int);
	TodoReturn onDown(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onDown2(cocos2d::CCObject*);
	TodoReturn ~LevelFeatureLayer();
}

[[link(android)]]
class LevelOptionsLayer {
	TodoReturn onSettings(cocos2d::CCObject*);
	TodoReturn setupOptions();
	TodoReturn valueDidChange(int, float);
	TodoReturn init(LevelSettingsObject*);
	TodoReturn create(LevelSettingsObject*);
	TodoReturn getValue(int);
	TodoReturn didToggle(int);
	TodoReturn ~LevelOptionsLayer();
}

[[link(android)]]
class LocalLevelManager {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn sharedState();
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn reorderLevels();
	TodoReturn moveLevelToTop(GJGameLevel*);
	TodoReturn getCreatedLists(int);
	TodoReturn getCreatedLevels(int);
	TodoReturn updateLevelOrder();
	TodoReturn getAllLevelsInDict();
	TodoReturn getMainLevelString(int);
	TodoReturn updateLevelRevision();
	TodoReturn getAllLevelsWithName(std::string);
	TodoReturn getLevelsInNameGroups();
	TodoReturn markLevelsAsUnmodified();
	TodoReturn tryLoadMainLevelString(int);
	TodoReturn init();
	TodoReturn firstLoad();
	TodoReturn ~LocalLevelManager();
}

[[link(android)]]
class MultiTriggerPopup {
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn ~MultiTriggerPopup();
}

[[link(android)]]
class MusicArtistObject {
	TodoReturn init(int, std::string, std::string, std::string);
	TodoReturn create(int, std::string, std::string, std::string);
	TodoReturn ~MusicArtistObject();
}

[[link(android)]]
class MusicSearchResult {
	TodoReturn stateChanged(OptionsObject*);
	TodoReturn updateObjects(AudioSortType);
	TodoReturn updateObjects();
	TodoReturn applyTagFilters(cocos2d::CCArray*);
	TodoReturn updateFutureCount(cocos2d::CCArray*, cocos2d::CCArray*);
	TodoReturn applyArtistFilters(cocos2d::CCArray*);
	TodoReturn createTagFilterObjects();
	TodoReturn getFilesMatchingSearch(cocos2d::CCArray*, std::string);
	TodoReturn createArtistFilterObjects();
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~MusicSearchResult();
}

[[link(android)]]
class PromoInterstitial {
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn keyBackClicked();
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn init(bool);
	TodoReturn show();
	TodoReturn setup();
	TodoReturn create(bool);
	TodoReturn onClick(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~PromoInterstitial();
}

[[link(android)]]
class PulseEffectAction {
	TodoReturn isFinished();
	TodoReturn valueForDelta(float, float, float, float);
	TodoReturn step(float);
}

[[link(android)]]
class PurchaseItemPopup {
	TodoReturn onPurchase(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn init(GJStoreItem*);
	TodoReturn create(GJStoreItem*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~PurchaseItemPopup();
}

[[link(android)]]
class RateLevelDelegate {
	TodoReturn rateLevelClosed();
}

[[link(android)]]
class RewardUnlockLayer {
	TodoReturn playDropSound();
	TodoReturn keyBackClicked();
	TodoReturn readyToCollect(GJRewardItem*);
	TodoReturn playLabelEffect(int, int, cocos2d::CCSprite*, cocos2d::CCPoint, float);
	TodoReturn showCloseButton();
	TodoReturn currencyWillExit(CurrencyRewardLayer*);
	TodoReturn playRewardEffect();
	TodoReturn connectionTimeout();
	TodoReturn showCollectReward(GJRewardItem*);
	TodoReturn labelEnterFinishedO(cocos2d::CCObject*);
	TodoReturn init(int, RewardsPage*);
	TodoReturn step2();
	TodoReturn step3();
	TodoReturn create(int, RewardsPage*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~RewardUnlockLayer();
}

[[link(android)]]
class SecretNumberLayer {
	TodoReturn playNumberEffect(int);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~SecretNumberLayer();
}

[[link(android)]]
class SelectArtDelegate {
	TodoReturn selectArtClosed(SelectArtLayer*);
}

[[link(android)]]
class SetupOpacityPopup {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateOpacity();
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateTargetID();
	TodoReturn onTargetIDArrow(cocos2d::CCObject*);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn updateOpacityLabel();
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupOpacityPopup();
}

[[link(android)]]
class SetupSFXEditPopup {
	TodoReturn init(SFXTriggerGameObject*, cocos2d::CCArray*, bool);
	TodoReturn create(SFXTriggerGameObject*, cocos2d::CCArray*, bool);
	TodoReturn ~SetupSFXEditPopup();
}

[[link(android)]]
class SetupTriggerPopup {
	TodoReturn getObjects();
	TodoReturn onEaseRate(cocos2d::CCObject*);
	TodoReturn pageChanged();
	TodoReturn sliderBegan(Slider*);
	TodoReturn sliderEnded(Slider*);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn toggleGroup(int, bool);
	TodoReturn updateLabel(int, std::string);
	TodoReturn updateValue(int, float);
	TodoReturn addInfoLabel(std::string, float, cocos2d::CCPoint, int, int);
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn onPlusButton(cocos2d::CCObject*);
	TodoReturn updateSlider(int);
	TodoReturn updateSlider(int, float);
	TodoReturn valueChanged(int, float);
	TodoReturn addHelpButton(std::string, std::string, float);
	TodoReturn addCloseButton(std::string);
	TodoReturn keyBackClicked();
	TodoReturn onCustomButton(cocos2d::CCObject*);
	TodoReturn onDisableValue(cocos2d::CCObject*);
	TodoReturn onMultiTrigger(cocos2d::CCObject*);
	TodoReturn valueDidChange(int, float);
	TodoReturn addObjectToPage(cocos2d::CCObject*, int);
	TodoReturn closeInputNodes();
	TodoReturn getTriggerValue(int, GameObject*);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputReturn(CCTextInputNode*);
	TodoReturn updateEaseLabel();
	TodoReturn updateInputNode(int, float);
	TodoReturn addObjectsToPage(cocos2d::CCArray*, int);
	TodoReturn addObjectToGroup(cocos2d::CCObject*, int);
	TodoReturn createPlusButton(int, cocos2d::CCPoint, float, std::string, int, int);
	TodoReturn getPageContainer(int);
	TodoReturn onCustomEaseRate(cocos2d::CCObject*);
	TodoReturn onTouchTriggered(cocos2d::CCObject*);
	TodoReturn shouldLimitValue(int);
	TodoReturn toggleLimitValue(int, bool);
	TodoReturn togglePageArrows(bool);
	TodoReturn triggerArrowLeft(cocos2d::CCObject*);
	TodoReturn updateInputValue(int, float&);
	TodoReturn updateToggleItem(int, bool);
	TodoReturn valuePopupClosed(ConfigureValuePopup*, float);
	TodoReturn addObjectsToGroup(cocos2d::CCArray*, int);
	TodoReturn createPageButtons(float, int);
	TodoReturn getGroupContainer(int);
	TodoReturn getMaxSliderValue(int);
	TodoReturn getMinSliderValue(int);
	TodoReturn getTruncatedValue(float, int);
	TodoReturn onCustomEaseArrow(int, bool);
	TodoReturn setMaxSliderValue(float, int);
	TodoReturn setMinSliderValue(float, int);
	TodoReturn triggerArrowRight(cocos2d::CCObject*);
	TodoReturn updateEditorLabel();
	TodoReturn createCustomButton(int, std::string, std::string, cocos2d::CCPoint, float, float, bool, int, int);
	TodoReturn createToggleButton(std::string, void (cocos2d::CCObject::*)(cocos2d::CCObject*), bool, cocos2d::CCPoint);
	TodoReturn createValueControl(int, std::string, cocos2d::CCPoint, float, float, float);
	TodoReturn onSpawnedByTrigger(cocos2d::CCObject*);
	TodoReturn onCustomEaseArrowUp(cocos2d::CCObject*);
	TodoReturn resetDisabledValues();
	TodoReturn triggerArrowChanged(int, bool);
	TodoReturn updateEaseRateLabel();
	TodoReturn updateValueControls(int, float);
	TodoReturn createEasingControls(cocos2d::CCPoint, float, int, int);
	TodoReturn determineStartValues();
	TodoReturn onToggleTriggerValue(cocos2d::CCObject*);
	TodoReturn removeObjectFromPage(cocos2d::CCObject*, int);
	TodoReturn toggleDisableButtons(bool);
	TodoReturn triggerSliderChanged(cocos2d::CCObject*);
	TodoReturn updateInputNodeLabel(int, std::string);
	TodoReturn updateTouchTriggered();
	TodoReturn onCustomEaseArrowDown(cocos2d::CCObject*);
	TodoReturn removeObjectFromGroup(cocos2d::CCObject*, int);
	TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	TodoReturn updateCustomEaseLabel(int, int);
	TodoReturn updateMultiTriggerBtn();
	TodoReturn getTruncatedValueByTag(int, float);
	TodoReturn refreshGroupVisibility();
	TodoReturn updateSpawnedByTrigger();
	TodoReturn createMultiTriggerItems(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);
	TodoReturn createToggleValueControl(int, std::string, cocos2d::CCPoint, bool, int, int, float);
	TodoReturn toggleEaseRateVisibility();
	TodoReturn createValueControlWArrows(int, std::string, cocos2d::CCPoint, float);
	TodoReturn updateCustomEaseRateLabel(int, float);
	TodoReturn updateCustomToggleTrigger(int, bool);
	TodoReturn createCustomEasingControls(std::string, cocos2d::CCPoint, float, int, int, int, int);
	TodoReturn createValueControlAdvanced(int, std::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float, float, int, int, GJInputStyle, int, bool);
	TodoReturn onCustomToggleTriggerValue(cocos2d::CCObject*);
	TodoReturn updateDefaultTriggerValues();
	TodoReturn triggerSliderValueFromValue(int, float);
	TodoReturn triggerValueFromSliderValue(int, float);
	TodoReturn createMultiTriggerItemsCorner();
	TodoReturn createCustomToggleValueControl(int, bool, bool, std::string, cocos2d::CCPoint, bool, int, int);
	TodoReturn createMultiTriggerItemsDefault();
	TodoReturn toggleCustomEaseRateVisibility(int, int);
	TodoReturn createToggleValueControlAdvanced(int, std::string, cocos2d::CCPoint, bool, int, int, float, float, float, cocos2d::CCPoint);
	TodoReturn createMultiTriggerItemsDefaultVertical();
	TodoReturn createMultiTriggerItemsDefaultHorizontal();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*, float, float, int);
	TodoReturn show();
	TodoReturn create(float, float);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*, float, float, int);
	TodoReturn onEase(cocos2d::CCObject*);
	TodoReturn onPage(cocos2d::CCObject*);
	TodoReturn hideAll();
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn addTitle(std::string);
	TodoReturn getValue(int);
	TodoReturn goToPage(int, bool);
	TodoReturn preSetup();
	TodoReturn toggleBG(bool);
	TodoReturn postSetup();
	TodoReturn ~SetupTriggerPopup();
}

[[link(android)]]
class ShareCommentLayer {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn keyBackClicked();
	TodoReturn updateDescText(std::string);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn updatePercentLabel();
	TodoReturn uploadActionFailed(int, int);
	TodoReturn updateCharCountLabel();
	TodoReturn uploadActionFinished(int, int);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(std::string, int, CommentType, int, std::string);
	TodoReturn create(std::string, int, CommentType, int, std::string);
	TodoReturn onClear(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onShare(cocos2d::CCObject*);
	TodoReturn onPercent(cocos2d::CCObject*);
	TodoReturn ~ShareCommentLayer();
}

[[link(android)]]
class SmartTemplateCell {
	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(GJSmartTemplate*);
	TodoReturn draw();
	TodoReturn init();
	TodoReturn onClick(cocos2d::CCObject*);
	TodoReturn SmartTemplateCell(char const*, float, float);
	TodoReturn ~SmartTemplateCell();
}

[[link(android)]]
class SpriteDescription {
	TodoReturn initDescription(DS_Dictionary*);
	TodoReturn initDescription(cocos2d::CCDictionary*);
	TodoReturn createDescription(DS_Dictionary*);
	TodoReturn createDescription(cocos2d::CCDictionary*);
	TodoReturn ~SpriteDescription();
}

[[link(android)]]
class TableViewDelegate {
	TodoReturn willTweenToIndexPath(CCIndexPath&, TableViewCell*, TableView*);
	TodoReturn didEndTweenToIndexPath(CCIndexPath&, TableView*);
	TodoReturn TableViewDidDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
	TodoReturn TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
	TodoReturn TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
}

[[link(android)]]
class TextInputDelegate {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn enterPressed(CCTextInputNode*);
	TodoReturn allowTextInput(CCTextInputNode*);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn textInputReturn(CCTextInputNode*);
	TodoReturn textInputShouldOffset(CCTextInputNode*, float);
}

[[link(android)]]
class UploadActionPopup {
	TodoReturn closePopup();
	TodoReturn keyBackClicked();
	TodoReturn showFailMessage(std::string);
	TodoReturn showSuccessMessage(std::string);
	TodoReturn init(UploadPopupDelegate*, std::string);
	TodoReturn create(UploadPopupDelegate*, std::string);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~UploadActionPopup();
}

[[link(android)]]
class VideoOptionsLayer {
	TodoReturn onAdvanced(cocos2d::CCObject*);
	TodoReturn reloadMenu();
	TodoReturn onFullscreen(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn onResolutionNext(cocos2d::CCObject*);
	TodoReturn onResolutionPrev(cocos2d::CCObject*);
	TodoReturn toggleResolution();
	TodoReturn updateResolution(int);
	TodoReturn createToggleButton(std::string, void (cocos2d::CCObject::*)(cocos2d::CCObject*), bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float, bool);
	TodoReturn onTextureQualityNext(cocos2d::CCObject*);
	TodoReturn onTextureQualityPrev(cocos2d::CCObject*);
	TodoReturn updateTextureQuality(int);
	TodoReturn init();
	TodoReturn create();
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn onApply(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~VideoOptionsLayer();
}

[[link(android)]]
class xml_string_writer {
	TodoReturn write(void const*, unsigned long);
	TodoReturn ~xml_string_writer();
}

[[link(android)]]
class AchievementManager {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn sharedState();
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn addAchievement(std::string, std::string, std::string, std::string, std::string, int);
	TodoReturn resetAchievement(char const*);
	TodoReturn notifyAchievement(char const*, char const*, char const*);
	TodoReturn resetAchievements();
	TodoReturn checkAchFromUnlock(char const*);
	TodoReturn getAllAchievements();
	TodoReturn percentageForCount(int, int);
	TodoReturn isAchievementEarned(char const*);
	TodoReturn limitForAchievement(std::string);
	TodoReturn achievementForUnlock(int, UnlockType);
	TodoReturn addManualAchievements();
	TodoReturn areAchievementsEarned(cocos2d::CCArray*);
	TodoReturn getAchievementsWithID(char const*);
	TodoReturn percentForAchievement(char const*);
	TodoReturn isAchievementAvailable(std::string);
	TodoReturn notifyAchievementWithID(char const*);
	TodoReturn reportAchievementWithID(char const*, int, bool);
	TodoReturn storeAchievementUnlocks();
	TodoReturn getAchievementRewardDict();
	TodoReturn getAllAchievementsSorted(bool);
	TodoReturn reportPlatformAchievementWithID(char const*, int);
	TodoReturn init();
	TodoReturn setup();
	TodoReturn ~AchievementManager();
}

[[link(android)]]
class AnimatedGameObject {
	TodoReturn setOpacity(unsigned char);
	TodoReturn resetObject();
	TodoReturn getTweenTime(int, int);
	TodoReturn playAnimation(int);
	TodoReturn setChildColor(cocos2d::_ccColor3B const&);
	TodoReturn activateObject();
	TodoReturn animationForID(int, int);
	TodoReturn setObjectColor(cocos2d::_ccColor3B const&);
	TodoReturn deactivateObject(bool);
	TodoReturn animationFinished(char const*);
	TodoReturn setupAnimatedSize(int);
	TodoReturn setupChildSprites();
	TodoReturn displayFrameChanged(cocos2d::CCObject*, std::string);
	TodoReturn updateObjectAnimation();
	TodoReturn updateChildSpriteColor(cocos2d::_ccColor3B);
	TodoReturn init(int);
	TodoReturn create(int);
	TodoReturn ~AnimatedGameObject();
}

[[link(android)]]
class AnimatedShopKeeper {
	TodoReturn startAnimating();
	TodoReturn animationFinished(char const*);
	TodoReturn playReactAnimation();
	TodoReturn init(ShopType);
	TodoReturn create(ShopType);
	TodoReturn ~AnimatedShopKeeper();
}

[[link(android)]]
class CharacterColorPage {
	TodoReturn checkColor(int, UnlockType);
	TodoReturn toggleGlow(cocos2d::CCObject*);
	TodoReturn toggleShip(cocos2d::CCObject*);
	TodoReturn colorForIndex(int);
	TodoReturn onPlayerColor(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn offsetForIndex(int);
	TodoReturn createColorMenu();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn toggleGlowItems(bool);
	TodoReturn updateColorMode(int);
	TodoReturn updateIconColors();
	TodoReturn activeColorForMode(int);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init();
	TodoReturn show();
	TodoReturn create();
	TodoReturn onMode(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~CharacterColorPage();
}

[[link(android)]]
class ColorChannelSprite {
	TodoReturn updateValues(ColorAction*);
	TodoReturn updateOpacity(float);
	TodoReturn updateBlending(bool);
	TodoReturn updateCopyLabel(int, bool);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~ColorChannelSprite();
}

[[link(android)]]
class ColorSetupDelegate {
	TodoReturn colorSetupClosed(int);
}

[[link(android)]]
class ConfigureHSVWidget {
	TodoReturn onResetHSV(cocos2d::CCObject*);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateLabels();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateSliders();
	TodoReturn onToggleSConst(cocos2d::CCObject*);
	TodoReturn onToggleVConst(cocos2d::CCObject*);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn createTextInputNode(cocos2d::CCPoint, int);
	TodoReturn init(cocos2d::_ccHSVValue, bool, bool);
	TodoReturn create(cocos2d::_ccHSVValue, bool, bool);
	TodoReturn getHSV(GameObject*, cocos2d::CCArray*, int);
	TodoReturn onClose();
	TodoReturn ~ConfigureHSVWidget();
}

[[link(android)]]
class CustomSongDelegate {
	TodoReturn songIDChanged(int);
	TodoReturn getActiveSongID();
}

[[link(android)]]
class EditorOptionsLayer {
	TodoReturn onButtonRows(cocos2d::CCObject*);
	TodoReturn setupOptions();
	TodoReturn onButtonsPerRow(cocos2d::CCObject*);
	TodoReturn init();
	TodoReturn create();
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~EditorOptionsLayer();
}

[[link(android)]]
class EffectManagerState {
	TodoReturn ~EffectManagerState();
}

[[link(android)]]
class EnhancedGameObject {
	TodoReturn customSetup();
	TodoReturn resetObject();
	TodoReturn updateState(int);
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn powerOnObject(int);
	TodoReturn restoreObject();
	TodoReturn powerOffObject();
	TodoReturn updateUserCoin();
	TodoReturn canMultiActivate(bool);
	TodoReturn deactivateObject(bool);
	TodoReturn hasBeenActivated();
	TodoReturn saveActiveColors();
	TodoReturn triggerActivated(float);
	TodoReturn triggerAnimation();
	TodoReturn activatedByPlayer(PlayerObject*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn stateSensitiveOff(GJBaseGameLayer*);
	TodoReturn animationTriggered();
	TodoReturn createRotateAction(float, int);
	TodoReturn getHasRotateAction();
	TodoReturn updateRotateAction(float);
	TodoReturn refreshRotateAction();
	TodoReturn resetSyncedAnimation();
	TodoReturn canAllowMultiActivate();
	TodoReturn getHasSyncedAnimation();
	TodoReturn updateSyncedAnimation(float, int);
	TodoReturn updateAnimateOnTrigger(bool);
	TodoReturn previewAnimateOnTrigger();
	TodoReturn setupAnimationVariables();
	TodoReturn waitForAnimationTrigger();
	TodoReturn hasBeenActivatedByPlayer(PlayerObject*);
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn ~EnhancedGameObject();
}

[[link(android)]]
class FriendRequestPopup {
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn uploadActionFailed(int, int);
	TodoReturn uploadActionFinished(int, int);
	TodoReturn loadFromGJFriendRequest(GJFriendRequest*);
	TodoReturn init(GJFriendRequest*);
	TodoReturn create(GJFriendRequest*);
	TodoReturn onBlock(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onAccept(cocos2d::CCObject*);
	TodoReturn onRemove(cocos2d::CCObject*);
	TodoReturn blockUser();
	TodoReturn ~FriendRequestPopup();
}

[[link(android)]]
class FriendsProfilePage {
	TodoReturn keyBackClicked();
	TodoReturn forceReloadList(UserListType);
	TodoReturn userListChanged(cocos2d::CCArray*, UserListType);
	TodoReturn getUserListFailed(UserListType, GJErrorCode);
	TodoReturn setupUsersBrowser(cocos2d::CCArray*, UserListType);
	TodoReturn getUserListFinished(cocos2d::CCArray*, UserListType);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(UserListType);
	TodoReturn create(UserListType);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onUpdate(cocos2d::CCObject*);
	TodoReturn onBlocked(cocos2d::CCObject*);
	TodoReturn ~FriendsProfilePage();
}

[[link(android)]]
class GameEffectsManager {
	TodoReturn scaleParticle(cocos2d::CCParticleSystemQuad*, float);
	TodoReturn addParticleEffect(cocos2d::CCParticleSystemQuad*, int);
	TodoReturn init(PlayLayer*);
	TodoReturn create(PlayLayer*);
	TodoReturn ~GameEffectsManager();
}

[[link(android)]]
class GameOptionsTrigger {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn ~GameOptionsTrigger();
}

[[link(android)]]
class GJCommentListLayer {
	TodoReturn init(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, bool);
	TodoReturn create(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, bool);
	TodoReturn ~GJCommentListLayer();
}

[[link(android)]]
class GJDifficultySprite {
	TodoReturn getDifficultyFrame(int, GJDifficultyName);
	TodoReturn updateFeatureState(GJFeatureState);
	TodoReturn updateDifficultyFrame(int, GJDifficultyName);
	TodoReturn updateFeatureStateFromLevel(GJGameLevel*);
	TodoReturn init(int, GJDifficultyName);
	TodoReturn create(int, GJDifficultyName);
	TodoReturn ~GJDifficultySprite();
}

[[link(android)]]
class GJGameLoadingLayer {
	TodoReturn gameLayerDidUnload();
	TodoReturn transitionToLoadingLayer(GJGameLevel*, bool);
	TodoReturn onEnterTransitionDidFinish();
	TodoReturn init(GJGameLevel*, bool);
	TodoReturn create(GJGameLevel*, bool);
	TodoReturn onEnter();
	TodoReturn loadLevel();
	TodoReturn ~GJGameLoadingLayer();
}

[[link(android)]]
class GJPurchaseDelegate {
	TodoReturn didPurchaseItem(GJStoreItem*);
}

[[link(android)]]
class GJTransformControl {
	TodoReturn loadValues(GameObject*, cocos2d::CCArray*, std::unordered_map<int, GameObjectEditorState, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, GameObjectEditorState> > >&);
	TodoReturn finishTouch();
	TodoReturn saveToState(GJTransformState&);
	TodoReturn spriteByTag(int);
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn scaleButtons(float);
	TodoReturn applyRotation(float);
	TodoReturn loadFromState(GJTransformState&);
	TodoReturn updateButtons(bool, bool);
	TodoReturn refreshControl();
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn logCurrentZeroPos();
	TodoReturn onToggleLockScale(cocos2d::CCObject*);
	TodoReturn updateAnchorSprite(cocos2d::CCPoint);
	TodoReturn updateMinMaxPositions();
	TodoReturn calculateRotationOffset();
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~GJTransformControl();
}

[[link(android)]]
class GooglePlayDelegate {
	TodoReturn googlePlaySignedIn();
}

[[link(android)]]
class KeybindingsManager {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn sharedState();
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn commandForKey(cocos2d::enumKeyCodes, GJKeyGroup, bool, bool, bool);
	TodoReturn keyForCommand(GJKeyCommand);
	TodoReturn groupForCommand(GJKeyCommand);
	TodoReturn commandForKeyMods(cocos2d::enumKeyCodes, GJKeyGroup);
	TodoReturn commandForKeyNoMods(cocos2d::enumKeyCodes, GJKeyGroup);
	TodoReturn commandToKeyForGroup(GJKeyGroup);
	TodoReturn keyToCommandForGroup(GJKeyGroup);
	TodoReturn init();
	TodoReturn ~KeybindingsManager();
}

[[link(android)]]
class KeyframeGameObject {
	TodoReturn setOpacity(unsigned char);
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn updateShadowObjects(GJBaseGameLayer*, EditorUI*);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~KeyframeGameObject();
}

[[link(android)]]
class LevelOptionsLayer2 {
	TodoReturn setupOptions();
	TodoReturn init(LevelSettingsObject*);
	TodoReturn create(LevelSettingsObject*);
	TodoReturn ~LevelOptionsLayer2();
}

[[link(android)]]
class LevelSettingsLayer {
	TodoReturn onLiveEdit(cocos2d::CCObject*);
	TodoReturn onSettings(cocos2d::CCObject*);
	TodoReturn showPicker(ColorAction*);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn onSelectFont(cocos2d::CCObject*);
	TodoReturn onSelectMode(cocos2d::CCObject*);
	TodoReturn onShowPicker(cocos2d::CCObject*);
	TodoReturn onSelectSpeed(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn onGameplayMode(cocos2d::CCObject*);
	TodoReturn onOptionToggle(cocos2d::CCObject*);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn selectArtClosed(SelectArtLayer*);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn colorSelectClosed(cocos2d::CCNode*);
	TodoReturn updateColorSprite(ColorChannelSprite*);
	TodoReturn createToggleButton(std::string, void (cocos2d::CCObject::*)(cocos2d::CCObject*), bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn updateColorSprites();
	TodoReturn selectSettingClosed(SelectSettingLayer*);
	TodoReturn updateGameplayModeButtons();
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(LevelSettingsObject*, LevelEditorLayer*);
	TodoReturn onCol(cocos2d::CCObject*);
	TodoReturn create(LevelSettingsObject*, LevelEditorLayer*);
	TodoReturn onGArt(cocos2d::CCObject*);
	TodoReturn onMode(cocos2d::CCObject*);
	TodoReturn onBGArt(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onFGArt(cocos2d::CCObject*);
	TodoReturn onSpeed(cocos2d::CCObject*);
	TodoReturn onDisable(cocos2d::CCObject*);
	TodoReturn ~LevelSettingsLayer();
}

[[link(android)]]
class ListUploadDelegate {
	TodoReturn listUploadFailed(GJLevelList*, int);
	TodoReturn listUploadFinished(GJLevelList*);
}

[[link(android)]]
class OnlineListDelegate {
	TodoReturn setupPageInfo(std::string, char const*);
	TodoReturn loadListFailed(char const*);
	TodoReturn loadListFinished(cocos2d::CCArray*, char const*);
}

[[link(android)]]
class OptionsScrollLayer {
	TodoReturn keyBackClicked();
	TodoReturn getRelevantObjects(cocos2d::CCArray*);
	TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(cocos2d::CCArray*, bool);
	TodoReturn create(cocos2d::CCArray*, bool);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn setupList(cocos2d::CCArray*);
	TodoReturn ~OptionsScrollLayer();
}

[[link(android)]]
class ParticleGameObject {
	TodoReturn customSetup();
	TodoReturn resetObject();
	TodoReturn setRotation(float);
	TodoReturn setRotationX(float);
	TodoReturn setRotationY(float);
	TodoReturn claimParticle();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn setChildColor(cocos2d::_ccColor3B const&);
	TodoReturn setObjectColor(cocos2d::_ccColor3B const&);
	TodoReturn updateParticle();
	TodoReturn unclaimParticle();
	TodoReturn blendModeChanged();
	TodoReturn deactivateObject(bool);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn setParticleString(std::string);
	TodoReturn updateParticleAngle(float, cocos2d::CCParticleSystemQuad*);
	TodoReturn updateParticleColor(cocos2d::_ccColor3B const&);
	TodoReturn updateParticleScale(float);
	TodoReturn particleWasActivated();
	TodoReturn updateParticleStruct();
	TodoReturn addMainSpriteToParent(bool);
	TodoReturn applyParticleSettings(cocos2d::CCParticleSystemQuad*);
	TodoReturn updateParticleOpacity(unsigned char);
	TodoReturn updateSyncedAnimation(float, int);
	TodoReturn updateAnimateOnTrigger(bool);
	TodoReturn createParticlePreviewArt();
	TodoReturn updateMainParticleOpacity(unsigned char);
	TodoReturn createAndAddCustomParticle();
	TodoReturn updateSecondaryParticleOpacity(unsigned char);
	TodoReturn updateParticlePreviewArtOpacity(float);
	TodoReturn init();
	TodoReturn create();
	TodoReturn setScale(float);
	TodoReturn setScaleX(float);
	TodoReturn setScaleY(float);
	TodoReturn ~ParticleGameObject();
}

[[link(android)]]
class SecretRewardsLayer {
	TodoReturn onChestType(cocos2d::CCObject*);
	TodoReturn dialogClosed(DialogLayer*);
	TodoReturn getPageColor(int);
	TodoReturn onSelectItem(cocos2d::CCObject*);
	TodoReturn onSwitchPage(cocos2d::CCObject*);
	TodoReturn showDialog01();
	TodoReturn showDialog03();
	TodoReturn onSpecialItem(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn moveToMainLayer(cocos2d::CCObject*);
	TodoReturn showLockedChest();
	TodoReturn scrollLayerMoved(cocos2d::CCPoint);
	TodoReturn updateBackButton();
	TodoReturn showDialogDiamond();
	TodoReturn generateChestItems(int);
	TodoReturn showDialogMechanic();
	TodoReturn switchToOpenedState(CCMenuItemSpriteExtra*);
	TodoReturn updateUnlockedLabel();
	TodoReturn createSecondaryLayer(int);
	TodoReturn moveToSecondaryLayer(int);
	TodoReturn init(bool);
	TodoReturn scene(bool);
	TodoReturn create(bool);
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onExit();
	TodoReturn onShop(cocos2d::CCObject*);
	TodoReturn goToPage(int);
	TodoReturn showShop(int);
	TodoReturn ~SecretRewardsLayer();
}

[[link(android)]]
class SelectPremadeLayer {
	TodoReturn keyBackClicked();
	TodoReturn onSelectPremade(cocos2d::CCObject*);
	TodoReturn init();
	TodoReturn create();
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SelectPremadeLayer();
}

[[link(android)]]
class SelectSettingLayer {
	TodoReturn idxToValue(SelectSettingType, int);
	TodoReturn valueToIdx(SelectSettingType, int);
	TodoReturn frameForItem(SelectSettingType, int);
	TodoReturn frameForValue(SelectSettingType, int);
	TodoReturn keyBackClicked();
	TodoReturn getSelectedFrame();
	TodoReturn getSelectedValue();
	TodoReturn init(SelectSettingType, int);
	TodoReturn create(SelectSettingType, int);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onSelect(cocos2d::CCObject*);
	TodoReturn ~SelectSettingLayer();
}

[[link(android)]]
class SelectSFXSortLayer {
	TodoReturn keyBackClicked();
	TodoReturn init(AudioSortType);
	TodoReturn create(AudioSortType);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onSelect(cocos2d::CCObject*);
	TodoReturn ~SelectSFXSortLayer();
}

[[link(android)]]
class SetIDPopupDelegate {
	TodoReturn setIDPopupClosed(SetIDPopup*, int);
}

[[link(android)]]
class SetLevelOrderPopup {
	TodoReturn onOrderButton(cocos2d::CCObject*);
	TodoReturn init(int, int, int);
	TodoReturn create(int, int, int);
	TodoReturn ~SetLevelOrderPopup();
}

[[link(android)]]
class SetupDashRingPopup {
	TodoReturn init(DashRingObject*, cocos2d::CCArray*);
	TodoReturn create(DashRingObject*, cocos2d::CCArray*);
	TodoReturn ~SetupDashRingPopup();
}

[[link(android)]]
class SetupGradientPopup {
	TodoReturn onBlending(cocos2d::CCObject*);
	TodoReturn onPlusButton(cocos2d::CCObject*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateBlending();
	TodoReturn valueDidChange(int, float);
	TodoReturn updateToggleItem(int, bool);
	TodoReturn updateBlendingLabel();
	TodoReturn updateZLayerButtons();
	TodoReturn determineStartValues();
	TodoReturn updateGradientLabels(bool);
	TodoReturn init(GradientTriggerObject*, cocos2d::CCArray*);
	TodoReturn create(GradientTriggerObject*, cocos2d::CCArray*);
	TodoReturn onZLayer(cocos2d::CCObject*);
	TodoReturn ~SetupGradientPopup();
}

[[link(android)]]
class SetupKeyframePopup {
	TodoReturn onTimeMode(cocos2d::CCObject*);
	TodoReturn onCustomButton(cocos2d::CCObject*);
	TodoReturn valueDidChange(int, float);
	TodoReturn refreshPreviewArt();
	TodoReturn updateTimeModeButtons();
	TodoReturn onCustomToggleTriggerValue(cocos2d::CCObject*);
	TodoReturn init(KeyframeGameObject*, cocos2d::CCArray*, LevelEditorLayer*);
	TodoReturn create(KeyframeGameObject*, cocos2d::CCArray*, LevelEditorLayer*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupKeyframePopup();
}

[[link(android)]]
class SetupTeleportPopup {
	TodoReturn valueDidChange(int, float);
	TodoReturn onTeleportGravity(cocos2d::CCObject*);
	TodoReturn determineStartValues();
	TodoReturn updateDefaultTriggerValues();
	TodoReturn updateTeleportGravityState(int);
	TodoReturn init(TeleportPortalObject*, cocos2d::CCArray*, int, bool);
	TodoReturn create(TeleportPortalObject*, cocos2d::CCArray*, int, bool);
	TodoReturn ~SetupTeleportPopup();
}

[[link(android)]]
class SetupTimeWarpPopup {
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateTimeWarp();
	TodoReturn updateTimeWarpLabel();
	TodoReturn determineStartValues();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupTimeWarpPopup();
}

[[link(android)]]
class SFXBrowserDelegate {
	TodoReturn sfxBrowserClosed(SFXBrowser*);
}

[[link(android)]]
class SpawnTriggerAction {
	TodoReturn isFinished();
	TodoReturn step(float);
}

[[link(android)]]
class SpritePartDelegate {
	TodoReturn displayFrameChanged(cocos2d::CCObject*, std::string);
}

[[link(android)]]
class AchievementNotifier {
	TodoReturn sharedState();
	TodoReturn notifyAchievement(char const*, char const*, char const*, bool);
	TodoReturn willSwitchToScene(cocos2d::CCScene*);
	TodoReturn showNextAchievement();
	TodoReturn achievementDisplayFinished();
	TodoReturn init();
	TodoReturn ~AchievementNotifier();
}

[[link(android)]]
class BrowseSmartKeyLayer {
	TodoReturn onPrefabObject(cocos2d::CCObject*);
	TodoReturn updateChanceValues();
	TodoReturn addChanceToSelected(int, bool);
	TodoReturn deletedSelectedItems();
	TodoReturn getAllSelectedBlocks();
	TodoReturn createTemplateObjects();
	TodoReturn init(GJSmartTemplate*, std::string);
	TodoReturn create(GJSmartTemplate*, std::string);
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onButton(cocos2d::CCObject*);
	TodoReturn ~BrowseSmartKeyLayer();
}

[[link(android)]]
class CCAnimateFrameCache {
	TodoReturn spriteFrameByName(char const*);
	TodoReturn removeSpriteFrames();
	TodoReturn sharedSpriteFrameCache();
	TodoReturn addSpriteFramesWithFile(char const*);
	TodoReturn purgeSharedSpriteFrameCache();
	TodoReturn addCustomSpriteFramesWithFile(char const*);
	TodoReturn init();
	TodoReturn addDict(DS_Dictionary*, char const*);
	TodoReturn addDict(cocos2d::CCDictionary*, char const*);
	TodoReturn ~CCAnimateFrameCache();
}

[[link(android)]]
class CollisionBlockPopup {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn onNextItemID(cocos2d::CCObject*);
	TodoReturn updateItemID();
	TodoReturn onItemIDArrow(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn onDynamicBlock(cocos2d::CCObject*);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputReturn(CCTextInputNode*);
	TodoReturn updateEditorLabel();
	TodoReturn createToggleButton(std::string, void (cocos2d::CCObject::*)(cocos2d::CCObject*), bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();
	TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn show();
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~CollisionBlockPopup();
}

[[link(android)]]
class ColorSelectDelegate {
	TodoReturn colorSelectClosed(cocos2d::CCNode*);
}

[[link(android)]]
class CommunityCreditNode {
	TodoReturn init(int, int, int, std::string);
	TodoReturn create(int, int, int, std::string);
	TodoReturn ~CommunityCreditNode();
}

[[link(android)]]
class ConfigureValuePopup {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn updateTextInputLabel();
	TodoReturn init(ConfigureValuePopupDelegate*, float, float, float, std::string, std::string);
	TodoReturn create(ConfigureValuePopupDelegate*, float, float, float, std::string, std::string);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~ConfigureValuePopup();
}

[[link(android)]]
class CreateParticlePopup {
	TodoReturn getPageMenu(int);
	TodoReturn sliderBegan(Slider*);
	TodoReturn sliderEnded(Slider*);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn onQuickStart(cocos2d::CCObject*);
	TodoReturn getPageButton(int);
	TodoReturn onEmitterMode(cocos2d::CCObject*);
	TodoReturn onMaxEmission(cocos2d::CCObject*);
	TodoReturn onSelectColor(cocos2d::CCObject*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn getPageSliders(int);
	TodoReturn keyBackClicked();
	TodoReturn onCalcEmission(cocos2d::CCObject*);
	TodoReturn onCopySettings(cocos2d::CCObject*);
	TodoReturn onDynamicColor(cocos2d::CCObject*);
	TodoReturn onUniformColor(cocos2d::CCObject*);
	TodoReturn onEndRGBVarSync(cocos2d::CCObject*);
	TodoReturn onPasteSettings(cocos2d::CCObject*);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputReturn(CCTextInputNode*);
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn getPageContainer(int);
	TodoReturn onDuplicateColor(cocos2d::CCObject*);
	TodoReturn onOrderSensitive(cocos2d::CCObject*);
	TodoReturn onToggleBlending(cocos2d::CCObject*);
	TodoReturn colorSelectClosed(cocos2d::CCNode*);
	TodoReturn getPageInputNodes(int);
	TodoReturn onDurationForever(cocos2d::CCObject*);
	TodoReturn onDynamicRotation(cocos2d::CCObject*);
	TodoReturn onStartRGBVarSync(cocos2d::CCObject*);
	TodoReturn toggleGravityMode(bool);
	TodoReturn updateColorSprite(int);
	TodoReturn onAnimateOnTrigger(cocos2d::CCObject*);
	TodoReturn particleValueIsInt(gjParticleValue);
	TodoReturn centerAlignParticle(cocos2d::CCObject*);
	TodoReturn onAnimateActiveOnly(cocos2d::CCObject*);
	TodoReturn updateSliderForType(gjParticleValue);
	TodoReturn createParticleSlider(gjParticleValue, int, bool, cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn maxSliderValueForType(gjParticleValue);
	TodoReturn minSliderValueForType(gjParticleValue);
	TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	TodoReturn titleForParticleValue(gjParticleValue);
	TodoReturn valueForParticleValue(gjParticleValue);
	TodoReturn onSelectParticleTexture(cocos2d::CCObject*);
	TodoReturn onToggleStartRotationIsDir(cocos2d::CCObject*);
	TodoReturn updateParticleValueForType(float, gjParticleValue, cocos2d::CCParticleSystemQuad*);
	TodoReturn onToggleStartSizeEqualToEnd(cocos2d::CCObject*);
	TodoReturn onToggleStartSpinEqualToEnd(cocos2d::CCObject*);
	TodoReturn updateInputNodeStringForType(gjParticleValue);
	TodoReturn onToggleStartRadiusEqualToEnd(cocos2d::CCObject*);
	TodoReturn init(ParticleGameObject*, cocos2d::CCArray*, std::string);
	TodoReturn create(ParticleGameObject*, cocos2d::CCArray*);
	TodoReturn create(ParticleGameObject*, cocos2d::CCArray*, std::string);
	TodoReturn create(std::string);
	TodoReturn onMode(cocos2d::CCObject*);
	TodoReturn onPage(cocos2d::CCObject*);
	TodoReturn update(float);
	TodoReturn getPage(int);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onPosType(cocos2d::CCObject*);
	TodoReturn willClose();
	TodoReturn ~CreateParticlePopup();
}

[[link(android)]]
class CurrencyRewardLayer {
	TodoReturn pulseSprite(cocos2d::CCSprite*);
	TodoReturn createObjects(CurrencySpriteType, int, cocos2d::CCPoint, float);
	TodoReturn incrementCount(int);
	TodoReturn createObjectsFull(CurrencySpriteType, int, cocos2d::CCSprite*, cocos2d::CCPoint, float);
	TodoReturn createUnlockObject(cocos2d::CCSprite*, cocos2d::CCPoint, float);
	TodoReturn incrementMoonsCount(int);
	TodoReturn incrementStarsCount(int);
	TodoReturn incrementDiamondsCount(int);
	TodoReturn incrementSpecialCount1(int);
	TodoReturn incrementSpecialCount2(int);
	TodoReturn init(int, int, int, int, CurrencySpriteType, int, CurrencySpriteType, int, cocos2d::CCPoint, CurrencyRewardType, float, float);
	TodoReturn create(int, int, int, int, CurrencySpriteType, int, CurrencySpriteType, int, cocos2d::CCPoint, CurrencyRewardType, float, float);
	TodoReturn update(float);
	TodoReturn ~CurrencyRewardLayer();
}

[[link(android)]]
class DemonFilterDelegate {
	TodoReturn demonFilterSelectClosed(int);
}

[[link(android)]]
class EditGameObjectPopup {
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*, bool);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*, bool);
	TodoReturn ~EditGameObjectPopup();
}

[[link(android)]]
class EnterEffectInstance {
	TodoReturn animateValue(int, float, float, float, int, float, int);
	TodoReturn loadTransitions(EnterEffectObject*, float);
	TodoReturn updateTransitions(float, GJBaseGameLayer*);
	TodoReturn loadValuesFromObject(EnterEffectObject*);
	TodoReturn getValue(int);
	TodoReturn setValue(int, float);
	TodoReturn ~EnterEffectInstance();
}

[[link(android)]]
class FMODLevelVisualizer {
	TodoReturn updateVisualizer(float, float, float);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~FMODLevelVisualizer();
}

[[link(android)]]
class FRequestProfilePage {
	TodoReturn onNextPage(cocos2d::CCObject*);
	TodoReturn onPrevPage(cocos2d::CCObject*);
	TodoReturn untoggleAll();
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn setupPageInfo(std::string, char const*);
	TodoReturn deleteSelected();
	TodoReturn keyBackClicked();
	TodoReturn onSentRequests(cocos2d::CCObject*);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn onDeleteSelected(cocos2d::CCObject*);
	TodoReturn updatePageArrows();
	TodoReturn updateLevelsLabel();
	TodoReturn onToggleAllObjects(cocos2d::CCObject*);
	TodoReturn uploadActionFailed(int, int);
	TodoReturn forceReloadRequests(bool);
	TodoReturn loadFRequestsFailed(char const*, GJErrorCode);
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*);
	TodoReturn uploadActionFinished(int, int);
	TodoReturn loadFRequestsFinished(cocos2d::CCArray*, char const*);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(bool);
	TodoReturn create(bool);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn loadPage(int);
	TodoReturn onUpdate(cocos2d::CCObject*);
	TodoReturn isCorrect(char const*);
	TodoReturn ~FRequestProfilePage();
}

[[link(android)]]
class GauntletSelectLayer {
	TodoReturn unblockPlay();
	TodoReturn updateArrows();
	TodoReturn keyBackClicked();
	TodoReturn setupGauntlets();
	TodoReturn loadLevelsFailed(char const*, int);
	TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	TodoReturn scrollLayerScrolledToPage(BoomScrollLayer*, int);
	TodoReturn scrollLayerWillScrollToPage(BoomScrollLayer*, int);
	TodoReturn init(int);
	TodoReturn scene(int);
	TodoReturn create(int);
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onExit();
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn onNext(cocos2d::CCObject*);
	TodoReturn onPlay(cocos2d::CCObject*);
	TodoReturn onPrev(cocos2d::CCObject*);
	TodoReturn goToPage(int, bool);
	TodoReturn onRefresh(cocos2d::CCObject*);
	TodoReturn ~GauntletSelectLayer();
}

[[link(android)]]
class GJChallengeDelegate {
	TodoReturn challengeStatusFailed();
	TodoReturn challengeStatusFinished();
}

[[link(android)]]
class GJSmartBlockPreview {
	TodoReturn addPreview(std::string, std::string, LevelEditorLayer*);
	TodoReturn createInfoLabel();
	TodoReturn addTemplateGuide(SmartPrefabResult, float);
	TodoReturn addTemplateGuide(std::string, int);
	TodoReturn toggleSelectItem(bool);
	TodoReturn init(std::string);
	TodoReturn create(std::string);
	TodoReturn addCount(int);
	TodoReturn addChance(int, int);
	TodoReturn ~GJSmartBlockPreview();
}

[[link(android)]]
class GJWriteMessagePopup {
	TodoReturn updateBody(std::string);
	TodoReturn updateText(std::string, int);
	TodoReturn onClearBody(cocos2d::CCObject*);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn updateSubject(std::string);
	TodoReturn keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn textInputReturn(CCTextInputNode*);
	TodoReturn closeMessagePopup(bool);
	TodoReturn uploadMessageFailed(int);
	TodoReturn updateCharCountLabel(int);
	TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	TodoReturn uploadMessageFinished(int);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(int, int);
	TodoReturn create(int, int);
	TodoReturn onSend(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~GJWriteMessagePopup();
}

[[link(android)]]
class GraphicsReloadLayer {
	TodoReturn performReload();
	TodoReturn init(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool);
	TodoReturn scene(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool);
	TodoReturn create(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool);
	TodoReturn ~GraphicsReloadLayer();
}

[[link(android)]]
class GravityEffectSprite {
	TodoReturn updateSpritesColor(cocos2d::_ccColor3B);
	TodoReturn draw();
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~GravityEffectSprite();
}

[[link(android)]]
class GroupCommandObject2 {
	TodoReturn resetDelta(bool);
	TodoReturn updateAction(int, float);
	TodoReturn runMoveCommand(cocos2d::CCPoint, double, int, double, bool, bool, bool, bool, double, double);
	TodoReturn runFollowCommand(double, double, double);
	TodoReturn runRotateCommand(double, double, int, double, bool, int);
	TodoReturn updateEffectAction(float, int);
	TodoReturn runTransformCommand(double, int, double);
	TodoReturn stepTransformCommand(float, bool, bool);
	TodoReturn runPlayerFollowCommand(double, double, int, double, double);
	TodoReturn step(float);
	TodoReturn reset();
	TodoReturn GroupCommandObject2(GroupCommandObject2 const&);
	TodoReturn GroupCommandObject2();
}

[[link(android)]]
class LevelAreaInnerLayer {
	TodoReturn onNextFloor(cocos2d::CCObject*);
	TodoReturn dialogClosed(DialogLayer*);
	TodoReturn keyBackClicked();
	TodoReturn tryResumeTowerMusic();
	TodoReturn showFloor1CompleteDialog();
	TodoReturn init(bool);
	TodoReturn scene(bool);
	TodoReturn create(bool);
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onDoor(cocos2d::CCObject*);
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn playStep1();
	TodoReturn ~LevelAreaInnerLayer();
}

[[link(android)]]
class LevelDeleteDelegate {
	TodoReturn levelDeleteFailed(int);
	TodoReturn levelDeleteFinished(int);
}

[[link(android)]]
class LevelSettingsObject {
	TodoReturn getSaveString();
	TodoReturn objectFromDict(cocos2d::CCDictionary*);
	TodoReturn objectFromString(std::string const&);
	TodoReturn shouldUseYSection();
	TodoReturn setupColorsFromLegacyMode(cocos2d::CCDictionary*);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~LevelSettingsObject();
}

[[link(android)]]
class LevelUpdateDelegate {
	TodoReturn levelUpdateFailed(int);
	TodoReturn levelUpdateFinished(GJGameLevel*, UpdateResponse);
}

[[link(android)]]
class LevelUploadDelegate {
	TodoReturn levelUploadFailed(GJGameLevel*);
	TodoReturn levelUploadFinished(GJGameLevel*);
}

[[link(android)]]
class LoadingCircleSprite {
	TodoReturn hideCircle();
	TodoReturn fadeInCircle(bool);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~LoadingCircleSprite();
}

[[link(android)]]
class MessageListDelegate {
	TodoReturn setupPageInfo(std::string, char const*);
	TodoReturn loadMessagesFailed(char const*, GJErrorCode);
	TodoReturn forceReloadMessages(bool);
	TodoReturn loadMessagesFinished(cocos2d::CCArray*, char const*);
}

[[link(android)]]
class MessagesProfilePage {
	TodoReturn onNextPage(cocos2d::CCObject*);
	TodoReturn onPrevPage(cocos2d::CCObject*);
	TodoReturn untoggleAll();
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn setupPageInfo(std::string, char const*);
	TodoReturn deleteSelected();
	TodoReturn keyBackClicked();
	TodoReturn onSentMessages(cocos2d::CCObject*);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn onDeleteSelected(cocos2d::CCObject*);
	TodoReturn updatePageArrows();
	TodoReturn updateLevelsLabel();
	TodoReturn loadMessagesFailed(char const*, GJErrorCode);
	TodoReturn onToggleAllObjects(cocos2d::CCObject*);
	TodoReturn uploadActionFailed(int, int);
	TodoReturn forceReloadMessages(bool);
	TodoReturn loadMessagesFinished(cocos2d::CCArray*, char const*);
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*);
	TodoReturn uploadActionFinished(int, int);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(bool);
	TodoReturn create(bool);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn loadPage(int);
	TodoReturn onUpdate(cocos2d::CCObject*);
	TodoReturn isCorrect(char const*);
	TodoReturn ~MessagesProfilePage();
}

[[link(android)]]
class MultilineBitmapFont {
	TodoReturn setOpacity(unsigned char);
	TodoReturn initWithFont(char const*, std::string, float, float, cocos2d::CCPoint, int, bool);
	TodoReturn readColorInfo(std::string);
	TodoReturn createWithFont(char const*, std::string, float, float, cocos2d::CCPoint, int, bool);
	TodoReturn stringWithMaxWidth(std::string, float, float);
	TodoReturn moveSpecialDescriptors(int, int);
	TodoReturn ~MultilineBitmapFont();
}

[[link(android)]]
class NewgroundsInfoLayer {
	TodoReturn onSupporter(cocos2d::CCObject*);
	TodoReturn onGuidelines(cocos2d::CCObject*);
	TodoReturn onNewgrounds(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn init();
	TodoReturn create();
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onArtists(cocos2d::CCObject*);
	TodoReturn onChanges(cocos2d::CCObject*);
	TodoReturn ~NewgroundsInfoLayer();
}

[[link(android)]]
class NumberInputDelegate {
	TodoReturn numberInputClosed(NumberInputLayer*);
}

[[link(android)]]
class OpacityEffectAction {
	TodoReturn step(float);
}

[[link(android)]]
class SelectListIconLayer {
	TodoReturn keyBackClicked();
	TodoReturn init(int);
	TodoReturn create(int);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onSelect(cocos2d::CCObject*);
	TodoReturn ~SelectListIconLayer();
}

[[link(android)]]
class SetupAdvFollowPopup {
	TodoReturn updateMode(int);
	TodoReturn valueDidChange(int, float);
	TodoReturn selectPremadeClosed(SelectPremadeLayer*, int);
	TodoReturn onCustomToggleTriggerValue(cocos2d::CCObject*);
	TodoReturn updateDefaultTriggerValues();
	TodoReturn init(AdvancedFollowTriggerObject*, cocos2d::CCArray*);
	TodoReturn create(AdvancedFollowTriggerObject*, cocos2d::CCArray*);
	TodoReturn onMode(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onPremade(cocos2d::CCObject*);
	TodoReturn ~SetupAdvFollowPopup();
}

[[link(android)]]
class SetupAnimationPopup {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateTargetID();
	TodoReturn onTargetIDArrow(cocos2d::CCObject*);
	TodoReturn updateAnimationID();
	TodoReturn onAnimationIDArrow(cocos2d::CCObject*);
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();
	TodoReturn updateAnimationTextInputLabel();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupAnimationPopup();
}

[[link(android)]]
class SetupArtSwitchPopup {
	TodoReturn selectArtClosed(SelectArtLayer*);
	TodoReturn init(ArtTriggerGameObject*, cocos2d::CCArray*, int);
	TodoReturn onArt(cocos2d::CCObject*);
	TodoReturn create(ArtTriggerGameObject*, cocos2d::CCArray*, int);
	TodoReturn ~SetupArtSwitchPopup();
}

[[link(android)]]
class SetupBGSpeedTrigger {
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*, int);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*, int);
	TodoReturn ~SetupBGSpeedTrigger();
}

[[link(android)]]
class SetupEventLinkPopup {
	TodoReturn onSelectEvent(cocos2d::CCObject*);
	TodoReturn updateEventIDs(std::set<int, std::less<int>, std::allocator<int> >&);
	TodoReturn init(EventLinkTrigger*, cocos2d::CCArray*);
	TodoReturn create(EventLinkTrigger*, cocos2d::CCArray*);
	TodoReturn ~SetupEventLinkPopup();
}

[[link(android)]]
class SetupTransformPopup {
	TodoReturn init(TransformTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn create(TransformTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupTransformPopup();
}

[[link(android)]]
class TableViewDataSource {
	TodoReturn numberOfSectionsInTableView(TableView*);
	TodoReturn TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&);
}

[[link(android)]]
class UploadPopupDelegate {
	TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class AccountRegisterLayer {
	TodoReturn resetLabel(int);
	TodoReturn validEmail(std::string);
	TodoReturn resetLabels();
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateLabel(AccountError);
	TodoReturn disableNodes();
	TodoReturn hideLoadingUI();
	TodoReturn showLoadingUI();
	TodoReturn validPassword(std::string);
	TodoReturn allowTextInput(CCTextInputNode*);
	TodoReturn keyBackClicked();
	TodoReturn createTextInput(cocos2d::CCPoint, cocos2d::CCSize, std::string, int);
	TodoReturn createTextLabel(cocos2d::CCPoint, std::string, cocos2d::CCSize);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn textInputReturn(CCTextInputNode*);
	TodoReturn createTextBackground(cocos2d::CCPoint, cocos2d::CCSize);
	TodoReturn registerAccountFailed(AccountError);
	TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	TodoReturn registerAccountFinished();
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init();
	TodoReturn create();
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onSubmit(cocos2d::CCObject*);
	TodoReturn toggleUI(bool);
	TodoReturn validUser(std::string);
	TodoReturn ~AccountRegisterLayer();
}

[[link(android)]]
class ArtTriggerGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, std::vector<int, std::allocator<int> > const*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn ~ArtTriggerGameObject();
}

[[link(android)]]
class CCCircleWaveDelegate {
	TodoReturn circleWaveWillBeRemoved(CCCircleWave*);
}

[[link(android)]]
class CheckpointGameObject {
	TodoReturn resetObject();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn restoreObject();
	TodoReturn triggerObject(GJBaseGameLayer*, int, std::vector<int, std::allocator<int> > const*);
	TodoReturn resetCheckpoint();
	TodoReturn triggerActivated(float);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn setupCustomSprites(std::string);
	TodoReturn updateSyncedAnimation(float, int);
	TodoReturn updateCheckpointSpriteVisibility();
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~CheckpointGameObject();
}

[[link(android)]]
class CommunityCreditsPage {
	TodoReturn onSwitchPage(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init();
	TodoReturn show();
	TodoReturn create();
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn goToPage(int);
	TodoReturn ~CommunityCreditsPage();
}

[[link(android)]]
class CustomizeObjectLayer {
	TodoReturn onLiveEdit(cocos2d::CCObject*);
	TodoReturn onSettings(cocos2d::CCObject*);
	TodoReturn onEditColor(cocos2d::CCObject*);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn onBreakApart(cocos2d::CCObject*);
	TodoReturn onSelectMode(cocos2d::CCObject*);
	TodoReturn getActiveMode(bool);
	TodoReturn onSelectColor(cocos2d::CCObject*);
	TodoReturn recreateLayer();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn toggleVisible();
	TodoReturn getButtonByTag(int);
	TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::_ccHSVValue);
	TodoReturn keyBackClicked();
	TodoReturn updateSelected(int);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn colorSetupClosed(int);
	TodoReturn updateHSVButtons();
	TodoReturn colorSelectClosed(cocos2d::CCNode*);
	TodoReturn highlightSelected(ButtonSprite*);
	TodoReturn updateColorSprite();
	TodoReturn createToggleButton(std::string, void (cocos2d::CCObject::*)(cocos2d::CCObject*), bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn onNextColorChannel(cocos2d::CCObject*);
	TodoReturn updateChannelLabel(int);
	TodoReturn updateKerningLabel();
	TodoReturn onUpdateCustomColor(cocos2d::CCObject*);
	TodoReturn determineStartValues();
	TodoReturn updateCurrentSelection();
	TodoReturn updateCustomColorLabels();
	TodoReturn init(GameObject*, cocos2d::CCArray*);
	TodoReturn onHSV(cocos2d::CCObject*);
	TodoReturn create(GameObject*, cocos2d::CCArray*);
	TodoReturn getHSV();
	TodoReturn onCopy(cocos2d::CCObject*);
	TodoReturn onClear(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onPaste(cocos2d::CCObject*);
	TodoReturn onBrowse(cocos2d::CCObject*);
	TodoReturn ~CustomizeObjectLayer();
}

[[link(android)]]
class EndTriggerGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, std::vector<int, std::allocator<int> > const*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~EndTriggerGameObject();
}

[[link(android)]]
class FLAlertLayerProtocol {
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class ForceBlockGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn calculateForceToTarget(GameObject*);
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn ~ForceBlockGameObject();
}

[[link(android)]]
class GJDailyLevelDelegate {
	TodoReturn dailyStatusFailed(GJTimedLevelType, GJErrorCode);
	TodoReturn dailyStatusFinished(GJTimedLevelType);
}

[[link(android)]]
class GJFollowCommandLayer {
	TodoReturn updateXMod();
	TodoReturn updateYMod();
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn onUpdateGroupID(cocos2d::CCObject*);
	TodoReturn updateXModLabel();
	TodoReturn updateYModLabel();
	TodoReturn onUpdateGroupID2(cocos2d::CCObject*);
	TodoReturn sliderXModChanged(cocos2d::CCObject*);
	TodoReturn sliderYModChanged(cocos2d::CCObject*);
	TodoReturn updateTargetGroupID();
	TodoReturn determineStartValues();
	TodoReturn updateTargetGroupID2();
	TodoReturn updateTextInputLabel();
	TodoReturn updateTextInputLabel2();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~GJFollowCommandLayer();
}

[[link(android)]]
class GJMultiplayerManager {
	TodoReturn addComment(std::string, int);
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	TodoReturn isDLActive(char const*);
	TodoReturn getDLObject(char const*);
	TodoReturn sharedState();
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn addDLToActive(char const*);
	TodoReturn addDLToActive(char const*, cocos2d::CCObject*);
	TodoReturn uploadComment(std::string, int);
	TodoReturn handleItDelayed(bool, std::string, std::string, GJHttpType);
	TodoReturn getBasePostString();
	TodoReturn ProcessHttpRequest(std::string, std::string, std::string, GJHttpType);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn createAndAddComment(std::string, int);
	TodoReturn onExitLobbyCompleted(std::string, std::string);
	TodoReturn onJoinLobbyCompleted(std::string, std::string);
	TodoReturn getLastCommentIDForGame(int);
	TodoReturn onUploadCommentCompleted(std::string, std::string);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn init();
	TodoReturn handleIt(bool, std::string, std::string, GJHttpType);
	TodoReturn exitLobby(int);
	TodoReturn joinLobby(int);
	TodoReturn ~GJMultiplayerManager();
}

[[link(android)]]
class GJRotateCommandLayer {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn onEasingRate(cocos2d::CCObject*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn onLockRotation(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn onUpdateGroupID(cocos2d::CCObject*);
	TodoReturn onFollowRotation(cocos2d::CCObject*);
	TodoReturn onUpdateGroupID2(cocos2d::CCObject*);
	TodoReturn updateTimesLabel();
	TodoReturn valuePopupClosed(ConfigureValuePopup*, float);
	TodoReturn updateEasingLabel();
	TodoReturn sliderTimesChanged(cocos2d::CCObject*);
	TodoReturn updateCommandTimes();
	TodoReturn updateDegreesLabel();
	TodoReturn updateTargetGroupID();
	TodoReturn determineStartValues();
	TodoReturn sliderDegreesChanged(cocos2d::CCObject*);
	TodoReturn updateCommandDegrees();
	TodoReturn updateTargetGroupID2();
	TodoReturn updateTextInputLabel();
	TodoReturn updateEasingRateLabel();
	TodoReturn updateTextInputLabel2();
	TodoReturn updateMoveCommandEasing();
	TodoReturn toggleEasingRateVisibility();
	TodoReturn updateMoveCommandEasingRate();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onEasing(cocos2d::CCObject*);
	TodoReturn ~GJRotateCommandLayer();
}

[[link(android)]]
class GJSpecialColorSelect {
	TodoReturn onSelectColor(cocos2d::CCObject*);
	TodoReturn getButtonByTag(int);
	TodoReturn keyBackClicked();
	TodoReturn textForColorIdx(int);
	TodoReturn highlightSelected(ButtonSprite*);
	TodoReturn init(int, GJSpecialColorSelectDelegate*, ColorSelectType);
	TodoReturn create(int, GJSpecialColorSelectDelegate*, ColorSelectType);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~GJSpecialColorSelect();
}

[[link(android)]]
class LevelCommentDelegate {
	TodoReturn setupPageInfo(std::string, char const*);
	TodoReturn loadCommentsFailed(char const*);
	TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*);
	TodoReturn updateUserScoreFinished();
}

[[link(android)]]
class LevelManagerDelegate {
	TodoReturn setupPageInfo(std::string, char const*);
	TodoReturn loadLevelsFailed(char const*);
	TodoReturn loadLevelsFailed(char const*, int);
	TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*);
	TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
}

[[link(android)]]
class MusicBrowserDelegate {
	TodoReturn musicBrowserClosed(MusicBrowser*);
}

[[link(android)]]
class MusicDelegateHandler {
	TodoReturn init(MusicDownloadDelegate*);
	TodoReturn create(MusicDownloadDelegate*);
	TodoReturn ~MusicDelegateHandler();
}

[[link(android)]]
class MusicDownloadManager {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn deleteSong(int);
	TodoReturn firstSetup();
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	TodoReturn isDLActive(char const*);
	TodoReturn pathForSFX(int);
	TodoReturn downloadSFX(int);
	TodoReturn getAllSongs();
	TodoReturn getDLObject(char const*);
	TodoReturn getSongInfo(int, bool);
	TodoReturn pathForSong(int);
	TodoReturn sharedState();
	TodoReturn downloadSong(int);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn getSFXObject(int);
	TodoReturn nameForTagID(int);
	TodoReturn stopDownload(int);
	TodoReturn addDLToActive(char const*);
	TodoReturn addDLToActive(char const*, cocos2d::CCObject*);
	TodoReturn isResourceSFX(int);
	TodoReturn getMusicObject(int);
	TodoReturn getSongInfoKey(int);
	TodoReturn isResourceSong(int);
	TodoReturn responseToDict(std::string, char const*);
	TodoReturn createSongsInfo(std::string);
	TodoReturn getAllMusicTags(OptionsObjectDelegate*);
	TodoReturn getSongPriority();
	TodoReturn handleItDelayed(bool, std::string, std::string, GJHttpType);
	TodoReturn isSFXDownloaded(int);
	TodoReturn parseSFXLibrary();
	TodoReturn clearUnusedSongs();
	TodoReturn filterMusicByTag(int, cocos2d::CCArray*);
	TodoReturn getAllSFXObjects(bool);
	TodoReturn isSongDownloaded(int);
	TodoReturn pathForSFXFolder(int);
	TodoReturn songStateChanged();
	TodoReturn storeMusicObject(SongInfoObject*);
	TodoReturn tryLoadLibraries();
	TodoReturn downloadSFXFailed(int, GJSongError);
	TodoReturn getSFXDownloadKey(int);
	TodoReturn getSongInfoObject(int);
	TodoReturn musicActionFailed(GJMusicAction);
	TodoReturn parseMusicLibrary();
	TodoReturn pathForSongFolder(int);
	TodoReturn downloadCustomSong(int);
	TodoReturn downloadSFXLibrary();
	TodoReturn downloadSongFailed(int, GJSongError);
	TodoReturn getAllMusicArtists(OptionsObjectDelegate*);
	TodoReturn getAllMusicObjects();
	TodoReturn getDownloadedSongs();
	TodoReturn getSongDownloadKey(int);
	TodoReturn isSFXLibraryLoaded();
	TodoReturn loadSongInfoFailed(int, GJSongError);
	TodoReturn ProcessHttpRequest(std::string, std::string, std::string, GJHttpType);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn storeSFXInfoObject(SFXInfoObject*);
	TodoReturn downloadSFXFinished(int);
	TodoReturn getCustomContentURL();
	TodoReturn getDownloadProgress(int);
	TodoReturn getMusicArtistForID(int);
	TodoReturn musicActionFinished(GJMusicAction);
	TodoReturn tryUpdateSFXLibrary();
	TodoReturn downloadMusicLibrary();
	TodoReturn downloadSongFinished(int);
	TodoReturn isMusicLibraryLoaded();
	TodoReturn limitDownloadedSongs();
	TodoReturn loadSongInfoFinished(SongInfoObject*);
	TodoReturn filterMusicByArtistID(int, cocos2d::CCArray*);
	TodoReturn getSFXFolderPathForID(int, bool);
	TodoReturn ProcessHttpGetRequest(std::string, std::string, void (cocos2d::CCObject::*)(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*), int, int);
	TodoReturn tryUpdateMusicLibrary();
	TodoReturn getSFXDownloadProgress(int);
	TodoReturn onDownloadSFXCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onGetSongInfoCompleted(std::string, std::string);
	TodoReturn addSongObjectFromString(std::string);
	TodoReturn getSFXFolderObjectForID(int);
	TodoReturn onDownloadSongCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn addMusicDownloadDelegate(MusicDownloadDelegate*);
	TodoReturn generateCustomContentURL(std::string);
	TodoReturn incrementPriorityForSong(int);
	TodoReturn isRunningActionForSongID(int);
	TodoReturn generateResourceAssetList();
	TodoReturn removeMusicDownloadDelegate(MusicDownloadDelegate*);
	TodoReturn onDownloadSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onGetCustomContentURLCompleted(std::string, std::string);
	TodoReturn onTryUpdateSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onDownloadMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onTryUpdateMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn init();
	TodoReturn showTOS(FLAlertLayerProtocol*);
	TodoReturn handleIt(bool, std::string, std::string, GJHttpType);
	TodoReturn clearSong(int);
	TodoReturn deleteSFX(int);
	TodoReturn ~MusicDownloadManager();
}

[[link(android)]]
class ParentalOptionsLayer {
	TodoReturn onNextPage(cocos2d::CCObject*);
	TodoReturn onPrevPage(cocos2d::CCObject*);
	TodoReturn countForPage(int);
	TodoReturn layerForPage(int);
	TodoReturn nextPosition(int);
	TodoReturn keyBackClicked();
	TodoReturn objectsForPage(int);
	TodoReturn incrementCountForPage(int);
	TodoReturn init();
	TodoReturn create();
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn infoKey(int);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn pageKey(int);
	TodoReturn goToPage(int);
	TodoReturn layerKey(int);
	TodoReturn onToggle(cocos2d::CCObject*);
	TodoReturn addToggle(char const*, char const*, char const*);
	TodoReturn objectKey(int);
	TodoReturn ~ParentalOptionsLayer();
}

[[link(android)]]
class ParticlePreviewLayer {
	TodoReturn preVisitWithClippingRect(cocos2d::CCRect);
	TodoReturn draw();
	TodoReturn init(cocos2d::CCParticleSystemQuad*);
	TodoReturn visit();
	TodoReturn create(cocos2d::CCParticleSystemQuad*);
	TodoReturn postVisit();
	TodoReturn ~ParticlePreviewLayer();
}

[[link(android)]]
class SetTextPopupDelegate {
	TodoReturn setTextPopupClosed(SetTextPopup*, std::string);
}

[[link(android)]]
class SetupCameraEdgePopup {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn onCameraEdge(cocos2d::CCObject*);
	TodoReturn onUnlockEdge(cocos2d::CCObject*);
	TodoReturn updateTargetID();
	TodoReturn onTargetIDArrow(cocos2d::CCObject*);
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();
	TodoReturn init(CameraTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn create(CameraTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupCameraEdgePopup();
}

[[link(android)]]
class SetupCameraModePopup {
	TodoReturn onUnboundMode(cocos2d::CCObject*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateCameraEasing();
	TodoReturn updateCameraPadding();
	TodoReturn determineStartValues();
	TodoReturn onEditCameraSettings(cocos2d::CCObject*);
	TodoReturn updateItemVisibility();
	TodoReturn updateCameraEasingLabel();
	TodoReturn updateCameraPaddingLabel();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupCameraModePopup();
}

[[link(android)]]
class SetupCheckpointPopup {
	TodoReturn init(CheckpointGameObject*, cocos2d::CCArray*);
	TodoReturn create(CheckpointGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupCheckpointPopup();
}

[[link(android)]]
class SetupForceBlockPopup {
	TodoReturn valueDidChange(int, float);
	TodoReturn init(ForceBlockGameObject*, cocos2d::CCArray*);
	TodoReturn create(ForceBlockGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupForceBlockPopup();
}

[[link(android)]]
class SetupGravityModPopup {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateValue();
	TodoReturn updateItemID();
	TodoReturn onItemIDArrow(cocos2d::CCObject*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn updateValueLabel();
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*, bool);
	TodoReturn show();
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*, bool);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupGravityModPopup();
}

[[link(android)]]
class SetupSmartBlockLayer {
	TodoReturn onCreateAll(cocos2d::CCObject*);
	TodoReturn onDontDelete(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn onAllowFlipping(cocos2d::CCObject*);
	TodoReturn onAllowRotation(cocos2d::CCObject*);
	TodoReturn onIgnoreCorners(cocos2d::CCObject*);
	TodoReturn onPasteTemplate(cocos2d::CCObject*);
	TodoReturn onReferenceOnly(cocos2d::CCObject*);
	TodoReturn onSelectPremade(cocos2d::CCObject*);
	TodoReturn selectArtClosed(SelectArtLayer*);
	TodoReturn onCreateTemplate(cocos2d::CCObject*);
	TodoReturn onSelectTemplate(cocos2d::CCObject*);
	TodoReturn onNearbyReference(cocos2d::CCObject*);
	TodoReturn determineStartValues();
	TodoReturn init(SmartGameObject*, cocos2d::CCArray*);
	TodoReturn show();
	TodoReturn create(SmartGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onCreate(cocos2d::CCObject*);
	TodoReturn ~SetupSmartBlockLayer();
}

[[link(android)]]
class SFXTriggerGameObject {
	TodoReturn getSFXRefID();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn getUniqueSFXID();
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn ~SFXTriggerGameObject();
}

[[link(android)]]
class ShareCommentDelegate {
	TodoReturn shareCommentClosed(std::string, ShareCommentLayer*);
}

[[link(android)]]
class SongPlaybackDelegate {
	TodoReturn onPlayback(SongInfoObject*);
}

[[link(android)]]
class TeleportPortalObject {
	TodoReturn addToGroup(int);
	TodoReturn addToGroup2(int);
	TodoReturn setPosition(cocos2d::CCPoint const&);
	TodoReturn setRotation(float);
	TodoReturn setStartPos(cocos2d::CCPoint);
	TodoReturn setRotation2(float);
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn getTeleportXOff(cocos2d::CCNode*);
	TodoReturn removeFromGroup(int);
	TodoReturn removeFromGroup2(int);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn setPositionOverride(cocos2d::CCPoint);
	TodoReturn setStartPosOverride(cocos2d::CCPoint);
	TodoReturn init(char const*, bool);
	TodoReturn create(char const*, bool);
	TodoReturn ~TeleportPortalObject();
}

[[link(android)]]
class UISettingsGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~UISettingsGameObject();
}

[[link(android)]]
class UploadActionDelegate {
	TodoReturn uploadActionFailed(int, int);
	TodoReturn uploadActionFinished(int, int);
}

[[link(android)]]
class CCMenuItemSpriteExtra {
	TodoReturn unselected();
	TodoReturn setSizeMult(float);
	TodoReturn useAnimationType(MenuAnimationType);
	TodoReturn init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*));
	TodoReturn create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, void (cocos2d::CCObject::*)(cocos2d::CCObject*));
	TodoReturn activate();
	TodoReturn selected();
	TodoReturn ~CCMenuItemSpriteExtra();
}

[[link(android)]]
class CommentUploadDelegate {
	TodoReturn commentDeleteFailed(int, int);
	TodoReturn commentUploadFailed(int, CommentError);
	TodoReturn commentUploadFinished(int);
}

[[link(android)]]
class CreateGuidelinesLayer {
	TodoReturn toggleItems(bool);
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn registerTouch();
	TodoReturn keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn recordingDidStop();
	TodoReturn doClearGuidelines();
	TodoReturn onClearGuidelines(cocos2d::CCObject*);
	TodoReturn getMergedRecordString(std::string, std::string);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(CustomSongDelegate*, AudioGuidelinesType);
	TodoReturn keyUp(cocos2d::enumKeyCodes);
	TodoReturn create(CustomSongDelegate*, AudioGuidelinesType);
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn onStop(cocos2d::CCObject*);
	TodoReturn update(float);
	TodoReturn keyDown(cocos2d::enumKeyCodes);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onRecord(cocos2d::CCObject*);
	TodoReturn playMusic();
	TodoReturn ~CreateGuidelinesLayer();
}

[[link(android)]]
class EnhancedTriggerObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn ~EnhancedTriggerObject();
}

[[link(android)]]
class FriendRequestDelegate {
	TodoReturn setupPageInfo(std::string, char const*);
	TodoReturn forceReloadRequests(bool);
	TodoReturn loadFRequestsFailed(char const*, GJErrorCode);
	TodoReturn loadFRequestsFinished(cocos2d::CCArray*, char const*);
}

[[link(android)]]
class GameObjectEditorState {
	TodoReturn loadValues(GameObject*);
}

[[link(android)]]
class GJAccountSyncDelegate {
	TodoReturn syncAccountFailed(BackupAccountError, int);
	TodoReturn syncAccountFinished();
}

[[link(android)]]
class GJLocalLevelScoreCell {
	TodoReturn loadFromScore(GJLocalScore*);
	TodoReturn updateBGColor(int);
	TodoReturn draw();
	TodoReturn init();
	TodoReturn GJLocalLevelScoreCell(char const*, float, float);
	TodoReturn ~GJLocalLevelScoreCell();
}

[[link(android)]]
class GJPFollowCommandLayer {
	TodoReturn updateXMod();
	TodoReturn updateYMod();
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateMaxSpeed();
	TodoReturn onUpdateGroupID(cocos2d::CCObject*);
	TodoReturn updateXModLabel();
	TodoReturn updateYModLabel();
	TodoReturn sliderXModChanged(cocos2d::CCObject*);
	TodoReturn sliderYModChanged(cocos2d::CCObject*);
	TodoReturn updateOffsetLabel();
	TodoReturn updatePlayerOffset();
	TodoReturn updateMaxSpeedLabel();
	TodoReturn updateTargetGroupID();
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~GJPFollowCommandLayer();
}

[[link(android)]]
class GradientTriggerObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~GradientTriggerObject();
}

[[link(android)]]
class ItemTriggerGameObject {
	TodoReturn customSetup();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, std::vector<int, std::allocator<int> > const*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn ~ItemTriggerGameObject();
}

[[link(android)]]
class LevelDownloadDelegate {
	TodoReturn levelDownloadFailed(int);
	TodoReturn levelDownloadFinished(GJGameLevel*);
}

[[link(android)]]
class LevelSettingsDelegate {
	TodoReturn levelSettingsUpdated();
}

[[link(android)]]
class ListButtonBarDelegate {
	TodoReturn listButtonBarSwitchedPage(ListButtonBar*, int);
}

[[link(android)]]
class MoreVideoOptionsLayer {
	TodoReturn onApplyFPS(cocos2d::CCObject*);
	TodoReturn onNextPage(cocos2d::CCObject*);
	TodoReturn onPrevPage(cocos2d::CCObject*);
	TodoReturn countForPage(int);
	TodoReturn layerForPage(int);
	TodoReturn nextPosition(int);
	TodoReturn keyBackClicked();
	TodoReturn objectsForPage(int);
	TodoReturn updateFPSButtons();
	TodoReturn incrementCountForPage(int);
	TodoReturn init();
	TodoReturn create();
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn infoKey(int);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn pageKey(int);
	TodoReturn goToPage(int);
	TodoReturn layerKey(int);
	TodoReturn onToggle(cocos2d::CCObject*);
	TodoReturn addToggle(char const*, char const*, char const*);
	TodoReturn objectKey(int);
	TodoReturn ~MoreVideoOptionsLayer();
}

[[link(android)]]
class MusicDownloadDelegate {
	TodoReturn songStateChanged();
	TodoReturn downloadSFXFailed(int, GJSongError);
	TodoReturn musicActionFailed(GJMusicAction);
	TodoReturn downloadSongFailed(int, GJSongError);
	TodoReturn loadSongInfoFailed(int, GJSongError);
	TodoReturn downloadSFXFinished(int);
	TodoReturn musicActionFinished(GJMusicAction);
	TodoReturn downloadSongFinished(int);
	TodoReturn loadSongInfoFinished(SongInfoObject*);
}

[[link(android)]]
class ObjectDecoderDelegate {
	TodoReturn getDecodedObject(int, DS_Dictionary*);
}

[[link(android)]]
class OptionsObjectDelegate {
	TodoReturn stateChanged(OptionsObject*);
}

[[link(android)]]
class PlayerFireBoostSprite {
	TodoReturn animateFireIn();
	TodoReturn animateFireOut();
	TodoReturn loopFireAnimation();
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~PlayerFireBoostSprite();
}

[[link(android)]]
class RandTriggerGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, std::vector<int, std::allocator<int> > const*);
	TodoReturn getTotalChance();
	TodoReturn getRandomGroupID();
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~RandTriggerGameObject();
}

[[link(android)]]
class RewardedVideoDelegate {
	TodoReturn rewardedVideoFinished();
	TodoReturn shouldOffsetRewardCurrency();
}

[[link(android)]]
class SelectPremadeDelegate {
	TodoReturn selectPremadeClosed(SelectPremadeLayer*, int);
}

[[link(android)]]
class SelectSettingDelegate {
	TodoReturn selectSettingClosed(SelectSettingLayer*);
}

[[link(android)]]
class SelectSFXSortDelegate {
	TodoReturn sortSelectClosed(SelectSFXSortLayer*);
}

[[link(android)]]
class SetupAreaTriggerPopup {
	TodoReturn init(EnterEffectObject*, cocos2d::CCArray*);
	TodoReturn create(EnterEffectObject*, cocos2d::CCArray*);
	TodoReturn ~SetupAreaTriggerPopup();
}

[[link(android)]]
class SetupCameraGuidePopup {
	TodoReturn init(CameraTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn create(CameraTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupCameraGuidePopup();
}

[[link(android)]]
class SetupEnterEffectPopup {
	TodoReturn onEnterType(cocos2d::CCObject*);
	TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::_ccHSVValue);
	TodoReturn valueDidChange(int, float);
	TodoReturn updateHSVButton();
	TodoReturn updateInputNode(int, float);
	TodoReturn updateInputValue(int, float&);
	TodoReturn determineStartValues();
	TodoReturn onNextFreeEnterChannel(cocos2d::CCObject*);
	TodoReturn onNextFreeEnterEffectID(cocos2d::CCObject*);
	TodoReturn triggerSliderValueFromValue(int, float);
	TodoReturn triggerValueFromSliderValue(int, float);
	TodoReturn init(EnterEffectObject*, cocos2d::CCArray*, int);
	TodoReturn onHSV(cocos2d::CCObject*);
	TodoReturn create(EnterEffectObject*, cocos2d::CCArray*, int);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupEnterEffectPopup();
}

[[link(android)]]
class SetupMoveCommandPopup {
	TodoReturn valueDidChange(int, float);
	TodoReturn updateInputNode(int, float);
	TodoReturn updateInputValue(int, float&);
	TodoReturn updateControlVisibility();
	TodoReturn onCustomToggleTriggerValue(cocos2d::CCObject*);
	TodoReturn triggerSliderValueFromValue(int, float);
	TodoReturn triggerValueFromSliderValue(int, float);
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupMoveCommandPopup();
}

[[link(android)]]
class SetupRandTriggerPopup {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateChance();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateTargetID();
	TodoReturn onTargetIDArrow(cocos2d::CCObject*);
	TodoReturn updateTargetID2();
	TodoReturn onTargetID2Arrow(cocos2d::CCObject*);
	TodoReturn updateChanceLabel(bool);
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();
	TodoReturn updateTextInputLabel2();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupRandTriggerPopup();
}

[[link(android)]]
class SetupSongTriggerPopup {
	TodoReturn onPlayback(SongInfoObject*);
	TodoReturn pageChanged();
	TodoReturn updateLength();
	TodoReturn valueDidChange(int, float);
	TodoReturn onResetSongTime(cocos2d::CCObject*);
	TodoReturn onSavePlaybackPos(cocos2d::CCObject*);
	TodoReturn updateApplyPrepare(bool);
	TodoReturn updateSongTimeSlider();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupSongTriggerPopup();
}

[[link(android)]]
class SetupStopTriggerPopup {
	TodoReturn onCustomToggleTriggerValue(cocos2d::CCObject*);
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupStopTriggerPopup();
}

[[link(android)]]
class SetupTouchTogglePopup {
	TodoReturn onHoldMode(cocos2d::CCObject*);
	TodoReturn onTouchMode(cocos2d::CCObject*);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn onControlMode(cocos2d::CCObject*);
	TodoReturn updateTargetID();
	TodoReturn onDualTouchMode(cocos2d::CCObject*);
	TodoReturn onTargetIDArrow(cocos2d::CCObject*);
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupTouchTogglePopup();
}

[[link(android)]]
class SetupZoomTriggerPopup {
	TodoReturn determineStartValues();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupZoomTriggerPopup();
}

[[link(android)]]
class SongTriggerGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn ~SongTriggerGameObject();
}

[[link(android)]]
class SpecialAnimGameObject {
	TodoReturn resetObject();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn updateMainColor(cocos2d::_ccColor3B const&);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn updateSecondaryColor(cocos2d::_ccColor3B const&);
	TodoReturn updateSyncedAnimation(float, int);
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn ~SpecialAnimGameObject();
}

[[link(android)]]
class TableViewCellDelegate {
	TodoReturn getSelectedCellIdx();
	TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	TodoReturn shouldSnapToSelected();
}

[[link(android)]]
class UIObjectSettingsPopup {
	TodoReturn onCustomToggleTriggerValue(cocos2d::CCObject*);
	TodoReturn init(UISettingsGameObject*, cocos2d::CCArray*);
	TodoReturn create(UISettingsGameObject*, cocos2d::CCArray*);
	TodoReturn ~UIObjectSettingsPopup();
}

[[link(android)]]
class UploadMessageDelegate {
	TodoReturn uploadMessageFailed(int);
	TodoReturn uploadMessageFinished(int);
}

[[link(android)]]
class AnimatedSpriteDelegate {
	TodoReturn animationFinished(char const*);
}

[[link(android)]]
class CharacterColorDelegate {
	TodoReturn showUnlockPopup(int, UnlockType);
	TodoReturn playerColorChanged();
}

[[link(android)]]
class ColorSelectLiveOverlay {
	TodoReturn onSelectTab(cocos2d::CCObject*);
	TodoReturn selectColor(cocos2d::_ccColor3B);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn getColorValue();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateOpacity();
	TodoReturn keyBackClicked();
	TodoReturn toggleControls(bool);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn closeColorSelect(cocos2d::CCObject*);
	TodoReturn createWithObject(EffectGameObject*);
	TodoReturn updateColorLabel();
	TodoReturn updateColorValue();
	TodoReturn colorValueChanged(cocos2d::_ccColor3B);
	TodoReturn createWithActions(ColorAction*, ColorAction*);
	TodoReturn createToggleButton(std::string, void (cocos2d::CCObject::*)(cocos2d::CCObject*), bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn determineStartValues();
	TodoReturn init(ColorAction*, ColorAction*, EffectGameObject*);
	TodoReturn show();
	TodoReturn create(ColorAction*, ColorAction*, EffectGameObject*);
	TodoReturn ~ColorSelectLiveOverlay();
}

[[link(android)]]
class CountTriggerGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, std::vector<int, std::allocator<int> > const*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn ~CountTriggerGameObject();
}

[[link(android)]]
class CurrencyRewardDelegate {
	TodoReturn currencyWillExit(CurrencyRewardLayer*);
}

[[link(android)]]
class DemonFilterSelectLayer {
	TodoReturn selectRating(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn init();
	TodoReturn create();
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~DemonFilterSelectLayer();
}

[[link(android)]]
class GJAccountLoginDelegate {
	TodoReturn loginAccountFailed(AccountError);
	TodoReturn loginAccountFinished(int, int);
}

[[link(android)]]
class GJAccountSettingsLayer {
	TodoReturn keyBackClicked();
	TodoReturn textInputReturn(CCTextInputNode*);
	TodoReturn onCommentSetting(cocos2d::CCObject*);
	TodoReturn onFriendRequests(cocos2d::CCObject*);
	TodoReturn onMessageSetting(cocos2d::CCObject*);
	TodoReturn updateScoreValues();
	TodoReturn createToggleButton(std::string, void (cocos2d::CCObject::*)(cocos2d::CCObject*), bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float);
	TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	TodoReturn init(int);
	TodoReturn create(int);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onUpdate(cocos2d::CCObject*);
	TodoReturn ~GJAccountSettingsLayer();
}

[[link(android)]]
class GJScaleControlDelegate {
	TodoReturn scaleXChanged(float);
	TodoReturn scaleYChanged(float);
	TodoReturn scaleXYChanged(float, float);
	TodoReturn anchorPointMoved(cocos2d::CCPoint);
	TodoReturn scaleChangeBegin();
	TodoReturn scaleChangeEnded();
	TodoReturn updateScaleControl();
}

[[link(android)]]
class SelectListIconDelegate {
	TodoReturn iconSelectClosed(SelectListIconLayer*);
}

[[link(android)]]
class SetupAnimSettingsPopup {
	TodoReturn updateAnimSettings();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupAnimSettingsPopup();
}

[[link(android)]]
class SetupAudioTriggerPopup {
	TodoReturn onProxMode(cocos2d::CCObject*);
	TodoReturn valueDidChange(int, float);
	TodoReturn addTimeControls(int, float);
	TodoReturn addProxVolControls(int);
	TodoReturn updateSpecialGroup();
	TodoReturn ~SetupAudioTriggerPopup();
}

[[link(android)]]
class SetupCameraRotatePopup {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn onEasingRate(cocos2d::CCObject*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn valuePopupClosed(ConfigureValuePopup*, float);
	TodoReturn updateEasingLabel();
	TodoReturn updateDegreesLabel();
	TodoReturn determineStartValues();
	TodoReturn sliderDegreesChanged(cocos2d::CCObject*);
	TodoReturn updateCommandDegrees();
	TodoReturn updateEasingRateLabel();
	TodoReturn updateMoveCommandEasing();
	TodoReturn toggleEasingRateVisibility();
	TodoReturn updateMoveCommandEasingRate();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onEasing(cocos2d::CCObject*);
	TodoReturn ~SetupCameraRotatePopup();
}

[[link(android)]]
class SetupCountTriggerPopup {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateItemID();
	TodoReturn onEnableGroup(cocos2d::CCObject*);
	TodoReturn onItemIDArrow(cocos2d::CCObject*);
	TodoReturn updateTargetID();
	TodoReturn onMultiActivate(cocos2d::CCObject*);
	TodoReturn onTargetIDArrow(cocos2d::CCObject*);
	TodoReturn updateTargetCount();
	TodoReturn onTargetCountArrow(cocos2d::CCObject*);
	TodoReturn determineStartValues();
	TodoReturn updateItemIDInputLabel();
	TodoReturn updateTargetIDInputLabel();
	TodoReturn updateCountTextInputLabel();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupCountTriggerPopup();
}

[[link(android)]]
class SetupEnterTriggerPopup {
	TodoReturn onEnterType(cocos2d::CCObject*);
	TodoReturn determineStartValues();
	TodoReturn init(EnterEffectObject*, cocos2d::CCArray*);
	TodoReturn create(EnterEffectObject*, cocos2d::CCArray*);
	TodoReturn ~SetupEnterTriggerPopup();
}

[[link(android)]]
class SetupInstantCountPopup {
	TodoReturn onCountType(cocos2d::CCObject*);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateItemID();
	TodoReturn onEnableGroup(cocos2d::CCObject*);
	TodoReturn updateTargetID();
	TodoReturn onTargetIDArrow(cocos2d::CCObject*);
	TodoReturn onTargetID2Arrow(cocos2d::CCObject*);
	TodoReturn updateTargetCount();
	TodoReturn onTargetCountArrow(cocos2d::CCObject*);
	TodoReturn determineStartValues();
	TodoReturn updateItemIDInputLabel();
	TodoReturn updateTargetIDInputLabel();
	TodoReturn updateCountTextInputLabel();
	TodoReturn init(CountTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn create(CountTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupInstantCountPopup();
}

[[link(android)]]
class SetupKeyframeAnimPopup {
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupKeyframeAnimPopup();
}

[[link(android)]]
class SetupObjectTogglePopup {
	TodoReturn valueDidChange(int, float);
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*, bool);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*, bool);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupObjectTogglePopup();
}

[[link(android)]]
class SetupResetTriggerPopup {
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupResetTriggerPopup();
}

[[link(android)]]
class SetupShaderEffectPopup {
	TodoReturn setupBulge();
	TodoReturn setupPinch();
	TodoReturn setupSepia();
	TodoReturn setupGlitch();
	TodoReturn toggleGroup(int, bool);
	TodoReturn onResetColors(cocos2d::CCObject*);
	TodoReturn setupHueShift();
	TodoReturn setupPixelate();
	TodoReturn setupChromatic();
	TodoReturn setupGrayscale();
	TodoReturn setupShockLine();
	TodoReturn setupShockWave();
	TodoReturn valueDidChange(int, float);
	TodoReturn zLayerToString(int);
	TodoReturn setupLensCircle();
	TodoReturn setupMotionBlur();
	TodoReturn setupRadialBlur();
	TodoReturn setupColorChange();
	TodoReturn setupInvertColor();
	TodoReturn setupSplitScreen();
	TodoReturn setupShaderTrigger();
	TodoReturn updateZLayerButtons();
	TodoReturn setupChromaticGlitch();
	TodoReturn updateDefaultTriggerValues();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*, int);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*, int);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onZLayer(cocos2d::CCObject*);
	TodoReturn ~SetupShaderEffectPopup();
}

[[link(android)]]
class SetupStaticCameraPopup {
	TodoReturn updateState();
	TodoReturn valueDidChange(int, float);
	TodoReturn onCustomToggleTriggerValue(cocos2d::CCObject*);
	TodoReturn init(CameraTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn create(CameraTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupStaticCameraPopup();
}

[[link(android)]]
class SetupTimerTriggerPopup {
	TodoReturn init(TimerTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn create(TimerTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupTimerTriggerPopup();
}

[[link(android)]]
class SpawnTriggerGameObject {
	TodoReturn changeRemap(int, int, bool);
	TodoReturn removeRemap(int, int);
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, std::vector<int, std::allocator<int> > const*);
	TodoReturn updateRemapKeys(std::vector<int, std::allocator<int> > const&);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init();
	TodoReturn create();
	TodoReturn addRemap(int, int);
	TodoReturn ~SpawnTriggerGameObject();
}

[[link(android)]]
class SpriteAnimationManager {
	TodoReturn getAnimType(std::string);
	TodoReturn overridePrio();
	TodoReturn runAnimation(std::string);
	TodoReturn initWithOwner(CCAnimatedSprite*, std::string);
	TodoReturn loadAnimations(std::string);
	TodoReturn queueAnimation(std::string);
	TodoReturn resetAnimState();
	TodoReturn stopAnimations();
	TodoReturn storeAnimation(cocos2d::CCAnimate*, cocos2d::CCAnimate*, std::string, int, spriteMode, cocos2d::CCSpriteFrame*);
	TodoReturn createWithOwner(CCAnimatedSprite*, std::string);
	TodoReturn finishAnimation(std::string);
	TodoReturn createAnimations(std::string);
	TodoReturn executeAnimation(std::string);
	TodoReturn animationFinished();
	TodoReturn runQueuedAnimation();
	TodoReturn updateAnimationSpeed(float);
	TodoReturn callAnimationFinished();
	TodoReturn playSoundForAnimation(std::string);
	TodoReturn offsetCurrentAnimation(float);
	TodoReturn storeSoundForAnimation(cocos2d::CCString*, std::string, float);
	TodoReturn switchToFirstFrameOfAnimation(std::string);
	TodoReturn getPrio(std::string);
	TodoReturn doCleanup();
	TodoReturn playSound(std::string);
	TodoReturn ~SpriteAnimationManager();
}

[[link(android)]]
class TimerTriggerGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, std::vector<int, std::allocator<int> > const*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn ~TimerTriggerGameObject();
}

[[link(android)]]
class BoomScrollLayerDelegate {
	TodoReturn scrollLayerMoved(cocos2d::CCPoint);
	TodoReturn scrollLayerScrolledToPage(BoomScrollLayer*, int);
	TodoReturn scrollLayerScrollingStarted(BoomScrollLayer*);
	TodoReturn scrollLayerWillScrollToPage(BoomScrollLayer*, int);
}

[[link(android)]]
class CameraTriggerGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, std::vector<int, std::allocator<int> > const*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn ~CameraTriggerGameObject();
}

[[link(android)]]
class ChanceTriggerGameObject {
	TodoReturn editChanceObject(int, int);
	TodoReturn revertChanceRemap();
	TodoReturn remapChanceObjects(std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > > const*);
	TodoReturn init(char const*);
	TodoReturn ~ChanceTriggerGameObject();
}

[[link(android)]]
class CustomSongLayerDelegate {
	TodoReturn customSongLayerClosed();
}

[[link(android)]]
class DownloadMessageDelegate {
	TodoReturn downloadMessageFailed(int);
	TodoReturn downloadMessageFinished(GJUserMessage*);
}

[[link(android)]]
class GJAccountBackupDelegate {
	TodoReturn backupAccountFailed(BackupAccountError, int);
	TodoReturn backupAccountFinished();
}

[[link(android)]]
class GJDropDownLayerDelegate {
	TodoReturn dropDownLayerWillClose(GJDropDownLayer*);
}

[[link(android)]]
class LevelListDeleteDelegate {
	TodoReturn levelListDeleteFailed(int);
	TodoReturn levelListDeleteFinished(int);
}

[[link(android)]]
class ObjectControlGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~ObjectControlGameObject();
}

[[link(android)]]
class PlayerControlGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~PlayerControlGameObject();
}

[[link(android)]]
class SetupCameraRotatePopup2 {
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupCameraRotatePopup2();
}

[[link(android)]]
class SetupObjectControlPopup {
	TodoReturn init(ObjectControlGameObject*, cocos2d::CCArray*);
	TodoReturn create(ObjectControlGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupObjectControlPopup();
}

[[link(android)]]
class SetupObjectOptionsPopup {
	TodoReturn onDontFade(cocos2d::CCObject*);
	TodoReturn onIceBlock(cocos2d::CCObject*);
	TodoReturn onPassable(cocos2d::CCObject*);
	TodoReturn onDontBoost(cocos2d::CCObject*);
	TodoReturn onDontEnter(cocos2d::CCObject*);
	TodoReturn onGripSlope(cocos2d::CCObject*);
	TodoReturn onNonStickX(cocos2d::CCObject*);
	TodoReturn onNonStickY(cocos2d::CCObject*);
	TodoReturn onAlwaysHide(cocos2d::CCObject*);
	TodoReturn onDontBoostX(cocos2d::CCObject*);
	TodoReturn onHighDetail(cocos2d::CCObject*);
	TodoReturn onNoParticle(cocos2d::CCObject*);
	TodoReturn onDisableGlow(cocos2d::CCObject*);
	TodoReturn onExtraSticky(cocos2d::CCObject*);
	TodoReturn onHideEffects(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn onCenterEffect(cocos2d::CCObject*);
	TodoReturn onNoAudioScale(cocos2d::CCObject*);
	TodoReturn onDisableObject(cocos2d::CCObject*);
	TodoReturn onApplyScaleStick(cocos2d::CCObject*);
	TodoReturn onToggleAreaParent(cocos2d::CCObject*);
	TodoReturn onExtendedCollision(cocos2d::CCObject*);
	TodoReturn onSinglePlayerTouch(cocos2d::CCObject*);
	TodoReturn onToggleGroupParent(cocos2d::CCObject*);
	TodoReturn determineStartValues();
	TodoReturn init(GameObject*, cocos2d::CCArray*, SetGroupIDLayer*);
	TodoReturn show();
	TodoReturn create(GameObject*, cocos2d::CCArray*, SetGroupIDLayer*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onReverse(cocos2d::CCObject*);
	TodoReturn ~SetupObjectOptionsPopup();
}

[[link(android)]]
class SetupPickupTriggerPopup {
	TodoReturn updateState();
	TodoReturn onPlusButton(cocos2d::CCObject*);
	TodoReturn onCustomToggleTriggerValue(cocos2d::CCObject*);
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupPickupTriggerPopup();
}

[[link(android)]]
class SetupPlatformerEndPopup {
	TodoReturn init(EndTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn create(EndTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupPlatformerEndPopup();
}

[[link(android)]]
class SetupPlayerControlPopup {
	TodoReturn init(PlayerControlGameObject*, cocos2d::CCArray*);
	TodoReturn create(PlayerControlGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupPlayerControlPopup();
}

[[link(android)]]
class SetupRotateCommandPopup {
	TodoReturn valueDidChange(int, float);
	TodoReturn updateInputNode(int, float);
	TodoReturn onInfiniteDuration(cocos2d::CCObject*);
	TodoReturn updateControlVisibility();
	TodoReturn onCustomToggleTriggerValue(cocos2d::CCObject*);
	TodoReturn triggerSliderValueFromValue(int, float);
	TodoReturn triggerValueFromSliderValue(int, float);
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupRotateCommandPopup();
}

[[link(android)]]
class SetupSmartTemplateLayer {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn init(GJSmartTemplate*);
	TodoReturn create(GJSmartTemplate*);
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onClick(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupSmartTemplateLayer();
}

[[link(android)]]
class SetupSpawnParticlePopup {
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupSpawnParticlePopup();
}

[[link(android)]]
class ShareLevelSettingsLayer {
	TodoReturn onCopyable(cocos2d::CCObject*);
	TodoReturn onPassword(cocos2d::CCObject*);
	TodoReturn onUnlisted(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn onEditPassword(cocos2d::CCObject*);
	TodoReturn numberInputClosed(NumberInputLayer*);
	TodoReturn updateSettingsState();
	TodoReturn onUnlistedFriendsOnly(cocos2d::CCObject*);
	TodoReturn init(GJGameLevel*);
	TodoReturn create(GJGameLevel*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~ShareLevelSettingsLayer();
}

[[link(android)]]
class SpawnParticleGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~SpawnParticleGameObject();
}

[[link(android)]]
class AdvancedFollowEditObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn ~AdvancedFollowEditObject();
}

[[link(android)]]
class AudioLineGuideGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~AudioLineGuideGameObject();
}

[[link(android)]]
class BrowseSmartTemplateLayer {
	TodoReturn createDots();
	TodoReturn updateDots();
	TodoReturn createPrefab(std::string, int);
	TodoReturn keyBackClicked();
	TodoReturn addObjectToPage(cocos2d::CCObject*, int);
	TodoReturn onTemplateObject(cocos2d::CCObject*);
	TodoReturn addPrefabMenuItem(SmartPrefabResult, int);
	TodoReturn init(GJSmartTemplate*, SmartBrowseFilter);
	TodoReturn create(GJSmartTemplate*, SmartBrowseFilter);
	TodoReturn onBack(cocos2d::CCObject*);
	TodoReturn onClick(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn goToPage(int);
	TodoReturn baseSetup();
	TodoReturn ~BrowseSmartTemplateLayer();
}

[[link(android)]]
class CCScrollLayerExtDelegate {
	TodoReturn scrollViewTouchEnd(CCScrollLayerExt*);
	TodoReturn scrollViewTouchBegin(CCScrollLayerExt*);
	TodoReturn scrollViewTouchMoving(CCScrollLayerExt*);
	TodoReturn scrollViewDidEndMoving(CCScrollLayerExt*);
	TodoReturn scrollViewDidEndDecelerating(CCScrollLayerExt*);
	TodoReturn scrllViewWillBeginDecelerating(CCScrollLayerExt*);
}

[[link(android)]]
class PlatformDownloadDelegate {
	TodoReturn downloadFailed(char const*);
	TodoReturn downloadFinished(char const*);
}

[[link(android)]]
class RotateGameplayGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn updateStartValues();
	TodoReturn updateGameplayRotation();
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~RotateGameplayGameObject();
}

[[link(android)]]
class SetupAudioLineGuidePopup {
	TodoReturn selectSettingClosed(SelectSettingLayer*);
	TodoReturn init(AudioLineGuideGameObject*, cocos2d::CCArray*);
	TodoReturn create(AudioLineGuideGameObject*, cocos2d::CCArray*);
	TodoReturn onSpeed(cocos2d::CCObject*);
	TodoReturn ~SetupAudioLineGuidePopup();
}

[[link(android)]]
class SetupCameraOffsetTrigger {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn onEasingRate(cocos2d::CCObject*);
	TodoReturn onTargetMode(cocos2d::CCObject*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn sliderXChanged(cocos2d::CCObject*);
	TodoReturn sliderYChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn valuePopupClosed(ConfigureValuePopup*, float);
	TodoReturn updateEasingLabel();
	TodoReturn updateValueXLabel();
	TodoReturn updateValueYLabel();
	TodoReturn posFromSliderValue(float);
	TodoReturn sliderValueFromPos(int);
	TodoReturn determineStartValues();
	TodoReturn updateEasingRateLabel();
	TodoReturn updateMoveCommandPosX();
	TodoReturn updateMoveCommandPosY();
	TodoReturn updateMoveCommandEasing();
	TodoReturn toggleEasingRateVisibility();
	TodoReturn updateMoveCommandEasingRate();
	TodoReturn init(CameraTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn create(CameraTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onEasing(cocos2d::CCObject*);
	TodoReturn ~SetupCameraOffsetTrigger();
}

[[link(android)]]
class SetupGameplayOffsetPopup {
	TodoReturn onDefaultValues(cocos2d::CCObject*);
	TodoReturn updateInputNode(int, float);
	TodoReturn updateInputValue(int, float&);
	TodoReturn onCustomToggleTriggerValue(cocos2d::CCObject*);
	TodoReturn triggerSliderValueFromValue(int, float);
	TodoReturn triggerValueFromSliderValue(int, float);
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupGameplayOffsetPopup();
}

[[link(android)]]
class SetupGravityTriggerPopup {
	TodoReturn valueDidChange(int, float);
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupGravityTriggerPopup();
}

[[link(android)]]
class SetupInteractObjectPopup {
	TodoReturn updateItems();
	TodoReturn onPlusButton(cocos2d::CCObject*);
	TodoReturn valueDidChange(int, float);
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupInteractObjectPopup();
}

[[link(android)]]
class SetupObjectOptions2Popup {
	TodoReturn onPlusButton(cocos2d::CCObject*);
	TodoReturn init(GameObject*, cocos2d::CCArray*);
	TodoReturn create(GameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupObjectOptions2Popup();
}

[[link(android)]]
class SetupOptionsTriggerPopup {
	TodoReturn onCustomToggleTriggerValue(cocos2d::CCObject*);
	TodoReturn init(GameOptionsTrigger*, cocos2d::CCArray*);
	TodoReturn create(GameOptionsTrigger*, cocos2d::CCArray*);
	TodoReturn addOption(int, std::string);
	TodoReturn ~SetupOptionsTriggerPopup();
}

[[link(android)]]
class SetupRandAdvTriggerPopup {
	TodoReturn onAddChance(cocos2d::CCObject*);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn removeGroupID(int);
	TodoReturn addChanceToObject(RandTriggerGameObject*, int, int);
	TodoReturn onRemoveFromGroup(cocos2d::CCObject*);
	TodoReturn callRemoveFromGroup(float);
	TodoReturn updateGroupIDButtons();
	TodoReturn removeGroupIDFromObject(RandTriggerGameObject*, int);
	TodoReturn init(RandTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn create(RandTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn addChance(int, int);
	TodoReturn ~SetupRandAdvTriggerPopup();
}

[[link(android)]]
class SetupRotateGameplayPopup {
	TodoReturn onPlusButton(cocos2d::CCObject*);
	TodoReturn valueDidChange(int, float);
	TodoReturn init(RotateGameplayGameObject*, cocos2d::CCArray*);
	TodoReturn create(RotateGameplayGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupRotateGameplayPopup();
}

[[link(android)]]
class TriggerControlGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, std::vector<int, std::allocator<int> > const*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn updateTriggerControlFrame();
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn ~TriggerControlGameObject();
}

[[link(android)]]
class GJAccountRegisterDelegate {
	TodoReturn registerAccountFailed(AccountError);
	TodoReturn registerAccountFinished();
}

[[link(android)]]
class GJAccountSettingsDelegate {
	TodoReturn updateSettingsFailed();
	TodoReturn updateSettingsFinished();
}

[[link(android)]]
class GJRotationControlDelegate {
	TodoReturn angleChanged(float);
	TodoReturn angleChangeBegin();
	TodoReturn angleChangeEnded();
}

[[link(android)]]
class GJSmartBlockPreviewSprite {
	TodoReturn init();
	TodoReturn visit();
	TodoReturn create();
	TodoReturn ~GJSmartBlockPreviewSprite();
}

[[link(android)]]
class KeyframeAnimTriggerObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init();
	TodoReturn create();
	TodoReturn ~KeyframeAnimTriggerObject();
}

[[link(android)]]
class SequenceTriggerGameObject {
	TodoReturn resetObject();
	TodoReturn deleteTarget(int);
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn reorderTarget(int, bool);
	TodoReturn triggerObject(GJBaseGameLayer*, int, std::vector<int, std::allocator<int> > const*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn updateSequenceTotalCount();
	TodoReturn init();
	TodoReturn create();
	TodoReturn addCount(int, int);
	TodoReturn addTarget(int, int);
	TodoReturn ~SequenceTriggerGameObject();
}

[[link(android)]]
class SetupAreaAnimTriggerPopup {
	TodoReturn valueDidChange(int, float);
	TodoReturn updateTargetIDLabel();
	TodoReturn onDeactivateAnimValue(cocos2d::CCObject*);
	TodoReturn updateDefaultTriggerValues();
	TodoReturn createValueControlAdvancedAnim(int, std::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float, float, int, int, GJInputStyle);
	TodoReturn init(EnterEffectObject*, cocos2d::CCArray*, int);
	TodoReturn create(EnterEffectObject*, cocos2d::CCArray*, int);
	TodoReturn ~SetupAreaAnimTriggerPopup();
}

[[link(android)]]
class SetupAreaFadeTriggerPopup {
	TodoReturn init(EnterEffectObject*, cocos2d::CCArray*);
	TodoReturn create(EnterEffectObject*, cocos2d::CCArray*);
	TodoReturn ~SetupAreaFadeTriggerPopup();
}

[[link(android)]]
class SetupAreaMoveTriggerPopup {
	TodoReturn getModeValues(int, int&, bool&, bool&);
	TodoReturn valueDidChange(int, float);
	TodoReturn onSpecialTarget(cocos2d::CCObject*);
	TodoReturn updateInputNode(int, float);
	TodoReturn updateInputValue(int, float&);
	TodoReturn onNextFreeEffectID(cocos2d::CCObject*);
	TodoReturn addAreaDefaultControls(int);
	TodoReturn updateEnterTargetIDState();
	TodoReturn updateDefaultTriggerValues();
	TodoReturn triggerSliderValueFromValue(int, float);
	TodoReturn triggerValueFromSliderValue(int, float);
	TodoReturn init(EnterEffectObject*, cocos2d::CCArray*);
	TodoReturn create(EnterEffectObject*, cocos2d::CCArray*);
	TodoReturn onMode(cocos2d::CCObject*);
	TodoReturn ~SetupAreaMoveTriggerPopup();
}

[[link(android)]]
class SetupAreaTintTriggerPopup {
	TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::_ccHSVValue);
	TodoReturn valueDidChange(int, float);
	TodoReturn updateHSVButton();
	TodoReturn determineStartValues();
	TodoReturn init(EnterEffectObject*, cocos2d::CCArray*);
	TodoReturn onHSV(cocos2d::CCObject*);
	TodoReturn create(EnterEffectObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupAreaTintTriggerPopup();
}

[[link(android)]]
class SetupItemEditTriggerPopup {
	TodoReturn onOpButton(cocos2d::CCObject*);
	TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int);
	TodoReturn valueDidChange(int, float);
	TodoReturn updateFormulaLabel();
	TodoReturn onCustomToggleTriggerValue(cocos2d::CCObject*);
	TodoReturn init(ItemTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn create(ItemTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupItemEditTriggerPopup();
}

[[link(android)]]
class SetupSequenceTriggerPopup {
	TodoReturn onAddChance(cocos2d::CCObject*);
	TodoReturn onChangeOrder(cocos2d::CCObject*);
	TodoReturn onDeleteSelected(cocos2d::CCObject*);
	TodoReturn updateGroupIDButtons();
	TodoReturn onCustomToggleTriggerValue(cocos2d::CCObject*);
	TodoReturn init(SequenceTriggerGameObject*);
	TodoReturn create(SequenceTriggerGameObject*);
	TodoReturn onSelect(cocos2d::CCObject*);
	TodoReturn ~SetupSequenceTriggerPopup();
}

[[link(android)]]
class GJTransformControlDelegate {
	TodoReturn anchorPointMoved(cocos2d::CCPoint);
	TodoReturn getTransformNode();
	TodoReturn transformChangeBegin();
	TodoReturn transformChangeEnded();
	TodoReturn transformSkewXChanged(float);
	TodoReturn transformSkewYChanged(float);
	TodoReturn transformResetRotation();
	TodoReturn transformScaleXChanged(float);
	TodoReturn transformScaleYChanged(float);
	TodoReturn updateTransformControl();
	TodoReturn transformScaleXYChanged(float, float);
	TodoReturn transformRestoreRotation();
	TodoReturn transformRotationChanged(float);
	TodoReturn transformRotationXChanged(float);
	TodoReturn transformRotationYChanged(float);
	TodoReturn getUI();
}

[[link(android)]]
class LeaderboardManagerDelegate {
	TodoReturn loadLeaderboardFailed(char const*);
	TodoReturn updateUserScoreFailed();
	TodoReturn loadLeaderboardFinished(cocos2d::CCArray*, char const*);
	TodoReturn updateUserScoreFinished();
}

[[link(android)]]
class SetupCollisionTriggerPopup {
	TodoReturn onTargetP1(cocos2d::CCObject*);
	TodoReturn onTargetP2(cocos2d::CCObject*);
	TodoReturn onTargetPP(cocos2d::CCObject*);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateItemID();
	TodoReturn onEnableGroup(cocos2d::CCObject*);
	TodoReturn onItemIDArrow(cocos2d::CCObject*);
	TodoReturn updateItemID2();
	TodoReturn onItemID2Arrow(cocos2d::CCObject*);
	TodoReturn updateTargetID();
	TodoReturn onTargetIDArrow(cocos2d::CCObject*);
	TodoReturn onActivateOnExit(cocos2d::CCObject*);
	TodoReturn determineStartValues();
	TodoReturn updateItemIDInputLabel();
	TodoReturn updateItemID2InputLabel();
	TodoReturn updateTargetIDInputLabel();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~SetupCollisionTriggerPopup();
}

[[link(android)]]
class TransformTriggerGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, std::vector<int, std::allocator<int> > const*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn ~TransformTriggerGameObject();
}

[[link(android)]]
class UpdateAccountSettingsPopup {
	TodoReturn keyBackClicked();
	TodoReturn updateSettingsFailed();
	TodoReturn updateSettingsFinished();
	TodoReturn init(GJAccountSettingsLayer*, int, int, int, std::string, std::string, std::string);
	TodoReturn create(GJAccountSettingsLayer*, int, int, int, std::string, std::string, std::string);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~UpdateAccountSettingsPopup();
}

[[link(android)]]
class AdvancedFollowTriggerObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(std::vector<std::string, std::allocator<std::string> >&, std::vector<void*, std::allocator<void*> >&);
	TodoReturn getAdvancedFollowID();
	TodoReturn init(char const*);
	TodoReturn create(char const*);
	TodoReturn ~AdvancedFollowTriggerObject();
}

[[link(android)]]
class ConfigureValuePopupDelegate {
	TodoReturn valuePopupClosed(ConfigureValuePopup*, float);
}

[[link(android)]]
class SetupAdvFollowRetargetPopup {
	TodoReturn valueDidChange(int, float);
	TodoReturn updateDefaultTriggerValues();
	TodoReturn init(AdvancedFollowEditObject*, cocos2d::CCArray*);
	TodoReturn create(AdvancedFollowEditObject*, cocos2d::CCArray*);
	TodoReturn ~SetupAdvFollowRetargetPopup();
}

[[link(android)]]
class SetupAreaRotateTriggerPopup {
	TodoReturn init(EnterEffectObject*, cocos2d::CCArray*);
	TodoReturn create(EnterEffectObject*, cocos2d::CCArray*);
	TodoReturn ~SetupAreaRotateTriggerPopup();
}

[[link(android)]]
class SetupTimerEventTriggerPopup {
	TodoReturn init(TimerTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn create(TimerTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupTimerEventTriggerPopup();
}

[[link(android)]]
class CustomizeObjectSettingsPopup {
	TodoReturn onCustomToggleTriggerValue(cocos2d::CCObject*);
	TodoReturn init(GameObject*, cocos2d::CCArray*, CustomizeObjectLayer*);
	TodoReturn create(GameObject*, cocos2d::CCArray*, CustomizeObjectLayer*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn ~CustomizeObjectSettingsPopup();
}

[[link(android)]]
class GJSpecialColorSelectDelegate {
	TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
}

[[link(android)]]
class SetupItemCompareTriggerPopup {
	TodoReturn onOpButton(cocos2d::CCObject*);
	TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int);
	TodoReturn valueDidChange(int, float);
	TodoReturn updateFormulaLabel();
	TodoReturn onCustomToggleTriggerValue(cocos2d::CCObject*);
	TodoReturn init(ItemTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn create(ItemTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupItemCompareTriggerPopup();
}

[[link(android)]]
class SetupTimerControlTriggerPopup {
	TodoReturn onCustomToggleTriggerValue(cocos2d::CCObject*);
	TodoReturn init(TimerTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn create(TimerTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupTimerControlTriggerPopup();
}

[[link(android)]]
class tk::spline {
	TodoReturn set_points(std::vector<double, std::allocator<double> > const&, std::vector<double, std::allocator<double> > const&, tk::spline::spline_type);
	TodoReturn set_boundary(tk::spline::bd_type, double, tk::spline::bd_type, double);
	TodoReturn make_monotonic();
	TodoReturn set_coeffs_from_b();
	TodoReturn ~spline();
	TodoReturn find_closest(double);
	TodoReturn deriv(int, double);
	TodoReturn solve(double, bool);
	TodoReturn operator()(double);
}

[[link(android)]]
class SetupAdvFollowEditPhysicsPopup {
	TodoReturn valueDidChange(int, float);
	TodoReturn init(AdvancedFollowEditObject*, cocos2d::CCArray*);
	TodoReturn create(AdvancedFollowEditObject*, cocos2d::CCArray*);
	TodoReturn ~SetupAdvFollowEditPhysicsPopup();
}

[[link(android)]]
class SetupAreaTransformTriggerPopup {
	TodoReturn init(EnterEffectObject*, cocos2d::CCArray*);
	TodoReturn create(EnterEffectObject*, cocos2d::CCArray*);
	TodoReturn ~SetupAreaTransformTriggerPopup();
}

[[link(android)]]
class SetupCollisionStateTriggerPopup {
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupCollisionStateTriggerPopup();
}

[[link(android)]]
class SetupPersistentItemTriggerPopup {
	TodoReturn init(ItemTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn create(ItemTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupPersistentItemTriggerPopup();
}

[[link(android)]]
class SetupInstantCollisionTriggerPopup {
	TodoReturn valueDidChange(int, float);
	TodoReturn updateSpecialNodes();
	TodoReturn updateDefaultTriggerValues();
	TodoReturn init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn create(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn ~SetupInstantCollisionTriggerPopup();
}

[[link(android)]]
class fmt::SystemError {
	TodoReturn init(int, fmt::BasicStringRef<char>, fmt::ArgList const&);
	TodoReturn SystemError();
	TodoReturn SystemError(fmt::SystemError const&);
	TodoReturn SystemError(int, fmt::BasicStringRef<char>);
	TodoReturn int error_code() const;
	TodoReturn void init(int, fmt::BasicStringRef<char>, fmt::ArgList const&);
}

[[link(android)]]
class fmt {
	TodoReturn print_colored(fmt::Color, fmt::BasicStringRef<char>, fmt::ArgList const&);
	TodoReturn ReportSystemError(int, fmt::BasicStringRef<char>);
	TodoReturn print(fmt::BasicStringRef<char>, fmt::ArgList const&);
	TodoReturn print(__sFILE*, fmt::BasicStringRef<char>, fmt::ArgList const&);
	TodoReturn print(std::ostream&, fmt::BasicStringRef<char>, fmt::ArgList const&);
	TodoReturn format(fmt::BasicStringRef<char>, fmt::ArgList const&);
	TodoReturn printf(fmt::BasicStringRef<char>, fmt::ArgList const&);
}

[[link(android)]]
class fmt::internal {
	TodoReturn SignBitNoInline(double);
	TodoReturn ReportUnknownType(char, char const*);
	TodoReturn FormatSystemErrorMessage(fmt::BasicWriter<char>&, int, fmt::BasicStringRef<char>);
	TodoReturn StrError(int, char*&, unsigned long);
}

[[link(android)]]
class MD5 {
	TodoReturn MD5Transform(unsigned long*, unsigned char*);
}

[[link(android)]]
class FMOD::ChannelGroup {
	TodoReturn getChannel(int, FMOD::Channel**);
	TodoReturn getNumChannels(int*);
	TodoReturn release();
	TodoReturn addGroup(FMOD::ChannelGroup*, bool, FMOD::DSPConnection**);
}

[[link(android)]]
class FMOD::ChannelControl {
	TodoReturn getDSPClock(unsigned long long*, unsigned long long*);
	TodoReturn getUserData(void**);
	TodoReturn setCallback(FMOD_RESULT (*)(FMOD_CHANNELCONTROL*, FMOD_CHANNELCONTROL_TYPE, FMOD_CHANNELCONTROL_CALLBACK_TYPE, void*, void*));
	TodoReturn setUserData(void*);
	TodoReturn addFadePoint(unsigned long long, float);
	TodoReturn setVolumeRamp(bool);
	TodoReturn stop();
	TodoReturn addDSP(int, FMOD::DSP*);
	TodoReturn getDSP(int, FMOD::DSP**);
	TodoReturn getPitch(float*);
	TodoReturn setDelay(unsigned long long, unsigned long long, bool);
	TodoReturn setPitch(float);
	TodoReturn getPaused(bool*);
	TodoReturn getVolume(float*);
	TodoReturn setPaused(bool);
	TodoReturn setVolume(float);
}

[[link(android)]]
class FMOD::DSP {
	TodoReturn getMeteringInfo(FMOD_DSP_METERING_INFO*, FMOD_DSP_METERING_INFO*);
	TodoReturn setParameterBool(int, bool);
	TodoReturn setParameterFloat(int, float);
	TodoReturn setMeteringEnabled(bool, bool);
}

[[link(android)]]
class FMOD::Sound {
	TodoReturn getOpenState(FMOD_OPENSTATE*, unsigned int*, bool*, bool*);
	TodoReturn setLoopCount(int);
	TodoReturn release();
	TodoReturn getLength(unsigned int*, unsigned int);
}

[[link(android)]]
class FMOD::System {
	TodoReturn getVersion(unsigned int*);
	TodoReturn createSound(char const*, unsigned int, FMOD_CREATESOUNDEXINFO*, FMOD::Sound**);
	TodoReturn getCPUUsage(FMOD_CPU_USAGE*);
	TodoReturn mixerResume();
	TodoReturn createStream(char const*, unsigned int, FMOD_CREATESOUNDEXINFO*, FMOD::Sound**);
	TodoReturn mixerSuspend();
	TodoReturn createDSPByType(FMOD_DSP_TYPE, FMOD::DSP**);
	TodoReturn getDSPBufferSize(unsigned int*, int*);
	TodoReturn setDSPBufferSize(unsigned int, int);
	TodoReturn getSoftwareFormat(int*, FMOD_SPEAKERMODE*, int*);
	TodoReturn setSoftwareFormat(int, FMOD_SPEAKERMODE, int);
	TodoReturn createChannelGroup(char const*, FMOD::ChannelGroup**);
	TodoReturn getStreamBufferSize(unsigned int*, unsigned int*);
	TodoReturn init(int, unsigned int, void*);
	TodoReturn close();
	TodoReturn update();
	TodoReturn lockDSP();
	TodoReturn release();
	TodoReturn playSound(FMOD::Sound*, FMOD::ChannelGroup*, bool, FMOD::Channel**);
	TodoReturn unlockDSP();
}

[[link(android)]]
class FMOD::Channel {
	TodoReturn getPosition(unsigned int*, unsigned int);
	TodoReturn setPosition(unsigned int, unsigned int);
	TodoReturn setLoopCount(int);
	TodoReturn getLoopPoints(unsigned int*, unsigned int, unsigned int*, unsigned int);
	TodoReturn setLoopPoints(unsigned int, unsigned int, unsigned int, unsigned int);
	TodoReturn getCurrentSound(FMOD::Sound**);
}

[[link(android)]]
class llvm {
	TodoReturn ConvertUTF8toWide(unsigned int, std::string const&, char*&, unsigned char const*&);
	TodoReturn hasUTF16ByteOrderMark(char const*, unsigned long);
	TodoReturn ConvertCodePointToUTF8(unsigned int, char*&);
	TodoReturn convertUTF16ToUTF8String(std::basic_string<unsigned short, std::char_traits<unsigned short>, std::allocator<unsigned short> > const&, std::string&);
}

[[link(android)]]
class pugi {
	TodoReturn get_memory_allocation_function();
	TodoReturn set_memory_management_functions(void* (*)(unsigned long), void (*)(void*));
	TodoReturn get_memory_deallocation_function();
	TodoReturn as_utf8(wchar_t const*);
	TodoReturn as_utf8(std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> > const&);
	TodoReturn as_wide(char const*);
	TodoReturn as_wide(std::string const&);
}

[[link(android)]]
class OBB2D {
	TodoReturn computeAxes();
	TodoReturn orderCorners();
	TodoReturn overlaps1Way(OBB2D*);
	TodoReturn getBoundingRect();
	TodoReturn calculateWithCenter(cocos2d::CCPoint, float, float, float);
	TodoReturn init(cocos2d::CCPoint, float, float, float);
	TodoReturn create(cocos2d::CCPoint, float, float, float);
	TodoReturn overlaps(OBB2D*);
	TodoReturn ~OBB2D();
}

[[link(android)]]
class rtsha1 {
	TodoReturn toHexString(unsigned char const*, char*);
	TodoReturn calc(void const*, int, unsigned char*);
}

[[link(android)]]
class Slider {
	TodoReturn hideGroove(bool);
	TodoReturn setRotated(bool);
	TodoReturn sliderBegan();
	TodoReturn sliderEnded();
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn disableTouch();
	TodoReturn enableSlider();
	TodoReturn setMaxOffset(float);
	TodoReturn disableSlider();
	TodoReturn getLiveDragging();
	TodoReturn setLiveDragging(bool);
	TodoReturn setBarVisibility(bool);
	TodoReturn init(cocos2d::CCNode*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, char const*, char const*, char const*, float);
	TodoReturn create(cocos2d::CCNode*, void (cocos2d::CCObject::*)(cocos2d::CCObject*));
	TodoReturn create(cocos2d::CCNode*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), float);
	TodoReturn create(cocos2d::CCNode*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), char const*, char const*, char const*, char const*, float);
	TodoReturn getThumb();
	TodoReturn getValue();
	TodoReturn setValue(float);
	TodoReturn updateBar();
	TodoReturn ~Slider();
}

[[link(android)]]
class cocos2d {
	TodoReturn ccArrayNew(unsigned int);
	TodoReturn ccDrawFree();
	TodoReturn ccDrawInit();
	TodoReturn ccDrawLine(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	TodoReturn ccDrawPoly(cocos2d::CCPoint const*, unsigned int, bool);
	TodoReturn ccDrawRect(cocos2d::CCPoint, cocos2d::CCPoint);
	TodoReturn ccGLEnable(cocos2d::ccGLServerState);
	TodoReturn ccpToAngle(cocos2d::CCPoint const&);
	TodoReturn qChildSort(void const*, void const*);
	TodoReturn tgaDestroy(cocos2d::sImageTGA*);
	TodoReturn ccArrayFree(cocos2d::_ccArray*&);
	TodoReturn ccCArrayNew(unsigned int);
	TodoReturn ccDrawLines(cocos2d::CCPoint const*, unsigned int);
	TodoReturn ccDrawPoint(cocos2d::CCPoint const&);
	TodoReturn ccGLBindVAO(unsigned int);
	TodoReturn ccpCompMult(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	TodoReturn ccpDistance(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	TodoReturn ccpForAngle(float);
	TodoReturn ccpFromSize(cocos2d::CCSize const&);
	TodoReturn ccPointSize(float);
	TodoReturn unzOpen2_64(void const*, cocos2d::zlib_filefunc64_def_s*);
	TodoReturn call_zopen64(cocos2d::zlib_filefunc64_32_def_s const*, void const*, int);
	TodoReturn call_zseek64(cocos2d::zlib_filefunc64_32_def_s const*, void*, unsigned long long, int);
	TodoReturn call_ztell64(cocos2d::zlib_filefunc64_32_def_s const*, void*);
	TodoReturn ccCArrayFree(cocos2d::_ccCArray*);
	TodoReturn ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool);
	TodoReturn ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool, float, float);
	TodoReturn ccDrawPoints(cocos2d::CCPoint const*, unsigned int);
	TodoReturn CCMessageBox(char const*, char const*);
	TodoReturn ccpNormalize(cocos2d::CCPoint const&);
	TodoReturn CGAffineToGL(cocos2d::CCAffineTransform const*, float*);
	TodoReturn GLToCGAffine(float const*, cocos2d::CCAffineTransform*);
	TodoReturn tgaFlipImage(cocos2d::sImageTGA*);
	TodoReturn unzGetOffset(void*);
	TodoReturn unzSetOffset(void*, unsigned long);
	TodoReturn _base64Decode(unsigned char const*, unsigned int, unsigned char*, unsigned int*, bool);
	TodoReturn _base64Encode(unsigned char const*, unsigned int, char*, bool);
	TodoReturn ccArrayShrink(cocos2d::_ccArray*);
	TodoReturn ccDrawColor4B(unsigned char, unsigned char, unsigned char, unsigned char);
	TodoReturn ccDrawColor4F(float, float, float, float);
	TodoReturn ccGLBlendFunc(unsigned int, unsigned int);
	TodoReturn ccpFuzzyEqual(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
	TodoReturn iscjk_unicode(unsigned short);
	TodoReturn tgaLoadHeader(unsigned char*, unsigned long, cocos2d::sImageTGA*);
	TodoReturn unzGetFilePos(void*, cocos2d::unz_file_pos_s*);
	TodoReturn unzLocateFile(void*, char const*, int);
	TodoReturn ccGLUseProgram(unsigned int);
	TodoReturn ccpAngleSigned(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	TodoReturn cc_utf8_strlen(char const*);
	TodoReturn cocos2dVersion();
	TodoReturn unzGetOffset64(void*);
	TodoReturn unzGoToFilePos(void*, cocos2d::unz_file_pos_s*);
	TodoReturn unzSetOffset64(void*, unsigned long long);
	TodoReturn ccDrawSolidPoly(cocos2d::CCPoint const*, unsigned int, cocos2d::_ccColor4F);
	TodoReturn ccDrawSolidRect(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::_ccColor4F);
	TodoReturn cc_utf8_trim_ws(std::vector<unsigned short, std::allocator<unsigned short> >*);
	TodoReturn isspace_unicode(unsigned short);
	TodoReturn unzGetFilePos64(void*, cocos2d::unz64_file_pos_s*);
	TodoReturn unzGoToNextFile(void*);
	TodoReturn ccDrawCatmullRom(cocos2d::CCPointArray*, unsigned int);
	TodoReturn ccDrawQuadBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
	TodoReturn ccpLineIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, float*, float*);
	TodoReturn ccpRotateByAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
	TodoReturn CCRectFromString(char const*);
	TodoReturn CCSizeFromString(char const*);
	TodoReturn cc_utf16_to_utf8(unsigned short const*, int*);
	TodoReturn cc_utf8_to_utf16(char const*, int*);
	TodoReturn tgaLoadImageData(unsigned char*, unsigned long, cocos2d::sImageTGA*);
	TodoReturn unzGetGlobalInfo(void*, cocos2d::unz_global_info_s*);
	TodoReturn unzGoToFilePos64(void*, cocos2d::unz64_file_pos_s const*);
	TodoReturn unzGoToFirstFile(void*);
	TodoReturn ccDrawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
	TodoReturn ccGLBindTexture2D(unsigned int);
	TodoReturn ccGLDeleteProgram(unsigned int);
	TodoReturn ccGLDeleteTexture(unsigned int);
	TodoReturn ccpIntersectPoint(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	TodoReturn CCPointFromString(char const*);
	TodoReturn FNTConfigLoadFile(char const*);
	TodoReturn tgaRGBtogreyscale(cocos2d::sImageTGA*);
	TodoReturn unzGoToNextFile64(void*, cocos2d::unz_file_info64_s*, char*, unsigned long);
	TodoReturn ccArrayAppendArray(cocos2d::_ccArray*, cocos2d::_ccArray*);
	TodoReturn ccArrayRemoveArray(cocos2d::_ccArray*, cocos2d::_ccArray*);
	TodoReturn ccCardinalSplineAt(cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, float, float);
	TodoReturn ccDrawFilledCircle(cocos2d::CCPoint const&, float, float, unsigned int);
	TodoReturn ccGLBindTexture2DN(unsigned int, unsigned int);
	TodoReturn ccGLDeleteTextureN(unsigned int, unsigned int);
	TodoReturn unzGetGlobalInfo64(void*, cocos2d::unz_global_info64_s*);
	TodoReturn unzGoToFirstFile64(void*, cocos2d::unz_file_info64_s*, char*, unsigned long);
	TodoReturn unzOpenCurrentFile(void*);
	TodoReturn unzReadCurrentFile(void*, void*, unsigned int);
	TodoReturn ccArrayAppendObject(cocos2d::_ccArray*, cocos2d::CCObject*);
	TodoReturn ccArrayRemoveObject(cocos2d::_ccArray*, cocos2d::CCObject*, bool);
	TodoReturn ccCArrayAppendArray(cocos2d::_ccCArray*, cocos2d::_ccCArray*);
	TodoReturn ccCArrayAppendValue(cocos2d::_ccCArray*, void*);
	TodoReturn ccCArrayRemoveArray(cocos2d::_ccCArray*, cocos2d::_ccCArray*);
	TodoReturn ccCArrayRemoveValue(cocos2d::_ccCArray*, void*);
	TodoReturn ccDrawCircleSegment(cocos2d::CCPoint const&, float, float, float, unsigned int, bool, float, float);
	TodoReturn ccpSegmentIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	TodoReturn fill_fopen_filefunc(cocos2d::zlib_filefunc_def_s*);
	TodoReturn unzCloseCurrentFile(void*);
	TodoReturn unzGetGlobalComment(void*, char*, unsigned long);
	TodoReturn unzOpenCurrentFile2(void*, int*, int*, int);
	TodoReturn unzOpenCurrentFile3(void*, int*, int*, int, char const*);
	TodoReturn ccDrawCardinalSpline(cocos2d::CCPointArray*, float, unsigned int);
	TodoReturn FNTConfigRemoveCache();
	TodoReturn ccArrayContainsObject(cocos2d::_ccArray*, cocos2d::CCObject*);
	TodoReturn ccArrayDoubleCapacity(cocos2d::_ccArray*);
	TodoReturn ccCArrayContainsValue(cocos2d::_ccCArray*, void*);
	TodoReturn ccGLBlendResetToCache();
	TodoReturn ccVertexLineIntersect(float, float, float, float, float, float, float, float, float*);
	TodoReturn ccVertexLineToPolygon(cocos2d::CCPoint*, float, cocos2d::_ccVertex2F*, unsigned int, unsigned int);
	TodoReturn fill_fopen64_filefunc(cocos2d::zlib_filefunc64_def_s*);
	TodoReturn unzGetCurrentFileInfo(void*, cocos2d::unz_file_info_s*, char*, unsigned long, void*, unsigned long, char*, unsigned long);
	TodoReturn unzGetLocalExtrafield(void*, void*, unsigned int);
	TodoReturn CCAffineTransformScale(cocos2d::CCAffineTransform const&, float, float);
	TodoReturn ccArrayAppendObjectNew(cocos2d::_ccArray*, cocos2d::CCObject*);
	TodoReturn ccArrayFullRemoveArray(cocos2d::_ccArray*, cocos2d::_ccArray*);
	TodoReturn ccCArrayDoubleCapacity(cocos2d::_ccCArray*);
	TodoReturn CCAffineTransformConcat(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&);
	TodoReturn CCAffineTransformInvert(cocos2d::CCAffineTransform const&);
	TodoReturn __CCAffineTransformMake(float, float, float, float, float, float);
	TodoReturn CCAffineTransformRotate(cocos2d::CCAffineTransform const&, float);
	TodoReturn ccArrayFastRemoveObject(cocos2d::_ccArray*, cocos2d::CCObject*);
	TodoReturn ccArrayGetIndexOfObject(cocos2d::_ccArray*, cocos2d::CCObject*);
	TodoReturn ccArrayRemoveAllObjects(cocos2d::_ccArray*);
	TodoReturn ccCArrayFullRemoveArray(cocos2d::_ccCArray*, cocos2d::_ccCArray*);
	TodoReturn ccCArrayGetIndexOfValue(cocos2d::_ccCArray*, void*);
	TodoReturn ccCArrayRemoveAllValues(cocos2d::_ccCArray*);
	TodoReturn ccGLEnableVertexAttribs(unsigned int);
	TodoReturn unzGetCurrentFileInfo64(void*, cocos2d::unz_file_info64_s*, char*, unsigned long, void*, unsigned long, char*, unsigned long);
	TodoReturn ccArrayAppendObjectBatch(cocos2d::_ccArray*, cocos2d::CCObject*);
	TodoReturn ccArrayAppendObjectChild(cocos2d::_ccArray*, cocos2d::CCObject*);
	TodoReturn ccGLInvalidateStateCache();
	TodoReturn unzStringFileNameCompare(char const*, char const*, int);
	TodoReturn ccArrayRecreateNewIndexes(cocos2d::_ccArray*);
	TodoReturn ccArrayUpdateChildIndexes(cocos2d::_ccArray*);
	TodoReturn CCProfilingEndTimingBlock(char const*);
	TodoReturn CCAffineTransformTranslate(cocos2d::CCAffineTransform const&, float, float);
	TodoReturn ccArrayEnsureExtraCapacity(cocos2d::_ccArray*, unsigned int);
	TodoReturn ccArrayInsertObjectAtIndex(cocos2d::_ccArray*, cocos2d::CCObject*, unsigned int);
	TodoReturn ccArrayRemoveObjectAtIndex(cocos2d::_ccArray*, unsigned int, bool);
	TodoReturn ccCArrayInsertValueAtIndex(cocos2d::_ccCArray*, void*, unsigned int);
	TodoReturn ccCArrayRemoveValueAtIndex(cocos2d::_ccCArray*, unsigned int);
	TodoReturn CCRectApplyAffineTransform(cocos2d::CCRect const&, cocos2d::CCAffineTransform const&);
	TodoReturn ccSetProjectionMatrixDirty();
	TodoReturn cc_utf8_find_last_not_char(std::vector<unsigned short, std::allocator<unsigned short> > const&, unsigned short);
	TodoReturn unzOpenCurrentFilePassword(void*, char const*);
	TodoReturn ccArrayRecreateChildIndexes(cocos2d::_ccArray*);
	TodoReturn ccArraySwapObjectsAtIndexes(cocos2d::_ccArray*, unsigned int, unsigned int);
	TodoReturn ccCArrayEnsureExtraCapacity(cocos2d::_ccCArray*, unsigned int);
	TodoReturn CCProfilingBeginTimingBlock(char const*);
	TodoReturn CCProfilingResetTimingBlock(char const*);
	TodoReturn cc_utf16_vec_from_utf16_str(unsigned short const*);
	TodoReturn ccArrayAppendArrayWithResize(cocos2d::_ccArray*, cocos2d::_ccArray*);
	TodoReturn __CCSizeApplyAffineTransform(cocos2d::CCSize const&, cocos2d::CCAffineTransform const&);
	TodoReturn CCAffineTransformMakeIdentity();
	TodoReturn ccArrayAppendObjectWithResize(cocos2d::_ccArray*, cocos2d::CCObject*);
	TodoReturn ccCArrayAppendArrayWithResize(cocos2d::_ccCArray*, cocos2d::_ccCArray*);
	TodoReturn ccCArrayAppendValueWithResize(cocos2d::_ccCArray*, void*);
	TodoReturn __CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&);
	TodoReturn getCharacterCountInUTF8String(std::string const&);
	TodoReturn unzGetCurrentFileZStreamPos64(void*);
	TodoReturn ccArrayFastRemoveObjectAtIndex(cocos2d::_ccArray*, unsigned int);
	TodoReturn ccCArrayFastRemoveValueAtIndex(cocos2d::_ccCArray*, unsigned int);
	TodoReturn ccArrayInsertObjectAtIndexBatch(cocos2d::_ccArray*, cocos2d::CCObject*, unsigned int);
	TodoReturn ccArrayRemoveObjectAtIndexBatch(cocos2d::_ccArray*, unsigned int, bool);
	TodoReturn ccArrayRemoveObjectAtIndexChild(cocos2d::_ccArray*, unsigned int, bool);
	TodoReturn ccArrayAppendObjectWithResizeNew(cocos2d::_ccArray*, cocos2d::CCObject*);
	TodoReturn CCAffineTransformEqualToTransform(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&);
	TodoReturn ccArrayFastRemoveObjectAtIndexNew(cocos2d::_ccArray*, unsigned int);
	TodoReturn ccArrayAppendObjectWithResizeBatch(cocos2d::_ccArray*, cocos2d::CCObject*);
	TodoReturn ccArrayAppendObjectWithResizeChild(cocos2d::_ccArray*, cocos2d::CCObject*);
	TodoReturn ccArrayFastRemoveObjectAtIndexChild(cocos2d::_ccArray*, unsigned int);
	TodoReturn fill_zlib_filefunc64_32_def_from_filefunc32(cocos2d::zlib_filefunc64_32_def_s*, cocos2d::zlib_filefunc_def_s const*);
	TodoReturn CCLog(char const*, ...);
	TodoReturn clampf(float, float, float);
	TodoReturn unzeof(void*);
	TodoReturn ccpLerp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
	TodoReturn tgaLoad(char const*);
	TodoReturn unzOpen(char const*);
	TodoReturn unztell(void*);
	TodoReturn CCLuaLog(char const*);
	TodoReturn ccpAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	TodoReturn ccpClamp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	TodoReturn unzClose(void*);
	TodoReturn unzOpen2(char const*, cocos2d::zlib_filefunc_def_s*);
	TodoReturn ccNextPOT(unsigned long);
	TodoReturn ccpCompOp(cocos2d::CCPoint const&, float (*)(float));
	TodoReturn ccpLength(cocos2d::CCPoint const&);
	TodoReturn cc_wcslen(unsigned short const*);
	TodoReturn unzOpen64(void const*);
	TodoReturn unztell64(void*);
	TodoReturn CCAffineTransform cocos2d::CCAffineTransformConcat(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&);
	TodoReturn bool CCAffineTransformEqualToTransform(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&);
	TodoReturn CCAffineTransform cocos2d::CCAffineTransformInvert(cocos2d::CCAffineTransform const&);
	TodoReturn CCAffineTransform cocos2d::CCAffineTransformMakeIdentity();
	TodoReturn CCAffineTransform cocos2d::CCAffineTransformRotate(cocos2d::CCAffineTransform const&, float);
	TodoReturn CCAffineTransform cocos2d::CCAffineTransformScale(cocos2d::CCAffineTransform const&, float, float);
	TodoReturn CCAffineTransform cocos2d::CCAffineTransformTranslate(cocos2d::CCAffineTransform const&, float, float);
	TodoReturn void CCLog(char const*, ...);
	TodoReturn void CCLuaLog(char const*);
	TodoReturn void CCMessageBox(char const*, char const*);
	TodoReturn CCPoint cocos2d::CCPointFromString(char const*);
	TodoReturn void CCProfilingBeginTimingBlock(char const*);
	TodoReturn void CCProfilingEndTimingBlock(char const*);
	TodoReturn void CCProfilingResetTimingBlock(char const*);
	TodoReturn CCRect cocos2d::CCRectApplyAffineTransform(cocos2d::CCRect const&, cocos2d::CCAffineTransform const&);
	TodoReturn CCRect cocos2d::CCRectFromString(char const*);
	TodoReturn CCSize cocos2d::CCSizeFromString(char const*);
	TodoReturn CCBMFontConfiguration* cocos2d::FNTConfigLoadFile(char const*);
	TodoReturn void FNTConfigRemoveCache();
	TodoReturn CCAffineTransform cocos2d::__CCAffineTransformMake(float, float, float, float, float, float);
	TodoReturn CCPoint cocos2d::__CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&);
	TodoReturn CCSize cocos2d::__CCSizeApplyAffineTransform(cocos2d::CCSize const&, cocos2d::CCAffineTransform const&);
	TodoReturn CCPoint cocos2d::ccCardinalSplineAt(cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, float, float);
	TodoReturn void ccDrawCardinalSpline(cocos2d::CCPointArray*, float, unsigned int);
	TodoReturn void ccDrawCatmullRom(cocos2d::CCPointArray*, unsigned int);
	TodoReturn void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool);
	TodoReturn void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool, float, float);
	TodoReturn void ccDrawCircleSegment(cocos2d::CCPoint const&, float, float, float, unsigned int, bool, float, float);
	TodoReturn void ccDrawColor4B(unsigned char, unsigned char, unsigned char, unsigned char);
	TodoReturn void ccDrawColor4F(float, float, float, float);
	TodoReturn void ccDrawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
	TodoReturn void ccDrawFilledCircle(cocos2d::CCPoint const&, float, float, unsigned int);
	TodoReturn void ccDrawFree();
	TodoReturn void ccDrawInit();
	TodoReturn void ccDrawLine(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	TodoReturn void ccDrawLines(cocos2d::CCPoint const*, unsigned int);
	TodoReturn void ccDrawPoint(cocos2d::CCPoint const&);
	TodoReturn void ccDrawPoints(cocos2d::CCPoint const*, unsigned int);
	TodoReturn void ccDrawPoly(cocos2d::CCPoint const*, unsigned int, bool);
	TodoReturn void ccDrawQuadBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
	TodoReturn void ccDrawRect(cocos2d::CCPoint, cocos2d::CCPoint);
	TodoReturn void ccDrawSolidPoly(cocos2d::CCPoint const*, unsigned int, cocos2d::_ccColor4F);
	TodoReturn void ccDrawSolidRect(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::_ccColor4F);
	TodoReturn void ccGLBindTexture2D(unsigned int);
	TodoReturn void ccGLBindTexture2DN(unsigned int, unsigned int);
	TodoReturn void ccGLBindVAO(unsigned int);
	TodoReturn void ccGLBlendFunc(unsigned int, unsigned int);
	TodoReturn void ccGLBlendResetToCache();
	TodoReturn void ccGLDeleteProgram(unsigned int);
	TodoReturn void ccGLDeleteTexture(unsigned int);
	TodoReturn void ccGLDeleteTextureN(unsigned int, unsigned int);
	TodoReturn void ccGLEnable(cocos2d::ccGLServerState);
	TodoReturn void ccGLEnableVertexAttribs(unsigned int);
	TodoReturn void ccGLInvalidateStateCache();
	TodoReturn void ccGLUseProgram(unsigned int);
	TodoReturn void ccPointSize(float);
	TodoReturn void ccSetProjectionMatrixDirty();
	TodoReturn bool ccVertexLineIntersect(float, float, float, float, float, float, float, float, float*);
	TodoReturn void ccVertexLineToPolygon(cocos2d::CCPoint*, float, cocos2d::_ccVertex2F*, unsigned int, unsigned int);
	TodoReturn char* cc_utf16_to_utf8(unsigned short const*, int*);
	TodoReturn std::vector<unsigned short> cc_utf16_vec_from_utf16_str(unsigned short const*);
	TodoReturn unsigned int cc_utf8_find_last_not_char(std::vector<unsigned short> const&, unsigned short);
	TodoReturn long cc_utf8_strlen(char const*);
	TodoReturn unsigned short* cc_utf8_to_utf16(char const*, int*);
	TodoReturn void cc_utf8_trim_ws(std::vector<unsigned short>*);
	TodoReturn int cc_wcslen(unsigned short const*);
	TodoReturn float ccpAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	TodoReturn float ccpAngleSigned(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	TodoReturn CCPoint cocos2d::ccpClamp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	TodoReturn CCPoint cocos2d::ccpCompMult(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	TodoReturn CCPoint cocos2d::ccpCompOp(cocos2d::CCPoint const&, float (__cdecl*)(float));
	TodoReturn float ccpDistance(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	TodoReturn CCPoint cocos2d::ccpForAngle(float);
	TodoReturn CCPoint cocos2d::ccpFromSize(cocos2d::CCSize const&);
	TodoReturn bool ccpFuzzyEqual(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
	TodoReturn CCPoint cocos2d::ccpIntersectPoint(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	TodoReturn float ccpLength(cocos2d::CCPoint const&);
	TodoReturn CCPoint cocos2d::ccpLerp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
	TodoReturn bool ccpLineIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, float*, float*);
	TodoReturn CCPoint cocos2d::ccpNormalize(cocos2d::CCPoint const&);
	TodoReturn CCPoint cocos2d::ccpRotateByAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
	TodoReturn bool ccpSegmentIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	TodoReturn float ccpToAngle(cocos2d::CCPoint const&);
	TodoReturn float clampf(float, float, float);
	TodoReturn char const* cocos2dVersion();
	TodoReturn int gettimeofday(timeval*, cocos2d::timezone*);
	TodoReturn bool iscjk_unicode(unsigned short);
	TodoReturn bool isspace_unicode(unsigned short);
	TodoReturn int unzClose(void*);
	TodoReturn int unzCloseCurrentFile(void*);
	TodoReturn int unzGetCurrentFileInfo64(void*, cocos2d::unz_file_info64_s*, char*, unsigned long, void*, unsigned long, char*, unsigned long);
	TodoReturn int unzGetCurrentFileInfo(void*, cocos2d::unz_file_info_s*, char*, unsigned long, void*, unsigned long, char*, unsigned long);
	TodoReturn unsigned __int64 unzGetCurrentFileZStreamPos64(void*);
	TodoReturn int unzGetFilePos64(void*, cocos2d::unz64_file_pos_s*);
	TodoReturn int unzGetFilePos(void*, cocos2d::unz_file_pos_s*);
	TodoReturn int unzGetGlobalComment(void*, char*, unsigned long);
	TodoReturn int unzGetGlobalInfo64(void*, cocos2d::unz_global_info64_s*);
	TodoReturn int unzGetGlobalInfo(void*, cocos2d::unz_global_info_s*);
	TodoReturn int unzGetLocalExtrafield(void*, void*, unsigned int);
	TodoReturn unsigned __int64 unzGetOffset64(void*);
	TodoReturn unsigned long unzGetOffset(void*);
	TodoReturn int unzGoToFilePos64(void*, cocos2d::unz64_file_pos_s const*);
	TodoReturn int unzGoToFilePos(void*, cocos2d::unz_file_pos_s*);
	TodoReturn int unzGoToFirstFile64(void*, cocos2d::unz_file_info64_s*, char*, unsigned long);
	TodoReturn int unzGoToFirstFile(void*);
	TodoReturn int unzGoToNextFile64(void*, cocos2d::unz_file_info64_s*, char*, unsigned long);
	TodoReturn int unzGoToNextFile(void*);
	TodoReturn int unzLocateFile(void*, char const*, int);
	TodoReturn void* unzOpen2(char const*, cocos2d::zlib_filefunc_def_s*);
	TodoReturn void* unzOpen2_64(void const*, cocos2d::zlib_filefunc64_def_s*);
	TodoReturn void* unzOpen64(void const*);
	TodoReturn void* unzOpen(char const*);
	TodoReturn int unzOpenCurrentFile2(void*, int*, int*, int);
	TodoReturn int unzOpenCurrentFile3(void*, int*, int*, int, char const*);
	TodoReturn int unzOpenCurrentFile(void*);
	TodoReturn int unzOpenCurrentFilePassword(void*, char const*);
	TodoReturn int unzReadCurrentFile(void*, void*, unsigned int);
	TodoReturn int unzSetOffset64(void*, unsigned __int64);
	TodoReturn int unzSetOffset(void*, unsigned long);
	TodoReturn int unzStringFileNameCompare(char const*, char const*, int);
	TodoReturn int unzeof(void*);
	TodoReturn unsigned __int64 unztell64(void*);
	TodoReturn long unztell(void*);
}

[[link(android)]]
class _JNIEnv {
	TodoReturn CallStaticIntMethod(_jclass*, _jmethodID*, ...);
	TodoReturn CallStaticVoidMethod(_jclass*, _jmethodID*, ...);
	TodoReturn CallStaticFloatMethod(_jclass*, _jmethodID*, ...);
	TodoReturn CallStaticDoubleMethod(_jclass*, _jmethodID*, ...);
	TodoReturn CallStaticObjectMethod(_jclass*, _jmethodID*, ...);
	TodoReturn CallStaticBooleanMethod(_jclass*, _jmethodID*, ...);
}

[[link(android)]]
class UILayer {
	TodoReturn enableMenu();
	TodoReturn disableMenu();
	TodoReturn refreshDpad();
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn onDeleteCheck(cocos2d::CCObject*);
	TodoReturn editorPlaytest(bool);
	TodoReturn handleKeypress(cocos2d::enumKeyCodes, bool);
	TodoReturn keyBackClicked();
	TodoReturn updateDualMode(bool);
	TodoReturn resetAllButtons();
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn enableEditorMode();
	TodoReturn resetUINodeState();
	TodoReturn processUINodeTouch(GJUITouchEvent, int, cocos2d::CCPoint, GJUINode*);
	TodoReturn isJumpButtonPressed(bool);
	TodoReturn processUINodesTouch(GJUITouchEvent, cocos2d::CCTouch*);
	TodoReturn toggleMenuVisibility(bool);
	TodoReturn togglePlatformerMode(bool);
	TodoReturn toggleCheckpointsMenu(bool);
	TodoReturn updateUINodeVisibility(bool);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn draw();
	TodoReturn init(GJBaseGameLayer*);
	TodoReturn keyUp(cocos2d::enumKeyCodes);
	TodoReturn create(GJBaseGameLayer*);
	TodoReturn keyDown(cocos2d::enumKeyCodes);
	TodoReturn onCheck(cocos2d::CCObject*);
	TodoReturn onPause(cocos2d::CCObject*);
	TodoReturn ~UILayer();
}

[[link(android)]]
class URLCell {
	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(CCURLObject*);
	TodoReturn draw();
	TodoReturn init();
	TodoReturn onURL(cocos2d::CCObject*);
	TodoReturn URLCell(char const*, float, float);
	TodoReturn ~URLCell();
}

[[link(android)]]
class EditorUI {
	TodoReturn createGlow();
	TodoReturn createLoop();
	TodoReturn editObject(cocos2d::CCObject*);
	TodoReturn getModeBtn(char const*, int);
	TodoReturn moveObject(GameObject*, cocos2d::CCPoint);
	TodoReturn onPlayback(cocos2d::CCObject*);
	TodoReturn onPlaytest(cocos2d::CCObject*);
	TodoReturn onSettings(cocos2d::CCObject*);
	TodoReturn shouldSnap(GameObject*);
	TodoReturn toggleMode(cocos2d::CCObject*);
	TodoReturn toggleSnap(cocos2d::CCObject*);
	TodoReturn updateZoom(float);
	TodoReturn applyOffset(GameObject*);
	TodoReturn copyObjects(cocos2d::CCArray*, bool, bool);
	TodoReturn deselectAll();
	TodoReturn editObject2(cocos2d::CCObject*);
	TodoReturn editObject3(cocos2d::CCObject*);
	TodoReturn getNeighbor(int, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*);
	TodoReturn onCopyState(cocos2d::CCObject*);
	TodoReturn onDeleteAll(cocos2d::CCObject*);
	TodoReturn onDuplicate(cocos2d::CCObject*);
	TodoReturn onEditColor(cocos2d::CCObject*);
	TodoReturn onGoToLayer(cocos2d::CCObject*);
	TodoReturn onGroupDown(cocos2d::CCObject*);
	TodoReturn onLockLayer(cocos2d::CCObject*);
	TodoReturn scrollWheel(float, float);
	TodoReturn toggleSwipe(cocos2d::CCObject*);
	TodoReturn alignObjects(cocos2d::CCArray*, bool);
	TodoReturn angleChanged(float);
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn createExtras(cocos2d::CCArray*);
	TodoReturn createObject(int, cocos2d::CCPoint);
	TodoReturn createPrefab(GJSmartTemplate*, std::string, int);
	TodoReturn deleteObject(GameObject*, bool);
	TodoReturn enableButton(CreateMenuItem*);
	TodoReturn flipObjectsX(cocos2d::CCArray*);
	TodoReturn flipObjectsY(cocos2d::CCArray*);
	TodoReturn getCreateBtn(int, int);
	TodoReturn getGroupInfo(GameObject*, cocos2d::CCArray*, int&, int&, int&);
	TodoReturn getSnapAngle(GameObject*, cocos2d::CCArray*);
	TodoReturn offsetForKey(int);
	TodoReturn onDeleteInfo(cocos2d::CCObject*);
	TodoReturn onFindObject(cocos2d::CCObject*);
	TodoReturn onPasteColor(cocos2d::CCObject*);
	TodoReturn onPasteState(cocos2d::CCObject*);
	TodoReturn pasteObjects(std::string, bool);
	TodoReturn removeOffset(GameObject*);
	TodoReturn scaleObjects(cocos2d::CCArray*, float, float, cocos2d::CCPoint, ObjectScaleType);
	TodoReturn selectObject(GameObject*, bool);
	TodoReturn showMaxError();
	TodoReturn toggleLockUI(bool);
	TodoReturn updateSlider();
	TodoReturn disableButton(CreateMenuItem*);
	TodoReturn doCopyObjects(bool);
	TodoReturn edgeForObject(int, int);
	TodoReturn getTouchPoint(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn moveGamelayer(cocos2d::CCPoint);
	TodoReturn onColorFilter(cocos2d::CCObject*);
	TodoReturn onDeselectAll(cocos2d::CCObject*);
	TodoReturn onGroupSticky(cocos2d::CCObject*);
	TodoReturn onToggleGuide(EffectGameObject*);
	TodoReturn rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint);
	TodoReturn scaleXChanged(float);
	TodoReturn scaleYChanged(float);
	TodoReturn selectObjects(cocos2d::CCArray*, bool);
	TodoReturn setupEditMenu();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateButtons();
	TodoReturn valueFromXPos(float);
	TodoReturn xPosFromValue(float);
	TodoReturn zoomGameLayer(bool);
	TodoReturn createMoveMenu();
	TodoReturn createOutlines(cocos2d::CCArray*);
	TodoReturn deselectObject(GameObject*);
	TodoReturn deselectObject();
	TodoReturn doPasteInPlace(bool);
	TodoReturn doPasteObjects(bool);
	TodoReturn findSnapObject(cocos2d::CCPoint, float);
	TodoReturn findSnapObject(cocos2d::CCArray*, float);
	TodoReturn getGroupCenter(cocos2d::CCArray*, bool);
	TodoReturn keyBackClicked();
	TodoReturn moveForCommand(EditCommand);
	TodoReturn moveObjectCall(EditCommand);
	TodoReturn moveObjectCall(cocos2d::CCObject*);
	TodoReturn onCreateButton(cocos2d::CCObject*);
	TodoReturn onCreateObject(int);
	TodoReturn onPasteInPlace(cocos2d::CCObject*);
	TodoReturn onStopPlaytest(cocos2d::CCObject*);
	TodoReturn playCircleAnim(cocos2d::CCPoint, float, float);
	TodoReturn redoLastAction(cocos2d::CCObject*);
	TodoReturn replaceGroupID(GameObject*, int, int);
	TodoReturn scaleXYChanged(float, float);
	TodoReturn selectBuildTab(int);
	TodoReturn toggleFreeMove(cocos2d::CCObject*);
	TodoReturn undoLastAction(cocos2d::CCObject*);
	TodoReturn updateEditMenu();
	TodoReturn addSnapPosition(cocos2d::CCPoint);
	TodoReturn assignNewGroups(bool);
	TodoReturn canSelectObject(GameObject*);
	TodoReturn clickOnPosition(cocos2d::CCPoint);
	TodoReturn createRockBases(cocos2d::CCArray*);
	TodoReturn createRockEdges(cocos2d::CCArray*);
	TodoReturn findTriggerTest();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn getCycledObject(cocos2d::CCArray*, bool);
	TodoReturn getSimpleButton(std::string, void (cocos2d::CCObject::*)(cocos2d::CCObject*), cocos2d::CCMenu*);
	TodoReturn getSpriteButton(char const*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), cocos2d::CCMenu*, float);
	TodoReturn getSpriteButton(char const*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	TodoReturn getSpriteButton(cocos2d::CCSprite*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	TodoReturn onGoToBaseLayer(cocos2d::CCObject*);
	TodoReturn onGroupIDFilter(cocos2d::CCObject*);
	TodoReturn onNewCustomItem(cocos2d::CCObject*);
	TodoReturn onUngroupSticky(cocos2d::CCObject*);
	TodoReturn playtestStopped();
	TodoReturn setupCreateMenu();
	TodoReturn setupDeleteMenu();
	TodoReturn smartTypeForKey(int);
	TodoReturn transformObject(GameObject*, EditCommand, bool);
	TodoReturn anchorPointMoved(cocos2d::CCPoint);
	TodoReturn angleChangeBegin();
	TodoReturn angleChangeEnded();
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn convertToBaseKey(int);
	TodoReturn createUndoObject(UndoCommand, bool);
	TodoReturn editButtonUsable();
	TodoReturn getSmartNeighbor(SmartGameObject*, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*);
	TodoReturn getTransformNode();
	TodoReturn onDeleteSelected(cocos2d::CCObject*);
	TodoReturn onDeleteStartPos(cocos2d::CCObject*);
	TodoReturn onSelectBuildTab(cocos2d::CCObject*);
	TodoReturn onTargetIDChange(int);
	TodoReturn playerTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn playerTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn scaleChangeBegin();
	TodoReturn scaleChangeEnded();
	TodoReturn setIDPopupClosed(SetIDPopup*, int);
	TodoReturn showMaxCoinError();
	TodoReturn songStateChanged();
	TodoReturn transformObjects(cocos2d::CCArray*, cocos2d::CCPoint, float, float, float, float, float, float);
	TodoReturn triggerSwipeMode();
	TodoReturn updateCreateMenu(bool);
	TodoReturn updateDeleteMenu();
	TodoReturn colorSelectClosed(cocos2d::_ccColor3B);
	TodoReturn colorSelectClosed(cocos2d::CCNode*);
	TodoReturn createCustomItems();
	TodoReturn createExtraObject(int, cocos2d::CCPoint, GameObject*, cocos2d::CCArray*, int, int);
	TodoReturn editButton2Usable();
	TodoReturn editObjectSpecial(int);
	TodoReturn getGridSnappedPos(cocos2d::CCPoint);
	TodoReturn getRandomStartKey(int);
	TodoReturn getRelativeOffset(GameObject*);
	TodoReturn getSmartObjectKey(int, GJSmartDirection);
	TodoReturn getTransformState();
	TodoReturn orderUpCustomItem(cocos2d::CCObject*);
	TodoReturn reloadCustomItems();
	TodoReturn showMaxBasicError();
	TodoReturn updateGroupIDBtn2();
	TodoReturn updatePlaybackBtn();
	TodoReturn applySpecialOffset(cocos2d::CCPoint, GameObject*, cocos2d::CCPoint);
	TodoReturn arrayContainsClass(cocos2d::CCArray*, int);
	TodoReturn closeLiveHSVSelect();
	TodoReturn dynamicGroupUpdate(bool);
	TodoReturn getLimitedPosition(cocos2d::CCPoint);
	TodoReturn getSelectedObjects();
	TodoReturn onAssignNewGroupID();
	TodoReturn onDeleteCustomItem(cocos2d::CCObject*);
	TodoReturn recreateButtonTabs();
	TodoReturn rotationforCommand(EditCommand);
	TodoReturn shouldDeleteObject(GameObject*);
	TodoReturn toggleEnableRotate(cocos2d::CCObject*);
	TodoReturn updateGridNodeSize(int);
	TodoReturn updateGridNodeSize();
	TodoReturn updateGroupIDLabel();
	TodoReturn updateScaleControl();
	TodoReturn copyObjectsDetailed(cocos2d::CCArray*);
	TodoReturn createEdgeForObject(GameObject*, int);
	TodoReturn editorLayerForArray(cocos2d::CCArray*, bool);
	TodoReturn findAndSelectObject(int, bool);
	TodoReturn getEditColorTargets(ColorAction*&, ColorAction*&, EffectGameObject*&);
	TodoReturn isSpecialSnapObject(int);
	TodoReturn liveEditColorUsable();
	TodoReturn orderDownCustomItem(cocos2d::CCObject*);
	TodoReturn positionIsInSnapped(cocos2d::CCPoint);
	TodoReturn selectObjectsInRect(cocos2d::CCRect);
	TodoReturn transformObjectCall(EditCommand);
	TodoReturn transformObjectCall(cocos2d::CCObject*);
	TodoReturn updateDeleteButtons();
	TodoReturn activateScaleControl(cocos2d::CCObject*);
	TodoReturn centerCameraOnObject(GameObject*);
	TodoReturn checkLiveColorSelect();
	TodoReturn closeLiveColorSelect();
	TodoReturn deselectObjectsColor();
	TodoReturn onDeleteSelectedType(cocos2d::CCObject*);
	TodoReturn onResetSpecialFilter(cocos2d::CCObject*);
	TodoReturn onUpdateDeleteFilter(cocos2d::CCObject*);
	TodoReturn processSelectObjects(cocos2d::CCArray*);
	TodoReturn toggleStickyControls(bool);
	TodoReturn transformChangeBegin();
	TodoReturn transformChangeEnded();
	TodoReturn tryUpdateTimeMarkers();
	TodoReturn canAllowMultiActivate(GameObject*, cocos2d::CCArray*);
	TodoReturn changeSelectedObjects(cocos2d::CCArray*, bool);
	TodoReturn createExtrasForObject(int, GameObject*, cocos2d::CCArray*);
	TodoReturn createNewKeyframeAnim();
	TodoReturn deleteTypeFromObjects(int, cocos2d::CCArray*);
	TodoReturn deselectTargetPortals();
	TodoReturn editColorButtonUsable();
	TodoReturn onToggleSelectedOrder(EffectGameObject*);
	TodoReturn positionWithoutOffset(GameObject*);
	TodoReturn setupTransformControl();
	TodoReturn toggleDuplicateButton();
	TodoReturn toggleObjectInfoLabel();
	TodoReturn transformObjectsReset();
	TodoReturn transformSkewXChanged(float);
	TodoReturn transformSkewYChanged(float);
	TodoReturn updateEditButtonColor(int, cocos2d::_ccColor3B);
	TodoReturn updateEditColorButton();
	TodoReturn updateObjectInfoLabel();
	TodoReturn createUndoSelectObject(bool);
	TodoReturn deactivateScaleControl();
	TodoReturn selectAllWithDirection(bool);
	TodoReturn showDeleteConfirmation();
	TodoReturn spriteFromObjectString(std::string, bool, bool, int, cocos2d::CCArray*, cocos2d::CCArray*, GameObject*);
	TodoReturn toggleEditObjectButton();
	TodoReturn transformObjectsActive();
	TodoReturn transformResetRotation();
	TodoReturn transformScaleXChanged(float);
	TodoReturn transformScaleYChanged(float);
	TodoReturn updateTransformControl();
	TodoReturn activateRotationControl(cocos2d::CCObject*);
	TodoReturn getCreateMenuItemButton(cocos2d::CCSprite*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	TodoReturn resetObjectEditorValues(cocos2d::CCArray*);
	TodoReturn transformScaleXYChanged(float, float);
	TodoReturn updateSpecialUIElements();
	TodoReturn activateTransformControl(cocos2d::CCObject*);
	TodoReturn isLiveColorSelectTrigger(GameObject*);
	TodoReturn menuItemFromObjectString(std::string, int);
	TodoReturn toggleSpecialEditButtons();
	TodoReturn transformRestoreRotation();
	TodoReturn transformRotationChanged(float);
	TodoReturn addObjectsToSmartTemplate(GJSmartTemplate*, cocos2d::CCArray*);
	TodoReturn deactivateRotationControl();
	TodoReturn repositionObjectsToCenter(cocos2d::CCArray*, cocos2d::CCPoint, bool);
	TodoReturn resetSelectedObjectsColor();
	TodoReturn transformRotationXChanged(float);
	TodoReturn transformRotationYChanged(float);
	TodoReturn constrainGameLayerPosition(float, float);
	TodoReturn constrainGameLayerPosition();
	TodoReturn convertKeyBasedOnNeighbors(int, int, cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn createSmartObjectsFromType(int, cocos2d::CCArray*, bool, bool);
	TodoReturn deactivateTransformControl();
	TodoReturn showLiveColorSelectForMode(int);
	TodoReturn processSmartObjectsFromType(int, cocos2d::CCArray*, cocos2d::CCArray*, cocos2d::CCArray*, cocos2d::CCArray*);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn deleteSmartBlocksFromObjects(cocos2d::CCArray*);
	TodoReturn checkDiffAfterTransformAnchor(cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn createSmartObjectsFromTemplate(GJSmartTemplate*, cocos2d::CCArray*, bool, bool, bool, bool);
	TodoReturn showLiveColorSelectForModeSpecial(int);
	TodoReturn draw();
	TodoReturn init(LevelEditorLayer*);
	TodoReturn getUI();
	TodoReturn keyUp(cocos2d::enumKeyCodes);
	TodoReturn create(LevelEditorLayer*);
	TodoReturn onCopy(cocos2d::CCObject*);
	TodoReturn showUI(bool);
	TodoReturn zoomIn(cocos2d::CCObject*);
	TodoReturn editHSV();
	TodoReturn getXMin(int);
	TodoReturn keyDown(cocos2d::enumKeyCodes);
	TodoReturn onPaste(cocos2d::CCObject*);
	TodoReturn onPause(cocos2d::CCObject*);
	TodoReturn resetUI();
	TodoReturn zoomOut(cocos2d::CCObject*);
	TodoReturn onCreate();
	TodoReturn onDelete(cocos2d::CCObject*);
	TodoReturn editColor();
	TodoReturn editGroup(cocos2d::CCObject*);
	TodoReturn getButton(char const*, int, void (cocos2d::CCObject::*)(cocos2d::CCObject*), cocos2d::CCMenu*);
	TodoReturn onGroupUp(cocos2d::CCObject*);
	TodoReturn selectAll();
	TodoReturn ~EditorUI();
}

[[link(android)]]
class GameCell {
	TodoReturn updateBGColor(int);
	TodoReturn loadFromString(std::string);
	TodoReturn draw();
	TodoReturn init();
	TodoReturn onTouch(cocos2d::CCObject*);
	TodoReturn GameCell(char const*, float, float);
	TodoReturn ~GameCell();
}

[[link(android)]]
class GJUINode {
	TodoReturn getOpacity();
	TodoReturn resetState();
	TodoReturn setOpacity(unsigned char);
	TodoReturn touchEnded();
	TodoReturn updateSize(float, float);
	TodoReturn toggleModeB(bool);
	TodoReturn updateWidth(float);
	TodoReturn saveToConfig(UIButtonConfig&);
	TodoReturn updateHeight(float);
	TodoReturn getButtonScale();
	TodoReturn loadFromConfig(UIButtonConfig&);
	TodoReturn updateDeadzone(int);
	TodoReturn updateRangePos(cocos2d::CCPoint);
	TodoReturn activeTouchTest(cocos2d::CCPoint);
	TodoReturn highlightButton(int);
	TodoReturn toggleHighlight(int, bool);
	TodoReturn updateDragRadius(float);
	TodoReturn updateButtonScale(float);
	TodoReturn updateButtonFrames();
	TodoReturn activeRangeTouchTest(cocos2d::CCPoint);
	TodoReturn updateButtonPositions();
	TodoReturn draw();
	TodoReturn init(UIButtonConfig&);
	TodoReturn create(UIButtonConfig&);
	TodoReturn touchTest(cocos2d::CCPoint);
	TodoReturn ~GJUINode();
}

[[link(android)]]
class GManager {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn tryLoadData(DS_Dictionary*, std::string const&);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn getSaveString();
	TodoReturn loadFromString(std::string&);
	TodoReturn loadDataFromFile(std::string const&);
	TodoReturn getCompressedSaveString();
	TodoReturn loadFromCompressedString(std::string&);
	TodoReturn init();
	TodoReturn load();
	TodoReturn save();
	TodoReturn setup();
	TodoReturn saveData(DS_Dictionary*, std::string);
	TodoReturn saveGMTo(std::string);
	TodoReturn firstLoad();
	TodoReturn ~GManager();
}

[[link(android)]]
class internal::band_matrix {
	TodoReturn saved_diag(int);
	TodoReturn lu_decompose();
	TodoReturn resize(int, int, int);
	TodoReturn lu_solve(std::vector<double, std::allocator<double> > const&, bool);
	TodoReturn band_matrix(int, int, int);
	TodoReturn operator()(int, int);
	TodoReturn dim();
	TodoReturn l_solve(std::vector<double, std::allocator<double> > const&);
	TodoReturn r_solve(std::vector<double, std::allocator<double> > const&);
}

[[link(android)]]
class internal {
	TodoReturn solve_cubic(double, double, double, double, int);
	TodoReturn solve_linear(double, double);
	TodoReturn solve_quadratic(double, double, double, int);
	TodoReturn get_eps();
}

[[link(android)]]
class ListCell {
	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(cocos2d::CCObject*, int, int, int);
	TodoReturn draw();
	TodoReturn init();
	TodoReturn ListCell(char const*, float, float);
	TodoReturn ~ListCell();
}

[[link(android)]]
class SongCell {
	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(SongObject*);
	TodoReturn draw();
	TodoReturn init();
	TodoReturn onClick(cocos2d::CCObject*);
	TodoReturn SongCell(char const*, float, float);
	TodoReturn ~SongCell();
}

[[link(android)]]
class TextArea {
	TodoReturn finishFade();
	TodoReturn setOpacity(unsigned char);
	TodoReturn colorAllLabels(cocos2d::_ccColor3B);
	TodoReturn fadeInCharacters(float, float);
	TodoReturn fadeOutAndRemove();
	TodoReturn setIgnoreColorCode(bool);
	TodoReturn colorAllCharactersTo(cocos2d::_ccColor3B);
	TodoReturn stopAllCharacterActions();
	TodoReturn draw();
	TodoReturn init(std::string, char const*, float, float, cocos2d::CCPoint, float, bool);
	TodoReturn create(std::string, char const*, float, float, cocos2d::CCPoint, float, bool);
	TodoReturn fadeIn(float, bool);
	TodoReturn update(float);
	TodoReturn fadeOut(float);
	TodoReturn hideAll();
	TodoReturn showAll();
	TodoReturn setString(std::string);
	TodoReturn ~TextArea();
}

[[link(android)]]
class tinyxml2::XMLComment {
	TodoReturn ParseDeep(char*, tinyxml2::StrPair*);
	TodoReturn ToComment();
	TodoReturn XMLComment(tinyxml2::XMLDocument*);
	TodoReturn ~XMLComment();
	TodoReturn ShallowClone(tinyxml2::XMLDocument*);
	TodoReturn ShallowEqual(tinyxml2::XMLNode const*);
	TodoReturn Accept(tinyxml2::XMLVisitor*);
	TodoReturn virtual bool Accept(tinyxml2::XMLVisitor*) const;
	TodoReturn virtual char* ParseDeep(char*, tinyxml2::StrPair*);
	TodoReturn virtual tinyxml2::XMLNode* ShallowClone(tinyxml2::XMLDocument*) const;
	TodoReturn virtual bool ShallowEqual(tinyxml2::XMLNode const*) const;
	TodoReturn virtual tinyxml2::XMLComment* ToComment();
	TodoReturn virtual tinyxml2::XMLComment const* ToComment() const;
}

[[link(android)]]
class tinyxml2::XMLElement {
	TodoReturn FindAttribute(char const*);
	TodoReturn DeleteAttribute(char const*);
	TodoReturn ParseAttributes(char*);
	TodoReturn FindOrCreateAttribute(char const*);
	TodoReturn ParseDeep(char*, tinyxml2::StrPair*);
	TodoReturn ToElement();
	TodoReturn XMLElement(tinyxml2::XMLDocument*);
	TodoReturn ~XMLElement();
	TodoReturn QueryIntText(int*);
	TodoReturn ShallowClone(tinyxml2::XMLDocument*);
	TodoReturn ShallowEqual(tinyxml2::XMLNode const*);
	TodoReturn QueryBoolText(bool*);
	TodoReturn QueryFloatText(float*);
	TodoReturn QueryDoubleText(double*);
	TodoReturn QueryUnsignedText(unsigned int*);
	TodoReturn Accept(tinyxml2::XMLVisitor*);
	TodoReturn GetText();
	TodoReturn Attribute(char const*, char const*);
	TodoReturn virtual bool Accept(tinyxml2::XMLVisitor*) const;
	TodoReturn char const* Attribute(char const*, char const*) const;
	TodoReturn bool BoolAttribute(char const*) const;
	TodoReturn int ClosingType() const;
	TodoReturn void DeleteAttribute(char const*);
	TodoReturn double DoubleAttribute(char const*) const;
	TodoReturn tinyxml2::XMLAttribute* FindAttribute(char const*);
	TodoReturn tinyxml2::XMLAttribute const* FindAttribute(char const*) const;
	TodoReturn tinyxml2::XMLAttribute* FindOrCreateAttribute(char const*);
	TodoReturn tinyxml2::XMLAttribute const* FirstAttribute() const;
	TodoReturn float FloatAttribute(char const*) const;
	TodoReturn char const* GetText() const;
	TodoReturn int IntAttribute(char const*) const;
	TodoReturn char const* Name() const;
	TodoReturn char* ParseAttributes(char*);
	TodoReturn virtual char* ParseDeep(char*, tinyxml2::StrPair*);
	TodoReturn tinyxml2::XMLError QueryBoolAttribute(char const*, bool*) const;
	TodoReturn tinyxml2::XMLError QueryBoolText(bool*) const;
	TodoReturn tinyxml2::XMLError QueryDoubleAttribute(char const*, double*) const;
	TodoReturn tinyxml2::XMLError QueryDoubleText(double*) const;
	TodoReturn tinyxml2::XMLError QueryFloatAttribute(char const*, float*) const;
	TodoReturn tinyxml2::XMLError QueryFloatText(float*) const;
	TodoReturn tinyxml2::XMLError QueryIntAttribute(char const*, int*) const;
	TodoReturn tinyxml2::XMLError QueryIntText(int*) const;
	TodoReturn tinyxml2::XMLError QueryUnsignedAttribute(char const*, unsigned int*) const;
	TodoReturn tinyxml2::XMLError QueryUnsignedText(unsigned int*) const;
	TodoReturn void SetAttribute(char const*, char const*);
	TodoReturn void SetAttribute(char const*, int);
	TodoReturn void SetAttribute(char const*, unsigned int);
	TodoReturn void SetAttribute(char const*, double);
	TodoReturn void SetAttribute(char const*, bool);
	TodoReturn void SetName(char const*, bool);
	TodoReturn virtual tinyxml2::XMLNode* ShallowClone(tinyxml2::XMLDocument*) const;
	TodoReturn virtual bool ShallowEqual(tinyxml2::XMLNode const*) const;
	TodoReturn virtual tinyxml2::XMLElement* ToElement();
	TodoReturn virtual tinyxml2::XMLElement const* ToElement() const;
	TodoReturn unsigned int UnsignedAttribute(char const*) const;
}

[[link(android)]]
class tinyxml2::XMLPrinter {
	TodoReturn PrintSpace(int);
	TodoReturn PushHeader(bool, bool);
	TodoReturn VisitEnter(tinyxml2::XMLElement const&, tinyxml2::XMLAttribute const*);
	TodoReturn VisitEnter(tinyxml2::XMLDocument const&);
	TodoReturn OpenElement(char const*);
	TodoReturn PrintString(char const*, bool);
	TodoReturn PushComment(char const*);
	TodoReturn PushUnknown(char const*);
	TodoReturn SealElement();
	TodoReturn CloseElement();
	TodoReturn PushAttribute(char const*, bool);
	TodoReturn PushAttribute(char const*, double);
	TodoReturn PushAttribute(char const*, int);
	TodoReturn PushAttribute(char const*, unsigned int);
	TodoReturn PushAttribute(char const*, char const*);
	TodoReturn PushDeclaration(char const*);
	TodoReturn Print(char const*, ...);
	TodoReturn Visit(tinyxml2::XMLComment const&);
	TodoReturn Visit(tinyxml2::XMLUnknown const&);
	TodoReturn Visit(tinyxml2::XMLDeclaration const&);
	TodoReturn Visit(tinyxml2::XMLText const&);
	TodoReturn PushText(bool);
	TodoReturn PushText(double);
	TodoReturn PushText(float);
	TodoReturn PushText(int);
	TodoReturn PushText(unsigned int);
	TodoReturn PushText(char const*, bool);
	TodoReturn VisitExit(tinyxml2::XMLElement const&);
	TodoReturn VisitExit(tinyxml2::XMLDocument const&);
	TodoReturn XMLPrinter(__sFILE*, bool);
	TodoReturn ~XMLPrinter();
	TodoReturn XMLPrinter(tinyxml2::XMLPrinter const&);
	TodoReturn XMLPrinter(_iobuf*, bool);
	TodoReturn char const* CStr() const;
	TodoReturn int CStrSize() const;
	TodoReturn void CloseElement();
	TodoReturn void OpenElement(char const*);
	TodoReturn void Print(char const*, ...);
	TodoReturn void PrintSpace(int);
	TodoReturn void PrintString(char const*, bool);
	TodoReturn void PushAttribute(char const*, char const*);
	TodoReturn void PushAttribute(char const*, int);
	TodoReturn void PushAttribute(char const*, unsigned int);
	TodoReturn void PushAttribute(char const*, double);
	TodoReturn void PushAttribute(char const*, bool);
	TodoReturn void PushComment(char const*);
	TodoReturn void PushDeclaration(char const*);
	TodoReturn void PushHeader(bool, bool);
	TodoReturn void PushText(int);
	TodoReturn void PushText(unsigned int);
	TodoReturn void PushText(float);
	TodoReturn void PushText(double);
	TodoReturn void PushText(char const*, bool);
	TodoReturn void PushText(bool);
	TodoReturn void PushUnknown(char const*);
	TodoReturn void SealElement();
	TodoReturn virtual bool Visit(tinyxml2::XMLComment const&);
	TodoReturn virtual bool Visit(tinyxml2::XMLDeclaration const&);
	TodoReturn virtual bool Visit(tinyxml2::XMLText const&);
	TodoReturn virtual bool Visit(tinyxml2::XMLUnknown const&);
	TodoReturn virtual bool VisitEnter(tinyxml2::XMLDocument const&);
	TodoReturn virtual bool VisitEnter(tinyxml2::XMLElement const&, tinyxml2::XMLAttribute const*);
	TodoReturn virtual bool VisitExit(tinyxml2::XMLDocument const&);
	TodoReturn virtual bool VisitExit(tinyxml2::XMLElement const&);
}

[[link(android)]]
class tinyxml2::XMLUnknown {
	TodoReturn ParseDeep(char*, tinyxml2::StrPair*);
	TodoReturn ToUnknown();
	TodoReturn XMLUnknown(tinyxml2::XMLDocument*);
	TodoReturn ~XMLUnknown();
	TodoReturn ShallowClone(tinyxml2::XMLDocument*);
	TodoReturn ShallowEqual(tinyxml2::XMLNode const*);
	TodoReturn Accept(tinyxml2::XMLVisitor*);
	TodoReturn virtual bool Accept(tinyxml2::XMLVisitor*) const;
	TodoReturn virtual char* ParseDeep(char*, tinyxml2::StrPair*);
	TodoReturn virtual tinyxml2::XMLNode* ShallowClone(tinyxml2::XMLDocument*) const;
	TodoReturn virtual bool ShallowEqual(tinyxml2::XMLNode const*) const;
	TodoReturn virtual tinyxml2::XMLUnknown* ToUnknown();
	TodoReturn virtual tinyxml2::XMLUnknown const* ToUnknown() const;
}

[[link(android)]]
class tinyxml2::XMLVisitor {
	TodoReturn VisitEnter(tinyxml2::XMLElement const&, tinyxml2::XMLAttribute const*);
	TodoReturn VisitEnter(tinyxml2::XMLDocument const&);
	TodoReturn Visit(tinyxml2::XMLComment const&);
	TodoReturn Visit(tinyxml2::XMLUnknown const&);
	TodoReturn Visit(tinyxml2::XMLDeclaration const&);
	TodoReturn Visit(tinyxml2::XMLText const&);
	TodoReturn VisitExit(tinyxml2::XMLElement const&);
	TodoReturn VisitExit(tinyxml2::XMLDocument const&);
	TodoReturn ~XMLVisitor();
	TodoReturn XMLVisitor(tinyxml2::XMLVisitor const&);
	TodoReturn XMLVisitor();
	TodoReturn virtual bool Visit(tinyxml2::XMLComment const&);
	TodoReturn virtual bool Visit(tinyxml2::XMLDeclaration const&);
	TodoReturn virtual bool Visit(tinyxml2::XMLText const&);
	TodoReturn virtual bool Visit(tinyxml2::XMLUnknown const&);
	TodoReturn virtual bool VisitEnter(tinyxml2::XMLDocument const&);
	TodoReturn virtual bool VisitEnter(tinyxml2::XMLElement const&, tinyxml2::XMLAttribute const*);
	TodoReturn virtual bool VisitExit(tinyxml2::XMLDocument const&);
	TodoReturn virtual bool VisitExit(tinyxml2::XMLElement const&);
}

[[link(android)]]
class tinyxml2::XMLDocument {
	TodoReturn NewComment(char const*);
	TodoReturn NewElement(char const*);
	TodoReturn NewUnknown(char const*);
	TodoReturn ToDocument();
	TodoReturn InitDocument();
	TodoReturn NewDeclaration(char const*);
	TodoReturn Parse(char const*, unsigned long);
	TodoReturn Print(tinyxml2::XMLPrinter*);
	TodoReturn NewText(char const*);
	TodoReturn Identify(char*, tinyxml2::XMLNode**);
	TodoReturn LoadFile(__sFILE*);
	TodoReturn LoadFile(char const*);
	TodoReturn SaveFile(__sFILE*, bool);
	TodoReturn SaveFile(char const*, bool);
	TodoReturn SetError(tinyxml2::XMLError, char const*, char const*);
	TodoReturn XMLDocument(bool, tinyxml2::Whitespace);
	TodoReturn ~XMLDocument();
	TodoReturn PrintError();
	TodoReturn ShallowClone(tinyxml2::XMLDocument*);
	TodoReturn ShallowEqual(tinyxml2::XMLNode const*);
	TodoReturn Accept(tinyxml2::XMLVisitor*);
	TodoReturn virtual bool Accept(tinyxml2::XMLVisitor*) const;
	TodoReturn void DeleteNode(tinyxml2::XMLNode*);
	TodoReturn bool Error() const;
	TodoReturn tinyxml2::XMLError ErrorID() const;
	TodoReturn char const* GetErrorStr1() const;
	TodoReturn char const* GetErrorStr2() const;
	TodoReturn bool HasBOM() const;
	TodoReturn char* Identify(char*, tinyxml2::XMLNode**);
	TodoReturn void InitDocument();
	TodoReturn tinyxml2::XMLError LoadFile(_iobuf*);
	TodoReturn tinyxml2::XMLError LoadFile(char const*);
	TodoReturn tinyxml2::XMLComment* NewComment(char const*);
	TodoReturn tinyxml2::XMLDeclaration* NewDeclaration(char const*);
	TodoReturn tinyxml2::XMLElement* NewElement(char const*);
	TodoReturn tinyxml2::XMLText* NewText(char const*);
	TodoReturn tinyxml2::XMLUnknown* NewUnknown(char const*);
	TodoReturn tinyxml2::XMLError Parse(char const*, unsigned int);
	TodoReturn void Print(tinyxml2::XMLPrinter*);
	TodoReturn void PrintError() const;
	TodoReturn bool ProcessEntities() const;
	TodoReturn tinyxml2::XMLElement* RootElement();
	TodoReturn tinyxml2::XMLElement const* RootElement() const;
	TodoReturn tinyxml2::XMLError SaveFile(_iobuf*, bool);
	TodoReturn tinyxml2::XMLError SaveFile(char const*, bool);
	TodoReturn void SetBOM(bool);
	TodoReturn void SetError(tinyxml2::XMLError, char const*, char const*);
	TodoReturn virtual tinyxml2::XMLNode* ShallowClone(tinyxml2::XMLDocument*) const;
	TodoReturn virtual bool ShallowEqual(tinyxml2::XMLNode const*) const;
	TodoReturn virtual tinyxml2::XMLDocument* ToDocument();
	TodoReturn virtual tinyxml2::XMLDocument const* ToDocument() const;
	TodoReturn tinyxml2::Whitespace WhitespaceMode() const;
}

[[link(android)]]
class tinyxml2::XMLAttribute {
	TodoReturn SetAttribute(bool);
	TodoReturn SetAttribute(double);
	TodoReturn SetAttribute(float);
	TodoReturn SetAttribute(int);
	TodoReturn SetAttribute(unsigned int);
	TodoReturn SetAttribute(char const*);
	TodoReturn SetName(char const*);
	TodoReturn ParseDeep(char*, bool);
	TodoReturn ~XMLAttribute();
	TodoReturn QueryIntValue(int*);
	TodoReturn QueryBoolValue(bool*);
	TodoReturn QueryFloatValue(float*);
	TodoReturn QueryDoubleValue(double*);
	TodoReturn QueryUnsignedValue(unsigned int*);
	TodoReturn XMLAttribute();
	TodoReturn bool BoolValue() const;
	TodoReturn double DoubleValue() const;
	TodoReturn float FloatValue() const;
	TodoReturn int IntValue() const;
	TodoReturn char const* Name() const;
	TodoReturn tinyxml2::XMLAttribute const* Next() const;
	TodoReturn char* ParseDeep(char*, bool);
	TodoReturn tinyxml2::XMLError QueryBoolValue(bool*) const;
	TodoReturn tinyxml2::XMLError QueryDoubleValue(double*) const;
	TodoReturn tinyxml2::XMLError QueryFloatValue(float*) const;
	TodoReturn tinyxml2::XMLError QueryIntValue(int*) const;
	TodoReturn tinyxml2::XMLError QueryUnsignedValue(unsigned int*) const;
	TodoReturn void SetAttribute(int);
	TodoReturn void SetAttribute(unsigned int);
	TodoReturn void SetAttribute(float);
	TodoReturn void SetAttribute(double);
	TodoReturn void SetAttribute(char const*);
	TodoReturn void SetAttribute(bool);
	TodoReturn void SetName(char const*);
	TodoReturn unsigned int UnsignedValue() const;
	TodoReturn char const* Value() const;
}

[[link(android)]]
class tinyxml2::XMLDeclaration {
	TodoReturn ToDeclaration();
	TodoReturn ParseDeep(char*, tinyxml2::StrPair*);
	TodoReturn XMLDeclaration(tinyxml2::XMLDocument*);
	TodoReturn ~XMLDeclaration();
	TodoReturn ShallowClone(tinyxml2::XMLDocument*);
	TodoReturn ShallowEqual(tinyxml2::XMLNode const*);
	TodoReturn Accept(tinyxml2::XMLVisitor*);
	TodoReturn virtual bool Accept(tinyxml2::XMLVisitor*) const;
	TodoReturn virtual char* ParseDeep(char*, tinyxml2::StrPair*);
	TodoReturn virtual tinyxml2::XMLNode* ShallowClone(tinyxml2::XMLDocument*) const;
	TodoReturn virtual bool ShallowEqual(tinyxml2::XMLNode const*) const;
	TodoReturn virtual tinyxml2::XMLDeclaration* ToDeclaration();
	TodoReturn virtual tinyxml2::XMLDeclaration const* ToDeclaration() const;
}

[[link(android)]]
class tinyxml2::StrPair {
	TodoReturn CollapseWhitespace();
	TodoReturn Reset();
	TodoReturn GetStr();
	TodoReturn SetStr(char const*, int);
	TodoReturn ParseName(char*);
	TodoReturn ParseText(char*, char const*, int);
	TodoReturn ~StrPair();
	TodoReturn StrPair();
	TodoReturn void CollapseWhitespace();
	TodoReturn bool Empty() const;
	TodoReturn char const* GetStr();
	TodoReturn char* ParseName(char*);
	TodoReturn char* ParseText(char*, char const*, int);
	TodoReturn void Reset();
	TodoReturn void Set(char*, char*, int);
	TodoReturn void SetInternedStr(char const*);
	TodoReturn void SetStr(char const*, int);
}

[[link(android)]]
class tinyxml2::XMLNode {
	TodoReturn ToDocument();
	TodoReturn DeleteChild(tinyxml2::XMLNode*);
	TodoReturn ToDeclaration();
	TodoReturn DeleteChildren();
	TodoReturn InsertEndChild(tinyxml2::XMLNode*);
	TodoReturn InsertAfterChild(tinyxml2::XMLNode*, tinyxml2::XMLNode*);
	TodoReturn InsertFirstChild(tinyxml2::XMLNode*);
	TodoReturn ToText();
	TodoReturn Unlink(tinyxml2::XMLNode*);
	TodoReturn SetValue(char const*, bool);
	TodoReturn ParseDeep(char*, tinyxml2::StrPair*);
	TodoReturn ToComment();
	TodoReturn ToElement();
	TodoReturn ToUnknown();
	TodoReturn XMLNode(tinyxml2::XMLDocument*);
	TodoReturn ~XMLNode();
	TodoReturn LastChildElement(char const*);
	TodoReturn FirstChildElement(char const*);
	TodoReturn NextSiblingElement(char const*);
	TodoReturn PreviousSiblingElement(char const*);
	TodoReturn void DeleteChild(tinyxml2::XMLNode*);
	TodoReturn void DeleteChildren();
	TodoReturn tinyxml2::XMLNode* FirstChild();
	TodoReturn tinyxml2::XMLNode const* FirstChild() const;
	TodoReturn tinyxml2::XMLElement* FirstChildElement(char const*);
	TodoReturn tinyxml2::XMLElement const* FirstChildElement(char const*) const;
	TodoReturn tinyxml2::XMLDocument* GetDocument();
	TodoReturn tinyxml2::XMLDocument const* GetDocument() const;
	TodoReturn tinyxml2::XMLNode* InsertAfterChild(tinyxml2::XMLNode*, tinyxml2::XMLNode*);
	TodoReturn tinyxml2::XMLNode* InsertEndChild(tinyxml2::XMLNode*);
	TodoReturn tinyxml2::XMLNode* InsertFirstChild(tinyxml2::XMLNode*);
	TodoReturn tinyxml2::XMLNode* LastChild();
	TodoReturn tinyxml2::XMLNode const* LastChild() const;
	TodoReturn tinyxml2::XMLElement* LastChildElement(char const*);
	TodoReturn tinyxml2::XMLElement const* LastChildElement(char const*) const;
	TodoReturn tinyxml2::XMLNode* LinkEndChild(tinyxml2::XMLNode*);
	TodoReturn tinyxml2::XMLNode* NextSibling();
	TodoReturn tinyxml2::XMLNode const* NextSibling() const;
	TodoReturn tinyxml2::XMLElement* NextSiblingElement(char const*);
	TodoReturn tinyxml2::XMLElement const* NextSiblingElement(char const*) const;
	TodoReturn bool NoChildren() const;
	TodoReturn tinyxml2::XMLNode* Parent();
	TodoReturn tinyxml2::XMLNode const* Parent() const;
	TodoReturn virtual char* ParseDeep(char*, tinyxml2::StrPair*);
	TodoReturn tinyxml2::XMLNode* PreviousSibling();
	TodoReturn tinyxml2::XMLNode const* PreviousSibling() const;
	TodoReturn tinyxml2::XMLElement* PreviousSiblingElement(char const*);
	TodoReturn tinyxml2::XMLElement const* PreviousSiblingElement(char const*) const;
	TodoReturn void SetValue(char const*, bool);
	TodoReturn virtual tinyxml2::XMLComment* ToComment();
	TodoReturn virtual tinyxml2::XMLComment const* ToComment() const;
	TodoReturn virtual tinyxml2::XMLDeclaration* ToDeclaration();
	TodoReturn virtual tinyxml2::XMLDeclaration const* ToDeclaration() const;
	TodoReturn virtual tinyxml2::XMLDocument* ToDocument();
	TodoReturn virtual tinyxml2::XMLDocument const* ToDocument() const;
	TodoReturn virtual tinyxml2::XMLElement* ToElement();
	TodoReturn virtual tinyxml2::XMLElement const* ToElement() const;
	TodoReturn virtual tinyxml2::XMLText* ToText();
	TodoReturn virtual tinyxml2::XMLText const* ToText() const;
	TodoReturn virtual tinyxml2::XMLUnknown* ToUnknown();
	TodoReturn virtual tinyxml2::XMLUnknown const* ToUnknown() const;
	TodoReturn void Unlink(tinyxml2::XMLNode*);
	TodoReturn char const* Value() const;
}

[[link(android)]]
class tinyxml2::XMLText {
	TodoReturn ToText();
	TodoReturn ParseDeep(char*, tinyxml2::StrPair*);
	TodoReturn ~XMLText();
	TodoReturn ShallowClone(tinyxml2::XMLDocument*);
	TodoReturn ShallowEqual(tinyxml2::XMLNode const*);
	TodoReturn Accept(tinyxml2::XMLVisitor*);
	TodoReturn XMLText(tinyxml2::XMLDocument*);
	TodoReturn virtual bool Accept(tinyxml2::XMLVisitor*) const;
	TodoReturn bool CData() const;
	TodoReturn virtual char* ParseDeep(char*, tinyxml2::StrPair*);
	TodoReturn void SetCData(bool);
	TodoReturn virtual tinyxml2::XMLNode* ShallowClone(tinyxml2::XMLDocument*) const;
	TodoReturn virtual bool ShallowEqual(tinyxml2::XMLNode const*) const;
	TodoReturn virtual tinyxml2::XMLText* ToText();
	TodoReturn virtual tinyxml2::XMLText const* ToText() const;
}

[[link(android)]]
class tinyxml2::XMLUtil {
	TodoReturn ToUnsigned(char const*, unsigned int*);
	TodoReturn GetCharacterRef(char const*, char*, int*);
	TodoReturn ConvertUTF32ToUTF8(unsigned long, char*, int*);
	TodoReturn ToInt(char const*, int*);
	TodoReturn ToStr(bool, char*, int);
	TodoReturn ToStr(double, char*, int);
	TodoReturn ToStr(float, char*, int);
	TodoReturn ToStr(int, char*, int);
	TodoReturn ToStr(unsigned int, char*, int);
	TodoReturn ToBool(char const*, bool*);
	TodoReturn ReadBOM(char const*, bool*);
	TodoReturn ToFloat(char const*, float*);
	TodoReturn ToDouble(char const*, double*);
	TodoReturn static void ConvertUTF32ToUTF8(unsigned long, char*, int*);
	TodoReturn static char const* GetCharacterRef(char const*, char*, int*);
	TodoReturn static int IsAlpha(unsigned char);
	TodoReturn static int IsAlphaNum(unsigned char);
	TodoReturn static int IsUTF8Continuation(char);
	TodoReturn static bool IsWhiteSpace(char);
	TodoReturn static char const* ReadBOM(char const*, bool*);
	TodoReturn static char* SkipWhiteSpace(char*);
	TodoReturn static char const* SkipWhiteSpace(char const*);
	TodoReturn static bool StringEqual(char const*, char const*, int);
	TodoReturn static bool ToBool(char const*, bool*);
	TodoReturn static bool ToDouble(char const*, double*);
	TodoReturn static bool ToFloat(char const*, float*);
	TodoReturn static bool ToInt(char const*, int*);
	TodoReturn static void ToStr(int, char*, int);
	TodoReturn static void ToStr(unsigned int, char*, int);
	TodoReturn static void ToStr(float, char*, int);
	TodoReturn static void ToStr(double, char*, int);
	TodoReturn static void ToStr(bool, char*, int);
	TodoReturn static bool ToUnsigned(char const*, unsigned int*);
}

[[link(android)]]
class TOSPopup {
	TodoReturn keyBackClicked();
	TodoReturn init();
	TodoReturn onTOS(cocos2d::CCObject*);
	TodoReturn create();
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn onPrivacy(cocos2d::CCObject*);
	TodoReturn ~TOSPopup();
}

[[link(android)]]
class AdToolbox {
	TodoReturn isShowingAd();
	TodoReturn enableBanner();
	TodoReturn disableBanner();
	TodoReturn showInterstitial();
	TodoReturn cacheInterstitial();
	TodoReturn showRewardedVideo();
	TodoReturn cacheRewardedVideo();
	TodoReturn queueRefreshBanner();
	TodoReturn enableBannerNoRefresh();
	TodoReturn hasCachedInterstitial();
	TodoReturn hasCachedRewardedVideo();
	TodoReturn setupAds();
	TodoReturn showDebug();
}

[[link(android)]]
class GJComment {
	TodoReturn init();
	TodoReturn create(cocos2d::CCDictionary*);
	TodoReturn create();
	TodoReturn ~GJComment();
}

[[link(android)]]
class GJMapPack {
	TodoReturn completedMaps();
	TodoReturn parsePackColors(std::string, std::string);
	TodoReturn parsePackLevels(std::string);
	TodoReturn hasCompletedMapPack();
	TodoReturn init();
	TodoReturn create(cocos2d::CCDictionary*);
	TodoReturn create();
	TodoReturn totalMaps();
	TodoReturn ~GJMapPack();
}

[[link(android)]]
class GJMGLayer {
	TodoReturn showGround();
	TodoReturn scaleGround(float);
	TodoReturn toggleVisible01(bool);
	TodoReturn toggleVisible02(bool);
	TodoReturn updateGroundPos(cocos2d::CCPoint);
	TodoReturn updateMG01Blend(bool);
	TodoReturn updateMG02Blend(bool);
	TodoReturn deactivateGround();
	TodoReturn loadGroundSprites(int, bool);
	TodoReturn updateGroundColor(cocos2d::_ccColor3B, bool);
	TodoReturn updateGroundWidth(bool);
	TodoReturn updateGroundOpacity(unsigned char, bool);
	TodoReturn draw();
	TodoReturn init(int);
	TodoReturn create(int);
	TodoReturn ~GJMGLayer();
}

[[link(android)]]
class __gnu_cxx::recursive_init_error {
	TodoReturn ~recursive_init_error();
}

[[link(android)]]
class __gnu_cxx {
	TodoReturn __verbose_terminate_handler();
}

[[link(android)]]
class InfoLayer {
	TodoReturn onNextPage(cocos2d::CCObject*);
	TodoReturn onOriginal(cocos2d::CCObject*);
	TodoReturn onPrevPage(cocos2d::CCObject*);
	TodoReturn onLevelInfo(cocos2d::CCObject*);
	TodoReturn getAccountID();
	TodoReturn reloadWindow();
	TodoReturn confirmReport(cocos2d::CCObject*);
	TodoReturn onCopyLevelID(cocos2d::CCObject*);
	TodoReturn onGetComments(cocos2d::CCObject*);
	TodoReturn setupPageInfo(std::string, char const*);
	TodoReturn keyBackClicked();
	TodoReturn setupLevelInfo();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn getSpriteButton(char const*, void (cocos2d::CCObject::*)(cocos2d::CCObject*), cocos2d::CCMenu*, float, cocos2d::CCPoint);
	TodoReturn onRefreshComments(cocos2d::CCObject*);
	TodoReturn toggleCommentMode(cocos2d::CCObject*);
	TodoReturn updateLevelsLabel();
	TodoReturn loadCommentsFailed(char const*);
	TodoReturn toggleExtendedMode(cocos2d::CCObject*);
	TodoReturn commentUploadFailed(int, CommentError);
	TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*);
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*);
	TodoReturn commentUploadFinished(int);
	TodoReturn toggleSmallCommentMode(cocos2d::CCObject*);
	TodoReturn updateUserScoreFinished();
	TodoReturn updateCommentModeButtons();
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(GJGameLevel*, GJUserScore*, GJLevelList*);
	TodoReturn show();
	TodoReturn getID();
	TodoReturn create(GJGameLevel*, GJUserScore*, GJLevelList*);
	TodoReturn onMore(cocos2d::CCObject*);
	TodoReturn onClose(cocos2d::CCObject*);
	TodoReturn loadPage(int, bool);
	TodoReturn getRealID();
	TodoReturn isCorrect(char const*);
	TodoReturn onComment(cocos2d::CCObject*);
	TodoReturn onSimilar(cocos2d::CCObject*);
	TodoReturn ~InfoLayer();
}

[[link(android)]]
class LevelCell {
	TodoReturn updateToggle();
	TodoReturn loadFromLevel(GJGameLevel*);
	TodoReturn onViewProfile(cocos2d::CCObject*);
	TodoReturn updateBGColor(int);
	TodoReturn updateCellMode(int);
	TodoReturn loadLocalLevelCell();
	TodoReturn loadCustomLevelCell();
	TodoReturn draw();
	TodoReturn init();
	TodoReturn create(float, float);
	TodoReturn onClick(cocos2d::CCObject*);
	TodoReturn onToggle(cocos2d::CCObject*);
	TodoReturn LevelCell(char const*, float, float);
	TodoReturn ~LevelCell();
}

[[link(android)]]
class LevelPage {
	TodoReturn onTheTower(cocos2d::CCObject*);
	TodoReturn onMoreGames(cocos2d::CCObject*);
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn dialogClosed(DialogLayer*);
	TodoReturn onSecretDoor(cocos2d::CCObject*);
	TodoReturn addSecretCoin();
	TodoReturn addSecretDoor();
	TodoReturn playCoinEffect();
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn updateDynamicPage(GJGameLevel*);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn init(GJGameLevel*);
	TodoReturn create(GJGameLevel*);
	TodoReturn onInfo(cocos2d::CCObject*);
	TodoReturn onPlay(cocos2d::CCObject*);
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn ~LevelPage();
}

[[link(android)]]
class MenuLayer {
	TodoReturn onFacebook(cocos2d::CCObject*);
	TodoReturn onEveryplay(cocos2d::CCObject*);
	TodoReturn onMoreGames(cocos2d::CCObject*);
	TodoReturn onMyProfile(cocos2d::CCObject*);
	TodoReturn openOptions(bool);
	TodoReturn onFreeLevels(cocos2d::CCObject*);
	TodoReturn onGameCenter(cocos2d::CCObject*);
	TodoReturn onNewgrounds(cocos2d::CCObject*);
	TodoReturn onFullVersion(cocos2d::CCObject*);
	TodoReturn keyBackClicked();
	TodoReturn onAchievements(cocos2d::CCObject*);
	TodoReturn showGCQuestion();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn firstNetworkTest();
	TodoReturn onOptionsInstant();
	TodoReturn onGooglePlayGames(cocos2d::CCObject*);
	TodoReturn showMeltdownPromo();
	TodoReturn googlePlaySignedIn();
	TodoReturn videoOptionsClosed();
	TodoReturn videoOptionsOpened();
	TodoReturn updateUserProfileButton();
	TodoReturn syncPlatformAchievements(float);
	TodoReturn init();
	TodoReturn scene(bool);
	TodoReturn onPlay(cocos2d::CCObject*);
	TodoReturn onQuit(cocos2d::CCObject*);
	TodoReturn endGame();
	TodoReturn keyDown(cocos2d::enumKeyCodes);
	TodoReturn onDaily(cocos2d::CCObject*);
	TodoReturn onStats(cocos2d::CCObject*);
	TodoReturn showTOS();
	TodoReturn onGarage(cocos2d::CCObject*);
	TodoReturn onRobTop(cocos2d::CCObject*);
	TodoReturn onTwitch(cocos2d::CCObject*);
	TodoReturn onCreator(cocos2d::CCObject*);
	TodoReturn onDiscord(cocos2d::CCObject*);
	TodoReturn onOptions(cocos2d::CCObject*);
	TodoReturn onTrailer(cocos2d::CCObject*);
	TodoReturn onTwitter(cocos2d::CCObject*);
	TodoReturn onYouTube(cocos2d::CCObject*);
	TodoReturn tryShowAd(float);
	TodoReturn willClose();
	TodoReturn ~MenuLayer();
}

[[link(android)]]
class NodePoint {
	TodoReturn init(cocos2d::CCPoint);
	TodoReturn create(cocos2d::CCPoint);
	TodoReturn ~NodePoint();
}

[[link(android)]]
class PlayLayer {
	TodoReturn playReplay(std::string);
	TodoReturn posForTime(float);
	TodoReturn postUpdate(float);
	TodoReturn resetLevel();
	TodoReturn startMusic();
	TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, int);
	TodoReturn checkForEnd();
	TodoReturn colorObject(int, cocos2d::_ccColor3B);
	TodoReturn commitJumps();
	TodoReturn shouldBlend(int);
	TodoReturn showNewBest(bool, int, int, bool, bool, bool);
	TodoReturn spawnCircle();
	TodoReturn updateColor(cocos2d::_ccColor3B&, float, int, bool, float, cocos2d::_ccHSVValue&, int, bool, EffectGameObject*, int, int);
	TodoReturn canPauseGame();
	TodoReturn dialogClosed(DialogLayer*);
	TodoReturn prepareMusic(bool);
	TodoReturn showEndLayer();
	TodoReturn addToGroupOld(GameObject*);
	TodoReturn checkSnapshot();
	TodoReturn destroyPlayer(PlayerObject*, GameObject*);
	TodoReturn levelComplete();
	TodoReturn spawnFirework();
	TodoReturn stopRecording();
	TodoReturn toggleGlitter(bool);
	TodoReturn getEndPosition();
	TodoReturn getRelativeMod(cocos2d::CCPoint, float, float, float);
	TodoReturn incrementJumps();
	TodoReturn markCheckpoint();
	TodoReturn showRetryLayer();
	TodoReturn startRecording();
	TodoReturn tryStartRecord();
	TodoReturn updateAttempts();
	TodoReturn updateTimeWarp(float);
	TodoReturn updateTimeWarp(EffectGameObject*, float);
	TodoReturn queueCheckpoint();
	TodoReturn storeCheckpoint(CheckpointObject*);
	TodoReturn toggleInfoLabel();
	TodoReturn updateInfoLabel();
	TodoReturn updateTimeLabel(int, int, bool);
	TodoReturn applyEnterEffect(GameObject*, int, bool);
	TodoReturn checkpointWithID(int);
	TodoReturn createCheckpoint();
	TodoReturn currencyWillExit(CurrencyRewardLayer*);
	TodoReturn delayedFullReset();
	TodoReturn getTempMilliTime();
	TodoReturn isGameplayActive();
	TodoReturn opacityForObject(GameObject*);
	TodoReturn removeAllObjects();
	TodoReturn removeCheckpoint(bool);
	TodoReturn resetSPTriggered();
	TodoReturn resumeAndRestart(bool);
	TodoReturn showCompleteText();
	TodoReturn startGameDelayed();
	TodoReturn updateVisibility(float);
	TodoReturn delayedResetLevel();
	TodoReturn getCurrentPercent();
	TodoReturn getLastCheckpoint();
	TodoReturn getRelativeModNew(cocos2d::CCPoint, float, float, bool, bool);
	TodoReturn loadDefaultColors();
	TodoReturn playGravityEffect(bool);
	TodoReturn setupHasCompleted();
	TodoReturn takeStateSnapshot();
	TodoReturn toggleGhostEffect(int);
	TodoReturn toggleProgressbar();
	TodoReturn updateAttemptTime(float);
	TodoReturn updateProgressbar();
	TodoReturn activateEndTrigger(int, bool, bool);
	TodoReturn loadFromCheckpoint(CheckpointObject*);
	TodoReturn loadLastCheckpoint();
	TodoReturn removeFromGroupOld(GameObject*);
	TodoReturn showCompleteEffect();
	TodoReturn showTwoPlayerGuide();
	TodoReturn toggleHideAttempts(bool);
	TodoReturn toggleMGVisibility(bool);
	TodoReturn togglePracticeMode(bool);
	TodoReturn updateVerifyDamage();
	TodoReturn checkpointActivated(CheckpointGameObject*);
	TodoReturn optimizeColorGroups();
	TodoReturn resetLevelFromStart();
	TodoReturn compareStateSnapshot();
	TodoReturn getCurrentPercentInt();
	TodoReturn removeAllCheckpoints();
	TodoReturn updateScreenRotation(int, bool, bool, float, int, float, int, int);
	TodoReturn gravityEffectFinished();
	TodoReturn loadActiveSaveObjects(std::vector<SavedActiveObjectState, std::allocator<SavedActiveObjectState> >&, std::vector<SavedSpecialObjectState, std::allocator<SavedSpecialObjectState> >&);
	TodoReturn optimizeOpacityGroups();
	TodoReturn playEndAnimationToPos(cocos2d::CCPoint);
	TodoReturn saveActiveSaveObjects(std::vector<SavedActiveObjectState, std::allocator<SavedActiveObjectState> >&, std::vector<SavedSpecialObjectState, std::allocator<SavedSpecialObjectState> >&);
	TodoReturn scanActiveSaveObjects();
	TodoReturn startRecordingDelayed();
	TodoReturn toggleMusicInPractice();
	TodoReturn updateEffectPositions();
	TodoReturn applyCustomEnterEffect(GameObject*, bool);
	TodoReturn loadDynamicSaveObjects(std::vector<SavedObjectStateRef, std::allocator<SavedObjectStateRef> >&);
	TodoReturn saveDynamicSaveObjects(std::vector<SavedObjectStateRef, std::allocator<SavedObjectStateRef> >&);
	TodoReturn scanDynamicSaveObjects();
	TodoReturn toggleGroundVisibility(bool);
	TodoReturn circleWaveWillBeRemoved(CCCircleWave*);
	TodoReturn manualUpdateObjectColors(GameObject*);
	TodoReturn processLoadedMoveActions();
	TodoReturn toggleBGEffectVisibility(bool);
	TodoReturn onEnterTransitionDidFinish();
	TodoReturn activatePlatformerEndTrigger(EndTriggerGameObject*, std::vector<int, std::allocator<int> > const&);
	TodoReturn prepareCreateObjectsFromSetup(std::string&);
	TodoReturn processCreateObjectsFromSetup();
	TodoReturn createObjectsFromSetupFinished();
	TodoReturn playPlatformerEndAnimationToPos(cocos2d::CCPoint, bool);
	TodoReturn init(GJGameLevel*, bool, bool);
	TodoReturn scene(GJGameLevel*, bool, bool);
	TodoReturn create(GJGameLevel*, bool, bool);
	TodoReturn onExit();
	TodoReturn onQuit();
	TodoReturn resume();
	TodoReturn flipArt(bool);
	TodoReturn showHint();
	TodoReturn testTime();
	TodoReturn addCircle(CCCircleWave*);
	TodoReturn addObject(GameObject*);
	TodoReturn fullReset();
	TodoReturn pauseGame(bool);
	TodoReturn startGame();
	TodoReturn ~PlayLayer();
}

[[link(android)]]
class PointNode {
	TodoReturn init(cocos2d::CCPoint);
	TodoReturn create(cocos2d::CCPoint);
	TodoReturn ~PointNode();
}

[[link(android)]]
class StatsCell {
	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(StatsObject*);
	TodoReturn getTitleFromKey(char const*);
	TodoReturn draw();
	TodoReturn init();
	TodoReturn StatsCell(char const*, float, float);
	TodoReturn ~StatsCell();
}

[[link(android)]]
class TableView {
	TodoReturn claimTouch(cocos2d::CCTouch*);
	TodoReturn reloadData();
	TodoReturn scrollWheel(float, float);
	TodoReturn touchFinish(cocos2d::CCTouch*);
	TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn cellForTouch(cocos2d::CCTouch*);
	TodoReturn checkLastCell(TableViewCell*);
	TodoReturn checkFirstCell(TableViewCell*);
	TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn scrollToIndexPath(CCIndexPath&);
	TodoReturn initTableViewCells();
	TodoReturn cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn checkBoundaryOfCell(TableViewCell*);
	TodoReturn checkBoundaryOfCell(cocos2d::CCPoint&, float);
	TodoReturn deleteTableViewCell(TableViewCell*);
	TodoReturn isDuplicateIndexPath(CCIndexPath&);
	TodoReturn cellForRowAtIndexPath(CCIndexPath&);
	TodoReturn scrollViewTouchMoving(CCScrollLayerExt*);
	TodoReturn checkBoundaryOfContent(float);
	TodoReturn scrollViewDidEndMoving(CCScrollLayerExt*);
	TodoReturn registerWithTouchDispatcher();
	TodoReturn scrollViewDidEndDecelerating(CCScrollLayerExt*);
	TodoReturn isDuplicateInVisibleCellArray(CCIndexPath*);
	TodoReturn scrllViewWillBeginDecelerating(CCScrollLayerExt*);
	TodoReturn dequeueReusableCellWithIdentifier(char const*);
	TodoReturn removeIndexPathFromPathAddedArray(CCIndexPath&);
	TodoReturn create(TableViewDelegate*, TableViewDataSource*, TableViewCellDelegate*, cocos2d::CCRect);
	TodoReturn onExit();
	TodoReturn onEnter();
	TodoReturn TableView(cocos2d::CCRect);
	TodoReturn ~TableView();
}

[[link(android)]]
class fmt::ArgList {
	TodoReturn ArgList(fmt::internal::Arg const*, unsigned int);
	TodoReturn ArgList();
	TodoReturn unsigned int size() const;
}

[[link(android)]]
class fmt::FormatError {
	TodoReturn FormatError(fmt::FormatError const&);
	TodoReturn FormatError(std::string const&);
}

[[link(android)]]
class fmt::FormatInt {
	TodoReturn FormatInt(int);
	TodoReturn FormatInt(unsigned int);
	TodoReturn FormatInt(long);
	TodoReturn FormatInt(unsigned long);
	TodoReturn FormatInt(__int64);
	TodoReturn FormatInt(unsigned __int64);
	TodoReturn char* FormatDecimal(unsigned __int64);
	TodoReturn void FormatSigned(__int64);
	TodoReturn char const* c_str() const;
	TodoReturn char const* data() const;
	TodoReturn unsigned int size() const;
	TodoReturn std::string str() const;
}

[[link(android)]]
class tinyxml2::MemPool {
	TodoReturn MemPool(tinyxml2::MemPool const&);
	TodoReturn MemPool();
}

[[link(android)]]
class fmt::internal::RuntimeError {
	TodoReturn RuntimeError();
	TodoReturn RuntimeError(fmt::internal::RuntimeError const&);
}

[[link(android)]]
class fmt::internal::UTF16ToUTF8 {
	TodoReturn UTF16ToUTF8(fmt::BasicStringRef<wchar_t>);
	TodoReturn UTF16ToUTF8();
	TodoReturn int Convert(fmt::BasicStringRef<wchar_t>);
	TodoReturn char const* c_str() const;
	TodoReturn unsigned int size() const;
	TodoReturn std::string str() const;
}

[[link(android)]]
class fmt::internal::UTF8ToUTF16 {
	TodoReturn UTF8ToUTF16(fmt::BasicStringRef<char>);
	TodoReturn wchar_t const* c_str() const;
	TodoReturn unsigned int size() const;
	TodoReturn std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> > str() const;
}

[[link(android)]]
class fmt::WindowsError {
	TodoReturn WindowsError(fmt::WindowsError const&);
	TodoReturn WindowsError(int, fmt::BasicStringRef<char>);
	TodoReturn void init(int, fmt::BasicStringRef<char>, fmt::ArgList const&);
}

[[link(android)]]
class tinyxml2::XMLConstHandle {
	TodoReturn XMLConstHandle(tinyxml2::XMLConstHandle const&);
	TodoReturn XMLConstHandle(tinyxml2::XMLNode const&);
	TodoReturn XMLConstHandle(tinyxml2::XMLNode const*);
	TodoReturn tinyxml2::XMLConstHandle const FirstChild() const;
	TodoReturn tinyxml2::XMLConstHandle const FirstChildElement(char const*) const;
	TodoReturn tinyxml2::XMLConstHandle const LastChild() const;
	TodoReturn tinyxml2::XMLConstHandle const LastChildElement(char const*) const;
	TodoReturn tinyxml2::XMLConstHandle const NextSibling() const;
	TodoReturn tinyxml2::XMLConstHandle const NextSiblingElement(char const*) const;
	TodoReturn tinyxml2::XMLConstHandle const PreviousSibling() const;
	TodoReturn tinyxml2::XMLConstHandle const PreviousSiblingElement(char const*) const;
	TodoReturn tinyxml2::XMLDeclaration const* ToDeclaration() const;
	TodoReturn tinyxml2::XMLElement const* ToElement() const;
	TodoReturn tinyxml2::XMLNode const* ToNode() const;
	TodoReturn tinyxml2::XMLText const* ToText() const;
	TodoReturn tinyxml2::XMLUnknown const* ToUnknown() const;
}

[[link(android)]]
class tinyxml2::XMLHandle {
	TodoReturn XMLHandle(tinyxml2::XMLNode&);
	TodoReturn XMLHandle(tinyxml2::XMLHandle const&);
	TodoReturn XMLHandle(tinyxml2::XMLNode*);
	TodoReturn tinyxml2::XMLHandle FirstChild();
	TodoReturn tinyxml2::XMLHandle FirstChildElement(char const*);
	TodoReturn tinyxml2::XMLHandle LastChild();
	TodoReturn tinyxml2::XMLHandle LastChildElement(char const*);
	TodoReturn tinyxml2::XMLHandle NextSibling();
	TodoReturn tinyxml2::XMLHandle NextSiblingElement(char const*);
	TodoReturn tinyxml2::XMLHandle PreviousSibling();
	TodoReturn tinyxml2::XMLHandle PreviousSiblingElement(char const*);
	TodoReturn tinyxml2::XMLDeclaration* ToDeclaration();
	TodoReturn tinyxml2::XMLElement* ToElement();
	TodoReturn tinyxml2::XMLNode* ToNode();
	TodoReturn tinyxml2::XMLText* ToText();
	TodoReturn tinyxml2::XMLUnknown* ToUnknown();
}

[[link(android)]]
class tinyxml2::MemPoolT<36> {
	TodoReturn virtual void* Alloc();
	TodoReturn virtual void Free(void*);
	TodoReturn virtual int ItemSize() const;
	TodoReturn virtual void SetTracked();
}

[[link(android)]]
class tinyxml2::MemPoolT<44> {
	TodoReturn virtual void* Alloc();
	TodoReturn virtual void Free(void*);
	TodoReturn virtual int ItemSize() const;
	TodoReturn virtual void SetTracked();
}

[[link(android)]]
class tinyxml2::MemPoolT<48> {
	TodoReturn virtual void* Alloc();
	TodoReturn virtual void Free(void*);
	TodoReturn virtual int ItemSize() const;
	TodoReturn virtual void SetTracked();
}

[[link(android)]]
class tinyxml2::MemPoolT<52> {
	TodoReturn virtual void* Alloc();
	TodoReturn virtual void Free(void*);
	TodoReturn virtual int ItemSize() const;
	TodoReturn virtual void SetTracked();
}

[[link(android)]]
class tinyxml2::DynArray<char,20> {
	TodoReturn int Capacity() const;
	TodoReturn void EnsureCapacity(int);
	TodoReturn char* Mem();
	TodoReturn char const* Mem() const;
	TodoReturn void Push(char);
	TodoReturn char* PushArr(int);
	TodoReturn int Size() const;
}

[[link(android)]]
class fmt::BasicFormatter<char> {
	TodoReturn void CheckSign(char const*&, fmt::internal::Arg const&);
	TodoReturn void Format(fmt::BasicStringRef<char>, fmt::ArgList const&);
	TodoReturn fmt::internal::Arg const& ParseArgIndex(char const*&);
	TodoReturn char const* format(char const*, fmt::internal::Arg const&);
}

[[link(android)]]
class fmt::BasicFormatter<wchar_t> {
	TodoReturn void CheckSign(wchar_t const*&, fmt::internal::Arg const&);
	TodoReturn void Format(fmt::BasicStringRef<wchar_t>, fmt::ArgList const&);
	TodoReturn fmt::internal::Arg const& ParseArgIndex(wchar_t const*&);
	TodoReturn wchar_t const* format(wchar_t const*, fmt::internal::Arg const&);
}

[[link(android)]]
class tinyxml2::DynArray<struct tinyxml2::MemPoolT<36>::Block *,10> {
	TodoReturn void EnsureCapacity(int);
	TodoReturn void Push(tinyxml2::MemPoolT<36>::Block*);
	TodoReturn int Size() const;
}

[[link(android)]]
class tinyxml2::DynArray<struct tinyxml2::MemPoolT<44>::Block *,10> {
	TodoReturn void EnsureCapacity(int);
	TodoReturn void Push(tinyxml2::MemPoolT<44>::Block*);
	TodoReturn int Size() const;
}

[[link(android)]]
class tinyxml2::DynArray<struct tinyxml2::MemPoolT<48>::Block *,10> {
	TodoReturn void EnsureCapacity(int);
	TodoReturn void Push(tinyxml2::MemPoolT<48>::Block*);
	TodoReturn int Size() const;
}

[[link(android)]]
class tinyxml2::DynArray<struct tinyxml2::MemPoolT<52>::Block *,10> {
	TodoReturn void EnsureCapacity(int);
	TodoReturn void Push(tinyxml2::MemPoolT<52>::Block*);
	TodoReturn int Size() const;
}

[[link(android)]]
class tinyxml2::DynArray<char const *,10> {
	TodoReturn void EnsureCapacity(int);
	TodoReturn char const* Pop();
	TodoReturn void Push(char const*);
}

[[link(android)]]
class fmt::BasicWriter<char> {
	TodoReturn static char* FillPadding(char*, unsigned int, unsigned int, wchar_t);
	TodoReturn static char* GetBase(char*);
	TodoReturn char* GrowBuffer(unsigned int);
	TodoReturn char const* c_str() const;
	TodoReturn char const* data() const;
	TodoReturn unsigned int size() const;
	TodoReturn std::string str() const;
	TodoReturn void write(fmt::BasicStringRef<char>, fmt::ArgList const&);
}

[[link(android)]]
class fmt::BasicWriter<wchar_t> {
	TodoReturn static wchar_t* FillPadding(wchar_t*, unsigned int, unsigned int, wchar_t);
	TodoReturn static wchar_t* GetBase(wchar_t*);
	TodoReturn wchar_t* GrowBuffer(unsigned int);
	TodoReturn std::basic_string<wchar_t, std::char_traits<wchar_t>, std::allocator<wchar_t> > str() const;
	TodoReturn void write(fmt::BasicStringRef<wchar_t>, fmt::ArgList const&);
}

[[link(android)]]
class fmt::internal::PrintfParser<char> {
	TodoReturn void Format(fmt::BasicWriter<char>&, fmt::BasicStringRef<char>, fmt::ArgList const&);
	TodoReturn fmt::internal::Arg const& HandleArgIndex(unsigned int, char const*&);
	TodoReturn void ParseFlags(fmt::FormatSpec&, char const*&);
	TodoReturn unsigned int ParseHeader(char const*&, fmt::FormatSpec&, char const*&);
}

[[link(android)]]
class fmt::internal::PrintfParser<wchar_t> {
	TodoReturn void Format(fmt::BasicWriter<wchar_t>&, fmt::BasicStringRef<wchar_t>, fmt::ArgList const&);
	TodoReturn fmt::internal::Arg const& HandleArgIndex(unsigned int, char const*&);
	TodoReturn void ParseFlags(fmt::FormatSpec&, wchar_t const*&);
	TodoReturn unsigned int ParseHeader(wchar_t const*&, fmt::FormatSpec&, char const*&);
}

[[link(android)]]
class fmt::TypeSpec<0> {
	TodoReturn fmt::Alignment align() const;
	TodoReturn char fill() const;
	TodoReturn bool hash_flag() const;
	TodoReturn bool plus_flag() const;
	TodoReturn int precision() const;
	TodoReturn bool sign_flag() const;
	TodoReturn char type() const;
	TodoReturn unsigned int width() const;
}

[[link(android)]]
class fmt::TypeSpec<88> {
	TodoReturn fmt::Alignment align() const;
	TodoReturn char fill() const;
	TodoReturn bool hash_flag() const;
	TodoReturn bool plus_flag() const;
	TodoReturn int precision() const;
	TodoReturn bool sign_flag() const;
	TodoReturn char type() const;
	TodoReturn unsigned int width() const;
}

[[link(android)]]
class fmt::TypeSpec<98> {
	TodoReturn fmt::Alignment align() const;
	TodoReturn char fill() const;
	TodoReturn bool hash_flag() const;
	TodoReturn bool plus_flag() const;
	TodoReturn int precision() const;
	TodoReturn bool sign_flag() const;
	TodoReturn char type() const;
	TodoReturn unsigned int width() const;
}

[[link(android)]]
class fmt::TypeSpec<111> {
	TodoReturn fmt::Alignment align() const;
	TodoReturn char fill() const;
	TodoReturn bool hash_flag() const;
	TodoReturn bool plus_flag() const;
	TodoReturn int precision() const;
	TodoReturn bool sign_flag() const;
	TodoReturn char type() const;
	TodoReturn unsigned int width() const;
}

[[link(android)]]
class fmt::TypeSpec<120> {
	TodoReturn fmt::Alignment align() const;
	TodoReturn char fill() const;
	TodoReturn bool hash_flag() const;
	TodoReturn bool plus_flag() const;
	TodoReturn int precision() const;
	TodoReturn bool sign_flag() const;
	TodoReturn char type() const;
	TodoReturn unsigned int width() const;
}

[[link(android)]]
class fmt::BasicStringRef<char> {
	TodoReturn char const* c_str() const;
	TodoReturn unsigned int size() const;
}

[[link(android)]]
class fmt::BasicStringRef<wchar_t> {
	TodoReturn wchar_t const* c_str() const;
}

[[link(android)]]
class fmt::internal::CharTraits<wchar_t> {
	TodoReturn static wchar_t const* check(wchar_t const*);
	TodoReturn static fmt::internal::StringValue<wchar_t> convert(fmt::internal::StringValue<wchar_t>);
	TodoReturn static wchar_t convert(char);
	TodoReturn static wchar_t convert(wchar_t);
}

[[link(android)]]
class fmt::internal::CharTraits<char> {
	TodoReturn static fmt::internal::StringValue<char> convert(fmt::internal::StringValue<wchar_t>);
	TodoReturn static char convert(char);
}

[[link(android)]]
class fmt::AlignTypeSpec<0> {
	TodoReturn bool hash_flag() const;
	TodoReturn bool plus_flag() const;
	TodoReturn bool sign_flag() const;
	TodoReturn char type() const;
}

[[link(android)]]
class fmt::IntFormatSpec<int,struct fmt::TypeSpec<0>,char> {
	TodoReturn int value() const;
}
