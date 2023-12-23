// clang-format off

class GDString {
    // void winDtor() = win 0xf6e0;
    GDString& winAssign(GDString const&, size_t, size_t) = win 0x1B9F0;
    GDString& winAssign(char const*) = win 0x1B950;
    GDString& winAssign(char const*, size_t) = win 0x1BB10;

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
class ArtistCell : TableViewCell {
	void onNewgrounds(cocos2d::CCObject* sender);
	void updateBGColor(int) = win 0x807B0;
	void loadFromObject(SongInfoObject*) = win 0x83840;
	virtual void draw();
	virtual bool init();
	void onYouTube(cocos2d::CCObject* sender);
	ArtistCell(char const*, float, float);
	~ArtistCell();
}

[[link(android)]]
class ButtonPage : cocos2d::CCLayer {
	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, float);
	static ButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint, int, float);
	~ButtonPage();
}

[[link(android)]]
class FontObject : cocos2d::CCObject {
	TodoReturn getFontWidth(int);
	TodoReturn parseConfigFile(char const*, float);
	TodoReturn initWithConfigFile(char const*, float);
	TodoReturn createWithConfigFile(char const*, float);
	~FontObject();
}

[[link(android)]]
class GameObject : CCSpritePlus {
	TodoReturn addToGroup(int);
	TodoReturn canReverse();
	TodoReturn copyGroups(GameObject*);
	TodoReturn createGlow(gd::string);
	TodoReturn firstSetup() = win 0x95C0;
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
	TodoReturn customSetup() = win 0x131A10;
	TodoReturn getColorKey(bool, bool);
	TodoReturn ignoreEnter();
	TodoReturn resetGroups();
	TodoReturn resetObject();
	virtual void setPosition(cocos2d::CCPoint const&) = win 0x138900;
	virtual void setRotation(float);
	/* unverified signature */
	void setStartPos(cocos2d::CCPoint);
	TodoReturn shouldLockX();
	TodoReturn addEmptyGlow();
	TodoReturn canBeOrdered();
	TodoReturn colorForMode(int, bool);
	TodoReturn getBallFrame(int);
	TodoReturn getBoxOffset();
	TodoReturn getGlowFrame(gd::string);
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
	TodoReturn getColorFrame(gd::string);
	TodoReturn getColorIndex();
	TodoReturn getObjectRect(float, float) = win 0x138430;
	TodoReturn getObjectRect() = win 0x138460;
	TodoReturn getParentMode() = win 0x13A8D0;
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
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x1D230;
	TodoReturn activateObject() = win 0x1317D0;
	TodoReturn addColorSprite(gd::string);
	TodoReturn addCustomChild(gd::string, cocos2d::CCPoint, int);
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
	TodoReturn playShineEffect() = win 0x139DE0;
	TodoReturn removeFromGroup(int);
	TodoReturn resetMoveOffset();
	/* unverified signature */
	void setCustomZLayer(int);
	/* unverified signature */
	void setLastPosition(cocos2d::CCPoint const&);
	TodoReturn setupPixelScale();
	TodoReturn setupSpriteSize();
	TodoReturn unclaimParticle();
	TodoReturn updateBlendMode() = win 0x13ADD0;
	TodoReturn updateMainColor(cocos2d::_ccColor3B const&);
	TodoReturn updateMainColor();
	TodoReturn addInternalChild(cocos2d::CCSprite*, gd::string, cocos2d::CCPoint, int);
	TodoReturn blendModeChanged();
	TodoReturn canMultiActivate(bool);
	TodoReturn deactivateObject(bool) = win 0x131860;
	TodoReturn dirtifyObjectPos();
	TodoReturn fastRotateObject(float);
	TodoReturn getGroupDisabled();
	TodoReturn getMainColorMode();
	TodoReturn getScalePosDelta();
	TodoReturn groupWasDisabled();
	TodoReturn hasBeenActivated();
	/* unverified signature */
	bool isSettingsObject();
	TodoReturn objectFromVector(gd::vector<gd::string>&, gd::vector<void*>&, GJBaseGameLayer*, bool);
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
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
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
	TodoReturn setupCustomSprites(gd::string) = win 0x14BC10;
	TodoReturn transferObjectRect(cocos2d::CCRect&) = win 0x1383E0;
	TodoReturn updateCustomScaleX(float);
	TodoReturn updateCustomScaleY(float);
	TodoReturn addCustomBlackChild(gd::string, float, bool);
	TodoReturn addCustomColorChild(gd::string);
	TodoReturn duplicateAttributes(GameObject*);
	TodoReturn playPickupAnimation(cocos2d::CCSprite*, float, float, float, float);
	TodoReturn playPickupAnimation(cocos2d::CCSprite*, float, float, float, float, float, float, float, float, bool, float, float);
	TodoReturn quickUpdatePosition();
	TodoReturn updateMainColorOnly();
	TodoReturn updateParticleColor(cocos2d::_ccColor3B const&);
	TodoReturn usesFreezeAnimation();
	TodoReturn addColorSpriteToSelf();
	TodoReturn addInternalGlowChild(gd::string, cocos2d::CCPoint);
	TodoReturn calculateOrientedBox();
	TodoReturn canChangeCustomColor();
	TodoReturn createAndAddParticle(int, char const*, int, cocos2d::tCCPositionType) = win 0x139650;
	TodoReturn createGroupContainer(int);
	TodoReturn getObjectRectPointer();
	TodoReturn getObjectTextureRect();
	TodoReturn ignoreEditorDuration();
	/* unverified signature */
	bool isConfigurablePortal();
	/* unverified signature */
	bool isSpecialSpawnObject();
	TodoReturn loadGroupsFromString(gd::string);
	TodoReturn particleWasActivated();
	TodoReturn quickUpdatePosition2();
	/* unverified signature */
	void setOrientedRectDirty(bool);
	TodoReturn updateSecondaryColor(cocos2d::_ccColor3B const&);
	TodoReturn updateSecondaryColor();
	TodoReturn usesSpecialAnimation();
	TodoReturn addMainSpriteToParent(bool) = win 0x13AE30;
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
	TodoReturn addInternalCustomColorChild(gd::string, cocos2d::CCPoint, int);
	TodoReturn createOpacityGroupContainer(int);
	/* unverified signature */
	void setDefaultSecondaryColorMode(int);
	TodoReturn updateSecondaryParticleOpacity(unsigned char);
	bool init(char const*);
	virtual void update(float);
	TodoReturn addGlow(gd::string);
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
	virtual void setScale(float) = win 0x138F60;
	/* unverified signature */
	bool isTrigger();
	/* unverified signature */
	void setRScale(float);
	virtual void setScaleX(float) = win 0x138E40;
	virtual void setScaleY(float) = win 0x138ED0;
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
class GJItemIcon : cocos2d::CCSprite {
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
class GJPathPage : FLAlertLayer, FLAlertLayerProtocol, GJPurchaseDelegate {
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
	bool init(int, GJPathsLayer*) = win 0x1F8A40;
	TodoReturn show();
	static GJPathPage* create(int, GJPathsLayer*) = win 0x1F8990;
	void onBack(cocos2d::CCObject* sender);
	void onUnlock(cocos2d::CCObject* sender);
	~GJPathPage();
}

[[link(android)]]
class GJUserCell : TableViewCell, FLAlertLayerProtocol, UploadPopupDelegate, UploadActionDelegate {
	TodoReturn onClosePopup(UploadActionPopup*);
	void loadFromScore(GJUserScore*) = win 0x87F80;
	void onSendMessage(cocos2d::CCObject* sender);
	void onUnblockUser(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	void updateBGColor(int) = win 0x807B0;
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
class HardStreak : cocos2d::CCDrawNode {
	TodoReturn firstSetup();
	TodoReturn stopStroke() = win 0x221B30;
	TodoReturn resumeStroke();
	TodoReturn updateStroke(float) = win 0x221C00;
	TodoReturn clearAboveXPos(float);
	TodoReturn normalizeAngle(double);
	TodoReturn clearBehindXPos(float);
	TodoReturn createDuplicate() = win 0x222630;
	TodoReturn quadCornerOffset(cocos2d::CCPoint, cocos2d::CCPoint, float);
	TodoReturn scheduleAutoUpdate();
	virtual bool init();
	TodoReturn reset();
	static HardStreak* create() = win 0x221A60;
	TodoReturn addPoint(cocos2d::CCPoint) = win 0x2224F0;
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
	TodoReturn base64DecodeString(gd::string);
	TodoReturn base64EncodeString(gd::string);
	TodoReturn createStarPackDict();
	TodoReturn posForTimeInternal(float, cocos2d::CCArray*, int, bool, bool, bool, int&, int);
	TodoReturn toggleDebugLogging(bool);
	TodoReturn verifyLevelIntegrity(gd::string, int);
	TodoReturn getLastGameplayRotated();
	TodoReturn getLastGameplayReversed();
	TodoReturn sortChannelOrderObjects(cocos2d::CCArray*, cocos2d::CCDictionary*, bool);
	TodoReturn moveTriggerObjectsToArray(cocos2d::CCArray*, cocos2d::CCDictionary*, int);
	TodoReturn getLevel(int, bool);
}

[[link(android)]]
class PauseLayer : CCBlockLayer {
	void onSettings(cocos2d::CCObject* sender) = win 0x2b41e0;
	TodoReturn customSetup();
	void onNormalMode(cocos2d::CCObject* sender) = win 0x2b4be0;
	void onRestartFull(cocos2d::CCObject* sender) = win 0x2b4d30;
	TodoReturn tryShowBanner(float);
	virtual void keyBackClicked();
	void onPracticeMode(cocos2d::CCObject* sender) = win 0x2b4b70;
	void onRecordReplays(cocos2d::CCObject* sender);
	TodoReturn sfxSliderChanged(cocos2d::CCObject*);
	TodoReturn setupProgressBars();
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn musicSliderChanged(cocos2d::CCObject*);
	bool init(bool) = win 0x2b3740;
	virtual void keyUp(cocos2d::enumKeyCodes);
	static PauseLayer* create(bool);
	TodoReturn goEdit();
	void onEdit(cocos2d::CCObject* sender) = win 0x2b4d80;
	void onHelp(cocos2d::CCObject* sender);
	void onQuit(cocos2d::CCObject* sender) = win 0x2b4ed0;
	void onTime(cocos2d::CCObject* sender);
	virtual void keyDown(cocos2d::enumKeyCodes);
	void onReplay(cocos2d::CCObject* sender);
	void onResume(cocos2d::CCObject* sender) = win 0x2b4c90;
	void onRestart(cocos2d::CCObject* sender) = win 0x2b4ce0;
	~PauseLayer();
}

[[link(android)]]
class PriceLabel : cocos2d::CCNode {
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
class RingObject : EffectGameObject {
	TodoReturn resetObject();
	virtual void setRotation(float);
	TodoReturn spawnCircle();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn powerOnObject(int);
	TodoReturn triggerActivated(float);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn shouldDrawEditorHitbox();
	bool init(char const*);
	static RingObject* create(char const*);
	virtual void setScale(float);
	/* unverified signature */
	void setRScale(float);
	~RingObject();
}

[[link(android)]]
class SetIDPopup : FLAlertLayer, TextInputDelegate {
	TodoReturn textChanged(CCTextInputNode*);
	void onResetValue(cocos2d::CCObject* sender);
	TodoReturn valueChanged();
	void onItemIDArrow(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn updateTextInputLabel();
	bool init(int, int, int, gd::string, gd::string, bool, int, float, bool, bool);
	TodoReturn show();
	static SetIDPopup* create(int, int, int, gd::string, gd::string, bool, int, float, bool, bool);
	void onClose(cocos2d::CCObject* sender);
	void onCancel(cocos2d::CCObject* sender);
	~SetIDPopup();
}

[[link(android)]]
class SFXBrowser : FLAlertLayer, MusicDownloadDelegate, TableViewCellDelegate, SetTextPopupDelegate, SelectSFXSortDelegate {
	void onExitFolder(cocos2d::CCObject* sender);
	void onClearSearch(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	void onUpdateLibrary(cocos2d::CCObject* sender);
	TodoReturn updatePageLabel();
	TodoReturn sortSelectClosed(SelectSFXSortLayer*);
	TodoReturn musicActionFailed(GJMusicAction);
	TodoReturn getSelectedCellIdx();
	/* unverified signature */
	void setTextPopupClosed(SetTextPopup*, gd::string);
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
class ShardsPage : FLAlertLayer {
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
class SongObject : cocos2d::CCObject {
	bool init(int);
	static SongObject* create(int);
	~SongObject();
}

[[link(android)]]
class SongsLayer : GJDropDownLayer {
	TodoReturn customSetup();
	static SongsLayer* create();
	~SongsLayer();
}

[[link(android)]]
class StatsLayer : GJDropDownLayer {
	TodoReturn customSetup();
	static StatsLayer* create();
	~StatsLayer();
}

[[link(android)]]
class UndoObject : cocos2d::CCObject {
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
class CCCountdown : cocos2d::CCSprite {
	virtual void setOpacity(unsigned char);
	TodoReturn lapFinished();
	TodoReturn startTimerWithSeconds(float, cocos2d::SEL_CallFunc, cocos2d::CCNode*);
	virtual bool init();
	static CCCountdown* create();
	~CCCountdown();
}



[[link(android)]]
class CCMoveCNode : cocos2d::CCObject {
	virtual bool init();
	TodoReturn reset();
	static CCMoveCNode* create();
	~CCMoveCNode();
}

[[link(android)]]
class CCURLObject : cocos2d::CCObject {
	bool init(gd::string, gd::string);
	static CCURLObject* create(gd::string, gd::string);
	~CCURLObject();
}

[[link(android)]]
class ColorAction : cocos2d::CCObject {
	TodoReturn resetAction();
	TodoReturn saveToState(CAState&);
	TodoReturn setupFromMap(gd::map<gd::string, gd::string>&);
	TodoReturn loadFromState(CAState&);
	TodoReturn setupFromString(gd::string);
	// TodoReturn writeSaveString(fmt::BasicWriter<char>&);
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
class CommentCell : TableViewCell, LikeItemDelegate, FLAlertLayerProtocol {
	TodoReturn onUndelete();
	void onGoToLevel(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	void updateBGColor(int) = win 0x85990;
	TodoReturn incrementLikes();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	void loadFromComment(GJComment*) = win 0x83E20;
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
class GJBigSprite : cocos2d::CCNode {
	TodoReturn unloadSprite(gd::string, int);
	TodoReturn loadSpriteAsync(gd::string, int);
	TodoReturn updateSpriteVisibility();
	TodoReturn finishedLoadingSpriteAsync(cocos2d::CCObject*);
	virtual bool init();
	static GJBigSprite* create();
	TodoReturn unloadAll();
	~GJBigSprite();
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
	// GJGameState();
	// ~GJGameState();
}

[[link(android)]]
class GJLevelList : cocos2d::CCNode {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn totalLevels();
	TodoReturn reorderLevel(int, int);
	TodoReturn showListInfo();
	TodoReturn orderForLevel(int);
	TodoReturn addLevelToList(GJGameLevel*);
	TodoReturn completedLevels();
	TodoReturn createWithCoder(DS_Dictionary*);
	virtual void encodeWithCoder(DS_Dictionary*);
	TodoReturn parseListLevels(gd::string);
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
class GJMapObject : cocos2d::CCNode {
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
class GJScoreCell : TableViewCell, FLAlertLayerProtocol {
	void onMoreLevels(cocos2d::CCObject* sender);
	void loadFromScore(GJUserScore*) = win 0x85EB0;
	void onViewProfile(cocos2d::CCObject* sender);
	void updateBGColor(int) = win 0x807B0;
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void draw();
	virtual bool init();
	void onBan(cocos2d::CCObject* sender);
	void onCheck(cocos2d::CCObject* sender);
	GJScoreCell(char const*, float, float);
	~GJScoreCell();
}

[[link(android)]]
class GJShopLayer : cocos2d::CCLayer, GJPurchaseDelegate, DialogDelegate, RewardedVideoDelegate {
	void onPlushies(cocos2d::CCObject* sender);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn dialogClosed(DialogLayer*);
	void onSelectItem(cocos2d::CCObject* sender) = win 0x216580;
	virtual void keyBackClicked();
	TodoReturn didPurchaseItem(GJStoreItem*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn exitVideoAdItems();
	TodoReturn showReactMessage();
	void onCommunityCredits(cocos2d::CCObject* sender);
	TodoReturn rewardedVideoFinished();
	TodoReturn showCantAffordMessage(GJStoreItem*) = win 0x2166B0;
	TodoReturn updateCurrencyCounter();
	virtual void registerWithTouchDispatcher();
	bool init(ShopType) = win 0x214E30;
	TodoReturn scene(ShopType) = win 0x214D50;
	static GJShopLayer* create(ShopType) = win 0x214D90;
	void onBack(cocos2d::CCObject* sender);
	virtual void onExit();
	void onVideoAd(cocos2d::CCObject* sender);
	~GJShopLayer();
}

[[link(android)]]
class GJStoreItem : cocos2d::CCNode {
	TodoReturn getCurrencyKey() = win 0x180610;
	bool init(int, int, int, int, ShopType);
	static GJStoreItem* create(int, int, int, int, ShopType);
	~GJStoreItem();
}

[[link(android)]]
class GJUserScore : cocos2d::CCNode {
	/* unverified signature */
	bool isCurrentUser();
	TodoReturn mergeWithScore(GJUserScore*);
	virtual bool init();
	static GJUserScore* create(cocos2d::CCDictionary*);
	static GJUserScore* create();
	~GJUserScore();
}

[[link(android)]]
class GJWorldNode : cocos2d::CCNode {
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
class MapPackCell : TableViewCell {
	TodoReturn reloadCell();
	void onClaimReward(cocos2d::CCObject* sender);
	void updateBGColor(int) = win 0x807B0;
	void loadFromMapPack(GJMapPack*) = win 0x80C40;
	TodoReturn playCompleteEffect();
	virtual void draw();
	virtual bool init();
	void onClick(cocos2d::CCObject* sender);
	MapPackCell(char const*, float, float);
	~MapPackCell();
}

[[link(android)]]
class OptionsCell : TableViewCell {
	void updateBGColor(int) = win 0x807B0;
	void loadFromObject(OptionsObject*) = win 0x833F0;
	void onToggleOption(cocos2d::CCObject* sender);
	OptionsCell(char const*, float, float);
	~OptionsCell();
}

[[link(android)]]
class ProfilePage : FLAlertLayer, FLAlertLayerProtocol, LevelCommentDelegate, CommentUploadDelegate, UserInfoDelegate, UploadActionDelegate, UploadPopupDelegate, LeaderboardManagerDelegate {
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
	TodoReturn setupPageInfo(gd::string, char const*);
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
class RewardsPage : FLAlertLayer, FLAlertLayerProtocol, GJRewardDelegate {
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
class SecretLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol {
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
	TodoReturn updateMessageLabel(gd::string);
	virtual bool init();
	TodoReturn scene();
	static SecretLayer* create();
	void onBack(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);
	~SecretLayer();
}

[[link(android)]]
class ShaderLayer : cocos2d::CCLayer {
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
class UploadPopup : FLAlertLayer, LevelUploadDelegate {
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
class AccountLayer : GJDropDownLayer, GJAccountDelegate, GJAccountBackupDelegate, GJAccountSyncDelegate, FLAlertLayerProtocol {
	void onRegister(cocos2d::CCObject* sender);
	TodoReturn updatePage(bool);
	TodoReturn customSetup();
	TodoReturn layerHidden();
	TodoReturn hideLoadingUI();
	TodoReturn showLoadingUI();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn syncAccountFailed(BackupAccountError, int);
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
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
class CCBlockLayer : cocos2d::CCLayerColor {
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
class CCCircleWave : cocos2d::CCNode {
	virtual void setPosition(cocos2d::CCPoint const&);
	TodoReturn followObject(cocos2d::CCNode*, bool) = win 0x23540;
	TodoReturn updatePosition(float);
	virtual void updateTweenAction(float, char const*);
	virtual void removeMeAndCleanup();
	virtual void draw();
	bool init(float, float, float, bool, bool) = win 0x232F0;
	static CCCircleWave* create(float, float, float, bool);
	static CCCircleWave* create(float, float, float, bool, bool) = win 0x23220;
	TodoReturn baseSetup(float);
	~CCCircleWave();
}

[[link(android)]]
class CCLightFlash : cocos2d::CCNode {
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
class CCLightStrip : cocos2d::CCNode {
	virtual void updateTweenAction(float, char const*);
	virtual void draw();
	bool init(float, float, float, float, float);
	static CCLightStrip* create(float, float, float, float, float);
	~CCLightStrip();
}

[[link(android)]]
class CCSpritePart : CCSpritePlus {
	virtual void setVisible(bool);
	TodoReturn frameChanged(gd::string);
	TodoReturn getBeingUsed();
	TodoReturn hideInactive();
	/* unverified signature */
	void setBeingUsed(bool);
	TodoReturn resetTextureRect();
	TodoReturn markAsNotBeingUsed();
	TodoReturn updateDisplayFrame(gd::string);
	TodoReturn createWithSpriteFrameName(char const*);
	static CCSpritePart* create(cocos2d::CCTexture2D*);
	~CCSpritePart();
}

[[link(android)]]
class CCSpritePlus : cocos2d::CCSprite {
	TodoReturn stopFollow();
	TodoReturn addFollower(cocos2d::CCNode*);
	TodoReturn getFollower();
	virtual void setPosition(cocos2d::CCPoint const&) = win 0x288F0;
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
	virtual void setScale(float) = win 0x28D10;
	virtual void setScaleX(float) = win 0x28C10;
	virtual void setScaleY(float) = win 0x28C90;
	~CCSpritePlus();
}

[[link(android)]]
class ColorAction2 {
	TodoReturn resetAction();
	TodoReturn updateCustomColor(cocos2d::_ccColor3B, cocos2d::_ccColor3B);
	virtual void step(float);
	// ColorAction2(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float, double, bool, int, float, float);
}

[[link(android)]]
class FindBPMLayer : CreateGuidelinesLayer {
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
class GauntletNode : cocos2d::CCNode {
	TodoReturn nameForType(GauntletType);
	TodoReturn frameForType(GauntletType);
	TodoReturn onClaimReward();
	bool init(GJMapPack*);
	static GauntletNode* create(GJMapPack*);
	~GauntletNode();
}

[[link(android)]]
class GJHttpResult : cocos2d::CCNode {
	bool init(bool, gd::string, gd::string, GJHttpType);
	static GJHttpResult* create(bool, gd::string, gd::string, GJHttpType);
	~GJHttpResult();
}

[[link(android)]]
class GJLocalScore : cocos2d::CCObject {
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
class GJPathsLayer : FLAlertLayer, FLAlertLayerProtocol {
	TodoReturn nameForPath(int);
	TodoReturn darkenButtons(bool);
	virtual void keyBackClicked();
	virtual void registerWithTouchDispatcher();
	virtual bool init() = win 0x1F82A0;
	TodoReturn show();
	static GJPathsLayer* create();
	virtual void onExit() = 0x1F8756;
	void onPath(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	~GJPathsLayer();
}

[[link(android)]]
class GJPathSprite : CCSpriteCOpacity {
	TodoReturn updateState();
	TodoReturn addRankLabel(int);
	TodoReturn addShardSprite();
	TodoReturn changeToLockedArt();
	bool init(int);
	static GJPathSprite* create(int);
	~GJPathSprite();
}

[[link(android)]]
class GJPromoPopup : FLAlertLayer {
	virtual void keyBackClicked();
	virtual void registerWithTouchDispatcher();
	bool init(gd::string);
	TodoReturn show();
	static GJPromoPopup* create(gd::string);
	virtual void onExit();
	void onClose(cocos2d::CCObject* sender);
	~GJPromoPopup();
}

[[link(android)]]
class GJRewardItem : cocos2d::CCObject {
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
	bool init(int, int, gd::string);
	static GJRewardItem* create(int, int, gd::string);
	static GJRewardItem* create();
	virtual bool canEncode();
	~GJRewardItem();
}

[[link(android)]]
class GJValueTween {
	virtual void step(float);
}

[[link(android)]]
class MPLobbyLayer : cocos2d::CCLayer, GJMPDelegate, UploadPopupDelegate, UploadActionDelegate, FLAlertLayerProtocol, TextInputDelegate {
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
class MusicBrowser : FLAlertLayer, MusicDownloadDelegate, TableViewCellDelegate, SetTextPopupDelegate, FLAlertLayerProtocol, SliderDelegate {
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
	void setTextPopupClosed(SetTextPopup*, gd::string);
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
class OptionsLayer : GJDropDownLayer, FLAlertLayerProtocol {
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
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
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
class PlayerObject : GameObject, AnimatedSpriteDelegate {
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
	TodoReturn updateMove(float) = win 0x2BFC30;
	TodoReturn yStartDown();
	TodoReturn boostPlayer(float);
	TodoReturn createRobot(int);
	TodoReturn flashPlayer(float, float, cocos2d::_ccColor3B, cocos2d::_ccColor3B);
	TodoReturn flipGravity(bool, bool) = win 0x2CDDB0;
	TodoReturn gravityDown();
	TodoReturn resetObject() = win 0x2CB840;
	TodoReturn resetStreak() = win 0x2C1020;
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setRotation(float);
	TodoReturn setupStreak();
	TodoReturn spawnCircle();
	TodoReturn stopDashing() = win 0x2CB080;
	TodoReturn stopStreak2();
	TodoReturn createSpider(int);
	TodoReturn getYVelocity();
	/* unverified signature */
	bool isBoostValid(float);
	TodoReturn preCollision() = win 0x2C2C10;
	TodoReturn redirectDash(float) = win 0x2CA320;
	/* unverified signature */
	void setYVelocity(double, int) = win 0x2BEC70;
	TodoReturn spawnCircle2();
	TodoReturn startDashing(DashRingObject*);
	TodoReturn stopRotation(bool, int);
	TodoReturn getActiveMode();
	/* unverified signature */
	bool isInBasicMode();
	TodoReturn levelFlipping() = win 0x2CEF50;
	TodoReturn levelWillFlip();
	TodoReturn modeDidChange();
	TodoReturn postCollision(float) = win 0x2C2D50;
	TodoReturn propellPlayer(float, bool, int);
	TodoReturn releaseButton(PlayerButton) = win 0x2cc710;
	TodoReturn reversePlayer(EffectGameObject*) = win 0x2CC810;
	TodoReturn stopParticles();
	TodoReturn switchedDirTo(PlayerButton);
	TodoReturn testForMoving(float, GameObject*);
	TodoReturn toggleFlyMode(bool, bool) = win 0x2CE170;
	TodoReturn touchedObject(GameObject*);
	TodoReturn updateCollide(PlayerCollisionDirection, GameObject*) = win 0x2C8CC0;
	TodoReturn updateDashArt() = win 0x2CAC70;
	TodoReturn updateEffects(float);
	TodoReturn updateSpecial(float);
	TodoReturn updateStreaks(float);
	TodoReturn updateTimeMod(float, bool) = win 0x2D3B00;
	TodoReturn activateStreak() = win 0x2D2ED0;
	TodoReturn addToYVelocity(double, int);
	TodoReturn copyAttributes(PlayerObject*);
	TodoReturn fadeOutStreak2(float) = win 0x2D2FD0;
	TodoReturn getOldPosition(float);
	TodoReturn getOrientedBox();
	TodoReturn getSecondColor();
	TodoReturn incrementJumps() = win 0x2c2250;
	/* unverified signature */
	bool isInNormalMode() = win 0x2CFE00;
	/* unverified signature */
	bool isSafeHeadTest();
	TodoReturn playBumpEffect(int, GameObject*);
	TodoReturn rotateGameplay(int, int, bool, float, float, bool, bool) = win 0x2CDA10;
	/* unverified signature */
	void setSecondColor(cocos2d::_ccColor3B const&);
	TodoReturn spiderTestJump(bool);
	TodoReturn storeCollision(PlayerCollisionDirection, int) = win 0x2C2B70;
	TodoReturn switchedToMode(GameObjectType) = win 0x2CF6A0;
	TodoReturn toggleBirdMode(bool, bool) = win 0x2CE400;
	TodoReturn toggleDartMode(bool, bool) = win 0x2CE9C0;
	TodoReturn toggleRollMode(bool, bool) = win 0x2CEF90;
	TodoReturn updateRotation(float) = win 0x2C64E0;
	TodoReturn updateRotation(float, float);
	TodoReturn addAllParticles();
	TodoReturn doReversePlayer(bool) = win 0x2CC8F0;
	TodoReturn getRealPosition();
	TodoReturn hardFlipGravity();
	TodoReturn hitGroundNoJump(GameObject*, bool) = win 0x2CF730;
	TodoReturn playBurstEffect();
	TodoReturn playDeathEffect();
	TodoReturn playerDestroyed(bool) = win 0x2CC2D0;
	TodoReturn playerIsFalling(float);
	TodoReturn playSpawnEffect();
	TodoReturn resetPlayerIcon() = win 0x2CEC80;
	TodoReturn runBallRotation(float) = win 0x2C2890;
	TodoReturn runRotateAction(bool, int) = win 0x2C26F0;
	TodoReturn spawnDualCircle();
	TodoReturn spawnFromPlayer(PlayerObject*, bool);
	TodoReturn spiderTestJumpX(bool);
	TodoReturn spiderTestJumpY(bool);
	TodoReturn stopBurstEffect();
	TodoReturn toggleRobotMode(bool, bool) = win 0x2CF0C0;
	TodoReturn toggleSwingMode(bool, bool) = win 0x2CE680;
	TodoReturn updateGlowColor();
	TodoReturn updatePlayerArt() = win 0x2CCAC0;
	TodoReturn updateSwingFire() = win 0x2CE8B0;
	TodoReturn canStickToGround();
	TodoReturn deactivateStreak(bool);
	TodoReturn disableSwingFire() = win 0x2CE950;
	/* unverified signature */
	bool isSafeSpiderFlip(float);
	TodoReturn placeStreakPoint() = win 0x2D3630;
	TodoReturn playerIsMovingUp();
	TodoReturn playerTeleported();
	TodoReturn playingEndEffect();
	TodoReturn runBallRotation2() = win 0x2C29D0;
	TodoReturn saveToCheckpoint(PlayerCheckpoint*);
	TodoReturn spawnScaleCircle();
	TodoReturn specialGroundHit();
	TodoReturn toggleSpiderMode(bool, bool) = win 0x2CF3B0;
	TodoReturn toggleVisibility(bool);
	TodoReturn updateCollideTop(float, GameObject*) = win 0x2C8EB0;
	TodoReturn updatePlayerGlow() = win 0x2D3170;
	TodoReturn addToTouchedRings(RingObject*);
	TodoReturn animationFinished(char const*);
	TodoReturn collidedWithSlope(float, GameObject*, bool);
	TodoReturn getObjectRotation();
	TodoReturn levelFlipFinished() = win 0x2C1180;
	TodoReturn performSlideCheck();
	TodoReturn preSlopeCollision(float, GameObject*) = win 0x2C46F0;
	TodoReturn releaseAllButtons();
	TodoReturn resetAllParticles();
	TodoReturn resetCollisionLog(bool);
	TodoReturn resetTouchedRings();
	TodoReturn runNormalRotation(bool, float) = win 0x2C2750;
	TodoReturn runNormalRotation();
	TodoReturn spawnPortalCircle(cocos2d::_ccColor3B, float) = win 0x2CBF20;
	TodoReturn toggleGhostEffect(GhostType);
	TodoReturn togglePlayerScale(bool, bool) = win 0x2D3690;
	TodoReturn updateCollideLeft(float, GameObject*) = win 0x2C8F30;
	TodoReturn updatePlayerForce(cocos2d::CCPoint, bool);
	TodoReturn updatePlayerFrame(int) = win 0x2D1220;
	TodoReturn updatePlayerScale() = win 0x2D3110;
	TodoReturn updateStaticForce(float, float, bool) = win 0x2D2A00;
	TodoReturn updateStreakBlend(bool);
	TodoReturn collidedWithObject(float, GameObject*);
	TodoReturn collidedWithObject(float, GameObject*, cocos2d::CCRect, bool);
	TodoReturn deactivateParticle();
	TodoReturn destroyFromHitHead();
	TodoReturn gameEventTriggered(int, int) = win 0x1B1AC0;
	TodoReturn loadFromCheckpoint(PlayerCheckpoint*);
	TodoReturn playCompleteEffect(bool, bool);
	TodoReturn removeAllParticles();
	TodoReturn rotateGameplayOnly(bool);
	TodoReturn tryPlaceCheckpoint();
	TodoReturn updateCollideRight(float, GameObject*) = win 0x2C8FB0;
	TodoReturn updateShipRotation(float);
	TodoReturn getCurrentXVelocity();
	TodoReturn handlePlayerCommand(int);
	TodoReturn redirectPlayerForce(float, float, float, float) = win 0x2D2B40;
	TodoReturn resetStateVariables();
	TodoReturn updateCollideBottom(float, GameObject*) = win 0x2C8E30;
	TodoReturn updateDashAnimation();
	TodoReturn updateJumpVariables();
	TodoReturn updateSlopeRotation(float);
	TodoReturn enablePlayerControls();
	TodoReturn getModifiedSlopeYVel();
	TodoReturn playDynamicSpiderRun() = win 0x2D3FE0;
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
	TodoReturn updatePlayerBirdFrame(int) = win 0x2D1770;
	TodoReturn updatePlayerDartFrame(int) = win 0x2D1D10;
	TodoReturn updatePlayerRollFrame(int) = win 0x2D1990;
	TodoReturn updatePlayerShipFrame(int) = win 0x2D13F0;
	TodoReturn updateShipSpriteExtra(gd::string) = win 0x2D1FD0;
	TodoReturn disableCustomGlowColor();
	TodoReturn removePlacedCheckpoint();
	TodoReturn spiderTestJumpInternal(bool);
	TodoReturn unrotateGameplayObject(GameObject*);
	TodoReturn updateLastGroundObject(GameObject*);
	TodoReturn updatePlayerRobotFrame(int);
	TodoReturn updatePlayerSwingFrame(int) = win 0x2D1B50;
	TodoReturn createFadeOutDartStreak() = win 0x2CCA00;
	TodoReturn removePendingCheckpoint() = win 0x2D46D0;
	TodoReturn unrotatePreSlopeObjects();
	TodoReturn updatePlayerSpiderFrame(int);
	TodoReturn updatePlayerSpriteExtra(gd::string) = win 0x2D1ED0;
	TodoReturn convertToClosestRotation(float);
	TodoReturn updatePlayerJetpackFrame(int) = win 0x2D15B0;
	TodoReturn collidedWithSlopeInternal(float, GameObject*, bool) = win 0x2C4C50;
	TodoReturn exitPlatformerAnimateJump();
	TodoReturn updateRobotAnimationSpeed() = win 0x2D3C90;
	TodoReturn collidedWithObjectInternal(float, GameObject*, cocos2d::CCRect, bool) = win 0x2C6C10;
	TodoReturn handleRotatedSlopeCollision(float, GameObject*, bool);
	TodoReturn stopPlatformerJumpAnimation() = win 0x2C2570;
	TodoReturn handleRotatedObjectCollision(float, GameObject*, cocos2d::CCRect, bool);
	TodoReturn handleRotatedCollisionInternal(float, GameObject*, cocos2d::CCRect, bool, bool, bool);
	bool init(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool) = win 0x2BD080;
	static PlayerObject* create(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool) = win 0x2BCFD0;
	virtual void update(float);
	TodoReturn flipMod();
	TodoReturn speedUp();
	/* unverified signature */
	bool isFlying();
	TodoReturn pushDown();
	TodoReturn ringJump(RingObject*, bool) = win 0x2CCEA0;
	virtual void setColor(cocos2d::_ccColor3B const&);
	/* unverified signature */
	void setFlipX(bool) = win 0x2D4B80;
	/* unverified signature */
	void setFlipY(bool) = win 0x138E00;
	virtual void setScale(float) = win 0x2D4C50;
	TodoReturn yStartUp();
	TodoReturn gravityUp();
	TodoReturn hitGround(GameObject*, bool) = win 0x2CF760;
	TodoReturn logValues();
	virtual void setScaleX(float) = win 0x2D4C10;
	virtual void setScaleY(float) = win 0x2D4C30;
	TodoReturn speedDown();
	~PlayerObject();
}

[[link(android)]]
class SearchButton : cocos2d::CCSprite {
	bool init(char const*, char const*, float, char const*);
	static SearchButton* create(char const*, char const*, float, char const*);
	~SearchButton();
}

[[link(android)]]
class SecretLayer2 : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DialogDelegate {
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
	TodoReturn updateMessageLabel(gd::string);
	virtual bool init() = mac 0x478e30, win 0x2fe1d0;
	TodoReturn scene();
	static SecretLayer2* create();
	void onBack(cocos2d::CCObject* sender);
	void onDoor(cocos2d::CCObject* sender);
	virtual void onExit();
	void onSubmit(cocos2d::CCObject* sender);
	~SecretLayer2();
}

[[link(android)]]
class SecretLayer3 : cocos2d::CCLayer, DialogDelegate {
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
class SecretLayer4 : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DialogDelegate {
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
	TodoReturn updateMessageLabel(gd::string);
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
class SetTextPopup : FLAlertLayer, TextInputDelegate {
	TodoReturn textChanged(CCTextInputNode*);
	void onResetValue(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn updateTextInputLabel();
	bool init(gd::string, gd::string, int, gd::string, gd::string, bool, float);
	TodoReturn show();
	static SetTextPopup* create(gd::string, gd::string, int, gd::string, gd::string, bool, float);
	void onClose(cocos2d::CCObject* sender);
	void onCancel(cocos2d::CCObject* sender);
	~SetTextPopup();
}

[[link(android)]]
class SimpleObject : cocos2d::CCObject {
	virtual bool init();
	static SimpleObject* create();
	~SimpleObject();
}

[[link(android)]]
class SimplePlayer : cocos2d::CCSprite {
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
class SlideInLayer : cocos2d::CCLayerColor {
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
class SupportLayer : GJDropDownLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate {
	TodoReturn customSetup();
	void onGetReward(cocos2d::CCObject* sender);
	void onLowDetail(cocos2d::CCObject* sender);
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	void onRequestAccess(cocos2d::CCObject* sender);
	TodoReturn sendSupportMail();
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn uploadActionFailed(int, int);
	TodoReturn uploadActionFinished(int, int);
	void onSFX(cocos2d::CCObject* sender);
	void onTOS(cocos2d::CCObject* sender);
	static SupportLayer* create();
	void onEmail(cocos2d::CCObject* sender);
	void onLinks(cocos2d::CCObject* sender) = win 0x3B6320;
	void onRobTop(cocos2d::CCObject* sender);
	TodoReturn exitLayer();
	void onCocos2d(cocos2d::CCObject* sender);
	void onPrivacy(cocos2d::CCObject* sender);
	~SupportLayer();
}

[[link(android)]]
class URLViewLayer : GJDropDownLayer {
	bool init(gd::string, cocos2d::CCArray*);
	static URLViewLayer* create(gd::string, cocos2d::CCArray*);
	~URLViewLayer();
}

[[link(android)]]
class BonusDropdown : cocos2d::CCNode {
	bool init(gd::string, int);
	TodoReturn show();
	static BonusDropdown* create(gd::string, int);
	~BonusDropdown();
}

[[link(android)]]
class BoomListLayer : cocos2d::CCLayerColor {
	bool init(BoomListView*, char const*);
	static BoomListLayer* create(BoomListView*, char const*);
	~BoomListLayer();
}

[[link(android)]]
class CCAlertCircle : cocos2d::CCNode {
	virtual void draw();
	virtual bool init();
	static CCAlertCircle* create();
	~CCAlertCircle();
}

[[link(android)]]
class CCCircleAlert : CCCircleWave {
	bool init(float, float, float);
	static CCCircleAlert* create(float, float, float);
	~CCCircleAlert();
}

[[link(android)]]
class ChallengeNode : cocos2d::CCNode {
	void onClaimReward(cocos2d::CCObject* sender);
	TodoReturn updateTimeLabel(gd::string);
	bool init(GJChallengeItem*, ChallengesPage*, bool);
	static ChallengeNode* create(GJChallengeItem*, ChallengesPage*, bool);
	~ChallengeNode();
}

[[link(android)]]
class CustomSFXCell : TableViewCell, CustomSFXDelegate {
	TodoReturn shouldReload();
	void updateBGColor(int) = win 0x83100;
	TodoReturn getActiveSFXID();
	void loadFromObject(SFXInfoObject*) = win 0x83010;
	TodoReturn sfxObjectSelected(SFXInfoObject*);
	virtual void draw();
	virtual bool init();
	CustomSFXCell(char const*, float, float);
	~CustomSFXCell();
}

[[link(android)]]
class DrawGridLayer : cocos2d::CCLayer {
	TodoReturn posForTime(float);
	TodoReturn postUpdate();
	TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, bool, bool, int);
	TodoReturn addToGuides(GameObject*);
	TodoReturn addToEffects(EffectGameObject*);
	TodoReturn getPortalMinMax(GameObject*);
	TodoReturn loadTimeMarkers(gd::string);
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
class EditButtonBar : cocos2d::CCNode {
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
class EndLevelLayer : GJDropDownLayer {
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
class ExtendedLayer : cocos2d::CCLayer {
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
class GJChestSprite : cocos2d::CCSprite {
	virtual void setOpacity(unsigned char);
	TodoReturn switchToState(ChestSpriteState, bool);
	bool init(int);
	static GJChestSprite* create(int);
	virtual void setColor(cocos2d::_ccColor3B const&);
	~GJChestSprite();
}

[[link(android)]]
class GJGroundLayer : cocos2d::CCLayer {
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
	TodoReturn updateGround01Color(cocos2d::_ccColor3B) = win 0x1F3220;
	TodoReturn updateGround02Color(cocos2d::_ccColor3B) = win 0x1F3280;
	virtual void draw();
	bool init(int, int);
	static GJGroundLayer* create(int, int);
	~GJGroundLayer();
}

[[link(android)]]
class GJMessageCell : TableViewCell, FLAlertLayerProtocol, UploadPopupDelegate, UploadActionDelegate {
	TodoReturn markAsRead();
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn updateToggle();
	void onViewMessage(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	void updateBGColor(int) = win 0x807B0;
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	void loadFromMessage(GJUserMessage*) = win 0x89BE0;
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
class GJRequestCell : TableViewCell, FLAlertLayerProtocol, UploadPopupDelegate, UploadActionDelegate {
	TodoReturn markAsRead();
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn updateToggle();
	void loadFromScore(GJUserScore*) = win 0x88F20;
	void onViewProfile(cocos2d::CCObject* sender);
	void updateBGColor(int) = win 0x807B0;
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	void onDeleteRequest(cocos2d::CCObject* sender) = win 0x89710;
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
class GJRobotSprite : CCAnimatedSprite {
	virtual void setOpacity(unsigned char);
	TodoReturn updateFrame(int);
	TodoReturn updateColors();
	TodoReturn hideSecondary();
	TodoReturn updateColor01(cocos2d::_ccColor3B);
	TodoReturn updateColor02(cocos2d::_ccColor3B);
	TodoReturn updateGlowColor(cocos2d::_ccColor3B, bool);
	bool init(int);
	bool init(int, gd::string);
	static GJRobotSprite* create(int) = win 0x2127D0;
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
class GJSmartPrefab : cocos2d::CCObject {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn createWithCoder(DS_Dictionary*);
	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool init();
	static GJSmartPrefab* create();
	virtual bool canEncode();
	~GJSmartPrefab();
}

[[link(android)]]
class GJSongBrowser : GJDropDownLayer, FLAlertLayerProtocol, TableViewCellDelegate {
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
class GJUserMessage : cocos2d::CCNode {
	virtual bool init();
	static GJUserMessage* create(cocos2d::CCDictionary*);
	static GJUserMessage* create();
	~GJUserMessage();
}

[[link(android)]]
class ItemInfoPopup : FLAlertLayer {
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
class LevelListCell : TableViewCell {
	void onListInfo(cocos2d::CCObject* sender);
	void loadFromList(GJLevelList*) = win 0x8ADB0;
	void onViewProfile(cocos2d::CCObject* sender);
	void updateBGColor(int) = win 0x807B0;
	virtual void draw();
	virtual bool init();
	static LevelListCell* create(float, float);
	void onClick(cocos2d::CCObject* sender);
	LevelListCell(char const*, float, float);
	~LevelListCell();
}

[[link(android)]]
class LikeItemLayer : FLAlertLayer {
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
class MenuGameLayer : cocos2d::CCLayer {
	TodoReturn getBGColor(int);
	TodoReturn resetPlayer() = win 0x275280;
	TodoReturn updateColor(float);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn updateColors() = win 0x274AC0;
	TodoReturn destroyPlayer();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual bool init();
	static MenuGameLayer* create();
	virtual void update(float) = win 0x274F10;
	TodoReturn tryJump(float);
	~MenuGameLayer();
}

[[link(android)]]
class ObjectManager : cocos2d::CCNode {
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
class ObjectToolbox : cocos2d::CCNode {
	TodoReturn sharedState();
	TodoReturn intKeyToFrame(int);
	TodoReturn gridNodeSizeForKey(int);
	TodoReturn perspectiveBlockFrame(int);
	virtual bool init();
	TodoReturn allKeys();
	~ObjectToolbox();
}

[[link(android)]]
class OptionsObject : cocos2d::CCObject {
	TodoReturn toggleState();
	bool init(int, bool, gd::string, OptionsObjectDelegate*);
	static OptionsObject* create(int, bool, gd::string, OptionsObjectDelegate*);
	~OptionsObject();
}

[[link(android)]]
class SetupEndPopup : SetupTriggerPopup {
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
class SetupSFXPopup : SetupAudioTriggerPopup, CustomSFXDelegate, SFXBrowserDelegate {
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
class SFXInfoObject : cocos2d::CCObject {
	TodoReturn getLowerCaseName();
	bool init(int, gd::string, int, int, int);
	static SFXInfoObject* create(int, gd::string, int, int, int);
	~SFXInfoObject();
}

[[link(android)]]
class SongInfoLayer : FLAlertLayer {
	void onDownload(cocos2d::CCObject* sender);
	void onMenuMusic(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	void onPracticeMusic(cocos2d::CCObject* sender);
	TodoReturn showCustomMusicUnlockInfo();
	bool init(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string, int, gd::string);
	void onFB(cocos2d::CCObject* sender);
	void onNG(cocos2d::CCObject* sender);
	void onYT(cocos2d::CCObject* sender);
	void onBPM(cocos2d::CCObject* sender);
	static SongInfoLayer* create(int);
	static SongInfoLayer* create(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string, int, gd::string);
	void onClose(cocos2d::CCObject* sender);
	~SongInfoLayer();
}


[[link(android)]]
class TutorialLayer : FLAlertLayer {
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
class TutorialPopup : FLAlertLayer {
	TodoReturn animateMenu();
	TodoReturn closeTutorial(cocos2d::CCObject*);
	virtual void keyBackClicked();
	TodoReturn registerForCallback(cocos2d::SEL_MenuHandler, cocos2d::CCNode*);
	bool init(gd::string);
	TodoReturn show();
	static TutorialPopup* create(gd::string);
	~TutorialPopup();
}

[[link(android)]]
class AchievementBar : cocos2d::CCNodeRGBA {
	virtual void setOpacity(unsigned char);
	bool init(char const*, char const*, char const*, bool);
	TodoReturn show();
	static AchievementBar* create(char const*, char const*, char const*, bool);
	~AchievementBar();
}

[[link(android)]]
class CCCounterLabel : cocos2d::CCLabelBMFont {
	TodoReturn updateString();
	TodoReturn enableCounter();
	TodoReturn updateCounter(float);
	TodoReturn disableCounter();
	TodoReturn getTargetCount();
	/* unverified signature */
	void setTargetCount(int) = win 0x23E20;
	TodoReturn calculateStepSize(int);
	TodoReturn fastUpdateCounter();
	bool init(int, char const*, FormatterType) = win 0x23DB0;
	static CCCounterLabel* create(int, char const*, FormatterType) = win 0x23D00;
	~CCCounterLabel();
}

[[link(android)]]
class CCExtenderNode {
	/* unverified signature */
	void setOpacity(unsigned int);
}

[[link(android)]]
class ChallengesPage : FLAlertLayer, FLAlertLayerProtocol, GJChallengeDelegate, CurrencyRewardDelegate {
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
class CreateMenuItem : CCMenuItemSpriteExtra {
	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	static CreateMenuItem* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	~CreateMenuItem();
}

[[link(android)]]
class CurrencySprite : CCSpritePlus {
	TodoReturn initWithSprite(cocos2d::CCSprite*);
	TodoReturn createWithSprite(cocos2d::CCSprite*);
	TodoReturn spriteTypeToStat(CurrencySpriteType);
	TodoReturn rewardToSpriteType(int);
	bool init(CurrencySpriteType, bool);
	static CurrencySprite* create(CurrencySpriteType, bool);
	~CurrencySprite();
}

[[link(android)]]
class CustomSongCell : TableViewCell, CustomSongDelegate {
	TodoReturn shouldReload();
	TodoReturn songIDChanged(int);
	void updateBGColor(int) = win 0x82D40;
	void loadFromObject(SongInfoObject*) = win 0x82B40;
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
class DailyLevelNode : cocos2d::CCNode, FLAlertLayerProtocol {
	void onSkipLevel(cocos2d::CCObject* sender);
	void onClaimReward(cocos2d::CCObject* sender);
	TodoReturn showSkipButton();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn updateTimeLabel(gd::string);
	bool init(GJGameLevel*, DailyLevelPage*, bool);
	static DailyLevelNode* create(GJGameLevel*, DailyLevelPage*, bool);
	~DailyLevelNode();
}

[[link(android)]]
class DailyLevelPage : FLAlertLayer, FLAlertLayerProtocol, GJDailyLevelDelegate, LevelDownloadDelegate {
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
class DashRingObject : RingObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);
	static DashRingObject* create(char const*);
	~DashRingObject();
}


[[link(android)]]
class EditLevelLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, SetIDPopupDelegate {
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
    // ~FMODAudioState();
}

[[link(android)]]
class GameObjectCopy : cocos2d::CCObject {
	TodoReturn resetObject();
	bool init(GameObject*);
	static GameObjectCopy* create(GameObject*);
	~GameObjectCopy();
}

[[link(android)]]
class GauntletSprite : cocos2d::CCNode {
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
class GJMessagePopup : FLAlertLayer, UploadActionDelegate, UploadPopupDelegate, FLAlertLayerProtocol, DownloadMessageDelegate {
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
class GJOptionsLayer : SetupTriggerPopup {
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn addGVToggle(char const*, char const*, char const*);
	TodoReturn didToggleGV(gd::string);
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
class GJRewardObject : cocos2d::CCObject {
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
class GJScaleControl : cocos2d::CCLayer {
	TodoReturn loadValues(GameObject*, cocos2d::CCArray*, gd::unordered_map<int, GameObjectEditorState>&);
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
class GJSearchObject : cocos2d::CCNode {
	TodoReturn getSearchKey(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int);
	TodoReturn createFromKey(char const*);
	TodoReturn getPageObject(int);
	TodoReturn getNextPageKey();
	TodoReturn getNextPageObject();
	TodoReturn getPrevPageObject();
	/* unverified signature */
	bool isLevelSearchObject();
	bool init(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int);
	static GJSearchObject* create(SearchType);
	static GJSearchObject* create(SearchType, gd::string);
	static GJSearchObject* create(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int);
	TodoReturn getKey();
	~GJSearchObject();
}

[[link(android)]]
class GJSpiderSprite : GJRobotSprite {
	bool init(int);
	static GJSpiderSprite* create(int);
	~GJSpiderSprite();
}

[[link(android)]]
class HSVLiveOverlay : FLAlertLayer, HSVWidgetDelegate {
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
class HSVWidgetPopup : FLAlertLayer {
	virtual void keyBackClicked();
	bool init(cocos2d::_ccHSVValue, HSVWidgetDelegate*, gd::string);
	static HSVWidgetPopup* create(cocos2d::_ccHSVValue, HSVWidgetDelegate*, gd::string);
	void onClose(cocos2d::CCObject* sender);
	~HSVWidgetPopup();
}

[[link(android)]]
class KeyframeObject {
	TodoReturn setupSpline(gd::vector<KeyframeObject*>&);
}

[[link(android)]]
class LevelAreaLayer : cocos2d::CCLayer, DialogDelegate {
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
class LevelInfoLayer : cocos2d::CCLayer, LevelDownloadDelegate, LevelUpdateDelegate, RateLevelDelegate, LikeItemDelegate, FLAlertLayerProtocol, LevelDeleteDelegate, NumberInputDelegate, SetIDPopupDelegate, TableViewCellDelegate {
	void onFavorite(cocos2d::CCObject* sender) = win 0x24EFC0;
	void onFeatured(cocos2d::CCObject* sender);
	void onAddToList(cocos2d::CCObject* sender) = win 0x24EDA0;
	void onLevelInfo(cocos2d::CCObject* sender) = win 0x2521E0;
	void onRateDemon(cocos2d::CCObject* sender) = win 0x251E00;
	void onRateStars(cocos2d::CCObject* sender) = win 0x251CD0;
	void onSetFolder(cocos2d::CCObject* sender) = win 0x24EEE0;
	TodoReturn confirmClone(cocos2d::CCObject*);
	void onPlayReplay(cocos2d::CCObject* sender);
	TodoReturn confirmDelete(cocos2d::CCObject*);
	TodoReturn downloadLevel();
	TodoReturn loadLevelStep();
	void onOwnerDelete(cocos2d::CCObject* sender) = win 0x251B50;
	void onViewProfile(cocos2d::CCObject* sender) = win 0x252180;
	TodoReturn tryCloneLevel(cocos2d::CCObject*);
	TodoReturn incrementLikes();
	virtual void keyBackClicked();
	void onRateStarsMod(cocos2d::CCObject* sender) = win 0x251DB0;
	TodoReturn setupLevelInfo();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	void onLowDetailMode(cocos2d::CCObject* sender) = win 0x252150;
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
	void onLevelLeaderboard(cocos2d::CCObject* sender) = win 0x24F030;
	TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	TodoReturn confirmMoveToBottom(cocos2d::CCObject*);
	TodoReturn levelDeleteFinished(int);
	TodoReturn levelDownloadFailed(int) = win 0x250750;
	TodoReturn levelUpdateFinished(GJGameLevel*, UpdateResponse);
	TodoReturn shouldDownloadLevel();
	TodoReturn setupPlatformerStats();
	TodoReturn levelDownloadFinished(GJGameLevel*);
	bool init(GJGameLevel*, bool) = win 0x24CD80;
	TodoReturn scene(GJGameLevel*, bool);
	static LevelInfoLayer* create(GJGameLevel*, bool) = win 0x24CCD0;
	void onBack(cocos2d::CCObject* sender) = win 0x2533E0;
	void onInfo(cocos2d::CCObject* sender) = win 0x2516C0;
	void onLike(cocos2d::CCObject* sender) = win 0x251E40;
	void onPlay(cocos2d::CCObject* sender) = win 0x250DA0;
	void onRate(cocos2d::CCObject* sender) = win 0x251CD0;
	virtual void keyDown(cocos2d::enumKeyCodes);
	void onClone(cocos2d::CCObject* sender) = win 0x2516F0;
	void onDelete(cocos2d::CCObject* sender) = win 0x251AA0;
	void onGarage(cocos2d::CCObject* sender) = win 0x24F090;
	void onUpdate(cocos2d::CCObject* sender) = win 0x252090;
	TodoReturn likedItem(LikeItemType, int, bool);
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn playStep4();
	TodoReturn tryShowAd();
	~LevelInfoLayer();
}

[[link(android)]]
class LevelListLayer : LevelBrowserLayer, TextInputDelegate, SelectListIconDelegate, LikeItemDelegate, LevelListDeleteDelegate {
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
	virtual void loadLevelsFailed(char const*, int);
	void onToggleEditMode(cocos2d::CCObject* sender);
	/* unverified signature */
	void setIDPopupClosed(SetIDPopup*, int);
	TodoReturn updateResultArray(cocos2d::CCArray*);
	TodoReturn updateSideButtons();
	TodoReturn confirmOwnerDelete(cocos2d::CCObject*);
	virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	void onRefreshLevelList(cocos2d::CCObject* sender);
	TodoReturn shareCommentClosed(gd::string, ShareCommentLayer*);
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
class ListButtonPage : cocos2d::CCLayer {
	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float);
	static ListButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float);
	~ListButtonPage();
}

[[link(android)]]
class MapSelectLayer : cocos2d::CCLayer {
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
class RateDemonLayer : FLAlertLayer, UploadPopupDelegate, UploadActionDelegate {
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
class RateLevelLayer : FLAlertLayer {
	TodoReturn selectRating(cocos2d::CCObject*);
	virtual void keyBackClicked();
	bool init(int);
	static RateLevelLayer* create(int);
	void onRate(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	~RateLevelLayer();
}

[[link(android)]]
class RateStarsLayer : FLAlertLayer, UploadPopupDelegate, UploadActionDelegate {
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn selectRating(cocos2d::CCObject*);
	void onToggleCoins(cocos2d::CCObject* sender);
	TodoReturn getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);
	virtual void keyBackClicked();
	TodoReturn uploadActionFailed(int, int);
	TodoReturn uploadActionFinished(int, int);
	bool init(int, bool, bool) = win 0x2ED470;
	static RateStarsLayer* create(int, bool, bool) = win 0x2ED3C0;
	void onRate(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onFeature(cocos2d::CCObject* sender);
	~RateStarsLayer();
}


[[link(android)]]
class SearchSFXPopup : SetTextPopup {
	void onSearchFolders(cocos2d::CCObject* sender);
	bool init(gd::string);
	static SearchSFXPopup* create(gd::string);
	~SearchSFXPopup();
}

[[link(android)]]
class SelectArtLayer : FLAlertLayer {
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
class SetFolderPopup : SetIDPopup, SetTextPopupDelegate {
	TodoReturn valueChanged();
	void onSetFolderName(cocos2d::CCObject* sender);
	/* unverified signature */
	void setTextPopupClosed(SetTextPopup*, gd::string);
	bool init(int, bool, gd::string);
	static SetFolderPopup* create(int, bool, gd::string);
	~SetFolderPopup();
}

[[link(android)]]
class SetItemIDLayer : SetupTriggerPopup {
	TodoReturn valueDidChange(int, float);
	TodoReturn updateEditorLabel();
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetItemIDLayer* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetItemIDLayer();
}

[[link(android)]]
class SetupCoinLayer : SetupTriggerPopup {
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupCoinLayer* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupCoinLayer();
}

[[link(android)]]
class SetupMGTrigger : SetupTriggerPopup {
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
class ShareListLayer : FLAlertLayer {
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
class SongInfoObject : cocos2d::CCNode {
	TodoReturn containsTag(int);
	TodoReturn getTagsString();
	TodoReturn createWithCoder(DS_Dictionary*);
	virtual void encodeWithCoder(DS_Dictionary*);
	bool init(int, gd::string, gd::string, int, float, gd::string, gd::string, gd::string, int);
	static SongInfoObject* create(int);
	static SongInfoObject* create(int, gd::string, gd::string, int, float, gd::string, gd::string, gd::string, int);
	static SongInfoObject* create(cocos2d::CCDictionary*);
	TodoReturn addTags(gd::string);
	virtual bool canEncode();
	~SongInfoObject();
}

[[link(android)]]
class SongSelectNode : cocos2d::CCNode, FLAlertLayerProtocol, CustomSongLayerDelegate, CustomSongDelegate {
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
class StartPosObject : EffectGameObject {
	/* unverified signature */
	void setSettings(LevelSettingsObject*);
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn loadSettingsFromString(gd::string);
	virtual bool init();
	static StartPosObject* create();
	~StartPosObject();
}


[[link(android)]]
class TextGameObject : GameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn getTextKerning();
	TodoReturn updateTextObject(gd::string, bool);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn updateTextKerning(int);
	bool init(cocos2d::CCTexture2D*);
	static TextGameObject* create(cocos2d::CCTexture2D*);
	~TextGameObject();
}

[[link(android)]]
class UIOptionsLayer : SetupTriggerPopup {
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
class WorldLevelPage : FLAlertLayer {
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
class AchievementCell : TableViewCell {
	void loadFromDict(cocos2d::CCDictionary*) = win 0x7C270;
	void updateBGColor(int) = win 0x7D0A0;
	virtual void draw();
	virtual bool init();
	AchievementCell(char const*, float, float);
	~AchievementCell();
}

[[link(android)]]
class BitmapFontCache : cocos2d::CCObject {
	TodoReturn sharedFontCache();
	TodoReturn fontWithConfigFile(char const*, float);
	TodoReturn purgeSharedFontCache();
	virtual bool init();
	~BitmapFontCache();
}

[[link(android)]]
class BoomScrollLayer : cocos2d::CCLayer {
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
class CCNodeContainer : cocos2d::CCNode {
	virtual bool init();
	virtual void visit();
	static CCNodeContainer* create();
	~CCNodeContainer();
}

[[link(android)]]
class CCSpriteWithHue : cocos2d::CCSprite {
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
	TodoReturn createWithSpriteFrameName(gd::string const&);
	virtual void draw();
	static CCSpriteWithHue* create(gd::string const&);
	static CCSpriteWithHue* create(gd::string const&, cocos2d::CCRect const&);
	TodoReturn getHue();
	/* unverified signature */
	void setHue(float);
	TodoReturn getAlpha();
	TodoReturn updateHue(float);
	~CCSpriteWithHue();
}


[[link(android)]]
class CustomMusicCell : CustomSongCell {
	TodoReturn updateBGColor(int) = win 0x82D40;
	TodoReturn loadFromObject(SongInfoObject*) = win 0x83240;
	CustomMusicCell(char const*, float, float);
	~CustomMusicCell();
}

[[link(android)]]
class CustomSFXWidget : cocos2d::CCNode, MusicDownloadDelegate, FLAlertLayerProtocol {
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
class CustomSongLayer : FLAlertLayer, TextInputDelegate, GJDropDownLayerDelegate, MusicBrowserDelegate {
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
class EndPortalObject : GameObject {
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
class ExplodeItemNode : cocos2d::CCNode {
	TodoReturn createSprites(int, int, float, float, float, float, float, float, cocos2d::_ccColor4F, cocos2d::_ccColor4F, bool);
	bool init(cocos2d::CCRenderTexture*);
	static ExplodeItemNode* create(cocos2d::CCRenderTexture*);
	virtual void update(float);
	~ExplodeItemNode();
}

[[link(android)]]
class FileSaveManager : GManager {
	TodoReturn sharedState();
	TodoReturn getStoreData();
	TodoReturn loadDataFromFile(char const*);
	virtual bool init();
	TodoReturn firstLoad();
	~FileSaveManager();
}

[[link(android)]]
class FindObjectPopup : SetIDPopup {
	void onFindObjectID(cocos2d::CCObject* sender);
	virtual bool init();
	static FindObjectPopup* create();
	~FindObjectPopup();
}

[[link(android)]]
class FMODAudioEngine : cocos2d::CCNode {
	TodoReturn pauseMusic(int);
	TodoReturn playEffect(gd::string);
	TodoReturn playEffect(gd::string, float, float, float) = win 0x355b0;
	TodoReturn startMusic(int, int, int, int, bool, int) = win 0x38900;
	TodoReturn fadeInMusic(float, int);
	TodoReturn pauseEffect(unsigned int);
	TodoReturn pitchForIdx(int) = win 0x35070;
	TodoReturn printResult(FMOD_RESULT);
	TodoReturn resumeAudio();
	TodoReturn resumeMusic(int);
	TodoReturn stopChannel(int);
	void stopChannel(int, AudioTargetType, bool, float) = win 0x36a60;
	void stopChannel(FMOD::Channel*, bool, float) = win 0x36d00;
	TodoReturn storeEffect(FMOD::Sound*, gd::string) = win 0x37970;
	TodoReturn createStream(gd::string) = win 0x3ac10;
	TodoReturn fadeOutMusic(float, int);
	TodoReturn getMusicTime(int);
	/* unverified signature */
	bool isSoundReady(FMOD::Sound*);
	TodoReturn preloadMusic(gd::string, bool, int);
	TodoReturn resumeEffect(unsigned int);
	static FMODAudioEngine* sharedEngine() = win 0x32b80;
	TodoReturn stopAllMusic();
	TodoReturn testFunction(int);
	TodoReturn unloadEffect(gd::string);
	void updateReverb(FMODReverbPreset, bool) = win 0x331b0;
	TodoReturn clearAllAudio();
	TodoReturn getFMODStatus(int) = win 0x3ae60;
	TodoReturn pauseAllAudio();
	void pauseAllMusic() = win 0x380c0;
	TodoReturn preloadEffect(gd::string) = win 0x37780;
	TodoReturn updateChannel(int, AudioTargetType, AudioModType, float, float);
	TodoReturn channelStopped(FMOD::Channel*, bool);
	TodoReturn enableMetering();
	TodoReturn getActiveMusic(int);
	TodoReturn getMusicTimeMS(int);
	/* unverified signature */
	bool isEffectLoaded(gd::string);
	/* unverified signature */
	bool isMusicPlaying(int);
	/* unverified signature */
	bool isMusicPlaying(gd::string, int);
	TodoReturn lengthForSound(gd::string);
	TodoReturn loadAudioState(FMODAudioState&) = win 0x33f90;
	TodoReturn resumeAllAudio();
	TodoReturn resumeAllMusic() = win 0x38110;
	TodoReturn reverbToString(FMODReverbPreset);
	TodoReturn saveAudioState(FMODAudioState&) = win 0x33b10;
	/* unverified signature */
	void setMusicTimeMS(unsigned int, bool, int) = win 0x3a160;
	TodoReturn stopAllEffects();
	TodoReturn stopAndGetFade(FMOD::Channel*);
	TodoReturn swapMusicIndex(int, int);
	TodoReturn updateMetering();
	TodoReturn disableMetering();
	TodoReturn getChannelGroup(int, bool) = win 0x351d0;
	TodoReturn pauseAllEffects();
	TodoReturn playEffectAsync(gd::string);
	TodoReturn queuePlayEffect(gd::string, float, float, float, float, bool, bool, int, int, int, int, bool, int, bool, int, float, int);
	TodoReturn queueStartMusic(gd::string, float, float, float, bool, int, int, int, int, int, bool, int, bool);
	TodoReturn registerChannel(FMOD::Channel*, int, int) = win 0x36310;
	/* unverified signature */
	void setChannelPitch(int, AudioTargetType, float) = win 0x37620;
	TodoReturn channelLinkSound(int, FMODSound*);
	TodoReturn countActiveMusic();
	TodoReturn getEffectsVolume();
	TodoReturn getMeteringValue();
	TodoReturn getMusicLengthMS(int) = win 0x3a2e0;
	TodoReturn getNextChannelID();
	TodoReturn loadAndPlayMusic(gd::string, unsigned int, int);
	TodoReturn resumeAllEffects();
	/* unverified signature */
	void setChannelVolume(int, AudioTargetType, float);
	/* unverified signature */
	void setEffectsVolume(float);
	void setupAudioEngine() = win 0x32f20;
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
	TodoReturn playEffectAdvanced(gd::string, float, float, float, float, bool, bool, int, int, int, int, bool, int, bool, bool, int, int, float, int) = win 0x35740;
	TodoReturn preloadEffectAsync(gd::string);
	TodoReturn stopAndRemoveMusic(int);
	TodoReturn triggerQueuedMusic(FMODQueuedMusic) = win 0x39570;
	TodoReturn activateQueuedMusic(int);
	TodoReturn channelForChannelID(int) = win 0x369e0;
	/* unverified signature */
	void setChannelVolumeMod(int, AudioTargetType, float);
	TodoReturn updateChannelTweens(float);
	TodoReturn updateQueuedEffects() = win 0x38e90;
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
	TodoReturn queuedEffectFinishedLoading(gd::string) = win 0x38f60;
	virtual void stop() = win 0x5b260;
	TodoReturn setup() = win 0x32c00;
	TodoReturn start() = win 0x337c0;
	virtual void update(float) = win 0x33910;
	TodoReturn loadMusic(gd::string) = win 0x38410;
	TodoReturn loadMusic(gd::string, float, float, float, bool, int, int) = win 0x384b0;
	TodoReturn playMusic(gd::string, bool, float, int);
	TodoReturn stopMusic(int);
	~FMODAudioEngine();
}

[[link(android)]]
class GJActionManager : cocos2d::CCNode {
	TodoReturn getInternalAction(int);
	TodoReturn runInternalAction(cocos2d::CCAction*, cocos2d::CCNode*);
	TodoReturn stopInternalAction(int);
	TodoReturn updateInternalActions(float, bool) = win 0x189E70;
	TodoReturn stopAllInternalActions();
	virtual bool init();
	static GJActionManager* create();
	~GJActionManager();
}

[[link(android)]]
class GJBigSpriteNode : cocos2d::CCNode {
	virtual bool init();
	static GJBigSpriteNode* create();
	~GJBigSpriteNode();
}

[[link(android)]]
class GJChallengeItem : cocos2d::CCObject {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn incrementCount(int);
	TodoReturn createWithCoder(DS_Dictionary*);
	virtual void encodeWithCoder(DS_Dictionary*);
	TodoReturn createFromString(gd::string);
	bool init(GJChallengeType, int, int, int, gd::string);
	static GJChallengeItem* create(GJChallengeType, int, int, int, gd::string);
	static GJChallengeItem* create();
	virtual bool canEncode();
	~GJChallengeItem();
}

[[link(android)]]
class GJEffectManager : cocos2d::CCNode {
	TodoReturn pauseTimer(int);
	TodoReturn playerDied() = win 0x1DE560;
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
	TodoReturn setupFromString(gd::string);
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
	TodoReturn getLoadedMoveOffset(gd::unordered_map<int, std::pair<double, double>>&);
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
class GJFriendRequest : cocos2d::CCNode {
	virtual bool init();
	static GJFriendRequest* create(cocos2d::CCDictionary*);
	static GJFriendRequest* create();
	~GJFriendRequest();
}

[[link(android)]]
class GJGradientLayer : cocos2d::CCLayerGradient {
	virtual bool init();
	static GJGradientLayer* create();
	~GJGradientLayer();
}

[[link(android)]]
class GJObjectDecoder : cocos2d::CCNode, ObjectDecoderDelegate {
	TodoReturn sharedDecoder();
	TodoReturn getDecodedObject(int, DS_Dictionary*) = win 0x1F7B60;
	virtual bool init();
	~GJObjectDecoder();
}

[[link(android)]]
class GJSmartTemplate : cocos2d::CCObject {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn getPrefabs(gd::string);
	TodoReturn savePrefab(gd::string, gd::string);
	/* unverified signature */
	bool isUnrequired(gd::string);
	TodoReturn offsetForDir(GJSmartDirection, int);
	TodoReturn removePrefab(gd::string, int);
	TodoReturn flipBlockType(SmartBlockType, bool, bool);
	TodoReturn offsetForType(SmartBlockType);
	TodoReturn scanForPrefab(gd::string);
	TodoReturn flipBlockTypeX(SmartBlockType);
	TodoReturn flipBlockTypeY(SmartBlockType);
	TodoReturn getNoCornerKey(gd::string);
	TodoReturn createWithCoder(DS_Dictionary*);
	virtual void encodeWithCoder(DS_Dictionary*);
	TodoReturn getPrefabWithID(gd::string, int);
	TodoReturn getRandomPrefab(gd::string);
	TodoReturn offsetForObject(SmartGameObject*);
	TodoReturn rotateBlockType(SmartBlockType, int);
	TodoReturn saveRemapToDict(gd::string, gd::string, cocos2d::CCDictionary*);
	TodoReturn getSimplifiedKey(gd::string);
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
	TodoReturn getVerySimplifiedKey(gd::string);
	TodoReturn smartTypeToObjectKey(SmartBlockType);
	TodoReturn getTotalChanceForPrefab(gd::string);
	TodoReturn applyTransformationsForType(SmartBlockType, cocos2d::CCSprite*);
	virtual bool init();
	static GJSmartTemplate* create();
	TodoReturn flipKey(gd::string, bool, bool);
	virtual bool canEncode();
	TodoReturn getPrefab(cocos2d::CCPoint, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*);
	TodoReturn getPrefab(gd::string, bool, bool);
	TodoReturn rotateKey(gd::string, int);
	TodoReturn saveRemap(gd::string);
	~GJSmartTemplate();
}

[[link(android)]]
class InfoAlertButton : CCMenuItemSpriteExtra {
	bool init(gd::string, gd::string, float) = win 0x2234C0;
	static InfoAlertButton* create(gd::string, gd::string, float) = win 0x2233A0;
	virtual void activate();
	~InfoAlertButton();
}

[[link(android)]]
class InheritanceNode : cocos2d::CCObject {
	bool init(int, InheritanceNode*);
	static InheritanceNode* create(int, InheritanceNode*);
	~InheritanceNode();
}

[[link(android)]]
class LabelGameObject : EffectGameObject {
	virtual void setOpacity(unsigned char);
	TodoReturn createLabel(gd::string);
	TodoReturn removeLabel();
	TodoReturn resetObject();
	TodoReturn updateLabel(float);
	TodoReturn updateLabel(gd::string);
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn getTextKerning();
	/* unverified signature */
	void setObjectColor(cocos2d::_ccColor3B const&);
	TodoReturn queueUpdateLabel(gd::string);
	TodoReturn unlockLabelColor();
	TodoReturn updateLabelAlign(int);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn updateTextKerning(int);
	TodoReturn setupCustomSprites(gd::string);
	TodoReturn updateLabelIfDirty();
	TodoReturn updatePreviewLabel();
	TodoReturn addMainSpriteToParent(bool);
	virtual bool init();
	static LabelGameObject* create();
	~LabelGameObject();
}

[[link(android)]]
class MoreSearchLayer : FLAlertLayer, TextInputDelegate {
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
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
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
class RetryLevelLayer : GJDropDownLayer, RewardedVideoDelegate {
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
class SelectFontLayer : FLAlertLayer {
	void onChangeFont(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	TodoReturn updateFontLabel();
	bool init(LevelEditorLayer*);
	static SelectFontLayer* create(LevelEditorLayer*);
	void onClose(cocos2d::CCObject* sender);
	~SelectFontLayer();
}

[[link(android)]]
class SetColorIDPopup : SetIDPopup, GJSpecialColorSelectDelegate {
	TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
	void onSelectSpecialColor(cocos2d::CCObject* sender);
	bool init(int);
	static SetColorIDPopup* create(int);
	~SetColorIDPopup();
}

[[link(android)]]
class SetGroupIDLayer : FLAlertLayer, TextInputDelegate {
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
	TodoReturn createTextInput(cocos2d::CCPoint, int, int, gd::string, float, int);
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
class SetupPulsePopup : SetupTriggerPopup, cocos2d::extension::ColorPickerDelegate, GJSpecialColorSelectDelegate {
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
class SetupShakePopup : SetupTriggerPopup {
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
class SetupSpawnPopup : SetupTriggerPopup {
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
class SFXFolderObject : SFXInfoObject {
	bool init(int, gd::string, int);
	static SFXFolderObject* create(int, gd::string, int);
	~SFXFolderObject();
}

[[link(android)]]
class SFXSearchResult : MusicSearchResult {
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
class ShareLevelLayer : FLAlertLayer {
	void onSettings(cocos2d::CCObject* sender);
	TodoReturn setupStars();
	TodoReturn selectRating(cocos2d::CCObject*);
	TodoReturn getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);
	virtual void keyBackClicked();
	bool init(GJGameLevel*);
	static ShareLevelLayer* create(GJGameLevel*);
	void onClose(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender);
	~ShareLevelLayer();
}

[[link(android)]]
class SmartGameObject : GameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn updateSmartFrame();
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);
	static SmartGameObject* create(char const*);
	~SmartGameObject();
}

[[link(android)]]
class TopArtistsLayer : FLAlertLayer, OnlineListDelegate {
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn setupPageInfo(gd::string, char const*);
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
class UISaveLoadLayer : SetupTriggerPopup {
	bool init(UIOptionsLayer*);
	static UISaveLoadLayer* create(UIOptionsLayer*);
	void onLoad(cocos2d::CCObject* sender);
	void onSave(cocos2d::CCObject* sender);
	~UISaveLoadLayer();
}

[[link(android)]]
class UploadListPopup : FLAlertLayer, ListUploadDelegate {
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
class AccountHelpLayer : GJDropDownLayer, GJAccountDelegate, FLAlertLayerProtocol {
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
class CCAnimatedSprite : cocos2d::CCSprite {
	virtual void setOpacity(unsigned char);
	TodoReturn initWithType(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn runAnimation(gd::string) = win 0x21640;
	TodoReturn switchToMode(spriteMode);
	TodoReturn cleanupSprite();
	TodoReturn createWithType(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn tweenToAnimation(gd::string, float);
	TodoReturn animationFinished(char const*);
	TodoReturn willPlayAnimation();
	TodoReturn animationFinishedO(cocos2d::CCObject*);
	TodoReturn runAnimationForced(gd::string);
	TodoReturn tweenToAnimationFinished();
	TodoReturn loadType(char const*, cocos2d::CCTexture2D*, bool);
	virtual void setColor(cocos2d::_ccColor3B const&);
	TodoReturn stopTween();
	~CCAnimatedSprite();
}

[[link(android)]]
class CCPartAnimSprite : cocos2d::CCSprite {
	TodoReturn countParts();
	virtual void setOpacity(unsigned char);
	virtual cocos2d::CCSpriteFrame* displayFrame();
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
class CCSpriteCOpacity : cocos2d::CCSprite {
	virtual void setOpacity(unsigned char);
	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(char const*);
	~CCSpriteCOpacity();
}

[[link(android)]]
class CheckpointObject : cocos2d::CCNode {
	virtual bool init();
	static CheckpointObject* create();
	TodoReturn getObject();
	/* unverified signature */
	void setObject(GameObject*);
	~CheckpointObject();
}

[[link(android)]]
class ColorSelectPopup : SetupTriggerPopup, cocos2d::extension::ColorPickerDelegate, GJSpecialColorSelectDelegate {
	TodoReturn colorToHex(cocos2d::_ccColor3B);
	TodoReturn hexToColor(gd::string);
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
class CustomSongWidget : cocos2d::CCNode, MusicDownloadDelegate, FLAlertLayerProtocol {
	TodoReturn deleteSong();
	void onDownload(cocos2d::CCObject* sender) = win 0x93A90;
	void onPlayback(cocos2d::CCObject* sender) = win 0x93D10;
	TodoReturn updateError(GJSongError);
	TodoReturn verifySongID(int);
	void onGetSongInfo(cocos2d::CCObject* sender);
	TodoReturn startDownload();
	TodoReturn downloadFailed();
	TodoReturn updateSongInfo();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn updateLengthMod(float);
	void onCancelDownload(cocos2d::CCObject* sender) = win 0x93960;
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
	void updateMultiAssetInfo(bool) = win 0x94FE0;
	TodoReturn downloadAssetFinished(int, GJAssetType);
	TodoReturn getSongInfoIfUnloaded();
	TodoReturn processNextMultiAsset();
	TodoReturn updateWithMultiAssets(gd::string, gd::string, int);
	TodoReturn updateDownloadProgress(float);
	TodoReturn startMultiAssetDownload();
	bool init(SongInfoObject*, CustomSongDelegate*, bool, bool, bool, bool, bool, bool) = win 0x921A0;
	static CustomSongWidget* create(SongInfoObject*, CustomSongDelegate*, bool, bool, bool, bool, bool, bool);
	void onMore(cocos2d::CCObject* sender) = win 0x93390;
	void onDelete(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender) = win 0x93CC0;
	TodoReturn showError(bool);
	~CustomSongWidget();
}

[[link(android)]]
class EditorPauseLayer : CCBlockLayer, FLAlertLayerProtocol {
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
class EffectGameObject : EnhancedGameObject {
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
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
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
class EventLinkTrigger : EffectGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual bool init();
	static EventLinkTrigger* create();
	~EventLinkTrigger();
}

[[link(android)]]
class FollowRewardPage : FLAlertLayer, FLAlertLayerProtocol, GameRateDelegate, RewardedVideoDelegate {
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
class GameLevelManager : cocos2d::CCNode {
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
	TodoReturn sharedState() = win 0xF2D90;
	TodoReturn unblockUser(int);
	TodoReturn updateLevel(GJGameLevel*);
	void uploadLevel(GJGameLevel*) = win 0xFA560;
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn getGauntlets();
	TodoReturn getGJRewards(int);
	TodoReturn getIntForKey(char const*);
	TodoReturn getLengthStr(bool, bool, bool, bool, bool, bool);
	TodoReturn getMainLevel(int, bool) = win 0xF40E0;
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
	void setFolderName(int, gd::string, bool);
	/* unverified signature */
	void setLevelStars(int, int, bool);
	TodoReturn storeUserInfo(GJUserScore*);
	TodoReturn storeUserName(int, int, gd::string);
	TodoReturn uploadComment(gd::string, CommentType, int, int);
	TodoReturn createNewLevel();
	TodoReturn createPageInfo(int, int, int);
	TodoReturn getGauntletKey(int);
	TodoReturn getLikeItemKey(LikeItemType, int, bool, int);
	TodoReturn getMessagesKey(bool, int);
	TodoReturn getSavedLevels(bool, int) = win 0xF6620;
	TodoReturn getSearchScene(char const*);
	TodoReturn getUserInfoKey(int);
	TodoReturn resetAllTimers();
	TodoReturn resetGauntlets();
	TodoReturn responseToDict(gd::string, bool);
	TodoReturn saveLocalScore(int, int, int);
	TodoReturn storeUserNames(gd::string);
	TodoReturn submitUserInfo() = win 0x10FA20;
	TodoReturn tryGetUsername(int);
	TodoReturn deleteLevelList(GJLevelList*);
	TodoReturn getGJChallenges();
	TodoReturn getLevelListKey(int);
	TodoReturn getOnlineLevels(GJSearchObject*);
	TodoReturn getRateStarsKey(int);
	TodoReturn getSavedMapPack(int);
	TodoReturn getUserMessages(bool, int, int);
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	/* unverified signature */
	bool isFollowingUser(int);
	TodoReturn likeFromLikeKey(char const*);
	TodoReturn markItemAsLiked(LikeItemType, int, bool, int);
	TodoReturn typeFromLikeKey(char const*);
	TodoReturn updateUsernames();
	TodoReturn updateUserScore() = win 0x1028A0;
	TodoReturn uploadLevelList(GJLevelList*);
	TodoReturn getActiveDailyID(GJTimedLevelType);
	TodoReturn getDifficultyStr(bool, bool, bool, bool, bool, bool, bool, bool);
	TodoReturn getLevelComments(int, int, int, int, CommentKeyType);
	TodoReturn getLevelSaveData();
	TodoReturn getNextLevelName(gd::string);
	TodoReturn getSavedGauntlet(int);
	TodoReturn getTopArtistsKey(int);
	TodoReturn hasReportedLevel(int);
	TodoReturn limitSavedLevels();
	TodoReturn parseRestoreData(gd::string);
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
	TodoReturn storeSearchResult(cocos2d::CCArray*, gd::string, char const*);
	TodoReturn suggestLevelStars(int, int, int);
	TodoReturn updateDescription(int, gd::string);
	TodoReturn updateLevelOrders();
	TodoReturn uploadUserMessage(int, gd::string, gd::string);
	TodoReturn userNameForUserID(int);
	TodoReturn accountIDForUserID(int);
	TodoReturn areGauntletsLoaded();
	TodoReturn cleanupDailyLevels();
	TodoReturn createAndGetLevels(gd::string);
	TodoReturn createAndGetScores(gd::string, GJScoreType);
	TodoReturn createNewLevelList();
	TodoReturn deleteLevelComment(int, int);
	TodoReturn deleteUserMessages(GJUserMessage*, cocos2d::CCArray*, bool);
	TodoReturn getAccountComments(int, int, int);
	TodoReturn getCompletedLevels(bool) = win 0xF6A70;
	TodoReturn getSavedDailyLevel(int);
	TodoReturn getSavedLevelLists(int);
	TodoReturn getSplitIntFromKey(char const*, int);
	TodoReturn hasDownloadedLevel(int);
	TodoReturn hasRatedLevelStars(int);
	TodoReturn invalidateMessages(bool, bool);
	TodoReturn invalidateRequests(bool, bool);
	TodoReturn invalidateUserList(UserListType, bool);
	TodoReturn onBanUserCompleted(gd::string, gd::string);
	TodoReturn onGetNewsCompleted(gd::string, gd::string);
	TodoReturn pageFromCommentKey(char const*);
	TodoReturn performNetworkTest();
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn removeUserFromList(int, UserListType);
	TodoReturn specialFromLikeKey(char const*);
	TodoReturn storeFriendRequest(GJFriendRequest*);
	TodoReturn typeFromCommentKey(char const*);
	TodoReturn updateLevelRewards(GJGameLevel*);
	TodoReturn uploadLevelComment(int, gd::string, int);
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
	TodoReturn getLocalLevelByName(gd::string);
	TodoReturn getLowestLevelOrder();
	TodoReturn getUploadMessageKey(int);
	TodoReturn hasLikedAccountItem(LikeItemType, int, bool, int);
	TodoReturn markLevelAsReported(int);
	TodoReturn onGetUsersCompleted(gd::string, gd::string);
	TodoReturn onLikeItemCompleted(gd::string, gd::string);
	TodoReturn resetStoredUserInfo(int);
	TodoReturn resetStoredUserList(UserListType);
	TodoReturn saveFetchedMapPacks(cocos2d::CCArray*);
	TodoReturn storeCommentsResult(cocos2d::CCArray*, gd::string, char const*);
	TodoReturn uploadFriendRequest(int, gd::string);
	TodoReturn writeSpecialFilters(GJSearchObject*);
	TodoReturn createAndGetMapPacks(gd::string);
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
	TodoReturn onBlockUserCompleted(gd::string, gd::string);
	TodoReturn onRateDemonCompleted(gd::string, gd::string);
	TodoReturn onRateStarsCompleted(gd::string, gd::string);
	TodoReturn removeDelimiterChars(gd::string, bool);
	TodoReturn resetAccountComments(int);
	TodoReturn resetDailyLevelState(GJTimedLevelType);
	TodoReturn storeDailyLevelState(int, int, GJTimedLevelType);
	TodoReturn updateSavedLevelList(GJLevelList*);
	TodoReturn uploadAccountComment(gd::string);
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
	TodoReturn createAndGetLevelLists(gd::string);
	TodoReturn getActiveSmartTemplate();
	TodoReturn getLevelLeaderboardKey(int, LevelLeaderboardType, LevelLeaderboardMode);
	TodoReturn getStoredLevelComments(char const*);
	TodoReturn onGetMapPacksCompleted(gd::string, gd::string);
	TodoReturn onGetUserListCompleted(gd::string, gd::string);
	TodoReturn onReportLevelCompleted(gd::string, gd::string);
	TodoReturn onUnblockUserCompleted(gd::string, gd::string);
	TodoReturn onUpdateLevelCompleted(gd::string, gd::string);
	TodoReturn onUploadLevelCompleted(gd::string, gd::string);
	/* unverified signature */
	void setActiveSmartTemplate(GJSmartTemplate*);
	TodoReturn deleteSentFriendRequest(int);
	TodoReturn friendRequestWasRemoved(int, bool);
	TodoReturn hasDailyStateBeenLoaded(GJTimedLevelType);
	TodoReturn onGetGauntletsCompleted(gd::string, gd::string);
	TodoReturn onGetGJRewardsCompleted(gd::string, gd::string);
	TodoReturn onRemoveFriendCompleted(gd::string, gd::string);
	TodoReturn onRestoreItemsCompleted(gd::string, gd::string);
	TodoReturn createAndGetCommentsFull(gd::string, int, bool);
	TodoReturn onDeleteCommentCompleted(gd::string, gd::string);
	TodoReturn onDownloadLevelCompleted(gd::string, gd::string);
	TodoReturn onGetGJUserInfoCompleted(gd::string, gd::string);
	TodoReturn onGetLevelListsCompleted(gd::string, gd::string);
	TodoReturn onGetTopArtistsCompleted(gd::string, gd::string);
	TodoReturn onSetLevelStarsCompleted(gd::string, gd::string);
	TodoReturn onUploadCommentCompleted(gd::string, gd::string);
	TodoReturn createAndGetLevelComments(gd::string, int);
	TodoReturn getStoredUserMessageReply(int);
	TodoReturn levelIDFromPostCommentKey(char const*);
	TodoReturn onSubmitUserInfoCompleted(gd::string, gd::string);
	TodoReturn friendRequestFromAccountID(int);
	TodoReturn onGetGJChallengesCompleted(gd::string, gd::string);
	TodoReturn onGetOnlineLevelsCompleted(gd::string, gd::string);
	TodoReturn onGetUserMessagesCompleted(gd::string, gd::string);
	TodoReturn onUpdateUserScoreCompleted(gd::string, gd::string);
	TodoReturn onUploadLevelListCompleted(gd::string, gd::string);
	TodoReturn createAndGetAccountComments(gd::string, int);
	TodoReturn onGetLevelCommentsCompleted(gd::string, gd::string);
	TodoReturn onGetLevelSaveDataCompleted(gd::string, gd::string);
	TodoReturn onSetLevelFeaturedCompleted(gd::string, gd::string);
	TodoReturn onDeleteServerLevelCompleted(gd::string, gd::string);
	TodoReturn onGetFriendRequestsCompleted(gd::string, gd::string);
	TodoReturn onReadFriendRequestCompleted(gd::string, gd::string);
	TodoReturn onRequestUserAccessCompleted(gd::string, gd::string);
	TodoReturn onSuggestLevelStarsCompleted(gd::string, gd::string);
	TodoReturn onUpdateDescriptionCompleted(gd::string, gd::string);
	TodoReturn onUploadUserMessageCompleted(gd::string, gd::string);
	TodoReturn resetCommentTimersForLevelID(int, CommentKeyType);
	TodoReturn getSavedDailyLevelFromLevelID(int);
	TodoReturn onDeleteUserMessagesCompleted(gd::string, gd::string);
	TodoReturn onGetAccountCommentsCompleted(gd::string, gd::string);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onAcceptFriendRequestCompleted(gd::string, gd::string);
	TodoReturn onDeleteFriendRequestCompleted(gd::string, gd::string);
	TodoReturn onDownloadUserMessageCompleted(gd::string, gd::string);
	TodoReturn onGetLevelLeaderboardCompleted(gd::string, gd::string);
	TodoReturn onUploadFriendRequestCompleted(gd::string, gd::string);
	TodoReturn onGetGJDailyLevelStateCompleted(gd::string, gd::string);
	TodoReturn onGetLeaderboardScoresCompleted(gd::string, gd::string);
	TodoReturn processOnDownloadLevelCompleted(gd::string, gd::string, bool);
	TodoReturn onDeleteServerLevelListCompleted(gd::string, gd::string);
	TodoReturn removeLevelDownloadedKeysFromDict(cocos2d::CCDictionary*);
	virtual bool init();
	TodoReturn banUser(int);
	TodoReturn getNews();
	TodoReturn getUsers(GJSearchObject*);
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType);
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
class GameOptionsLayer : GJOptionsLayer {
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
class GameStatsManager : cocos2d::CCNode {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn getItemKey(int, int);
	TodoReturn getLevelKey(int, bool, bool, bool);
	TodoReturn getLevelKey(GJGameLevel*);
	TodoReturn hasUserCoin(char const*);
	TodoReturn sharedState() = win 0x165DF0;
	TodoReturn addStoreItem(int, int, int, int, ShopType) = win 0x167FB0;
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn getChallenge(int);
	TodoReturn getRewardKey(GJRewardType, int);
	TodoReturn getStoreItem(int);
	TodoReturn getStoreItem(int, int);
	/* unverified signature */
	bool isSecretCoin(gd::string);
	TodoReturn purchaseItem(int) = win 0x168160;
	TodoReturn resetPreSync();
	TodoReturn collectReward(GJRewardType, GJRewardItem*);
	TodoReturn getMapPackKey(int);
	TodoReturn getRewardItem(GJRewardType);
	TodoReturn hasSecretCoin(char const*);
	TodoReturn incrementStat(char const*);
	TodoReturn incrementStat(char const*, int) = win 0x1682C0;
	/* unverified signature */
	bool isItemEnabled(UnlockType, int);
	TodoReturn storeUserCoin(char const*);
	TodoReturn awardSecretKey() = win 0x17D860;
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
	TodoReturn checkAchievement(char const*) = win 0x168870;
	TodoReturn completedMapPack(GJMapPack*);
	TodoReturn createStoreItems() = win 0x1666E0;
	TodoReturn getBonusDiamonds(int);
	TodoReturn getDailyLevelKey(int);
	TodoReturn getDemonLevelKey(GJGameLevel*);
	TodoReturn getListRewardKey(GJLevelList*);
	TodoReturn getPathRewardKey(int);
	TodoReturn getSecretCoinKey(char const*);
	TodoReturn preProcessReward(GJRewardItem*) = win 0x170450;
	TodoReturn preSaveGameStats();
	TodoReturn recountUserCoins(bool);
	TodoReturn setupIconCredits() = win 0x15C950;
	TodoReturn storeRewardState(GJRewardType, int, int, gd::string);
	TodoReturn toggleEnableItem(UnlockType, int, bool);
	TodoReturn updateActivePath(StatKey);
	TodoReturn countSecretChests(GJRewardType);
	TodoReturn hasCompletedLevel(GJGameLevel*);
	/* unverified signature */
	bool isSecretCoinValid(gd::string);
	TodoReturn postLoadGameStats();
	TodoReturn shopTypeForItemID(int);
	TodoReturn unlockSecretChest(int) = win 0x1780B0;
	TodoReturn checkCoinsForLevel(GJGameLevel*);
	TodoReturn collectVideoReward(int);
	TodoReturn completedChallenge(GJChallengeItem*);
	TodoReturn completedStarLevel(GJGameLevel*);
	TodoReturn getItemUnlockState(int, UnlockType);
	TodoReturn getQueuedChallenge(int);
	TodoReturn hasPendingUserCoin(char const*);
	TodoReturn incrementChallenge(GJChallengeType, int) = win 0x170E40;
	/* unverified signature */
	void setStarsForMapPack(int, int);
	TodoReturn storeChallengeTime(int);
	TodoReturn unlockSpecialChest(gd::string) = win 0x177940;
	TodoReturn areChallengesLoaded();
	TodoReturn completedDailyLevel(GJGameLevel*);
	TodoReturn completedDemonLevel(GJGameLevel*);
	TodoReturn hasCompletedMapPack(int);
	TodoReturn incrementActivePath(int) = win 0x168560;
	/* unverified signature */
	bool isPathChestUnlocked(int);
	/* unverified signature */
	bool isStoreItemUnlocked(int) = win 0x168080;
	TodoReturn recountSpecialStats() = win 0x172690;
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
	TodoReturn awardCurrencyForLevel(GJGameLevel*) = win 0x16F850;
	TodoReturn awardDiamondsForLevel(GJGameLevel*) = win 0x16FD70;
	TodoReturn getSecretChestForItem(int, UnlockType);
	TodoReturn hasCompletedChallenge(GJChallengeItem*);
	TodoReturn hasCompletedMainLevel(int);
	TodoReturn hasCompletedStarLevel(GJGameLevel*);
	/* unverified signature */
	bool isSecretChestUnlocked(int);
	TodoReturn keyCostForSecretChest(int) = win 0x1781C0;
	TodoReturn processChallengeQueue(int);
	TodoReturn removeQueuedChallenge(int);
	TodoReturn createSecretChestItems() = win 0x177E30;
	TodoReturn getItemUnlockStateLite(int, UnlockType);
	TodoReturn hasCompletedDailyLevel(int);
	TodoReturn hasCompletedDemonLevel(GJGameLevel*);
	TodoReturn hasRewardBeenCollected(GJRewardType, int);
	/* unverified signature */
	bool isSpecialChestUnlocked(gd::string) = win 0x177860;
	TodoReturn createSpecialChestItems() = win 0x1740E0;
	TodoReturn getBaseCurrencyForLevel(GJGameLevel*);
	TodoReturn getRewardForSecretChest(int);
	TodoReturn hasCompletedOnlineLevel(int);
	/* unverified signature */
	bool isGauntletChestUnlocked(int);
	TodoReturn registerRewardsFromItem(GJRewardItem*) = win 0x17D700;
	TodoReturn createSecretChestRewards();
	TodoReturn getRewardForSpecialChest(gd::string);
	TodoReturn countUnlockedSecretChests(GJRewardType);
	TodoReturn getCollectedCoinsForLevel(GJGameLevel*);
	TodoReturn getSpecialChestKeyForItem(int, UnlockType);
	TodoReturn getTotalCollectedCurrency() = win 0x1718A0;
	TodoReturn getTotalCollectedDiamonds() = win 0x172390;
	TodoReturn hasCompletedGauntletLevel(int);
	TodoReturn generateItemUnlockableData() = win 0x166100;
	TodoReturn getAwardedCurrencyForLevel(GJGameLevel*);
	TodoReturn getAwardedDiamondsForLevel(GJGameLevel*);
	TodoReturn addSimpleSpecialChestReward(gd::string, UnlockType, int, bool);
	TodoReturn addSpecialRewardDescription(gd::string, gd::string);
	TodoReturn getSecondaryQueuedChallenge(int);
	TodoReturn getSpecialRewardDescription(gd::string, bool);
	TodoReturn getSpecialUnlockDescription(int, UnlockType, bool);
	/* unverified signature */
	bool isSpecialChestLiteUnlockable(gd::string);
	TodoReturn removeErrorFromSpecialChests() = win 0x17ED80;
	TodoReturn resetSpecialStatAchievements();
	TodoReturn storeSecondaryQueuedChallenge(int, GJChallengeItem*);
	TodoReturn markLevelAsCompletedAndClaimed(GJGameLevel*);
	TodoReturn removeQueuedSecondaryChallenge(int);
	virtual bool init() = win 0x166060;
	TodoReturn getStat(char const*) = win 0x168680;
	/* unverified signature */
	void setStat(char const*, int) = win 0x168760;
	TodoReturn logCoins();
	TodoReturn tempClear();
	~GameStatsManager();
}

[[link(android)]]
class GhostTrailEffect : cocos2d::CCNode {
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
class GJAccountManager : cocos2d::CCNode {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	/* unverified signature */
	bool isDLActive(char const*);
	TodoReturn getDLObject(char const*);
	TodoReturn sharedState();
	TodoReturn syncAccount(gd::string);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn loginAccount(gd::string, gd::string);
	TodoReturn addDLToActive(char const*);
	TodoReturn addDLToActive(char const*, cocos2d::CCObject*);
	TodoReturn backupAccount(gd::string);
	TodoReturn linkToAccount(gd::string, gd::string, int, int);
	TodoReturn getShaPassword(gd::string);
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	TodoReturn registerAccount(gd::string, gd::string, gd::string);
	TodoReturn getAccountSyncURL();
	TodoReturn unlinkFromAccount();
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn getAccountBackupURL();
	TodoReturn updateAccountSettings(int, int, int, gd::string, gd::string, gd::string);
	TodoReturn onSyncAccountCompleted(gd::string, gd::string);
	TodoReturn onLoginAccountCompleted(gd::string, gd::string);
	TodoReturn onBackupAccountCompleted(gd::string, gd::string);
	TodoReturn onRegisterAccountCompleted(gd::string, gd::string);
	TodoReturn onGetAccountSyncURLCompleted(gd::string, gd::string);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onGetAccountBackupURLCompleted(gd::string, gd::string);
	TodoReturn onUpdateAccountSettingsCompleted(gd::string, gd::string);
	virtual bool init();
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType);
	~GJAccountManager();
}

[[link(android)]]
class GJFlyGroundLayer : GJGroundLayer {
	virtual bool init();
	static GJFlyGroundLayer* create();
	~GJFlyGroundLayer();
}

[[link(android)]]
class GJLevelScoreCell : TableViewCell {
	void loadFromScore(GJUserScore*) = win 0x874F0;
	void onViewProfile(cocos2d::CCObject* sender);
	void updateBGColor(int) = win 0x807B0;
	virtual void draw();
	virtual bool init();
	GJLevelScoreCell(char const*, float, float);
	~GJLevelScoreCell();
}

[[link(android)]]
class GJMoreGamesLayer : GJDropDownLayer {
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
class GJUnlockableItem : cocos2d::CCObject {
	virtual bool init();
	static GJUnlockableItem* create();
	~GJUnlockableItem();
}

[[link(android)]]
class KeybindingsLayer : FLAlertLayer {
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
class LevelEditorLayer : GJBaseGameLayer, LevelSettingsDelegate {
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
	TodoReturn addObjectFromVector(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn applyAttributeState(GameObject*, GameObject*);
	TodoReturn checkpointActivated(CheckpointGameObject*);
	TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool);
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
	TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*);
	TodoReturn updateGridLayerParent();
	TodoReturn updateKeyframeObjects();
	TodoReturn updatePreviewParticle(ParticleGameObject*);
	TodoReturn createObjectsFromSetup(gd::string&);
	TodoReturn getNextFreeEditorLayer(cocos2d::CCArray*);
	TodoReturn getSavedEditorPosition(int);
	TodoReturn getSelectedEditorOrder();
	TodoReturn removeAllObjectsOfType(int);
	TodoReturn resetDelayedSpawnNodes();
	TodoReturn updatePreviewParticles();
	TodoReturn addPlayerCollisionBlock();
	TodoReturn createObjectsFromString(gd::string const&, bool, bool);
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
class LevelLeaderboard : FLAlertLayer, LeaderboardManagerDelegate, FLAlertLayerProtocol {
	TodoReturn loadScores();
	void onChangeMode(cocos2d::CCObject* sender);
	void onChangeType(cocos2d::CCObject* sender);
	TodoReturn getLocalScores();
	virtual void keyBackClicked();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn getSpriteButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint, int);
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
class LevelSearchLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DemonFilterDelegate {
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
	TodoReturn getSearchObject(SearchType, gd::string);
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
class LikeItemDelegate {
	TodoReturn likedItem(LikeItemType, int, bool);
}

[[link(android)]]
class MoreOptionsLayer : FLAlertLayer, TextInputDelegate, GooglePlayDelegate, GJDropDownLayerDelegate {
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
class MultiplayerLayer : cocos2d::CCLayer {
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
class NumberInputLayer : FLAlertLayer {
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
class PlayerCheckpoint : cocos2d::CCNode {
	virtual bool init();
	static PlayerCheckpoint* create();
	~PlayerCheckpoint();
}

[[link(android)]]
class SelectEventLayer : SetupTriggerPopup {
	TodoReturn nextPosition();
	virtual void keyBackClicked();
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(SetupEventLinkPopup*, gd::set<int>&);
	static SelectEventLayer* create(SetupEventLinkPopup*, gd::set<int>&);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn addToggle(int, gd::string);
	~SelectEventLayer();
}

[[link(android)]]
class SetTargetIDLayer : SetupTriggerPopup {
	TodoReturn valueDidChange(int, float);
	TodoReturn determineStartValues();
	bool init(EffectGameObject*, cocos2d::CCArray*, gd::string, gd::string, int, int, int);
	static SetTargetIDLayer* create(EffectGameObject*, cocos2d::CCArray*, gd::string, gd::string, int, int, int);
	~SetTargetIDLayer();
}

[[link(android)]]
class SetupPortalPopup : FLAlertLayer, TextInputDelegate {
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
class SetupReverbPopup : SetupTriggerPopup {
	TodoReturn updateReverbLabel();
	bool init(SFXTriggerGameObject*, cocos2d::CCArray*);
	static SetupReverbPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*);
	void onPlay(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onReverb(cocos2d::CCObject* sender);
	~SetupReverbPopup();
}

[[link(android)]]
class SetupRotatePopup : SetupTriggerPopup {
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(EnhancedGameObject*, cocos2d::CCArray*);
	static SetupRotatePopup* create(EnhancedGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupRotatePopup();
}

[[link(android)]]
class ShaderGameObject : EffectGameObject {
	TodoReturn customSetup();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);
	static ShaderGameObject* create(char const*);
	~ShaderGameObject();
}



[[link(android)]]
class SongOptionsLayer : FLAlertLayer {
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
class TextStyleSection : cocos2d::CCObject {
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
class WorldSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate {
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
class AccountLoginLayer : FLAlertLayer, TextInputDelegate, GJAccountLoginDelegate, FLAlertLayerProtocol {
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
	bool init(gd::string);
	static AccountLoginLayer* create(gd::string);
	void onClose(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);
	TodoReturn toggleUI(bool);
	~AccountLoginLayer();
}

[[link(android)]]
class AchievementsLayer : GJDropDownLayer {
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
class AudioEffectsLayer : cocos2d::CCLayerColor {
	TodoReturn getBGSquare();
	TodoReturn triggerEffect(float) = win 0x5BB70;
	TodoReturn resetAudioVars();
	virtual void updateTweenAction(float, char const*);
	virtual void draw();
	bool init(gd::string);
	static AudioEffectsLayer* create(gd::string);
	TodoReturn audioStep(float) = win 0x5BAD0;
	TodoReturn goingDown() = win 0x5BE10;
	~AudioEffectsLayer();
}

[[link(android)]]
class CCSpriteGrayscale : CCSpriteWithHue {
	TodoReturn shaderBody();
	TodoReturn getShaderName();
	TodoReturn createWithTexture(cocos2d::CCTexture2D*);
	TodoReturn createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(gd::string const&);
	static CCSpriteGrayscale* create(gd::string const&);
	static CCSpriteGrayscale* create(gd::string const&, cocos2d::CCRect const&);
	~CCSpriteGrayscale();
}

[[link(android)]]
class ColorActionSprite : cocos2d::CCNode {
	virtual bool init();
	static ColorActionSprite* create() = win 0x1D4800;
	~ColorActionSprite();
}

[[link(android)]]
class CustomSFXDelegate {
	TodoReturn getActiveSFXID();
	TodoReturn overridePlaySFX(SFXInfoObject*);
	TodoReturn sfxObjectSelected(SFXInfoObject*);
}

[[link(android)]]
class DungeonBarsSprite : cocos2d::CCNode {
	TodoReturn animateOutBars();
	virtual bool init();
	virtual void visit();
	static DungeonBarsSprite* create();
	~DungeonBarsSprite();
}

[[link(android)]]
class EditTriggersPopup : SetupTriggerPopup {
	TodoReturn determineStartValues();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static EditTriggersPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~EditTriggersPopup();
}

[[link(android)]]
class EnterEffectObject : EffectGameObject {
	TodoReturn customSetup();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn resetEnterAnimValues();
	bool init(char const*);
	static EnterEffectObject* create(char const*);
	~EnterEffectObject();
}

[[link(android)]]
class ExplodeItemSprite : cocos2d::CCSprite {
	virtual bool init();
	static ExplodeItemSprite* create();
	~ExplodeItemSprite();
}

[[link(android)]]
class GJAccountDelegate {
	TodoReturn accountStatusChanged();
}

[[link(android)]]
class GJColorSetupLayer : FLAlertLayer, ColorSelectDelegate, FLAlertLayerProtocol {
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
class GJPathRewardPopup : FLAlertLayer {
	TodoReturn closePopup();
	virtual void keyBackClicked();
	bool init(int);
	static GJPathRewardPopup* create(int);
	void onClaim(cocos2d::CCObject* sender);
	~GJPathRewardPopup();
}

[[link(android)]]
class GJRotationControl : cocos2d::CCLayer {
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
class GooglePlayManager : cocos2d::CCNode {
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
class LeaderboardsLayer : cocos2d::CCLayer, LeaderboardManagerDelegate, FLAlertLayerProtocol {
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
	bool init(LeaderboardState) = mac 0x4ea600, win 0x228c70;
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
class LevelBrowserLayer : cocos2d::CCLayerColor, LevelManagerDelegate, FLAlertLayerProtocol, SetIDPopupDelegate, SetTextPopupDelegate, TableViewCellDelegate, ShareCommentDelegate {
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
	TodoReturn setupPageInfo(gd::string, char const*);
	TodoReturn createNewLevel(cocos2d::CCObject*);
	TodoReturn deleteSelected();
	TodoReturn getSearchTitle();
	virtual void keyBackClicked();
	void onGoToLastPage(cocos2d::CCObject* sender);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2326E0;
	/* unverified signature */
	void setSearchObject(GJSearchObject*);
	TodoReturn updatePageLabel();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void loadLevelsFailed(char const*, int);
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onMyOnlineLevels(cocos2d::CCObject* sender);
	TodoReturn reloadAllObjects();
	/* unverified signature */
	void setIDPopupClosed(SetIDPopup*, int);
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	TodoReturn updateLevelsLabel();
	TodoReturn updateResultArray(cocos2d::CCArray*);
	virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	void onToggleAllObjects(cocos2d::CCObject* sender);
	/* unverified signature */
	void setTextPopupClosed(SetTextPopup*, gd::string);
	TodoReturn shareCommentClosed(gd::string, ShareCommentLayer*);
	TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	void onRemoveAllFavorites(cocos2d::CCObject* sender);
	TodoReturn createNewSmartTemplate(cocos2d::CCObject*);
	TodoReturn getItemsMatchingSearch(cocos2d::CCArray*, gd::string, GJSearchObject*);
	virtual void onEnterTransitionDidFinish();
	virtual void registerWithTouchDispatcher();
	bool init(GJSearchObject*) = win 0x22DE00;
	TodoReturn show();
	void onNew(cocos2d::CCObject* sender);
	TodoReturn scene(GJSearchObject*);
	static LevelBrowserLayer* create(GJSearchObject*) = win 0x22DD50;
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
class LevelFeatureLayer : FLAlertLayer {
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
class LevelOptionsLayer : GJOptionsLayer {
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
class LocalLevelManager : GManager {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn sharedState() = win 0x272F00;
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn reorderLevels();
	TodoReturn moveLevelToTop(GJGameLevel*);
	TodoReturn getCreatedLists(int);
	TodoReturn getCreatedLevels(int);
	TodoReturn updateLevelOrder();
	TodoReturn getAllLevelsInDict();
	TodoReturn getMainLevelString(int);
	TodoReturn updateLevelRevision();
	TodoReturn getAllLevelsWithName(gd::string);
	TodoReturn getLevelsInNameGroups();
	TodoReturn markLevelsAsUnmodified();
	TodoReturn tryLoadMainLevelString(int);
	virtual bool init();
	TodoReturn firstLoad();
	~LocalLevelManager();
}

[[link(android)]]
class MultiTriggerPopup : SetupTriggerPopup {
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static MultiTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);
	~MultiTriggerPopup();
}

[[link(android)]]
class MusicArtistObject : cocos2d::CCObject {
	bool init(int, gd::string, gd::string, gd::string);
	static MusicArtistObject* create(int, gd::string, gd::string, gd::string);
	~MusicArtistObject();
}

[[link(android)]]
class MusicSearchResult : cocos2d::CCObject, OptionsObjectDelegate {
	TodoReturn stateChanged(OptionsObject*);
	TodoReturn updateObjects(AudioSortType);
	TodoReturn updateObjects();
	TodoReturn applyTagFilters(cocos2d::CCArray*);
	TodoReturn updateFutureCount(cocos2d::CCArray*, cocos2d::CCArray*);
	TodoReturn applyArtistFilters(cocos2d::CCArray*);
	TodoReturn createTagFilterObjects();
	TodoReturn getFilesMatchingSearch(cocos2d::CCArray*, gd::string);
	TodoReturn createArtistFilterObjects();
	virtual bool init();
	static MusicSearchResult* create();
	~MusicSearchResult();
}

[[link(android)]]
class PromoInterstitial : FLAlertLayer {
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
class PurchaseItemPopup : FLAlertLayer {
	void onPurchase(cocos2d::CCObject* sender) = win 0x218AD0;
	virtual void keyBackClicked();
	bool init(GJStoreItem*) = win 0x218050;
	static PurchaseItemPopup* create(GJStoreItem*) = win 0x217FB0;
	void onClose(cocos2d::CCObject* sender);
	~PurchaseItemPopup();
}

[[link(android)]]
class RateLevelDelegate {
	TodoReturn rateLevelClosed();
}

[[link(android)]]
class RewardUnlockLayer : FLAlertLayer, CurrencyRewardDelegate {
	TodoReturn playDropSound();
	virtual void keyBackClicked();
	TodoReturn readyToCollect(GJRewardItem*);
	TodoReturn playLabelEffect(int, int, cocos2d::CCSprite*, cocos2d::CCPoint, float);
	TodoReturn showCloseButton();
	TodoReturn currencyWillExit(CurrencyRewardLayer*);
	TodoReturn playRewardEffect();
	TodoReturn connectionTimeout();
	TodoReturn showCollectReward(GJRewardItem*) = win 0x2F1380;
	TodoReturn labelEnterFinishedO(cocos2d::CCObject*);
	bool init(int, RewardsPage*) = win 0x2F06C0;
	TodoReturn step2();
	TodoReturn step3();
	static RewardUnlockLayer* create(int, RewardsPage*) = win 0x2F0610;
	void onClose(cocos2d::CCObject* sender);
	~RewardUnlockLayer();
}

[[link(android)]]
class SecretNumberLayer : cocos2d::CCLayer {
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
class SetupOpacityPopup : SetupTriggerPopup {
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
class SetupSFXEditPopup : SetupAudioTriggerPopup {
	bool init(SFXTriggerGameObject*, cocos2d::CCArray*, bool);
	static SetupSFXEditPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*, bool);
	~SetupSFXEditPopup();
}

[[link(android)]]
class SetupTriggerPopup : FLAlertLayer, TextInputDelegate, ConfigureValuePopupDelegate, SliderDelegate {
	TodoReturn getObjects();
	void onEaseRate(cocos2d::CCObject* sender);
	TodoReturn pageChanged();
	TodoReturn sliderBegan(Slider*);
	TodoReturn sliderEnded(Slider*);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn toggleGroup(int, bool);
	TodoReturn updateLabel(int, gd::string);
	TodoReturn updateValue(int, float);
	TodoReturn addInfoLabel(gd::string, float, cocos2d::CCPoint, int, int);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	void onPlusButton(cocos2d::CCObject* sender);
	TodoReturn updateSlider(int);
	TodoReturn updateSlider(int, float);
	TodoReturn valueChanged(int, float);
	TodoReturn addHelpButton(gd::string, gd::string, float);
	TodoReturn addCloseButton(gd::string);
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
	TodoReturn createPlusButton(int, cocos2d::CCPoint, float, gd::string, int, int);
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
	TodoReturn createCustomButton(int, gd::string, gd::string, cocos2d::CCPoint, float, float, bool, int, int);
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCPoint);
	TodoReturn createValueControl(int, gd::string, cocos2d::CCPoint, float, float, float);
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
	TodoReturn updateInputNodeLabel(int, gd::string);
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
	TodoReturn createToggleValueControl(int, gd::string, cocos2d::CCPoint, bool, int, int, float);
	TodoReturn toggleEaseRateVisibility();
	TodoReturn createValueControlWArrows(int, gd::string, cocos2d::CCPoint, float);
	TodoReturn updateCustomEaseRateLabel(int, float);
	TodoReturn updateCustomToggleTrigger(int, bool);
	TodoReturn createCustomEasingControls(gd::string, cocos2d::CCPoint, float, int, int, int, int);
	TodoReturn createValueControlAdvanced(int, gd::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float, float, int, int, GJInputStyle, int, bool);
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	TodoReturn updateDefaultTriggerValues();
	TodoReturn triggerSliderValueFromValue(int, float);
	TodoReturn triggerValueFromSliderValue(int, float);
	TodoReturn createMultiTriggerItemsCorner();
	TodoReturn createCustomToggleValueControl(int, bool, bool, gd::string, cocos2d::CCPoint, bool, int, int);
	TodoReturn createMultiTriggerItemsDefault();
	TodoReturn toggleCustomEaseRateVisibility(int, int);
	TodoReturn createToggleValueControlAdvanced(int, gd::string, cocos2d::CCPoint, bool, int, int, float, float, float, cocos2d::CCPoint);
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
	TodoReturn addTitle(gd::string);
	TodoReturn getValue(int);
	TodoReturn goToPage(int, bool);
	TodoReturn preSetup();
	TodoReturn toggleBG(bool);
	TodoReturn postSetup();
	~SetupTriggerPopup();
}

[[link(android)]]
class ShareCommentLayer : FLAlertLayer, TextInputDelegate, UploadActionDelegate, UploadPopupDelegate {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn onClosePopup(UploadActionPopup*);
	virtual void keyBackClicked();
	TodoReturn updateDescText(gd::string);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn updatePercentLabel();
	TodoReturn uploadActionFailed(int, int);
	TodoReturn updateCharCountLabel();
	TodoReturn uploadActionFinished(int, int);
	virtual void registerWithTouchDispatcher();
	bool init(gd::string, int, CommentType, int, gd::string);
	static ShareCommentLayer* create(gd::string, int, CommentType, int, gd::string);
	void onClear(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender);
	void onPercent(cocos2d::CCObject* sender);
	~ShareCommentLayer();
}

[[link(android)]]
class SmartTemplateCell : TableViewCell {
	void updateBGColor(int) = win 0x8AB60;
	void loadFromObject(GJSmartTemplate*) = win 0x8A860;
	virtual void draw();
	virtual bool init();
	void onClick(cocos2d::CCObject* sender);
	SmartTemplateCell(char const*, float, float);
	~SmartTemplateCell();
}

[[link(android)]]
class SpriteDescription : cocos2d::CCObject {
	TodoReturn initDescription(DS_Dictionary*);
	TodoReturn initDescription(cocos2d::CCDictionary*);
	TodoReturn createDescription(DS_Dictionary*);
	TodoReturn createDescription(cocos2d::CCDictionary*);
	~SpriteDescription();
}


[[link(android)]]
class UploadActionPopup : FLAlertLayer {
	TodoReturn closePopup();
	virtual void keyBackClicked();
	TodoReturn showFailMessage(gd::string);
	TodoReturn showSuccessMessage(gd::string);
	bool init(UploadPopupDelegate*, gd::string);
	static UploadActionPopup* create(UploadPopupDelegate*, gd::string);
	void onClose(cocos2d::CCObject* sender);
	~UploadActionPopup();
}

[[link(android)]]
class VideoOptionsLayer : FLAlertLayer {
	void onAdvanced(cocos2d::CCObject* sender);
	TodoReturn reloadMenu();
	void onFullscreen(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	void onResolutionNext(cocos2d::CCObject* sender);
	void onResolutionPrev(cocos2d::CCObject* sender);
	TodoReturn toggleResolution();
	TodoReturn updateResolution(int);
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float, bool);
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
class AchievementManager : cocos2d::CCNode {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn sharedState();
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn addAchievement(gd::string, gd::string, gd::string, gd::string, gd::string, int);
	TodoReturn resetAchievement(char const*);
	TodoReturn notifyAchievement(char const*, char const*, char const*);
	TodoReturn resetAchievements();
	TodoReturn checkAchFromUnlock(char const*);
	TodoReturn getAllAchievements();
	TodoReturn percentageForCount(int, int);
	/* unverified signature */
	bool isAchievementEarned(char const*);
	TodoReturn limitForAchievement(gd::string);
	TodoReturn achievementForUnlock(int, UnlockType);
	TodoReturn addManualAchievements();
	TodoReturn areAchievementsEarned(cocos2d::CCArray*);
	TodoReturn getAchievementsWithID(char const*);
	TodoReturn percentForAchievement(char const*);
	/* unverified signature */
	bool isAchievementAvailable(gd::string);
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
class AnimatedGameObject : EnhancedGameObject, AnimatedSpriteDelegate, SpritePartDelegate {
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
	TodoReturn displayFrameChanged(cocos2d::CCObject*, gd::string);
	TodoReturn updateObjectAnimation();
	TodoReturn updateChildSpriteColor(cocos2d::_ccColor3B);
	bool init(int);
	static AnimatedGameObject* create(int);
	~AnimatedGameObject();
}

[[link(android)]]
class AnimatedShopKeeper : CCAnimatedSprite {
	TodoReturn startAnimating();
	TodoReturn animationFinished(char const*);
	TodoReturn playReactAnimation();
	bool init(ShopType);
	static AnimatedShopKeeper* create(ShopType);
	~AnimatedShopKeeper();
}

[[link(android)]]
class CharacterColorPage : FLAlertLayer {
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
class ColorSetupDelegate {
	TodoReturn colorSetupClosed(int);
}

[[link(android)]]
class ConfigureHSVWidget : cocos2d::CCNode, TextInputDelegate {
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
class EditorOptionsLayer : GJOptionsLayer {
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
	// ~EffectManagerState();
}

[[link(android)]]
class EnhancedGameObject : GameObject {
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
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
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
class FriendRequestPopup : FLAlertLayer, UploadActionDelegate, UploadPopupDelegate, FLAlertLayerProtocol {
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
class FriendsProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, UserListDelegate {
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
class GameEffectsManager : cocos2d::CCNode {
	TodoReturn scaleParticle(cocos2d::CCParticleSystemQuad*, float);
	TodoReturn addParticleEffect(cocos2d::CCParticleSystemQuad*, int);
	bool init(PlayLayer*);
	static GameEffectsManager* create(PlayLayer*);
	~GameEffectsManager();
}

[[link(android)]]
class GameOptionsTrigger : EffectGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);
	static GameOptionsTrigger* create(char const*);
	~GameOptionsTrigger();
}

[[link(android)]]
class GJCommentListLayer : cocos2d::CCLayerColor {
	bool init(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, bool);
	static GJCommentListLayer* create(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, bool);
	~GJCommentListLayer();
}

[[link(android)]]
class GJDifficultySprite : cocos2d::CCSprite {
	TodoReturn getDifficultyFrame(int, GJDifficultyName);
	TodoReturn updateFeatureState(GJFeatureState);
	TodoReturn updateDifficultyFrame(int, GJDifficultyName);
	TodoReturn updateFeatureStateFromLevel(GJGameLevel*);
	bool init(int, GJDifficultyName);
	static GJDifficultySprite* create(int, GJDifficultyName);
	~GJDifficultySprite();
}

[[link(android)]]
class GJGameLoadingLayer : cocos2d::CCLayer {
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
class GJTransformControl : cocos2d::CCLayer {
	TodoReturn loadValues(GameObject*, cocos2d::CCArray*, gd::unordered_map<int, GameObjectEditorState>&);
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
class KeybindingsManager : cocos2d::CCNode {
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
class KeyframeGameObject : EffectGameObject {
	virtual void setOpacity(unsigned char);
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn updateShadowObjects(GJBaseGameLayer*, EditorUI*);
	virtual bool init();
	static KeyframeGameObject* create();
	~KeyframeGameObject();
}

[[link(android)]]
class LevelOptionsLayer2 : LevelOptionsLayer {
	TodoReturn setupOptions();
	bool init(LevelSettingsObject*);
	static LevelOptionsLayer2* create(LevelSettingsObject*);
	~LevelOptionsLayer2();
}

[[link(android)]]
class LevelSettingsLayer : FLAlertLayer, ColorSelectDelegate, SelectArtDelegate, SelectSettingDelegate, FLAlertLayerProtocol, CustomSongLayerDelegate, TextInputDelegate {
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
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
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
	TodoReturn setupPageInfo(gd::string, char const*);
	TodoReturn loadListFailed(char const*);
	TodoReturn loadListFinished(cocos2d::CCArray*, char const*);
}

[[link(android)]]
class OptionsScrollLayer : FLAlertLayer, TableViewCellDelegate {
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
class ParticleGameObject : EnhancedGameObject {
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
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	/* unverified signature */
	void setParticleString(gd::string);
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
class SecretRewardsLayer : cocos2d::CCLayer, DialogDelegate, BoomScrollLayerDelegate {
	void onChestType(cocos2d::CCObject* sender);
	TodoReturn dialogClosed(DialogLayer*);
	TodoReturn getPageColor(int);
	void onSelectItem(cocos2d::CCObject* sender) = win 0x2F6D50;
	void onSwitchPage(cocos2d::CCObject* sender);
	TodoReturn showDialog01() = win 0x2F7970;
	TodoReturn showDialog03() = win 0x2F8660;
	void onSpecialItem(cocos2d::CCObject* sender) = win 0x2F7360;
	virtual void keyBackClicked();
	TodoReturn moveToMainLayer(cocos2d::CCObject*);
	TodoReturn showLockedChest();
	TodoReturn scrollLayerMoved(cocos2d::CCPoint);
	TodoReturn updateBackButton();
	TodoReturn showDialogDiamond() = win 0x2F9A20;
	TodoReturn generateChestItems(int);
	TodoReturn showDialogMechanic() = win 0x2F9070;
	TodoReturn switchToOpenedState(CCMenuItemSpriteExtra*) = win 0x2F7630;
	TodoReturn updateUnlockedLabel() = win 0x2F76E0;
	TodoReturn createSecondaryLayer(int);
	TodoReturn moveToSecondaryLayer(int);
	bool init(bool);
	TodoReturn scene(bool);
	static SecretRewardsLayer* create(bool);
	void onBack(cocos2d::CCObject* sender);
	virtual void onExit();
	void onShop(cocos2d::CCObject* sender) = win 0x2F70B0;
	TodoReturn goToPage(int);
	TodoReturn showShop(int);
	~SecretRewardsLayer();
}

[[link(android)]]
class SelectPremadeLayer : FLAlertLayer {
	virtual void keyBackClicked();
	void onSelectPremade(cocos2d::CCObject* sender);
	virtual bool init();
	static SelectPremadeLayer* create();
	void onClose(cocos2d::CCObject* sender);
	~SelectPremadeLayer();
}

[[link(android)]]
class SelectSettingLayer : FLAlertLayer {
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
class SelectSFXSortLayer : FLAlertLayer {
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
       void setIDPopupClosed(SetIDPopup*, int) {}
}

[[link(android)]]
class SetLevelOrderPopup : SetIDPopup {
	void onOrderButton(cocos2d::CCObject* sender);
	bool init(int, int, int);
	static SetLevelOrderPopup* create(int, int, int);
	~SetLevelOrderPopup();
}

[[link(android)]]
class SetupDashRingPopup : SetupTriggerPopup {
	bool init(DashRingObject*, cocos2d::CCArray*);
	static SetupDashRingPopup* create(DashRingObject*, cocos2d::CCArray*);
	~SetupDashRingPopup();
}

[[link(android)]]
class SetupGradientPopup : SetupTriggerPopup {
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
class SetupKeyframePopup : SetupTriggerPopup {
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
class SetupTeleportPopup : SetupTriggerPopup {
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
class SetupTimeWarpPopup : SetupTriggerPopup {
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
	TodoReturn displayFrameChanged(cocos2d::CCObject*, gd::string);
}


[[link(android)]]
class BrowseSmartKeyLayer : BrowseSmartTemplateLayer {
	void onPrefabObject(cocos2d::CCObject* sender);
	TodoReturn updateChanceValues();
	TodoReturn addChanceToSelected(int, bool);
	TodoReturn deletedSelectedItems();
	TodoReturn getAllSelectedBlocks();
	TodoReturn createTemplateObjects();
	bool init(GJSmartTemplate*, gd::string);
	static BrowseSmartKeyLayer* create(GJSmartTemplate*, gd::string);
	void onBack(cocos2d::CCObject* sender);
	void onButton(cocos2d::CCObject* sender);
	~BrowseSmartKeyLayer();
}

[[link(android)]]
class CCAnimateFrameCache : cocos2d::CCObject {
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
class CollisionBlockPopup : FLAlertLayer, TextInputDelegate {
	TodoReturn textChanged(CCTextInputNode*);
	void onNextItemID(cocos2d::CCObject* sender);
	TodoReturn updateItemID();
	void onItemIDArrow(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	void onDynamicBlock(cocos2d::CCObject* sender);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputReturn(CCTextInputNode*);
	TodoReturn updateEditorLabel();
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
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
class CommunityCreditNode : cocos2d::CCNode {
	bool init(int, int, int, gd::string);
	static CommunityCreditNode* create(int, int, int, gd::string);
	~CommunityCreditNode();
}

[[link(android)]]
class ConfigureValuePopup : FLAlertLayer, TextInputDelegate {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	virtual void keyBackClicked();
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn updateTextInputLabel();
	bool init(ConfigureValuePopupDelegate*, float, float, float, gd::string, gd::string);
	static ConfigureValuePopup* create(ConfigureValuePopupDelegate*, float, float, float, gd::string, gd::string);
	void onClose(cocos2d::CCObject* sender);
	~ConfigureValuePopup();
}

[[link(android)]]
class CreateParticlePopup : FLAlertLayer, TextInputDelegate, ColorSelectDelegate, SliderDelegate {
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
	bool init(ParticleGameObject*, cocos2d::CCArray*, gd::string);
	static CreateParticlePopup* create(ParticleGameObject*, cocos2d::CCArray*);
	static CreateParticlePopup* create(ParticleGameObject*, cocos2d::CCArray*, gd::string);
	static CreateParticlePopup* create(gd::string);
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
class CurrencyRewardLayer : cocos2d::CCLayer {
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
class EditGameObjectPopup : SetupTriggerPopup {
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
	// ~EnterEffectInstance();
}

[[link(android)]]
class FMODLevelVisualizer : cocos2d::CCNode {
	TodoReturn updateVisualizer(float, float, float);
	virtual bool init();
	static FMODLevelVisualizer* create();
	~FMODLevelVisualizer();
}

[[link(android)]]
class FRequestProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, FriendRequestDelegate {
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn untoggleAll();
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn setupPageInfo(gd::string, char const*);
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
class GauntletSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate, LevelManagerDelegate {
	TodoReturn unblockPlay();
	TodoReturn updateArrows();
	virtual void keyBackClicked();
	TodoReturn setupGauntlets();
	virtual void loadLevelsFailed(char const*, int);
	virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int);
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
class GJSmartBlockPreview : cocos2d::CCNode {
	TodoReturn addPreview(gd::string, gd::string, LevelEditorLayer*);
	TodoReturn createInfoLabel();
	TodoReturn addTemplateGuide(SmartPrefabResult, float);
	TodoReturn addTemplateGuide(gd::string, int);
	TodoReturn toggleSelectItem(bool);
	bool init(gd::string);
	static GJSmartBlockPreview* create(gd::string);
	TodoReturn addCount(int);
	TodoReturn addChance(int, int);
	~GJSmartBlockPreview();
}

[[link(android)]]
class GJWriteMessagePopup : FLAlertLayer, TextInputDelegate, UploadMessageDelegate, UploadPopupDelegate, FLAlertLayerProtocol {
	TodoReturn updateBody(gd::string);
	TodoReturn updateText(gd::string, int);
	void onClearBody(cocos2d::CCObject* sender);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn updateSubject(gd::string);
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
class GraphicsReloadLayer : cocos2d::CCLayer {
	TodoReturn performReload();
	bool init(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool);
	TodoReturn scene(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool);
	static GraphicsReloadLayer* create(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool);
	~GraphicsReloadLayer();
}

[[link(android)]]
class GravityEffectSprite : cocos2d::CCSprite {
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
	// GroupCommandObject2(GroupCommandObject2 const&);
	// GroupCommandObject2();
}

[[link(android)]]
class LevelAreaInnerLayer : cocos2d::CCLayer, DialogDelegate {
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
class LevelSettingsObject : cocos2d::CCNode {
	TodoReturn getSaveString();
	TodoReturn objectFromDict(cocos2d::CCDictionary*);
	TodoReturn objectFromString(gd::string const&);
	TodoReturn shouldUseYSection();
	TodoReturn setupColorsFromLegacyMode(cocos2d::CCDictionary*);
	virtual bool init();
	static LevelSettingsObject* create() = win 0x248A80;
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
class LoadingCircleSprite : cocos2d::CCSprite {
	TodoReturn hideCircle();
	TodoReturn fadeInCircle(bool);
	virtual bool init();
	static LoadingCircleSprite* create();
	~LoadingCircleSprite();
}

[[link(android)]]
class MessageListDelegate {
	TodoReturn setupPageInfo(gd::string, char const*);
	TodoReturn loadMessagesFailed(char const*, GJErrorCode);
	TodoReturn forceReloadMessages(bool);
	TodoReturn loadMessagesFinished(cocos2d::CCArray*, char const*);
}

[[link(android)]]
class MessagesProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, MessageListDelegate {
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn untoggleAll();
	TodoReturn onClosePopup(UploadActionPopup*);
	TodoReturn setupPageInfo(gd::string, char const*);
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
class MultilineBitmapFont : cocos2d::CCSprite {
	virtual void setOpacity(unsigned char);
	TodoReturn initWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int, bool);
	TodoReturn readColorInfo(gd::string);
	TodoReturn createWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int, bool);
	TodoReturn stringWithMaxWidth(gd::string, float, float);
	TodoReturn moveSpecialDescriptors(int, int);
	~MultilineBitmapFont();
}

[[link(android)]]
class NewgroundsInfoLayer : FLAlertLayer, FLAlertLayerProtocol {
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
class SelectListIconLayer : FLAlertLayer {
	virtual void keyBackClicked();
	bool init(int);
	static SelectListIconLayer* create(int);
	void onClose(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);
	~SelectListIconLayer();
}

[[link(android)]]
class SetupAdvFollowPopup : SetupTriggerPopup, SelectPremadeDelegate {
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
class SetupAnimationPopup : SetupTriggerPopup {
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
class SetupArtSwitchPopup : SetupTriggerPopup, SelectArtDelegate {
	TodoReturn selectArtClosed(SelectArtLayer*);
	bool init(ArtTriggerGameObject*, cocos2d::CCArray*, int);
	void onArt(cocos2d::CCObject* sender);
	static SetupArtSwitchPopup* create(ArtTriggerGameObject*, cocos2d::CCArray*, int);
	~SetupArtSwitchPopup();
}

[[link(android)]]
class SetupBGSpeedTrigger : SetupTriggerPopup {
	bool init(EffectGameObject*, cocos2d::CCArray*, int);
	static SetupBGSpeedTrigger* create(EffectGameObject*, cocos2d::CCArray*, int);
	~SetupBGSpeedTrigger();
}

[[link(android)]]
class SetupEventLinkPopup : SetupTriggerPopup {
	void onSelectEvent(cocos2d::CCObject* sender);
	TodoReturn updateEventIDs(gd::set<int>&);
	bool init(EventLinkTrigger*, cocos2d::CCArray*);
	static SetupEventLinkPopup* create(EventLinkTrigger*, cocos2d::CCArray*);
	~SetupEventLinkPopup();
}

[[link(android)]]
class SetupTransformPopup : SetupTriggerPopup {
	bool init(TransformTriggerGameObject*, cocos2d::CCArray*);
	static SetupTransformPopup* create(TransformTriggerGameObject*, cocos2d::CCArray*);
	~SetupTransformPopup();
}

[[link(android)]]
class UploadPopupDelegate {
	TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class AccountRegisterLayer : FLAlertLayer, TextInputDelegate, GJAccountRegisterDelegate, FLAlertLayerProtocol {
	TodoReturn resetLabel(int);
	TodoReturn validEmail(gd::string);
	TodoReturn resetLabels();
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn updateLabel(AccountError);
	TodoReturn disableNodes();
	TodoReturn hideLoadingUI();
	TodoReturn showLoadingUI();
	TodoReturn validPassword(gd::string);
	TodoReturn allowTextInput(CCTextInputNode*);
	virtual void keyBackClicked();
	TodoReturn createTextInput(cocos2d::CCPoint, cocos2d::CCSize, gd::string, int);
	TodoReturn createTextLabel(cocos2d::CCPoint, gd::string, cocos2d::CCSize);
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
	TodoReturn validUser(gd::string);
	~AccountRegisterLayer();
}

[[link(android)]]
class ArtTriggerGameObject : EffectGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);
	static ArtTriggerGameObject* create(char const*);
	~ArtTriggerGameObject();
}

[[link(android)]]
class CCCircleWaveDelegate {
	TodoReturn circleWaveWillBeRemoved(CCCircleWave*);
}

[[link(android)]]
class CheckpointGameObject : EffectGameObject {
	TodoReturn resetObject();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn restoreObject();
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn resetCheckpoint();
	TodoReturn triggerActivated(float);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn setupCustomSprites(gd::string);
	TodoReturn updateSyncedAnimation(float, int);
	TodoReturn updateCheckpointSpriteVisibility();
	virtual bool init();
	static CheckpointGameObject* create();
	~CheckpointGameObject();
}

[[link(android)]]
class CommunityCreditsPage : FLAlertLayer {
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
class CustomizeObjectLayer : FLAlertLayer, TextInputDelegate, HSVWidgetDelegate, ColorSelectDelegate, ColorSetupDelegate {
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
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
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
class EndTriggerGameObject : EffectGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual bool init();
	static EndTriggerGameObject* create();
	~EndTriggerGameObject();
}

[[link(android)]]
class ForceBlockGameObject : EffectGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
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
class GJFollowCommandLayer : SetupTriggerPopup {
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
class GJMultiplayerManager : cocos2d::CCNode {
	TodoReturn addComment(gd::string, int);
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
	TodoReturn uploadComment(gd::string, int);
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	TodoReturn getBasePostString();
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn createAndAddComment(gd::string, int);
	TodoReturn onExitLobbyCompleted(gd::string, gd::string);
	TodoReturn onJoinLobbyCompleted(gd::string, gd::string);
	TodoReturn getLastCommentIDForGame(int);
	TodoReturn onUploadCommentCompleted(gd::string, gd::string);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	virtual bool init();
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType);
	TodoReturn exitLobby(int);
	TodoReturn joinLobby(int);
	~GJMultiplayerManager();
}

[[link(android)]]
class GJRotateCommandLayer : SetupTriggerPopup {
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
class GJSpecialColorSelect : FLAlertLayer {
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
	TodoReturn setupPageInfo(gd::string, char const*);
	TodoReturn loadCommentsFailed(char const*);
	TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*);
	TodoReturn updateUserScoreFinished();
}

[[link(android)]]
class MusicBrowserDelegate {
	TodoReturn musicBrowserClosed(MusicBrowser*);
}

[[link(android)]]
class MusicDelegateHandler : cocos2d::CCNode {
	bool init(MusicDownloadDelegate*);
	static MusicDelegateHandler* create(MusicDownloadDelegate*);
	~MusicDelegateHandler();
}

[[link(android)]]
class MusicDownloadManager : cocos2d::CCNode, PlatformDownloadDelegate {
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
	TodoReturn responseToDict(gd::string, char const*);
	TodoReturn createSongsInfo(gd::string);
	TodoReturn getAllMusicTags(OptionsObjectDelegate*);
	TodoReturn getSongPriority();
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
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
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
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
	TodoReturn ProcessHttpGetRequest(gd::string, gd::string, cocos2d::extension::SEL_HttpResponse, int, int);
	TodoReturn tryUpdateMusicLibrary();
	TodoReturn getSFXDownloadProgress(int);
	TodoReturn onDownloadSFXCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onGetSongInfoCompleted(gd::string, gd::string);
	TodoReturn addSongObjectFromString(gd::string);
	TodoReturn getSFXFolderObjectForID(int);
	TodoReturn onDownloadSongCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn addMusicDownloadDelegate(MusicDownloadDelegate*);
	TodoReturn generateCustomContentURL(gd::string);
	TodoReturn incrementPriorityForSong(int);
	/* unverified signature */
	bool isRunningActionForSongID(int);
	TodoReturn generateResourceAssetList();
	TodoReturn removeMusicDownloadDelegate(MusicDownloadDelegate*);
	TodoReturn onDownloadSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onGetCustomContentURLCompleted(gd::string, gd::string);
	TodoReturn onTryUpdateSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onDownloadMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onTryUpdateMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	virtual bool init();
	TodoReturn showTOS(FLAlertLayerProtocol*);
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType);
	TodoReturn clearSong(int);
	TodoReturn deleteSFX(int);
	~MusicDownloadManager();
}

[[link(android)]]
class ParentalOptionsLayer : FLAlertLayer {
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
class ParticlePreviewLayer : cocos2d::CCLayerColor {
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
	void setTextPopupClosed(SetTextPopup*, gd::string);
}

[[link(android)]]
class SetupCameraEdgePopup : SetupTriggerPopup {
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
class SetupCameraModePopup : SetupTriggerPopup {
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
class SetupCheckpointPopup : SetupTriggerPopup {
	bool init(CheckpointGameObject*, cocos2d::CCArray*);
	static SetupCheckpointPopup* create(CheckpointGameObject*, cocos2d::CCArray*);
	~SetupCheckpointPopup();
}

[[link(android)]]
class SetupForceBlockPopup : SetupTriggerPopup {
	TodoReturn valueDidChange(int, float);
	bool init(ForceBlockGameObject*, cocos2d::CCArray*);
	static SetupForceBlockPopup* create(ForceBlockGameObject*, cocos2d::CCArray*);
	~SetupForceBlockPopup();
}

[[link(android)]]
class SetupGravityModPopup : FLAlertLayer, TextInputDelegate {
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
class SetupSmartBlockLayer : FLAlertLayer, TextInputDelegate, SelectArtDelegate {
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
class ShareCommentDelegate {
	TodoReturn shareCommentClosed(gd::string, ShareCommentLayer*);
}

[[link(android)]]
class SongPlaybackDelegate {
	TodoReturn onPlayback(SongInfoObject*);
}

[[link(android)]]
class TeleportPortalObject : RingObject {
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
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	/* unverified signature */
	void setPositionOverride(cocos2d::CCPoint);
	/* unverified signature */
	void setStartPosOverride(cocos2d::CCPoint);
	bool init(char const*, bool);
	static TeleportPortalObject* create(char const*, bool);
	~TeleportPortalObject();
}

[[link(android)]]
class UISettingsGameObject : EffectGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
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
class CommentUploadDelegate {
	TodoReturn commentDeleteFailed(int, int);
	TodoReturn commentUploadFailed(int, CommentError);
	TodoReturn commentUploadFinished(int);
}

[[link(android)]]
class CreateGuidelinesLayer : FLAlertLayer, FLAlertLayerProtocol {
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
	TodoReturn getMergedRecordString(gd::string, gd::string);
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
class EnhancedTriggerObject : EffectGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);
	static EnhancedTriggerObject* create(char const*);
	~EnhancedTriggerObject();
}

[[link(android)]]
class FriendRequestDelegate {
	TodoReturn setupPageInfo(gd::string, char const*);
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
class GJLocalLevelScoreCell : TableViewCell {
	void loadFromScore(GJLocalScore*) = win 0x87120;
	void updateBGColor(int) = win 0x873B0;
	virtual void draw();
	virtual bool init();
	GJLocalLevelScoreCell(char const*, float, float);
	~GJLocalLevelScoreCell();
}

[[link(android)]]
class GJPFollowCommandLayer : SetupTriggerPopup {
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
class GradientTriggerObject : EffectGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual bool init();
	static GradientTriggerObject* create();
	~GradientTriggerObject();
}

[[link(android)]]
class ItemTriggerGameObject : EffectGameObject {
	TodoReturn customSetup();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
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
class MoreVideoOptionsLayer : FLAlertLayer, TextInputDelegate {
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
class PlayerFireBoostSprite : cocos2d::CCSprite {
	TodoReturn animateFireIn() = win 0x2D5100;
	TodoReturn animateFireOut();
	TodoReturn loopFireAnimation() = win 0x2D5170;
	virtual bool init();
	static PlayerFireBoostSprite* create();
	~PlayerFireBoostSprite();
}

[[link(android)]]
class RandTriggerGameObject : ChanceTriggerGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn getTotalChance();
	TodoReturn getRandomGroupID();
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
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
class SetupAreaTriggerPopup : SetupAreaMoveTriggerPopup {
	bool init(EnterEffectObject*, cocos2d::CCArray*);
	static SetupAreaTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);
	~SetupAreaTriggerPopup();
}

[[link(android)]]
class SetupCameraGuidePopup : SetupTriggerPopup {
	bool init(CameraTriggerGameObject*, cocos2d::CCArray*);
	static SetupCameraGuidePopup* create(CameraTriggerGameObject*, cocos2d::CCArray*);
	~SetupCameraGuidePopup();
}

[[link(android)]]
class SetupEnterEffectPopup : SetupTriggerPopup, HSVWidgetDelegate {
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
class SetupMoveCommandPopup : SetupTriggerPopup {
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
class SetupRandTriggerPopup : SetupTriggerPopup {
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
class SetupSongTriggerPopup : SetupAudioTriggerPopup, MusicDownloadDelegate, SongPlaybackDelegate {
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
class SetupStopTriggerPopup : SetupTriggerPopup {
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupStopTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupStopTriggerPopup();
}

[[link(android)]]
class SetupTouchTogglePopup : SetupTriggerPopup {
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
class SetupZoomTriggerPopup : SetupTriggerPopup {
	TodoReturn determineStartValues();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupZoomTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupZoomTriggerPopup();
}

[[link(android)]]
class SongTriggerGameObject : SFXTriggerGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);
	static SongTriggerGameObject* create(char const*);
	~SongTriggerGameObject();
}

[[link(android)]]
class SpecialAnimGameObject : EnhancedGameObject {
	TodoReturn resetObject();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn updateMainColor(cocos2d::_ccColor3B const&);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn updateSecondaryColor(cocos2d::_ccColor3B const&);
	TodoReturn updateSyncedAnimation(float, int);
	bool init(char const*);
	static SpecialAnimGameObject* create(char const*);
	~SpecialAnimGameObject();
}

[[link(android)]]
class UIObjectSettingsPopup : SetupTriggerPopup {
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
class ColorSelectLiveOverlay : FLAlertLayer {
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
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn determineStartValues();
	bool init(ColorAction*, ColorAction*, EffectGameObject*);
	TodoReturn show();
	static ColorSelectLiveOverlay* create(ColorAction*, ColorAction*, EffectGameObject*);
	~ColorSelectLiveOverlay();
}

[[link(android)]]
class CountTriggerGameObject : EffectGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);
	static CountTriggerGameObject* create(char const*);
	~CountTriggerGameObject();
}

[[link(android)]]
class CurrencyRewardDelegate {
	TodoReturn currencyWillExit(CurrencyRewardLayer*);
}

[[link(android)]]
class DemonFilterSelectLayer : FLAlertLayer {
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
class GJAccountSettingsLayer : FLAlertLayer, TextInputDelegate {
	virtual void keyBackClicked();
	TodoReturn textInputReturn(CCTextInputNode*);
	void onCommentSetting(cocos2d::CCObject* sender);
	void onFriendRequests(cocos2d::CCObject* sender);
	void onMessageSetting(cocos2d::CCObject* sender);
	TodoReturn updateScoreValues();
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float);
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
class SetupAnimSettingsPopup : SetupTriggerPopup {
	TodoReturn updateAnimSettings();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupAnimSettingsPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupAnimSettingsPopup();
}

[[link(android)]]
class SetupAudioTriggerPopup : SetupTriggerPopup {
	void onProxMode(cocos2d::CCObject* sender);
	TodoReturn valueDidChange(int, float);
	TodoReturn addTimeControls(int, float);
	TodoReturn addProxVolControls(int);
	TodoReturn updateSpecialGroup();
	~SetupAudioTriggerPopup();
}

[[link(android)]]
class SetupCameraRotatePopup : SetupTriggerPopup {
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
class SetupCountTriggerPopup : SetupTriggerPopup {
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
class SetupEnterTriggerPopup : SetupTriggerPopup {
	void onEnterType(cocos2d::CCObject* sender);
	TodoReturn determineStartValues();
	bool init(EnterEffectObject*, cocos2d::CCArray*);
	static SetupEnterTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);
	~SetupEnterTriggerPopup();
}

[[link(android)]]
class SetupInstantCountPopup : SetupTriggerPopup {
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
class SetupKeyframeAnimPopup : SetupTriggerPopup {
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupKeyframeAnimPopup* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupKeyframeAnimPopup();
}

[[link(android)]]
class SetupObjectTogglePopup : SetupTriggerPopup {
	TodoReturn valueDidChange(int, float);
	bool init(EffectGameObject*, cocos2d::CCArray*, bool);
	static SetupObjectTogglePopup* create(EffectGameObject*, cocos2d::CCArray*, bool);
	void onClose(cocos2d::CCObject* sender);
	~SetupObjectTogglePopup();
}

[[link(android)]]
class SetupResetTriggerPopup : SetupTriggerPopup {
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupResetTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupResetTriggerPopup();
}

[[link(android)]]
class SetupShaderEffectPopup : SetupTriggerPopup {
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
class SetupStaticCameraPopup : SetupTriggerPopup {
	TodoReturn updateState();
	TodoReturn valueDidChange(int, float);
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(CameraTriggerGameObject*, cocos2d::CCArray*);
	static SetupStaticCameraPopup* create(CameraTriggerGameObject*, cocos2d::CCArray*);
	~SetupStaticCameraPopup();
}

[[link(android)]]
class SetupTimerTriggerPopup : SetupTriggerPopup {
	bool init(TimerTriggerGameObject*, cocos2d::CCArray*);
	static SetupTimerTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);
	~SetupTimerTriggerPopup();
}

[[link(android)]]
class SpawnTriggerGameObject : EffectGameObject {
	TodoReturn changeRemap(int, int, bool);
	TodoReturn removeRemap(int, int);
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn updateRemapKeys(gd::vector<int> const&);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual bool init();
	static SpawnTriggerGameObject* create();
	TodoReturn addRemap(int, int);
	~SpawnTriggerGameObject();
}

[[link(android)]]
class SpriteAnimationManager : cocos2d::CCNode {
	TodoReturn getAnimType(gd::string);
	TodoReturn overridePrio() = win 0x4F540;
	TodoReturn runAnimation(gd::string);
	TodoReturn initWithOwner(CCAnimatedSprite*, gd::string);
	TodoReturn loadAnimations(gd::string);
	TodoReturn queueAnimation(gd::string);
	TodoReturn resetAnimState();
	TodoReturn stopAnimations();
	TodoReturn storeAnimation(cocos2d::CCAnimate*, cocos2d::CCAnimate*, gd::string, int, spriteMode, cocos2d::CCSpriteFrame*);
	TodoReturn createWithOwner(CCAnimatedSprite*, gd::string);
	TodoReturn finishAnimation(gd::string);
	TodoReturn createAnimations(gd::string);
	TodoReturn executeAnimation(gd::string);
	TodoReturn animationFinished();
	TodoReturn runQueuedAnimation();
	TodoReturn updateAnimationSpeed(float);
	TodoReturn callAnimationFinished();
	TodoReturn playSoundForAnimation(gd::string);
	TodoReturn offsetCurrentAnimation(float);
	TodoReturn storeSoundForAnimation(cocos2d::CCString*, gd::string, float);
	TodoReturn switchToFirstFrameOfAnimation(gd::string);
	TodoReturn getPrio(gd::string);
	TodoReturn doCleanup();
	TodoReturn playSound(gd::string);
	~SpriteAnimationManager();
}

[[link(android)]]
class TimerTriggerGameObject : EffectGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);
	static TimerTriggerGameObject* create(char const*);
	~TimerTriggerGameObject();
}

[[link(android)]]
class CameraTriggerGameObject : EffectGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);
	static CameraTriggerGameObject* create(char const*);
	~CameraTriggerGameObject();
}

[[link(android)]]
class ChanceTriggerGameObject : EffectGameObject {
	TodoReturn editChanceObject(int, int);
	TodoReturn revertChanceRemap();
	TodoReturn remapChanceObjects(gd::unordered_map<int, int> const*);
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
class LevelListDeleteDelegate {
	TodoReturn levelListDeleteFailed(int);
	TodoReturn levelListDeleteFinished(int);
}

[[link(android)]]
class ObjectControlGameObject : EffectGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual bool init();
	static ObjectControlGameObject* create();
	~ObjectControlGameObject();
}

[[link(android)]]
class PlayerControlGameObject : EffectGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual bool init();
	static PlayerControlGameObject* create();
	~PlayerControlGameObject();
}

[[link(android)]]
class SetupCameraRotatePopup2 : SetupTriggerPopup {
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupCameraRotatePopup2* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupCameraRotatePopup2();
}

[[link(android)]]
class SetupObjectControlPopup : SetupTriggerPopup {
	bool init(ObjectControlGameObject*, cocos2d::CCArray*);
	static SetupObjectControlPopup* create(ObjectControlGameObject*, cocos2d::CCArray*);
	~SetupObjectControlPopup();
}

[[link(android)]]
class SetupObjectOptionsPopup : FLAlertLayer, TextInputDelegate {
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
class SetupPickupTriggerPopup : SetupTriggerPopup {
	TodoReturn updateState();
	void onPlusButton(cocos2d::CCObject* sender);
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupPickupTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupPickupTriggerPopup();
}

[[link(android)]]
class SetupPlatformerEndPopup : SetupTriggerPopup {
	bool init(EndTriggerGameObject*, cocos2d::CCArray*);
	static SetupPlatformerEndPopup* create(EndTriggerGameObject*, cocos2d::CCArray*);
	~SetupPlatformerEndPopup();
}

[[link(android)]]
class SetupPlayerControlPopup : SetupTriggerPopup {
	bool init(PlayerControlGameObject*, cocos2d::CCArray*);
	static SetupPlayerControlPopup* create(PlayerControlGameObject*, cocos2d::CCArray*);
	~SetupPlayerControlPopup();
}

[[link(android)]]
class SetupRotateCommandPopup : SetupTriggerPopup {
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
class SetupSmartTemplateLayer : FLAlertLayer, TextInputDelegate, FLAlertLayerProtocol {
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
class SetupSpawnParticlePopup : SetupTriggerPopup {
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupSpawnParticlePopup* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupSpawnParticlePopup();
}

[[link(android)]]
class ShareLevelSettingsLayer : FLAlertLayer, NumberInputDelegate {
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
class SpawnParticleGameObject : EffectGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual bool init();
	static SpawnParticleGameObject* create();
	~SpawnParticleGameObject();
}

[[link(android)]]
class AdvancedFollowEditObject : AdvancedFollowTriggerObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);
	static AdvancedFollowEditObject* create(char const*);
	~AdvancedFollowEditObject();
}

[[link(android)]]
class AudioLineGuideGameObject : EffectGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual bool init();
	static AudioLineGuideGameObject* create();
	~AudioLineGuideGameObject();
}

[[link(android)]]
class BrowseSmartTemplateLayer : FLAlertLayer {
	TodoReturn createDots();
	TodoReturn updateDots();
	TodoReturn createPrefab(gd::string, int);
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
class PlatformDownloadDelegate {
	TodoReturn downloadFailed(char const*);
	TodoReturn downloadFinished(char const*);
}

[[link(android)]]
class RotateGameplayGameObject : EffectGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn updateStartValues();
	TodoReturn updateGameplayRotation();
	virtual bool init();
	static RotateGameplayGameObject* create();
	~RotateGameplayGameObject();
}

[[link(android)]]
class SetupAudioLineGuidePopup : SetupTriggerPopup, SelectSettingDelegate {
	TodoReturn selectSettingClosed(SelectSettingLayer*);
	bool init(AudioLineGuideGameObject*, cocos2d::CCArray*);
	static SetupAudioLineGuidePopup* create(AudioLineGuideGameObject*, cocos2d::CCArray*);
	void onSpeed(cocos2d::CCObject* sender);
	~SetupAudioLineGuidePopup();
}

[[link(android)]]
class SetupCameraOffsetTrigger : SetupTriggerPopup {
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
class SetupGameplayOffsetPopup : SetupTriggerPopup {
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
class SetupGravityTriggerPopup : SetupTriggerPopup {
	TodoReturn valueDidChange(int, float);
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupGravityTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupGravityTriggerPopup();
}

[[link(android)]]
class SetupInteractObjectPopup : SetupTriggerPopup {
	TodoReturn updateItems();
	void onPlusButton(cocos2d::CCObject* sender);
	TodoReturn valueDidChange(int, float);
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupInteractObjectPopup* create(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	~SetupInteractObjectPopup();
}

[[link(android)]]
class SetupObjectOptions2Popup : SetupTriggerPopup {
	void onPlusButton(cocos2d::CCObject* sender);
	bool init(GameObject*, cocos2d::CCArray*);
	static SetupObjectOptions2Popup* create(GameObject*, cocos2d::CCArray*);
	~SetupObjectOptions2Popup();
}

[[link(android)]]
class SetupOptionsTriggerPopup : SetupTriggerPopup {
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(GameOptionsTrigger*, cocos2d::CCArray*);
	static SetupOptionsTriggerPopup* create(GameOptionsTrigger*, cocos2d::CCArray*);
	TodoReturn addOption(int, gd::string);
	~SetupOptionsTriggerPopup();
}

[[link(android)]]
class SetupRandAdvTriggerPopup : SetupTriggerPopup {
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
class SetupRotateGameplayPopup : SetupTriggerPopup {
	void onPlusButton(cocos2d::CCObject* sender);
	TodoReturn valueDidChange(int, float);
	bool init(RotateGameplayGameObject*, cocos2d::CCArray*);
	static SetupRotateGameplayPopup* create(RotateGameplayGameObject*, cocos2d::CCArray*);
	~SetupRotateGameplayPopup();
}

[[link(android)]]
class TriggerControlGameObject : EffectGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
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
class GJSmartBlockPreviewSprite : cocos2d::CCNode {
	virtual bool init();
	virtual void visit();
	static GJSmartBlockPreviewSprite* create();
	~GJSmartBlockPreviewSprite();
}

[[link(android)]]
class KeyframeAnimTriggerObject : EffectGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual bool init();
	static KeyframeAnimTriggerObject* create();
	~KeyframeAnimTriggerObject();
}

[[link(android)]]
class SequenceTriggerGameObject : ChanceTriggerGameObject {
	TodoReturn resetObject();
	TodoReturn deleteTarget(int);
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn reorderTarget(int, bool);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn updateSequenceTotalCount();
	virtual bool init();
	static SequenceTriggerGameObject* create();
	TodoReturn addCount(int, int);
	TodoReturn addTarget(int, int);
	~SequenceTriggerGameObject();
}

[[link(android)]]
class SetupAreaAnimTriggerPopup : SetupAreaTintTriggerPopup {
	TodoReturn valueDidChange(int, float);
	TodoReturn updateTargetIDLabel();
	void onDeactivateAnimValue(cocos2d::CCObject* sender);
	TodoReturn updateDefaultTriggerValues();
	TodoReturn createValueControlAdvancedAnim(int, gd::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float, float, int, int, GJInputStyle);
	bool init(EnterEffectObject*, cocos2d::CCArray*, int);
	static SetupAreaAnimTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*, int);
	~SetupAreaAnimTriggerPopup();
}

[[link(android)]]
class SetupAreaFadeTriggerPopup : SetupAreaMoveTriggerPopup {
	bool init(EnterEffectObject*, cocos2d::CCArray*);
	static SetupAreaFadeTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);
	~SetupAreaFadeTriggerPopup();
}

[[link(android)]]
class SetupAreaMoveTriggerPopup : SetupTriggerPopup {
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
class SetupAreaTintTriggerPopup : SetupAreaMoveTriggerPopup, HSVWidgetDelegate {
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
class SetupItemEditTriggerPopup : SetupTriggerPopup {
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
class SetupSequenceTriggerPopup : SetupTriggerPopup {
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
class SetupCollisionTriggerPopup : SetupTriggerPopup {
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
class TransformTriggerGameObject : EffectGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);
	static TransformTriggerGameObject* create(char const*);
	~TransformTriggerGameObject();
}

[[link(android)]]
class UpdateAccountSettingsPopup : FLAlertLayer, GJAccountSettingsDelegate {
	virtual void keyBackClicked();
	TodoReturn updateSettingsFailed();
	TodoReturn updateSettingsFinished();
	bool init(GJAccountSettingsLayer*, int, int, int, gd::string, gd::string, gd::string);
	static UpdateAccountSettingsPopup* create(GJAccountSettingsLayer*, int, int, int, gd::string, gd::string, gd::string);
	void onClose(cocos2d::CCObject* sender);
	~UpdateAccountSettingsPopup();
}

[[link(android)]]
class AdvancedFollowTriggerObject : EffectGameObject {
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
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
class SetupAdvFollowRetargetPopup : SetupTriggerPopup {
	TodoReturn valueDidChange(int, float);
	TodoReturn updateDefaultTriggerValues();
	bool init(AdvancedFollowEditObject*, cocos2d::CCArray*);
	static SetupAdvFollowRetargetPopup* create(AdvancedFollowEditObject*, cocos2d::CCArray*);
	~SetupAdvFollowRetargetPopup();
}

[[link(android)]]
class SetupAreaRotateTriggerPopup : SetupAreaMoveTriggerPopup {
	bool init(EnterEffectObject*, cocos2d::CCArray*);
	static SetupAreaRotateTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);
	~SetupAreaRotateTriggerPopup();
}

[[link(android)]]
class SetupTimerEventTriggerPopup : SetupTriggerPopup {
	bool init(TimerTriggerGameObject*, cocos2d::CCArray*);
	static SetupTimerEventTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);
	~SetupTimerEventTriggerPopup();
}

[[link(android)]]
class CustomizeObjectSettingsPopup : SetupTriggerPopup {
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
class SetupItemCompareTriggerPopup : SetupTriggerPopup {
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
class SetupTimerControlTriggerPopup : SetupTriggerPopup {
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	bool init(TimerTriggerGameObject*, cocos2d::CCArray*);
	static SetupTimerControlTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);
	~SetupTimerControlTriggerPopup();
}

[[link(android)]]
class SetupAdvFollowEditPhysicsPopup : SetupTriggerPopup {
	TodoReturn valueDidChange(int, float);
	bool init(AdvancedFollowEditObject*, cocos2d::CCArray*);
	static SetupAdvFollowEditPhysicsPopup* create(AdvancedFollowEditObject*, cocos2d::CCArray*);
	~SetupAdvFollowEditPhysicsPopup();
}

[[link(android)]]
class SetupAreaTransformTriggerPopup : SetupAreaMoveTriggerPopup {
	bool init(EnterEffectObject*, cocos2d::CCArray*);
	static SetupAreaTransformTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);
	~SetupAreaTransformTriggerPopup();
}

[[link(android)]]
class SetupCollisionStateTriggerPopup : SetupInstantCollisionTriggerPopup {
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupCollisionStateTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupCollisionStateTriggerPopup();
}

[[link(android)]]
class SetupPersistentItemTriggerPopup : SetupTriggerPopup {
	bool init(ItemTriggerGameObject*, cocos2d::CCArray*);
	static SetupPersistentItemTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);
	~SetupPersistentItemTriggerPopup();
}

[[link(android)]]
class SetupInstantCollisionTriggerPopup : SetupTriggerPopup {
	TodoReturn valueDidChange(int, float);
	TodoReturn updateSpecialNodes();
	TodoReturn updateDefaultTriggerValues();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	static SetupInstantCollisionTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);
	~SetupInstantCollisionTriggerPopup();
}

[[link(android)]]
class MD5 {
	TodoReturn MD5Transform(unsigned long*, unsigned char*);
}

[[link(android)]]
class OBB2D : cocos2d::CCNode {
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
class UILayer : cocos2d::CCLayerColor, cocos2d::CCKeyboardDelegate {
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
class URLCell : TableViewCell {
	void updateBGColor(int) = win 0x807B0;
	void loadFromObject(CCURLObject*) = win 0x8C190;
	virtual void draw();
	virtual bool init();
	void onURL(cocos2d::CCObject* sender);
	URLCell(char const*, float, float);
	~URLCell();
}

[[link(android)]]
class EditorUI : cocos2d::CCLayer, FLAlertLayerProtocol, ColorSelectDelegate, GJRotationControlDelegate, GJScaleControlDelegate, GJTransformControlDelegate, MusicDownloadDelegate, SetIDPopupDelegate {
	TodoReturn createGlow();
	TodoReturn createLoop();
	TodoReturn editObject(cocos2d::CCObject*);
	TodoReturn getModeBtn(char const*, int);
	TodoReturn moveObject(GameObject*, cocos2d::CCPoint);
	void onPlayback(cocos2d::CCObject* sender);
	void onPlaytest(cocos2d::CCObject* sender) = mac 0x10160, win 0xc9480;
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
	TodoReturn createPrefab(GJSmartTemplate*, gd::string, int);
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
	TodoReturn pasteObjects(gd::string, bool);
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
	TodoReturn getSimpleButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	TodoReturn getSpriteButton(cocos2d::CCSprite*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	void onGoToBaseLayer(cocos2d::CCObject* sender);
	void onGroupIDFilter(cocos2d::CCObject* sender);
	void onNewCustomItem(cocos2d::CCObject* sender);
	void onUngroupSticky(cocos2d::CCObject* sender);
	TodoReturn playtestStopped() = win 0xc9630;
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
	TodoReturn spriteFromObjectString(gd::string, bool, bool, int, cocos2d::CCArray*, cocos2d::CCArray*, GameObject*);
	TodoReturn toggleEditObjectButton();
	TodoReturn transformObjectsActive();
	TodoReturn transformResetRotation();
	TodoReturn transformScaleXChanged(float);
	TodoReturn transformScaleYChanged(float);
	TodoReturn updateTransformControl();
	TodoReturn activateRotationControl(cocos2d::CCObject*);
	TodoReturn getCreateMenuItemButton(cocos2d::CCSprite*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	TodoReturn resetObjectEditorValues(cocos2d::CCArray*);
	TodoReturn transformScaleXYChanged(float, float);
	TodoReturn updateSpecialUIElements();
	TodoReturn activateTransformControl(cocos2d::CCObject*);
	/* unverified signature */
	bool isLiveColorSelectTrigger(GameObject*);
	TodoReturn menuItemFromObjectString(gd::string, int);
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
	TodoReturn getButton(char const*, int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);
	void onGroupUp(cocos2d::CCObject* sender);
	TodoReturn selectAll();
	~EditorUI();
}

[[link(android)]]
class GameCell : TableViewCell {
	TodoReturn updateBGColor(int);
	TodoReturn loadFromString(gd::string);
	virtual void draw();
	virtual bool init();
	void onTouch(cocos2d::CCObject* sender);
	GameCell(char const*, float, float);
	~GameCell();
}

[[link(android)]]
class SFXTriggerGameObject : EffectGameObject {
	TodoReturn getSFXRefID();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn getUniqueSFXID();
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);
	static SFXTriggerGameObject* create(char const*);
	~SFXTriggerGameObject();
}

[[link(android)]]
class GJUINode : cocos2d::CCNode {
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
class ListCell : TableViewCell {
	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(cocos2d::CCObject*, int, int, int);
	virtual void draw();
	virtual bool init();
	ListCell(char const*, float, float);
	~ListCell();
}

[[link(android)]]
class SongCell : TableViewCell {
	void updateBGColor(int) = win 0x807B0;
	void loadFromObject(SongObject*) = win 0x82650;
	virtual void draw();
	virtual bool init();
	void onClick(cocos2d::CCObject* sender);
	SongCell(char const*, float, float);
	~SongCell();
}


[[link(android)]]
class TOSPopup : FLAlertLayer {
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
class GJComment : cocos2d::CCNode {
	virtual bool init();
	static GJComment* create(cocos2d::CCDictionary*);
	static GJComment* create();
	~GJComment();
}

[[link(android)]]
class GJMapPack : cocos2d::CCNode {
	TodoReturn completedMaps();
	TodoReturn parsePackColors(gd::string, gd::string);
	TodoReturn parsePackLevels(gd::string);
	TodoReturn hasCompletedMapPack();
	virtual bool init();
	static GJMapPack* create(cocos2d::CCDictionary*);
	static GJMapPack* create();
	TodoReturn totalMaps();
	~GJMapPack();
}

[[link(android)]]
class GJMGLayer : cocos2d::CCLayer {
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
class InfoLayer : FLAlertLayer, LevelCommentDelegate, CommentUploadDelegate, FLAlertLayerProtocol {
	void onNextPage(cocos2d::CCObject* sender);
	void onOriginal(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onLevelInfo(cocos2d::CCObject* sender);
	TodoReturn getAccountID();
	TodoReturn reloadWindow();
	TodoReturn confirmReport(cocos2d::CCObject*);
	void onCopyLevelID(cocos2d::CCObject* sender);
	void onGetComments(cocos2d::CCObject* sender);
	TodoReturn setupPageInfo(gd::string, char const*);
	virtual void keyBackClicked();
	TodoReturn setupLevelInfo();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint);
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
	bool init(GJGameLevel*, GJUserScore*, GJLevelList*) = win 0x23A80;
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
class LevelCell : TableViewCell {
	TodoReturn updateToggle();
	TodoReturn loadFromLevel(GJGameLevel*);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int) = win 0x807B0;
	TodoReturn updateCellMode(int);
	void loadLocalLevelCell() = win 0x7D44D;
	void loadCustomLevelCell() = win 0x7D5A0;
	virtual void draw();
	virtual bool init();
	static LevelCell* create(float, float);
	void onClick(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);
	LevelCell(char const*, float, float);
	~LevelCell();
}

[[link(android)]]
class LevelPage : cocos2d::CCLayer, DialogDelegate {
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
class NodePoint : cocos2d::CCObject {
	bool init(cocos2d::CCPoint);
	static NodePoint* create(cocos2d::CCPoint);
	~NodePoint();
}

[[link(android)]]
class PlayLayer : GJBaseGameLayer, CCCircleWaveDelegate, CurrencyRewardDelegate, DialogDelegate {
	TodoReturn playReplay(gd::string);
	TodoReturn posForTime(float);
	TodoReturn postUpdate(float) = win 0x2E1560;
	TodoReturn resetLevel();
	TodoReturn startMusic();
	TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, int);
	TodoReturn checkForEnd();
	TodoReturn colorObject(int, cocos2d::_ccColor3B);
	TodoReturn commitJumps();
	TodoReturn shouldBlend(int);
	TodoReturn showNewBest(bool, int, int, bool, bool, bool) = win 0x2D9100;
	TodoReturn spawnCircle();
	TodoReturn updateColor(cocos2d::_ccColor3B&, float, int, bool, float, cocos2d::_ccHSVValue&, int, bool, EffectGameObject*, int, int);
	TodoReturn canPauseGame();
	TodoReturn dialogClosed(DialogLayer*);
	TodoReturn prepareMusic(bool);
	TodoReturn showEndLayer();
	TodoReturn addToGroupOld(GameObject*);
	TodoReturn checkSnapshot();
	void destroyPlayer(PlayerObject*, GameObject*) = mac 0xb40f0, win 0x2e0a90;
	TodoReturn levelComplete();
	TodoReturn spawnFirework();
	TodoReturn stopRecording();
	TodoReturn toggleGlitter(bool);
	TodoReturn getEndPosition();
	TodoReturn getRelativeMod(cocos2d::CCPoint, float, float, float);
	TodoReturn incrementJumps() = win 0x2e4e50;
	TodoReturn markCheckpoint() = win 0x2E2880;
	TodoReturn showRetryLayer();
	TodoReturn startRecording();
	TodoReturn tryStartRecord();
	TodoReturn updateAttempts();
	TodoReturn updateTimeWarp(float);
	TodoReturn updateTimeWarp(EffectGameObject*, float);
	TodoReturn queueCheckpoint();
	TodoReturn storeCheckpoint(CheckpointObject*);
	TodoReturn toggleInfoLabel();
	TodoReturn updateInfoLabel() = win 0x2DFE30;
	TodoReturn updateTimeLabel(int, int, bool);
	TodoReturn applyEnterEffect(GameObject*, int, bool);
	TodoReturn checkpointWithID(int);
	TodoReturn createCheckpoint();
	TodoReturn currencyWillExit(CurrencyRewardLayer*);
	TodoReturn delayedFullReset();
	TodoReturn getTempMilliTime() = win 0xA29B0;
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
	TodoReturn toggleGhostEffect(int) = win 0x2D20D0;
	TodoReturn toggleProgressbar();
	TodoReturn updateAttemptTime(float);
	TodoReturn updateProgressbar() = win 0x2DF7A0;
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
	TodoReturn getCurrentPercentInt() = win 0x2E09E0;
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
	TodoReturn updateEffectPositions() = win 0x2E1470;
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
	TodoReturn prepareCreateObjectsFromSetup(gd::string&);
	TodoReturn processCreateObjectsFromSetup();
	TodoReturn createObjectsFromSetupFinished();
	TodoReturn playPlatformerEndAnimationToPos(cocos2d::CCPoint, bool);
	bool init(GJGameLevel*, bool, bool) = mac 0xa5db0, win 0x2d69a0;
	TodoReturn scene(GJGameLevel*, bool, bool) = win 0x2D68A0;
	static PlayLayer* create(GJGameLevel*, bool, bool) = win 0x2D68F0;
	virtual void onExit() = win 0x6e5910;
	TodoReturn onQuit() = win 0x2e5650;
	TodoReturn resume();
	TodoReturn flipArt(bool);
	TodoReturn showHint() = win 0x2E12D0;
	TodoReturn testTime();
	TodoReturn addCircle(CCCircleWave*);
	TodoReturn addObject(GameObject*);
	TodoReturn fullReset();
	TodoReturn pauseGame(bool) = win 0x2e4fc0;
	TodoReturn startGame();
	~PlayLayer();
}

[[link(android)]]
class PointNode : cocos2d::CCObject {
	bool init(cocos2d::CCPoint);
	static PointNode* create(cocos2d::CCPoint);
	~PointNode();
}
