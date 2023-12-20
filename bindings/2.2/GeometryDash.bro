// clang-format off

class GDString {
    // void winDtor() = win 0xf6e0;
    // GDString& winAssign(GDString const&, size_t, size_t) = win 0xf720;
    // GDString& winAssign(char const*) = win 0xf680;
    // GDString& winAssign(char const*, size_t) = win 0xf840;

    // static uintptr_t macEmptyContainer() {
        // return geode::base::get() + 0x6030d0;
    // }
    // void macCtor(char const*) = mac 0x489fc0;
    // void macCtor(GDString const&) = mac 0x489fcc;
    // GDString& macAssign(char const*) = mac 0x489f96;
    // GDString& macAssign(GDString const&) = mac 0x489f9c;
    // void macDestroy() = mac 0x489f78;
}

[[link(android)]]
class ArtistCell {
	void onNewgrounds(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(SongInfoObject*);
	virtual void draw();
	virtual bool init();
	void onYouTube(cocos2d::CCObject* sender);
	ArtistCell(char const*, float, float);
	~ArtistCell();
}

[[link(android)]]
class ButtonPage {
	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, float);
	static ButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint, int, float);
	~ButtonPage();
}

[[link(android)]]
class FontObject {
	TodoReturn getFontWidth(int);
	TodoReturn parseConfigFile(char const*, float);
	TodoReturn initWithConfigFile(char const*, float);
	TodoReturn createWithConfigFile(char const*, float);
	~FontObject();
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
	virtual void setOpacity(unsigned char);
	/* unverified signature */
	void setRScaleX(float);
	/* unverified signature */
	void setRScaleY(float);
	virtual void setVisible(bool);
	TodoReturn addRotation(float);
	TodoReturn addRotation(float, float);
	TodoReturn commonSetup();
	TodoReturn customSetup();
	TodoReturn getColorKey(bool, bool);
	TodoReturn ignoreEnter();
	TodoReturn resetGroups();
	TodoReturn resetObject();
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setRotation(float);
	/* unverified signature */
	void setStartPos(cocos2d::CCPoint);
	TodoReturn shouldLockX();
	TodoReturn addEmptyGlow();
	TodoReturn canBeOrdered();
	TodoReturn colorForMode(int, bool);
	TodoReturn getBallFrame(int);
	TodoReturn getBoxOffset();
	TodoReturn getGlowFrame(std::string);
	TodoReturn getMainColor();
	/* unverified signature */
	bool isFacingDown();
	/* unverified signature */
	bool isFacingLeft();
	TodoReturn selectObject(cocos2d::_ccColor3B);
	/* unverified signature */
	void setGlowColor(cocos2d::_ccColor3B const&);
	virtual void setRotationX(float);
	virtual void setRotationY(float);
	/* unverified signature */
	void setRRotation(float);
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
	/* unverified signature */
	bool isColorObject();
	/* unverified signature */
	bool isSpeedObject();
	TodoReturn makeInvisible();
	TodoReturn restoreObject();
	virtual void setChildColor(cocos2d::_ccColor3B const&);
	TodoReturn slopeFloorTop();
	TodoReturn slopeWallLeft();
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
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
	/* unverified signature */
	bool isBasicTrigger();
	/* unverified signature */
	bool isColorTrigger();
	/* unverified signature */
	void setAreaOpacity(float, float, int);
	/* unverified signature */
	void setGlowOpacity(unsigned char);
	/* unverified signature */
	void setObjectColor(cocos2d::_ccColor3B const&);
	/* unverified signature */
	void setObjectLabel(cocos2d::CCLabelBMFont*);
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
	virtual bool initWithTexture(cocos2d::CCTexture2D*);
	/* unverified signature */
	bool isSpecialObject();
	TodoReturn parentForZLayer(int, bool, int);
	TodoReturn playShineEffect();
	TodoReturn removeFromGroup(int);
	TodoReturn resetMoveOffset();
	/* unverified signature */
	void setCustomZLayer(int);
	/* unverified signature */
	void setLastPosition(cocos2d::CCPoint const&);
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
	/* unverified signature */
	bool isSettingsObject();
	TodoReturn objectFromVector(gd::vector<std::string>&, gd::vector<void*>&, GJBaseGameLayer*, bool);
	TodoReturn perspectiveFrame(char const*, int);
	TodoReturn resetColorGroups();
	TodoReturn saveActiveColors();
	/* unverified signature */
	void setMainColorMode(int);
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
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
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
	/* unverified signature */
	bool isBasicEnterEffect(int);
	/* unverified signature */
	bool isSpawnableTrigger();
	/* unverified signature */
	bool isStoppableTrigger();
	TodoReturn reorderColorSprite();
	TodoReturn resetGroupDisabled();
	TodoReturn resetMainColorMode();
	/* unverified signature */
	void setObjectRectDirty(bool);
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
	/* unverified signature */
	bool isConfigurablePortal();
	/* unverified signature */
	bool isSpecialSpawnObject();
	TodoReturn loadGroupsFromString(std::string);
	TodoReturn particleWasActivated();
	TodoReturn quickUpdatePosition2();
	/* unverified signature */
	void setOrientedRectDirty(bool);
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
	/* unverified signature */
	void setSecondaryColorMode(int);
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
	/* unverified signature */
	void setDefaultMainColorMode(int);
	TodoReturn shouldNotHideAnimFreeze();
	TodoReturn shouldShowPickupEffects();
	TodoReturn updateObjectEditorColor();
	TodoReturn editorColorForCustomMode(int);
	TodoReturn hasBeenActivatedByPlayer(PlayerObject*);
	/* unverified signature */
	bool isEditorSpawnableTrigger();
	TodoReturn updateSecondaryColorOnly();
	TodoReturn createColorGroupContainer(int);
	TodoReturn updateMainParticleOpacity(unsigned char);
	TodoReturn updateUnmodifiedPositions();
	TodoReturn spawnDefaultPickupParticle(GJBaseGameLayer*);
	TodoReturn addInternalCustomColorChild(std::string, cocos2d::CCPoint, int);
	TodoReturn createOpacityGroupContainer(int);
	/* unverified signature */
	void setDefaultSecondaryColorMode(int);
	TodoReturn updateSecondaryParticleOpacity(unsigned char);
	bool init(char const*);
	virtual void update(float);
	TodoReturn addGlow(std::string);
	/* unverified signature */
	bool isFlipX();
	/* unverified signature */
	bool isFlipY();
	/* unverified signature */
	void setType(GameObjectType);
	TodoReturn resetMID();
	/* unverified signature */
	void setFlipX(bool);
	/* unverified signature */
	void setFlipY(bool);
	virtual void setScale(float);
	/* unverified signature */
	bool isTrigger();
	/* unverified signature */
	void setRScale(float);
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	TodoReturn slopeYPos(float);
	TodoReturn slopeYPos(cocos2d::CCRect);
	TodoReturn slopeYPos(GameObject*);
	~GameObject();
	TodoReturn getStartPos();
	TodoReturn getObjectRectDirty();
	TodoReturn getOrientedRectDirty();
	TodoReturn getType();
}

[[link(android)]]
class GJItemIcon {
	virtual void setOpacity(unsigned char);
	TodoReturn scaleForType(UnlockType);
	TodoReturn createStoreItem(UnlockType, int, bool, cocos2d::_ccColor3B);
	TodoReturn darkenStoreItem(ShopType);
	TodoReturn darkenStoreItem(cocos2d::_ccColor3B);
	TodoReturn createBrowserItem(UnlockType, int);
	TodoReturn toggleEnabledState(bool);
	TodoReturn changeToLockedState(float);
	TodoReturn unlockedColorForType(int);
	bool init(UnlockType, int, cocos2d::_ccColor3B, cocos2d::_ccColor3B, bool, bool, bool, cocos2d::_ccColor3B);
	static GJItemIcon* create(UnlockType, int, cocos2d::_ccColor3B, cocos2d::_ccColor3B, bool, bool, bool, cocos2d::_ccColor3B);
	~GJItemIcon();
}

[[link(android)]]
class GJPathPage {
	void onIconInfo(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	void onActivatePath(cocos2d::CCObject* sender);
	TodoReturn didPurchaseItem(GJStoreItem*);
	TodoReturn playUnlockAnimation();
	TodoReturn unlockAnimationStep2();
	TodoReturn unlockAnimationStep3();
	TodoReturn showCantAffordMessage(GJStoreItem*);
	TodoReturn unlockAnimationFinished();
	virtual void registerWithTouchDispatcher();
	bool init(int, GJPathsLayer*);
	TodoReturn show();
	static GJPathPage* create(int, GJPathsLayer*);
	void onBack(cocos2d::CCObject* sender);
	void onUnlock(cocos2d::CCObject* sender);
	~GJPathPage();
}

[[link(android)]]
class GJUserCell {
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn loadFromScore(GJUserScore*);
	void onSendMessage(cocos2d::CCObject* sender);
	void onUnblockUser(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);
	void onRemoveFriend(cocos2d::CCObject* sender);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn uploadActionFailed(int, int);
	void onViewFriendRequest(cocos2d::CCObject* sender);
	TodoReturn uploadActionFinished(int, int);
	void onCancelFriendRequest(cocos2d::CCObject* sender);
	virtual void draw();
	virtual bool init();
	GJUserCell(char const*, float, float);
	~GJUserCell();
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
	virtual bool init();
	TodoReturn reset();
	static HardStreak* create();
	TodoReturn addPoint(cocos2d::CCPoint);
	~HardStreak();
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
	void onSettings(cocos2d::CCObject* sender);
	TodoReturn customSetup();
	void onNormalMode(cocos2d::CCObject* sender);
	void onRestartFull(cocos2d::CCObject* sender);
	TodoReturn tryShowBanner(float);
	virtual void keyBackClicked();
	void onPracticeMode(cocos2d::CCObject* sender);
	void onRecordReplays(cocos2d::CCObject* sender);
	TodoReturn sfxSliderChanged(cocos2d::CCObject*);
	TodoReturn setupProgressBars();
	TodoReturn createToggleButton(std::string, SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn musicSliderChanged(cocos2d::CCObject*);
	bool init(bool);
	virtual void keyUp(cocos2d::enumKeyCodes);
	static PauseLayer* create(bool);
	TodoReturn goEdit();
	void onEdit(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onQuit(cocos2d::CCObject* sender);
	void onTime(cocos2d::CCObject* sender);
	virtual void keyDown(cocos2d::enumKeyCodes);
	void onReplay(cocos2d::CCObject* sender);
	void onResume(cocos2d::CCObject* sender);
	void onRestart(cocos2d::CCObject* sender);
	~PauseLayer();
}

[[link(android)]]
class PriceLabel {
	/* unverified signature */
	void setOpacity(float);
	bool init(int);
	static PriceLabel* create(int);
	/* unverified signature */
	void setColor(cocos2d::_ccColor3B);
	/* unverified signature */
	void setPrice(int);
	~PriceLabel();
}

[[link(android)]]
class RingObject {
	TodoReturn resetObject();
	virtual void setRotation(float);
	TodoReturn spawnCircle();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn powerOnObject(int);
	TodoReturn triggerActivated(float);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	TodoReturn shouldDrawEditorHitbox();
	bool init(char const*);
	static RingObject* create(char const*);
	virtual void setScale(float);
	/* unverified signature */
	void setRScale(float);
	~RingObject();
}

[[link(android)]]
class SetIDPopup {
	TodoReturn textChanged(CCTextInputNode*);
	void onResetValue(cocos2d::CCObject* sender);
	TodoReturn valueChanged();
	void onItemIDArrow(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn updateTextInputLabel();
	bool init(int, int, int, std::string, std::string, bool, int, float, bool, bool);
	TodoReturn show();
	static SetIDPopup* create(int, int, int, std::string, std::string, bool, int, float, bool, bool);
	void onClose(cocos2d::CCObject* sender);
	void onCancel(cocos2d::CCObject* sender);
	~SetIDPopup();
}

[[link(android)]]
class SFXBrowser {
	void onExitFolder(cocos2d::CCObject* sender);
	void onClearSearch(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	void onUpdateLibrary(cocos2d::CCObject* sender);
	TodoReturn updatePageLabel();
	TodoReturn sortSelectClosed(SelectSFXSortLayer*);
	TodoReturn musicActionFailed(GJMusicAction);
	TodoReturn getSelectedCellIdx();
	/* unverified signature */
	void setTextPopupClosed(SetTextPopup*, std::string);
	TodoReturn trySetupSFXBrowser();
	TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	TodoReturn musicActionFinished(GJMusicAction);
	void onToggleCompactMode(cocos2d::CCObject* sender);
	TodoReturn shouldSnapToSelected();
	virtual void registerWithTouchDispatcher();
	bool init(int);
	static SFXBrowser* create(int);
	void onPage(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);
	void onCredits(cocos2d::CCObject* sender);
	void onSorting(cocos2d::CCObject* sender);
	TodoReturn setupList(SFXSearchResult*);
	~SFXBrowser();
}

[[link(android)]]
class ShardsPage {
	void onIconInfo(cocos2d::CCObject* sender);
	void onSwitchPage(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void registerWithTouchDispatcher();
	virtual bool init();
	TodoReturn show();
	static ShardsPage* create();
	void onClose(cocos2d::CCObject* sender);
	TodoReturn goToPage(int);
	~ShardsPage();
}

[[link(android)]]
class SongObject {
	bool init(int);
	static SongObject* create(int);
	~SongObject();
}

[[link(android)]]
class SongsLayer {
	TodoReturn customSetup();
	static SongsLayer* create();
	~SongsLayer();
}

[[link(android)]]
class StatsLayer {
	TodoReturn customSetup();
	static StatsLayer* create();
	~StatsLayer();
}

[[link(android)]]
class UndoObject {
	virtual void setObjects(cocos2d::CCArray*);
	TodoReturn createWithArray(cocos2d::CCArray*, UndoCommand);
	TodoReturn initWithTransformObjects(cocos2d::CCArray*, UndoCommand);
	TodoReturn createWithTransformObjects(cocos2d::CCArray*, UndoCommand);
	bool init(GameObject*, UndoCommand);
	bool init(cocos2d::CCArray*, UndoCommand);
	static UndoObject* create(GameObject*, UndoCommand);
	~UndoObject();
}

[[link(android)]]
class AppDelegate {
	TodoReturn checkSound();
	TodoReturn pauseSound();
	TodoReturn resumeSound();
	virtual void setupGLView();
	virtual void trySaveGame(bool);
	virtual void platformShutdown();
	TodoReturn hideLoadingCircle();
	TodoReturn loadingIsFinished();
	TodoReturn showLoadingCircle(bool, bool, bool);
	TodoReturn willSwitchToScene(cocos2d::CCScene*);
	/* unverified signature */
	void setIdleTimerDisabled(bool);
	virtual void applicationWillBecomeActive();
	virtual void applicationWillResignActive();
	TodoReturn applicationDidEnterBackground();
	TodoReturn applicationDidFinishLaunching();
	TodoReturn applicationWillEnterForeground();
	TodoReturn get();
	TodoReturn bgScale();
	TodoReturn musicTest();
	TodoReturn pauseGame();
	~AppDelegate();
}

[[link(android)]]
class CCCountdown {
	virtual void setOpacity(unsigned char);
	TodoReturn lapFinished();
	TodoReturn startTimerWithSeconds(float, cocos2d::SEL_CallFunc, cocos2d::CCNode*);
	virtual bool init();
	static CCCountdown* create();
	~CCCountdown();
}

[[link(android)]]
class CCIndexPath {
	~CCIndexPath();
}

[[link(android)]]
class CCMoveCNode {
	virtual bool init();
	TodoReturn reset();
	static CCMoveCNode* create();
	~CCMoveCNode();
}

[[link(android)]]
class CCURLObject {
	bool init(std::string, std::string);
	static CCURLObject* create(std::string, std::string);
	~CCURLObject();
}

[[link(android)]]
class ColorAction {
	TodoReturn resetAction();
	TodoReturn saveToState(CAState&);
	TodoReturn setupFromMap(std::map<std::string, std::string>&);
	TodoReturn loadFromState(CAState&);
	TodoReturn setupFromString(std::string);
	TodoReturn writeSaveString(fmt::BasicWriter<char>&);
	TodoReturn updateCustomColor(cocos2d::_ccColor3B, cocos2d::_ccColor3B);
	bool init(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float, double, bool, int, float, float);
	virtual void step(float);
	static ColorAction* create(cocos2d::_ccColor3B, bool, int);
	static ColorAction* create(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float, double, bool);
	static ColorAction* create(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float, double, bool, int, float, float);
	static ColorAction* create();
	TodoReturn getCopy();
	/* unverified signature */
	bool isInUse();
	~ColorAction();
}

[[link(android)]]
class CommentCell {
	TodoReturn onUndelete();
	void onGoToLevel(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);
	TodoReturn incrementLikes();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn loadFromComment(GJComment*);
	void onConfirmDelete(cocos2d::CCObject* sender);
	TodoReturn incrementDislikes();
	TodoReturn updateLabelValues();
	virtual void draw();
	virtual bool init();
	void onLike(cocos2d::CCObject* sender);
	TodoReturn onDelete();
	void onUnhide(cocos2d::CCObject* sender);
	TodoReturn likedItem(LikeItemType, int, bool);
	CommentCell(char const*, float, float);
	~CommentCell();
}

[[link(android)]]
class DialogLayer {
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn addToMainScene();
	virtual void keyBackClicked();
	TodoReturn animateInDialog();
	TodoReturn handleDialogTap();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn createDialogLayer(DialogObject*, cocos2d::CCArray*, int);
	TodoReturn createWithObjects(cocos2d::CCArray*, int);
	TodoReturn displayNextObject();
	TodoReturn fadeInTextFinished(TextArea*);
	TodoReturn animateInRandomSide();
	TodoReturn displayDialogObject(DialogObject*);
	TodoReturn updateChatPlacement(DialogChatPlacement);
	TodoReturn updateNavButtonFrame();
	TodoReturn finishCurrentAnimation();
	virtual void registerWithTouchDispatcher();
	bool init(DialogObject*, cocos2d::CCArray*, int);
	static DialogLayer* create(DialogObject*, int);
	virtual void keyDown(cocos2d::enumKeyCodes);
	TodoReturn onClose();
	virtual void onEnter();
	TodoReturn animateIn(DialogAnimationType);
	~DialogLayer();
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
	/* unverified signature */
	bool isIconLoaded(int, int);
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
	/* unverified signature */
	bool isIconUnlocked(int, IconType);
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
	/* unverified signature */
	bool isColorUnlocked(int, UnlockType);
	TodoReturn loadDeathEffect(int);
	TodoReturn loadGroundAsync(int);
	TodoReturn openEditorGuide();
	TodoReturn queueReloadMenu();
	/* unverified signature */
	void setGameVariable(char const*, bool);
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
	/* unverified signature */
	void setIntGameVariable(char const*, int);
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
	virtual bool init();
	TodoReturn getUGV(char const*);
	/* unverified signature */
	void setUGV(char const*, bool);
	virtual void update(float);
	TodoReturn iconKey(int, IconType);
	TodoReturn colorKey(int, UnlockType);
	TodoReturn loadFont(int);
	TodoReturn loadIcon(int, int, int);
	TodoReturn lockIcon(int, IconType);
	TodoReturn rateGame();
	TodoReturn firstLoad();
	TodoReturn lockColor(int, UnlockType);
	TodoReturn reloadAll(bool, bool, bool);
	~GameManager();
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
	/* unverified signature */
	bool isRateEasing(int);
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
	TodoReturn stringSetupToMap(std::string const&, char const*, std::map<std::string, std::string>&);
	TodoReturn getDropActionWEnd(float, float, float, cocos2d::CCAction*, float);
	TodoReturn getInvertedEasing(int);
	TodoReturn getRelativeOffset(GameObject*, cocos2d::CCPoint);
	TodoReturn stringSetupToDict(std::string const&, char const*);
	TodoReturn createToggleButton(std::string, SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, float, float, float, cocos2d::CCPoint, char const*, bool, int, cocos2d::CCArray*);
	TodoReturn createToggleButton(std::string, SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCArray*);
	TodoReturn fast_rand_minus1_1();
	TodoReturn particleFromString(std::string const&, cocos2d::CCParticleSystemQuad*, bool);
	TodoReturn particleFromStruct(cocos2d::ParticleStruct const&, cocos2d::CCParticleSystemQuad*, bool);
	TodoReturn getDropActionWDelay(float, float, float, cocos2d::CCNode*, cocos2d::SEL_CallFunc);
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
	/* unverified signature */
	bool isIOS();
	TodoReturn fast_rand();
}

[[link(android)]]
class GJBigSprite {
	TodoReturn unloadSprite(std::string, int);
	TodoReturn loadSpriteAsync(std::string, int);
	TodoReturn updateSpriteVisibility();
	TodoReturn finishedLoadingSpriteAsync(cocos2d::CCObject*);
	virtual bool init();
	static GJBigSprite* create();
	TodoReturn unloadAll();
	~GJBigSprite();
}

[[link(android)]]
class GJGameLevel {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn getCoinKey(int);
	TodoReturn getSongName();
	TodoReturn getLengthKey(int, bool);
	/* unverified signature */
	bool isPlatformer();
	TodoReturn saveNewScore(int, int);
	TodoReturn copyLevelInfo(GJGameLevel*);
	TodoReturn unverifyCoins();
	TodoReturn savePercentage(int, bool, int, int, bool);
	TodoReturn createWithCoder(DS_Dictionary*);
	virtual void encodeWithCoder(DS_Dictionary*);
	TodoReturn getListSnapshot();
	TodoReturn levelWasAltered();
	TodoReturn areCoinsVerified();
	TodoReturn getAudioFileName();
	TodoReturn getNormalPercent();
	/* unverified signature */
	void setNormalPercent(int);
	TodoReturn lengthKeyToString(int);
	TodoReturn levelWasSubmitted();
	TodoReturn storeNewLocalScore(int, int);
	TodoReturn handleStatsConflict(GJGameLevel*);
	TodoReturn parseSettingsString(std::string);
	TodoReturn scoreStringToVector(std::string&, gd::vector<int>&);
	TodoReturn scoreVectorToString(gd::vector<int>&, int);
	TodoReturn getAverageDifficulty();
	TodoReturn demonIconForDifficulty(DemonDifficultyType);
	TodoReturn generateSettingsString();
	TodoReturn getLastBuildPageForTab(int);
	/* unverified signature */
	void setLastBuildPageForTab(int, int);
	TodoReturn getUnpackedLevelDescription();
	virtual bool init();
	static GJGameLevel* create(cocos2d::CCDictionary*, bool);
	static GJGameLevel* create();
	virtual bool canEncode();
	~GJGameLevel();
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
	GJGameState();
	~GJGameState();
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
	virtual void encodeWithCoder(DS_Dictionary*);
	TodoReturn parseListLevels(std::string);
	TodoReturn reorderLevelStep(int, bool);
	TodoReturn getListLevelsArray(cocos2d::CCArray*);
	TodoReturn updateLevelsString();
	TodoReturn duplicateListLevels(GJLevelList*);
	TodoReturn removeLevelFromList(int);
	TodoReturn frameForListDifficulty(int, DifficultyIconType);
	TodoReturn getUnpackedDescription();
	virtual bool init();
	static GJLevelList* create(cocos2d::CCDictionary*);
	static GJLevelList* create();
	virtual bool canEncode();
	~GJLevelList();
}

[[link(android)]]
class GJListLayer {
	bool init(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, int);
	static GJListLayer* create(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, int);
	~GJListLayer();
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
	/* unverified signature */
	void setObjectOrigin(cocos2d::CCPoint, float);
	TodoReturn startPlayerJumpLoop();
	TodoReturn startMonsterJumpLoop();
	virtual bool init(cocos2d::CCNode*);
	static GJMapObject* create(cocos2d::CCNode*);
	~GJMapObject();
}

[[link(android)]]
class GJScoreCell {
	void onMoreLevels(cocos2d::CCObject* sender);
	TodoReturn loadFromScore(GJUserScore*);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void draw();
	virtual bool init();
	void onBan(cocos2d::CCObject* sender);
	void onCheck(cocos2d::CCObject* sender);
	GJScoreCell(char const*, float, float);
	~GJScoreCell();
}

[[link(android)]]
class GJShopLayer {
	void onPlushies(cocos2d::CCObject* sender);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn dialogClosed(DialogLayer*);
	void onSelectItem(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	TodoReturn didPurchaseItem(GJStoreItem*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn exitVideoAdItems();
	TodoReturn showReactMessage();
	void onCommunityCredits(cocos2d::CCObject* sender);
	TodoReturn rewardedVideoFinished();
	TodoReturn showCantAffordMessage(GJStoreItem*);
	TodoReturn updateCurrencyCounter();
	virtual void registerWithTouchDispatcher();
	bool init(ShopType);
	TodoReturn scene(ShopType);
	static GJShopLayer* create(ShopType);
	void onBack(cocos2d::CCObject* sender);
	virtual void onExit();
	void onVideoAd(cocos2d::CCObject* sender);
	~GJShopLayer();
}

[[link(android)]]
class GJStoreItem {
	TodoReturn getCurrencyKey();
	bool init(int, int, int, int, ShopType);
	static GJStoreItem* create(int, int, int, int, ShopType);
	~GJStoreItem();
}

[[link(android)]]
class GJUserScore {
	/* unverified signature */
	bool isCurrentUser();
	TodoReturn mergeWithScore(GJUserScore*);
	virtual bool init();
	static GJUserScore* create(cocos2d::CCDictionary*);
	static GJUserScore* create();
	~GJUserScore();
}

[[link(android)]]
class GJWorldNode {
	TodoReturn addDotsToLevel(int, bool);
	TodoReturn unlockActiveItem();
	TodoReturn dotPositionForLevel(int, int);
	TodoReturn positionForLevelButton(int);
	bool init(int, WorldSelectLayer*);
	static GJWorldNode* create(int, WorldSelectLayer*);
	void onLevel(cocos2d::CCObject* sender);
	TodoReturn playStep1();
	TodoReturn playStep2();
	TodoReturn playStep3();
	~GJWorldNode();
}

[[link(android)]]
class MapPackCell {
	TodoReturn reloadCell();
	void onClaimReward(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);
	TodoReturn loadFromMapPack(GJMapPack*);
	TodoReturn playCompleteEffect();
	virtual void draw();
	virtual bool init();
	void onClick(cocos2d::CCObject* sender);
	MapPackCell(char const*, float, float);
	~MapPackCell();
}

[[link(android)]]
class OptionsCell {
	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(OptionsObject*);
	void onToggleOption(cocos2d::CCObject* sender);
	OptionsCell(char const*, float, float);
	~OptionsCell();
}

[[link(android)]]
class ProfilePage {
	void onMessages(cocos2d::CCObject* sender);
	void onMyLevels(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onRequests(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onBlockUser(cocos2d::CCObject* sender);
	TodoReturn onClosePopup(UploadActionPopup*);
	/* unverified signature */
	bool isOnWatchlist(int);
	void onSendMessage(cocos2d::CCObject* sender);
	TodoReturn setupComments();
	TodoReturn setupPageInfo(std::string, char const*);
	virtual void keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn userInfoChanged(GJUserScore*);
	void onCommentHistory(cocos2d::CCObject* sender);
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
	virtual void registerWithTouchDispatcher();
	bool init(int, bool);
	TodoReturn show();
	static ProfilePage* create(int, bool);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn loadPage(int);
	void onFollow(cocos2d::CCObject* sender);
	void onFriend(cocos2d::CCObject* sender);
	void onTwitch(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	TodoReturn blockUser();
	/* unverified signature */
	bool isCorrect(char const*);
	void onComment(cocos2d::CCObject* sender);
	void onFriends(cocos2d::CCObject* sender);
	void onMyLists(cocos2d::CCObject* sender);
	void onTwitter(cocos2d::CCObject* sender);
	void onYouTube(cocos2d::CCObject* sender);
	~ProfilePage();
}

[[link(android)]]
class RewardsPage {
	void onFreeStuff(cocos2d::CCObject* sender);
	TodoReturn updateTimers(float);
	TodoReturn tryGetRewards();
	TodoReturn getRewardFrame(int, int);
	virtual void keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn unlockLayerClosed(RewardUnlockLayer*);
	TodoReturn rewardsStatusFailed();
	TodoReturn rewardsStatusFinished(int);
	virtual void registerWithTouchDispatcher();
	virtual bool init();
	TodoReturn show();
	static RewardsPage* create();
	void onClose(cocos2d::CCObject* sender);
	void onReward(cocos2d::CCObject* sender);
	~RewardsPage();
}

[[link(android)]]
class SecretLayer {
	TodoReturn getMessage();
	TodoReturn nodeWithTag(int);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn selectAThread();
	virtual void keyBackClicked();
	TodoReturn playCoinEffect();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn getBasicMessage();
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn getThreadMessage();
	TodoReturn updateSearchLabel(char const*);
	TodoReturn updateMessageLabel(std::string);
	virtual bool init();
	TodoReturn scene();
	static SecretLayer* create();
	void onBack(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);
	~SecretLayer();
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
	virtual bool init();
	virtual void visit();
	static ShaderLayer* create();
	virtual void update(float);
	~ShaderLayer();
}

[[link(android)]]
class SliderThumb {
	/* unverified signature */
	void setRotated(bool);
	/* unverified signature */
	void setMaxOffset(float);
	bool init(cocos2d::CCNode*, SEL_MenuHandler, char const*, char const*);
	static SliderThumb* create(cocos2d::CCNode*, SEL_MenuHandler, char const*, char const*);
	TodoReturn getValue();
	/* unverified signature */
	void setValue(float);
	~SliderThumb();
}

[[link(android)]]
class StatsObject {
	bool init(char const*, int);
	static StatsObject* create(char const*, int);
	~StatsObject();
}

[[link(android)]]
class UploadPopup {
	virtual void keyBackClicked();
	void onReturnToLevel(cocos2d::CCObject* sender);
	TodoReturn levelUploadFailed(GJGameLevel*);
	TodoReturn levelUploadFinished(GJGameLevel*);
	bool init(GJGameLevel*);
	TodoReturn show();
	static UploadPopup* create(GJGameLevel*);
	void onBack(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	~UploadPopup();
}

[[link(android)]]
class AccountLayer {
	void onRegister(cocos2d::CCObject* sender);
	TodoReturn updatePage(bool);
	TodoReturn customSetup();
	TodoReturn layerHidden();
	TodoReturn hideLoadingUI();
	TodoReturn showLoadingUI();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn syncAccountFailed(BackupAccountError, int);
	TodoReturn createToggleButton(std::string, SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn backupAccountFailed(BackupAccountError, int);
	TodoReturn syncAccountFinished();
	TodoReturn accountStatusChanged();
	TodoReturn backupAccountFinished();
	static AccountLayer* create();
	TodoReturn doSync();
	void onHelp(cocos2d::CCObject* sender);
	void onMore(cocos2d::CCObject* sender);
	void onSync(cocos2d::CCObject* sender);
	void onLogin(cocos2d::CCObject* sender);
	TodoReturn doBackup();
	void onBackup(cocos2d::CCObject* sender);
	TodoReturn toggleUI(bool);
	TodoReturn exitLayer();
	~AccountLayer();
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
	virtual void draw();
	bool init(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float);
	static BoomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float);
	TodoReturn loadCell(TableViewCell*, int);
	TodoReturn lockList(bool);
	TodoReturn setupList(float);
	~BoomListView();
}

[[link(android)]]
class ButtonSprite {
	TodoReturn updateBGImage(char const*);
	TodoReturn updateSpriteBGSize();
	TodoReturn updateSpriteOffset(cocos2d::CCPoint);
	bool init(char const*, int, int, float, bool, char const*, char const*, float);
	bool init(cocos2d::CCSprite*, int, int, float, float, bool, char const*, bool);
	static ButtonSprite* create(char const*);
	static ButtonSprite* create(char const*, float);
	static ButtonSprite* create(char const*, int, int, float, bool);
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*);
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*, float);
	static ButtonSprite* create(cocos2d::CCSprite*);
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool);
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool, char const*, bool);
	/* unverified signature */
	void setColor(cocos2d::_ccColor3B);
	virtual void setString(char const*);
	~ButtonSprite();
}

[[link(android)]]
class CCBlockLayer {
	TodoReturn enterLayer();
	TodoReturn customSetup();
	TodoReturn layerHidden();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn layerVisible();
	virtual void keyBackClicked();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn enterAnimFinished();
	TodoReturn decrementForcePrio();
	TodoReturn incrementForcePrio();
	virtual void registerWithTouchDispatcher();
	virtual void draw();
	virtual bool init();
	static CCBlockLayer* create();
	TodoReturn enableUI();
	TodoReturn disableUI();
	TodoReturn exitLayer();
	TodoReturn hideLayer(bool);
	TodoReturn showLayer(bool);
	~CCBlockLayer();
}

[[link(android)]]
class CCCircleWave {
	virtual void setPosition(cocos2d::CCPoint const&);
	TodoReturn followObject(cocos2d::CCNode*, bool);
	TodoReturn updatePosition(float);
	virtual void updateTweenAction(float, char const*);
	virtual void removeMeAndCleanup();
	virtual void draw();
	bool init(float, float, float, bool, bool);
	static CCCircleWave* create(float, float, float, bool);
	static CCCircleWave* create(float, float, float, bool, bool);
	TodoReturn baseSetup(float);
	~CCCircleWave();
}

[[link(android)]]
class CCLightFlash {
	TodoReturn playEffect(cocos2d::CCPoint, cocos2d::_ccColor3B, float, float, float, float, float, float, float, float, float, float, float, float, float, float, int, bool, bool, float);
	TodoReturn cleanupFlash();
	TodoReturn removeLights();
	TodoReturn fadeAndRemove();
	virtual bool init();
	static CCLightFlash* create();
	TodoReturn showFlash();
	~CCLightFlash();
}

[[link(android)]]
class CCLightStrip {
	virtual void updateTweenAction(float, char const*);
	virtual void draw();
	bool init(float, float, float, float, float);
	static CCLightStrip* create(float, float, float, float, float);
	~CCLightStrip();
}

[[link(android)]]
class CCSpritePart {
	virtual void setVisible(bool);
	TodoReturn frameChanged(std::string);
	TodoReturn getBeingUsed();
	TodoReturn hideInactive();
	/* unverified signature */
	void setBeingUsed(bool);
	TodoReturn resetTextureRect();
	TodoReturn markAsNotBeingUsed();
	TodoReturn updateDisplayFrame(std::string);
	TodoReturn createWithSpriteFrameName(char const*);
	static CCSpritePart* create(cocos2d::CCTexture2D*);
	~CCSpritePart();
}

[[link(android)]]
class CCSpritePlus {
	TodoReturn stopFollow();
	TodoReturn addFollower(cocos2d::CCNode*);
	TodoReturn getFollower();
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setRotation(float);
	TodoReturn followSprite(CCSpritePlus*);
	virtual void setRotationX(float);
	virtual void setRotationY(float);
	TodoReturn removeFollower(cocos2d::CCNode*);
	virtual bool initWithTexture(cocos2d::CCTexture2D*);
	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	virtual bool initWithSpriteFrameName(char const*);
	TodoReturn createWithSpriteFrameName(char const*);
	/* unverified signature */
	void setFlipX(bool);
	/* unverified signature */
	void setFlipY(bool);
	virtual void setScale(float);
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	~CCSpritePlus();
}

[[link(android)]]
class ColorAction2 {
	TodoReturn resetAction();
	TodoReturn updateCustomColor(cocos2d::_ccColor3B, cocos2d::_ccColor3B);
	virtual void step(float);
	ColorAction2(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float, double, bool, int, float, float);
}

[[link(android)]]
class CreatorLayer {
	void onMapPacks(cocos2d::CCObject* sender);
	void onMyLevels(cocos2d::CCObject* sender);
	void onTopLists(cocos2d::CCObject* sender);
	void onChallenge(cocos2d::CCObject* sender);
	void onGauntlets(cocos2d::CCObject* sender);
	TodoReturn dialogClosed(DialogLayer*);
	void onDailyLevel(cocos2d::CCObject* sender);
	void onEventLevel(cocos2d::CCObject* sender);
	void onFameLevels(cocos2d::CCObject* sender);
	void onMultiplayer(cocos2d::CCObject* sender);
	void onSavedLevels(cocos2d::CCObject* sender);
	void onSecretVault(cocos2d::CCObject* sender);
	void onWeeklyLevel(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	void onAdventureMap(cocos2d::CCObject* sender);
	void onLeaderboards(cocos2d::CCObject* sender);
	void onOnlineLevels(cocos2d::CCObject* sender);
	void onTreasureRoom(cocos2d::CCObject* sender);
	virtual void sceneWillResume();
	void onFeaturedLevels(cocos2d::CCObject* sender);
	TodoReturn checkQuestsStatus();
	void onOnlyFullVersion(cocos2d::CCObject* sender);
	TodoReturn canPlayOnlineLevels();
	virtual bool init();
	TodoReturn scene();
	static CreatorLayer* create();
	void onBack(cocos2d::CCObject* sender);
	void onPaths(cocos2d::CCObject* sender);
	~CreatorLayer();
}

[[link(android)]]
class DialogObject {
	bool init(std::string, std::string, int, float, bool, cocos2d::_ccColor3B);
	static DialogObject* create(std::string, std::string, int, float, bool, cocos2d::_ccColor3B);
	~DialogObject();
}

[[link(android)]]
class FindBPMLayer {
	TodoReturn calculateBPM();
	TodoReturn registerTouch();
	TodoReturn recordingDidStop();
	bool init(int);
	static FindBPMLayer* create(int);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onRecord(cocos2d::CCObject* sender);
	TodoReturn playMusic();
	~FindBPMLayer();
}

[[link(android)]]
class FLAlertLayer {
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void keyBackClicked();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn incrementForcePrio();
	virtual void registerWithTouchDispatcher();
	bool init(int);
	bool init(FLAlertLayerProtocol*, char const*, std::string, char const*, char const*, float, bool, float, float);
	TodoReturn show();
	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, std::string, char const*, char const*);
	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, std::string, char const*, char const*, float);
	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, std::string, char const*, char const*, float, bool, float, float);
	void onBtn1(cocos2d::CCObject* sender);
	void onBtn2(cocos2d::CCObject* sender);
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void onEnter();
	~FLAlertLayer();
}

[[link(android)]]
class GauntletNode {
	TodoReturn nameForType(GauntletType);
	TodoReturn frameForType(GauntletType);
	TodoReturn onClaimReward();
	bool init(GJMapPack*);
	static GauntletNode* create(GJMapPack*);
	~GauntletNode();
}

[[link(android)]]
class GJHttpResult {
	bool init(bool, std::string, std::string, GJHttpType);
	static GJHttpResult* create(bool, std::string, std::string, GJHttpType);
	~GJHttpResult();
}

[[link(android)]]
class GJLocalScore {
	bool init(int, int);
	static GJLocalScore* create(int, int);
	~GJLocalScore();
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
	virtual void keyBackClicked();
	virtual void registerWithTouchDispatcher();
	virtual bool init();
	TodoReturn show();
	static GJPathsLayer* create();
	virtual void onExit();
	void onPath(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	~GJPathsLayer();
}

[[link(android)]]
class GJPathSprite {
	TodoReturn updateState();
	TodoReturn addRankLabel(int);
	TodoReturn addShardSprite();
	TodoReturn changeToLockedArt();
	bool init(int);
	static GJPathSprite* create(int);
	~GJPathSprite();
}

[[link(android)]]
class GJPromoPopup {
	virtual void keyBackClicked();
	virtual void registerWithTouchDispatcher();
	bool init(std::string);
	TodoReturn show();
	static GJPromoPopup* create(std::string);
	virtual void onExit();
	void onClose(cocos2d::CCObject* sender);
	~GJPromoPopup();
}

[[link(android)]]
class GJRewardItem {
	TodoReturn dataLoaded(DS_Dictionary*);
	/* unverified signature */
	bool isShardType(SpecialRewardItem);
	TodoReturn createSpecial(GJRewardType, int, int, SpecialRewardItem, int, SpecialRewardItem, int, int, int);
	TodoReturn getRewardCount(SpecialRewardItem);
	TodoReturn createWithCoder(DS_Dictionary*);
	virtual void encodeWithCoder(DS_Dictionary*);
	TodoReturn createWithObject(GJRewardType, GJRewardObject*);
	TodoReturn getNextShardType(SpecialRewardItem);
	TodoReturn rewardItemToStat(SpecialRewardItem);
	TodoReturn createWithObjects(GJRewardType, cocos2d::CCArray*);
	TodoReturn getRandomShardType();
	TodoReturn getRewardObjectForType(SpecialRewardItem);
	TodoReturn getRandomNonMaxShardType();
	bool init(int, int, std::string);
	static GJRewardItem* create(int, int, std::string);
	static GJRewardItem* create();
	virtual bool canEncode();
	~GJRewardItem();
}

[[link(android)]]
class GJValueTween {
	virtual void step(float);
}

[[link(android)]]
class LoadingLayer {
	TodoReturn loadAssets();
	TodoReturn updateProgress(int);
	TodoReturn loadingFinished();
	TodoReturn getLoadingString();
	bool init(bool);
	TodoReturn scene(bool);
	static LoadingLayer* create(bool);
	~LoadingLayer();
}

[[link(android)]]
class MPLobbyLayer {
	TodoReturn postComment();
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateLobby(float);
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn tryExitLobby();
	TodoReturn onUpdateLobby();
	virtual void keyBackClicked();
	TodoReturn updateComments();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn joinLobbyFailed(int, GJMPErrorCode);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn joinLobbyFinished(int);
	TodoReturn didUploadMPComment(int);
	TodoReturn uploadActionFailed(int, int);
	TodoReturn uploadActionFinished(int, int);
	bool init(int);
	virtual void keyUp(cocos2d::enumKeyCodes);
	TodoReturn scene(int);
	static MPLobbyLayer* create(int);
	void onBack(cocos2d::CCObject* sender);
	void onBtn1(cocos2d::CCObject* sender);
	void onBtn2(cocos2d::CCObject* sender);
	void onBtn3(cocos2d::CCObject* sender);
	virtual void keyDown(cocos2d::enumKeyCodes);
	void onComment(cocos2d::CCObject* sender);
	~MPLobbyLayer();
}

[[link(android)]]
class MusicBrowser {
	TodoReturn sliderEnded(Slider*);
	void onTagFilters(cocos2d::CCObject* sender);
	void onClearSearch(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	virtual void keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	void onArtistFilters(cocos2d::CCObject* sender);
	void onUpdateLibrary(cocos2d::CCObject* sender);
	TodoReturn updatePageLabel();
	TodoReturn musicActionFailed(GJMusicAction);
	void onPlaybackControl(cocos2d::CCObject* sender);
	TodoReturn setupSongControls();
	TodoReturn getSelectedCellIdx();
	/* unverified signature */
	void setTextPopupClosed(SetTextPopup*, std::string);
	TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	TodoReturn musicActionFinished(GJMusicAction);
	TodoReturn trySetupMusicBrowser();
	virtual void registerWithTouchDispatcher();
	bool init(int);
	static MusicBrowser* create(int);
	void onPage(cocos2d::CCObject* sender);
	virtual void update(float);
	void onClose(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);
	TodoReturn setupList(MusicSearchResult*);
	~MusicBrowser();
}

[[link(android)]]
class OptionsLayer {
	TodoReturn customSetup();
	TodoReturn layerHidden();
	void onMenuMusic(cocos2d::CCObject* sender);
	void onProgressBar(cocos2d::CCObject* sender);
	void onSecretVault(cocos2d::CCObject* sender);
	void onSoundtracks(cocos2d::CCObject* sender);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	void onRecordReplays(cocos2d::CCObject* sender);
	TodoReturn tryEnableRecord();
	TodoReturn sfxSliderChanged(cocos2d::CCObject*);
	TodoReturn createToggleButton(std::string, SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn musicSliderChanged(cocos2d::CCObject*);
	static OptionsLayer* create();
	void onHelp(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender);
	void onVideo(cocos2d::CCObject* sender);
	TodoReturn exitLayer();
	void onAccount(cocos2d::CCObject* sender);
	void onOptions(cocos2d::CCObject* sender);
	void onSupport(cocos2d::CCObject* sender);
	~OptionsLayer();
}

[[link(android)]]
class PlayerObject {
	TodoReturn bumpPlayer(float, int, bool, GameObject*);
	TodoReturn buttonDown(PlayerButton);
	TodoReturn didHitHead();
	/* unverified signature */
	bool isSafeFlip(float);
	/* unverified signature */
	bool isSafeMode(float);
	TodoReturn lockPlayer();
	TodoReturn pushButton(PlayerButton);
	TodoReturn pushPlayer(float);
	TodoReturn reverseMod();
	virtual void setOpacity(unsigned char);
	virtual void setVisible(bool);
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
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setRotation(float);
	TodoReturn setupStreak();
	TodoReturn spawnCircle();
	TodoReturn stopDashing();
	TodoReturn stopStreak2();
	TodoReturn createSpider(int);
	TodoReturn getYVelocity();
	/* unverified signature */
	bool isBoostValid(float);
	TodoReturn preCollision();
	TodoReturn redirectDash(float);
	/* unverified signature */
	void setYVelocity(double, int);
	TodoReturn spawnCircle2();
	TodoReturn startDashing(DashRingObject*);
	TodoReturn stopRotation(bool, int);
	TodoReturn getActiveMode();
	/* unverified signature */
	bool isInBasicMode();
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
	/* unverified signature */
	bool isInNormalMode();
	/* unverified signature */
	bool isSafeHeadTest();
	TodoReturn playBumpEffect(int, GameObject*);
	TodoReturn rotateGameplay(int, int, bool, float, float, bool, bool);
	/* unverified signature */
	void setSecondColor(cocos2d::_ccColor3B const&);
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
	/* unverified signature */
	bool isSafeSpiderFlip(float);
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
	bool init(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool);
	static PlayerObject* create(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool);
	virtual void update(float);
	TodoReturn flipMod();
	TodoReturn speedUp();
	/* unverified signature */
	bool isFlying();
	TodoReturn pushDown();
	TodoReturn ringJump(RingObject*, bool);
	virtual void setColor(cocos2d::_ccColor3B const&);
	/* unverified signature */
	void setFlipX(bool);
	/* unverified signature */
	void setFlipY(bool);
	virtual void setScale(float);
	TodoReturn yStartUp();
	TodoReturn gravityUp();
	TodoReturn hitGround(GameObject*, bool);
	TodoReturn logValues();
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	TodoReturn speedDown();
	~PlayerObject();
}

[[link(android)]]
class SearchButton {
	bool init(char const*, char const*, float, char const*);
	static SearchButton* create(char const*, char const*, float, char const*);
	~SearchButton();
}

[[link(android)]]
class SecretLayer2 {
	TodoReturn getMessage();
	TodoReturn nodeWithTag(int);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn dialogClosed(DialogLayer*);
	void onSecretLevel(cocos2d::CCObject* sender);
	TodoReturn selectAThread();
	virtual void keyBackClicked();
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
	virtual bool init();
	TodoReturn scene();
	static SecretLayer2* create();
	void onBack(cocos2d::CCObject* sender);
	void onDoor(cocos2d::CCObject* sender);
	virtual void onExit();
	void onSubmit(cocos2d::CCObject* sender);
	~SecretLayer2();
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
	virtual void keyBackClicked();
	TodoReturn showUnlockDialog();
	TodoReturn firstInteractionStep1();
	TodoReturn firstInteractionStep2();
	TodoReturn firstInteractionStep3();
	TodoReturn firstInteractionStep4();
	virtual bool init();
	TodoReturn scene();
	static SecretLayer3* create();
	void onBack(cocos2d::CCObject* sender);
	virtual void onExit();
	void onClick(cocos2d::CCObject* sender);
	void onChest01(cocos2d::CCObject* sender);
	void onChest02(cocos2d::CCObject* sender);
	~SecretLayer3();
}

[[link(android)]]
class SecretLayer4 {
	TodoReturn getMessage();
	TodoReturn showDialog(int);
	TodoReturn nodeWithTag(int);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn dialogClosed(DialogLayer*);
	TodoReturn selectAThread();
	virtual void keyBackClicked();
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
	virtual bool init();
	TodoReturn scene();
	static SecretLayer4* create();
	void onBack(cocos2d::CCObject* sender);
	virtual void onExit();
	void onSubmit(cocos2d::CCObject* sender);
	void onChest01(cocos2d::CCObject* sender);
	~SecretLayer4();
}

[[link(android)]]
class SetTextPopup {
	TodoReturn textChanged(CCTextInputNode*);
	void onResetValue(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn updateTextInputLabel();
	bool init(std::string, std::string, int, std::string, std::string, bool, float);
	TodoReturn show();
	static SetTextPopup* create(std::string, std::string, int, std::string, std::string, bool, float);
	void onClose(cocos2d::CCObject* sender);
	void onCancel(cocos2d::CCObject* sender);
	~SetTextPopup();
}

[[link(android)]]
class SimpleObject {
	virtual bool init();
	static SimpleObject* create();
	~SimpleObject();
}

[[link(android)]]
class SimplePlayer {
	virtual void setOpacity(unsigned char);
	TodoReturn updateColors();
	TodoReturn asyncLoadIcon(int, IconType);
	TodoReturn hideSecondary();
	/* unverified signature */
	void setSecondColor(cocos2d::_ccColor3B const&);
	TodoReturn createRobotSprite(int);
	TodoReturn updatePlayerFrame(int, IconType);
	TodoReturn createSpiderSprite(int);
	TodoReturn iconFinishedLoading(int, IconType);
	TodoReturn enableCustomGlowColor(cocos2d::_ccColor3B const&);
	TodoReturn disableCustomGlowColor();
	bool init(int);
	static SimplePlayer* create(int);
	TodoReturn hideAll();
	virtual void setColor(cocos2d::_ccColor3B const&);
	/* unverified signature */
	void setColors(cocos2d::_ccColor3B const&, cocos2d::_ccColor3B const&);
	/* unverified signature */
	void setFrames(char const*, char const*, char const*, char const*, char const*);
	~SimplePlayer();
}

[[link(android)]]
class SlideInLayer {
	TodoReturn enterLayer();
	TodoReturn customSetup();
	TodoReturn layerHidden();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn layerVisible();
	virtual void keyBackClicked();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn enterAnimFinished();
	virtual void registerWithTouchDispatcher();
	virtual void draw();
	virtual bool init();
	static SlideInLayer* create();
	TodoReturn enableUI();
	TodoReturn disableUI();
	TodoReturn exitLayer(cocos2d::CCObject*);
	TodoReturn hideLayer(bool);
	TodoReturn showLayer(bool);
	~SlideInLayer();
}

[[link(android)]]
class SupportLayer {
	TodoReturn customSetup();
	void onGetReward(cocos2d::CCObject* sender);
	void onLowDetail(cocos2d::CCObject* sender);
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	void onRequestAccess(cocos2d::CCObject* sender);
	TodoReturn sendSupportMail();
	TodoReturn createToggleButton(std::string, SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn uploadActionFailed(int, int);
	TodoReturn uploadActionFinished(int, int);
	void onSFX(cocos2d::CCObject* sender);
	void onTOS(cocos2d::CCObject* sender);
	static SupportLayer* create();
	void onEmail(cocos2d::CCObject* sender);
	void onLinks(cocos2d::CCObject* sender);
	void onRobTop(cocos2d::CCObject* sender);
	TodoReturn exitLayer();
	void onCocos2d(cocos2d::CCObject* sender);
	void onPrivacy(cocos2d::CCObject* sender);
	~SupportLayer();
}

[[link(android)]]
class URLViewLayer {
	bool init(std::string, cocos2d::CCArray*);
	static URLViewLayer* create(std::string, cocos2d::CCArray*);
	~URLViewLayer();
}

[[link(android)]]
class BonusDropdown {
	bool init(std::string, int);
	TodoReturn show();
	static BonusDropdown* create(std::string, int);
	~BonusDropdown();
}

[[link(android)]]
class BoomListLayer {
	bool init(BoomListView*, char const*);
	static BoomListLayer* create(BoomListView*, char const*);
	~BoomListLayer();
}

[[link(android)]]
class CCAlertCircle {
	virtual void draw();
	virtual bool init();
	static CCAlertCircle* create();
	~CCAlertCircle();
}

[[link(android)]]
class CCCircleAlert {
	bool init(float, float, float);
	static CCCircleAlert* create(float, float, float);
	~CCCircleAlert();
}

[[link(android)]]
class ChallengeNode {
	void onClaimReward(cocos2d::CCObject* sender);
	TodoReturn updateTimeLabel(std::string);
	bool init(GJChallengeItem*, ChallengesPage*, bool);
	static ChallengeNode* create(GJChallengeItem*, ChallengesPage*, bool);
	~ChallengeNode();
}

[[link(android)]]
class CustomSFXCell {
	TodoReturn shouldReload();
	TodoReturn updateBGColor(int);
	TodoReturn getActiveSFXID();
	TodoReturn loadFromObject(SFXInfoObject*);
	TodoReturn sfxObjectSelected(SFXInfoObject*);
	virtual void draw();
	virtual bool init();
	CustomSFXCell(char const*, float, float);
	~CustomSFXCell();
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
	virtual void draw();
	bool init(cocos2d::CCNode*, LevelEditorLayer*);
	static DrawGridLayer* create(cocos2d::CCNode*, LevelEditorLayer*);
	virtual void update(float);
	~DrawGridLayer();
}

[[link(android)]]
class EditButtonBar {
	TodoReturn reloadItems(int, int);
	TodoReturn loadFromItems(cocos2d::CCArray*, int, int, bool);
	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, bool, int, int);
	static EditButtonBar* create(cocos2d::CCArray*, cocos2d::CCPoint, int, bool, int, int);
	void onLeft(cocos2d::CCObject* sender);
	TodoReturn getPage();
	void onRight(cocos2d::CCObject* sender);
	TodoReturn goToPage(int);
	~EditButtonBar();
}

[[link(android)]]
class EndLevelLayer {
	TodoReturn getEndText();
	TodoReturn customSetup();
	void onEveryplay(cocos2d::CCObject* sender);
	TodoReturn getCoinString();
	TodoReturn playEndEffect();
	TodoReturn tryShowBanner(float);
	virtual void keyBackClicked();
	TodoReturn playCoinEffect(float);
	TodoReturn playStarEffect(float);
	TodoReturn coinEnterFinished(cocos2d::CCPoint);
	TodoReturn enterAnimFinished();
	TodoReturn playDiamondEffect(float);
	TodoReturn starEnterFinished();
	TodoReturn coinEnterFinishedO(cocos2d::CCObject*);
	void onLevelLeaderboard(cocos2d::CCObject* sender);
	TodoReturn playCurrencyEffect(float);
	TodoReturn diamondEnterFinished();
	TodoReturn currencyEnterFinished();
	virtual void keyUp(cocos2d::enumKeyCodes);
	static EndLevelLayer* create();
	TodoReturn goEdit();
	void onEdit(cocos2d::CCObject* sender);
	void onMenu(cocos2d::CCObject* sender);
	virtual void keyDown(cocos2d::enumKeyCodes);
	void onReplay(cocos2d::CCObject* sender);
	TodoReturn showLayer(bool);
	~EndLevelLayer();
}

[[link(android)]]
class ExtendedLayer {
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual bool init();
	static ExtendedLayer* create();
	~ExtendedLayer();
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
	virtual void keyBackClicked();
	TodoReturn loadLevelsFailed(char const*, int);
	TodoReturn unlockActiveItem();
	TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	bool init(GauntletType);
	TodoReturn scene(GauntletType);
	static GauntletLayer* create(GauntletType);
	void onBack(cocos2d::CCObject* sender);
	void onLevel(cocos2d::CCObject* sender);
	~GauntletLayer();
}

[[link(android)]]
class GJChestSprite {
	virtual void setOpacity(unsigned char);
	TodoReturn switchToState(ChestSpriteState, bool);
	bool init(int);
	static GJChestSprite* create(int);
	virtual void setColor(cocos2d::_ccColor3B const&);
	~GJChestSprite();
}

[[link(android)]]
class GJGarageLayer {
	void onNavigate(cocos2d::CCObject* sender);
	TodoReturn toggleGlow();
	TodoReturn updateRate();
	void onSelectTab(cocos2d::CCObject* sender);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn dialogClosed(DialogLayer*);
	TodoReturn getLockFrame(int, UnlockType);
	void onToggleItem(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
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
	virtual bool init();
	TodoReturn scene();
	void onBack(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onShop(cocos2d::CCObject* sender);
	void onArrow(cocos2d::CCObject* sender);
	void onPaint(cocos2d::CCObject* sender);
	TodoReturn getItems(IconType);
	TodoReturn getItems(int, int, IconType, int);
	void onSelect(cocos2d::CCObject* sender);
	void onShards(cocos2d::CCObject* sender);
	void onSpecial(cocos2d::CCObject* sender);
	TodoReturn selectTab(IconType);
	TodoReturn setupPage(int, IconType);
	~GJGarageLayer();
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
	virtual void draw();
	bool init(int, int);
	static GJGroundLayer* create(int, int);
	~GJGroundLayer();
}

[[link(android)]]
class GJMessageCell {
	TodoReturn markAsRead();
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn updateToggle();
	void onViewMessage(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn loadFromMessage(GJUserMessage*);
	void onDeleteMessage(cocos2d::CCObject* sender);
	TodoReturn uploadActionFailed(int, int);
	TodoReturn uploadActionFinished(int, int);
	virtual void draw();
	virtual bool init();
	void onToggle(cocos2d::CCObject* sender);
	GJMessageCell(char const*, float, float);
	~GJMessageCell();
}

[[link(android)]]
class GJRequestCell {
	TodoReturn markAsRead();
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn updateToggle();
	TodoReturn loadFromScore(GJUserScore*);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	void onDeleteRequest(cocos2d::CCObject* sender);
	TodoReturn uploadActionFailed(int, int);
	void onViewFriendRequest(cocos2d::CCObject* sender);
	TodoReturn uploadActionFinished(int, int);
	virtual void draw();
	virtual bool init();
	void onToggle(cocos2d::CCObject* sender);
	GJRequestCell(char const*, float, float);
	~GJRequestCell();
}

[[link(android)]]
class GJRobotSprite {
	virtual void setOpacity(unsigned char);
	TodoReturn updateFrame(int);
	TodoReturn updateColors();
	TodoReturn hideSecondary();
	TodoReturn updateColor01(cocos2d::_ccColor3B);
	TodoReturn updateColor02(cocos2d::_ccColor3B);
	TodoReturn updateGlowColor(cocos2d::_ccColor3B, bool);
	bool init(int);
	bool init(int, std::string);
	static GJRobotSprite* create(int);
	TodoReturn hideGlow();
	TodoReturn showGlow();
	~GJRobotSprite();
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
	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool init();
	static GJSmartPrefab* create();
	virtual bool canEncode();
	~GJSmartPrefab();
}

[[link(android)]]
class GJSongBrowser {
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn customSetup();
	void onDeleteAll(cocos2d::CCObject* sender);
	TodoReturn setupPageInfo(int, int, int);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn setupSongBrowser(cocos2d::CCArray*);
	TodoReturn getSelectedCellIdx();
	TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	virtual bool init();
	static GJSongBrowser* create();
	TodoReturn loadPage(int);
	TodoReturn exitLayer(cocos2d::CCObject*);
	~GJSongBrowser();
}

[[link(android)]]
class GJUserMessage {
	virtual bool init();
	static GJUserMessage* create(cocos2d::CCDictionary*);
	static GJUserMessage* create();
	~GJUserMessage();
}

[[link(android)]]
class ItemInfoPopup {
	virtual void keyBackClicked();
	TodoReturn nameForUnlockType(int, UnlockType);
	/* unverified signature */
	bool isUnlockedByDefault(int, UnlockType);
	bool init(int, UnlockType);
	static ItemInfoPopup* create(int, UnlockType);
	void onClose(cocos2d::CCObject* sender);
	void onCredit(cocos2d::CCObject* sender);
	~ItemInfoPopup();
}

[[link(android)]]
class LevelListCell {
	void onListInfo(cocos2d::CCObject* sender);
	TodoReturn loadFromList(GJLevelList*);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);
	virtual void draw();
	virtual bool init();
	static LevelListCell* create(float, float);
	void onClick(cocos2d::CCObject* sender);
	LevelListCell(char const*, float, float);
	~LevelListCell();
}

[[link(android)]]
class LikeItemLayer {
	TodoReturn triggerLike(bool);
	virtual void keyBackClicked();
	bool init(LikeItemType, int, int);
	static LikeItemLayer* create(LikeItemType, int, int);
	void onLike(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onDislike(cocos2d::CCObject* sender);
	~LikeItemLayer();
}

[[link(android)]]
class ListButtonBar {
	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int);
	static ListButtonBar* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int);
	void onLeft(cocos2d::CCObject* sender);
	TodoReturn getPage();
	void onRight(cocos2d::CCObject* sender);
	TodoReturn goToPage(int);
	~ListButtonBar();
}

[[link(android)]]
class LoadingCircle {
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn fadeAndRemove();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void draw();
	virtual bool init();
	TodoReturn show();
	static LoadingCircle* create();
	~LoadingCircle();
}

[[link(android)]]
class MenuGameLayer {
	TodoReturn getBGColor(int);
	TodoReturn resetPlayer();
	TodoReturn updateColor(float);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn updateColors();
	TodoReturn destroyPlayer();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual bool init();
	static MenuGameLayer* create();
	virtual void update(float);
	TodoReturn tryJump(float);
	~MenuGameLayer();
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
	virtual bool init();
	TodoReturn setup();
	TodoReturn instance();
	/* unverified signature */
	void setLoaded(char const*);
	~ObjectManager();
}

[[link(android)]]
class ObjectToolbox {
	TodoReturn sharedState();
	TodoReturn intKeyToFrame(int);
	TodoReturn gridNodeSizeForKey(int);
	TodoReturn perspectiveBlockFrame(int);
	virtual bool init();
	TodoReturn allKeys();
	~ObjectToolbox();
}

[[link(android)]]
class OptionsObject {
	TodoReturn toggleState();
	bool init(int, bool, std::string, OptionsObjectDelegate*);
	static OptionsObject* create(int, bool, std::string, OptionsObjectDelegate*);
	~OptionsObject();
}

[[link(android)]]
class SetupEndPopup {
	void onReversed(cocos2d::CCObject* sender);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateTargetID();
	void onMultiActivate(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupEndPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	void onLockY(cocos2d::CCObject* sender);
	~SetupEndPopup();
}

[[link(android)]]
class SetupSFXPopup {
	void onBrowseSFX(cocos2d::CCObject* sender);
	TodoReturn pageChanged();
	void onPlusButton(cocos2d::CCObject* sender);
	TodoReturn updateLength();
	TodoReturn getActiveSFXID();
	TodoReturn valueDidChange(int, float);
	TodoReturn createSFXWidget();
	TodoReturn overridePlaySFX(SFXInfoObject*);
	TodoReturn sfxBrowserClosed(SFXBrowser*);
	TodoReturn sfxObjectSelected(SFXInfoObject*);
	bool init(SFXTriggerGameObject*, cocos2d::CCArray*);
	static SetupSFXPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupSFXPopup();
}

[[link(android)]]
class SFXInfoObject {
	TodoReturn getLowerCaseName();
	bool init(int, std::string, int, int, int);
	static SFXInfoObject* create(int, std::string, int, int, int);
	~SFXInfoObject();
}

[[link(android)]]
class SongInfoLayer {
	void onDownload(cocos2d::CCObject* sender);
	void onMenuMusic(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	void onPracticeMusic(cocos2d::CCObject* sender);
	TodoReturn showCustomMusicUnlockInfo();
	bool init(std::string, std::string, std::string, std::string, std::string, std::string, int, std::string);
	void onFB(cocos2d::CCObject* sender);
	void onNG(cocos2d::CCObject* sender);
	void onYT(cocos2d::CCObject* sender);
	void onBPM(cocos2d::CCObject* sender);
	static SongInfoLayer* create(int);
	static SongInfoLayer* create(std::string, std::string, std::string, std::string, std::string, std::string, int, std::string);
	void onClose(cocos2d::CCObject* sender);
	~SongInfoLayer();
}

[[link(android)]]
class TableViewCell {
	TodoReturn updateVisibility();
	TableViewCell(char const*, float, float);
	~TableViewCell();
}

[[link(android)]]
class TutorialLayer {
	virtual void keyBackClicked();
	TodoReturn removeTutorialTexture();
	virtual bool init();
	static TutorialLayer* create();
	void onNext(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn loadPage(int);
	~TutorialLayer();
}

[[link(android)]]
class TutorialPopup {
	TodoReturn animateMenu();
	TodoReturn closeTutorial(cocos2d::CCObject*);
	virtual void keyBackClicked();
	TodoReturn registerForCallback(SEL_MenuHandler, cocos2d::CCNode*);
	bool init(std::string);
	TodoReturn show();
	static TutorialPopup* create(std::string);
	~TutorialPopup();
}

[[link(android)]]
class AchievementBar {
	virtual void setOpacity(unsigned char);
	bool init(char const*, char const*, char const*, bool);
	TodoReturn show();
	static AchievementBar* create(char const*, char const*, char const*, bool);
	~AchievementBar();
}

[[link(android)]]
class CCContentLayer {
	virtual void setPosition(cocos2d::CCPoint const&);
	static CCContentLayer* create(cocos2d::_ccColor4B const&, float, float);
	~CCContentLayer();
}

[[link(android)]]
class CCCounterLabel {
	TodoReturn updateString();
	TodoReturn enableCounter();
	TodoReturn updateCounter(float);
	TodoReturn disableCounter();
	TodoReturn getTargetCount();
	/* unverified signature */
	void setTargetCount(int);
	TodoReturn calculateStepSize(int);
	TodoReturn fastUpdateCounter();
	bool init(int, char const*, FormatterType);
	static CCCounterLabel* create(int, char const*, FormatterType);
	~CCCounterLabel();
}

[[link(android)]]
class CCExtenderNode {
	/* unverified signature */
	void setOpacity(unsigned int);
}

[[link(android)]]
class ChallengesPage {
	TodoReturn updateDots();
	TodoReturn updateTimers(float);
	TodoReturn exitNodeAtSlot(int, float);
	virtual void keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn currencyWillExit(CurrencyRewardLayer*);
	TodoReturn tryGetChallenges();
	TodoReturn createChallengeNode(int, bool, float, bool);
	TodoReturn challengeStatusFailed();
	TodoReturn challengeStatusFinished();
	virtual void registerWithTouchDispatcher();
	virtual bool init();
	TodoReturn show();
	static ChallengesPage* create();
	void onClose(cocos2d::CCObject* sender);
	TodoReturn claimItem(ChallengeNode*, GJChallengeItem*, cocos2d::CCPoint);
	~ChallengesPage();
}

[[link(android)]]
class CreateMenuItem {
	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, SEL_MenuHandler);
	static CreateMenuItem* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, SEL_MenuHandler);
	~CreateMenuItem();
}

[[link(android)]]
class CurrencySprite {
	TodoReturn initWithSprite(cocos2d::CCSprite*);
	TodoReturn createWithSprite(cocos2d::CCSprite*);
	TodoReturn spriteTypeToStat(CurrencySpriteType);
	TodoReturn rewardToSpriteType(int);
	bool init(CurrencySpriteType, bool);
	static CurrencySprite* create(CurrencySpriteType, bool);
	~CurrencySprite();
}

[[link(android)]]
class CustomListView {
	TodoReturn getListCell(char const*);
	TodoReturn getCellHeight(BoomListType);
	static CustomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float);
	TodoReturn loadCell(TableViewCell*, int);
	TodoReturn reloadAll();
	TodoReturn setupList(float);
	~CustomListView();
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
	virtual void draw();
	virtual bool init();
	void onDelete(cocos2d::CCObject* sender);
	CustomSongCell(char const*, float, float);
	~CustomSongCell();
}

[[link(android)]]
class DailyLevelNode {
	void onSkipLevel(cocos2d::CCObject* sender);
	void onClaimReward(cocos2d::CCObject* sender);
	TodoReturn showSkipButton();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn updateTimeLabel(std::string);
	bool init(GJGameLevel*, DailyLevelPage*, bool);
	static DailyLevelNode* create(GJGameLevel*, DailyLevelPage*, bool);
	~DailyLevelNode();
}

[[link(android)]]
class DailyLevelPage {
	TodoReturn getDailyTime();
	TodoReturn updateTimers(float);
	TodoReturn exitDailyNode(DailyLevelNode*, float);
	virtual void keyBackClicked();
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
	virtual void registerWithTouchDispatcher();
	bool init(GJTimedLevelType);
	TodoReturn show();
	static DailyLevelPage* create(GJTimedLevelType);
	void onClose(cocos2d::CCObject* sender);
	void onTheSafe(cocos2d::CCObject* sender);
	~DailyLevelPage();
}

[[link(android)]]
class DashRingObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	bool init(char const*);
	static DashRingObject* create(char const*);
	~DashRingObject();
}

[[link(android)]]
class DialogDelegate {
	TodoReturn dialogClosed(DialogLayer*);
}

[[link(android)]]
class EditLevelLayer {
	void onLevelInfo(cocos2d::CCObject* sender);
	TodoReturn onMoveToTop();
	void onSetFolder(cocos2d::CCObject* sender);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn confirmClone(cocos2d::CCObject*);
	TodoReturn onClosePopup(UploadActionPopup*);
	void onGuidelines(cocos2d::CCObject* sender);
	TodoReturn confirmDelete(cocos2d::CCObject*);
	virtual void keyBackClicked();
	TodoReturn setupLevelInfo();
	TodoReturn updateDescText(char const*);
	TodoReturn closeTextInputs();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	void onLowDetailMode(cocos2d::CCObject* sender);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn verifyLevelName();
	TodoReturn confirmMoveToTop(cocos2d::CCObject*);
	/* unverified signature */
	void setIDPopupClosed(SetIDPopup*, int);
	void onLevelLeaderboard(cocos2d::CCObject* sender);
	TodoReturn uploadActionFailed(int, int);
	void onUpdateDescription(cocos2d::CCObject* sender);
	TodoReturn uploadActionFinished(int, int);
	bool init(GJGameLevel*);
	TodoReturn scene(GJGameLevel*);
	static EditLevelLayer* create(GJGameLevel*);
	void onBack(cocos2d::CCObject* sender);
	void onEdit(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onTest(cocos2d::CCObject* sender);
	virtual void keyDown(cocos2d::enumKeyCodes);
	TodoReturn onClone();
	void onShare(cocos2d::CCObject* sender);
	TodoReturn onDelete();
	TodoReturn playStep2();
	TodoReturn playStep3();
	~EditLevelLayer();
}

[[link(android)]]
class FMODAudioState {
	~FMODAudioState();
}

[[link(android)]]
class GameObjectCopy {
	TodoReturn resetObject();
	bool init(GameObject*);
	static GameObjectCopy* create(GameObject*);
	~GameObjectCopy();
}

[[link(android)]]
class GauntletSprite {
	TodoReturn colorForType(GauntletType);
	TodoReturn addLockedSprite();
	TodoReturn addNormalSprite();
	TodoReturn luminanceForType(GauntletType);
	TodoReturn toggleLockedSprite(bool);
	bool init(GauntletType, bool);
	static GauntletSprite* create(GauntletType, bool);
	~GauntletSprite();
}

[[link(android)]]
class GJMessagePopup {
	TodoReturn onClosePopup(UploadActionPopup*);
	virtual void keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn loadFromGJMessage(GJUserMessage*);
	TodoReturn uploadActionFailed(int, int);
	TodoReturn uploadActionFinished(int, int);
	TodoReturn downloadMessageFailed(int);
	TodoReturn downloadMessageFinished(GJUserMessage*);
	bool init(GJUserMessage*);
	static GJMessagePopup* create(GJUserMessage*);
	void onBlock(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onReply(cocos2d::CCObject* sender);
	void onRemove(cocos2d::CCObject* sender);
	TodoReturn blockUser();
	~GJMessagePopup();
}

[[link(android)]]
class GJOptionsLayer {
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
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
	bool init(int);
	static GJOptionsLayer* create(int);
	void onInfo(cocos2d::CCObject* sender);
	TodoReturn infoKey(int);
	TodoReturn pageKey(int);
	TodoReturn goToPage(int);
	TodoReturn layerKey(int);
	void onToggle(cocos2d::CCObject* sender);
	TodoReturn addToggle(char const*, int, bool, char const*);
	TodoReturn didToggle(int);
	TodoReturn objectKey(int);
	~GJOptionsLayer();
}

[[link(android)]]
class GJRewardObject {
	TodoReturn dataLoaded(DS_Dictionary*);
	/* unverified signature */
	bool isSpecialType();
	TodoReturn createWithCoder(DS_Dictionary*);
	virtual void encodeWithCoder(DS_Dictionary*);
	TodoReturn createItemUnlock(UnlockType, int);
	bool init(SpecialRewardItem, int, int);
	static GJRewardObject* create(SpecialRewardItem, int, int);
	static GJRewardObject* create();
	virtual bool canEncode();
	~GJRewardObject();
}

[[link(android)]]
class GJScaleControl {
	TodoReturn loadValues(GameObject*, cocos2d::CCArray*, std::unordered_map<int, GameObjectEditorState, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, GameObjectEditorState> > >&);
	TodoReturn finishTouch();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn updateLabelX(float);
	TodoReturn updateLabelY(float);
	TodoReturn skewFromValue(float);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateLabelXY(float);
	TodoReturn valueFromSkew(float);
	TodoReturn scaleFromValue(float);
	TodoReturn valueFromScale(float);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual bool init();
	static GJScaleControl* create();
	~GJScaleControl();
}

[[link(android)]]
class GJSearchObject {
	TodoReturn getSearchKey(SearchType, std::string, std::string, std::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int);
	TodoReturn createFromKey(char const*);
	TodoReturn getPageObject(int);
	TodoReturn getNextPageKey();
	TodoReturn getNextPageObject();
	TodoReturn getPrevPageObject();
	/* unverified signature */
	bool isLevelSearchObject();
	bool init(SearchType, std::string, std::string, std::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int);
	static GJSearchObject* create(SearchType);
	static GJSearchObject* create(SearchType, std::string);
	static GJSearchObject* create(SearchType, std::string, std::string, std::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int);
	TodoReturn getKey();
	~GJSearchObject();
}

[[link(android)]]
class GJSpiderSprite {
	bool init(int);
	static GJSpiderSprite* create(int);
	~GJSpiderSprite();
}

[[link(android)]]
class HSVLiveOverlay {
	TodoReturn hsvChanged(ConfigureHSVWidget*);
	void onSelectTab(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	TodoReturn toggleControls(bool);
	TodoReturn createHSVWidget(int);
	TodoReturn closeColorSelect(cocos2d::CCObject*);
	TodoReturn determineStartValues();
	bool init(GameObject*, cocos2d::CCArray*);
	TodoReturn show();
	static HSVLiveOverlay* create(GameObject*, cocos2d::CCArray*);
	~HSVLiveOverlay();
}

[[link(android)]]
class HSVWidgetPopup {
	virtual void keyBackClicked();
	bool init(cocos2d::_ccHSVValue, HSVWidgetDelegate*, std::string);
	static HSVWidgetPopup* create(cocos2d::_ccHSVValue, HSVWidgetDelegate*, std::string);
	void onClose(cocos2d::CCObject* sender);
	~HSVWidgetPopup();
}

[[link(android)]]
class KeyframeObject {
	TodoReturn setupSpline(gd::vector<KeyframeObject*>&);
}

[[link(android)]]
class LevelAreaLayer {
	TodoReturn showDialog();
	void onClickDoor(cocos2d::CCObject* sender);
	TodoReturn dialogClosed(DialogLayer*);
	TodoReturn onEnterTower();
	virtual void keyBackClicked();
	TodoReturn fadeInsideTower();
	virtual bool init();
	TodoReturn scene();
	static LevelAreaLayer* create();
	void onBack(cocos2d::CCObject* sender);
	TodoReturn addTorch(cocos2d::CCNode*, cocos2d::CCPoint, int, float, int, bool);
	TodoReturn addGodRay(float, float, float, float, float, cocos2d::CCPoint);
	~LevelAreaLayer();
}

[[link(android)]]
class LevelInfoLayer {
	void onFavorite(cocos2d::CCObject* sender);
	void onFeatured(cocos2d::CCObject* sender);
	void onAddToList(cocos2d::CCObject* sender);
	void onLevelInfo(cocos2d::CCObject* sender);
	void onRateDemon(cocos2d::CCObject* sender);
	void onRateStars(cocos2d::CCObject* sender);
	void onSetFolder(cocos2d::CCObject* sender);
	TodoReturn confirmClone(cocos2d::CCObject*);
	void onPlayReplay(cocos2d::CCObject* sender);
	TodoReturn confirmDelete(cocos2d::CCObject*);
	TodoReturn downloadLevel();
	TodoReturn loadLevelStep();
	void onOwnerDelete(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn tryCloneLevel(cocos2d::CCObject*);
	TodoReturn incrementLikes();
	virtual void keyBackClicked();
	void onRateStarsMod(cocos2d::CCObject* sender);
	TodoReturn setupLevelInfo();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	void onLowDetailMode(cocos2d::CCObject* sender);
	TodoReturn rateLevelClosed();
	TodoReturn showSongWarning();
	TodoReturn showUpdateAlert(UpdateResponse);
	TodoReturn confirmMoveToTop(cocos2d::CCObject*);
	/* unverified signature */
	void setIDPopupClosed(SetIDPopup*, int);
	TodoReturn incrementDislikes();
	TodoReturn levelDeleteFailed(int);
	TodoReturn levelUpdateFailed(int);
	TodoReturn numberInputClosed(NumberInputLayer*);
	TodoReturn setupProgressBars();
	TodoReturn updateLabelValues();
	TodoReturn updateSideButtons();
	TodoReturn confirmOwnerDelete(cocos2d::CCObject*);
	void onLevelLeaderboard(cocos2d::CCObject* sender);
	TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	TodoReturn confirmMoveToBottom(cocos2d::CCObject*);
	TodoReturn levelDeleteFinished(int);
	TodoReturn levelDownloadFailed(int);
	TodoReturn levelUpdateFinished(GJGameLevel*, UpdateResponse);
	TodoReturn shouldDownloadLevel();
	TodoReturn setupPlatformerStats();
	TodoReturn levelDownloadFinished(GJGameLevel*);
	bool init(GJGameLevel*, bool);
	TodoReturn scene(GJGameLevel*, bool);
	static LevelInfoLayer* create(GJGameLevel*, bool);
	void onBack(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onLike(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender);
	virtual void keyDown(cocos2d::enumKeyCodes);
	void onClone(cocos2d::CCObject* sender);
	void onDelete(cocos2d::CCObject* sender);
	void onGarage(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	TodoReturn likedItem(LikeItemType, int, bool);
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn playStep4();
	TodoReturn tryShowAd();
	~LevelInfoLayer();
}

[[link(android)]]
class LevelListLayer {
	void onFavorite(cocos2d::CCObject* sender);
	void onListInfo(cocos2d::CCObject* sender);
	TodoReturn ownerDelete();
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn confirmClone(cocos2d::CCObject*);
	void onSelectIcon(cocos2d::CCObject* sender);
	TodoReturn confirmDelete(cocos2d::CCObject*);
	void onClaimReward(cocos2d::CCObject* sender);
	void onDescription(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateEditMode();
	TodoReturn updateStatsArt();
	TodoReturn verifyListName();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn iconSelectClosed(SelectListIconLayer*);
	TodoReturn loadLevelsFailed(char const*, int);
	void onToggleEditMode(cocos2d::CCObject* sender);
	/* unverified signature */
	void setIDPopupClosed(SetIDPopup*, int);
	TodoReturn updateResultArray(cocos2d::CCArray*);
	TodoReturn updateSideButtons();
	TodoReturn confirmOwnerDelete(cocos2d::CCObject*);
	TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	void onRefreshLevelList(cocos2d::CCObject* sender);
	TodoReturn shareCommentClosed(std::string, ShareCommentLayer*);
	TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	TodoReturn levelListDeleteFailed(int);
	TodoReturn levelListDeleteFinished(int);
	bool init(GJLevelList*);
	TodoReturn scene(GJLevelList*);
	static LevelListLayer* create(GJLevelList*);
	void onBack(cocos2d::CCObject* sender);
	virtual void onExit();
	void onInfo(cocos2d::CCObject* sender);
	void onLike(cocos2d::CCObject* sender);
	virtual void onEnter();
	void onShare(cocos2d::CCObject* sender);
	TodoReturn onDelete();
	TodoReturn cloneList();
	TodoReturn likedItem(LikeItemType, int, bool);
	~LevelListLayer();
}

[[link(android)]]
class ListButtonPage {
	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float);
	static ListButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float);
	~ListButtonPage();
}

[[link(android)]]
class MapSelectLayer {
	virtual void scrollWheel(float, float);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void keyBackClicked();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn checkTouchMonster(cocos2d::CCPoint);
	TodoReturn createObjectAtPoint(cocos2d::CCPoint);
	TodoReturn getConstrainedMapPos(cocos2d::CCPoint);
	virtual void registerWithTouchDispatcher();
	virtual bool init();
	TodoReturn scene();
	static MapSelectLayer* create();
	void onBack(cocos2d::CCObject* sender);
	virtual void onExit();
	virtual void update(float);
	~MapSelectLayer();
}

[[link(android)]]
class RateDemonLayer {
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn selectRating(cocos2d::CCObject*);
	virtual void keyBackClicked();
	TodoReturn uploadActionFailed(int, int);
	TodoReturn uploadActionFinished(int, int);
	bool init(int);
	static RateDemonLayer* create(int);
	void onRate(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	~RateDemonLayer();
}

[[link(android)]]
class RateLevelLayer {
	TodoReturn selectRating(cocos2d::CCObject*);
	virtual void keyBackClicked();
	bool init(int);
	static RateLevelLayer* create(int);
	void onRate(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	~RateLevelLayer();
}

[[link(android)]]
class RateStarsLayer {
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn selectRating(cocos2d::CCObject*);
	void onToggleCoins(cocos2d::CCObject* sender);
	TodoReturn getStarsButton(int, SEL_MenuHandler, cocos2d::CCMenu*, float);
	virtual void keyBackClicked();
	TodoReturn uploadActionFailed(int, int);
	TodoReturn uploadActionFinished(int, int);
	bool init(int, bool, bool);
	static RateStarsLayer* create(int, bool, bool);
	void onRate(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onFeature(cocos2d::CCObject* sender);
	~RateStarsLayer();
}

[[link(android)]]
class ScrollingLayer {
	TodoReturn getViewRect();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	/* unverified signature */
	void setStartOffset(cocos2d::CCPoint);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void draw();
	bool init(cocos2d::CCSize, cocos2d::CCPoint, float);
	virtual void visit();
	static ScrollingLayer* create(cocos2d::CCSize, cocos2d::CCPoint, float);
	~ScrollingLayer();
}

[[link(android)]]
class SearchSFXPopup {
	void onSearchFolders(cocos2d::CCObject* sender);
	bool init(std::string);
	static SearchSFXPopup* create(std::string);
	~SearchSFXPopup();
}

[[link(android)]]
class SelectArtLayer {
	virtual void keyBackClicked();
	void onSelectCustom(cocos2d::CCObject* sender);
	TodoReturn updateSelectedCustom(int);
	bool init(SelectArtType, int);
	static SelectArtLayer* create(SelectArtType, int);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn selectArt(cocos2d::CCObject*);
	~SelectArtLayer();
}

[[link(android)]]
class SetFolderPopup {
	TodoReturn valueChanged();
	void onSetFolderName(cocos2d::CCObject* sender);
	/* unverified signature */
	void setTextPopupClosed(SetTextPopup*, std::string);
	bool init(int, bool, std::string);
	static SetFolderPopup* create(int, bool, std::string);
	~SetFolderPopup();
}

[[link(android)]]
class SetItemIDLayer {
	TodoReturn valueDidChange(int, float);
	TodoReturn updateEditorLabel();
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetItemIDLayer* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetItemIDLayer();
}

[[link(android)]]
class SetupCoinLayer {
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupCoinLayer* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupCoinLayer();
}

[[link(android)]]
class SetupMGTrigger {
	TodoReturn textChanged(CCTextInputNode*);
	void onEasingRate(cocos2d::CCObject* sender);
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
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupMGTrigger* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	void onEasing(cocos2d::CCObject* sender);
	~SetupMGTrigger();
}

[[link(android)]]
class ShareListLayer {
	void onUnlisted(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	TodoReturn updateUnlistedF();
	bool init(GJLevelList*);
	static ShareListLayer* create(GJLevelList*);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender);
	~ShareListLayer();
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
	virtual void encodeWithCoder(DS_Dictionary*);
	bool init(int, std::string, std::string, int, float, std::string, std::string, std::string, int);
	static SongInfoObject* create(int);
	static SongInfoObject* create(int, std::string, std::string, int, float, std::string, std::string, std::string, int);
	static SongInfoObject* create(cocos2d::CCDictionary*);
	TodoReturn addTags(std::string);
	virtual bool canEncode();
	~SongInfoObject();
}

[[link(android)]]
class SongSelectNode {
	TodoReturn onSongMode(int);
	void onSongMode(cocos2d::CCObject* sender);
	TodoReturn selectSong(int);
	TodoReturn audioPrevious(cocos2d::CCObject*);
	TodoReturn songIDChanged(int);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn getActiveSongID();
	TodoReturn getSongFileName();
	TodoReturn getLevelSettings();
	void onOpenCustomSong(cocos2d::CCObject* sender);
	TodoReturn updateAudioLabel();
	TodoReturn showCustomSongSelect();
	TodoReturn customSongLayerClosed();
	TodoReturn updateWidgetVisibility();
	bool init(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool);
	static SongSelectNode* create(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool);
	TodoReturn audioNext(cocos2d::CCObject*);
	~SongSelectNode();
}

[[link(android)]]
class StartPosObject {
	/* unverified signature */
	void setSettings(LevelSettingsObject*);
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	TodoReturn loadSettingsFromString(std::string);
	virtual bool init();
	static StartPosObject* create();
	~StartPosObject();
}

[[link(android)]]
class TextAlertPopup {
	/* unverified signature */
	void setLabelColor(cocos2d::_ccColor3B);
	/* unverified signature */
	void setAlertPosition(cocos2d::CCPoint, cocos2d::CCPoint);
	bool init(std::string, float, float, int, std::string);
	static TextAlertPopup* create(std::string, float, float, int, std::string);
	~TextAlertPopup();
}

[[link(android)]]
class TextGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn getTextKerning();
	TodoReturn updateTextObject(std::string, bool);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	TodoReturn updateTextKerning(int);
	bool init(cocos2d::CCTexture2D*);
	static TextGameObject* create(cocos2d::CCTexture2D*);
	~TextGameObject();
}

[[link(android)]]
class UIOptionsLayer {
	void onSaveLoad(cocos2d::CCObject* sender);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn toggleUIGroup(int);
	TodoReturn valueDidChange(int, float);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	bool init(bool);
	static UIOptionsLayer* create(bool);
	TodoReturn getNode(int);
	void onClose(cocos2d::CCObject* sender);
	void onReset(cocos2d::CCObject* sender);
	TodoReturn getValue(int);
	~UIOptionsLayer();
}

[[link(android)]]
class WorldLevelPage {
	virtual void keyBackClicked();
	bool init(GJGameLevel*, GJWorldNode*);
	TodoReturn show();
	static WorldLevelPage* create(GJGameLevel*, GJWorldNode*);
	void onInfo(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onSong(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	~WorldLevelPage();
}

[[link(android)]]
class AchievementCell {
	TodoReturn loadFromDict(cocos2d::CCDictionary*);
	TodoReturn updateBGColor(int);
	virtual void draw();
	virtual bool init();
	AchievementCell(char const*, float, float);
	~AchievementCell();
}

[[link(android)]]
class BitmapFontCache {
	TodoReturn sharedFontCache();
	TodoReturn fontWithConfigFile(char const*, float);
	TodoReturn purgeSharedFontCache();
	virtual bool init();
	~BitmapFontCache();
}

[[link(android)]]
class BoomScrollLayer {
	TodoReturn claimTouch(cocos2d::CCTouch*);
	TodoReturn moveToPage(int);
	TodoReturn removePage(cocos2d::CCLayer*);
	TodoReturn selectPage(int);
	TodoReturn updateDots(float);
	TodoReturn quickUpdate();
	/* unverified signature */
	void setDotScale(float);
	TodoReturn updatePages();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn getTotalPages();
	TodoReturn moveToPageEnded();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
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
	/* unverified signature */
	void setPagesIndicatorPosition(cocos2d::CCPoint);
	virtual void registerWithTouchDispatcher();
	bool init(cocos2d::CCArray*, int, bool, cocos2d::CCArray*, DynamicScrollDelegate*);
	virtual void visit();
	static BoomScrollLayer* create(cocos2d::CCArray*, int, bool);
	static BoomScrollLayer* create(cocos2d::CCArray*, int, bool, cocos2d::CCArray*, DynamicScrollDelegate*);
	TodoReturn addPage(cocos2d::CCLayer*);
	TodoReturn addPage(cocos2d::CCLayer*, int);
	TodoReturn getPage(int);
	~BoomScrollLayer();
}

[[link(android)]]
class CCNodeContainer {
	virtual bool init();
	virtual void visit();
	static CCNodeContainer* create();
	~CCNodeContainer();
}

[[link(android)]]
class CCSpriteWithHue {
	TodoReturn initShader();
	TodoReturn shaderBody();
	virtual void updateColor();
	/* unverified signature */
	void setLuminance(float);
	TodoReturn getShaderName();
	/* unverified signature */
	void setHueDegrees(float);
	virtual bool initWithTexture(cocos2d::CCTexture2D*);
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
	/* unverified signature */
	void setEvenLuminance(float);
	TodoReturn createWithTexture(cocos2d::CCTexture2D*);
	TodoReturn createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
	TodoReturn updateColorMatrix();
	/* unverified signature */
	void setCustomLuminance(float, float, float);
	TodoReturn getUniformLocations();
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn setupDefaultSettings();
	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(std::string const&);
	virtual void draw();
	static CCSpriteWithHue* create(std::string const&);
	static CCSpriteWithHue* create(std::string const&, cocos2d::CCRect const&);
	TodoReturn getHue();
	/* unverified signature */
	void setHue(float);
	TodoReturn getAlpha();
	TodoReturn updateHue(float);
	~CCSpriteWithHue();
}

[[link(android)]]
class CCTextInputNode {
	TodoReturn addTextArea(TextArea*);
	TodoReturn forceOffset();
	virtual void textChanged();
	TodoReturn updateLabel(std::string);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn refreshLabel();
	/* unverified signature */
	void setAllowedChars(std::string);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
	virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
	TodoReturn onClickTrackNode(bool);
	/* unverified signature */
	void setMaxLabelScale(float);
	/* unverified signature */
	void setMaxLabelWidth(float);
	TodoReturn updateBlinkLabel();
	/* unverified signature */
	void setLabelNormalColor(cocos2d::_ccColor3B);
	TodoReturn updateCursorPosition(cocos2d::CCPoint, cocos2d::CCRect);
	virtual bool onTextFieldInsertText(cocos2d::CCTextFieldTTF*, char const*, int, cocos2d::enumKeyCodes);
	TodoReturn updateBlinkLabelToChar(int);
	TodoReturn updateDefaultFontValues(std::string);
	virtual bool onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF*);
	virtual bool onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF*);
	/* unverified signature */
	void setLabelPlaceholderColor(cocos2d::_ccColor3B);
	/* unverified signature */
	void setLabelPlaceholderScale(float);
	virtual void registerWithTouchDispatcher();
	bool init(float, float, char const*, char const*, int, char const*);
	virtual void visit();
	static CCTextInputNode* create(float, float, char const*, char const*, int, char const*);
	TodoReturn getString();
	/* unverified signature */
	void setString(std::string);
	~CCTextInputNode();
}

[[link(android)]]
class CustomMusicCell {
	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(SongInfoObject*);
	CustomMusicCell(char const*, float, float);
	~CustomMusicCell();
}

[[link(android)]]
class CustomSFXWidget {
	void onDownload(cocos2d::CCObject* sender);
	void onPlayback(cocos2d::CCObject* sender);
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
	void onCancelDownload(cocos2d::CCObject* sender);
	TodoReturn songStateChanged();
	TodoReturn downloadSFXFailed(int, GJSongError);
	TodoReturn updatePlaybackBtn();
	TodoReturn updateProgressBar(int);
	TodoReturn downloadSFXFinished(int);
	TodoReturn startMonitorDownload();
	TodoReturn updateDownloadProgress(float);
	bool init(SFXInfoObject*, CustomSFXDelegate*, bool, bool, bool, bool, bool);
	static CustomSFXWidget* create(SFXInfoObject*, CustomSFXDelegate*, bool, bool, bool, bool, bool);
	void onDelete(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);
	TodoReturn deleteSFX();
	~CustomSFXWidget();
}

[[link(android)]]
class CustomSongLayer {
	TodoReturn textChanged(CCTextInputNode*);
	void onCreateLines(cocos2d::CCObject* sender);
	void onSongBrowser(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	void onMusicBrowser(cocos2d::CCObject* sender);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn textInputReturn(CCTextInputNode*);
	TodoReturn musicBrowserClosed(MusicBrowser*);
	void onNewgroundsBrowser(cocos2d::CCObject* sender);
	TodoReturn showNewgroundsMessage();
	TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	TodoReturn dropDownLayerWillClose(GJDropDownLayer*);
	bool init(CustomSongDelegate*);
	TodoReturn show();
	static CustomSongLayer* create(CustomSongDelegate*);
	void onClose(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);
	void onOptions(cocos2d::CCObject* sender);
	~CustomSongLayer();
}

[[link(android)]]
class EndPortalObject {
	virtual void setVisible(bool);
	TodoReturn getSpawnPos();
	virtual void setPosition(cocos2d::CCPoint const&);
	TodoReturn updateColors(cocos2d::_ccColor3B);
	TodoReturn updateEndPos(bool);
	TodoReturn triggerObject(GJBaseGameLayer*);
	virtual bool init();
	static EndPortalObject* create();
	~EndPortalObject();
}

[[link(android)]]
class ExplodeItemNode {
	TodoReturn createSprites(int, int, float, float, float, float, float, float, cocos2d::_ccColor4F, cocos2d::_ccColor4F, bool);
	bool init(cocos2d::CCRenderTexture*);
	static ExplodeItemNode* create(cocos2d::CCRenderTexture*);
	virtual void update(float);
	~ExplodeItemNode();
}

[[link(android)]]
class FileSaveManager {
	TodoReturn sharedState();
	TodoReturn getStoreData();
	TodoReturn loadDataFromFile(char const*);
	virtual bool init();
	TodoReturn firstLoad();
	~FileSaveManager();
}

[[link(android)]]
class FindObjectPopup {
	void onFindObjectID(cocos2d::CCObject* sender);
	virtual bool init();
	static FindObjectPopup* create();
	~FindObjectPopup();
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
	/* unverified signature */
	bool isSoundReady(FMOD::Sound*);
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
	/* unverified signature */
	bool isEffectLoaded(std::string);
	/* unverified signature */
	bool isMusicPlaying(int);
	/* unverified signature */
	bool isMusicPlaying(std::string, int);
	TodoReturn lengthForSound(std::string);
	TodoReturn loadAudioState(FMODAudioState&);
	TodoReturn resumeAllAudio();
	TodoReturn resumeAllMusic();
	TodoReturn reverbToString(FMODReverbPreset);
	TodoReturn saveAudioState(FMODAudioState&);
	/* unverified signature */
	void setMusicTimeMS(unsigned int, bool, int);
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
	/* unverified signature */
	void setChannelPitch(int, AudioTargetType, float);
	TodoReturn channelLinkSound(int, FMODSound*);
	TodoReturn countActiveMusic();
	TodoReturn getEffectsVolume();
	TodoReturn getMeteringValue();
	TodoReturn getMusicLengthMS(int);
	TodoReturn getNextChannelID();
	TodoReturn loadAndPlayMusic(std::string, unsigned int, int);
	TodoReturn resumeAllEffects();
	/* unverified signature */
	void setChannelVolume(int, AudioTargetType, float);
	/* unverified signature */
	void setEffectsVolume(float);
	TodoReturn setupAudioEngine();
	TodoReturn stopChannelTween(int, AudioTargetType, AudioModType);
	TodoReturn unloadAllEffects();
	TodoReturn getMusicChannelID(int);
	TodoReturn getTweenContainer(AudioTargetType);
	/* unverified signature */
	bool isChannelStopping(int);
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
	/* unverified signature */
	void setChannelVolumeMod(int, AudioTargetType, float);
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
	/* unverified signature */
	void setBackgroundMusicVolume(float);
	TodoReturn queuedEffectFinishedLoading(std::string);
	virtual void stop();
	TodoReturn setup();
	TodoReturn start();
	virtual void update(float);
	TodoReturn loadMusic(std::string);
	TodoReturn loadMusic(std::string, float, float, float, bool, int, int);
	TodoReturn playMusic(std::string, bool, float, int);
	TodoReturn stopMusic(int);
	~FMODAudioEngine();
}

[[link(android)]]
class GJActionManager {
	TodoReturn getInternalAction(int);
	TodoReturn runInternalAction(cocos2d::CCAction*, cocos2d::CCNode*);
	TodoReturn stopInternalAction(int);
	TodoReturn updateInternalActions(float, bool);
	TodoReturn stopAllInternalActions();
	virtual bool init();
	static GJActionManager* create();
	~GJActionManager();
}

[[link(android)]]
class GJBaseGameLayer {
	TodoReturn addToGroup(GameObject*, int, bool);
	TodoReturn applyRemap(EffectGameObject*, gd::vector<int> const&, std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >&);
	TodoReturn applyShake(cocos2d::CCPoint&);
	TodoReturn atlasValue(int);
	TodoReturn bumpPlayer(PlayerObject*, EffectGameObject*);
	TodoReturn getBumpMod(PlayerObject*, int);
	/* unverified signature */
	bool isFlipping();
	TodoReturn moveObject(GameObject*, double, double, bool);
	TodoReturn pauseAudio();
	TodoReturn pickupItem(EffectGameObject*);
	TodoReturn postUpdate(float);
	TodoReturn resetAudio();
	TodoReturn sortGroups();
	TodoReturn spawnGroup(int, bool, double, gd::vector<int> const&, int, int);
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
	TodoReturn spawnObject(GameObject*, double, gd::vector<int> const&);
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
	TodoReturn addAreaEffect(EnterEffectObject*, gd::vector<EnterEffectInstance>*, GJAreaActionType);
	TodoReturn applyTimeWarp(float);
	TodoReturn asyncBGLoaded(int);
	TodoReturn asyncMGLoaded(int);
	TodoReturn canProcessSFX(SFXTriggerState&, std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > >&, std::unordered_map<int, float, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, float> > >&, gd::vector<SFXTriggerState>&);
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
	/* unverified signature */
	void setGroupParent(GameObject*, int);
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
	TodoReturn addRemapTargets(std::set<int>&);
	TodoReturn checkCollisions(PlayerObject*, float, bool);
	TodoReturn claimMoveAction(int, bool);
	TodoReturn collectedObject(EffectGameObject*);
	TodoReturn getGroundHeight(PlayerObject*, int);
	TodoReturn getParticleKey2(std::string);
	TodoReturn getPortalTarget(TeleportPortalObject*);
	TodoReturn getRecordString();
	/* unverified signature */
	bool isPlayer2Button(int);
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
	TodoReturn processSongState(int, float, float, int, float, float, gd::vector<SongTriggerState>*);
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
	TodoReturn controlAreaEffect(EnterEffectObject*, gd::vector<EnterEffectInstance>*, GJActionCommand);
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
	/* unverified signature */
	void setStartPosObject(StartPosObject*);
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
	TodoReturn processAreaEffects(gd::vector<EnterEffectInstance>*, GJAreaActionType, float, bool);
	TodoReturn processMoveActions();
	TodoReturn reAddToStickyGroup(GameObject*);
	TodoReturn registerSpawnRemap(gd::vector<ChanceObject>&);
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
	TodoReturn spawnGroupTriggered(int, float, bool, gd::vector<int> const&, int, int);
	TodoReturn spawnObjectsInOrder(cocos2d::CCArray*, double, gd::vector<int> const&, int, int);
	TodoReturn staticObjectsInRect(cocos2d::CCRect, bool);
	TodoReturn updateCameraOffsetX(float, float, int, float, int, int);
	TodoReturn updateCameraOffsetY(float, float, int, float, int, int);
	TodoReturn updateGroundShadows();
	TodoReturn updateKeyframeOrder(int);
	TodoReturn updateLayerCapacity(std::string);
	TodoReturn updateObjectSection(GameObject*);
	TodoReturn updateSpecialLabels();
	TodoReturn visitWithColorFlash();
	TodoReturn activateEventTrigger(EventLinkTrigger*, gd::vector<int> const&);
	TodoReturn activateResetTrigger(EffectGameObject*);
	TodoReturn activateTimerTrigger(TimerTriggerGameObject*, gd::vector<int> const&);
	TodoReturn addCustomEnterEffect(EnterEffectObject*, bool);
	TodoReturn calculateColorGroups();
	TodoReturn checkCollisionBlocks(EffectGameObject*, gd::vector<EffectGameObject*>*, int);
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
	TodoReturn toggleGroupTriggered(int, bool, gd::vector<int> const&, int, int);
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
	TodoReturn collisionCheckObjects(PlayerObject*, gd::vector<GameObject*>*, int, float);
	TodoReturn controlDynamicCommand(EffectGameObject*, int, gd::vector<DynamicObjectAction>&, GJActionCommand);
	TodoReturn createNewKeyframeAnim();
	TodoReturn damagingObjectsInRect(cocos2d::CCRect, bool);
	TodoReturn getCustomEnterEffects(int, bool);
	TodoReturn getGroupParentsString(GameObject*);
	TodoReturn getScaledGroundHeight(float);
	TodoReturn objectTypeToGameEvent(int);
	TodoReturn playerCircleCollision(PlayerObject*, GameObject*);
	TodoReturn playKeyframeAnimation(KeyframeAnimTriggerObject*, gd::vector<int> const&);
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
	TodoReturn testInstantCountTrigger(int, int, int, bool, int, gd::vector<int> const&, int, int);
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
	TodoReturn activateItemCompareTrigger(ItemTriggerGameObject*, gd::vector<int> const&);
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
	TodoReturn activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&);
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
	virtual bool init();
	virtual void visit();
	virtual void update(float);
	TodoReturn flipArt(bool);
	TodoReturn hasItem(int);
	TodoReturn getGroup(int);
	TodoReturn testTime();
	TodoReturn addPoints(int);
	~GJBaseGameLayer();
}

[[link(android)]]
class GJBigSpriteNode {
	virtual bool init();
	static GJBigSpriteNode* create();
	~GJBigSpriteNode();
}

[[link(android)]]
class GJChallengeItem {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn incrementCount(int);
	TodoReturn createWithCoder(DS_Dictionary*);
	virtual void encodeWithCoder(DS_Dictionary*);
	TodoReturn createFromString(std::string);
	bool init(GJChallengeType, int, int, int, std::string);
	static GJChallengeItem* create(GJChallengeType, int, int, int, std::string);
	static GJChallengeItem* create();
	virtual bool canEncode();
	~GJChallengeItem();
}

[[link(android)]]
class GJDropDownLayer {
	TodoReturn enterLayer();
	TodoReturn customSetup();
	TodoReturn layerHidden();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn layerVisible();
	virtual void keyBackClicked();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn enterAnimFinished();
	virtual void registerWithTouchDispatcher();
	virtual void draw();
	bool init(char const*);
	bool init(char const*, float);
	static GJDropDownLayer* create(char const*);
	static GJDropDownLayer* create(char const*, float);
	TodoReturn enableUI();
	TodoReturn disableUI();
	TodoReturn exitLayer(cocos2d::CCObject*);
	TodoReturn hideLayer(bool);
	TodoReturn showLayer(bool);
	~GJDropDownLayer();
}

[[link(android)]]
class GJEffectManager {
	TodoReturn pauseTimer(int);
	TodoReturn playerDied();
	TodoReturn spawnGroup(int, float, bool, gd::vector<int> const&, int, int);
	TodoReturn startTimer(int, double, double, bool, bool, bool, float, bool, int, gd::vector<int> const&, int, int);
	TodoReturn colorExists(int);
	TodoReturn resumeTimer(int);
	TodoReturn saveToState(EffectManagerState&);
	TodoReturn shouldBlend(int);
	TodoReturn spawnObject(GameObject*, float, gd::vector<int> const&, int, int);
	TodoReturn timeForItem(int);
	TodoReturn timerExists(int);
	TodoReturn toggleGroup(int, bool);
	TodoReturn updateTimer(int, double);
	TodoReturn countForItem(int);
	TodoReturn playerButton(bool, bool);
	TodoReturn resetEffects();
	/* unverified signature */
	void setFollowing(int, int, bool);
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
	/* unverified signature */
	bool isGroupEnabled(int);
	TodoReturn runPulseEffect(int, bool, float, float, float, PulseEffectType, cocos2d::_ccColor3B, cocos2d::_ccHSVValue, int, bool, bool, bool, bool, int, int);
	/* unverified signature */
	void setColorAction(ColorAction*, int);
	TodoReturn colorForGroupID(int, cocos2d::_ccColor3B const&, bool);
	TodoReturn objectsCollided(int, int);
	TodoReturn opacityForIndex(int);
	TodoReturn postMoveActions();
	TodoReturn runCountTrigger(int, int, bool, int, bool, gd::vector<int> const&, int, int);
	TodoReturn runDeathTrigger(int, bool, gd::vector<int> const&, int, int);
	TodoReturn runTimerTrigger(int, double, bool, int, gd::vector<int> const&, int, int);
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
	TodoReturn createKeyframeCommand(int, cocos2d::CCArray*, GameObject*, int, int, bool, float, float, float, float, float, float, gd::vector<int> const&);
	TodoReturn handleObjectCollision(bool, int, int);
	TodoReturn removeAllPulseActions();
	TodoReturn toggleTimerPersistent(int, bool);
	TodoReturn tryGetMoveCommandNode(int);
	TodoReturn createTransformCommand(double, double, double, double, bool, float, int, int, int, float, bool, bool, int, int);
	TodoReturn processInheritedColors();
	TodoReturn resetTempGroupCommands(bool);
	TodoReturn runTouchTriggerCommand(int, bool, TouchTriggerType, TouchTriggerControl, bool, gd::vector<int> const&, int, int);
	TodoReturn calculateInheritedColor(int, ColorAction*);
	TodoReturn processMoveCalculations();
	TodoReturn registerRotationCommand(GroupCommandObject2*, bool);
	TodoReturn runOpacityActionOnGroup(int, float, float, int, int);
	TodoReturn transferPersistentItems();
	TodoReturn controlActionsForTrigger(EffectGameObject*, GJActionCommand);
	TodoReturn getOpacityActionForGroup(int);
	TodoReturn hasPulseEffectForGroupID(int);
	TodoReturn registerCollisionTrigger(int, int, int, bool, bool, gd::vector<int> const&, int, int);
	TodoReturn traverseInheritanceChain(InheritanceNode*);
	TodoReturn calculateBaseActiveColors();
	TodoReturn createPlayerFollowCommand(float, float, int, float, float, int, int, int);
	TodoReturn controlActionsForControlID(int, GJActionCommand);
	TodoReturn updateActiveOpacityEffects();
	TodoReturn addAllInheritedColorActions(cocos2d::CCArray*);
	TodoReturn processCopyColorPulseActions();
	TodoReturn removePersistentFromAllItems();
	TodoReturn removePersistentFromAllTimers();
	virtual bool init();
	TodoReturn reset();
	static GJEffectManager* create();
	~GJEffectManager();
}

[[link(android)]]
class GJFriendRequest {
	virtual bool init();
	static GJFriendRequest* create(cocos2d::CCDictionary*);
	static GJFriendRequest* create();
	~GJFriendRequest();
}

[[link(android)]]
class GJGradientLayer {
	virtual bool init();
	static GJGradientLayer* create();
	~GJGradientLayer();
}

[[link(android)]]
class GJObjectDecoder {
	TodoReturn sharedDecoder();
	TodoReturn getDecodedObject(int, DS_Dictionary*);
	virtual bool init();
	~GJObjectDecoder();
}

[[link(android)]]
class GJSmartTemplate {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn getPrefabs(std::string);
	TodoReturn savePrefab(std::string, std::string);
	/* unverified signature */
	bool isUnrequired(std::string);
	TodoReturn offsetForDir(GJSmartDirection, int);
	TodoReturn removePrefab(std::string, int);
	TodoReturn flipBlockType(SmartBlockType, bool, bool);
	TodoReturn offsetForType(SmartBlockType);
	TodoReturn scanForPrefab(std::string);
	TodoReturn flipBlockTypeX(SmartBlockType);
	TodoReturn flipBlockTypeY(SmartBlockType);
	TodoReturn getNoCornerKey(std::string);
	TodoReturn createWithCoder(DS_Dictionary*);
	virtual void encodeWithCoder(DS_Dictionary*);
	TodoReturn getPrefabWithID(std::string, int);
	TodoReturn getRandomPrefab(std::string);
	TodoReturn offsetForObject(SmartGameObject*);
	TodoReturn rotateBlockType(SmartBlockType, int);
	TodoReturn saveRemapToDict(std::string, std::string, cocos2d::CCDictionary*);
	TodoReturn getSimplifiedKey(std::string);
	TodoReturn getTemplateState(gd::vector<SmartPrefabResult>&);
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
	virtual bool init();
	static GJSmartTemplate* create();
	TodoReturn flipKey(std::string, bool, bool);
	virtual bool canEncode();
	TodoReturn getPrefab(cocos2d::CCPoint, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*);
	TodoReturn getPrefab(std::string, bool, bool);
	TodoReturn rotateKey(std::string, int);
	TodoReturn saveRemap(std::string);
	~GJSmartTemplate();
}

[[link(android)]]
class InfoAlertButton {
	bool init(std::string, std::string, float);
	static InfoAlertButton* create(std::string, std::string, float);
	virtual void activate();
	~InfoAlertButton();
}

[[link(android)]]
class InheritanceNode {
	bool init(int, InheritanceNode*);
	static InheritanceNode* create(int, InheritanceNode*);
	~InheritanceNode();
}

[[link(android)]]
class LabelGameObject {
	virtual void setOpacity(unsigned char);
	TodoReturn createLabel(std::string);
	TodoReturn removeLabel();
	TodoReturn resetObject();
	TodoReturn updateLabel(float);
	TodoReturn updateLabel(std::string);
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn getTextKerning();
	/* unverified signature */
	void setObjectColor(cocos2d::_ccColor3B const&);
	TodoReturn queueUpdateLabel(std::string);
	TodoReturn unlockLabelColor();
	TodoReturn updateLabelAlign(int);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	TodoReturn updateTextKerning(int);
	TodoReturn setupCustomSprites(std::string);
	TodoReturn updateLabelIfDirty();
	TodoReturn updatePreviewLabel();
	TodoReturn addMainSpriteToParent(bool);
	virtual bool init();
	static LabelGameObject* create();
	~LabelGameObject();
}

[[link(android)]]
class MoreSearchLayer {
	void onFeatured(cocos2d::CCObject* sender);
	void onFollowed(cocos2d::CCObject* sender);
	void onOriginal(cocos2d::CCObject* sender);
	void onSongMode(cocos2d::CCObject* sender);
	TodoReturn selectSong(int);
	void onCompleted(cocos2d::CCObject* sender);
	void onLegendary(cocos2d::CCObject* sender);
	void onTwoPlayer(cocos2d::CCObject* sender);
	void onSongFilter(cocos2d::CCObject* sender);
	TodoReturn audioPrevious(cocos2d::CCObject*);
	void onUncompleted(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	TodoReturn textInputReturn(CCTextInputNode*);
	TodoReturn toggleSongNodes(bool, bool);
	TodoReturn updateAudioLabel();
	TodoReturn createToggleButton(std::string, SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual bool init();
	static MoreSearchLayer* create();
	void onEpic(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onCoins(cocos2d::CCObject* sender);
	void onMythic(cocos2d::CCObject* sender);
	void onNoStar(cocos2d::CCObject* sender);
	TodoReturn audioNext(cocos2d::CCObject*);
	void onFriends(cocos2d::CCObject* sender);
	~MoreSearchLayer();
}

[[link(android)]]
class PlatformToolbox {
	TodoReturn getRawPath(char const*);
	TodoReturn hideCursor();
	TodoReturn showCursor();
	virtual void gameDidSave();
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
	virtual void platformShutdown();
	/* unverified signature */
	void setKeyboardState(bool);
	TodoReturn showAchievements();
	TodoReturn signInGooglePlay();
	TodoReturn toggleForceTimer(bool);
	TodoReturn toggleFullScreen(bool);
	TodoReturn toggleLockCursor(bool);
	/* unverified signature */
	bool isLowMemoryDevice();
	TodoReturn shouldResumeSound();
	TodoReturn signOutGooglePlay();
	TodoReturn tryShowRateDialog(std::string);
	TodoReturn activateGameCenter();
	/* unverified signature */
	bool isNetworkAvailable();
	/* unverified signature */
	void setBlockBackButton(bool);
	TodoReturn toggleCallGLFinish(bool);
	TodoReturn toggleCPUSleepMode(bool);
	TodoReturn toggleMouseControl(bool);
	TodoReturn toggleVerticalSync(bool);
	TodoReturn updateMouseControl();
	TodoReturn updateWindowedSize(float, float);
	TodoReturn spriteFromSavedFile(std::string);
	TodoReturn getDeviceRefreshRate();
	/* unverified signature */
	bool isSignedInGooglePlay();
	/* unverified signature */
	bool isControllerConnected();
	TodoReturn reportLoadingFinished();
	TodoReturn reportAchievementWithID(char const*, int);
	TodoReturn downloadAndSavePromoImage(std::string, std::string);
	/* unverified signature */
	bool isLocalPlayerAuthenticated();
	TodoReturn loadAndDecryptFileToString(char const*, char const*);
	TodoReturn saveAndEncryptStringToFile(std::string, char const*, char const*);
	/* unverified signature */
	bool isHD();
	TodoReturn logEvent(char const*);
	TodoReturn sendMail(char const*, char const*, char const*);
	TodoReturn getUserID();
}

[[link(android)]]
class RetryLevelLayer {
	TodoReturn getEndText();
	TodoReturn customSetup();
	void onEveryplay(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	void onRewardedVideo(cocos2d::CCObject* sender);
	TodoReturn enterAnimFinished();
	TodoReturn setupLastProgress();
	TodoReturn rewardedVideoFinished();
	TodoReturn shouldOffsetRewardCurrency();
	virtual void keyUp(cocos2d::enumKeyCodes);
	static RetryLevelLayer* create();
	void onMenu(cocos2d::CCObject* sender);
	virtual void keyDown(cocos2d::enumKeyCodes);
	void onReplay(cocos2d::CCObject* sender);
	TodoReturn showLayer(bool);
	~RetryLevelLayer();
}

[[link(android)]]
class SelectFontLayer {
	void onChangeFont(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	TodoReturn updateFontLabel();
	bool init(LevelEditorLayer*);
	static SelectFontLayer* create(LevelEditorLayer*);
	void onClose(cocos2d::CCObject* sender);
	~SelectFontLayer();
}

[[link(android)]]
class SetColorIDPopup {
	TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
	void onSelectSpecialColor(cocos2d::CCObject* sender);
	bool init(int);
	static SetColorIDPopup* create(int);
	~SetColorIDPopup();
}

[[link(android)]]
class SetGroupIDLayer {
	TodoReturn addGroupID(int);
	void onAddGroup(cocos2d::CCObject* sender);
	void onArrowLeft(cocos2d::CCObject* sender);
	TodoReturn textChanged(CCTextInputNode*);
	void onArrowRight(cocos2d::CCObject* sender);
	void onSmoothEase(cocos2d::CCObject* sender);
	TodoReturn updateZOrder();
	void onToggleGuide(cocos2d::CCObject* sender);
	void onZLayerShift(cocos2d::CCObject* sender);
	TodoReturn removeGroupID(int);
	virtual void keyBackClicked();
	void onNextGroupID1(cocos2d::CCObject* sender);
	TodoReturn createTextInput(cocos2d::CCPoint, int, int, std::string, float, int);
	TodoReturn textInputClosed(CCTextInputNode*);
	void onAddGroupParent(cocos2d::CCObject* sender);
	void onRemoveFromGroup(cocos2d::CCObject* sender);
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
	void onToggleSelectedOrder(cocos2d::CCObject* sender);
	void onNextFreeEditorLayer1(cocos2d::CCObject* sender);
	void onNextFreeEditorLayer2(cocos2d::CCObject* sender);
	void onNextFreeOrderChannel(cocos2d::CCObject* sender);
	TodoReturn updateEditorOrderLabel();
	TodoReturn updateOrderChannelLabel();
	bool init(GameObject*, cocos2d::CCArray*);
	static SetGroupIDLayer* create(GameObject*, cocos2d::CCArray*);
	void onAnim(cocos2d::CCObject* sender);
	void onCopy(cocos2d::CCObject* sender);
	TodoReturn onArrow(int, int);
	void onClose(cocos2d::CCObject* sender);
	void onExtra(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onExtra2(cocos2d::CCObject* sender);
	void onZLayer(cocos2d::CCObject* sender);
	~SetGroupIDLayer();
}

[[link(android)]]
class SetupPulsePopup {
	void onExclusive(cocos2d::CCObject* sender);
	TodoReturn selectColor(cocos2d::_ccColor3B);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn getColorValue();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateHoldTime();
	TodoReturn updateHSVValue();
	TodoReturn updateTargetID();
	void onGroupMainOnly(cocos2d::CCObject* sender);
	void onHSVLegacyMode(cocos2d::CCObject* sender);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn updateCopyColor();
	TodoReturn updateHoldLabel(bool);
	TodoReturn updatePulseMode();
	TodoReturn updateColorValue();
	TodoReturn updateFadeInTime();
	TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
	TodoReturn colorValueChanged(cocos2d::_ccColor3B);
	void onSelectPulseMode(cocos2d::CCObject* sender);
	void onUpdateCopyColor(cocos2d::CCObject* sender);
	TodoReturn updateColorLabels();
	TodoReturn updateFadeInLabel(bool);
	TodoReturn updateFadeOutTime();
	void onSelectTargetMode(cocos2d::CCObject* sender);
	TodoReturn updateFadeOutLabel(bool);
	void onUpdateCustomColor(cocos2d::CCObject* sender);
	TodoReturn updateGroupMainOnly();
	TodoReturn determineStartValues();
	void onGroupSecondaryOnly(cocos2d::CCObject* sender);
	void onSelectSpecialColor(cocos2d::CCObject* sender);
	TodoReturn updateTextInputLabel();
	TodoReturn updatePulseTargetType();
	void onSelectSpecialTargetID(cocos2d::CCObject* sender);
	TodoReturn updateGroupSecondaryOnly();
	TodoReturn updateCopyColorTextInputLabel();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn show();
	static SetupPulsePopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onCopy(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	~SetupPulsePopup();
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
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupShakePopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupShakePopup();
}

[[link(android)]]
class SetupSpawnPopup {
	void onAddRemap(cocos2d::CCObject* sender);
	void onDeleteRemap(cocos2d::CCObject* sender);
	void onSelectRemap(cocos2d::CCObject* sender);
	TodoReturn queueUpdateButtons();
	TodoReturn updateRemapButtons(float);
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupSpawnPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupSpawnPopup();
}

[[link(android)]]
class SFXFolderObject {
	bool init(int, std::string, int);
	static SFXFolderObject* create(int, std::string, int);
	~SFXFolderObject();
}

[[link(android)]]
class SFXSearchResult {
	TodoReturn updateObjects(AudioSortType);
	TodoReturn getActiveFolder();
	TodoReturn getSelectedPage(int, int);
	/* unverified signature */
	void setActiveFolder(SFXFolderObject*);
	bool init(int);
	static SFXSearchResult* create(int);
	~SFXSearchResult();
}

[[link(android)]]
class ShareLevelLayer {
	void onSettings(cocos2d::CCObject* sender);
	TodoReturn setupStars();
	TodoReturn selectRating(cocos2d::CCObject*);
	TodoReturn getStarsButton(int, SEL_MenuHandler, cocos2d::CCMenu*, float);
	virtual void keyBackClicked();
	bool init(GJGameLevel*);
	static ShareLevelLayer* create(GJGameLevel*);
	void onClose(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender);
	~ShareLevelLayer();
}

[[link(android)]]
class SmartGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn updateSmartFrame();
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	bool init(char const*);
	static SmartGameObject* create(char const*);
	~SmartGameObject();
}

[[link(android)]]
class TopArtistsLayer {
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn setupPageInfo(std::string, char const*);
	virtual void keyBackClicked();
	TodoReturn loadListFailed(char const*);
	TodoReturn loadListFinished(cocos2d::CCArray*, char const*);
	TodoReturn setupLeaderboard(cocos2d::CCArray*);
	TodoReturn updateLevelsLabel();
	virtual void registerWithTouchDispatcher();
	virtual bool init();
	TodoReturn show();
	static TopArtistsLayer* create();
	void onClose(cocos2d::CCObject* sender);
	TodoReturn loadPage(int);
	/* unverified signature */
	bool isCorrect(char const*);
	~TopArtistsLayer();
}

[[link(android)]]
class UISaveLoadLayer {
	bool init(UIOptionsLayer*);
	static UISaveLoadLayer* create(UIOptionsLayer*);
	void onLoad(cocos2d::CCObject* sender);
	void onSave(cocos2d::CCObject* sender);
	~UISaveLoadLayer();
}

[[link(android)]]
class UploadListPopup {
	virtual void keyBackClicked();
	void onReturnToList(cocos2d::CCObject* sender);
	TodoReturn listUploadFailed(GJLevelList*, int);
	TodoReturn listUploadFinished(GJLevelList*);
	bool init(GJLevelList*);
	TodoReturn show();
	static UploadListPopup* create(GJLevelList*);
	void onBack(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	~UploadListPopup();
}

[[link(android)]]
class AccountHelpLayer {
	TodoReturn updatePage();
	TodoReturn customSetup();
	TodoReturn layerHidden();
	TodoReturn verifyUnlink();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	void onAccountManagement(cocos2d::CCObject* sender);
	TodoReturn accountStatusChanged();
	static AccountHelpLayer* create();
	TodoReturn doUnlink();
	void onUnlink(cocos2d::CCObject* sender);
	TodoReturn exitLayer();
	void onReLogin(cocos2d::CCObject* sender);
	~AccountHelpLayer();
}

[[link(android)]]
class CCAnimatedSprite {
	virtual void setOpacity(unsigned char);
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
	virtual void setColor(cocos2d::_ccColor3B const&);
	TodoReturn stopTween();
	~CCAnimatedSprite();
}

[[link(android)]]
class CCPartAnimSprite {
	TodoReturn countParts();
	virtual void setOpacity(unsigned char);
	TodoReturn displayFrame();
	virtual void setBlendFunc(cocos2d::_ccBlendFunc);
	TodoReturn tweenToFrame(cocos2d::CCSpriteFrame*, float);
	TodoReturn tweenSpriteTo(SpriteDescription*, float);
	TodoReturn getSpriteForKey(char const*);
	virtual void setDisplayFrame(cocos2d::CCSpriteFrame*);
	TodoReturn transformSprite(SpriteDescription*);
	TodoReturn initWithAnimDesc(char const*, cocos2d::CCTexture2D*, bool);
	virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*);
	TodoReturn changeTextureOfID(char const*, char const*);
	TodoReturn createWithAnimDesc(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn dirtify();
	/* unverified signature */
	void setColor(cocos2d::_ccColor3B);
	/* unverified signature */
	void setFlipX(bool);
	/* unverified signature */
	void setFlipY(bool);
	virtual void setScale(float);
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	~CCPartAnimSprite();
}

[[link(android)]]
class CCScrollLayerExt {
	TodoReturn scrollLayer(float);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn scrollingEnd();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	/* unverified signature */
	void setContentOffset(cocos2d::CCPoint, bool);
	TodoReturn updateIndicators(float);
	TodoReturn constraintContent();
	TodoReturn doConstraintContent(bool);
	TodoReturn moveToTopWithOffset(float);
	/* unverified signature */
	void setContentLayerSize(cocos2d::CCSize);
	TodoReturn preVisitWithClippingRect(cocos2d::CCRect);
	virtual void registerWithTouchDispatcher();
	virtual void visit();
	TodoReturn getMaxY();
	TodoReturn getMinY();
	TodoReturn moveToTop();
	TodoReturn postVisit();
	CCScrollLayerExt(cocos2d::CCRect);
	~CCScrollLayerExt();
}

[[link(android)]]
class CCSpriteCOpacity {
	virtual void setOpacity(unsigned char);
	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(char const*);
	~CCSpriteCOpacity();
}

[[link(android)]]
class CheckpointObject {
	virtual bool init();
	static CheckpointObject* create();
	TodoReturn getObject();
	/* unverified signature */
	void setObject(GameObject*);
	~CheckpointObject();
}

[[link(android)]]
class ColorSelectPopup {
	TodoReturn colorToHex(cocos2d::_ccColor3B);
	TodoReturn hexToColor(std::string);
	TodoReturn selectColor(cocos2d::_ccColor3B);
	TodoReturn textChanged(CCTextInputNode*);
	void onTintGround(cocos2d::CCObject* sender);
	TodoReturn getColorValue();
	void onCopyOpacity(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateHSVMode();
	TodoReturn updateOpacity();
	void onPlayerColor1(cocos2d::CCObject* sender);
	void onPlayerColor2(cocos2d::CCObject* sender);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel();
	TodoReturn updateHSVValue();
	void onHSVLegacyMode(cocos2d::CCObject* sender);
	void onToggleHSVMode(cocos2d::CCObject* sender);
	TodoReturn updateCopyColor();
	TodoReturn closeColorSelect(cocos2d::CCObject*);
	void onToggleTintMode(cocos2d::CCObject* sender);
	TodoReturn updateColorValue();
	TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
	TodoReturn colorValueChanged(cocos2d::_ccColor3B);
	void onUpdateCopyColor(cocos2d::CCObject* sender);
	TodoReturn updateColorLabels();
	TodoReturn updateOpacityLabel();
	void onUpdateCustomColor(cocos2d::CCObject* sender);
	TodoReturn determineStartValues();
	void onSelectSpecialColor(cocos2d::CCObject* sender);
	TodoReturn updateCustomColorIdx();
	TodoReturn updateTextInputLabel();
	TodoReturn updateCopyColorTextInputLabel();
	bool init(EffectGameObject*, cocos2d::CCArray*, ColorAction*);
	TodoReturn show();
	static ColorSelectPopup* create(cocos2d::_ccColor3B);
	static ColorSelectPopup* create(ColorAction*);
	static ColorSelectPopup* create(EffectGameObject*, cocos2d::CCArray*);
	static ColorSelectPopup* create(EffectGameObject*, cocos2d::CCArray*, ColorAction*);
	void onCopy(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onDefault(cocos2d::CCObject* sender);
	~ColorSelectPopup();
}

[[link(android)]]
class CustomSongWidget {
	TodoReturn deleteSong();
	void onDownload(cocos2d::CCObject* sender);
	void onPlayback(cocos2d::CCObject* sender);
	TodoReturn updateError(GJSongError);
	TodoReturn verifySongID(int);
	void onGetSongInfo(cocos2d::CCObject* sender);
	TodoReturn startDownload();
	TodoReturn downloadFailed();
	TodoReturn updateSongInfo();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn updateLengthMod(float);
	void onCancelDownload(cocos2d::CCObject* sender);
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
	bool init(SongInfoObject*, CustomSongDelegate*, bool, bool, bool, bool, bool, bool);
	static CustomSongWidget* create(SongInfoObject*, CustomSongDelegate*, bool, bool, bool, bool, bool, bool);
	void onMore(cocos2d::CCObject* sender);
	void onDelete(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);
	TodoReturn showError(bool);
	~CustomSongWidget();
}

[[link(android)]]
class EditorPauseLayer {
	TodoReturn customSetup();
	void onNewGroupX(cocos2d::CCObject* sender);
	void onNewGroupY(cocos2d::CCObject* sender);
	void onSelectAll(cocos2d::CCObject* sender);
	void onCopyWColor(cocos2d::CCObject* sender);
	void onCreateLoop(cocos2d::CCObject* sender);
	void onExitEditor(cocos2d::CCObject* sender);
	void onExitNoSave(cocos2d::CCObject* sender);
	TodoReturn doResetUnused();
	void onBuildHelper(cocos2d::CCObject* sender);
	void onKeybindings(cocos2d::CCObject* sender);
	void onPasteWColor(cocos2d::CCObject* sender);
	void onSaveAndExit(cocos2d::CCObject* sender);
	void onSaveAndPlay(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	void onCreateExtras(cocos2d::CCObject* sender);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	void onSelectAllLeft(cocos2d::CCObject* sender);
	TodoReturn toggleDebugDraw(cocos2d::CCObject*);
	TodoReturn toggleGridOnTop(cocos2d::CCObject*);
	void onCreateTemplate(cocos2d::CCObject* sender);
	void onSelectAllRight(cocos2d::CCObject* sender);
	TodoReturn toggleEditorGrid(cocos2d::CCObject*);
	TodoReturn updateSongButton();
	void onUnlockAllLayers(cocos2d::CCObject* sender);
	TodoReturn toggleEffectLines(cocos2d::CCObject*);
	TodoReturn togglePreviewAnim(cocos2d::CCObject*);
	TodoReturn toggleRecordOrder(cocos2d::CCObject*);
	TodoReturn uncheckAllPortals(cocos2d::CCObject*);
	TodoReturn toggleEditorGround(cocos2d::CCObject*);
	TodoReturn toggleFollowPlayer(cocos2d::CCObject*);
	TodoReturn toggleIgnoreDamage(cocos2d::CCObject*);
	TodoReturn toggleSelectFilter(cocos2d::CCObject*);
	void onResetUnusedColors(cocos2d::CCObject* sender);
	TodoReturn toggleHideInvisible(cocos2d::CCObject*);
	TodoReturn togglePlaytestMusic(cocos2d::CCObject*);
	TodoReturn toggleEffectDuration(cocos2d::CCObject*);
	TodoReturn togglePreviewShaders(cocos2d::CCObject*);
	TodoReturn toggleShowObjectInfo(cocos2d::CCObject*);
	TodoReturn toggleEditorColorMode(cocos2d::CCObject*);
	TodoReturn toggleEditorBackground(cocos2d::CCObject*);
	TodoReturn togglePreviewParticles(cocos2d::CCObject*);
	bool init(LevelEditorLayer*);
	static EditorPauseLayer* create(LevelEditorLayer*);
	void onHelp(cocos2d::CCObject* sender);
	void onSave(cocos2d::CCObject* sender);
	void onSong(cocos2d::CCObject* sender);
	virtual void keyDown(cocos2d::enumKeyCodes);
	void onAlignX(cocos2d::CCObject* sender);
	void onAlignY(cocos2d::CCObject* sender);
	void onResume(cocos2d::CCObject* sender);
	void onOptions(cocos2d::CCObject* sender);
	void onReGroup(cocos2d::CCObject* sender);
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn saveLevel();
	~EditorPauseLayer();
}

[[link(android)]]
class EffectGameObject {
	TodoReturn canReverse();
	TodoReturn firstSetup();
	virtual void setOpacity(unsigned char);
	/* unverified signature */
	void setRScaleX(float);
	/* unverified signature */
	void setRScaleY(float);
	TodoReturn customSetup();
	/* unverified signature */
	void setTargetID(int);
	TodoReturn canBeOrdered();
	/* unverified signature */
	void setTargetID2(int);
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn restoreObject();
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn getObjectLabel();
	/* unverified signature */
	void setObjectLabel(cocos2d::CCLabelBMFont*);
	TodoReturn spawnXPosition();
	TodoReturn triggerActivated(float);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	TodoReturn playTriggerEffect();
	TodoReturn resetSpawnTrigger();
	TodoReturn stateSensitiveOff(GJBaseGameLayer*);
	TodoReturn updateSpecialColor();
	TodoReturn updateSpeedModType();
	TodoReturn getTargetColorIndex();
	/* unverified signature */
	bool isSpecialSpawnObject();
	TodoReturn triggerEffectFinished();
	TodoReturn updateInteractiveHover(float);
	bool init(char const*);
	static EffectGameObject* create(char const*);
	EffectGameObject();
	~EffectGameObject();
}

[[link(android)]]
class EventLinkTrigger {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	virtual bool init();
	static EventLinkTrigger* create();
	~EventLinkTrigger();
}

[[link(android)]]
class FollowRewardPage {
	TodoReturn updateRate();
	void onSpecialItem(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	void onRewardedVideo(cocos2d::CCObject* sender);
	TodoReturn switchToOpenedState(CCMenuItemSpriteExtra*);
	TodoReturn rewardedVideoFinished();
	virtual void registerWithTouchDispatcher();
	virtual bool init();
	TodoReturn show();
	static FollowRewardPage* create();
	void onClose(cocos2d::CCObject* sender);
	~FollowRewardPage();
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
	/* unverified signature */
	bool isDLActive(char const*);
	/* unverified signature */
	void setDiffVal(int, bool);
	TodoReturn deleteLevel(GJGameLevel*);
	TodoReturn getLevelKey(int);
	TodoReturn getMapPacks(GJSearchObject*);
	TodoReturn getPageInfo(char const*);
	TodoReturn getTimeLeft(char const*, float);
	TodoReturn getUserList(UserListType);
	/* unverified signature */
	bool isTimeValid(char const*, float);
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
	/* unverified signature */
	void setIntForKey(int, char const*);
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
	/* unverified signature */
	bool isUpdateValid(int);
	TodoReturn makeTimeStamp(char const*);
	TodoReturn saveLevelList(GJLevelList*);
	/* unverified signature */
	void setBoolForKey(bool, char const*);
	/* unverified signature */
	void setFolderName(int, std::string, bool);
	/* unverified signature */
	void setLevelStars(int, int, bool);
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
	/* unverified signature */
	bool isFollowingUser(int);
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
	/* unverified signature */
	void setLevelFeatured(int, int, bool);
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
	/* unverified signature */
	void setActiveSmartTemplate(GJSmartTemplate*);
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
	virtual bool init();
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
	/* unverified signature */
	void setLenVal(int, bool);
	~GameLevelManager();
}

[[link(android)]]
class GameOptionsLayer {
	void onUIOptions(cocos2d::CCObject* sender);
	TodoReturn setupOptions();
	void onPracticeMusicSync(cocos2d::CCObject* sender);
	TodoReturn showPracticeMusicSyncUnlockInfo();
	bool init(GJBaseGameLayer*);
	static GameOptionsLayer* create(GJBaseGameLayer*);
	TodoReturn didToggle(int);
	~GameOptionsLayer();
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
	/* unverified signature */
	bool isSecretCoin(std::string);
	TodoReturn purchaseItem(int);
	TodoReturn resetPreSync();
	TodoReturn collectReward(GJRewardType, GJRewardItem*);
	TodoReturn getMapPackKey(int);
	TodoReturn getRewardItem(GJRewardType);
	TodoReturn hasSecretCoin(char const*);
	TodoReturn incrementStat(char const*);
	TodoReturn incrementStat(char const*, int);
	/* unverified signature */
	bool isItemEnabled(UnlockType, int);
	TodoReturn storeUserCoin(char const*);
	TodoReturn awardSecretKey();
	TodoReturn completedLevel(GJGameLevel*);
	TodoReturn getCurrencyKey(GJGameLevel*);
	TodoReturn getStatFromKey(StatKey);
	/* unverified signature */
	bool isItemUnlocked(UnlockType, int);
	/* unverified signature */
	bool isPathUnlocked(StatKey);
	TodoReturn resetUserCoins();
	TodoReturn storeChallenge(int, GJChallengeItem*);
	TodoReturn claimListReward(GJLevelList*);
	TodoReturn getBaseCurrency(int, bool, int);
	TodoReturn getBaseDiamonds(int);
	TodoReturn getChallengeKey(GJChallengeItem*);
	TodoReturn getStarLevelKey(GJGameLevel*);
	TodoReturn removeChallenge(int);
	TodoReturn restorePostSync();
	/* unverified signature */
	void setStatIfHigher(char const*, int);
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
	/* unverified signature */
	bool isSecretCoinValid(std::string);
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
	/* unverified signature */
	void setStarsForMapPack(int, int);
	TodoReturn storeChallengeTime(int);
	TodoReturn unlockSpecialChest(std::string);
	TodoReturn areChallengesLoaded();
	TodoReturn completedDailyLevel(GJGameLevel*);
	TodoReturn completedDemonLevel(GJGameLevel*);
	TodoReturn hasCompletedMapPack(int);
	TodoReturn incrementActivePath(int);
	/* unverified signature */
	bool isPathChestUnlocked(int);
	/* unverified signature */
	bool isStoreItemUnlocked(int);
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
	/* unverified signature */
	bool isSecretChestUnlocked(int);
	TodoReturn keyCostForSecretChest(int);
	TodoReturn processChallengeQueue(int);
	TodoReturn removeQueuedChallenge(int);
	TodoReturn createSecretChestItems();
	TodoReturn getItemUnlockStateLite(int, UnlockType);
	TodoReturn hasCompletedDailyLevel(int);
	TodoReturn hasCompletedDemonLevel(GJGameLevel*);
	TodoReturn hasRewardBeenCollected(GJRewardType, int);
	/* unverified signature */
	bool isSpecialChestUnlocked(std::string);
	TodoReturn createSpecialChestItems();
	TodoReturn getBaseCurrencyForLevel(GJGameLevel*);
	TodoReturn getRewardForSecretChest(int);
	TodoReturn hasCompletedOnlineLevel(int);
	/* unverified signature */
	bool isGauntletChestUnlocked(int);
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
	/* unverified signature */
	bool isSpecialChestLiteUnlockable(std::string);
	TodoReturn removeErrorFromSpecialChests();
	TodoReturn resetSpecialStatAchievements();
	TodoReturn storeSecondaryQueuedChallenge(int, GJChallengeItem*);
	TodoReturn markLevelAsCompletedAndClaimed(GJGameLevel*);
	TodoReturn removeQueuedSecondaryChallenge(int);
	virtual bool init();
	TodoReturn getStat(char const*);
	/* unverified signature */
	void setStat(char const*, int);
	TodoReturn logCoins();
	TodoReturn tempClear();
	~GameStatsManager();
}

[[link(android)]]
class GhostTrailEffect {
	TodoReturn runWithTarget(cocos2d::CCSprite*, float, float, float, float, bool);
	TodoReturn trailSnapshot(float);
	TodoReturn doBlendAdditive();
	virtual void draw();
	virtual bool init();
	static GhostTrailEffect* create();
	TodoReturn stopTrail();
	~GhostTrailEffect();
}

[[link(android)]]
class GJAccountManager {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	/* unverified signature */
	bool isDLActive(char const*);
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
	virtual bool init();
	TodoReturn handleIt(bool, std::string, std::string, GJHttpType);
	~GJAccountManager();
}

[[link(android)]]
class GJFlyGroundLayer {
	virtual bool init();
	static GJFlyGroundLayer* create();
	~GJFlyGroundLayer();
}

[[link(android)]]
class GJLevelScoreCell {
	TodoReturn loadFromScore(GJUserScore*);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);
	virtual void draw();
	virtual bool init();
	GJLevelScoreCell(char const*, float, float);
	~GJLevelScoreCell();
}

[[link(android)]]
class GJMoreGamesLayer {
	TodoReturn customSetup();
	TodoReturn getMoreGamesList();
	static GJMoreGamesLayer* create();
	~GJMoreGamesLayer();
}

[[link(android)]]
class GJRewardDelegate {
	TodoReturn rewardsStatusFailed();
	TodoReturn rewardsStatusFinished(int);
}

[[link(android)]]
class GJUnlockableItem {
	virtual bool init();
	static GJUnlockableItem* create();
	~GJUnlockableItem();
}

[[link(android)]]
class KeybindingsLayer {
	TodoReturn addKeyPair(char const*, char const*);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn countForPage(int);
	TodoReturn layerForPage(int);
	TodoReturn nextPosition(int);
	virtual void keyBackClicked();
	TodoReturn objectsForPage(int);
	TodoReturn incrementCountForPage(int);
	virtual bool init();
	static KeybindingsLayer* create();
	void onInfo(cocos2d::CCObject* sender);
	TodoReturn infoKey(int);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn pageKey(int);
	TodoReturn goToPage(int);
	TodoReturn layerKey(int);
	void onToggle(cocos2d::CCObject* sender);
	TodoReturn objectKey(int);
	~KeybindingsLayer();
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
	/* unverified signature */
	bool isLayerLocked(int);
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
	TodoReturn addObjectFromVector(gd::vector<std::string>&, gd::vector<void*>&);
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
	virtual void draw();
	bool init(GJGameLevel*, bool);
	TodoReturn scene(GJGameLevel*, bool);
	static LevelEditorLayer* create(GJGameLevel*, bool);
	TodoReturn getSFXIDs();
	TodoReturn hasAction(bool);
	TodoReturn updateArt(float);
	~LevelEditorLayer();
}

[[link(android)]]
class LevelLeaderboard {
	TodoReturn loadScores();
	void onChangeMode(cocos2d::CCObject* sender);
	void onChangeType(cocos2d::CCObject* sender);
	TodoReturn getLocalScores();
	virtual void keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn getSpriteButton(std::string, SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint, int);
	TodoReturn setupLeaderboard(cocos2d::CCArray*);
	TodoReturn deleteLocalScores();
	TodoReturn reloadLeaderboard(LevelLeaderboardType, LevelLeaderboardMode);
	void onDeleteLocalScores(cocos2d::CCObject* sender);
	TodoReturn loadLeaderboardFailed(char const*);
	TodoReturn updateUserScoreFailed();
	TodoReturn loadLeaderboardFinished(cocos2d::CCArray*, char const*);
	TodoReturn updateUserScoreFinished();
	virtual void registerWithTouchDispatcher();
	bool init(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode);
	TodoReturn show();
	static LevelLeaderboard* create(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode);
	void onClose(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	/* unverified signature */
	bool isCorrect(char const*);
	~LevelLeaderboard();
}

[[link(android)]]
class LevelSearchLayer {
	TodoReturn getDiffKey(int);
	TodoReturn getTimeKey(int);
	void onFollowed(cocos2d::CCObject* sender);
	void onTrending(cocos2d::CCObject* sender);
	TodoReturn toggleStar(cocos2d::CCObject*);
	TodoReturn toggleTime(cocos2d::CCObject*);
	void onMostLikes(cocos2d::CCObject* sender);
	void onStarAward(cocos2d::CCObject* sender);
	void onSuggested(cocos2d::CCObject* sender);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn clearFilters();
	void onMostRecent(cocos2d::CCObject* sender);
	void onSearchMode(cocos2d::CCObject* sender);
	void onSearchUser(cocos2d::CCObject* sender);
	void onLatestStars(cocos2d::CCObject* sender);
	void onMoreOptions(cocos2d::CCObject* sender);
	TodoReturn toggleTimeNum(int, bool);
	TodoReturn getLevelLenKey();
	virtual void keyBackClicked();
	void onSpecialDemon(cocos2d::CCObject* sender);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn getSearchObject(SearchType, std::string);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn getSearchDiffKey();
	void onMostDownloaded(cocos2d::CCObject* sender);
	TodoReturn toggleDifficulty(cocos2d::CCObject*);
	void onClearFreeSearch(cocos2d::CCObject* sender);
	TodoReturn updateSearchLabel(char const*);
	TodoReturn confirmClearFilters(cocos2d::CCObject*);
	TodoReturn toggleDifficultyNum(int, bool);
	TodoReturn demonFilterSelectClosed(int);
	bool init(int);
	TodoReturn scene(int);
	static LevelSearchLayer* create(int);
	void onBack(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onMagic(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);
	TodoReturn checkDiff(int);
	TodoReturn checkTime(int);
	void onFriends(cocos2d::CCObject* sender);
	~LevelSearchLayer();
}

[[link(android)]]
class LevelSelectLayer {
	void onDownload(cocos2d::CCObject* sender);
	TodoReturn colorForPage(int);
	TodoReturn getColorValue(int, int, float);
	virtual void keyBackClicked();
	TodoReturn scrollLayerMoved(cocos2d::CCPoint);
	TodoReturn updatePageWithObject(cocos2d::CCObject*, cocos2d::CCObject*);
	bool init(int);
	TodoReturn scene(int);
	static LevelSelectLayer* create(int);
	void onBack(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onNext(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onPrev(cocos2d::CCObject* sender);
	virtual void keyDown(cocos2d::enumKeyCodes);
	TodoReturn tryShowAd();
	~LevelSelectLayer();
}

[[link(android)]]
class LikeItemDelegate {
	TodoReturn likedItem(LikeItemType, int, bool);
}

[[link(android)]]
class MoreOptionsLayer {
	void onGPSignIn(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onParental(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onFMODDebug(cocos2d::CCObject* sender);
	void onGPSignOut(cocos2d::CCObject* sender);
	TodoReturn countForPage(int);
	TodoReturn layerForPage(int);
	TodoReturn nextPosition(int);
	void onKeybindings(cocos2d::CCObject* sender);
	void onSongBrowser(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	TodoReturn objectsForPage(int);
	TodoReturn textInputReturn(CCTextInputNode*);
	TodoReturn offsetToNextPage();
	TodoReturn googlePlaySignedIn();
	TodoReturn incrementCountForPage(int);
	TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	TodoReturn dropDownLayerWillClose(GJDropDownLayer*);
	virtual bool init();
	static MoreOptionsLayer* create();
	void onInfo(cocos2d::CCObject* sender);
	TodoReturn infoKey(int);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn pageKey(int);
	TodoReturn goToPage(int);
	TodoReturn layerKey(int);
	void onToggle(cocos2d::CCObject* sender);
	TodoReturn toggleGP();
	TodoReturn addToggle(char const*, char const*, char const*);
	TodoReturn objectKey(int);
	~MoreOptionsLayer();
}

[[link(android)]]
class MultiplayerLayer {
	virtual void keyBackClicked();
	virtual bool init();
	TodoReturn scene();
	static MultiplayerLayer* create();
	void onBack(cocos2d::CCObject* sender);
	void onBtn1(cocos2d::CCObject* sender);
	void onBtn2(cocos2d::CCObject* sender);
	~MultiplayerLayer();
}

[[link(android)]]
class NumberInputLayer {
	TodoReturn deleteLast();
	TodoReturn inputNumber(int);
	virtual void keyBackClicked();
	TodoReturn updateNumberState();
	virtual void registerWithTouchDispatcher();
	virtual bool init();
	static NumberInputLayer* create();
	void onDone(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onNumber(cocos2d::CCObject* sender);
	~NumberInputLayer();
}

[[link(android)]]
class PlayerCheckpoint {
	virtual bool init();
	static PlayerCheckpoint* create();
	~PlayerCheckpoint();
}

[[link(android)]]
class SelectEventLayer {
	TodoReturn nextPosition();
	virtual void keyBackClicked();
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(SetupEventLinkPopup*, std::set<int>&);
	static SelectEventLayer* create(SetupEventLinkPopup*, std::set<int>&);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn addToggle(int, std::string);
	~SelectEventLayer();
}

[[link(android)]]
class SetTargetIDLayer {
	TodoReturn valueDidChange(int, float);
	TodoReturn determineStartValues();
	bool init(EffectGameObject*, cocos2d::CCArray*, std::string, std::string, int, int, int);
	static SetTargetIDLayer* create(EffectGameObject*, cocos2d::CCArray*, std::string, std::string, int, int, int);
	~SetTargetIDLayer();
}

[[link(android)]]
class SetupPortalPopup {
	void onUnboundMode(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	virtual void keyBackClicked();
	TodoReturn updateCameraEasing();
	TodoReturn updateCameraPadding();
	TodoReturn determineStartValues();
	void onEditCameraSettings(cocos2d::CCObject* sender);
	TodoReturn updateItemVisibility();
	TodoReturn updateCameraEasingLabel();
	TodoReturn updateCameraPaddingLabel();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupPortalPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupPortalPopup();
}

[[link(android)]]
class SetupReverbPopup {
	TodoReturn updateReverbLabel();
	bool init(SFXTriggerGameObject*, cocos2d::CCArray*);
	static SetupReverbPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*);
	void onPlay(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onReverb(cocos2d::CCObject* sender);
	~SetupReverbPopup();
}

[[link(android)]]
class SetupRotatePopup {
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(EnhancedGameObject*, cocos2d::CCArray*);
	static SetupRotatePopup* create(EnhancedGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupRotatePopup();
}

[[link(android)]]
class ShaderGameObject {
	TodoReturn customSetup();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	bool init(char const*);
	static ShaderGameObject* create(char const*);
	~ShaderGameObject();
}

[[link(android)]]
class SliderTouchLogic {
	/* unverified signature */
	void setRotated(bool);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	/* unverified signature */
	void setMaxOffset(float);
	virtual void registerWithTouchDispatcher();
	bool init(cocos2d::CCNode*, SEL_MenuHandler, char const*, char const*, float);
	static SliderTouchLogic* create(cocos2d::CCNode*, SEL_MenuHandler, char const*, char const*, float);
	~SliderTouchLogic();
}

[[link(android)]]
class SongOptionsLayer {
	void onPlayback(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	TodoReturn updatePlaybackBtn();
	bool init(CustomSongDelegate*);
	static SongOptionsLayer* create(CustomSongDelegate*);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onFadeIn(cocos2d::CCObject* sender);
	void onFadeOut(cocos2d::CCObject* sender);
	~SongOptionsLayer();
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
	bool init(int, int, TextStyleType);
	static TextStyleSection* create(int, int, TextStyleType);
	~TextStyleSection();
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
	void onFreeLevels(cocos2d::CCObject* sender);
	TodoReturn updateArrows();
	TodoReturn getColorValue(int, int, float);
	virtual void keyBackClicked();
	TodoReturn unblockButtons();
	TodoReturn scrollLayerMoved(cocos2d::CCPoint);
	TodoReturn showCompleteDialog();
	TodoReturn animateInActiveIsland();
	TodoReturn scrollLayerScrolledToPage(BoomScrollLayer*, int);
	TodoReturn scrollLayerWillScrollToPage(BoomScrollLayer*, int);
	bool init(int);
	TodoReturn scene(int);
	static WorldSelectLayer* create(int);
	void onBack(cocos2d::CCObject* sender);
	virtual void onExit();
	void onNext(cocos2d::CCObject* sender);
	void onPrev(cocos2d::CCObject* sender);
	TodoReturn goToPage(int, bool);
	void onGarage(cocos2d::CCObject* sender);
	TodoReturn tryShowAd();
	~WorldSelectLayer();
}

[[link(android)]]
class AccountLoginLayer {
	TodoReturn resetLabel(int);
	TodoReturn resetLabels();
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateLabel(AccountError);
	TodoReturn disableNodes();
	void onForgotUser(cocos2d::CCObject* sender);
	TodoReturn hideLoadingUI();
	TodoReturn showLoadingUI();
	virtual void keyBackClicked();
	TodoReturn createTextInput(cocos2d::CCPoint, cocos2d::CCSize, char const*, int);
	TodoReturn createTextLabel(cocos2d::CCPoint, char const*, cocos2d::CCSize);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	void onForgotPassword(cocos2d::CCObject* sender);
	TodoReturn loginAccountFailed(AccountError);
	TodoReturn createTextBackground(cocos2d::CCPoint, char const*, cocos2d::CCSize);
	TodoReturn loginAccountFinished(int, int);
	virtual void registerWithTouchDispatcher();
	bool init(std::string);
	static AccountLoginLayer* create(std::string);
	void onClose(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);
	TodoReturn toggleUI(bool);
	~AccountLoginLayer();
}

[[link(android)]]
class AchievementsLayer {
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn customSetup();
	TodoReturn setupPageInfo(int, int, int);
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	static AchievementsLayer* create();
	virtual void keyDown(cocos2d::enumKeyCodes);
	TodoReturn loadPage(int);
	~AchievementsLayer();
}

[[link(android)]]
class AudioEffectsLayer {
	TodoReturn getBGSquare();
	TodoReturn triggerEffect(float);
	TodoReturn resetAudioVars();
	virtual void updateTweenAction(float, char const*);
	virtual void draw();
	bool init(std::string);
	static AudioEffectsLayer* create(std::string);
	TodoReturn audioStep(float);
	TodoReturn goingDown();
	~AudioEffectsLayer();
}

[[link(android)]]
class CCMenuItemToggler {
	TodoReturn activeItem();
	virtual void setEnabled(bool);
	virtual void unselected();
	TodoReturn normalTouch(cocos2d::CCObject*);
	/* unverified signature */
	void setSizeMult(float);
	TodoReturn selectedTouch(cocos2d::CCObject*);
	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, SEL_MenuHandler);
	static CCMenuItemToggler* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, SEL_MenuHandler);
	TodoReturn toggle(bool);
	virtual void activate();
	virtual void selected();
	~CCMenuItemToggler();
}

[[link(android)]]
class CCSpriteGrayscale {
	TodoReturn shaderBody();
	TodoReturn getShaderName();
	TodoReturn createWithTexture(cocos2d::CCTexture2D*);
	TodoReturn createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(std::string const&);
	static CCSpriteGrayscale* create(std::string const&);
	static CCSpriteGrayscale* create(std::string const&, cocos2d::CCRect const&);
	~CCSpriteGrayscale();
}

[[link(android)]]
class ColorActionSprite {
	virtual bool init();
	static ColorActionSprite* create();
	~ColorActionSprite();
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
	virtual bool init();
	virtual void visit();
	static DungeonBarsSprite* create();
	~DungeonBarsSprite();
}

[[link(android)]]
class EditTriggersPopup {
	TodoReturn determineStartValues();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static EditTriggersPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~EditTriggersPopup();
}

[[link(android)]]
class EnterEffectObject {
	TodoReturn customSetup();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	TodoReturn resetEnterAnimValues();
	bool init(char const*);
	static EnterEffectObject* create(char const*);
	~EnterEffectObject();
}

[[link(android)]]
class ExplodeItemSprite {
	virtual bool init();
	static ExplodeItemSprite* create();
	~ExplodeItemSprite();
}

[[link(android)]]
class GJAccountDelegate {
	TodoReturn accountStatusChanged();
}

[[link(android)]]
class GJColorSetupLayer {
	virtual void keyBackClicked();
	TodoReturn colorSelectClosed(cocos2d::CCNode*);
	TodoReturn updateSpriteColor(ColorChannelSprite*, cocos2d::CCLabelBMFont*, int);
	TodoReturn updateSpriteColors();
	bool init(LevelSettingsObject*);
	static GJColorSetupLayer* create(LevelSettingsObject*);
	void onPage(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onColor(cocos2d::CCObject* sender);
	TodoReturn showPage(int);
	~GJColorSetupLayer();
}

[[link(android)]]
class GJPathRewardPopup {
	TodoReturn closePopup();
	virtual void keyBackClicked();
	bool init(int);
	static GJPathRewardPopup* create(int);
	void onClaim(cocos2d::CCObject* sender);
	~GJPathRewardPopup();
}

[[link(android)]]
class GJRotationControl {
	TodoReturn finishTouch();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn updateSliderPosition(cocos2d::CCPoint);
	virtual void draw();
	virtual bool init();
	static GJRotationControl* create();
	virtual void setAngle(float);
	~GJRotationControl();
}

[[link(android)]]
class GooglePlayManager {
	TodoReturn sharedState();
	TodoReturn googlePlaySignedIn();
	virtual bool init();
	~GooglePlayManager();
}

[[link(android)]]
class HSVWidgetDelegate {
	TodoReturn hsvChanged(ConfigureHSVWidget*);
	TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::_ccHSVValue);
}

[[link(android)]]
class LeaderboardsLayer {
	void onCreators(cocos2d::CCObject* sender);
	TodoReturn refreshTabs();
	virtual void keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn toggleTabButtons();
	TodoReturn selectLeaderboard(LeaderboardState);
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	TodoReturn loadLeaderboardFailed(char const*);
	TodoReturn updateUserScoreFailed();
	TodoReturn loadLeaderboardFinished(cocos2d::CCArray*, char const*);
	TodoReturn updateUserScoreFinished();
	bool init(LeaderboardState);
	void onTop(cocos2d::CCObject* sender);
	TodoReturn scene(LeaderboardState);
	static LeaderboardsLayer* create(LeaderboardState);
	void onBack(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onWeek(cocos2d::CCObject* sender);
	void onGlobal(cocos2d::CCObject* sender);
	/* unverified signature */
	bool isCorrect(char const*);
	TodoReturn setupTabs();
	~LeaderboardsLayer();
}

[[link(android)]]
class LevelBrowserLayer {
	void onGoToPage(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onDeleteAll(cocos2d::CCObject* sender);
	void onFavorites(cocos2d::CCObject* sender);
	void onLocalMode(cocos2d::CCObject* sender);
	void onSavedMode(cocos2d::CCObject* sender);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	void onGoToFolder(cocos2d::CCObject* sender);
	TodoReturn createNewList(cocos2d::CCObject*);
	void onClearSearch(cocos2d::CCObject* sender);
	TodoReturn setupPageInfo(std::string, char const*);
	TodoReturn createNewLevel(cocos2d::CCObject*);
	TodoReturn deleteSelected();
	TodoReturn getSearchTitle();
	virtual void keyBackClicked();
	void onGoToLastPage(cocos2d::CCObject* sender);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	/* unverified signature */
	void setSearchObject(GJSearchObject*);
	TodoReturn updatePageLabel();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn loadLevelsFailed(char const*, int);
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onMyOnlineLevels(cocos2d::CCObject* sender);
	TodoReturn reloadAllObjects();
	/* unverified signature */
	void setIDPopupClosed(SetIDPopup*, int);
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	TodoReturn updateLevelsLabel();
	TodoReturn updateResultArray(cocos2d::CCArray*);
	TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	void onToggleAllObjects(cocos2d::CCObject* sender);
	/* unverified signature */
	void setTextPopupClosed(SetTextPopup*, std::string);
	TodoReturn shareCommentClosed(std::string, ShareCommentLayer*);
	TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	void onRemoveAllFavorites(cocos2d::CCObject* sender);
	TodoReturn createNewSmartTemplate(cocos2d::CCObject*);
	TodoReturn getItemsMatchingSearch(cocos2d::CCArray*, std::string, GJSearchObject*);
	virtual void onEnterTransitionDidFinish();
	virtual void registerWithTouchDispatcher();
	bool init(GJSearchObject*);
	TodoReturn show();
	void onNew(cocos2d::CCObject* sender);
	TodoReturn scene(GJSearchObject*);
	static LevelBrowserLayer* create(GJSearchObject*);
	void onBack(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void onEnter();
	void onSaved(cocos2d::CCObject* sender);
	TodoReturn loadPage(GJSearchObject*);
	void onSearch(cocos2d::CCObject* sender);
	TodoReturn exitLayer(cocos2d::CCObject*);
	/* unverified signature */
	bool isCorrect(char const*);
	void onRefresh(cocos2d::CCObject* sender);
	~LevelBrowserLayer();
}

[[link(android)]]
class LevelFeatureLayer {
	TodoReturn updateStars();
	void onToggleEpic(cocos2d::CCObject* sender);
	void onSetEpicOnly(cocos2d::CCObject* sender);
	void onSetFeatured(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	void onRemoveValues(cocos2d::CCObject* sender);
	bool init(int);
	void onUp(cocos2d::CCObject* sender);
	void onUp2(cocos2d::CCObject* sender);
	static LevelFeatureLayer* create(int);
	void onDown(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onDown2(cocos2d::CCObject* sender);
	~LevelFeatureLayer();
}

[[link(android)]]
class LevelOptionsLayer {
	void onSettings(cocos2d::CCObject* sender);
	TodoReturn setupOptions();
	TodoReturn valueDidChange(int, float);
	bool init(LevelSettingsObject*);
	static LevelOptionsLayer* create(LevelSettingsObject*);
	TodoReturn getValue(int);
	TodoReturn didToggle(int);
	~LevelOptionsLayer();
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
	virtual bool init();
	TodoReturn firstLoad();
	~LocalLevelManager();
}

[[link(android)]]
class MultiTriggerPopup {
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static MultiTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);
	~MultiTriggerPopup();
}

[[link(android)]]
class MusicArtistObject {
	bool init(int, std::string, std::string, std::string);
	static MusicArtistObject* create(int, std::string, std::string, std::string);
	~MusicArtistObject();
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
	virtual bool init();
	static MusicSearchResult* create();
	~MusicSearchResult();
}

[[link(android)]]
class PromoInterstitial {
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void keyBackClicked();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	bool init(bool);
	TodoReturn show();
	TodoReturn setup();
	static PromoInterstitial* create(bool);
	void onClick(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	~PromoInterstitial();
}

[[link(android)]]
class PulseEffectAction {
	/* unverified signature */
	bool isFinished();
	TodoReturn valueForDelta(float, float, float, float);
	virtual void step(float);
}

[[link(android)]]
class PurchaseItemPopup {
	void onPurchase(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	bool init(GJStoreItem*);
	static PurchaseItemPopup* create(GJStoreItem*);
	void onClose(cocos2d::CCObject* sender);
	~PurchaseItemPopup();
}

[[link(android)]]
class RateLevelDelegate {
	TodoReturn rateLevelClosed();
}

[[link(android)]]
class RewardUnlockLayer {
	TodoReturn playDropSound();
	virtual void keyBackClicked();
	TodoReturn readyToCollect(GJRewardItem*);
	TodoReturn playLabelEffect(int, int, cocos2d::CCSprite*, cocos2d::CCPoint, float);
	TodoReturn showCloseButton();
	TodoReturn currencyWillExit(CurrencyRewardLayer*);
	TodoReturn playRewardEffect();
	TodoReturn connectionTimeout();
	TodoReturn showCollectReward(GJRewardItem*);
	TodoReturn labelEnterFinishedO(cocos2d::CCObject*);
	bool init(int, RewardsPage*);
	TodoReturn step2();
	TodoReturn step3();
	static RewardUnlockLayer* create(int, RewardsPage*);
	void onClose(cocos2d::CCObject* sender);
	~RewardUnlockLayer();
}

[[link(android)]]
class SecretNumberLayer {
	TodoReturn playNumberEffect(int);
	virtual bool init();
	static SecretNumberLayer* create();
	~SecretNumberLayer();
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
	void onTargetIDArrow(cocos2d::CCObject* sender);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn updateOpacityLabel();
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupOpacityPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupOpacityPopup();
}

[[link(android)]]
class SetupSFXEditPopup {
	bool init(SFXTriggerGameObject*, cocos2d::CCArray*, bool);
	static SetupSFXEditPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*, bool);
	~SetupSFXEditPopup();
}

[[link(android)]]
class SetupTriggerPopup {
	TodoReturn getObjects();
	void onEaseRate(cocos2d::CCObject* sender);
	TodoReturn pageChanged();
	TodoReturn sliderBegan(Slider*);
	TodoReturn sliderEnded(Slider*);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn toggleGroup(int, bool);
	TodoReturn updateLabel(int, std::string);
	TodoReturn updateValue(int, float);
	TodoReturn addInfoLabel(std::string, float, cocos2d::CCPoint, int, int);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	void onPlusButton(cocos2d::CCObject* sender);
	TodoReturn updateSlider(int);
	TodoReturn updateSlider(int, float);
	TodoReturn valueChanged(int, float);
	TodoReturn addHelpButton(std::string, std::string, float);
	TodoReturn addCloseButton(std::string);
	virtual void keyBackClicked();
	void onCustomButton(cocos2d::CCObject* sender);
	void onDisableValue(cocos2d::CCObject* sender);
	void onMultiTrigger(cocos2d::CCObject* sender);
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
	void onCustomEaseRate(cocos2d::CCObject* sender);
	void onTouchTriggered(cocos2d::CCObject* sender);
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
	/* unverified signature */
	void setMaxSliderValue(float, int);
	/* unverified signature */
	void setMinSliderValue(float, int);
	TodoReturn triggerArrowRight(cocos2d::CCObject*);
	TodoReturn updateEditorLabel();
	TodoReturn createCustomButton(int, std::string, std::string, cocos2d::CCPoint, float, float, bool, int, int);
	TodoReturn createToggleButton(std::string, SEL_MenuHandler, bool, cocos2d::CCPoint);
	TodoReturn createValueControl(int, std::string, cocos2d::CCPoint, float, float, float);
	void onSpawnedByTrigger(cocos2d::CCObject* sender);
	void onCustomEaseArrowUp(cocos2d::CCObject* sender);
	TodoReturn resetDisabledValues();
	TodoReturn triggerArrowChanged(int, bool);
	TodoReturn updateEaseRateLabel();
	TodoReturn updateValueControls(int, float);
	TodoReturn createEasingControls(cocos2d::CCPoint, float, int, int);
	TodoReturn determineStartValues();
	void onToggleTriggerValue(cocos2d::CCObject* sender);
	TodoReturn removeObjectFromPage(cocos2d::CCObject*, int);
	TodoReturn toggleDisableButtons(bool);
	TodoReturn triggerSliderChanged(cocos2d::CCObject*);
	TodoReturn updateInputNodeLabel(int, std::string);
	TodoReturn updateTouchTriggered();
	void onCustomEaseArrowDown(cocos2d::CCObject* sender);
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
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
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
	bool init(EffectGameObject*, cocos2d::CCArray*, float, float, int);
	TodoReturn show();
	static SetupTriggerPopup* create(float, float);
	static SetupTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*, float, float, int);
	void onEase(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	TodoReturn hideAll();
	void onClose(cocos2d::CCObject* sender);
	TodoReturn addTitle(std::string);
	TodoReturn getValue(int);
	TodoReturn goToPage(int, bool);
	TodoReturn preSetup();
	TodoReturn toggleBG(bool);
	TodoReturn postSetup();
	~SetupTriggerPopup();
}

[[link(android)]]
class ShareCommentLayer {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn onClosePopup(UploadActionPopup*);
	virtual void keyBackClicked();
	TodoReturn updateDescText(std::string);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn updatePercentLabel();
	TodoReturn uploadActionFailed(int, int);
	TodoReturn updateCharCountLabel();
	TodoReturn uploadActionFinished(int, int);
	virtual void registerWithTouchDispatcher();
	bool init(std::string, int, CommentType, int, std::string);
	static ShareCommentLayer* create(std::string, int, CommentType, int, std::string);
	void onClear(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender);
	void onPercent(cocos2d::CCObject* sender);
	~ShareCommentLayer();
}

[[link(android)]]
class SmartTemplateCell {
	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(GJSmartTemplate*);
	virtual void draw();
	virtual bool init();
	void onClick(cocos2d::CCObject* sender);
	SmartTemplateCell(char const*, float, float);
	~SmartTemplateCell();
}

[[link(android)]]
class SpriteDescription {
	TodoReturn initDescription(DS_Dictionary*);
	TodoReturn initDescription(cocos2d::CCDictionary*);
	TodoReturn createDescription(DS_Dictionary*);
	TodoReturn createDescription(cocos2d::CCDictionary*);
	~SpriteDescription();
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
	virtual void keyBackClicked();
	TodoReturn showFailMessage(std::string);
	TodoReturn showSuccessMessage(std::string);
	bool init(UploadPopupDelegate*, std::string);
	static UploadActionPopup* create(UploadPopupDelegate*, std::string);
	void onClose(cocos2d::CCObject* sender);
	~UploadActionPopup();
}

[[link(android)]]
class VideoOptionsLayer {
	void onAdvanced(cocos2d::CCObject* sender);
	TodoReturn reloadMenu();
	void onFullscreen(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	void onResolutionNext(cocos2d::CCObject* sender);
	void onResolutionPrev(cocos2d::CCObject* sender);
	TodoReturn toggleResolution();
	TodoReturn updateResolution(int);
	TodoReturn createToggleButton(std::string, SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float, bool);
	void onTextureQualityNext(cocos2d::CCObject* sender);
	void onTextureQualityPrev(cocos2d::CCObject* sender);
	TodoReturn updateTextureQuality(int);
	virtual bool init();
	static VideoOptionsLayer* create();
	void onInfo(cocos2d::CCObject* sender);
	void onApply(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	~VideoOptionsLayer();
}

[[link(android)]]
class xml_string_writer {
	TodoReturn write(void const*, unsigned long);
	~xml_string_writer();
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
	/* unverified signature */
	bool isAchievementEarned(char const*);
	TodoReturn limitForAchievement(std::string);
	TodoReturn achievementForUnlock(int, UnlockType);
	TodoReturn addManualAchievements();
	TodoReturn areAchievementsEarned(cocos2d::CCArray*);
	TodoReturn getAchievementsWithID(char const*);
	TodoReturn percentForAchievement(char const*);
	/* unverified signature */
	bool isAchievementAvailable(std::string);
	TodoReturn notifyAchievementWithID(char const*);
	TodoReturn reportAchievementWithID(char const*, int, bool);
	TodoReturn storeAchievementUnlocks();
	TodoReturn getAchievementRewardDict();
	TodoReturn getAllAchievementsSorted(bool);
	TodoReturn reportPlatformAchievementWithID(char const*, int);
	virtual bool init();
	TodoReturn setup();
	~AchievementManager();
}

[[link(android)]]
class AnimatedGameObject {
	virtual void setOpacity(unsigned char);
	TodoReturn resetObject();
	TodoReturn getTweenTime(int, int);
	TodoReturn playAnimation(int);
	virtual void setChildColor(cocos2d::_ccColor3B const&);
	TodoReturn activateObject();
	TodoReturn animationForID(int, int);
	/* unverified signature */
	void setObjectColor(cocos2d::_ccColor3B const&);
	TodoReturn deactivateObject(bool);
	TodoReturn animationFinished(char const*);
	TodoReturn setupAnimatedSize(int);
	TodoReturn setupChildSprites();
	TodoReturn displayFrameChanged(cocos2d::CCObject*, std::string);
	TodoReturn updateObjectAnimation();
	TodoReturn updateChildSpriteColor(cocos2d::_ccColor3B);
	bool init(int);
	static AnimatedGameObject* create(int);
	~AnimatedGameObject();
}

[[link(android)]]
class AnimatedShopKeeper {
	TodoReturn startAnimating();
	TodoReturn animationFinished(char const*);
	TodoReturn playReactAnimation();
	bool init(ShopType);
	static AnimatedShopKeeper* create(ShopType);
	~AnimatedShopKeeper();
}

[[link(android)]]
class CharacterColorPage {
	TodoReturn checkColor(int, UnlockType);
	TodoReturn toggleGlow(cocos2d::CCObject*);
	TodoReturn toggleShip(cocos2d::CCObject*);
	TodoReturn colorForIndex(int);
	void onPlayerColor(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	TodoReturn offsetForIndex(int);
	TodoReturn createColorMenu();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn toggleGlowItems(bool);
	TodoReturn updateColorMode(int);
	TodoReturn updateIconColors();
	TodoReturn activeColorForMode(int);
	virtual void registerWithTouchDispatcher();
	virtual bool init();
	TodoReturn show();
	static CharacterColorPage* create();
	void onMode(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	~CharacterColorPage();
}

[[link(android)]]
class ColorChannelSprite {
	TodoReturn updateValues(ColorAction*);
	TodoReturn updateOpacity(float);
	TodoReturn updateBlending(bool);
	TodoReturn updateCopyLabel(int, bool);
	virtual bool init();
	static ColorChannelSprite* create();
	~ColorChannelSprite();
}

[[link(android)]]
class ColorSetupDelegate {
	TodoReturn colorSetupClosed(int);
}

[[link(android)]]
class ConfigureHSVWidget {
	void onResetHSV(cocos2d::CCObject* sender);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateLabels();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateSliders();
	void onToggleSConst(cocos2d::CCObject* sender);
	void onToggleVConst(cocos2d::CCObject* sender);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn createTextInputNode(cocos2d::CCPoint, int);
	bool init(cocos2d::_ccHSVValue, bool, bool);
	static ConfigureHSVWidget* create(cocos2d::_ccHSVValue, bool, bool);
	TodoReturn getHSV(GameObject*, cocos2d::CCArray*, int);
	TodoReturn onClose();
	~ConfigureHSVWidget();
}

[[link(android)]]
class CustomSongDelegate {
	TodoReturn songIDChanged(int);
	TodoReturn getActiveSongID();
}

[[link(android)]]
class EditorOptionsLayer {
	void onButtonRows(cocos2d::CCObject* sender);
	TodoReturn setupOptions();
	void onButtonsPerRow(cocos2d::CCObject* sender);
	virtual bool init();
	static EditorOptionsLayer* create();
	void onClose(cocos2d::CCObject* sender);
	~EditorOptionsLayer();
}

[[link(android)]]
class EffectManagerState {
	~EffectManagerState();
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
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
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
	bool init(char const*);
	static EnhancedGameObject* create(char const*);
	~EnhancedGameObject();
}

[[link(android)]]
class FriendRequestPopup {
	TodoReturn onClosePopup(UploadActionPopup*);
	virtual void keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn uploadActionFailed(int, int);
	TodoReturn uploadActionFinished(int, int);
	TodoReturn loadFromGJFriendRequest(GJFriendRequest*);
	bool init(GJFriendRequest*);
	static FriendRequestPopup* create(GJFriendRequest*);
	void onBlock(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onAccept(cocos2d::CCObject* sender);
	void onRemove(cocos2d::CCObject* sender);
	TodoReturn blockUser();
	~FriendRequestPopup();
}

[[link(android)]]
class FriendsProfilePage {
	virtual void keyBackClicked();
	TodoReturn forceReloadList(UserListType);
	TodoReturn userListChanged(cocos2d::CCArray*, UserListType);
	TodoReturn getUserListFailed(UserListType, GJErrorCode);
	TodoReturn setupUsersBrowser(cocos2d::CCArray*, UserListType);
	TodoReturn getUserListFinished(cocos2d::CCArray*, UserListType);
	virtual void registerWithTouchDispatcher();
	bool init(UserListType);
	static FriendsProfilePage* create(UserListType);
	void onClose(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	void onBlocked(cocos2d::CCObject* sender);
	~FriendsProfilePage();
}

[[link(android)]]
class GameEffectsManager {
	TodoReturn scaleParticle(cocos2d::CCParticleSystemQuad*, float);
	TodoReturn addParticleEffect(cocos2d::CCParticleSystemQuad*, int);
	bool init(PlayLayer*);
	static GameEffectsManager* create(PlayLayer*);
	~GameEffectsManager();
}

[[link(android)]]
class GameOptionsTrigger {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	bool init(char const*);
	static GameOptionsTrigger* create(char const*);
	~GameOptionsTrigger();
}

[[link(android)]]
class GJCommentListLayer {
	bool init(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, bool);
	static GJCommentListLayer* create(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, bool);
	~GJCommentListLayer();
}

[[link(android)]]
class GJDifficultySprite {
	TodoReturn getDifficultyFrame(int, GJDifficultyName);
	TodoReturn updateFeatureState(GJFeatureState);
	TodoReturn updateDifficultyFrame(int, GJDifficultyName);
	TodoReturn updateFeatureStateFromLevel(GJGameLevel*);
	bool init(int, GJDifficultyName);
	static GJDifficultySprite* create(int, GJDifficultyName);
	~GJDifficultySprite();
}

[[link(android)]]
class GJGameLoadingLayer {
	TodoReturn gameLayerDidUnload();
	TodoReturn transitionToLoadingLayer(GJGameLevel*, bool);
	virtual void onEnterTransitionDidFinish();
	bool init(GJGameLevel*, bool);
	static GJGameLoadingLayer* create(GJGameLevel*, bool);
	virtual void onEnter();
	TodoReturn loadLevel();
	~GJGameLoadingLayer();
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
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn scaleButtons(float);
	TodoReturn applyRotation(float);
	TodoReturn loadFromState(GJTransformState&);
	TodoReturn updateButtons(bool, bool);
	TodoReturn refreshControl();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn logCurrentZeroPos();
	void onToggleLockScale(cocos2d::CCObject* sender);
	TodoReturn updateAnchorSprite(cocos2d::CCPoint);
	TodoReturn updateMinMaxPositions();
	TodoReturn calculateRotationOffset();
	virtual bool init();
	static GJTransformControl* create();
	~GJTransformControl();
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
	virtual bool init();
	~KeybindingsManager();
}

[[link(android)]]
class KeyframeGameObject {
	virtual void setOpacity(unsigned char);
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	TodoReturn updateShadowObjects(GJBaseGameLayer*, EditorUI*);
	virtual bool init();
	static KeyframeGameObject* create();
	~KeyframeGameObject();
}

[[link(android)]]
class LevelOptionsLayer2 {
	TodoReturn setupOptions();
	bool init(LevelSettingsObject*);
	static LevelOptionsLayer2* create(LevelSettingsObject*);
	~LevelOptionsLayer2();
}

[[link(android)]]
class LevelSettingsLayer {
	void onLiveEdit(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	TodoReturn showPicker(ColorAction*);
	TodoReturn textChanged(CCTextInputNode*);
	void onSelectFont(cocos2d::CCObject* sender);
	void onSelectMode(cocos2d::CCObject* sender);
	void onShowPicker(cocos2d::CCObject* sender);
	void onSelectSpeed(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	void onGameplayMode(cocos2d::CCObject* sender);
	void onOptionToggle(cocos2d::CCObject* sender);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn selectArtClosed(SelectArtLayer*);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn colorSelectClosed(cocos2d::CCNode*);
	TodoReturn updateColorSprite(ColorChannelSprite*);
	TodoReturn createToggleButton(std::string, SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn updateColorSprites();
	TodoReturn selectSettingClosed(SelectSettingLayer*);
	TodoReturn updateGameplayModeButtons();
	virtual void registerWithTouchDispatcher();
	bool init(LevelSettingsObject*, LevelEditorLayer*);
	void onCol(cocos2d::CCObject* sender);
	static LevelSettingsLayer* create(LevelSettingsObject*, LevelEditorLayer*);
	void onGArt(cocos2d::CCObject* sender);
	void onMode(cocos2d::CCObject* sender);
	void onBGArt(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onFGArt(cocos2d::CCObject* sender);
	void onSpeed(cocos2d::CCObject* sender);
	void onDisable(cocos2d::CCObject* sender);
	~LevelSettingsLayer();
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
	virtual void keyBackClicked();
	TodoReturn getRelevantObjects(cocos2d::CCArray*);
	TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	virtual void registerWithTouchDispatcher();
	bool init(cocos2d::CCArray*, bool);
	static OptionsScrollLayer* create(cocos2d::CCArray*, bool);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn setupList(cocos2d::CCArray*);
	~OptionsScrollLayer();
}

[[link(android)]]
class ParticleGameObject {
	TodoReturn customSetup();
	TodoReturn resetObject();
	virtual void setRotation(float);
	virtual void setRotationX(float);
	virtual void setRotationY(float);
	TodoReturn claimParticle();
	TodoReturn getSaveString(GJBaseGameLayer*);
	virtual void setChildColor(cocos2d::_ccColor3B const&);
	/* unverified signature */
	void setObjectColor(cocos2d::_ccColor3B const&);
	TodoReturn updateParticle();
	TodoReturn unclaimParticle();
	TodoReturn blendModeChanged();
	TodoReturn deactivateObject(bool);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	/* unverified signature */
	void setParticleString(std::string);
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
	virtual bool init();
	static ParticleGameObject* create();
	virtual void setScale(float);
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	~ParticleGameObject();
}

[[link(android)]]
class SecretRewardsLayer {
	void onChestType(cocos2d::CCObject* sender);
	TodoReturn dialogClosed(DialogLayer*);
	TodoReturn getPageColor(int);
	void onSelectItem(cocos2d::CCObject* sender);
	void onSwitchPage(cocos2d::CCObject* sender);
	TodoReturn showDialog01();
	TodoReturn showDialog03();
	void onSpecialItem(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
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
	bool init(bool);
	TodoReturn scene(bool);
	static SecretRewardsLayer* create(bool);
	void onBack(cocos2d::CCObject* sender);
	virtual void onExit();
	void onShop(cocos2d::CCObject* sender);
	TodoReturn goToPage(int);
	TodoReturn showShop(int);
	~SecretRewardsLayer();
}

[[link(android)]]
class SelectPremadeLayer {
	virtual void keyBackClicked();
	void onSelectPremade(cocos2d::CCObject* sender);
	virtual bool init();
	static SelectPremadeLayer* create();
	void onClose(cocos2d::CCObject* sender);
	~SelectPremadeLayer();
}

[[link(android)]]
class SelectSettingLayer {
	TodoReturn idxToValue(SelectSettingType, int);
	TodoReturn valueToIdx(SelectSettingType, int);
	TodoReturn frameForItem(SelectSettingType, int);
	TodoReturn frameForValue(SelectSettingType, int);
	virtual void keyBackClicked();
	TodoReturn getSelectedFrame();
	TodoReturn getSelectedValue();
	bool init(SelectSettingType, int);
	static SelectSettingLayer* create(SelectSettingType, int);
	void onClose(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);
	~SelectSettingLayer();
}

[[link(android)]]
class SelectSFXSortLayer {
	virtual void keyBackClicked();
	bool init(AudioSortType);
	static SelectSFXSortLayer* create(AudioSortType);
	void onClose(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);
	~SelectSFXSortLayer();
}

[[link(android)]]
class SetIDPopupDelegate {
	/* unverified signature */
	void setIDPopupClosed(SetIDPopup*, int);
}

[[link(android)]]
class SetLevelOrderPopup {
	void onOrderButton(cocos2d::CCObject* sender);
	bool init(int, int, int);
	static SetLevelOrderPopup* create(int, int, int);
	~SetLevelOrderPopup();
}

[[link(android)]]
class SetupDashRingPopup {
	bool init(DashRingObject*, cocos2d::CCArray*);
	static SetupDashRingPopup* create(DashRingObject*, cocos2d::CCArray*);
	~SetupDashRingPopup();
}

[[link(android)]]
class SetupGradientPopup {
	void onBlending(cocos2d::CCObject* sender);
	void onPlusButton(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateBlending();
	TodoReturn valueDidChange(int, float);
	TodoReturn updateToggleItem(int, bool);
	TodoReturn updateBlendingLabel();
	TodoReturn updateZLayerButtons();
	TodoReturn determineStartValues();
	TodoReturn updateGradientLabels(bool);
	bool init(GradientTriggerObject*, cocos2d::CCArray*);
	static SetupGradientPopup* create(GradientTriggerObject*, cocos2d::CCArray*);
	void onZLayer(cocos2d::CCObject* sender);
	~SetupGradientPopup();
}

[[link(android)]]
class SetupKeyframePopup {
	void onTimeMode(cocos2d::CCObject* sender);
	void onCustomButton(cocos2d::CCObject* sender);
	TodoReturn valueDidChange(int, float);
	TodoReturn refreshPreviewArt();
	TodoReturn updateTimeModeButtons();
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(KeyframeGameObject*, cocos2d::CCArray*, LevelEditorLayer*);
	static SetupKeyframePopup* create(KeyframeGameObject*, cocos2d::CCArray*, LevelEditorLayer*);
	void onClose(cocos2d::CCObject* sender);
	~SetupKeyframePopup();
}

[[link(android)]]
class SetupTeleportPopup {
	TodoReturn valueDidChange(int, float);
	void onTeleportGravity(cocos2d::CCObject* sender);
	TodoReturn determineStartValues();
	TodoReturn updateDefaultTriggerValues();
	TodoReturn updateTeleportGravityState(int);
	bool init(TeleportPortalObject*, cocos2d::CCArray*, int, bool);
	static SetupTeleportPopup* create(TeleportPortalObject*, cocos2d::CCArray*, int, bool);
	~SetupTeleportPopup();
}

[[link(android)]]
class SetupTimeWarpPopup {
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateTimeWarp();
	TodoReturn updateTimeWarpLabel();
	TodoReturn determineStartValues();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupTimeWarpPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupTimeWarpPopup();
}

[[link(android)]]
class SFXBrowserDelegate {
	TodoReturn sfxBrowserClosed(SFXBrowser*);
}

[[link(android)]]
class SpawnTriggerAction {
	/* unverified signature */
	bool isFinished();
	virtual void step(float);
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
	virtual bool init();
	~AchievementNotifier();
}

[[link(android)]]
class BrowseSmartKeyLayer {
	void onPrefabObject(cocos2d::CCObject* sender);
	TodoReturn updateChanceValues();
	TodoReturn addChanceToSelected(int, bool);
	TodoReturn deletedSelectedItems();
	TodoReturn getAllSelectedBlocks();
	TodoReturn createTemplateObjects();
	bool init(GJSmartTemplate*, std::string);
	static BrowseSmartKeyLayer* create(GJSmartTemplate*, std::string);
	void onBack(cocos2d::CCObject* sender);
	void onButton(cocos2d::CCObject* sender);
	~BrowseSmartKeyLayer();
}

[[link(android)]]
class CCAnimateFrameCache {
	TodoReturn spriteFrameByName(char const*);
	TodoReturn removeSpriteFrames();
	TodoReturn sharedSpriteFrameCache();
	TodoReturn addSpriteFramesWithFile(char const*);
	TodoReturn purgeSharedSpriteFrameCache();
	TodoReturn addCustomSpriteFramesWithFile(char const*);
	virtual bool init();
	TodoReturn addDict(DS_Dictionary*, char const*);
	TodoReturn addDict(cocos2d::CCDictionary*, char const*);
	~CCAnimateFrameCache();
}

[[link(android)]]
class CollisionBlockPopup {
	TodoReturn textChanged(CCTextInputNode*);
	void onNextItemID(cocos2d::CCObject* sender);
	TodoReturn updateItemID();
	void onItemIDArrow(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	void onDynamicBlock(cocos2d::CCObject* sender);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputReturn(CCTextInputNode*);
	TodoReturn updateEditorLabel();
	TodoReturn createToggleButton(std::string, SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();
	TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	bool init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn show();
	static CollisionBlockPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~CollisionBlockPopup();
}

[[link(android)]]
class ColorSelectDelegate {
	TodoReturn colorSelectClosed(cocos2d::CCNode*);
}

[[link(android)]]
class CommunityCreditNode {
	bool init(int, int, int, std::string);
	static CommunityCreditNode* create(int, int, int, std::string);
	~CommunityCreditNode();
}

[[link(android)]]
class ConfigureValuePopup {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	virtual void keyBackClicked();
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn updateTextInputLabel();
	bool init(ConfigureValuePopupDelegate*, float, float, float, std::string, std::string);
	static ConfigureValuePopup* create(ConfigureValuePopupDelegate*, float, float, float, std::string, std::string);
	void onClose(cocos2d::CCObject* sender);
	~ConfigureValuePopup();
}

[[link(android)]]
class CreateParticlePopup {
	TodoReturn getPageMenu(int);
	TodoReturn sliderBegan(Slider*);
	TodoReturn sliderEnded(Slider*);
	TodoReturn textChanged(CCTextInputNode*);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	void onQuickStart(cocos2d::CCObject* sender);
	TodoReturn getPageButton(int);
	void onEmitterMode(cocos2d::CCObject* sender);
	void onMaxEmission(cocos2d::CCObject* sender);
	void onSelectColor(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn getPageSliders(int);
	virtual void keyBackClicked();
	void onCalcEmission(cocos2d::CCObject* sender);
	void onCopySettings(cocos2d::CCObject* sender);
	void onDynamicColor(cocos2d::CCObject* sender);
	void onUniformColor(cocos2d::CCObject* sender);
	void onEndRGBVarSync(cocos2d::CCObject* sender);
	void onPasteSettings(cocos2d::CCObject* sender);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputReturn(CCTextInputNode*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn getPageContainer(int);
	void onDuplicateColor(cocos2d::CCObject* sender);
	void onOrderSensitive(cocos2d::CCObject* sender);
	void onToggleBlending(cocos2d::CCObject* sender);
	TodoReturn colorSelectClosed(cocos2d::CCNode*);
	TodoReturn getPageInputNodes(int);
	void onDurationForever(cocos2d::CCObject* sender);
	void onDynamicRotation(cocos2d::CCObject* sender);
	void onStartRGBVarSync(cocos2d::CCObject* sender);
	TodoReturn toggleGravityMode(bool);
	TodoReturn updateColorSprite(int);
	void onAnimateOnTrigger(cocos2d::CCObject* sender);
	TodoReturn particleValueIsInt(gjParticleValue);
	TodoReturn centerAlignParticle(cocos2d::CCObject*);
	void onAnimateActiveOnly(cocos2d::CCObject* sender);
	TodoReturn updateSliderForType(gjParticleValue);
	TodoReturn createParticleSlider(gjParticleValue, int, bool, cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn maxSliderValueForType(gjParticleValue);
	TodoReturn minSliderValueForType(gjParticleValue);
	TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	TodoReturn titleForParticleValue(gjParticleValue);
	TodoReturn valueForParticleValue(gjParticleValue);
	void onSelectParticleTexture(cocos2d::CCObject* sender);
	void onToggleStartRotationIsDir(cocos2d::CCObject* sender);
	TodoReturn updateParticleValueForType(float, gjParticleValue, cocos2d::CCParticleSystemQuad*);
	void onToggleStartSizeEqualToEnd(cocos2d::CCObject* sender);
	void onToggleStartSpinEqualToEnd(cocos2d::CCObject* sender);
	TodoReturn updateInputNodeStringForType(gjParticleValue);
	void onToggleStartRadiusEqualToEnd(cocos2d::CCObject* sender);
	bool init(ParticleGameObject*, cocos2d::CCArray*, std::string);
	static CreateParticlePopup* create(ParticleGameObject*, cocos2d::CCArray*);
	static CreateParticlePopup* create(ParticleGameObject*, cocos2d::CCArray*, std::string);
	static CreateParticlePopup* create(std::string);
	void onMode(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	virtual void update(float);
	TodoReturn getPage(int);
	void onClose(cocos2d::CCObject* sender);
	void onPosType(cocos2d::CCObject* sender);
	TodoReturn willClose();
	~CreateParticlePopup();
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
	bool init(int, int, int, int, CurrencySpriteType, int, CurrencySpriteType, int, cocos2d::CCPoint, CurrencyRewardType, float, float);
	static CurrencyRewardLayer* create(int, int, int, int, CurrencySpriteType, int, CurrencySpriteType, int, cocos2d::CCPoint, CurrencyRewardType, float, float);
	virtual void update(float);
	~CurrencyRewardLayer();
}

[[link(android)]]
class DemonFilterDelegate {
	TodoReturn demonFilterSelectClosed(int);
}

[[link(android)]]
class EditGameObjectPopup {
	bool init(EffectGameObject*, cocos2d::CCArray*, bool);
	static EditGameObjectPopup* create(EffectGameObject*, cocos2d::CCArray*, bool);
	~EditGameObjectPopup();
}

[[link(android)]]
class EnterEffectInstance {
	TodoReturn animateValue(int, float, float, float, int, float, int);
	TodoReturn loadTransitions(EnterEffectObject*, float);
	TodoReturn updateTransitions(float, GJBaseGameLayer*);
	TodoReturn loadValuesFromObject(EnterEffectObject*);
	TodoReturn getValue(int);
	/* unverified signature */
	void setValue(int, float);
	~EnterEffectInstance();
}

[[link(android)]]
class FMODLevelVisualizer {
	TodoReturn updateVisualizer(float, float, float);
	virtual bool init();
	static FMODLevelVisualizer* create();
	~FMODLevelVisualizer();
}

[[link(android)]]
class FRequestProfilePage {
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn untoggleAll();
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn setupPageInfo(std::string, char const*);
	TodoReturn deleteSelected();
	virtual void keyBackClicked();
	void onSentRequests(cocos2d::CCObject* sender);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	void onDeleteSelected(cocos2d::CCObject* sender);
	TodoReturn updatePageArrows();
	TodoReturn updateLevelsLabel();
	void onToggleAllObjects(cocos2d::CCObject* sender);
	TodoReturn uploadActionFailed(int, int);
	TodoReturn forceReloadRequests(bool);
	TodoReturn loadFRequestsFailed(char const*, GJErrorCode);
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*);
	TodoReturn uploadActionFinished(int, int);
	TodoReturn loadFRequestsFinished(cocos2d::CCArray*, char const*);
	virtual void registerWithTouchDispatcher();
	bool init(bool);
	static FRequestProfilePage* create(bool);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn loadPage(int);
	void onUpdate(cocos2d::CCObject* sender);
	/* unverified signature */
	bool isCorrect(char const*);
	~FRequestProfilePage();
}

[[link(android)]]
class GauntletSelectLayer {
	TodoReturn unblockPlay();
	TodoReturn updateArrows();
	virtual void keyBackClicked();
	TodoReturn setupGauntlets();
	TodoReturn loadLevelsFailed(char const*, int);
	TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	TodoReturn scrollLayerScrolledToPage(BoomScrollLayer*, int);
	TodoReturn scrollLayerWillScrollToPage(BoomScrollLayer*, int);
	bool init(int);
	TodoReturn scene(int);
	static GauntletSelectLayer* create(int);
	void onBack(cocos2d::CCObject* sender);
	virtual void onExit();
	void onInfo(cocos2d::CCObject* sender);
	void onNext(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onPrev(cocos2d::CCObject* sender);
	TodoReturn goToPage(int, bool);
	void onRefresh(cocos2d::CCObject* sender);
	~GauntletSelectLayer();
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
	bool init(std::string);
	static GJSmartBlockPreview* create(std::string);
	TodoReturn addCount(int);
	TodoReturn addChance(int, int);
	~GJSmartBlockPreview();
}

[[link(android)]]
class GJWriteMessagePopup {
	TodoReturn updateBody(std::string);
	TodoReturn updateText(std::string, int);
	void onClearBody(cocos2d::CCObject* sender);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn updateSubject(std::string);
	virtual void keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn textInputReturn(CCTextInputNode*);
	TodoReturn closeMessagePopup(bool);
	TodoReturn uploadMessageFailed(int);
	TodoReturn updateCharCountLabel(int);
	TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	TodoReturn uploadMessageFinished(int);
	virtual void registerWithTouchDispatcher();
	bool init(int, int);
	static GJWriteMessagePopup* create(int, int);
	void onSend(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	~GJWriteMessagePopup();
}

[[link(android)]]
class GraphicsReloadLayer {
	TodoReturn performReload();
	bool init(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool);
	TodoReturn scene(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool);
	static GraphicsReloadLayer* create(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool);
	~GraphicsReloadLayer();
}

[[link(android)]]
class GravityEffectSprite {
	TodoReturn updateSpritesColor(cocos2d::_ccColor3B);
	virtual void draw();
	virtual bool init();
	static GravityEffectSprite* create();
	~GravityEffectSprite();
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
	virtual void step(float);
	TodoReturn reset();
	GroupCommandObject2(GroupCommandObject2 const&);
	GroupCommandObject2();
}

[[link(android)]]
class LevelAreaInnerLayer {
	void onNextFloor(cocos2d::CCObject* sender);
	TodoReturn dialogClosed(DialogLayer*);
	virtual void keyBackClicked();
	TodoReturn tryResumeTowerMusic();
	TodoReturn showFloor1CompleteDialog();
	bool init(bool);
	TodoReturn scene(bool);
	static LevelAreaInnerLayer* create(bool);
	void onBack(cocos2d::CCObject* sender);
	void onDoor(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	TodoReturn playStep1();
	~LevelAreaInnerLayer();
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
	virtual bool init();
	static LevelSettingsObject* create();
	~LevelSettingsObject();
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
	virtual bool init();
	static LoadingCircleSprite* create();
	~LoadingCircleSprite();
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
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn untoggleAll();
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn setupPageInfo(std::string, char const*);
	TodoReturn deleteSelected();
	virtual void keyBackClicked();
	void onSentMessages(cocos2d::CCObject* sender);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	void onDeleteSelected(cocos2d::CCObject* sender);
	TodoReturn updatePageArrows();
	TodoReturn updateLevelsLabel();
	TodoReturn loadMessagesFailed(char const*, GJErrorCode);
	void onToggleAllObjects(cocos2d::CCObject* sender);
	TodoReturn uploadActionFailed(int, int);
	TodoReturn forceReloadMessages(bool);
	TodoReturn loadMessagesFinished(cocos2d::CCArray*, char const*);
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*);
	TodoReturn uploadActionFinished(int, int);
	virtual void registerWithTouchDispatcher();
	bool init(bool);
	static MessagesProfilePage* create(bool);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn loadPage(int);
	void onUpdate(cocos2d::CCObject* sender);
	/* unverified signature */
	bool isCorrect(char const*);
	~MessagesProfilePage();
}

[[link(android)]]
class MultilineBitmapFont {
	virtual void setOpacity(unsigned char);
	TodoReturn initWithFont(char const*, std::string, float, float, cocos2d::CCPoint, int, bool);
	TodoReturn readColorInfo(std::string);
	TodoReturn createWithFont(char const*, std::string, float, float, cocos2d::CCPoint, int, bool);
	TodoReturn stringWithMaxWidth(std::string, float, float);
	TodoReturn moveSpecialDescriptors(int, int);
	~MultilineBitmapFont();
}

[[link(android)]]
class NewgroundsInfoLayer {
	void onSupporter(cocos2d::CCObject* sender);
	void onGuidelines(cocos2d::CCObject* sender);
	void onNewgrounds(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual bool init();
	static NewgroundsInfoLayer* create();
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onArtists(cocos2d::CCObject* sender);
	void onChanges(cocos2d::CCObject* sender);
	~NewgroundsInfoLayer();
}

[[link(android)]]
class NumberInputDelegate {
	TodoReturn numberInputClosed(NumberInputLayer*);
}

[[link(android)]]
class OpacityEffectAction {
	virtual void step(float);
}

[[link(android)]]
class SelectListIconLayer {
	virtual void keyBackClicked();
	bool init(int);
	static SelectListIconLayer* create(int);
	void onClose(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);
	~SelectListIconLayer();
}

[[link(android)]]
class SetupAdvFollowPopup {
	TodoReturn updateMode(int);
	TodoReturn valueDidChange(int, float);
	TodoReturn selectPremadeClosed(SelectPremadeLayer*, int);
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	TodoReturn updateDefaultTriggerValues();
	bool init(AdvancedFollowTriggerObject*, cocos2d::CCArray*);
	static SetupAdvFollowPopup* create(AdvancedFollowTriggerObject*, cocos2d::CCArray*);
	void onMode(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onPremade(cocos2d::CCObject* sender);
	~SetupAdvFollowPopup();
}

[[link(android)]]
class SetupAnimationPopup {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateTargetID();
	void onTargetIDArrow(cocos2d::CCObject* sender);
	TodoReturn updateAnimationID();
	void onAnimationIDArrow(cocos2d::CCObject* sender);
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();
	TodoReturn updateAnimationTextInputLabel();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupAnimationPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupAnimationPopup();
}

[[link(android)]]
class SetupArtSwitchPopup {
	TodoReturn selectArtClosed(SelectArtLayer*);
	bool init(ArtTriggerGameObject*, cocos2d::CCArray*, int);
	void onArt(cocos2d::CCObject* sender);
	static SetupArtSwitchPopup* create(ArtTriggerGameObject*, cocos2d::CCArray*, int);
	~SetupArtSwitchPopup();
}

[[link(android)]]
class SetupBGSpeedTrigger {
	bool init(EffectGameObject*, cocos2d::CCArray*, int);
	static SetupBGSpeedTrigger* create(EffectGameObject*, cocos2d::CCArray*, int);
	~SetupBGSpeedTrigger();
}

[[link(android)]]
class SetupEventLinkPopup {
	void onSelectEvent(cocos2d::CCObject* sender);
	TodoReturn updateEventIDs(std::set<int>&);
	bool init(EventLinkTrigger*, cocos2d::CCArray*);
	static SetupEventLinkPopup* create(EventLinkTrigger*, cocos2d::CCArray*);
	~SetupEventLinkPopup();
}

[[link(android)]]
class SetupTransformPopup {
	bool init(TransformTriggerGameObject*, cocos2d::CCArray*);
	static SetupTransformPopup* create(TransformTriggerGameObject*, cocos2d::CCArray*);
	~SetupTransformPopup();
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
	virtual void keyBackClicked();
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
	virtual void registerWithTouchDispatcher();
	virtual bool init();
	static AccountRegisterLayer* create();
	void onClose(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);
	TodoReturn toggleUI(bool);
	TodoReturn validUser(std::string);
	~AccountRegisterLayer();
}

[[link(android)]]
class ArtTriggerGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	bool init(char const*);
	static ArtTriggerGameObject* create(char const*);
	~ArtTriggerGameObject();
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
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn resetCheckpoint();
	TodoReturn triggerActivated(float);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	TodoReturn setupCustomSprites(std::string);
	TodoReturn updateSyncedAnimation(float, int);
	TodoReturn updateCheckpointSpriteVisibility();
	virtual bool init();
	static CheckpointGameObject* create();
	~CheckpointGameObject();
}

[[link(android)]]
class CommunityCreditsPage {
	void onSwitchPage(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void registerWithTouchDispatcher();
	virtual bool init();
	TodoReturn show();
	static CommunityCreditsPage* create();
	void onClose(cocos2d::CCObject* sender);
	TodoReturn goToPage(int);
	~CommunityCreditsPage();
}

[[link(android)]]
class CustomizeObjectLayer {
	void onLiveEdit(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onEditColor(cocos2d::CCObject* sender);
	TodoReturn textChanged(CCTextInputNode*);
	void onBreakApart(cocos2d::CCObject* sender);
	void onSelectMode(cocos2d::CCObject* sender);
	TodoReturn getActiveMode(bool);
	void onSelectColor(cocos2d::CCObject* sender);
	TodoReturn recreateLayer();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn toggleVisible();
	TodoReturn getButtonByTag(int);
	TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::_ccHSVValue);
	virtual void keyBackClicked();
	TodoReturn updateSelected(int);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn colorSetupClosed(int);
	TodoReturn updateHSVButtons();
	TodoReturn colorSelectClosed(cocos2d::CCNode*);
	TodoReturn highlightSelected(ButtonSprite*);
	TodoReturn updateColorSprite();
	TodoReturn createToggleButton(std::string, SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	void onNextColorChannel(cocos2d::CCObject* sender);
	TodoReturn updateChannelLabel(int);
	TodoReturn updateKerningLabel();
	void onUpdateCustomColor(cocos2d::CCObject* sender);
	TodoReturn determineStartValues();
	TodoReturn updateCurrentSelection();
	TodoReturn updateCustomColorLabels();
	bool init(GameObject*, cocos2d::CCArray*);
	void onHSV(cocos2d::CCObject* sender);
	static CustomizeObjectLayer* create(GameObject*, cocos2d::CCArray*);
	TodoReturn getHSV();
	void onCopy(cocos2d::CCObject* sender);
	void onClear(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onBrowse(cocos2d::CCObject* sender);
	~CustomizeObjectLayer();
}

[[link(android)]]
class EndTriggerGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	virtual bool init();
	static EndTriggerGameObject* create();
	~EndTriggerGameObject();
}

[[link(android)]]
class FLAlertLayerProtocol {
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class ForceBlockGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	TodoReturn calculateForceToTarget(GameObject*);
	bool init(char const*);
	static ForceBlockGameObject* create(char const*);
	~ForceBlockGameObject();
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
	void onUpdateGroupID(cocos2d::CCObject* sender);
	TodoReturn updateXModLabel();
	TodoReturn updateYModLabel();
	void onUpdateGroupID2(cocos2d::CCObject* sender);
	TodoReturn sliderXModChanged(cocos2d::CCObject*);
	TodoReturn sliderYModChanged(cocos2d::CCObject*);
	TodoReturn updateTargetGroupID();
	TodoReturn determineStartValues();
	TodoReturn updateTargetGroupID2();
	TodoReturn updateTextInputLabel();
	TodoReturn updateTextInputLabel2();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static GJFollowCommandLayer* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~GJFollowCommandLayer();
}

[[link(android)]]
class GJMultiplayerManager {
	TodoReturn addComment(std::string, int);
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	/* unverified signature */
	bool isDLActive(char const*);
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
	virtual bool init();
	TodoReturn handleIt(bool, std::string, std::string, GJHttpType);
	TodoReturn exitLobby(int);
	TodoReturn joinLobby(int);
	~GJMultiplayerManager();
}

[[link(android)]]
class GJRotateCommandLayer {
	TodoReturn textChanged(CCTextInputNode*);
	void onEasingRate(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	void onLockRotation(cocos2d::CCObject* sender);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	void onUpdateGroupID(cocos2d::CCObject* sender);
	void onFollowRotation(cocos2d::CCObject* sender);
	void onUpdateGroupID2(cocos2d::CCObject* sender);
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
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static GJRotateCommandLayer* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	void onEasing(cocos2d::CCObject* sender);
	~GJRotateCommandLayer();
}

[[link(android)]]
class GJSpecialColorSelect {
	void onSelectColor(cocos2d::CCObject* sender);
	TodoReturn getButtonByTag(int);
	virtual void keyBackClicked();
	TodoReturn textForColorIdx(int);
	TodoReturn highlightSelected(ButtonSprite*);
	bool init(int, GJSpecialColorSelectDelegate*, ColorSelectType);
	static GJSpecialColorSelect* create(int, GJSpecialColorSelectDelegate*, ColorSelectType);
	void onClose(cocos2d::CCObject* sender);
	~GJSpecialColorSelect();
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
	bool init(MusicDownloadDelegate*);
	static MusicDelegateHandler* create(MusicDownloadDelegate*);
	~MusicDelegateHandler();
}

[[link(android)]]
class MusicDownloadManager {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn deleteSong(int);
	TodoReturn firstSetup();
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	/* unverified signature */
	bool isDLActive(char const*);
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
	/* unverified signature */
	bool isResourceSFX(int);
	TodoReturn getMusicObject(int);
	TodoReturn getSongInfoKey(int);
	/* unverified signature */
	bool isResourceSong(int);
	TodoReturn responseToDict(std::string, char const*);
	TodoReturn createSongsInfo(std::string);
	TodoReturn getAllMusicTags(OptionsObjectDelegate*);
	TodoReturn getSongPriority();
	TodoReturn handleItDelayed(bool, std::string, std::string, GJHttpType);
	/* unverified signature */
	bool isSFXDownloaded(int);
	TodoReturn parseSFXLibrary();
	TodoReturn clearUnusedSongs();
	TodoReturn filterMusicByTag(int, cocos2d::CCArray*);
	TodoReturn getAllSFXObjects(bool);
	/* unverified signature */
	bool isSongDownloaded(int);
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
	/* unverified signature */
	bool isSFXLibraryLoaded();
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
	/* unverified signature */
	bool isMusicLibraryLoaded();
	TodoReturn limitDownloadedSongs();
	TodoReturn loadSongInfoFinished(SongInfoObject*);
	TodoReturn filterMusicByArtistID(int, cocos2d::CCArray*);
	TodoReturn getSFXFolderPathForID(int, bool);
	TodoReturn ProcessHttpGetRequest(std::string, std::string, cocos2d::SEL_HttpResponse, int, int);
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
	/* unverified signature */
	bool isRunningActionForSongID(int);
	TodoReturn generateResourceAssetList();
	TodoReturn removeMusicDownloadDelegate(MusicDownloadDelegate*);
	TodoReturn onDownloadSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onGetCustomContentURLCompleted(std::string, std::string);
	TodoReturn onTryUpdateSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onDownloadMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onTryUpdateMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	virtual bool init();
	TodoReturn showTOS(FLAlertLayerProtocol*);
	TodoReturn handleIt(bool, std::string, std::string, GJHttpType);
	TodoReturn clearSong(int);
	TodoReturn deleteSFX(int);
	~MusicDownloadManager();
}

[[link(android)]]
class ParentalOptionsLayer {
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn countForPage(int);
	TodoReturn layerForPage(int);
	TodoReturn nextPosition(int);
	virtual void keyBackClicked();
	TodoReturn objectsForPage(int);
	TodoReturn incrementCountForPage(int);
	virtual bool init();
	static ParentalOptionsLayer* create();
	void onInfo(cocos2d::CCObject* sender);
	TodoReturn infoKey(int);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn pageKey(int);
	TodoReturn goToPage(int);
	TodoReturn layerKey(int);
	void onToggle(cocos2d::CCObject* sender);
	TodoReturn addToggle(char const*, char const*, char const*);
	TodoReturn objectKey(int);
	~ParentalOptionsLayer();
}

[[link(android)]]
class ParticlePreviewLayer {
	TodoReturn preVisitWithClippingRect(cocos2d::CCRect);
	virtual void draw();
	bool init(cocos2d::CCParticleSystemQuad*);
	virtual void visit();
	static ParticlePreviewLayer* create(cocos2d::CCParticleSystemQuad*);
	TodoReturn postVisit();
	~ParticlePreviewLayer();
}

[[link(android)]]
class SetTextPopupDelegate {
	/* unverified signature */
	void setTextPopupClosed(SetTextPopup*, std::string);
}

[[link(android)]]
class SetupCameraEdgePopup {
	TodoReturn textChanged(CCTextInputNode*);
	void onCameraEdge(cocos2d::CCObject* sender);
	void onUnlockEdge(cocos2d::CCObject* sender);
	TodoReturn updateTargetID();
	void onTargetIDArrow(cocos2d::CCObject* sender);
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();
	bool init(CameraTriggerGameObject*, cocos2d::CCArray*);
	static SetupCameraEdgePopup* create(CameraTriggerGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupCameraEdgePopup();
}

[[link(android)]]
class SetupCameraModePopup {
	void onUnboundMode(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateCameraEasing();
	TodoReturn updateCameraPadding();
	TodoReturn determineStartValues();
	void onEditCameraSettings(cocos2d::CCObject* sender);
	TodoReturn updateItemVisibility();
	TodoReturn updateCameraEasingLabel();
	TodoReturn updateCameraPaddingLabel();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupCameraModePopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupCameraModePopup();
}

[[link(android)]]
class SetupCheckpointPopup {
	bool init(CheckpointGameObject*, cocos2d::CCArray*);
	static SetupCheckpointPopup* create(CheckpointGameObject*, cocos2d::CCArray*);
	~SetupCheckpointPopup();
}

[[link(android)]]
class SetupForceBlockPopup {
	TodoReturn valueDidChange(int, float);
	bool init(ForceBlockGameObject*, cocos2d::CCArray*);
	static SetupForceBlockPopup* create(ForceBlockGameObject*, cocos2d::CCArray*);
	~SetupForceBlockPopup();
}

[[link(android)]]
class SetupGravityModPopup {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateValue();
	TodoReturn updateItemID();
	void onItemIDArrow(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	virtual void keyBackClicked();
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn updateValueLabel();
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();
	bool init(EffectGameObject*, cocos2d::CCArray*, bool);
	TodoReturn show();
	static SetupGravityModPopup* create(EffectGameObject*, cocos2d::CCArray*, bool);
	void onClose(cocos2d::CCObject* sender);
	~SetupGravityModPopup();
}

[[link(android)]]
class SetupSmartBlockLayer {
	void onCreateAll(cocos2d::CCObject* sender);
	void onDontDelete(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	void onAllowFlipping(cocos2d::CCObject* sender);
	void onAllowRotation(cocos2d::CCObject* sender);
	void onIgnoreCorners(cocos2d::CCObject* sender);
	void onPasteTemplate(cocos2d::CCObject* sender);
	void onReferenceOnly(cocos2d::CCObject* sender);
	void onSelectPremade(cocos2d::CCObject* sender);
	TodoReturn selectArtClosed(SelectArtLayer*);
	void onCreateTemplate(cocos2d::CCObject* sender);
	void onSelectTemplate(cocos2d::CCObject* sender);
	void onNearbyReference(cocos2d::CCObject* sender);
	TodoReturn determineStartValues();
	bool init(SmartGameObject*, cocos2d::CCArray*);
	TodoReturn show();
	static SetupSmartBlockLayer* create(SmartGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	void onCreate(cocos2d::CCObject* sender);
	~SetupSmartBlockLayer();
}

[[link(android)]]
class SFXTriggerGameObject {
	TodoReturn getSFXRefID();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn getUniqueSFXID();
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	bool init(char const*);
	static SFXTriggerGameObject* create(char const*);
	~SFXTriggerGameObject();
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
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setRotation(float);
	/* unverified signature */
	void setStartPos(cocos2d::CCPoint);
	/* unverified signature */
	void setRotation2(float);
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn getTeleportXOff(cocos2d::CCNode*);
	TodoReturn removeFromGroup(int);
	TodoReturn removeFromGroup2(int);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	/* unverified signature */
	void setPositionOverride(cocos2d::CCPoint);
	/* unverified signature */
	void setStartPosOverride(cocos2d::CCPoint);
	bool init(char const*, bool);
	static TeleportPortalObject* create(char const*, bool);
	~TeleportPortalObject();
}

[[link(android)]]
class UISettingsGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	virtual bool init();
	static UISettingsGameObject* create();
	~UISettingsGameObject();
}

[[link(android)]]
class UploadActionDelegate {
	TodoReturn uploadActionFailed(int, int);
	TodoReturn uploadActionFinished(int, int);
}

[[link(android)]]
class CCMenuItemSpriteExtra {
	virtual void unselected();
	/* unverified signature */
	void setSizeMult(float);
	TodoReturn useAnimationType(MenuAnimationType);
	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, SEL_MenuHandler);
	static CCMenuItemSpriteExtra* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, SEL_MenuHandler);
	virtual void activate();
	virtual void selected();
	~CCMenuItemSpriteExtra();
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
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn registerTouch();
	virtual void keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn recordingDidStop();
	TodoReturn doClearGuidelines();
	void onClearGuidelines(cocos2d::CCObject* sender);
	TodoReturn getMergedRecordString(std::string, std::string);
	virtual void registerWithTouchDispatcher();
	bool init(CustomSongDelegate*, AudioGuidelinesType);
	virtual void keyUp(cocos2d::enumKeyCodes);
	static CreateGuidelinesLayer* create(CustomSongDelegate*, AudioGuidelinesType);
	void onInfo(cocos2d::CCObject* sender);
	void onStop(cocos2d::CCObject* sender);
	virtual void update(float);
	virtual void keyDown(cocos2d::enumKeyCodes);
	void onClose(cocos2d::CCObject* sender);
	void onRecord(cocos2d::CCObject* sender);
	TodoReturn playMusic();
	~CreateGuidelinesLayer();
}

[[link(android)]]
class EnhancedTriggerObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	bool init(char const*);
	static EnhancedTriggerObject* create(char const*);
	~EnhancedTriggerObject();
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
	virtual void draw();
	virtual bool init();
	GJLocalLevelScoreCell(char const*, float, float);
	~GJLocalLevelScoreCell();
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
	void onUpdateGroupID(cocos2d::CCObject* sender);
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
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static GJPFollowCommandLayer* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~GJPFollowCommandLayer();
}

[[link(android)]]
class GradientTriggerObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	virtual bool init();
	static GradientTriggerObject* create();
	~GradientTriggerObject();
}

[[link(android)]]
class ItemTriggerGameObject {
	TodoReturn customSetup();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	bool init(char const*);
	static ItemTriggerGameObject* create(char const*);
	~ItemTriggerGameObject();
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
	void onApplyFPS(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn countForPage(int);
	TodoReturn layerForPage(int);
	TodoReturn nextPosition(int);
	virtual void keyBackClicked();
	TodoReturn objectsForPage(int);
	TodoReturn updateFPSButtons();
	TodoReturn incrementCountForPage(int);
	virtual bool init();
	static MoreVideoOptionsLayer* create();
	void onInfo(cocos2d::CCObject* sender);
	TodoReturn infoKey(int);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn pageKey(int);
	TodoReturn goToPage(int);
	TodoReturn layerKey(int);
	void onToggle(cocos2d::CCObject* sender);
	TodoReturn addToggle(char const*, char const*, char const*);
	TodoReturn objectKey(int);
	~MoreVideoOptionsLayer();
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
	virtual bool init();
	static PlayerFireBoostSprite* create();
	~PlayerFireBoostSprite();
}

[[link(android)]]
class RandTriggerGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn getTotalChance();
	TodoReturn getRandomGroupID();
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	virtual bool init();
	static RandTriggerGameObject* create();
	~RandTriggerGameObject();
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
	bool init(EnterEffectObject*, cocos2d::CCArray*);
	static SetupAreaTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);
	~SetupAreaTriggerPopup();
}

[[link(android)]]
class SetupCameraGuidePopup {
	bool init(CameraTriggerGameObject*, cocos2d::CCArray*);
	static SetupCameraGuidePopup* create(CameraTriggerGameObject*, cocos2d::CCArray*);
	~SetupCameraGuidePopup();
}

[[link(android)]]
class SetupEnterEffectPopup {
	void onEnterType(cocos2d::CCObject* sender);
	TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::_ccHSVValue);
	TodoReturn valueDidChange(int, float);
	TodoReturn updateHSVButton();
	TodoReturn updateInputNode(int, float);
	TodoReturn updateInputValue(int, float&);
	TodoReturn determineStartValues();
	void onNextFreeEnterChannel(cocos2d::CCObject* sender);
	void onNextFreeEnterEffectID(cocos2d::CCObject* sender);
	TodoReturn triggerSliderValueFromValue(int, float);
	TodoReturn triggerValueFromSliderValue(int, float);
	bool init(EnterEffectObject*, cocos2d::CCArray*, int);
	void onHSV(cocos2d::CCObject* sender);
	static SetupEnterEffectPopup* create(EnterEffectObject*, cocos2d::CCArray*, int);
	void onClose(cocos2d::CCObject* sender);
	~SetupEnterEffectPopup();
}

[[link(android)]]
class SetupMoveCommandPopup {
	TodoReturn valueDidChange(int, float);
	TodoReturn updateInputNode(int, float);
	TodoReturn updateInputValue(int, float&);
	TodoReturn updateControlVisibility();
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	TodoReturn triggerSliderValueFromValue(int, float);
	TodoReturn triggerValueFromSliderValue(int, float);
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupMoveCommandPopup* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupMoveCommandPopup();
}

[[link(android)]]
class SetupRandTriggerPopup {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateChance();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateTargetID();
	void onTargetIDArrow(cocos2d::CCObject* sender);
	TodoReturn updateTargetID2();
	void onTargetID2Arrow(cocos2d::CCObject* sender);
	TodoReturn updateChanceLabel(bool);
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();
	TodoReturn updateTextInputLabel2();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupRandTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupRandTriggerPopup();
}

[[link(android)]]
class SetupSongTriggerPopup {
	TodoReturn onPlayback(SongInfoObject*);
	TodoReturn pageChanged();
	TodoReturn updateLength();
	TodoReturn valueDidChange(int, float);
	void onResetSongTime(cocos2d::CCObject* sender);
	void onSavePlaybackPos(cocos2d::CCObject* sender);
	TodoReturn updateApplyPrepare(bool);
	TodoReturn updateSongTimeSlider();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupSongTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupSongTriggerPopup();
}

[[link(android)]]
class SetupStopTriggerPopup {
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupStopTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupStopTriggerPopup();
}

[[link(android)]]
class SetupTouchTogglePopup {
	void onHoldMode(cocos2d::CCObject* sender);
	void onTouchMode(cocos2d::CCObject* sender);
	TodoReturn textChanged(CCTextInputNode*);
	void onControlMode(cocos2d::CCObject* sender);
	TodoReturn updateTargetID();
	void onDualTouchMode(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupTouchTogglePopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupTouchTogglePopup();
}

[[link(android)]]
class SetupZoomTriggerPopup {
	TodoReturn determineStartValues();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupZoomTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupZoomTriggerPopup();
}

[[link(android)]]
class SongTriggerGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	bool init(char const*);
	static SongTriggerGameObject* create(char const*);
	~SongTriggerGameObject();
}

[[link(android)]]
class SpecialAnimGameObject {
	TodoReturn resetObject();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn updateMainColor(cocos2d::_ccColor3B const&);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	TodoReturn updateSecondaryColor(cocos2d::_ccColor3B const&);
	TodoReturn updateSyncedAnimation(float, int);
	bool init(char const*);
	static SpecialAnimGameObject* create(char const*);
	~SpecialAnimGameObject();
}

[[link(android)]]
class TableViewCellDelegate {
	TodoReturn getSelectedCellIdx();
	TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	TodoReturn shouldSnapToSelected();
}

[[link(android)]]
class UIObjectSettingsPopup {
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(UISettingsGameObject*, cocos2d::CCArray*);
	static UIObjectSettingsPopup* create(UISettingsGameObject*, cocos2d::CCArray*);
	~UIObjectSettingsPopup();
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
	void onSelectTab(cocos2d::CCObject* sender);
	TodoReturn selectColor(cocos2d::_ccColor3B);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn getColorValue();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateOpacity();
	virtual void keyBackClicked();
	TodoReturn toggleControls(bool);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn closeColorSelect(cocos2d::CCObject*);
	TodoReturn createWithObject(EffectGameObject*);
	TodoReturn updateColorLabel();
	TodoReturn updateColorValue();
	TodoReturn colorValueChanged(cocos2d::_ccColor3B);
	TodoReturn createWithActions(ColorAction*, ColorAction*);
	TodoReturn createToggleButton(std::string, SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn determineStartValues();
	bool init(ColorAction*, ColorAction*, EffectGameObject*);
	TodoReturn show();
	static ColorSelectLiveOverlay* create(ColorAction*, ColorAction*, EffectGameObject*);
	~ColorSelectLiveOverlay();
}

[[link(android)]]
class CountTriggerGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	bool init(char const*);
	static CountTriggerGameObject* create(char const*);
	~CountTriggerGameObject();
}

[[link(android)]]
class CurrencyRewardDelegate {
	TodoReturn currencyWillExit(CurrencyRewardLayer*);
}

[[link(android)]]
class DemonFilterSelectLayer {
	TodoReturn selectRating(cocos2d::CCObject*);
	virtual void keyBackClicked();
	virtual bool init();
	static DemonFilterSelectLayer* create();
	void onClose(cocos2d::CCObject* sender);
	~DemonFilterSelectLayer();
}

[[link(android)]]
class GJAccountLoginDelegate {
	TodoReturn loginAccountFailed(AccountError);
	TodoReturn loginAccountFinished(int, int);
}

[[link(android)]]
class GJAccountSettingsLayer {
	virtual void keyBackClicked();
	TodoReturn textInputReturn(CCTextInputNode*);
	void onCommentSetting(cocos2d::CCObject* sender);
	void onFriendRequests(cocos2d::CCObject* sender);
	void onMessageSetting(cocos2d::CCObject* sender);
	TodoReturn updateScoreValues();
	TodoReturn createToggleButton(std::string, SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float);
	TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	bool init(int);
	static GJAccountSettingsLayer* create(int);
	void onClose(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	~GJAccountSettingsLayer();
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
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupAnimSettingsPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupAnimSettingsPopup();
}

[[link(android)]]
class SetupAudioTriggerPopup {
	void onProxMode(cocos2d::CCObject* sender);
	TodoReturn valueDidChange(int, float);
	TodoReturn addTimeControls(int, float);
	TodoReturn addProxVolControls(int);
	TodoReturn updateSpecialGroup();
	~SetupAudioTriggerPopup();
}

[[link(android)]]
class SetupCameraRotatePopup {
	TodoReturn textChanged(CCTextInputNode*);
	void onEasingRate(cocos2d::CCObject* sender);
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
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupCameraRotatePopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	void onEasing(cocos2d::CCObject* sender);
	~SetupCameraRotatePopup();
}

[[link(android)]]
class SetupCountTriggerPopup {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateItemID();
	void onEnableGroup(cocos2d::CCObject* sender);
	void onItemIDArrow(cocos2d::CCObject* sender);
	TodoReturn updateTargetID();
	void onMultiActivate(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	TodoReturn updateTargetCount();
	void onTargetCountArrow(cocos2d::CCObject* sender);
	TodoReturn determineStartValues();
	TodoReturn updateItemIDInputLabel();
	TodoReturn updateTargetIDInputLabel();
	TodoReturn updateCountTextInputLabel();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupCountTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupCountTriggerPopup();
}

[[link(android)]]
class SetupEnterTriggerPopup {
	void onEnterType(cocos2d::CCObject* sender);
	TodoReturn determineStartValues();
	bool init(EnterEffectObject*, cocos2d::CCArray*);
	static SetupEnterTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);
	~SetupEnterTriggerPopup();
}

[[link(android)]]
class SetupInstantCountPopup {
	void onCountType(cocos2d::CCObject* sender);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateItemID();
	void onEnableGroup(cocos2d::CCObject* sender);
	TodoReturn updateTargetID();
	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onTargetID2Arrow(cocos2d::CCObject* sender);
	TodoReturn updateTargetCount();
	void onTargetCountArrow(cocos2d::CCObject* sender);
	TodoReturn determineStartValues();
	TodoReturn updateItemIDInputLabel();
	TodoReturn updateTargetIDInputLabel();
	TodoReturn updateCountTextInputLabel();
	bool init(CountTriggerGameObject*, cocos2d::CCArray*);
	static SetupInstantCountPopup* create(CountTriggerGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupInstantCountPopup();
}

[[link(android)]]
class SetupKeyframeAnimPopup {
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupKeyframeAnimPopup* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupKeyframeAnimPopup();
}

[[link(android)]]
class SetupObjectTogglePopup {
	TodoReturn valueDidChange(int, float);
	bool init(EffectGameObject*, cocos2d::CCArray*, bool);
	static SetupObjectTogglePopup* create(EffectGameObject*, cocos2d::CCArray*, bool);
	void onClose(cocos2d::CCObject* sender);
	~SetupObjectTogglePopup();
}

[[link(android)]]
class SetupResetTriggerPopup {
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupResetTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupResetTriggerPopup();
}

[[link(android)]]
class SetupShaderEffectPopup {
	TodoReturn setupBulge();
	TodoReturn setupPinch();
	TodoReturn setupSepia();
	TodoReturn setupGlitch();
	TodoReturn toggleGroup(int, bool);
	void onResetColors(cocos2d::CCObject* sender);
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
	bool init(EffectGameObject*, cocos2d::CCArray*, int);
	static SetupShaderEffectPopup* create(EffectGameObject*, cocos2d::CCArray*, int);
	void onClose(cocos2d::CCObject* sender);
	void onZLayer(cocos2d::CCObject* sender);
	~SetupShaderEffectPopup();
}

[[link(android)]]
class SetupStaticCameraPopup {
	TodoReturn updateState();
	TodoReturn valueDidChange(int, float);
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(CameraTriggerGameObject*, cocos2d::CCArray*);
	static SetupStaticCameraPopup* create(CameraTriggerGameObject*, cocos2d::CCArray*);
	~SetupStaticCameraPopup();
}

[[link(android)]]
class SetupTimerTriggerPopup {
	bool init(TimerTriggerGameObject*, cocos2d::CCArray*);
	static SetupTimerTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);
	~SetupTimerTriggerPopup();
}

[[link(android)]]
class SpawnTriggerGameObject {
	TodoReturn changeRemap(int, int, bool);
	TodoReturn removeRemap(int, int);
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn updateRemapKeys(gd::vector<int> const&);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	virtual bool init();
	static SpawnTriggerGameObject* create();
	TodoReturn addRemap(int, int);
	~SpawnTriggerGameObject();
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
	~SpriteAnimationManager();
}

[[link(android)]]
class TimerTriggerGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	bool init(char const*);
	static TimerTriggerGameObject* create(char const*);
	~TimerTriggerGameObject();
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
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	bool init(char const*);
	static CameraTriggerGameObject* create(char const*);
	~CameraTriggerGameObject();
}

[[link(android)]]
class ChanceTriggerGameObject {
	TodoReturn editChanceObject(int, int);
	TodoReturn revertChanceRemap();
	TodoReturn remapChanceObjects(std::unordered_map<int, int, std::hash<int>, std::equal_to<int>, std::allocator<std::pair<int const, int> > > const*);
	bool init(char const*);
	~ChanceTriggerGameObject();
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
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	virtual bool init();
	static ObjectControlGameObject* create();
	~ObjectControlGameObject();
}

[[link(android)]]
class PlayerControlGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	virtual bool init();
	static PlayerControlGameObject* create();
	~PlayerControlGameObject();
}

[[link(android)]]
class SetupCameraRotatePopup2 {
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupCameraRotatePopup2* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupCameraRotatePopup2();
}

[[link(android)]]
class SetupObjectControlPopup {
	bool init(ObjectControlGameObject*, cocos2d::CCArray*);
	static SetupObjectControlPopup* create(ObjectControlGameObject*, cocos2d::CCArray*);
	~SetupObjectControlPopup();
}

[[link(android)]]
class SetupObjectOptionsPopup {
	void onDontFade(cocos2d::CCObject* sender);
	void onIceBlock(cocos2d::CCObject* sender);
	void onPassable(cocos2d::CCObject* sender);
	void onDontBoost(cocos2d::CCObject* sender);
	void onDontEnter(cocos2d::CCObject* sender);
	void onGripSlope(cocos2d::CCObject* sender);
	void onNonStickX(cocos2d::CCObject* sender);
	void onNonStickY(cocos2d::CCObject* sender);
	void onAlwaysHide(cocos2d::CCObject* sender);
	void onDontBoostX(cocos2d::CCObject* sender);
	void onHighDetail(cocos2d::CCObject* sender);
	void onNoParticle(cocos2d::CCObject* sender);
	void onDisableGlow(cocos2d::CCObject* sender);
	void onExtraSticky(cocos2d::CCObject* sender);
	void onHideEffects(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	void onCenterEffect(cocos2d::CCObject* sender);
	void onNoAudioScale(cocos2d::CCObject* sender);
	void onDisableObject(cocos2d::CCObject* sender);
	void onApplyScaleStick(cocos2d::CCObject* sender);
	void onToggleAreaParent(cocos2d::CCObject* sender);
	void onExtendedCollision(cocos2d::CCObject* sender);
	void onSinglePlayerTouch(cocos2d::CCObject* sender);
	void onToggleGroupParent(cocos2d::CCObject* sender);
	TodoReturn determineStartValues();
	bool init(GameObject*, cocos2d::CCArray*, SetGroupIDLayer*);
	TodoReturn show();
	static SetupObjectOptionsPopup* create(GameObject*, cocos2d::CCArray*, SetGroupIDLayer*);
	void onClose(cocos2d::CCObject* sender);
	void onReverse(cocos2d::CCObject* sender);
	~SetupObjectOptionsPopup();
}

[[link(android)]]
class SetupPickupTriggerPopup {
	TodoReturn updateState();
	void onPlusButton(cocos2d::CCObject* sender);
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupPickupTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupPickupTriggerPopup();
}

[[link(android)]]
class SetupPlatformerEndPopup {
	bool init(EndTriggerGameObject*, cocos2d::CCArray*);
	static SetupPlatformerEndPopup* create(EndTriggerGameObject*, cocos2d::CCArray*);
	~SetupPlatformerEndPopup();
}

[[link(android)]]
class SetupPlayerControlPopup {
	bool init(PlayerControlGameObject*, cocos2d::CCArray*);
	static SetupPlayerControlPopup* create(PlayerControlGameObject*, cocos2d::CCArray*);
	~SetupPlayerControlPopup();
}

[[link(android)]]
class SetupRotateCommandPopup {
	TodoReturn valueDidChange(int, float);
	TodoReturn updateInputNode(int, float);
	void onInfiniteDuration(cocos2d::CCObject* sender);
	TodoReturn updateControlVisibility();
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	TodoReturn triggerSliderValueFromValue(int, float);
	TodoReturn triggerValueFromSliderValue(int, float);
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupRotateCommandPopup* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupRotateCommandPopup();
}

[[link(android)]]
class SetupSmartTemplateLayer {
	TodoReturn textChanged(CCTextInputNode*);
	virtual void keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	bool init(GJSmartTemplate*);
	static SetupSmartTemplateLayer* create(GJSmartTemplate*);
	void onBack(cocos2d::CCObject* sender);
	void onClick(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	~SetupSmartTemplateLayer();
}

[[link(android)]]
class SetupSpawnParticlePopup {
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupSpawnParticlePopup* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupSpawnParticlePopup();
}

[[link(android)]]
class ShareLevelSettingsLayer {
	void onCopyable(cocos2d::CCObject* sender);
	void onPassword(cocos2d::CCObject* sender);
	void onUnlisted(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	void onEditPassword(cocos2d::CCObject* sender);
	TodoReturn numberInputClosed(NumberInputLayer*);
	TodoReturn updateSettingsState();
	void onUnlistedFriendsOnly(cocos2d::CCObject* sender);
	bool init(GJGameLevel*);
	static ShareLevelSettingsLayer* create(GJGameLevel*);
	void onClose(cocos2d::CCObject* sender);
	~ShareLevelSettingsLayer();
}

[[link(android)]]
class SpawnParticleGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	virtual bool init();
	static SpawnParticleGameObject* create();
	~SpawnParticleGameObject();
}

[[link(android)]]
class AdvancedFollowEditObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	bool init(char const*);
	static AdvancedFollowEditObject* create(char const*);
	~AdvancedFollowEditObject();
}

[[link(android)]]
class AudioLineGuideGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	virtual bool init();
	static AudioLineGuideGameObject* create();
	~AudioLineGuideGameObject();
}

[[link(android)]]
class BrowseSmartTemplateLayer {
	TodoReturn createDots();
	TodoReturn updateDots();
	TodoReturn createPrefab(std::string, int);
	virtual void keyBackClicked();
	TodoReturn addObjectToPage(cocos2d::CCObject*, int);
	void onTemplateObject(cocos2d::CCObject* sender);
	TodoReturn addPrefabMenuItem(SmartPrefabResult, int);
	bool init(GJSmartTemplate*, SmartBrowseFilter);
	static BrowseSmartTemplateLayer* create(GJSmartTemplate*, SmartBrowseFilter);
	void onBack(cocos2d::CCObject* sender);
	void onClick(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn goToPage(int);
	TodoReturn baseSetup();
	~BrowseSmartTemplateLayer();
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
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	TodoReturn updateStartValues();
	TodoReturn updateGameplayRotation();
	virtual bool init();
	static RotateGameplayGameObject* create();
	~RotateGameplayGameObject();
}

[[link(android)]]
class SetupAudioLineGuidePopup {
	TodoReturn selectSettingClosed(SelectSettingLayer*);
	bool init(AudioLineGuideGameObject*, cocos2d::CCArray*);
	static SetupAudioLineGuidePopup* create(AudioLineGuideGameObject*, cocos2d::CCArray*);
	void onSpeed(cocos2d::CCObject* sender);
	~SetupAudioLineGuidePopup();
}

[[link(android)]]
class SetupCameraOffsetTrigger {
	TodoReturn textChanged(CCTextInputNode*);
	void onEasingRate(cocos2d::CCObject* sender);
	void onTargetMode(cocos2d::CCObject* sender);
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
	bool init(CameraTriggerGameObject*, cocos2d::CCArray*);
	static SetupCameraOffsetTrigger* create(CameraTriggerGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	void onEasing(cocos2d::CCObject* sender);
	~SetupCameraOffsetTrigger();
}

[[link(android)]]
class SetupGameplayOffsetPopup {
	void onDefaultValues(cocos2d::CCObject* sender);
	TodoReturn updateInputNode(int, float);
	TodoReturn updateInputValue(int, float&);
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	TodoReturn triggerSliderValueFromValue(int, float);
	TodoReturn triggerValueFromSliderValue(int, float);
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupGameplayOffsetPopup* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupGameplayOffsetPopup();
}

[[link(android)]]
class SetupGravityTriggerPopup {
	TodoReturn valueDidChange(int, float);
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupGravityTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupGravityTriggerPopup();
}

[[link(android)]]
class SetupInteractObjectPopup {
	TodoReturn updateItems();
	void onPlusButton(cocos2d::CCObject* sender);
	TodoReturn valueDidChange(int, float);
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupInteractObjectPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupInteractObjectPopup();
}

[[link(android)]]
class SetupObjectOptions2Popup {
	void onPlusButton(cocos2d::CCObject* sender);
	bool init(GameObject*, cocos2d::CCArray*);
	static SetupObjectOptions2Popup* create(GameObject*, cocos2d::CCArray*);
	~SetupObjectOptions2Popup();
}

[[link(android)]]
class SetupOptionsTriggerPopup {
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(GameOptionsTrigger*, cocos2d::CCArray*);
	static SetupOptionsTriggerPopup* create(GameOptionsTrigger*, cocos2d::CCArray*);
	TodoReturn addOption(int, std::string);
	~SetupOptionsTriggerPopup();
}

[[link(android)]]
class SetupRandAdvTriggerPopup {
	void onAddChance(cocos2d::CCObject* sender);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn removeGroupID(int);
	TodoReturn addChanceToObject(RandTriggerGameObject*, int, int);
	void onRemoveFromGroup(cocos2d::CCObject* sender);
	TodoReturn callRemoveFromGroup(float);
	TodoReturn updateGroupIDButtons();
	TodoReturn removeGroupIDFromObject(RandTriggerGameObject*, int);
	bool init(RandTriggerGameObject*, cocos2d::CCArray*);
	static SetupRandAdvTriggerPopup* create(RandTriggerGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn addChance(int, int);
	~SetupRandAdvTriggerPopup();
}

[[link(android)]]
class SetupRotateGameplayPopup {
	void onPlusButton(cocos2d::CCObject* sender);
	TodoReturn valueDidChange(int, float);
	bool init(RotateGameplayGameObject*, cocos2d::CCArray*);
	static SetupRotateGameplayPopup* create(RotateGameplayGameObject*, cocos2d::CCArray*);
	~SetupRotateGameplayPopup();
}

[[link(android)]]
class TriggerControlGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	TodoReturn updateTriggerControlFrame();
	bool init(char const*);
	static TriggerControlGameObject* create(char const*);
	~TriggerControlGameObject();
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
	virtual bool init();
	virtual void visit();
	static GJSmartBlockPreviewSprite* create();
	~GJSmartBlockPreviewSprite();
}

[[link(android)]]
class KeyframeAnimTriggerObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	virtual bool init();
	static KeyframeAnimTriggerObject* create();
	~KeyframeAnimTriggerObject();
}

[[link(android)]]
class SequenceTriggerGameObject {
	TodoReturn resetObject();
	TodoReturn deleteTarget(int);
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn reorderTarget(int, bool);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	TodoReturn updateSequenceTotalCount();
	virtual bool init();
	static SequenceTriggerGameObject* create();
	TodoReturn addCount(int, int);
	TodoReturn addTarget(int, int);
	~SequenceTriggerGameObject();
}

[[link(android)]]
class SetupAreaAnimTriggerPopup {
	TodoReturn valueDidChange(int, float);
	TodoReturn updateTargetIDLabel();
	void onDeactivateAnimValue(cocos2d::CCObject* sender);
	TodoReturn updateDefaultTriggerValues();
	TodoReturn createValueControlAdvancedAnim(int, std::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float, float, int, int, GJInputStyle);
	bool init(EnterEffectObject*, cocos2d::CCArray*, int);
	static SetupAreaAnimTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*, int);
	~SetupAreaAnimTriggerPopup();
}

[[link(android)]]
class SetupAreaFadeTriggerPopup {
	bool init(EnterEffectObject*, cocos2d::CCArray*);
	static SetupAreaFadeTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);
	~SetupAreaFadeTriggerPopup();
}

[[link(android)]]
class SetupAreaMoveTriggerPopup {
	TodoReturn getModeValues(int, int&, bool&, bool&);
	TodoReturn valueDidChange(int, float);
	void onSpecialTarget(cocos2d::CCObject* sender);
	TodoReturn updateInputNode(int, float);
	TodoReturn updateInputValue(int, float&);
	void onNextFreeEffectID(cocos2d::CCObject* sender);
	TodoReturn addAreaDefaultControls(int);
	TodoReturn updateEnterTargetIDState();
	TodoReturn updateDefaultTriggerValues();
	TodoReturn triggerSliderValueFromValue(int, float);
	TodoReturn triggerValueFromSliderValue(int, float);
	bool init(EnterEffectObject*, cocos2d::CCArray*);
	static SetupAreaMoveTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);
	void onMode(cocos2d::CCObject* sender);
	~SetupAreaMoveTriggerPopup();
}

[[link(android)]]
class SetupAreaTintTriggerPopup {
	TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::_ccHSVValue);
	TodoReturn valueDidChange(int, float);
	TodoReturn updateHSVButton();
	TodoReturn determineStartValues();
	bool init(EnterEffectObject*, cocos2d::CCArray*);
	void onHSV(cocos2d::CCObject* sender);
	static SetupAreaTintTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupAreaTintTriggerPopup();
}

[[link(android)]]
class SetupItemEditTriggerPopup {
	void onOpButton(cocos2d::CCObject* sender);
	TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int);
	TodoReturn valueDidChange(int, float);
	TodoReturn updateFormulaLabel();
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(ItemTriggerGameObject*, cocos2d::CCArray*);
	static SetupItemEditTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);
	~SetupItemEditTriggerPopup();
}

[[link(android)]]
class SetupSequenceTriggerPopup {
	void onAddChance(cocos2d::CCObject* sender);
	void onChangeOrder(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender);
	TodoReturn updateGroupIDButtons();
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(SequenceTriggerGameObject*);
	static SetupSequenceTriggerPopup* create(SequenceTriggerGameObject*);
	void onSelect(cocos2d::CCObject* sender);
	~SetupSequenceTriggerPopup();
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
	void onTargetP1(cocos2d::CCObject* sender);
	void onTargetP2(cocos2d::CCObject* sender);
	void onTargetPP(cocos2d::CCObject* sender);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateItemID();
	void onEnableGroup(cocos2d::CCObject* sender);
	void onItemIDArrow(cocos2d::CCObject* sender);
	TodoReturn updateItemID2();
	void onItemID2Arrow(cocos2d::CCObject* sender);
	TodoReturn updateTargetID();
	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onActivateOnExit(cocos2d::CCObject* sender);
	TodoReturn determineStartValues();
	TodoReturn updateItemIDInputLabel();
	TodoReturn updateItemID2InputLabel();
	TodoReturn updateTargetIDInputLabel();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupCollisionTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupCollisionTriggerPopup();
}

[[link(android)]]
class TransformTriggerGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	bool init(char const*);
	static TransformTriggerGameObject* create(char const*);
	~TransformTriggerGameObject();
}

[[link(android)]]
class UpdateAccountSettingsPopup {
	virtual void keyBackClicked();
	TodoReturn updateSettingsFailed();
	TodoReturn updateSettingsFinished();
	bool init(GJAccountSettingsLayer*, int, int, int, std::string, std::string, std::string);
	static UpdateAccountSettingsPopup* create(GJAccountSettingsLayer*, int, int, int, std::string, std::string, std::string);
	void onClose(cocos2d::CCObject* sender);
	~UpdateAccountSettingsPopup();
}

[[link(android)]]
class AdvancedFollowTriggerObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<std::string>&, gd::vector<void*>&);
	TodoReturn getAdvancedFollowID();
	bool init(char const*);
	static AdvancedFollowTriggerObject* create(char const*);
	~AdvancedFollowTriggerObject();
}

[[link(android)]]
class ConfigureValuePopupDelegate {
	TodoReturn valuePopupClosed(ConfigureValuePopup*, float);
}

[[link(android)]]
class SetupAdvFollowRetargetPopup {
	TodoReturn valueDidChange(int, float);
	TodoReturn updateDefaultTriggerValues();
	bool init(AdvancedFollowEditObject*, cocos2d::CCArray*);
	static SetupAdvFollowRetargetPopup* create(AdvancedFollowEditObject*, cocos2d::CCArray*);
	~SetupAdvFollowRetargetPopup();
}

[[link(android)]]
class SetupAreaRotateTriggerPopup {
	bool init(EnterEffectObject*, cocos2d::CCArray*);
	static SetupAreaRotateTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);
	~SetupAreaRotateTriggerPopup();
}

[[link(android)]]
class SetupTimerEventTriggerPopup {
	bool init(TimerTriggerGameObject*, cocos2d::CCArray*);
	static SetupTimerEventTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);
	~SetupTimerEventTriggerPopup();
}

[[link(android)]]
class CustomizeObjectSettingsPopup {
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(GameObject*, cocos2d::CCArray*, CustomizeObjectLayer*);
	static CustomizeObjectSettingsPopup* create(GameObject*, cocos2d::CCArray*, CustomizeObjectLayer*);
	void onClose(cocos2d::CCObject* sender);
	~CustomizeObjectSettingsPopup();
}

[[link(android)]]
class GJSpecialColorSelectDelegate {
	TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
}

[[link(android)]]
class SetupItemCompareTriggerPopup {
	void onOpButton(cocos2d::CCObject* sender);
	TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int);
	TodoReturn valueDidChange(int, float);
	TodoReturn updateFormulaLabel();
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(ItemTriggerGameObject*, cocos2d::CCArray*);
	static SetupItemCompareTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);
	~SetupItemCompareTriggerPopup();
}

[[link(android)]]
class SetupTimerControlTriggerPopup {
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(TimerTriggerGameObject*, cocos2d::CCArray*);
	static SetupTimerControlTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);
	~SetupTimerControlTriggerPopup();
}

// [[link(android)]]
// class tk::spline {
// 	TodoReturn set_points(gd::vector<double> const&, gd::vector<double> const&, tk::spline::spline_type);
// 	TodoReturn set_boundary(tk::spline::bd_type, double, tk::spline::bd_type, double);
// 	TodoReturn make_monotonic();
// 	TodoReturn set_coeffs_from_b();
// 	~spline();
// 	TodoReturn find_closest(double);
// 	TodoReturn deriv(int, double);
// 	TodoReturn solve(double, bool);
// 	TodoReturn operator()(double);
// }

[[link(android)]]
class SetupAdvFollowEditPhysicsPopup {
	TodoReturn valueDidChange(int, float);
	bool init(AdvancedFollowEditObject*, cocos2d::CCArray*);
	static SetupAdvFollowEditPhysicsPopup* create(AdvancedFollowEditObject*, cocos2d::CCArray*);
	~SetupAdvFollowEditPhysicsPopup();
}

[[link(android)]]
class SetupAreaTransformTriggerPopup {
	bool init(EnterEffectObject*, cocos2d::CCArray*);
	static SetupAreaTransformTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);
	~SetupAreaTransformTriggerPopup();
}

[[link(android)]]
class SetupCollisionStateTriggerPopup {
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupCollisionStateTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupCollisionStateTriggerPopup();
}

[[link(android)]]
class SetupPersistentItemTriggerPopup {
	bool init(ItemTriggerGameObject*, cocos2d::CCArray*);
	static SetupPersistentItemTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);
	~SetupPersistentItemTriggerPopup();
}

[[link(android)]]
class SetupInstantCollisionTriggerPopup {
	TodoReturn valueDidChange(int, float);
	TodoReturn updateSpecialNodes();
	TodoReturn updateDefaultTriggerValues();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupInstantCollisionTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupInstantCollisionTriggerPopup();
}

[[link(android)]]
class MD5 {
	MD5Transform(unsigned long*, unsigned char*);
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
	/* unverified signature */
	void setCallback(FMOD_RESULT (*)(FMOD_CHANNELCONTROL*, FMOD_CHANNELCONTROL_TYPE, FMOD_CHANNELCONTROL_CALLBACK_TYPE, void*, void*));
	virtual void setUserData(void*);
	TodoReturn addFadePoint(unsigned long long, float);
	/* unverified signature */
	void setVolumeRamp(bool);
	virtual void stop();
	TodoReturn addDSP(int, FMOD::DSP*);
	TodoReturn getDSP(int, FMOD::DSP**);
	TodoReturn getPitch(float*);
	/* unverified signature */
	void setDelay(unsigned long long, unsigned long long, bool);
	/* unverified signature */
	void setPitch(float);
	TodoReturn getPaused(bool*);
	TodoReturn getVolume(float*);
	/* unverified signature */
	void setPaused(bool);
	/* unverified signature */
	void setVolume(float);
}

[[link(android)]]
class FMOD::DSP {
	TodoReturn getMeteringInfo(FMOD_DSP_METERING_INFO*, FMOD_DSP_METERING_INFO*);
	/* unverified signature */
	void setParameterBool(int, bool);
	/* unverified signature */
	void setParameterFloat(int, float);
	/* unverified signature */
	void setMeteringEnabled(bool, bool);
}

[[link(android)]]
class FMOD::Sound {
	TodoReturn getOpenState(FMOD_OPENSTATE*, unsigned int*, bool*, bool*);
	/* unverified signature */
	void setLoopCount(int);
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
	/* unverified signature */
	void setDSPBufferSize(unsigned int, int);
	TodoReturn getSoftwareFormat(int*, FMOD_SPEAKERMODE*, int*);
	/* unverified signature */
	void setSoftwareFormat(int, FMOD_SPEAKERMODE, int);
	TodoReturn createChannelGroup(char const*, FMOD::ChannelGroup**);
	TodoReturn getStreamBufferSize(unsigned int*, unsigned int*);
	bool init(int, unsigned int, void*);
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
	/* unverified signature */
	void setPosition(unsigned int, unsigned int);
	/* unverified signature */
	void setLoopCount(int);
	TodoReturn getLoopPoints(unsigned int*, unsigned int, unsigned int*, unsigned int);
	/* unverified signature */
	void setLoopPoints(unsigned int, unsigned int, unsigned int, unsigned int);
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
class OBB2D {
	TodoReturn computeAxes();
	TodoReturn orderCorners();
	TodoReturn overlaps1Way(OBB2D*);
	TodoReturn getBoundingRect();
	TodoReturn calculateWithCenter(cocos2d::CCPoint, float, float, float);
	bool init(cocos2d::CCPoint, float, float, float);
	static OBB2D* create(cocos2d::CCPoint, float, float, float);
	TodoReturn overlaps(OBB2D*);
	~OBB2D();
}

[[link(android)]]
class rtsha1 {
	TodoReturn toHexString(unsigned char const*, char*);
	TodoReturn calc(void const*, int, unsigned char*);
}

[[link(android)]]
class Slider {
	TodoReturn hideGroove(bool);
	/* unverified signature */
	void setRotated(bool);
	TodoReturn sliderBegan();
	TodoReturn sliderEnded();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn disableTouch();
	TodoReturn enableSlider();
	/* unverified signature */
	void setMaxOffset(float);
	TodoReturn disableSlider();
	TodoReturn getLiveDragging();
	/* unverified signature */
	void setLiveDragging(bool);
	/* unverified signature */
	void setBarVisibility(bool);
	bool init(cocos2d::CCNode*, SEL_MenuHandler, char const*, char const*, char const*, char const*, float);
	static Slider* create(cocos2d::CCNode*, SEL_MenuHandler);
	static Slider* create(cocos2d::CCNode*, SEL_MenuHandler, float);
	static Slider* create(cocos2d::CCNode*, SEL_MenuHandler, char const*, char const*, char const*, char const*, float);
	TodoReturn getThumb();
	TodoReturn getValue();
	/* unverified signature */
	void setValue(float);
	TodoReturn updateBar();
	~Slider();
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
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	void onDeleteCheck(cocos2d::CCObject* sender);
	TodoReturn editorPlaytest(bool);
	TodoReturn handleKeypress(cocos2d::enumKeyCodes, bool);
	virtual void keyBackClicked();
	TodoReturn updateDualMode(bool);
	TodoReturn resetAllButtons();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn enableEditorMode();
	TodoReturn resetUINodeState();
	TodoReturn processUINodeTouch(GJUITouchEvent, int, cocos2d::CCPoint, GJUINode*);
	/* unverified signature */
	bool isJumpButtonPressed(bool);
	TodoReturn processUINodesTouch(GJUITouchEvent, cocos2d::CCTouch*);
	TodoReturn toggleMenuVisibility(bool);
	TodoReturn togglePlatformerMode(bool);
	TodoReturn toggleCheckpointsMenu(bool);
	TodoReturn updateUINodeVisibility(bool);
	virtual void registerWithTouchDispatcher();
	virtual void draw();
	bool init(GJBaseGameLayer*);
	virtual void keyUp(cocos2d::enumKeyCodes);
	static UILayer* create(GJBaseGameLayer*);
	virtual void keyDown(cocos2d::enumKeyCodes);
	void onCheck(cocos2d::CCObject* sender);
	void onPause(cocos2d::CCObject* sender);
	~UILayer();
}

[[link(android)]]
class URLCell {
	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(CCURLObject*);
	virtual void draw();
	virtual bool init();
	void onURL(cocos2d::CCObject* sender);
	URLCell(char const*, float, float);
	~URLCell();
}

[[link(android)]]
class EditorUI {
	TodoReturn createGlow();
	TodoReturn createLoop();
	TodoReturn editObject(cocos2d::CCObject*);
	TodoReturn getModeBtn(char const*, int);
	TodoReturn moveObject(GameObject*, cocos2d::CCPoint);
	void onPlayback(cocos2d::CCObject* sender);
	void onPlaytest(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
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
	void onCopyState(cocos2d::CCObject* sender);
	void onDeleteAll(cocos2d::CCObject* sender);
	void onDuplicate(cocos2d::CCObject* sender);
	void onEditColor(cocos2d::CCObject* sender);
	void onGoToLayer(cocos2d::CCObject* sender);
	void onGroupDown(cocos2d::CCObject* sender);
	void onLockLayer(cocos2d::CCObject* sender);
	virtual void scrollWheel(float, float);
	TodoReturn toggleSwipe(cocos2d::CCObject*);
	TodoReturn alignObjects(cocos2d::CCArray*, bool);
	TodoReturn angleChanged(float);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
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
	void onDeleteInfo(cocos2d::CCObject* sender);
	void onFindObject(cocos2d::CCObject* sender);
	void onPasteColor(cocos2d::CCObject* sender);
	void onPasteState(cocos2d::CCObject* sender);
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
	void onColorFilter(cocos2d::CCObject* sender);
	void onDeselectAll(cocos2d::CCObject* sender);
	void onGroupSticky(cocos2d::CCObject* sender);
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
	virtual void keyBackClicked();
	TodoReturn moveForCommand(EditCommand);
	TodoReturn moveObjectCall(EditCommand);
	TodoReturn moveObjectCall(cocos2d::CCObject*);
	void onCreateButton(cocos2d::CCObject* sender);
	TodoReturn onCreateObject(int);
	void onPasteInPlace(cocos2d::CCObject* sender);
	void onStopPlaytest(cocos2d::CCObject* sender);
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
	TodoReturn getSimpleButton(std::string, SEL_MenuHandler, cocos2d::CCMenu*);
	TodoReturn getSpriteButton(char const*, SEL_MenuHandler, cocos2d::CCMenu*, float);
	TodoReturn getSpriteButton(char const*, SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	TodoReturn getSpriteButton(cocos2d::CCSprite*, SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	void onGoToBaseLayer(cocos2d::CCObject* sender);
	void onGroupIDFilter(cocos2d::CCObject* sender);
	void onNewCustomItem(cocos2d::CCObject* sender);
	void onUngroupSticky(cocos2d::CCObject* sender);
	TodoReturn playtestStopped();
	TodoReturn setupCreateMenu();
	TodoReturn setupDeleteMenu();
	TodoReturn smartTypeForKey(int);
	TodoReturn transformObject(GameObject*, EditCommand, bool);
	TodoReturn anchorPointMoved(cocos2d::CCPoint);
	TodoReturn angleChangeBegin();
	TodoReturn angleChangeEnded();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn convertToBaseKey(int);
	TodoReturn createUndoObject(UndoCommand, bool);
	TodoReturn editButtonUsable();
	TodoReturn getSmartNeighbor(SmartGameObject*, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*);
	TodoReturn getTransformNode();
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onDeleteStartPos(cocos2d::CCObject* sender);
	void onSelectBuildTab(cocos2d::CCObject* sender);
	TodoReturn onTargetIDChange(int);
	TodoReturn playerTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn playerTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn scaleChangeBegin();
	TodoReturn scaleChangeEnded();
	/* unverified signature */
	void setIDPopupClosed(SetIDPopup*, int);
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
	void onDeleteCustomItem(cocos2d::CCObject* sender);
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
	/* unverified signature */
	bool isSpecialSnapObject(int);
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
	void onDeleteSelectedType(cocos2d::CCObject* sender);
	void onResetSpecialFilter(cocos2d::CCObject* sender);
	void onUpdateDeleteFilter(cocos2d::CCObject* sender);
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
	TodoReturn getCreateMenuItemButton(cocos2d::CCSprite*, SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	TodoReturn resetObjectEditorValues(cocos2d::CCArray*);
	TodoReturn transformScaleXYChanged(float, float);
	TodoReturn updateSpecialUIElements();
	TodoReturn activateTransformControl(cocos2d::CCObject*);
	/* unverified signature */
	bool isLiveColorSelectTrigger(GameObject*);
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
	virtual void registerWithTouchDispatcher();
	TodoReturn deleteSmartBlocksFromObjects(cocos2d::CCArray*);
	TodoReturn checkDiffAfterTransformAnchor(cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn createSmartObjectsFromTemplate(GJSmartTemplate*, cocos2d::CCArray*, bool, bool, bool, bool);
	TodoReturn showLiveColorSelectForModeSpecial(int);
	virtual void draw();
	bool init(LevelEditorLayer*);
	TodoReturn getUI();
	virtual void keyUp(cocos2d::enumKeyCodes);
	static EditorUI* create(LevelEditorLayer*);
	void onCopy(cocos2d::CCObject* sender);
	TodoReturn showUI(bool);
	TodoReturn zoomIn(cocos2d::CCObject*);
	TodoReturn editHSV();
	TodoReturn getXMin(int);
	virtual void keyDown(cocos2d::enumKeyCodes);
	void onPaste(cocos2d::CCObject* sender);
	void onPause(cocos2d::CCObject* sender);
	TodoReturn resetUI();
	TodoReturn zoomOut(cocos2d::CCObject*);
	TodoReturn onCreate();
	void onDelete(cocos2d::CCObject* sender);
	TodoReturn editColor();
	TodoReturn editGroup(cocos2d::CCObject*);
	TodoReturn getButton(char const*, int, SEL_MenuHandler, cocos2d::CCMenu*);
	void onGroupUp(cocos2d::CCObject* sender);
	TodoReturn selectAll();
	~EditorUI();
}

[[link(android)]]
class GameCell {
	TodoReturn updateBGColor(int);
	TodoReturn loadFromString(std::string);
	virtual void draw();
	virtual bool init();
	void onTouch(cocos2d::CCObject* sender);
	GameCell(char const*, float, float);
	~GameCell();
}

[[link(android)]]
class GJUINode {
	TodoReturn getOpacity();
	TodoReturn resetState();
	virtual void setOpacity(unsigned char);
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
	virtual void draw();
	bool init(UIButtonConfig&);
	static GJUINode* create(UIButtonConfig&);
	TodoReturn touchTest(cocos2d::CCPoint);
	~GJUINode();
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
	virtual bool init();
	TodoReturn load();
	TodoReturn save();
	TodoReturn setup();
	TodoReturn saveData(DS_Dictionary*, std::string);
	TodoReturn saveGMTo(std::string);
	TodoReturn firstLoad();
	~GManager();
}

// [[link(android)]]
// class internal::band_matrix {
// 	TodoReturn saved_diag(int);
// 	TodoReturn lu_decompose();
// 	TodoReturn resize(int, int, int);
// 	TodoReturn lu_solve(gd::vector<double> const&, bool);
// 	TodoReturn band_matrix(int, int, int);
// 	TodoReturn operator()(int, int);
// 	TodoReturn dim();
// 	TodoReturn l_solve(gd::vector<double> const&);
// 	TodoReturn r_solve(gd::vector<double> const&);
// }

// [[link(android)]]
// class internal {
// 	TodoReturn solve_cubic(double, double, double, double, int);
// 	TodoReturn solve_linear(double, double);
// 	TodoReturn solve_quadratic(double, double, double, int);
// 	TodoReturn get_eps();
// }

[[link(android)]]
class ListCell {
	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(cocos2d::CCObject*, int, int, int);
	virtual void draw();
	virtual bool init();
	ListCell(char const*, float, float);
	~ListCell();
}

[[link(android)]]
class SongCell {
	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(SongObject*);
	virtual void draw();
	virtual bool init();
	void onClick(cocos2d::CCObject* sender);
	SongCell(char const*, float, float);
	~SongCell();
}

[[link(android)]]
class TextArea {
	TodoReturn finishFade();
	virtual void setOpacity(unsigned char);
	TodoReturn colorAllLabels(cocos2d::_ccColor3B);
	TodoReturn fadeInCharacters(float, float);
	TodoReturn fadeOutAndRemove();
	/* unverified signature */
	void setIgnoreColorCode(bool);
	TodoReturn colorAllCharactersTo(cocos2d::_ccColor3B);
	TodoReturn stopAllCharacterActions();
	virtual void draw();
	bool init(std::string, char const*, float, float, cocos2d::CCPoint, float, bool);
	static TextArea* create(std::string, char const*, float, float, cocos2d::CCPoint, float, bool);
	TodoReturn fadeIn(float, bool);
	virtual void update(float);
	TodoReturn fadeOut(float);
	TodoReturn hideAll();
	TodoReturn showAll();
	/* unverified signature */
	void setString(std::string);
	~TextArea();
}

[[link(android)]]
class TOSPopup {
	virtual void keyBackClicked();
	virtual bool init();
	void onTOS(cocos2d::CCObject* sender);
	static TOSPopup* create();
	void onClose(cocos2d::CCObject* sender);
	void onPrivacy(cocos2d::CCObject* sender);
	~TOSPopup();
}

[[link(android)]]
class AdToolbox {
	/* unverified signature */
	bool isShowingAd();
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
	virtual bool init();
	static GJComment* create(cocos2d::CCDictionary*);
	static GJComment* create();
	~GJComment();
}

[[link(android)]]
class GJMapPack {
	TodoReturn completedMaps();
	TodoReturn parsePackColors(std::string, std::string);
	TodoReturn parsePackLevels(std::string);
	TodoReturn hasCompletedMapPack();
	virtual bool init();
	static GJMapPack* create(cocos2d::CCDictionary*);
	static GJMapPack* create();
	TodoReturn totalMaps();
	~GJMapPack();
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
	virtual void draw();
	bool init(int);
	static GJMGLayer* create(int);
	~GJMGLayer();
}

[[link(android)]]
class __gnu_cxx::recursive_init_error {
	~recursive_init_error();
}

[[link(android)]]
class __gnu_cxx {
	TodoReturn __verbose_terminate_handler();
}

[[link(android)]]
class InfoLayer {
	void onNextPage(cocos2d::CCObject* sender);
	void onOriginal(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onLevelInfo(cocos2d::CCObject* sender);
	TodoReturn getAccountID();
	TodoReturn reloadWindow();
	TodoReturn confirmReport(cocos2d::CCObject*);
	void onCopyLevelID(cocos2d::CCObject* sender);
	void onGetComments(cocos2d::CCObject* sender);
	TodoReturn setupPageInfo(std::string, char const*);
	virtual void keyBackClicked();
	TodoReturn setupLevelInfo();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn getSpriteButton(char const*, SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint);
	void onRefreshComments(cocos2d::CCObject* sender);
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
	virtual void registerWithTouchDispatcher();
	bool init(GJGameLevel*, GJUserScore*, GJLevelList*);
	TodoReturn show();
	TodoReturn getID();
	static InfoLayer* create(GJGameLevel*, GJUserScore*, GJLevelList*);
	void onMore(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn loadPage(int, bool);
	TodoReturn getRealID();
	/* unverified signature */
	bool isCorrect(char const*);
	void onComment(cocos2d::CCObject* sender);
	void onSimilar(cocos2d::CCObject* sender);
	~InfoLayer();
}

[[link(android)]]
class LevelCell {
	TodoReturn updateToggle();
	TodoReturn loadFromLevel(GJGameLevel*);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);
	TodoReturn updateCellMode(int);
	TodoReturn loadLocalLevelCell();
	TodoReturn loadCustomLevelCell();
	virtual void draw();
	virtual bool init();
	static LevelCell* create(float, float);
	void onClick(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);
	LevelCell(char const*, float, float);
	~LevelCell();
}

[[link(android)]]
class LevelPage {
	void onTheTower(cocos2d::CCObject* sender);
	void onMoreGames(cocos2d::CCObject* sender);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn dialogClosed(DialogLayer*);
	void onSecretDoor(cocos2d::CCObject* sender);
	TodoReturn addSecretCoin();
	TodoReturn addSecretDoor();
	TodoReturn playCoinEffect();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn updateDynamicPage(GJGameLevel*);
	virtual void registerWithTouchDispatcher();
	bool init(GJGameLevel*);
	static LevelPage* create(GJGameLevel*);
	void onInfo(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	TodoReturn playStep2();
	TodoReturn playStep3();
	~LevelPage();
}

[[link(android)]]
class MenuLayer {
	void onFacebook(cocos2d::CCObject* sender);
	void onEveryplay(cocos2d::CCObject* sender);
	void onMoreGames(cocos2d::CCObject* sender);
	void onMyProfile(cocos2d::CCObject* sender);
	TodoReturn openOptions(bool);
	void onFreeLevels(cocos2d::CCObject* sender);
	void onGameCenter(cocos2d::CCObject* sender);
	void onNewgrounds(cocos2d::CCObject* sender);
	void onFullVersion(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	void onAchievements(cocos2d::CCObject* sender);
	TodoReturn showGCQuestion();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn firstNetworkTest();
	TodoReturn onOptionsInstant();
	void onGooglePlayGames(cocos2d::CCObject* sender);
	TodoReturn showMeltdownPromo();
	TodoReturn googlePlaySignedIn();
	TodoReturn videoOptionsClosed();
	TodoReturn videoOptionsOpened();
	TodoReturn updateUserProfileButton();
	TodoReturn syncPlatformAchievements(float);
	virtual bool init();
	TodoReturn scene(bool);
	void onPlay(cocos2d::CCObject* sender);
	void onQuit(cocos2d::CCObject* sender);
	TodoReturn endGame();
	virtual void keyDown(cocos2d::enumKeyCodes);
	void onDaily(cocos2d::CCObject* sender);
	void onStats(cocos2d::CCObject* sender);
	TodoReturn showTOS();
	void onGarage(cocos2d::CCObject* sender);
	void onRobTop(cocos2d::CCObject* sender);
	void onTwitch(cocos2d::CCObject* sender);
	void onCreator(cocos2d::CCObject* sender);
	void onDiscord(cocos2d::CCObject* sender);
	void onOptions(cocos2d::CCObject* sender);
	void onTrailer(cocos2d::CCObject* sender);
	void onTwitter(cocos2d::CCObject* sender);
	void onYouTube(cocos2d::CCObject* sender);
	TodoReturn tryShowAd(float);
	TodoReturn willClose();
	~MenuLayer();
}

[[link(android)]]
class NodePoint {
	bool init(cocos2d::CCPoint);
	static NodePoint* create(cocos2d::CCPoint);
	~NodePoint();
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
	/* unverified signature */
	bool isGameplayActive();
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
	TodoReturn loadActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&);
	TodoReturn optimizeOpacityGroups();
	TodoReturn playEndAnimationToPos(cocos2d::CCPoint);
	TodoReturn saveActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&);
	TodoReturn scanActiveSaveObjects();
	TodoReturn startRecordingDelayed();
	TodoReturn toggleMusicInPractice();
	TodoReturn updateEffectPositions();
	TodoReturn applyCustomEnterEffect(GameObject*, bool);
	TodoReturn loadDynamicSaveObjects(gd::vector<SavedObjectStateRef>&);
	TodoReturn saveDynamicSaveObjects(gd::vector<SavedObjectStateRef>&);
	TodoReturn scanDynamicSaveObjects();
	TodoReturn toggleGroundVisibility(bool);
	TodoReturn circleWaveWillBeRemoved(CCCircleWave*);
	TodoReturn manualUpdateObjectColors(GameObject*);
	TodoReturn processLoadedMoveActions();
	TodoReturn toggleBGEffectVisibility(bool);
	virtual void onEnterTransitionDidFinish();
	TodoReturn activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&);
	TodoReturn prepareCreateObjectsFromSetup(std::string&);
	TodoReturn processCreateObjectsFromSetup();
	TodoReturn createObjectsFromSetupFinished();
	TodoReturn playPlatformerEndAnimationToPos(cocos2d::CCPoint, bool);
	bool init(GJGameLevel*, bool, bool);
	TodoReturn scene(GJGameLevel*, bool, bool);
	static PlayLayer* create(GJGameLevel*, bool, bool);
	virtual void onExit();
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
	~PlayLayer();
}

[[link(android)]]
class PointNode {
	bool init(cocos2d::CCPoint);
	static PointNode* create(cocos2d::CCPoint);
	~PointNode();
}

[[link(android)]]
class StatsCell {
	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(StatsObject*);
	TodoReturn getTitleFromKey(char const*);
	virtual void draw();
	virtual bool init();
	StatsCell(char const*, float, float);
	~StatsCell();
}

[[link(android)]]
class TableView {
	TodoReturn claimTouch(cocos2d::CCTouch*);
	TodoReturn reloadData();
	virtual void scrollWheel(float, float);
	TodoReturn touchFinish(cocos2d::CCTouch*);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn cellForTouch(cocos2d::CCTouch*);
	TodoReturn checkLastCell(TableViewCell*);
	TodoReturn checkFirstCell(TableViewCell*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn scrollToIndexPath(CCIndexPath&);
	TodoReturn initTableViewCells();
	TodoReturn cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn checkBoundaryOfCell(TableViewCell*);
	TodoReturn checkBoundaryOfCell(cocos2d::CCPoint&, float);
	TodoReturn deleteTableViewCell(TableViewCell*);
	/* unverified signature */
	bool isDuplicateIndexPath(CCIndexPath&);
	TodoReturn cellForRowAtIndexPath(CCIndexPath&);
	TodoReturn scrollViewTouchMoving(CCScrollLayerExt*);
	TodoReturn checkBoundaryOfContent(float);
	TodoReturn scrollViewDidEndMoving(CCScrollLayerExt*);
	virtual void registerWithTouchDispatcher();
	TodoReturn scrollViewDidEndDecelerating(CCScrollLayerExt*);
	/* unverified signature */
	bool isDuplicateInVisibleCellArray(CCIndexPath*);
	TodoReturn scrllViewWillBeginDecelerating(CCScrollLayerExt*);
	TodoReturn dequeueReusableCellWithIdentifier(char const*);
	TodoReturn removeIndexPathFromPathAddedArray(CCIndexPath&);
	static TableView* create(TableViewDelegate*, TableViewDataSource*, TableViewCellDelegate*, cocos2d::CCRect);
	virtual void onExit();
	virtual void onEnter();
	TableView(cocos2d::CCRect);
	~TableView();
}
