// clang-format off

[[link(android)]]
class ArtistCell : TableViewCell {
	~ArtistCell();

	void onNewgrounds(cocos2d::CCObject* sender);
	void onYouTube(cocos2d::CCObject* sender);

	void updateBGColor(int) = win 0x807B0;
	void loadFromObject(SongInfoObject*) = win 0x83840;
	ArtistCell(char const*, float, float);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class ButtonPage : cocos2d::CCLayer {
	static ButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint, int, float);

	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, float);
	~ButtonPage();
}

[[link(android)]]
class FontObject : cocos2d::CCObject {
	TodoReturn initWithConfigFile(char const*, float);
	~FontObject();

	TodoReturn getFontWidth(int);

	TodoReturn parseConfigFile(char const*, float);
	TodoReturn createWithConfigFile(char const*, float);
}

[[link(android)]]
class GJItemIcon : cocos2d::CCSprite {
	static GJItemIcon* create(UnlockType, int, cocos2d::_ccColor3B, cocos2d::_ccColor3B, bool, bool, bool, cocos2d::_ccColor3B);

	bool init(UnlockType, int, cocos2d::_ccColor3B, cocos2d::_ccColor3B, bool, bool, bool, cocos2d::_ccColor3B) = win 0x1f0870;
	~GJItemIcon();

	TodoReturn scaleForType(UnlockType);
	TodoReturn createStoreItem(UnlockType, int, bool, cocos2d::_ccColor3B);
	TodoReturn darkenStoreItem(ShopType);
	TodoReturn darkenStoreItem(cocos2d::_ccColor3B);
	TodoReturn createBrowserItem(UnlockType, int);
	TodoReturn toggleEnabledState(bool);
	TodoReturn changeToLockedState(float);
	TodoReturn unlockedColorForType(int);

	virtual void setOpacity(unsigned char);
}

[[link(android)]]
class GJPathPage : FLAlertLayer, FLAlertLayerProtocol, GJPurchaseDelegate {
	static GJPathPage* create(int, GJPathsLayer*) = win 0x1F8990;

	bool init(int, GJPathsLayer*) = win 0x1F8A40;
	~GJPathPage();

	void onIconInfo(cocos2d::CCObject* sender);
	void onActivatePath(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onUnlock(cocos2d::CCObject* sender);

	TodoReturn playUnlockAnimation();
	TodoReturn unlockAnimationStep2();
	TodoReturn unlockAnimationStep3();
	TodoReturn showCantAffordMessage(GJStoreItem*);
	TodoReturn unlockAnimationFinished();

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn didPurchaseItem(GJStoreItem*);
}

[[link(android)]]
class GJUserCell : TableViewCell, FLAlertLayerProtocol, UploadPopupDelegate, UploadActionDelegate {
	~GJUserCell();

	void onSendMessage(cocos2d::CCObject* sender);
	void onUnblockUser(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	void onRemoveFriend(cocos2d::CCObject* sender);
	void onViewFriendRequest(cocos2d::CCObject* sender);
	void onCancelFriendRequest(cocos2d::CCObject* sender);

	void loadFromScore(GJUserScore*) = win 0x87F80;
	void updateBGColor(int) = win 0x807B0;
	GJUserCell(char const*, float, float);

	virtual bool init();
	virtual void draw();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class HardStreak : cocos2d::CCDrawNode {
	static HardStreak* create();

	~HardStreak();

	TodoReturn firstSetup();
	TodoReturn stopStroke();
	TodoReturn resumeStroke();
	TodoReturn updateStroke(float) = win 0x221C00;
	TodoReturn clearAboveXPos(float);
	TodoReturn normalizeAngle(double);
	TodoReturn clearBehindXPos(float);
	TodoReturn createDuplicate();
	TodoReturn quadCornerOffset(cocos2d::CCPoint, cocos2d::CCPoint, float);
	TodoReturn scheduleAutoUpdate();
	TodoReturn reset();
	TodoReturn addPoint(cocos2d::CCPoint) = win 0x2224F0;

	virtual bool init();
}


[[link(android)]]
class PriceLabel : cocos2d::CCNode {
	static PriceLabel* create(int);

	bool init(int);
	~PriceLabel();

	/* unverified signature */
	void setOpacity(float);
	/* unverified signature */
	void setColor(cocos2d::_ccColor3B);
	/* unverified signature */
	void setPrice(int);
}

[[link(android)]]
class SFXBrowser : FLAlertLayer, MusicDownloadDelegate, TableViewCellDelegate, SetTextPopupDelegate, SelectSFXSortDelegate {
	static SFXBrowser* create(int);

	bool init(int);
	~SFXBrowser();

	/* unverified signature */
	void setTextPopupClosed(SetTextPopup*, gd::string);

	void onExitFolder(cocos2d::CCObject* sender);
	void onClearSearch(cocos2d::CCObject* sender);
	void onUpdateLibrary(cocos2d::CCObject* sender);
	void onToggleCompactMode(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);
	void onCredits(cocos2d::CCObject* sender);
	void onSorting(cocos2d::CCObject* sender);

	TodoReturn updatePageLabel();
	TodoReturn trySetupSFXBrowser();
	TodoReturn setupList(SFXSearchResult*);

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn musicActionFinished(GJMusicAction);
	virtual TodoReturn musicActionFailed(GJMusicAction);
	virtual TodoReturn sortSelectClosed(SelectSFXSortLayer*);
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	virtual TodoReturn getSelectedCellIdx();
	virtual TodoReturn shouldSnapToSelected();
}

[[link(android)]]
class ShardsPage : FLAlertLayer {
	static ShardsPage* create();

	~ShardsPage();

	void onIconInfo(cocos2d::CCObject* sender);
	void onSwitchPage(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn goToPage(int);

	virtual bool init();
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn show();
}

[[link(android)]]
class SongObject : cocos2d::CCObject {
	static SongObject* create(int);

	bool init(int);
	~SongObject();
}

[[link(android)]]
class SongsLayer : GJDropDownLayer {
	static SongsLayer* create();

	~SongsLayer();

	virtual TodoReturn customSetup();
}

[[link(android)]]
class StatsLayer : GJDropDownLayer {
	static StatsLayer* create();

	~StatsLayer();

	virtual TodoReturn customSetup();
}


[[link(android)]]
class CCCountdown : cocos2d::CCSprite {
	static CCCountdown* create();

	~CCCountdown();

	TodoReturn lapFinished();
	TodoReturn startTimerWithSeconds(float, cocos2d::SEL_CallFunc, cocos2d::CCNode*);

	virtual bool init();
	virtual void setOpacity(unsigned char);
}

[[link(android)]]
class CCMoveCNode : cocos2d::CCObject {
	static CCMoveCNode* create();

	bool init();
	~CCMoveCNode();

	TodoReturn reset();
}

[[link(android)]]
class CCURLObject : cocos2d::CCObject {
	static CCURLObject* create(gd::string, gd::string);

	bool init(gd::string, gd::string);
	~CCURLObject();
}


[[link(android)]]
class GJBigSprite : cocos2d::CCNode {
	static GJBigSprite* create();

	~GJBigSprite();

	TodoReturn unloadSprite(gd::string, int);
	TodoReturn loadSpriteAsync(gd::string, int);
	TodoReturn updateSpriteVisibility();
	TodoReturn finishedLoadingSpriteAsync(cocos2d::CCObject*);
	TodoReturn unloadAll();

	virtual bool init();
}

[[link(android)]]
class GJMapObject : cocos2d::CCNode {
	static GJMapObject* create(cocos2d::CCNode*);

	bool init(cocos2d::CCNode*);
	~GJMapObject();

	/* unverified signature */
	void setObjectOrigin(cocos2d::CCPoint, float);

	TodoReturn playerJump();
	TodoReturn monsterIdle();
	TodoReturn monsterJump();
	TodoReturn moveMonster(cocos2d::CCPoint, float);
	TodoReturn moveMonster();
	TodoReturn moveFinished();
	TodoReturn touchMonster();
	TodoReturn updateShadow(float, float, cocos2d::CCPoint);
	TodoReturn createMonster(int);
	TodoReturn startPlayerJumpLoop();
	TodoReturn startMonsterJumpLoop();
}

[[link(android)]]
class GJScoreCell : TableViewCell, FLAlertLayerProtocol {
	~GJScoreCell();

	void onMoreLevels(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender) = win 0x86f20;
	void onBan(cocos2d::CCObject* sender);
	void onCheck(cocos2d::CCObject* sender);

	void loadFromScore(GJUserScore*) = win 0x85EB0;
	void updateBGColor(int) = win 0x807B0;
	GJScoreCell(char const*, float, float);

	virtual bool init();
	virtual void draw();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class GJShopLayer : cocos2d::CCLayer, GJPurchaseDelegate, DialogDelegate, RewardedVideoDelegate {
	static GJShopLayer* create(ShopType) = win 0x214D90;

	bool init(ShopType) = win 0x214E30;
	~GJShopLayer();

	void onPlushies(cocos2d::CCObject* sender);
	void onSelectItem(cocos2d::CCObject* sender) = win 0x216580;
	void onCommunityCredits(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onVideoAd(cocos2d::CCObject* sender);

	TodoReturn exitVideoAdItems();
	void showReactMessage() = win 0x217100;
	TodoReturn showCantAffordMessage(GJStoreItem*) = win 0x2166B0;
	TodoReturn updateCurrencyCounter();
	TodoReturn scene(ShopType) = win 0x214D50;

	virtual void onExit();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn didPurchaseItem(GJStoreItem*);
	virtual TodoReturn rewardedVideoFinished();
	virtual TodoReturn dialogClosed(DialogLayer*);
}

[[link(android)]]
class GJStoreItem : cocos2d::CCNode {
	static GJStoreItem* create(int, int, int, int, ShopType);

	bool init(int, int, int, int, ShopType);
	~GJStoreItem();

	TodoReturn getCurrencyKey();
}

[[link(android)]]
class GJWorldNode : cocos2d::CCNode {
	static GJWorldNode* create(int, WorldSelectLayer*);

	bool init(int, WorldSelectLayer*);
	~GJWorldNode();

	void onLevel(cocos2d::CCObject* sender);

	TodoReturn addDotsToLevel(int, bool);
	TodoReturn unlockActiveItem();
	TodoReturn dotPositionForLevel(int, int);
	TodoReturn positionForLevelButton(int);
	TodoReturn playStep1();
	TodoReturn playStep2();
	TodoReturn playStep3();
}

[[link(android)]]
class MapPackCell : TableViewCell {
	~MapPackCell();

	void onClaimReward(cocos2d::CCObject* sender);
	void onClick(cocos2d::CCObject* sender) = win 0x81690;

	TodoReturn reloadCell();
	void updateBGColor(int) = win 0x807B0;
	void loadFromMapPack(GJMapPack*) = win 0x80C40;
	TodoReturn playCompleteEffect();
	MapPackCell(char const*, float, float);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class OptionsCell : TableViewCell {
	~OptionsCell();

	void onToggleOption(cocos2d::CCObject* sender);

	void updateBGColor(int) = win 0x807B0;
	void loadFromObject(OptionsObject*) = win 0x833F0;
	OptionsCell(char const*, float, float);
}

[[link(android)]]
class RewardsPage : FLAlertLayer, FLAlertLayerProtocol, GJRewardDelegate {
	static RewardsPage* create() = win 0x2EF270;

	~RewardsPage();

	TodoReturn getRewardFrame(int, int);

	void onFreeStuff(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onReward(cocos2d::CCObject* sender);

	TodoReturn updateTimers(float);
	TodoReturn tryGetRewards();
	TodoReturn unlockLayerClosed(RewardUnlockLayer*);

	virtual bool init() = win 0x2EF310;
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn rewardsStatusFinished(int);
	virtual TodoReturn rewardsStatusFailed();

	cocos2d::CCLabelBMFont* m_leftLabel;
	cocos2d::CCLabelBMFont* m_rightLabel;
	CCMenuItemSpriteExtra* m_leftChest;
	CCMenuItemSpriteExtra* m_rightChest;
	bool m_leftOpen;
	bool m_rightOpen;
	cocos2d::CCNode* m_openLayer;
}

[[link(android)]]
class SecretLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol {
	static SecretLayer* create();

	~SecretLayer();

	TodoReturn getMessage();
	TodoReturn getBasicMessage();
	TodoReturn getThreadMessage();

	void onBack(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);

	TodoReturn nodeWithTag(int);
	TodoReturn selectAThread();
	TodoReturn playCoinEffect();
	TodoReturn updateSearchLabel(char const*);
	TodoReturn updateMessageLabel(gd::string);
	TodoReturn scene();

	virtual bool init() = win 0x2fe1d0;
	virtual void keyBackClicked();
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class ShaderLayer : cocos2d::CCLayer {
	static ShaderLayer* create() = win 0x374390;

	~ShaderLayer();

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
	TodoReturn performCalculations() = win 0x37c330;
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

	virtual void update(float);
	virtual bool init();
	virtual void visit() = win 0x37c480;
}

[[link(android)]]
class UploadPopup : FLAlertLayer, LevelUploadDelegate {
	static UploadPopup* create(GJGameLevel*);

	bool init(GJGameLevel*);
	~UploadPopup();

	void onReturnToLevel(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn levelUploadFinished(GJGameLevel*);
	virtual TodoReturn levelUploadFailed(GJGameLevel*);
}

[[link(android)]]
class AccountLayer : GJDropDownLayer, GJAccountDelegate, GJAccountBackupDelegate, GJAccountSyncDelegate, FLAlertLayerProtocol {
	static AccountLayer* create();

	~AccountLayer();

	void onRegister(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onMore(cocos2d::CCObject* sender);
	void onSync(cocos2d::CCObject* sender);
	void onLogin(cocos2d::CCObject* sender);
	void onBackup(cocos2d::CCObject* sender);

	TodoReturn updatePage(bool);
	TodoReturn hideLoadingUI();
	TodoReturn showLoadingUI();
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn doSync();
	TodoReturn doBackup();
	TodoReturn toggleUI(bool);
	TodoReturn exitLayer();

	virtual TodoReturn customSetup();
	virtual TodoReturn layerHidden();
	virtual TodoReturn backupAccountFinished();
	virtual TodoReturn backupAccountFailed(BackupAccountError, int);
	virtual TodoReturn syncAccountFinished();
	virtual TodoReturn syncAccountFailed(BackupAccountError, int);
	virtual TodoReturn accountStatusChanged();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}



[[link(android)]]
class CCLightFlash : cocos2d::CCNode {
	static CCLightFlash* create();

	~CCLightFlash();

	TodoReturn playEffect(cocos2d::CCPoint, cocos2d::_ccColor3B, float, float, float, float, float, float, float, float, float, float, float, float, float, float, int, bool, bool, float);
	TodoReturn cleanupFlash();
	TodoReturn removeLights();
	TodoReturn fadeAndRemove();
	TodoReturn showFlash();

	virtual bool init();
}

[[link(android)]]
class CCLightStrip : cocos2d::CCNode {
	static CCLightStrip* create(float, float, float, float, float);

	bool init(float, float, float, float, float);
	~CCLightStrip();

	virtual void draw();
	virtual void updateTweenAction(float, char const*);
}

[[link(android)]]
class CCSpritePart : CCSpritePlus {
	static CCSpritePart* create(cocos2d::CCTexture2D*);

	~CCSpritePart();

	TodoReturn getBeingUsed();

	/* unverified signature */
	void setBeingUsed(bool);

	TodoReturn frameChanged(gd::string);
	TodoReturn hideInactive();
	TodoReturn resetTextureRect();
	TodoReturn markAsNotBeingUsed();
	TodoReturn updateDisplayFrame(gd::string);
	TodoReturn createWithSpriteFrameName(char const*);

	virtual void setVisible(bool);
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
	static FindBPMLayer* create(int);

	bool init(int);
	~FindBPMLayer();

	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onRecord(cocos2d::CCObject* sender);

	TodoReturn calculateBPM();

	virtual TodoReturn playMusic();
	virtual TodoReturn registerTouch();
	virtual TodoReturn recordingDidStop();
}

[[link(android)]]
class GauntletNode : cocos2d::CCNode {
	static GauntletNode* create(GJMapPack*);

	bool init(GJMapPack*);
	~GauntletNode();

	TodoReturn onClaimReward();

	TodoReturn nameForType(GauntletType);
	TodoReturn frameForType(GauntletType);
}

[[link(android)]]
class GJHttpResult : cocos2d::CCNode {
	static GJHttpResult* create(bool, gd::string, gd::string, GJHttpType);

	bool init(bool, gd::string, gd::string, GJHttpType);
	~GJHttpResult();
}

[[link(android)]]
class GJLocalScore : cocos2d::CCObject {
	static GJLocalScore* create(int, int);

	bool init(int, int);
	~GJLocalScore();
}

[[link(android)]]
class GJMPDelegate {
	virtual TodoReturn joinLobbyFinished(int);
	virtual TodoReturn joinLobbyFailed(int, GJMPErrorCode);
	virtual TodoReturn didUploadMPComment(int);
	virtual TodoReturn updateComments();
}

[[link(android)]]
class GJPathsLayer : FLAlertLayer, FLAlertLayerProtocol {
	static GJPathsLayer* create();

	~GJPathsLayer();

	void onPath(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn nameForPath(int);
	TodoReturn darkenButtons(bool);

	virtual bool init() = win 0x1F82A0;
	virtual void onExit() = win 0x1F8756;
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn show();
}

[[link(android)]]
class GJPathSprite : CCSpriteCOpacity {
	static GJPathSprite* create(int);

	bool init(int);
	~GJPathSprite();

	TodoReturn updateState();
	TodoReturn addRankLabel(int);
	TodoReturn addShardSprite();
	TodoReturn changeToLockedArt();
}

[[link(android)]]
class GJPromoPopup : FLAlertLayer {
	static GJPromoPopup* create(gd::string) = win 0x211b30;

	bool init(gd::string) = win 0x211bf0;
	~GJPromoPopup();

	void onClose(cocos2d::CCObject* sender);

	virtual void onExit();
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn show();
}

[[link(android)]]
class GJRewardItem : cocos2d::CCObject {
	static GJRewardItem* create(int, int, gd::string);
	static GJRewardItem* create();

	bool init(int, int, gd::string);
	~GJRewardItem();

	TodoReturn getRewardCount(SpecialRewardItem);
	TodoReturn getNextShardType(SpecialRewardItem);
	TodoReturn getRandomShardType();
	TodoReturn getRewardObjectForType(SpecialRewardItem);
	TodoReturn getRandomNonMaxShardType();

	TodoReturn dataLoaded(DS_Dictionary*);
	/* unverified signature */
	bool isShardType(SpecialRewardItem);
	TodoReturn createSpecial(GJRewardType, int, int, SpecialRewardItem, int, SpecialRewardItem, int, int, int);
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn createWithObject(GJRewardType, GJRewardObject*);
	TodoReturn rewardItemToStat(SpecialRewardItem);
	TodoReturn createWithObjects(GJRewardType, cocos2d::CCArray*);

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();

    int m_chestID;
    int m_timeRemaining;
    GJRewardType m_rewardType;
    cocos2d::CCArray* m_rewardObjects;
    bool m_unk;
}

[[link(android)]]
class GJValueTween {
	virtual void step(float);
}

[[link(android)]]
class MPLobbyLayer : cocos2d::CCLayer, GJMPDelegate, UploadPopupDelegate, UploadActionDelegate, FLAlertLayerProtocol, TextInputDelegate {
	static MPLobbyLayer* create(int);

	bool init(int);
	~MPLobbyLayer();

	TodoReturn onUpdateLobby();
	void onBack(cocos2d::CCObject* sender);
	void onBtn1(cocos2d::CCObject* sender);
	void onBtn2(cocos2d::CCObject* sender);
	void onBtn3(cocos2d::CCObject* sender);
	void onComment(cocos2d::CCObject* sender);

	TodoReturn postComment();
	TodoReturn updateLobby(float);
	TodoReturn tryExitLobby();
	TodoReturn scene(int);

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn joinLobbyFinished(int);
	virtual TodoReturn joinLobbyFailed(int, GJMPErrorCode);
	virtual TodoReturn updateComments();
	virtual TodoReturn didUploadMPComment(int);
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual void keyUp(cocos2d::enumKeyCodes);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class MusicBrowser : FLAlertLayer, MusicDownloadDelegate, TableViewCellDelegate, SetTextPopupDelegate, FLAlertLayerProtocol, SliderDelegate {
	static MusicBrowser* create(int);

	bool init(int);
	~MusicBrowser();

	/* unverified signature */
	void setTextPopupClosed(SetTextPopup*, gd::string);

	void onTagFilters(cocos2d::CCObject* sender);
	void onClearSearch(cocos2d::CCObject* sender);
	void onArtistFilters(cocos2d::CCObject* sender);
	void onUpdateLibrary(cocos2d::CCObject* sender);
	void onPlaybackControl(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updatePageLabel();
	TodoReturn setupSongControls();
	TodoReturn trySetupMusicBrowser();
	TodoReturn setupList(MusicSearchResult*);

	virtual void update(float);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn musicActionFinished(GJMusicAction);
	virtual TodoReturn musicActionFailed(GJMusicAction);
	virtual TodoReturn sliderEnded(Slider*);
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	virtual TodoReturn getSelectedCellIdx();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class OptionsLayer : GJDropDownLayer, FLAlertLayerProtocol {
	static OptionsLayer* create() = win 0x2ab510;

	~OptionsLayer();

	void onMenuMusic(cocos2d::CCObject* sender);
	void onProgressBar(cocos2d::CCObject* sender);
	void onSecretVault(cocos2d::CCObject* sender) = win 0x2ac1d0;
	void onSoundtracks(cocos2d::CCObject* sender);
	void onRecordReplays(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender);
	void onVideo(cocos2d::CCObject* sender);
	void onAccount(cocos2d::CCObject* sender);
	void onOptions(cocos2d::CCObject* sender);
	void onSupport(cocos2d::CCObject* sender);

	TodoReturn tryEnableRecord();
	TodoReturn sfxSliderChanged(cocos2d::CCObject*);
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn musicSliderChanged(cocos2d::CCObject*);
	TodoReturn exitLayer();

	virtual void customSetup() = win 0x2AB510;
	virtual TodoReturn layerHidden();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}


[[link(android)]]
class SecretLayer2 : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DialogDelegate {
	static SecretLayer2* create();

	~SecretLayer2();

	TodoReturn getMessage();
	TodoReturn getBasicMessage();
	TodoReturn getErrorMessage();
	TodoReturn getThreadMessage();

	void onSecretLevel(cocos2d::CCObject* sender) = win 0x2ff730;
	void onBack(cocos2d::CCObject* sender);
	void onDoor(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender) = mac 0x47a0d0, win 0x2ffcc0;

	TodoReturn nodeWithTag(int);
	TodoReturn selectAThread();
	TodoReturn playCoinEffect();
	TodoReturn showSecretLevel();
	void updateSearchLabel(char const*) = win 0x301260;
	TodoReturn showCompletedLevel();
	TodoReturn updateMessageLabel(gd::string);
	TodoReturn scene();

	virtual bool init() = mac 0x478e30, win 0x2fe1d0;
	virtual void onExit();
	virtual void keyBackClicked();
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn dialogClosed(DialogLayer*);
}

[[link(android)]]
class SecretLayer3 : cocos2d::CCLayer, DialogDelegate {
	static SecretLayer3* create();

	~SecretLayer3();

	void onBack(cocos2d::CCObject* sender);
	void onClick(cocos2d::CCObject* sender);
	void onChest01(cocos2d::CCObject* sender);
	void onChest02(cocos2d::CCObject* sender);

	TodoReturn animateEyes();
	TodoReturn revealStep1();
	TodoReturn revealStep2();
	TodoReturn revealStep3();
	TodoReturn revealStep4();
	TodoReturn revealStep5();
	TodoReturn showUnlockDialog();
	TodoReturn firstInteractionStep1();
	TodoReturn firstInteractionStep2();
	TodoReturn firstInteractionStep3();
	TodoReturn firstInteractionStep4();
	TodoReturn scene();

	virtual bool init();
	virtual void onExit();
	virtual void keyBackClicked();
	virtual TodoReturn dialogClosed(DialogLayer*);
}

[[link(android)]]
class SecretLayer4 : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DialogDelegate {
	static SecretLayer4* create();

	~SecretLayer4();

	TodoReturn getMessage();
	TodoReturn getBasicMessage();
	TodoReturn getErrorMessage();
	TodoReturn getThreadMessage();

	void onBack(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);
	void onChest01(cocos2d::CCObject* sender);

	TodoReturn showDialog(int);
	TodoReturn nodeWithTag(int);
	TodoReturn selectAThread();
	TodoReturn playCoinEffect();
	TodoReturn showFirstDialog();
	TodoReturn updateSearchLabel(char const*);
	TodoReturn updateMessageLabel(gd::string);
	TodoReturn scene();

	virtual bool init();
	virtual void onExit();
	virtual void keyBackClicked();
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn dialogClosed(DialogLayer*);
}


[[link(android)]]
class SimpleObject : cocos2d::CCObject {
	static SimpleObject* create();

	bool init();
	~SimpleObject();
}

[[link(android)]]
class SimplePlayer : cocos2d::CCSprite {
	static SimplePlayer* create(int) = win 0x1ef610;

	bool init(int) = win 0x1ef6b0;
	~SimplePlayer();

	/* unverified signature */
	inline void setSecondColor(cocos2d::_ccColor3B const& color) {
		m_secondLayer->setColor(color);
		updateColors();
	}

	/* unverified signature */
	void setColors(cocos2d::_ccColor3B const&, cocos2d::_ccColor3B const&);
	/* unverified signature */
	void setFrames(char const*, char const*, char const*, char const*, char const*) = win 0x1f0540;

	TodoReturn updateColors() = win 0x1efe50;
	TodoReturn asyncLoadIcon(int, IconType);
	TodoReturn hideSecondary();
	TodoReturn createRobotSprite(int) = win 0x1efd50;
	TodoReturn updatePlayerFrame(int, IconType) = win 0x1f0140;
	TodoReturn createSpiderSprite(int) = win 0x1efda0;
	TodoReturn iconFinishedLoading(int, IconType);
	void enableCustomGlowColor(cocos2d::_ccColor3B const& color) {
		m_hasCustomGlowColor = true;
		m_glowColor = color;
	}

	void disableCustomGlowColor() {
		m_hasCustomGlowColor = false;
	}

	void setGlowOutline(cocos2d::ccColor3B color) {
		enableCustomGlowColor(color);
		m_hasGlowOutline = true;
	}

	void disableGlowOutline(cocos2d::ccColor3B color) {
		disableCustomGlowColor();
		m_hasGlowOutline = false;
	}

	TodoReturn hideAll();

	virtual void setOpacity(unsigned char) = win 0x1f06f0;
	virtual void setColor(cocos2d::_ccColor3B const&) = win 0x1efe20;

	cocos2d::CCSprite* m_firstLayer;
	cocos2d::CCSprite* m_secondLayer;
    cocos2d::CCSprite* m_birdDome;
    cocos2d::CCSprite* m_outlineSprite;
    cocos2d::CCSprite* m_detailSprite;
    GJRobotSprite* m_robotSprite;
    GJSpiderSprite* m_spiderSprite;
	int m_unknown;
	bool m_hasGlowOutline;
	PAD = win 0x7, android32 0x7;
	bool m_hasCustomGlowColor;
	cocos2d::ccColor3B m_glowColor;
	PAD = win 0x4, android32 0x4;
}

[[link(android)]]
class SlideInLayer : cocos2d::CCLayerColor {
	static SlideInLayer* create();

	~SlideInLayer();

	virtual bool init();
	virtual void draw();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn customSetup();
	virtual TodoReturn enterLayer();
	virtual TodoReturn exitLayer(cocos2d::CCObject*);
	virtual TodoReturn showLayer(bool);
	virtual TodoReturn hideLayer(bool);
	virtual TodoReturn layerVisible();
	virtual TodoReturn layerHidden();
	virtual TodoReturn enterAnimFinished();
	virtual TodoReturn disableUI();
	virtual TodoReturn enableUI();
}

[[link(android)]]
class SupportLayer : GJDropDownLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate {
	static SupportLayer* create();

	~SupportLayer();

	void onGetReward(cocos2d::CCObject* sender);
	void onLowDetail(cocos2d::CCObject* sender);
	void onRequestAccess(cocos2d::CCObject* sender);
	void onSFX(cocos2d::CCObject* sender);
	void onTOS(cocos2d::CCObject* sender);
	void onEmail(cocos2d::CCObject* sender);
	void onLinks(cocos2d::CCObject* sender) = win 0x3B6320;
	void onRobTop(cocos2d::CCObject* sender);
	void onCocos2d(cocos2d::CCObject* sender);
	void onPrivacy(cocos2d::CCObject* sender);

	TodoReturn sendSupportMail();
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn exitLayer();

	virtual TodoReturn customSetup();
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class URLViewLayer : GJDropDownLayer {
	static URLViewLayer* create(gd::string, cocos2d::CCArray*);

	bool init(gd::string, cocos2d::CCArray*);
	~URLViewLayer();
}

[[link(android)]]
class BonusDropdown : cocos2d::CCNode {
	static BonusDropdown* create(gd::string, int);

	bool init(gd::string, int);
	~BonusDropdown();

	TodoReturn show();
}

[[link(android)]]
class BoomListLayer : cocos2d::CCLayerColor {
	static BoomListLayer* create(BoomListView*, char const*);

	bool init(BoomListView*, char const*);
	~BoomListLayer();
}

[[link(android)]]
class CCAlertCircle : cocos2d::CCNode {
	static CCAlertCircle* create();

	~CCAlertCircle();

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class CCCircleAlert : CCCircleWave {
	static CCCircleAlert* create(float, float, float);

	bool init(float, float, float);
	~CCCircleAlert();
}

[[link(android)]]
class ChallengeNode : cocos2d::CCNode {
	static ChallengeNode* create(GJChallengeItem*, ChallengesPage*, bool);

	bool init(GJChallengeItem*, ChallengesPage*, bool);
	~ChallengeNode();

	void onClaimReward(cocos2d::CCObject* sender);

	TodoReturn updateTimeLabel(gd::string);
}

[[link(android)]]
class CustomSFXCell : TableViewCell, CustomSFXDelegate {
	~CustomSFXCell();

	TodoReturn shouldReload();
	void updateBGColor(int) = win 0x83100;
	void loadFromObject(SFXInfoObject*) = win 0x83010;
	CustomSFXCell(char const*, float, float);

	virtual bool init();
	virtual void draw();
	virtual TodoReturn sfxObjectSelected(SFXInfoObject*);
	virtual TodoReturn getActiveSFXID();
}

[[link(android)]]
class DrawGridLayer : cocos2d::CCLayer {
	static DrawGridLayer* create(cocos2d::CCNode*, LevelEditorLayer*);

	bool init(cocos2d::CCNode*, LevelEditorLayer*);
	~DrawGridLayer();

	TodoReturn getPortalMinMax(GameObject*);

	TodoReturn posForTime(float);
	TodoReturn postUpdate();
	TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, bool, bool, int);
	TodoReturn addToGuides(GameObject*);
	TodoReturn addToEffects(EffectGameObject*);
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

	virtual void update(float);
	virtual void draw();
}


[[link(android)]]
class ExtendedLayer : cocos2d::CCLayer {
	static ExtendedLayer* create();

	~ExtendedLayer();

	virtual bool init();
	virtual void setPosition(cocos2d::CCPoint const&);
}

[[link(android)]]
class FileOperation {
	TodoReturn getFilePath();
	TodoReturn readFile();
	TodoReturn saveFile();
}

[[link(android)]]
class GJChestSprite : cocos2d::CCSprite {
	static GJChestSprite* create(int);

	bool init(int);
	~GJChestSprite();

	TodoReturn switchToState(ChestSpriteState, bool);

	virtual void setOpacity(unsigned char);
	virtual void setColor(cocos2d::_ccColor3B const&);
}

[[link(android)]]
class GJGroundLayer : cocos2d::CCLayer {
	static GJGroundLayer* create(int, int);

	bool init(int, int);
	~GJGroundLayer();

	TodoReturn getGroundY();

	TodoReturn createLine(int);
	TodoReturn hideShadows();
	TodoReturn scaleGround(float);
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
	virtual TodoReturn showGround();
	virtual TodoReturn fadeInGround(float);
	virtual TodoReturn fadeOutGround(float);
}

[[link(android)]]
class GJMessageCell : TableViewCell, FLAlertLayerProtocol, UploadPopupDelegate, UploadActionDelegate {
	~GJMessageCell();

	void onViewMessage(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	void onDeleteMessage(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);

	TodoReturn markAsRead();
	TodoReturn updateToggle();
	void updateBGColor(int) = win 0x807B0;
	void loadFromMessage(GJUserMessage*) = win 0x89BE0;
	GJMessageCell(char const*, float, float);

	virtual bool init();
	virtual void draw();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class GJRequestCell : TableViewCell, FLAlertLayerProtocol, UploadPopupDelegate, UploadActionDelegate {
	~GJRequestCell();

	void onViewProfile(cocos2d::CCObject* sender);
	void onDeleteRequest(cocos2d::CCObject* sender) = win 0x89710;
	void onViewFriendRequest(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);

	TodoReturn markAsRead();
	TodoReturn updateToggle();
	void loadFromScore(GJUserScore*) = win 0x88F20;
	void updateBGColor(int) = win 0x807B0;
	GJRequestCell(char const*, float, float);

	virtual bool init();
	virtual void draw();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class GJRobotSprite : CCAnimatedSprite {
	static GJRobotSprite* create(int) = win 0x2127D0;

	bool init(int);
	bool init(int, gd::string);
	~GJRobotSprite();

	TodoReturn updateFrame(int) = win 0x213370;
	TodoReturn updateColors() = win 0x212e30;
	TodoReturn updateColor01(cocos2d::_ccColor3B);
	TodoReturn updateColor02(cocos2d::_ccColor3B);
	TodoReturn updateGlowColor(cocos2d::_ccColor3B, bool) = win 0x212dd0;
	TodoReturn hideGlow();
	TodoReturn showGlow();

	virtual void setOpacity(unsigned char);
	virtual TodoReturn hideSecondary();
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
	static GJSmartPrefab* create();

	bool init();
	~GJSmartPrefab();

	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn createWithCoder(DS_Dictionary*);

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();
}

[[link(android)]]
class GJSongBrowser : GJDropDownLayer, FLAlertLayerProtocol, TableViewCellDelegate {
	static GJSongBrowser* create();

	~GJSongBrowser();

	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onDeleteAll(cocos2d::CCObject* sender);

	TodoReturn setupPageInfo(int, int, int);
	TodoReturn setupSongBrowser(cocos2d::CCArray*);
	TodoReturn loadPage(int);

	virtual bool init();
	virtual TodoReturn customSetup();
	virtual TodoReturn exitLayer(cocos2d::CCObject*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	virtual TodoReturn getSelectedCellIdx();
}

[[link(android)]]
class GJUserMessage : cocos2d::CCNode {
	static GJUserMessage* create(cocos2d::CCDictionary*);
	static GJUserMessage* create();

	~GJUserMessage();

	virtual bool init();
}

[[link(android)]]
class ItemInfoPopup : FLAlertLayer {
	static ItemInfoPopup* create(int, UnlockType) = win 0x1f1250;

	bool init(int, UnlockType) = win 0x1f1300;
	~ItemInfoPopup();

	void onClose(cocos2d::CCObject* sender);
	void onCredit(cocos2d::CCObject* sender);

	gd::string nameForUnlockType(int, UnlockType) = win 0x59430;
	/* unverified signature */
	bool isUnlockedByDefault(int, UnlockType);

	virtual void keyBackClicked();
}

[[link(android)]]
class LevelListCell : TableViewCell {
	static LevelListCell* create(float, float);

	~LevelListCell();

	void onListInfo(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	void onClick(cocos2d::CCObject* sender);

	void loadFromList(GJLevelList*) = win 0x8ADB0;
	void updateBGColor(int) = win 0x807B0;
	LevelListCell(char const*, float, float);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class MenuGameLayer : cocos2d::CCLayer {
	static MenuGameLayer* create();

	~MenuGameLayer();

	TodoReturn getBGColor(int);

	TodoReturn resetPlayer();
	TodoReturn updateColor(float);
	TodoReturn updateColors();
	TodoReturn destroyPlayer();
	TodoReturn tryJump(float);

	virtual void update(float) = win 0x274F10;
	virtual bool init() = win 0x2744f0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
}

[[link(android)]]
class ObjectManager : cocos2d::CCNode {
	~ObjectManager();

	TodoReturn getDefinition(char const*) = win 0x4b840;
	TodoReturn getGlobalAnimCopy(char const*);

	/* unverified signature */
	void setLoaded(char const*);

	TodoReturn animLoaded(char const*);
	TodoReturn loadCopiedSets();
	TodoReturn purgeObjectManager();
	TodoReturn loadCopiedAnimations();
	TodoReturn replaceAllOccurencesOfString(cocos2d::CCString*, cocos2d::CCString*, cocos2d::CCDictionary*);
	TodoReturn setup();
	static ObjectManager* instance() = win 0x4a550;

	virtual bool init();
}

[[link(android)]]
class ObjectToolbox : cocos2d::CCNode {
	~ObjectToolbox();

	static ObjectToolbox* sharedState() = win 0x286590;
	TodoReturn intKeyToFrame(int);
	TodoReturn gridNodeSizeForKey(int);
	TodoReturn perspectiveBlockFrame(int);
	TodoReturn allKeys();

	virtual bool init();
}

[[link(android)]]
class OptionsObject : cocos2d::CCObject {
	static OptionsObject* create(int, bool, gd::string, OptionsObjectDelegate*);

	bool init(int, bool, gd::string, OptionsObjectDelegate*);
	~OptionsObject();

	TodoReturn toggleState();
}

[[link(android)]]
class SetupEndPopup : SetupTriggerPopup {
	static SetupEndPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupEndPopup();

	void onReversed(cocos2d::CCObject* sender);
	void onMultiActivate(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onLockY(cocos2d::CCObject* sender);

	TodoReturn updateTargetID();
	TodoReturn updateTextInputLabel();

	virtual TodoReturn determineStartValues();
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupSFXPopup : SetupAudioTriggerPopup, CustomSFXDelegate, SFXBrowserDelegate {
	static SetupSFXPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*);

	bool init(SFXTriggerGameObject*, cocos2d::CCArray*);
	~SetupSFXPopup();

	void onBrowseSFX(cocos2d::CCObject* sender);
	void onPlusButton(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateLength();
	TodoReturn createSFXWidget();

	virtual TodoReturn pageChanged();
	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn sfxObjectSelected(SFXInfoObject*);
	virtual TodoReturn getActiveSFXID();
	virtual TodoReturn overridePlaySFX(SFXInfoObject*);
	virtual TodoReturn sfxBrowserClosed(SFXBrowser*);
}

[[link(android)]]
class SFXInfoObject : cocos2d::CCObject {
	static SFXInfoObject* create(int, gd::string, int, int, int);

	bool init(int, gd::string, int, int, int);
	~SFXInfoObject();

	TodoReturn getLowerCaseName();
}

[[link(android)]]
class SongInfoLayer : FLAlertLayer {
	static SongInfoLayer* create(int);
	static SongInfoLayer* create(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string, int, gd::string);

	bool init(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string, int, gd::string);
	~SongInfoLayer();

	void onDownload(cocos2d::CCObject* sender);
	void onMenuMusic(cocos2d::CCObject* sender) = win 0x385300;
	void onPracticeMusic(cocos2d::CCObject* sender) = win 0x385280;
	void onFB(cocos2d::CCObject* sender);
	void onNG(cocos2d::CCObject* sender);
	void onYT(cocos2d::CCObject* sender);
	void onBPM(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	void showCustomMusicUnlockInfo() = win 0x385000;

	virtual void keyBackClicked();
}

[[link(android)]]
class TutorialLayer : FLAlertLayer {
	static TutorialLayer* create();

	~TutorialLayer();

	void onNext(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn removeTutorialTexture();
	TodoReturn loadPage(int);

	virtual bool init();
	virtual void keyBackClicked();
}

[[link(android)]]
class TutorialPopup : FLAlertLayer {
	static TutorialPopup* create(gd::string);

	bool init(gd::string);
	~TutorialPopup();

	TodoReturn animateMenu();
	TodoReturn closeTutorial(cocos2d::CCObject*);
	TodoReturn registerForCallback(cocos2d::SEL_MenuHandler, cocos2d::CCNode*);

	virtual void keyBackClicked();
	virtual TodoReturn show();
}

[[link(android)]]
class AchievementBar : cocos2d::CCNodeRGBA {
	static AchievementBar* create(char const*, char const*, char const*, bool);

	bool init(char const*, char const*, char const*, bool) = win 0x59430;
	~AchievementBar();

	TodoReturn show();

	virtual void setOpacity(unsigned char);
}

[[link(android)]]
class CCCounterLabel : cocos2d::CCLabelBMFont {
	static CCCounterLabel* create(int, char const*, FormatterType) = win 0x23D00;

	bool init(int, char const*, FormatterType) = win 0x23DB0;
	~CCCounterLabel();

	TodoReturn getTargetCount();

	/* unverified signature */
	void setTargetCount(int) = win 0x23E20;

	TodoReturn updateString();
	TodoReturn enableCounter();
	TodoReturn updateCounter(float);
	TodoReturn disableCounter();
	TodoReturn calculateStepSize(int);
	TodoReturn fastUpdateCounter();
}

[[link(android)]]
class CCExtenderNode {
	/* unverified signature */
	void setOpacity(unsigned int);
}

[[link(android)]]
class ChallengesPage : FLAlertLayer, FLAlertLayerProtocol, GJChallengeDelegate, CurrencyRewardDelegate {
	static ChallengesPage* create();

	~ChallengesPage();

	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateDots();
	TodoReturn updateTimers(float);
	TodoReturn exitNodeAtSlot(int, float);
	TodoReturn tryGetChallenges();
	TodoReturn createChallengeNode(int, bool, float, bool);
	TodoReturn claimItem(ChallengeNode*, GJChallengeItem*, cocos2d::CCPoint);

	virtual bool init();
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn challengeStatusFinished();
	virtual TodoReturn challengeStatusFailed();
	virtual TodoReturn currencyWillExit(CurrencyRewardLayer*);
}

[[link(android)]]
class CreateMenuItem : CCMenuItemSpriteExtra {
	static CreateMenuItem* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	~CreateMenuItem();
}

[[link(android)]]
class CurrencySprite : CCSpritePlus {
	static CurrencySprite* create(CurrencySpriteType, bool);

	TodoReturn initWithSprite(cocos2d::CCSprite*);
	bool init(CurrencySpriteType, bool);
	~CurrencySprite();

	TodoReturn createWithSprite(cocos2d::CCSprite*);
	TodoReturn spriteTypeToStat(CurrencySpriteType);
	TodoReturn rewardToSpriteType(int);
}

[[link(android)]]
class CustomSongCell : TableViewCell, CustomSongDelegate {
	~CustomSongCell();

	void onDelete(cocos2d::CCObject* sender);

	TodoReturn shouldReload();
	void updateBGColor(int) = win 0x82D40;
	void loadFromObject(SongInfoObject*) = win 0x82B40;
	CustomSongCell(char const*, float, float);

	virtual bool init();
	virtual void draw();
	virtual TodoReturn songIDChanged(int);
	virtual TodoReturn getActiveSongID();
	virtual TodoReturn getSongFileName();
	virtual TodoReturn getLevelSettings();
}





[[link(android)]]
class GauntletSprite : cocos2d::CCNode {
	static GauntletSprite* create(GauntletType, bool);

	bool init(GauntletType, bool);
	~GauntletSprite();

	TodoReturn colorForType(GauntletType);
	TodoReturn addLockedSprite();
	TodoReturn addNormalSprite();
	TodoReturn luminanceForType(GauntletType);
	TodoReturn toggleLockedSprite(bool);
}

[[link(android)]]
class GJMessagePopup : FLAlertLayer, UploadActionDelegate, UploadPopupDelegate, FLAlertLayerProtocol, DownloadMessageDelegate {
	static GJMessagePopup* create(GJUserMessage*);

	bool init(GJUserMessage*);
	~GJMessagePopup();

	void onBlock(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onReply(cocos2d::CCObject* sender);
	void onRemove(cocos2d::CCObject* sender);

	TodoReturn loadFromGJMessage(GJUserMessage*);
	TodoReturn blockUser();

	virtual void keyBackClicked();
	virtual TodoReturn downloadMessageFinished(GJUserMessage*);
	virtual TodoReturn downloadMessageFailed(int);
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class GJOptionsLayer : SetupTriggerPopup {
	static GJOptionsLayer* create(int);

	bool init(int);
	~GJOptionsLayer();

	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);

	TodoReturn addGVToggle(char const*, char const*, char const*);
	TodoReturn didToggleGV(gd::string);
	TodoReturn countForPage(int);
	TodoReturn layerForPage(int);
	TodoReturn nextPosition(int);
	TodoReturn objectsForPage(int);
	TodoReturn offsetToNextPage();
	TodoReturn addToggleInternal(char const*, int, bool, char const*);
	TodoReturn incrementCountForPage(int);
	TodoReturn infoKey(int);
	TodoReturn pageKey(int);
	TodoReturn goToPage(int);
	TodoReturn layerKey(int);
	TodoReturn addToggle(char const*, int, bool, char const*);
	TodoReturn objectKey(int);

	virtual TodoReturn setupOptions();
	virtual TodoReturn didToggle(int);
}

[[link(android)]]
class GJRewardObject : cocos2d::CCObject {
	static GJRewardObject* create(SpecialRewardItem, int, int);
	static GJRewardObject* create();

	bool init(SpecialRewardItem, int, int);
	~GJRewardObject();

	TodoReturn dataLoaded(DS_Dictionary*);
	/* unverified signature */
	bool isSpecialType();
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn createItemUnlock(UnlockType, int);

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();

    SpecialRewardItem m_specialRewardItem;
    UnlockType m_unlockType;
    int m_itemID;
    int m_total;
}

[[link(android)]]
class GJScaleControl : cocos2d::CCLayer {
	static GJScaleControl* create();

	~GJScaleControl();

	TodoReturn loadValues(GameObject*, cocos2d::CCArray*, gd::unordered_map<int, GameObjectEditorState>&);
	TodoReturn finishTouch();
	TodoReturn updateLabelX(float);
	TodoReturn updateLabelY(float);
	TodoReturn skewFromValue(float);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateLabelXY(float);
	TodoReturn valueFromSkew(float);
	TodoReturn scaleFromValue(float);
	TodoReturn valueFromScale(float);

	virtual bool init();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
}

[[link(android)]]
class GJSpiderSprite : GJRobotSprite {
	static GJSpiderSprite* create(int);

	bool init(int);
	~GJSpiderSprite();
}

[[link(android)]]
class HSVLiveOverlay : FLAlertLayer, HSVWidgetDelegate {
	static HSVLiveOverlay* create(GameObject*, cocos2d::CCArray*);

	bool init(GameObject*, cocos2d::CCArray*);
	~HSVLiveOverlay();

	void onSelectTab(cocos2d::CCObject* sender);

	TodoReturn toggleControls(bool);
	TodoReturn createHSVWidget(int);
	TodoReturn closeColorSelect(cocos2d::CCObject*);
	TodoReturn determineStartValues();

	virtual void keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn hsvChanged(ConfigureHSVWidget*);
}

[[link(android)]]
class HSVWidgetPopup : FLAlertLayer {
	static HSVWidgetPopup* create(cocos2d::_ccHSVValue, HSVWidgetDelegate*, gd::string);

	bool init(cocos2d::_ccHSVValue, HSVWidgetDelegate*, gd::string);
	~HSVWidgetPopup();

	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
}

[[link(android)]]
class KeyframeObject {
	TodoReturn setupSpline(gd::vector<KeyframeObject*>&);
}

[[link(android)]]
class LevelAreaLayer : cocos2d::CCLayer, DialogDelegate {
	static LevelAreaLayer* create();

	~LevelAreaLayer();

	void onClickDoor(cocos2d::CCObject* sender);
	TodoReturn onEnterTower();
	void onBack(cocos2d::CCObject* sender);

	TodoReturn showDialog();
	TodoReturn fadeInsideTower();
	TodoReturn scene();
	TodoReturn addTorch(cocos2d::CCNode*, cocos2d::CCPoint, int, float, int, bool);
	TodoReturn addGodRay(float, float, float, float, float, cocos2d::CCPoint);

	virtual bool init();
	virtual void keyBackClicked();
	virtual TodoReturn dialogClosed(DialogLayer*);
}

[[link(android)]]
class LevelListLayer : LevelBrowserLayer, TextInputDelegate, SelectListIconDelegate, LikeItemDelegate, LevelListDeleteDelegate {
	static LevelListLayer* create(GJLevelList*);

	bool init(GJLevelList*) = win 0x22DE00;
	~LevelListLayer();

	void onFavorite(cocos2d::CCObject* sender);
	void onListInfo(cocos2d::CCObject* sender);
	void onSelectIcon(cocos2d::CCObject* sender);
	void onClaimReward(cocos2d::CCObject* sender);
	void onDescription(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	void onToggleEditMode(cocos2d::CCObject* sender);
	void onRefreshLevelList(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onLike(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender);
	TodoReturn onDelete();

	TodoReturn ownerDelete();
	TodoReturn confirmClone(cocos2d::CCObject*);
	TodoReturn confirmDelete(cocos2d::CCObject*);
	TodoReturn updateEditMode();
	TodoReturn updateStatsArt();
	TodoReturn verifyListName();
	TodoReturn updateSideButtons();
	TodoReturn confirmOwnerDelete(cocos2d::CCObject*);
	TodoReturn shareCommentClosed(gd::string, ShareCommentLayer*);
	TodoReturn scene(GJLevelList*);
	TodoReturn cloneList();

	virtual void onEnter();
	virtual void onExit();
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	virtual TodoReturn loadLevelsFailed(char const*, int);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void setIDPopupClosed(SetIDPopup*, int);
	virtual TodoReturn updateResultArray(cocos2d::CCArray*);
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	virtual TodoReturn likedItem(LikeItemType, int, bool);
	virtual TodoReturn iconSelectClosed(SelectListIconLayer*);
	virtual TodoReturn levelListDeleteFinished(int);
	virtual TodoReturn levelListDeleteFailed(int);
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class ListButtonPage : cocos2d::CCLayer {
	static ListButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float);

	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float);
	~ListButtonPage();
}

[[link(android)]]
class MapSelectLayer : cocos2d::CCLayer {
	static MapSelectLayer* create();

	~MapSelectLayer();

	TodoReturn getConstrainedMapPos(cocos2d::CCPoint);

	void onBack(cocos2d::CCObject* sender);

	TodoReturn checkTouchMonster(cocos2d::CCPoint);
	TodoReturn createObjectAtPoint(cocos2d::CCPoint);
	TodoReturn scene();

	virtual void update(float);
	virtual bool init();
	virtual void onExit();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void scrollWheel(float, float);
}

[[link(android)]]
class RateDemonLayer : FLAlertLayer, UploadPopupDelegate, UploadActionDelegate {
	static RateDemonLayer* create(int);

	bool init(int);
	~RateDemonLayer();

	void onRate(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn selectRating(cocos2d::CCObject*);

	virtual void keyBackClicked();
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class RateLevelLayer : FLAlertLayer {
	static RateLevelLayer* create(int);

	bool init(int);
	~RateLevelLayer();

	void onRate(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn selectRating(cocos2d::CCObject*);

	virtual void keyBackClicked();
}

[[link(android)]]
class RateStarsLayer : FLAlertLayer, UploadPopupDelegate, UploadActionDelegate {
	static RateStarsLayer* create(int, bool, bool) = win 0x2ED3C0;

	bool init(int, bool, bool) = win 0x2ED470;
	~RateStarsLayer();

	TodoReturn getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);

	void onToggleCoins(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onFeature(cocos2d::CCObject* sender);

	TodoReturn selectRating(cocos2d::CCObject*);

	virtual void keyBackClicked();
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class SearchSFXPopup : SetTextPopup {
	static SearchSFXPopup* create(gd::string);

	bool init(gd::string);
	~SearchSFXPopup();

	void onSearchFolders(cocos2d::CCObject* sender);
}


[[link(android)]]
class SetFolderPopup : SetIDPopup, SetTextPopupDelegate {
	static SetFolderPopup* create(int, bool, gd::string);

	bool init(int, bool, gd::string);
	~SetFolderPopup();

	/* unverified signature */
	void setTextPopupClosed(SetTextPopup*, gd::string);

	void onSetFolderName(cocos2d::CCObject* sender);

	virtual TodoReturn valueChanged();
}

[[link(android)]]
class SetItemIDLayer : SetupTriggerPopup {
	static SetItemIDLayer* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetItemIDLayer();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateEditorLabel();

	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupCoinLayer : SetupTriggerPopup {
	static SetupCoinLayer* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupCoinLayer();
}

[[link(android)]]
class SetupMGTrigger : SetupTriggerPopup {
	static SetupMGTrigger* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupMGTrigger();

	void onEasingRate(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onEasing(cocos2d::CCObject* sender);

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn sliderYChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateEasingLabel();
	TodoReturn updateValueYLabel();
	TodoReturn posFromSliderValue(float);
	TodoReturn sliderValueFromPos(int);
	TodoReturn updateEasingRateLabel();
	TodoReturn updateMoveCommandPosY();
	TodoReturn updateMoveCommandEasing();
	TodoReturn toggleEasingRateVisibility();
	TodoReturn updateMoveCommandEasingRate();

	virtual TodoReturn determineStartValues();
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float);
}

[[link(android)]]
class ShareListLayer : FLAlertLayer {
	static ShareListLayer* create(GJLevelList*);

	bool init(GJLevelList*);
	~ShareListLayer();

	void onUnlisted(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender);

	TodoReturn updateUnlistedF();

	virtual void keyBackClicked();
}



[[link(android)]]
class SongSelectNode : cocos2d::CCNode, FLAlertLayerProtocol, CustomSongLayerDelegate, CustomSongDelegate {
	static SongSelectNode* create(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool);

	bool init(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool);
	~SongSelectNode();

	TodoReturn onSongMode(int);
	void onSongMode(cocos2d::CCObject* sender);
	void onOpenCustomSong(cocos2d::CCObject* sender);

	TodoReturn selectSong(int);
	TodoReturn audioPrevious(cocos2d::CCObject*);
	TodoReturn updateAudioLabel();
	TodoReturn showCustomSongSelect();
	TodoReturn updateWidgetVisibility();
	TodoReturn audioNext(cocos2d::CCObject*);

	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn customSongLayerClosed();
	virtual TodoReturn songIDChanged(int);
	virtual TodoReturn getActiveSongID();
	virtual TodoReturn getSongFileName();
	virtual TodoReturn getLevelSettings();
}

[[link(android)]]
class UIOptionsLayer : SetupTriggerPopup {
	static UIOptionsLayer* create(bool);

	bool init(bool);
	~UIOptionsLayer();

	TodoReturn getNode(int);

	void onSaveLoad(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onReset(cocos2d::CCObject* sender);

	TodoReturn toggleUIGroup(int);

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn getValue(int);
}

[[link(android)]]
class WorldLevelPage : FLAlertLayer {
	static WorldLevelPage* create(GJGameLevel*, GJWorldNode*);

	bool init(GJGameLevel*, GJWorldNode*);
	~WorldLevelPage();

	void onInfo(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onSong(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
	virtual TodoReturn show();
}

[[link(android)]]
class AchievementCell : TableViewCell {
	~AchievementCell();

	void loadFromDict(cocos2d::CCDictionary*) = win 0x7C270;
	void updateBGColor(int) = win 0x7D0A0;
	AchievementCell(char const*, float, float);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class BitmapFontCache : cocos2d::CCObject {
	bool init();
	~BitmapFontCache();

	TodoReturn sharedFontCache();
	TodoReturn fontWithConfigFile(char const*, float);
	TodoReturn purgeSharedFontCache();
}

[[link(android)]]
class CCNodeContainer : cocos2d::CCNode {
	static CCNodeContainer* create();

	~CCNodeContainer();

	virtual bool init();
	virtual void visit();
}

[[link(android)]]
class CCSpriteWithHue : cocos2d::CCSprite {
	static CCSpriteWithHue* create(gd::string const&);
	static CCSpriteWithHue* create(gd::string const&, cocos2d::CCRect const&);

	TodoReturn initShader();
	~CCSpriteWithHue();

	TodoReturn getUniformLocations();
	TodoReturn getHue();
	TodoReturn getAlpha();

	/* unverified signature */
	void setLuminance(float);
	/* unverified signature */
	void setHueDegrees(float);
	/* unverified signature */
	void setEvenLuminance(float);
	/* unverified signature */
	void setCustomLuminance(float, float, float);
	/* unverified signature */
	void setHue(float);

	TodoReturn createWithTexture(cocos2d::CCTexture2D*);
	TodoReturn createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
	TodoReturn updateColorMatrix();
	TodoReturn setupDefaultSettings();
	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(gd::string const&);
	TodoReturn updateHue(float);

	virtual void draw();
	virtual bool initWithTexture(cocos2d::CCTexture2D*);
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*);
	virtual TodoReturn getShaderName();
	virtual TodoReturn shaderBody();
	virtual void updateColor();
}

[[link(android)]]
class CustomMusicCell : CustomSongCell {
	~CustomMusicCell();

	TodoReturn updateBGColor(int) = win 0x82D40;
	TodoReturn loadFromObject(SongInfoObject*) = win 0x83240;
	CustomMusicCell(char const*, float, float);
}

[[link(android)]]
class CustomSFXWidget : cocos2d::CCNode, MusicDownloadDelegate, FLAlertLayerProtocol {
	static CustomSFXWidget* create(SFXInfoObject*, CustomSFXDelegate*, bool, bool, bool, bool, bool);

	bool init(SFXInfoObject*, CustomSFXDelegate*, bool, bool, bool, bool, bool);
	~CustomSFXWidget();

	void onDownload(cocos2d::CCObject* sender);
	void onPlayback(cocos2d::CCObject* sender);
	void onCancelDownload(cocos2d::CCObject* sender);
	void onDelete(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);

	TodoReturn updateError(GJSongError);
	TodoReturn verifySFXID(int);
	TodoReturn startDownload();
	TodoReturn updateSFXInfo();
	TodoReturn downloadFailed();
	TodoReturn hideLoadingArt();
	TodoReturn showLoadingArt();
	TodoReturn updateLengthMod(float);
	TodoReturn updateSFXObject(SFXInfoObject*);
	TodoReturn updatePlaybackBtn();
	void updateProgressBar(int) = win 0x2df7a0;
	TodoReturn startMonitorDownload();
	TodoReturn updateDownloadProgress(float);
	TodoReturn deleteSFX();

	virtual TodoReturn downloadSFXFinished(int);
	virtual TodoReturn downloadSFXFailed(int, GJSongError);
	virtual TodoReturn songStateChanged();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class CustomSongLayer : FLAlertLayer, TextInputDelegate, GJDropDownLayerDelegate, MusicBrowserDelegate {
	static CustomSongLayer* create(CustomSongDelegate*);

	bool init(CustomSongDelegate*);
	~CustomSongLayer();

	void onCreateLines(cocos2d::CCObject* sender);
	void onSongBrowser(cocos2d::CCObject* sender);
	void onMusicBrowser(cocos2d::CCObject* sender);
	void onNewgroundsBrowser(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);
	void onOptions(cocos2d::CCObject* sender);

	TodoReturn showNewgroundsMessage();

	virtual void keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual TodoReturn textInputReturn(CCTextInputNode*);
	virtual TodoReturn dropDownLayerWillClose(GJDropDownLayer*);
	virtual TodoReturn musicBrowserClosed(MusicBrowser*);
}

[[link(android)]]
class EndPortalObject : GameObject {
	static EndPortalObject* create();

	~EndPortalObject();

	TodoReturn getSpawnPos() = win 0xeaa80;

	TodoReturn updateColors(cocos2d::_ccColor3B) = win 0xea8f0;
	TodoReturn updateEndPos(bool) = win 0xeac60;
	TodoReturn triggerObject(GJBaseGameLayer*) = win 0xeaa00;

	virtual bool init();
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setVisible(bool);
}

[[link(android)]]
class ExplodeItemNode : cocos2d::CCNode {
	static ExplodeItemNode* create(cocos2d::CCRenderTexture*);

	bool init(cocos2d::CCRenderTexture*);
	~ExplodeItemNode();

	TodoReturn createSprites(int, int, float, float, float, float, float, float, cocos2d::_ccColor4F, cocos2d::_ccColor4F, bool);

	virtual void update(float);
}

[[link(android)]]
class FileSaveManager : GManager {
	~FileSaveManager();

	TodoReturn getStoreData();

	TodoReturn sharedState();
	TodoReturn loadDataFromFile(char const*);

	virtual bool init();
	virtual TodoReturn firstLoad();
}

[[link(android)]]
class FindObjectPopup : SetIDPopup {
	static FindObjectPopup* create();

	~FindObjectPopup();

	void onFindObjectID(cocos2d::CCObject* sender);

	virtual bool init();
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
	TodoReturn stopChannel(int) = win 0x36d00;
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
	TodoReturn updateChannel(int, AudioTargetType, AudioModType, float, float) = win 0x36f70;
	TodoReturn channelStopped(FMOD::Channel*, bool);
	TodoReturn enableMetering();
	TodoReturn getActiveMusic(int) = win 0x3a6b0;
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
	TodoReturn stopAllEffects() = win 0x37D00;
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
	void setChannelVolume(int, AudioTargetType, float) = win 0x37120;
	/* unverified signature */
	void setEffectsVolume(float);
	void setupAudioEngine() = win 0x32f20;
	TodoReturn stopChannelTween(int, AudioTargetType, AudioModType);
	TodoReturn unloadAllEffects() = win 0x37EA0;
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
	void setChannelVolumeMod(int, AudioTargetType, float) = win 0x373a0;
	TodoReturn updateChannelTweens(float) = win 0x34d60;
	TodoReturn updateQueuedEffects() = win 0x38e90;
	TodoReturn waitUntilSoundReady(FMOD::Sound*);
	TodoReturn channelIDForUniqueID(int) = win 0x36960;
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
	TodoReturn loadMusic(gd::string) = win 0x38410;
	TodoReturn loadMusic(gd::string, float, float, float, bool, int, int) = win 0x384b0;
	TodoReturn playMusic(gd::string, bool, float, int);
	TodoReturn stopMusic(int);
	~FMODAudioEngine();

	virtual void update(float) = win 0x33910;

	PAD = win 0x88, android32 0x7c;
	FMOD::System* m_system;
}

[[link(android)]]
class FMODAudioState {
	// ~FMODAudioState();
}

[[link(android)]]
class FMODLevelVisualizer : cocos2d::CCNode {
	TodoReturn updateVisualizer(float, float, float);
	static FMODLevelVisualizer* create();
	~FMODLevelVisualizer();

	virtual bool init();
}

[[link(android)]]
class GJActionManager : cocos2d::CCNode {
	static GJActionManager* create();

	~GJActionManager();

	TodoReturn getInternalAction(int);

	TodoReturn runInternalAction(cocos2d::CCAction*, cocos2d::CCNode*);
	TodoReturn stopInternalAction(int);
	TodoReturn updateInternalActions(float, bool) = win 0x189E70;
	TodoReturn stopAllInternalActions();

	virtual bool init();
}

[[link(android)]]
class GJBigSpriteNode : cocos2d::CCNode {
	static GJBigSpriteNode* create();

	~GJBigSpriteNode();

	virtual bool init();
}


[[link(android)]]
class GJFriendRequest : cocos2d::CCNode {
	static GJFriendRequest* create(cocos2d::CCDictionary*) = win 0x117AA0;
	static GJFriendRequest* create();

	~GJFriendRequest();

	virtual bool init();
}

[[link(android)]]
class GJGradientLayer : cocos2d::CCLayerGradient {
	static GJGradientLayer* create();

	~GJGradientLayer();

	virtual bool init();
}

[[link(android)]]
class GJObjectDecoder : cocos2d::CCNode, ObjectDecoderDelegate {
	~GJObjectDecoder();

	TodoReturn sharedDecoder();

	virtual bool init();
	virtual TodoReturn getDecodedObject(int, DS_Dictionary*) = win 0x1F7B60;
}

[[link(android)]]
class GJSmartTemplate : cocos2d::CCObject {
	static GJSmartTemplate* create();

	bool init();
	~GJSmartTemplate();

	TodoReturn getPrefabs(gd::string);
	TodoReturn getNoCornerKey(gd::string);
	TodoReturn getPrefabWithID(gd::string, int);
	TodoReturn getRandomPrefab(gd::string);
	TodoReturn getSimplifiedKey(gd::string);
	TodoReturn getTemplateState(gd::vector<SmartPrefabResult>&);
	TodoReturn getSimplifiedType(SmartBlockType, bool&);
	TodoReturn getVerySimplifiedKey(gd::string);
	TodoReturn getTotalChanceForPrefab(gd::string);
	TodoReturn getPrefab(cocos2d::CCPoint, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*);
	TodoReturn getPrefab(gd::string, bool, bool);

	TodoReturn dataLoaded(DS_Dictionary*);
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
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn offsetForObject(SmartGameObject*);
	TodoReturn rotateBlockType(SmartBlockType, int);
	TodoReturn saveRemapToDict(gd::string, gd::string, cocos2d::CCDictionary*);
	TodoReturn keyFromNeighbors(SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType);
	TodoReturn keyFromNeighbors(cocos2d::CCPoint, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*);
	TodoReturn generateRemapDict();
	TodoReturn logTemplateStatus(bool);
	TodoReturn rotateBlockType90(SmartBlockType);
	TodoReturn smartObjectToType(SmartGameObject*, cocos2d::CCPoint);
	TodoReturn keyFromNeighborsOld(bool, bool, bool, bool, bool, bool, bool, bool);
	TodoReturn resetScannedPrefabs();
	TodoReturn shouldDiscardObject(SmartBlockType, GJSmartDirection);
	TodoReturn smartTypeToObjectKey(SmartBlockType);
	TodoReturn applyTransformationsForType(SmartBlockType, cocos2d::CCSprite*);
	TodoReturn flipKey(gd::string, bool, bool);
	TodoReturn rotateKey(gd::string, int);
	TodoReturn saveRemap(gd::string);

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();
}

[[link(android)]]
class InfoAlertButton : CCMenuItemSpriteExtra {
	static InfoAlertButton* create(gd::string, gd::string, float) = win 0x2233A0;

	bool init(gd::string, gd::string, float) = win 0x2234C0;
	~InfoAlertButton();

	virtual void activate();
}

[[link(android)]]
class InheritanceNode : cocos2d::CCObject {
	static InheritanceNode* create(int, InheritanceNode*) = win 0x1d4760;

	bool init(int, InheritanceNode*);
	~InheritanceNode();
}

[[link(android)]]
class MoreSearchLayer : FLAlertLayer, TextInputDelegate {
	static MoreSearchLayer* create() = win 0x260c80;

	~MoreSearchLayer();

	void onFeatured(cocos2d::CCObject* sender);
	void onFollowed(cocos2d::CCObject* sender);
	void onOriginal(cocos2d::CCObject* sender);
	void onSongMode(cocos2d::CCObject* sender);
	void onCompleted(cocos2d::CCObject* sender);
	void onLegendary(cocos2d::CCObject* sender);
	void onTwoPlayer(cocos2d::CCObject* sender);
	void onSongFilter(cocos2d::CCObject* sender);
	void onUncompleted(cocos2d::CCObject* sender);
	void onEpic(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onCoins(cocos2d::CCObject* sender);
	void onMythic(cocos2d::CCObject* sender);
	void onNoStar(cocos2d::CCObject* sender);
	void onFriends(cocos2d::CCObject* sender);

	TodoReturn selectSong(int);
	TodoReturn audioPrevious(cocos2d::CCObject*);
	TodoReturn toggleSongNodes(bool, bool);
	TodoReturn updateAudioLabel();
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn audioNext(cocos2d::CCObject*);

	virtual bool init() = win 0x260D20;
	virtual void keyBackClicked();
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual TodoReturn textInputReturn(CCTextInputNode*);
}

[[link(android)]]
class RetryLevelLayer : GJDropDownLayer, RewardedVideoDelegate {
	static RetryLevelLayer* create();

	~RetryLevelLayer();

	TodoReturn getEndText() = win 0xe96b0;
	void onEveryplay(cocos2d::CCObject* sender);
	void onRewardedVideo(cocos2d::CCObject* sender);
	void onMenu(cocos2d::CCObject* sender);
	void onReplay(cocos2d::CCObject* sender);

	TodoReturn setupLastProgress();

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn customSetup();
	virtual TodoReturn showLayer(bool);
	virtual TodoReturn enterAnimFinished();
	virtual TodoReturn rewardedVideoFinished();
	virtual TodoReturn shouldOffsetRewardCurrency();
	virtual void keyUp(cocos2d::enumKeyCodes);
}

[[link(android)]]
class SelectFontLayer : FLAlertLayer {
	static SelectFontLayer* create(LevelEditorLayer*);

	bool init(LevelEditorLayer*);
	~SelectFontLayer();

	void onChangeFont(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateFontLabel();

	virtual void keyBackClicked();
}

[[link(android)]]
class SetColorIDPopup : SetIDPopup, GJSpecialColorSelectDelegate {
	static SetColorIDPopup* create(int);

	bool init(int);
	~SetColorIDPopup();

	void onSelectSpecialColor(cocos2d::CCObject* sender);

	virtual TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
}

[[link(android)]]
class SetGroupIDLayer : FLAlertLayer, TextInputDelegate {
	static SetGroupIDLayer* create(GameObject*, cocos2d::CCArray*);

	bool init(GameObject*, cocos2d::CCArray*);
	~SetGroupIDLayer();

	void onAddGroup(cocos2d::CCObject* sender);
	void onArrowLeft(cocos2d::CCObject* sender);
	void onArrowRight(cocos2d::CCObject* sender);
	void onSmoothEase(cocos2d::CCObject* sender);
	void onToggleGuide(cocos2d::CCObject* sender);
	void onZLayerShift(cocos2d::CCObject* sender);
	void onNextGroupID1(cocos2d::CCObject* sender);
	void onAddGroupParent(cocos2d::CCObject* sender);
	void onRemoveFromGroup(cocos2d::CCObject* sender);
	void onToggleSelectedOrder(cocos2d::CCObject* sender);
	void onNextFreeEditorLayer1(cocos2d::CCObject* sender);
	void onNextFreeEditorLayer2(cocos2d::CCObject* sender);
	void onNextFreeOrderChannel(cocos2d::CCObject* sender);
	void onAnim(cocos2d::CCObject* sender);
	void onCopy(cocos2d::CCObject* sender);
	TodoReturn onArrow(int, int);
	void onClose(cocos2d::CCObject* sender);
	void onExtra(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onExtra2(cocos2d::CCObject* sender);
	void onZLayer(cocos2d::CCObject* sender);

	TodoReturn addGroupID(int);
	TodoReturn updateZOrder();
	TodoReturn removeGroupID(int);
	TodoReturn createTextInput(cocos2d::CCPoint, int, int, gd::string, float, int);
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
	TodoReturn updateEditorOrderLabel();
	TodoReturn updateOrderChannelLabel();

	virtual void keyBackClicked();
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupPulsePopup : SetupTriggerPopup, cocos2d::extension::ColorPickerDelegate, GJSpecialColorSelectDelegate {
	static SetupPulsePopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupPulsePopup();

	TodoReturn getColorValue();

	void onExclusive(cocos2d::CCObject* sender);
	void onGroupMainOnly(cocos2d::CCObject* sender);
	void onHSVLegacyMode(cocos2d::CCObject* sender);
	void onSelectPulseMode(cocos2d::CCObject* sender);
	void onUpdateCopyColor(cocos2d::CCObject* sender);
	void onSelectTargetMode(cocos2d::CCObject* sender);
	void onUpdateCustomColor(cocos2d::CCObject* sender);
	void onGroupSecondaryOnly(cocos2d::CCObject* sender);
	void onSelectSpecialColor(cocos2d::CCObject* sender);
	void onSelectSpecialTargetID(cocos2d::CCObject* sender);
	void onCopy(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);

	TodoReturn selectColor(cocos2d::_ccColor3B);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateHoldTime();
	TodoReturn updateHSVValue();
	TodoReturn updateTargetID();
	TodoReturn updateCopyColor();
	TodoReturn updateHoldLabel(bool);
	TodoReturn updatePulseMode();
	TodoReturn updateColorValue();
	TodoReturn updateFadeInTime();
	TodoReturn updateColorLabels();
	TodoReturn updateFadeInLabel(bool);
	TodoReturn updateFadeOutTime();
	TodoReturn updateFadeOutLabel(bool);
	TodoReturn updateGroupMainOnly();
	TodoReturn updateTextInputLabel();
	TodoReturn updatePulseTargetType();
	TodoReturn updateGroupSecondaryOnly();
	TodoReturn updateCopyColorTextInputLabel();

	virtual TodoReturn show();
	virtual TodoReturn determineStartValues();
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn colorValueChanged(cocos2d::_ccColor3B);
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
}

[[link(android)]]
class SetupShakePopup : SetupTriggerPopup {
	static SetupShakePopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupShakePopup();

	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateShake();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateInterval();
	TodoReturn updateShakeLabel(bool);
	TodoReturn updateIntervalLabel(bool);

	virtual TodoReturn determineStartValues();
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupSpawnPopup : SetupTriggerPopup {
	static SetupSpawnPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupSpawnPopup();

	void onAddRemap(cocos2d::CCObject* sender);
	void onDeleteRemap(cocos2d::CCObject* sender);
	void onSelectRemap(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn queueUpdateButtons();
	TodoReturn updateRemapButtons(float);
}

[[link(android)]]
class SFXFolderObject : SFXInfoObject {
	static SFXFolderObject* create(int, gd::string, int);

	bool init(int, gd::string, int);
	~SFXFolderObject();
}

[[link(android)]]
class SFXSearchResult : MusicSearchResult {
	static SFXSearchResult* create(int);

	bool init(int);
	~SFXSearchResult();

	TodoReturn getActiveFolder();
	TodoReturn getSelectedPage(int, int);

	/* unverified signature */
	void setActiveFolder(SFXFolderObject*);

	virtual TodoReturn updateObjects(AudioSortType);
}

[[link(android)]]
class ShareLevelLayer : FLAlertLayer {
	static ShareLevelLayer* create(GJGameLevel*);

	bool init(GJGameLevel*);
	~ShareLevelLayer();

	TodoReturn getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);

	void onSettings(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender) = win 0x381b90;

	TodoReturn setupStars();
	TodoReturn selectRating(cocos2d::CCObject*);

	virtual void keyBackClicked();
}

[[link(android)]]
class TopArtistsLayer : FLAlertLayer, OnlineListDelegate {
	static TopArtistsLayer* create();

	~TopArtistsLayer();

	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn setupPageInfo(gd::string, char const*);
	TodoReturn setupLeaderboard(cocos2d::CCArray*);
	TodoReturn updateLevelsLabel();
	TodoReturn loadPage(int);
	/* unverified signature */
	bool isCorrect(char const*);

	virtual bool init();
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn loadListFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadListFailed(char const*);
}

[[link(android)]]
class UISaveLoadLayer : SetupTriggerPopup {
	static UISaveLoadLayer* create(UIOptionsLayer*);

	bool init(UIOptionsLayer*);
	~UISaveLoadLayer();

	void onLoad(cocos2d::CCObject* sender);
	void onSave(cocos2d::CCObject* sender);
}

[[link(android)]]
class UploadListPopup : FLAlertLayer, ListUploadDelegate {
	static UploadListPopup* create(GJLevelList*);

	bool init(GJLevelList*);
	~UploadListPopup();

	void onReturnToList(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn listUploadFinished(GJLevelList*);
	virtual TodoReturn listUploadFailed(GJLevelList*, int);
}

[[link(android)]]
class AccountHelpLayer : GJDropDownLayer, GJAccountDelegate, FLAlertLayerProtocol {
	static AccountHelpLayer* create();

	~AccountHelpLayer();

	void onAccountManagement(cocos2d::CCObject* sender);
	void onUnlink(cocos2d::CCObject* sender);
	void onReLogin(cocos2d::CCObject* sender);

	TodoReturn updatePage();
	TodoReturn verifyUnlink();
	TodoReturn doUnlink();
	TodoReturn exitLayer();

	virtual TodoReturn customSetup();
	virtual TodoReturn layerHidden();
	virtual TodoReturn accountStatusChanged();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class CCAnimatedSprite : cocos2d::CCSprite {
	TodoReturn initWithType(char const*, cocos2d::CCTexture2D*, bool) = win 0x20d20;
	~CCAnimatedSprite();

	TodoReturn runAnimation(gd::string) = win 0x21640;
	TodoReturn switchToMode(spriteMode);
	TodoReturn cleanupSprite();
	TodoReturn createWithType(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn tweenToAnimation(gd::string, float) = win 0x21750;
	TodoReturn willPlayAnimation();
	TodoReturn runAnimationForced(gd::string);
	TodoReturn tweenToAnimationFinished();
	TodoReturn loadType(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn stopTween();

	virtual void setOpacity(unsigned char);
	virtual void setColor(cocos2d::_ccColor3B const&);
	virtual TodoReturn animationFinished(char const*);
	virtual TodoReturn animationFinishedO(cocos2d::CCObject*);
}

[[link(android)]]
class CCPartAnimSprite : cocos2d::CCSprite {
	TodoReturn initWithAnimDesc(char const*, cocos2d::CCTexture2D*, bool);
	~CCPartAnimSprite();

	TodoReturn getSpriteForKey(char const*);

	/* unverified signature */
	void setColor(cocos2d::_ccColor3B) = win 0x27270;
	/* unverified signature */
	void setFlipX(bool);
	/* unverified signature */
	void setFlipY(bool);

	TodoReturn countParts();
	TodoReturn tweenToFrame(cocos2d::CCSpriteFrame*, float);
	TodoReturn tweenSpriteTo(SpriteDescription*, float);
	TodoReturn transformSprite(SpriteDescription*);
	TodoReturn changeTextureOfID(char const*, char const*);
	TodoReturn createWithAnimDesc(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn dirtify();

	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setScale(float);
	virtual void setOpacity(unsigned char);
	virtual void setBlendFunc(cocos2d::_ccBlendFunc);
	virtual void setDisplayFrame(cocos2d::CCSpriteFrame*);
	virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*);
	virtual cocos2d::CCSpriteFrame* displayFrame();
}

[[link(android)]]
class CCSpriteCOpacity : cocos2d::CCSprite {
	~CCSpriteCOpacity();

	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(char const*);

	virtual void setOpacity(unsigned char);
}


[[link(android)]]
class CustomSongWidget : cocos2d::CCNode, MusicDownloadDelegate, FLAlertLayerProtocol {
	static CustomSongWidget* create(SongInfoObject*, CustomSongDelegate*, bool, bool, bool, bool, bool, bool);

	bool init(SongInfoObject*, CustomSongDelegate*, bool, bool, bool, bool, bool, bool) = win 0x921A0;
	~CustomSongWidget();

	TodoReturn getSongInfoIfUnloaded();

	void onDownload(cocos2d::CCObject* sender) = win 0x93A90;
	void onPlayback(cocos2d::CCObject* sender) = win 0x93D10;
	void onGetSongInfo(cocos2d::CCObject* sender);
	void onCancelDownload(cocos2d::CCObject* sender) = win 0x93960;
	void onMore(cocos2d::CCObject* sender) = win 0x93390;
	void onDelete(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender) = win 0x93CC0;

	TodoReturn deleteSong();
	TodoReturn updateError(GJSongError);
	TodoReturn verifySongID(int);
	TodoReturn startDownload();
	TodoReturn downloadFailed();
	TodoReturn updateSongInfo();
	TodoReturn updateLengthMod(float);
	TodoReturn updateSongObject(SongInfoObject*);
	TodoReturn updatePlaybackBtn();
	TodoReturn updateProgressBar(int);
	TodoReturn toggleUpdateButton(bool);
	TodoReturn downloadAssetFailed(int, GJAssetType, GJSongError);
	TodoReturn startMonitorDownload();
	void updateMultiAssetInfo(bool) = win 0x94FE0;
	TodoReturn downloadAssetFinished(int, GJAssetType);
	TodoReturn processNextMultiAsset();
	TodoReturn updateWithMultiAssets(gd::string, gd::string, int);
	TodoReturn updateDownloadProgress(float);
	TodoReturn startMultiAssetDownload();
	TodoReturn showError(bool);

	virtual TodoReturn loadSongInfoFinished(SongInfoObject*);
	virtual TodoReturn loadSongInfoFailed(int, GJSongError);
	virtual TodoReturn downloadSongFinished(int);
	virtual TodoReturn downloadSongFailed(int, GJSongError);
	virtual TodoReturn downloadSFXFinished(int);
	virtual TodoReturn downloadSFXFailed(int, GJSongError);
	virtual TodoReturn musicActionFinished(GJMusicAction);
	virtual TodoReturn musicActionFailed(GJMusicAction);
	virtual TodoReturn songStateChanged();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}


[[link(android)]]
class FollowRewardPage : FLAlertLayer, FLAlertLayerProtocol, GameRateDelegate, RewardedVideoDelegate {
	static FollowRewardPage* create();

	~FollowRewardPage();

	void onSpecialItem(cocos2d::CCObject* sender);
	void onRewardedVideo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn switchToOpenedState(CCMenuItemSpriteExtra*);
	virtual bool init();
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn rewardedVideoFinished();
	virtual TodoReturn updateRate();
}

[[link(android)]]
class GameOptionsLayer : GJOptionsLayer {
	static GameOptionsLayer* create(GJBaseGameLayer*);

	bool init(GJBaseGameLayer*);
	~GameOptionsLayer();

	void onUIOptions(cocos2d::CCObject* sender);
	void onPracticeMusicSync(cocos2d::CCObject* sender) = win 0x20eeb0;

	void showPracticeMusicSyncUnlockInfo() = win 0x20eba0;

	virtual void setupOptions() = win 0x20e710;
	virtual TodoReturn didToggle(int);
}

[[link(android)]]
class GhostTrailEffect : cocos2d::CCNode {
	static GhostTrailEffect* create() = win 0x46890;

	~GhostTrailEffect();

	TodoReturn runWithTarget(cocos2d::CCSprite*, float, float, float, float, bool);
	TodoReturn trailSnapshot(float);
	TodoReturn doBlendAdditive();
	TodoReturn stopTrail();

	virtual bool init();
	virtual void draw();
}


[[link(android)]]
class GJFlyGroundLayer : GJGroundLayer {
	static GJFlyGroundLayer* create();

	~GJFlyGroundLayer();

	virtual bool init();
}

[[link(android)]]
class GJLevelScoreCell : TableViewCell {
	~GJLevelScoreCell();

	void onViewProfile(cocos2d::CCObject* sender);

	void loadFromScore(GJUserScore*) = win 0x874F0;
	void updateBGColor(int) = win 0x807B0;
	GJLevelScoreCell(char const*, float, float);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class GJMoreGamesLayer : GJDropDownLayer {
	static GJMoreGamesLayer* create();

	~GJMoreGamesLayer();

	TodoReturn getMoreGamesList();

	virtual TodoReturn customSetup();
}

[[link(android)]]
class GJRewardDelegate {
	virtual TodoReturn rewardsStatusFinished(int);
	virtual TodoReturn rewardsStatusFailed();
}

[[link(android)]]
class GJUnlockableItem : cocos2d::CCObject {
	static GJUnlockableItem* create();

	bool init();
	~GJUnlockableItem();
}

[[link(android)]]
class KeybindingsLayer : FLAlertLayer {
	static KeybindingsLayer* create();

	~KeybindingsLayer();

	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);

	TodoReturn addKeyPair(char const*, char const*);
	TodoReturn countForPage(int);
	TodoReturn layerForPage(int);
	TodoReturn nextPosition(int);
	TodoReturn objectsForPage(int);
	TodoReturn incrementCountForPage(int);
	TodoReturn infoKey(int);
	TodoReturn pageKey(int);
	TodoReturn goToPage(int);
	TodoReturn layerKey(int);
	TodoReturn objectKey(int);

	virtual bool init() = win 0x227270;
	virtual void keyBackClicked();
}


[[link(android)]]
class LevelLeaderboard : FLAlertLayer, LeaderboardManagerDelegate, FLAlertLayerProtocol {
	static LevelLeaderboard* create(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = win 0x253700;

	bool init(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = win 0x2537c0;
	~LevelLeaderboard();

	TodoReturn getLocalScores();
	TodoReturn getSpriteButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint, int);

	void onChangeMode(cocos2d::CCObject* sender) = win 0x254d50;
	void onChangeType(cocos2d::CCObject* sender) = win 0x254d00;
	void onDeleteLocalScores(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = win 0x6a340;
	void onUpdate(cocos2d::CCObject* sender) = win 0x254d90;

	TodoReturn loadScores();
	TodoReturn setupLeaderboard(cocos2d::CCArray*);
	TodoReturn deleteLocalScores();
	TodoReturn reloadLeaderboard(LevelLeaderboardType, LevelLeaderboardMode) = win 0x254c50;
	/* unverified signature */
	bool isCorrect(char const*);

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn show() = win 0x5D2C0;
	virtual TodoReturn loadLeaderboardFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadLeaderboardFailed(char const*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn updateUserScoreFinished();
	virtual TodoReturn updateUserScoreFailed();

	GJGameLevel* m_level;
	LevelLeaderboardType m_type;
    LevelLeaderboardMode m_mode;
    cocos2d::CCArray* m_scores;
    GJCommentListLayer* m_list;
    LoadingCircle* m_circle;
    TextArea* m_noInternet;
    CCMenuItemSpriteExtra* m_refreshBtn;
    CCMenuItemSpriteExtra* m_timeBtn;
    CCMenuItemSpriteExtra* m_pointsBtn;
}

[[link(android)]]
class MoreOptionsLayer : FLAlertLayer, TextInputDelegate, GooglePlayDelegate, GJDropDownLayerDelegate {
	static MoreOptionsLayer* create();

	~MoreOptionsLayer();

	void onGPSignIn(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onParental(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onFMODDebug(cocos2d::CCObject* sender) = win 0x2aea40;
	void onGPSignOut(cocos2d::CCObject* sender);
	void onKeybindings(cocos2d::CCObject* sender);
	void onSongBrowser(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);

	TodoReturn countForPage(int);
	TodoReturn layerForPage(int);
	TodoReturn nextPosition(int);
	TodoReturn objectsForPage(int);
	TodoReturn offsetToNextPage();
	TodoReturn incrementCountForPage(int);
	TodoReturn infoKey(int);
	TodoReturn pageKey(int);
	TodoReturn goToPage(int);
	TodoReturn layerKey(int);
	TodoReturn toggleGP();
	TodoReturn addToggle(char const*, char const*, char const*);
	TodoReturn objectKey(int);

	virtual bool init();
	virtual void keyBackClicked();
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual TodoReturn textInputReturn(CCTextInputNode*);
	virtual TodoReturn googlePlaySignedIn();
	virtual TodoReturn dropDownLayerWillClose(GJDropDownLayer*);
}

[[link(android)]]
class MultiplayerLayer : cocos2d::CCLayer {
	static MultiplayerLayer* create();

	~MultiplayerLayer();

	void onBack(cocos2d::CCObject* sender);
	void onBtn1(cocos2d::CCObject* sender);
	void onBtn2(cocos2d::CCObject* sender);

	TodoReturn scene();

	virtual bool init();
	virtual void keyBackClicked();
}


[[link(android)]]
class SelectEventLayer : SetupTriggerPopup {
	static SelectEventLayer* create(SetupEventLinkPopup*, gd::set<int>&);

	bool init(SetupEventLinkPopup*, gd::set<int>&);
	~SelectEventLayer();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn nextPosition();
	TodoReturn addToggle(int, gd::string);

	virtual void keyBackClicked();
}

[[link(android)]]
class SetTargetIDLayer : SetupTriggerPopup {
	static SetTargetIDLayer* create(EffectGameObject*, cocos2d::CCArray*, gd::string, gd::string, int, int, int);

	bool init(EffectGameObject*, cocos2d::CCArray*, gd::string, gd::string, int, int, int);
	~SetTargetIDLayer();

	virtual TodoReturn determineStartValues();
	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupPortalPopup : FLAlertLayer, TextInputDelegate {
	static SetupPortalPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupPortalPopup();

	void onUnboundMode(cocos2d::CCObject* sender);
	void onEditCameraSettings(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateCameraEasing();
	TodoReturn updateCameraPadding();
	TodoReturn determineStartValues();
	TodoReturn updateItemVisibility();
	TodoReturn updateCameraEasingLabel();
	TodoReturn updateCameraPaddingLabel();

	virtual void keyBackClicked();
}

[[link(android)]]
class SetupReverbPopup : SetupTriggerPopup {
	static SetupReverbPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*);

	bool init(SFXTriggerGameObject*, cocos2d::CCArray*);
	~SetupReverbPopup();

	void onPlay(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onReverb(cocos2d::CCObject* sender);

	TodoReturn updateReverbLabel();
}

[[link(android)]]
class SetupRotatePopup : SetupTriggerPopup {
	static SetupRotatePopup* create(EnhancedGameObject*, cocos2d::CCArray*);

	bool init(EnhancedGameObject*, cocos2d::CCArray*);
	~SetupRotatePopup();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class SongOptionsLayer : FLAlertLayer {
	static SongOptionsLayer* create(CustomSongDelegate*);

	bool init(CustomSongDelegate*);
	~SongOptionsLayer();

	void onPlayback(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onFadeIn(cocos2d::CCObject* sender);
	void onFadeOut(cocos2d::CCObject* sender);

	TodoReturn updatePlaybackBtn();

	virtual void keyBackClicked();
}

[[link(android)]]
class TextStyleSection : cocos2d::CCObject {
	static TextStyleSection* create(int, int, TextStyleType);

	bool init(int, int, TextStyleType);
	~TextStyleSection();

	TodoReturn createDelaySection(int, float);
	TodoReturn createShakeSection(int, int, int, int);
	TodoReturn createColoredSection(cocos2d::_ccColor3B, int, int);
	TodoReturn createInstantSection(int, int, float);
}

[[link(android)]]
class UserListDelegate {
	virtual TodoReturn getUserListFinished(cocos2d::CCArray*, UserListType);
	virtual TodoReturn getUserListFailed(UserListType, GJErrorCode);
	virtual TodoReturn userListChanged(cocos2d::CCArray*, UserListType);
	virtual TodoReturn forceReloadList(UserListType);
}

[[link(android)]]
class WorldSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate {
	static WorldSelectLayer* create(int);

	bool init(int);
	~WorldSelectLayer();

	TodoReturn getColorValue(int, int, float);

	void onFreeLevels(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onNext(cocos2d::CCObject* sender);
	void onPrev(cocos2d::CCObject* sender);
	void onGarage(cocos2d::CCObject* sender);

	TodoReturn setupWorlds();
	TodoReturn colorForPage(int);
	TodoReturn updateArrows();
	TodoReturn unblockButtons();
	TodoReturn showCompleteDialog();
	TodoReturn animateInActiveIsland();
	TodoReturn scene(int);
	TodoReturn goToPage(int, bool);
	TodoReturn tryShowAd();

	virtual void onExit();
	virtual void keyBackClicked();
	virtual TodoReturn scrollLayerWillScrollToPage(BoomScrollLayer*, int);
	virtual TodoReturn scrollLayerScrolledToPage(BoomScrollLayer*, int);
	virtual TodoReturn scrollLayerMoved(cocos2d::CCPoint);
}

[[link(android)]]
class AccountLoginLayer : FLAlertLayer, TextInputDelegate, GJAccountLoginDelegate, FLAlertLayerProtocol {
	static AccountLoginLayer* create(gd::string);

	bool init(gd::string);
	~AccountLoginLayer();

	void onForgotUser(cocos2d::CCObject* sender);
	void onForgotPassword(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);

	TodoReturn resetLabel(int);
	TodoReturn resetLabels();
	TodoReturn updateLabel(AccountError);
	TodoReturn disableNodes();
	TodoReturn hideLoadingUI();
	TodoReturn showLoadingUI();
	TodoReturn createTextInput(cocos2d::CCPoint, cocos2d::CCSize, char const*, int);
	TodoReturn createTextLabel(cocos2d::CCPoint, char const*, cocos2d::CCSize);
	TodoReturn createTextBackground(cocos2d::CCPoint, char const*, cocos2d::CCSize);
	TodoReturn toggleUI(bool);

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn loginAccountFinished(int, int);
	virtual TodoReturn loginAccountFailed(AccountError);
}

[[link(android)]]
class AchievementsLayer : GJDropDownLayer {
	static AchievementsLayer* create();

	~AchievementsLayer();

	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);

	TodoReturn setupPageInfo(int, int, int);
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	TodoReturn loadPage(int);

	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn customSetup();
}

[[link(android)]]
class AudioEffectsLayer : cocos2d::CCLayerColor {
	static AudioEffectsLayer* create(gd::string);

	bool init(gd::string);
	~AudioEffectsLayer();

	TodoReturn getBGSquare();

	TodoReturn triggerEffect(float) = win 0x5BB70;
	TodoReturn resetAudioVars();
	TodoReturn audioStep(float) = win 0x5BAD0;
	TodoReturn goingDown();

	virtual void draw();
	virtual void updateTweenAction(float, char const*);
}

[[link(android)]]
class CCSpriteGrayscale : CCSpriteWithHue {
	static CCSpriteGrayscale* create(gd::string const&);
	static CCSpriteGrayscale* create(gd::string const&, cocos2d::CCRect const&);

	~CCSpriteGrayscale();

	TodoReturn createWithTexture(cocos2d::CCTexture2D*);
	TodoReturn createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(gd::string const&);

	virtual TodoReturn getShaderName();
	virtual TodoReturn shaderBody();
}


[[link(android)]]
class CustomSFXDelegate {
	virtual TodoReturn sfxObjectSelected(SFXInfoObject*);
	virtual TodoReturn getActiveSFXID();
	virtual TodoReturn overridePlaySFX(SFXInfoObject*);
}

[[link(android)]]
class DungeonBarsSprite : cocos2d::CCNode {
	static DungeonBarsSprite* create();

	~DungeonBarsSprite();

	TodoReturn animateOutBars();

	virtual bool init();
	virtual void visit();
}

[[link(android)]]
class EditTriggersPopup : SetupTriggerPopup {
	static EditTriggersPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~EditTriggersPopup();

	void onClose(cocos2d::CCObject* sender);

	virtual TodoReturn determineStartValues();
}

[[link(android)]]
class ExplodeItemSprite : cocos2d::CCSprite {
	static ExplodeItemSprite* create();

	~ExplodeItemSprite();

	virtual bool init();
}

[[link(android)]]
class GJAccountDelegate {
	virtual TodoReturn accountStatusChanged();
}

[[link(android)]]
class GJColorSetupLayer : FLAlertLayer, ColorSelectDelegate, FLAlertLayerProtocol {
	static GJColorSetupLayer* create(LevelSettingsObject*);

	bool init(LevelSettingsObject*);
	~GJColorSetupLayer();

	void onPage(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onColor(cocos2d::CCObject* sender);

	TodoReturn updateSpriteColor(ColorChannelSprite*, cocos2d::CCLabelBMFont*, int);
	TodoReturn updateSpriteColors();
	TodoReturn showPage(int);

	virtual void keyBackClicked();
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*);
}

[[link(android)]]
class GJPathRewardPopup : FLAlertLayer {
	static GJPathRewardPopup* create(int);

	bool init(int);
	~GJPathRewardPopup();

	void onClaim(cocos2d::CCObject* sender);

	TodoReturn closePopup();

	virtual void keyBackClicked();
}

[[link(android)]]
class GJRotationControl : cocos2d::CCLayer {
	static GJRotationControl* create();

	~GJRotationControl();

	void setAngle(float);

	TodoReturn finishTouch();
	TodoReturn updateSliderPosition(cocos2d::CCPoint);

	virtual bool init();
	virtual void draw();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
}

[[link(android)]]
class GooglePlayManager : cocos2d::CCNode {
	~GooglePlayManager();

	TodoReturn sharedState();
	TodoReturn googlePlaySignedIn();

	virtual bool init();
}

[[link(android)]]
class HSVWidgetDelegate {
	virtual TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::_ccHSVValue);
	virtual TodoReturn hsvChanged(ConfigureHSVWidget*);
}

[[link(android)]]
class LeaderboardsLayer : cocos2d::CCLayer, LeaderboardManagerDelegate, FLAlertLayerProtocol {
	static LeaderboardsLayer* create(LeaderboardState) = win 0x228BD0;

	bool init(LeaderboardState) = mac 0x4ea600, win 0x228c70;
	~LeaderboardsLayer();

	void onCreators(cocos2d::CCObject* sender);
	void onTop(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onWeek(cocos2d::CCObject* sender);
	void onGlobal(cocos2d::CCObject* sender);

	TodoReturn refreshTabs();
	TodoReturn toggleTabButtons();
	TodoReturn selectLeaderboard(LeaderboardState);
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	TodoReturn scene(LeaderboardState);
	/* unverified signature */
	bool isCorrect(char const*);
	TodoReturn setupTabs();

	virtual void keyBackClicked();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn updateUserScoreFinished();
	virtual TodoReturn updateUserScoreFailed();
	virtual TodoReturn loadLeaderboardFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadLeaderboardFailed(char const*);

	GJListLayer* m_list;
	cocos2d::CCArray* m_userScores;
	LeaderboardState m_state;
	CCMenuItemToggler* m_topBtn;
	CCMenuItemToggler* m_globalBtn;
	CCMenuItemToggler* m_creatorsBtn;
	CCMenuItemToggler* m_friendsBtn;
	LoadingCircle* m_circle;
	TextArea* m_noInternet;
	cocos2d::CCArray* m_tabs;
}


[[link(android)]]
class LevelFeatureLayer : FLAlertLayer {
	static LevelFeatureLayer* create(int);

	bool init(int);
	~LevelFeatureLayer();

	void onToggleEpic(cocos2d::CCObject* sender);
	void onSetEpicOnly(cocos2d::CCObject* sender);
	void onSetFeatured(cocos2d::CCObject* sender);
	void onRemoveValues(cocos2d::CCObject* sender);
	void onUp(cocos2d::CCObject* sender);
	void onUp2(cocos2d::CCObject* sender);
	void onDown(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onDown2(cocos2d::CCObject* sender);

	TodoReturn updateStars();

	virtual void keyBackClicked();
}

[[link(android)]]
class LevelOptionsLayer : GJOptionsLayer {
	static LevelOptionsLayer* create(LevelSettingsObject*);

	bool init(LevelSettingsObject*);
	~LevelOptionsLayer();

	void onSettings(cocos2d::CCObject* sender);

	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn getValue(int);
	virtual TodoReturn setupOptions();
	virtual TodoReturn didToggle(int);
}

[[link(android)]]
class MultiTriggerPopup : SetupTriggerPopup {
	static MultiTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~MultiTriggerPopup();
}

[[link(android)]]
class MusicArtistObject : cocos2d::CCObject {
	static MusicArtistObject* create(int, gd::string, gd::string, gd::string);

	bool init(int, gd::string, gd::string, gd::string);
	~MusicArtistObject();
}

[[link(android)]]
class MusicSearchResult : cocos2d::CCObject, OptionsObjectDelegate {
	static MusicSearchResult* create();

	bool init();
	~MusicSearchResult();

	TodoReturn getFilesMatchingSearch(cocos2d::CCArray*, gd::string);

	TodoReturn updateObjects();
	TodoReturn applyTagFilters(cocos2d::CCArray*);
	TodoReturn updateFutureCount(cocos2d::CCArray*, cocos2d::CCArray*);
	TodoReturn applyArtistFilters(cocos2d::CCArray*);
	TodoReturn createTagFilterObjects();
	TodoReturn createArtistFilterObjects();

	virtual TodoReturn updateObjects(AudioSortType);
	virtual TodoReturn stateChanged(OptionsObject*);
}

[[link(android)]]
class PromoInterstitial : FLAlertLayer {
	static PromoInterstitial* create(bool);

	bool init(bool);
	~PromoInterstitial();

	void onClick(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn setup();

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void keyBackClicked();
	virtual TodoReturn show();
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
	static PurchaseItemPopup* create(GJStoreItem*) = win 0x217FB0;

	bool init(GJStoreItem*) = win 0x218050;
	~PurchaseItemPopup();

	void onPurchase(cocos2d::CCObject* sender) = win 0x218AD0;
	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
}

[[link(android)]]
class RewardUnlockLayer : FLAlertLayer, CurrencyRewardDelegate {
	static RewardUnlockLayer* create(int, RewardsPage*) = win 0x2F0610;

	bool init(int, RewardsPage*) = win 0x2F06C0;
	~RewardUnlockLayer();

	void onClose(cocos2d::CCObject* sender);

	TodoReturn playDropSound();
	TodoReturn readyToCollect(GJRewardItem*);
	TodoReturn playLabelEffect(int, int, cocos2d::CCSprite*, cocos2d::CCPoint, float);
	TodoReturn showCloseButton();
	TodoReturn playRewardEffect();
	TodoReturn connectionTimeout();
	TodoReturn showCollectReward(GJRewardItem*) = win 0x2F1380;
	TodoReturn labelEnterFinishedO(cocos2d::CCObject*);
	TodoReturn step2();
	TodoReturn step3();

	virtual void keyBackClicked();
	virtual TodoReturn currencyWillExit(CurrencyRewardLayer*);
}

[[link(android)]]
class SecretNumberLayer : cocos2d::CCLayer {
	static SecretNumberLayer* create();

	~SecretNumberLayer();

	TodoReturn playNumberEffect(int);

	virtual bool init();
}


[[link(android)]]
class SetupOpacityPopup : SetupTriggerPopup {
	static SetupOpacityPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupOpacityPopup();

	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateOpacity();
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateTargetID();
	TodoReturn updateOpacityLabel();
	TodoReturn updateTextInputLabel();

	virtual TodoReturn determineStartValues();
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupSFXEditPopup : SetupAudioTriggerPopup {
	static SetupSFXEditPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*, bool);

	bool init(SFXTriggerGameObject*, cocos2d::CCArray*, bool);
	~SetupSFXEditPopup();
}



[[link(android)]]
class SmartTemplateCell : TableViewCell {
	~SmartTemplateCell();

	void onClick(cocos2d::CCObject* sender);

	void updateBGColor(int) = win 0x8AB60;
	void loadFromObject(GJSmartTemplate*) = win 0x8A860;
	SmartTemplateCell(char const*, float, float);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class SpriteDescription : cocos2d::CCObject {
	TodoReturn initDescription(DS_Dictionary*);
	TodoReturn initDescription(cocos2d::CCDictionary*);
	~SpriteDescription();

	TodoReturn createDescription(DS_Dictionary*);
	TodoReturn createDescription(cocos2d::CCDictionary*);
}

[[link(android)]]
class VideoOptionsLayer : FLAlertLayer {
	static VideoOptionsLayer* create();

	~VideoOptionsLayer();

	void onAdvanced(cocos2d::CCObject* sender);
	void onFullscreen(cocos2d::CCObject* sender);
	void onResolutionNext(cocos2d::CCObject* sender);
	void onResolutionPrev(cocos2d::CCObject* sender);
	void onTextureQualityNext(cocos2d::CCObject* sender);
	void onTextureQualityPrev(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onApply(cocos2d::CCObject* sender) = win 0x2aff80;
	void onClose(cocos2d::CCObject* sender);

	TodoReturn reloadMenu();
	TodoReturn toggleResolution();
	TodoReturn updateResolution(int);
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float, bool);
	TodoReturn updateTextureQuality(int);

	virtual bool init();
	virtual void keyBackClicked();
}

[[link(android)]]
class AchievementManager : cocos2d::CCNode {
	~AchievementManager();

	TodoReturn getAllAchievements();
	TodoReturn getAchievementsWithID(char const*);
	TodoReturn getAchievementRewardDict();
	TodoReturn getAllAchievementsSorted(bool);

	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn sharedState() = win 0x9AC0;
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn addAchievement(gd::string, gd::string, gd::string, gd::string, gd::string, int) = win 0x9bc0;
	TodoReturn resetAchievement(char const*);
	TodoReturn notifyAchievement(char const*, char const*, char const*);
	TodoReturn resetAchievements();
	TodoReturn checkAchFromUnlock(char const*);
	TodoReturn percentageForCount(int, int);
	/* unverified signature */
	bool isAchievementEarned(char const*);
	TodoReturn limitForAchievement(gd::string);
	TodoReturn achievementForUnlock(int, UnlockType);
	TodoReturn addManualAchievements() = win 0xf74a;
	TodoReturn areAchievementsEarned(cocos2d::CCArray*);
	TodoReturn percentForAchievement(char const*);
	/* unverified signature */
	bool isAchievementAvailable(gd::string);
	TodoReturn notifyAchievementWithID(char const*);
	TodoReturn reportAchievementWithID(char const*, int, bool);
	TodoReturn storeAchievementUnlocks();
	TodoReturn reportPlatformAchievementWithID(char const*, int);
	TodoReturn setup();

	virtual bool init();
}

[[link(android)]]
class AnimatedGameObject : EnhancedGameObject, AnimatedSpriteDelegate, SpritePartDelegate {
	static AnimatedGameObject* create(int);

	bool init(int);
	~AnimatedGameObject();

	TodoReturn getTweenTime(int, int);

	TodoReturn playAnimation(int);
	TodoReturn animationForID(int, int);
	TodoReturn setupAnimatedSize(int);
	TodoReturn setupChildSprites();
	TodoReturn displayFrameChanged(cocos2d::CCObject*, gd::string);
	TodoReturn updateObjectAnimation();
	TodoReturn updateChildSpriteColor(cocos2d::_ccColor3B);

	virtual void setOpacity(unsigned char);
	virtual void setChildColor(cocos2d::_ccColor3B const&);
	virtual TodoReturn resetObject();
	virtual TodoReturn activateObject();
	virtual TodoReturn deactivateObject(bool);
	virtual void setObjectColor(cocos2d::_ccColor3B const&);
	virtual TodoReturn animationFinished(char const*);
}

[[link(android)]]
class AnimatedShopKeeper : CCAnimatedSprite {
	static AnimatedShopKeeper* create(ShopType);

	bool init(ShopType);
	~AnimatedShopKeeper();

	TodoReturn startAnimating();
	TodoReturn playReactAnimation();

	virtual TodoReturn animationFinished(char const*);
}

[[link(android)]]
class CharacterColorPage : FLAlertLayer {
	static CharacterColorPage* create();

	~CharacterColorPage();

	void onPlayerColor(cocos2d::CCObject* sender);
	void onMode(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn checkColor(int, UnlockType);
	TodoReturn toggleGlow(cocos2d::CCObject*);
	TodoReturn toggleShip(cocos2d::CCObject*);
	TodoReturn colorForIndex(int);
	TodoReturn offsetForIndex(int);
	TodoReturn createColorMenu();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn toggleGlowItems(bool);
	TodoReturn updateColorMode(int);
	TodoReturn updateIconColors();
	TodoReturn activeColorForMode(int);

	virtual bool init() = win 0x5e640;
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn show();
}

[[link(android)]]
class ColorSetupDelegate {
	virtual TodoReturn colorSetupClosed(int);
}

[[link(android)]]
class ConfigureHSVWidget : cocos2d::CCNode, TextInputDelegate {
	static ConfigureHSVWidget* create(cocos2d::_ccHSVValue, bool, bool);

	bool init(cocos2d::_ccHSVValue, bool, bool);
	~ConfigureHSVWidget();

	TodoReturn getHSV(GameObject*, cocos2d::CCArray*, int);

	void onResetHSV(cocos2d::CCObject* sender);
	void onToggleSConst(cocos2d::CCObject* sender);
	void onToggleVConst(cocos2d::CCObject* sender);
	TodoReturn onClose();

	TodoReturn updateLabels();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateSliders();
	TodoReturn createTextInputNode(cocos2d::CCPoint, int);

	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class CustomSongDelegate {
	virtual TodoReturn songIDChanged(int);
	virtual TodoReturn getActiveSongID();
}

[[link(android)]]
class EditorOptionsLayer : GJOptionsLayer {
	static EditorOptionsLayer* create();

	~EditorOptionsLayer();

	void onButtonRows(cocos2d::CCObject* sender);
	void onButtonsPerRow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	virtual bool init();
	virtual TodoReturn setupOptions();
}

[[link(android)]]
class EffectManagerState {
	// ~EffectManagerState();
}

[[link(android)]]
class FriendRequestPopup : FLAlertLayer, UploadActionDelegate, UploadPopupDelegate, FLAlertLayerProtocol {
	static FriendRequestPopup* create(GJFriendRequest*);

	bool init(GJFriendRequest*);
	~FriendRequestPopup();

	void onBlock(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onAccept(cocos2d::CCObject* sender);
	void onRemove(cocos2d::CCObject* sender);

	TodoReturn loadFromGJFriendRequest(GJFriendRequest*);
	TodoReturn blockUser();

	virtual void keyBackClicked();
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class FriendsProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, UserListDelegate {
	static FriendsProfilePage* create(UserListType);

	bool init(UserListType) = win 0xefda0;
	~FriendsProfilePage();

	void onClose(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	void onBlocked(cocos2d::CCObject* sender);

	TodoReturn setupUsersBrowser(cocos2d::CCArray*, UserListType);

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn getUserListFinished(cocos2d::CCArray*, UserListType);
	virtual TodoReturn getUserListFailed(UserListType, GJErrorCode);
	virtual TodoReturn userListChanged(cocos2d::CCArray*, UserListType);
	virtual TodoReturn forceReloadList(UserListType);
}

[[link(android)]]
class GameEffectsManager : cocos2d::CCNode {
	static GameEffectsManager* create(PlayLayer*);

	bool init(PlayLayer*);
	~GameEffectsManager();

	TodoReturn scaleParticle(cocos2d::CCParticleSystemQuad*, float);
	TodoReturn addParticleEffect(cocos2d::CCParticleSystemQuad*, int);
}

[[link(android)]]
class GJCommentListLayer : cocos2d::CCLayerColor {
	static GJCommentListLayer* create(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, bool) = win 0x203350;

	bool init(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, bool) = win 0x203440;
	~GJCommentListLayer();

    BoomListView* m_list;
}

[[link(android)]]
class GJDifficultySprite : cocos2d::CCSprite {
	static GJDifficultySprite* create(int, GJDifficultyName) = win 0x211eb0;

	bool init(int, GJDifficultyName) = win 0x211f80;
	~GJDifficultySprite();

	TodoReturn getDifficultyFrame(int, GJDifficultyName) = win 0x212010;

	TodoReturn updateFeatureState(GJFeatureState) = win 0x2122c0;
	TodoReturn updateDifficultyFrame(int, GJDifficultyName) = win 0x212100;
	TodoReturn updateFeatureStateFromLevel(GJGameLevel*) = win 0x212240;
}

[[link(android)]]
class GJGameLoadingLayer : cocos2d::CCLayer {
	static GJGameLoadingLayer* create(GJGameLevel*, bool) = win 0x1c6530;

	bool init(GJGameLevel*, bool);
	~GJGameLoadingLayer();

	TodoReturn gameLayerDidUnload();
	GJGameLoadingLayer *transitionToLoadingLayer(GJGameLevel*, bool) = win 0x1c6430;
	TodoReturn loadLevel();

	virtual void onEnter();
	virtual void onEnterTransitionDidFinish();
}

[[link(android)]]
class GJPurchaseDelegate {
	virtual TodoReturn didPurchaseItem(GJStoreItem*);
}

[[link(android)]]
class GJTransformControl : cocos2d::CCLayer {
	static GJTransformControl* create();

	~GJTransformControl();

	void onToggleLockScale(cocos2d::CCObject* sender);

	TodoReturn loadValues(GameObject*, cocos2d::CCArray*, gd::unordered_map<int, GameObjectEditorState>&);
	TodoReturn finishTouch();
	TodoReturn saveToState(GJTransformState&);
	TodoReturn spriteByTag(int);
	TodoReturn scaleButtons(float) = win 0xdeff0;
	TodoReturn applyRotation(float);
	TodoReturn loadFromState(GJTransformState&);
	TodoReturn updateButtons(bool, bool);
	TodoReturn refreshControl();
	TodoReturn logCurrentZeroPos();
	TodoReturn updateAnchorSprite(cocos2d::CCPoint);
	TodoReturn updateMinMaxPositions();
	TodoReturn calculateRotationOffset();

	virtual bool init();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
}

[[link(android)]]
class KeybindingsManager : cocos2d::CCNode {
	~KeybindingsManager();

	TodoReturn dataLoaded(DS_Dictionary*) = win 0x228580;
	TodoReturn firstSetup();
	TodoReturn sharedState() = win 0x228470;
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn commandForKey(cocos2d::enumKeyCodes, GJKeyGroup, bool, bool, bool);
	TodoReturn keyForCommand(GJKeyCommand);
	TodoReturn groupForCommand(GJKeyCommand);
	TodoReturn commandForKeyMods(cocos2d::enumKeyCodes, GJKeyGroup);
	TodoReturn commandForKeyNoMods(cocos2d::enumKeyCodes, GJKeyGroup);
	TodoReturn commandToKeyForGroup(GJKeyGroup);
	TodoReturn keyToCommandForGroup(GJKeyGroup);

	virtual bool init();
}

[[link(android)]]
class LevelOptionsLayer2 : LevelOptionsLayer {
	static LevelOptionsLayer2* create(LevelSettingsObject*);

	bool init(LevelSettingsObject*);
	~LevelOptionsLayer2();

	virtual TodoReturn setupOptions();
}


[[link(android)]]
class OptionsScrollLayer : FLAlertLayer, TableViewCellDelegate {
	static OptionsScrollLayer* create(cocos2d::CCArray*, bool);

	bool init(cocos2d::CCArray*, bool);
	~OptionsScrollLayer();

	TodoReturn getRelevantObjects(cocos2d::CCArray*);

	void onClose(cocos2d::CCObject* sender);

	TodoReturn setupList(cocos2d::CCArray*);

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
}

[[link(android)]]
class SecretRewardsLayer : cocos2d::CCLayer, DialogDelegate, BoomScrollLayerDelegate {
	static SecretRewardsLayer* create(bool);

	bool init(bool);
	~SecretRewardsLayer();

	TodoReturn getPageColor(int);

	void onChestType(cocos2d::CCObject* sender);
	void onSelectItem(cocos2d::CCObject* sender) = win 0x2F6D50;
	void onSwitchPage(cocos2d::CCObject* sender);
	void onSpecialItem(cocos2d::CCObject* sender) = win 0x2F7360;
	void onBack(cocos2d::CCObject* sender);
	void onShop(cocos2d::CCObject* sender) = win 0x2F70B0;

	TodoReturn showDialog01() = win 0x2f7970;
	TodoReturn showDialog03();
	TodoReturn moveToMainLayer(cocos2d::CCObject*);
	TodoReturn showLockedChest();
	TodoReturn updateBackButton();
	TodoReturn showDialogDiamond();
	TodoReturn generateChestItems(int) = win 0x2F63D0;
	TodoReturn showDialogMechanic();
	TodoReturn switchToOpenedState(CCMenuItemSpriteExtra*) = win 0x2F7630;
	TodoReturn updateUnlockedLabel() = win 0x2F76E0;
	TodoReturn createSecondaryLayer(int) = win 0x2F5F60;
	TodoReturn moveToSecondaryLayer(int);
	TodoReturn scene(bool) = win 0x2f4130;
	TodoReturn goToPage(int);
	TodoReturn showShop(int);

	virtual void onExit();
	virtual void keyBackClicked();
	virtual TodoReturn dialogClosed(DialogLayer*);
	virtual TodoReturn scrollLayerMoved(cocos2d::CCPoint);
}

[[link(android)]]
class SelectPremadeLayer : FLAlertLayer {
	static SelectPremadeLayer* create();

	~SelectPremadeLayer();

	void onSelectPremade(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	virtual bool init();
	virtual void keyBackClicked();
}

[[link(android)]]
class SelectSFXSortLayer : FLAlertLayer {
	static SelectSFXSortLayer* create(AudioSortType);

	bool init(AudioSortType);
	~SelectSFXSortLayer();

	void onClose(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
}

[[link(android)]]
class SetLevelOrderPopup : SetIDPopup {
	static SetLevelOrderPopup* create(int, int, int);

	bool init(int, int, int);
	~SetLevelOrderPopup();

	void onOrderButton(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupDashRingPopup : SetupTriggerPopup {
	static SetupDashRingPopup* create(DashRingObject*, cocos2d::CCArray*);

	bool init(DashRingObject*, cocos2d::CCArray*);
	~SetupDashRingPopup();
}

[[link(android)]]
class SetupGradientPopup : SetupTriggerPopup {
	static SetupGradientPopup* create(GradientTriggerObject*, cocos2d::CCArray*);

	bool init(GradientTriggerObject*, cocos2d::CCArray*);
	~SetupGradientPopup();

	void onBlending(cocos2d::CCObject* sender);
	void onPlusButton(cocos2d::CCObject* sender);
	void onZLayer(cocos2d::CCObject* sender);

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateBlending();
	TodoReturn updateBlendingLabel();
	TodoReturn updateZLayerButtons();
	TodoReturn updateGradientLabels(bool);

	virtual TodoReturn determineStartValues();
	virtual TodoReturn updateToggleItem(int, bool);
	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupKeyframePopup : SetupTriggerPopup {
	static SetupKeyframePopup* create(KeyframeGameObject*, cocos2d::CCArray*, LevelEditorLayer*);

	bool init(KeyframeGameObject*, cocos2d::CCArray*, LevelEditorLayer*);
	~SetupKeyframePopup();

	void onTimeMode(cocos2d::CCObject* sender);
	void onCustomButton(cocos2d::CCObject* sender);
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn refreshPreviewArt();
	TodoReturn updateTimeModeButtons();

	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupTeleportPopup : SetupTriggerPopup {
	static SetupTeleportPopup* create(TeleportPortalObject*, cocos2d::CCArray*, int, bool);

	bool init(TeleportPortalObject*, cocos2d::CCArray*, int, bool);
	~SetupTeleportPopup();

	void onTeleportGravity(cocos2d::CCObject* sender);

	TodoReturn updateTeleportGravityState(int);

	virtual TodoReturn determineStartValues();
	virtual TodoReturn updateDefaultTriggerValues();
	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupTimeWarpPopup : SetupTriggerPopup {
	static SetupTimeWarpPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupTimeWarpPopup();

	void onClose(cocos2d::CCObject* sender);

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateTimeWarp();
	TodoReturn updateTimeWarpLabel();

	virtual TodoReturn determineStartValues();
}

[[link(android)]]
class SFXBrowserDelegate {
	virtual TodoReturn sfxBrowserClosed(SFXBrowser*);
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
	static BrowseSmartKeyLayer* create(GJSmartTemplate*, gd::string);

	bool init(GJSmartTemplate*, gd::string);
	~BrowseSmartKeyLayer();

	TodoReturn getAllSelectedBlocks();

	void onPrefabObject(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onButton(cocos2d::CCObject* sender);

	TodoReturn updateChanceValues();
	TodoReturn addChanceToSelected(int, bool);
	TodoReturn deletedSelectedItems();
	TodoReturn createTemplateObjects();
}

[[link(android)]]
class CCAnimateFrameCache : cocos2d::CCObject {
	bool init();
	~CCAnimateFrameCache();

	TodoReturn spriteFrameByName(char const*);
	TodoReturn removeSpriteFrames();
	TodoReturn sharedSpriteFrameCache();
	TodoReturn addSpriteFramesWithFile(char const*);
	TodoReturn purgeSharedSpriteFrameCache();
	TodoReturn addCustomSpriteFramesWithFile(char const*);
	TodoReturn addDict(DS_Dictionary*, char const*);
	TodoReturn addDict(cocos2d::CCDictionary*, char const*);
}

[[link(android)]]
class CollisionBlockPopup : FLAlertLayer, TextInputDelegate {
	static CollisionBlockPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~CollisionBlockPopup();

	void onNextItemID(cocos2d::CCObject* sender);
	void onItemIDArrow(cocos2d::CCObject* sender);
	void onDynamicBlock(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateItemID();
	TodoReturn updateEditorLabel();
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();

	virtual void keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual TodoReturn textInputReturn(CCTextInputNode*);
}


[[link(android)]]
class CommunityCreditNode : cocos2d::CCNode {
	static CommunityCreditNode* create(int, int, int, gd::string);

	bool init(int, int, int, gd::string);
	~CommunityCreditNode();
}


[[link(android)]]
class CreateParticlePopup : FLAlertLayer, TextInputDelegate, ColorSelectDelegate, SliderDelegate {
	static CreateParticlePopup* create(ParticleGameObject*, cocos2d::CCArray*);
	static CreateParticlePopup* create(ParticleGameObject*, cocos2d::CCArray*, gd::string);
	static CreateParticlePopup* create(gd::string);

	bool init(ParticleGameObject*, cocos2d::CCArray*, gd::string);
	~CreateParticlePopup();

	TodoReturn getPageMenu(int);
	TodoReturn getPageButton(int);
	TodoReturn getPageSliders(int);
	TodoReturn getPageContainer(int);
	TodoReturn getPageInputNodes(int);
	TodoReturn getPage(int);

	void onQuickStart(cocos2d::CCObject* sender);
	void onEmitterMode(cocos2d::CCObject* sender);
	void onMaxEmission(cocos2d::CCObject* sender);
	void onSelectColor(cocos2d::CCObject* sender);
	void onCalcEmission(cocos2d::CCObject* sender);
	void onCopySettings(cocos2d::CCObject* sender);
	void onDynamicColor(cocos2d::CCObject* sender);
	void onUniformColor(cocos2d::CCObject* sender);
	void onEndRGBVarSync(cocos2d::CCObject* sender);
	void onPasteSettings(cocos2d::CCObject* sender);
	void onDuplicateColor(cocos2d::CCObject* sender);
	void onOrderSensitive(cocos2d::CCObject* sender);
	void onToggleBlending(cocos2d::CCObject* sender);
	void onDurationForever(cocos2d::CCObject* sender);
	void onDynamicRotation(cocos2d::CCObject* sender);
	void onStartRGBVarSync(cocos2d::CCObject* sender);
	void onAnimateOnTrigger(cocos2d::CCObject* sender);
	void onAnimateActiveOnly(cocos2d::CCObject* sender);
	void onSelectParticleTexture(cocos2d::CCObject* sender);
	void onToggleStartRotationIsDir(cocos2d::CCObject* sender);
	void onToggleStartSizeEqualToEnd(cocos2d::CCObject* sender);
	void onToggleStartSpinEqualToEnd(cocos2d::CCObject* sender);
	void onToggleStartRadiusEqualToEnd(cocos2d::CCObject* sender);
	void onMode(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onPosType(cocos2d::CCObject* sender);

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn toggleGravityMode(bool);
	TodoReturn updateColorSprite(int);
	TodoReturn particleValueIsInt(gjParticleValue);
	TodoReturn centerAlignParticle(cocos2d::CCObject*);
	TodoReturn updateSliderForType(gjParticleValue);
	TodoReturn createParticleSlider(gjParticleValue, int, bool, cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn maxSliderValueForType(gjParticleValue);
	TodoReturn minSliderValueForType(gjParticleValue);
	TodoReturn titleForParticleValue(gjParticleValue);
	TodoReturn valueForParticleValue(gjParticleValue);
	TodoReturn updateParticleValueForType(float, gjParticleValue, cocos2d::CCParticleSystemQuad*);
	TodoReturn updateInputNodeStringForType(gjParticleValue);
	TodoReturn willClose();

	virtual void update(float);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void keyBackClicked();
	virtual TodoReturn sliderBegan(Slider*);
	virtual TodoReturn sliderEnded(Slider*);
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*);
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual TodoReturn textInputReturn(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
}


[[link(android)]]
class EditGameObjectPopup : SetupTriggerPopup {
	static EditGameObjectPopup* create(EffectGameObject*, cocos2d::CCArray*, bool);

	bool init(EffectGameObject*, cocos2d::CCArray*, bool);
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
class FRequestProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, FriendRequestDelegate {
	static FRequestProfilePage* create(bool) = win 0xEE230;

	bool init(bool) = win 0xEE2E0;
	~FRequestProfilePage();

	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onSentRequests(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onToggleAllObjects(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);

	TodoReturn untoggleAll();
	TodoReturn setupPageInfo(gd::string, char const*);
	TodoReturn deleteSelected();
	TodoReturn updatePageArrows();
	TodoReturn updateLevelsLabel();
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*);
	TodoReturn loadPage(int);
	/* unverified signature */
	bool isCorrect(char const*);

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn loadFRequestsFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadFRequestsFailed(char const*, GJErrorCode);
	virtual TodoReturn forceReloadRequests(bool);
}

[[link(android)]]
class GauntletSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate, LevelManagerDelegate {
	static GauntletSelectLayer* create(int);

	bool init(int);
	~GauntletSelectLayer();

	void onBack(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onNext(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onPrev(cocos2d::CCObject* sender);
	void onRefresh(cocos2d::CCObject* sender);

	TodoReturn unblockPlay();
	TodoReturn updateArrows();
	TodoReturn setupGauntlets();
	TodoReturn scene(int);
	TodoReturn goToPage(int, bool);

	virtual void onExit();
	virtual void keyBackClicked();
	virtual TodoReturn scrollLayerWillScrollToPage(BoomScrollLayer*, int);
	virtual TodoReturn scrollLayerScrolledToPage(BoomScrollLayer*, int);
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	virtual TodoReturn loadLevelsFailed(char const*, int);
}

[[link(android)]]
class GJChallengeDelegate {
	virtual TodoReturn challengeStatusFinished();
	virtual TodoReturn challengeStatusFailed();
}

[[link(android)]]
class GJSmartBlockPreview : cocos2d::CCNode {
	static GJSmartBlockPreview* create(gd::string);

	bool init(gd::string);
	~GJSmartBlockPreview();

	TodoReturn addPreview(gd::string, gd::string, LevelEditorLayer*);
	TodoReturn createInfoLabel();
	TodoReturn addTemplateGuide(SmartPrefabResult, float);
	TodoReturn addTemplateGuide(gd::string, int);
	TodoReturn toggleSelectItem(bool);
	TodoReturn addCount(int);
	TodoReturn addChance(int, int);
}

[[link(android)]]
class GJWriteMessagePopup : FLAlertLayer, TextInputDelegate, UploadMessageDelegate, UploadPopupDelegate, FLAlertLayerProtocol {
	static GJWriteMessagePopup* create(int, int);

	bool init(int, int);
	~GJWriteMessagePopup();

	void onClearBody(cocos2d::CCObject* sender);
	void onSend(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateBody(gd::string);
	TodoReturn updateText(gd::string, int);
	TodoReturn updateSubject(gd::string);
	TodoReturn closeMessagePopup(bool);
	TodoReturn updateCharCountLabel(int);

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn uploadMessageFinished(int);
	virtual TodoReturn uploadMessageFailed(int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual TodoReturn textInputReturn(CCTextInputNode*);
}

[[link(android)]]
class GraphicsReloadLayer : cocos2d::CCLayer {
	static GraphicsReloadLayer* create(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool) = win 0x2b3240;

	bool init(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool) = win 0x2b3300;
	~GraphicsReloadLayer();

	void performReload() = win 0x2b3380;
	TodoReturn scene(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool);
}

[[link(android)]]
class GravityEffectSprite : cocos2d::CCSprite {
	static GravityEffectSprite* create();

	~GravityEffectSprite();

	TodoReturn updateSpritesColor(cocos2d::_ccColor3B) = win 0x2e5f40;

	virtual bool init();
	virtual void draw();
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
	static LevelAreaInnerLayer* create(bool);

	bool init(bool);
	~LevelAreaInnerLayer();

	void onNextFloor(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onDoor(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);

	TodoReturn tryResumeTowerMusic();
	TodoReturn showFloor1CompleteDialog();
	TodoReturn scene(bool);
	TodoReturn playStep1();

	virtual void keyBackClicked();
	virtual TodoReturn dialogClosed(DialogLayer*);
}

[[link(android)]]
class LoadingCircleSprite : cocos2d::CCSprite {
	static LoadingCircleSprite* create();

	~LoadingCircleSprite();

	TodoReturn hideCircle();
	TodoReturn fadeInCircle(bool);

	virtual bool init();
}

[[link(android)]]
class MessageListDelegate {
	TodoReturn setupPageInfo(gd::string, char const*);

	virtual TodoReturn loadMessagesFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadMessagesFailed(char const*, GJErrorCode);
	virtual TodoReturn forceReloadMessages(bool);
}

[[link(android)]]
class MessagesProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, MessageListDelegate {
	static MessagesProfilePage* create(bool) = win 0x2783B0;

	bool init(bool) = win 0x278460;
	~MessagesProfilePage();

	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onSentMessages(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onToggleAllObjects(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);

	TodoReturn untoggleAll();
	TodoReturn setupPageInfo(gd::string, char const*);
	TodoReturn deleteSelected();
	TodoReturn updatePageArrows();
	TodoReturn updateLevelsLabel();
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*);
	TodoReturn loadPage(int);
	/* unverified signature */
	bool isCorrect(char const*);

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn loadMessagesFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadMessagesFailed(char const*, GJErrorCode);
	virtual TodoReturn forceReloadMessages(bool);
}

[[link(android)]]
class MultilineBitmapFont : cocos2d::CCSprite {
	TodoReturn initWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int, bool);
	~MultilineBitmapFont();

	TodoReturn readColorInfo(gd::string);
	TodoReturn createWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int, bool);
	TodoReturn stringWithMaxWidth(gd::string, float, float);
	TodoReturn moveSpecialDescriptors(int, int);

	virtual void setOpacity(unsigned char);
}

[[link(android)]]
class NewgroundsInfoLayer : FLAlertLayer, FLAlertLayerProtocol {
	static NewgroundsInfoLayer* create();

	~NewgroundsInfoLayer();

	void onSupporter(cocos2d::CCObject* sender);
	void onGuidelines(cocos2d::CCObject* sender);
	void onNewgrounds(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onArtists(cocos2d::CCObject* sender);
	void onChanges(cocos2d::CCObject* sender);

	virtual bool init();
	virtual void keyBackClicked();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class OpacityEffectAction {
	virtual void step(float);
}

[[link(android)]]
class SelectListIconLayer : FLAlertLayer {
	static SelectListIconLayer* create(int);

	bool init(int);
	~SelectListIconLayer();

	void onClose(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
}

[[link(android)]]
class SetupAdvFollowPopup : SetupTriggerPopup, SelectPremadeDelegate {
	static SetupAdvFollowPopup* create(AdvancedFollowTriggerObject*, cocos2d::CCArray*);

	bool init(AdvancedFollowTriggerObject*, cocos2d::CCArray*);
	~SetupAdvFollowPopup();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	void onMode(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onPremade(cocos2d::CCObject* sender);

	TodoReturn updateMode(int);

	virtual TodoReturn updateDefaultTriggerValues();
	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn selectPremadeClosed(SelectPremadeLayer*, int);
}

[[link(android)]]
class SetupAnimationPopup : SetupTriggerPopup {
	static SetupAnimationPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupAnimationPopup();

	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onAnimationIDArrow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateTargetID();
	TodoReturn updateAnimationID();
	TodoReturn updateTextInputLabel();
	TodoReturn updateAnimationTextInputLabel();

	virtual TodoReturn determineStartValues();
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupArtSwitchPopup : SetupTriggerPopup, SelectArtDelegate {
	static SetupArtSwitchPopup* create(ArtTriggerGameObject*, cocos2d::CCArray*, int);

	bool init(ArtTriggerGameObject*, cocos2d::CCArray*, int);
	~SetupArtSwitchPopup();

	void onArt(cocos2d::CCObject* sender);

	virtual TodoReturn selectArtClosed(SelectArtLayer*);
}

[[link(android)]]
class SetupBGSpeedTrigger : SetupTriggerPopup {
	static SetupBGSpeedTrigger* create(EffectGameObject*, cocos2d::CCArray*, int);

	bool init(EffectGameObject*, cocos2d::CCArray*, int);
	~SetupBGSpeedTrigger();
}

[[link(android)]]
class SetupEventLinkPopup : SetupTriggerPopup {
	static SetupEventLinkPopup* create(EventLinkTrigger*, cocos2d::CCArray*);

	bool init(EventLinkTrigger*, cocos2d::CCArray*);
	~SetupEventLinkPopup();

	void onSelectEvent(cocos2d::CCObject* sender);

	TodoReturn updateEventIDs(gd::set<int>&);
}

[[link(android)]]
class SetupTransformPopup : SetupTriggerPopup {
	static SetupTransformPopup* create(TransformTriggerGameObject*, cocos2d::CCArray*);

	bool init(TransformTriggerGameObject*, cocos2d::CCArray*);
	~SetupTransformPopup();
}

[[link(android)]]
class AccountRegisterLayer : FLAlertLayer, TextInputDelegate, GJAccountRegisterDelegate, FLAlertLayerProtocol {
	static AccountRegisterLayer* create();

	~AccountRegisterLayer();

	void onClose(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);

	TodoReturn resetLabel(int);
	TodoReturn validEmail(gd::string);
	TodoReturn resetLabels();
	TodoReturn updateLabel(AccountError);
	TodoReturn disableNodes();
	TodoReturn hideLoadingUI();
	TodoReturn showLoadingUI();
	TodoReturn validPassword(gd::string);
	TodoReturn createTextInput(cocos2d::CCPoint, cocos2d::CCSize, gd::string, int);
	TodoReturn createTextLabel(cocos2d::CCPoint, gd::string, cocos2d::CCSize);
	TodoReturn createTextBackground(cocos2d::CCPoint, cocos2d::CCSize);
	TodoReturn toggleUI(bool);
	TodoReturn validUser(gd::string);

	virtual bool init();
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual TodoReturn textInputReturn(CCTextInputNode*);
	virtual TodoReturn allowTextInput(CCTextInputNode*);
	virtual TodoReturn registerAccountFinished();
	virtual TodoReturn registerAccountFailed(AccountError);
}



[[link(android)]]
class CommunityCreditsPage : FLAlertLayer {
	static CommunityCreditsPage* create();

	~CommunityCreditsPage();

	void onSwitchPage(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn goToPage(int);

	virtual bool init();
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn show();
}

[[link(android)]]
class CustomizeObjectLayer : FLAlertLayer, TextInputDelegate, HSVWidgetDelegate, ColorSelectDelegate, ColorSetupDelegate {
	static CustomizeObjectLayer* create(GameObject*, cocos2d::CCArray*);

	bool init(GameObject*, cocos2d::CCArray*);
	~CustomizeObjectLayer();

	TodoReturn getActiveMode(bool);
	TodoReturn getButtonByTag(int);
	TodoReturn getHSV();

	void onLiveEdit(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onEditColor(cocos2d::CCObject* sender);
	void onBreakApart(cocos2d::CCObject* sender);
	void onSelectMode(cocos2d::CCObject* sender);
	void onSelectColor(cocos2d::CCObject* sender);
	void onNextColorChannel(cocos2d::CCObject* sender);
	void onUpdateCustomColor(cocos2d::CCObject* sender);
	void onHSV(cocos2d::CCObject* sender);
	void onCopy(cocos2d::CCObject* sender);
	void onClear(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onBrowse(cocos2d::CCObject* sender);

	TodoReturn recreateLayer();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn toggleVisible();
	TodoReturn updateSelected(int);
	TodoReturn updateHSVButtons();
	TodoReturn highlightSelected(ButtonSprite*);
	TodoReturn updateColorSprite();
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn updateChannelLabel(int);
	TodoReturn updateKerningLabel();
	TodoReturn determineStartValues();
	TodoReturn updateCurrentSelection();
	TodoReturn updateCustomColorLabels();

	virtual void keyBackClicked();
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::_ccHSVValue);
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*);
	virtual TodoReturn colorSetupClosed(int);
}

[[link(android)]]
class GJFollowCommandLayer : SetupTriggerPopup {
	static GJFollowCommandLayer* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~GJFollowCommandLayer();

	void onUpdateGroupID(cocos2d::CCObject* sender);
	void onUpdateGroupID2(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateXMod();
	TodoReturn updateYMod();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateXModLabel();
	TodoReturn updateYModLabel();
	TodoReturn sliderXModChanged(cocos2d::CCObject*);
	TodoReturn sliderYModChanged(cocos2d::CCObject*);
	TodoReturn updateTargetGroupID();
	TodoReturn updateTargetGroupID2();
	TodoReturn updateTextInputLabel();
	TodoReturn updateTextInputLabel2();

	virtual TodoReturn determineStartValues();
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class GJMultiplayerManager : cocos2d::CCNode {
	~GJMultiplayerManager();

	TodoReturn getDLObject(char const*);
	TodoReturn getBasePostString();
	TodoReturn getLastCommentIDForGame(int);

	TodoReturn onExitLobbyCompleted(gd::string, gd::string);
	TodoReturn onJoinLobbyCompleted(gd::string, gd::string);
	TodoReturn onUploadCommentCompleted(gd::string, gd::string);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);

	TodoReturn addComment(gd::string, int);
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	/* unverified signature */
	bool isDLActive(char const*);
	TodoReturn sharedState();
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn addDLToActive(char const*);
	TodoReturn addDLToActive(char const*, cocos2d::CCObject*);
	TodoReturn uploadComment(gd::string, int);
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn createAndAddComment(gd::string, int);
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType);
	TodoReturn exitLobby(int);
	TodoReturn joinLobby(int);

	virtual bool init();
}

[[link(android)]]
class GJRotateCommandLayer : SetupTriggerPopup {
	static GJRotateCommandLayer* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~GJRotateCommandLayer();

	void onEasingRate(cocos2d::CCObject* sender);
	void onLockRotation(cocos2d::CCObject* sender);
	void onUpdateGroupID(cocos2d::CCObject* sender);
	void onFollowRotation(cocos2d::CCObject* sender);
	void onUpdateGroupID2(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onEasing(cocos2d::CCObject* sender);

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateTimesLabel();
	TodoReturn updateEasingLabel();
	TodoReturn sliderTimesChanged(cocos2d::CCObject*);
	TodoReturn updateCommandTimes();
	TodoReturn updateDegreesLabel();
	TodoReturn updateTargetGroupID();
	TodoReturn sliderDegreesChanged(cocos2d::CCObject*);
	TodoReturn updateCommandDegrees();
	TodoReturn updateTargetGroupID2();
	TodoReturn updateTextInputLabel();
	TodoReturn updateEasingRateLabel();
	TodoReturn updateTextInputLabel2();
	TodoReturn updateMoveCommandEasing();
	TodoReturn toggleEasingRateVisibility();
	TodoReturn updateMoveCommandEasingRate();

	virtual TodoReturn determineStartValues();
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float);
}


[[link(android)]]
class MusicBrowserDelegate {
	virtual TodoReturn musicBrowserClosed(MusicBrowser*);
}

[[link(android)]]
class MusicDelegateHandler : cocos2d::CCNode {
	static MusicDelegateHandler* create(MusicDownloadDelegate*);

	bool init(MusicDownloadDelegate*);
	~MusicDelegateHandler();
}

[[link(android)]]
class MusicDownloadManager : cocos2d::CCNode, PlatformDownloadDelegate {
	~MusicDownloadManager();

	TodoReturn getAllSongs();
	TodoReturn getDLObject(char const*);
	TodoReturn getSongInfo(int, bool);
	TodoReturn getSFXObject(int);
	TodoReturn getMusicObject(int);
	TodoReturn getSongInfoKey(int);
	TodoReturn getAllMusicTags(OptionsObjectDelegate*);
	TodoReturn getSongPriority();
	TodoReturn getAllSFXObjects(bool);
	TodoReturn getSFXDownloadKey(int);
	TodoReturn getSongInfoObject(int);
	TodoReturn getAllMusicArtists(OptionsObjectDelegate*);
	TodoReturn getAllMusicObjects();
	TodoReturn getDownloadedSongs();
	TodoReturn getSongDownloadKey(int);
	TodoReturn getCustomContentURL();
	TodoReturn getDownloadProgress(int);
	TodoReturn getMusicArtistForID(int);
	TodoReturn getSFXFolderPathForID(int, bool);
	TodoReturn getSFXDownloadProgress(int);
	TodoReturn getSFXFolderObjectForID(int);

	TodoReturn onDownloadSFXCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onGetSongInfoCompleted(gd::string, gd::string);
	TodoReturn onDownloadSongCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onDownloadSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onGetCustomContentURLCompleted(gd::string, gd::string);
	TodoReturn onTryUpdateSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onDownloadMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onTryUpdateMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);

	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn deleteSong(int);
	TodoReturn firstSetup();
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	/* unverified signature */
	bool isDLActive(char const*);
	TodoReturn pathForSFX(int) = win 0x27f630;
	TodoReturn downloadSFX(int);
	TodoReturn pathForSong(int) = win 0x27f2c0;
	static MusicDownloadManager* sharedState() = win 0x27d490;
	TodoReturn downloadSong(int);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn nameForTagID(int);
	TodoReturn stopDownload(int);
	TodoReturn addDLToActive(char const*);
	TodoReturn addDLToActive(char const*, cocos2d::CCObject*);
	/* unverified signature */
	bool isResourceSFX(int);
	/* unverified signature */
	bool isResourceSong(int);
	TodoReturn responseToDict(gd::string, char const*);
	TodoReturn createSongsInfo(gd::string);
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	/* unverified signature */
	bool isSFXDownloaded(int);
	TodoReturn parseSFXLibrary();
	TodoReturn clearUnusedSongs();
	TodoReturn filterMusicByTag(int, cocos2d::CCArray*);
	/* unverified signature */
	bool isSongDownloaded(int) = win 0x27f020;
	TodoReturn pathForSFXFolder(int) = win 0x27f490;
	TodoReturn songStateChanged() = win 0x27dd40;
	TodoReturn storeMusicObject(SongInfoObject*);
	TodoReturn tryLoadLibraries();
	TodoReturn downloadSFXFailed(int, GJSongError);
	TodoReturn musicActionFailed(GJMusicAction);
	TodoReturn parseMusicLibrary();
	TodoReturn pathForSongFolder(int) = win 0x27f120;
	TodoReturn downloadCustomSong(int);
	TodoReturn downloadSFXLibrary();
	TodoReturn downloadSongFailed(int, GJSongError);
	/* unverified signature */
	bool isSFXLibraryLoaded();
	TodoReturn loadSongInfoFailed(int, GJSongError);
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn storeSFXInfoObject(SFXInfoObject*);
	TodoReturn downloadSFXFinished(int);
	TodoReturn musicActionFinished(GJMusicAction);
	TodoReturn tryUpdateSFXLibrary();
	TodoReturn downloadMusicLibrary();
	TodoReturn downloadSongFinished(int);
	/* unverified signature */
	bool isMusicLibraryLoaded();
	TodoReturn limitDownloadedSongs();
	TodoReturn loadSongInfoFinished(SongInfoObject*);
	TodoReturn filterMusicByArtistID(int, cocos2d::CCArray*);
	TodoReturn ProcessHttpGetRequest(gd::string, gd::string, cocos2d::extension::SEL_HttpResponse, int, int);
	TodoReturn tryUpdateMusicLibrary();
	TodoReturn addSongObjectFromString(gd::string);
	TodoReturn addMusicDownloadDelegate(MusicDownloadDelegate*);
	TodoReturn generateCustomContentURL(gd::string);
	TodoReturn incrementPriorityForSong(int);
	/* unverified signature */
	bool isRunningActionForSongID(int);
	TodoReturn generateResourceAssetList();
	TodoReturn removeMusicDownloadDelegate(MusicDownloadDelegate*);
	TodoReturn showTOS(FLAlertLayerProtocol*);
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType);
	TodoReturn clearSong(int);
	TodoReturn deleteSFX(int);

	virtual bool init();
}

[[link(android)]]
class ParentalOptionsLayer : FLAlertLayer {
	static ParentalOptionsLayer* create();

	~ParentalOptionsLayer();

	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);

	TodoReturn countForPage(int);
	TodoReturn layerForPage(int);
	TodoReturn nextPosition(int);
	TodoReturn objectsForPage(int);
	TodoReturn incrementCountForPage(int);
	TodoReturn infoKey(int);
	TodoReturn pageKey(int);
	TodoReturn goToPage(int);
	TodoReturn layerKey(int);
	TodoReturn addToggle(char const*, char const*, char const*);
	TodoReturn objectKey(int);

	virtual bool init();
	virtual void keyBackClicked();
}

[[link(android)]]
class ParticlePreviewLayer : cocos2d::CCLayerColor {
	static ParticlePreviewLayer* create(cocos2d::CCParticleSystemQuad*);

	bool init(cocos2d::CCParticleSystemQuad*);
	~ParticlePreviewLayer();

	TodoReturn preVisitWithClippingRect(cocos2d::CCRect);
	TodoReturn postVisit();

	virtual void draw();
	virtual void visit();
}


[[link(android)]]
class SetupCameraEdgePopup : SetupTriggerPopup {
	static SetupCameraEdgePopup* create(CameraTriggerGameObject*, cocos2d::CCArray*);

	bool init(CameraTriggerGameObject*, cocos2d::CCArray*);
	~SetupCameraEdgePopup();

	void onCameraEdge(cocos2d::CCObject* sender);
	void onUnlockEdge(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateTargetID();
	TodoReturn updateTextInputLabel();

	virtual TodoReturn determineStartValues();
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupCameraModePopup : SetupTriggerPopup {
	static SetupCameraModePopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupCameraModePopup();

	void onUnboundMode(cocos2d::CCObject* sender);
	void onEditCameraSettings(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateCameraEasing();
	TodoReturn updateCameraPadding();
	TodoReturn updateItemVisibility();
	TodoReturn updateCameraEasingLabel();
	TodoReturn updateCameraPaddingLabel();

	virtual TodoReturn determineStartValues();
}

[[link(android)]]
class SetupCheckpointPopup : SetupTriggerPopup {
	static SetupCheckpointPopup* create(CheckpointGameObject*, cocos2d::CCArray*);

	bool init(CheckpointGameObject*, cocos2d::CCArray*);
	~SetupCheckpointPopup();
}

[[link(android)]]
class SetupForceBlockPopup : SetupTriggerPopup {
	static SetupForceBlockPopup* create(ForceBlockGameObject*, cocos2d::CCArray*);

	bool init(ForceBlockGameObject*, cocos2d::CCArray*);
	~SetupForceBlockPopup();

	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupGravityModPopup : FLAlertLayer, TextInputDelegate {
	static SetupGravityModPopup* create(EffectGameObject*, cocos2d::CCArray*, bool);

	bool init(EffectGameObject*, cocos2d::CCArray*, bool);
	~SetupGravityModPopup();

	void onItemIDArrow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateValue();
	TodoReturn updateItemID();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateValueLabel();
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();

	virtual void keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupSmartBlockLayer : FLAlertLayer, TextInputDelegate, SelectArtDelegate {
	static SetupSmartBlockLayer* create(SmartGameObject*, cocos2d::CCArray*);

	bool init(SmartGameObject*, cocos2d::CCArray*);
	~SetupSmartBlockLayer();

	void onCreateAll(cocos2d::CCObject* sender);
	void onDontDelete(cocos2d::CCObject* sender);
	void onAllowFlipping(cocos2d::CCObject* sender);
	void onAllowRotation(cocos2d::CCObject* sender);
	void onIgnoreCorners(cocos2d::CCObject* sender);
	void onPasteTemplate(cocos2d::CCObject* sender);
	void onReferenceOnly(cocos2d::CCObject* sender);
	void onSelectPremade(cocos2d::CCObject* sender);
	void onCreateTemplate(cocos2d::CCObject* sender);
	void onSelectTemplate(cocos2d::CCObject* sender);
	void onNearbyReference(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onCreate(cocos2d::CCObject* sender);

	TodoReturn determineStartValues();

	virtual void keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn selectArtClosed(SelectArtLayer*);
}

[[link(android)]]
class SongPlaybackDelegate {
	virtual TodoReturn onPlayback(SongInfoObject*);
}

[[link(android)]]
class CreateGuidelinesLayer : FLAlertLayer, FLAlertLayerProtocol {
	static CreateGuidelinesLayer* create(CustomSongDelegate*, AudioGuidelinesType);

	bool init(CustomSongDelegate*, AudioGuidelinesType);
	~CreateGuidelinesLayer();

	TodoReturn getMergedRecordString(gd::string, gd::string);

	void onClearGuidelines(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onStop(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onRecord(cocos2d::CCObject* sender);

	TodoReturn toggleItems(bool);
	TodoReturn doClearGuidelines();

	virtual void update(float);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void keyUp(cocos2d::enumKeyCodes);
	virtual TodoReturn playMusic();
	virtual TodoReturn registerTouch();
	virtual TodoReturn recordingDidStop();
}

[[link(android)]]
class FriendRequestDelegate {
	TodoReturn setupPageInfo(gd::string, char const*);

	virtual TodoReturn loadFRequestsFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadFRequestsFailed(char const*, GJErrorCode);
	virtual TodoReturn forceReloadRequests(bool);
}

[[link(android)]]
class GameObjectEditorState {
	TodoReturn loadValues(GameObject*);
}

[[link(android)]]
class GJAccountSyncDelegate {
	virtual TodoReturn syncAccountFinished();
	virtual TodoReturn syncAccountFailed(BackupAccountError, int);
}

[[link(android)]]
class GJLocalLevelScoreCell : TableViewCell {
	~GJLocalLevelScoreCell();

	void loadFromScore(GJLocalScore*) = win 0x87120;
	void updateBGColor(int) = win 0x873B0;
	GJLocalLevelScoreCell(char const*, float, float);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class GJPFollowCommandLayer : SetupTriggerPopup {
	static GJPFollowCommandLayer* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~GJPFollowCommandLayer();

	void onUpdateGroupID(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateXMod();
	TodoReturn updateYMod();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateMaxSpeed();
	TodoReturn updateXModLabel();
	TodoReturn updateYModLabel();
	TodoReturn sliderXModChanged(cocos2d::CCObject*);
	TodoReturn sliderYModChanged(cocos2d::CCObject*);
	TodoReturn updateOffsetLabel();
	TodoReturn updatePlayerOffset();
	TodoReturn updateMaxSpeedLabel();
	TodoReturn updateTargetGroupID();
	TodoReturn updateTextInputLabel();

	virtual TodoReturn determineStartValues();
	virtual TodoReturn textChanged(CCTextInputNode*);
}


[[link(android)]]
class MoreVideoOptionsLayer : FLAlertLayer, TextInputDelegate {
	static MoreVideoOptionsLayer* create();

	~MoreVideoOptionsLayer();

	void onApplyFPS(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);

	TodoReturn countForPage(int);
	TodoReturn layerForPage(int);
	TodoReturn nextPosition(int);
	TodoReturn objectsForPage(int);
	void updateFPSButtons() = win 0x2b2130;
	TodoReturn incrementCountForPage(int);
	TodoReturn infoKey(int);
	TodoReturn pageKey(int);
	TodoReturn goToPage(int);
	TodoReturn layerKey(int);
	TodoReturn addToggle(char const*, char const*, char const*);
	TodoReturn objectKey(int);

	virtual bool init() = win 0x2b0540;
	virtual void keyBackClicked();
}

[[link(android)]]
class ObjectDecoderDelegate {
	virtual TodoReturn getDecodedObject(int, DS_Dictionary*);
}

[[link(android)]]
class OptionsObjectDelegate {
	virtual TodoReturn stateChanged(OptionsObject*);
}

[[link(android)]]
class PlayerFireBoostSprite : cocos2d::CCSprite {
	static PlayerFireBoostSprite* create();

	~PlayerFireBoostSprite();

	TodoReturn animateFireIn();
	TodoReturn animateFireOut();
	TodoReturn loopFireAnimation();

	virtual bool init();
}

[[link(android)]]
class RewardedVideoDelegate {
	virtual TodoReturn rewardedVideoFinished();
	virtual TodoReturn shouldOffsetRewardCurrency();
}

[[link(android)]]
class SelectPremadeDelegate {
	virtual TodoReturn selectPremadeClosed(SelectPremadeLayer*, int);
}


[[link(android)]]
class SelectSFXSortDelegate {
	virtual TodoReturn sortSelectClosed(SelectSFXSortLayer*);
}

[[link(android)]]
class SetupAreaTriggerPopup : SetupAreaMoveTriggerPopup {
	static SetupAreaTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
	~SetupAreaTriggerPopup();
}

[[link(android)]]
class SetupCameraGuidePopup : SetupTriggerPopup {
	static SetupCameraGuidePopup* create(CameraTriggerGameObject*, cocos2d::CCArray*);

	bool init(CameraTriggerGameObject*, cocos2d::CCArray*);
	~SetupCameraGuidePopup();
}

[[link(android)]]
class SetupEnterEffectPopup : SetupTriggerPopup, HSVWidgetDelegate {
	static SetupEnterEffectPopup* create(EnterEffectObject*, cocos2d::CCArray*, int);

	bool init(EnterEffectObject*, cocos2d::CCArray*, int);
	~SetupEnterEffectPopup();

	void onEnterType(cocos2d::CCObject* sender);
	void onNextFreeEnterChannel(cocos2d::CCObject* sender);
	void onNextFreeEnterEffectID(cocos2d::CCObject* sender);
	void onHSV(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateHSVButton();

	virtual TodoReturn determineStartValues();
	virtual TodoReturn updateInputValue(int, float&);
	virtual TodoReturn updateInputNode(int, float);
	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn triggerValueFromSliderValue(int, float);
	virtual TodoReturn triggerSliderValueFromValue(int, float);
	virtual TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::_ccHSVValue);
}

[[link(android)]]
class SetupMoveCommandPopup : SetupTriggerPopup {
	static SetupMoveCommandPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupMoveCommandPopup();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);

	TodoReturn updateControlVisibility();

	virtual TodoReturn updateInputValue(int, float&);
	virtual TodoReturn updateInputNode(int, float);
	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn triggerValueFromSliderValue(int, float);
	virtual TodoReturn triggerSliderValueFromValue(int, float);
}

[[link(android)]]
class SetupRandTriggerPopup : SetupTriggerPopup {
	static SetupRandTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupRandTriggerPopup();

	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onTargetID2Arrow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateChance();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateTargetID();
	TodoReturn updateTargetID2();
	TodoReturn updateChanceLabel(bool);
	TodoReturn updateTextInputLabel();
	TodoReturn updateTextInputLabel2();

	virtual TodoReturn determineStartValues();
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupSongTriggerPopup : SetupAudioTriggerPopup, MusicDownloadDelegate, SongPlaybackDelegate {
	static SetupSongTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupSongTriggerPopup();

	void onResetSongTime(cocos2d::CCObject* sender);
	void onSavePlaybackPos(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateLength();
	TodoReturn updateApplyPrepare(bool);
	TodoReturn updateSongTimeSlider();

	virtual TodoReturn pageChanged();
	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn onPlayback(SongInfoObject*) = win 0x356930;
}

[[link(android)]]
class SetupStopTriggerPopup : SetupTriggerPopup {
	static SetupStopTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupStopTriggerPopup();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupTouchTogglePopup : SetupTriggerPopup {
	static SetupTouchTogglePopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupTouchTogglePopup();

	void onHoldMode(cocos2d::CCObject* sender);
	void onTouchMode(cocos2d::CCObject* sender);
	void onControlMode(cocos2d::CCObject* sender);
	void onDualTouchMode(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateTargetID();
	TodoReturn updateTextInputLabel();

	virtual TodoReturn determineStartValues();
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupZoomTriggerPopup : SetupTriggerPopup {
	static SetupZoomTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupZoomTriggerPopup();

	void onClose(cocos2d::CCObject* sender);

	virtual TodoReturn determineStartValues();
}

[[link(android)]]
class UIObjectSettingsPopup : SetupTriggerPopup {
	static UIObjectSettingsPopup* create(UISettingsGameObject*, cocos2d::CCArray*);

	bool init(UISettingsGameObject*, cocos2d::CCArray*);
	~UIObjectSettingsPopup();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class UploadMessageDelegate {
	virtual TodoReturn uploadMessageFinished(int);
	virtual TodoReturn uploadMessageFailed(int);
}



[[link(android)]]
class DemonFilterSelectLayer : FLAlertLayer {
	static DemonFilterSelectLayer* create();

	~DemonFilterSelectLayer();

	void onClose(cocos2d::CCObject* sender);

	TodoReturn selectRating(cocos2d::CCObject*);

	virtual bool init();
	virtual void keyBackClicked();
}

[[link(android)]]
class GJAccountLoginDelegate {
	virtual TodoReturn loginAccountFinished(int, int);
	virtual TodoReturn loginAccountFailed(AccountError);
}

[[link(android)]]
class GJAccountSettingsLayer : FLAlertLayer, TextInputDelegate {
	static GJAccountSettingsLayer* create(int) = win 0x2039D0;

	bool init(int) = win 0x203A70;
	~GJAccountSettingsLayer();

	void onCommentSetting(cocos2d::CCObject* sender);
	void onFriendRequests(cocos2d::CCObject* sender);
	void onMessageSetting(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);

	TodoReturn updateScoreValues();
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float);

	virtual void keyBackClicked();
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual TodoReturn textInputReturn(CCTextInputNode*);
}



[[link(android)]]
class SelectListIconDelegate {
	virtual TodoReturn iconSelectClosed(SelectListIconLayer*);
}

[[link(android)]]
class SetupAnimSettingsPopup : SetupTriggerPopup {
	static SetupAnimSettingsPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupAnimSettingsPopup();

	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateAnimSettings();
}

[[link(android)]]
class SetupAudioTriggerPopup : SetupTriggerPopup {
	~SetupAudioTriggerPopup();

	void onProxMode(cocos2d::CCObject* sender);

	TodoReturn addTimeControls(int, float);
	TodoReturn addProxVolControls(int);
	TodoReturn updateSpecialGroup();

	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupCameraRotatePopup : SetupTriggerPopup {
	static SetupCameraRotatePopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupCameraRotatePopup();

	void onEasingRate(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onEasing(cocos2d::CCObject* sender);

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateEasingLabel();
	TodoReturn updateDegreesLabel();
	TodoReturn sliderDegreesChanged(cocos2d::CCObject*);
	TodoReturn updateCommandDegrees();
	TodoReturn updateEasingRateLabel();
	TodoReturn updateMoveCommandEasing();
	TodoReturn toggleEasingRateVisibility();
	TodoReturn updateMoveCommandEasingRate();

	virtual TodoReturn determineStartValues();
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float);
}

[[link(android)]]
class SetupCountTriggerPopup : SetupTriggerPopup {
	static SetupCountTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupCountTriggerPopup();

	void onEnableGroup(cocos2d::CCObject* sender);
	void onItemIDArrow(cocos2d::CCObject* sender);
	void onMultiActivate(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onTargetCountArrow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateItemID();
	TodoReturn updateTargetID();
	TodoReturn updateTargetCount();
	TodoReturn updateItemIDInputLabel();
	TodoReturn updateTargetIDInputLabel();
	TodoReturn updateCountTextInputLabel();

	virtual TodoReturn determineStartValues();
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupEnterTriggerPopup : SetupTriggerPopup {
	static SetupEnterTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
	~SetupEnterTriggerPopup();

	void onEnterType(cocos2d::CCObject* sender);

	virtual TodoReturn determineStartValues();
}

[[link(android)]]
class SetupInstantCountPopup : SetupTriggerPopup {
	static SetupInstantCountPopup* create(CountTriggerGameObject*, cocos2d::CCArray*);

	bool init(CountTriggerGameObject*, cocos2d::CCArray*);
	~SetupInstantCountPopup();

	void onCountType(cocos2d::CCObject* sender);
	void onEnableGroup(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onTargetID2Arrow(cocos2d::CCObject* sender);
	void onTargetCountArrow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateItemID();
	TodoReturn updateTargetID();
	TodoReturn updateTargetCount();
	TodoReturn updateItemIDInputLabel();
	TodoReturn updateTargetIDInputLabel();
	TodoReturn updateCountTextInputLabel();

	virtual TodoReturn determineStartValues();
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupKeyframeAnimPopup : SetupTriggerPopup {
	static SetupKeyframeAnimPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupKeyframeAnimPopup();
}

[[link(android)]]
class SetupObjectTogglePopup : SetupTriggerPopup {
	static SetupObjectTogglePopup* create(EffectGameObject*, cocos2d::CCArray*, bool);

	bool init(EffectGameObject*, cocos2d::CCArray*, bool);
	~SetupObjectTogglePopup();

	void onClose(cocos2d::CCObject* sender);

	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupResetTriggerPopup : SetupTriggerPopup {
	static SetupResetTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupResetTriggerPopup();
}

[[link(android)]]
class SetupShaderEffectPopup : SetupTriggerPopup {
	static SetupShaderEffectPopup* create(EffectGameObject*, cocos2d::CCArray*, int);

	bool init(EffectGameObject*, cocos2d::CCArray*, int);
	~SetupShaderEffectPopup();

	void onResetColors(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onZLayer(cocos2d::CCObject* sender);

	TodoReturn setupBulge();
	TodoReturn setupPinch();
	TodoReturn setupSepia();
	TodoReturn setupGlitch();
	TodoReturn setupHueShift();
	TodoReturn setupPixelate();
	TodoReturn setupChromatic();
	TodoReturn setupGrayscale();
	TodoReturn setupShockLine();
	TodoReturn setupShockWave();
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

	virtual TodoReturn toggleGroup(int, bool);
	virtual TodoReturn updateDefaultTriggerValues();
	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupStaticCameraPopup : SetupTriggerPopup {
	static SetupStaticCameraPopup* create(CameraTriggerGameObject*, cocos2d::CCArray*);

	bool init(CameraTriggerGameObject*, cocos2d::CCArray*);
	~SetupStaticCameraPopup();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);

	TodoReturn updateState();

	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupTimerTriggerPopup : SetupTriggerPopup {
	static SetupTimerTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);

	bool init(TimerTriggerGameObject*, cocos2d::CCArray*);
	~SetupTimerTriggerPopup();
}

[[link(android)]]
class SpriteAnimationManager : cocos2d::CCNode {
	TodoReturn initWithOwner(CCAnimatedSprite*, gd::string);
	~SpriteAnimationManager();

	TodoReturn getAnimType(gd::string);
	TodoReturn getPrio(gd::string);

	TodoReturn overridePrio() = win 0x4f540;
	TodoReturn runAnimation(gd::string);
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
	TodoReturn doCleanup();
	TodoReturn playSound(gd::string);
}


[[link(android)]]
class DownloadMessageDelegate {
	virtual TodoReturn downloadMessageFinished(GJUserMessage*);
	virtual TodoReturn downloadMessageFailed(int);
}

[[link(android)]]
class GJAccountBackupDelegate {
	virtual TodoReturn backupAccountFinished();
	virtual TodoReturn backupAccountFailed(BackupAccountError, int);
}

[[link(android)]]
class SetupCameraRotatePopup2 : SetupTriggerPopup {
	static SetupCameraRotatePopup2* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupCameraRotatePopup2();
}

[[link(android)]]
class SetupObjectControlPopup : SetupTriggerPopup {
	static SetupObjectControlPopup* create(ObjectControlGameObject*, cocos2d::CCArray*);

	bool init(ObjectControlGameObject*, cocos2d::CCArray*);
	~SetupObjectControlPopup();
}

[[link(android)]]
class SetupObjectOptionsPopup : FLAlertLayer, TextInputDelegate {
	static SetupObjectOptionsPopup* create(GameObject*, cocos2d::CCArray*, SetGroupIDLayer*);

	bool init(GameObject*, cocos2d::CCArray*, SetGroupIDLayer*);
	~SetupObjectOptionsPopup();

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
	void onCenterEffect(cocos2d::CCObject* sender);
	void onNoAudioScale(cocos2d::CCObject* sender);
	void onDisableObject(cocos2d::CCObject* sender);
	void onApplyScaleStick(cocos2d::CCObject* sender);
	void onToggleAreaParent(cocos2d::CCObject* sender);
	void onExtendedCollision(cocos2d::CCObject* sender);
	void onSinglePlayerTouch(cocos2d::CCObject* sender);
	void onToggleGroupParent(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onReverse(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn determineStartValues();
}

[[link(android)]]
class SetupPickupTriggerPopup : SetupTriggerPopup {
	static SetupPickupTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupPickupTriggerPopup();

	void onPlusButton(cocos2d::CCObject* sender);
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);

	TodoReturn updateState();
}

[[link(android)]]
class SetupPlatformerEndPopup : SetupTriggerPopup {
	static SetupPlatformerEndPopup* create(EndTriggerGameObject*, cocos2d::CCArray*);

	bool init(EndTriggerGameObject*, cocos2d::CCArray*);
	~SetupPlatformerEndPopup();
}

[[link(android)]]
class SetupPlayerControlPopup : SetupTriggerPopup {
	static SetupPlayerControlPopup* create(PlayerControlGameObject*, cocos2d::CCArray*);

	bool init(PlayerControlGameObject*, cocos2d::CCArray*);
	~SetupPlayerControlPopup();
}

[[link(android)]]
class SetupRotateCommandPopup : SetupTriggerPopup {
	static SetupRotateCommandPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupRotateCommandPopup();

	void onInfiniteDuration(cocos2d::CCObject* sender);
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);

	TodoReturn updateControlVisibility();

	virtual TodoReturn updateInputNode(int, float);
	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn triggerValueFromSliderValue(int, float);
	virtual TodoReturn triggerSliderValueFromValue(int, float);
}

[[link(android)]]
class SetupSmartTemplateLayer : FLAlertLayer, TextInputDelegate, FLAlertLayerProtocol {
	static SetupSmartTemplateLayer* create(GJSmartTemplate*);

	bool init(GJSmartTemplate*);
	~SetupSmartTemplateLayer();

	void onBack(cocos2d::CCObject* sender);
	void onClick(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupSpawnParticlePopup : SetupTriggerPopup {
	static SetupSpawnParticlePopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupSpawnParticlePopup();
}

[[link(android)]]
class ShareLevelSettingsLayer : FLAlertLayer, NumberInputDelegate {
	static ShareLevelSettingsLayer* create(GJGameLevel*);

	bool init(GJGameLevel*);
	~ShareLevelSettingsLayer();

	void onCopyable(cocos2d::CCObject* sender);
	void onPassword(cocos2d::CCObject* sender);
	void onUnlisted(cocos2d::CCObject* sender);
	void onEditPassword(cocos2d::CCObject* sender);
	void onUnlistedFriendsOnly(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateSettingsState();

	virtual void keyBackClicked();
	virtual TodoReturn numberInputClosed(NumberInputLayer*);
}

[[link(android)]]
class BrowseSmartTemplateLayer : FLAlertLayer {
	static BrowseSmartTemplateLayer* create(GJSmartTemplate*, SmartBrowseFilter);

	bool init(GJSmartTemplate*, SmartBrowseFilter);
	~BrowseSmartTemplateLayer();

	void onTemplateObject(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onClick(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn createDots();
	TodoReturn updateDots();
	TodoReturn createPrefab(gd::string, int);
	TodoReturn addObjectToPage(cocos2d::CCObject*, int);
	TodoReturn addPrefabMenuItem(SmartPrefabResult, int);
	TodoReturn goToPage(int);
	TodoReturn baseSetup();

	virtual void keyBackClicked();
}

[[link(android)]]
class PlatformDownloadDelegate {
	virtual TodoReturn downloadFinished(char const*);
	virtual TodoReturn downloadFailed(char const*);
}

[[link(android)]]
class SetupAudioLineGuidePopup : SetupTriggerPopup, SelectSettingDelegate {
	static SetupAudioLineGuidePopup* create(AudioLineGuideGameObject*, cocos2d::CCArray*);

	bool init(AudioLineGuideGameObject*, cocos2d::CCArray*);
	~SetupAudioLineGuidePopup();

	void onSpeed(cocos2d::CCObject* sender);

	virtual TodoReturn selectSettingClosed(SelectSettingLayer*);
}

[[link(android)]]
class SetupCameraOffsetTrigger : SetupTriggerPopup {
	static SetupCameraOffsetTrigger* create(CameraTriggerGameObject*, cocos2d::CCArray*);

	bool init(CameraTriggerGameObject*, cocos2d::CCArray*);
	~SetupCameraOffsetTrigger();

	void onEasingRate(cocos2d::CCObject* sender);
	void onTargetMode(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onEasing(cocos2d::CCObject* sender);

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn sliderXChanged(cocos2d::CCObject*);
	TodoReturn sliderYChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateEasingLabel();
	TodoReturn updateValueXLabel();
	TodoReturn updateValueYLabel();
	TodoReturn posFromSliderValue(float);
	TodoReturn sliderValueFromPos(int);
	TodoReturn updateEasingRateLabel();
	TodoReturn updateMoveCommandPosX();
	TodoReturn updateMoveCommandPosY();
	TodoReturn updateMoveCommandEasing();
	TodoReturn toggleEasingRateVisibility();
	TodoReturn updateMoveCommandEasingRate();

	virtual TodoReturn determineStartValues();
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float);
}

[[link(android)]]
class SetupGameplayOffsetPopup : SetupTriggerPopup {
	static SetupGameplayOffsetPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupGameplayOffsetPopup();

	void onDefaultValues(cocos2d::CCObject* sender);
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);

	virtual TodoReturn updateInputValue(int, float&);
	virtual TodoReturn updateInputNode(int, float);
	virtual TodoReturn triggerValueFromSliderValue(int, float);
	virtual TodoReturn triggerSliderValueFromValue(int, float);
}

[[link(android)]]
class SetupGravityTriggerPopup : SetupTriggerPopup {
	static SetupGravityTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupGravityTriggerPopup();

	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupInteractObjectPopup : SetupTriggerPopup {
	static SetupInteractObjectPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupInteractObjectPopup();

	void onPlusButton(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateItems();

	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupObjectOptions2Popup : SetupTriggerPopup {
	static SetupObjectOptions2Popup* create(GameObject*, cocos2d::CCArray*);

	bool init(GameObject*, cocos2d::CCArray*);
	~SetupObjectOptions2Popup();

	void onPlusButton(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupOptionsTriggerPopup : SetupTriggerPopup {
	static SetupOptionsTriggerPopup* create(GameOptionsTrigger*, cocos2d::CCArray*);

	bool init(GameOptionsTrigger*, cocos2d::CCArray*);
	~SetupOptionsTriggerPopup();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);

	TodoReturn addOption(int, gd::string);
}

[[link(android)]]
class SetupRandAdvTriggerPopup : SetupTriggerPopup {
	static SetupRandAdvTriggerPopup* create(RandTriggerGameObject*, cocos2d::CCArray*);

	bool init(RandTriggerGameObject*, cocos2d::CCArray*);
	~SetupRandAdvTriggerPopup();

	void onAddChance(cocos2d::CCObject* sender);
	void onRemoveFromGroup(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn removeGroupID(int);
	TodoReturn addChanceToObject(RandTriggerGameObject*, int, int);
	TodoReturn callRemoveFromGroup(float);
	TodoReturn updateGroupIDButtons();
	TodoReturn removeGroupIDFromObject(RandTriggerGameObject*, int);
	TodoReturn addChance(int, int);

	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupRotateGameplayPopup : SetupTriggerPopup {
	static SetupRotateGameplayPopup* create(RotateGameplayGameObject*, cocos2d::CCArray*);

	bool init(RotateGameplayGameObject*, cocos2d::CCArray*);
	~SetupRotateGameplayPopup();

	void onPlusButton(cocos2d::CCObject* sender);

	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class GJAccountRegisterDelegate {
	virtual TodoReturn registerAccountFinished();
	virtual TodoReturn registerAccountFailed(AccountError);
}

[[link(android)]]
class GJAccountSettingsDelegate {
	virtual TodoReturn updateSettingsFinished();
	virtual TodoReturn updateSettingsFailed();
}



[[link(android)]]
class GJSmartBlockPreviewSprite : cocos2d::CCNode {
	static GJSmartBlockPreviewSprite* create();

	~GJSmartBlockPreviewSprite();

	virtual bool init();
	virtual void visit();
}

[[link(android)]]
class SetupAreaAnimTriggerPopup : SetupAreaTintTriggerPopup {
	static SetupAreaAnimTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*, int);

	bool init(EnterEffectObject*, cocos2d::CCArray*, int);
	~SetupAreaAnimTriggerPopup();

	void onDeactivateAnimValue(cocos2d::CCObject* sender);

	TodoReturn updateTargetIDLabel();
	TodoReturn createValueControlAdvancedAnim(int, gd::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float, float, int, int, GJInputStyle);

	virtual TodoReturn updateDefaultTriggerValues();
	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupAreaFadeTriggerPopup : SetupAreaMoveTriggerPopup {
	static SetupAreaFadeTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
	~SetupAreaFadeTriggerPopup();
}

[[link(android)]]
class SetupAreaMoveTriggerPopup : SetupTriggerPopup {
	static SetupAreaMoveTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
	~SetupAreaMoveTriggerPopup();

	TodoReturn getModeValues(int, int&, bool&, bool&);

	void onSpecialTarget(cocos2d::CCObject* sender);
	void onNextFreeEffectID(cocos2d::CCObject* sender);
	void onMode(cocos2d::CCObject* sender);

	TodoReturn addAreaDefaultControls(int);
	TodoReturn updateEnterTargetIDState();

	virtual TodoReturn updateInputValue(int, float&);
	virtual TodoReturn updateDefaultTriggerValues();
	virtual TodoReturn updateInputNode(int, float);
	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn triggerValueFromSliderValue(int, float);
	virtual TodoReturn triggerSliderValueFromValue(int, float);
}

[[link(android)]]
class SetupAreaTintTriggerPopup : SetupAreaMoveTriggerPopup, HSVWidgetDelegate {
	static SetupAreaTintTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
	~SetupAreaTintTriggerPopup();

	void onHSV(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateHSVButton();

	virtual TodoReturn determineStartValues();
	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::_ccHSVValue);
}

[[link(android)]]
class SetupItemEditTriggerPopup : SetupTriggerPopup {
	static SetupItemEditTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);

	bool init(ItemTriggerGameObject*, cocos2d::CCArray*);
	~SetupItemEditTriggerPopup();

	void onOpButton(cocos2d::CCObject* sender);
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);

	TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int);
	TodoReturn updateFormulaLabel();

	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupSequenceTriggerPopup : SetupTriggerPopup {
	static SetupSequenceTriggerPopup* create(SequenceTriggerGameObject*);

	bool init(SequenceTriggerGameObject*);
	~SetupSequenceTriggerPopup();

	void onAddChance(cocos2d::CCObject* sender);
	void onChangeOrder(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);

	TodoReturn updateGroupIDButtons();
}


[[link(android)]]
class SetupCollisionTriggerPopup : SetupTriggerPopup {
	static SetupCollisionTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupCollisionTriggerPopup();

	void onTargetP1(cocos2d::CCObject* sender);
	void onTargetP2(cocos2d::CCObject* sender);
	void onTargetPP(cocos2d::CCObject* sender);
	void onEnableGroup(cocos2d::CCObject* sender);
	void onItemIDArrow(cocos2d::CCObject* sender);
	void onItemID2Arrow(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onActivateOnExit(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateItemID();
	TodoReturn updateItemID2();
	TodoReturn updateTargetID();
	TodoReturn updateItemIDInputLabel();
	TodoReturn updateItemID2InputLabel();
	TodoReturn updateTargetIDInputLabel();

	virtual TodoReturn determineStartValues();
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class UpdateAccountSettingsPopup : FLAlertLayer, GJAccountSettingsDelegate {
	static UpdateAccountSettingsPopup* create(GJAccountSettingsLayer*, int, int, int, gd::string, gd::string, gd::string);

	bool init(GJAccountSettingsLayer*, int, int, int, gd::string, gd::string, gd::string);
	~UpdateAccountSettingsPopup();

	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
	virtual TodoReturn updateSettingsFinished();
	virtual TodoReturn updateSettingsFailed();
}


[[link(android)]]
class SetupAdvFollowRetargetPopup : SetupTriggerPopup {
	static SetupAdvFollowRetargetPopup* create(AdvancedFollowEditObject*, cocos2d::CCArray*);

	bool init(AdvancedFollowEditObject*, cocos2d::CCArray*);
	~SetupAdvFollowRetargetPopup();

	virtual TodoReturn updateDefaultTriggerValues();
	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupAreaRotateTriggerPopup : SetupAreaMoveTriggerPopup {
	static SetupAreaRotateTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
	~SetupAreaRotateTriggerPopup();
}

[[link(android)]]
class SetupTimerEventTriggerPopup : SetupTriggerPopup {
	static SetupTimerEventTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);

	bool init(TimerTriggerGameObject*, cocos2d::CCArray*);
	~SetupTimerEventTriggerPopup();
}

[[link(android)]]
class CustomizeObjectSettingsPopup : SetupTriggerPopup {
	static CustomizeObjectSettingsPopup* create(GameObject*, cocos2d::CCArray*, CustomizeObjectLayer*);

	bool init(GameObject*, cocos2d::CCArray*, CustomizeObjectLayer*);
	~CustomizeObjectSettingsPopup();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupItemCompareTriggerPopup : SetupTriggerPopup {
	static SetupItemCompareTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);

	bool init(ItemTriggerGameObject*, cocos2d::CCArray*);
	~SetupItemCompareTriggerPopup();

	void onOpButton(cocos2d::CCObject* sender);
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);

	TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int);
	TodoReturn updateFormulaLabel();

	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupTimerControlTriggerPopup : SetupTriggerPopup {
	static SetupTimerControlTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);

	bool init(TimerTriggerGameObject*, cocos2d::CCArray*);
	~SetupTimerControlTriggerPopup();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupAdvFollowEditPhysicsPopup : SetupTriggerPopup {
	static SetupAdvFollowEditPhysicsPopup* create(AdvancedFollowEditObject*, cocos2d::CCArray*);

	bool init(AdvancedFollowEditObject*, cocos2d::CCArray*);
	~SetupAdvFollowEditPhysicsPopup();

	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupAreaTransformTriggerPopup : SetupAreaMoveTriggerPopup {
	static SetupAreaTransformTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
	~SetupAreaTransformTriggerPopup();
}

[[link(android)]]
class SetupCollisionStateTriggerPopup : SetupInstantCollisionTriggerPopup {
	static SetupCollisionStateTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupCollisionStateTriggerPopup();
}

[[link(android)]]
class SetupPersistentItemTriggerPopup : SetupTriggerPopup {
	static SetupPersistentItemTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);

	bool init(ItemTriggerGameObject*, cocos2d::CCArray*);
	~SetupPersistentItemTriggerPopup();
}

[[link(android)]]
class SetupInstantCollisionTriggerPopup : SetupTriggerPopup {
	static SetupInstantCollisionTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupInstantCollisionTriggerPopup();

	TodoReturn updateSpecialNodes();

	virtual TodoReturn updateDefaultTriggerValues();
	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class MD5 {
	TodoReturn MD5Transform(unsigned long*, unsigned char*);
}

[[link(android)]]
class OBB2D : cocos2d::CCNode {
	static OBB2D* create(cocos2d::CCPoint, float, float, float);

	bool init(cocos2d::CCPoint, float, float, float);
	~OBB2D();

	TodoReturn getBoundingRect();

	TodoReturn computeAxes();
	TodoReturn orderCorners();
	TodoReturn overlaps1Way(OBB2D*);
	TodoReturn calculateWithCenter(cocos2d::CCPoint, float, float, float);
	TodoReturn overlaps(OBB2D*);
}

[[link(android)]]
class rtsha1 {
	TodoReturn toHexString(unsigned char const*, char*);
	TodoReturn calc(void const*, int, unsigned char*);
}

[[link(android)]]
class UILayer : cocos2d::CCLayerColor, cocos2d::CCKeyboardDelegate {
	static UILayer* create(GJBaseGameLayer*);

	bool init(GJBaseGameLayer*);
	~UILayer();

	void onDeleteCheck(cocos2d::CCObject* sender);
	void onCheck(cocos2d::CCObject* sender);
	void onPause(cocos2d::CCObject* sender) = win 0x3b8d90;

	TodoReturn enableMenu();
	TodoReturn disableMenu();
	TodoReturn refreshDpad();
	TodoReturn editorPlaytest(bool);
	void handleKeypress(cocos2d::enumKeyCodes, bool) = win 0x3b8900;
	TodoReturn updateDualMode(bool);
	TodoReturn resetAllButtons() = win 0x3b8f10;
	TodoReturn enableEditorMode();
	void resetUINodeState() = win 0x3b8810;
	TodoReturn processUINodeTouch(GJUITouchEvent, int, cocos2d::CCPoint, GJUINode*);
	/* unverified signature */
	bool isJumpButtonPressed(bool);
	TodoReturn processUINodesTouch(GJUITouchEvent, cocos2d::CCTouch*);
	TodoReturn toggleMenuVisibility(bool) = win 0x3b8ec0;
	TodoReturn togglePlatformerMode(bool);
	TodoReturn toggleCheckpointsMenu(bool);
	TodoReturn updateUINodeVisibility(bool);

	virtual void draw() = win 0x3ba4c0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void keyUp(cocos2d::enumKeyCodes);
}

[[link(android)]]
class URLCell : TableViewCell {
	~URLCell();

	void onURL(cocos2d::CCObject* sender);

	void updateBGColor(int) = win 0x807B0;
	void loadFromObject(CCURLObject*) = win 0x8C190;
	URLCell(char const*, float, float);

	virtual bool init();
	virtual void draw();
}


[[link(android)]]
class GameCell : TableViewCell {
	~GameCell();

	void onTouch(cocos2d::CCObject* sender);

	TodoReturn updateBGColor(int);
	TodoReturn loadFromString(gd::string);
	GameCell(char const*, float, float);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class GJUINode : cocos2d::CCNode {
	static GJUINode* create(UIButtonConfig&);

	bool init(UIButtonConfig&);
	~GJUINode();

	TodoReturn getOpacity();
	TodoReturn getButtonScale();

	void setOpacity(unsigned char);

	TodoReturn resetState() = win 0x3b9be0;
	TodoReturn touchEnded();
	TodoReturn updateSize(float, float);
	TodoReturn toggleModeB(bool);
	TodoReturn updateWidth(float);
	TodoReturn saveToConfig(UIButtonConfig&);
	TodoReturn updateHeight(float);
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
	TodoReturn touchTest(cocos2d::CCPoint);

	virtual void draw();
}

[[link(android)]]
class ListCell : TableViewCell {
	~ListCell();

	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(cocos2d::CCObject*, int, int, int);
	ListCell(char const*, float, float);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class SongCell : TableViewCell {
	~SongCell();

	void onClick(cocos2d::CCObject* sender);

	void updateBGColor(int) = win 0x807B0;
	void loadFromObject(SongObject*) = win 0x82650;
	SongCell(char const*, float, float);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class TOSPopup : FLAlertLayer {
	static TOSPopup* create();

	~TOSPopup();

	void onTOS(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onPrivacy(cocos2d::CCObject* sender);

	virtual bool init() = win 0x20d8a0;
	virtual void keyBackClicked();
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
class GJMapPack : cocos2d::CCNode {
	static GJMapPack* create(cocos2d::CCDictionary*);
	static GJMapPack* create();

	~GJMapPack();

	TodoReturn completedMaps();
	TodoReturn parsePackColors(gd::string, gd::string);
	TodoReturn parsePackLevels(gd::string);
	TodoReturn hasCompletedMapPack();
	TodoReturn totalMaps();

	virtual bool init();
}

[[link(android)]]
class GJMGLayer : cocos2d::CCLayer {
	static GJMGLayer* create(int);

	bool init(int);
	~GJMGLayer();

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
	virtual TodoReturn showGround();
}

[[link(android)]]
class InfoLayer : FLAlertLayer, LevelCommentDelegate, CommentUploadDelegate, FLAlertLayerProtocol {
	static InfoLayer* create(GJGameLevel*, GJUserScore*, GJLevelList*) = win 0x2239C0;

	bool init(GJGameLevel*, GJUserScore*, GJLevelList*) = win 0x223A80;
	~InfoLayer();

	TodoReturn getAccountID();
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint);
	TodoReturn getID();
	TodoReturn getRealID();

	void onNextPage(cocos2d::CCObject* sender);
	void onOriginal(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onLevelInfo(cocos2d::CCObject* sender) = win 0x225f00;
	void onCopyLevelID(cocos2d::CCObject* sender);
	void onGetComments(cocos2d::CCObject* sender);
	void onRefreshComments(cocos2d::CCObject* sender) = win 0x2258f0;
	void onMore(cocos2d::CCObject* sender) = win 0x225bf0;
	void onClose(cocos2d::CCObject* sender);
	void onComment(cocos2d::CCObject* sender);
	void onSimilar(cocos2d::CCObject* sender);

	TodoReturn reloadWindow();
	TodoReturn confirmReport(cocos2d::CCObject*);
	TodoReturn setupPageInfo(gd::string, char const*);
	TodoReturn setupLevelInfo();
	TodoReturn toggleCommentMode(cocos2d::CCObject*);
	TodoReturn updateLevelsLabel();
	TodoReturn toggleExtendedMode(cocos2d::CCObject*);
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*) = win 0x226770;
	TodoReturn toggleSmallCommentMode(cocos2d::CCObject*);
	TodoReturn updateCommentModeButtons();
	TodoReturn loadPage(int, bool) = win 0x226440;
	/* unverified signature */
	bool isCorrect(char const*);

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn show() = win 0x8F6A0;
	virtual TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadCommentsFailed(char const*);
	virtual TodoReturn commentUploadFinished(int);
	virtual TodoReturn commentUploadFailed(int, CommentError);
	virtual TodoReturn updateUserScoreFinished();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);

	GJGameLevel* m_level;
    GJUserScore* m_score;
    GJLevelList* m_levelList;
    gd::string m_commentKey;
    LoadingCircle* m_loadingCircle;
    cocos2d::CCLabelBMFont* m_pageLabel;
    cocos2d::CCLabelBMFont* m_noComments;
    GJCommentListLayer* m_list;
    CCMenuItemSpriteExtra* m_rightArrow;
    CCMenuItemSpriteExtra* m_leftArrow;
    CCMenuItemSpriteExtra* m_likeBtn;
    CCMenuItemSpriteExtra* m_timeBtn;
    CCMenuItemSpriteExtra* m_reportBtn;
    CCMenuItemSpriteExtra* m_commentsBtn;
    CCMenuItemSpriteExtra* m_refreshCommentsBtn;
    int m_itemCount;
    int m_pageStartIdx;
    int m_pageEndIdx;
    int m_page;
    bool m_canUpdateUserScore;
    CommentKeyType m_mode;
}

[[link(android)]]
class LevelCell : TableViewCell {
	static LevelCell* create(float, float);

	~LevelCell();

	void onViewProfile(cocos2d::CCObject* sender) = win 0x80910;
	void onClick(cocos2d::CCObject* sender) = win 0x80820;
	void onToggle(cocos2d::CCObject* sender) = win 0x7d580;

	TodoReturn updateToggle();
	TodoReturn loadFromLevel(GJGameLevel*) = win 0x7D3F0;
	TodoReturn updateBGColor(int) = win 0x807B0;
	TodoReturn updateCellMode(int);
	TodoReturn loadLocalLevelCell() = win 0x7FE70;
	TodoReturn loadCustomLevelCell() = win 0x7D5A0;
	LevelCell(char const*, float, float);

	virtual bool init();
	virtual void draw();

	CCMenuItemSpriteExtra* m_button;
	GJGameLevel* m_level;
	bool m_cellDrawn;
	CCMenuItemToggler* m_toggler;
	cocos2d::CCPoint m_point;
	cocos2d::CCMenu* m_mainMenu;
	bool m_compactView;
	int m_cellMode;
}

[[link(android)]]
class LevelPage : cocos2d::CCLayer, DialogDelegate {
	static LevelPage* create(GJGameLevel*);

	bool init(GJGameLevel*);
	~LevelPage();

	void onTheTower(cocos2d::CCObject* sender);
	void onMoreGames(cocos2d::CCObject* sender);
	void onSecretDoor(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender) = win 0x267CB0;
	void onPlay(cocos2d::CCObject* sender);

	TodoReturn addSecretCoin();
	TodoReturn addSecretDoor();
	TodoReturn playCoinEffect();
	TodoReturn updateDynamicPage(GJGameLevel*);
	TodoReturn playStep2();
	TodoReturn playStep3();

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual TodoReturn dialogClosed(DialogLayer*);

    void* m_unk;
    GJGameLevel* m_level;
}

[[link(android)]]
class NodePoint : cocos2d::CCObject {
	static NodePoint* create(cocos2d::CCPoint);

	bool init(cocos2d::CCPoint);
	~NodePoint();
}


[[link(android)]]
class PointNode : cocos2d::CCObject {
	static PointNode* create(cocos2d::CCPoint) = win 0x222760;

	bool init(cocos2d::CCPoint);
	~PointNode();
}
