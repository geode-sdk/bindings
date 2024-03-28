// clang-format off

[[link(android)]]
class AccountHelpLayer : GJDropDownLayer, GJAccountDelegate, FLAlertLayerProtocol {
	// virtual ~AccountHelpLayer();

	static AccountHelpLayer* create() = android32 0x4492ec;

	TodoReturn doUnlink() = android32 0x449912;
	TodoReturn exitLayer() = android32 0x44990c;
	void onAccountManagement(cocos2d::CCObject* sender) = android32 0x447f78;
	void onReLogin(cocos2d::CCObject* sender) = android32 0x447e88;
	void onUnlink(cocos2d::CCObject* sender) = android32 0x448240;
	TodoReturn updatePage() = android32 0x449464;
	TodoReturn verifyUnlink() = android32 0x4493cc;

	virtual TodoReturn customSetup() = android32 0x449604;
	virtual TodoReturn layerHidden() = android32 0x448454;
	virtual TodoReturn accountStatusChanged() = android32 0x449904 = android32 0x449900;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x449978 = android32 0x449928;
}

[[link(android)]]
class AccountLayer : GJDropDownLayer, GJAccountDelegate, GJAccountBackupDelegate, GJAccountSyncDelegate, FLAlertLayerProtocol {
	// virtual ~AccountLayer();

	static AccountLayer* create() = android32 0x448384;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = android32 0x448490;
	TodoReturn doBackup() = android32 0x448e20;
	TodoReturn doSync() = android32 0x448e52;
	TodoReturn exitLayer() = android32 0x4492dc;
	TodoReturn hideLoadingUI() = android32 0x448ed8;
	void onBackup(cocos2d::CCObject* sender) = android32 0x4480f0;
	void onHelp(cocos2d::CCObject* sender) = android32 0x447ef0;
	void onLogin(cocos2d::CCObject* sender) = android32 0x447e34;
	void onMore(cocos2d::CCObject* sender) = android32 0x4492e2;
	void onRegister(cocos2d::CCObject* sender) = android32 0x447edc;
	void onSync(cocos2d::CCObject* sender) = android32 0x448000;
	TodoReturn showLoadingUI() = android32 0x448e04;
	TodoReturn toggleUI(bool) = android32 0x448de2;
	TodoReturn updatePage(bool) = android32 0x448644;

	virtual TodoReturn customSetup() = android32 0x4488a8;
	virtual TodoReturn layerHidden() = android32 0x44938c;
	virtual TodoReturn backupAccountFinished() = android32 0x448fb4 = android32 0x448ef4;
	virtual TodoReturn backupAccountFailed(BackupAccountError, int) = android32 0x44913c = android32 0x448fbc;
	virtual TodoReturn syncAccountFinished() = android32 0x449204 = android32 0x449144;
	virtual TodoReturn syncAccountFailed(BackupAccountError, int) = android32 0x4492d4 = android32 0x44920c;
	virtual TodoReturn accountStatusChanged() = android32 0x448dda = android32 0x448dd4;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x448ed0 = android32 0x448e84;
}

[[link(android)]]
class AccountLoginLayer : FLAlertLayer, TextInputDelegate, GJAccountLoginDelegate, FLAlertLayerProtocol {
	// virtual ~AccountLoginLayer();

	static AccountLoginLayer* create(gd::string) = android32 0x44b85c;

	TodoReturn createTextBackground(cocos2d::CCPoint, char const*, cocos2d::CCSize) = android32 0x44b090;
	TodoReturn createTextInput(cocos2d::CCPoint, cocos2d::CCSize, char const*, int) = android32 0x44b1cc;
	TodoReturn createTextLabel(cocos2d::CCPoint, char const*, cocos2d::CCSize) = android32 0x44b11c;
	TodoReturn disableNodes() = android32 0x44bbcc;
	TodoReturn hideLoadingUI() = android32 0x44bde8;
	bool init(gd::string) = android32 0x44b274;
	void onClose(cocos2d::CCObject* sender) = android32 0x44bbf0;
	void onForgotPassword(cocos2d::CCObject* sender) = android32 0x449d04;
	void onForgotUser(cocos2d::CCObject* sender) = android32 0x449cec;
	void onSubmit(cocos2d::CCObject* sender) = android32 0x44bcb4;
	TodoReturn resetLabel(int) = android32 0x44bac4;
	TodoReturn resetLabels() = android32 0x44bb28;
	TodoReturn showLoadingUI() = android32 0x44bc92;
	TodoReturn toggleUI(bool) = android32 0x44bc48;
	TodoReturn updateLabel(AccountError) = android32 0x44b998;

	virtual void registerWithTouchDispatcher() = android32 0x449c1c;
	virtual void keyBackClicked() = android32 0x44bc40 = android32 0x44bc3a;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x44bc32 = android32 0x44bc14;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = android32 0x4499b0 = android32 0x4499ae;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x44bbc4 = android32 0x44bb40;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x4499ba = android32 0x4499b8;
	virtual TodoReturn loginAccountFinished(int, int) = android32 0x44bf14 = android32 0x44be20;
	virtual TodoReturn loginAccountFailed(AccountError) = android32 0x44be16 = android32 0x44be04;
}

[[link(android)]]
class AccountRegisterLayer : FLAlertLayer, TextInputDelegate, GJAccountRegisterDelegate, FLAlertLayerProtocol {
	// virtual ~AccountRegisterLayer();

	static AccountRegisterLayer* create() = android32 0x449d94;

	TodoReturn createTextBackground(cocos2d::CCPoint, cocos2d::CCSize) = android32 0x449e98;
	TodoReturn createTextInput(cocos2d::CCPoint, cocos2d::CCSize, gd::string, int) = android32 0x449fd4;
	TodoReturn createTextLabel(cocos2d::CCPoint, gd::string, cocos2d::CCSize) = android32 0x449f24;
	TodoReturn disableNodes() = android32 0x44aa86;
	TodoReturn hideLoadingUI() = android32 0x44abc2;
	void onClose(cocos2d::CCObject* sender) = android32 0x44aad4;
	void onSubmit(cocos2d::CCObject* sender) = android32 0x44ac20;
	TodoReturn resetLabel(int) = android32 0x44a970;
	TodoReturn resetLabels() = android32 0x44aa58;
	TodoReturn showLoadingUI() = android32 0x44aba0;
	TodoReturn toggleUI(bool) = android32 0x44ab2c;
	TodoReturn updateLabel(AccountError) = android32 0x44a7a8;
	TodoReturn validEmail(gd::string) = android32 0x44abf8;
	TodoReturn validPassword(gd::string) = android32 0x44ac0e;
	TodoReturn validUser(gd::string) = android32 0x44abfe;

	virtual bool init() = android32 0x44a088;
	virtual void registerWithTouchDispatcher() = android32 0x449bf8;
	virtual void keyBackClicked() = android32 0x44ab24 = android32 0x44ab1e;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x44ab16 = android32 0x44aaf8;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = android32 0x44998a = android32 0x449988;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x44b088 = android32 0x44ae18;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x449994 = android32 0x449992;
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float) = android32 0x449c90 = android32 0x449c40;
	virtual TodoReturn textInputReturn(CCTextInputNode*) = android32 0x449ce4 = android32 0x449c98;
	virtual bool allowTextInput(CCTextInputNode*) = android32 0x4499a6 = android32 0x44999c;
	virtual TodoReturn registerAccountFinished() = android32 0x449bf0 = android32 0x449b40;
	virtual TodoReturn registerAccountFailed(AccountError) = android32 0x44abf0 = android32 0x44abde;
}

[[link(android)]]
class AchievementBar : cocos2d::CCNodeRGBA {
	// virtual ~AchievementBar();

	static AchievementBar* create(char const* title, char const* desc, char const* icon, bool quest) = android32 0x4103d8;

	bool init(char const* title, char const* desc, char const* icon, bool quest) = android32 0x40f888;
	TodoReturn show() = android32 0x410454;

	virtual void setOpacity(unsigned char) = android32 0x40f848 = android32 0x40f808;
}

[[link(android)]]
class AchievementCell : TableViewCell {
	// virtual ~AchievementCell();
	AchievementCell(char const*, float, float);

	TodoReturn loadFromDict(cocos2d::CCDictionary*) = android32 0x322b98;
	TodoReturn updateBGColor(int) = android32 0x3235b4;

	virtual bool init() = android32 0x31fbde;
	virtual void draw() = android32 0x320408;
}

[[link(android)]]
class AchievementManager : cocos2d::CCNode {
	// virtual ~AchievementManager();

	static AchievementManager* sharedState() = android32 0x2b2dfc;

	TodoReturn achievementForUnlock(int, UnlockType) = android32 0x2d3d44;
	TodoReturn addAchievement(gd::string, gd::string, gd::string, gd::string, gd::string, int) = android32 0x2b2e74;
	TodoReturn addManualAchievements() = android32 0x2b3040;
	TodoReturn areAchievementsEarned(cocos2d::CCArray*) = android32 0x2cd82c;
	TodoReturn checkAchFromUnlock(char const*) = android32 0x2cd7ca;
	void dataLoaded(DS_Dictionary*) = android32 0x2cd774;
	void encodeDataTo(DS_Dictionary*) = android32 0x2cd7b4;
	void firstSetup() = android32 0x2cd74c;
	TodoReturn getAchievementRewardDict() = android32 0x2cdeec;
	TodoReturn getAchievementsWithID(char const*) = android32 0x2cd994;
	TodoReturn getAllAchievements() = android32 0x2cd98c;
	TodoReturn getAllAchievementsSorted(bool) = android32 0x2cd8a8;
	bool isAchievementAvailable(gd::string) = android32 0x2cd9e0;
	bool isAchievementEarned(char const*) = android32 0x2cd81c;
	TodoReturn limitForAchievement(gd::string) = android32 0x2cda40;
	TodoReturn notifyAchievement(char const*, char const*, char const*) = android32 0x2cdd14;
	TodoReturn notifyAchievementWithID(char const*) = android32 0x2cdc30;
	TodoReturn percentageForCount(int, int) = android32 0x2cd85c;
	TodoReturn percentForAchievement(char const*) = android32 0x2cd7cc;
	TodoReturn reportAchievementWithID(char const*, int, bool) = android32 0x2cde44;
	TodoReturn reportPlatformAchievementWithID(char const*, int) = android32 0x2cdd80;
	TodoReturn resetAchievement(char const*) = android32 0x2cdd38;
	TodoReturn resetAchievements() = android32 0x2cdee4;
	TodoReturn setup() = android32 0x2cd7c8;
	TodoReturn storeAchievementUnlocks() = android32 0x2cdaa4;

	virtual bool init() = android32 0x2cdbd8;
}

[[link(android)]]
class AchievementNotifier : cocos2d::CCNode {
	// virtual ~AchievementNotifier();

	static AchievementNotifier* sharedState() = ios 0x21f3d8, android32 0x2b2a60;

	TodoReturn achievementDisplayFinished() = android32 0x2b2bca;
	TodoReturn notifyAchievement(char const* title, char const* desc, char const* icon, bool quest) = android32 0x2b2b9c;
	TodoReturn showNextAchievement() = android32 0x2b2ac0;
	TodoReturn willSwitchToScene(cocos2d::CCScene*) = ios 0x21f60c, android32 0x2b2bf6;

	virtual bool init() = android32 0x2b29ea;
}

[[link(android)]]
class AchievementsLayer : GJDropDownLayer {
	// virtual ~AchievementsLayer();

	static AchievementsLayer* create() = android32 0x31f4f4;

	TodoReturn loadPage(int) = android32 0x31f6dc;
	void onNextPage(cocos2d::CCObject* sender) = android32 0x31fb48;
	void onPrevPage(cocos2d::CCObject* sender) = android32 0x31fb52;
	TodoReturn setupLevelBrowser(cocos2d::CCArray*) = android32 0x31f61c;
	TodoReturn setupPageInfo(int, int, int) = android32 0x31f674;

	virtual void keyDown(cocos2d::enumKeyCodes) = android32 0x31fbbe = android32 0x31fb5c;
	virtual TodoReturn customSetup() = android32 0x31f910;
}

[[link(android)]]
class AdToolbox {
	TodoReturn cacheInterstitial();
	TodoReturn cacheRewardedVideo();
	TodoReturn disableBanner();
	TodoReturn enableBanner();
	TodoReturn enableBannerNoRefresh();
	TodoReturn hasCachedInterstitial();
	TodoReturn hasCachedRewardedVideo();
	bool isShowingAd();
	TodoReturn queueRefreshBanner();
	TodoReturn setupAds();
	TodoReturn showDebug();
	TodoReturn showInterstitial();
	TodoReturn showRewardedVideo();
}

[[link(android)]]
class AdvancedFollowEditObject : AdvancedFollowTriggerObject {
	// virtual ~AdvancedFollowEditObject();

	static AdvancedFollowEditObject* create(char const*) = android32 0x3d0a8c;

	bool init(char const*) = android32 0x3d0a88;

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3d1e34;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3de870;
}

[[link(android)]]
class AdvancedFollowTriggerObject : EffectGameObject {
	// virtual ~AdvancedFollowTriggerObject();
	// AdvancedFollowTriggerObject();

	static AdvancedFollowTriggerObject* create(char const*) = android32 0x3d0b10;

	TodoReturn getAdvancedFollowID() = android32 0x3cee4c;
	bool init(char const*) = android32 0x3d0a84;

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3d14a8;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3dcf94;
}

[[link(android)]]
class AdvFollowSetup {
	// ~AdvFollowSetup();
}

[[link(android)]]
class AnimatedGameObject : EnhancedGameObject, AnimatedSpriteDelegate, SpritePartDelegate {
	// virtual ~AnimatedGameObject();

	static AnimatedGameObject* create(int) = android32 0x3d04bc;

	TodoReturn animationForID(int, int) = android32 0x3d0560;
	TodoReturn getTweenTime(int, int) = android32 0x3d0558;
	bool init(int) = android32 0x3d0354;
	TodoReturn playAnimation(int) = android32 0x3d06f4;
	TodoReturn setupAnimatedSize(int) = android32 0x3d01f8;
	TodoReturn setupChildSprites() = android32 0x3cfb80;
	TodoReturn updateChildSpriteColor(cocos2d::ccColor3B) = android32 0x3d009c;
	TodoReturn updateObjectAnimation() = android32 0x3d00d8;

	virtual void setOpacity(unsigned char) = android32 0x3cca12 = android32 0x3cc9a4;
	virtual void setChildColor(cocos2d::ccColor3B const&) = android32 0x3c9020;
	virtual TodoReturn resetObject() = android32 0x3d01c8;
	virtual TodoReturn activateObject() = android32 0x3d01a8;
	virtual TodoReturn deactivateObject(bool) = android32 0x3cc6b4;
	virtual void setObjectColor(cocos2d::ccColor3B const&) = android32 0x3c8f2a;
	virtual TodoReturn animationFinished(char const*) = android32 0x3cd060 = android32 0x3cca1c;
	virtual TodoReturn displayFrameChanged(cocos2d::CCObject*, gd::string) = android32 0x3cdd24 = android32 0x3cdc3c;
}

[[link(android)]]
class AnimatedShopKeeper : CCAnimatedSprite {
	// virtual ~AnimatedShopKeeper();

	static AnimatedShopKeeper* create(ShopType) = android32 0x4c0c2c;

	bool init(ShopType) = android32 0x4c0b74;
	TodoReturn playReactAnimation() = android32 0x4c0cd8;
	TodoReturn startAnimating() = android32 0x4bff04;

	virtual TodoReturn animationFinished(char const*) = android32 0x4bff50;
}

[[link(android)]]
class AnimatedSpriteDelegate {
	virtual TodoReturn animationFinished(char const*);
}

[[link(android)]]
class AppDelegate : cocos2d::CCApplication, cocos2d::CCSceneDelegate {
	// virtual ~AppDelegate();
	inline static AppDelegate* get() {
        return static_cast<AppDelegate*>(cocos2d::CCApplication::sharedApplication());
    }

	TodoReturn bgScale() = android32 0x2fac34;
	TodoReturn checkSound() = android32 0x2fad98;
	TodoReturn hideLoadingCircle() = android32 0x2fadb0;
	TodoReturn loadingIsFinished() = android32 0x2fac46;
	TodoReturn musicTest() = android32 0x2fad0c;
	TodoReturn pauseGame() = android32 0x2fac4e;
	TodoReturn pauseSound() = android32 0x2fac9c;
	TodoReturn platformShutdown() = android32 0x2faa50;
	TodoReturn resumeSound() = android32 0x2fad5c;
	void setIdleTimerDisabled(bool) = android32 0x2fac9a;
	TodoReturn setupGLView() = android32 0x2faa54;
	TodoReturn showLoadingCircle(bool, bool, bool) = android32 0x2fadae;

	virtual bool applicationDidFinishLaunching() = android32 0x2fab20;
	virtual void applicationDidEnterBackground() = android32 0x2faccc;
	virtual void applicationWillEnterForeground() = android32 0x2fa8c4;
	virtual void applicationWillBecomeActive() = android32 0x2fa8b6;
	virtual void applicationWillResignActive() = android32 0x2fac96;
	virtual void trySaveGame(bool) = ios 0x30a988, android32 0x2fa988;
	virtual TodoReturn willSwitchToScene(cocos2d::CCScene*) = android32 0x2fa97a = android32 0x2fa968;

	PAD = win 0x4, android32 0xC, android64 0x18;
	cocos2d::CCScene* m_runningScene;
}

[[link(android)]]
class ArtistCell : TableViewCell {
	// virtual ~ArtistCell();
	ArtistCell(char const*, float, float);

	TodoReturn loadFromObject(SongInfoObject*) = android32 0x327a38;
	void onNewgrounds(cocos2d::CCObject* sender) = android32 0x321704;
	void onYouTube(cocos2d::CCObject* sender) = android32 0x321778;
	TodoReturn updateBGColor(int) = android32 0x327c6c;

	virtual bool init() = android32 0x31fcc4;
	virtual void draw() = android32 0x3207f8;
}

[[link(android)]]
class ArtTriggerGameObject : EffectGameObject {
	// virtual ~ArtTriggerGameObject();

	static ArtTriggerGameObject* create(char const*) = android32 0x3d45c4;

	bool init(char const*) = android32 0x3d45c0;

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = android32 0x3cd334;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3cbebc;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e4f88;
}

[[link(android)]]
class AudioEffectsLayer : cocos2d::CCLayerColor {
	// virtual ~AudioEffectsLayer();

	static AudioEffectsLayer* create(gd::string) = android32 0x3e9454;

	TodoReturn audioStep(float) = android32 0x3e9654;
	TodoReturn getBGSquare() = android32 0x3e96dc;
	TodoReturn goingDown() = android32 0x3e919e;
	bool init(gd::string) = android32 0x3e92e0;
	TodoReturn resetAudioVars() = android32 0x3e92ac;
	TodoReturn triggerEffect(float) = android32 0x3e9534;

	virtual void draw() = android32 0x3e91a6;
	virtual void updateTweenAction(float, char const*) = android32 0x3e9238;
}

[[link(android)]]
class AudioLineGuideGameObject : EffectGameObject {
	// virtual ~AudioLineGuideGameObject();

	static AudioLineGuideGameObject* create() = android32 0x3d4270;

	virtual bool init() = android32 0x3d0d7c;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3cbd5c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e4ae0;
}

[[link(android)]]
class BitmapFontCache : cocos2d::CCObject {
	// virtual ~BitmapFontCache();

	static BitmapFontCache* sharedFontCache() = android32 0x2d3f80;

	TodoReturn fontWithConfigFile(char const*, float) = android32 0x2d42bc;
	bool init() = android32 0x2d3f6c;
	TodoReturn purgeSharedFontCache() = android32 0x2d3f54;
}

[[link(android)]]
class BonusDropdown : cocos2d::CCNode {
	// virtual ~BonusDropdown();

	static BonusDropdown* create(gd::string, int) = android32 0x2d45b8;

	bool init(gd::string, int) = android32 0x2d43c0;
	TodoReturn show() = android32 0x2d4650;
}

[[link(android)]]
class BoomListLayer : cocos2d::CCLayerColor {
	// virtual ~BoomListLayer();

	static BoomListLayer* create(BoomListView*, char const*) = android32 0x2e9580;

	bool init(BoomListView*, char const*) = android32 0x2e9334;
}

[[link(android)]]
class BoomListView : cocos2d::CCLayer, TableViewDelegate, TableViewDataSource {
	BoomListView() {}
	~BoomListView() {
		CC_SAFE_RELEASE(m_entries);
	}

	static BoomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = android32 0x2d4c20;

	TodoReturn addObjectToList(cocos2d::CCNode*) = android32 0x2d4cec;
	bool init(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = ios 0x1d3a64, android32 0x2d4b28;
	TodoReturn lockList(bool) = android32 0x2d4aec;

	bool init(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
		return this->init(entries, nullptr, height, width, 0, type, 0.0f);
	}

	virtual void draw() {}
	virtual TodoReturn setupList(float) = android32 0x2d4a7c;
	virtual void TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual float cellHeightForRowAtIndexPath(CCIndexPath&, TableView*) = android32 0x2d476a = android32 0x2d4764;
	virtual void didSelectRowAtIndexPath(CCIndexPath&, TableView*) {}
	virtual int numberOfRowsInSection(unsigned, TableView*) = android32 0x2d482e = android32 0x2d4826;
	virtual unsigned int numberOfSectionsInTableView(TableView*) { return 1; }
	virtual TableViewCell* cellForRowAtIndexPath(CCIndexPath&, TableView*) = android32 0x2d4888 = android32 0x2d4838;
	virtual void TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&) {}
	virtual void TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual TableViewCell* getListCell(char const*) = android32 0x2d4dbc;
	virtual TodoReturn loadCell(TableViewCell*, int) = android32 0x2d5004;

	TableView* m_tableView;
	cocos2d::CCArray* m_entries;
	BoomListType m_type;
	float m_height;
	float m_width;
	float m_itemSeparation;
	int m_currentPage;
	bool m_locked;
}

[[link(android)]]
class BoomScrollLayer : cocos2d::CCLayer {
	// virtual ~BoomScrollLayer();

	static BoomScrollLayer* create(cocos2d::CCArray*, int, bool, cocos2d::CCArray*, DynamicScrollDelegate*) = android32 0x2d6474;
	static BoomScrollLayer* create(cocos2d::CCArray*, int, bool) = android32 0x2d65b8;

	TodoReturn addPage(cocos2d::CCLayer*, int) = android32 0x2d5ede;
	TodoReturn addPage(cocos2d::CCLayer*) = android32 0x2d5f1e;
	TodoReturn cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2d5ff6;
	TodoReturn claimTouch(cocos2d::CCTouch*) = android32 0x2d5fbe;
	TodoReturn getPage(int) = android32 0x2d5390;
	TodoReturn getRelativePageForNum(int) = android32 0x2d5596;
	TodoReturn getRelativePosForPage(int) = android32 0x2d5768;
	TodoReturn getTotalPages() = android32 0x2d537c;
	bool init(cocos2d::CCArray*, int, bool, cocos2d::CCArray*, DynamicScrollDelegate*) = android32 0x2d6260;
	TodoReturn instantMoveToPage(int) = android32 0x2d5af4;
	TodoReturn moveToPage(int) = android32 0x2d5b6c;
	TodoReturn moveToPageEnded() = android32 0x2d56f4;
	TodoReturn pageNumberForPosition(cocos2d::CCPoint) = android32 0x2d54d2;
	TodoReturn positionForPageWithNumber(int) = android32 0x2d555a;
	TodoReturn quickUpdate() = android32 0x2d5eaa;
	TodoReturn removePage(cocos2d::CCLayer*) = android32 0x2d5f3a;
	TodoReturn removePageWithNumber(int) = android32 0x2d5f92;
	TodoReturn repositionPagesLooped() = android32 0x2d5918;
	TodoReturn selectPage(int) = android32 0x2d5e20;
	void setDotScale(float) = android32 0x2d5350;
	void setPagesIndicatorPosition(cocos2d::CCPoint) = android32 0x2d56dc;
	TodoReturn setupDynamicScrolling(cocos2d::CCArray*, DynamicScrollDelegate*) = android32 0x2d57a8;
	TodoReturn togglePageIndicators(bool) = android32 0x2d549c;
	TodoReturn updateDots(float) = android32 0x2d55bc;
	TodoReturn updatePages() = android32 0x2d53cc;

	virtual void visit() = android32 0x2d51e4;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2d5300 = android32 0x2d5258;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2d61e0 = android32 0x2d6050;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2d5e18 = android32 0x2d5ca8;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2d5ea2 = android32 0x2d5e80;
	virtual void registerWithTouchDispatcher() = android32 0x2d5234;
}

[[link(android)]]
class BoomScrollLayerDelegate {
	virtual TodoReturn scrollLayerScrollingStarted(BoomScrollLayer*);
	virtual TodoReturn scrollLayerScrolledToPage(BoomScrollLayer*, int);
	virtual TodoReturn scrollLayerMoved(cocos2d::CCPoint);
	virtual TodoReturn scrollLayerWillScrollToPage(BoomScrollLayer*, int);
}

[[link(android)]]
class BrowseSmartKeyLayer : BrowseSmartTemplateLayer {
	// virtual ~BrowseSmartKeyLayer();

	static BrowseSmartKeyLayer* create(GJSmartTemplate*, gd::string) = android32 0x51cbfc;

	TodoReturn addChanceToSelected(int, bool) = android32 0x51d0ec;
	TodoReturn createTemplateObjects() = android32 0x51ce6c;
	TodoReturn deletedSelectedItems() = android32 0x51d020;
	TodoReturn getAllSelectedBlocks() = android32 0x51ce0c;
	bool init(GJSmartTemplate*, gd::string) = android32 0x51c630;
	void onButton(cocos2d::CCObject* sender) = android32 0x51d194;
	void onPrefabObject(cocos2d::CCObject* sender) = android32 0x51aba4;
	TodoReturn updateChanceValues() = android32 0x51cf4c;

	virtual void onBack(cocos2d::CCObject* sender) = android32 0x51d620;
}

[[link(android)]]
class BrowseSmartTemplateLayer : FLAlertLayer {
	// virtual ~BrowseSmartTemplateLayer();

	static BrowseSmartTemplateLayer* create(GJSmartTemplate*, SmartBrowseFilter) = android32 0x51d4b4;

	TodoReturn addObjectToPage(cocos2d::CCObject*, int) = android32 0x51bdb6;
	TodoReturn addPrefabMenuItem(SmartPrefabResult, int) = android32 0x51bdf4;
	TodoReturn baseSetup() = android32 0x51c03c;
	TodoReturn createDots() = android32 0x51c2f0;
	TodoReturn createPrefab(gd::string, int) = android32 0x51c578;
	TodoReturn goToPage(int) = android32 0x51c488;
	bool init(GJSmartTemplate*, SmartBrowseFilter) = android32 0x51d1fc;
	void onClick(cocos2d::CCObject* sender) = android32 0x51c548;
	void onClose(cocos2d::CCObject* sender) = android32 0x51c5dc;
	void onTemplateObject(cocos2d::CCObject* sender) = android32 0x51ccec;
	TodoReturn updateDots() = android32 0x51c36c;

	virtual void keyBackClicked() = android32 0x51a306 = android32 0x51a2fc;
	virtual void onBack(cocos2d::CCObject* sender) = android32 0x51c60c;
}

[[link(android)]]
class ButtonPage : cocos2d::CCLayer {
	// virtual ~ButtonPage();

	static ButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint, int, float) = android32 0x3c1c68;

	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, float) = android32 0x3c1b34;
}

[[link(android)]]
class ButtonSprite : cocos2d::CCSprite {
	// virtual ~ButtonSprite();
	// ButtonSprite();

	/// Create a ButtonSprite with a top sprite and a texture.
	/// @param topSprite The top sprite to add on top of the sprite
	/// @param width Sprite width; ignored if `absolute` is false
	/// @param absolute Whether to use absolute width or not
	/// @param texture The name of the background sprite file (can't be in a spritesheet)
	/// @param height The height of the button, leave 0 for automatic
	/// @param scale Scale of top sprite
	static ButtonSprite* create(
		cocos2d::CCSprite* topSprite,
		int width,
		bool absolute,
		float height,
		const char* texture,
		float scale
	) {
		return create(topSprite, width, 0, height, scale, absolute, texture, true);
	}

	/// Create a ButtonSprite with text, a font and a texture.
	/// @param caption The text of the ButtonSprite
	/// @param width Sprite width; ignored if `absolute` is false
	/// @param absolute Whether to use absolute width or not
	/// @param font The name of the BM font file to use
	/// @param texture The name of the background sprite file (can't be in a spritesheet)
	/// @param height The height of the button, leave 0 for automatic
	/// @param scale Scale of text
	/// @returns Pointer to the created ButtonSprite, or nullptr on error
	static ButtonSprite* create(const char* caption, int width, bool absolute, const char* font, const char* texture, float height, float scale) {
		return create(caption, width, 0, scale, absolute, font, texture, height);
	}

	static ButtonSprite* create(char const* caption) {
		return ButtonSprite::create(caption, 0, 0, "goldFont.fnt", "GJ_button_01.png", .0f, 1.f);
	}
	static ButtonSprite* create(char const* caption, const char* font, const char* texture) {
		return ButtonSprite::create(caption, 0, 0, font, texture, .0f, 1.f);
	}
	static ButtonSprite* create(char const* caption, const char* font, const char* texture, float scale) {
		return ButtonSprite::create(caption, 0, 0, font, texture, .0f, scale);
	}

	static ButtonSprite* create(char const*, float) = android32 0x2d725e;
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*, float) = ios 0x689b0, android32 0x2d71b8;
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*) = android32 0x2d7272;
	static ButtonSprite* create(char const*, int, int, float, bool) = android32 0x2d7220;
	static ButtonSprite* create(cocos2d::CCSprite* topSprite, int width, int unused, float height, float, bool, char const* bgSprite, bool noScaleSpriteForBG) = ios 0x6827c, android32 0x2d6bd8;
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool) = android32 0x2d6c40;
	static ButtonSprite* create(cocos2d::CCSprite*) = ios 0x68970, android32 0x2d6c64;

	bool init(char const*, int, int, float, bool, char const*, char const*, float) = android32 0x2d7050;
	bool init(cocos2d::CCSprite* topSprite, int width, int unused, float scale, float height, bool unkBool, char const* bgSprite, bool useNormalCCSpriteForBG) = android32 0x2d69e4;
	void setColor(cocos2d::ccColor3B) = ios 0x691c8, android32 0x2d728e;
	void setString(char const*) = android32 0x2d6c94;
	TodoReturn updateBGImage(char const*) = ios 0x69090, android32 0x2d6f90;
	void updateSpriteBGSize() = ios 0x6859c, android32 0x2d66dc;
	TodoReturn updateSpriteOffset(cocos2d::CCPoint) = android32 0x2d6c7e;

    PAD = mac 0x18, win 0x18, android32 0x18, android64 0x18;
    cocos2d::CCLabelBMFont* m_label;
    cocos2d::CCSprite* m_subSprite;
    cocos2d::CCSprite* m_subBGSprite;
    cocos2d::extension::CCScale9Sprite* m_BGSprite;
    PAD = mac 0xC, win 0x8, android32 0x8, android64 0xc;
    cocos2d::CCPoint m_spritePosition;
}

[[link(android)]]
class CameraTriggerGameObject : EffectGameObject {
	// virtual ~CameraTriggerGameObject();

	static CameraTriggerGameObject* create(char const*) = android32 0x3d4090;

	bool init(char const*) = android32 0x3d408c;

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = android32 0x3d62d4;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3cc0c8;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e302c;
}

[[link(android)]]
class CCAlertCircle : cocos2d::CCNode {
	// virtual ~CCAlertCircle();

	static CCAlertCircle* create() = android32 0x2ef864;

	virtual bool init() = android32 0x2ef7f4;
	virtual void draw() = android32 0x2ef2e0;
}

[[link(android)]]
class CCAnimatedSprite : cocos2d::CCSprite {
	// virtual ~CCAnimatedSprite();

	TodoReturn cleanupSprite() = android32 0x2d7372;
	TodoReturn createWithType(char const*, cocos2d::CCTexture2D*, bool) = android32 0x2d77a0;
	TodoReturn initWithType(char const*, cocos2d::CCTexture2D*, bool) = android32 0x2d76c0;
	TodoReturn loadType(char const*, cocos2d::CCTexture2D*, bool) = android32 0x2d73d4;
	TodoReturn runAnimation(gd::string) = android32 0x2d78f8;
	TodoReturn runAnimationForced(gd::string) = android32 0x2d7994;
	TodoReturn stopTween() = android32 0x2d7b68;
	TodoReturn switchToMode(spriteMode) = android32 0x2d7838;
	TodoReturn tweenToAnimation(gd::string, float) = android32 0x2d7a08;
	TodoReturn tweenToAnimationFinished() = android32 0x2d793c;
	TodoReturn willPlayAnimation() = android32 0x2d79e8;

	virtual void setOpacity(unsigned char) = android32 0x2d7bc0 = android32 0x2d7b90;
	virtual void setColor(cocos2d::ccColor3B const&) = android32 0x2d7c00 = android32 0x2d7bc8;
	virtual TodoReturn animationFinished(char const*) = android32 0x2d72ce;
	virtual TodoReturn animationFinishedO(cocos2d::CCObject*) = android32 0x2d72dc;
}

[[link(android)]]
class CCAnimateFrameCache : cocos2d::CCObject {
	// virtual ~CCAnimateFrameCache();

	static CCAnimateFrameCache* sharedSpriteFrameCache() = android32 0x2d7d14;

	TodoReturn addCustomSpriteFramesWithFile(char const*) = android32 0x2d863c;
	TodoReturn addDict(cocos2d::CCDictionary*, char const*) = android32 0x2d84fc;
	TodoReturn addDict(DS_Dictionary*, char const*) = android32 0x2d7f68;
	TodoReturn addSpriteFramesWithFile(char const*) = android32 0x2d8220;
	bool init() = android32 0x2d7cec;
	TodoReturn purgeSharedSpriteFrameCache() = android32 0x2d7cd4;
	TodoReturn removeSpriteFrames() = android32 0x2d7d6c;
	TodoReturn spriteFrameByName(char const*) = android32 0x2d7d88;
}

[[link(android)]]
class CCBlockLayer : cocos2d::CCLayerColor {
	// virtual ~CCBlockLayer();

	static CCBlockLayer* create() = android32 0x2d9288;

	TodoReturn decrementForcePrio() = android32 0x2d93c8;
	TodoReturn incrementForcePrio() = android32 0x2d9314;

	virtual bool init() = android32 0x2d933c;
	virtual void draw() = android32 0x2d93ee;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2d91ac = android32 0x2d91a8;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2d91ca = android32 0x2d91c8;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2d91b6 = android32 0x2d91b4;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2d91c0 = android32 0x2d91be;
	virtual void registerWithTouchDispatcher() = android32 0x2d9264;
	virtual void keyBackClicked() = android32 0x2d9136 = android32 0x2d912e;
	virtual TodoReturn customSetup() = android32 0x2d910c;
	virtual TodoReturn enterLayer() = android32 0x2d9112;
	virtual TodoReturn exitLayer() = android32 0x2d913e;
	virtual TodoReturn showLayer(bool) = android32 0x2d9166;
	virtual TodoReturn hideLayer(bool) = android32 0x2d916e;
	virtual TodoReturn layerVisible() = android32 0x2d9178;
	virtual TodoReturn layerHidden() = android32 0x2d9182;
	virtual TodoReturn enterAnimFinished() = android32 0x2d9176;
	virtual TodoReturn disableUI() = android32 0x2d910e;
	virtual TodoReturn enableUI() = android32 0x2d9110;

	void* m_unknown;
}

[[link(android)]]
class CCCircleAlert : CCCircleWave {
	// virtual ~CCCircleAlert();

	static CCCircleAlert* create(float, float, float) = android32 0x2ef794;

	bool init(float, float, float) = android32 0x2ef6e0;
}

[[link(android)]]
class CCCircleWave : cocos2d::CCNode {
	// virtual ~CCCircleWave();
	// CCCircleWave();

	static CCCircleWave* create(float, float, float, bool, bool) = android32 0x2ef614;
	static CCCircleWave* create(float, float, float, bool) = android32 0x2ef66c;

	TodoReturn baseSetup(float) = android32 0x2ef48c;
	TodoReturn followObject(cocos2d::CCNode*, bool) = android32 0x2ef67c;
	bool init(float, float, float, bool, bool) = android32 0x2ef4d0;
	TodoReturn updatePosition(float) = android32 0x2ef0ec;

	virtual void setPosition(cocos2d::CCPoint const&) = android32 0x2ef1b4;
	virtual void removeMeAndCleanup() = android32 0x2ef348;
	virtual void draw() = android32 0x2ef1d4;
	virtual void updateTweenAction(float, char const*) = android32 0x2ef364;
}

[[link(android)]]
class CCCircleWaveDelegate {
	virtual TodoReturn circleWaveWillBeRemoved(CCCircleWave*);
}

[[link(android)]]
class CCContentLayer : cocos2d::CCLayerColor {
	inline CCContentLayer() {}
	~CCContentLayer() = android32 0x2d8932 = android32 0x2d8920 = android32 0x2d8918 = android32 0x2d88c4;

	static CCContentLayer* create(cocos2d::ccColor4B const&, float, float) = android32 0x2d893c;

	virtual void setPosition(cocos2d::CCPoint const&) = ios 0x195b18, android32 0x2d89d8;
}

[[link(android)]]
class CCCountdown : cocos2d::CCSprite {
	// virtual ~CCCountdown();

	static CCCountdown* create() = android32 0x2d8cdc;

	TodoReturn lapFinished() = android32 0x2d8bcc;
	TodoReturn startTimerWithSeconds(float, cocos2d::SEL_CallFunc, cocos2d::CCNode*) = android32 0x2d8d54;

	virtual bool init() = android32 0x2d8a10;
	virtual void setOpacity(unsigned char) = android32 0x2d8dc2 = android32 0x2d8da2;
}

[[link(android)]]
class CCCounterLabel : cocos2d::CCLabelBMFont {
	// virtual ~CCCounterLabel();

	static CCCounterLabel* create(int, char const*, FormatterType) = android32 0x2d9048;

	TodoReturn calculateStepSize(int) = android32 0x2d8e6a;
	TodoReturn disableCounter() = android32 0x2d8e4c;
	TodoReturn enableCounter() = android32 0x2d8e14;
	TodoReturn fastUpdateCounter() = android32 0x2d8fcc;
	TodoReturn getTargetCount() = android32 0x2d8e64;
	bool init(int, char const*, FormatterType) = android32 0x2d8fd8;
	void setTargetCount(int) = android32 0x2d8eaa;
	TodoReturn updateCounter(float) = android32 0x2d8f54;
	TodoReturn updateString() = android32 0x2d8ec4;
}

[[link(android)]]
class CCExtenderNode {
	void setOpacity(unsigned int) = android32 0x2d90d8;
}

[[link(android)]]
class CCIndexPath : cocos2d::CCObject {
	CCIndexPath() {}
	// virtual ~CCIndexPath();

	TodoReturn CCIndexPathWithSectionRow(int, int) = android32 0x2dc3fc;
}

[[link(android)]]
class CCLightFlash : cocos2d::CCNode {
	// virtual ~CCLightFlash();

	static CCLightFlash* create() = android32 0x2efcc0;

	TodoReturn cleanupFlash() = android32 0x2ef9bc;
	TodoReturn fadeAndRemove() = android32 0x2efd20;
	TodoReturn playEffect(cocos2d::CCPoint, cocos2d::ccColor3B, float, float, float, float, float, float, float, float, float, float, float, float, float, float, int, bool, bool, float) = android32 0x2f00a0;
	TodoReturn removeLights() = android32 0x2ef9de;
	TodoReturn showFlash() = android32 0x2efe4c;

	virtual bool init() = android32 0x2ef9b8;
}

[[link(android)]]
class CCLightStrip : cocos2d::CCNode {
	// virtual ~CCLightStrip();

	static CCLightStrip* create(float, float, float, float, float) = android32 0x2f001c;

	bool init(float, float, float, float, float) = android32 0x2eff64;

	virtual void draw() = android32 0x2efa78;
	virtual void updateTweenAction(float, char const*) = android32 0x2efbc8;
}

[[link(android)]]
class CCMenuItemSpriteExtra : cocos2d::CCMenuItemSprite {
	~CCMenuItemSpriteExtra() {}
	CCMenuItemSpriteExtra() {
		m_scaleMultiplier = 1.0f;
		m_baseScale = 1.0f;
		m_animationEnabled = true;
		m_colorEnabled = false;
		m_unknown1 = 0.0f;
		m_colorDip = 0.0f;
		m_animationType = MenuAnimationType::Scale;
		m_unknown4 = 0;
	}

	static CCMenuItemSpriteExtra* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = ios 0x21c4fc, android32 0x2d9e9c;

	static CCMenuItemSpriteExtra* create(cocos2d::CCNode* sprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) {
		return CCMenuItemSpriteExtra::create(sprite, nullptr, target, callback);
	}

	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = android32 0x2d9d9c;
	inline void setSizeMult(float mult) {
		//inlined on windows, member is in CCMenuItemSprite
		m_fSizeMult = mult;
	}
	TodoReturn useAnimationType(MenuAnimationType) = android32 0x2d9fd4;

	virtual void activate() = android32 0x2d9ab0;
	virtual void selected() = android32 0x2d9b3c;
	virtual void unselected() = android32 0x2d9c90;

	float m_scaleMultiplier;
	float m_baseScale;
	bool m_animationEnabled;
	bool m_colorEnabled;
	float m_unknown1;
	gd::string m_unknown2;
	gd::string m_unknown3;
	float m_colorDip;
	cocos2d::CCPoint m_destPosition;
	cocos2d::CCPoint m_offset;
	MenuAnimationType m_animationType;
	cocos2d::CCPoint m_startPosition;
	int m_unknown4;
}

[[link(android)]]
class CCMenuItemToggler : cocos2d::CCMenuItem {
	CCMenuItemToggler() {}
	// virtual ~CCMenuItemToggler();

	static CCMenuItemToggler* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = ios 0x197eb8, android32 0x2da2bc;
	static CCMenuItemToggler* createWithSize(const char* spr1, const char* spr2, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback, float scale) {
		auto sprOff = cocos2d::CCSprite::createWithSpriteFrameName(spr1);
		auto sprOn = cocos2d::CCSprite::createWithSpriteFrameName(spr2);

		sprOff->setScale(scale);
		sprOn->setScale(scale);

		return create(sprOff, sprOn, target, callback);
	}
	static CCMenuItemToggler* createWithStandardSprites(cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback, float scale) {
		auto sprOff = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOff_001.png");
		auto sprOn = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOn_001.png");

		sprOff->setScale(scale);
		sprOn->setScale(scale);

		return create(sprOff, sprOn, target, callback);
	}

	TodoReturn activeItem() = android32 0x2da05e;
	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = ios 0x197f88, android32 0x2da16c;
	TodoReturn normalTouch(cocos2d::CCObject*) = android32 0x2da386;
	TodoReturn selectedTouch(cocos2d::CCObject*) = android32 0x2da394;
	void setSizeMult(float) = ios 0x198238, android32 0x2da360;
	void toggle(bool) = ios 0x198160, android32 0x2da0c4;

	bool isToggled() {
		return m_toggled;
	}
	bool isOn() {
		return m_toggled;
	}
	void setClickable(bool on) {
		m_notClickable = !on;
	}
	void toggleWithCallback(bool on) {
		this->activate();
		this->toggle(on);
	}

	virtual void activate() = android32 0x2da08e;
	virtual void selected() = android32 0x2da074;
	virtual void unselected() = android32 0x2da0a8;
	virtual void setEnabled(bool) = ios 0x198358, android32 0x2d9ffe;

	CCMenuItemSpriteExtra* m_offButton;
	CCMenuItemSpriteExtra* m_onButton;
	bool m_toggled;
	bool m_notClickable;
}

[[link(android)]]
class CCMoveCNode : cocos2d::CCObject {
	// virtual ~CCMoveCNode();

	static CCMoveCNode* create() = android32 0x47b578;

	bool init() = android32 0x47b572;
	TodoReturn reset() = android32 0x47b658;
}

[[link(android)]]
class CCNodeContainer : cocos2d::CCNode {
	// virtual ~CCNodeContainer();

	static CCNodeContainer* create() = android32 0x45bcdc;

	virtual bool init() = android32 0x4788ba;
	virtual void visit() = android32 0x44de76;
}

[[link(android)]]
class CCPartAnimSprite : cocos2d::CCSprite {
	// virtual ~CCPartAnimSprite();

	TodoReturn changeTextureOfID(char const*, char const*) = android32 0x2dad54;
	TodoReturn countParts() = android32 0x2da6b6;
	TodoReturn createWithAnimDesc(char const*, cocos2d::CCTexture2D*, bool) = android32 0x2db0b4;
	TodoReturn dirtify() = android32 0x2da6c8;
	TodoReturn getSpriteForKey(char const*) = android32 0x2da570;
	TodoReturn initWithAnimDesc(char const*, cocos2d::CCTexture2D*, bool) = android32 0x2dadd0;
	void setColor(cocos2d::ccColor3B) = android32 0x2da63c;
	void setFlipX(bool) = android32 0x2da5bc;
	void setFlipY(bool) = android32 0x2da5f4;
	TodoReturn transformSprite(SpriteDescription*) = android32 0x2da93c;
	TodoReturn tweenSpriteTo(SpriteDescription*, float) = android32 0x2daaf8;
	TodoReturn tweenToFrame(cocos2d::CCSpriteFrame*, float) = android32 0x2dac0c;

	virtual void setScaleX(float) = android32 0x2db154;
	virtual void setScaleY(float) = android32 0x2db164;
	virtual void setScale(float) = android32 0x2db144;
	virtual void setOpacity(unsigned char) = android32 0x2da50e = android32 0x2da496;
	virtual void setBlendFunc(cocos2d::_ccBlendFunc) = android32 0x2da430 = android32 0x2da3b4;
	virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = android32 0x2daa3c;
	virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = android32 0x2da3a0;
	virtual cocos2d::CCSpriteFrame* displayFrame() = android32 0x2da3ae;
}

[[link(android)]]
class CCScrollLayerExt : cocos2d::CCLayer {
	// virtual ~CCScrollLayerExt();
	CCScrollLayerExt(cocos2d::CCRect) = ios 0x307634;

	TodoReturn constraintContent() = android32 0x2dbed8;
	TodoReturn doConstraintContent(bool) = android32 0x2dbdc8;
	TodoReturn getMaxY() = android32 0x2dbbbc;
	TodoReturn getMinY() = android32 0x2dbbc2;
	TodoReturn moveToTop() = ios 0x307c78, android32 0x2dbd78;
	TodoReturn moveToTopWithOffset(float) = ios 0x307bd0, android32 0x2dbd10;
	TodoReturn scrollingEnd() = android32 0x2db586;
	TodoReturn scrollLayer(float) = ios 0x308548, android32 0x2dc13c;
	void setContentLayerSize(cocos2d::CCSize) = android32 0x2dc0c4;
	void setContentOffset(cocos2d::CCPoint, bool) = android32 0x2dc0d0;
	TodoReturn updateIndicators(float) = android32 0x2db5ac;

	virtual void visit() = android32 0x2dc1d4;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x30804c, android32 0x2db8cc, android32 0x2db804;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2dbd08 = android32 0x2dbbfc;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2dc098 = android32 0x2dbee0;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2dc0bc = android32 0x2dc0a0;
	virtual void registerWithTouchDispatcher() = android32 0x2db770;
	virtual TodoReturn preVisitWithClippingRect(cocos2d::CCRect) = android32 0x2db790;
	virtual TodoReturn postVisit() = android32 0x2db7fc;

	cocos2d::CCTouch* m_touch;
	cocos2d::CCPoint m_touchPosition;
	cocos2d::CCPoint m_touchStartPosition;
	cocos2d::cc_timeval m_timeValue;
	bool m_touchDown;
	bool m_notAtEndOfScroll;
	cocos2d::CCLayerColor* m_verticalScrollbar;
	cocos2d::CCLayerColor* m_horizontalScrollbar;
	CCScrollLayerExtDelegate* m_delegate;
	CCContentLayer* m_contentLayer;
	bool m_cutContent;
	bool m_vScrollbarVisible;
	bool m_hScrollbarVisible;
	bool m_disableHorizontal;
	bool m_disableVertical;
	bool m_disableMovement;
	float m_scrollLimitTop;
	float m_scrollLimitBottom;
	float m_peekLimitTop;
	float m_peekLimitBottom;
}

[[link(android)]]
class CCScrollLayerExtDelegate {
	virtual TodoReturn scrllViewWillBeginDecelerating(CCScrollLayerExt*);
	virtual TodoReturn scrollViewDidEndDecelerating(CCScrollLayerExt*);
	virtual TodoReturn scrollViewTouchMoving(CCScrollLayerExt*);
	virtual TodoReturn scrollViewDidEndMoving(CCScrollLayerExt*);
	virtual TodoReturn scrollViewTouchBegin(CCScrollLayerExt*);
	virtual TodoReturn scrollViewTouchEnd(CCScrollLayerExt*);
}

[[link(android)]]
class CCSpriteCOpacity : cocos2d::CCSprite {
	// virtual ~CCSpriteCOpacity();

	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*) = android32 0x2f07fc;
	TodoReturn createWithSpriteFrameName(char const*) = android32 0x2f085c;

	virtual void setOpacity(unsigned char) = android32 0x2f047e = android32 0x2f0464;
}

[[link(android)]]
class CCSpriteGrayscale : CCSpriteWithHue {
	// virtual ~CCSpriteGrayscale();

	static CCSpriteGrayscale* create(gd::string const&, cocos2d::CCRect const&) = android32 0x2fa304;
	static CCSpriteGrayscale* create(gd::string const&) = android32 0x2fa288;

	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*) = android32 0x2fa48c;
	static CCSpriteGrayscale* createWithSpriteFrameName(gd::string const&) = android32 0x2fa508;
	TodoReturn createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = android32 0x2fa400;
	TodoReturn createWithTexture(cocos2d::CCTexture2D*) = android32 0x2fa384;

	virtual TodoReturn getShaderName() = android32 0x2f9954;
	virtual TodoReturn shaderBody() = android32 0x2f9914;
}

[[link(android)]]
class CCSpritePart : CCSpritePlus {
	// virtual ~CCSpritePart();

	static CCSpritePart* create(cocos2d::CCTexture2D*) = android32 0x2da808;

	TodoReturn createWithSpriteFrameName(char const*) = android32 0x2da738;
	TodoReturn frameChanged(gd::string) = android32 0x2da8c8;
	TodoReturn getBeingUsed() = android32 0x2da8a4;
	TodoReturn hideInactive() = android32 0x2da894;
	TodoReturn markAsNotBeingUsed() = android32 0x2da8b0;
	TodoReturn resetTextureRect() = android32 0x2da8b8;
	void setBeingUsed(bool) = android32 0x2da8aa;
	TodoReturn updateDisplayFrame(gd::string) = android32 0x2dacf8;

	virtual void setVisible(bool) = android32 0x2da562;
}

[[link(android)]]
class CCSpritePlus : cocos2d::CCSprite {
	// virtual ~CCSpritePlus();

	TodoReturn addFollower(cocos2d::CCNode*) = android32 0x2f077e;
	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*) = android32 0x2f06f4;
	TodoReturn createWithSpriteFrameName(char const*) = android32 0x2f0768;
	TodoReturn followSprite(CCSpritePlus*) = android32 0x2f07ca;
	TodoReturn getFollower() = android32 0x2f07e6;
	TodoReturn removeFollower(cocos2d::CCNode*) = android32 0x2f07aa;
	TodoReturn stopFollow() = android32 0x2f07d8;

	virtual void setScaleX(float) = android32 0x2f0638;
	virtual void setScaleY(float) = android32 0x2f0676;
	virtual void setScale(float) = android32 0x2f06b4;
	virtual void setPosition(cocos2d::CCPoint const&) = android32 0x2f0486;
	virtual void setRotation(float) = android32 0x2f04be;
	virtual void setRotationX(float) = android32 0x2f04f8;
	virtual void setRotationY(float) = android32 0x2f0532;
	virtual bool initWithTexture(cocos2d::CCTexture2D*) = android32 0x2f0454;
	virtual bool initWithSpriteFrameName(char const*) = android32 0x2f044c;
	virtual void setFlipX(bool) = android32 0x2f056c;
	virtual void setFlipY(bool) = android32 0x2f05d2;

	cocos2d::CCArray* m_followers;
	CCSpritePlus* m_followingSprite;
	bool m_hasFollower;
	bool m_propagateScaleChanges;
	bool m_propagateFlipChanges;
}

[[link(android)]]
class CCSpriteWithHue : cocos2d::CCSprite {
	// virtual ~CCSpriteWithHue();
	// CCSpriteWithHue();

	static CCSpriteWithHue* create(gd::string const&, cocos2d::CCRect const&) = android32 0x2f9b24;
	static CCSpriteWithHue* create(gd::string const&) = android32 0x2f9ac4;

	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*) = android32 0x2f9c58;
	TodoReturn createWithSpriteFrameName(gd::string const&) = android32 0x2f9cb8;
	TodoReturn createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = android32 0x2f9be8;
	TodoReturn createWithTexture(cocos2d::CCTexture2D*) = android32 0x2f9b88;
	TodoReturn getAlpha() = android32 0x2f9e38;
	TodoReturn getHue() = android32 0x2f9f78;
	TodoReturn getUniformLocations() = android32 0x2f9cd0;
	TodoReturn initShader() = android32 0x2f9d28;
	void setCustomLuminance(float, float, float) = android32 0x2f9fe8;
	void setEvenLuminance(float) = android32 0x2f9fc8;
	void setHue(float) = android32 0x2fa20a;
	void setHueDegrees(float) = android32 0x2fa240;
	void setLuminance(float) = android32 0x2f9f80;
	TodoReturn setupDefaultSettings() = android32 0x2f9fb8;
	TodoReturn updateColorMatrix() = android32 0x2fa1d4;
	TodoReturn updateHue(float) = android32 0x2fa218;

	virtual void draw() = android32 0x2f9e58;
	virtual bool initWithTexture(cocos2d::CCTexture2D*) = android32 0x2f9988;
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = android32 0x2f9900;
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = android32 0x2fa51e;
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = android32 0x2f99e8;
	virtual TodoReturn getShaderName() = android32 0x2f9920;
	virtual TodoReturn shaderBody() = android32 0x2fa004;
	virtual void updateColor() = android32 0x2fa1f8;
}

[[link(android)]]
class CCTextInputNode : cocos2d::CCLayer, cocos2d::CCIMEDelegate, cocos2d::CCTextFieldDelegate {
	// virtual ~CCTextInputNode();
	CCTextInputNode() {
		m_numberInput = false;
		m_caption = "";
		m_unknown1 = 0;
		m_selected = false;
		m_unknown2 = false;
		m_fontValue1 = -0.5f;
		m_fontValue2 = 8.0f;
		m_isChatFont = false;
		m_allowedChars = "";
		m_maxLabelWidth = 0.0f;
		m_maxLabelScale = 0.0f;
		m_placeholderScale = 0.0f;
		m_placeholderColor = cocos2d::ccc3(0, 0, 0);
		m_textColor = cocos2d::ccc3(0, 0, 0);
		m_cursor = nullptr;
		m_textField = nullptr;
		m_delegate = nullptr;
		m_maxLabelLength = 0;
		m_placeholderLabel = nullptr;
		m_filterSwearWords = false;
		m_usePasswordChar = false;
		m_forceOffset = false;
		m_textArea = nullptr;
	}

	static CCTextInputNode* create(float, float, char const*, char const*, int, char const*) = ios 0x1737d4, android32 0x2ed810;

	static CCTextInputNode* create(float width, float height, char const* placeholder, char const* fontPath) {
		return CCTextInputNode::create(width, height, placeholder, 0x18, fontPath);
	}
	static CCTextInputNode* create(float width, float height, char const* placeholder, int fontSize, char const* fontPath) {
		return CCTextInputNode::create(width, height, placeholder, "Thonburi", fontSize, fontPath);
	}

	void setDelegate(TextInputDelegate* delegate) {
		m_delegate = delegate;
	}
	void setMaxLabelScale(float v) {
		m_maxLabelScale = v;
		this->refreshLabel();
	}
	void setMaxLabelWidth(float v) {
		m_maxLabelWidth = v;
		this->refreshLabel();
	}
	void setMaxLabelLength(int v) {
		m_maxLabelLength = v;
		this->refreshLabel();
	}
	void setLabelPlaceholderScale(float v) {
		m_placeholderScale = v;
		this->refreshLabel();
	}
	void setLabelPlaceholderColor(cocos2d::ccColor3B color) {
		m_placeholderColor = color;
		this->refreshLabel();
	}
	void setAllowedChars(gd::string filter) {
		m_allowedChars = filter;
	}
	cocos2d::CCLabelBMFont* getPlaceholderLabel() {
        return m_placeholderLabel;
    }

	void addTextArea(TextArea* tArea) = android32 0x2edf24;
	void forceOffset() = android32 0x2ee6b8;
	gd::string getString() {
		return m_textField->getString();
	}
	bool init(float, float, char const*, char const*, int, char const*) = android32 0x2ed690;
	void refreshLabel() = ios 0x173ff0, android32 0x2ed97c;
	void setLabelNormalColor(cocos2d::ccColor3B) = android32 0x2edaf2;
	void setString(gd::string) = ios 0x173f1c, android32 0x2edfdc;
	TodoReturn updateBlinkLabel() = android32 0x2eddb0;
	TodoReturn updateBlinkLabelToChar(int) = android32 0x2edb0c;
	TodoReturn updateCursorPosition(cocos2d::CCPoint, cocos2d::CCRect) = ios 0x17532c, android32 0x2ee6c0;
	TodoReturn updateDefaultFontValues(gd::string) = android32 0x2ed618;
	void updateLabel(gd::string label) = android32 0x2eddbc;

	virtual void visit() = android32 0x2eeb0c;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x175770, android32 0x2eeb04, android32 0x2ee9e0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2e971c = android32 0x2e971a;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2e9708 = android32 0x2e9706;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2e9712 = android32 0x2e9710;
	virtual void registerWithTouchDispatcher() = android32 0x2ed4d8;
	virtual TodoReturn textChanged() = android32 0x2ee0a4 = android32 0x2ee040;
	virtual TodoReturn onClickTrackNode(bool) = ios 0x174734, android32 0x2ed554;
	virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&) = android32 0x2e98d4 = android32 0x2e9820;
	virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&) = android32 0x2ed54c = android32 0x2ed4fc;
	virtual bool onTextFieldInsertText(cocos2d::CCTextFieldTTF*, char const*, int, cocos2d::enumKeyCodes) = android32 0x2ee500 = android32 0x2ee30c;
	virtual bool onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF* pSender) = android32 0x2ee6b0 = android32 0x2ee508;
	virtual bool onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF* pSender) = android32 0x2ee304 = android32 0x2ee0ac;

	bool m_numberInput;
	gd::string m_caption;
	int m_unknown1;
	bool m_selected;
	bool m_unknown2;
	float m_fontValue1;
	float m_fontValue2;
	bool m_isChatFont;
	gd::string m_allowedChars;
	float m_maxLabelWidth;
	float m_maxLabelScale;
	float m_placeholderScale;
	cocos2d::ccColor3B m_placeholderColor;
	cocos2d::ccColor3B m_textColor;
	cocos2d::CCLabelBMFont* m_cursor;
	cocos2d::CCTextFieldTTF* m_textField;
	TextInputDelegate* m_delegate;
	int m_maxLabelLength;
	cocos2d::CCLabelBMFont* m_placeholderLabel;
	bool m_filterSwearWords;
	bool m_usePasswordChar;
	bool m_forceOffset;
	TextArea* m_textArea;
	PAD = android32 0xc, android64 0x10;
}

[[link(android)]]
class CCURLObject : cocos2d::CCObject {
	// virtual ~CCURLObject();

	static CCURLObject* create(gd::string, gd::string) = android32 0x313268;

	bool init(gd::string, gd::string) = android32 0x31324c;
}

[[link(android), depends(ChallengesPage), depends(GJChallengeItem)]]
class ChallengeNode : cocos2d::CCNode {
	// virtual ~ChallengeNode();

	static ChallengeNode* create(GJChallengeItem* challengeItem, ChallengesPage* challengesPage, bool isNew) = android32 0x4ab978;

	bool init(GJChallengeItem* challengeItem, ChallengesPage* challengesPage, bool isNew) = android32 0x4ab110;
	void onClaimReward(cocos2d::CCObject* sender) = android32 0x4ac480;
	void updateTimeLabel(gd::string) = android32 0x4ac148;

	ChallengesPage* m_challengesPage;
	GJChallengeItem* m_challengeItem;
	cocos2d::CCPoint m_unkPoint;
	cocos2d::CCLabelBMFont* m_countdownLabel;
	bool m_unloaded;
}

[[link(android)]]
class ChallengesPage : FLAlertLayer, FLAlertLayerProtocol, GJChallengeDelegate, CurrencyRewardDelegate {
	// virtual ~ChallengesPage();

	static ChallengesPage* create() = android32 0x4aaf3c;

	TodoReturn claimItem(ChallengeNode*, GJChallengeItem*, cocos2d::CCPoint) = android32 0x4ac3a0;
	ChallengeNode* createChallengeNode(int number, bool skipAnimation, float animLength, bool isNew) = android32 0x4ab9f0;
	TodoReturn exitNodeAtSlot(int, float) = android32 0x4ab068;
	void onClose(cocos2d::CCObject* sender) = android32 0x4aad70;
	TodoReturn tryGetChallenges() = android32 0x4aae06;
	TodoReturn updateDots() = android32 0x4ab034;
	callback void updateTimers(float) = android32 0x4ac160;

	virtual bool init() = android32 0x4abb78;
	virtual void registerWithTouchDispatcher() = android32 0x4aada8;
	virtual void keyBackClicked() = android32 0x4aada0 = android32 0x4aad9a;
	virtual void show() = android32 0x4aae38;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x4aac12 = android32 0x4aac10;
	virtual TodoReturn challengeStatusFinished() = android32 0x4ac398 = android32 0x4ac2b8;
	virtual TodoReturn challengeStatusFailed() = android32 0x4aad68 = android32 0x4aad00;
	virtual TodoReturn currencyWillExit(CurrencyRewardLayer*) = android32 0x4aac2c = android32 0x4aac1a;

	cocos2d::CCArray* m_dots;
	cocos2d::CCLabelBMFont* m_countdownLabel;
	LoadingCircle* m_circle;
	bool m_triedToLoad;
	bool m_unkBool;
	CurrencyRewardLayer* m_currencyRewardLayer;
	cocos2d::CCDictionary* m_challengeNodes;
}

[[link(android)]]
class ChanceTriggerGameObject : EffectGameObject {
	// virtual ~ChanceTriggerGameObject();

	TodoReturn editChanceObject(int, int) = android32 0x3d32ac;
	bool init(char const*) = android32 0x3d3248;
	TodoReturn remapChanceObjects(gd::unordered_map<int, int> const*) = android32 0x3d3264;
	TodoReturn revertChanceRemap() = android32 0x3d3296;
}

[[link(android)]]
class CharacterColorDelegate {
	virtual TodoReturn playerColorChanged();
	virtual TodoReturn showUnlockPopup(int, UnlockType);
}

[[link(android)]]
class CharacterColorPage : FLAlertLayer {
	// virtual ~CharacterColorPage();

	static CharacterColorPage* create() = android32 0x541c24;

	TodoReturn activeColorForMode(int) = android32 0x541d3a;
	TodoReturn checkColor(int, UnlockType) = android32 0x5420b8;
	TodoReturn colorForIndex(int) = android32 0x5420e4;
	TodoReturn createColorMenu() = android32 0x54219c;
	void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x542e80;
	TodoReturn offsetForIndex(int) = android32 0x542100;
	void onClose(cocos2d::CCObject* sender) = android32 0x5419b0;
	void onMode(cocos2d::CCObject* sender) = android32 0x541fc0;
	void onPlayerColor(cocos2d::CCObject* sender) = android32 0x54257c;
	TodoReturn toggleGlow(cocos2d::CCObject*) = android32 0x542558;
	TodoReturn toggleGlowItems(bool) = android32 0x541d08;
	TodoReturn toggleShip(cocos2d::CCObject*) = android32 0x541a90;
	TodoReturn updateColorMode(int) = android32 0x541d78;
	TodoReturn updateIconColors() = android32 0x542438;

	virtual bool init() = android32 0x54270c;
	virtual void registerWithTouchDispatcher() = android32 0x541afc;
	virtual void keyBackClicked() = android32 0x5419e2 = android32 0x5419dc;
	virtual void show() = android32 0x541b20;
}

[[link(android)]]
class CheckpointGameObject : EffectGameObject {
	// virtual ~CheckpointGameObject();

	static CheckpointGameObject* create() = android32 0x3d38a8;

	TodoReturn resetCheckpoint() = android32 0x3d3e3c;
	TodoReturn updateCheckpointSpriteVisibility() = android32 0x3d390c;

	virtual bool init() = android32 0x3d0d44;
	virtual TodoReturn setupCustomSprites(gd::string) = android32 0x3cc724;
	virtual TodoReturn resetObject() = android32 0x3d3e48;
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = android32 0x3c8e1e;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3d2390;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e2000;
	virtual TodoReturn triggerActivated(float) = android32 0x3d3a20;
	virtual TodoReturn restoreObject() = android32 0x3d3e74;
	virtual TodoReturn updateSyncedAnimation(float, int) = android32 0x3d3be0;
}

[[link(android)]]
class CheckpointObject : cocos2d::CCNode {
	// virtual ~CheckpointObject();

	static CheckpointObject* create() = android32 0x30acbc;

	TodoReturn getObject() = android32 0x3075ae;
	void setObject(GameObject*) = android32 0x307588;

	virtual bool init() = android32 0x312864;
}

[[link(android)]]
class CollisionBlockPopup : FLAlertLayer, TextInputDelegate {
	// virtual ~CollisionBlockPopup();

	static CollisionBlockPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x4ad104;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = android32 0x4ac71c;
	TodoReturn determineStartValues() = android32 0x4ac6a4;
	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x4ac9d0;
	void onClose(cocos2d::CCObject* sender) = android32 0x4ac906;
	void onDynamicBlock(cocos2d::CCObject* sender) = android32 0x4ac8b8;
	void onItemIDArrow(cocos2d::CCObject* sender) = android32 0x4ad298;
	void onNextItemID(cocos2d::CCObject* sender) = android32 0x4ad2cc;
	TodoReturn updateEditorLabel() = android32 0x4ac878;
	TodoReturn updateItemID() = android32 0x4ad1f0;
	TodoReturn updateTextInputLabel() = android32 0x4ac964;

	virtual void keyBackClicked() = android32 0x4ac95a = android32 0x4ac954;
	virtual void show() = android32 0x4ac5c2;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x4ac520 = android32 0x4ac518;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x4ad290 = android32 0x4ad244;
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float) = android32 0x4ac648 = android32 0x4ac5f8;
	virtual TodoReturn textInputReturn(CCTextInputNode*) = android32 0x4ac69c = android32 0x4ac650;
}

[[link(android)]]
class ColorAction : cocos2d::CCObject {
	// virtual ~ColorAction();

	static ColorAction* create() = android32 0x47a120;
	static ColorAction* create(cocos2d::ccColor3B, bool, int) = android32 0x47a160;
	static ColorAction* create(cocos2d::ccColor3B, cocos2d::ccColor3B, float, double, bool, int, float, float) = android32 0x47a04c;
	static ColorAction* create(cocos2d::ccColor3B, cocos2d::ccColor3B, float, double, bool) = android32 0x47a184;

	TodoReturn getCopy() = android32 0x47a404;
	bool init(cocos2d::ccColor3B, cocos2d::ccColor3B, float, double, bool, int, float, float) = android32 0x47a00c;
	bool isInUse() = android32 0x47a2a8;
	TodoReturn loadFromState(CAState&) = android32 0x47a388;
	TodoReturn resetAction() = android32 0x47a298;
	TodoReturn saveToState(CAState&) = android32 0x47a314;
	TodoReturn setupFromMap(gd::map<gd::string, gd::string>&) = android32 0x47e078;
	TodoReturn setupFromString(gd::string) = android32 0x47e410;
	TodoReturn step(float) = android32 0x47a1ac;
	TodoReturn updateCustomColor(cocos2d::ccColor3B, cocos2d::ccColor3B) = android32 0x47a2ee;
	// TodoReturn writeSaveString(fmt::BasicWriter<char>&);

	bool m_stepFinished;
	// property 19
	bool m_property19;
	cocos2d::ccColor3B m_color;
	float m_currentOpacity;
	float m_deltaTime;
	cocos2d::ccColor3B m_fromColor;
	cocos2d::ccColor3B m_toColor;
	float m_duration;
	bool m_blending;
	int m_playerColor;
	int m_colorID;
	float m_fromOpacity;
	float m_toOpacity;
	cocos2d::ccHSVValue m_copyHSV;
	int m_copyID;
	bool m_unknown;
	bool m_copyOpacity;
	ColorActionSprite* m_colorSprite;
	// more stuff
}

[[link(android)]]
class ColorAction2 {
	ColorAction2(cocos2d::ccColor3B, cocos2d::ccColor3B, float, double, bool, int, float, float);

	TodoReturn resetAction() = android32 0x566dee;
	TodoReturn step(float) = android32 0x566d18;
	TodoReturn updateCustomColor(cocos2d::ccColor3B, cocos2d::ccColor3B) = android32 0x566dfa;
}

[[link(android)]]
class ColorActionSprite : cocos2d::CCNode {
	// virtual ~ColorActionSprite();

	static ColorActionSprite* create() = android32 0x479e40;

	virtual bool init() = android32 0x486bcc;
}

[[link(android)]]
class ColorChannelSprite : cocos2d::CCSprite {
	// virtual ~ColorChannelSprite();

	static ColorChannelSprite* create() = ios 0x1008c, android32 0x479924;

	TodoReturn updateBlending(bool) = android32 0x479bfc;
	TodoReturn updateCopyLabel(int, bool) = android32 0x47998c;
	void updateOpacity(float) = ios 0x102d4, android32 0x479adc;
	TodoReturn updateValues(ColorAction*) = android32 0x479cd0;

	virtual bool init() = android32 0x479204;
}

[[link(android)]]
class ColorSelectDelegate {
	virtual void colorSelectClosed(cocos2d::CCNode*) {}
}

[[link(android)]]
class ColorSelectLiveOverlay : FLAlertLayer {
	// virtual ~ColorSelectLiveOverlay();

	static ColorSelectLiveOverlay* create(ColorAction*, ColorAction*, EffectGameObject*) = android32 0x4ae698;

	TodoReturn closeColorSelect(cocos2d::CCObject*) = android32 0x4ad2f8;
	TodoReturn colorValueChanged(cocos2d::ccColor3B) = android32 0x4ad638;
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = android32 0x4ad4ac;
	TodoReturn createWithActions(ColorAction*, ColorAction*) = android32 0x4ae7ba;
	TodoReturn createWithObject(EffectGameObject*) = android32 0x4ae7b0;
	TodoReturn determineStartValues() = android32 0x4ad422;
	TodoReturn getColorValue() = android32 0x4adae8;
	bool init(ColorAction*, ColorAction*, EffectGameObject*) = android32 0x4ae670;
	void onSelectTab(cocos2d::CCObject* sender) = android32 0x4ae7c0;
	TodoReturn selectColor(cocos2d::ccColor3B) = android32 0x4ad890;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x4ad688;
	TodoReturn textChanged(CCTextInputNode*) = android32 0x4adb14;
	TodoReturn textInputClosed(CCTextInputNode*) = android32 0x4adb16;
	TodoReturn toggleControls(bool) = android32 0x4adb1a;
	TodoReturn updateColorLabel() = android32 0x4adb48;
	TodoReturn updateColorValue() = android32 0x4ad63e;
	TodoReturn updateOpacity() = android32 0x4ad60c;

	virtual void keyBackClicked() = android32 0x4ad334 = android32 0x4ad32e;
	virtual void show() = android32 0x4ad3ee;

	EffectGameObject* m_effectGameObject;
	cocos2d::CCArray* m_barSprites;
	cocos2d::CCArray* m_12buttons;
	ColorAction* m_baseColorAction;
	ColorAction* m_detailColorAction;
}

[[link(android)]]
class ColorSelectPopup : SetupTriggerPopup, cocos2d::extension::ColorPickerDelegate, GJSpecialColorSelectDelegate {
	// virtual ~ColorSelectPopup();

	static ColorSelectPopup* create(cocos2d::ccColor3B) = android32 0x3c5088;
	static ColorSelectPopup* create(ColorAction*) = android32 0x3c507e;
	static ColorSelectPopup* create(EffectGameObject*, cocos2d::CCArray*, ColorAction*) = android32 0x3c4e44;
	static ColorSelectPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x3c5078;

	TodoReturn closeColorSelect(cocos2d::CCObject*) = android32 0x3c51a4;
	TodoReturn colorToHex(cocos2d::ccColor3B) = android32 0x3c52b8;
	TodoReturn getColorValue() = android32 0x3c2dfc;
	TodoReturn hexToColor(gd::string) = android32 0x3c5794;
	bool init(EffectGameObject*, cocos2d::CCArray*, ColorAction*) = android32 0x3c32e4;
	void onCopy(cocos2d::CCObject* sender) = android32 0x3c2e28;
	void onCopyOpacity(cocos2d::CCObject* sender) = android32 0x3c28bc;
	void onDefault(cocos2d::CCObject* sender) = android32 0x3c2c68;
	void onHSVLegacyMode(cocos2d::CCObject* sender) = android32 0x3c290e;
	void onPaste(cocos2d::CCObject* sender) = android32 0x3c2c3a;
	void onPlayerColor1(cocos2d::CCObject* sender) = android32 0x3c277a;
	void onPlayerColor2(cocos2d::CCObject* sender) = android32 0x3c27ea;
	void onSelectSpecialColor(cocos2d::CCObject* sender) = android32 0x3c26fc;
	void onTintGround(cocos2d::CCObject* sender) = android32 0x3c2732;
	void onToggleHSVMode(cocos2d::CCObject* sender) = android32 0x3c5108;
	void onToggleTintMode(cocos2d::CCObject* sender) = android32 0x3c2860;
	void onUpdateCopyColor(cocos2d::CCObject* sender) = android32 0x3c50ba;
	void onUpdateCustomColor(cocos2d::CCObject* sender) = android32 0x3c2f8c;
	TodoReturn selectColor(cocos2d::ccColor3B) = android32 0x3c2c1e;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x3c2ae0;
	TodoReturn updateColorLabels() = android32 0x3c53f8;
	TodoReturn updateColorValue() = android32 0x3c2b98;
	TodoReturn updateCopyColor() = android32 0x3c309c;
	TodoReturn updateCopyColorTextInputLabel() = android32 0x3c3234;
	TodoReturn updateCustomColorIdx() = android32 0x3c2e90;
	TodoReturn updateDuration() = android32 0x3c2956;
	TodoReturn updateDurLabel() = android32 0x3c29ec;
	TodoReturn updateHSVMode() = android32 0x3c2fe0;
	TodoReturn updateHSVValue() = android32 0x3c5132;
	TodoReturn updateOpacity() = android32 0x3c299a;
	TodoReturn updateOpacityLabel() = android32 0x3c2aa8;
	TodoReturn updateTextInputLabel() = android32 0x3c2edc;

	virtual void show() = android32 0x3c2e50;
	virtual TodoReturn determineStartValues() = android32 0x3c2314;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x3c5bec = android32 0x3c59f8;
	virtual TodoReturn colorValueChanged(cocos2d::ccColor3B) = android32 0x3c5562 = android32 0x3c5508;
	virtual TodoReturn colorSelectClosed(GJSpecialColorSelect*, int) = android32 0x3c322c = android32 0x3c310c;

	PAD = android32 0x40, win 0x40;
	ColorAction* m_colorAction;
}

[[link(android)]]
class ColorSetupDelegate {
	virtual TodoReturn colorSetupClosed(int);
}

[[link(android)]]
class CommentCell : TableViewCell, LikeItemDelegate, FLAlertLayerProtocol {
	// virtual ~CommentCell();
	CommentCell(char const*, float, float);

	TodoReturn incrementDislikes() = android32 0x3291e2;
	TodoReturn incrementLikes() = android32 0x3291d0;
	void loadFromComment(GJComment*) = android32 0x327d3c;
	void onConfirmDelete(cocos2d::CCObject* sender) = android32 0x321884;
	TodoReturn onDelete() = android32 0x329216;
	void onGoToLevel(cocos2d::CCObject* sender) = android32 0x321538;
	void onLike(cocos2d::CCObject* sender) = android32 0x3217ec;
	TodoReturn onUndelete() = android32 0x329298;
	void onUnhide(cocos2d::CCObject* sender) = android32 0x3290bc;
	void onViewProfile(cocos2d::CCObject* sender) = android32 0x3210de;
	TodoReturn updateBGColor(int) = android32 0x3290cc;
	TodoReturn updateLabelValues() = android32 0x329160;

	virtual bool init() = android32 0x31fcce;
	virtual void draw() = android32 0x3208a0;
	virtual TodoReturn likedItem(LikeItemType, int, bool) = android32 0x32920e = android32 0x3291f4;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x329290 = android32 0x329266;

	cocos2d::CCSprite* m_iconSprite;
	cocos2d::CCLabelBMFont* m_likeLabel;
	GJComment* m_comment;
	bool m_accountComment;
}

[[link(android)]]
class CommentUploadDelegate {
	virtual TodoReturn commentUploadFinished(int);
	virtual TodoReturn commentUploadFailed(int, CommentError);
	virtual TodoReturn commentDeleteFailed(int, int);
}

[[link(android)]]
class CommunityCreditNode : cocos2d::CCNode {
	// virtual ~CommunityCreditNode();

	static CommunityCreditNode* create(int, int, int, gd::string) = android32 0x4e4884;

	bool init(int, int, int, gd::string) = android32 0x4e4854;
}

[[link(android)]]
class CommunityCreditsPage : FLAlertLayer {
	// virtual ~CommunityCreditsPage();

	static CommunityCreditsPage* create() = android32 0x4e4938;

	void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x4e6074;
	TodoReturn goToPage(int) = android32 0x4e4a0c;
	void onClose(cocos2d::CCObject* sender) = android32 0x4e4644;
	void onSwitchPage(cocos2d::CCObject* sender) = android32 0x4e4ab0;

	virtual bool init() = android32 0x4e4ad4;
	virtual void registerWithTouchDispatcher() = android32 0x4e472c;
	virtual void keyBackClicked() = android32 0x4e4668 = android32 0x4e4662;
	virtual void show() = android32 0x4e4750;
}

[[link(android)]]
class ConfigureHSVWidget : cocos2d::CCNode, TextInputDelegate {
	// virtual ~ConfigureHSVWidget();

	static ConfigureHSVWidget* create(cocos2d::ccHSVValue, bool, bool) = android32 0x496e68;

	TodoReturn createTextInputNode(cocos2d::CCPoint, int) = android32 0x495fbc;
	TodoReturn getHSV(GameObject*, cocos2d::CCArray*, int) = android32 0x497258;
	bool init(cocos2d::ccHSVValue, bool, bool) = android32 0x496820;
	TodoReturn onClose() = android32 0x49614c;
	void onResetHSV(cocos2d::CCObject* sender) = android32 0x4967cc;
	void onToggleSConst(cocos2d::CCObject* sender) = android32 0x496724;
	void onToggleVConst(cocos2d::CCObject* sender) = android32 0x496778;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x496650;
	TodoReturn updateLabels() = android32 0x4963c4;
	TodoReturn updateSliders() = android32 0x4961fc;

	virtual TodoReturn textInputOpened(CCTextInputNode*) = android32 0x495ee6 = android32 0x495ee4;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x495ef6 = android32 0x495eee;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x4963bc = android32 0x4962c8;
}

[[link(android)]]
class ConfigureValuePopup : FLAlertLayer, TextInputDelegate {
	// virtual ~ConfigureValuePopup();

	static ConfigureValuePopup* create(ConfigureValuePopupDelegate*, float, float, float, gd::string, gd::string) = android32 0x4aeff4;

	bool init(ConfigureValuePopupDelegate*, float, float, float, gd::string, gd::string) = android32 0x4aeac4;
	void onClose(cocos2d::CCObject* sender) = android32 0x4ae8a8;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x4af140;
	TodoReturn updateTextInputLabel() = android32 0x4aea50;

	virtual void keyBackClicked() = android32 0x4ae8fc = android32 0x4ae8f6;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x4ae8a0 = android32 0x4ae898;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x4aea48 = android32 0x4ae984;
}

[[link(android)]]
class ConfigureValuePopupDelegate {
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float);
}

[[link(android)]]
class CountTriggerAction {
	// CountTriggerAction(CountTriggerAction&&);
}

[[link(android)]]
class CountTriggerGameObject : EffectGameObject {
	// virtual ~CountTriggerGameObject();

	static CountTriggerGameObject* create(char const*) = android32 0x3d3ea4;

	bool init(char const*) = android32 0x3d3ea0;

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = android32 0x3d6558;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3cb738;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e21b8;
}

[[link(android)]]
class CreateGuidelinesLayer : FLAlertLayer, FLAlertLayerProtocol {
	// virtual ~CreateGuidelinesLayer();

	static CreateGuidelinesLayer* create(CustomSongDelegate*, AudioGuidelinesType) = android32 0x2fcb34;

	TodoReturn doClearGuidelines() = android32 0x2fbb54;
	TodoReturn getMergedRecordString(gd::string, gd::string) = android32 0x2fbc00;
	bool init(CustomSongDelegate*, AudioGuidelinesType) = android32 0x2fc08c;
	void onClearGuidelines(cocos2d::CCObject* sender) = android32 0x2fb6fc;
	void onStop(cocos2d::CCObject* sender) = android32 0x2fbf58;
	TodoReturn toggleItems(bool) = android32 0x2fbf00;

	virtual void update(float) = android32 0x2fb588;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2fba00 = android32 0x2fb988;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2fb5ba = android32 0x2fb5b8;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2fba64 = android32 0x2fba08;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2fb5ca = android32 0x2fb5c2;
	virtual void registerWithTouchDispatcher() = android32 0x2fb888;
	virtual void keyBackClicked() = android32 0x2fb97e = android32 0x2fb96e;
	virtual void keyDown(cocos2d::enumKeyCodes) = android32 0x2fba84 = android32 0x2fba6c;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x2fbbf8 = android32 0x2fbbd8;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x2fb59a;
	virtual void keyUp(cocos2d::enumKeyCodes) = android32 0x2fb5d4 = android32 0x2fb5d2;
	virtual TodoReturn playMusic() = android32 0x2fb77c;
	virtual TodoReturn registerTouch() = android32 0x2fb7e4;
	virtual void onInfo(cocos2d::CCObject* sender) = android32 0x2fb814;
	virtual void onRecord(cocos2d::CCObject* sender) = android32 0x2fbf94;
	virtual TodoReturn recordingDidStop() = android32 0x2fbd94;
}

[[link(android)]]
class CreateMenuItem : CCMenuItemSpriteExtra {
	// virtual ~CreateMenuItem();

	static CreateMenuItem* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = android32 0x370eb4;

	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = android32 0x370ea0;
}

[[link(android)]]
class CreateParticlePopup : FLAlertLayer, TextInputDelegate, ColorSelectDelegate, SliderDelegate {
	// virtual ~CreateParticlePopup();

	static CreateParticlePopup* create(gd::string) = android32 0x512588;
	static CreateParticlePopup* create(ParticleGameObject*, cocos2d::CCArray*, gd::string) = android32 0x512384;
	static CreateParticlePopup* create(ParticleGameObject*, cocos2d::CCArray*) = android32 0x512530;

	TodoReturn centerAlignParticle(cocos2d::CCObject*) = android32 0x50ca90;
	TodoReturn createParticleSlider(gjParticleValue, int, bool, cocos2d::CCPoint, cocos2d::CCArray*) = android32 0x50e9d8;
	TodoReturn getPage(int) = android32 0x50d5d8;
	TodoReturn getPageButton(int) = android32 0x50d602;
	TodoReturn getPageContainer(int) = android32 0x50d5e8;
	TodoReturn getPageInputNodes(int) = android32 0x50d5f2;
	TodoReturn getPageMenu(int) = android32 0x50d5e2;
	TodoReturn getPageSliders(int) = android32 0x50d5fa;
	bool init(ParticleGameObject*, cocos2d::CCArray*, gd::string) = android32 0x50fcd4;
	TodoReturn maxSliderValueForType(gjParticleValue) = android32 0x50dd9c;
	TodoReturn minSliderValueForType(gjParticleValue) = android32 0x50dd80;
	void onAnimateActiveOnly(cocos2d::CCObject* sender) = android32 0x50d34e;
	void onAnimateOnTrigger(cocos2d::CCObject* sender) = android32 0x50d306;
	void onCalcEmission(cocos2d::CCObject* sender) = android32 0x50f374;
	void onClose(cocos2d::CCObject* sender) = android32 0x50faf4;
	void onCopySettings(cocos2d::CCObject* sender) = android32 0x50cb6c;
	void onDuplicateColor(cocos2d::CCObject* sender) = android32 0x50f034;
	void onDurationForever(cocos2d::CCObject* sender) = android32 0x50f314;
	void onDynamicColor(cocos2d::CCObject* sender) = android32 0x50cad4;
	void onDynamicRotation(cocos2d::CCObject* sender) = android32 0x50e564;
	void onEmitterMode(cocos2d::CCObject* sender) = android32 0x50fa0c;
	void onEndRGBVarSync(cocos2d::CCObject* sender) = android32 0x50e5c4;
	void onMaxEmission(cocos2d::CCObject* sender) = android32 0x50f344;
	void onMode(cocos2d::CCObject* sender) = android32 0x50cc08;
	void onOrderSensitive(cocos2d::CCObject* sender) = android32 0x50e584;
	void onPage(cocos2d::CCObject* sender) = android32 0x50f894;
	void onPasteSettings(cocos2d::CCObject* sender) = android32 0x50fab8;
	void onPosType(cocos2d::CCObject* sender) = android32 0x50e758;
	void onQuickStart(cocos2d::CCObject* sender) = android32 0x50d396;
	void onSelectColor(cocos2d::CCObject* sender) = android32 0x50d3e0;
	void onSelectParticleTexture(cocos2d::CCObject* sender) = android32 0x50e66c;
	void onStartRGBVarSync(cocos2d::CCObject* sender) = android32 0x50e5a4;
	void onToggleBlending(cocos2d::CCObject* sender) = android32 0x50e4a4;
	void onToggleStartRadiusEqualToEnd(cocos2d::CCObject* sender) = android32 0x50e4f4;
	void onToggleStartRotationIsDir(cocos2d::CCObject* sender) = android32 0x50e534;
	void onToggleStartSizeEqualToEnd(cocos2d::CCObject* sender) = android32 0x50e4d4;
	void onToggleStartSpinEqualToEnd(cocos2d::CCObject* sender) = android32 0x50e514;
	void onUniformColor(cocos2d::CCObject* sender) = android32 0x50e5e4;
	TodoReturn particleValueIsInt(gjParticleValue) = android32 0x50e8d8;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x50f3f8;
	TodoReturn titleForParticleValue(gjParticleValue) = android32 0x50d6e8;
	TodoReturn toggleGravityMode(bool) = android32 0x50f76c;
	TodoReturn updateColorSprite(int) = android32 0x50d60c;
	TodoReturn updateInputNodeStringForType(gjParticleValue) = android32 0x50e8f4;
	TodoReturn updateParticleValueForType(float, gjParticleValue, cocos2d::CCParticleSystemQuad*) = android32 0x50ddbc;
	TodoReturn updateSliderForType(gjParticleValue) = android32 0x50e7ac;
	TodoReturn valueForParticleValue(gjParticleValue) = android32 0x50da08;
	TodoReturn willClose() = android32 0x50fa68;

	virtual void update(float) = android32 0x50d49c;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x50ce10 = android32 0x50cd58;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x50f764 = android32 0x50f490;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x50ca86 = android32 0x50ca6a;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x50c970 = android32 0x50c968;
	virtual void keyBackClicked() = android32 0x50fbce = android32 0x50fbc8;
	virtual TodoReturn sliderBegan(Slider*) = android32 0x50c94c = android32 0x50c906;
	virtual TodoReturn sliderEnded(Slider*) = android32 0x50c960 = android32 0x50c954;
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*) = android32 0x50f30c = android32 0x50f134;
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float) = android32 0x50ccfc = android32 0x50ccac;
	virtual TodoReturn textInputReturn(CCTextInputNode*) = android32 0x50cd50 = android32 0x50cd04;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x50c8fe = android32 0x50c8f6;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x50e8d0 = android32 0x50e83c;
}

[[link(android)]]
class CreatorLayer : cocos2d::CCLayer, cocos2d::CCSceneTransitionDelegate, DialogDelegate {
	// virtual ~CreatorLayer();

	static CreatorLayer* create() = android32 0x3955d8;

	TodoReturn canPlayOnlineLevels() = android32 0x39569e;
	TodoReturn checkQuestsStatus() = android32 0x395830;
	void onAdventureMap(cocos2d::CCObject* sender) = android32 0x395018;
	void onBack(cocos2d::CCObject* sender) = android32 0x395534;
	void onChallenge(cocos2d::CCObject* sender) = android32 0x39506c;
	void onDailyLevel(cocos2d::CCObject* sender) = android32 0x3956d8;
	void onEventLevel(cocos2d::CCObject* sender) = android32 0x394d20;
	void onFameLevels(cocos2d::CCObject* sender) = android32 0x395800;
	void onFeaturedLevels(cocos2d::CCObject* sender) = android32 0x3956a2;
	void onGauntlets(cocos2d::CCObject* sender) = android32 0x394fea;
	void onLeaderboards(cocos2d::CCObject* sender) = android32 0x394f84;
	void onMapPacks(cocos2d::CCObject* sender) = android32 0x394df0;
	void onMultiplayer(cocos2d::CCObject* sender) = android32 0x394b10;
	void onMyLevels(cocos2d::CCObject* sender) = android32 0x394e20;
	void onOnlineLevels(cocos2d::CCObject* sender) = android32 0x394fc0;
	void onOnlyFullVersion(cocos2d::CCObject* sender) = android32 0x395710;
	void onPaths(cocos2d::CCObject* sender) = android32 0x394fae;
	void onSavedLevels(cocos2d::CCObject* sender) = android32 0x394eb8;
	void onSecretVault(cocos2d::CCObject* sender) = android32 0x395090;
	void onTopLists(cocos2d::CCObject* sender) = android32 0x394f4c;
	void onTreasureRoom(cocos2d::CCObject* sender) = android32 0x395270;
	void onWeeklyLevel(cocos2d::CCObject* sender) = android32 0x3956f4;
	static cocos2d::CCScene* scene() = android32 0x395670;

	virtual bool init() = android32 0x395904;
	virtual void keyBackClicked() = android32 0x395570 = android32 0x39556a;
	virtual void sceneWillResume() = android32 0x3958fc = android32 0x3958d8;
	virtual TodoReturn dialogClosed(DialogLayer*) = android32 0x3955d0 = android32 0x395578;
}

[[link(android)]]
class CurrencyRewardDelegate {
	virtual TodoReturn currencyWillExit(CurrencyRewardLayer*);
}

[[link(android)]]
class CurrencyRewardLayer : cocos2d::CCLayer {
	// virtual ~CurrencyRewardLayer();

	static CurrencyRewardLayer* create(int, int, int, int, CurrencySpriteType, int, CurrencySpriteType, int, cocos2d::CCPoint, CurrencyRewardType, float, float) = android32 0x4b2528;

	TodoReturn createObjects(CurrencySpriteType, int, cocos2d::CCPoint, float) = android32 0x4b0fe8;
	TodoReturn createObjectsFull(CurrencySpriteType, int, cocos2d::CCSprite*, cocos2d::CCPoint, float) = android32 0x4b0598;
	TodoReturn createUnlockObject(cocos2d::CCSprite*, cocos2d::CCPoint, float) = android32 0x4b0fa0;
	TodoReturn incrementCount(int) = android32 0x4af5a4;
	TodoReturn incrementDiamondsCount(int) = android32 0x4af730;
	TodoReturn incrementMoonsCount(int) = android32 0x4af6ac;
	TodoReturn incrementSpecialCount1(int) = android32 0x4af7b4;
	TodoReturn incrementSpecialCount2(int) = android32 0x4af838;
	TodoReturn incrementStarsCount(int) = android32 0x4af628;
	bool init(int, int, int, int, CurrencySpriteType, int, CurrencySpriteType, int, cocos2d::CCPoint, CurrencyRewardType, float, float) = android32 0x4b1030;
	TodoReturn pulseSprite(cocos2d::CCSprite*) = android32 0x4af2b0;

	virtual void update(float) = android32 0x4af8bc;
}

[[link(android)]]
class CurrencySprite : CCSpritePlus {
	// virtual ~CurrencySprite();
	// CurrencySprite();

	static CurrencySprite* create(CurrencySpriteType, bool) = android32 0x4b0554;

	TodoReturn createWithSprite(cocos2d::CCSprite*) = android32 0x4af494;
	bool init(CurrencySpriteType, bool) = android32 0x4afde8;
	TodoReturn initWithSprite(cocos2d::CCSprite*) = android32 0x4af328;
	TodoReturn rewardToSpriteType(int) = android32 0x4af4d4;
	TodoReturn spriteTypeToStat(CurrencySpriteType) = android32 0x4af4ec;
}

[[link(android)]]
class CustomizeObjectLayer : FLAlertLayer, TextInputDelegate, HSVWidgetDelegate, ColorSelectDelegate, ColorSetupDelegate {
	// virtual ~CustomizeObjectLayer();

	static CustomizeObjectLayer* create(GameObject*, cocos2d::CCArray*) = android32 0x445928;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = android32 0x4432d8;
	TodoReturn determineStartValues() = android32 0x443460;
	int getActiveMode(bool) = android32 0x443810;
	TodoReturn getButtonByTag(int) = android32 0x443a08;
	TodoReturn getHSV() = android32 0x443502;
	TodoReturn highlightSelected(ButtonSprite*) = android32 0x443c40;
	bool init(GameObject*, cocos2d::CCArray*) = android32 0x4440d0;
	void onBreakApart(cocos2d::CCObject* sender) = android32 0x44306a;
	void onBrowse(cocos2d::CCObject* sender) = android32 0x442e8e;
	void onClear(cocos2d::CCObject* sender) = android32 0x442ebc;
	void onClose(cocos2d::CCObject* sender) = android32 0x442ffc;
	void onCopy(cocos2d::CCObject* sender) = android32 0x442e76;
	void onEditColor(cocos2d::CCObject* sender) = android32 0x4438c8;
	void onHSV(cocos2d::CCObject* sender) = android32 0x4436d0;
	void onLiveEdit(cocos2d::CCObject* sender) = android32 0x44389c;
	void onNextColorChannel(cocos2d::CCObject* sender) = android32 0x443da4;
	void onPaste(cocos2d::CCObject* sender) = android32 0x443e4e;
	void onSelectColor(cocos2d::CCObject* sender) = android32 0x443cfc;
	void onSelectMode(cocos2d::CCObject* sender) = android32 0x443f50;
	void onSettings(cocos2d::CCObject* sender) = android32 0x445ee4;
	void onUpdateCustomColor(cocos2d::CCObject* sender) = android32 0x443be0;
	TodoReturn recreateLayer() = android32 0x445a60;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x4432ac;
	TodoReturn toggleVisible() = android32 0x443e8c;
	TodoReturn updateChannelLabel(int) = android32 0x4437cc;
	TodoReturn updateColorSprite() = android32 0x443902;
	TodoReturn updateCurrentSelection() = android32 0x443e0a;
	TodoReturn updateCustomColorLabels() = android32 0x44399c;
	TodoReturn updateHSVButtons() = android32 0x44351c;
	TodoReturn updateKerningLabel() = android32 0x4431ec;
	TodoReturn updateSelected(int) = android32 0x443a3e;

	virtual void keyBackClicked() = android32 0x443096 = android32 0x443090;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = android32 0x442ff4 = android32 0x442f50;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x442da2 = android32 0x442d9a;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x443bd8 = android32 0x443b00;
	virtual TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue) = android32 0x4436c8 = android32 0x443654;
	virtual void colorSelectClosed(cocos2d::CCNode*) = android32 0x443992 = android32 0x44398e;
	virtual TodoReturn colorSetupClosed(int) = android32 0x443d9c = android32 0x443d48;

    GameObject* m_targetObject;
    cocos2d::CCArray* m_targetObjects;
    cocos2d::CCArray* m_colorButtons;
    cocos2d::CCArray* m_colorTabNodes;
    cocos2d::CCArray* m_textTabNodes;
	cocos2d::CCArray* m_unkArray;
    cocos2d::CCArray* m_detailTabNodes;
    int m_selectedMode;
    int m_customColorChannel;
    bool m_unk0x200;
    bool m_unk0x201;
    bool m_glowDisabled;
    CCMenuItemSpriteExtra* m_baseButton;
    CCMenuItemSpriteExtra* m_detailButton;
    CCMenuItemSpriteExtra* m_textButton;
    CCMenuItemSpriteExtra* m_baseColorHSV;
    CCMenuItemSpriteExtra* m_detailColorHSV;
    cocos2d::CCLabelBMFont* m_titleLabel;
    cocos2d::CCLabelBMFont* m_selectedColorLabel;
    CCTextInputNode* m_customColorInput;
    CCTextInputNode* m_textInput;
	int m_kerningAmount;
	cocos2d::CCLabelBMFont* m_kerningLabel;
	Slider* m_kerningSlider;
    ButtonSprite* m_customColorButtonSprite;
    CCMenuItemSpriteExtra* m_customColorButton;
    CCMenuItemSpriteExtra* m_arrowDown;
    CCMenuItemSpriteExtra* m_arrowUp;
    cocos2d::extension::CCScale9Sprite* m_customColorInputBG;
    ColorChannelSprite* m_colorSprite;
    CCMenuItemSpriteExtra* m_colorSpriteButton;
    CCMenuItemSpriteExtra* m_liveSelectButton;
    bool m_showTextInput;
    bool m_customColorSelected;
}

[[link(android)]]
class CustomizeObjectSettingsPopup : SetupTriggerPopup {
	// virtual ~CustomizeObjectSettingsPopup();

	static CustomizeObjectSettingsPopup* create(GameObject*, cocos2d::CCArray*, CustomizeObjectLayer*) = android32 0x445d34;

	bool init(GameObject*, cocos2d::CCArray*, CustomizeObjectLayer*) = android32 0x445af4;

	virtual void onClose(cocos2d::CCObject* sender) = android32 0x445aba;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = android32 0x44309e;
}

[[link(android)]]
class CustomListView : BoomListView {
	inline CustomListView() {}
	~CustomListView() {}

	static CustomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = ios 0x1011fc, android32 0x3225a4;

	static CustomListView* create(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
		return CustomListView::create(entries, nullptr, width, height, 0, type, 0.0f);
	}

	TodoReturn getCellHeight(BoomListType) = android32 0x322674;
	TodoReturn reloadAll() = android32 0x32c39c;

	virtual TodoReturn setupList(float) = android32 0x322694;
	virtual TableViewCell* getListCell(char const*) = android32 0x32d510;
	virtual TodoReturn loadCell(TableViewCell*, int) = android32 0x32da08;

	int m_unknown;
}

[[link(android)]]
class CustomMusicCell : CustomSongCell {
	// virtual ~CustomMusicCell();
	CustomMusicCell(char const*, float, float);

	TodoReturn loadFromObject(SongInfoObject*) = android32 0x3275a8;
	TodoReturn updateBGColor(int) = android32 0x327650;
}

[[link(android)]]
class CustomSFXCell : TableViewCell, CustomSFXDelegate {
	// virtual ~CustomSFXCell();
	CustomSFXCell(char const*, float, float);

	TodoReturn loadFromObject(SFXInfoObject*) = android32 0x3273b8;
	TodoReturn shouldReload() = android32 0x32746c;
	TodoReturn updateBGColor(int) = android32 0x327490;

	virtual bool init() = android32 0x31fc72;
	virtual void draw() = android32 0x320750;
	virtual TodoReturn sfxObjectSelected(SFXInfoObject*) = android32 0x31fca2 = android32 0x31fc80;
	virtual TodoReturn getActiveSFXID() = android32 0x31fcbc = android32 0x31fcaa;
}

[[link(android)]]
class CustomSFXDelegate {
	virtual TodoReturn sfxObjectSelected(SFXInfoObject*);
	virtual TodoReturn getActiveSFXID();
	virtual TodoReturn overridePlaySFX(SFXInfoObject*);
}

[[link(android)]]
class CustomSFXWidget : cocos2d::CCNode, MusicDownloadDelegate, FLAlertLayerProtocol {
	// virtual ~CustomSFXWidget();

	static CustomSFXWidget* create(SFXInfoObject*, CustomSFXDelegate*, bool, bool, bool, bool, bool) = android32 0x54bd6c;

	TodoReturn deleteSFX() = android32 0x54b198;
	TodoReturn downloadFailed() = android32 0x54be3c;
	TodoReturn hideLoadingArt() = android32 0x54abd4;
	bool init(SFXInfoObject*, CustomSFXDelegate*, bool, bool, bool, bool, bool) = android32 0x54b2f8;
	void onCancelDownload(cocos2d::CCObject* sender) = android32 0x54aa14;
	void onDelete(cocos2d::CCObject* sender) = android32 0x54a980;
	void onDownload(cocos2d::CCObject* sender) = android32 0x54ad18;
	void onPlayback(cocos2d::CCObject* sender) = android32 0x54aa38;
	void onSelect(cocos2d::CCObject* sender) = android32 0x54a914;
	TodoReturn showLoadingArt() = android32 0x54aacc;
	TodoReturn startDownload() = android32 0x54acf8;
	TodoReturn startMonitorDownload() = android32 0x54acb4;
	TodoReturn updateDownloadProgress(float) = android32 0x54be70;
	TodoReturn updateError(GJSongError) = android32 0x54bf30;
	TodoReturn updateLengthMod(float) = android32 0x54bede;
	TodoReturn updatePlaybackBtn() = android32 0x54ac2c;
	TodoReturn updateProgressBar(int) = android32 0x54ac30;
	TodoReturn updateSFXInfo() = android32 0x54ad90;
	TodoReturn updateSFXObject(SFXInfoObject*) = android32 0x54b2b0;
	TodoReturn verifySFXID(int) = android32 0x54bee6;

	virtual TodoReturn downloadSFXFinished(int) = android32 0x54bf28 = android32 0x54befc;
	virtual TodoReturn downloadSFXFailed(int, GJSongError) = android32 0x54c008 = android32 0x54bfe8;
	virtual TodoReturn songStateChanged() = android32 0x54bed6 = android32 0x54bec4;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x54b2a8 = android32 0x54b260;
}

[[link(android)]]
class CustomSongCell : TableViewCell, CustomSongDelegate {
	// virtual ~CustomSongCell();
	CustomSongCell(char const*, float, float);

	TodoReturn loadFromObject(SongInfoObject*) = android32 0x32718c;
	void onDelete(cocos2d::CCObject* sender) = android32 0x321630;
	TodoReturn shouldReload() = android32 0x3272e0;
	TodoReturn updateBGColor(int) = android32 0x327304;

	virtual bool init() = android32 0x31fc1a;
	virtual void draw() = android32 0x3206a8;
	virtual TodoReturn songIDChanged(int) = android32 0x31fc44 = android32 0x31fc24;
	virtual TodoReturn getActiveSongID() = android32 0x31fc5e = android32 0x31fc4c;
	virtual TodoReturn getSongFileName() = android32 0x320400 = android32 0x3203cc;
	virtual TodoReturn getLevelSettings() = android32 0x31fc6a = android32 0x31fc66;

	SongInfoObject* m_songInfoObject;
	bool m_unkBool;
}

[[link(android)]]
class CustomSongDelegate {
	virtual TodoReturn songIDChanged(int);
	virtual TodoReturn getActiveSongID();
	virtual TodoReturn getSongFileName();
	virtual TodoReturn getLevelSettings();
}

[[link(android)]]
class CustomSongLayer : FLAlertLayer, TextInputDelegate, GJDropDownLayerDelegate, MusicBrowserDelegate {
	// virtual ~CustomSongLayer();

	static CustomSongLayer* create(CustomSongDelegate*) = android32 0x441898;

	bool init(CustomSongDelegate*) = android32 0x440fe8;
	void onClose(cocos2d::CCObject* sender) = android32 0x440424;
	void onCreateLines(cocos2d::CCObject* sender) = android32 0x4405e4;
	void onMusicBrowser(cocos2d::CCObject* sender) = android32 0x4405c6;
	void onNewgroundsBrowser(cocos2d::CCObject* sender) = android32 0x442328;
	void onOptions(cocos2d::CCObject* sender) = android32 0x442188;
	void onSearch(cocos2d::CCObject* sender) = android32 0x4419b8;
	void onSongBrowser(cocos2d::CCObject* sender) = android32 0x440588;
	TodoReturn showNewgroundsMessage() = android32 0x441944;

	virtual void keyBackClicked() = android32 0x44046c = android32 0x440466;
	virtual void show() = android32 0x440608;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x440084 = android32 0x44007c;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = android32 0x4404d4 = android32 0x4404a8;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x4404a0 = android32 0x440474;
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float) = android32 0x44052c = android32 0x4404dc;
	virtual TodoReturn textInputReturn(CCTextInputNode*) = android32 0x440580 = android32 0x440534;
	virtual TodoReturn dropDownLayerWillClose(GJDropDownLayer*) = android32 0x4408e4 = android32 0x4408ac;
	virtual TodoReturn musicBrowserClosed(MusicBrowser*) = android32 0x440924 = android32 0x4408ec;
}

[[link(android)]]
class CustomSongLayerDelegate {
	virtual TodoReturn customSongLayerClosed();
}

[[link(android), depends(GJAssetDownloadAction)]]
class CustomSongWidget : cocos2d::CCNode, MusicDownloadDelegate, FLAlertLayerProtocol {
	// virtual ~CustomSongWidget();

	static CustomSongWidget* create(SongInfoObject*, CustomSongDelegate*, bool, bool, bool, bool, bool, bool) = android32 0x3c7b4c;

	void deleteSong() = android32 0x3c821c;
	void downloadAssetFailed(int, GJAssetType, GJSongError) = android32 0x3c8b40;
	void downloadAssetFinished(int, GJAssetType) = android32 0x3c8878;
	void downloadFailed() = android32 0x3c7cf8;
	TodoReturn getSongInfoIfUnloaded() = android32 0x3c7c88;
	bool init(SongInfoObject*, CustomSongDelegate*, bool, bool, bool, bool, bool, bool) = android32 0x3c6e90;
	void onCancelDownload(cocos2d::CCObject* sender) = android32 0x3c5f74;
	void onDelete(cocos2d::CCObject* sender) = android32 0x3c5bf4;
	void onDownload(cocos2d::CCObject* sender) = android32 0x3c85b8;
	void onGetSongInfo(cocos2d::CCObject* sender) = android32 0x3c60fc;
	void onMore(cocos2d::CCObject* sender) = android32 0x3c5c88;
	void onPlayback(cocos2d::CCObject* sender) = android32 0x3c5f98;
	void onSelect(cocos2d::CCObject* sender) = android32 0x3c7d96;
	TodoReturn processNextMultiAsset() = android32 0x3c8308;
	TodoReturn showError(bool) = android32 0x3c62e8;
	TodoReturn startDownload() = android32 0x3c62b4;
	TodoReturn startMonitorDownload() = android32 0x3c6268;
	TodoReturn startMultiAssetDownload() = android32 0x3c8510;
	TodoReturn toggleUpdateButton(bool) = android32 0x3c60c0;
	TodoReturn updateDownloadProgress(float) = android32 0x3c7dcc;
	TodoReturn updateError(GJSongError) = android32 0x3c64b0;
	TodoReturn updateLengthMod(float) = android32 0x3c7e3a;
	void updateMultiAssetInfo(bool) = android32 0x3c7e44;
	TodoReturn updatePlaybackBtn() = android32 0x3c6140;
	TodoReturn updateProgressBar(int) = android32 0x3c61e4;
	void updateSongInfo() = android32 0x3c6578;
	void updateSongObject(SongInfoObject*) = android32 0x3c6da8;
	void updateWithMultiAssets(gd::string, gd::string, int) = android32 0x3c89a4;
	TodoReturn verifySongID(int) = android32 0x3c62d4;

	virtual TodoReturn loadSongInfoFinished(SongInfoObject*) = android32 0x3c6e88 = android32 0x3c6e04;
	virtual TodoReturn loadSongInfoFailed(int, GJSongError) = android32 0x3c7d72 = android32 0x3c7d38;
	virtual TodoReturn downloadSongFinished(int) = android32 0x3c898c = android32 0x3c8910;
	virtual TodoReturn downloadSongFailed(int, GJSongError) = android32 0x3c8c6a = android32 0x3c8c38;
	virtual TodoReturn downloadSFXFinished(int) = android32 0x3c899a = android32 0x3c8994;
	virtual TodoReturn downloadSFXFailed(int, GJSongError) = android32 0x3c8c7a = android32 0x3c8c72;
	virtual TodoReturn musicActionFinished(GJMusicAction) = android32 0x3c86ea = android32 0x3c86d4;
	virtual TodoReturn musicActionFailed(GJMusicAction) = android32 0x3c7d8e = android32 0x3c7d7a;
	virtual TodoReturn songStateChanged() = android32 0x3c7e32 = android32 0x3c7e20;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x3c873c = android32 0x3c86f4;

	SongInfoObject* m_songInfoObject;
	cocos2d::CCMenu* m_buttonMenu;
	cocos2d::CCLabelBMFont* m_songLabel;
	cocos2d::CCLabelBMFont* m_artistLabel;
	cocos2d::CCLabelBMFont* m_songIDLabel;
	cocos2d::CCLabelBMFont* m_errorLabel;
	CCMenuItemSpriteExtra* m_downloadBtn;
	CCMenuItemSpriteExtra* m_cancelDownloadBtn;
	CCMenuItemSpriteExtra* m_selectSongBtn;
	CCMenuItemSpriteExtra* m_getSongInfoBtn;
	CCMenuItemSpriteExtra* m_playbackBtn;
	CCMenuItemSpriteExtra* m_moreBtn;
	CCMenuItemSpriteExtra* m_deleteBtn;
	cocos2d::CCSprite* m_sliderGroove;
	cocos2d::CCSprite* m_sliderBar;
	cocos2d::CCSprite* m_bgSpr;
	CustomSongDelegate* m_songDelegate;
	bool m_showSelectSongBtn;
	bool m_showPlayMusicBtn;
	bool m_showDownloadBtn;
	bool m_isNotDownloading;
	bool m_isRobtopSong;
	bool m_isMusicLibrary;
	int m_customSongID;
	float m_unkFloat;
	bool m_unkBool1;
	void* m_unkPtr;
	bool m_hasLibrarySongs;
	bool m_hasSFX;
	bool m_unkBool2;
	gd::map<int, bool> m_songs;
	gd::map<int, bool> m_sfx;
	gd::vector<CCObject*> m_undownloadedAssets;
	int m_unkInt;
	InfoAlertButton* m_assetInfoBtn;
}

[[link(android)]]
class DailyLevelNode : cocos2d::CCNode, FLAlertLayerProtocol {
	// virtual ~DailyLevelNode();

	static DailyLevelNode* create(GJGameLevel*, DailyLevelPage*, bool) = android32 0x4b37d0;

	bool init(GJGameLevel*, DailyLevelPage*, bool) = android32 0x4b30b4;
	void onClaimReward(cocos2d::CCObject* sender) = android32 0x4b44c0;
	void onSkipLevel(cocos2d::CCObject* sender) = android32 0x4b29bc;
	TodoReturn showSkipButton() = android32 0x4b385c;
	TodoReturn updateTimeLabel(gd::string) = android32 0x4b45ae;

	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x4b30ac = android32 0x4b3094;

	GJGameLevel* m_level;
	DailyLevelPage* m_page;
	cocos2d::CCLabelBMFont* m_timeLabel;
	PAD = win 0x8, android32 0x8;
	CCMenuItemSpriteExtra* m_skipButton;
	bool m_unkBool;
	bool m_needsDownloading;
}

[[link(android)]]
class DailyLevelPage : FLAlertLayer, FLAlertLayerProtocol, GJDailyLevelDelegate, LevelDownloadDelegate {
	// virtual ~DailyLevelPage();

	static DailyLevelPage* create(GJTimedLevelType) = android32 0x4b4230;

	TodoReturn claimLevelReward(DailyLevelNode*, GJGameLevel*, cocos2d::CCPoint) = android32 0x4b43d4;
	TodoReturn createDailyNode(GJGameLevel*, bool, float, bool) = android32 0x4b3898;
	TodoReturn createNodeIfLoaded() = android32 0x4b4374;
	TodoReturn downloadAndCreateNode() = android32 0x4b2c1c;
	TodoReturn exitDailyNode(DailyLevelNode*, float) = android32 0x4b2c74;
	TodoReturn getDailyTime() = android32 0x4b2d18;
	TodoReturn getDailyTimeString(int) = android32 0x4b2d98;
	bool init(GJTimedLevelType) = android32 0x4b39f0;
	void onClose(cocos2d::CCObject* sender) = android32 0x4b28d0;
	void onTheSafe(cocos2d::CCObject* sender) = android32 0x4b292c;
	TodoReturn refreshDailyPage() = android32 0x4b4578;
	TodoReturn skipDailyLevel(DailyLevelNode*, GJGameLevel*) = android32 0x4b2fec;
	TodoReturn tryGetDailyStatus() = android32 0x4b2ad8;
	callback void updateTimers(float) = android32 0x4b45c0;

	virtual void registerWithTouchDispatcher() = android32 0x4b2908;
	virtual void keyBackClicked() = android32 0x4b2900 = android32 0x4b28fa;
	virtual void show() = android32 0x4b2b18;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x4b26ba = android32 0x4b26b8;
	virtual TodoReturn dailyStatusFinished(GJTimedLevelType) = android32 0x4b47d0 = android32 0x4b46a4;
	virtual TodoReturn dailyStatusFailed(GJTimedLevelType, GJErrorCode) = android32 0x4b28c8 = android32 0x4b27a0;
	virtual TodoReturn levelDownloadFinished(GJGameLevel*) = android32 0x4b436c = android32 0x4b4330;
	virtual TodoReturn levelDownloadFailed(int) = android32 0x4b2ad0 = android32 0x4b2abc;

	cocos2d::CCLabelBMFont* m_timeLabel;
	LoadingCircle* m_timeCircle;
	LoadingCircle* m_nodeCircle;
	bool m_gettingDailyStatus;
	DailyLevelNode* m_dailyNode;
	bool m_downloadStarted;
	GJTimedLevelType m_type;
	int m_downloadLevelID;
}

[[link(android)]]
class DashRingObject : RingObject {
	// virtual ~DashRingObject();

	static DashRingObject* create(char const*) = android32 0x3d0c0c;

	bool init(char const*) = android32 0x3d0c06;

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3cd684;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3df180;
}

[[link(android)]]
class DemonFilterDelegate {
	virtual TodoReturn demonFilterSelectClosed(int) = android32 0x3962b8;
}

[[link(android)]]
class DemonFilterSelectLayer : FLAlertLayer {
	// virtual ~DemonFilterSelectLayer();

	static DemonFilterSelectLayer* create() = android32 0x39aae0;

	void onClose(cocos2d::CCObject* sender) = android32 0x3962ba;
	TodoReturn selectRating(cocos2d::CCObject*) = android32 0x396910;

	virtual bool init() = android32 0x396ad8;
	virtual void keyBackClicked() = android32 0x3962f0 = android32 0x3962ea;
}

// 2.205
[[link(android)]]
class DemonInfoPopup {
	// ~DemonInfoPopup();

	static DemonInfoPopup* create(int, int, int, int, int, int, int, int, int, int, int, int) = android32 0x4a7bac;

	TodoReturn createFromString(gd::string) = android32 0x4a84c0;
	bool init(int, int, int, int, int, int, int, int, int, int, int, int) = android32 0x4a75ec;
	TodoReturn keyBackClicked() = android32 0x4a362e = android32 0x4a3628;
	void onClose(cocos2d::CCObject* sender) = android32 0x4a360a;
}

[[link(android)]]
class DialogDelegate {
	virtual TodoReturn dialogClosed(DialogLayer*);
}

[[link(android)]]
class DialogLayer : cocos2d::CCLayerColor, TextAreaDelegate {
	// virtual ~DialogLayer();

	static DialogLayer* create(DialogObject*, int) = android32 0x4b51f0;

	TodoReturn addToMainScene() = android32 0x4b5248;
	TodoReturn animateIn(DialogAnimationType) = android32 0x4b53f8;
	TodoReturn animateInDialog() = android32 0x4b5600;
	TodoReturn animateInRandomSide() = android32 0x4b55b8;
	static DialogLayer* createDialogLayer(DialogObject*, cocos2d::CCArray*, int) = android32 0x4b5120;
	TodoReturn createWithObjects(cocos2d::CCArray*, int) = android32 0x4b51f8;
	TodoReturn displayDialogObject(DialogObject*) = android32 0x4b4b68;
	TodoReturn displayNextObject() = android32 0x4b4de8;
	TodoReturn finishCurrentAnimation() = android32 0x4b5204;
	TodoReturn handleDialogTap() = android32 0x4b52e0;
	bool init(DialogObject*, cocos2d::CCArray*, int) = android32 0x4b4e20;
	TodoReturn onClose() = android32 0x4b527e;
	TodoReturn updateChatPlacement(DialogChatPlacement) = android32 0x4b4aa0;
	TodoReturn updateNavButtonFrame() = android32 0x4b4d98;

	virtual void onEnter() = android32 0x4b5608;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x4b53b8 = android32 0x4b53a0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x4b47f8 = android32 0x4b47f6;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x4b47ee = android32 0x4b47da;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x4b497e = android32 0x4b4964;
	virtual void registerWithTouchDispatcher() = android32 0x4b48da;
	virtual void keyBackClicked() = android32 0x4b52d4 = android32 0x4b52d0;
	virtual void keyDown(cocos2d::enumKeyCodes) = android32 0x4b53ec = android32 0x4b53c0;
	virtual TodoReturn fadeInTextFinished(TextArea*) = android32 0x4b495c = android32 0x4b48fc;
}

[[link(android)]]
class DialogObject : cocos2d::CCObject {
	// virtual ~DialogObject();

	static DialogObject* create(gd::string, gd::string, int, float, bool, cocos2d::ccColor3B) = android32 0x4b49bc;

	bool init(gd::string, gd::string, int, float, bool, cocos2d::ccColor3B) = android32 0x4b4986;
}

[[link(android)]]
class DownloadMessageDelegate {
	virtual TodoReturn downloadMessageFinished(GJUserMessage*) = android32 0x486f44;
	virtual TodoReturn downloadMessageFailed(int) = android32 0x486f46;
}

[[link(android)]]
class DrawGridLayer : cocos2d::CCLayer {
	// virtual ~DrawGridLayer();

	static DrawGridLayer* create(cocos2d::CCNode*, LevelEditorLayer*) = android32 0x35b0a0;

	TodoReturn addAudioLineObject(AudioLineGuideGameObject*) = android32 0x361938;
	TodoReturn addToEffects(EffectGameObject*) = android32 0x35b1d4;
	TodoReturn addToGuides(GameObject*) = android32 0x35b20c;
	TodoReturn addToSpeedObjects(EffectGameObject*) = android32 0x35b236;
	TodoReturn getPortalMinMax(GameObject*) = android32 0x35b868;
	bool init(cocos2d::CCNode*, LevelEditorLayer*) = android32 0x35af88;
	TodoReturn loadTimeMarkers(gd::string) = android32 0x360d2c;
	TodoReturn posForTime(float) = android32 0x35cb84;
	TodoReturn postUpdate() = android32 0x35cc88;
	TodoReturn removeAudioLineObject(AudioLineGuideGameObject*) = android32 0x35b33c;
	TodoReturn removeFromEffects(EffectGameObject*) = android32 0x35b1f6;
	TodoReturn removeFromGuides(GameObject*) = android32 0x35b22c;
	TodoReturn removeFromSpeedObjects(EffectGameObject*) = android32 0x35b262;
	TodoReturn sortSpeedObjects() = android32 0x35b32c;
	TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, bool, bool, int) = android32 0x35cbc4;
	TodoReturn updateMusicGuideTime(float) = android32 0x35cc92;
	TodoReturn updateTimeMarkers() = android32 0x360f6c;

	virtual void update(float) = android32 0x355f58;
	virtual void draw() = android32 0x35b914;
}

[[link(android)]]
class DungeonBarsSprite : cocos2d::CCNode {
	// virtual ~DungeonBarsSprite();

	static DungeonBarsSprite* create() = android32 0x4cc2b8;

	TodoReturn animateOutBars() = android32 0x4cc308;

	virtual bool init() = android32 0x4cdbf8;
	virtual void visit() = android32 0x4c9c8c;
}

[[link(android)]]
class DynamicBitset {
	TodoReturn resize(unsigned int) = android32 0x30227c;
}

[[link(android)]]
class DynamicScrollDelegate {
	virtual void updatePageWithObject(cocos2d::CCObject* p0, cocos2d::CCObject* p1) {}
}

[[link(android)]]
class EditButtonBar : cocos2d::CCNode {
	// virtual ~EditButtonBar();

	static EditButtonBar* create(cocos2d::CCArray*, cocos2d::CCPoint, int, bool, int, int) = android32 0x3c2170;

	TodoReturn getPage() = android32 0x3c1ae6;
	TodoReturn goToPage(int) = android32 0x3c1af2;
	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, bool, int, int) = android32 0x3c2108;
	TodoReturn loadFromItems(cocos2d::CCArray*, int, int, bool) = android32 0x3c1d1c;
	void onLeft(cocos2d::CCObject* sender) = android32 0x3c1b26;
	void onRight(cocos2d::CCObject* sender) = android32 0x3c1b18;
	TodoReturn reloadItems(int, int) = android32 0x3c2220;

	cocos2d::CCPoint m_position;
	int m_unknown;
	bool m_unknownBool;
	cocos2d::CCArray* m_buttonArray;
	BoomScrollLayer* m_scrollLayer;
	cocos2d::CCArray* m_pagesArray;
}

[[link(android)]]
class EditGameObjectPopup : SetupTriggerPopup {
	// virtual ~EditGameObjectPopup();

	static EditGameObjectPopup* create(EffectGameObject*, cocos2d::CCArray*, bool) = android32 0x4913e0;

	bool init(EffectGameObject*, cocos2d::CCArray*, bool) = android32 0x491290;
}

[[link(android)]]
class EditLevelLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, SetIDPopupDelegate {
	// virtual ~EditLevelLayer();

	static EditLevelLayer* create(GJGameLevel*) = android32 0x3a1b24;

	TodoReturn closeTextInputs() = android32 0x3a0a84;
	void confirmClone(cocos2d::CCObject*) = android32 0x3a0004;
	void confirmDelete(cocos2d::CCObject*) = android32 0x39fef4;
	void confirmMoveToTop(cocos2d::CCObject*) = android32 0x3a008c;
	bool init(GJGameLevel*) = android32 0x3a0cac;
	void onBack(cocos2d::CCObject* sender) = android32 0x3a211c;
	void onClone() = android32 0x3a2208;
	void onDelete() = android32 0x3a21d0;
	void onEdit(cocos2d::CCObject* sender) = android32 0x3a2058;
	void onGuidelines(cocos2d::CCObject* sender) = android32 0x39fcec;
	void onHelp(cocos2d::CCObject* sender) = android32 0x39ff7c;
	void onLevelInfo(cocos2d::CCObject* sender) = android32 0x39fd64;
	void onLevelLeaderboard(cocos2d::CCObject* sender) = android32 0x3a0114;
	void onLevelOptions(cocos2d::CCObject* sender) = android32 0x3a0140;
	void onMoveToTop() = android32 0x3a1e36;
	void onPlay(cocos2d::CCObject* sender) = android32 0x3a1f80;
	void onSetFolder(cocos2d::CCObject* sender) = android32 0x3a0228;
	void onShare(cocos2d::CCObject* sender) = android32 0x3a0ab0;
	void onTest(cocos2d::CCObject* sender) = android32 0x3a1dfc;
	void onUpdateDescription(cocos2d::CCObject* sender) = android32 0x39fe6c;
	TodoReturn playStep2() = android32 0x3a0158;
	TodoReturn playStep3() = android32 0x3a01f0;
	static cocos2d::CCScene* scene(GJGameLevel*) = android32 0x3a1bf0;
	TodoReturn setupLevelInfo() = android32 0x3a0494;
	TodoReturn updateDescText(char const*) = android32 0x3a0ca8;
	TodoReturn verifyLevelName() = android32 0x3a1e4c;

	virtual void keyBackClicked() = android32 0x3a2200 = android32 0x3a21fa;
	virtual void keyDown(cocos2d::enumKeyCodes) = android32 0x3a2440 = android32 0x3a241c;
	virtual void setIDPopupClosed(SetIDPopup*, int) = android32 0x39fce4 = android32 0x39fc8c;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x3a2414 = android32 0x3a22b8;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = android32 0x3a048c = android32 0x3a03e0;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x3a1d5c = android32 0x3a1c18;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x3a1df4 = android32 0x3a1d64;
	virtual TodoReturn uploadActionFinished(int, int) = android32 0x3a0354 = android32 0x3a02b8;
	virtual TodoReturn uploadActionFailed(int, int) = android32 0x3a03d8 = android32 0x3a035c;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = android32 0x3a02ae = android32 0x3a029c;

	cocos2d::CCMenu* m_buttonMenu;
	GJGameLevel* m_level;
	TextArea* m_descriptionInput;
	cocos2d::CCArray* m_someArray;
	cocos2d::CCLabelBMFont* m_folderLabel;
	bool m_unk;
	bool m_lowDetailModeTriggered;
	GJLevelType m_levelType;
}

[[link(android)]]
class EditorOptionsLayer : GJOptionsLayer {
	// virtual ~EditorOptionsLayer();

	static EditorOptionsLayer* create() = android32 0x48c608;

	void onButtonRows(cocos2d::CCObject* sender) = android32 0x4875c0;
	void onButtonsPerRow(cocos2d::CCObject* sender) = android32 0x487570;

	virtual bool init() = android32 0x48c598;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x487f10;
	virtual TodoReturn setupOptions() = android32 0x48b544;
}

[[link(android)]]
class EditorPauseLayer : CCBlockLayer, FLAlertLayerProtocol {
	// virtual ~EditorPauseLayer();

	static EditorPauseLayer* create(LevelEditorLayer*) = android32 0x3e762c;

	TodoReturn doResetUnused() = android32 0x3e76d4;
	bool init(LevelEditorLayer*) = android32 0x3e7220;
	void onAlignX(cocos2d::CCObject* sender) = android32 0x3e6ec6;
	void onAlignY(cocos2d::CCObject* sender) = android32 0x3e6ee6;
	void onBuildHelper(cocos2d::CCObject* sender) = android32 0x3e6e3a;
	void onCopyWColor(cocos2d::CCObject* sender) = android32 0x3e6e58;
	void onCreateExtras(cocos2d::CCObject* sender) = android32 0x3e6e0c;
	void onCreateLoop(cocos2d::CCObject* sender) = android32 0x3e6e4a;
	void onCreateTemplate(cocos2d::CCObject* sender) = android32 0x3e76dc;
	void onExitEditor(cocos2d::CCObject* sender) = android32 0x3e90ec;
	void onExitNoSave(cocos2d::CCObject* sender) = android32 0x3e6d70;
	void onHelp(cocos2d::CCObject* sender) = android32 0x3e70f4;
	void onKeybindings(cocos2d::CCObject* sender) = android32 0x3e78bc;
	void onNewGroupX(cocos2d::CCObject* sender) = android32 0x3e6e78;
	void onNewGroupY(cocos2d::CCObject* sender) = android32 0x3e6e88;
	void onOptions(cocos2d::CCObject* sender) = android32 0x3e6c36;
	void onPasteWColor(cocos2d::CCObject* sender) = android32 0x3e6e68;
	void onReGroup(cocos2d::CCObject* sender) = android32 0x3e6e2a;
	void onResetUnusedColors(cocos2d::CCObject* sender) = android32 0x3e6c48;
	void onResume(cocos2d::CCObject* sender) = android32 0x3e7156;
	void onSave(cocos2d::CCObject* sender) = android32 0x3e6cdc;
	void onSaveAndExit(cocos2d::CCObject* sender) = android32 0x3e9112;
	void onSaveAndPlay(cocos2d::CCObject* sender) = android32 0x3e908c;
	void onSelectAll(cocos2d::CCObject* sender) = android32 0x3e6e98;
	void onSelectAllLeft(cocos2d::CCObject* sender) = android32 0x3e6ea6;
	void onSelectAllRight(cocos2d::CCObject* sender) = android32 0x3e6eb6;
	void onSong(cocos2d::CCObject* sender) = android32 0x3e7a20;
	void onUnlockAllLayers(cocos2d::CCObject* sender) = android32 0x3e6e04;
	TodoReturn playStep2() = android32 0x3e7050;
	TodoReturn playStep3() = android32 0x3e711c;
	TodoReturn saveLevel() = android32 0x3e8dac;
	TodoReturn toggleDebugDraw(cocos2d::CCObject*) = android32 0x3e6f50;
	TodoReturn toggleEditorBackground(cocos2d::CCObject*) = android32 0x3e7930;
	TodoReturn toggleEditorColorMode(cocos2d::CCObject*) = android32 0x3e6f98;
	TodoReturn toggleEditorGrid(cocos2d::CCObject*) = android32 0x3e6f68;
	TodoReturn toggleEditorGround(cocos2d::CCObject*) = android32 0x3e6ff8;
	TodoReturn toggleEffectDuration(cocos2d::CCObject*) = android32 0x3e7900;
	TodoReturn toggleEffectLines(cocos2d::CCObject*) = android32 0x3e7918;
	TodoReturn toggleFollowPlayer(cocos2d::CCObject*) = android32 0x3e78d0;
	TodoReturn toggleGridOnTop(cocos2d::CCObject*) = android32 0x3e7964;
	TodoReturn toggleHideInvisible(cocos2d::CCObject*) = android32 0x3e6f20;
	TodoReturn toggleIgnoreDamage(cocos2d::CCObject*) = android32 0x3e6f08;
	TodoReturn togglePlaytestMusic(cocos2d::CCObject*) = android32 0x3e78e8;
	TodoReturn togglePreviewAnim(cocos2d::CCObject*) = android32 0x3e6fd8;
	TodoReturn togglePreviewParticles(cocos2d::CCObject*) = android32 0x3e6fb8;
	TodoReturn togglePreviewShaders(cocos2d::CCObject*) = android32 0x3e6f38;
	TodoReturn toggleRecordOrder(cocos2d::CCObject*) = android32 0x3e79bc;
	TodoReturn toggleSelectFilter(cocos2d::CCObject*) = android32 0x3e6f80;
	TodoReturn toggleShowObjectInfo(cocos2d::CCObject*) = android32 0x3e7028;
	TodoReturn uncheckAllPortals(cocos2d::CCObject*) = android32 0x3e71aa;
	TodoReturn updateSongButton() = android32 0x3e79d4;

	virtual void keyBackClicked() = android32 0x3e71a2 = android32 0x3e719c;
	virtual void keyDown(cocos2d::enumKeyCodes) = android32 0x3e7114 = android32 0x3e7102;
	virtual TodoReturn customSetup() = android32 0x3e7a44;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x3e9196 = android32 0x3e9140;

	bool m_saved;
    CCMenuItemSpriteExtra* m_guidelinesOffButton;
    CCMenuItemSpriteExtra* m_guidelinesOnButton;
    LevelEditorLayer* m_editorLayer;
}

[[link(android)]]
class EditorUI : cocos2d::CCLayer, FLAlertLayerProtocol, ColorSelectDelegate, GJRotationControlDelegate, GJScaleControlDelegate, GJTransformControlDelegate, MusicDownloadDelegate, SetIDPopupDelegate {
	// virtual ~EditorUI();

	static EditorUI* create(LevelEditorLayer*) = android32 0x38d1e8;

	TodoReturn activateRotationControl(cocos2d::CCObject*) = android32 0x3876a4;
	TodoReturn activateScaleControl(cocos2d::CCObject*) = android32 0x38753c;
	TodoReturn activateTransformControl(cocos2d::CCObject*) = android32 0x38855c;
	TodoReturn addObjectsToSmartTemplate(GJSmartTemplate*, cocos2d::CCArray*) = android32 0x386ce0;
	TodoReturn addSnapPosition(cocos2d::CCPoint) = android32 0x36832a;
	TodoReturn alignObjects(cocos2d::CCArray*, bool) = android32 0x387fe4;
	TodoReturn applyOffset(GameObject*) = android32 0x3701b8;
	TodoReturn applySpecialOffset(cocos2d::CCPoint, GameObject*, cocos2d::CCPoint) = android32 0x370ad0;
	TodoReturn arrayContainsClass(cocos2d::CCArray*, int) = android32 0x36a43c;
	TodoReturn assignNewGroups(bool) = android32 0x39042c;
	TodoReturn canAllowMultiActivate(GameObject*, cocos2d::CCArray*) = android32 0x36a400;
	TodoReturn canSelectObject(GameObject*) = android32 0x36834c;
	TodoReturn centerCameraOnObject(GameObject*) = android32 0x36c314;
	TodoReturn changeSelectedObjects(cocos2d::CCArray*, bool) = android32 0x38ee04;
	TodoReturn checkDiffAfterTransformAnchor(cocos2d::CCPoint, cocos2d::CCArray*) = android32 0x388b78;
	TodoReturn checkLiveColorSelect() = android32 0x36b8dc;
	TodoReturn clickOnPosition(cocos2d::CCPoint) = android32 0x38f1fc;
	TodoReturn closeLiveColorSelect() = android32 0x36ad5e;
	TodoReturn closeLiveHSVSelect() = android32 0x36b6b4;
	TodoReturn colorSelectClosed(cocos2d::ccColor3B) = android32 0x36bc28;
	TodoReturn constrainGameLayerPosition() = android32 0x36c2b0;
	void constrainGameLayerPosition(float, float) = android32 0x36c0e0;
	TodoReturn convertKeyBasedOnNeighbors(int, int, cocos2d::CCPoint, cocos2d::CCArray*) = android32 0x51388c;
	TodoReturn convertToBaseKey(int) = android32 0x5137f0;
	TodoReturn copyObjects(cocos2d::CCArray*, bool, bool) = android32 0x390ae4;
	TodoReturn copyObjectsDetailed(cocos2d::CCArray*) = android32 0x36cbf0;
	cocos2d::CCArray* createCustomItems() = android32 0x372e4c;
	TodoReturn createEdgeForObject(GameObject*, int) = android32 0x513dc4;
	TodoReturn createExtraObject(int, cocos2d::CCPoint, GameObject*, cocos2d::CCArray*, int, int) = android32 0x514e08;
	TodoReturn createExtras(cocos2d::CCArray*) = android32 0x516848;
	TodoReturn createExtrasForObject(int, GameObject*, cocos2d::CCArray*) = android32 0x514ec0;
	TodoReturn createGlow() = android32 0x368f34;
	TodoReturn createLoop() = android32 0x3690dc;
	TodoReturn createMoveMenu() = android32 0x369704;
	TodoReturn createNewKeyframeAnim() = android32 0x38dce4;
	TodoReturn createObject(int, cocos2d::CCPoint) = android32 0x36824c;
	TodoReturn createOutlines(cocos2d::CCArray*) = android32 0x5140c8;
	TodoReturn createPrefab(GJSmartTemplate*, gd::string, int) = android32 0x38e8b0;
	TodoReturn createRockBases(cocos2d::CCArray*) = android32 0x51482c;
	TodoReturn createRockEdges(cocos2d::CCArray*) = android32 0x513ed0;
	TodoReturn createSmartObjectsFromTemplate(GJSmartTemplate*, cocos2d::CCArray*, bool, bool, bool, bool) = android32 0x38f698;
	TodoReturn createSmartObjectsFromType(int, cocos2d::CCArray*, bool, bool) = android32 0x38efa4;
	TodoReturn createUndoObject(UndoCommand, bool) = android32 0x387f0e;
	TodoReturn createUndoSelectObject(bool) = android32 0x368438;
	TodoReturn deactivateRotationControl() = android32 0x3717e4;
	TodoReturn deactivateScaleControl() = android32 0x371918;
	TodoReturn deactivateTransformControl() = android32 0x3726f0;
	TodoReturn deleteObject(GameObject*, bool) = android32 0x37273c;
	TodoReturn deleteSmartBlocksFromObjects(cocos2d::CCArray*) = android32 0x372776;
	TodoReturn deleteTypeFromObjects(int, cocos2d::CCArray*) = android32 0x3727d0;
	TodoReturn deselectAll() = android32 0x38d4ec;
	TodoReturn deselectObject() = android32 0x36ac50;
	TodoReturn deselectObject(GameObject*) = android32 0x36ac8c;
	TodoReturn deselectObjectsColor() = android32 0x366b04;
	TodoReturn deselectTargetPortals() = android32 0x36acd6;
	TodoReturn disableButton(CreateMenuItem*) = android32 0x366f88;
	TodoReturn doCopyObjects(bool) = android32 0x390f28;
	TodoReturn doPasteInPlace(bool) = android32 0x3906bc;
	TodoReturn doPasteObjects(bool) = android32 0x390554;
	TodoReturn dynamicGroupUpdate(bool) = android32 0x390780;
	TodoReturn edgeForObject(int, int) = android32 0x513b98;
	TodoReturn editButton2Usable() = android32 0x36a46c;
	TodoReturn editButtonUsable() = android32 0x36a0b0;
	TodoReturn editColor() = android32 0x36b6cc;
	TodoReturn editColorButtonUsable() = android32 0x36a960;
	TodoReturn editGroup(cocos2d::CCObject*) = android32 0x366c9c;
	TodoReturn editHSV() = android32 0x36b830;
	TodoReturn editObject(cocos2d::CCObject*) = android32 0x36ad78;
	TodoReturn editObject2(cocos2d::CCObject*) = android32 0x36a954;
	TodoReturn editObject3(cocos2d::CCObject*) = android32 0x36a95a;
	TodoReturn editObjectSpecial(int) = android32 0x36a620;
	TodoReturn editorLayerForArray(cocos2d::CCArray*, bool) = android32 0x3688f6;
	TodoReturn enableButton(CreateMenuItem*) = android32 0x366e78;
	TodoReturn findAndSelectObject(int, bool) = android32 0x38d6b0;
	TodoReturn findSnapObject(cocos2d::CCArray*, float) = android32 0x370c14;
	TodoReturn findSnapObject(cocos2d::CCPoint, float) = android32 0x370df0;
	TodoReturn findTriggerTest() = android32 0x3690b4;
	TodoReturn flipObjectsX(cocos2d::CCArray*) = android32 0x370880;
	TodoReturn flipObjectsY(cocos2d::CCArray*) = android32 0x3709a8;
	TodoReturn getButton(char const*, int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*) = android32 0x367040;
	TodoReturn getCreateBtn(int, int) = android32 0x371100;
	TodoReturn getCreateMenuItemButton(cocos2d::CCSprite*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint) = android32 0x371018;
	TodoReturn getCycledObject(cocos2d::CCArray*, bool) = android32 0x36cf06;
	TodoReturn getEditColorTargets(ColorAction*&, ColorAction*&, EffectGameObject*&) = android32 0x36a97c;
	TodoReturn getGridSnappedPos(cocos2d::CCPoint) = android32 0x36cd0c;
	TodoReturn getGroupCenter(cocos2d::CCArray*, bool) = android32 0x36c62c;
	TodoReturn getGroupInfo(GameObject*, cocos2d::CCArray*, int&, int&, int&) = android32 0x36a01e;
	TodoReturn getLimitedPosition(cocos2d::CCPoint) = android32 0x36be6c;
	TodoReturn getModeBtn(char const*, int) = android32 0x367410;
	TodoReturn getNeighbor(int, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*) = android32 0x368cd8;
	TodoReturn getRandomStartKey(int) = android32 0x512fdc;
	TodoReturn getRelativeOffset(GameObject*) = android32 0x3700d4;
	cocos2d::CCArray* getSelectedObjects() = android32 0x3683e0;
	TodoReturn getSimpleButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*) = android32 0x367234;
	TodoReturn getSmartNeighbor(SmartGameObject*, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*) = android32 0x368c14;
	TodoReturn getSmartObjectKey(int, GJSmartDirection) = android32 0x5131a4;
	TodoReturn getSnapAngle(GameObject*, cocos2d::CCArray*) = android32 0x36bfc0;
	CCMenuItemSpriteExtra* getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint) = android32 0x367170;
	CCMenuItemSpriteExtra* getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float) = android32 0x3671d4;
	CCMenuItemSpriteExtra* getSpriteButton(cocos2d::CCSprite*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint) = android32 0x367088;
	TodoReturn getTouchPoint(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x36cda4;
	TodoReturn getTransformState() = android32 0x387efa;
	TodoReturn getXMin(int) = android32 0x36c3bc;
	bool init(LevelEditorLayer*) = android32 0x38b928;
	bool isLiveColorSelectTrigger(GameObject*) = android32 0x3695f8;
	bool isSpecialSnapObject(int) = android32 0x370218;
	TodoReturn liveEditColorUsable() = android32 0x3695dc;
	TodoReturn menuItemFromObjectString(gd::string, int) = android32 0x372cfc;
	cocos2d::CCPoint moveForCommand(EditCommand command) = android32 0x36bcf0;
	TodoReturn moveGamelayer(cocos2d::CCPoint) = android32 0x36c2bc;
	TodoReturn moveObject(GameObject*, cocos2d::CCPoint) = android32 0x36bf08;
	TodoReturn moveObjectCall(cocos2d::CCObject*) = android32 0x38a168;
	TodoReturn moveObjectCall(EditCommand) = android32 0x38a038;
	TodoReturn offsetForKey(int) = android32 0x36cf68;
	TodoReturn onAssignNewGroupID() = android32 0x3904e0;
	void onColorFilter(cocos2d::CCObject* sender) = android32 0x3665d0;
	void onCopy(cocos2d::CCObject* sender) = android32 0x390fe0;
	void onCopyState(cocos2d::CCObject* sender) = android32 0x387d54;
	bool onCreate() = android32 0x38e804;
	void onCreateButton(cocos2d::CCObject* sender) = android32 0x368b0a;
	TodoReturn onCreateObject(int) = android32 0x38e2ec;
	void onDelete(cocos2d::CCObject* sender) = android32 0x38eaf8;
	void onDeleteAll(cocos2d::CCObject* sender) = android32 0x38d548;
	void onDeleteCustomItem(cocos2d::CCObject* sender) = android32 0x3730a0;
	void onDeleteInfo(cocos2d::CCObject* sender) = android32 0x366340;
	void onDeleteSelected(cocos2d::CCObject* sender) = android32 0x38ed3c;
	void onDeleteSelectedType(cocos2d::CCObject* sender) = android32 0x38d5d8;
	void onDeleteStartPos(cocos2d::CCObject* sender) = android32 0x38d606;
	void onDeselectAll(cocos2d::CCObject* sender) = android32 0x38db8c;
	void onDuplicate(cocos2d::CCObject* sender) = android32 0x390fe8;
	void onEditColor(cocos2d::CCObject* sender) = android32 0x36b8ac;
	void onFindObject(cocos2d::CCObject* sender) = android32 0x366608;
	void onGoToBaseLayer(cocos2d::CCObject* sender) = android32 0x36bbc0;
	void onGoToLayer(cocos2d::CCObject* sender) = android32 0x36bb54;
	void onGroupDown(cocos2d::CCObject* sender) = android32 0x36bbe4;
	void onGroupIDFilter(cocos2d::CCObject* sender) = android32 0x366518;
	void onGroupSticky(cocos2d::CCObject* sender) = android32 0x387d08;
	void onGroupUp(cocos2d::CCObject* sender) = android32 0x36bbd2;
	void onLockLayer(cocos2d::CCObject* sender) = android32 0x36bbfc;
	void onNewCustomItem(cocos2d::CCObject* sender) = android32 0x390d64;
	void onPaste(cocos2d::CCObject* sender) = android32 0x3906b4;
	void onPasteColor(cocos2d::CCObject* sender) = android32 0x3903f8;
	void onPasteInPlace(cocos2d::CCObject* sender) = android32 0x390728;
	void onPasteState(cocos2d::CCObject* sender) = android32 0x3903c4;
	void onPause(cocos2d::CCObject* sender) = android32 0x3722c8;
	void onPlayback(cocos2d::CCObject* sender) = android32 0x36850c;
	void onPlaytest(cocos2d::CCObject* sender) = android32 0x38dbb4;
	void onResetSpecialFilter(cocos2d::CCObject* sender) = android32 0x366454;
	void onSelectBuildTab(cocos2d::CCObject* sender) = android32 0x368b30;
	void onSettings(cocos2d::CCObject* sender) = android32 0x366c68;
	void onStopPlaytest(cocos2d::CCObject* sender) = android32 0x37229c;
	TodoReturn onTargetIDChange(int) = android32 0x36c030;
	TodoReturn onToggleGuide(EffectGameObject*) = android32 0x368b4a;
	TodoReturn onToggleSelectedOrder(EffectGameObject*) = android32 0x36738c;
	void onUngroupSticky(cocos2d::CCObject* sender) = android32 0x387d2e;
	void onUpdateDeleteFilter(cocos2d::CCObject* sender) = android32 0x3681dc;
	TodoReturn orderDownCustomItem(cocos2d::CCObject*) = android32 0x373106;
	TodoReturn orderUpCustomItem(cocos2d::CCObject*) = android32 0x3730ca;
	void pasteObjects(gd::string, bool, bool) = android32 0x38de44;
	TodoReturn playCircleAnim(cocos2d::CCPoint, float, float) = android32 0x367d78;
	TodoReturn playerTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x36cdfc;
	TodoReturn playerTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x36cec8;
	TodoReturn playtestStopped() = android32 0x37220c;
	TodoReturn positionIsInSnapped(cocos2d::CCPoint) = android32 0x3682cc;
	TodoReturn positionWithoutOffset(GameObject*) = android32 0x370114;
	TodoReturn processSelectObjects(cocos2d::CCArray*) = android32 0x38eec4;
	TodoReturn processSmartObjectsFromType(int, cocos2d::CCArray*, cocos2d::CCArray*, cocos2d::CCArray*, cocos2d::CCArray*) = android32 0x368d84;
	TodoReturn recreateButtonTabs() = android32 0x3673b0;
	void redoLastAction(cocos2d::CCObject*) = android32 0x38ef64;
	TodoReturn reloadCustomItems() = android32 0x373058;
	TodoReturn removeOffset(GameObject*) = android32 0x370158;
	TodoReturn replaceGroupID(GameObject*, int, int) = android32 0x368f38;
	TodoReturn repositionObjectsToCenter(cocos2d::CCArray*, cocos2d::CCPoint, bool) = android32 0x36c7a8;
	TodoReturn resetObjectEditorValues(cocos2d::CCArray*) = android32 0x388b0c;
	TodoReturn resetSelectedObjectsColor() = android32 0x36bc30;
	TodoReturn resetUI() = android32 0x369498;
	void rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint) = android32 0x36c820;
	TodoReturn rotationforCommand(EditCommand) = android32 0x36be50;
	void scaleObjects(cocos2d::CCArray*, float, float, cocos2d::CCPoint, ObjectScaleType, bool) = android32 0x388d24;
	TodoReturn selectAll() = android32 0x390244;
	TodoReturn selectAllWithDirection(bool) = android32 0x3902b4;
	TodoReturn selectBuildTab(int) = android32 0x36893c;
	void selectObject(GameObject*, bool) = android32 0x38d61c;
	void selectObjects(cocos2d::CCArray*, bool) = android32 0x38d848;
	void selectObjectsInRect(cocos2d::CCRect) = android32 0x38ee34;
	void setupCreateMenu() = android32 0x373144;
	void setupDeleteMenu() = android32 0x367448;
	void setupEditMenu() = android32 0x36a00c;
	TodoReturn setupTransformControl() = android32 0x366e70;
	TodoReturn shouldDeleteObject(GameObject*) = android32 0x367c74;
	TodoReturn shouldSnap(GameObject*) = android32 0x370bec;
	TodoReturn showDeleteConfirmation() = android32 0x367cf8;
	TodoReturn showLiveColorSelectForMode(int) = android32 0x36b790;
	TodoReturn showLiveColorSelectForModeSpecial(int) = android32 0x36b7e0;
	TodoReturn showMaxBasicError() = android32 0x36878c;
	TodoReturn showMaxCoinError() = android32 0x36883c;
	TodoReturn showMaxError() = android32 0x3686e0;
	void showUI(bool) = android32 0x36ba84;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x36c500;
	TodoReturn smartTypeForKey(int) = android32 0x512fc4;
	cocos2d::CCPoint* spriteFromObjectString(gd::string, bool, bool, int, cocos2d::CCArray*, cocos2d::CCArray*, GameObject*) = android32 0x372830;
	TodoReturn toggleDuplicateButton() = android32 0x369620;
	TodoReturn toggleEditObjectButton() = android32 0x36abc0;
	TodoReturn toggleEnableRotate(cocos2d::CCObject*) = android32 0x387d7c;
	TodoReturn toggleFreeMove(cocos2d::CCObject*) = android32 0x366680;
	TodoReturn toggleLockUI(bool) = android32 0x366e72;
	TodoReturn toggleMode(cocos2d::CCObject*) = android32 0x369538;
	TodoReturn toggleObjectInfoLabel() = android32 0x38b8f4;
	TodoReturn toggleSnap(cocos2d::CCObject*) = android32 0x3666d0;
	TodoReturn toggleSpecialEditButtons() = android32 0x387784;
	TodoReturn toggleStickyControls(bool) = android32 0x366e2c;
	TodoReturn toggleSwipe(cocos2d::CCObject*) = android32 0x366630;
	TodoReturn transformObject(GameObject*, EditCommand, bool) = android32 0x37052c;
	TodoReturn transformObjectCall(cocos2d::CCObject*) = android32 0x38a964;
	TodoReturn transformObjectCall(EditCommand) = android32 0x38a71c;
	TodoReturn transformObjects(cocos2d::CCArray*, cocos2d::CCPoint, float, float, float, float, float, float) = android32 0x38914c;
	TodoReturn transformObjectsActive() = android32 0x38940c;
	TodoReturn transformObjectsReset() = android32 0x389564;
	TodoReturn triggerSwipeMode() = android32 0x36649c;
	void tryUpdateTimeMarkers() = android32 0x368b48;
	void undoLastAction(cocos2d::CCObject*) = android32 0x38ef26;
	void updateButtons() = android32 0x3878d4;
	TodoReturn updateCreateMenu(bool) = android32 0x368a04;
	TodoReturn updateDeleteButtons() = android32 0x367dc0;
	TodoReturn updateDeleteMenu() = android32 0x3681b8;
	TodoReturn updateEditButtonColor(int, cocos2d::ccColor3B) = android32 0x368b9c;
	TodoReturn updateEditColorButton() = android32 0x36aac4;
	TodoReturn updateEditMenu() = android32 0x369480;
	TodoReturn updateGridNodeSize() = android32 0x3672f0;
	TodoReturn updateGridNodeSize(int) = android32 0x3672cc;
	TodoReturn updateGroupIDBtn2() = android32 0x3688d8;
	TodoReturn updateGroupIDLabel() = android32 0x36b9c4;
	TodoReturn updateObjectInfoLabel() = android32 0x38af50;
	TodoReturn updatePlaybackBtn() = android32 0x36845c;
	TodoReturn updateSlider() = android32 0x36c600;
	TodoReturn updateSpecialUIElements() = android32 0x38eae0;
	TodoReturn updateZoom(float) = android32 0x3720c0;
	TodoReturn valueFromXPos(float) = android32 0x36c570;
	TodoReturn xPosFromValue(float) = android32 0x36c4a0;
	TodoReturn zoomGameLayer(bool) = android32 0x3723f8;
	TodoReturn zoomIn(cocos2d::CCObject*) = android32 0x372458;
	TodoReturn zoomOut(cocos2d::CCObject*) = android32 0x37245e;

	virtual void draw() = android32 0x366b44;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x391514 = android32 0x391108;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x38f690 = android32 0x38f2fc;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x39023c = android32 0x38fbf0;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x3660c4 = android32 0x3660bc;
	virtual void registerWithTouchDispatcher() = android32 0x366720;
	virtual void keyBackClicked() = android32 0x3723ee = android32 0x3723e8;
	virtual void keyDown(cocos2d::enumKeyCodes) = android32 0x391df4 = android32 0x39151c;
	virtual TodoReturn getUI() = android32 0x365f20 = android32 0x365f1e;
	virtual void setIDPopupClosed(SetIDPopup*, int) = android32 0x38d840 = android32 0x38d73c;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x38d5d0 = android32 0x38d55c;
	virtual TodoReturn updateTransformControl() = android32 0x38af48 = android32 0x38ad94;
	virtual TodoReturn transformChangeBegin() = android32 0x387fda = android32 0x387fd2;
	virtual TodoReturn transformChangeEnded() = android32 0x368b88 = android32 0x368b84;
	virtual TodoReturn getTransformNode() = android32 0x365f2e = android32 0x365f28;
	virtual TodoReturn transformScaleXChanged(float) = android32 0x389494 = android32 0x38948c;
	virtual TodoReturn transformScaleYChanged(float) = android32 0x3894a4 = android32 0x38949c;
	virtual TodoReturn transformScaleXYChanged(float, float) = android32 0x3894b8 = android32 0x3894ac;
	virtual TodoReturn transformSkewXChanged(float) = android32 0x3894c8 = android32 0x3894c0;
	virtual TodoReturn transformSkewYChanged(float) = android32 0x3894d8 = android32 0x3894d0;
	virtual TodoReturn transformRotationXChanged(float) = android32 0x3894e8 = android32 0x3894e0;
	virtual TodoReturn transformRotationYChanged(float) = android32 0x3894f8 = android32 0x3894f0;
	virtual TodoReturn transformRotationChanged(float) = android32 0x38950c = android32 0x389500;
	virtual TodoReturn transformResetRotation() = android32 0x389536 = android32 0x389514;
	virtual TodoReturn transformRestoreRotation() = android32 0x38955a = android32 0x38953e;
	virtual TodoReturn songStateChanged() = android32 0x3686d8 = android32 0x3686d4;
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*) = android32 0x36bce8 = android32 0x36bcac;
	virtual void keyUp(cocos2d::enumKeyCodes) = android32 0x3660fa = android32 0x3660cc;
	virtual void scrollWheel(float, float) = android32 0x372500 = android32 0x372464;
	virtual TodoReturn angleChangeBegin() = android32 0x38833c = android32 0x388334;
	virtual TodoReturn angleChangeEnded() = android32 0x368b94 = android32 0x368b90;
	virtual TodoReturn angleChanged(float) = android32 0x36cbe8 = android32 0x36cafc;
	virtual TodoReturn updateScaleControl() = android32 0x38acea = android32 0x38ac38;
	virtual TodoReturn anchorPointMoved(cocos2d::CCPoint) = android32 0x3662e0 = android32 0x3662d8 = android32 0x366280;
	virtual TodoReturn scaleChangeBegin() = android32 0x387fca = android32 0x387fc2;
	virtual TodoReturn scaleChangeEnded() = android32 0x368b7c = android32 0x368b78;
	virtual TodoReturn scaleXChanged(float, bool) = android32 0x389024 = android32 0x388f9c;
	virtual TodoReturn scaleYChanged(float, bool) = android32 0x3890b4 = android32 0x38902c;
	virtual TodoReturn scaleXYChanged(float, float, bool) = android32 0x389144 = android32 0x3890bc;

	PAD = android32 0x64, android64 0x80;

	EditButtonBar* m_buttonBar;

	PAD = android32 0x3c, android64 0x48;

	cocos2d::CCLabelBMFont* m_objectInfoLabel;

	PAD = android32 0x18, android64 0x28;

	GJTransformControl* m_transformControl;
	PAD = android32 0xc, android64 0x18;
	EditButtonBar* m_createButtonBar;
    EditButtonBar* m_editButtonBar;
    Slider* m_positionSlider;

	PAD = android32 0xc, android64 0xc;
	bool m_swipeEnabled;

	PAD = android32 0x1f, android64 0x23;

	cocos2d::CCArray* m_selectedObjects; // 0x338 on a64

	// double m_unkDouble; // 0x398

	// all of these are not tested
	cocos2d::CCMenu* m_deleteMenu;
	cocos2d::CCArray* m_unknownArray4;
	CCMenuItemSpriteExtra* m_deleteModeBtn;
	CCMenuItemSpriteExtra* m_buildModeBtn;
	CCMenuItemSpriteExtra* m_editModeBtn;
	CCMenuItemSpriteExtra* m_swipeBtn;
	CCMenuItemSpriteExtra* m_freeMoveBtn;
	CCMenuItemSpriteExtra* m_deselectBtn;
	CCMenuItemSpriteExtra* m_snapBtn;
	CCMenuItemSpriteExtra* m_rotateBtn;
	CCMenuItemSpriteExtra* m_playbackBtn;
	CCMenuItemSpriteExtra* m_playtestBtn;
	CCMenuItemSpriteExtra* m_playtestStopBtn;
	CCMenuItemSpriteExtra* m_trashBtn;
	CCMenuItemSpriteExtra* m_linkBtn;
	CCMenuItemSpriteExtra* m_unlinkBtn;
	CCMenuItemSpriteExtra* m_undoBtn;
	CCMenuItemSpriteExtra* m_redoBtn;
	CCMenuItemSpriteExtra* m_editObjectBtn;
	CCMenuItemSpriteExtra* m_editGroupBtn;
	CCMenuItemSpriteExtra* m_editHSVBtn;
	CCMenuItemSpriteExtra* m_editSpecialBtn;
	CCMenuItemSpriteExtra* m_copyPasteBtn;
	CCMenuItemSpriteExtra* m_copyBtn;
	CCMenuItemSpriteExtra* m_pasteBtn;
	CCMenuItemSpriteExtra* m_copyValuesBtn;
	CCMenuItemSpriteExtra* m_pasteStateBtn;
	CCMenuItemSpriteExtra* m_pasteColorBtn;
	CCMenuItemSpriteExtra* m_goToLayerBtn;
	CCMenuItemToggler* m_guideToggle;
	cocos2d::CCArray* m_createButtonBars;
	cocos2d::CCMenu* m_tabsMenu;
	cocos2d::CCArray* m_tabsArray;
	cocos2d::CCSprite* m_idkSprite0;
	cocos2d::CCSprite* m_idkSprite1;
	CCMenuItemSpriteExtra* m_button27;
	CCMenuItemSpriteExtra* m_button28;
	CCMenuItemSpriteExtra* m_deleteFilterNone;
	CCMenuItemSpriteExtra* m_deleteFilterStatic;
	CCMenuItemSpriteExtra* m_deleteFilterDetails;
	CCMenuItemSpriteExtra* m_deleteFilterCustom;
	cocos2d::CCLabelBMFont* m_currentLayerLabel;
	CCMenuItemSpriteExtra* m_layerNextBtn;
	CCMenuItemSpriteExtra* m_layerPrevBtn;
	CCMenuItemSpriteExtra* m_goToBaseBtn;
	PAD = mac 0x20, win 0x10, android32 0x10, android64 0x20;
	int m_selectedCreateObjectID;
	cocos2d::CCArray* m_createButtonArray;
	cocos2d::CCArray* m_customObjectButtonArray;
	cocos2d::CCArray* m_unknownArray9;
	int m_selectedMode;
	LevelEditorLayer* m_editorLayer;
	cocos2d::CCPoint m_swipeStart;
	cocos2d::CCPoint m_swipeEnd;
	PAD = mac 0x8, win 0x8, android32 0x8, android64 0x8;
	cocos2d::CCPoint m_lastTouchPoint;
	cocos2d::CCPoint m_cameraTest;
	cocos2d::CCPoint m_clickAtPosition;
	GameObject* m_selectedObject;
	void* m_unk530;
	void* m_unk538;
	void* m_unk540;
	int m_selectedTab;
}

[[link(android)]]
class EditTriggersPopup : SetupTriggerPopup {
	// virtual ~EditTriggersPopup();

	static EditTriggersPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x48aa60;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x48a860;

	virtual TodoReturn determineStartValues() = android32 0x48796e;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x487972;
}

[[link(android)]]
class EffectGameObject : EnhancedGameObject {
	// virtual ~EffectGameObject();
	// EffectGameObject();

	static EffectGameObject* create(char const*) = android32 0x3d0dcc;

	TodoReturn getTargetColorIndex() = android32 0x3d2718;
	bool init(char const*) = android32 0x3d07bc;
	TodoReturn playTriggerEffect() = android32 0x3d0e0c;
	TodoReturn resetSpawnTrigger() = android32 0x3d28b4;
	void setTargetID(int) = android32 0x3d0fcc;
	void setTargetID2(int) = android32 0x3d100c;
	TodoReturn triggerEffectFinished() = android32 0x3c8d5c;
	TodoReturn updateInteractiveHover(float) = android32 0x3d27d4;
	TodoReturn updateSpecialColor() = android32 0x3d2768;
	TodoReturn updateSpeedModType() = android32 0x3d28d2;

	virtual void setOpacity(unsigned char) = android32 0x3c8e98 = android32 0x3c8e78;
	virtual void firstSetup() = android32 0x3c8d64;
	virtual TodoReturn customSetup() = android32 0x3cd06c;
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = android32 0x3d56e0;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3c933c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3d6d50;
	virtual void setRScaleX(float) = android32 0x3c907c;
	virtual void setRScaleY(float) = android32 0x3c9088;
	virtual TodoReturn triggerActivated(float) = android32 0x3c90c8;
	virtual TodoReturn restoreObject() = android32 0x3c91fe;
	virtual TodoReturn spawnXPosition() = android32 0x3cd38c;
	virtual TodoReturn canReverse() = android32 0x3c8d78;
	virtual bool isSpecialSpawnObject() = android32 0x3c8dd4;
	virtual TodoReturn canBeOrdered() = android32 0x3c8dd8;
	virtual TodoReturn getObjectLabel() = android32 0x3c8c88;
	virtual void setObjectLabel(cocos2d::CCLabelBMFont*) = android32 0x3c8c8e;
	virtual TodoReturn stateSensitiveOff(GJBaseGameLayer*) = android32 0x3d4c8c;

	cocos2d::ccColor3B m_triggerTargetColor;
	// property 10
	float m_duration;
	// property 35
	float m_opacity;
	PAD = android32 0x4, win 0x4, android64 0x4;
	// property 51
	int m_targetGroupID;
	// property 71
	int m_centerGroupID;
	// property 11
	bool m_isTouchTriggered;
	// property 62
	bool m_isSpawnTriggered;
	// property 369
	bool m_hasCenterEffect;
	// property 75
	float m_shakeStrength;
	// property 84
	float m_shakeInterval;
	// property 14
	bool m_tintGround;
	// property 15
	bool m_usesPlayerColor1;
	// property 16
	bool m_usesPlayerColor2;
	// property 17
	bool m_usesBlending;
	// property 28
	float m_moveOffsetX;
	// property 29
	float m_moveOffsetY;
	// property 30
	EasingType m_easingType;
	// property 85
	float m_easingRate;
	// property 58
	bool m_lockToPlayerX;
	// property 59
	bool m_lockToPlayerY;
	// property 141
	bool m_lockToCameraX;
	// property 142
	bool m_lockToCameraY;
	// property 100
	bool m_useMoveTarget;
	// property 101
	MoveTargetType m_moveTargetMode;
	// property 143
	float m_moveModX;
	// property 144
	float m_moveModY;
	// property 393
	bool m_property393;
	// property 394
	bool m_isDirectionFollowSnap360; // TODO: pls find a better name for this why rob
	// property 395
	int m_targetModCenterID;
	// property 396
	float m_directionModeDistance;
	// property 397
	bool m_isDynamicMode;
	// property 544
	bool m_isSilent;
	PAD = android32 0x6, win 0x6, android64 0x6;
	// property 68
	float m_rotationDegrees;
	// property 69
	int m_times360;
	// property 70
	bool m_lockObjectRotation;
	// property 401
	int m_rotationTargetID;
	// property 402
	float m_rotationOffset;
	// property 403
	EasingType m_dynamicModeEasing;
	// property 72
	float m_followXMod;
	// property 73
	float m_followYMod;
	// property 90
	float m_followYSpeed;
	// property 91
	float m_followYDelay;
	// property 92
	int m_followYOffset;
	// property 105
	float m_followYMaxSpeed;
	// property 45
	float m_fadeInDuration;
	// property 46
	float m_holdDuration;
	// property 47
	float m_fadeOutDuration;
	// property 48
	int m_pulseMode;
	// property 52
	int m_pulseTargetType;
	// property 49
	cocos2d::ccHSVValue m_hsvValue;
	// property 50
	int m_copyColorID;
	// property 60
	bool m_copyOpacity;
	// property 65
	bool m_pulseMainOnly;
	// property 66
	bool m_pulseDetailOnly;
	// property 86
	bool m_pulseExclusive;
	// property 210
	bool m_property210;
	// property 56
	bool m_activateGroup;
	// property 81
	bool m_touchHoldMode;
	// property 82
	TouchToggleMode m_touchToggleMode;
	// property 198
	int m_touchPlayerMode; // TODO: add enum
	// property 89
	bool m_isDualMode;
	// property 76
	int m_animationID;
	PAD = android32 0x8, win 0x8, android64 0x8;
	// property 87
	bool m_isMultiActivate;
	PAD = android32 0x2, win 0x2, android64 0x2;
	// property 93
	bool m_triggerOnExit;
	// property 95
	int m_itemID2;
	// property 534
	int m_property534;
	PAD = android32 0x4, win 0x4, android64 0x4;
	// property 80
	int m_itemID;
	// property 138
	bool m_targetPlayer1;
	// property 200
	bool m_targetPlayer2;
	// property 201
	bool m_followCPP;
	// property 78
	bool m_subtractCount;
	// property 381
	bool m_collectibleIsPickupItem;
	// property 382
	bool m_collectibleIsToggleTrigger;
	// property 440
	int m_collectibleParticleID;
	// property 383
	int m_collectiblePoints;
	// property 463
	bool m_hasNoAnimation;
	PAD = android32 0x1f, win 0x1f, android64 0x23;
	// property 148
	float m_gravityValue;
	// property 284
	bool m_isSinglePTouch;
	PAD = android32 0x3, win 0x3, android64 0x3;
	// property 371
	float m_zoomValue;
	// property 111
	bool m_cameraIsFreeMode;
	// property 112
	bool m_cameraEditCameraSettings;
	// property 113
	float m_cameraEasingValue;
	// property 114
	float m_cameraPaddingValue;
	// property 370
	bool m_cameraDisableGridSnap;
	// property 118
	bool m_property118;
	// property 120
	float m_timeWarpTimeMod;
	// property 13
	bool m_showGamemodeBorders;
	// property 115
	int m_ordValue;
	// property 170
	int m_channelValue;
	// property 117
	bool m_isReverse;
	PAD = android32 0xb, win 0xb, android64 0xb;
	// property 12
	int m_secretCoinID;
	PAD = android32 0x18, win 0x18, android64 0x1c;
	cocos2d::CCLabelBMFont* m_objectLabel;
	// property 280
	bool m_ignoreGroupParent;
	// property 281
	bool m_ignoreLinkedObjects;
	PAD = android32 0x1, win 0x1, android64 0x1;
}

[[link(android)]]
class EffectManagerState {
	// ~EffectManagerState();
	// EffectManagerState();
}

[[link(android)]]
class EndLevelLayer : GJDropDownLayer {
	// virtual ~EndLevelLayer();

	// parameter from 2.205
	static EndLevelLayer* create(PlayLayer*) = android32 0x40d184;

	TodoReturn coinEnterFinished(cocos2d::CCPoint) = android32 0x40d80c;
	TodoReturn coinEnterFinishedO(cocos2d::CCObject*) = android32 0x40d994;
	TodoReturn currencyEnterFinished() = android32 0x40e204;
	TodoReturn diamondEnterFinished() = android32 0x40e2c0;
	TodoReturn getCoinString() = android32 0x40d2dc;
	TodoReturn getEndText() = android32 0x40e37c;
	TodoReturn goEdit() = android32 0x40d0fc;
	bool init(PlayLayer*) = android32 0x40d16c;
	void onEdit(cocos2d::CCObject* sender) = android32 0x40d040;
	void onEveryplay(cocos2d::CCObject* sender) = android32 0x40d440;
	void onLevelLeaderboard(cocos2d::CCObject* sender) = android32 0x40d0b0;
	void onMenu(cocos2d::CCObject* sender) = android32 0x40cf3c;
	void onReplay(cocos2d::CCObject* sender) = android32 0x40ce70;
	TodoReturn playCoinEffect(float) = android32 0x40d6d4;
	TodoReturn playCurrencyEffect(float) = android32 0x40d9d0;
	TodoReturn playDiamondEffect(float) = android32 0x40dc44;
	TodoReturn playEndEffect() = android32 0x40dfe0;
	void playStarEffect(float) = android32 0x40d444;
	TodoReturn starEnterFinished() = android32 0x40e124;
	TodoReturn tryShowBanner(float) = android32 0x40ce48;

	virtual void keyBackClicked() = android32 0x40cffe = android32 0x40cff8;
	virtual void keyDown(cocos2d::enumKeyCodes) = android32 0x40d038 = android32 0x40d006;
	virtual void customSetup() = android32 0x40e928;
	virtual void showLayer(bool) = android32 0x40deb4;
	virtual TodoReturn enterAnimFinished() = android32 0x40cdb8;
	virtual void keyUp(cocos2d::enumKeyCodes) = android32 0x40cdbc = android32 0x40cdba;

	PlayLayer* m_playLayer;
	bool m_unknown1;
	bool m_unknown2;
	bool m_unknown3;
	bool m_unknown4;
	bool m_unknown5;
	int m_unknown6;
	cocos2d::CCArray* m_coinsToAnimate;
}

[[link(android)]]
class EndPortalObject : GameObject {
	// virtual ~EndPortalObject();

	static EndPortalObject* create() = android32 0x3e6340;

	TodoReturn getSpawnPos() = android32 0x3e6924;
	TodoReturn triggerObject(GJBaseGameLayer*) = android32 0x3e68ac;
	TodoReturn updateColors(cocos2d::ccColor3B) = android32 0x3e679c;
	TodoReturn updateEndPos(bool) = android32 0x3e6978;

	virtual bool init() = android32 0x3e60ac;
	virtual void setPosition(cocos2d::CCPoint const&) = android32 0x3e5f90;
	virtual void setVisible(bool) = android32 0x3e6b8c;
}

[[link(android)]]
class EndTriggerGameObject : EffectGameObject {
	// virtual ~EndTriggerGameObject();

	static EndTriggerGameObject* create() = android32 0x3d3fb8;

	virtual bool init() = android32 0x3d0d64;
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = android32 0x3d6664;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3d2402;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e2bd8;
}

[[link(android)]]
class EnhancedGameObject : GameObject {
	// virtual ~EnhancedGameObject();
	// EnhancedGameObject();

	static EnhancedGameObject* create(char const*) = android32 0x3517b0;

	TodoReturn createRotateAction(float, int) = android32 0x3519b4;
	bool init(char const*) = android32 0x351798;
	TodoReturn previewAnimateOnTrigger() = android32 0x507bb8;
	TodoReturn refreshRotateAction() = android32 0x351a28;
	TodoReturn resetSyncedAnimation() = android32 0x507bdc;
	TodoReturn setupAnimationVariables() = android32 0x50bb52;
	TodoReturn triggerAnimation() = android32 0x50696e;
	TodoReturn updateRotateAction(float) = android32 0x352b10;
	TodoReturn updateState(int) = android32 0x3518cc;
	TodoReturn updateUserCoin() = android32 0x3518ec;
	TodoReturn waitForAnimationTrigger() = android32 0x5069a8;

	virtual TodoReturn customSetup() = android32 0x351bc4;
	virtual TodoReturn resetObject() = android32 0x3478cc;
	virtual TodoReturn deactivateObject(bool) = android32 0x344618;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x351a34;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x355660;
	virtual TodoReturn triggerActivated(float) = android32 0x343bb8;
	virtual TodoReturn restoreObject() = android32 0x343b70;
	virtual TodoReturn animationTriggered() = android32 0x3441a6;
	virtual TodoReturn activatedByPlayer(PlayerObject*) = android32 0x344668;
	virtual TodoReturn hasBeenActivatedByPlayer(PlayerObject*) = android32 0x344696;
	virtual TodoReturn hasBeenActivated() = android32 0x343bc4;
	virtual TodoReturn saveActiveColors() = android32 0x349db6;
	virtual TodoReturn canAllowMultiActivate() = android32 0x343aa6;
	virtual TodoReturn getHasSyncedAnimation() = android32 0x343572;
	virtual TodoReturn getHasRotateAction() = android32 0x343578;
	virtual TodoReturn canMultiActivate(bool) = android32 0x343ba6;
	virtual TodoReturn powerOnObject(int) = android32 0x343b84;
	virtual TodoReturn powerOffObject() = android32 0x343b94;
	virtual TodoReturn stateSensitiveOff(GJBaseGameLayer*) = android32 0x343570;
	virtual TodoReturn updateSyncedAnimation(float, int) = android32 0x5069dc;
	virtual TodoReturn updateAnimateOnTrigger(bool) = android32 0x50bbf8;

	PAD = android32 0x25, android64 0x25;

	bool m_hasCustomAnimation;
	bool m_hasCustomRotation;
	// property 98
	bool m_disableRotation;
	PAD = android32 0x3, android64 0x3;

	// property 97
	float m_rotationSpeed;
	PAD = android32 0xc, android64 0xc;

	// property 106
	bool m_animationRandomizedStart;
	// property 107
	float m_animationSpeed;
	// property 122
	bool m_animationShouldUseSpeed;
	// property 123
	bool m_animateOnTrigger;
	// property 126
	bool m_disableDelayedLoop;
	// property 127
	bool m_disableAnimShine;
	// property 462
	int m_singleFrame;
	// property 592
	bool m_animationOffset;
	PAD = android32 0xf, android64 0xf;

	// property 214
	bool m_animateOnlyWhenActive;
	// property 444
	bool m_isNoMultiActivate; // used in platformer stuff
	// property 99
	bool m_isMultiActivate;
	PAD = android32 0x4, android64 0x4;
}

[[link(android)]]
class EnhancedTriggerObject : EffectGameObject {
	// virtual ~EnhancedTriggerObject();

	static EnhancedTriggerObject* create(char const*) = android32 0x3d29f4;

	bool init(char const*) = android32 0x3d29f0;

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3cb4b4;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3df68c;
}

[[link(android)]]
class EnterEffectInstance {
	// ~EnterEffectInstance();
	// EnterEffectInstance(EnterEffectInstance const&);
	// EnterEffectInstance(EnterEffectInstance&&);
	EnterEffectInstance(EnterEffectObject*, int, int, int, int, int, int);

	TodoReturn animateValue(int, float, float, float, int, float, int) = android32 0x567218;
	TodoReturn getValue(int) = android32 0x56717c;
	TodoReturn loadTransitions(EnterEffectObject*, float) = android32 0x56738c;
	TodoReturn loadValuesFromObject(EnterEffectObject*) = android32 0x567ac0;
	void setValue(int, float) = android32 0x567010;
	TodoReturn updateTransitions(float, GJBaseGameLayer*) = android32 0x5670be;
}

[[link(android)]]
class EnterEffectObject : EffectGameObject {
	// virtual ~EnterEffectObject();

	static EnterEffectObject* create(char const*) = android32 0x3d0800;

	bool init(char const*) = android32 0x3d07ea;
	TodoReturn resetEnterAnimValues() = android32 0x3ced04;

	virtual TodoReturn customSetup() = android32 0x3ced9c;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3ca9ec;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3daa64;
}

[[link(android)]]
class EventLinkTrigger : EffectGameObject {
	// virtual ~EventLinkTrigger();

	static EventLinkTrigger* create() = android32 0x3d378c;

	virtual bool init() = android32 0x3d0d2c;
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = android32 0x3d6500;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3d4d58;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e1a9c;
}

[[link(android)]]
class ExplodeItemNode : cocos2d::CCNode {
	// virtual ~ExplodeItemNode();

	static ExplodeItemNode* create(cocos2d::CCRenderTexture*) = android32 0x5436e4;

	TodoReturn createSprites(int, int, float, float, float, float, float, float, cocos2d::ccColor4F, cocos2d::ccColor4F, bool) = android32 0x543810;
	bool init(cocos2d::CCRenderTexture*) = android32 0x5436b0;

	virtual void update(float) = android32 0x543094;
}

[[link(android)]]
class ExplodeItemSprite : cocos2d::CCSprite {
	// virtual ~ExplodeItemSprite();

	static ExplodeItemSprite* create() = android32 0x543744;

	virtual bool init() = android32 0x548468;
}

[[link(android)]]
class ExtendedLayer : cocos2d::CCLayer {
	// virtual ~ExtendedLayer();

	static ExtendedLayer* create() = android32 0x2d61e8;

	virtual bool init() = android32 0x2d514e;
	virtual void setPosition(cocos2d::CCPoint const&) = android32 0x2d5308;
}

[[link(android)]]
class FileOperation {
	gd::string getFilePath() = android32 0x5d3284;
	TodoReturn readFile() = android32 0x5d3328;
	TodoReturn saveFile() = android32 0x5d32d4;
}

[[link(android)]]
class FileSaveManager : GManager {
	// virtual ~FileSaveManager();

	static FileSaveManager* sharedState() = android32 0x2ddf78;

	TodoReturn getStoreData() = android32 0x2ddff4;
	TodoReturn loadDataFromFile(char const*) = android32 0x2ddfec;

	virtual bool init() = android32 0x2ddf04;
	virtual void firstLoad() = android32 0x2ddff8;
}

[[link(android)]]
class FindBPMLayer : CreateGuidelinesLayer {
	// virtual ~FindBPMLayer();

	static FindBPMLayer* create(int) = android32 0x2fcd20;

	TodoReturn calculateBPM() = android32 0x2fce28;
	bool init(int) = android32 0x2fcc2c;

	virtual void onClose(cocos2d::CCObject* sender) = android32 0x2fb954;
	virtual TodoReturn playMusic() = android32 0x2fb8e8;
	virtual TodoReturn registerTouch() = android32 0x2fce68;
	virtual void onInfo(cocos2d::CCObject* sender) = android32 0x2fb5dc;
	virtual void onRecord(cocos2d::CCObject* sender) = android32 0x2fc060;
	virtual TodoReturn recordingDidStop() = android32 0x2fb8a8;
}

[[link(android)]]
class FindObjectPopup : SetIDPopup {
	// virtual ~FindObjectPopup();

	static FindObjectPopup* create() = android32 0x491f60;

	void onFindObjectID(cocos2d::CCObject* sender) = android32 0x491ff0;

	virtual bool init() = android32 0x491c90;
}

[[link(android)]]
class FLAlertLayer : cocos2d::CCLayerColor {
	~FLAlertLayer() {
		if (m_forcePrioRegistered) {
			cocos2d::CCTouchDispatcher::get()->unregisterForcePrio(this);
		}
	}
	FLAlertLayer() {
		m_buttonMenu = nullptr;
		m_controlConnected = -1;
		m_mainLayer = nullptr;
		m_ZOrder = 0;
		m_noElasticity = false;
		m_reverseKeyBack = false;
		m_scene = nullptr;
		m_alertProtocol = nullptr;
		m_scrollingLayer = nullptr;
		m_button2 = nullptr;
		m_button1 = nullptr;
		m_joystickConnected = -1;
		m_containsBorder = 0;
		m_forcePrioRegistered = false;
	}

	static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, gd::string desc, char const* btn1, char const* btn2, float width, bool scroll, float height, float textScale) = ios 0x2b3d40, android32 0x2ded4c;
	static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, gd::string desc, char const* btn1, char const* btn2, float width) = ios 0x2b3e4c, android32 0x2deeec;
	static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, gd::string desc, char const* btn1, char const* btn2) = ios 0x2b3c9c, android32 0x2dee78;

	static FLAlertLayer* create(char const* title, const gd::string& desc, char const* btn) {
		return FLAlertLayer::create(nullptr, title, desc, btn, nullptr, 300.0);
	}

	void incrementForcePrio() = ios 0x2ee4f4, android32 0x2de4f4;
	bool init(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float, bool, float, float) = ios 0x2b3ef8, android32 0x2de5b0;
	bool init(int) = ios 0x2b4834, android32 0x2de51c;
	void onBtn1(cocos2d::CCObject* sender) = ios 0x2b4934, android32 0x2de198;
	void onBtn2(cocos2d::CCObject* sender) = ios 0x2b4994, android32 0x2de1cc;

	// virtual void onEnter(); // only exists on armv7...
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2de43a = android32 0x2de3ec;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2de4ec = android32 0x2de4c0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2de484 = android32 0x2de442;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2de4b8 = android32 0x2de48c;
	virtual void registerWithTouchDispatcher() = android32 0x2de3cc;
	virtual void keyBackClicked() = ios 0x2b4a24, android32 0x2de234, android32 0x2de200;
	virtual void keyDown(cocos2d::enumKeyCodes) = ios 0x2b49f4, android32 0x2def7c, android32 0x2def5c;
	virtual void show() = ios 0x2b4cf0, android32 0x2de2cc;

	cocos2d::CCMenu* m_buttonMenu;
	FLAlertLayerProtocol* m_alertProtocol;
	cocos2d::CCNode* m_scene;
	bool m_reverseKeyBack;
	cocos2d::ccColor3B m_color;
	cocos2d::CCLayer* m_mainLayer;
	int m_ZOrder;
	bool m_noElasticity;
	cocos2d::ccColor3B m_color2;
	ButtonSprite* m_button1;
	ButtonSprite* m_button2;
	ScrollingLayer* m_scrollingLayer;
	int m_controlConnected;
	bool m_containsBorder;
	bool m_noAction;
	int m_joystickConnected;
	bool m_forcePrioRegistered;
}

[[link(android)]]
class FLAlertLayerProtocol {
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class FMODAudioEngine : cocos2d::CCNode {
	// virtual ~FMODAudioEngine();
	// FMODAudioEngine();

	static FMODAudioEngine* sharedEngine() = android32 0x2f37a8;

	TodoReturn activateQueuedMusic(int) = android32 0x2f76bc;
	TodoReturn channelForChannelID(int) = android32 0x2f4ec2;
	TodoReturn channelForUniqueID(int) = android32 0x2f51f0;
	TodoReturn channelIDForUniqueID(int) = android32 0x2f51d2;
	TodoReturn channelLinkSound(int, FMODSound*) = android32 0x2f5438;
	TodoReturn channelStopped(FMOD::Channel*, bool) = android32 0x2f8410;
	TodoReturn channelUnlinkSound(int) = android32 0x2f811c;
	TodoReturn clearAllAudio() = android32 0x2f388c;
	TodoReturn countActiveEffects() = android32 0x2f23c8;
	TodoReturn countActiveMusic() = android32 0x2f2368;
	TodoReturn createStream(gd::string) = android32 0x2f274c;
	TodoReturn disableMetering() = android32 0x2f240c;
	TodoReturn enableMetering() = android32 0x2f23f0;
	TodoReturn fadeInBackgroundMusic(float) = android32 0x2f2564;
	TodoReturn fadeInMusic(float, int) = android32 0x2f5cb4;
	TodoReturn fadeOutMusic(float, int) = android32 0x2f5d74;
	TodoReturn getActiveMusic(int) = android32 0x2f5e38;
	TodoReturn getActiveMusicChannel(int) = android32 0x2f5c28;
	float getBackgroundMusicVolume() = android32 0x2f2638;
	TodoReturn getChannelGroup(int, bool) = android32 0x2f4a04;
	float getEffectsVolume() = android32 0x2f2650;
	TodoReturn getFMODStatus(int) = android32 0x2f28fc;
	float getMeteringValue() = android32 0x2f2420;
	TodoReturn getMusicChannelID(int) = android32 0x2f5884;
	TodoReturn getMusicLengthMS(int) = android32 0x2f582c;
	TodoReturn getMusicTime(int) = android32 0x2f580c;
	TodoReturn getMusicTimeMS(int) = android32 0x2f57c0;
	TodoReturn getNextChannelID() = android32 0x2f2448;
	TodoReturn getTweenContainer(AudioTargetType) = android32 0x2f23d6;
	bool isChannelStopping(int) = android32 0x2f2538;
	bool isEffectLoaded(gd::string) = android32 0x2f77e6;
	bool isMusicPlaying(gd::string, int) = android32 0x2f5e90;
	bool isMusicPlaying(int) = android32 0x2f5c50;
	bool isSoundReady(FMOD::Sound*) = android32 0x2f2664;
	TodoReturn lengthForSound(gd::string) = android32 0x2f8100;
	TodoReturn loadAndPlayMusic(gd::string, unsigned int, int) = android32 0x2f6984;
	TodoReturn loadAudioState(FMODAudioState&) = android32 0x2f8c98;
	TodoReturn loadMusic(gd::string, float, float, float, bool, int, int) = android32 0x2f6758;
	TodoReturn loadMusic(gd::string) = android32 0x2f6aa0;
	TodoReturn pauseAllAudio() = android32 0x2f2270;
	TodoReturn pauseAllEffects() = android32 0x2f254e;
	TodoReturn pauseAllMusic() = android32 0x2f5028;
	TodoReturn pauseEffect(unsigned int) = android32 0x2f254a;
	TodoReturn pauseMusic(int) = android32 0x2f5c8c;
	TodoReturn pitchForIdx(int) = android32 0x2f2428;
	void playEffect(gd::string, float, float, float) = android32 0x2f90c0;
	void playEffect(gd::string) = android32 0x2f913c;
	TodoReturn playEffectAdvanced(gd::string, float, float, float, float, bool, bool, int, int, int, int, bool, int, bool, bool, int, int, float, int) = android32 0x2f86b8;
	TodoReturn playEffectAsync(gd::string) = android32 0x2f904c;
	TodoReturn playMusic(gd::string, bool, float, int) = android32 0x2f69fc;
	TodoReturn preloadEffect(gd::string) = android32 0x2f7e58;
	TodoReturn preloadEffectAsync(gd::string) = android32 0x2f7968;
	TodoReturn preloadMusic(gd::string, bool, int) = android32 0x2f6654;
	TodoReturn printResult(FMOD_RESULT) = android32 0x2f2aec;
	TodoReturn queuedEffectFinishedLoading(gd::string) = android32 0x2f918c;
	TodoReturn queuePlayEffect(gd::string, float, float, float, float, bool, bool, int, int, int, int, bool, int, bool, int, float, int) = android32 0x2f7abc;
	TodoReturn queueStartMusic(gd::string, float, float, float, bool, int, int, int, int, int, bool, int, bool) = android32 0x2f7598;
	TodoReturn registerChannel(FMOD::Channel*, int, int) = android32 0x2f5204;
	TodoReturn releaseRemovedSounds() = android32 0x2f2854;
	TodoReturn resumeAllAudio() = android32 0x2f229a;
	TodoReturn resumeAllEffects() = android32 0x2f2558;
	TodoReturn resumeAllMusic() = android32 0x2f5048;
	TodoReturn resumeAudio() = android32 0x2f2240;
	TodoReturn resumeEffect(unsigned int) = android32 0x2f254c;
	TodoReturn resumeMusic(int) = android32 0x2f5ca0;
	TodoReturn reverbToString(FMODReverbPreset) = android32 0x2f20a0;
	TodoReturn saveAudioState(FMODAudioState&) = android32 0x2f4f28;
	void setBackgroundMusicVolume(float) = android32 0x2f263e;
	void setChannelPitch(int, AudioTargetType, float) = android32 0x2f5ac4;
	void setChannelVolume(int, AudioTargetType, float) = android32 0x2f58a4;
	void setChannelVolumeMod(int, AudioTargetType, float) = android32 0x2f59b4;
	void setEffectsVolume(float) = android32 0x2f2656;
	void setMusicTimeMS(unsigned int, bool, int) = android32 0x2f5754;
	TodoReturn setup() = android32 0x2f7f78;
	TodoReturn setupAudioEngine() = android32 0x2f1e48;
	TodoReturn start() = android32 0x2f21dc;
	TodoReturn startMusic(int, int, int, int, bool, int, bool) = android32 0x2f6028;
	TodoReturn stop() = android32 0x2f2244;
	TodoReturn stopAllEffects() = android32 0x2f37f0;
	TodoReturn stopAllMusic() = android32 0x2f2e3a;
	TodoReturn stopAndGetFade(FMOD::Channel*) = android32 0x2f2458;
	TodoReturn stopAndRemoveMusic(int) = android32 0x2f65f6;
	TodoReturn stopChannel(FMOD::Channel*, bool, float) = android32 0x2f6f84;
	TodoReturn stopChannel(int, AudioTargetType, bool, float) = android32 0x2f70b4;
	TodoReturn stopChannel(int) = android32 0x2f7230;
	TodoReturn stopChannelTween(int, AudioTargetType, AudioModType) = android32 0x2f5fd4;
	TodoReturn stopChannelTweens(int, AudioTargetType) = android32 0x2f6008;
	TodoReturn stopMusic(int) = android32 0x2f664e;
	TodoReturn stopMusicNotInSet(std::unordered_set<int, std::hash<int>, std::equal_to<int>, std::allocator<int> >&);
	TodoReturn storeEffect(FMOD::Sound*, gd::string) = android32 0x2f7d1c;
	TodoReturn swapMusicIndex(int, int) = android32 0x2f6af8;
	TodoReturn testFunction(int) = android32 0x2f2426;
	TodoReturn triggerQueuedMusic(FMODQueuedMusic) = android32 0x2f6d38;
	TodoReturn unloadAllEffects() = android32 0x2f77f8;
	TodoReturn unloadEffect(gd::string) = android32 0x2f2562;
	TodoReturn unregisterChannel(int) = android32 0x2f8270;
	TodoReturn updateBackgroundFade() = android32 0x2f2584;
	TodoReturn updateChannel(int, AudioTargetType, AudioModType, float, float) = android32 0x2f632c;
	TodoReturn updateChannelTweens(float) = android32 0x2f5b3c;
	TodoReturn updateMetering() = android32 0x2f2414;
	TodoReturn updateQueuedEffects() = android32 0x2f93e0;
	TodoReturn updateQueuedMusic() = android32 0x2f7488;
	TodoReturn updateReverb(FMODReverbPreset, bool) = android32 0x2f1cec;
	TodoReturn updateTemporaryEffects() = android32 0x2f85dc;
	TodoReturn waitUntilSoundReady(FMOD::Sound*) = android32 0x2f26e0;

	virtual void update(float) = android32 0x2f94fc;

	PAD = win 0x60, android32 0x50, android64 0xac;
	float m_musicVolume;
	float m_sfxVolume;
	PAD = win 0x1c, android32 0x20, android64 0x20;
	FMOD::Channel* m_backgroundMusicChannel;
	FMOD::System* m_system;
}

[[link(android)]]
class FMODAudioState {
	// ~FMODAudioState();
	// FMODAudioState();
}

[[link(android)]]
class FMODLevelVisualizer : cocos2d::CCNode {
	// virtual ~FMODLevelVisualizer();

	static FMODLevelVisualizer* create() = android32 0x493030;

	TodoReturn updateVisualizer(float, float, float) = android32 0x493080;

	virtual bool init() = android32 0x493244;
}

[[link(android)]]
class FollowRewardPage : FLAlertLayer, FLAlertLayerProtocol, GameRateDelegate, RewardedVideoDelegate {
	// virtual ~FollowRewardPage();

	static FollowRewardPage* create() = android32 0x4dd65c;

	void onClose(cocos2d::CCObject* sender) = android32 0x4dd1b2;
	void onRewardedVideo(cocos2d::CCObject* sender) = android32 0x4dd740;
	void onSpecialItem(cocos2d::CCObject* sender) = android32 0x4de2f8;
	TodoReturn switchToOpenedState(CCMenuItemSpriteExtra*) = android32 0x4dd944;

	virtual bool init() = android32 0x4dd9f0;
	virtual void registerWithTouchDispatcher() = android32 0x4dd4c4;
	virtual void keyBackClicked() = android32 0x4dd1d6 = android32 0x4dd1d0;
	virtual void show() = android32 0x4dd558;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x4dd54e = android32 0x4dd4e8;
	virtual TodoReturn rewardedVideoFinished() = android32 0x4dd1aa = android32 0x4dd1a2;
	virtual TodoReturn updateRate() = android32 0x4dd4bc = android32 0x4dd2b0;
}

[[link(android)]]
class FontObject : cocos2d::CCObject {
	// virtual ~FontObject();

	TodoReturn createWithConfigFile(char const*, float) = android32 0x2d4260;
	TodoReturn getFontWidth(int) = android32 0x2d4388;
	TodoReturn initWithConfigFile(char const*, float) = android32 0x2d4254;
	TodoReturn parseConfigFile(char const*, float) = android32 0x2d3fd4;
}

[[link(android)]]
class ForceBlockGameObject : EffectGameObject {
	// virtual ~ForceBlockGameObject();

	static ForceBlockGameObject* create(char const*) = android32 0x3d42e4;

	TodoReturn calculateForceToTarget(GameObject*) = android32 0x3d4368;
	bool init(char const*) = android32 0x3d42e0;

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3cbde8;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e4cfc;
}

[[link(android)]]
class FRequestProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, FriendRequestDelegate {
	// virtual ~FRequestProfilePage();

	static FRequestProfilePage* create(bool) = android32 0x4a2600;

	TodoReturn deleteSelected() = android32 0x4a1880;
	bool init(bool) = android32 0x4a25e4;
	bool isCorrect(char const*) = android32 0x4a1a04;
	TodoReturn loadPage(int) = android32 0x4a1c5c;
	void onClose(cocos2d::CCObject* sender) = android32 0x4a278c;
	void onDeleteSelected(cocos2d::CCObject* sender) = android32 0x4a15ec;
	void onNextPage(cocos2d::CCObject* sender) = android32 0x4a2832;
	void onPrevPage(cocos2d::CCObject* sender) = android32 0x4a283c;
	void onSentRequests(cocos2d::CCObject* sender) = android32 0x4a2730;
	void onToggleAllObjects(cocos2d::CCObject* sender) = android32 0x4a158a;
	void onUpdate(cocos2d::CCObject* sender) = android32 0x4a1840;
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*) = android32 0x4a1ab4;
	TodoReturn untoggleAll() = android32 0x4a19ca;
	TodoReturn updateLevelsLabel() = android32 0x4a2884;
	TodoReturn updatePageArrows() = android32 0x4a2846;

	virtual void registerWithTouchDispatcher() = android32 0x4a1700;
	virtual void keyBackClicked() = android32 0x4a2812 = android32 0x4a280c;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x4a19c2 = android32 0x4a19a4;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = android32 0x4a1740 = android32 0x4a1724;
	virtual TodoReturn uploadActionFinished(int, int) = android32 0x4a17dc = android32 0x4a1748;
	virtual TodoReturn uploadActionFailed(int, int) = android32 0x4a1838 = android32 0x4a17e4;
	virtual TodoReturn loadFRequestsFinished(cocos2d::CCArray*, char const*) = android32 0x4a1c52 = android32 0x4a1c0c;
	virtual TodoReturn loadFRequestsFailed(char const*, GJErrorCode) = android32 0x4a1aac = android32 0x4a1a4c;
	virtual TodoReturn setupPageInfo(gd::string, char const*) = android32 0x4a29c4 = android32 0x4a2888;
	virtual TodoReturn forceReloadRequests(bool) = android32 0x4a282a = android32 0x4a281a;
}

[[link(android)]]
class FriendRequestDelegate {
	virtual TodoReturn loadFRequestsFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadFRequestsFailed(char const*, GJErrorCode);
	virtual TodoReturn setupPageInfo(gd::string, char const*);
	virtual TodoReturn forceReloadRequests(bool);
}

[[link(android)]]
class FriendRequestPopup : FLAlertLayer, UploadActionDelegate, UploadPopupDelegate, FLAlertLayerProtocol {
	// virtual ~FriendRequestPopup();

	static FriendRequestPopup* create(GJFriendRequest*) = android32 0x48f588;

	TodoReturn blockUser() = android32 0x48f63c;
	bool init(GJFriendRequest*) = android32 0x48f134;
	TodoReturn loadFromGJFriendRequest(GJFriendRequest*) = android32 0x48ec14;
	void onAccept(cocos2d::CCObject* sender) = android32 0x48e468;
	void onBlock(cocos2d::CCObject* sender) = android32 0x488868;
	void onClose(cocos2d::CCObject* sender) = android32 0x488810;
	void onRemove(cocos2d::CCObject* sender) = android32 0x48e4e0;

	virtual void keyBackClicked() = android32 0x48885e = android32 0x488858;
	virtual TodoReturn uploadActionFinished(int, int) = android32 0x48e848 = android32 0x48e774;
	virtual TodoReturn uploadActionFailed(int, int) = android32 0x48ea8c = android32 0x48ea20;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = android32 0x48ebd8 = android32 0x48ebac;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x48f6ce = android32 0x48f6b0;
}

[[link(android)]]
class FriendsProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, UserListDelegate {
	// virtual ~FriendsProfilePage();

	static FriendsProfilePage* create(UserListType) = android32 0x4a32d0;

	bool init(UserListType) = android32 0x4a2d6c;
	void onBlocked(cocos2d::CCObject* sender) = android32 0x4a33d4;
	void onClose(cocos2d::CCObject* sender) = android32 0x4a342a;
	void onUpdate(cocos2d::CCObject* sender) = android32 0x4a2b38;
	TodoReturn setupUsersBrowser(cocos2d::CCArray*, UserListType) = android32 0x4a2b78;

	virtual void registerWithTouchDispatcher() = android32 0x4a2aac;
	virtual void keyBackClicked() = android32 0x4a34aa = android32 0x4a34a4;
	virtual TodoReturn getUserListFinished(cocos2d::CCArray*, UserListType) = android32 0x4a3564 = android32 0x4a34b2;
	virtual TodoReturn getUserListFailed(UserListType, GJErrorCode) = android32 0x4a2b30 = android32 0x4a2ad0;
	virtual TodoReturn userListChanged(cocos2d::CCArray*, UserListType) = android32 0x4a29dc = android32 0x4a29d4;
	virtual TodoReturn forceReloadList(UserListType) = android32 0x4a35c0 = android32 0x4a356c;
}

[[link(android)]]
class GameCell : TableViewCell {
	// virtual ~GameCell();
	GameCell(char const*, float, float);

	TodoReturn loadFromString(gd::string) = android32 0x2d4e10;
	void onTouch(cocos2d::CCObject* sender) = android32 0x2d4a64;
	TodoReturn updateBGColor(int) = android32 0x2d5080;

	virtual bool init() = android32 0x2d4798;
	virtual void draw() = android32 0x2d49ec;
}

[[link(android)]]
class GameEffectsManager : cocos2d::CCNode {
	// virtual ~GameEffectsManager();

	static GameEffectsManager* create(PlayLayer*) = android32 0x391e34;

	TodoReturn addParticleEffect(cocos2d::CCParticleSystemQuad*, int) = android32 0x391fb0;
	bool init(PlayLayer*) = android32 0x391e2a;
	TodoReturn scaleParticle(cocos2d::CCParticleSystemQuad*, float) = android32 0x391e88;
}

[[link(android)]]
class GameLevelManager : cocos2d::CCNode {
	// virtual ~GameLevelManager();

	static GameLevelManager* sharedState() = android32 0x3a8ea4;
	static GameLevelManager* get() {
		return GameLevelManager::sharedState();
	}

	TodoReturn acceptFriendRequest(int, int) = android32 0x3bbd50;
	int accountIDForUserID(int accountID) = android32 0x3a957c;
	void addDLToActive(char const* tag) = android32 0x3a9c2c;
	TodoReturn areGauntletsLoaded() = android32 0x3ab03c;
	TodoReturn banUser(int) = android32 0x3ab49c;
	TodoReturn blockUser(int) = android32 0x3bc184;
	TodoReturn cleanupDailyLevels() = android32 0x3aa120;
	TodoReturn createAndGetAccountComments(gd::string, int) = android32 0x3b6a90;
	TodoReturn createAndGetCommentsFull(gd::string, int, bool) = android32 0x3b66d0;
	TodoReturn createAndGetLevelComments(gd::string, int) = android32 0x3b68b8;
	TodoReturn createAndGetLevelLists(gd::string) = android32 0x3bf898;
	TodoReturn createAndGetLevels(gd::string) = android32 0x3afb90;
	TodoReturn createAndGetMapPacks(gd::string) = android32 0x3b317c;
	TodoReturn createAndGetScores(gd::string, GJScoreType) = android32 0x3b4478;
	GJGameLevel* createNewLevel() = android32 0x3aeba8;
	TodoReturn createNewLevelList() = android32 0x3b78a0;
	TodoReturn createPageInfo(int, int, int) = android32 0x3a9b8c;
	TodoReturn createSmartTemplate() = android32 0x3aa544;
	void dataLoaded(DS_Dictionary*) = android32 0x3c106c;
	TodoReturn deleteAccountComment(int, int) = android32 0x3bb842;
	TodoReturn deleteComment(int, CommentType, int) = android32 0x3bb600;
	TodoReturn deleteFriendRequests(int, cocos2d::CCArray*, bool) = android32 0x3bbb2c;
	TodoReturn deleteLevel(GJGameLevel*) = android32 0x3b03c0;
	TodoReturn deleteLevelComment(int, int) = android32 0x3bb838;
	TodoReturn deleteLevelList(GJLevelList*) = android32 0x3aadfc;
	TodoReturn deleteSentFriendRequest(int) = android32 0x3bbd48;
	TodoReturn deleteServerLevel(int) = android32 0x3b97f4;
	TodoReturn deleteServerLevelList(int) = android32 0x3bdf2c;
	TodoReturn deleteSmartTemplate(GJSmartTemplate*) = android32 0x3aa566;
	TodoReturn deleteUserMessages(GJUserMessage* message, cocos2d::CCArray* messages, bool isSender) = android32 0x3babf8;
	TodoReturn downloadLevel(int, bool) = android32 0x3b9178;
	TodoReturn downloadUserMessage(int, bool) = android32 0x3ba8ec;
	void encodeDataTo(DS_Dictionary*) = android32 0x3b10b0;
	void firstSetup() = android32 0x3aa59e;
	TodoReturn followUser(int) = android32 0x3aa300;
	TodoReturn friendRequestFromAccountID(int) = android32 0x3ab678;
	TodoReturn friendRequestWasRemoved(int, bool) = android32 0x3ac9bc;
	TodoReturn getAccountCommentKey(int, int) = android32 0x3ab91c;
	void getAccountComments(int accountID, int page, int total) = android32 0x3bb038;
	TodoReturn getActiveDailyID(GJTimedLevelType) = android32 0x3ade94;
	TodoReturn getActiveSmartTemplate() = android32 0x3aa4d6;
	TodoReturn getAllSmartTemplates() = android32 0x3aa588;
	TodoReturn getAllUsedSongIDs() = android32 0x3ae764;
	gd::string getBasePostString() = android32 0x3aa7d4;
	bool getBoolForKey(char const*) = android32 0x3ae460;
	gd::string getCommentKey(int ID, int page, int mode, CommentKeyType keytype) = android32 0x3ab70c;
	TodoReturn getCompletedDailyLevels() = android32 0x3b0264;
	TodoReturn getCompletedGauntletDemons() = android32 0x3b02d8;
	TodoReturn getCompletedGauntletLevels() = android32 0x3b034c;
	cocos2d::CCArray* getCompletedLevels(bool) = android32 0x3b04c4;
	TodoReturn getCompletedWeeklyLevels() = android32 0x3b01f0;
	TodoReturn getDailyID(GJTimedLevelType) = android32 0x3ade74;
	TodoReturn getDailyTimer(GJTimedLevelType) = android32 0x3adeb4;
	TodoReturn getDeleteCommentKey(int, int, int) = android32 0x3ab9dc;
	TodoReturn getDeleteMessageKey(int, bool) = android32 0x3ab904;
	TodoReturn getDemonLevelsString() = android32 0x3be098;
	TodoReturn getDescKey(int) = android32 0x3ab9ac;
	TodoReturn getDifficultyStr(bool, bool, bool, bool, bool, bool, bool, bool) = android32 0x3aa8ac;
	TodoReturn getDiffKey(int) = android32 0x3ae1a0;
	TodoReturn getDiffVal(int) = android32 0x3ae1b8;
	TodoReturn getFolderName(int, bool) = android32 0x3aa3e4;
	TodoReturn getFriendRequestKey(bool, int) = android32 0x3ab758;
	TodoReturn getFriendRequests(bool, int, int) = android32 0x3bb84c;
	TodoReturn getGauntletKey(int) = android32 0x3aaf7c;
	TodoReturn getGauntletLevels(int) = android32 0x3b900c;
	TodoReturn getGauntlets() = android32 0x3b8eec;
	TodoReturn getGauntletSearchKey(int) = android32 0x3aaf3c;
	TodoReturn getGJChallenges() = android32 0x3bcd8c;
	TodoReturn getGJDailyLevelState(GJTimedLevelType) = android32 0x3bcf40;
	void getGJRewards(int) = android32 0x3bcb20;
	TodoReturn getGJUserInfo(int) = android32 0x3ba698;
	TodoReturn getHighestLevelOrder() = android32 0x3a9864;
	TodoReturn getIntForKey(char const*) = android32 0x3ae3b0;
	TodoReturn getLeaderboardScores(char const*) = android32 0x3b9c8c;
	TodoReturn getLengthStr(bool, bool, bool, bool, bool, bool) = android32 0x3aaa20;
	TodoReturn getLenKey(int) = android32 0x3ae278;
	TodoReturn getLenVal(int) = android32 0x3ae290;
	void getLevelComments(int ID, int page, int total, int mode, CommentKeyType keytype) = android32 0x3bae3c;
	TodoReturn getLevelDownloadKey(int, bool) = android32 0x3ab058;
	TodoReturn getLevelKey(int) = android32 0x3a95a0;
	void getLevelLeaderboard(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = android32 0x3b9f2c;
	TodoReturn getLevelLeaderboardKey(int, LevelLeaderboardType, LevelLeaderboardMode) = android32 0x3ab6f4;
	TodoReturn getLevelListKey(int) = android32 0x3aade4;
	void getLevelLists(GJSearchObject*) = android32 0x3bd2c4;
	TodoReturn getLevelSaveData() = android32 0x3b8cac;
	TodoReturn getLikeAccountItemKey(LikeItemType, int, bool, int) = android32 0x3ad024;
	TodoReturn getLikeItemKey(LikeItemType, int, bool, int) = android32 0x3acfac;
	TodoReturn getLocalLevel(int) = android32 0x3a90b4;
	TodoReturn getLocalLevelByName(gd::string) = android32 0x3a9044;
	TodoReturn getLocalLevelList(int) = android32 0x3a92e0;
	TodoReturn getLowestLevelOrder() = android32 0x3a989a;
	GJGameLevel* getMainLevel(int, bool) = android32 0x3a95b8;
	TodoReturn getMapPackKey(int) = android32 0x3aacfc;
	TodoReturn getMapPacks(GJSearchObject*) = android32 0x3b8dc8;
	TodoReturn getMessageKey(int) = android32 0x3ab770;
	TodoReturn getMessagesKey(bool, int) = android32 0x3ab788;
	TodoReturn getNews() = android32 0x3ab6cc;
	TodoReturn getNextFreeTemplateID() = android32 0x3aa4e2;
	TodoReturn getNextLevelName(gd::string) = android32 0x3a90e4;
	TodoReturn getOnlineLevels(GJSearchObject*) = android32 0x3bd428;
	TodoReturn getPageInfo(char const*) = android32 0x3a9b30;
	TodoReturn getPostCommentKey(int) = android32 0x3ab9c4;
	TodoReturn getRateStarsKey(int) = android32 0x3ab174;
	TodoReturn getReportKey(int) = android32 0x3ae020;
	GJGameLevel* getSavedDailyLevel(int) = android32 0x3a9a04;
	GJGameLevel* getSavedDailyLevelFromLevelID(int) = android32 0x3a9a60;
	GJGameLevel* getSavedGauntlet(int) = android32 0x3aaf94;
	GJGameLevel* getSavedGauntletLevel(int) = android32 0x3a9aa0;
	GJGameLevel* getSavedLevel(GJGameLevel*) = android32 0x3a9afc;
	GJGameLevel* getSavedLevel(int) = android32 0x3a99b4;
	TodoReturn getSavedLevelList(int) = android32 0x3aae6c;
	TodoReturn getSavedLevelLists(int) = android32 0x3a97f4;
	cocos2d::CCArray* getSavedLevels(bool, int) = android32 0x3a9714;
	TodoReturn getSavedMapPack(int) = android32 0x3aad14;
	TodoReturn getSearchScene(char const*) = android32 0x3b5d2c;
	TodoReturn getSplitIntFromKey(char const*, int) = android32 0x3ab9f4;
	TodoReturn getStarLevelsString() = android32 0x3be3ec;
	TodoReturn getStoredLevelComments(char const*) = android32 0x3ac0d0;
	cocos2d::CCArray* getStoredOnlineLevels(char const*) = android32 0x3a9e5c;
	TodoReturn getStoredUserList(UserListType) = android32 0x3ac690;
	TodoReturn getStoredUserMessage(int) = android32 0x3ab690;
	TodoReturn getStoredUserMessageReply(int) = android32 0x3ab6aa;
	TodoReturn getTimeLeft(char const*, float) = android32 0x3a9ec0;
	void getTopArtists(int page, int total) = android32 0x3ba428;
	const char *getTopArtistsKey(int page);
	TodoReturn getUploadMessageKey(int) = android32 0x3ab6b4;
	TodoReturn getUserInfoKey(int) = android32 0x3ab53c;
	TodoReturn getUserList(UserListType) = android32 0x3bc44c;
	TodoReturn getUserMessages(bool, int, int) = android32 0x3ba7b4;
	TodoReturn getUsers(GJSearchObject*) = android32 0x3ba558;
	TodoReturn gotoLevelPage(GJGameLevel*) = android32 0x3b082c;
	void handleIt(bool, gd::string, gd::string, GJHttpType) = android32 0x3bfb80;
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType) = android32 0x3b6d74;
	TodoReturn handleItND(cocos2d::CCNode*, void*) = android32 0x3c0460;
	TodoReturn hasDailyStateBeenLoaded(GJTimedLevelType) = android32 0x3ade4c;
	TodoReturn hasDownloadedLevel(int) = android32 0x3ab0f8;
	TodoReturn hasDownloadedList(int) = android32 0x3ab152;
	TodoReturn hasLikedAccountItem(LikeItemType, int, bool, int) = android32 0x3ad040;
	TodoReturn hasLikedItem(LikeItemType, int, bool, int) = android32 0x3acfc8;
	bool hasLikedItemFullCheck(LikeItemType, int, int) = android32 0x3ad09c;
	TodoReturn hasRatedDemon(int) = android32 0x3ab3a0;
	TodoReturn hasRatedLevelStars(int) = android32 0x3ab2b8;
	TodoReturn hasReportedLevel(int) = android32 0x3ae14c;
	TodoReturn invalidateMessages(bool, bool) = android32 0x3ab870;
	TodoReturn invalidateRequests(bool, bool) = android32 0x3acc64;
	TodoReturn invalidateUserList(UserListType, bool) = android32 0x3acdf8;
	bool isDLActive(char const*) = android32 0x3a9bdc;
	bool isFollowingUser(int) = android32 0x3aa2a0;
	bool isTimeValid(char const*, float) = android32 0x3a9de0;
	bool isUpdateValid(int) = android32 0x3ab158;
	TodoReturn itemIDFromLikeKey(char const*) = android32 0x3ad1fc;
	TodoReturn keyHasTimer(char const*) = android32 0x3a9f70;
	TodoReturn levelIDFromCommentKey(char const*) = android32 0x3abef4;
	TodoReturn levelIDFromPostCommentKey(char const*) = android32 0x3abe8c;
	TodoReturn likeFromLikeKey(char const*) = android32 0x3ad264;
	TodoReturn likeItem(LikeItemType, int, bool, int) = android32 0x3bc6f4;
	TodoReturn limitSavedLevels() = android32 0x3aa010;
	TodoReturn makeTimeStamp(char const*) = android32 0x3a9ccc;
	TodoReturn markItemAsLiked(LikeItemType, int, bool, int) = android32 0x3ad0e4;
	TodoReturn markLevelAsDownloaded(int) = android32 0x3ab070;
	TodoReturn markLevelAsRatedDemon(int) = android32 0x3ab30c;
	TodoReturn markLevelAsRatedStars(int) = android32 0x3ab22c;
	TodoReturn markLevelAsReported(int) = android32 0x3ae0c4;
	TodoReturn markListAsDownloaded(int) = android32 0x3ab14c;
	TodoReturn messageWasRemoved(int, bool) = android32 0x3ab7a0;
	TodoReturn onAcceptFriendRequestCompleted(gd::string, gd::string) = android32 0x3aca8c;
	TodoReturn onBanUserCompleted(gd::string, gd::string) = android32 0x3ab4a0;
	TodoReturn onBlockUserCompleted(gd::string, gd::string) = android32 0x3acb74;
	TodoReturn onDeleteCommentCompleted(gd::string, gd::string) = android32 0x3ac4b4;
	TodoReturn onDeleteFriendRequestCompleted(gd::string, gd::string) = android32 0x3accf8;
	TodoReturn onDeleteServerLevelCompleted(gd::string, gd::string) = android32 0x3ab400;
	TodoReturn onDeleteServerLevelListCompleted(gd::string, gd::string) = android32 0x3b7b14;
	TodoReturn onDeleteUserMessagesCompleted(gd::string, gd::string) = android32 0x3abcf4;
	TodoReturn onDownloadLevelCompleted(gd::string, gd::string) = android32 0x3b0e90;
	TodoReturn onDownloadUserMessageCompleted(gd::string, gd::string) = android32 0x3b57a4;
	TodoReturn onGetAccountCommentsCompleted(gd::string, gd::string) = android32 0x3b6adc;
	TodoReturn onGetFriendRequestsCompleted(gd::string, gd::string) = android32 0x3b4f30;
	TodoReturn onGetGauntletsCompleted(gd::string, gd::string) = android32 0x3b3558;
	TodoReturn onGetGJChallengesCompleted(gd::string, gd::string) = android32 0x3ad800;
	TodoReturn onGetGJDailyLevelStateCompleted(gd::string, gd::string) = android32 0x3adcd4;
	TodoReturn onGetGJRewardsCompleted(gd::string, gd::string) = android32 0x3ad414;
	TodoReturn onGetGJUserInfoCompleted(gd::string, gd::string) = android32 0x3b4e5c;
	TodoReturn onGetLeaderboardScoresCompleted(gd::string, gd::string) = android32 0x3b4574;
	TodoReturn onGetLevelCommentsCompleted(gd::string, gd::string) = android32 0x3b6904;
	TodoReturn onGetLevelLeaderboardCompleted(gd::string, gd::string) = android32 0x3b470c;
	TodoReturn onGetLevelListsCompleted(gd::string, gd::string) = android32 0x3bf958;
	TodoReturn onGetLevelSaveDataCompleted(gd::string, gd::string) = android32 0x3b2828;
	TodoReturn onGetMapPacksCompleted(gd::string, gd::string) = android32 0x3b323c;
	TodoReturn onGetNewsCompleted(gd::string, gd::string) = android32 0x3ab6da;
	TodoReturn onGetOnlineLevelsCompleted(gd::string, gd::string) = android32 0x3afe04;
	TodoReturn onGetTopArtistsCompleted(gd::string, gd::string) = android32 0x3ae57c;
	TodoReturn onGetUserListCompleted(gd::string, gd::string) = android32 0x3b4958;
	TodoReturn onGetUserMessagesCompleted(gd::string, gd::string) = android32 0x3b5554;
	TodoReturn onGetUsersCompleted(gd::string, gd::string) = android32 0x3b47d4;
	TodoReturn onLikeItemCompleted(gd::string, gd::string) = android32 0x3ad2cc;
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient* client, cocos2d::extension::CCHttpResponse* response) = android32 0x3c03d0;
	TodoReturn onRateDemonCompleted(gd::string, gd::string) = android32 0x3abb3c;
	TodoReturn onRateStarsCompleted(gd::string, gd::string) = android32 0x3ab18c;
	TodoReturn onReadFriendRequestCompleted(gd::string, gd::string) = android32 0x3ac648;
	TodoReturn onRemoveFriendCompleted(gd::string, gd::string) = android32 0x3ac714;
	TodoReturn onReportLevelCompleted(gd::string, gd::string) = android32 0x3ae038;
	TodoReturn onRequestUserAccessCompleted(gd::string, gd::string) = android32 0x3acef0;
	TodoReturn onRestoreItemsCompleted(gd::string, gd::string) = android32 0x3aded8;
	TodoReturn onSetLevelFeaturedCompleted(gd::string, gd::string) = android32 0x3ab500;
	TodoReturn onSetLevelStarsCompleted(gd::string, gd::string) = android32 0x3abc50;
	TodoReturn onSubmitUserInfoCompleted(gd::string, gd::string) = android32 0x3adfe4;
	TodoReturn onSuggestLevelStarsCompleted(gd::string, gd::string) = android32 0x3aba64;
	TodoReturn onUnblockUserCompleted(gd::string, gd::string) = android32 0x3ac884;
	TodoReturn onUpdateDescriptionCompleted(gd::string, gd::string) = android32 0x3ace1c;
	TodoReturn onUpdateLevelCompleted(gd::string, gd::string) = android32 0x3b0ef4;
	TodoReturn onUpdateUserScoreCompleted(gd::string, gd::string) = android32 0x3bdad0;
	TodoReturn onUploadCommentCompleted(gd::string, gd::string) = android32 0x3ac130;
	TodoReturn onUploadFriendRequestCompleted(gd::string, gd::string) = android32 0x3ac574;
	TodoReturn onUploadLevelCompleted(gd::string, gd::string) = android32 0x3aecac;
	TodoReturn onUploadLevelListCompleted(gd::string, gd::string) = android32 0x3b7b90;
	TodoReturn onUploadUserMessageCompleted(gd::string, gd::string) = android32 0x3abdc4;
	TodoReturn pageFromCommentKey(char const*) = android32 0x3abf5c;
	TodoReturn parseRestoreData(gd::string) = android32 0x3aded4;
	TodoReturn performNetworkTest() = android32 0x3b85b8;
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType) = android32 0x3b8690;
	TodoReturn processOnDownloadLevelCompleted(gd::string, gd::string, bool) = android32 0x3b0900;
	TodoReturn purgeUnusedLevels() = android32 0x3b0f58;
	TodoReturn rateDemon(int, int, bool) = android32 0x3b9af0;
	TodoReturn rateStars(int, int) = android32 0x3b954c;
	TodoReturn readFriendRequest(int) = android32 0x3bbec0;
	TodoReturn removeDelimiterChars(gd::string, bool) = android32 0x3b7c8c;
	void removeDLFromActive(char const* tag) = android32 0x3a9c84;
	TodoReturn removeFriend(int) = android32 0x3bc020;
	TodoReturn removeLevelDownloadedKeysFromDict(cocos2d::CCDictionary*) = android32 0x3b734c;
	TodoReturn removeUserFromList(int, UserListType) = android32 0x3ac824;
	TodoReturn reportLevel(int) = android32 0x3bd1c4;
	TodoReturn requestUserAccess() = android32 0x3bc9c0;
	TodoReturn resetAccountComments(int) = android32 0x3ab934;
	TodoReturn resetAllTimers() = android32 0x3aa008;
	void resetCommentTimersForLevelID(int, CommentKeyType) = android32 0x3ac424;
	void resetDailyLevelState(GJTimedLevelType) = android32 0x3ade1c;
	void resetGauntlets() = android32 0x3ab04e;
    inline void resetStoredUserInfo(int id) {
        m_storedUserInfo->removeObjectForKey(id);
    }
	void resetStoredUserList(UserListType) = android32 0x3ac940;
	void resetTimerForKey(char const*) = android32 0x3a9fc0;
	cocos2d::CCDictionary* responseToDict(gd::string, bool) = android32 0x3ae4b0;
	TodoReturn restoreItems() = android32 0x3bd0a8;
	void saveFetchedLevelLists(cocos2d::CCArray*) = android32 0x3aaf14;
	void saveFetchedLevels(cocos2d::CCArray*) = android32 0x3afd2c;
	void saveFetchedMapPacks(cocos2d::CCArray*) = android32 0x3aadbc;
	void saveGauntlet(GJMapPack*) = android32 0x3aafe4;
	void saveLevel(GJGameLevel*) = android32 0x3b0578;
	void saveLevelList(GJLevelList*) = android32 0x3aaebc;
	void saveLocalScore(int, int, int) = android32 0x3aa4d4;
	void saveMapPack(GJMapPack*) = android32 0x3aad64;
	void setActiveSmartTemplate(GJSmartTemplate*) = android32 0x3aa4dc;
	void setBoolForKey(bool, char const*) = android32 0x3ae400;
	void setDiffVal(int, bool) = android32 0x3ae20c;
	void setFolderName(int, gd::string, bool) = android32 0x3aa460;
	void setIntForKey(int, char const*) = android32 0x3ae350;
	void setLenVal(int, bool) = android32 0x3ae2e4;
	void setLevelFeatured(int, int, bool) = android32 0x3ab4fc;
	void setLevelStars(int, int, bool) = android32 0x3ab4f8;
	TodoReturn specialFromLikeKey(char const*) = android32 0x3ad3ac;
	void storeCommentsResult(cocos2d::CCArray*, gd::string, char const*) = android32 0x3ac02c;
	void storeDailyLevelState(int, int, GJTimedLevelType) = android32 0x3adc68;
	void storeFriendRequest(GJFriendRequest*) = android32 0x3ab664;
	void storeSearchResult(cocos2d::CCArray* levels, gd::string pageInfo, char const* searchKey) = android32 0x3a9d34;
	void storeUserInfo(GJUserScore*) = android32 0x3ab554;
	void storeUserMessage(GJUserMessage*) = android32 0x3ab680;
	void storeUserMessageReply(int, GJUserMessage*) = android32 0x3ab698;
	void storeUserName(int userID, int accountID, gd::string userName) = android32 0x3a9310;
	void storeUserNames(gd::string usernameString) = android32 0x3a93dc;
	TodoReturn submitUserInfo() = android32 0x3bd88c;
	TodoReturn suggestLevelStars(int, int, int) = android32 0x3b9980;
	TodoReturn tryGetUsername(int) = android32 0x3ab578;
	TodoReturn typeFromCommentKey(char const*) = android32 0x3abfc4;
	TodoReturn typeFromLikeKey(char const*) = android32 0x3ad194;
	TodoReturn unblockUser(int) = android32 0x3bc2e8;
	TodoReturn unfollowUser(int) = android32 0x3aa38c;
	TodoReturn updateDescription(int, gd::string) = android32 0x3bc578;
	TodoReturn updateLevel(GJGameLevel*) = android32 0x3b941c;
	TodoReturn updateLevelOrders() = android32 0x3a98d0;
	TodoReturn updateLevelRewards(GJGameLevel*) = android32 0x3afcbc;
	TodoReturn updateSavedLevelList(GJLevelList*) = android32 0x3bf4c8;
	TodoReturn updateUsernames() = android32 0x3aa218;
	TodoReturn updateUserScore() = android32 0x3be8d0;
	TodoReturn uploadAccountComment(gd::string) = android32 0x3bb5b8;
	TodoReturn uploadComment(gd::string, CommentType, int, int) = android32 0x3bb15c;
	TodoReturn uploadFriendRequest(int, gd::string) = android32 0x3bb984;
	TodoReturn uploadLevel(GJGameLevel*) = android32 0x3b8738;
	TodoReturn uploadLevelComment(int, gd::string, int) = android32 0x3bb564;
	TodoReturn uploadLevelList(GJLevelList*) = android32 0x3bdba4;
	TodoReturn uploadUserMessage(int, gd::string, gd::string) = android32 0x3baa20;
	TodoReturn userIDForAccountID(int) = android32 0x3a958e;
	TodoReturn userInfoForAccountID(int) = android32 0x3ab570;
	gd::string userNameForUserID(int) = android32 0x3a94ec;
	TodoReturn verifyContainerOnlyHasLevels(cocos2d::CCDictionary*) = android32 0x3b8320;
	TodoReturn verifyLevelState(GJGameLevel*) = android32 0x3b27dc;
	gd::string writeSpecialFilters(GJSearchObject*) = android32 0x3aab68;

	virtual bool init() = android32 0x3a8548;

	PAD = win 0x8, android32 0x18, android64 0x30;
	cocos2d::CCDictionary* m_mainLevels;
	cocos2d::CCDictionary* m_searchFilters;
	cocos2d::CCDictionary* m_onlineLevels;
	cocos2d::CCDictionary* m_unkDict;
	cocos2d::CCDictionary* m_followedCreators;
	cocos2d::CCDictionary* m_GLM21;
	cocos2d::CCDictionary* m_downloadedLevels;
	cocos2d::CCDictionary* m_likedLevels;
	cocos2d::CCDictionary* m_ratedLevels;
	cocos2d::CCDictionary* m_ratedDemons;
	cocos2d::CCDictionary* m_reportedLevels;
	cocos2d::CCDictionary* m_onlineFolders;
	cocos2d::CCDictionary* m_localLevelsFolders;
	cocos2d::CCDictionary* m_dailyLevels;
	int m_dailyTimeLeft;
	int m_dailyID;
	int m_dailyIDUnk;
	int m_weeklyTimeLeft;
	int m_weeklyID;
	int m_weeklyIDUnk;
	int m_eventTimeLeft;
	int m_eventID;
	int m_eventIDUnk;
	cocos2d::CCDictionary* m_gauntletLevels;
	gd::map<gd::string, bool> m_availableFilters;
	cocos2d::CCDictionary* m_timerDict;
	cocos2d::CCDictionary* m_knownUsers;
	cocos2d::CCDictionary* m_accountIDtoUserIDDict;
	cocos2d::CCDictionary* m_userIDtoAccountIDDict;
	cocos2d::CCDictionary* m_storedLevels;
	cocos2d::CCDictionary* m_pageInfo;
	cocos2d::CCDictionary* m_unkDict20;
	cocos2d::CCDictionary* m_savedPacks;
	cocos2d::CCDictionary* m_savedGauntlets;
	cocos2d::CCDictionary* m_downloadObjects;
	cocos2d::CCDictionary* m_unkDict24;
	cocos2d::CCDictionary* m_storedUserInfo;
	cocos2d::CCDictionary* m_friendRequests;
	cocos2d::CCDictionary* m_userMessages;
	cocos2d::CCDictionary* m_userReplies;
	gd::string m_unkStr1;
	gd::string m_unkStr2;
	LeaderboardState m_leaderboardState;
	bool m_unkEditLevelLayerOnBack;
	LevelManagerDelegate* m_levelManagerDelegate;
	LevelDownloadDelegate* m_levelDownloadDelegate;
	LevelCommentDelegate* m_levelCommentDelegate;
	CommentUploadDelegate* m_commentUploadDelegate;
	LevelUploadDelegate* m_levelUploadDelegate;
	ListUploadDelegate* m_listUploadDelegate;
	LevelUpdateDelegate* m_levelUpdateDelegate;
	LeaderboardManagerDelegate* m_leaderboardManagerDelegate;
	LevelDeleteDelegate* m_levelDeleteDelegate;
	LevelListDeleteDelegate* m_levelListDeleteDelegate;
	UserInfoDelegate* m_userInfoDelegate;
	void* m_unkDelegate;
	UserListDelegate* m_userListDelegate;
	FriendRequestDelegate* m_friendRequestDelegate;
	MessageListDelegate* m_messageListDelegate;
	DownloadMessageDelegate* m_downloadMessageDelegate;
	UploadMessageDelegate* m_uploadMessageDelegate;
	GJRewardDelegate* m_GJRewardDelegate;
	GJChallengeDelegate* m_GJChallengeDelegate;
	GJDailyLevelDelegate* m_GJDailyLevelDelegate;
	OnlineListDelegate* m_onlineListDelegate;
	int m_unkDownload;
	PAD = win 0x4;
	gd::string m_unkStr3;
	cocos2d::CCString* m_unkStr4;
}

[[link(android)]]
class GameLevelOptionsLayer : GJOptionsLayer {
	// virtual ~GameLevelOptionsLayer();

	static GameLevelOptionsLayer* create(GJGameLevel*) = android32 0x493878;

	bool init(GJGameLevel*) = android32 0x493838;

	virtual TodoReturn setupOptions() = android32 0x48bc70;
	virtual TodoReturn didToggle(int) = android32 0x489f08;
}

[[link(android), depends(UIButtonConfig)]]
class GameManager : GManager {
	// virtual ~GameManager();

	static GameManager* get() {
		return GameManager::sharedState();
	}

	static GameManager* sharedState() = ios 0x318608, android32 0x315fdc;

	PlayLayer* getPlayLayer() {
		return m_playLayer;
	}

	LevelEditorLayer* getEditorLayer() {
		return m_levelEditorLayer;
	}

	GJBaseGameLayer* getGameLayer() {
		return m_gameLayer;
	}

	int getPlayerFrame() {
        return m_playerFrame;
    }
    int getPlayerShip() {
        return m_playerShip;
    }
    int getPlayerBall() {
        return m_playerBall;
    }
    int getPlayerBird() {
        return m_playerBird;
    }
    int getPlayerDart() {
        return m_playerDart;
    }
    int getPlayerRobot() {
        return m_playerRobot;
    }
    int getPlayerSpider() {
        return m_playerSpider;
    }
    int getPlayerSwing() {
        return m_playerSwing;
    }
    int getPlayerGlowColor() {
        return m_playerGlowColor;
    }
    int getPlayerStreak() {
        return m_playerStreak;
    }
	int getPlayerShipFire() {
		return m_playerShipFire;
	}
    int getPlayerDeathEffect() {
        return m_playerDeathEffect;
    }
	int getPlayerJetpack() {
		return m_playerJetpack;
	}
    int getPlayerColor() {
        return m_playerColor;
    }
    int getPlayerColor2() {
        return m_playerColor2;
    }
    bool getPlayerGlow() {
        return m_playerGlow;
    }
    void setPlayerFrame(int id) {
        m_playerFrame = id;
    }
    void setPlayerShip(int id) {
        m_playerShip = id;
    }
    void setPlayerBall(int id) {
        m_playerBall = id;
    }
    void setPlayerBird(int id) {
        m_playerBird = id;
    }
    void setPlayerDart(int id) {
        m_playerDart = id;
    }
    void setPlayerRobot(int id) {
        m_playerRobot = id;
    }
    void setPlayerSpider(int id) {
        m_playerSpider = id;
    }
	void setPlayerSwing(int id) {
		m_playerSwing = id;
	}
	void setPlayerColor3(int id) {
		m_playerGlowColor = id;
	}
    void setPlayerStreak(int id) {
        m_playerStreak = id;
    }
    void setPlayerShipStreak(int id) {
        m_playerShipFire = id;
    }
    void setPlayerDeathEffect(int id) {
        m_playerDeathEffect = id;
    }
	void setPlayerJetpack(int id) {
		m_playerJetpack = id;
	}
    void setPlayerColor(int id) {
        m_playerColor = id;
    }
    void setPlayerColor2(int id) {
        m_playerColor2 = id;
    }
    void setPlayerGlow(bool v) {
        m_playerGlow = v;
    }
    bool getGameVariableDefault(const char* key, bool defaultValue) {
		//helper function
        auto object = static_cast<cocos2d::CCString*>(m_valueKeeper->objectForKey(std::string("gv_") + key));
        if (object == nullptr)
            return defaultValue;
        return object->boolValue();
    }
    int getIntGameVariableDefault(const char* key, int defaultValue) {
		//helper function
        auto object = static_cast<cocos2d::CCString*>(m_valueKeeper->objectForKey(std::string("gv_") + key));
        if (object == nullptr)
            return defaultValue;
        return object->intValue();
    }

	TodoReturn accountStatusChanged() = android32 0x3158e8;
	int activeIconForType(IconType) = android32 0x314998;
	TodoReturn addCustomAnimationFrame(int, int, gd::string, gd::string) = android32 0x508bd4;
	TodoReturn addDuplicateLastFrame(int) = android32 0x50ba70;
	TodoReturn addGameAnimation(int, int, float, gd::string, gd::string, int) = android32 0x508ac4;
	TodoReturn addIconDelegate(cocos2d::CCObject*, int) = android32 0x3177d4;
	TodoReturn addNewCustomObject(gd::string) = android32 0x3157f4;
	TodoReturn addToGJLog(cocos2d::CCString*) = android32 0x31597c;
	TodoReturn applicationDidEnterBackground() = android32 0x315a66;
	TodoReturn applicationWillEnterForeground() = android32 0x318498;
	TodoReturn calculateBaseKeyForIcons() = android32 0x31734c;
	TodoReturn canShowRewardedVideo() = android32 0x3146b8;
	TodoReturn checkSteamAchievementUnlock() = android32 0x313acc;
	TodoReturn checkUsedIcons() = android32 0x317d9c;
	TodoReturn claimItemsResponse(gd::string) = android32 0x313c46;
	TodoReturn clearGJLog() = android32 0x315980;
	cocos2d::ccColor3B colorForIdx(int) = android32 0x313c48;
	TodoReturn colorForPos(int) = android32 0x314514;
	TodoReturn colorKey(int, UnlockType) = android32 0x317c78;
	TodoReturn completedAchievement(gd::string) = android32 0x317fe8;
	TodoReturn countForType(IconType) = android32 0x314a4a;
	TodoReturn defaultFrameForAnimation(int) = android32 0x50bbe4;
	TodoReturn didExitPlayscene() = android32 0x316b34;
	TodoReturn doQuickSave() = android32 0x315a50;
	TodoReturn dpadConfigToString(UIButtonConfig&) = android32 0x31baec;
	TodoReturn eventUnlockFeature(char const*) = android32 0x313c3c;
	TodoReturn fadeInMenuMusic() = android32 0x31656c;
	TodoReturn fadeInMusic(gd::string) = android32 0x31348c;
	TodoReturn finishedLoadingBGAsync(cocos2d::CCObject*) = android32 0x312cd0;
	TodoReturn finishedLoadingGAsync(int) = android32 0x315114;
	TodoReturn finishedLoadingGAsync1(cocos2d::CCObject*) = android32 0x315174;
	TodoReturn finishedLoadingGAsync2(cocos2d::CCObject*) = android32 0x31519a;
	TodoReturn finishedLoadingIconAsync(cocos2d::CCObject*) = android32 0x31b968;
	TodoReturn finishedLoadingMGAsync(int) = android32 0x314ef0;
	TodoReturn finishedLoadingMGAsync1(cocos2d::CCObject*) = android32 0x314f50;
	TodoReturn finishedLoadingMGAsync2(cocos2d::CCObject*) = android32 0x314f76;
	TodoReturn followTwitch() = android32 0x31483c;
	TodoReturn followTwitter() = android32 0x3147e4;
	TodoReturn framesForAnimation(int) = android32 0x50ba5c;
	TodoReturn frameTimeForAnimation(int) = android32 0x50bb3c;
	TodoReturn generateSecretNumber() = android32 0x3165f4;
	TodoReturn getBGTexture(int) = android32 0x3151c0;
	TodoReturn getFontFile(int) = android32 0x314bb0;
	TodoReturn getFontTexture(int) = android32 0x314be4;
	bool getGameVariable(char const*) = ios 0x318b58, android32 0x315328;
	TodoReturn getGTexture(int) = android32 0x315220;
	TodoReturn getIconRequestID() = android32 0x314b40;
	int getIntGameVariable(char const*) = android32 0x315538;
	TodoReturn getMenuMusicFile() = android32 0x31336c;
	TodoReturn getMGTexture(int) = android32 0x3151f0;
	TodoReturn getNextUniqueObjectKey() = android32 0x3157bc;
	TodoReturn getNextUsedKey(int, bool) = android32 0x315868;
	TodoReturn getOrderedCustomObjectKeys() = android32 0x315790;
	TodoReturn getPracticeMusicFile() = android32 0x3133fc;
	bool getUGV(char const*) = android32 0x315438;
	TodoReturn getUnlockForAchievement(gd::string, int&, UnlockType&) = android32 0x31368c;
	TodoReturn groundHasSecondaryColor(int) = android32 0x314f9c;
	TodoReturn iconAndTypeForKey(int, int&, int&) = android32 0x314b18;
	TodoReturn iconKey(int, IconType) = android32 0x317a00;
	UnlockType iconTypeToUnlockType(IconType) = android32 0x313658;
	bool isColorUnlocked(int, UnlockType) = android32 0x317d24;
	bool isIconLoaded(int, int) = android32 0x3171d0;
	bool isIconUnlocked(int, IconType) = android32 0x317b38;
	TodoReturn itemPurchased(char const*) = android32 0x313c40;
	TodoReturn joinDiscord() = android32 0x314868;
	TodoReturn joinReddit() = android32 0x314894;
	int keyForIcon(int, int) = android32 0x314b0a;
	TodoReturn levelIsPremium(int, int) = android32 0x313c42;
	TodoReturn likeFacebook() = android32 0x3147b8;
	TodoReturn loadBackground(int) = android32 0x314cf8;
	TodoReturn loadBackgroundAsync(int) = android32 0x314d5c;
	TodoReturn loadDeathEffect(int) = android32 0x314c18;
	TodoReturn loadDpadFromString(UIButtonConfig&, gd::string) = android32 0x316d84;
	TodoReturn loadDPadLayout(int, bool) = android32 0x316ec0;
	TodoReturn loadFont(int) = android32 0x314b50;
	TodoReturn loadGround(int) = android32 0x314fa8;
	TodoReturn loadGroundAsync(int) = android32 0x315064;
	cocos2d::CCTexture2D* loadIcon(int, int, int) = android32 0x31b818;
	TodoReturn loadIconAsync(int, int, int, cocos2d::CCObject*) = android32 0x31ba14;
	TodoReturn loadMiddleground(int) = android32 0x314dbc;
	TodoReturn loadMiddlegroundAsync(int) = android32 0x314e54;
	TodoReturn loadVideoSettings() = android32 0x3166a0;
	TodoReturn lockColor(int, UnlockType) = android32 0x3186c0;
	TodoReturn lockIcon(int, IconType) = android32 0x317c28;
	TodoReturn logLoadedIconInfo() = android32 0x3172fc;
	TodoReturn openEditorGuide() = android32 0x3148c0;
	TodoReturn playMenuMusic() = android32 0x3164bc;
	TodoReturn playSFXTrigger(SFXTriggerGameObject*) = android32 0x313514;
	TodoReturn prepareDPadSettings() = android32 0x315988;
	TodoReturn printGJLog() = android32 0x31597e;
	TodoReturn queueReloadMenu() = android32 0x315aac;
	TodoReturn rateGame() = android32 0x31479c;
	TodoReturn recountUserStats(gd::string) = android32 0x31a310;
	void reloadAll(bool switchModes, bool toFullscreen, bool borderless, bool unused) = ios 0x323d54, android32 0x315af8;
	void reloadAll(bool switchModes, bool toFullscreen, bool unused) {
		return this->reloadAll(switchModes, toFullscreen, false, unused);
	}
	TodoReturn reloadAllStep2() = android32 0x315d90;
	TodoReturn reloadAllStep3() = android32 0x312d40;
	TodoReturn reloadAllStep4() = android32 0x312b30;
	TodoReturn reloadAllStep5() = android32 0x312d9c;
	TodoReturn reloadMenu() = android32 0x312d24;
	TodoReturn removeCustomObject(int) = android32 0x315734;
	TodoReturn removeIconDelegate(int) = android32 0x314ab4;
	TodoReturn reorderKey(int, bool) = android32 0x3158c8;
	TodoReturn reportAchievementWithID(char const*, int, bool) = android32 0x31806c;
	TodoReturn reportPercentageForLevel(int, int, bool) = android32 0x3180e0;
	TodoReturn resetAchievement(gd::string) = android32 0x318710;
	TodoReturn resetAdTimer() = android32 0x3145ec;
	TodoReturn resetAllIcons() = android32 0x3158f4;
	TodoReturn resetCoinUnlocks() = android32 0x3187a4;
	TodoReturn resetDPadSettings(bool) = android32 0x315a1a;
	TodoReturn resolutionForKey(int) = android32 0x315b84;
	TodoReturn returnToLastScene(GJGameLevel*) = android32 0x316b68;
	TodoReturn rewardedVideoAdFinished(int) = android32 0x31475c;
	TodoReturn rewardedVideoHidden() = android32 0x312b78;
	TodoReturn rewardedVideoHiddenDelayed() = android32 0x314700;
	TodoReturn safePopScene() = android32 0x315a68;
	TodoReturn saveAdTimer() = android32 0x31460c;
	TodoReturn saveDPadLayout(int, bool) = android32 0x31c330;
	void setGameVariable(char const*, bool) = android32 0x315250;
	void setHasRatingPower(int) = android32 0x3a8dc8;
	void setIntGameVariable(char const*, int) = android32 0x3154b8;
	// void setPlayerBall(int);
	// void setPlayerBird(int);
	// void setPlayerColor(int);
	// void setPlayerColor2(int);
	// void setPlayerColor3(int);
	// void setPlayerDart(int);
	// void setPlayerDeathEffect(int);
	// void setPlayerFrame(int);
	// void setPlayerJetpack(int);
	// void setPlayerRobot(int);
	// void setPlayerShip(int);
	// void setPlayerShipStreak(int);
	// void setPlayerSpider(int);
	// void setPlayerStreak(int);
	// void setPlayerSwing(int);
	void setPlayerUserID(int) = android32 0x3a8d90;
	void setUGV(char const*, bool) = android32 0x3153a8;
	TodoReturn setupGameAnimations() = android32 0x508c60;
	gd::string sheetNameForIcon(int, int) = android32 0x31b55c;
	TodoReturn shortenAdTimer(float) = android32 0x3145f6;
	TodoReturn shouldShowInterstitial(int, int, int) = android32 0x314658;
	TodoReturn showInterstitial() = android32 0x31461a;
	TodoReturn showInterstitialForced() = android32 0x314672;
	TodoReturn showMainMenuAd() = android32 0x3145e8;
	TodoReturn startUpdate() = android32 0x313328;
	TodoReturn stringForCustomObject(int) = android32 0x3155a4;
	TodoReturn subYouTube() = android32 0x314810;
	TodoReturn switchCustomObjects(int, int) = android32 0x315624;
	TodoReturn switchScreenMode(bool, bool, bool) = android32 0x315b6c;
	TodoReturn syncPlatformAchievements() = android32 0x3148e0;
	TodoReturn toggleGameVariable(char const*) = android32 0x3165d0;
	TodoReturn tryCacheAd() = android32 0x314620;
	TodoReturn tryShowInterstitial(int, int, int) = android32 0x31465c;
	TodoReturn unloadBackground() = android32 0x314ca4;
	TodoReturn unloadIcon(int, int, int) = android32 0x31b6d4;
	TodoReturn unloadIcons(int) = android32 0x31b7b4;
	TodoReturn unlockColor(int, UnlockType) = android32 0x317f80;
	TodoReturn unlockedPremium() = android32 0x313c3e;
	TodoReturn unlockIcon(int, IconType) = android32 0x317bc0;
	TodoReturn unlockTypeToIconType(int) = android32 0x313670;
	TodoReturn updateCustomFPS() = android32 0x316d20;
	TodoReturn updateMusic() = android32 0x31476e;
	TodoReturn verifyAchievementUnlocks() = android32 0x318614;
	TodoReturn verifyCoinUnlocks() = android32 0x318adc;
	TodoReturn verifyStarUnlocks() = android32 0x313ace;
	TodoReturn verifySyncedCoins() = android32 0x313b00;
	TodoReturn videoAdHidden() = android32 0x31469c;
	TodoReturn videoAdShowed() = android32 0x314676;

	virtual void update(float) = android32 0x312ac6;
	virtual bool init() = android32 0x31740c;
	virtual void encodeDataTo(DS_Dictionary*) = android32 0x31bcd0;
	virtual void dataLoaded(DS_Dictionary*) = android32 0x31a85c;
	virtual void firstLoad() = android32 0x3166e4;

	cocos2d::CCDictionary* m_unkAnimationDict;
	cocos2d::CCDictionary* m_unkAnimationDict2;
	cocos2d::CCDictionary* m_frameTimeForAnimation;
	cocos2d::CCDictionary* m_framesForAnimation;
	cocos2d::CCDictionary* m_defaultFrames;
	bool m_switchModes;
	bool m_toFullscreen;
	bool m_reloading;
	bool m_unkBool1;
	bool m_unkBool2;
	bool m_vsyncEnabled;
	cocos2d::CCDictionary* m_valueKeeper;
	cocos2d::CCDictionary* m_unlockValueKeeper;
	cocos2d::CCDictionary* m_customObjectDict;
	double m_adTimer;
	double m_adCache;
	bool m_unkBool3;
	int m_unkSize4_1;
	double m_unkDouble2;
	int m_unkSize4_2;
	int m_unkSize4_3;
	bool m_loaded;
	bool m_googlePlaySignedIn;
	gd::string m_unknownString;
	int m_unkSize4_4;
	PlayLayer* m_playLayer;
	LevelEditorLayer* m_levelEditorLayer;
	GJBaseGameLayer* m_gameLayer;
	void* m_unkPtr;
	MenuLayer* m_menuLayer;
	bool m_inMenuLayer;
	void* m_unknownVariable;
	bool m_unknownBool3;
	bool m_unknownPlayLayerBool;
	bool m_unknownBool4;
	bool m_unknownBool5;
	gd::string m_playerUDID;
	gd::string m_playerName;
	bool m_commentsEnabled;
	geode::SeedValueRSV m_playerUserID;
	float m_bgVolume;
	float m_sfxVolume;
	float m_timeOffset;
	bool m_ratedGame;
	bool m_clickedFacebook;
	bool m_clickedTwitter;
	bool m_clickedYouTube;
	bool m_clickedTwitch;
	bool m_clickedDiscord_;
	bool m_clickedReddit;
	double m_socialsDuration;
	bool m_showedAd;
	bool m_unknownBool;
	bool m_editorEnabled;
	int m_sceneEnum;
	bool m_searchObjectBool;
	geode::SeedValueRSV m_playerFrame;
	geode::SeedValueRSV m_playerShip;
	geode::SeedValueRSV m_playerBall;
	geode::SeedValueRSV m_playerBird;
	geode::SeedValueRSV m_playerDart;
	geode::SeedValueRSV m_playerRobot;
	geode::SeedValueRSV m_playerSpider;
	geode::SeedValueRSV m_playerSwing;
	geode::SeedValueRSV m_playerColor;
	geode::SeedValueRSV m_playerColor2;
	geode::SeedValueRSV m_playerGlowColor;
	geode::SeedValueRSV m_playerStreak;
	geode::SeedValueRSV m_playerShipFire;
	geode::SeedValueRSV m_playerDeathEffect;
	geode::SeedValueRSV m_playerJetpack;
	geode::SeedValueSR m_chk;
	geode::SeedValueSR m_secretNumber;
	bool m_playerGlow;
	IconType m_playerIconType;
	bool m_everyPlaySetup;
	bool m_showSongMarkers;
	bool m_showBPMMarkers;
	bool m_recordGameplay;
	bool m_showProgressBar;
	bool m_performanceMode;
	bool m_unkBool4;
	bool m_clickedGarage;
	bool m_clickedEditor;
	bool m_clickedName;
	bool m_clickedPractice;
	bool m_showedEditorGuide;
	bool m_showedRateDiffDialog;
	bool m_showedRateStarDialog;
	bool m_showedLowDetailDialog;
	void* m_unkPtr2;
	void* m_unkPtr3;
	int m_unkSize4_5;
	int m_unkSize4_6;
	int m_unkSize4_7;
	int m_unkSize4_8;
	int m_loadedBgID;
	int m_loadedGroundID;
	int m_loadedMG;
	int m_loadedFont;
	int m_loadedDeathEffect;
	bool m_loadingBG;
	bool m_loadingG;
	bool m_loadingG1;
	bool m_finishedLoadingG1;
	bool m_shouldLoadG1;
	bool m_finishedLoadingMG1;
	bool m_finishedLoadingMG2;
	bool m_unkBool5;
	int m_unkSize4_9;
	int m_unkSize4_10;
	int m_unkSize4_11;
	int m_bootups;
	bool m_hasRatedGame;
	bool m_unkBool6;
	bool m_shouldLoadUnlockValueKeeper;
	bool m_unkBool7;
	bool m_unkBool8;
	geode::SeedValueRSV m_hasRP;
	bool m_canGetLevelSaveData;
	int m_resolution;
	int m_texQuality;
	bool m_somethingInMenuLayer;
	void* m_unkPtr4;
	bool m_unkBool9;
	int m_unkSize4_12;
	int m_unkSize4_13;
	bool m_unkBool10;
	int m_unkSize4_14;
	bool m_disableThumbstick;
	float m_customFPSTarget;
	bool m_unkBool11;
	int m_customMenuSongID;
	int m_customPracticeSongID;
	gd::map<int, int> m_loadIcon;
	gd::map<int, gd::map<int, int>> m_loadIcon2;
	gd::map<int, bool> m_isIconBeingLoaded;
	std::array<int, 9>* m_keyStartForIcon;
	void* m_somethingKeyForIcon;
	void* m_idk;
	gd::map<int, gd::vector<cocos2d::CCObject*>> m_iconDelegates;
	int m_iconRequestID;
	cocos2d::CCArray* m_unkArray;
	void* m_someAdPointer;
	int m_unkSize4_15;
	int m_unkSize4_16;
	int m_unkSize4_17;
	UIButtonConfig m_dpad1;
	UIButtonConfig m_dpad2;
	UIButtonConfig m_dpad3;
	UIButtonConfig m_dpad4;
	UIButtonConfig m_dpad5;
	gd::string m_dpadLayout1;
	gd::string m_dpadLayout2;
	gd::string m_dpadLayout3;
	gd::string m_dpadLayoutDual1;
	gd::string m_dpadLayoutDual2;
	gd::string m_dpadLayoutDual3;
	int m_unkSize4_18;
	int m_unkSize4_19;
	int m_unkSize4_20;
	bool m_unkBool12;
}

[[link(android)]]
class GameObject : CCSpritePlus {
	// virtual ~GameObject();
	// GameObject();

	TodoReturn addColorSprite(gd::string) = android32 0x34845c;
	TodoReturn addColorSpriteToParent(bool) = android32 0x3472c8;
	TodoReturn addColorSpriteToSelf() = android32 0x346b24;
	TodoReturn addCustomBlackChild(gd::string, float, bool) = android32 0x345890;
	TodoReturn addCustomChild(gd::string, cocos2d::CCPoint, int) = android32 0x3457c0;
	TodoReturn addCustomColorChild(gd::string) = android32 0x345838;
	TodoReturn addEmptyGlow() = android32 0x345188;
	TodoReturn addGlow(gd::string) = android32 0x344d70;
	TodoReturn addInternalChild(cocos2d::CCSprite*, gd::string, cocos2d::CCPoint, int) = android32 0x3459dc;
	TodoReturn addInternalCustomColorChild(gd::string, cocos2d::CCPoint, int) = android32 0x345960;
	TodoReturn addInternalGlowChild(gd::string, cocos2d::CCPoint) = android32 0x345a4c;
	TodoReturn addNewSlope01(bool) = android32 0x34a5d0;
	TodoReturn addNewSlope01Glow(bool) = android32 0x34a650;
	TodoReturn addNewSlope02(bool) = android32 0x34a70c;
	TodoReturn addNewSlope02Glow(bool) = android32 0x34a78c;
	TodoReturn addRotation(float, float) = android32 0x345c88;
	TodoReturn addRotation(float) = android32 0x345c1c;
	TodoReturn addToColorGroup(int) = android32 0x3475b0;
	TodoReturn addToCustomScaleX(float) = android32 0x345d04;
	TodoReturn addToCustomScaleY(float) = android32 0x345d2c;
	TodoReturn addToOpacityGroup(int) = android32 0x34764a;
	TodoReturn addToTempOffset(double, double) = android32 0x345b60;
	TodoReturn assignUniqueID() = android32 0x344d00;
	TodoReturn belongsToGroup(int) = android32 0x347556;
	TodoReturn calculateOrientedBox() = android32 0x347df4;
	TodoReturn canChangeCustomColor() = android32 0x34834a;
	TodoReturn canChangeMainColor() = android32 0x34832c;
	TodoReturn canChangeSecondaryColor() = android32 0x34833a;
	TodoReturn canRotateFree() = android32 0x346e6c;
	TodoReturn colorForMode(int, bool) = android32 0x349b88;
	TodoReturn commonInteractiveSetup() = android32 0x3483a8;
	TodoReturn commonSetup() = android32 0x34564c;
	TodoReturn copyGroups(GameObject*) = android32 0x347522;
	TodoReturn createAndAddParticle(int, char const*, int, cocos2d::tCCPositionType) = android32 0x3460e4;
	TodoReturn createColorGroupContainer(int) = android32 0x34757e;
	TodoReturn createGlow(gd::string) = android32 0x344d18;
	TodoReturn createGroupContainer(int) = android32 0x347480;
	TodoReturn createOpacityGroupContainer(int) = android32 0x347618;
	TodoReturn createSpriteColor(int) = android32 0x34560c;
	static GameObject* createWithFrame(char const*) = android32 0x34576c;
	static GameObject* createWithKey(int) = android32 0x352c44;
	TodoReturn deselectObject() = android32 0x347c6c;
	TodoReturn destroyObject() = android32 0x346184;
	TodoReturn determineSlopeDirection() = android32 0x346bec;
	TodoReturn didScaleXChange() = android32 0x345e04;
	TodoReturn didScaleYChange() = android32 0x345e34;
	TodoReturn dirtifyObjectPos() = android32 0x345b3c;
	TodoReturn dirtifyObjectRect() = android32 0x345b30;
	TodoReturn disableObject() = android32 0x3461c0;
	TodoReturn dontCountTowardsLimit() = android32 0x34a5c2;
	TodoReturn duplicateAttributes(GameObject*) = android32 0x3497c0;
	TodoReturn duplicateColorMode(GameObject*) = android32 0x349752;
	void duplicateValues(GameObject*) = android32 0x349880;
	TodoReturn editorColorForCustomMode(int) = android32 0x347ab4;
	TodoReturn editorColorForMode(int) = android32 0x347af8;
	TodoReturn fastRotateObject(float) = android32 0x347e80;
	TodoReturn getActiveColorForMode(int, bool) = android32 0x349a80;
	TodoReturn getBallFrame(int) = android32 0x347a90;
	TodoReturn getBoundingRect() = android32 0x345ad4;
	TodoReturn getBoxOffset() = android32 0x347ec0;
	TodoReturn getColorFrame(gd::string) = android32 0x34521c;
	TodoReturn getColorIndex() = android32 0x34a47a;
	TodoReturn getColorKey(bool, bool) = android32 0x354284;
	TodoReturn getCustomZLayer() = android32 0x346e8c;
	TodoReturn getGlowFrame(gd::string) = android32 0x345274;
	TodoReturn getGroupDisabled() = android32 0x347692;
	TodoReturn getGroupID(int) = android32 0x34750e;
	TodoReturn getGroupString() = android32 0x3541e4;
	TodoReturn getLastPosition() = android32 0x349e0a;
	TodoReturn getMainColor() = android32 0x348320;
	TodoReturn getMainColorMode() = android32 0x348360;
	TodoReturn getObjectDirection() = android32 0x346d80;
	TodoReturn getObjectRadius() = android32 0x34a52a;
	TodoReturn getObjectRectDirty() = android32 0x32dd1a;
	TodoReturn getObjectRectPointer() = android32 0x345b48;
	TodoReturn getObjectZLayer() = android32 0x346e9e;
	TodoReturn getObjectZOrder() = android32 0x347204;
	TodoReturn getOrientedRectDirty() = android32 0x32dd26;
	TodoReturn getOuterObjectRect() = android32 0x3481c4;
	TodoReturn getParentMode() = android32 0x34687c;
	TodoReturn getRelativeSpriteColor(int) = android32 0x34972e;
	TodoReturn getScalePosDelta() = android32 0x346db8;
	TodoReturn getSecondaryColor() = android32 0x348326;
	TodoReturn getSecondaryColorMode() = android32 0x348372;
	TodoReturn getSlopeAngle() = android32 0x346d38;
	TodoReturn getStartPos() = android32 0x32dfc0;
	TodoReturn getType() = android32 0x32dd32;
	TodoReturn getUnmodifiedPosition() = android32 0x345b88;
	TodoReturn groupColor(cocos2d::ccColor3B const&, bool) = android32 0x349a32;
	TodoReturn groupOpacityMod() = android32 0x347a14;
	TodoReturn groupWasDisabled() = android32 0x3476aa;
	TodoReturn groupWasEnabled() = android32 0x347698;
	TodoReturn hasSecondaryColor() = android32 0x3496e8;
	TodoReturn ignoreEditorDuration() = android32 0x34a864;
	TodoReturn ignoreEnter() = android32 0x345ace;
	TodoReturn ignoreFade() = android32 0x345ac8;
	bool init(char const*) = android32 0x345750;
	bool isBasicEnterEffect(int) = android32 0x34ab6a;
	bool isBasicTrigger() = android32 0x34aac4;
	bool isColorObject() = android32 0x3496f4;
	bool isColorTrigger() = android32 0x34a444;
	bool isConfigurablePortal() = android32 0x34ab20;
	bool isEditorSpawnableTrigger() = android32 0x349fc8;
	bool isFacingDown() = android32 0x348250;
	bool isFacingLeft() = android32 0x3482b0;
	bool isSettingsObject() = android32 0x34a848;
	bool isSpawnableTrigger() = android32 0x34a188;
	bool isSpecialObject() = android32 0x34a566;
	bool isSpeedObject() = android32 0x34a4d8;
	bool isStoppableTrigger() = android32 0x34a350;
	bool isTrigger() = android32 0x349e18;
	TodoReturn loadGroupsFromString(gd::string) = android32 0x34794c;
	TodoReturn makeInvisible() = android32 0x346198;
	TodoReturn makeVisible() = android32 0x3461ac;
	TodoReturn objectFromVector(gd::vector<gd::string>&, gd::vector<void*>&, GJBaseGameLayer*, bool) = android32 0x353520;
	TodoReturn opacityModForMode(int, bool) = android32 0x349988;
	TodoReturn parentForZLayer(int, bool, int) = android32 0x346ae6;
	TodoReturn perspectiveColorFrame(char const*, int) = android32 0x4ef200;
	TodoReturn perspectiveFrame(char const*, int) = android32 0x4ef12c;
	TodoReturn playDestroyObjectAnim(GJBaseGameLayer*) = android32 0x508130;
	TodoReturn playPickupAnimation(cocos2d::CCSprite*, float, float, float, float, float, float, float, float, bool, float, float) = android32 0x507d18;
	TodoReturn playPickupAnimation(cocos2d::CCSprite*, float, float, float, float) = android32 0x507ee8;
	TodoReturn playShineEffect() = android32 0x3461e8;
	TodoReturn quickUpdatePosition() = android32 0x355c0c;
	TodoReturn quickUpdatePosition2() = android32 0x345c02;
	TodoReturn removeColorSprite() = android32 0x345206;
	TodoReturn removeGlow() = android32 0x3451e4;
	TodoReturn reorderColorSprite() = android32 0x346be8;
	TodoReturn resetColorGroups() = android32 0x3475f8;
	TodoReturn resetGroupDisabled() = android32 0x3476bc;
	TodoReturn resetGroups() = android32 0x347506;
	TodoReturn resetMainColorMode() = android32 0x3496a4;
	TodoReturn resetMID() = android32 0x344cf0;
	TodoReturn resetMoveOffset() = android32 0x345464;
	TodoReturn resetRScaleForced() = android32 0x345cdc;
	TodoReturn resetSecondaryColorMode() = android32 0x3496c6;
	void setAreaOpacity(float, float, int) = android32 0x345e64;
	void setCustomZLayer(int) = android32 0x346e92;
	void setDefaultMainColorMode(int) = android32 0x348384;
	void setDefaultSecondaryColorMode(int) = android32 0x348438;
	void setGlowOpacity(unsigned char) = android32 0x345ecc;
	void setLastPosition(cocos2d::CCPoint const&) = android32 0x349e10;
	void setMainColorMode(int) = android32 0x349678;
	void setSecondaryColorMode(int) = android32 0x34968e;
	TodoReturn setupColorSprite(int, bool) = android32 0x349cea;
	TodoReturn setupPixelScale() = android32 0x4ee664;
	TodoReturn setupSpriteSize() = android32 0x34ab8c;
	TodoReturn shouldBlendColor(GJSpriteColor*, bool) = android32 0x34547e;
	TodoReturn shouldLockX() = android32 0x3454e2;
	TodoReturn shouldNotHideAnimFreeze() = android32 0x507cd2;
	TodoReturn shouldShowPickupEffects() = android32 0x507f7c;
	TodoReturn slopeFloorTop() = android32 0x347c8c;
	TodoReturn slopeWallLeft() = android32 0x347c76;
	TodoReturn slopeYPos(cocos2d::CCRect) = android32 0x347d84;
	TodoReturn slopeYPos(float) = android32 0x347ca8;
	TodoReturn slopeYPos(GameObject*) = android32 0x347db4;
	TodoReturn spawnDefaultPickupParticle(GJBaseGameLayer*) = android32 0x507fb8;
	TodoReturn updateBlendMode() = android32 0x346aa6;
	TodoReturn updateCustomColorType(short) = android32 0x349a18;
	TodoReturn updateCustomScaleX(float) = android32 0x345d54;
	TodoReturn updateCustomScaleY(float) = android32 0x345dac;
	TodoReturn updateHSVState() = android32 0x347a5e;
	TodoReturn updateIsOriented() = android32 0x347e30;
	TodoReturn updateMainColor() = android32 0x349c2c;
	TodoReturn updateMainColorOnly() = android32 0x349c50;
	TodoReturn updateMainOpacity() = android32 0x3499f0;
	TodoReturn updateObjectEditorColor() = android32 0x347ba8;
	TodoReturn updateSecondaryColor() = android32 0x349c82;
	TodoReturn updateSecondaryColorOnly() = android32 0x349cb8;
	TodoReturn updateSecondaryOpacity() = android32 0x349a04;
	TodoReturn updateStartPos() = android32 0x3452cc;
	TodoReturn updateUnmodifiedPositions() = android32 0x345bc4;
	TodoReturn usesFreezeAnimation() = android32 0x507c20;
	TodoReturn usesSpecialAnimation() = android32 0x507ce2;

	virtual void update(float) = android32 0x343584;
	virtual void setScaleX(float) = android32 0x343cfe;
	virtual void setScaleY(float) = android32 0x343d4a;
	virtual void setScale(float) = android32 0x343d96;
	virtual void setPosition(cocos2d::CCPoint const&) = android32 0x343fdc;
	virtual void setVisible(bool) = android32 0x3440c0;
	virtual void setRotation(float) = android32 0x343de4;
	virtual void setRotationX(float) = android32 0x3442d4;
	virtual void setRotationY(float) = android32 0x3443a0;
	virtual void setOpacity(unsigned char) = android32 0x3460dc = android32 0x345f14;
	virtual bool initWithTexture(cocos2d::CCTexture2D*) = android32 0x3457aa;
	virtual void setChildColor(cocos2d::ccColor3B const&) = android32 0x343868;
	virtual void setFlipX(bool) = android32 0x344256;
	virtual void setFlipY(bool) = android32 0x34427e;
	virtual void firstSetup() = android32 0x32dccc;
	virtual void customSetup() = android32 0x34d0cc;
	virtual TodoReturn setupCustomSprites(gd::string) = android32 0x4ef248;
	virtual TodoReturn addMainSpriteToParent(bool) = android32 0x347212;
	virtual TodoReturn resetObject() = android32 0x3476c8;
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = android32 0x32dcce;
	virtual void activateObject() = android32 0x347410;
	virtual void deactivateObject(bool) = android32 0x3441b2;
	virtual TodoReturn transferObjectRect(cocos2d::CCRect&) = android32 0x343586;
	virtual cocos2d::CCRect const& getObjectRect() = android32 0x3435b4;
	virtual cocos2d::CCRect getObjectRect(float, float) = android32 0x347f84;
	virtual TodoReturn getObjectRect2(float, float) = android32 0x3481e8;
	virtual TodoReturn getObjectTextureRect() = android32 0x34441c;
	virtual cocos2d::CCPoint getRealPosition() = android32 0x343fb8;
	virtual void setStartPos(cocos2d::CCPoint) = android32 0x343f60;
	virtual TodoReturn updateStartValues() = android32 0x34538c;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x32dcd0;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x354530;
	virtual TodoReturn claimParticle() = android32 0x346eac;
	virtual TodoReturn unclaimParticle() = android32 0x344176;
	virtual TodoReturn particleWasActivated() = android32 0x343734;
	virtual bool isFlipX() = android32 0x343636;
	virtual bool isFlipY() = android32 0x34363c;
	virtual void setRScaleX(float) = android32 0x343642;
	virtual void setRScaleY(float) = android32 0x343680;
	virtual void setRScale(float) = android32 0x3436be;
	virtual TodoReturn getRScaleX() = android32 0x3436dc;
	virtual TodoReturn getRScaleY() = android32 0x343708;
	virtual void setRRotation(float) = android32 0x3435cc;
	virtual TodoReturn triggerActivated(float) = android32 0x32dcd2;
	virtual void setObjectColor(cocos2d::ccColor3B const&) = android32 0x344710;
	virtual void setGlowColor(cocos2d::ccColor3B const&) = android32 0x3442a6;
	virtual TodoReturn restoreObject() = android32 0x343736;
	virtual TodoReturn animationTriggered() = android32 0x32dcd4;
	virtual TodoReturn selectObject(cocos2d::ccColor3B) = android32 0x3438b8;
	virtual TodoReturn activatedByPlayer(PlayerObject*) = android32 0x32dcd6;
	virtual TodoReturn hasBeenActivatedByPlayer(PlayerObject*) = android32 0x32dcd8;
	virtual TodoReturn hasBeenActivated() = android32 0x32dcdc;
	virtual TodoReturn getOrientedBox() = android32 0x347e14;
	virtual TodoReturn updateOrientedBox() = android32 0x348078;
	virtual TodoReturn getObjectRotation() = android32 0x343a80;
	virtual TodoReturn updateMainColor(cocos2d::ccColor3B const&) = android32 0x343a92;
	virtual TodoReturn updateSecondaryColor(cocos2d::ccColor3B const&) = android32 0x343a9a;
	virtual TodoReturn addToGroup(int) = android32 0x3474b2;
	virtual TodoReturn removeFromGroup(int) = android32 0x34374a;
	virtual TodoReturn saveActiveColors() = android32 0x349d08;
	virtual TodoReturn spawnXPosition() = android32 0x32dce0;
	virtual TodoReturn canAllowMultiActivate() = android32 0x32dcec;
	virtual TodoReturn blendModeChanged() = android32 0x32dcf0;
	virtual TodoReturn updateParticleColor(cocos2d::ccColor3B const&) = android32 0x343798;
	virtual TodoReturn updateParticleOpacity(unsigned char) = android32 0x3445cc;
	virtual TodoReturn updateMainParticleOpacity(unsigned char) = android32 0x32dcf2;
	virtual TodoReturn updateSecondaryParticleOpacity(unsigned char) = android32 0x32dcf4;
	virtual TodoReturn canReverse() = android32 0x32dcf6;
	virtual bool isSpecialSpawnObject() = android32 0x32dcfa;
	virtual TodoReturn canBeOrdered() = android32 0x32dcfe;
	virtual TodoReturn getObjectLabel() = android32 0x32dd02;
	virtual void setObjectLabel(cocos2d::CCLabelBMFont*) = android32 0x32dd06;
	virtual TodoReturn shouldDrawEditorHitbox() = android32 0x343aa2;
	virtual TodoReturn getHasSyncedAnimation() = android32 0x32dd08;
	virtual TodoReturn getHasRotateAction() = android32 0x32dd0c;
	virtual TodoReturn canMultiActivate(bool) = android32 0x32dd10;
	virtual TodoReturn updateTextKerning(int) = android32 0x32dd14;
	virtual TodoReturn getTextKerning() = android32 0x32dd16;
	virtual void setObjectRectDirty(bool) = android32 0x32dd20;
	virtual void setOrientedRectDirty(bool) = android32 0x32dd2c;
	virtual void setType(GameObjectType) = android32 0x32dd38;

	PAD = android32 0x11, win 0x11, android64 0x11;

	// property 511
	bool m_hasExtendedCollision;
	PAD = android32 0x13, win 0x13, android64 0x13;

	// somehow related to property 155 and 156 if anyone wants to reverse engineer
	int m_activeMainColorID;
	int m_activeDetailColorID;

	PAD = android32 0x4c, win 0x4c, android64 0x54;

	cocos2d::CCSprite* m_glowSprite;

	PAD = android32 0x8, win 0x4, android64 0x4;

	float m_unk288;
	float m_unk28c;

	PAD = android32 0x8, win 0x8, android64 0x8;

	gd::string m_particleString;

	PAD = android32 0x1, win 0x1, android64 0x1;

	// property 146
	bool m_particleUseObjectColor;
	PAD = android32 0x3e, win 0x3e, android64 0x3e;

	// property 108
	int m_linkedGroup;

	PAD = android32 0xc, win 0xc, android64 0xc;

	cocos2d::CCSprite* m_colorSprite;

	PAD = android32 0x13, win 0x13, android64 0x13;

	int m_uniqueID;
	GameObjectType m_objectType;

	PAD = android32 0x10, win 0x10, android64 0x10;
	double m_realXPosition;
	double m_realYPosition;
	cocos2d::CCPoint m_startPosition;
	PAD = android32 0x1, win 0x1, android64 0x1;

	// property 372
	bool m_hasNoAudioScale;
	PAD = android32 0x2a, win 0x2a, android64 0x2a;

	// property 343
	short m_enterChannel;
	// property 446
	short m_objectMaterial;
	PAD = android32 0x4, win 0x4, android64 0x4;

	// property 96
	bool m_hasNoGlow;

	// property 23
	int m_targetColor;

	// property 1
	int m_objectID;
	PAD = android32 0x8, win 0x8, android64 0x8;

	// property 497
	short m_customColorType;
	// property 67
	bool m_isDontEnter;
	// property 64
	bool m_isDontFade;
	// property 116
	bool m_hasNoEffects;
	// property 507
	bool m_hasNoParticles;
	PAD = android32 0x16, win 0x16, android64 0x16;

	// property 53
	int m_property53;
	PAD = android32 0x18, win 0x18, android64 0x18;

	// property 21, also used with 41 and 43
	GJSpriteColor* m_baseColor;
	// property 22, also used with 42 and 44
	GJSpriteColor* m_detailColor;
	PAD = android32 0xc, win 0xc, android64 0xc;

	// property 24
	ZLayer m_zLayer;
	// property 25
	int m_zOrder;
	PAD = android32 0x10, win 0x10, android64 0x10;

	bool m_shouldUpdateColorSprite; // m_shouldUpdateColorSprite
	PAD = android32 0x1, win 0x1, android64 0x1;

	// property 34
	bool m_hasGroupParent;
	// property 279
	bool m_hasAreaParent;
	// property 128
	float m_scaleX;
	// property 129
	float m_scaleY;

	// property 57
	std::array<short, 10>* m_groups;
	// used with property 57
	short m_groupCount;
	// used with property 274
	bool m_hasGroupParentsString;

	std::array<short, 10>* m_colorGroups;
	short m_colorGroupCount;
	std::array<short, 10>* m_opacityGroups;
	short m_opacityGroupCount;

	// property 20
	short m_editorLayer;
	// property 61
	short m_editorLayer2;
	PAD = android32 0x8, win 0x8, android64 0x8;

	// property 121
	bool m_isNoTouch;
	PAD = android32 0x9, win 0x9, android64 0x9;

	cocos2d::CCPoint m_lastPosition;

	PAD = android32 0x1b, win 0x1b, android64 0x1b;

	// property 103
	bool m_isHighDetail;
	PAD = android32 0x11, win 0x11, android64 0x21;

	// property 134
	bool m_isPassable;
	// property 135
	bool m_isHide;
	// property 136
	bool m_isNonStickX;
	// property 289
	bool m_isNonStickY;
	// property 137
	bool m_isIceBlock;
	// property 193
	bool m_isGripSlope;
	// property 356
	bool m_isScaleStick;
	// property 495
	bool m_isExtraSticky;
	// property 496
	bool m_isDontBoostY;
	// property 509
	bool m_isDontBoostX;
	PAD = android32 0x11, win 0x11, android64 0x11;

	// property 155
	int m_property155;
	// property 156
	int m_property156;

	PAD = android32 0x12, win 0x1e, android64 0x12; // TODO: yeah someone pls fix windows pads
}

[[link(android)]]
class GameObjectCopy : cocos2d::CCObject {
	// virtual ~GameObjectCopy();

	static GameObjectCopy* create(GameObject*) = android32 0x35adc8;

	bool init(GameObject*) = android32 0x35ad62;
	TodoReturn resetObject() = android32 0x35af08;

	GameObject* m_object;
}

[[link(android)]]
class GameObjectEditorState {
	TodoReturn loadValues(GameObject*) = android32 0x366dd4;
}

[[link(android)]]
class GameOptionsLayer : GJOptionsLayer {
	// virtual ~GameOptionsLayer();

	static GameOptionsLayer* create(GJBaseGameLayer*) = android32 0x493574;

	bool init(GJBaseGameLayer*) = android32 0x49353c;
	void onPracticeMusicSync(cocos2d::CCObject* sender) = android32 0x4937ec;
	void onUIOptions(cocos2d::CCObject* sender) = android32 0x494ae0;
	void onUIPOptions(cocos2d::CCObject* sender) = android32 0x495dc8;
	TodoReturn showPracticeMusicSyncUnlockInfo() = android32 0x493618;

	virtual TodoReturn setupOptions() = android32 0x48bcb4;
	virtual TodoReturn didToggle(int) = android32 0x48938c;
}

[[link(android)]]
class GameOptionsTrigger : EffectGameObject {
	// virtual ~GameOptionsTrigger();

	static GameOptionsTrigger* create(char const*) = android32 0x3d0b54;

	bool init(char const*) = android32 0x3d0b4e;

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3cb248;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3deb10;
}

[[link(android)]]
class GameRateDelegate {
	virtual TodoReturn updateRate();
}

[[link(android)]]
class GameStatsManager : cocos2d::CCNode {
	// virtual ~GameStatsManager();

	static GameStatsManager* sharedState() = android32 0x3fa394;

	TodoReturn accountIDForIcon(int, UnlockType) = android32 0x572f98;
	TodoReturn addSimpleSpecialChestReward(gd::string, UnlockType, int, bool) = android32 0x3f5d46;
	TodoReturn addSpecialRewardDescription(gd::string, gd::string) = android32 0x3fff14;
	TodoReturn addStoreItem(int, int, int, int, ShopType) = android32 0x4009d8;
	TodoReturn areChallengesLoaded() = android32 0x3f4928;
	TodoReturn areRewardsLoaded() = android32 0x3f48e8;
	TodoReturn awardCurrencyForLevel(GJGameLevel*) = android32 0x403260;
	TodoReturn awardDiamondsForLevel(GJGameLevel*) = android32 0x4034a4;
	TodoReturn awardSecretKey() = android32 0x402738;
	TodoReturn checkAchievement(char const*) = android32 0x3fac40;
	TodoReturn checkCoinAchievement(GJGameLevel*) = android32 0x3f4290;
	TodoReturn checkCoinsForLevel(GJGameLevel*) = android32 0x402684;
	TodoReturn claimListReward(GJLevelList*) = android32 0x403730;
	TodoReturn collectReward(GJRewardType, GJRewardItem*) = android32 0x403908;
	TodoReturn collectVideoReward(int) = android32 0x403d50;
	TodoReturn completedChallenge(GJChallengeItem*) = android32 0x4036a8;
	TodoReturn completedDailyLevel(GJGameLevel*) = android32 0x403b9c;
	TodoReturn completedDemonLevel(GJGameLevel*) = android32 0x4025f0;
	TodoReturn completedLevel(GJGameLevel*) = android32 0x4030d8;
	TodoReturn completedMapPack(GJMapPack*) = android32 0x403198;
	TodoReturn completedStarLevel(GJGameLevel*) = android32 0x403028;
	TodoReturn countSecretChests(GJRewardType) = android32 0x3f58b4;
	TodoReturn countUnlockedSecretChests(GJRewardType) = android32 0x3f58f4;
	TodoReturn createSecretChestItems() = android32 0x40221c;
	TodoReturn createSecretChestRewards() = android32 0x3f5e38;
	TodoReturn createSpecialChestItems() = android32 0x40460c;
	TodoReturn createStoreItems() = android32 0x400a58;
	void dataLoaded(DS_Dictionary*) = android32 0x402768;
	void encodeDataTo(DS_Dictionary*) = android32 0x3ff51c;
	void firstSetup() = android32 0x3fa5e4;
	TodoReturn generateItemUnlockableData() = android32 0x404350;
	int getAwardedCurrencyForLevel(GJGameLevel*) = android32 0x3f46b0;
	TodoReturn getAwardedDiamondsForLevel(GJGameLevel*) = android32 0x3f47f0;
	TodoReturn getBaseCurrency(int, bool, int) = android32 0x3f45b4;
	int getBaseCurrencyForLevel(GJGameLevel*) = android32 0x3f45ec;
	TodoReturn getBaseDiamonds(int) = android32 0x3f47ac;
	TodoReturn getBonusDiamonds(int) = android32 0x3f47b8;
	GJChallengeItem* getChallenge(int) = android32 0x3f4b6c;
	TodoReturn getChallengeKey(GJChallengeItem*) = android32 0x3f4c84;
	int getCollectedCoinsForLevel(GJGameLevel*) = android32 0x3f4268;
	TodoReturn getCompletedMapPacks() = android32 0x3f3fc8;
	TodoReturn getCurrencyKey(GJGameLevel*) = android32 0x3f4550;
	TodoReturn getDailyLevelKey(int) = android32 0x3f4e00;
	TodoReturn getDemonLevelKey(GJGameLevel*) = android32 0x3f3d5c;
	gd::string getGauntletRewardKey(int) = android32 0x40046c;
	TodoReturn getItemKey(int, int) = android32 0x40094c;
	int getItemUnlockState(int, UnlockType) = android32 0x40200c;
	int getItemUnlockStateLite(int, UnlockType) = android32 0x40212c;
	gd::string getLevelKey(GJGameLevel*) = android32 0x40006c;
	gd::string getLevelKey(int, bool, bool, bool) = android32 0x3fffac;
	TodoReturn getListRewardKey(GJLevelList*) = android32 0x3f4d68;
	TodoReturn getMapPackKey(int) = android32 0x3f3e9c;
	TodoReturn getNextVideoAdReward() = android32 0x3f55b0;
	TodoReturn getPathRewardKey(int) = android32 0x400550;
	GJChallengeItem* getQueuedChallenge(int) = android32 0x3f4bc8;
	TodoReturn getRewardForSecretChest(int) = android32 0x3f5874;
	TodoReturn getRewardForSpecialChest(gd::string) = android32 0x3f5804;
	TodoReturn getRewardItem(GJRewardType) = android32 0x3f48e0;
	TodoReturn getRewardKey(GJRewardType, int) = android32 0x400388;
	GJChallengeItem* getSecondaryQueuedChallenge(int) = android32 0x3f4c24;
	TodoReturn getSecretChestForItem(int, UnlockType) = android32 0x402318;
	TodoReturn getSecretCoinKey(char const*) = android32 0x3f41fc;
	TodoReturn getSpecialChestKeyForItem(int, UnlockType) = android32 0x4020d8;
	TodoReturn getSpecialRewardDescription(gd::string, bool) = android32 0x3fff60;
	TodoReturn getSpecialUnlockDescription(int, UnlockType, bool) = android32 0x404584;
	TodoReturn getStarLevelKey(GJGameLevel*) = android32 0x3f3da8;
	int getStat(char const*) = android32 0x3faac4;
	TodoReturn getStatFromKey(StatKey) = android32 0x3fab44;
	TodoReturn getStoreItem(int, int) = android32 0x401fb8;
	TodoReturn getStoreItem(int) = android32 0x3f3cd4;
	int getTotalCollectedCurrency() = android32 0x3f4ea0;
	int getTotalCollectedDiamonds() = android32 0x3f5270;
	bool hasClaimedListReward(GJLevelList*) = android32 0x3f4dac;
	bool hasCompletedChallenge(GJChallengeItem*) = android32 0x3f4cc8;
	bool hasCompletedDailyLevel(int) = android32 0x3f4e40;
	bool hasCompletedDemonLevel(GJGameLevel*) = android32 0x3f3df4;
	bool hasCompletedGauntletLevel(int) = android32 0x40032c;
	bool hasCompletedLevel(GJGameLevel* level) {
		return m_completedLevels->objectForKey(this->getLevelKey(level)) != nullptr;
	}
	bool hasCompletedMainLevel(int levelID) {
		return m_completedLevels->objectForKey(this->getLevelKey(levelID, false, false, false)) != nullptr;
	}
	bool hasCompletedMapPack(int) = android32 0x3f3eb4;
	bool hasCompletedOnlineLevel(int) = android32 0x4002d0;
	bool hasCompletedStarLevel(GJGameLevel*) = android32 0x3f3e48;
	bool hasPendingUserCoin(char const*) = android32 0x3f415c;
	bool hasRewardBeenCollected(GJRewardType, int) = android32 0x400414;
	bool hasSecretCoin(char const*) = android32 0x3f4214;
	bool hasUserCoin(char const*) = android32 0x3f40bc;
	TodoReturn incrementActivePath(int) = android32 0x4024f0;
	TodoReturn incrementChallenge(GJChallengeType, int) = android32 0x3f9cac;
	TodoReturn incrementStat(char const*, int) = android32 0x402548;
	TodoReturn incrementStat(char const*) = android32 0x4025e8;
	bool isGauntletChestUnlocked(int) = android32 0x4004ec;
	bool isItemEnabled(UnlockType, int) = android32 0x40451c;
	bool isItemUnlocked(UnlockType, int) = android32 0x402370;
	bool isPathChestUnlocked(int) = android32 0x4005d0;
	bool isPathUnlocked(StatKey) = android32 0x402424;
	bool isSecretChestUnlocked(int) = android32 0x3f5814;
	bool isSecretCoin(gd::string) = android32 0x3f4530;
	bool isSecretCoinValid(gd::string) = android32 0x3fa1c0;
	bool isSpecialChestLiteUnlockable(gd::string) = android32 0x3f554c;
	bool isSpecialChestUnlocked(gd::string) = android32 0x3f5560;
	bool isStoreItemUnlocked(int) = android32 0x3f3cdc;
	TodoReturn keyCostForSecretChest(int) = android32 0x3f587c;
	TodoReturn logCoins() = android32 0x3f59bc;
	TodoReturn markLevelAsCompletedAndClaimed(GJGameLevel*) = android32 0x400104;
	TodoReturn postLoadGameStats() = android32 0x3ffc5c;
	TodoReturn preProcessReward(GJRewardItem*) = android32 0x3ff2fc;
	TodoReturn preSaveGameStats() = android32 0x3ff450;
	TodoReturn processChallengeQueue(int) = android32 0x3f4d1c;
	TodoReturn purchaseItem(int) = android32 0x3ff84c;
	TodoReturn recountSpecialStats() = android32 0x403de4;
	TodoReturn recountUserCoins(bool) = android32 0x3ff970;
	TodoReturn registerRewardsFromItem(GJRewardItem*) = android32 0x4037dc;
	TodoReturn removeChallenge(int) = android32 0x3f499c;
	TodoReturn removeErrorFromSpecialChests() = android32 0x3f5934;
	TodoReturn removeQueuedChallenge(int) = android32 0x3f4a54;
	TodoReturn removeQueuedSecondaryChallenge(int) = android32 0x3f4b10;
	TodoReturn resetChallengeTimer() = android32 0x3f491e;
	TodoReturn resetPreSync() = android32 0x3f59b8;
	TodoReturn resetSpecialChest(gd::string) = android32 0x3f580c;
	TodoReturn resetSpecialStatAchievements() = android32 0x3f53ec;
	TodoReturn resetUserCoins() = android32 0x3ff948;
	TodoReturn restorePostSync() = android32 0x3f59ba;
	void setAwardedBonusKeys(int) = android32 0x3f3c68;
	void setStarsForMapPack(int, int) = android32 0x3f3f5c;
	void setStat(char const*, int) = android32 0x3ff794;
	void setStatIfHigher(char const*, int) = android32 0x3ff928;
	TodoReturn setupIconCredits() = android32 0x5731a4;
	TodoReturn shopTypeForItemID(int) = android32 0x3f3d3c;
	TodoReturn shouldAwardSecretKey() = android32 0x3ff3fc;
	TodoReturn starsForMapPack(int) = android32 0x3f3f08;
	TodoReturn storeChallenge(int, GJChallengeItem*) = android32 0x3f493c;
	TodoReturn storeChallengeTime(int) = android32 0x3f48fc;
	TodoReturn storePendingUserCoin(char const*) = android32 0x3f41ac;
	TodoReturn storeQueuedChallenge(int, GJChallengeItem*) = android32 0x3f49f4;
	TodoReturn storeRewardState(GJRewardType, int, int, gd::string) = android32 0x3f5c5c;
	TodoReturn storeSecondaryQueuedChallenge(int, GJChallengeItem*) = android32 0x3f4aac;
	TodoReturn storeSecretCoin(char const*) = android32 0x3f44dc;
	TodoReturn storeUserCoin(char const*) = android32 0x3f410c;
	TodoReturn tempClear() = android32 0x3f454c;
	TodoReturn toggleEnableItem(UnlockType, int, bool) = android32 0x40206c;
	TodoReturn tryFixPathBug() = android32 0x400634;
	TodoReturn trySelectActivePath() = android32 0x40243c;
	TodoReturn uncompleteLevel(GJGameLevel*) = android32 0x4001c4;
	TodoReturn unlockGauntletChest(int) = android32 0x403a00;
	TodoReturn unlockPathChest(int) = android32 0x403a78;
	TodoReturn unlockSecretChest(int) = android32 0x403adc;
	TodoReturn unlockSpecialChest(gd::string) = android32 0x403974;
	TodoReturn updateActivePath(StatKey) = android32 0x3f3d4a;
	TodoReturn usernameForAccountID(int) = android32 0x572f10;
	TodoReturn verifyPathAchievements() = android32 0x3fab8c;
	TodoReturn verifyUserCoins() = android32 0x3ffbe8;

	virtual bool init() = android32 0x40649c;

	bool m_usePlayerStatsCCDictionary;
	cocos2d::CCString* m_trueString;
	cocos2d::CCDictionary* m_allStoreItems;
	cocos2d::CCDictionary* m_storeItems;
	cocos2d::CCDictionary* m_allTreasureRoomChests;
	cocos2d::CCDictionary* m_allTreasureRoomChestItems;
	cocos2d::CCDictionary* m_allSpecialChests;
	cocos2d::CCDictionary* m_allSpecialChestItems;
	gd::unordered_map<int, gd::string> m_specialRewardDescriptions; //todo: is gd::string gd::string
	gd::unordered_map<int, gd::string> m_createSpecialChestItemsMap; //todo: is gd::string gd::string
	cocos2d::CCDictionary* m_specialChestsLite;
	cocos2d::CCArray* m_storeItemArray;
	cocos2d::CCDictionary* m_rewardItems;
	cocos2d::CCDictionary* m_dailyChests;
	cocos2d::CCDictionary* m_worldAdvertChests;
	cocos2d::CCDictionary* m_activeChallenges;
	cocos2d::CCDictionary* m_upcomingChallenges;
	double m_challengeTime;
	cocos2d::CCDictionary* m_playerStats;
	gd::unordered_map<int, int> m_playerStatsRandMap;
	gd::unordered_map<int, int> m_playerStatsSeedMap;
	cocos2d::CCDictionary* m_completedLevels;
	cocos2d::CCDictionary* m_verifiedUserCoins;
	cocos2d::CCDictionary* m_pendingUserCoins;
	cocos2d::CCDictionary* m_purchasedItems;
	cocos2d::CCDictionary* m_onlineCurrencyScores;
	cocos2d::CCDictionary* m_mainCurrencyScores;
	cocos2d::CCDictionary* m_gauntletCurrencyScores;
	cocos2d::CCDictionary* m_timelyCurrencyScores;
	cocos2d::CCDictionary* m_onlineStars;
	cocos2d::CCDictionary* m_timelyStars;
	cocos2d::CCDictionary* m_gauntletDiamondScores;
	cocos2d::CCDictionary* m_timelyDiamondScores;
	cocos2d::CCDictionary* m_unusedCurrencyAwardDict;
	cocos2d::CCDictionary* m_challengeDiamonds;
	cocos2d::CCDictionary* m_completedMappacks;
	cocos2d::CCDictionary* m_completedLists;
	cocos2d::CCDictionary* m_weeklyChest;
	cocos2d::CCDictionary* m_treasureRoomChests;
	geode::SeedValueSRV m_bonusKey;
	cocos2d::CCDictionary* m_miscChests;
	cocos2d::CCDictionary* m_enabledItems;
	bool m_unkBoolIncrementStat;
	cocos2d::CCDictionary* m_unkDict;
	cocos2d::CCDictionary* m_unlockedItems;
	gd::map<int, UnlockType> m_accountIDForIcon;
	gd::map<int, gd::string> m_usernameForAccountID;
	bool m_GS29;
	int m_activePath;
}

[[link(android)]]
class GameToolbox {
	static void addBackButton(cocos2d::CCLayer*, cocos2d::CCMenuItem*) = android32 0x2dfb84;
	static void addRThumbScrollButton(cocos2d::CCLayer*) = android32 0x2dfc30;
	static TodoReturn alignItemsHorisontally(cocos2d::CCArray*, float, cocos2d::CCPoint, bool) = android32 0x2df02c;
	static TodoReturn alignItemsVertically(cocos2d::CCArray*, float, cocos2d::CCPoint) = android32 0x2df1a4;
	static TodoReturn bounceTime(float) = android32 0x2e0e10;
	static TodoReturn colorToSepia(cocos2d::ccColor3B, float) = android32 0x2e00e0;
	static TodoReturn contentScaleClipRect(cocos2d::CCRect&) = android32 0x2df4c8;
	static TodoReturn createHashString(gd::string const&, int) = android32 0x2e04d0;
	static CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCArray*) = android32 0x2df760;
	static CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, float, float, float, cocos2d::CCPoint, char const*, bool, int, cocos2d::CCArray*) = android32 0x2df58c;
	static TodoReturn doWeHaveInternet() = android32 0x2df2e8;
	static TodoReturn easeToText(int) = android32 0x2e0d08;
	static TodoReturn fast_rand_0_1() = android32 0x2e086c;
	static TodoReturn fast_rand_minus1_1() = android32 0x2e088c;
	static TodoReturn fast_rand() = android32 0x2e0848;
	static TodoReturn fast_srand(unsigned long) = android32 0x2e0830;
	static TodoReturn gen_random(int) = android32 0x2e07ac;
	static TodoReturn getDropActionWDelay(float, float, float, cocos2d::CCNode*, cocos2d::SEL_CallFunc) = android32 0x2def88;
	static TodoReturn getDropActionWEnd(float, float, float, cocos2d::CCAction*, float) = android32 0x2defea;
	static TodoReturn getEasedAction(cocos2d::CCActionInterval*, int, float) = android32 0x2e06bc;
	static TodoReturn getEasedValue(float, int, float) = android32 0x2e0ec0;
	static TodoReturn getfast_srand() = android32 0x2e083c;
	static TodoReturn getInvertedEasing(int) = android32 0x2e0754;
	static TodoReturn getLargestMergedIntDicts(cocos2d::CCDictionary*, cocos2d::CCDictionary*) = android32 0x2dfaa0;
	static TodoReturn getMultipliedHSV(cocos2d::ccHSVValue const&, float) = android32 0x2e0278;
	static TodoReturn getRelativeOffset(GameObject*, cocos2d::CCPoint) = android32 0x2df830;
	static TodoReturn getResponse(cocos2d::extension::CCHttpResponse*) = android32 0x2df3cc;
	static gd::string getTimeString(int) = android32 0x2e0598;
	static TodoReturn hsvFromString(gd::string const&, char const*) = android32 0x2e16f8;
	static TodoReturn intToShortString(int) = android32 0x2e354c;
	static TodoReturn intToString(int) = android32 0x2e31b4;
	static bool isIOS() = android32 0x2df378;
	static bool isRateEasing(int) = android32 0x2e07a0;
	static TodoReturn mergeDictsSaveLargestInt(cocos2d::CCDictionary*, cocos2d::CCDictionary*) = android32 0x2df9d0;
	static TodoReturn mergeDictsSkipConflict(cocos2d::CCDictionary*, cocos2d::CCDictionary*) = android32 0x2dfacc;
	static TodoReturn msToTimeString(int, int) = android32 0x2e13f4;
	static TodoReturn multipliedColorValue(cocos2d::ccColor3B, cocos2d::ccColor3B, float) = android32 0x2dfff0;
	static TodoReturn openAppPage() = android32 0x2df3c8;
	static TodoReturn openRateURL(gd::string, gd::string) = android32 0x2df37c;
	static TodoReturn particleFromString(gd::string const&, cocos2d::CCParticleSystemQuad*, bool) = android32 0x2e1d64;
	static TodoReturn particleFromStruct(cocos2d::ParticleStruct const&, cocos2d::CCParticleSystemQuad*, bool) = android32 0x2e08a8;
	static TodoReturn particleStringToStruct(gd::string const&, cocos2d::ParticleStruct&) = android32 0x2e17dc;
	static TodoReturn pointsToString(int) = android32 0x2e33f8;
	static TodoReturn postClipVisit() = android32 0x2df582;
	static TodoReturn preVisitWithClippingRect(cocos2d::CCNode*, cocos2d::CCRect) = android32 0x2df4cc;
	static TodoReturn preVisitWithClipRect(cocos2d::CCRect) = android32 0x2df558;
	static TodoReturn saveParticleToString(cocos2d::CCParticleSystemQuad*) = android32 0x2e2330;
	static TodoReturn saveStringToFile(gd::string const&, gd::string const&) = android32 0x2e1340;
	static TodoReturn stringFromHSV(cocos2d::ccHSVValue, char const*) = android32 0x2e2238;
	static TodoReturn stringSetupToDict(gd::string const&, char const*) = android32 0x2e02d4;
	static TodoReturn stringSetupToMap(gd::string const&, char const*, gd::map<gd::string, gd::string>&) = android32 0x2e1ef0;
	static TodoReturn strongColor(cocos2d::ccColor3B) = android32 0x2e0410;
	static gd::string timestampToHumanReadable(long) = android32 0x2e3218;
	static TodoReturn transformColor(cocos2d::ccColor3B const&, cocos2d::ccHSVValue) = android32 0x2dfd78;
	static TodoReturn transformColor(cocos2d::ccColor3B const&, float, float, float) = android32 0x2dffb0;
}

[[link(android)]]
class GauntletLayer : cocos2d::CCLayer, LevelManagerDelegate {
	// virtual ~GauntletLayer();

	static GauntletLayer* create(GauntletType) = android32 0x4b9458;

	bool init(GauntletType) = android32 0x4b9010;
	void onBack(cocos2d::CCObject* sender) = android32 0x4b7f7a;
	void onLevel(cocos2d::CCObject* sender) = android32 0x4b7f54;
	static cocos2d::CCScene* scene(GauntletType) = android32 0x4b94f4;
	TodoReturn setupGauntlet(cocos2d::CCArray*) = android32 0x4b8628;
	TodoReturn unlockActiveItem() = android32 0x4b82dc;

	virtual void keyBackClicked() = android32 0x4b7fae = android32 0x4b7fa8;
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int) = android32 0x4b95a4 = android32 0x4b951c;
	virtual TodoReturn loadLevelsFailed(char const*, int) = android32 0x4b7f4c = android32 0x4b7ec4;
}

[[link(android)]]
class GauntletNode : cocos2d::CCNode {
	// virtual ~GauntletNode();

	static GauntletNode* create(GJMapPack*) = android32 0x4b70c4;

	TodoReturn frameForType(GauntletType) = android32 0x4b5c50;
	bool init(GJMapPack*) = android32 0x4b6120;
	static gd::string nameForType(GauntletType) = android32 0x4b5eb8;
	TodoReturn onClaimReward() = android32 0x4b5614;
}

[[link(android)]]
class GauntletSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate, LevelManagerDelegate {
	// virtual ~GauntletSelectLayer();

	static GauntletSelectLayer* create(int) = android32 0x4b7c88;

	TodoReturn goToPage(int, bool) = android32 0x4b5b8c;
	bool init(int) = android32 0x4b747c;
	void onBack(cocos2d::CCObject* sender) = android32 0x4b5a12;
	void onInfo(cocos2d::CCObject* sender) = android32 0x4b56d8;
	void onNext(cocos2d::CCObject* sender) = android32 0x4b5c18;
	void onPlay(cocos2d::CCObject* sender) = android32 0x4b574c;
	void onPrev(cocos2d::CCObject* sender) = android32 0x4b5c28;
	void onRefresh(cocos2d::CCObject* sender) = android32 0x4b5b30;
	static cocos2d::CCScene* scene(int) = android32 0x4b7d34;
	TodoReturn setupGauntlets() = android32 0x4b711c;
	TodoReturn unblockPlay() = android32 0x4b560c;
	TodoReturn updateArrows() = android32 0x4b5afc;

	virtual void onExit() = android32 0x4b7df8;
	virtual void keyBackClicked() = android32 0x4b5a62 = android32 0x4b5a5c;
	virtual TodoReturn scrollLayerWillScrollToPage(BoomScrollLayer*, int) = android32 0x4b5c48 = android32 0x4b5c44;
	virtual TodoReturn scrollLayerScrolledToPage(BoomScrollLayer*, int) = android32 0x4b5c3c = android32 0x4b5c38;
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int) = android32 0x4b7df0 = android32 0x4b7d5c;
	virtual TodoReturn loadLevelsFailed(char const*, int) = android32 0x4b5af4 = android32 0x4b5a6c;
}

[[link(android)]]
class GauntletSprite : cocos2d::CCNode {
	// virtual ~GauntletSprite();

	static GauntletSprite* create(GauntletType, bool) = android32 0x4b85cc;

	TodoReturn addLockedSprite() = android32 0x4b8148;
	TodoReturn addNormalSprite() = android32 0x4b801c;
	TodoReturn colorForType(GauntletType) = android32 0x4b80e4;
	bool init(GauntletType, bool) = android32 0x4b856c;
	TodoReturn luminanceForType(GauntletType) = android32 0x4b80c4;
	TodoReturn toggleLockedSprite(bool) = android32 0x4b82b8;
}

[[link(android)]]
class GhostTrailEffect : cocos2d::CCNode {
	// virtual ~GhostTrailEffect();

	static GhostTrailEffect* create() = android32 0x2eefa0;

	TodoReturn doBlendAdditive() = android32 0x2ef0dc;
	TodoReturn runWithTarget(cocos2d::CCSprite*, float, float, float, float, bool) = android32 0x2ef02c;
	TodoReturn stopTrail() = android32 0x2eef74;
	TodoReturn trailSnapshot(float) = android32 0x2eebe4;

	virtual bool init() = android32 0x2eeb70;
	virtual void draw() = android32 0x2eebb0;
}

[[link(android)]]
class GJAccountBackupDelegate {
	virtual TodoReturn backupAccountFinished();
	virtual TodoReturn backupAccountFailed(BackupAccountError, int);
}

[[link(android)]]
class GJAccountDelegate {
	virtual TodoReturn accountStatusChanged();
}

[[link(android)]]
class GJAccountLoginDelegate {
	virtual TodoReturn loginAccountFinished(int, int);
	virtual TodoReturn loginAccountFailed(AccountError);
}

[[link(android)]]
class GJAccountManager : cocos2d::CCNode {
	// virtual ~GJAccountManager();

	static GJAccountManager* get() {
		return GJAccountManager::sharedState();
	}

	static GJAccountManager* sharedState() = android32 0x446018;

	TodoReturn addDLToActive(char const*, cocos2d::CCObject*) = android32 0x446164;
	TodoReturn addDLToActive(char const*) = android32 0x4461b0;
	TodoReturn backupAccount(gd::string) = android32 0x447288;
	void dataLoaded(DS_Dictionary*) = android32 0x446c80;
	void encodeDataTo(DS_Dictionary*) = android32 0x446b98;
	void firstSetup() = android32 0x446b94;
	TodoReturn getAccountBackupURL() = android32 0x447168;
	TodoReturn getAccountSyncURL() = android32 0x44755c;
	TodoReturn getDLObject(char const*) = android32 0x4461c8;
	TodoReturn getShaPassword(gd::string) = android32 0x446bd8;
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType) = android32 0x447884;
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType) = android32 0x4460b4;
	TodoReturn handleItND(cocos2d::CCNode*, void*) = android32 0x447aa4;
	bool isDLActive(char const*) = android32 0x446214;
	TodoReturn linkToAccount(gd::string, gd::string, int, int) = android32 0x4469fc;
	TodoReturn loginAccount(gd::string, gd::string) = android32 0x447008;
	TodoReturn onBackupAccountCompleted(gd::string, gd::string) = android32 0x446444;
	TodoReturn onGetAccountBackupURLCompleted(gd::string, gd::string) = android32 0x447478;
	TodoReturn onGetAccountSyncURLCompleted(gd::string, gd::string) = android32 0x44779c;
	TodoReturn onLoginAccountCompleted(gd::string, gd::string) = android32 0x4462e8;
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = android32 0x447a14;
	TodoReturn onRegisterAccountCompleted(gd::string, gd::string) = android32 0x44626c;
	TodoReturn onSyncAccountCompleted(gd::string, gd::string) = android32 0x446590;
	TodoReturn onUpdateAccountSettingsCompleted(gd::string, gd::string) = android32 0x446b28;
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType) = android32 0x446d78;
	TodoReturn registerAccount(gd::string, gd::string, gd::string) = android32 0x446ef8;
	TodoReturn removeDLFromActive(char const*) = android32 0x446224;
	TodoReturn syncAccount(gd::string) = android32 0x44767c;
	TodoReturn unlinkFromAccount() = android32 0x446ab4;
	TodoReturn updateAccountSettings(int, int, int, gd::string, gd::string, gd::string) = android32 0x447b20;

	virtual bool init() = android32 0x447c80;

	cocos2d::CCDictionary* m_activeDownloads;
	gd::string m_username;
	int m_accountID;
	int m_unkInt1;
	int m_unkInt2;
	gd::string m_GJP2;
	GJAccountRegisterDelegate* m_accountRegisterDelegate;
	GJAccountLoginDelegate* m_accountLoginDelegate;
	GJAccountDelegate* m_accountDelegate;
	GJAccountBackupDelegate* m_backupDelegate;
	GJAccountSyncDelegate* m_syncDelegate;
	GJAccountSettingsDelegate* m_accountSettingsDelegate;
	int m_gameManagerSize;
	int m_localLevelsSize;
	gd::string m_password;
}

[[link(android)]]
class GJAccountRegisterDelegate {
	virtual TodoReturn registerAccountFinished();
	virtual TodoReturn registerAccountFailed(AccountError);
}

[[link(android)]]
class GJAccountSettingsDelegate {
	virtual TodoReturn updateSettingsFinished() = android32 0x486f4c;
	virtual TodoReturn updateSettingsFailed() = android32 0x486f4e;
}

[[link(android)]]
class GJAccountSettingsLayer : FLAlertLayer, TextInputDelegate {
	// virtual ~GJAccountSettingsLayer();

	static GJAccountSettingsLayer* create(int) = android32 0x48d8cc;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float) = android32 0x48c998;
	bool init(int) = android32 0x48caec;
	void onClose(cocos2d::CCObject* sender) = android32 0x488554;
	void onCommentSetting(cocos2d::CCObject* sender) = android32 0x487a84;
	void onFriendRequests(cocos2d::CCObject* sender) = android32 0x487a34;
	void onMessageSetting(cocos2d::CCObject* sender) = android32 0x4879e4;
	void onUpdate(cocos2d::CCObject* sender) = android32 0x48df48;
	TodoReturn updateScoreValues() = android32 0x48d99c;

	virtual void keyBackClicked() = android32 0x48862a = android32 0x488624;
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float) = android32 0x4883f4 = android32 0x4883a4;
	virtual TodoReturn textInputReturn(CCTextInputNode*) = android32 0x488448 = android32 0x4883fc;
}

[[link(android)]]
class GJAccountSyncDelegate {
	virtual TodoReturn syncAccountFinished();
	virtual TodoReturn syncAccountFailed(BackupAccountError, int);
}

[[link(android)]]
class GJActionManager : cocos2d::CCNode {
	// virtual ~GJActionManager();

	static GJActionManager* create() = android32 0x542ec0;

	TodoReturn getInternalAction(int) = android32 0x542f2e;
	TodoReturn runInternalAction(cocos2d::CCAction*, cocos2d::CCNode*) = android32 0x542f10;
	TodoReturn stopAllInternalActions() = android32 0x542fd0;
	TodoReturn stopInternalAction(int) = android32 0x542f36;
	TodoReturn updateInternalActions(float, bool) = android32 0x542f5c;

	virtual bool init() = android32 0x542fd8;
}

[[link(android)]]
class GJAssetDownloadAction {
	int m_id;
	GJAssetType m_assetType;
	int m_status;
}

[[link(android), depends(GJGameState), depends(PlayerButtonCommand)]]
class GJBaseGameLayer : cocos2d::CCLayer, TriggerEffectDelegate {
	// ~GJBaseGameLayer();
	// GJBaseGameLayer();

	TodoReturn activateCustomRing(RingObject*) = android32 0x460504;
	TodoReturn activatedAudioTrigger(SFXTriggerGameObject*, float) = android32 0x465e20;
	TodoReturn activateEventTrigger(EventLinkTrigger*, gd::vector<int> const&) = android32 0x473c98;
	TodoReturn activateItemCompareTrigger(ItemTriggerGameObject*, gd::vector<int> const&) = android32 0x457660;
	TodoReturn activateItemEditTrigger(ItemTriggerGameObject*) = android32 0x46f8f8;
	TodoReturn activateObjectControlTrigger(ObjectControlGameObject*) = android32 0x45147e;
	TodoReturn activatePersistentItemTrigger(ItemTriggerGameObject*) = android32 0x46fb0c;
	TodoReturn activatePlayerControlTrigger(PlayerControlGameObject*) = android32 0x451398;
	TodoReturn activateResetTrigger(EffectGameObject*) = android32 0x457450;
	TodoReturn activateSFXEditTrigger(SFXTriggerGameObject*) = android32 0x4658e8;
	TodoReturn activateSFXTrigger(SFXTriggerGameObject*) = android32 0x4657dc;
	TodoReturn activateSongEditTrigger(SongTriggerGameObject*) = android32 0x465758;
	TodoReturn activateSongTrigger(SongTriggerGameObject*) = android32 0x4651b0;
	TodoReturn activateTimerTrigger(TimerTriggerGameObject*, gd::vector<int> const&) = android32 0x4578b4;
	TodoReturn addAreaEffect(EnterEffectObject*, gd::vector<EnterEffectInstance>*, GJAreaActionType) = android32 0x47654c;
	TodoReturn addCustomEnterEffect(EnterEffectObject*, bool) = android32 0x47617c;
	TodoReturn addGuideArt(GameObject*) = android32 0x45a42c;
	TodoReturn addObjectCounter(LabelGameObject*) = android32 0x464c0c;
	TodoReturn addPickupTrigger(CountTriggerGameObject*) = android32 0x46f854;
	TodoReturn addPoints(int) = android32 0x457f02;
	TodoReturn addProximityVolumeEffect(int, int, SFXTriggerGameObject*) = android32 0x465670;
	TodoReturn addRemapTargets(gd::set<int>&) = android32 0x4696f0;
	TodoReturn addToGroupParents(GameObject*) = android32 0x454828;
	TodoReturn addToGroups(GameObject*, bool) = android32 0x4526b6;
	TodoReturn addToObjectsToShow(GameObject*) = android32 0x45f2f4;
	TodoReturn addUIObject(GameObject*) = android32 0x463764;
	TodoReturn animateInDualGroundNew(GameObject*, float, bool, float) = android32 0x4688c4;
	TodoReturn animateInGroundNew(bool, float, bool) = android32 0x450ab4;
	TodoReturn animateOutGroundNew(bool) = android32 0x466978;
	TodoReturn animatePortalY(float, float, float, float) = android32 0x466a98;
	TodoReturn applyLevelSettings(GameObject*) = android32 0x458110;
	TodoReturn applyRemap(EffectGameObject*, gd::vector<int> const&, gd::unordered_map<int, int>&) = android32 0x46c6a4;
	TodoReturn applySFXEditTrigger(int, int, SFXTriggerGameObject*) = android32 0x4594b4;
	TodoReturn applyShake(cocos2d::CCPoint&) = android32 0x458bb8;
	TodoReturn assignNewStickyGroups(cocos2d::CCArray*) = android32 0x454ac8;
	TodoReturn asyncBGLoaded(int) = android32 0x44f7d8;
	TodoReturn asyncGLoaded(int) = android32 0x44f822;
	TodoReturn asyncMGLoaded(int) = android32 0x44f836;
	TodoReturn atlasValue(int) = android32 0x44f9a0;
	TodoReturn bumpPlayer(PlayerObject*, EffectGameObject*) = android32 0x472d94;
	TodoReturn buttonIDToButton(int) = android32 0x4580f4;
	TodoReturn calculateColorGroups() = android32 0x469838;
	TodoReturn cameraMoveX(float, float, float, bool) = android32 0x4669dc;
	TodoReturn cameraMoveY(float, float, float, bool) = android32 0x466a0c;
	TodoReturn canBeActivatedByPlayer(PlayerObject*, EffectGameObject*) = android32 0x46dc20;
	TodoReturn canProcessSFX(SFXTriggerState&, gd::unordered_map<int, int>&, gd::unordered_map<int, float>&, gd::vector<SFXTriggerState>&) = android32 0x46bc78;
	TodoReturn canTouchObject(GameObject*) = android32 0x451480;
	TodoReturn checkCameraLimitAfterTeleport(PlayerObject*, float) = android32 0x4685b4;
	TodoReturn checkCollision(int, int) = android32 0x4518fc;
	TodoReturn checkCollisionBlocks(EffectGameObject*, gd::vector<EffectGameObject*>*, int) = android32 0x4517c4;
	TodoReturn checkCollisions(PlayerObject*, float, bool) = android32 0x474058;
	TodoReturn checkRepellPlayer() = android32 0x457f14;
	TodoReturn checkSpawnObjects() = android32 0x46ba70;
	TodoReturn claimMoveAction(int, bool) = android32 0x456230;
	TodoReturn claimParticle(gd::string, int) = android32 0x4592ac;
	TodoReturn claimRotationAction(int, int, float&, float&, bool, bool) = android32 0x460844;
	TodoReturn clearActivatedAudioTriggers() = android32 0x4606e0;
	TodoReturn clearPickedUpItems() = android32 0x450e8c;
	TodoReturn collectedObject(EffectGameObject*) = android32 0x46f818;
	TodoReturn collisionCheckObjects(PlayerObject*, gd::vector<GameObject*>*, int, float) = android32 0x472fbc;
	TodoReturn controlAdvancedFollowCommand(AdvancedFollowTriggerObject*, int, GJActionCommand) = android32 0x451d60;
	TodoReturn controlAreaEffect(EnterEffectObject*, gd::vector<EnterEffectInstance>*, GJActionCommand) = android32 0x4769dc;
	TodoReturn controlAreaEffectWithID(int, int, GJActionCommand) = android32 0x476788;
	TodoReturn controlDynamicCommand(EffectGameObject*, int, gd::vector<DynamicObjectAction>&, GJActionCommand) = android32 0x451b60;
	TodoReturn controlDynamicMoveCommand(EffectGameObject*, int, GJActionCommand) = android32 0x451bb8;
	TodoReturn controlDynamicRotateCommand(EffectGameObject*, int, GJActionCommand) = android32 0x451ba6;
	TodoReturn controlEventLink(int, int, GJActionCommand) = android32 0x461a68;
	TodoReturn controlGradientTrigger(GradientTriggerObject*, GJActionCommand) = android32 0x45df26;
	TodoReturn controlTriggersInGroup(int, GJActionCommand) = android32 0x476a40;
	TodoReturn controlTriggersWithControlID(int, GJActionCommand) = android32 0x476868;
	TodoReturn convertToClosestDirection(float, float) = android32 0x456748;
	TodoReturn createBackground(int) = android32 0x44ec60;
	TodoReturn createGroundLayer(int, int) = android32 0x44ee90;
	TodoReturn createMiddleground(int) = android32 0x44ee1e;
	TodoReturn createNewKeyframeAnim() = android32 0x457210;
	TodoReturn createParticle(int, char const*, int, cocos2d::tCCPositionType) = android32 0x46f5b8;
	TodoReturn createPlayer() = android32 0x44e970;
	TodoReturn createPlayerCollisionBlock() = android32 0x4516a4;
	TodoReturn createTextLayers() = android32 0x44fae8;
	TodoReturn damagingObjectsInRect(cocos2d::CCRect, bool) = android32 0x4504f4;
	TodoReturn destroyObject(GameObject*) = android32 0x472cf0;
	TodoReturn enterDualMode(GameObject*, bool) = android32 0x450fcc;
	TodoReturn exitStaticCamera(bool, bool, float, int, float, bool, float, bool) = android32 0x468df8;
	TodoReturn flipFinished() = android32 0x45a930;
	TodoReturn flipGravity(PlayerObject*, bool, bool) = android32 0x450892;
	TodoReturn flipObjects() = android32 0x45a97c;
	TodoReturn gameEventToString(GJGameEvent) = android32 0x456e1c;
	TodoReturn gameEventTriggered(GJGameEvent, int, int) = android32 0x471dd8;
	TodoReturn generateEnterEasingBuffer(int, float) = android32 0x4756e8;
	TodoReturn generateEnterEasingBuffers(EnterEffectObject*) = android32 0x475804;
	TodoReturn generatePickupAnimRandVal(GameObject*, float&, float&) = android32 0x46d928;
	TodoReturn generateSpawnRemap() = android32 0x4701e0;
	TodoReturn generateTargetGroups() = android32 0x46e350;
	TodoReturn generateVisibilityGroups() = android32 0x46e080;
	TodoReturn getActiveOrderSpawnObjects() = android32 0x45a388;
	TodoReturn getAreaObjectValue(EnterEffectInstance*, GameObject*, cocos2d::CCPoint&, bool&) = android32 0x455580;
	TodoReturn getBumpMod(PlayerObject*, int) = android32 0x4514a0;
	TodoReturn getCameraEdgeValue(int) = android32 0x457cd4;
	TodoReturn getCapacityString() = android32 0x46ef18;
	TodoReturn getCenterGroupObject(int, int) = android32 0x452a18;
	TodoReturn getCustomEnterEffects(int, bool) = android32 0x4665a0;
	TodoReturn getEasedAreaValue(GameObject*, EnterEffectInstance*, float, bool, int) = android32 0x455804;
	TodoReturn getEnterEasingKey(int, float) = android32 0x44fa30;
	TodoReturn getEnterEasingValue(float, int, float, int) = android32 0x44fa78;
	TodoReturn getFollowSpeedVal(GameObject*, int, int, float, float) = android32 0x456960;
	TodoReturn getGroundHeight(PlayerObject*, int) = android32 0x450c10;
	TodoReturn getGroundHeightForMode(int) = android32 0x4500bc;
	TodoReturn getGroup(int) = android32 0x452726;
	TodoReturn getGroupParent(int) = android32 0x452a10;
	TodoReturn getGroupParentsString(GameObject*) = android32 0x46f008;
	TodoReturn getItemValue(int, int) = android32 0x457568;
	TodoReturn getMaxPortalY() = android32 0x450b8c;
	TodoReturn getMinDistance(cocos2d::CCPoint, cocos2d::CCArray*, float, int) = android32 0x45956c;
	TodoReturn getMinPortalY() = android32 0x450ad0;
	TodoReturn getModifiedDelta(float) = android32 0x457e20;
	TodoReturn getMoveTargetDelta(EffectGameObject*, bool) = android32 0x454528;
	TodoReturn getOptimizedGroup(int) = android32 0x452942;
	TodoReturn getOtherPlayer(PlayerObject*) = android32 0x450bf8;
	TodoReturn getParticleKey(int, char const*, int, cocos2d::tCCPositionType) = android32 0x46f510;
	TodoReturn getParticleKey2(gd::string) = android32 0x459264;
	TodoReturn getPlayerButtonID(int, bool) = android32 0x4580c0;
	TodoReturn getPlayTimerFullSeconds() = android32 0x457ef0;
	TodoReturn getPlayTimerMilli() = android32 0x457ec8;
	TodoReturn getPortalTarget(TeleportPortalObject*) = android32 0x452760;
	TodoReturn getPortalTargetPos(TeleportPortalObject*, GameObject*, PlayerObject*) = android32 0x44fdc0;
	TodoReturn getRecordString() = android32 0x46f394;
	TodoReturn getRotateCommandTargets(EnhancedTriggerObject*, GameObject*&, GameObject*&, GameObject*&) = android32 0x4545f4;
	TodoReturn getSavedPosition(int, float) = android32 0x46aaa8;
	TodoReturn getScaledGroundHeight(float) = android32 0x451660;
	TodoReturn getSingleGroupObject(int) = android32 0x4529b8;
	TodoReturn getSpecialKey(int, bool, bool) = android32 0x454b68;
	TodoReturn getStaticGroup(int) = android32 0x452908;
	TodoReturn getStickyGroup(int) = android32 0x4549c8;
	TodoReturn getTargetFlyCameraY(GameObject*) = android32 0x450a4c;
	TodoReturn getTargetGroup(int, int) = android32 0x454be8;
	TodoReturn getTargetGroupOrigin(int, int) = android32 0x454c00;
	TodoReturn gravBumpPlayer(PlayerObject*, EffectGameObject*) = android32 0x472e74;
	TodoReturn groupStickyObjects(cocos2d::CCArray*) = android32 0x454a28;
	TodoReturn handleButton(bool, int, bool) = android32 0x4739f4;
	TodoReturn hasItem(int) = android32 0x450cf8;
	TodoReturn hasUniqueCoin(EffectGameObject*) = android32 0x450e96;
	TodoReturn increaseBatchNodeCapacity() = android32 0x44f8a8;
	bool isFlipping() = android32 0x45a956;
	bool isPlayer2Button(int) = android32 0x4580b4;
	TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::ccColor3B) = android32 0x45ac04;
	TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::ccColor3B, float, float, int, bool, float) = android32 0x45a9e8;
	TodoReturn loadGroupParentsFromString(GameObject*, gd::string) = android32 0x454890;
	TodoReturn loadLevelSettings() = android32 0x458148;
	TodoReturn loadStartPosObject() = android32 0x477b64;
	TodoReturn loadUpToPosition(float, int, int) = android32 0x4778e4;
	TodoReturn maxZOrderForShaderZ(int) = android32 0x452534;
	TodoReturn minZOrderForShaderZ(int) = android32 0x452518;
	TodoReturn modifyGroupPhysics(AdvancedFollowEditObject*, cocos2d::CCArray*) = android32 0x460798;
	TodoReturn modifyObjectPhysics(AdvancedFollowEditObject*, GameObjectPhysics&) = android32 0x456a98;
	TodoReturn moveAreaObject(GameObject*, float, float) = android32 0x45e340;
	TodoReturn moveCameraToPos(cocos2d::CCPoint) = android32 0x466a60;
	TodoReturn moveObject(GameObject*, double, double, bool) = android32 0x4563e2;
	TodoReturn moveObjects(cocos2d::CCArray*, double, double, bool) = android32 0x4562fc;
	TodoReturn moveObjectsSilent(int, double, double) = android32 0x4564dc;
	TodoReturn objectIntersectsCircle(GameObject*, GameObject*) = android32 0x450104;
	TodoReturn objectTypeToGameEvent(int) = android32 0x456e00;
	TodoReturn optimizeMoveGroups() = android32 0x46990c;
	TodoReturn orderSpawnObjects() = android32 0x45a3a4;
	TodoReturn parentForZLayer(int, bool, int, int) = android32 0x45d5f0;
	TodoReturn pauseAudio() = android32 0x457d9e;
	TodoReturn performMathOperation(double, double, int) = android32 0x4575d0;
	TodoReturn performMathRounding(double, int) = android32 0x457620;
	TodoReturn pickupItem(EffectGameObject*) = android32 0x450c94;
	TodoReturn playAnimationCommand(int, int) = android32 0x452800;
	TodoReturn playerCircleCollision(PlayerObject*, GameObject*) = android32 0x4502d4;
	TodoReturn playerIntersectsCircle(PlayerObject*, GameObject*) = android32 0x450250;
	TodoReturn playerTouchedObject(PlayerObject*, GameObject*) = android32 0x46dbe0;
	TodoReturn playerTouchedRing(PlayerObject*, RingObject*) = android32 0x472f68;
	TodoReturn playerTouchedTrigger(PlayerObject*, EffectGameObject*) = android32 0x46dc70;
	TodoReturn playerWasTouchingObject(PlayerObject*, GameObject*) = android32 0x461870;
	TodoReturn playerWillSwitchMode(PlayerObject*, GameObject*) = android32 0x4722f4;
	TodoReturn playExitDualEffect(PlayerObject*) = android32 0x451024;
	TodoReturn playFlashEffect(float, int, float) = android32 0x45acdc;
	TodoReturn playKeyframeAnimation(KeyframeAnimTriggerObject*, gd::vector<int> const&) = android32 0x4694b0;
	TodoReturn playSpeedParticle(float) = android32 0x4590f4;
	TodoReturn positionForShaderTarget(int) = android32 0x453b98;
	TodoReturn positionUIObjects() = android32 0x463834;
	TodoReturn prepareSavePositionObjects() = android32 0x47589c;
	TodoReturn prepareTransformParent(bool) = android32 0x455ef4;
	TodoReturn preResumeGame() = android32 0x457d94;
	TodoReturn preUpdateVisibility(float) = android32 0x469aa4;
	TodoReturn processActivatedAudioTriggers(float) = android32 0x46be18;
	TodoReturn processAdvancedFollowAction(AdvancedFollowInstance&, bool, float) = android32 0x46acb0;
	TodoReturn processAdvancedFollowActions(float) = android32 0x475170;
	TodoReturn processAreaActions(float, bool) = android32 0x4776b0;
	TodoReturn processAreaEffects(gd::vector<EnterEffectInstance>*, GJAreaActionType, float, bool) = android32 0x477098;
	TodoReturn processAreaFadeGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, bool) = android32 0x4558b0;
	TodoReturn processAreaMoveGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool) = android32 0x45ef2c;
	TodoReturn processAreaRotateGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool) = android32 0x45ecfc;
	TodoReturn processAreaTintGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, bool) = android32 0x4559ec;
	TodoReturn processAreaTransformGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool) = android32 0x45e780;
	TodoReturn processAreaVisualActions(float) = android32 0x478890;
	TodoReturn processCameraObject(GameObject*, PlayerObject*) = android32 0x450800;
	TodoReturn processCommands(float) = android32 0x473bd0;
	TodoReturn processDynamicObjectActions(int, float) = android32 0x46443c;
	TodoReturn processFollowActions() = android32 0x456ba4;
	TodoReturn processItems() = android32 0x450d5c;
	TodoReturn processMoveActions() = android32 0x456422;
	TodoReturn processMoveActionsStep(float, bool) = android32 0x47782c;
	TodoReturn processOptionsTrigger(GameOptionsTrigger*) = android32 0x457b48;
	TodoReturn processPlayerFollowActions(float) = android32 0x456588;
	TodoReturn processQueuedAudioTriggers() = android32 0x465a7c;
	TodoReturn processQueuedButtons() = android32 0x473b4c;
	TodoReturn processRotationActions() = android32 0x460a50;
	TodoReturn processSFXObjects() = android32 0x4695dc;
	TodoReturn processSFXState(SFXTriggerState*, SFXTriggerState*, int, float) = android32 0x459c24;
	TodoReturn processSongState(int, float, float, int, float, float, gd::vector<SongTriggerState>*, SongTriggerGameObject*) = android32 0x459fb8;
	TodoReturn processStateObjects() = android32 0x451560;
	TodoReturn processTransformActions(bool) = android32 0x460f58;
	TodoReturn queueButton(int, bool, bool) = android32 0x45f758;
	TodoReturn reAddToStickyGroup(GameObject*) = android32 0x46d714;
	TodoReturn recordAction(int, bool, bool) = android32 0x45f7ac;
	TodoReturn rectIntersectsCircle(cocos2d::CCRect, cocos2d::CCPoint, float) = android32 0x4502e8;
	TodoReturn refreshCounterLabels() = android32 0x46f2c0;
	TodoReturn refreshKeyframeAnims() = android32 0x457320;
	TodoReturn regenerateEnterEasingBuffers() = android32 0x475832;
	TodoReturn registerSpawnRemap(gd::vector<ChanceObject>&) = android32 0x470154;
	TodoReturn registerStateObject(EffectGameObject*) = android32 0x462610;
	TodoReturn removeBackground() = android32 0x44ec44;
	TodoReturn removeCustomEnterEffects(int, bool) = android32 0x46a9ca;
	TodoReturn removeFromGroupParents(GameObject*) = android32 0x4547ca;
	TodoReturn removeFromGroups(GameObject*) = android32 0x4526f0;
	TodoReturn removeFromStickyGroup(GameObject*) = android32 0x46d6bc;
	TodoReturn removeGroundLayer() = android32 0x44ee64;
	TodoReturn removeGroupParent(int) = android32 0x454654;
	TodoReturn removeKeyframe(KeyframeGameObject*) = android32 0x4572f2;
	TodoReturn removeMiddleground() = android32 0x44ee04;
	TodoReturn removeObjectFromSection(GameObject*) = android32 0x454c18;
	TodoReturn removePlayer2() = android32 0x450f8e;
	TodoReturn removeTemporaryParticles() = android32 0x46de1c;
	TodoReturn reorderObjectSection(GameObject*) = android32 0x454d74;
	TodoReturn reparentObject(cocos2d::CCNode*, cocos2d::CCNode*) = android32 0x45260c;
	TodoReturn resetActiveEnterEffects() = android32 0x466646;
	TodoReturn resetAreaObjectValues(GameObject*, bool) = android32 0x45e13c;
	TodoReturn resetAudio() = android32 0x457de2;
	TodoReturn resetCamera() = android32 0x468c68;
	TodoReturn resetGradientLayers() = android32 0x451da4;
	TodoReturn resetGroupCounters(bool) = android32 0x4579e0;
	TodoReturn resetLevelVariables() = android32 0x4727bc;
	TodoReturn resetMoveOptimizedValue() = android32 0x456dc8;
	TodoReturn resetPlayer() = android32 0x45442c;
	TodoReturn resetSongTriggerValues() = android32 0x461cd6;
	TodoReturn resetSpawnChannelIndex() = android32 0x46bc04;
	TodoReturn resetStaticCamera(bool, bool) = android32 0x466870;
	TodoReturn resetStoppedAreaObjects() = android32 0x45e2e4;
	TodoReturn restoreAllUIObjects() = android32 0x463678;
	TodoReturn restoreDefaultGameplayOffsetX() = android32 0x457d7a;
	TodoReturn restoreDefaultGameplayOffsetY() = android32 0x457d8c;
	TodoReturn restoreRemap(EffectGameObject*, gd::unordered_map<int, int>&) = android32 0x46d040;
	TodoReturn resumeAudio() = android32 0x457dc0;
	TodoReturn rotateAreaObjects(GameObject*, cocos2d::CCArray*, float, bool) = android32 0x45ea90;
	TodoReturn rotateObject(GameObject*, float) = android32 0x455e98;
	TodoReturn rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint, cocos2d::CCPoint, bool, bool) = android32 0x455f34;
	void setGroupParent(GameObject*, int) = android32 0x4546c0;
	void setStartPosObject(StartPosObject*) = android32 0x450868;
	TodoReturn setupLayers() = android32 0x45bd30;
	TodoReturn setupLevelStart(LevelSettingsObject*) = android32 0x4725e8;
	TodoReturn setupReplay(gd::string) = android32 0x45f80c;
	TodoReturn shakeCamera(float, float, float) = android32 0x458360;
	TodoReturn shouldExitHackedLevel() = android32 0x44e8d8;
	TodoReturn sortAllGroupsX() = android32 0x4529e0;
	TodoReturn sortGroups() = android32 0x46a830;
	TodoReturn sortSectionVector() = android32 0x474ca4;
	TodoReturn sortStickyGroups() = android32 0x45490c;
	TodoReturn spawnGroupTriggered(int, float, bool, gd::vector<int> const&, int, int) = android32 0x451914;
	TodoReturn spawnObjectsInOrder(cocos2d::CCArray*, double, gd::vector<int> const&, int, int) = android32 0x451968;
	TodoReturn spawnParticle(char const*, int, cocos2d::tCCPositionType, cocos2d::CCPoint) = android32 0x459094;
	TodoReturn spawnParticleTrigger(int, cocos2d::CCPoint, float, float) = android32 0x458cd8;
	TodoReturn spawnParticleTrigger(SpawnParticleGameObject*) = android32 0x458f24;
	TodoReturn spawnPlayer2() = android32 0x450f3a;
	TodoReturn speedForShaderTarget(int) = android32 0x453c1c;
	TodoReturn staticObjectsInRect(cocos2d::CCRect, bool) = android32 0x44fe38;
	TodoReturn stopAllGroundActions() = android32 0x450ab6;
	TodoReturn stopCameraShake() = android32 0x4583e4;
	TodoReturn stopCustomEnterEffect(EnterEffectObject*, bool) = android32 0x476468;
	TodoReturn stopCustomEnterEffect(EnterEffectObject*) = android32 0x476520;
	TodoReturn stopSFXTrigger(SFXTriggerGameObject*) = android32 0x465498;
	TodoReturn swapBackground(int) = android32 0x44f7ea;
	TodoReturn swapGround(int) = android32 0x44edd8;
	TodoReturn swapMiddleground(int) = android32 0x44f848;
	TodoReturn switchToFlyMode(PlayerObject*, GameObject*, bool, int) = android32 0x450932;
	TodoReturn switchToRobotMode(PlayerObject*, GameObject*, bool) = android32 0x4509ba;
	TodoReturn switchToRollMode(PlayerObject*, GameObject*, bool) = android32 0x450a1a;
	TodoReturn switchToSpiderMode(PlayerObject*, GameObject*, bool) = android32 0x4509ea;
	TodoReturn syncBGTextures() = android32 0x4582ec;
	TodoReturn teleportPlayer(TeleportPortalObject*, PlayerObject*) = android32 0x471ec8;
	TodoReturn testInstantCountTrigger(int, int, int, bool, int, gd::vector<int> const&, int, int) = android32 0x4574fa;
	void toggleAudioVisualizer(bool) = android32 0x45bba4;
	TodoReturn toggleDualMode(GameObject*, bool, PlayerObject*, bool) = android32 0x472430;
	TodoReturn toggleFlipped(bool, bool) = android32 0x466aec;
	TodoReturn toggleGroup(int, bool) = android32 0x452840;
	TodoReturn toggleLockPlayer(bool, bool) = android32 0x457b24;
	TodoReturn togglePlayerStreakBlend(bool) = android32 0x457afa;
	TodoReturn togglePlayerVisibility(bool, bool) = android32 0x457ac8;
	TodoReturn togglePlayerVisibility(bool) = android32 0x457ae0;
	TodoReturn transformAreaObjects(GameObject*, cocos2d::CCArray*, float, float, bool) = android32 0x45e3f4;
	TodoReturn triggerAdvancedFollowCommand(AdvancedFollowTriggerObject*) = android32 0x451bcc;
	TodoReturn triggerAdvancedFollowEditCommand(AdvancedFollowEditObject*) = android32 0x462324;
	TodoReturn triggerAreaEffect(EnterEffectObject*) = android32 0x47673c;
	TodoReturn triggerAreaEffectAnimation(EnterEffectObject*) = android32 0x4553e8;
	TodoReturn triggerDynamicMoveCommand(EffectGameObject*) = android32 0x462c80;
	TodoReturn triggerDynamicRotateCommand(EnhancedTriggerObject*) = android32 0x463014;
	TodoReturn triggerGradientCommand(GradientTriggerObject*) = android32 0x45dd20;
	TodoReturn triggerGravityChange(EffectGameObject*, int) = android32 0x45266c;
	TodoReturn triggerMoveCommand(EffectGameObject*) = android32 0x462e28;
	TodoReturn triggerRotateCommand(EnhancedTriggerObject*) = android32 0x463208;
	TodoReturn triggerShaderCommand(ShaderGameObject*) = android32 0x451df4;
	TodoReturn triggerTransformCommand(TransformTriggerGameObject*) = android32 0x452ab8;
	TodoReturn tryGetGroupParent(int) = android32 0x452a4c;
	TodoReturn tryGetMainObject(int) = android32 0x452a96;
	TodoReturn tryGetObject(int) = android32 0x4543b4;
	TodoReturn tryResumeAudio() = android32 0x457dfc;
	TodoReturn unclaimParticle(char const*, cocos2d::CCParticleSystemQuad*) = android32 0x4593d4;
	TodoReturn ungroupStickyObjects(cocos2d::CCArray*) = android32 0x4549d0;
	TodoReturn unlinkAllEvents() = android32 0x4702e4;
	TodoReturn updateActiveEnterEffect(EnterEffectObject*) = android32 0x47636c;
	TodoReturn updateAllObjectSection() = android32 0x4582b8;
	TodoReturn updateAreaObjectLastValues(GameObject*) = android32 0x455512;
	TodoReturn updateAudioVisualizer() = android32 0x45bb00;
	TodoReturn updateBGArtSpeed(float, float) = android32 0x458570;
	TodoReturn updateCamera(float) = android32 0x466d9c;
	TodoReturn updateCameraBGArt(cocos2d::CCPoint, float) = android32 0x458608;
	TodoReturn updateCameraEdge(int, int) = android32 0x457cac;
	TodoReturn updateCameraMode(EffectGameObject*, bool) = android32 0x468aec;
	TodoReturn updateCameraOffsetX(float, float, int, float, int, int) = android32 0x466cac;
	TodoReturn updateCameraOffsetY(float, float, int, float, int, int) = android32 0x466cfa;
	TodoReturn updateCollisionBlocks() = android32 0x454e4c;
	TodoReturn updateCounters(int, int) = android32 0x46f73c;
	TodoReturn updateDualGround(PlayerObject*, int, bool, float) = android32 0x468a70;
	TodoReturn updateEnterEffects(float) = android32 0x44f9e0;
	TodoReturn updateExtendedCollision(GameObject*, bool) = android32 0x4553be;
	TodoReturn updateExtraGameLayers() = android32 0x452570;
	TodoReturn updateGameplayOffsetX(int, bool) = android32 0x457d70;
	TodoReturn updateGameplayOffsetY(int, bool) = android32 0x457d82;
	TodoReturn updateGradientLayers() = android32 0x452bf0;
	TodoReturn updateGroundShadows() = android32 0x44ef00;
	TodoReturn updateGuideArt() = android32 0x45a890;
	TodoReturn updateInternalCamOffsetX(float, float, float) = android32 0x46865c;
	TodoReturn updateInternalCamOffsetY(float, float, float) = android32 0x4686aa;
	TodoReturn updateKeyframeOrder(int) = android32 0x45723e;
	TodoReturn updateLayerCapacity(gd::string) = android32 0x45fa04;
	TodoReturn updateLegacyLayerCapacity(int, int, int, int) = android32 0x44f900;
	TodoReturn updateLevelColors() = android32 0x44f560;
	TodoReturn updateMaxGameplayY() = android32 0x458218;
	TodoReturn updateMGArtSpeed(float, float) = android32 0x4585b8;
	TodoReturn updateMGOffsetY(float, float, int, float, int, int) = android32 0x466d48;
	TodoReturn updateOBB2(cocos2d::CCRect) = android32 0x450488;
	TodoReturn updateParticles(float) = android32 0x46de9c;
	TodoReturn updatePlatformerTime() = android32 0x464cb8;
	TodoReturn updatePlayerCollisionBlocks() = android32 0x454d90;
	TodoReturn updateProximityVolumeEffects() = android32 0x459bb8;
	TodoReturn updateQueuedLabels() = android32 0x457990;
	TodoReturn updateReplay() = android32 0x473b84;
	TodoReturn updateSavePositionObjects() = android32 0x462968;
	TodoReturn updateShaderLayer(float) = android32 0x453cfc;
	TodoReturn updateSpecialGroupData() = android32 0x475ec8;
	TodoReturn updateSpecialLabels() = android32 0x464de4;
	TodoReturn updateStaticCameraPos(cocos2d::CCPoint, bool, bool, bool, float, int, float) = android32 0x4686f8;
	TodoReturn updateStaticCameraPosToGroup(int, bool, bool, bool, float, float, int, float, bool, float) = android32 0x468fb0;
	TodoReturn updateTimeMod(float, bool, bool) = android32 0x451620;
	TodoReturn updateTimerLabels() = android32 0x46f0e8;
	TodoReturn updateZoom(float, float, int, float, int, int) = android32 0x468b90;
	TodoReturn visitWithColorFlash() = android32 0x45ad34;
	TodoReturn volumeForProximityEffect(SFXTriggerInstance&) = android32 0x459914;

	virtual void update(float) = android32 0x477c78;
	virtual bool init() = android32 0x47172c;
	virtual void visit() = android32 0x45aee0;
	virtual TodoReturn postUpdate(float) = android32 0x44d308;
	virtual TodoReturn checkForEnd() = android32 0x355c6c;
	virtual TodoReturn testTime() = android32 0x355c6e;
	virtual TodoReturn updateVerifyDamage() = android32 0x355c70;
	virtual TodoReturn updateAttemptTime(float) = android32 0x355c72;
	virtual TodoReturn updateVisibility(float) = android32 0x44d30a;
	virtual TodoReturn playerTookDamage(PlayerObject*) = android32 0x301592;
	virtual TodoReturn opacityForObject(GameObject*) = android32 0x44ddc0;
	virtual TodoReturn addToSpeedObjects(EffectGameObject*) = android32 0x301594;
	virtual TodoReturn objectsCollided(int, int) = android32 0x44dca4;
	virtual TodoReturn updateColor(cocos2d::ccColor3B&, float, int, bool, float, cocos2d::ccHSVValue&, int, bool, EffectGameObject*, int, int) = android32 0x44dcac;
	virtual TodoReturn toggleGroupTriggered(int, bool, gd::vector<int> const&, int, int) = android32 0x452900 = android32 0x4528ca;
	virtual TodoReturn spawnGroup(int, bool, double, gd::vector<int> const&, int, int) = android32 0x462c3c = android32 0x462b38;
	virtual TodoReturn spawnObject(GameObject*, double, gd::vector<int> const&) = android32 0x46d6b4 = android32 0x46d5c0;
	virtual TodoReturn activateEndTrigger(int, bool, bool) = android32 0x355c74;
	virtual TodoReturn activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&) = android32 0x355c76;
	virtual TodoReturn toggleGlitter(bool) = android32 0x355c78;
	virtual TodoReturn destroyPlayer(PlayerObject*, GameObject*) = android32 0x355c7a;
	virtual TodoReturn updateDebugDraw() = android32 0x44d608;
	virtual TodoReturn addToSection(GameObject*) = android32 0x463b68;
	virtual TodoReturn addToGroup(GameObject*, int, bool) = android32 0x45297c;
	virtual TodoReturn removeFromGroup(GameObject*, int) = android32 0x454778;
	virtual TodoReturn updateObjectSection(GameObject*) = android32 0x4552f0;
	virtual TodoReturn updateDisabledObjectsLastPos(cocos2d::CCArray*) = android32 0x301596;
	virtual TodoReturn toggleGroundVisibility(bool) = android32 0x44d3c8;
	virtual TodoReturn toggleMGVisibility(bool) = android32 0x44d3ca;
	virtual TodoReturn toggleHideAttempts(bool) = android32 0x44d3cc;
	virtual TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, int) {}
	virtual TodoReturn posForTime(float) {}
	virtual TodoReturn resetSPTriggered() {}
	virtual TodoReturn updateScreenRotation(float, bool, bool, float, int, float, int, int) = android32 0x466c14;
	virtual TodoReturn reverseDirection(EffectGameObject*) = android32 0x44dec6;
	virtual TodoReturn rotateGameplay(RotateGameplayGameObject*) = android32 0x462818;
	virtual TodoReturn didRotateGameplay() = android32 0x301598;
	virtual TodoReturn updateTimeWarp(float) = android32 0x44d3d8;
	virtual TodoReturn updateTimeWarp(GameObject*, float) = android32 0x44d3ce;
	virtual TodoReturn applyTimeWarp(float) = android32 0x44dfb0;
	virtual TodoReturn playGravityEffect(bool) = android32 0x355c7c;
	virtual TodoReturn manualUpdateObjectColors(GameObject*) = android32 0x44d30c;
	virtual TodoReturn createCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, bool) = android32 0x464f1c;
	virtual TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool) = android32 0x46a6c8;
	virtual TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*) = android32 0x44de0a;
	virtual TodoReturn activatedAudioTrigger(SFXTriggerGameObject*) = android32 0x466128;
	virtual TodoReturn checkpointActivated(CheckpointGameObject*) = android32 0x45aafc;
	virtual TodoReturn flipArt(bool) = android32 0x44d438;
	virtual TodoReturn addKeyframe(KeyframeGameObject*) = android32 0x4572a6;
	virtual TodoReturn updateTimeLabel(int, int, bool) = android32 0x355c7e;
	virtual TodoReturn checkSnapshot() = android32 0x355c80;
	virtual TodoReturn toggleProgressbar() = android32 0x355c82;
	virtual TodoReturn toggleInfoLabel() = android32 0x355c84;
	virtual TodoReturn removeAllCheckpoints() = android32 0x355c86;
	virtual TodoReturn toggleMusicInPractice() = android32 0x355c88;

	PAD = win 0x8, android32 0x8, android64 0x8;
	GJGameState m_gameState;
	GJGameLevel* m_level;
	PlaybackMode m_playbackMode;
	PAD = android32 0x28c, android64 0x514;
	PlayerObject* m_player1;
	PlayerObject* m_player2;
	LevelSettingsObject* m_levelSettings;
	cocos2d::CCArray* m_objects;
	cocos2d::CCArray* m_unknownCB0;
	cocos2d::CCArray* m_unknownCB8;
	cocos2d::CCDictionary* m_unknownCC0;
	cocos2d::CCNode* m_unknownCC8;
	gd::vector<GameObject*> m_unknownCD0;
	gd::vector<GameObject*> m_unknownCE8;
	gd::vector<GameObject*> m_unknownD00;
	gd::vector<GameObject*> m_unknownD18;
	gd::vector<GameObject*> m_unknownD30;
	gd::unordered_map<int, gd::vector<GameObject*>> m_unknownD48;
	gd::vector<GameObject*> m_unknownD70;
	PAD = win 0x8, android32 0x8, android64 0x8;
	gd::vector<GameObject*> m_unk918;
	PAD = win 0x30, android32 0x30, android64 0x30;
	cocos2d::CCDictionary* m_groupDict;
	cocos2d::CCDictionary* m_staticGroupDict;
	cocos2d::CCDictionary* m_optimizedGroupDict;
	gd::vector<cocos2d::CCArray*> m_groups;
	gd::vector<cocos2d::CCArray*> m_staticGroups;
	gd::vector<cocos2d::CCArray*> m_optimizedGroups;
	cocos2d::CCDictionary* m_unknownE38;
	cocos2d::CCDictionary* m_unknownE40;
	cocos2d::CCDictionary* m_unknownE48;
	cocos2d::CCArray* m_unknownE50;
	gd::unordered_map<int, std::pair<int, int>> m_unknownE58;
	cocos2d::CCDictionary* m_unknownE80;
	float m_unknownE88;
	cocos2d::CCNode* m_unknownE90;
	cocos2d::CCNode* m_unknownE98;
	cocos2d::CCNode* m_unknownEA0;
	cocos2d::CCLayer* m_objectLayer;
	PAD = win 0x7c, android32 0x78, android64 0xec;
	std::array<float, 2000> m_massiveFloatArray;
	PAD = win 0x48, android32 0x54, android64 0x98; // not sure about the android paddings
	int m_leftSectionIndex; // 29b4 win, 29d4 android32, 30b4 android64
	int m_rightSectionIndex;
	int m_bottomSectionIndex;
	int m_topSectionIndex;
	PAD = win 0xB8, android32 0xB0, android64 0x144;
	bool m_isPracticeMode; // 2a7c win, 2a94 android32, 3208 android64
	bool m_practiceMusicSync;
	float m_unk2a80;
	cocos2d::CCNode* m_unk2a84;
	int m_unk2a88;
	float m_unk2a8c;
	int m_unk2a90;
	int m_unk2a94;
	int m_unk2a98;
	cocos2d::CCDictionary* m_unk2a9c;
	float m_levelLength;
	int m_unk2aa4;
	EndPortalObject* m_endPortal;
	bool m_isTestMode;
	PAD = win 0xa0, android32 0x82, android64 0xb0;
	gd::vector<PlayerButtonCommand> m_queuedButtons;
	PAD = android32 0xb0, android64 0x148;
	UILayer* m_uiLayer;
	PAD = android32 0x24, android64 0x40;
	gd::vector<GameObject*> m_sections; // 2c2c
	PAD = android32 0x118, android64 0x1A8;
	cocos2d::CCDrawNode* m_debugDrawNode; // android32 = 0x2d50, android64 = 0x3668
	PAD = android32 0x4, android64 0x8;
	bool m_isDebugDrawEnabled;
	PAD = android32 0x5, android64 0x9;
}

[[link(android)]]
class GJBigSprite : cocos2d::CCNode {
	// virtual ~GJBigSprite();

	static GJBigSprite* create() = android32 0x4ec434;

	TodoReturn finishedLoadingSpriteAsync(cocos2d::CCObject*) = android32 0x4ec5cc;
	TodoReturn loadSpriteAsync(gd::string, int) = android32 0x4ec49c;
	TodoReturn unloadAll() = android32 0x4ec540;
	TodoReturn unloadSprite(gd::string, int) = android32 0x4ec4f0;
	TodoReturn updateSpriteVisibility() = android32 0x4ec6a0;

	virtual bool init() = android32 0x4ecc30;
}

[[link(android)]]
class GJBigSpriteNode : cocos2d::CCNode {
	// virtual ~GJBigSpriteNode();

	static GJBigSpriteNode* create() = android32 0x4ec3b4;

	virtual bool init() = android32 0x4eae34;
}

[[link(android)]]
class GJChallengeDelegate {
	virtual TodoReturn challengeStatusFinished();
	virtual TodoReturn challengeStatusFailed();
}

[[link(android)]]
class GJChallengeItem : cocos2d::CCObject {
	// virtual ~GJChallengeItem();

	static GJChallengeItem* create() = android32 0x3f9c2c;
	static GJChallengeItem* create(GJChallengeType, int, int, int, gd::string) = android32 0x3f9a9c;

	TodoReturn createFromString(gd::string) = android32 0x3f9b60;
	TodoReturn createWithCoder(DS_Dictionary*) = android32 0x3f9f48;
	void dataLoaded(DS_Dictionary*) = android32 0x3f9e18;
	TodoReturn incrementCount(int) = android32 0x3f9c84;
	bool init(GJChallengeType, int, int, int, gd::string) = android32 0x3f9a18;
	void setCount(int) = android32 0x3f3ca0;

	virtual void encodeWithCoder(DS_Dictionary*) = android32 0x3f3828;
	virtual bool canEncode() = android32 0x3f3570;

	GJChallengeType m_challengeType;
	geode::SeedValueSRV m_count;
	geode::SeedValueSRV m_reward;
	geode::SeedValueSRV m_goal;
	int m_timeLeft;
	bool m_canClaim;
	int m_position;
	gd::string m_name;
}

[[link(android)]]
class GJChestSprite : cocos2d::CCSprite {
	// virtual ~GJChestSprite();

	static GJChestSprite* create(int) = android32 0x4c65c8;

	bool init(int) = android32 0x4c6594;
	TodoReturn switchToState(ChestSpriteState, bool) = android32 0x4c5c0c;

	virtual void setOpacity(unsigned char) = android32 0x4c7cbe = android32 0x4c7c88;
	virtual void setColor(cocos2d::ccColor3B const&) = android32 0x4c7c80 = android32 0x4c7bc0;
}

[[link(android)]]
class GJColorSetupLayer : FLAlertLayer, ColorSelectDelegate, FLAlertLayerProtocol {
	// virtual ~GJColorSetupLayer();

	static GJColorSetupLayer* create(LevelSettingsObject*) = android32 0x4790b8;

	bool init(LevelSettingsObject*) = android32 0x478b50;
	void onClose(cocos2d::CCObject* sender) = android32 0x4788be;
	void onColor(cocos2d::CCObject* sender) = android32 0x4789a6;
	void onPage(cocos2d::CCObject* sender) = android32 0x4791b0;
	TodoReturn showPage(int) = android32 0x478b08;
	TodoReturn updateSpriteColor(ColorChannelSprite*, cocos2d::CCLabelBMFont*, int) = android32 0x478a00;
	TodoReturn updateSpriteColors() = android32 0x478a58;

	virtual void keyBackClicked() = android32 0x4788f8 = android32 0x4788f2;
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*) = android32 0x478b00 = android32 0x478afc;
}

[[link(android)]]
class GJComment : cocos2d::CCNode {
	// virtual ~GJComment();

	static GJComment* create() = android32 0x3b62d8;
	static GJComment* create(cocos2d::CCDictionary*) = android32 0x3b6380;

	virtual bool init() = android32 0x3a81f0;

	gd::string m_commentString;
	gd::string m_userName;
	int m_commentID;
	int m_userID;
	int m_likeCount;
	int m_levelID;
	bool m_isSpam;
	int m_accountID;
	gd::string m_uploadDate;
	bool m_commentDeleted;
	int m_percentage;
	int m_modBadge;
	cocos2d::ccColor3B m_color;
	bool m_hasLevelID;
	bool m_unkMultiplayerBool;
	GJUserScore* m_userScore;
}

[[link(android)]]
class GJCommentListLayer : cocos2d::CCLayerColor {
	// virtual ~GJCommentListLayer();

	static GJCommentListLayer* create(BoomListView* listView, char const* title, cocos2d::ccColor4B color, float width, float height, bool blueBorder) = android32 0x48c8f0;

	bool init(BoomListView* listView, char const* title, cocos2d::ccColor4B color, float width, float height, bool blueBorder) = android32 0x48c6ac;

	BoomListView* m_list;
}

[[link(android)]]
class GJDailyLevelDelegate {
	virtual TodoReturn dailyStatusFinished(GJTimedLevelType);
	virtual TodoReturn dailyStatusFailed(GJTimedLevelType, GJErrorCode);
}

[[link(android)]]
class GJDifficultySprite : cocos2d::CCSprite {
	// virtual ~GJDifficultySprite();

	static GJDifficultySprite* create(int, GJDifficultyName) = android32 0x4959e0;

	gd::string getDifficultyFrame(int, GJDifficultyName) = android32 0x495910;
	bool init(int, GJDifficultyName) = android32 0x495998;
	void updateDifficultyFrame(int, GJDifficultyName) = android32 0x495a48;
	void updateFeatureState(GJFeatureState) = android32 0x495b14;
	void updateFeatureStateFromLevel(GJGameLevel*) = android32 0x495ccc;
}

[[link(android)]]
class GJDropDownLayer : cocos2d::CCLayerColor {
	// virtual ~GJDropDownLayer();
	// GJDropDownLayer();

	static GJDropDownLayer* create(char const*, float, bool) = android32 0x406b48;
	static GJDropDownLayer* create(char const*) = android32 0x406c08;

	bool init(char const*, float, bool) = android32 0x406804;
	bool init(char const*) = android32 0x406c14;

	virtual void draw() = android32 0x406c20;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x4065b4 = android32 0x4065b0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x4065d2 = android32 0x4065d0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x4065be = android32 0x4065bc;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x4065c8 = android32 0x4065c6;
	virtual void registerWithTouchDispatcher() = android32 0x406668;
	virtual void keyBackClicked() = android32 0x40654c = android32 0x406542;
	virtual TodoReturn customSetup() = android32 0x406508;
	virtual TodoReturn enterLayer() = android32 0x406526;
	virtual TodoReturn exitLayer(cocos2d::CCObject*) = android32 0x406554;
	virtual TodoReturn showLayer(bool) = android32 0x40668c;
	virtual TodoReturn hideLayer(bool) = android32 0x406748;
	virtual TodoReturn layerVisible() = android32 0x406580;
	virtual TodoReturn layerHidden() = android32 0x40658a;
	virtual TodoReturn enterAnimFinished() = android32 0x40657e;
	virtual TodoReturn disableUI() = android32 0x40650a;
	virtual TodoReturn enableUI() = android32 0x406518;

	cocos2d::CCPoint m_endPosition;
	cocos2d::CCPoint m_startPosition;
	cocos2d::CCMenu* m_buttonMenu;
	GJListLayer* m_listLayer;
	cocos2d::CCLayer* m_mainLayer;
	bool m_hidden;
	GJDropDownLayerDelegate* m_delegate;
	bool m_unknown;
}

[[link(android)]]
class GJDropDownLayerDelegate {
	virtual TodoReturn dropDownLayerWillClose(GJDropDownLayer*);
}

[[link(android)]]
class GJEffectManager : cocos2d::CCNode {
	// virtual ~GJEffectManager();
	// GJEffectManager();

	static GJEffectManager* create() = android32 0x48499c;

	TodoReturn activeColorForIndex(int) = android32 0x47a690;
	TodoReturn activeOpacityForIndex(int) = android32 0x47a70c;
	TodoReturn addAllInheritedColorActions(cocos2d::CCArray*) = android32 0x47a5e0;
	TodoReturn addCountToItem(int, int) = android32 0x483860;
	TodoReturn addMoveCalculation(CCMoveCNode*, cocos2d::CCPoint, GameObject*) = android32 0x47c374;
	TodoReturn calculateBaseActiveColors() = android32 0x47a524;
	TodoReturn calculateInheritedColor(int, ColorAction*) = android32 0x47ae68;
	TodoReturn calculateLightBGColor(cocos2d::ccColor3B) = android32 0x47b470;
	TodoReturn checkCollision(int const&, int const&) = android32 0x47a8f8;
	TodoReturn colorActionChanged(ColorAction*) = android32 0x47a85c;
	TodoReturn colorExists(int) = android32 0x47a83c;
	TodoReturn colorForEffect(cocos2d::ccColor3B, cocos2d::ccHSVValue) = android32 0x47a872;
	TodoReturn colorForGroupID(int, cocos2d::ccColor3B const&, bool) = android32 0x47c69c;
	TodoReturn colorForIndex(int) = android32 0x47a7a0;
	TodoReturn colorForPulseEffect(cocos2d::ccColor3B const&, PulseEffectAction*) = android32 0x47ac70;
	TodoReturn controlActionsForControlID(int, GJActionCommand) = android32 0x4811c0;
	TodoReturn controlActionsForTrigger(EffectGameObject*, GJActionCommand) = android32 0x4814ec;
	TodoReturn countForItem(int) = android32 0x47b2fe;
	TodoReturn createFollowCommand(float, float, float, int, int, int, int) = android32 0x48535a;
	TodoReturn createKeyframeCommand(int, cocos2d::CCArray*, GameObject*, int, int, bool, float, float, float, float, float, float, gd::vector<int> const&) = android32 0x485438;
	TodoReturn createMoveCommand(cocos2d::CCPoint, int, float, int, float, bool, bool, bool, bool, float, float, int, int) = android32 0x48512c;
	TodoReturn createPlayerFollowCommand(float, float, int, float, float, int, int, int) = android32 0x4853c2;
	TodoReturn createRotateCommand(float, float, int, int, int, float, bool, bool, bool, int, int) = android32 0x485230;
	TodoReturn createTransformCommand(double, double, double, double, bool, float, int, int, int, float, bool, bool, int, int) = android32 0x4852bc;
	TodoReturn getAllColorActions() = android32 0x47a444;
	TodoReturn getAllColorSprites() = android32 0x47a484;
	ColorAction* getColorAction(int) = android32 0x47a76c;
	ColorActionSprite* getColorSprite(int) = android32 0x47a642;
	TodoReturn getLoadedMoveOffset(gd::unordered_map<int, std::pair<double, double>>&) = android32 0x47d83c;
	TodoReturn getMixedColor(cocos2d::ccColor3B, cocos2d::ccColor3B, float) = android32 0x47b34c;
	TodoReturn getMoveCommandNode(GroupCommandObject2*) = android32 0x47d468;
	TodoReturn getMoveCommandObject() = android32 0x47b630;
	TodoReturn getOpacityActionForGroup(int) = android32 0x47c608;
	gd::string getSaveString() = android32 0x480d6c;
	TodoReturn getTempGroupCommand() = android32 0x47d4fc;
	TodoReturn handleObjectCollision(bool, int, int) = android32 0x47f574;
	TodoReturn hasActiveDualTouch() = android32 0x47b2de;
	TodoReturn hasBeenTriggered(int, int) = android32 0x47c180;
	TodoReturn hasPulseEffectForGroupID(int) = android32 0x47c676;
	bool isGroupEnabled(int) = android32 0x47b2ae;
	TodoReturn keyForGroupIDColor(int, cocos2d::ccColor3B const&, bool) = android32 0x480e80;
	TodoReturn loadFromState(EffectManagerState&) = android32 0x48697c;
	TodoReturn objectsCollided(int, int) = android32 0x47f72c;
	TodoReturn opacityForIndex(int) = android32 0x47a7f4;
	TodoReturn opacityModForGroup(int) = android32 0x47c624;
	TodoReturn pauseTimer(int) = android32 0x47dd9a;
	TodoReturn playerButton(bool, bool) = android32 0x47f7e8;
	TodoReturn playerDied() = android32 0x47f4f0;
	TodoReturn postCollisionCheck() = android32 0x47f634;
	TodoReturn postMoveActions() = android32 0x47e9f4;
	TodoReturn preCollisionCheck() = android32 0x47a990;
	TodoReturn prepareMoveActions(float, bool) = android32 0x4823c8;
	TodoReturn processColors() = android32 0x47d084;
	TodoReturn processCopyColorPulseActions() = android32 0x47cf20;
	TodoReturn processInheritedColors() = android32 0x47b118;
	TodoReturn processMoveCalculations() = android32 0x47aaa0;
	TodoReturn processPulseActions() = android32 0x47ae00;
	TodoReturn registerCollisionTrigger(int, int, int, bool, bool, gd::vector<int> const&, int, int) = android32 0x481fb0;
	TodoReturn registerRotationCommand(GroupCommandObject2*, bool) = android32 0x47ec34;
	TodoReturn removeAllPulseActions() = android32 0x47bbf8;
	TodoReturn removeColorAction(int) = android32 0x47a806;
	TodoReturn removePersistentFromAllItems() = android32 0x47bcd6;
	TodoReturn removePersistentFromAllTimers() = android32 0x47bd3c;
	TodoReturn removeTriggeredID(int, int) = android32 0x47c084;
	TodoReturn reset() = android32 0x483ec0;
	TodoReturn resetEffects() = android32 0x483e0c;
	TodoReturn resetMoveActions() = android32 0x47e62e;
	TodoReturn resetTempGroupCommands(bool) = android32 0x47e660;
	TodoReturn resetToggledGroups() = android32 0x47bce0;
	TodoReturn resetTriggeredIDs() = android32 0x47bd92;
	TodoReturn resumeTimer(int) = android32 0x47ddba;
	TodoReturn runCountTrigger(int, int, bool, int, bool, gd::vector<int> const&, int, int) = android32 0x4839e4;
	TodoReturn runDeathTrigger(int, bool, gd::vector<int> const&, int, int) = android32 0x4832b8;
	TodoReturn runOpacityActionOnGroup(int, float, float, int, int) = android32 0x47ee10;
	TodoReturn runPulseEffect(int, bool, float, float, float, PulseEffectType, cocos2d::ccColor3B, cocos2d::ccHSVValue, int, bool, bool, bool, bool, int, int) = android32 0x47f18c;
	TodoReturn runTimerTrigger(int, double, bool, int, gd::vector<int> const&, int, int) = android32 0x483d06;
	TodoReturn runTouchTriggerCommand(int, bool, TouchTriggerType, TouchTriggerControl, bool, gd::vector<int> const&, int, int) = android32 0x481c34;
	TodoReturn saveCompletedMove(int, double, double) = android32 0x47d7a6;
	TodoReturn saveToState(EffectManagerState&) = android32 0x48683c;
	void setColorAction(ColorAction*, int) = android32 0x47a730;
	void setFollowing(int, int, bool) = android32 0x47f410;
	TodoReturn setupFromString(gd::string) = android32 0x47e47c;
	TodoReturn shouldBlend(int) = android32 0x47a502;
	TodoReturn spawnGroup(int, float, bool, gd::vector<int> const&, int, int) = android32 0x48224c;
	TodoReturn spawnObject(GameObject*, float, gd::vector<int> const&, int, int) = android32 0x4820cc;
	TodoReturn startTimer(int, double, double, bool, bool, bool, float, bool, int, gd::vector<int> const&, int, int) = android32 0x482f38;
	TodoReturn storeTriggeredID(int, int) = android32 0x47c1f4;
	TodoReturn timeForItem(int) = android32 0x47c7a0;
	TodoReturn timerExists(int) = android32 0x47b338;
	TodoReturn toggleGroup(int, bool) = android32 0x47f374;
	TodoReturn toggleItemPersistent(int, bool) = android32 0x47db7c;
	TodoReturn toggleTimerPersistent(int, bool) = android32 0x47f3e8;
	TodoReturn transferPersistentItems() = android32 0x47dbbc;
	TodoReturn traverseInheritanceChain(InheritanceNode*) = android32 0x47b0c4;
	TodoReturn tryGetMoveCommandNode(int) = android32 0x47c066;
	TodoReturn updateActiveOpacityEffects() = android32 0x47edd6;
	TodoReturn updateColorAction(ColorAction*) = android32 0x47abd4;
	TodoReturn updateColorEffects(float) = android32 0x47ac04;
	TodoReturn updateColors(cocos2d::ccColor3B, cocos2d::ccColor3B) = android32 0x47a4c4;
	TodoReturn updateCountForItem(int, int) = android32 0x483688;
	TodoReturn updateEffects(float) = android32 0x47edb8;
	TodoReturn updateOpacityAction(OpacityEffectAction*) = android32 0x47ef44;
	TodoReturn updateOpacityEffects(float) = android32 0x47ed70;
	TodoReturn updatePulseEffects(float) = android32 0x47b718;
	TodoReturn updateSpawnTriggers(float) = android32 0x480fd8;
	TodoReturn updateTimer(int, double) = android32 0x4830c8;
	TodoReturn updateTimers(float, float) = android32 0x47f900;
	TodoReturn wasFollowing(int, int) = android32 0x47b558;
	TodoReturn wouldCreateLoop(InheritanceNode*, int) = android32 0x47a62a;

	virtual bool init() = android32 0x486c00;
}

[[link(android)]]
class GJFlyGroundLayer : GJGroundLayer {
	// virtual ~GJFlyGroundLayer();

	static GJFlyGroundLayer* create() = android32 0x419ed0;

	virtual bool init() = android32 0x419362;
}

[[link(android)]]
class GJFollowCommandLayer : SetupTriggerPopup {
	// virtual ~GJFollowCommandLayer();

	static GJFollowCommandLayer* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x4ba754;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x4b9b90;
	void onUpdateGroupID(cocos2d::CCObject* sender) = android32 0x4ba94e;
	void onUpdateGroupID2(cocos2d::CCObject* sender) = android32 0x4ba9e2;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x4bab30;
	TodoReturn sliderXModChanged(cocos2d::CCObject*) = android32 0x4baa5c;
	TodoReturn sliderYModChanged(cocos2d::CCObject*) = android32 0x4baac6;
	TodoReturn updateDuration() = android32 0x4baaf4;
	TodoReturn updateDurLabel(bool) = android32 0x4b98a4;
	TodoReturn updateTargetGroupID() = android32 0x4ba900;
	TodoReturn updateTargetGroupID2() = android32 0x4ba994;
	TodoReturn updateTextInputLabel() = android32 0x4b9a88;
	TodoReturn updateTextInputLabel2() = android32 0x4b9b0c;
	TodoReturn updateXMod() = android32 0x4baa20;
	TodoReturn updateXModLabel() = android32 0x4b9960;
	TodoReturn updateYMod() = android32 0x4baa8a;
	TodoReturn updateYModLabel() = android32 0x4b99f4;

	virtual TodoReturn determineStartValues() = android32 0x4b96bc;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x4b963a;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x4bad20 = android32 0x4bab5c;
}

[[link(android)]]
class GJFriendRequest : cocos2d::CCNode {
	// virtual ~GJFriendRequest();

	static GJFriendRequest* create() = android32 0x3b4c18;
	static GJFriendRequest* create(cocos2d::CCDictionary*) = android32 0x3b4c88;

	virtual bool init() = android32 0x3a8928;
}

[[link(android)]]
class GJGameLevel : cocos2d::CCNode {
	// virtual ~GJGameLevel();
	static GJGameLevel* create() = android32 0x3af090 = android32 0x3ae81c;
	static GJGameLevel* create(cocos2d::CCDictionary* dict, bool hasPassword);
	inline static GJGameLevel* createWithCoder(DS_Dictionary* dict) {
		//inlined on windows
		auto level = GJGameLevel::create();
		level->dataLoaded(dict);
		return level;
	}

	bool areCoinsVerified() = android32 0x3b2944;
	void copyLevelInfo(GJGameLevel* levelInfo) = android32 0x3b2a7c;
	void dataLoaded(DS_Dictionary* ) = android32 0x3b1d54;
	static int demonIconForDifficulty(DemonDifficultyType) = android32 0x3b2c80;
	gd::string generateSettingsString() = android32 0x3afc50;
	gd::string getAudioFileName() = android32 0x3aef6c;
	TodoReturn getAverageDifficulty() = android32 0x3aee28;
	char const* getCoinKey(int) = android32 0x3aee50;
	int getLastBuildPageForTab(int page) = android32 0x3aeea0;
	int getLengthKey(int, bool) = android32 0x3aed80;
	GJGameLevel* getListSnapshot() = android32 0x3b1c04;
	int getNormalPercent() = android32 0x3b01e4;
	TodoReturn getSongName() = android32 0x3aefd4;
	gd::string getUnpackedLevelDescription() = android32 0x3b2c18;
	TodoReturn handleStatsConflict(GJGameLevel*) = android32 0x3c0eec;
	inline bool isPlatformer() {
		return m_levelLength == 5;
	}
	const char* lengthKeyToString(int) = android32 0x3aeda8;
	void levelWasAltered() = android32 0x3b2a1c;
	void levelWasSubmitted() = android32 0x3aeca4;
	void parseSettingsString(gd::string settings) = android32 0x3af08c;
	void saveNewScore(int newTime, int newPoints) = android32 0x3c0e9c;
	TodoReturn savePercentage(int, bool, int, int, bool) = android32 0x3be1a8;
	TodoReturn scoreStringToVector(gd::string&, gd::vector<int>&) = android32 0x3bf344;
	TodoReturn scoreVectorToString(gd::vector<int>&, int) = android32 0x3c0c24;
	void setAccountID(int accountID) = android32 0x3a8a70;
	void setAttempts(int attempts) = android32 0x3a8ae0;
	void setAttemptTime(int attemptTime) = android32 0x3a8b88;
	void setClicks(int clicks) = android32 0x3a8b50;
	void setCoinsVerified(int coinsVerified) = android32 0x3a8d20;
	void setDailyID(int dailyID) = android32 0x3a8c30;
	void setDemon(int demon) = android32 0x31cbd4;
	void setJumps(int jumps) = android32 0x3a8b18;
	void setLastBuildPageForTab(int, int) = android32 0x3aef00;
	void setLevelID(int levelID) = android32 0x3a8a38;
	void setNewNormalPercent(int newNormalPercent) = android32 0x3a8bc0;
	void setNewNormalPercent2(int newNormalPercent2) = android32 0x3a8bf8;
	void setNormalPercent(int normalPercent) = android32 0x3afc84;
	void setObjectCount(int objectCount) = android32 0x3a8aa8;
	void setOriginalLevel(int copiedID) = android32 0x3a8d58;
	void setStars(int stars) = android32 0x31cc0c;
	bool shouldCheatReset() = android32 0x3b27a8;
	TodoReturn storeNewLocalScore(int, int) = android32 0x3c0d9c;
	void unverifyCoins() = android32 0x3b2990;

	virtual void encodeWithCoder(DS_Dictionary* dsdict) = android32 0x3b1260;
	virtual bool canEncode() = android32 0x3a8176; //merged func (return true)
	virtual bool init() = android32 0x3a8c68;

	cocos2d::CCDictionary* m_lastBuildSave;
	geode::SeedValueRSV m_levelID;
	gd::string m_levelName;
	gd::string m_levelDesc;
	gd::string m_levelString;
	gd::string m_creatorName;
	gd::string m_recordString;
	gd::string m_uploadDate;
	gd::string m_updateDate;
	gd::string m_unkString1;
	gd::string m_unkString2;

	cocos2d::CCPoint m_unkPoint;
	geode::SeedValueRSV m_userID;
	geode::SeedValueRSV m_accountID;
	GJDifficulty m_difficulty;
	int m_audioTrack;
	int m_songID;
	int m_levelRev;
	bool m_unlisted;
	bool m_friendsOnly;
	geode::SeedValueRSV m_objectCount;
	int m_levelIndex;
	int m_ratings;
	int m_ratingsSum;
	int m_downloads;
	bool m_isEditable;
	bool m_gauntletLevel;
	bool m_gauntletLevel2;
	int m_workingTime;
	int m_workingTime2;
	bool m_lowDetailMode;
	bool m_lowDetailModeToggled;
	bool m_selected;
	bool m_localOrSaved;
	bool m_disableShake;
	geode::SeedValueRS m_isVerified;
	bool m_isVerifiedRaw;
	bool m_isUploaded;
	bool m_hasBeenModified;
	int m_levelVersion;
	int m_gameVersion;

	geode::SeedValueRSV m_attempts;
	geode::SeedValueRSV m_jumps;
	geode::SeedValueRSV m_clicks;
	geode::SeedValueRSV m_attemptTime;
	int m_chk;
	bool m_isChkValid;
	bool m_isCompletionLegitimate;
	geode::SeedValueVSR m_normalPercent;
	geode::SeedValueRSV m_orbCompletion;
	geode::SeedValueRSV m_newNormalPercent2;
	int m_practicePercent;
	int m_likes;
	int m_dislikes;
	int m_levelLength;
	int m_featured;
	int m_isEpic;
	bool m_levelFavorited;
	int m_levelFolder;
	geode::SeedValueRSV m_dailyID;
	geode::SeedValueRSV m_demon;
	int m_demonDifficulty;
	geode::SeedValueRSV m_stars;
	bool m_autoLevel;
	int m_coins;
	geode::SeedValueRSV m_coinsVerified;
	geode::SeedValueRS m_password;
	geode::SeedValueRSV m_originalLevel;
	bool m_twoPlayerMode;
	int m_failedPasswordAttempts;
	geode::SeedValueRSV m_firstCoinVerified;
	geode::SeedValueRSV m_secondCoinVerified;
	geode::SeedValueRSV m_thirdCoinVerified;
	int m_starsRequested;
	bool m_showedSongWarning;
	int m_starRatings;
	int m_starRatingsSum;
	int m_maxStarRatings;
	int m_minStarRatings;
	int m_demonVotes;
	int m_rateStars;
	int m_rateFeature;
	gd::string m_rateUser;
	bool m_dontSave;
	bool m_levelNotDownloaded;
	int m_requiredCoins;
	bool m_isUnlocked;
	cocos2d::CCPoint m_lastCameraPos;
	float m_fastEditorZoom;
	int m_lastBuildTab;
	int m_lastBuildPage;
	int m_lastBuildGroupID;
	GJLevelType m_levelType;
	int m_M_ID;
	gd::string m_tempName;
	gd::string m_capacityString;
	bool m_highObjectsEnabled;
	bool m_unlimitedObjectsEnabled;
	gd::string m_personalBests;
	int m_timestamp;
	int m_unkInt;
	gd::string m_songIDs;
	gd::string m_sfxIDs;
	int m_54;
	int m_bestTime;
	int m_bestPoints;
	int m_k111;
	gd::string m_unkString3;
	gd::string m_unkString4;
}

[[link(android)]]
class GJGameLoadingLayer : cocos2d::CCLayer {
	// virtual ~GJGameLoadingLayer();

	static GJGameLoadingLayer* create(GJGameLevel* level, bool editor) = android32 0x45e028;

	void gameLayerDidUnload() = android32 0x45e0f8;
	bool init(GJGameLevel* level, bool editor) = android32 0x45df64;
	void loadLevel() = android32 0x44df5c;
	static GJGameLoadingLayer* transitionToLoadingLayer(GJGameLevel* level, bool editor) = android32 0x45e0ac;

	virtual void onEnter() = android32 0x44de90;
	virtual void onEnterTransitionDidFinish() = android32 0x44de94;

	GJGameLevel* m_level;
	bool m_editor;
}

[[link(android), depends(EventTriggerInstance), depends(SongChannelState), depends(DynamicObjectAction), depends(AdvancedFollowInstance), depends(EnterEffectInstance), depends(GameObjectPhysics), depends(GJValueTween), depends(SFXTriggerInstance)]]
class GJGameState {
	// ~GJGameState();
	// GJGameState();

	TodoReturn controlTweenAction(int, int, GJActionCommand) = android32 0x4691b4;
	TodoReturn getGameObjectPhysics(GameObject*) = android32 0x469364;
	TodoReturn processStateTriggers() = android32 0x44e866;
	TodoReturn stopTweenAction(int) = android32 0x46683c;
	TodoReturn tweenValue(float, float, int, float, int, float, int, int) = android32 0x4668d0;
	TodoReturn updateTweenAction(float, int) = android32 0x44e7e8;
	TodoReturn updateTweenActions(float) = android32 0x469202;

	float m_unk0;
	float m_unk4;
	cocos2d::CCPoint m_unk8;
	cocos2d::CCPoint m_unk10;
	cocos2d::CCPoint m_unk18;
	cocos2d::CCPoint m_unk20;
	cocos2d::CCPoint m_unk28;
	cocos2d::CCPoint m_unk30;
	cocos2d::CCPoint m_unk38;
	cocos2d::CCPoint m_unk40;
	cocos2d::CCPoint m_unk48;
	cocos2d::CCPoint m_unk50;
	cocos2d::CCPoint m_unk58;
	cocos2d::CCPoint m_unk60;
	cocos2d::CCPoint m_unk68;
	cocos2d::CCPoint m_unk70;
	cocos2d::CCPoint m_unk78;
	cocos2d::CCPoint m_unk80;
	cocos2d::CCPoint m_unk88;
	cocos2d::CCPoint m_unk90;
	cocos2d::CCPoint m_unk98;
	cocos2d::CCPoint m_unka0;
	cocos2d::CCPoint m_unka8;
	cocos2d::CCPoint m_unkb0;
	cocos2d::CCPoint m_unkb8;
	cocos2d::CCPoint m_unkc0;
	cocos2d::CCPoint m_unkc8;
	cocos2d::CCPoint m_unkd0;
	cocos2d::CCPoint m_unkd8;
	cocos2d::CCPoint m_unke0;
	cocos2d::CCPoint m_unke8;
	cocos2d::CCPoint m_unkf0;
	bool m_unkf8;
	int m_unkfc;
	bool m_unk100;
	int m_unk104;
	bool m_unk108;
	cocos2d::CCPoint m_unk10c;
	PAD = win 0x10, android32 0x10, android64 0x10;
	float m_unk124;
	float m_unk128;
	PAD = win 0x1c, android32 0x1c, android64 0x1c;
	float m_unk148;
	PAD = win 0x1c, android32 0x1c, android64 0x1c;
	bool m_unk168;
	bool m_unk169;
	bool m_unk16a;
	float m_unk16c;
	float m_unk170;
	float m_unk174;
	float m_unk178;
	int m_unk17c;
	int m_unk180;
	bool m_unk184;
	float m_unk188;
	float m_unk18c;
	int m_currentChannel;
	int m_unk194;
	gd::unordered_map<int, int> m_unk198;
	gd::unordered_map<int, bool> m_unk1b4;
	float m_unk1d0; // unsure types of all 4 floats
	float m_unk1d4;
	float m_unk1d8;
	float m_unk1dc;
	double m_unk1e0; // unsure type
	PAD = win 0x10, android32 0x10, android64 0x10;
	int m_unk1f8;
	PAD = win 0x10, android32 0x10, android64 0x1c;
	cocos2d::CCPoint m_unk20c;
	PAD = win 0xa, android32 0xa, android64 0xa;
	bool m_isDualMode;
	PAD = win 0x5, android32 0x5, android64 0x5;
	gd::unordered_map<int, GJValueTween> m_unk224;
	PAD = win 0x10, android32 0x10, android64 0x10;
	gd::unordered_map<int, GameObjectPhysics> m_unk250;
	PAD = win 0x18, android32 0x18, android64 0x24;
	cocos2d::CCPoint m_unk284;
	int m_unk288;
	int m_unk28c;
	bool m_unk290;
	gd::map<std::pair<int, int>, int> m_unk298;
	int m_unkidk;
	cocos2d::CCPoint m_unk2b8;
	cocos2d::CCPoint m_unk2c0;
	bool m_unk2c8;
	bool m_unk2c9;
	bool m_unk2ca;
	PAD = win 0x6, android32 0x6, android64 0x6;
	bool m_unk2d0;
	bool m_unk2d1;
	PAD = win 0x10, android32 0x10, android64 0x10;
	double m_unk2e4; // unsure type
	cocos2d::CCPoint m_unk2e8;
	PAD = win 0x4, android32 0x4, android64 0x4;
	gd::unordered_map<int, EnhancedGameObject*> m_unk2f4;
	gd::map<std::pair<GJGameEvent, int>, gd::vector<EventTriggerInstance>> m_unk310;
	gd::map<std::pair<GJGameEvent, int>, int> m_unk328;
	gd::unordered_map<int, gd::vector<EnterEffectInstance>> m_unk340;
	gd::unordered_map<int, gd::vector<EnterEffectInstance>> m_unk35c;
	gd::vector<int> m_unk378;
	gd::vector<int> m_unk384;
	gd::vector<EnterEffectInstance> m_unk390;
	gd::vector<EnterEffectInstance> m_unk39c;
	gd::vector<EnterEffectInstance> m_unk3a8;
	gd::vector<EnterEffectInstance> m_unk3b4;
	gd::vector<EnterEffectInstance> m_unk3c0;
	gd::unordered_set<int> m_unk3cc;
	bool m_unk3e8;
	gd::vector<AdvancedFollowInstance> m_unk3ec;
	gd::vector<DynamicObjectAction> m_unk3f8;
	gd::vector<DynamicObjectAction> m_unk404;
	bool m_unk410;
	bool m_unk411;
	PAD = win 0x4, android32 0x4, android64 0x4;
	gd::unordered_map<int, gd::vector<int>> m_unk418;
	gd::map<std::pair<int, int>, SFXTriggerInstance> m_unk434;
	gd::unordered_map<int, SongChannelState> m_unk44c;
	gd::unordered_map<int, gd::vector<SongTriggerState>> m_unk468;
	gd::vector<SFXTriggerState> m_unk484;
	PAD = win 0x1c, android32 0x1c, android64 0x1c;
}

[[link(android)]]
class GJGarageLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, GameRateDelegate, ListButtonBarDelegate, DialogDelegate, CharacterColorDelegate {
	// virtual ~GJGarageLayer();

	TodoReturn achievementForUnlock(int, UnlockType) = android32 0x3ea2f8;
	TodoReturn descriptionForUnlock(int, UnlockType) = android32 0x3ea264;
	TodoReturn getItems(IconType) = android32 0x3ed1f0;
	TodoReturn getItems(int, int, IconType, int) = android32 0x3ed06c;
	TodoReturn getLockFrame(int, UnlockType) = android32 0x3ea19c;
	TodoReturn node() = android32 0x3e9e94;
	void onArrow(cocos2d::CCObject* sender) = android32 0x3eda44;
	void onBack(cocos2d::CCObject* sender) = android32 0x3e9d6c;
	void onInfo(cocos2d::CCObject* sender) = android32 0x3e98f8;
	void onNavigate(cocos2d::CCObject* sender) = android32 0x3edaa8;
	void onPaint(cocos2d::CCObject* sender) = android32 0x3e9bbc;
	void onSelect(cocos2d::CCObject* sender) = android32 0x3eaec4;
	void onSelectTab(cocos2d::CCObject* sender) = android32 0x3ee30c;
	void onShards(cocos2d::CCObject* sender) = android32 0x3e9ba4;
	void onShop(cocos2d::CCObject* sender) = android32 0x3e9d34;
	void onSpecial(cocos2d::CCObject* sender) = android32 0x3e9ae8;
	void onToggleItem(cocos2d::CCObject* sender) = android32 0x3eb554;
	TodoReturn playRainbowEffect() = android32 0x3ea3f8;
	TodoReturn playShadowEffect() = android32 0x3ea398;
	static cocos2d::CCScene* scene() = android32 0x3e9f78;
	TodoReturn selectTab(IconType) = android32 0x3edac4;
	TodoReturn setupIconSelect() = android32 0x3edb2c;
	void setupPage(int, IconType) = android32 0x3ed5f4;
	TodoReturn setupSpecialPage() = android32 0x3ed220;
	TodoReturn showUnlockPopupNew(int, UnlockType) = android32 0x3ed048;
	TodoReturn titleForUnlock(int, UnlockType) = android32 0x3ea1d0;
	TodoReturn toggleGlow() = android32 0x3ea840;
	TodoReturn updatePlayerColors() = android32 0x3ea8b4;
	TodoReturn updatePlayerName(char const*) = android32 0x3e9f9a;

	virtual bool init() = android32 0x3ee324;
	virtual void keyBackClicked() = android32 0x3e9e8a = android32 0x3e9e84;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = android32 0x3ea06c = android32 0x3e9f9c;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x3ea148 = android32 0x3ea074;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x3ea194 = android32 0x3ea150;
	virtual TodoReturn listButtonBarSwitchedPage(ListButtonBar*, int) = android32 0x3e984c = android32 0x3e9844;
	virtual TodoReturn showUnlockPopup(int, UnlockType) = android32 0x3ed062 = android32 0x3ed05e;
	virtual TodoReturn updateRate() = android32 0x3e9ae0 = android32 0x3e999c;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x3e9b9c = android32 0x3e9b00;
	virtual TodoReturn dialogClosed(DialogLayer*) = android32 0x3ec3a0 = android32 0x3ec2a8;
	virtual TodoReturn playerColorChanged() = android32 0x3ea9d2 = android32 0x3ea9b4;
}

[[link(android)]]
class GJGradientLayer : cocos2d::CCLayerGradient {
	// virtual ~GJGradientLayer();

	static GJGradientLayer* create() = android32 0x45dc14;

	virtual bool init() = android32 0x44deec;
}

[[link(android)]]
class GJGroundLayer : cocos2d::CCLayer {
	// virtual ~GJGroundLayer();

	static GJGroundLayer* create(int, int) = android32 0x419ab4;

	TodoReturn createLine(int) = android32 0x4195f4;
	TodoReturn deactivateGround() = android32 0x419e80;
	TodoReturn fadeInFinished() = android32 0x41921c;
	TodoReturn getGroundY() = android32 0x419ecc;
	TodoReturn hideShadows() = android32 0x419ccc;
	bool init(int, int) = android32 0x41975c;
	TodoReturn loadGroundSprites(int, bool) = android32 0x419404;
	TodoReturn positionGround(float) = android32 0x419e90;
	TodoReturn scaleGround(float) = android32 0x419d88;
	TodoReturn toggleVisible01(bool) = android32 0x4193c8;
	TodoReturn toggleVisible02(bool) = android32 0x4193e4;
	TodoReturn updateGround01Color(cocos2d::ccColor3B) = android32 0x41957c;
	TodoReturn updateGround02Color(cocos2d::ccColor3B) = android32 0x4195b8;
	TodoReturn updateGroundPos(cocos2d::CCPoint) = android32 0x419558;
	TodoReturn updateGroundWidth(bool) = android32 0x419b64;
	TodoReturn updateLineBlend(bool) = android32 0x419c88;
	TodoReturn updateShadows() = android32 0x419d0c;
	TodoReturn updateShadowXPos(float, float) = android32 0x419de0;

	virtual void draw() = android32 0x419224;
	virtual TodoReturn showGround() = android32 0x41920c;
	virtual TodoReturn fadeInGround(float) = android32 0x419374;
	virtual TodoReturn fadeOutGround(float) = android32 0x419214;
}

[[link(android)]]
class GJHttpResult : cocos2d::CCNode {
	// virtual ~GJHttpResult();

	static GJHttpResult* create(bool, gd::string, gd::string, GJHttpType) = android32 0x3b6ca0;

	bool init(bool, gd::string, gd::string, GJHttpType) = android32 0x3b6c68;
}

[[link(android)]]
class GJItemIcon : cocos2d::CCSprite {
	// virtual ~GJItemIcon();

	static GJItemIcon* create(UnlockType, int, cocos2d::ccColor3B, cocos2d::ccColor3B, bool, bool, bool, cocos2d::ccColor3B) = android32 0x3ec158;

	TodoReturn changeToLockedState(float) = android32 0x3eb5cc;
	inline static GJItemIcon* createBrowserItem(UnlockType unlockType, int itemID) {
		return GJItemIcon::create(unlockType, itemID, {0xAF, 0xAF, 0xAF}, {0xFF, 0xFF, 0xFF}, false, true, true, {0xFF, 0xFF, 0xFF});
	}
	TodoReturn createStoreItem(UnlockType, int, bool, cocos2d::ccColor3B) = android32 0x3ec214;
	TodoReturn darkenStoreItem(cocos2d::ccColor3B) = android32 0x3eb3b4;
	TodoReturn darkenStoreItem(ShopType) = android32 0x3eb494;
	bool init(UnlockType, int, cocos2d::ccColor3B, cocos2d::ccColor3B, bool, bool, bool, cocos2d::ccColor3B) = android32 0x3ebe0c;
	TodoReturn scaleForType(UnlockType) = android32 0x3eb670;
	TodoReturn toggleEnabledState(bool) = android32 0x3eb4c0;
	TodoReturn unlockedColorForType(int) = android32 0x3eb334;

	virtual void setOpacity(unsigned char) = android32 0x3ef41e = android32 0x3ef3d0;
}

[[link(android)]]
class GJLevelList : cocos2d::CCNode {
	// virtual ~GJLevelList();

	static GJLevelList* create() = android32 0x3b6e24;
	static GJLevelList* create(cocos2d::CCDictionary*) = android32 0x3bf588;

	TodoReturn addLevelToList(GJGameLevel*) = android32 0x3c0764;
	int completedLevels() = android32 0x3b6faa;
	TodoReturn createWithCoder(DS_Dictionary*) = android32 0x3c0750;
	void dataLoaded(DS_Dictionary*) = android32 0x3c04dc;
	TodoReturn duplicateListLevels(GJLevelList*) = android32 0x3c0808;
	TodoReturn frameForListDifficulty(int, DifficultyIconType) = android32 0x3b71c0;
	TodoReturn getListLevelsArray(cocos2d::CCArray*) = android32 0x3b7f7c;
	gd::string getUnpackedDescription() = android32 0x3b6f14;
	TodoReturn handleStatsConflict(GJLevelList*) = android32 0x3b6efc;
	TodoReturn hasMatchingLevels(GJLevelList*) = android32 0x3b7688;
	TodoReturn orderForLevel(int) = android32 0x3b6f7c;
	TodoReturn parseListLevels(gd::string) = android32 0x3bf3e0;
	TodoReturn removeLevelFromList(int) = android32 0x3bf25c;
	TodoReturn reorderLevel(int, int) = android32 0x3c0838;
	TodoReturn reorderLevelStep(int, bool) = android32 0x3c0948;
	TodoReturn showListInfo() = android32 0x3b6fd4;
	TodoReturn totalLevels() = android32 0x3b6f9c;
	TodoReturn updateLevelsString() = android32 0x3be34c;

	virtual void encodeWithCoder(DS_Dictionary*) = android32 0x3a8738;
	virtual bool canEncode() = android32 0x3a817a;
	virtual bool init() = android32 0x3a8970;

	gd::vector<int> m_levels;
	int m_listID;
	int m_listVersion;
	int m_downloads;
	int m_likes;
	int m_difficulty;
	int m_accountID;
	int m_folder;
	int m_listRevision;
	int m_listOrder;
	int m_original;
	int m_diamonds;
	int m_levelsToClaim;
	bool m_unkBool;
	bool m_unlisted;
	bool m_friendsOnly;
	bool m_uploaded;
	bool m_favorite;
	bool m_featured;
	bool m_k100;
	gd::string m_creatorName;
	gd::string m_listName;
	gd::string m_unkString;
	gd::string m_levelsString;
	gd::string m_listDesc;
	int m_uploadDate;
	int m_updateDate;
	cocos2d::CCDictionary* m_k97;
	int m_listType;
	int m_M_ID;
}

[[link(android)]]
class GJLevelScoreCell : TableViewCell {
	// virtual ~GJLevelScoreCell();
	GJLevelScoreCell(char const*, float, float);

	TodoReturn loadFromScore(GJUserScore*) = android32 0x32a27c;
	void onViewProfile(cocos2d::CCObject* sender) = android32 0x32104e;
	TodoReturn updateBGColor(int) = android32 0x32a8b4;

	virtual bool init() = android32 0x31fcf8;
	virtual void draw() = android32 0x320a98;
}

[[link(android)]]
class GJListLayer : cocos2d::CCLayerColor {
	// virtual ~GJListLayer();

	static GJListLayer* create(BoomListView*, char const*, cocos2d::ccColor4B, float, float, int) = ios 0x85a2c, android32 0x3f34c4;

	bool init(BoomListView*, char const*, cocos2d::ccColor4B, float, float, int) = android32 0x3f30b4;

	BoomListView* m_listView;
}

[[link(android)]]
class GJLocalLevelScoreCell : TableViewCell {
	// virtual ~GJLocalLevelScoreCell();
	GJLocalLevelScoreCell(char const*, float, float);

	TodoReturn loadFromScore(GJLocalScore*) = android32 0x32a000;
	TodoReturn updateBGColor(int) = android32 0x32a19c;

	virtual bool init() = android32 0x31fcee;
	virtual void draw() = android32 0x3209f0;
}

[[link(android)]]
class GJLocalScore : cocos2d::CCObject {
	// virtual ~GJLocalScore();

	static GJLocalScore* create(int, int) = android32 0x3b386c;

	bool init(int, int) = android32 0x3b3864;
}

[[link(android)]]
class GJMapObject : cocos2d::CCNode {
	// virtual ~GJMapObject();

	static GJMapObject* create(cocos2d::CCNode*) = android32 0x4eb670;

	TodoReturn createMonster(int) = android32 0x4ebbb8;
	bool init(cocos2d::CCNode*) = android32 0x4eb5b0;
	TodoReturn monsterIdle() = android32 0x4eb0f8;
	TodoReturn monsterJump() = android32 0x4eb8f4;
	TodoReturn moveFinished() = android32 0x4eb068;
	TodoReturn moveMonster() = android32 0x4eb8b8;
	TodoReturn moveMonster(cocos2d::CCPoint, float) = android32 0x4eb758;
	TodoReturn playerJump() = android32 0x4eae38;
	void setObjectOrigin(cocos2d::CCPoint, float) = android32 0x4eb734;
	TodoReturn startMonsterJumpLoop() = android32 0x4eba68;
	TodoReturn startPlayerJumpLoop() = android32 0x4eb6f0;
	TodoReturn touchMonster() = android32 0x4ebb20;
	TodoReturn updateShadow(float, float, cocos2d::CCPoint) = android32 0x4ebb88;
}

[[link(android)]]
class GJMapPack : cocos2d::CCNode {
	// virtual ~GJMapPack();

	static GJMapPack* create() = android32 0x3b2c9c;
	static GJMapPack* create(cocos2d::CCDictionary*) = android32 0x3b2ed8;

	int completedMaps() = android32 0x3b37f0;
	bool hasCompletedMapPack() = android32 0x3b3842;
	TodoReturn parsePackColors(gd::string, gd::string) = android32 0x3b2dc0;
	TodoReturn parsePackLevels(gd::string) = android32 0x3b2d58;
	int totalMaps() = android32 0x3b37e4;

	virtual bool init() = android32 0x3a8180;

	cocos2d::CCArray* m_levels;
	int m_packID;
	GJDifficulty m_difficulty;
	int m_stars;
	int m_coins;
	gd::string m_packName;
	gd::string m_levelStrings;
	cocos2d::ccColor3B m_textColour;
	cocos2d::ccColor3B m_barColour;
	int m_MId;
	bool m_isGauntlet;




}

[[link(android)]]
class GJMessageCell : TableViewCell, FLAlertLayerProtocol, UploadPopupDelegate, UploadActionDelegate {
	// virtual ~GJMessageCell();
	GJMessageCell(char const*, float, float);

	TodoReturn loadFromMessage(GJUserMessage*) = android32 0x32b840;
	TodoReturn markAsRead() = android32 0x32be7c;
	void onDeleteMessage(cocos2d::CCObject* sender) = android32 0x321d60;
	void onToggle(cocos2d::CCObject* sender) = android32 0x31fd48;
	void onViewMessage(cocos2d::CCObject* sender) = android32 0x32bed4;
	void onViewProfile(cocos2d::CCObject* sender) = android32 0x3210ba;
	TodoReturn updateBGColor(int) = android32 0x32bfd8;
	TodoReturn updateToggle() = android32 0x32bfc0;

	virtual bool init() = android32 0x31fd36;
	virtual void draw() = android32 0x320c90;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x32bfb8 = android32 0x32bf0c;
	virtual TodoReturn uploadActionFinished(int, int) = android32 0x3221e8 = android32 0x32213c;
	virtual TodoReturn uploadActionFailed(int, int) = android32 0x322370 = android32 0x3222fc;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = android32 0x3223be = android32 0x3223ac;
}

[[link(android)]]
class GJMessagePopup : FLAlertLayer, UploadActionDelegate, UploadPopupDelegate, FLAlertLayerProtocol, DownloadMessageDelegate {
	// virtual ~GJMessagePopup();

	static GJMessagePopup* create(GJUserMessage*) = android32 0x4900b0;

	TodoReturn blockUser() = android32 0x4901b0;
	bool init(GJUserMessage*) = android32 0x48fa88;
	TodoReturn loadFromGJMessage(GJUserMessage*) = android32 0x48f6d8;
	void onBlock(cocos2d::CCObject* sender) = android32 0x488a00;
	void onClose(cocos2d::CCObject* sender) = android32 0x486f82;
	void onRemove(cocos2d::CCObject* sender) = android32 0x488960;
	void onReply(cocos2d::CCObject* sender) = android32 0x491108;

	virtual void keyBackClicked() = android32 0x486fa6 = android32 0x486fa0;
	virtual TodoReturn downloadMessageFinished(GJUserMessage*) = android32 0x4901a8 = android32 0x49016c;
	virtual TodoReturn downloadMessageFailed(int) = android32 0x489f68 = android32 0x489f36;
	virtual TodoReturn uploadActionFinished(int, int) = android32 0x48e914 = android32 0x48e850;
	virtual TodoReturn uploadActionFailed(int, int) = android32 0x48eb00 = android32 0x48ea94;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = android32 0x48ec0c = android32 0x48ebe0;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x4902d0 = android32 0x490224;
}

[[link(android)]]
class GJMGLayer : cocos2d::CCLayer {
	// virtual ~GJMGLayer();

	static GJMGLayer* create(int) = android32 0x41a3d0;

	TodoReturn deactivateGround() = android32 0x41a5e0;
	TodoReturn defaultYOffsetForBG2(int) = android32 0x419f78;
	bool init(int) = android32 0x41a168;
	TodoReturn loadGroundSprites(int, bool) = android32 0x419fd0;
	TodoReturn scaleGround(float) = android32 0x41a58c;
	TodoReturn toggleVisible01(bool) = android32 0x419f94;
	TodoReturn toggleVisible02(bool) = android32 0x419fb0;
	TodoReturn updateGroundColor(cocos2d::ccColor3B, bool) = android32 0x41a120;
	TodoReturn updateGroundOpacity(unsigned char, bool) = android32 0x41a48c;
	TodoReturn updateGroundPos(cocos2d::CCPoint) = android32 0x41a0fc;
	TodoReturn updateGroundWidth(bool) = android32 0x41a4d0;
	TodoReturn updateMG01Blend(bool) = android32 0x41a5f0;
	TodoReturn updateMG02Blend(bool) = android32 0x41a638;

	virtual void draw() = android32 0x41922e;
	virtual TodoReturn showGround() = android32 0x419226;
}

[[link(android)]]
class GJMoreGamesLayer : GJDropDownLayer {
	// virtual ~GJMoreGamesLayer();

	static GJMoreGamesLayer* create() = android32 0x41074c;

	TodoReturn getMoreGamesList() = android32 0x41091c;

	virtual TodoReturn customSetup() = android32 0x410a9c;
}

[[link(android)]]
class GJMPDelegate {
	virtual TodoReturn joinLobbyFinished(int);
	virtual TodoReturn joinLobbyFailed(int, GJMPErrorCode);
	virtual TodoReturn didUploadMPComment(int);
	virtual TodoReturn updateComments();
}

[[link(android)]]
class GJMultiplayerManager : cocos2d::CCNode {
	// virtual ~GJMultiplayerManager();

	static GJMultiplayerManager* sharedState() = android32 0x4ed4e8;

	TodoReturn addComment(gd::string, int) = android32 0x4ed830;
	TodoReturn addDLToActive(char const*, cocos2d::CCObject*) = android32 0x4ed604;
	TodoReturn addDLToActive(char const*) = android32 0x4ed650;
	TodoReturn createAndAddComment(gd::string, int) = android32 0x4ede24;
	void dataLoaded(DS_Dictionary*) = android32 0x4edf30;
	void encodeDataTo(DS_Dictionary*) = android32 0x4edf2e;
	TodoReturn exitLobby(int) = android32 0x4ee274;
	void firstSetup() = android32 0x4edf2c;
	TodoReturn getBasePostString() = android32 0x4edebc;
	TodoReturn getDLObject(char const*) = android32 0x4ed668;
	TodoReturn getLastCommentIDForGame(int) = android32 0x4ed780;
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType) = android32 0x4edc48;
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType) = android32 0x4ed554;
	TodoReturn handleItND(cocos2d::CCNode*, void*) = android32 0x4edda8;
	bool isDLActive(char const*) = android32 0x4ed6b4;
	TodoReturn joinLobby(int) = android32 0x4ee13c;
	TodoReturn onExitLobbyCompleted(gd::string, gd::string) = android32 0x4ed70c;
	TodoReturn onJoinLobbyCompleted(gd::string, gd::string) = android32 0x4ed940;
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = android32 0x4edd18;
	TodoReturn onUploadCommentCompleted(gd::string, gd::string) = android32 0x4ed7c0;
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType) = android32 0x4edf34;
	TodoReturn removeDLFromActive(char const*) = android32 0x4ed6c4;
	TodoReturn uploadComment(gd::string, int) = android32 0x4ee3a0;

	virtual bool init() = android32 0x4ee624;
}

[[link(android)]]
class GJObjectDecoder : cocos2d::CCNode, ObjectDecoderDelegate {
	// virtual ~GJObjectDecoder();

	static GJObjectDecoder* sharedDecoder() = android32 0x439538;

	virtual bool init() = android32 0x4395a0;
	virtual TodoReturn getDecodedObject(int, DS_Dictionary*) = android32 0x4394f6 = android32 0x4394b8;
}

[[link(android)]]
class GJOptionsLayer : SetupTriggerPopup {
	// virtual ~GJOptionsLayer();
	// GJOptionsLayer();

	static GJOptionsLayer* create(int) = android32 0x48c5b4;

	TodoReturn addGVToggle(char const*, char const*, char const*) = android32 0x48b4c4;
	TodoReturn addToggle(char const*, int, bool, char const*) = android32 0x48bc6c;
	TodoReturn addToggleInternal(char const*, int, bool, char const*) = android32 0x48b240;
	TodoReturn countForPage(int) = android32 0x48af18;
	TodoReturn goToPage(int) = android32 0x48c174;
	TodoReturn incrementCountForPage(int) = android32 0x48b060;
	TodoReturn infoKey(int) = android32 0x48b228;
	bool init(int) = android32 0x48c320;
	TodoReturn layerForPage(int) = android32 0x48b18c;
	TodoReturn layerKey(int) = android32 0x48b174;
	TodoReturn nextPosition(int) = android32 0x48af6c;
	TodoReturn objectKey(int) = android32 0x48b0d0;
	TodoReturn objectsForPage(int) = android32 0x48b0e8;
	TodoReturn offsetToNextPage() = android32 0x48aee0;
	void onInfo(cocos2d::CCObject* sender) = android32 0x48c0d0;
	void onNextPage(cocos2d::CCObject* sender) = android32 0x48c5f2;
	void onPrevPage(cocos2d::CCObject* sender) = android32 0x48c5fc;
	void onToggle(cocos2d::CCObject* sender) = android32 0x487e74;
	TodoReturn pageKey(int) = android32 0x48af00;

	virtual TodoReturn setupOptions() = android32 0x486f80;
	virtual TodoReturn didToggleGV(gd::string) = android32 0x486f50;
	virtual TodoReturn didToggle(int) = android32 0x486f52;
}

[[link(android)]]
class GJPathPage : FLAlertLayer, FLAlertLayerProtocol, GJPurchaseDelegate {
	// virtual ~GJPathPage();

	static GJPathPage* create(int, GJPathsLayer*) = android32 0x56a658;

	bool init(int, GJPathsLayer*) = android32 0x569590;
	void onActivatePath(cocos2d::CCObject* sender) = android32 0x567eb4;
	void onBack(cocos2d::CCObject* sender) = android32 0x56865c;
	void onIconInfo(cocos2d::CCObject* sender) = android32 0x567ecc;
	void onUnlock(cocos2d::CCObject* sender) = android32 0x56add8;
	TodoReturn playUnlockAnimation() = android32 0x5688f4;
	TodoReturn showCantAffordMessage(GJStoreItem*) = android32 0x56abd8;
	TodoReturn unlockAnimationFinished() = android32 0x56a704;
	TodoReturn unlockAnimationStep2() = android32 0x5683d8;
	TodoReturn unlockAnimationStep3() = android32 0x568df4;

	virtual void registerWithTouchDispatcher() = android32 0x567e90;
	virtual void keyBackClicked() = android32 0x5686b0 = android32 0x5686aa;
	virtual void show() = android32 0x568150;
	virtual TodoReturn didPurchaseItem(GJStoreItem*) = android32 0x568c18 = android32 0x568c14;
}

[[link(android)]]
class GJPathRewardPopup : FLAlertLayer {
	// virtual ~GJPathRewardPopup();

	static GJPathRewardPopup* create(int) = android32 0x56aaf8;

	TodoReturn closePopup() = android32 0x567e30;
	bool init(int) = android32 0x56a76c;
	void onClaim(cocos2d::CCObject* sender) = android32 0x567f70;

	virtual void keyBackClicked() = android32 0x567c64 = android32 0x567c62;
}

[[link(android)]]
class GJPathsLayer : FLAlertLayer, FLAlertLayerProtocol {
	// virtual ~GJPathsLayer();

	static GJPathsLayer* create() = android32 0x568570;

	TodoReturn darkenButtons(bool) = android32 0x568604;
	static gd::string nameForPath(int) = android32 0x5684c4;
	void onClose(cocos2d::CCObject* sender) = android32 0x567de6;
	void onPath(cocos2d::CCObject* sender) = android32 0x56ab84;

	virtual bool init() = android32 0x5691b0;
	virtual void onExit() = android32 0x568018;
	virtual void registerWithTouchDispatcher() = android32 0x567e6c;
	virtual void keyBackClicked() = android32 0x567e28 = android32 0x567e22;
	virtual void show() = android32 0x56804c;
}

[[link(android)]]
class GJPathSprite : CCSpriteCOpacity {
	// virtual ~GJPathSprite();

	static GJPathSprite* create(int) = android32 0x568720;

	TodoReturn addRankLabel(int) = android32 0x568c20;
	TodoReturn addShardSprite() = android32 0x568cc4;
	TodoReturn changeToLockedArt() = android32 0x56878c;
	bool init(int) = android32 0x5686b8;
	TodoReturn updateState() = android32 0x569140;
}

[[link(android)]]
class GJPFollowCommandLayer : SetupTriggerPopup {
	// virtual ~GJPFollowCommandLayer();

	static GJPFollowCommandLayer* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x4bc330;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x4bb430;
	void onUpdateGroupID(cocos2d::CCObject* sender) = android32 0x4bc53a;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x4bc670;
	TodoReturn sliderXModChanged(cocos2d::CCObject*) = android32 0x4bc5bc;
	TodoReturn sliderYModChanged(cocos2d::CCObject*) = android32 0x4bc616;
	TodoReturn updateDuration() = android32 0x4bc634;
	TodoReturn updateDurLabel(bool) = android32 0x4bb08c;
	TodoReturn updateMaxSpeed() = android32 0x4bc6d4;
	TodoReturn updateMaxSpeedLabel() = android32 0x4bb318;
	TodoReturn updateOffsetLabel() = android32 0x4bb270;
	TodoReturn updatePlayerOffset() = android32 0x4bc69c;
	TodoReturn updateTargetGroupID() = android32 0x4bc4ec;
	TodoReturn updateTextInputLabel() = android32 0x4bb3ac;
	TodoReturn updateXMod() = android32 0x4bc580;
	TodoReturn updateXModLabel() = android32 0x4bb148;
	TodoReturn updateYMod() = android32 0x4bc5da;
	TodoReturn updateYModLabel() = android32 0x4bb1dc;

	virtual TodoReturn determineStartValues() = android32 0x4bae50;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x4badb6;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x4bc91c = android32 0x4bc710;
}

[[link(android)]]
class GJPromoPopup : FLAlertLayer {
	// virtual ~GJPromoPopup();

	static GJPromoPopup* create(gd::string) = android32 0x495844;

	bool init(gd::string) = android32 0x495678;
	void onClose(cocos2d::CCObject* sender) = android32 0x489836;

	virtual void onExit() = android32 0x48981e;
	virtual void registerWithTouchDispatcher() = android32 0x488be0;
	virtual void keyBackClicked() = android32 0x489878 = android32 0x489872;
	virtual void show() = android32 0x489e04;
}

[[link(android)]]
class GJPurchaseDelegate {
	virtual TodoReturn didPurchaseItem(GJStoreItem*) = android32 0x4bf67c;
}

[[link(android)]]
class GJRequestCell : TableViewCell, FLAlertLayerProtocol, UploadPopupDelegate, UploadActionDelegate {
	// virtual ~GJRequestCell();
	GJRequestCell(char const*, float, float);

	TodoReturn loadFromScore(GJUserScore*) = android32 0x32b06c;
	TodoReturn markAsRead() = android32 0x32b5f8;
	void onDeleteRequest(cocos2d::CCObject* sender) = android32 0x321cac;
	void onToggle(cocos2d::CCObject* sender) = android32 0x31fd22;
	void onViewFriendRequest(cocos2d::CCObject* sender) = android32 0x32b656;
	void onViewProfile(cocos2d::CCObject* sender) = android32 0x321096;
	TodoReturn updateBGColor(int) = android32 0x32b768;
	TodoReturn updateToggle() = android32 0x32b750;

	virtual bool init() = android32 0x31fd10;
	virtual void draw() = android32 0x320be8;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x32b748 = android32 0x32b698;
	virtual TodoReturn uploadActionFinished(int, int) = android32 0x322134 = android32 0x322070;
	virtual TodoReturn uploadActionFailed(int, int) = android32 0x3222f4 = android32 0x32226c;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = android32 0x3223a4 = android32 0x322392;
}

[[link(android)]]
class GJRewardDelegate {
	virtual TodoReturn rewardsStatusFinished(int) = android32 0x4c46b0;
	virtual TodoReturn rewardsStatusFailed() = android32 0x4c46b2;
}

[[link(android)]]
class GJRewardItem : cocos2d::CCObject {
	// virtual ~GJRewardItem();

	static GJRewardItem* create() = android32 0x3f5cdc;
	static GJRewardItem* create(int, int, gd::string) = android32 0x3f5bc4;

	TodoReturn createSpecial(GJRewardType, int, int, SpecialRewardItem, int, SpecialRewardItem, int, int, int) = android32 0x3f5d98;
	TodoReturn createWithCoder(DS_Dictionary*) = android32 0x3f9a04;
	TodoReturn createWithObject(GJRewardType, GJRewardObject*) = android32 0x3f5d82;
	TodoReturn createWithObjects(GJRewardType, cocos2d::CCArray*) = android32 0x3f5d2c;
	void dataLoaded(DS_Dictionary*) = android32 0x3f99c0;
	TodoReturn getNextShardType(SpecialRewardItem) = android32 0x3f98d4;
	TodoReturn getRandomNonMaxShardType() = android32 0x3ff728;
	TodoReturn getRandomShardType() = android32 0x3f98ec;
	TodoReturn getRewardCount(SpecialRewardItem) = android32 0x3f993c;
	TodoReturn getRewardObjectForType(SpecialRewardItem) = android32 0x3f996e;
	bool init(int, int, gd::string) = android32 0x3f5adc;
	bool isShardType(SpecialRewardItem) = android32 0x3f98b8;
	TodoReturn rewardItemToStat(SpecialRewardItem) = android32 0x3f97fc;

	virtual void encodeWithCoder(DS_Dictionary*) = android32 0x3f37dc;
	virtual bool canEncode() = android32 0x3f356c;

	int m_chestID;
	int m_timeRemaining;
	GJRewardType m_rewardType;
	cocos2d::CCArray* m_rewardObjects;
	bool m_unk;
}

[[link(android)]]
class GJRewardObject : cocos2d::CCObject {
	// virtual ~GJRewardObject();

	static GJRewardObject* create() = android32 0x3f5a44;
	static GJRewardObject* create(SpecialRewardItem, int, int) = android32 0x3f59f0;

	TodoReturn createItemUnlock(UnlockType, int) = android32 0x3f5a4e;
	TodoReturn createWithCoder(DS_Dictionary*) = android32 0x3f5ac8;
	void dataLoaded(DS_Dictionary*) = android32 0x3f5a80;
	bool init(SpecialRewardItem, int, int) = android32 0x3f59e6;
	bool isSpecialType() = android32 0x3f5a60;

	virtual void encodeWithCoder(DS_Dictionary*) = android32 0x3f36b0;
	virtual bool canEncode() = android32 0x3f3568;

	SpecialRewardItem m_specialRewardItem;
	UnlockType m_unlockType;
	int m_itemID;
	int m_total;
}

[[link(android)]]
class GJRobotSprite : CCAnimatedSprite {
	// virtual ~GJRobotSprite();
	// GJRobotSprite();

	static GJRobotSprite* create(int) = android32 0x497f88;

	TodoReturn hideGlow() = android32 0x4975ca;
	bool init(int, gd::string) = android32 0x497be4;
	bool init(int) = android32 0x497f2c;
	TodoReturn showGlow() = android32 0x4975bc;
	TodoReturn updateColor01(cocos2d::ccColor3B) = android32 0x49789c;
	TodoReturn updateColor02(cocos2d::ccColor3B) = android32 0x4978b6;
	TodoReturn updateColors() = android32 0x497614;
	TodoReturn updateFrame(int) = android32 0x4978c8;
	TodoReturn updateGlowColor(cocos2d::ccColor3B, bool) = android32 0x4975d8;

	virtual void setOpacity(unsigned char) = android32 0x49751a = android32 0x49749c;
	virtual TodoReturn hideSecondary() = android32 0x497460;
}

[[link(android)]]
class GJRotateCommandLayer : SetupTriggerPopup {
	// virtual ~GJRotateCommandLayer();

	static GJRotateCommandLayer* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x4be4d8;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x4bd360;
	void onEasing(cocos2d::CCObject* sender) = android32 0x4be6f8;
	void onEasingRate(cocos2d::CCObject* sender) = android32 0x4bcd5c;
	void onFollowRotation(cocos2d::CCObject* sender) = android32 0x4bce5e;
	void onLockRotation(cocos2d::CCObject* sender) = android32 0x4bce16;
	void onUpdateGroupID(cocos2d::CCObject* sender) = android32 0x4be5ee;
	void onUpdateGroupID2(cocos2d::CCObject* sender) = android32 0x4be682;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x4be91a;
	TodoReturn sliderDegreesChanged(cocos2d::CCObject*) = android32 0x4be81c;
	TodoReturn sliderTimesChanged(cocos2d::CCObject*) = android32 0x4be89c;
	TodoReturn toggleEasingRateVisibility() = android32 0x4bcf7c;
	TodoReturn updateCommandDegrees() = android32 0x4be7e0;
	TodoReturn updateCommandTimes() = android32 0x4be864;
	TodoReturn updateDegreesLabel() = android32 0x4bd128;
	TodoReturn updateDuration() = android32 0x4be8de;
	TodoReturn updateDurLabel(bool) = android32 0x4bd06c;
	TodoReturn updateEasingLabel() = android32 0x4bcfd4;
	TodoReturn updateEasingRateLabel() = android32 0x4bceec;
	TodoReturn updateMoveCommandEasing() = android32 0x4be6c0;
	TodoReturn updateMoveCommandEasingRate() = android32 0x4be736;
	TodoReturn updateTargetGroupID() = android32 0x4be5a0;
	TodoReturn updateTargetGroupID2() = android32 0x4be634;
	TodoReturn updateTextInputLabel() = android32 0x4bd258;
	TodoReturn updateTextInputLabel2() = android32 0x4bd2dc;
	TodoReturn updateTimesLabel() = android32 0x4bd1d4;

	virtual TodoReturn determineStartValues() = android32 0x4bcad4;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x4bca48;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x4beafc = android32 0x4be948;
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = android32 0x4be7d8 = android32 0x4be774;
}

[[link(android)]]
class GJRotationControl : cocos2d::CCLayer {
	// virtual ~GJRotationControl();

	static GJRotationControl* create() = android32 0x371478;

	TodoReturn finishTouch() = android32 0x37179c;
	void setAngle(float) = android32 0x37151c;
	TodoReturn updateSliderPosition(cocos2d::CCPoint) = android32 0x37163c;

	virtual bool init() = android32 0x3715b0;
	virtual void draw() = android32 0x366784;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x366c60 = android32 0x366b9c;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x371794 = android32 0x371738;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x37182a = android32 0x37181a;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x36610a = android32 0x366102;
}

[[link(android)]]
class GJRotationControlDelegate {
	virtual TodoReturn angleChanged(float);
	virtual TodoReturn angleChangeBegin();
	virtual TodoReturn angleChangeEnded();
}

[[link(android)]]
class GJScaleControl : cocos2d::CCLayer {
	// virtual ~GJScaleControl();

	static GJScaleControl* create() = android32 0x371834;

	TodoReturn finishTouch() = android32 0x3718f8;
	TodoReturn loadValues(GameObject*, cocos2d::CCArray*, gd::unordered_map<int, GameObjectEditorState>&) = android32 0x38a97c;
	void onToggleLockScale(cocos2d::CCObject* sender) = android32 0x3663b4;
	TodoReturn scaleFromValue(float) = android32 0x371984;
	TodoReturn skewFromValue(float) = android32 0x371b84;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x366338;
	TodoReturn updateLabelX(float) = android32 0x371bec;
	TodoReturn updateLabelXY(float) = android32 0x371c7c;
	TodoReturn updateLabelY(float) = android32 0x371c34;
	TodoReturn valueFromScale(float) = android32 0x371b38;
	TodoReturn valueFromSkew(float) = android32 0x371ba0;

	virtual bool init() = android32 0x3667e4;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x371abc = android32 0x3719b8;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x371f48 = android32 0x371cc4;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x371b30 = android32 0x371ac4;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x36611a = android32 0x366112;
}

[[link(android)]]
class GJScaleControlDelegate {
	virtual TodoReturn scaleXChanged(float, bool);
	virtual TodoReturn scaleYChanged(float, bool);
	virtual TodoReturn scaleXYChanged(float, float, bool);
	virtual TodoReturn scaleChangeBegin();
	virtual TodoReturn scaleChangeEnded();
	virtual TodoReturn updateScaleControl();
	virtual TodoReturn anchorPointMoved(cocos2d::CCPoint);
}

[[link(android)]]
class GJScoreCell : TableViewCell, FLAlertLayerProtocol {
	// virtual ~GJScoreCell();
	GJScoreCell(char const*, float, float);

	TodoReturn loadFromScore(GJUserScore*) = android32 0x329308;
	void onBan(cocos2d::CCObject* sender) = android32 0x329f20;
	void onCheck(cocos2d::CCObject* sender) = android32 0x329f22;
	void onMoreLevels(cocos2d::CCObject* sender) = android32 0x329f90;
	void onViewProfile(cocos2d::CCObject* sender) = android32 0x321918;
	TodoReturn updateBGColor(int) = android32 0x329f24;

	virtual bool init() = android32 0x31fce4;
	virtual void draw() = android32 0x320948;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x32259c = android32 0x322574;

	GJUserScore* m_score;
}

[[link(android)]]
class GJSearchObject : cocos2d::CCNode {
	// virtual ~GJSearchObject();

	static GJSearchObject* create(SearchType searchType, gd::string searchQuery, gd::string difficulty, gd::string length, int page, bool star, bool uncompleted, bool featured, int songID, bool original, bool twoPlayer, bool customSong, bool songFilter, bool noStar, bool coins, bool epic, bool legendary, bool mythic, bool onlyCompleted, int demonFilter, int folder, int searchMode) = android32 0x3b5910;
	static GJSearchObject* create(SearchType searchType, gd::string searchQuery) = android32 0x3b5e00;
	static GJSearchObject* create(SearchType searchType) = android32 0x3b5d40;
	static GJSearchObject* createFromKey(char const* key) = android32 0x3b5ab4;

	char const* getKey() = android32 0x3b60ac;
	const char* getNextPageKey() = android32 0x3b61ac;
	GJSearchObject *getNextPageObject();
	GJSearchObject *getPageObject(int page);
	GJSearchObject *getPrevPageObject();
	const char * getSearchKey(SearchType searchType, gd::string searchQuery, gd::string difficulty, gd::string length, int page, bool star, bool uncompleted, bool featured, int songID, bool original, bool twoPlayer, bool customSong, bool songFilter, bool noStar, bool coins, bool epic, bool legendary, bool mythic, bool onlyCompleted, int demonFilter, int folder, int searchMode) = android32 0x3b5fdc;
	bool init(SearchType searchType, gd::string searchQuery, gd::string difficulty, gd::string length, int page, bool star, bool uncompleted, bool featured, int songID, bool original, bool twoPlayer, bool customSong, bool songFilter, bool noStar, bool coins, bool epic, bool legendary, bool mythic, bool onlyCompleted, int demonFilter, int folder, int searchMode) = android32 0x3b585c;
	bool isLevelSearchObject() = android32 0x3b62a8;

	SearchType m_searchType;
	gd::string m_searchQuery;
	gd::string m_difficulty;
	gd::string m_length;
	int m_page;
	bool m_starFilter;
	bool m_noStarFilter;
	int m_total;
	bool m_uncompletedFilter;
	bool m_completedFilter;
	bool m_featuredFilter;
	bool m_originalFilter;
	bool m_twoPlayerFilter;
	bool m_coinsFilter;
	bool m_epicFilter;
	bool m_legendaryFilter;
	bool m_mythicFilter;
	GJDifficulty m_demonFilter;
	int m_folder;
	int m_songID;
	bool m_customSongFilter;
	bool m_songFilter;
	bool m_searchIsOverlay;
	int m_searchMode;
}

[[link(android)]]
class GJShaderState {
	TodoReturn reset() = android32 0x52c640;
	TodoReturn stopTweenAction(int) = android32 0x52cd74;
	TodoReturn timesyncShaderAction(int) = android32 0x52cd0a;
	TodoReturn timesyncShaderActions() = android32 0x52cd5e;
	TodoReturn tweenValue(float, float, int, float, int, float) = android32 0x52cda2;
	TodoReturn updateTweenAction(float, int) = android32 0x528684;
	TodoReturn updateTweenActions(float) = android32 0x52dac0;
}

[[link(android)]]
class GJShopLayer : cocos2d::CCLayer, GJPurchaseDelegate, DialogDelegate, RewardedVideoDelegate {
	// virtual ~GJShopLayer();

	static GJShopLayer* create(ShopType) = android32 0x4c1d58;

	TodoReturn exitVideoAdItems() = android32 0x4c0230;
	bool init(ShopType) = android32 0x4c0fb8;
	void onBack(cocos2d::CCObject* sender) = android32 0x4bfb64;
	void onCommunityCredits(cocos2d::CCObject* sender) = android32 0x4bf7e0;
	void onPlushies(cocos2d::CCObject* sender) = android32 0x4bf67e;
	void onSelectItem(cocos2d::CCObject* sender) = android32 0x4c27f0;
	void onVideoAd(cocos2d::CCObject* sender) = android32 0x4c0204;
	static cocos2d::CCScene* scene(ShopType) = android32 0x4c1e24;
	TodoReturn showCantAffordMessage(GJStoreItem*) = android32 0x4c25f0;
	TodoReturn showReactMessage() = android32 0x4c02cc;
	TodoReturn updateCurrencyCounter() = android32 0x4bf7f8;

	virtual void onExit() = android32 0x4c0f38;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x4c0f10 = android32 0x4c0dbc;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x4bf682 = android32 0x4bf680;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x4bf68c = android32 0x4bf68a;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x4bf69c = android32 0x4bf694;
	virtual void registerWithTouchDispatcher() = android32 0x4bfde4;
	virtual void keyBackClicked() = android32 0x4bfca6 = android32 0x4bfca0;
	virtual TodoReturn didPurchaseItem(GJStoreItem*) = android32 0x4bfb5c = android32 0x4bf81c;
	virtual TodoReturn rewardedVideoFinished() = android32 0x4bf7d8 = android32 0x4bf790;
	virtual TodoReturn dialogClosed(DialogLayer*) = android32 0x4bfddc = android32 0x4bfcb0;
}

[[link(android)]]
class GJSmartBlockPreview : cocos2d::CCNode {
	// virtual ~GJSmartBlockPreview();

	static GJSmartBlockPreview* create(gd::string) = android32 0x518ac8;

	TodoReturn addChance(int, int) = android32 0x518d24;
	TodoReturn addCount(int) = android32 0x518c9c;
	TodoReturn addPreview(gd::string, gd::string, LevelEditorLayer*) = android32 0x518b68;
	TodoReturn addTemplateGuide(gd::string, int) = android32 0x519260;
	TodoReturn addTemplateGuide(SmartPrefabResult, float) = android32 0x518f14;
	TodoReturn createInfoLabel() = android32 0x518c68;
	bool init(gd::string) = android32 0x518a6c;
	TodoReturn toggleSelectItem(bool) = android32 0x518e30;
}

[[link(android)]]
class GJSmartBlockPreviewSprite : cocos2d::CCNode {
	// virtual ~GJSmartBlockPreviewSprite();

	static GJSmartBlockPreviewSprite* create() = android32 0x518ecc;

	virtual bool init() = android32 0x516a1a;
	virtual void visit() = android32 0x516a20;
}

[[link(android)]]
class GJSmartPrefab : cocos2d::CCObject {
	// virtual ~GJSmartPrefab();

	static GJSmartPrefab* create() = android32 0x5188e0;

	TodoReturn createWithCoder(DS_Dictionary*) = android32 0x518a58;
	void dataLoaded(DS_Dictionary*) = android32 0x5189f8;
	bool init() = android32 0x5188cc;

	virtual void encodeWithCoder(DS_Dictionary*) = android32 0x5168e4;
	virtual bool canEncode() = android32 0x51689e;
}

[[link(android)]]
class GJSmartTemplate : cocos2d::CCObject {
	// virtual ~GJSmartTemplate();

	static GJSmartTemplate* create() = android32 0x516c10;

	TodoReturn applyTransformationsForType(SmartBlockType, cocos2d::CCSprite*) = android32 0x517220;
	TodoReturn createWithCoder(DS_Dictionary*) = android32 0x5188b8;
	void dataLoaded(DS_Dictionary*) = android32 0x51873c;
	TodoReturn flipBlockType(SmartBlockType, bool, bool) = android32 0x51835e;
	TodoReturn flipBlockTypeX(SmartBlockType) = android32 0x51826e;
	TodoReturn flipBlockTypeY(SmartBlockType) = android32 0x5182e6;
	TodoReturn flipKey(gd::string, bool, bool) = android32 0x5184f0;
	TodoReturn generateRemapDict() = android32 0x51a0bc;
	TodoReturn getNoCornerKey(gd::string) = android32 0x516df0;
	TodoReturn getPrefab(cocos2d::CCPoint, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*) = android32 0x518140;
	TodoReturn getPrefab(gd::string, bool, bool) = android32 0x517c40;
	TodoReturn getPrefabs(gd::string) = android32 0x516eec;
	TodoReturn getPrefabWithID(gd::string, int) = android32 0x517054;
	TodoReturn getRandomPrefab(gd::string) = android32 0x516f68;
	TodoReturn getSimplifiedKey(gd::string) = android32 0x517594;
	TodoReturn getSimplifiedType(SmartBlockType, bool&) = android32 0x516d38;
	TodoReturn getTemplateState(gd::vector<SmartPrefabResult>&) = android32 0x519e30;
	TodoReturn getTotalChanceForPrefab(gd::string) = android32 0x516ef4;
	TodoReturn getVerySimplifiedKey(gd::string) = android32 0x516d58;
	bool init() = android32 0x516bb0;
	bool isUnrequired(gd::string) = android32 0x51865c;
	TodoReturn keyFromNeighbors(cocos2d::CCPoint, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*) = android32 0x517fa0;
	TodoReturn keyFromNeighbors(SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType) = android32 0x5174f4;
	TodoReturn keyFromNeighborsOld(bool, bool, bool, bool, bool, bool, bool, bool) = android32 0x519ff0;
	TodoReturn logTemplateStatus(bool) = android32 0x519cec;
	TodoReturn offsetForDir(GJSmartDirection, int) = android32 0x5170d2;
	TodoReturn offsetForObject(SmartGameObject*) = android32 0x517468;
	TodoReturn offsetForType(SmartBlockType) = android32 0x517164;
	TodoReturn removePrefab(gd::string, int) = android32 0x51708c;
	TodoReturn resetScannedPrefabs() = android32 0x5193fc;
	TodoReturn rotateBlockType(SmartBlockType, int) = android32 0x518250;
	TodoReturn rotateBlockType90(SmartBlockType) = android32 0x5181d8;
	TodoReturn rotateKey(gd::string, int) = android32 0x518384;
	TodoReturn savePrefab(gd::string, gd::string) = android32 0x51893c;
	TodoReturn saveRemap(gd::string) = android32 0x517998;
	TodoReturn saveRemapToDict(gd::string, gd::string, cocos2d::CCDictionary*) = android32 0x516c98;
	TodoReturn scanForPrefab(gd::string) = android32 0x519788;
	TodoReturn shouldDiscardObject(SmartBlockType, GJSmartDirection) = android32 0x5171bc;
	TodoReturn smartObjectToType(SmartGameObject*, cocos2d::CCPoint) = android32 0x5172b8;
	TodoReturn smartTypeToObjectKey(SmartBlockType) = android32 0x5174c4;

	virtual void encodeWithCoder(DS_Dictionary*) = android32 0x516920;
	virtual bool canEncode() = android32 0x51689a;
}

[[link(android)]]
class GJSongBrowser : GJDropDownLayer, FLAlertLayerProtocol, TableViewCellDelegate {
	// virtual ~GJSongBrowser();

	static GJSongBrowser* create() = android32 0x2fb24c;

	TodoReturn loadPage(int) = android32 0x2fb458;
	void onDeleteAll(cocos2d::CCObject* sender) = android32 0x2fb130;
	void onNextPage(cocos2d::CCObject* sender) = android32 0x2fb574;
	void onPrevPage(cocos2d::CCObject* sender) = android32 0x2fb57e;
	TodoReturn setupPageInfo(int, int, int) = android32 0x2fb3f0;
	TodoReturn setupSongBrowser(cocos2d::CCArray*) = android32 0x2fb390;

	virtual bool init() = android32 0x2fb554;
	virtual TodoReturn customSetup() = android32 0x2fae7c;
	virtual TodoReturn exitLayer(cocos2d::CCObject*) = android32 0x2fae62;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x2fb244 = android32 0x2fb1e2;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = android32 0x2fb1da = android32 0x2fb1b8;
	virtual TodoReturn getSelectedCellIdx() = android32 0x2fadc6 = android32 0x2fadc0;

	int m_page;
	int m_songID;
	bool m_selected;
	CCMenuItemSpriteExtra* m_rightArrow;
	CCMenuItemSpriteExtra* m_leftArrow;
	cocos2d::CCLabelBMFont* m_countText;
	PAD = android32 0x8;
	cocos2d::CCArray* m_downloadedSongs;
	CustomListView* m_listView;
}

[[link(android)]]
class GJSpecialColorSelect : FLAlertLayer {
	// virtual ~GJSpecialColorSelect();

	static GJSpecialColorSelect* create(int, GJSpecialColorSelectDelegate*, ColorSelectType) = android32 0x499c88;

	TodoReturn getButtonByTag(int) = android32 0x4994fe;
	TodoReturn highlightSelected(ButtonSprite*) = android32 0x499534;
	bool init(int, GJSpecialColorSelectDelegate*, ColorSelectType) = android32 0x4996fc;
	void onClose(cocos2d::CCObject* sender) = android32 0x49943c;
	void onSelectColor(cocos2d::CCObject* sender) = android32 0x49959c;
	static const char* textForColorIdx(int) = android32 0x4995c4;

	virtual void keyBackClicked() = android32 0x499474 = android32 0x49946e;
}

[[link(android)]]
class GJSpecialColorSelectDelegate {
	virtual TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
}

[[link(android)]]
class GJSpiderSprite : GJRobotSprite {
	// virtual ~GJSpiderSprite();

	static GJSpiderSprite* create(int) = android32 0x498024;

	bool init(int) = android32 0x497fc8;
}

[[link(android)]]
class GJSpriteColor {
	// GJSpriteColor();

	TodoReturn getColorMode() = android32 0x3448dc;

	int m_colorID;
	int m_defaultColorID;
	float m_opacity;
	cocos2d::ccHSVValue m_hsv;
	bool m_usesHSV;
	float unk_10C;
	bool unk_110;

}

[[link(android)]]
class GJStoreItem : cocos2d::CCNode {
	// virtual ~GJStoreItem();

	static GJStoreItem* create(int, int, int, int, ShopType) = android32 0x3fa040;

	TodoReturn getCurrencyKey() = android32 0x3fa0dc;
	bool init(int, int, int, int, ShopType) = android32 0x3f9f5c;
}

[[link(android)]]
class GJTransformControl : cocos2d::CCLayer {
	// virtual ~GJTransformControl();

	static GJTransformControl* create() = android32 0x371f50;

	TodoReturn applyRotation(float) = android32 0x38a6d8;
	TodoReturn calculateRotationOffset() = android32 0x387de0;
	TodoReturn finishTouch() = android32 0x3726d0;
	TodoReturn loadFromState(GJTransformState&) = android32 0x387e24;
	TodoReturn loadValues(GameObject*, cocos2d::CCArray*, gd::unordered_map<int, GameObjectEditorState>&) = android32 0x38acf4;
	TodoReturn logCurrentZeroPos() = android32 0x387e18;
	void onToggleLockScale(cocos2d::CCObject* sender) = android32 0x366404;
	TodoReturn refreshControl() = android32 0x389f34;
	TodoReturn saveToState(GJTransformState&) = android32 0x387e98;
	TodoReturn scaleButtons(float) = android32 0x372050;
	TodoReturn spriteByTag(int) = android32 0x387e1a;
	TodoReturn updateAnchorSprite(cocos2d::CCPoint) = android32 0x388534;
	TodoReturn updateButtons(bool, bool) = android32 0x3895dc;
	TodoReturn updateMinMaxPositions() = android32 0x388480;

	virtual bool init() = android32 0x372508;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x388478 = android32 0x388344;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x38a574 = android32 0x38a180;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x38a6d0 = android32 0x38a57c;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x36612a = android32 0x366122;
}

[[link(android)]]
class GJTransformControlDelegate {
	virtual TodoReturn transformScaleXChanged(float);
	virtual TodoReturn transformScaleYChanged(float);
	virtual TodoReturn transformScaleXYChanged(float, float);
	virtual TodoReturn transformRotationXChanged(float);
	virtual TodoReturn transformRotationYChanged(float);
	virtual TodoReturn transformRotationChanged(float);
	virtual TodoReturn transformResetRotation();
	virtual TodoReturn transformRestoreRotation();
	virtual TodoReturn transformSkewXChanged(float);
	virtual TodoReturn transformSkewYChanged(float);
	virtual TodoReturn transformChangeBegin();
	virtual TodoReturn transformChangeEnded();
	virtual TodoReturn updateTransformControl();
	virtual TodoReturn anchorPointMoved(cocos2d::CCPoint);
	virtual TodoReturn getTransformNode();
	virtual TodoReturn getUI();
}

[[link(android)]]
class GJUINode : cocos2d::CCNode {
	// virtual ~GJUINode();

	static GJUINode* create(UIButtonConfig&) = android32 0x300e54;

	TodoReturn activeRangeTouchTest(cocos2d::CCPoint) = android32 0x300138;
	TodoReturn activeTouchTest(cocos2d::CCPoint) = android32 0x3002a4;
	TodoReturn getButtonScale() = android32 0x2fffec;
	TodoReturn getOpacity() = android32 0x300c9e;
	TodoReturn highlightButton(int) = android32 0x3008a6;
	bool init(UIButtonConfig&) = android32 0x300d34;
	TodoReturn loadFromConfig(UIButtonConfig&) = android32 0x300f04;
	TodoReturn resetState() = android32 0x300458;
	TodoReturn saveToConfig(UIButtonConfig&) = android32 0x300caa;
	void setOpacity(unsigned char) = android32 0x300d0a;
	TodoReturn toggleHighlight(int, bool) = android32 0x3003e8;
	TodoReturn toggleModeB(bool) = android32 0x300c60;
	TodoReturn touchEnded() = android32 0x300866;
	TodoReturn touchTest(cocos2d::CCPoint) = android32 0x300374;
	TodoReturn updateButtonFrames() = android32 0x2ffec0;
	TodoReturn updateButtonPositions() = android32 0x2ffff8;
	TodoReturn updateButtonScale(float) = android32 0x3000d0;
	TodoReturn updateDeadzone(int) = android32 0x2fffde;
	TodoReturn updateDragRadius(float) = android32 0x3000ac;
	TodoReturn updateHeight(float) = android32 0x2fffd4;
	TodoReturn updateRangePos(cocos2d::CCPoint) = android32 0x300308;
	TodoReturn updateSize(float, float) = android32 0x2fff50;
	TodoReturn updateWidth(float) = android32 0x2fffcc;

	virtual void draw() = android32 0x2ffab8;
}

[[link(android)]]
class GJUnlockableItem : cocos2d::CCObject {
	// virtual ~GJUnlockableItem();

	static GJUnlockableItem* create() = android32 0x3fa128;

	bool init() = android32 0x3fa124;
}

[[link(android)]]
class GJUserCell : TableViewCell, FLAlertLayerProtocol, UploadPopupDelegate, UploadActionDelegate {
	// virtual ~GJUserCell();
	GJUserCell(char const*, float, float);

	TodoReturn loadFromScore(GJUserScore*) = android32 0x32a98c;
	void onCancelFriendRequest(cocos2d::CCObject* sender) = android32 0x321af8;
	void onRemoveFriend(cocos2d::CCObject* sender) = android32 0x321bb4;
	void onSendMessage(cocos2d::CCObject* sender) = android32 0x321e14;
	void onUnblockUser(cocos2d::CCObject* sender) = android32 0x321a04;
	void onViewFriendRequest(cocos2d::CCObject* sender) = android32 0x32af28;
	void onViewProfile(cocos2d::CCObject* sender) = android32 0x321072;
	TodoReturn updateBGColor(int) = android32 0x32af94;

	virtual bool init() = android32 0x31fd02;
	virtual void draw() = android32 0x320b40;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x321f90 = android32 0x321e38;
	virtual TodoReturn uploadActionFinished(int, int) = android32 0x322068 = android32 0x321f98;
	virtual TodoReturn uploadActionFailed(int, int) = android32 0x322264 = android32 0x3221f0;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = android32 0x32238a = android32 0x322378;
}

[[link(android)]]
class GJUserMessage : cocos2d::CCNode {
	// virtual ~GJUserMessage();

	static GJUserMessage* create() = android32 0x3b51b4;
	static GJUserMessage* create(cocos2d::CCDictionary*) = android32 0x3b5234;

	virtual bool init() = android32 0x3a892c;

	int m_messageID;
}

[[link(android)]]
class GJUserScore : cocos2d::CCNode {
	// virtual ~GJUserScore();

	static GJUserScore* create() = android32 0x3b38c4;
	static GJUserScore* create(cocos2d::CCDictionary*) = android32 0x3b39e0;

	bool isCurrentUser() = android32 0x3b4bb8;
	TodoReturn mergeWithScore(GJUserScore*) = android32 0x3b4b3c;

	virtual bool init() = android32 0x3a81bc;

	gd::string m_userName;
	gd::string m_userUDID;
	int m_scoreType;
	int m_userID;
	int m_accountID;
	int m_stars;
	int m_moons;
	int m_diamonds;
	int m_demons;
	int m_playerRank;
	int m_creatorPoints;
	int m_secretCoins;
	int m_userCoins;
	int m_iconID;
	int m_color1;
	int m_color2;
	int m_color3;
	int m_special;
	IconType m_iconType;
	int m_messageState;
	int m_friendStatus;
	int m_commentHistoryStatus;
	gd::string m_youtubeURL;
	gd::string m_twitterURL;
	gd::string m_twitchURL;
	int m_playerCube;
	int m_playerShip;
	int m_playerBall;
	int m_playerUfo;
	int m_playerWave;
	int m_playerRobot;
	int m_playerSpider;
	int m_playerSwing;
	int m_playerJetpack;
	int m_playerStreak;
	bool m_glowEnabled;
	int m_playerExplosion;
	int m_modBadge;
	int m_globalRank;
	int m_friendReqStatus;
	int m_newMsgCount;
	int m_friendReqCount;
	int m_newFriendCount;
	bool m_newFriendRequest;
}

[[link(android)]]
class GJValueTween {
	TodoReturn step(float);
}

[[link(android)]]
class GJWorldNode : cocos2d::CCNode {
	// virtual ~GJWorldNode();

	static GJWorldNode* create(int, WorldSelectLayer*) = android32 0x4dbbe0;

	TodoReturn addDotsToLevel(int, bool) = android32 0x4db4f4;
	TodoReturn dotPositionForLevel(int, int) = android32 0x4db264;
	bool init(int, WorldSelectLayer*) = android32 0x4db698;
	void onLevel(cocos2d::CCObject* sender) = android32 0x4dd15c;
	TodoReturn playStep1() = android32 0x4db0e0;
	TodoReturn playStep2() = android32 0x4da59c;
	TodoReturn playStep3() = android32 0x4da634;
	TodoReturn positionForLevelButton(int) = android32 0x4db1b8;
	TodoReturn unlockActiveItem() = android32 0x4da9c8;
}

[[link(android)]]
class GJWriteMessagePopup : FLAlertLayer, TextInputDelegate, UploadMessageDelegate, UploadPopupDelegate, FLAlertLayerProtocol {
	// virtual ~GJWriteMessagePopup();

	static GJWriteMessagePopup* create(int, int) = android32 0x491028;

	TodoReturn closeMessagePopup(bool) = android32 0x4902d8;
	bool init(int, int) = android32 0x4906b4;
	void onClearBody(cocos2d::CCObject* sender) = android32 0x488af4;
	void onClose(cocos2d::CCObject* sender) = android32 0x4903b8;
	void onSend(cocos2d::CCObject* sender) = android32 0x48e558;
	TodoReturn updateBody(gd::string) = android32 0x490670;
	TodoReturn updateCharCountLabel(int) = android32 0x490404;
	TodoReturn updateSubject(gd::string) = android32 0x49062c;
	TodoReturn updateText(gd::string, int) = android32 0x4904dc;

	virtual void registerWithTouchDispatcher() = android32 0x488b9c;
	virtual void keyBackClicked() = android32 0x4903c4 = android32 0x4903be;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = android32 0x486fc0 = android32 0x486fbe;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x486fb6 = android32 0x486fae;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x491288 = android32 0x491200;
	virtual TodoReturn uploadMessageFinished(int) = android32 0x48e984 = android32 0x48e91c;
	virtual TodoReturn uploadMessageFailed(int) = android32 0x48eb64 = android32 0x48eb08;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = android32 0x4903fa = android32 0x4903cc;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x48839c = android32 0x488338;
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float) = android32 0x4884a0 = android32 0x488450;
	virtual TodoReturn textInputReturn(CCTextInputNode*) = android32 0x4884f4 = android32 0x4884a8;
}

[[link(android)]]
class GManager : cocos2d::CCNode {
	// virtual ~GManager();

	TodoReturn getCompressedSaveString() = android32 0x2e37fc;
	gd::string getSaveString() = android32 0x2e37b4;
	TodoReturn load() = android32 0x2e3ab8;
	TodoReturn loadDataFromFile(gd::string const&) = android32 0x2e39c8;
	TodoReturn loadFromCompressedString(gd::string&) = android32 0x2e3898;
	TodoReturn loadFromString(gd::string&) = android32 0x2e3844;
	inline void save() {
		saveGMTo(m_fileName);
	}
	TodoReturn saveData(DS_Dictionary*, gd::string) = android32 0x2e3794;
	TodoReturn saveGMTo(gd::string) = android32 0x2e38e8;
	TodoReturn tryLoadData(DS_Dictionary*, gd::string const&) = android32 0x2e379c;
	inline GManager() {}

	virtual bool init() = android32 0x2e36a4;
	virtual TodoReturn setup() = android32 0x2e3ac0;
	virtual void encodeDataTo(DS_Dictionary*) = android32 0x2e36b4;
	virtual void dataLoaded(DS_Dictionary*) = android32 0x2e36b6;
	virtual void firstLoad() = android32 0x2e36b8;

	gd::string m_fileName;
	bool m_setup;
	bool m_saved;
	bool m_quickSave;
}

[[link(android)]]
class GooglePlayDelegate {
	virtual void googlePlaySignedIn() {}
}

[[link(android)]]
class GooglePlayManager : cocos2d::CCNode {
	// virtual ~GooglePlayManager();

	static GooglePlayManager* sharedState() = android32 0x2e9658;

	TodoReturn googlePlaySignedIn() = android32 0x2e96b4;

	virtual bool init() = android32 0x2e9618;
}

[[link(android)]]
class GradientTriggerObject : EffectGameObject {
	// virtual ~GradientTriggerObject();

	static GradientTriggerObject* create() = android32 0x3cedbc;

	virtual bool init() = android32 0x3d0980;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3cb118;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3dbf58;
}

[[link(android)]]
class GraphicsReloadLayer : cocos2d::CCLayer {
	// virtual ~GraphicsReloadLayer();

	static GraphicsReloadLayer* create(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool, bool) = android32 0x40cc88;

	bool init(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool, bool) = android32 0x40cc10;
	TodoReturn performReload() = android32 0x407e88;
	static cocos2d::CCScene* scene(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool, bool) = android32 0x40cd54;
}

[[link(android)]]
class GravityEffectSprite : cocos2d::CCSprite {
	// virtual ~GravityEffectSprite();

	static GravityEffectSprite* create() = android32 0x30769c;

	TodoReturn updateSpritesColor(cocos2d::ccColor3B) = android32 0x307704;

	virtual bool init() = android32 0x312868;
	virtual void draw() = android32 0x30163c;
}

[[link(android)]]
class GroupCommandObject2 {
	// ~GroupCommandObject2();
	// GroupCommandObject2();
	// GroupCommandObject2(GroupCommandObject2 const&);

	TodoReturn reset() = android32 0x566e18;
	TodoReturn resetDelta(bool) = android32 0x5669d8;
	TodoReturn runFollowCommand(double, double, double) = android32 0x566918;
	TodoReturn runMoveCommand(cocos2d::CCPoint, double, int, double, bool, bool, bool, bool, double, double) = android32 0x566758;
	TodoReturn runPlayerFollowCommand(double, double, int, double, double) = android32 0x566958;
	TodoReturn runRotateCommand(double, double, int, double, bool, int) = android32 0x566888;
	TodoReturn runTransformCommand(double, int, double) = android32 0x5668f0;
	TodoReturn step(float) = android32 0x566b90;
	TodoReturn stepTransformCommand(float, bool, bool) = android32 0x566c46;
	TodoReturn updateAction(int, float) = android32 0x566aa8;
	TodoReturn updateEffectAction(float, int) = android32 0x566a18;
}

[[link(android)]]
class HardStreak : cocos2d::CCDrawNode {
	// virtual ~HardStreak();

	static HardStreak* create() = android32 0x439618;

	TodoReturn addPoint(cocos2d::CCPoint) = android32 0x439f2c;
	TodoReturn clearAboveXPos(float) = android32 0x439780;
	TodoReturn clearBehindXPos(float) = android32 0x439704;
	TodoReturn createDuplicate() = android32 0x439fd4;
	void firstSetup() = android32 0x439f68;
	TodoReturn normalizeAngle(double) = android32 0x439800;
	TodoReturn quadCornerOffset(cocos2d::CCPoint, cocos2d::CCPoint, float) = android32 0x439838;
	TodoReturn reset() = android32 0x4396c0;
	TodoReturn resumeStroke() = android32 0x439e84;
	TodoReturn scheduleAutoUpdate() = android32 0x43969c;
	TodoReturn stopStroke() = android32 0x4396d4;
	callback void updateStroke(float) = android32 0x439920;

	virtual bool init() = android32 0x43a0b4;
}

[[link(android)]]
class HSVLiveOverlay : FLAlertLayer, HSVWidgetDelegate {
	// virtual ~HSVLiveOverlay();

	static HSVLiveOverlay* create(GameObject*, cocos2d::CCArray*) = android32 0x541868;

	TodoReturn closeColorSelect(cocos2d::CCObject*) = android32 0x541208;
	TodoReturn createHSVWidget(int) = android32 0x541460;
	TodoReturn determineStartValues() = android32 0x5413da;
	bool init(GameObject*, cocos2d::CCArray*) = android32 0x54156c;
	void onSelectTab(cocos2d::CCObject* sender) = android32 0x541960;
	TodoReturn toggleControls(bool) = android32 0x541982;

	virtual void keyBackClicked() = android32 0x541244 = android32 0x54123e;
	virtual void show() = android32 0x5412fa;
	virtual TodoReturn hsvChanged(ConfigureHSVWidget*) = android32 0x5413d2 = android32 0x54132e;
}

[[link(android)]]
class HSVWidgetDelegate {
	virtual void hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue) {}
	virtual void hsvChanged(ConfigureHSVWidget*) {}
}

[[link(android)]]
class HSVWidgetPopup : FLAlertLayer {
	// virtual ~HSVWidgetPopup();

	static HSVWidgetPopup* create(cocos2d::ccHSVValue, HSVWidgetDelegate*, gd::string) = android32 0x49713c;

	bool init(cocos2d::ccHSVValue, HSVWidgetDelegate*, gd::string) = android32 0x496ef0;
	void onClose(cocos2d::CCObject* sender) = android32 0x49618a;

	virtual void keyBackClicked() = android32 0x4961f2 = android32 0x4961ec;
}

[[link(android)]]
class InfoAlertButton : CCMenuItemSpriteExtra {
	// virtual ~InfoAlertButton();

	static InfoAlertButton* create(gd::string, gd::string, float) = android32 0x499288;

	bool init(gd::string, gd::string, float) = android32 0x499220;

	virtual void activate() = android32 0x499198;
}

[[link(android)]]
class InfoLayer : FLAlertLayer, LevelCommentDelegate, CommentUploadDelegate, FLAlertLayerProtocol {
	// virtual ~InfoLayer();

	static InfoLayer* create(GJGameLevel*, GJUserScore*, GJLevelList*) = android32 0x4165e8;

	TodoReturn confirmReport(cocos2d::CCObject*) = android32 0x414854;
	int getAccountID() = android32 0x414988;
	int getID() {
		if(m_score) return m_score->m_userID;
		if(m_levelList) return - m_levelList->m_listID;
		if(m_level) return m_level->m_levelID;
		return 0;
	}
	int getRealID() = android32 0x414964;
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint) = android32 0x4149c4;
	bool init(GJGameLevel*, GJUserScore*, GJLevelList*) = android32 0x415308;
	bool isCorrect(char const*) = android32 0x414c88;
	void loadPage(int, bool) = android32 0x414eb8;
	void onClose(cocos2d::CCObject* sender) = android32 0x414088;
	void onComment(cocos2d::CCObject* sender) = android32 0x414560;
	void onCopyLevelID(cocos2d::CCObject* sender) = android32 0x4144b0;
	void onGetComments(cocos2d::CCObject* sender) = android32 0x4150b0;
	void onLevelInfo(cocos2d::CCObject* sender) = android32 0x4141b0;
	void onMore(cocos2d::CCObject* sender) = android32 0x4149a6;
	void onNextPage(cocos2d::CCObject* sender) = android32 0x4150b8;
	void onOriginal(cocos2d::CCObject* sender) = android32 0x413ff8;
	void onPrevPage(cocos2d::CCObject* sender) = android32 0x4150c4;
	void onRefreshComments(cocos2d::CCObject* sender) = android32 0x41505c;
	void onSimilar(cocos2d::CCObject* sender) = android32 0x414bf8;
	TodoReturn reloadWindow() = android32 0x416720;
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*) = android32 0x414d04;
	TodoReturn setupLevelInfo() = android32 0x414a68;
	TodoReturn toggleCommentMode(cocos2d::CCObject*) = android32 0x41689c;
	TodoReturn toggleExtendedMode(cocos2d::CCObject*) = android32 0x416800;
	TodoReturn toggleSmallCommentMode(cocos2d::CCObject*) = android32 0x416820;
	TodoReturn updateCommentModeButtons() = android32 0x415284;
	TodoReturn updateLevelsLabel() = android32 0x4150d0;

	virtual void registerWithTouchDispatcher() = android32 0x4140e0;
	virtual void keyBackClicked() = android32 0x4140d8 = android32 0x4140d2;
	virtual void show() = android32 0x414104;
	virtual TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*) = android32 0x414eb0 = android32 0x414e78;
	virtual TodoReturn loadCommentsFailed(char const*) = android32 0x414cfc = android32 0x414cd0;
	virtual TodoReturn setupPageInfo(gd::string, char const*) = android32 0x41527c = android32 0x41510c;
	virtual TodoReturn commentUploadFinished(int) = android32 0x416894 = android32 0x416858;
	virtual TodoReturn commentUploadFailed(int, CommentError) = android32 0x41484c = android32 0x4147c8;
	virtual TodoReturn updateUserScoreFinished() = android32 0x4144a8 = android32 0x414454;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x4147c0 = android32 0x414738;

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
class InheritanceNode : cocos2d::CCObject {
	// virtual ~InheritanceNode();

	static InheritanceNode* create(int, InheritanceNode*) = android32 0x479d94;

	bool init(int, InheritanceNode*) = android32 0x479d8c;
}

[[link(android)]]
class ItemInfoPopup : FLAlertLayer {
	// virtual ~ItemInfoPopup();

	static ItemInfoPopup* create(int, UnlockType) = android32 0x3ecf74;

	bool init(int, UnlockType) = android32 0x3ec3a8;
	bool isUnlockedByDefault(int, UnlockType) = android32 0x3eb68c;
	TodoReturn nameForUnlockType(int, UnlockType) = android32 0x3eb6a8;
	void onClose(cocos2d::CCObject* sender) = android32 0x3e98cc;
	void onCredit(cocos2d::CCObject* sender) = android32 0x3e9d16;

	virtual void keyBackClicked() = android32 0x3e98f0 = android32 0x3e98ea;

	int m_itemID;
	UnlockType m_unlockType;
	int m_accountID;
}

[[link(android)]]
class ItemTriggerGameObject : EffectGameObject {
	// virtual ~ItemTriggerGameObject();

	static ItemTriggerGameObject* create(char const*) = android32 0x3d41bc;

	bool init(char const*) = android32 0x3d41b8;

	virtual TodoReturn customSetup() = android32 0x3cd262;
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = android32 0x3d6738;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3cba4c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e3f6c;
}

[[link(android)]]
class KeybindingsLayer : FLAlertLayer {
	// virtual ~KeybindingsLayer();

	static KeybindingsLayer* create() = android32 0x44bfd8;

	TodoReturn addKeyPair(char const*, char const*) = android32 0x44c36c;
	TodoReturn countForPage(int) = android32 0x44c0c0;
	TodoReturn goToPage(int) = android32 0x44c580;
	TodoReturn incrementCountForPage(int) = android32 0x44c198;
	TodoReturn infoKey(int) = android32 0x44c568;
	TodoReturn layerForPage(int) = android32 0x44c2c4;
	TodoReturn layerKey(int) = android32 0x44c2ac;
	TodoReturn nextPosition(int) = android32 0x44c114;
	TodoReturn objectKey(int) = android32 0x44c208;
	TodoReturn objectsForPage(int) = android32 0x44c220;
	void onClose(cocos2d::CCObject* sender) = android32 0x44bf1c;
	void onInfo(cocos2d::CCObject* sender) = android32 0x44cf38;
	void onNextPage(cocos2d::CCObject* sender) = android32 0x44cef0;
	void onPrevPage(cocos2d::CCObject* sender) = android32 0x44cefa;
	void onToggle(cocos2d::CCObject* sender) = android32 0x44cf04;
	TodoReturn pageKey(int) = android32 0x44c0a8;

	virtual bool init() = android32 0x44c72c;
	virtual void keyBackClicked() = android32 0x44bf40 = android32 0x44bf3a;
}

[[link(android)]]
class KeybindingsManager : cocos2d::CCNode {
	// virtual ~KeybindingsManager();

	static KeybindingsManager* sharedState() = android32 0x44d030;

	TodoReturn commandForKey(cocos2d::enumKeyCodes, GJKeyGroup, bool, bool, bool) = android32 0x44d08c;
	TodoReturn commandForKeyMods(cocos2d::enumKeyCodes, GJKeyGroup) = android32 0x44d0a8;
	TodoReturn commandForKeyNoMods(cocos2d::enumKeyCodes, GJKeyGroup) = android32 0x44d096;
	TodoReturn commandToKeyForGroup(GJKeyGroup) = android32 0x44d198;
	void dataLoaded(DS_Dictionary*) = android32 0x44d2a4;
	void encodeDataTo(DS_Dictionary*) = android32 0x44d274;
	void firstSetup() = android32 0x44d228;
	TodoReturn groupForCommand(GJKeyCommand) = android32 0x44d0f8;
	TodoReturn keyForCommand(GJKeyCommand) = android32 0x44d0f4;
	TodoReturn keyToCommandForGroup(GJKeyGroup) = android32 0x44d108;

	virtual bool init() = android32 0x44cfdc;
}

[[link(android)]]
class KeyframeAnimTriggerObject : EffectGameObject {
	// virtual ~KeyframeAnimTriggerObject();

	static KeyframeAnimTriggerObject* create() = android32 0x3d296c;

	virtual bool init() = android32 0x3d0cfc;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3cb388;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3df3c4;
}

[[link(android)]]
class KeyframeGameObject : EffectGameObject {
	// virtual ~KeyframeGameObject();

	static KeyframeGameObject* create() = android32 0x3d3470;

	TodoReturn updateShadowObjects(GJBaseGameLayer*, EditorUI*) = android32 0x3d351c;

	virtual bool init() = android32 0x3d0d08;
	virtual void setOpacity(unsigned char) = android32 0x3c8efa = android32 0x3c8ea0;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3cb518;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e0620;
}

[[link(android)]]
class KeyframeObject {
	// KeyframeObject();
	// KeyframeObject(KeyframeObject const&);

	TodoReturn setupSpline(gd::vector<KeyframeObject*>&) = android32 0x5619c0;
}

[[link(android)]]
class LabelGameObject : EffectGameObject {
	// virtual ~LabelGameObject();

	static LabelGameObject* create() = android32 0x3d2e38;

	TodoReturn createLabel(gd::string) = android32 0x3d30d0;
	TodoReturn queueUpdateLabel(gd::string) = android32 0x3d3048;
	TodoReturn removeLabel() = android32 0x3d3064;
	TodoReturn unlockLabelColor() = android32 0x3d3240;
	TodoReturn updateLabel(float) = android32 0x3d2ff8;
	TodoReturn updateLabel(gd::string) = android32 0x3d2fcc;
	TodoReturn updateLabelAlign(int) = android32 0x3d2ec8;
	TodoReturn updateLabelIfDirty() = android32 0x3d31f0;
	TodoReturn updatePreviewLabel() = android32 0x3dfe5c;

	virtual bool init() = android32 0x3c928c;
	virtual void setOpacity(unsigned char) = android32 0x3c8f22 = android32 0x3c8f02;
	virtual TodoReturn setupCustomSprites(gd::string) = android32 0x3d3178;
	virtual TodoReturn addMainSpriteToParent(bool) = android32 0x3cd3b0;
	virtual TodoReturn resetObject() = android32 0x3c9072;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3d2f28;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3dff7c;
	virtual void setObjectColor(cocos2d::ccColor3B const&) = android32 0x3c91b8;
	virtual TodoReturn updateTextKerning(int) = android32 0x3c8e0e;
	virtual TodoReturn getTextKerning() = android32 0x3c8c94;

	PAD = android32 0x11;

	// property 391
	int m_alignment;

	// property 389
	bool m_showSecondsOnly;

	// property 390
	int m_shownSpecial;

	// property 466
	bool m_isTimeCounter;

	// property 488
	int m_kerning;

	PAD = android32 0x8;
}

[[link(android)]]
class LeaderboardManagerDelegate {
	virtual void updateUserScoreFinished() {}
	virtual void updateUserScoreFailed() {}
	virtual void loadLeaderboardFinished(cocos2d::CCArray*, char const*) {}
	virtual void loadLeaderboardFailed(char const*) {}
}

[[link(android)]]
class LeaderboardsLayer : cocos2d::CCLayer, LeaderboardManagerDelegate, FLAlertLayerProtocol {
	// virtual ~LeaderboardsLayer();

	static LeaderboardsLayer* create(LeaderboardState) = android32 0x43769c;

	bool init(LeaderboardState) = android32 0x43721c;
	bool isCorrect(char const*) = android32 0x437770;
	void onBack(cocos2d::CCObject* sender) = android32 0x436a1c;
	void onCreators(cocos2d::CCObject* sender) = android32 0x4371f0;
	void onGlobal(cocos2d::CCObject* sender) = android32 0x4371e0;
	void onInfo(cocos2d::CCObject* sender) = android32 0x4368e0;
	void onTop(cocos2d::CCObject* sender) = android32 0x4371c0;
	void onWeek(cocos2d::CCObject* sender) = android32 0x4371d0;
	TodoReturn refreshTabs() = android32 0x436df8;
	static cocos2d::CCScene* scene(LeaderboardState) = android32 0x437748;
	TodoReturn selectLeaderboard(LeaderboardState) = android32 0x4370e4;
	TodoReturn setupLevelBrowser(cocos2d::CCArray*) = android32 0x436e4c;
	TodoReturn setupTabs() = android32 0x436ab0;
	TodoReturn toggleTabButtons() = android32 0x436f74;

	virtual void keyBackClicked() = android32 0x436a4e = android32 0x436a48;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x436aa8 = android32 0x436a8c;
	virtual TodoReturn updateUserScoreFinished() = android32 0x437214 = android32 0x437200;
	virtual TodoReturn updateUserScoreFailed() = android32 0x436a82 = android32 0x436a56;
	virtual TodoReturn loadLeaderboardFinished(cocos2d::CCArray*, char const*) = android32 0x4379b2 = android32 0x437964;
	virtual TodoReturn loadLeaderboardFailed(char const*) = android32 0x437a9c = android32 0x4379bc;

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
class LevelAreaInnerLayer : cocos2d::CCLayer, DialogDelegate {
	// virtual ~LevelAreaInnerLayer();

	static LevelAreaInnerLayer* create(bool) = android32 0x54a7fc;

	bool init(bool) = android32 0x54a01c;
	void onBack(cocos2d::CCObject* sender) = android32 0x549062;
	void onDoor(cocos2d::CCObject* sender) = android32 0x548ce8;
	void onInfo(cocos2d::CCObject* sender) = android32 0x548ad8;
	void onNextFloor(cocos2d::CCObject* sender) = android32 0x548a64;
	TodoReturn playStep1() = android32 0x548de8;
	static cocos2d::CCScene* scene(bool) = android32 0x54a888;
	TodoReturn showFloor1CompleteDialog() = android32 0x548708;
	TodoReturn tryResumeTowerMusic() = android32 0x548564;

	virtual void keyBackClicked() = android32 0x54909a = android32 0x549094;
	virtual TodoReturn dialogClosed(DialogLayer*) = android32 0x548a5a = android32 0x5489fc;
}

[[link(android)]]
class LevelAreaLayer : cocos2d::CCLayer, DialogDelegate {
	// virtual ~LevelAreaLayer();

	static LevelAreaLayer* create() = android32 0x548fb8;

	TodoReturn addGodRay(float, float, float, float, float, cocos2d::CCPoint) = android32 0x5494ac;
	TodoReturn addTorch(cocos2d::CCNode*, cocos2d::CCPoint, int, float, int, bool) = android32 0x5490a4;
	TodoReturn fadeInsideTower() = android32 0x548968;
	void onBack(cocos2d::CCObject* sender) = android32 0x548f6c;
	void onClickDoor(cocos2d::CCObject* sender) = android32 0x548e74;
	TodoReturn onEnterTower() = android32 0x54a8b0;
	static cocos2d::CCScene* scene() = android32 0x549040;
	TodoReturn showDialog() = android32 0x5485b4;

	virtual bool init() = android32 0x549744;
	virtual void keyBackClicked() = android32 0x548fae = android32 0x548fa8;
	virtual TodoReturn dialogClosed(DialogLayer*) = android32 0x548474 = android32 0x54846c;
}

[[link(android)]]
class LevelBrowserLayer : cocos2d::CCLayerColor, LevelManagerDelegate, FLAlertLayerProtocol, SetIDPopupDelegate, SetTextPopupDelegate, TableViewCellDelegate, ShareCommentDelegate {
	// virtual ~LevelBrowserLayer();

	static LevelBrowserLayer* create(GJSearchObject*) = android32 0x3a74c4;

	TodoReturn createNewLevel(cocos2d::CCObject*) = android32 0x3a57e8;
	TodoReturn createNewList(cocos2d::CCObject*) = android32 0x3a5838;
	TodoReturn createNewSmartTemplate(cocos2d::CCObject*) = android32 0x3a57aa;
	TodoReturn deleteSelected() = android32 0x3a7bd0;
	TodoReturn exitLayer(cocos2d::CCObject*) = android32 0x3a7f16;
	TodoReturn getItemsMatchingSearch(cocos2d::CCArray*, gd::string, GJSearchObject*) = android32 0x3a5950;
	gd::string getSearchTitle() = android32 0x3a4eb8;
	bool init(GJSearchObject*) = android32 0x3a621c;
	bool isCorrect(char const*) = android32 0x3a4df0;
	TodoReturn loadPage(GJSearchObject*) = android32 0x3a5aac;
	void onClearSearch(cocos2d::CCObject* sender) = android32 0x3a7afc;
	void onDeleteAll(cocos2d::CCObject* sender) = android32 0x3a4994;
	void onDeleteSelected(cocos2d::CCObject* sender) = android32 0x3a4c18;
	void onFavorites(cocos2d::CCObject* sender) = android32 0x3a77f0;
	void onGoToFolder(cocos2d::CCObject* sender) = android32 0x3a4748;
	void onGoToLastPage(cocos2d::CCObject* sender) = android32 0x3a7918;
	void onGoToPage(cocos2d::CCObject* sender) = android32 0x3a468c;
	void onHelp(cocos2d::CCObject* sender) = android32 0x3a57a8;
	void onInfo(cocos2d::CCObject* sender) = android32 0x3a47d4;
	void onLocalMode(cocos2d::CCObject* sender) = android32 0x3a7690;
	void onMyOnlineLevels(cocos2d::CCObject* sender) = android32 0x3a7700;
	void onNew(cocos2d::CCObject* sender) = android32 0x3a591c;
	void onNextPage(cocos2d::CCObject* sender) = android32 0x3a7a00;
	void onPrevPage(cocos2d::CCObject* sender) = android32 0x3a7a22;
	void onRefresh(cocos2d::CCObject* sender) = android32 0x3a7a88;
	void onRemoveAllFavorites(cocos2d::CCObject* sender) = android32 0x3a4a1c;
	void onSaved(cocos2d::CCObject* sender) = android32 0x3a7884;
	void onSavedMode(cocos2d::CCObject* sender) = android32 0x3a7622;
	void onSearch(cocos2d::CCObject* sender) = android32 0x3a4ae8;
	void onToggleAllObjects(cocos2d::CCObject* sender) = android32 0x3a4d6c;
	void reloadAllObjects() = android32 0x3a7eb0;
	static cocos2d::CCScene* scene(GJSearchObject* search) = android32 0x3a75fc;
	void setSearchObject(GJSearchObject*) = android32 0x3a4dc8;
	void setupLevelBrowser(cocos2d::CCArray*) = android32 0x3a5210;
	void show() = android32 0x3a7f60;
	void updateLevelsLabel() = android32 0x3a5590;
	void updatePageLabel() = android32 0x3a54e4;

	virtual void onEnter() = android32 0x3a801e;
	virtual void onEnterTransitionDidFinish() = android32 0x3a8072;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x3a455c = android32 0x3a4558;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x3a457a = android32 0x3a4578;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x3a4566 = android32 0x3a4564;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x3a4570 = android32 0x3a456e;
	virtual void registerWithTouchDispatcher() = android32 0x3a8078;
	virtual void keyBackClicked() = android32 0x3a4550 = android32 0x3a4546;
	virtual void keyDown(cocos2d::enumKeyCodes) = android32 0x3a8016 = android32 0x3a7fac;
	virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) = android32 0x3a54da = android32 0x3a5410;
	virtual void loadLevelsFailed(char const*, int) = android32 0x3a4eae = android32 0x3a4e6c;
	virtual void setupPageInfo(gd::string, char const*) = android32 0x3a57a0 = android32 0x3a55e8;
	virtual void onBack(cocos2d::CCObject* sender) = android32 0x3a7f3a;
	virtual TodoReturn shareCommentClosed(gd::string, ShareCommentLayer*) = android32 0x3a7a80 = android32 0x3a7a44;
	virtual void setTextPopupClosed(SetTextPopup*, gd::string) = android32 0x3a7bc8 = android32 0x3a7b68;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x3a7ea8 = android32 0x3a7c70;
	virtual void setIDPopupClosed(SetIDPopup*, int) = android32 0x3a79f8 = android32 0x3a7940;
	virtual TodoReturn updateResultArray(cocos2d::CCArray*) = android32 0x3a4542;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = android32 0x3a7f0e = android32 0x3a7ebc;

	bool m_unk;
	bool m_allSelected;
	TextArea* m_noInternet;
	GJListLayer* m_list;
	CCMenuItemSpriteExtra* m_rightArrow;
	CCMenuItemSpriteExtra* m_leftArrow;
	CCMenuItemSpriteExtra* m_lastBtn;
	CCMenuItemSpriteExtra* m_cancelSearchBtn;
	CCMenuItemSpriteExtra* m_refreshBtn;
	cocos2d::CCArray* m_selected;
	GJSearchObject* m_searchObject;
	cocos2d::CCLabelBMFont* m_countText;
	cocos2d::CCLabelBMFont* m_pageText;
	CCMenuItemSpriteExtra* m_pageBtn;
	cocos2d::CCLabelBMFont* m_folderText;
	CCMenuItemSpriteExtra* m_folderBtn;
	CCMenuItemToggler* m_allObjectsToggler;
	int m_itemCount;
	int m_pageStartIdx;
	int m_pageEndIdx;
	LoadingCircle* m_circle;
	int m_lastPage;
	bool m_isOverlay;
	PAD = win 0x4, android32 0x4;
	int m_zOffset;
	bool m_unk2;
	int m_listHeight;
	PAD = win 0x16, android32 0x16;

}

[[link(android)]]
class LevelCell : TableViewCell {
	// virtual ~LevelCell();
	LevelCell(char const*, float, float);

	static LevelCell* create(float, float) = android32 0x323678;

	TodoReturn loadCustomLevelCell() = android32 0x323de4;
	TodoReturn loadFromLevel(GJGameLevel*) = android32 0x3257ec;
	TodoReturn loadLocalLevelCell() = android32 0x3236dc;
	void onClick(cocos2d::CCObject* sender) = android32 0x320f30;
	void onToggle(cocos2d::CCObject* sender) = android32 0x31fbf8;
	void onViewProfile(cocos2d::CCObject* sender) = android32 0x321004;
	TodoReturn updateBGColor(int) = android32 0x32592c;
	TodoReturn updateCellMode(int) = android32 0x323d78;
	TodoReturn updateToggle() = android32 0x3236c4;

	virtual bool init() = android32 0x31fbe2;
	virtual void draw() = android32 0x3223d4;

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
class LevelCommentDelegate {
	virtual void loadCommentsFinished(cocos2d::CCArray*, char const*) {}
	virtual void loadCommentsFailed(char const*) {}
	virtual void updateUserScoreFinished() {}
	virtual void setupPageInfo(gd::string, char const*) {}
}

[[link(android)]]
class LevelDeleteDelegate {
	virtual void levelDeleteFinished(int) {}
	virtual void levelDeleteFailed(int) {}
}

[[link(android)]]
class LevelDownloadDelegate {
	virtual void levelDownloadFinished(GJGameLevel*) {}
	virtual void levelDownloadFailed(int) {}
}

[[link(android)]]
class LevelEditorLayer : GJBaseGameLayer, LevelSettingsDelegate {
	// virtual ~LevelEditorLayer();

	static LevelEditorLayer* create(GJGameLevel*, bool) = android32 0x36596c;

    static LevelEditorLayer* get() {
        return GameManager::sharedState()->m_levelEditorLayer;
    }

	TodoReturn activateTriggerEffect(EffectGameObject*, float, float, float, bool) = android32 0x35e530;
	TodoReturn addDelayedSpawn(EffectGameObject*, float) = android32 0x35e378;
	TodoReturn addExclusionList(cocos2d::CCArray*, cocos2d::CCDictionary*) = android32 0x35831e;
	GameObject* addObjectFromVector(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x361d38;
	TodoReturn addObjectsAtPosition(cocos2d::CCPoint, cocos2d::CCArray*, cocos2d::CCArray*) = android32 0x356dac;
	TodoReturn addObjectsInRect(cocos2d::CCRect, bool, cocos2d::CCArray*, cocos2d::CCArray*) = android32 0x356e58;
	TodoReturn addObjectToGroup(GameObject*, int) = android32 0x35926c;
	TodoReturn addPlayer2Point(cocos2d::CCPoint, bool) = android32 0x364130;
	TodoReturn addPlayerCollisionBlock() = android32 0x359782;
	TodoReturn addPlayerPoint(cocos2d::CCPoint) = android32 0x3640dc;
	void addSpecial(GameObject*) = android32 0x3619ac;
	void addToRedoList(UndoObject*) = android32 0x356b8a;
	TodoReturn addTouchPoint(cocos2d::CCPoint) = android32 0x3640e6;
	void addToUndoList(UndoObject*, bool) = android32 0x356c64;
	TodoReturn applyAttributeState(GameObject*, GameObject*) = android32 0x359b22;
	TodoReturn applyGroupState(GameObject*, GameObject*) = android32 0x359b36;
	TodoReturn breakApartTextObject(TextGameObject*) = android32 0x362484;
	TodoReturn canPasteState() = android32 0x359aba;
	TodoReturn clearPlayerPoints() = android32 0x360228;
	TodoReturn clearTouchPoints() = android32 0x35acd2;
	TodoReturn copyObjectState(GameObject*) = android32 0x359c44;
	TodoReturn copyParticleState(ParticleGameObject*) = android32 0x359d20;
	GameObject* createObject(int, cocos2d::CCPoint, bool) = android32 0x362338;
	void createObjectsFromSetup(gd::string&) = android32 0x361d98;
	void createObjectsFromString(gd::string const&, bool, bool) = android32 0x36200c;
	TodoReturn dirtifyTriggers() = android32 0x3598dc;
	TodoReturn duplicateKeyframeAnimation(int) = android32 0x362294;
	TodoReturn fastUpdateDisabledGroups() = android32 0x3591f6;
	TodoReturn findGameObject(int) = android32 0x356b56;
	TodoReturn findStartPosObject() = android32 0x359900;
	TodoReturn forceShowSelectedObjects(bool) = android32 0x357ee4;
	TodoReturn fullUpdateDisabledGroups() = android32 0x3591f4;
	TodoReturn getAllObjects() = android32 0x356b50;
	TodoReturn getDelayedSpawnNode() = android32 0x35e31c;
	TodoReturn getGridPos(cocos2d::CCPoint) = android32 0x3567b0;
	TodoReturn getLastObjectX() = android32 0x359214;
	gd::string getLevelString() = android32 0x3639e8;
	TodoReturn getLockedLayers() = android32 0x362984;
	TodoReturn getNextColorChannel() = android32 0x35899e;
	TodoReturn getNextFreeAreaEffectID(cocos2d::CCArray*) = android32 0x358790;
	TodoReturn getNextFreeBlockID(cocos2d::CCArray*) = android32 0x358540;
	TodoReturn getNextFreeEditorLayer(cocos2d::CCArray*) = android32 0x35866c;
	TodoReturn getNextFreeEnterChannel(cocos2d::CCArray*) = android32 0x3586fc;
	TodoReturn getNextFreeGradientID(cocos2d::CCArray*) = android32 0x35891c;
	int getNextFreeGroupID(cocos2d::CCArray*) = android32 0x358362;
	TodoReturn getNextFreeItemID(cocos2d::CCArray*) = android32 0x3584a2;
	TodoReturn getNextFreeOrderChannel(cocos2d::CCArray*) = android32 0x3585c8;
	TodoReturn getNextFreeSFXGroupID(cocos2d::CCArray*) = android32 0x358894;
	TodoReturn getNextFreeSFXID(cocos2d::CCArray*) = android32 0x35880e;
	TodoReturn getObjectRect(GameObject*, bool, bool) = android32 0x356818;
	TodoReturn getRelativeOffset(GameObject*) = android32 0x3567d8;
	TodoReturn getSavedEditorPosition(int) = android32 0x356cc4;
	TodoReturn getSavedEditorPositions() = android32 0x362a38;
	TodoReturn getSectionCount() = android32 0x356cec;
	TodoReturn getSelectedEditorOrder() = android32 0x358de4;
	TodoReturn getSelectedEffectPos() = android32 0x358e04;
	TodoReturn getSelectedOrderChannel() = android32 0x358dc4;
	TodoReturn getSFXIDs() = android32 0x363d90;
	TodoReturn getSongIDs(bool&) = android32 0x363bc4;
	TodoReturn getTriggerGroup(int) = android32 0x3592a0;
	TodoReturn handleAction(bool, cocos2d::CCArray*) = android32 0x36261c;
	TodoReturn hasAction(bool) = android32 0x356bc8;
	bool init(GJGameLevel*, bool) = android32 0x364fe0;
	bool isLayerLocked(int) = android32 0x35796c;
	TodoReturn objectAtPosition(cocos2d::CCPoint) = android32 0x3571bc;
	TodoReturn objectMoved(GameObject*) = android32 0x357cb8;
	TodoReturn objectsAtPosition(cocos2d::CCPoint) = android32 0x357388;
	TodoReturn objectsInRect(cocos2d::CCRect, bool) = android32 0x357564;
	void onPausePlaytest() = android32 0x359a2e;
	void onPlaytest() = android32 0x36025c;
	void onResumePlaytest() = android32 0x360160;
	void onStopPlaytest() = android32 0x35a28c;
	TodoReturn pasteAttributeState(GameObject*, cocos2d::CCArray*) = android32 0x359bd4;
	TodoReturn pasteColorState(GameObject*, cocos2d::CCArray*) = android32 0x359ac8;
	TodoReturn pasteGroupState(GameObject*, cocos2d::CCArray*) = android32 0x359b8c;
	TodoReturn pasteParticleState(ParticleGameObject*, cocos2d::CCArray*) = android32 0x359e04;
	TodoReturn processLoadedMoveActions() = android32 0x36129c;
	TodoReturn quickUpdateAllPositions() = android32 0x3599a4;
	TodoReturn recreateGroups() = android32 0x360026;
	TodoReturn redoLastAction() = android32 0x36292c;
	TodoReturn refreshSpecial(GameObject*) = android32 0x362944;
	TodoReturn removeAllObjects() = android32 0x35b6f6;
	TodoReturn removeAllObjectsOfType(int) = android32 0x35b776;
	TodoReturn removeObject(GameObject*, bool) = android32 0x35b6ac;
	TodoReturn removePlayerCollisionBlock() = android32 0x3597b6;
	void removeSpecial(GameObject*) = android32 0x35b400;
	TodoReturn resetDelayedSpawnNodes() = android32 0x35e3a8;
	TodoReturn resetEffectTriggerOptim(GameObject*, cocos2d::CCArray*) = android32 0x35970c;
	TodoReturn resetMovingObjects() = android32 0x3593cc;
	TodoReturn resetObjectVector() = android32 0x3591f8;
	TodoReturn resetPlayback() = android32 0x358e3c;
	TodoReturn resetToggledGroups() = android32 0x359018;
	TodoReturn resetToggledGroupsAndObjects() = android32 0x359078;
	TodoReturn resetUnusedColorChannels() = android32 0x358aac;
	TodoReturn reverseKeyframeAnimationOrder(int) = android32 0x35a514;
	TodoReturn reverseObjectChanged(EffectGameObject*) = android32 0x35b318;
	TodoReturn rotationForSlopeNearObject(GameObject*) = android32 0x3577f0;
	TodoReturn runColorEffect(EffectGameObject*, int, float, float, bool) = android32 0x358e56;
	TodoReturn saveEditorPosition(cocos2d::CCPoint&, int) = android32 0x356cae;
	static cocos2d::CCScene* scene(GJGameLevel*, bool) = android32 0x365d4c;
	void setObjectCount(int) = android32 0x356378;
	TodoReturn shouldBlend(int) = android32 0x356760;
	TodoReturn sortBatchnodeChildren(float) = android32 0x357e50;
	TodoReturn spawnGroupPreview(int, float, float, float, float, float, bool, bool) = android32 0x35e9e0;
	TodoReturn stopPlayback() = android32 0x35976c;
	TodoReturn stopTriggersInGroup(int, float) = android32 0x35e408;
	TodoReturn timeObjectChanged() = android32 0x3590b2;
	TodoReturn toggleBackground(bool) = android32 0x358bdc;
	TodoReturn toggleGrid(bool) = android32 0x358bec;
	TodoReturn toggleGround(bool) = android32 0x358bc6;
	TodoReturn toggleGroupPreview(int, bool) = android32 0x3592d0;
	TodoReturn toggleLockActiveLayer() = android32 0x3578f8;
	TodoReturn transferDefaultColors(GJEffectManager*, GJEffectManager*) = android32 0x358bfa;
	TodoReturn triggerFollowCommand(EffectGameObject*) = android32 0x359856;
	TodoReturn triggerPlayerFollowCommand(EffectGameObject*) = android32 0x359894;
	TodoReturn triggerRotateCommand(EffectGameObject*) = android32 0x3597e2;
	TodoReturn tryUpdateSpeedObject(EffectGameObject*, bool) = android32 0x35b286;
	TodoReturn typeExistsAtPosition(int, cocos2d::CCPoint, bool, bool, float) = android32 0x356f0c;
	TodoReturn undoLastAction() = android32 0x362938;
	TodoReturn unlockAllLayers() = android32 0x3579bc;
	TodoReturn updateAnimateOnTriggerObjects(bool) = android32 0x359f6c;
	TodoReturn updateArt(float) = android32 0x3566dc;
	TodoReturn updateBlendValues() = android32 0x3590bc;
	TodoReturn updateEditor(float) = android32 0x364d88;
	TodoReturn updateEditorMode() = android32 0x35a0a0;
	TodoReturn updateGameObjects() = android32 0x364538;
	TodoReturn updateGridLayer() = android32 0x357e7c;
	TodoReturn updateGridLayerParent() = android32 0x356674;
	TodoReturn updateKeyframeObjects() = android32 0x35a534;
	TodoReturn updateKeyframeVisibility(bool) = android32 0x35acd0;
	void updateLevelFont(int) = android32 0x359440;
	TodoReturn updateObjectColors(cocos2d::CCArray*) = android32 0x357f4c;
	static void updateObjectLabel(GameObject*) = android32 0x357a08;
	TodoReturn updateOptions() = android32 0x35648c;
	TodoReturn updatePreviewAnim() = android32 0x359ee4;
	TodoReturn updatePreviewParticle(ParticleGameObject*) = android32 0x359fb0;
	TodoReturn updatePreviewParticles() = android32 0x35a040;
	TodoReturn updateToggledGroups() = android32 0x358f30;
	TodoReturn validGroup(GameObject*, bool) = android32 0x356cfc;

	virtual void draw() = android32 0x355d8e;
	virtual TodoReturn postUpdate(float) = android32 0x364180;
	virtual TodoReturn updateVisibility(float) = android32 0x35a580;
	virtual TodoReturn playerTookDamage(PlayerObject*) = android32 0x355d80;
	virtual TodoReturn updateColor(cocos2d::ccColor3B&, float, int, bool, float, cocos2d::ccHSVValue&, int, bool, EffectGameObject*, int, int) = android32 0x356134;
	virtual TodoReturn updateDebugDraw() = android32 0x35ed08;
	virtual TodoReturn addToGroup(GameObject*, int, bool) = android32 0x359364;
	virtual TodoReturn removeFromGroup(GameObject*, int) = android32 0x3593a2;
	virtual TodoReturn updateObjectSection(GameObject*) = android32 0x355d92;
	virtual TodoReturn updateDisabledObjectsLastPos(cocos2d::CCArray*) = android32 0x3611d8;
	virtual TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, int) = android32 0x35cc30;
	virtual TodoReturn posForTime(float) = android32 0x35cbb2;
	virtual TodoReturn resetSPTriggered() = android32 0x355d4e;
	virtual TodoReturn didRotateGameplay() = android32 0x3640f0;
	virtual TodoReturn manualUpdateObjectColors(GameObject*) = android32 0x358300;
	virtual TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool) = android32 0x355e9c;
	virtual TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*) = android32 0x355e62;
	virtual TodoReturn activatedAudioTrigger(SFXTriggerGameObject*) = android32 0x355e86;
	virtual TodoReturn checkpointActivated(CheckpointGameObject*) = android32 0x35ec84;
	virtual TodoReturn addKeyframe(KeyframeGameObject*) = android32 0x355daa;
	virtual TodoReturn levelSettingsUpdated() = android32 0x360f60 = android32 0x360ec0;

	bool m_drawTriggerBoxes;
	bool m_showGrid;
	bool m_hideGridOnPlay;
	bool m_drawEffectLines;
	bool m_showGround;
	bool m_showDurationLines;
	bool m_increaseMaxUndoRedo;
	bool m_hideBackground;
	bool m_gv0120;
	bool m_layerLockingEnabled;
	bool m_unkBool4;
	bool m_previewParticles;
	bool m_previewAnimations;
	bool m_previewShaders;
	bool m_hideParticleIcons;
	bool m_unkBool5;
	bool m_playTestSmoothFix;

	// haven't verified the mac padding
	PAD = win 0xf, android32 0xf, android64 0xf, mac 0xf;

	cocos2d::CCArray* m_unkArr0;
	cocos2d::CCArray* m_unkArr1;
	cocos2d::CCArray* m_unkArr2;
	cocos2d::CCArray* m_unkArr3;
	cocos2d::CCArray* m_unkArr4;
	cocos2d::CCArray* m_unkArr8;
	cocos2d::CCArray* m_unkArr11;
	cocos2d::CCArray* m_unkArr12;
	cocos2d::CCArray* m_unkArr13;
	cocos2d::CCDictionary* m_unkDict3;
	cocos2d::CCArray* m_unkArr5;

	// haven't verified the mac padding
	PAD = win 0x8, android32 0x8, android64 0x10, mac 0x10;

	cocos2d::CCDictionary* m_unkDict4;
	cocos2d::CCArray* m_unkArr7;
	bool m_unkBool3;
	bool m_unkBool2;
	geode::SeedValueRSV m_coinCount;

	// haven't verified the mac padding
	PAD = win 0x8, android32 0x8, android64 0x8, mac 0x8;

	cocos2d::CCArray* m_unkArr6;

	// haven't verified the mac padding
	PAD = win 0x4, android32 0x4, android64 0x8, mac 0x8;

	cocos2d::CCDictionary* m_unkDict1;
	cocos2d::CCDictionary* m_unkDict2;
	bool m_unkBool0;
	bool m_unkBool1;
    short m_currentLayer;

	// haven't verified the mac padding
	PAD = win 0x18, android32 0x18, android64 0x24, mac 0x24;

	EditorUI* m_editorUI;
	cocos2d::CCArray* m_undoObjects;
	cocos2d::CCArray* m_redoObjects;
	geode::SeedValueRSV m_objectCount;
	DrawGridLayer* m_drawGridLayer;
	bool m_unkBool;
	bool m_previewMode;
}

[[link(android)]]
class LevelFeatureLayer : FLAlertLayer {
	// virtual ~LevelFeatureLayer();

	static LevelFeatureLayer* create(int) = android32 0x438280;

	bool init(int) = android32 0x438264;
	void onClose(cocos2d::CCObject* sender) = android32 0x437b08;
	void onDown(cocos2d::CCObject* sender) = android32 0x438366;
	void onDown2(cocos2d::CCObject* sender) = android32 0x438386;
	void onRemoveValues(cocos2d::CCObject* sender) = android32 0x437bce;
	void onSetEpicOnly(cocos2d::CCObject* sender) = android32 0x437baa;
	void onSetFeatured(cocos2d::CCObject* sender) = android32 0x437bf0;
	void onToggleEpic(cocos2d::CCObject* sender) = android32 0x437aa4;
	void onUp(cocos2d::CCObject* sender) = android32 0x438358;
	void onUp2(cocos2d::CCObject* sender) = android32 0x438378;
	TodoReturn updateStars() = android32 0x437c1c;

	virtual void keyBackClicked() = android32 0x437b2c = android32 0x437b26;
}

[[link(android)]]
class LevelInfoLayer : cocos2d::CCLayer, LevelDownloadDelegate, LevelUpdateDelegate, RateLevelDelegate, LikeItemDelegate, FLAlertLayerProtocol, LevelDeleteDelegate, NumberInputDelegate, SetIDPopupDelegate, TableViewCellDelegate {
	// virtual ~LevelInfoLayer();

	static LevelInfoLayer* create(GJGameLevel*, bool) = android32 0x39f800;

	TodoReturn confirmClone(cocos2d::CCObject*) = android32 0x39b148;
	TodoReturn confirmDelete(cocos2d::CCObject*) = android32 0x39b208;
	TodoReturn confirmMoveToBottom(cocos2d::CCObject*) = android32 0x39b4f4;
	TodoReturn confirmMoveToTop(cocos2d::CCObject*) = android32 0x39b460;
	TodoReturn confirmOwnerDelete(cocos2d::CCObject*) = android32 0x39b29c;
	void downloadLevel() = android32 0x39bd54;
	TodoReturn incrementDislikes() = android32 0x39fb1a;
	TodoReturn incrementLikes() = android32 0x39fb08;
	bool init(GJGameLevel*, bool) = android32 0x39ded0;
	TodoReturn loadLevelStep() = android32 0x39b68c;
	void onAddToList(cocos2d::CCObject* sender) = android32 0x39ad74;
	void onBack(cocos2d::CCObject* sender) = android32 0x39bbd2;
	void onClone(cocos2d::CCObject* sender) = android32 0x39ccf8;
	void onDelete(cocos2d::CCObject* sender) = android32 0x39cdae;
	void onFavorite(cocos2d::CCObject* sender) = android32 0x39bb00;
	void onFeatured(cocos2d::CCObject* sender) = android32 0x39cdac;
	void onGarage(cocos2d::CCObject* sender) = android32 0x39bba2;
	void onInfo(cocos2d::CCObject* sender) = android32 0x39ba5c;
	void onLevelInfo(cocos2d::CCObject* sender) = android32 0x39b330;
	void onLevelLeaderboard(cocos2d::CCObject* sender) = android32 0x39ba14;
	void onLevelOptions(cocos2d::CCObject* sender) = android32 0x39bc64;
	void onLike(cocos2d::CCObject* sender) = android32 0x39bb54;
	void onLowDetailMode(cocos2d::CCObject* sender);
	void onOwnerDelete(cocos2d::CCObject* sender) = android32 0x39cddc;
	void onPlay(cocos2d::CCObject* sender) = android32 0x39c6e8;
	void onPlayReplay(cocos2d::CCObject* sender) = android32 0x39cc44;
	void onRate(cocos2d::CCObject* sender) = android32 0x39ce1c;
	void onRateDemon(cocos2d::CCObject* sender) = android32 0x39bc32;
	void onRateStars(cocos2d::CCObject* sender) = android32 0x39b930;
	void onRateStarsMod(cocos2d::CCObject* sender) = android32 0x39ba7c;
	void onSetFolder(cocos2d::CCObject* sender) = android32 0x39ae64;
	void onUpdate(cocos2d::CCObject* sender) = android32 0x39c604;
	void onViewProfile(cocos2d::CCObject* sender) = android32 0x39bab0;
	TodoReturn playStep2() = android32 0x39b588;
	TodoReturn playStep3() = android32 0x39b620;
	TodoReturn playStep4() = android32 0x39b734;
	static cocos2d::CCScene* scene(GJGameLevel*, bool) = android32 0x39f950;
	TodoReturn setupLevelInfo() = android32 0x39d724;
	TodoReturn setupPlatformerStats() = android32 0x39bdf4;
	TodoReturn setupProgressBars() = android32 0x39c030;
	TodoReturn shouldDownloadLevel() = android32 0x39bcd8;
	TodoReturn showSongWarning() = android32 0x39c660;
	TodoReturn showUpdateAlert(UpdateResponse) = android32 0x39c51c;
	TodoReturn tryCloneLevel(cocos2d::CCObject*) = android32 0x39b794;
	TodoReturn tryShowAd() = android32 0x39bcc4;
	TodoReturn updateLabelValues() = android32 0x39d0d8;
	TodoReturn updateSideButtons() = android32 0x39cfa4;

	virtual void onEnterTransitionDidFinish() = android32 0x39fb66;
	virtual void keyBackClicked() = android32 0x39bc2a = android32 0x39bc24;
	virtual void keyDown(cocos2d::enumKeyCodes) = android32 0x39fbb0 = android32 0x39fb76;
	virtual TodoReturn numberInputClosed(NumberInputLayer*) = android32 0x39b928 = android32 0x39b850;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = android32 0x39ae5c = android32 0x39ad98;
	virtual TodoReturn levelDownloadFinished(GJGameLevel*) = android32 0x39fb00 = android32 0x39f97c;
	virtual TodoReturn levelDownloadFailed(int) = android32 0x39af6c = android32 0x39aee0;
	virtual TodoReturn levelUpdateFinished(GJGameLevel*, UpdateResponse) = android32 0x39c5fc = android32 0x39c5b4;
	virtual TodoReturn levelUpdateFailed(int) = android32 0x39b000 = android32 0x39af74;
	virtual TodoReturn levelDeleteFinished(int) = android32 0x39b0a0 = android32 0x39b008;
	virtual TodoReturn levelDeleteFailed(int) = android32 0x39b140 = android32 0x39b0a8;
	virtual TodoReturn rateLevelClosed() = android32 0x39d0d0 = android32 0x39d0cc;
	virtual TodoReturn likedItem(LikeItemType, int, bool) = android32 0x39fb5e = android32 0x39fb2c;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x39cf9c = android32 0x39cee0;
	virtual void setIDPopupClosed(SetIDPopup*, int) = android32 0x39ad6c = android32 0x39ad14;

	void* m_unk0;
	cocos2d::CCMenu* m_playBtnMenu;
	GJGameLevel* m_level;
	cocos2d::CCArray* m_coins;
	CCMenuItemSpriteExtra* m_likeBtn;
	CCMenuItemSpriteExtra* m_starRateBtn;
	CCMenuItemSpriteExtra* m_demonRateBtn;
	void* m_unk2;
	cocos2d::CCLabelBMFont* m_lengthLabel;
	cocos2d::CCLabelBMFont* m_downloadsLabel;
	cocos2d::CCLabelBMFont* m_likesLabel;
	cocos2d::CCLabelBMFont* m_orbsLabel;
	cocos2d::CCLabelBMFont* m_folderLabel;
	CCMenuItemSpriteExtra* m_cloneBtn;
	void* m_unk3;
	cocos2d::CCSprite* m_likesIcon;
	cocos2d::CCSprite* m_orbsIcon;
	int m_unk6; // always 3, maybe level type?
	int m_unk7;
	LoadingCircle* m_circle;
	GJDifficultySprite* m_difficultySprite;
	cocos2d::CCSprite* m_starsIcon;
	cocos2d::CCLabelBMFont* m_starsLabel;
	cocos2d::CCArray* m_icons;
	PAD = win 0x10, android32 0x10, android64 0x10;
	bool m_challenge;
	PAD = win 0x4, android32 0x4, android64 0x8;
	cocos2d::CCSprite* m_playSprite;
	void* m_unk11;
	CustomSongWidget* m_songWidget;
}

[[link(android)]]
class LevelLeaderboard : FLAlertLayer, LeaderboardManagerDelegate, FLAlertLayerProtocol {
	// virtual ~LevelLeaderboard();

	static LevelLeaderboard* create(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = android32 0x4c3d10;

	TodoReturn deleteLocalScores() = android32 0x4c2c34;
	TodoReturn getLocalScores() = android32 0x4c2d1c;
	TodoReturn getSpriteButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint, int) = android32 0x4c2b64;
	bool init(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = android32 0x4c32ac;
	bool isCorrect(char const*) = android32 0x4c2e00;
	TodoReturn loadScores() = android32 0x4c31b8;
	void onChangeMode(cocos2d::CCObject* sender) = android32 0x4c3ecc;
	void onChangeType(cocos2d::CCObject* sender) = android32 0x4c3e84;
	void onClose(cocos2d::CCObject* sender) = android32 0x4c28a0;
	void onDeleteLocalScores(cocos2d::CCObject* sender) = android32 0x4c297c;
	void onUpdate(cocos2d::CCObject* sender) = android32 0x4c30bc;
	TodoReturn reloadLeaderboard(LevelLeaderboardType, LevelLeaderboardMode) = android32 0x4c3e10;
	TodoReturn setupLeaderboard(cocos2d::CCArray*) = android32 0x4c2f54;

	virtual void registerWithTouchDispatcher() = android32 0x4c2a08;
	virtual void keyBackClicked() = android32 0x4c28c4 = android32 0x4c28be;
	virtual void show() = android32 0x4c2a60; //merged func
	virtual TodoReturn loadLeaderboardFinished(cocos2d::CCArray*, char const*) = android32 0x4c31b0 = android32 0x4c314c;
	virtual TodoReturn loadLeaderboardFailed(char const*) = android32 0x4c2f4c = android32 0x4c2e84;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x4c2d14 = android32 0x4c2cf0;
	virtual TodoReturn updateUserScoreFinished() = android32 0x4c32a4 = android32 0x4c32a0;
	virtual TodoReturn updateUserScoreFailed() = android32 0x4c2a58 = android32 0x4c2a2c;

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
class LevelListCell : TableViewCell {
	// virtual ~LevelListCell();
	LevelListCell(char const*, float, float);

	static LevelListCell* create(float, float) = android32 0x32c620;

	void loadFromList(GJLevelList*) = android32 0x32c66c;
	void onClick(cocos2d::CCObject* sender) = android32 0x3224e4;
	void onListInfo(cocos2d::CCObject* sender) = android32 0x3223c6;
	void onViewProfile(cocos2d::CCObject* sender) = android32 0x32102c;
	TodoReturn updateBGColor(int) = android32 0x32d450;

	virtual bool init() = android32 0x31fd66;
	virtual void draw() = android32 0x320de0;

	GJLevelList* m_levelList;
	bool m_addingLevel;
}

[[link(android)]]
class LevelListDeleteDelegate {
	virtual void levelListDeleteFinished(int) {}
	virtual void levelListDeleteFailed(int) {}
}

[[link(android)]]
class LevelListLayer : LevelBrowserLayer, TextInputDelegate, SelectListIconDelegate, LikeItemDelegate, LevelListDeleteDelegate {
	// virtual ~LevelListLayer();

	static LevelListLayer* create(GJLevelList*) = android32 0x56de1c;

	TodoReturn cloneList() = android32 0x56e0e8;
	TodoReturn confirmClone(cocos2d::CCObject*) = android32 0x56b428;
	TodoReturn confirmDelete(cocos2d::CCObject*) = android32 0x56b4bc;
	TodoReturn confirmOwnerDelete(cocos2d::CCObject*) = android32 0x56b550;
	bool init(GJLevelList*) = android32 0x56cbc0;
	void onClaimReward(cocos2d::CCObject* sender) = android32 0x56b084;
	TodoReturn onDelete() = android32 0x56e1f4;
	void onDescription(cocos2d::CCObject* sender) = android32 0x56b328;
	void onFavorite(cocos2d::CCObject* sender) = android32 0x56bef8;
	void onInfo(cocos2d::CCObject* sender) = android32 0x56beb4;
	void onLike(cocos2d::CCObject* sender) = android32 0x56bf6c;
	void onListInfo(cocos2d::CCObject* sender) = android32 0x56b07a;
	void onRefreshLevelList(cocos2d::CCObject* sender) = android32 0x56b238;
	void onSelectIcon(cocos2d::CCObject* sender) = android32 0x56ecd0;
	void onShare(cocos2d::CCObject* sender) = android32 0x56f8bc;
	void onToggleEditMode(cocos2d::CCObject* sender) = android32 0x56e0d2;
	void onViewProfile(cocos2d::CCObject* sender) = android32 0x56bed6;
	TodoReturn ownerDelete() = android32 0x56e226;
	static cocos2d::CCScene* scene(GJLevelList*) = android32 0x56dfd0;
	TodoReturn updateEditMode() = android32 0x56e06a;
	TodoReturn updateSideButtons() = android32 0x56cb60;
	TodoReturn updateStatsArt() = android32 0x56c060;
	TodoReturn verifyListName() = android32 0x56e2c4;

	virtual void onEnter() = android32 0x56fe14;
	virtual void onExit() = android32 0x56b01e;
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int) = android32 0x56cb58 = android32 0x56ca8c;
	virtual TodoReturn loadLevelsFailed(char const*, int) = android32 0x56b032 = android32 0x56b02e;
	virtual void onBack(cocos2d::CCObject* sender) = android32 0x56e368;
	virtual TodoReturn shareCommentClosed(gd::string, ShareCommentLayer*) = android32 0x56b420 = android32 0x56b3c0;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x56e2ba = android32 0x56e260;
	virtual void setIDPopupClosed(SetIDPopup*, int) = android32 0x56e0ca = android32 0x56e084;
	virtual TodoReturn updateResultArray(cocos2d::CCArray*) = android32 0x56b2ec;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = android32 0x56e864 = android32 0x56e748;
	virtual TodoReturn likedItem(LikeItemType, int, bool) = android32 0x56e062 = android32 0x56e028;
	virtual TodoReturn iconSelectClosed(SelectListIconLayer*) = android32 0x56ca84 = android32 0x56ca74;
	virtual TodoReturn levelListDeleteFinished(int) = android32 0x56b678 = android32 0x56b5e4;
	virtual TodoReturn levelListDeleteFailed(int) = android32 0x56b714 = android32 0x56b680;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = android32 0x56c058 = android32 0x56bfb4;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x56b8c8 = android32 0x56b814;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x56b80c = android32 0x56b790;
}

[[link(android)]]
class LevelManagerDelegate {
	virtual void loadLevelsFinished(cocos2d::CCArray*, char const*) {}
	virtual void loadLevelsFailed(char const*) {}
	virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) {}
	virtual void loadLevelsFailed(char const*, int) {}
	virtual void setupPageInfo(gd::string, char const*) {}
}

[[link(android)]]
class LevelOptionsLayer : GJOptionsLayer {
	// virtual ~LevelOptionsLayer();

	static LevelOptionsLayer* create(LevelSettingsObject*) = android32 0x54fe2c;

	bool init(LevelSettingsObject*) = android32 0x54fdf4;
	void onSettings(cocos2d::CCObject* sender) = android32 0x5500b0;

	virtual TodoReturn valueDidChange(int, float) = android32 0x54c17c;
	virtual TodoReturn getValue(int) = android32 0x54c194;
	virtual TodoReturn setupOptions() = android32 0x54cb48;
	virtual TodoReturn didToggle(int) = android32 0x54c1b4;
}

[[link(android)]]
class LevelOptionsLayer2 : LevelOptionsLayer {
	// virtual ~LevelOptionsLayer2();

	static LevelOptionsLayer2* create(LevelSettingsObject*) = android32 0x54ffd4;

	bool init(LevelSettingsObject*) = android32 0x54ff20;

	virtual TodoReturn setupOptions() = android32 0x54c9a8;
}

[[link(android)]]
class LevelPage : cocos2d::CCLayer, DialogDelegate {
	// virtual ~LevelPage();

	static LevelPage* create(GJGameLevel*) = android32 0x3f1278;

	TodoReturn addSecretCoin() = android32 0x3f1bc8;
	TodoReturn addSecretDoor() = android32 0x3f2150;
	bool init(GJGameLevel*) = android32 0x3f0a20;
	void onInfo(cocos2d::CCObject* sender) = android32 0x3f2e6c;
	void onMoreGames(cocos2d::CCObject* sender) = android32 0x3f1b88;
	void onPlay(cocos2d::CCObject* sender) = android32 0x3f0280;
	void onSecretDoor(cocos2d::CCObject* sender) = android32 0x3efe54;
	void onTheTower(cocos2d::CCObject* sender) = android32 0x3efba0;
	TodoReturn playCoinEffect() = android32 0x3f1d20;
	TodoReturn playStep2() = android32 0x3f03fc;
	TodoReturn playStep3() = android32 0x3f0494;
	TodoReturn updateDynamicPage(GJGameLevel*) = android32 0x3f22a4;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x3f2148 = android32 0x3f207c;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x3ef9ba = android32 0x3ef9b8;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x3ef9c4 = android32 0x3ef9c2;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x3ef9d4 = android32 0x3ef9cc;
	virtual void registerWithTouchDispatcher() = android32 0x3f051c;
	virtual TodoReturn dialogClosed(DialogLayer*) = android32 0x3f05a4 = android32 0x3f053c;

	void* m_unk;
	GJGameLevel* m_level;
}

[[link(android)]]
class LevelSearchLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DemonFilterDelegate {
	// virtual ~LevelSearchLayer();

	static LevelSearchLayer* create(int) = android32 0x3995bc;

	TodoReturn checkDiff(int) = android32 0x3970b8;
	TodoReturn checkTime(int) = android32 0x397410;
	TodoReturn clearFilters() = android32 0x397e1c;
	TodoReturn confirmClearFilters(cocos2d::CCObject*) = android32 0x39643c;
	TodoReturn getDiffKey(int) = android32 0x3970a0;
	TodoReturn getLevelLenKey() = android32 0x397464;
	TodoReturn getSearchDiffKey() = android32 0x39710c;
	GJSearchObject* getSearchObject(SearchType, gd::string) = android32 0x3974d0;
	TodoReturn getTimeKey(int) = android32 0x3973f8;
	bool init(int) = android32 0x3981f4;
	void onBack(cocos2d::CCObject* sender) = android32 0x39706a;
	void onClearFreeSearch(cocos2d::CCObject* sender) = android32 0x39675c;
	void onClose(cocos2d::CCObject* sender) = android32 0x39705c;
	void onFollowed(cocos2d::CCObject* sender) = android32 0x397a58;
	void onFriends(cocos2d::CCObject* sender) = android32 0x3979e4;
	void onLatestStars(cocos2d::CCObject* sender) = android32 0x397970;
	void onMagic(cocos2d::CCObject* sender) = android32 0x397888;
	void onMoreOptions(cocos2d::CCObject* sender) = android32 0x39978c;
	void onMostDownloaded(cocos2d::CCObject* sender) = android32 0x3976b8;
	void onMostLikes(cocos2d::CCObject* sender) = android32 0x39772c;
	void onMostRecent(cocos2d::CCObject* sender) = android32 0x3978fc;
	void onSearch(cocos2d::CCObject* sender) = android32 0x397b40;
	void onSearchMode(cocos2d::CCObject* sender) = android32 0x399692;
	void onSearchUser(cocos2d::CCObject* sender) = android32 0x397c00;
	void onSpecialDemon(cocos2d::CCObject* sender) = android32 0x39abb4;
	void onStarAward(cocos2d::CCObject* sender) = android32 0x397acc;
	void onSuggested(cocos2d::CCObject* sender) = android32 0x3977a0;
	void onTrending(cocos2d::CCObject* sender) = android32 0x397814;
	static cocos2d::CCScene* scene(int) = android32 0x39966c;
	TodoReturn toggleDifficulty(cocos2d::CCObject*) = android32 0x397234;
	TodoReturn toggleDifficultyNum(int, bool) = android32 0x397194;
	TodoReturn toggleStar(cocos2d::CCObject*) = android32 0x396538;
	TodoReturn toggleTime(cocos2d::CCObject*) = android32 0x397cbc;
	TodoReturn toggleTimeNum(int, bool) = android32 0x397d70;
	TodoReturn updateSearchLabel(char const*) = android32 0x396e84;

	virtual void keyBackClicked() = android32 0x397096 = android32 0x397090;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = android32 0x396e7c = android32 0x396de8;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x397008 = android32 0x396fc4;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x397054 = android32 0x397010;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x397fa2 = android32 0x397f84;
	virtual TodoReturn demonFilterSelectClosed(int) = android32 0x396434 = android32 0x396398;

	int m_type;
	CCTextInputNode* m_searchInput;
	cocos2d::CCSprite* m_starsSprite;
	cocos2d::CCArray* m_difficultySprites;
	cocos2d::CCArray* m_lengthSprites;
	cocos2d::CCDictionary* m_difficultyDict;
	cocos2d::CCSprite* m_lastDifficultySprite;
	CCMenuItemSpriteExtra* m_demonTypeButton;
}

[[link(android)]]
class LevelSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate, DynamicScrollDelegate {
	// virtual ~LevelSelectLayer();

	static LevelSelectLayer* create(int) = android32 0x3f1ab8;

	TodoReturn colorForPage(int) = android32 0x3f0620;
	TodoReturn getColorValue(int, int, float) = android32 0x3f06e4;
	bool init(int) = android32 0x3f1320;
	void onBack(cocos2d::CCObject* sender) = android32 0x3efabe;
	void onDownload(cocos2d::CCObject* sender) = android32 0x3efa52;
	void onInfo(cocos2d::CCObject* sender) = android32 0x3f3018;
	void onNext(cocos2d::CCObject* sender) = android32 0x3efa82;
	void onPlay(cocos2d::CCObject* sender) = android32 0x3f09a0;
	void onPrev(cocos2d::CCObject* sender) = android32 0x3efaa0;
	static cocos2d::CCScene* scene(int) = android32 0x3f1b60;
	TodoReturn tryShowAd() = android32 0x3f05ac;

	virtual void keyBackClicked() = android32 0x3efaf2 = android32 0x3efaec;
	virtual void keyDown(cocos2d::enumKeyCodes) = android32 0x3f0a16 = android32 0x3f09c8;
	virtual TodoReturn updatePageWithObject(cocos2d::CCObject*, cocos2d::CCObject*) = android32 0x3f2e64 = android32 0x3f2e14;
	virtual TodoReturn scrollLayerMoved(cocos2d::CCPoint) = android32 0x3f0998 = android32 0x3f0820;
}

[[link(android)]]
class LevelSettingsDelegate {
	virtual void levelSettingsUpdated() {}
}

[[link(android)]]
class LevelSettingsLayer : FLAlertLayer, ColorSelectDelegate, SelectArtDelegate, SelectSettingDelegate, FLAlertLayerProtocol, CustomSongLayerDelegate, TextInputDelegate {
	// virtual ~LevelSettingsLayer();

	static LevelSettingsLayer* create(LevelSettingsObject*, LevelEditorLayer*) = android32 0x54f6b4;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = android32 0x54cfb8;
	bool init(LevelSettingsObject*, LevelEditorLayer*) = android32 0x54dd98;
	void onBGArt(cocos2d::CCObject* sender) = android32 0x54dbd4;
	void onClose(cocos2d::CCObject* sender) = android32 0x54c034;
	void onCol(cocos2d::CCObject* sender) = android32 0x54c6ea;
	void onDisable(cocos2d::CCObject* sender) = android32 0x54c012;
	void onFGArt(cocos2d::CCObject* sender) = android32 0x54dbfa;
	void onGameplayMode(cocos2d::CCObject* sender) = android32 0x54cf94;
	void onGArt(cocos2d::CCObject* sender) = android32 0x54dc32;
	void onLiveEdit(cocos2d::CCObject* sender) = android32 0x54c6c0;
	void onMode(cocos2d::CCObject* sender) = android32 0x54fcc2;
	void onOptionToggle(cocos2d::CCObject* sender) = android32 0x54ce64;
	void onSelectFont(cocos2d::CCObject* sender) = android32 0x54c700;
	void onSelectMode(cocos2d::CCObject* sender) = android32 0x54d14c;
	void onSelectSpeed(cocos2d::CCObject* sender) = android32 0x54d1b8;
	void onSettings(cocos2d::CCObject* sender) = android32 0x54ff08;
	void onShowPicker(cocos2d::CCObject* sender) = android32 0x54d2be;
	void onSpeed(cocos2d::CCObject* sender) = android32 0x54fc9c;
	TodoReturn showPicker(ColorAction*) = android32 0x54d2a0;
	TodoReturn updateColorSprite(ColorChannelSprite*) = android32 0x54d2e8;
	TodoReturn updateColorSprites() = android32 0x54d348;
	TodoReturn updateGameplayModeButtons() = android32 0x54cf14;

	virtual void registerWithTouchDispatcher() = android32 0x54c516;
	virtual void keyBackClicked() = android32 0x54c0fc = android32 0x54c0f6;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x54c0ee = android32 0x54c0e6;
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*) = android32 0x54d38e = android32 0x54d38a;
	virtual TodoReturn selectArtClosed(SelectArtLayer*) = android32 0x54c880 = android32 0x54c718;
	virtual TodoReturn selectSettingClosed(SelectSettingLayer*) = android32 0x54fdec = android32 0x54fd30;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x54c02c = android32 0x54c024;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x54cf0c = android32 0x54ce88;
}

[[link(android)]]
class LevelSettingsObject : cocos2d::CCNode {
	// virtual ~LevelSettingsObject();

	static LevelSettingsObject* create() = android32 0x35cd3c;

	gd::string getSaveString() = android32 0x362b10;
	static LevelSettingsObject* objectFromDict(cocos2d::CCDictionary*) = android32 0x35d4d8;
	static LevelSettingsObject* objectFromString(gd::string const&) = android32 0x35dfb4;
	TodoReturn setupColorsFromLegacyMode(cocos2d::CCDictionary*) = android32 0x35ce50;
	TodoReturn shouldUseYSection() = android32 0x35ce40;

	virtual bool init() = android32 0x365d7a;

	GJEffectManager* m_effectManager;
    // property kA2
    int m_startMode;
	// property kA4
    Speed m_startSpeed;
	// property kA3
    bool m_startMini;
	// property kA8
    bool m_startDual;
	// property kA28
	bool m_mirrorMode;
	// property kA29
	bool m_rotateGameplay;
	// property kA10
    bool m_twoPlayerMode;
	// property kA22
	bool m_platformerMode;
	// property kA13
    float m_songOffset;
	// property kA15
    bool m_fadeIn;
	// property kA16
    bool m_fadeOut;
	// property kA6
    int m_backgroundIndex;
	// property kA7
    int m_groundIndex;
	// property kA18
    int m_fontIndex;
	// property kA25
	int m_middleGroundIndex;
	// property kA9
    bool m_startsWithStartPos;
	// property kA11
    bool m_isFlipped;
	// property kA20
	bool m_reverseGameplay;
	// property kA21
	bool m_disableStartPos;
	// property kA19
	int m_targetOrder;
	// property kA26
	int m_targetChannel;

    GJGameLevel* m_level;
	// property kA14
    gd::string m_guidelineString;

    int m_defaultSongID;
	// property kS39
    int m_colorPage;
	// property kA17
    int m_groundLineIndex;
	// property kA23
	bool m_propertykA23;
	// property kA24
	bool m_propertykA24;
	// property kA43
	bool m_noTimePenalty;
	// property kA44
	int m_propertykA44;
	// property kA35
	bool m_resetCamera;
	// property kA36
	int m_spawnGroup;
	// property kA27
	bool m_allowMultiRotation;
	// property kA31
	bool m_enablePlayerSqueeze;
	// property kA32
	bool m_fixGravityBug;
	// property kA33
	bool m_fixNegativeScale;
	// property kA34
	bool m_fixRobotJump;
	// property kA37
	bool m_dynamicLevelHeight;
	// property kA38
	bool m_sortGroups;
	// property kA39
	bool m_fixRadiusCollision;
	// property kA40
	bool m_enable22Changes;
	// property kA41
	bool m_allowStaticRotate;
	// property kA42
	bool m_reverseSync;
}

[[link(android)]]
class LevelTools {
	static int artistForAudio(int) = android32 0x31daa8;
	static gd::string base64DecodeString(gd::string) = android32 0x31e7d0;
	static gd::string base64EncodeString(gd::string) = android32 0x31e7a8;
	static cocos2d::CCDictionary* createStarPackDict() = android32 0x31e7f8;
	static gd::string fbURLForArtist(int) = android32 0x31defc;
	static int getAudioBPM(int) = android32 0x31dfb4;
	static gd::string getAudioFileName(int) = android32 0x31d8b0;
	static gd::string getAudioString(int) = android32 0x31dfcc;
	static gd::string getAudioTitle(int) = android32 0x31cc48;
	static TodoReturn getLastGameplayReversed() = android32 0x31e5ac;
	static TodoReturn getLastGameplayRotated() = android32 0x31e5b8;
	static TodoReturn getLastTimewarp() = android32 0x31e5a0;
	static GJGameLevel* getLevel(int, bool) = android32 0x31ce4c;
	static TodoReturn getLevelList() = android32 0x31f428;
	static SongInfoObject* getSongObject(int) = android32 0x31e5c4;
	static TodoReturn moveTriggerObjectsToArray(cocos2d::CCArray*, cocos2d::CCDictionary*, int) = android32 0x31e91c;
	static gd::string nameForArtist(int) = android32 0x31dac0;
	static gd::string ngURLForArtist(int) = android32 0x31dd7c;
	static TodoReturn offsetBPMForTrack(int) = android32 0x31e114;
	static TodoReturn posForTime(float, cocos2d::CCArray*, int, bool, int&) = android32 0x31e57c;
	static TodoReturn posForTimeInternal(float, cocos2d::CCArray*, int, bool, bool, bool, int&, int) = android32 0x31e150;
	static TodoReturn sortChannelOrderObjects(cocos2d::CCArray*, cocos2d::CCDictionary*, bool) = android32 0x31e980;
	static TodoReturn sortSpeedObjects(cocos2d::CCArray*, GJBaseGameLayer*) = android32 0x31eb58;
	static TodoReturn timeForPos(cocos2d::CCPoint, cocos2d::CCArray*, int, int, int, bool, bool, bool, bool, int) = android32 0x31edcc;
	static TodoReturn toggleDebugLogging(bool) = android32 0x31cc44;
	static gd::string urlForAudio(int) = android32 0x31db80;
	static TodoReturn valueForSpeedMod(int) = android32 0x31e130;
	static bool verifyLevelIntegrity(gd::string, int) = android32 0x31e6e8;
	static gd::string ytURLForArtist(int) = android32 0x31de3c;
}

[[link(android)]]
class LevelUpdateDelegate {
	virtual void levelUpdateFinished(GJGameLevel*, UpdateResponse) {}
	virtual void levelUpdateFailed(int) {}
}

[[link(android)]]
class LevelUploadDelegate {
	virtual void levelUploadFinished(GJGameLevel*) {}
	virtual void levelUploadFailed(GJGameLevel*) {}
}

[[link(android)]]
class LikeItemDelegate {
	virtual void likedItem(LikeItemType, int, bool) {}
}

[[link(android)]]
class LikeItemLayer : FLAlertLayer {
	// virtual ~LikeItemLayer();

	static LikeItemLayer* create(LikeItemType, int, int) = android32 0x418be4;

	bool init(LikeItemType, int, int) = android32 0x4188d8;
	void onClose(cocos2d::CCObject* sender) = android32 0x418834;
	void onDislike(cocos2d::CCObject* sender) = android32 0x418d0c;
	void onLike(cocos2d::CCObject* sender) = android32 0x418d06;
	TodoReturn triggerLike(bool) = android32 0x418cc4;

	virtual void keyBackClicked() = android32 0x418858 = android32 0x418852;

	LikeItemType m_itemType;
	int m_itemID;
	int m_commentSourceID;
	LikeItemDelegate* m_likeDelegate;
}

[[link(android)]]
class ListButtonBar : cocos2d::CCNode {
	// virtual ~ListButtonBar();

	static ListButtonBar* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int) = android32 0x2f0e90;

	TodoReturn getPage() = android32 0x2f0916;
	TodoReturn goToPage(int) = android32 0x2f0922;
	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int) = android32 0x2f0bac;
	void onLeft(cocos2d::CCObject* sender) = android32 0x2f0976;
	void onRight(cocos2d::CCObject* sender) = android32 0x2f0968;
}

[[link(android)]]
class ListButtonBarDelegate {
	virtual TodoReturn listButtonBarSwitchedPage(ListButtonBar*, int);
}

[[link(android)]]
class ListButtonPage : cocos2d::CCLayer {
	// virtual ~ListButtonPage();

	static ListButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float) = android32 0x2f0aec;

	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float) = android32 0x2f0984;
}

[[link(android)]]
class ListCell : TableViewCell {
	// virtual ~ListCell();
	ListCell(char const*, float, float);

	TodoReturn loadFromObject(cocos2d::CCObject*, int, int, int) = android32 0x2d4d4c;
	TodoReturn updateBGColor(int) = android32 0x2d4d4e;

	virtual bool init() = android32 0x2d4794;
	virtual void draw() = android32 0x2d496c;
}

[[link(android)]]
class ListUploadDelegate {
	virtual TodoReturn listUploadFinished(GJLevelList*);
	virtual TodoReturn listUploadFailed(GJLevelList*, int);
}

[[link(android)]]
class LoadingCircle : cocos2d::CCLayerColor {
	// virtual ~LoadingCircle();

	static LoadingCircle* create() = ios 0x397d8c, android32 0x2e3ce8;

	void fadeAndRemove() = ios 0x398028, android32 0x2e3e14;
	void show() = ios 0x397f34, android32 0x2e3d78;

	void setFade(bool fade) {
		m_fade = fade;
	}

	virtual bool init() = android32 0x2e3c24;
	virtual void draw() = android32 0x2e3f52;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2e3ace = android32 0x2e3aca;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2e3ae2 = android32 0x2e3ae0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2e3ad8 = android32 0x2e3ad6;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2e3aec = android32 0x2e3aea;
	virtual void registerWithTouchDispatcher() = android32 0x2e3b6c;

	inline void setParentLayer(cocos2d::CCLayer* layer) {
        m_parentLayer = layer;
    }

	cocos2d::CCSprite* m_sprite;
	cocos2d::CCLayer* m_parentLayer;
	bool m_fade;
}

[[link(android)]]
class LoadingCircleSprite : cocos2d::CCSprite {
	// virtual ~LoadingCircleSprite();

	static LoadingCircleSprite* create() = android32 0x2e3e88;

	TodoReturn fadeInCircle(bool) = android32 0x2e3ee4;
	TodoReturn hideCircle() = android32 0x2e3f2c;

	virtual bool init() = android32 0x2e3bd0;
}

[[link(android)]]
class LoadingLayer : cocos2d::CCLayer {
	// virtual ~LoadingLayer();

	static LoadingLayer* create(bool) = android32 0x2ff8b0;

	TodoReturn getLoadingString() = android32 0x2fee58;
	bool init(bool) = ios 0x1d8ce8, android32 0x2ff334;
	TodoReturn loadAssets() = ios 0x1d949c, android32 0x2fe8b0;
	TodoReturn loadingFinished() = android32 0x2fe80a;
	static cocos2d::CCScene* scene(bool) = ios 0x1d8bf0, android32 0x2ff950;
	TodoReturn updateProgress(int) = android32 0x2fe83c;

	bool m_unknown;
	bool m_unknown2;
	int m_loadStep;
	cocos2d::CCLabelBMFont* m_caption;
	TextArea* m_textArea;
	cocos2d::CCSprite* m_sliderBar;
	float m_sliderGrooveXPos;
	float m_sliderGrooveHeight;
	bool m_fromRefresh;
}

[[link(android)]]
class LocalLevelManager : GManager {
	// virtual ~LocalLevelManager();

	static LocalLevelManager* sharedState() = android32 0x417c48;
	inline static LocalLevelManager* get() {
        return LocalLevelManager::sharedState();
    }

	cocos2d::CCDictionary* getAllLevelsInDict() = android32 0x417dd4;
	TodoReturn getAllLevelsWithName(gd::string) = android32 0x417e64;
	TodoReturn getCreatedLevels(int) = android32 0x41811c;
	TodoReturn getCreatedLists(int) = android32 0x4186b8;
	TodoReturn getLevelsInNameGroups() = android32 0x417d34;
	TodoReturn getMainLevelString(int) = android32 0x4187d4;
	TodoReturn markLevelsAsUnmodified() = android32 0x418050;
	TodoReturn moveLevelToTop(GJGameLevel*) = android32 0x4180aa;
	TodoReturn reorderLevels() = android32 0x4180ec;
	TodoReturn reorderLists() = android32 0x418198;
	TodoReturn tryLoadMainLevelString(int) = android32 0x418704;
	TodoReturn updateLevelOrder() = android32 0x418078;
	TodoReturn updateLevelRevision() = android32 0x417edc;
	TodoReturn updateListOrder() = android32 0x418166;

	virtual bool init() = android32 0x417aa8;
	virtual void encodeDataTo(DS_Dictionary*) = android32 0x417acc;
	virtual void dataLoaded(DS_Dictionary*) = android32 0x4181c8;
	virtual void firstLoad() = android32 0x417b58;

	cocos2d::CCArray* m_localLevels;
	cocos2d::CCArray* m_LLM03;
	gd::map<int, gd::string> m_mainLevels;
}

[[link(android)]]
class MapPackCell : TableViewCell {
	// virtual ~MapPackCell();
	MapPackCell(char const*, float, float);

	TodoReturn loadFromMapPack(GJMapPack*) = android32 0x3259ec;
	void onClaimReward(cocos2d::CCObject* sender) = android32 0x32640c;
	void onClick(cocos2d::CCObject* sender) = android32 0x3214a4;
	TodoReturn playCompleteEffect() = android32 0x326294;
	TodoReturn reloadCell() = android32 0x326220;
	TodoReturn updateBGColor(int) = android32 0x326228;

	virtual bool init() = android32 0x321476;
	virtual void draw() = android32 0x3204b0;
}

[[link(android)]]
class MapSelectLayer : cocos2d::CCLayer {
	// virtual ~MapSelectLayer();

	static MapSelectLayer* create() = android32 0x4ebda4;

	TodoReturn checkTouchMonster(cocos2d::CCPoint) = android32 0x4ebf6c;
	TodoReturn createObjectAtPoint(cocos2d::CCPoint) = android32 0x4ec308;
	TodoReturn getConstrainedMapPos(cocos2d::CCPoint) = android32 0x4ebe84;
	void onBack(cocos2d::CCObject* sender) = android32 0x4eb51a;
	static cocos2d::CCScene* scene() = android32 0x4ebe60;

	virtual void update(float) = android32 0x4ec990;
	virtual bool init() = android32 0x4ecf1c;
	virtual void onExit() = android32 0x4ed39c;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x4ec3ac = android32 0x4ec30c;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x4ecc28 = android32 0x4ecad0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x4eb0f0 = android32 0x4eb0a8;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x4eadbc = android32 0x4eadb4;
	virtual void registerWithTouchDispatcher() = android32 0x4eb4fc;
	virtual void keyBackClicked() = android32 0x4eb562 = android32 0x4eb55c;
	virtual void scrollWheel(float, float) = android32 0x4eb4f4 = android32 0x4eb338;
}

[[link(android)]]
class MenuGameLayer : cocos2d::CCLayer {
	// virtual ~MenuGameLayer();

	static MenuGameLayer* create() = android32 0x393908;

	TodoReturn destroyPlayer() = android32 0x394430;
	TodoReturn getBGColor(int) = android32 0x393a08;
	TodoReturn resetPlayer() = android32 0x393bf8;
	TodoReturn tryJump(float) = android32 0x3936c8;
	TodoReturn updateColor(float) = android32 0x393abc;
	TodoReturn updateColors() = android32 0x3939b4;

	virtual void update(float) = android32 0x3941d0;
	virtual bool init() = android32 0x3946ac;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x3946a4 = android32 0x3945c0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x39363e = android32 0x39363c;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x393648 = android32 0x393646;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x393658 = android32 0x393650;
	virtual void registerWithTouchDispatcher() = android32 0x3938e8;
}

[[link(android)]]
class MenuLayer : cocos2d::CCLayer, FLAlertLayerProtocol, GooglePlayDelegate {
	// virtual ~MenuLayer();

	static cocos2d::CCScene* scene(bool) = ios 0x26dd84, android32 0x2fd274;

	TodoReturn endGame() = android32 0x2fd130;
	TodoReturn firstNetworkTest() = android32 0x2fcf04;
	void onAchievements(cocos2d::CCObject* sender) = android32 0x2fd02c;
	void onCreator(cocos2d::CCObject* sender) = android32 0x2fd890;
	void onDaily(cocos2d::CCObject* sender) = android32 0x2fcef2;
	void onDiscord(cocos2d::CCObject* sender) = android32 0x2fcfb8;
	void onEveryplay(cocos2d::CCObject* sender) = android32 0x2fd628;
	void onFacebook(cocos2d::CCObject* sender) = android32 0x2fcf58;
	void onFreeLevels(cocos2d::CCObject* sender) = android32 0x2fd6a4;
	void onFullVersion(cocos2d::CCObject* sender) = android32 0x2fd68e;
	void onGameCenter(cocos2d::CCObject* sender) = android32 0x2fd4d8;
	void onGarage(cocos2d::CCObject* sender) = android32 0x2fd8c8;
	void onGooglePlayGames(cocos2d::CCObject* sender) = android32 0x2fd422;
	void onMoreGames(cocos2d::CCObject* sender) = android32 0x2fcfd0;
	void onMyProfile(cocos2d::CCObject* sender) = android32 0x2fd1d8;
	void onNewgrounds(cocos2d::CCObject* sender) = android32 0x2fd080;
	void onOptions(cocos2d::CCObject* sender) = android32 0x2fd66a;
	TodoReturn onOptionsInstant() = android32 0x2fd670;
	void onPlay(cocos2d::CCObject* sender) = android32 0x2fd856;
	void onQuit(cocos2d::CCObject* sender) = android32 0x2fd70c;
	void onRobTop(cocos2d::CCObject* sender) = android32 0x2fcf40;
	void onStats(cocos2d::CCObject* sender) = android32 0x2fd108;
	void onTrailer(cocos2d::CCObject* sender) = android32 0x2fd6e0;
	void onTwitch(cocos2d::CCObject* sender) = android32 0x2fcfa0;
	void onTwitter(cocos2d::CCObject* sender) = android32 0x2fcf70;
	void onYouTube(cocos2d::CCObject* sender) = android32 0x2fcf88;
	TodoReturn openOptions(bool) = android32 0x2fd62a;
	TodoReturn showGCQuestion() = android32 0x2fd444;
	TodoReturn showMeltdownPromo() = android32 0x2fd420;
	TodoReturn showTOS() = android32 0x2fcf12;
	TodoReturn syncPlatformAchievements(float) = android32 0x2fd054;
	TodoReturn tryShowAd(float) = android32 0x2fd220;
	TodoReturn updateUserProfileButton() = android32 0x2fd36c;
	TodoReturn videoOptionsClosed() = android32 0x2fd682;
	TodoReturn videoOptionsOpened() = android32 0x2fd676;
	TodoReturn willClose() = android32 0x2fd7a2;

	virtual bool init() = ios 0x26dee0, android32 0x2fd900;
	virtual void keyBackClicked() = android32 0x2fd79a = android32 0x2fd794;
	virtual void keyDown(cocos2d::enumKeyCodes) = android32 0x2fe792 = android32 0x2fe744;
	virtual TodoReturn googlePlaySignedIn() = android32 0x2fd1d0 = android32 0x2fd140;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x2fd620 = android32 0x2fd508;
}

[[link(android)]]
class MessageListDelegate {
	virtual void loadMessagesFinished(cocos2d::CCArray*, char const*) {}
	virtual void loadMessagesFailed(char const*, GJErrorCode) {}
	virtual void forceReloadMessages(bool) {}
	virtual void setupPageInfo(gd::string, char const*) {}
}

[[link(android)]]
class MessagesProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, MessageListDelegate {
	// virtual ~MessagesProfilePage();

	static MessagesProfilePage* create(bool) = android32 0x4a10c8;

	TodoReturn deleteSelected() = android32 0x4a036c;
	bool init(bool) = android32 0x4a0920;
	bool isCorrect(char const*) = android32 0x4a04d8;
	TodoReturn loadPage(int) = android32 0x4a07bc;
	void onClose(cocos2d::CCObject* sender) = android32 0x4a124e;
	void onDeleteSelected(cocos2d::CCObject* sender) = android32 0x4a00d8;
	void onNextPage(cocos2d::CCObject* sender) = android32 0x4a12f4;
	void onPrevPage(cocos2d::CCObject* sender) = android32 0x4a12fe;
	void onSentMessages(cocos2d::CCObject* sender) = android32 0x4a11f8;
	void onToggleAllObjects(cocos2d::CCObject* sender) = android32 0x4a0076;
	void onUpdate(cocos2d::CCObject* sender) = android32 0x4a032c;
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*) = android32 0x4a05c0;
	TodoReturn untoggleAll() = android32 0x4a0588;
	TodoReturn updateLevelsLabel() = android32 0x4a1480;
	TodoReturn updatePageArrows() = android32 0x4a1308;

	virtual void registerWithTouchDispatcher() = android32 0x4a0308;
	virtual void keyBackClicked() = android32 0x4a12d4 = android32 0x4a12ce;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x4a04ce = android32 0x4a04b0;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = android32 0x4a0208 = android32 0x4a01ec;
	virtual TodoReturn uploadActionFinished(int, int) = android32 0x4a02a4 = android32 0x4a0210;
	virtual TodoReturn uploadActionFailed(int, int) = android32 0x4a0300 = android32 0x4a02ac;
	virtual TodoReturn loadMessagesFinished(cocos2d::CCArray*, char const*) = android32 0x4a07b4 = android32 0x4a070c;
	virtual TodoReturn loadMessagesFailed(char const*, GJErrorCode) = android32 0x4a0580 = android32 0x4a0520;
	virtual TodoReturn forceReloadMessages(bool) = android32 0x4a12ec = android32 0x4a12dc;
	virtual TodoReturn setupPageInfo(gd::string, char const*) = android32 0x4a1478 = android32 0x4a1348;
}

[[link(android)]]
class MoreOptionsLayer : FLAlertLayer, TextInputDelegate, GooglePlayDelegate, GJDropDownLayerDelegate {
	// virtual ~MoreOptionsLayer();

	static MoreOptionsLayer* create() = android32 0x408674;

	TodoReturn addToggle(char const*, char const*, char const*) = android32 0x408a9c;
	TodoReturn countForPage(int) = android32 0x408774;
	TodoReturn goToPage(int) = android32 0x408de4;
	TodoReturn incrementCountForPage(int) = android32 0x4088bc;
	TodoReturn infoKey(int) = android32 0x408a84;
	TodoReturn layerForPage(int) = android32 0x4089e8;
	TodoReturn layerKey(int) = android32 0x4089d0;
	TodoReturn nextPosition(int) = android32 0x4087c8;
	TodoReturn objectKey(int) = android32 0x40892c;
	TodoReturn objectsForPage(int) = android32 0x408944;
	TodoReturn offsetToNextPage() = android32 0x40873e;
	void onClose(cocos2d::CCObject* sender) = android32 0x407b30;
	void onFMODDebug(cocos2d::CCObject* sender) = android32 0x407aa4;
	void onGPSignIn(cocos2d::CCObject* sender) = android32 0x409ea4;
	void onGPSignOut(cocos2d::CCObject* sender) = android32 0x409ec0;
	void onInfo(cocos2d::CCObject* sender) = android32 0x408d40;
	void onKeybindings(cocos2d::CCObject* sender) = android32 0x409e54;
	void onNextPage(cocos2d::CCObject* sender) = android32 0x409e40;
	void onParental(cocos2d::CCObject* sender) = android32 0x40c05c;
	void onPrevPage(cocos2d::CCObject* sender) = android32 0x409e4a;
	void onSongBrowser(cocos2d::CCObject* sender) = android32 0x407a6e;
	void onToggle(cocos2d::CCObject* sender) = android32 0x408098;
	TodoReturn pageKey(int) = android32 0x40875c;
	TodoReturn toggleGP() = android32 0x409e66;

	virtual bool init() = android32 0x408ffc;
	virtual void keyBackClicked() = android32 0x407b9e = android32 0x407b98;
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float) = android32 0x407bf8 = android32 0x407ba8;
	virtual TodoReturn textInputReturn(CCTextInputNode*) = android32 0x407c4c = android32 0x407c00;
	virtual TodoReturn googlePlaySignedIn() = android32 0x409f06 = android32 0x409f02;
	virtual TodoReturn dropDownLayerWillClose(GJDropDownLayer*) = android32 0x4074b6 = android32 0x4074a8;
}

[[link(android)]]
class MoreSearchLayer : FLAlertLayer, TextInputDelegate {
	// virtual ~MoreSearchLayer();

	static MoreSearchLayer* create() = android32 0x3996c0;

	TodoReturn audioNext(cocos2d::CCObject*) = android32 0x39990c;
	TodoReturn audioPrevious(cocos2d::CCObject*) = android32 0x399934;
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = android32 0x399b88;
	void onClose(cocos2d::CCObject* sender) = android32 0x396a30;
	void onCoins(cocos2d::CCObject* sender) = android32 0x396730;
	void onCompleted(cocos2d::CCObject* sender) = android32 0x3965d0;
	void onEpic(cocos2d::CCObject* sender) = android32 0x396628;
	void onFeatured(cocos2d::CCObject* sender) = android32 0x3965fc;
	void onFollowed(cocos2d::CCObject* sender) = android32 0x3997a0;
	void onFriends(cocos2d::CCObject* sender) = android32 0x3997cc;
	void onInfo(cocos2d::CCObject* sender) = android32 0x3964c4;
	void onLegendary(cocos2d::CCObject* sender) = android32 0x396654;
	void onMythic(cocos2d::CCObject* sender) = android32 0x396680;
	void onNoStar(cocos2d::CCObject* sender) = android32 0x396704;
	void onOriginal(cocos2d::CCObject* sender) = android32 0x3966ac;
	void onSongFilter(cocos2d::CCObject* sender) = android32 0x3999f8;
	void onSongMode(cocos2d::CCObject* sender) = android32 0x399a80;
	void onTwoPlayer(cocos2d::CCObject* sender) = android32 0x3966d8;
	void onUncompleted(cocos2d::CCObject* sender) = android32 0x3965a4;
	TodoReturn selectSong(int) = android32 0x3998dc;
	TodoReturn toggleSongNodes(bool, bool) = android32 0x39995c;
	TodoReturn updateAudioLabel() = android32 0x3997f8;

	virtual bool init() = android32 0x399d40;
	virtual void keyBackClicked() = android32 0x396ace = android32 0x396ac8;
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float) = android32 0x3969d4 = android32 0x396984;
	virtual TodoReturn textInputReturn(CCTextInputNode*) = android32 0x396a28 = android32 0x3969dc;

	cocos2d::CCLabelBMFont* m_audioTrackName;
	CCMenuItemSpriteExtra* m_songLeftBtn;
	CCMenuItemSpriteExtra* m_songRightBtn;
	CCMenuItemSpriteExtra* m_normalBtn;
	CCMenuItemSpriteExtra* m_customBtn;
	CCTextInputNode* m_enterSongID;
}

[[link(android)]]
class MoreVideoOptionsLayer : FLAlertLayer, TextInputDelegate {
	// virtual ~MoreVideoOptionsLayer();

	static MoreVideoOptionsLayer* create() = android32 0x40aee8;

	TodoReturn addToggle(char const*, char const*, char const*) = android32 0x40b2e0;
	TodoReturn countForPage(int) = android32 0x40afb8;
	TodoReturn goToPage(int) = android32 0x40b628;
	TodoReturn incrementCountForPage(int) = android32 0x40b100;
	TodoReturn infoKey(int) = android32 0x40b2c8;
	TodoReturn layerForPage(int) = android32 0x40b22c;
	TodoReturn layerKey(int) = android32 0x40b214;
	TodoReturn nextPosition(int) = android32 0x40b00c;
	TodoReturn objectKey(int) = android32 0x40b170;
	TodoReturn objectsForPage(int) = android32 0x40b188;
	void onApplyFPS(cocos2d::CCObject* sender) = android32 0x40bea4;
	void onClose(cocos2d::CCObject* sender) = android32 0x406c54;
	void onInfo(cocos2d::CCObject* sender) = android32 0x40b584;
	void onNextPage(cocos2d::CCObject* sender) = android32 0x40bb84;
	void onPrevPage(cocos2d::CCObject* sender) = android32 0x40bb8e;
	void onToggle(cocos2d::CCObject* sender) = android32 0x40bbe8;
	TodoReturn pageKey(int) = android32 0x40afa0;
	TodoReturn updateFPSButtons() = android32 0x40bb98;

	virtual bool init() = android32 0x40b7d4;
	virtual void keyBackClicked() = android32 0x406c8a = android32 0x406c84;
}

[[link(android)]]
class MPLobbyLayer : cocos2d::CCLayer, GJMPDelegate, UploadPopupDelegate, UploadActionDelegate, FLAlertLayerProtocol, TextInputDelegate {
	// virtual ~MPLobbyLayer();

	static MPLobbyLayer* create(int) = android32 0x5128b0;

	bool init(int) = android32 0x5128ac;
	void onBack(cocos2d::CCObject* sender) = android32 0x512d9a;
	void onBtn1(cocos2d::CCObject* sender) = android32 0x512bc8;
	void onBtn2(cocos2d::CCObject* sender) = android32 0x512c70;
	void onBtn3(cocos2d::CCObject* sender) = android32 0x512c72;
	void onComment(cocos2d::CCObject* sender) = android32 0x512c74;
	TodoReturn onUpdateLobby() = android32 0x512890;
	TodoReturn postComment() = android32 0x512cf8;
	static cocos2d::CCScene* scene(int) = android32 0x512974;
	TodoReturn tryExitLobby() = android32 0x512ee0;
	TodoReturn updateLobby(float) = android32 0x51299c;

	virtual void keyBackClicked() = android32 0x512dcc = android32 0x512dc6;
	virtual void keyDown(cocos2d::enumKeyCodes) = android32 0x512d92 = android32 0x512d88;
	virtual TodoReturn joinLobbyFinished(int) = android32 0x512bc0 = android32 0x512a18;
	virtual TodoReturn joinLobbyFailed(int, GJMPErrorCode) = android32 0x512a10 = android32 0x5129dc;
	virtual TodoReturn updateComments() = android32 0x5127e6 = android32 0x512766;
	virtual TodoReturn didUploadMPComment(int) = android32 0x512662 = android32 0x512658;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = android32 0x51266c = android32 0x51266a;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x512676 = android32 0x512674;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x512680 = android32 0x51267e;
	virtual void keyUp(cocos2d::enumKeyCodes) = android32 0x51268a = android32 0x512688;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x512f96 = android32 0x512f78;
	virtual TodoReturn uploadActionFinished(int, int) = android32 0x512ed8 = android32 0x512e1c;
	virtual TodoReturn uploadActionFailed(int, int) = android32 0x512888 = android32 0x5127f0;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = android32 0x512e12 = android32 0x512dd4;
}

[[link(android)]]
class MultilineBitmapFont : cocos2d::CCSprite {
	// virtual ~MultilineBitmapFont();

	TodoReturn createWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int, bool) = android32 0x2e4f78;
	TodoReturn initWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int, bool) = android32 0x2e4a58;
	TodoReturn moveSpecialDescriptors(int, int) = android32 0x2e432e;
	TodoReturn readColorInfo(gd::string) = android32 0x2e4674;
	TodoReturn stringWithMaxWidth(gd::string, float, float) = android32 0x2e4374;

	virtual void setOpacity(unsigned char) = android32 0x2e50c0 = android32 0x2e5088;
}

[[link(android)]]
class MultiplayerLayer : cocos2d::CCLayer {
	// virtual ~MultiplayerLayer();

	static MultiplayerLayer* create() = android32 0x5067bc;

	void onBack(cocos2d::CCObject* sender) = android32 0x5068b0;
	void onBtn1(cocos2d::CCObject* sender) = android32 0x506852;
	void onBtn2(cocos2d::CCObject* sender) = android32 0x506880;
	static cocos2d::CCScene* scene() = android32 0x506830;

	virtual bool init() = android32 0x5068ea;
	virtual void keyBackClicked() = android32 0x5068e2 = android32 0x5068dc;
}

[[link(android)]]
class MultiTriggerPopup : SetupTriggerPopup {
	// virtual ~MultiTriggerPopup();

	static MultiTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x5561bc;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x556060;
}

[[link(android)]]
class MusicArtistObject : cocos2d::CCObject {
	// virtual ~MusicArtistObject();

	static MusicArtistObject* create(int, gd::string, gd::string, gd::string) = android32 0x43c334;

	bool init(int, gd::string, gd::string, gd::string) = android32 0x43c30c;
}

[[link(android)]]
class MusicBrowser : FLAlertLayer, MusicDownloadDelegate, TableViewCellDelegate, SetTextPopupDelegate, FLAlertLayerProtocol, SliderDelegate {
	// virtual ~MusicBrowser();

	static MusicBrowser* create(int) = android32 0x55f114;

	bool init(int) = android32 0x55f0f8;
	void onArtistFilters(cocos2d::CCObject* sender) = android32 0x55f71c;
	void onClearSearch(cocos2d::CCObject* sender) = android32 0x55f2d8;
	void onClose(cocos2d::CCObject* sender) = android32 0x55de50;
	void onPage(cocos2d::CCObject* sender) = android32 0x55f26c;
	void onPlaybackControl(cocos2d::CCObject* sender) = android32 0x55e164;
	void onSearch(cocos2d::CCObject* sender) = android32 0x55df20;
	void onTagFilters(cocos2d::CCObject* sender) = android32 0x55f6e8;
	void onUpdateLibrary(cocos2d::CCObject* sender) = android32 0x55e1e4;
	TodoReturn setupList(MusicSearchResult*) = android32 0x55e4f0;
	TodoReturn setupSongControls() = android32 0x55e21c;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x55dda4;
	TodoReturn trySetupMusicBrowser() = android32 0x55e874;
	TodoReturn updatePageLabel() = android32 0x55e444;

	virtual void update(float) = android32 0x55e084;
	virtual void registerWithTouchDispatcher() = android32 0x55e014;
	virtual void keyBackClicked() = android32 0x55deae = android32 0x55dea8;
	virtual TodoReturn musicActionFinished(GJMusicAction) = android32 0x55f264 = android32 0x55f24c;
	virtual TodoReturn musicActionFailed(GJMusicAction) = android32 0x55de48 = android32 0x55ddac;
	virtual TodoReturn sliderEnded(Slider*) = android32 0x55e1dc = android32 0x55e182;
	virtual void setTextPopupClosed(SetTextPopup*, gd::string) = android32 0x55f33a = android32 0x55f30c;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = android32 0x55e07c = android32 0x55e05c;
	virtual TodoReturn getSelectedCellIdx() = android32 0x55dc5a = android32 0x55dc54;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x55f372 = android32 0x55f342;
}

[[link(android)]]
class MusicBrowserDelegate {
	virtual void musicBrowserClosed(MusicBrowser*) {}
}

[[link(android)]]
class MusicDelegateHandler : cocos2d::CCNode {
	// virtual ~MusicDelegateHandler();

	static MusicDelegateHandler* create(MusicDownloadDelegate*) = android32 0x43ae50;

	bool init(MusicDownloadDelegate*) = android32 0x43ae3c;
}

[[link(android)]]
class MusicDownloadDelegate {
	virtual void loadSongInfoFinished(SongInfoObject*) {}
	virtual void loadSongInfoFailed(int, GJSongError) {}
	virtual void downloadSongFinished(int) {}
	virtual void downloadSongFailed(int, GJSongError) {}
	virtual void songStateChanged() {}
	virtual void downloadSFXFinished(int) {}
	virtual void downloadSFXFailed(int, GJSongError) {}
	virtual void musicActionFinished(GJMusicAction) {}
	virtual void musicActionFailed(GJMusicAction) {}
}

[[link(android)]]
class MusicDownloadManager : cocos2d::CCNode, PlatformDownloadDelegate {
	// virtual ~MusicDownloadManager();

	static MusicDownloadManager* sharedState() = android32 0x43dde0;

	TodoReturn addDLToActive(char const*, cocos2d::CCObject*) = android32 0x43b150;
	TodoReturn addDLToActive(char const*) = android32 0x43b19c;
	TodoReturn addMusicDownloadDelegate(MusicDownloadDelegate*) = android32 0x43af54;
	TodoReturn addSongObjectFromString(gd::string) = android32 0x43e66c;
	TodoReturn clearSong(int) = android32 0x43b0f8;
	TodoReturn clearUnusedSongs() = android32 0x43cbc0;
	void createSongsInfo(gd::string) = android32 0x43e9c8;
	void dataLoaded(DS_Dictionary*) = android32 0x43b444;
	void deleteSFX(int) = android32 0x43c738;
	void deleteSong(int) = android32 0x43c94c;
	void downloadCustomSong(int) = android32 0x43cc8c;
	void downloadMusicLibrary() = android32 0x43cec4;
	void downloadSFX(int) = android32 0x43d04c;
	void downloadSFXFailed(int, GJSongError) = android32 0x43bda8;
	void downloadSFXFinished(int) = android32 0x43bd78;
	void downloadSFXLibrary() = android32 0x43d288;
	void downloadSong(int) = android32 0x43df4c;
	void downloadSongFailed(int, GJSongError) = android32 0x43bd44;
	void downloadSongFinished(int) = android32 0x43bd14;
	void encodeDataTo(DS_Dictionary*) = android32 0x43b404;
	TodoReturn filterMusicByArtistID(int, cocos2d::CCArray*) = android32 0x43b8c8;
	TodoReturn filterMusicByTag(int, cocos2d::CCArray*) = android32 0x43beee;
	void firstSetup() = android32 0x43b3ce;
	TodoReturn generateCustomContentURL(gd::string) = android32 0x43b9a8;
	TodoReturn generateResourceAssetList() = android32 0x43fc5c;
	TodoReturn getAllMusicArtists(OptionsObjectDelegate*) = android32 0x43b810;
	TodoReturn getAllMusicObjects() = android32 0x43b728;
	TodoReturn getAllMusicTags(OptionsObjectDelegate*) = android32 0x43b770;
	TodoReturn getAllSFXObjects(bool) = android32 0x43b95a;
	TodoReturn getAllSongs() = android32 0x43b0b8;
	TodoReturn getCustomContentURL() = android32 0x43d668;
	TodoReturn getDLObject(char const*) = android32 0x43b1b4;
	TodoReturn getDownloadedSongs() = android32 0x43ca10;
	TodoReturn getDownloadProgress(int) = android32 0x43b288;
	TodoReturn getMusicArtistForID(int) = android32 0x43b67c;
	TodoReturn getMusicObject(int) = android32 0x43b688;
	TodoReturn getSFXDownloadKey(int) = android32 0x43b2f4;
	TodoReturn getSFXDownloadProgress(int) = android32 0x43b30c;
	TodoReturn getSFXFolderObjectForID(int) = android32 0x43e0b8;
	TodoReturn getSFXFolderPathForID(int, bool) = android32 0x43e0f0;
	TodoReturn getSFXObject(int) = android32 0x43b94e;
	TodoReturn getSongDownloadKey(int) = android32 0x43b270;
	void getSongInfo(int, bool) = android32 0x43d4fc;
	TodoReturn getSongInfoKey(int) = android32 0x43b258;
	SongInfoObject* getSongInfoObject(int) = android32 0x43b694;
	TodoReturn getSongPriority() = android32 0x43b3c0;
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType) = android32 0x43e810;
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType) = android32 0x43aea4;
	TodoReturn handleItND(cocos2d::CCNode*, void*) = android32 0x43e94c;
	TodoReturn incrementPriorityForSong(int) = android32 0x43b710;
	bool isDLActive(char const*) = android32 0x43b200;
	bool isMusicLibraryLoaded() = android32 0x43b65c;
	bool isResourceSFX(int) = android32 0x43c534;
	bool isResourceSong(int) = android32 0x43c7fc;
	bool isRunningActionForSongID(int) = android32 0x43b2a4;
	bool isSFXDownloaded(int) = android32 0x43c77c;
	bool isSFXLibraryLoaded() = android32 0x43b906;
	bool isSongDownloaded(int) = android32 0x43c990;
	TodoReturn limitDownloadedSongs() = android32 0x43ca80;
	TodoReturn loadSongInfoFailed(int, GJSongError) = android32 0x43bce0;
	TodoReturn loadSongInfoFinished(SongInfoObject*) = android32 0x43bcb0;
	TodoReturn musicActionFailed(GJMusicAction) = android32 0x43be0c;
	TodoReturn musicActionFinished(GJMusicAction) = android32 0x43bddc;
	TodoReturn nameForTagID(int) = android32 0x43f1ac;
	TodoReturn onDownloadMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = android32 0x43f924;
	TodoReturn onDownloadSFXCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = android32 0x43c680;
	TodoReturn onDownloadSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = android32 0x43db54;
	TodoReturn onDownloadSongCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = android32 0x43cacc;
	TodoReturn onGetCustomContentURLCompleted(gd::string, gd::string) = android32 0x43be3c;
	void onGetSongInfoCompleted(gd::string, gd::string) = android32 0x43e734;
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = android32 0x43e8bc;
	TodoReturn onTryUpdateMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = android32 0x43cfd0;
	TodoReturn onTryUpdateSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = android32 0x43d394;
	TodoReturn parseMusicLibrary() = android32 0x43f324;
	TodoReturn parseSFXLibrary() = android32 0x43d7dc;
	gd::string pathForSFX(int) = android32 0x43c60c;
	TodoReturn pathForSFXFolder(int) = android32 0x43c548;
	gd::string pathForSong(int) = android32 0x43c8d4;
	TodoReturn pathForSongFolder(int) = android32 0x43c810;
	TodoReturn ProcessHttpGetRequest(gd::string, gd::string, cocos2d::extension::SEL_HttpResponse, int, int) = android32 0x43cc1a;
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType) = android32 0x43d410;
	TodoReturn removeDLFromActive(char const*) = android32 0x43b210;
	TodoReturn removeMusicDownloadDelegate(MusicDownloadDelegate*) = android32 0x43af94;
	cocos2d::CCDictionary* responseToDict(gd::string, char const*) = android32 0x43affc;
	TodoReturn showTOS(FLAlertLayerProtocol*) = android32 0x43b328;
	TodoReturn songStateChanged() = android32 0x43afd0;
	TodoReturn stopDownload(int) = android32 0x43b2ce;
	TodoReturn storeMusicObject(SongInfoObject*) = android32 0x43b670;
	TodoReturn storeSFXInfoObject(SFXInfoObject*) = android32 0x43b91a;
	TodoReturn tryLoadLibraries() = android32 0x43f9dc;
	TodoReturn tryUpdateMusicLibrary() = android32 0x43cdb8;
	TodoReturn tryUpdateSFXLibrary() = android32 0x43d17c;

	virtual bool init() = android32 0x43fc98;

	cocos2d::CCDictionary* m_activeDownloads;
	cocos2d::CCArray* m_musicDownloadDelegates;
	cocos2d::CCDictionary* m_songObjects;
	cocos2d::CCDictionary* m_MDLM003;
	int m_songPriority;
	gd::string m_customContentURL;
	cocos2d::CCDictionary* m_sfxObjects;
	cocos2d::CCArray* m_sfxArtists;
	int m_sfxLibraryVersion;
	int m_sfxObjectCount;
	bool m_requestedSfxLibraryDownloaded;
	cocos2d::CCDictionary* m_musicObjects;
	cocos2d::CCDictionary* m_musicArtists;
	gd::map<int, gd::string> m_musicTags;
	int m_musicLibraryVersion;
	int m_musicObjectCount;
	bool m_requestedMusicLibraryDownloaded;
	bool m_triedToLoadLibraries;
	bool m_unkBool;
	gd::unordered_set<int> m_resourceSfxUnorderedSet;
	gd::unordered_set<int> m_resourceSongUnorderedSet;
}

[[link(android)]]
class MusicSearchResult : cocos2d::CCObject, OptionsObjectDelegate {
	// virtual ~MusicSearchResult();

	static MusicSearchResult* create() = android32 0x43c170;

	TodoReturn applyArtistFilters(cocos2d::CCArray*) = android32 0x43edf8;
	TodoReturn applyTagFilters(cocos2d::CCArray*) = android32 0x43ed9c;
	TodoReturn createArtistFilterObjects() = android32 0x43ed6e;
	TodoReturn createTagFilterObjects() = android32 0x43ed40;
	TodoReturn getFilesMatchingSearch(cocos2d::CCArray*, gd::string) = android32 0x43c1e8;
	bool init() = android32 0x43c16c;
	TodoReturn updateFutureCount(cocos2d::CCArray*, cocos2d::CCArray*) = android32 0x43ee98;
	TodoReturn updateObjects() = android32 0x43c1e0;

	virtual TodoReturn updateObjects(AudioSortType) = android32 0x43ef40;
	virtual TodoReturn stateChanged(OptionsObject*) = android32 0x43a17a = android32 0x43a172;
}

[[link(android)]]
class NewgroundsInfoLayer : FLAlertLayer, FLAlertLayerProtocol {
	// virtual ~NewgroundsInfoLayer();

	static NewgroundsInfoLayer* create() = android32 0x44229c;

	void onArtists(cocos2d::CCObject* sender) = android32 0x4407b4;
	void onChanges(cocos2d::CCObject* sender) = android32 0x4403a4;
	void onClose(cocos2d::CCObject* sender) = android32 0x4400dc;
	void onGuidelines(cocos2d::CCObject* sender) = android32 0x44079c;
	void onInfo(cocos2d::CCObject* sender) = android32 0x440330;
	void onNewgrounds(cocos2d::CCObject* sender) = android32 0x44076c;
	void onSupporter(cocos2d::CCObject* sender) = android32 0x440784;

	virtual bool init() = android32 0x44092c;
	virtual void keyBackClicked() = android32 0x440100 = android32 0x4400fa;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x440fe0 = android32 0x440fc4;
}

[[link(android)]]
class NodePoint : cocos2d::CCObject {
	// virtual ~NodePoint();

	static NodePoint* create(cocos2d::CCPoint) = android32 0x35ccac;

	bool init(cocos2d::CCPoint) = android32 0x35cca0;
}

[[link(android)]]
class NumberInputDelegate {
	virtual void numberInputClosed(NumberInputLayer*) {}
}

[[link(android)]]
class NumberInputLayer : FLAlertLayer {
	// virtual ~NumberInputLayer();

	static NumberInputLayer* create() = android32 0x438468;

	TodoReturn deleteLast() = android32 0x4389cc;
	TodoReturn inputNumber(int) = android32 0x438990;
	void onClose(cocos2d::CCObject* sender) = android32 0x438398;
	void onDone(cocos2d::CCObject* sender) = android32 0x438a2c;
	void onNumber(cocos2d::CCObject* sender) = android32 0x438a4a;
	TodoReturn updateNumberState() = android32 0x438550;

	virtual bool init() = android32 0x4385cc;
	virtual void registerWithTouchDispatcher() = android32 0x438446;
	virtual void keyBackClicked() = android32 0x4383bc = android32 0x4383b6;
}

[[link(android)]]
class OBB2D : cocos2d::CCNode {
	// virtual ~OBB2D();

	static OBB2D* create(cocos2d::CCPoint, float, float, float) = android32 0x2e5db8;

	TodoReturn calculateWithCenter(cocos2d::CCPoint, float, float, float) = android32 0x2e5c30;
	TodoReturn computeAxes() = android32 0x2e59e8;
	TodoReturn getBoundingRect() = android32 0x2e5f48;
	bool init(cocos2d::CCPoint, float, float, float) = android32 0x2e5d64;
	TodoReturn orderCorners() = android32 0x2e5aa4;
	TodoReturn overlaps(OBB2D*) = android32 0x2e5f2c;
	TodoReturn overlaps1Way(OBB2D*) = android32 0x2e5e94;
}

[[link(android)]]
class ObjectControlGameObject : EffectGameObject {
	// virtual ~ObjectControlGameObject();

	static ObjectControlGameObject* create() = android32 0x3d4694;

	virtual bool init() = android32 0x3d0da8;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3d0fe2;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e52b4;
}

[[link(android)]]
class ObjectDecoder {
	// virtual ~ObjectDecoder();

	static ObjectDecoder* sharedDecoder() = android32 0x5e25f8;

	TodoReturn getDecodedObject(int, DS_Dictionary*) = android32 0x5e263c;

	virtual bool init() = android32 0x5e264a;
}

[[link(android)]]
class ObjectDecoderDelegate {
	virtual TodoReturn getDecodedObject(int, DS_Dictionary*);
}

[[link(android)]]
class ObjectManager : cocos2d::CCNode {
	// virtual ~ObjectManager();

	TodoReturn animLoaded(char const*) = android32 0x2e5968;
	TodoReturn getDefinition(char const*) = android32 0x2e58c4;
	TodoReturn getGlobalAnimCopy(char const*) = android32 0x2e528c;
	TodoReturn instance() = android32 0x2e5118;
	TodoReturn loadCopiedAnimations() = android32 0x2e5304;
	TodoReturn loadCopiedSets() = android32 0x2e5740;
	TodoReturn purgeObjectManager() = android32 0x2e5174;
	TodoReturn replaceAllOccurencesOfString(cocos2d::CCString*, cocos2d::CCString*, cocos2d::CCDictionary*) = android32 0x2e5454;
	void setLoaded(char const*) = android32 0x2e5910;
	TodoReturn setup() = android32 0x2e518c;

	virtual bool init() = android32 0x2e5890;
}

[[link(android)]]
class ObjectToolbox : cocos2d::CCNode {
	// virtual ~ObjectToolbox();

	static ObjectToolbox* sharedState() = android32 0x41b424;

	TodoReturn allKeys() = android32 0x41b494;
	float gridNodeSizeForKey(int) = android32 0x41b498;
	const char* intKeyToFrame(int) = android32 0x436780;
	TodoReturn perspectiveBlockFrame(int) = android32 0x41b810;

	virtual bool init() = android32 0x43682c;
}

[[link(android)]]
class OnlineListDelegate {
	virtual void loadListFinished(cocos2d::CCArray*, char const*) {}
	virtual void loadListFailed(char const*) {}
	virtual void setupPageInfo(gd::string, char const*) {}
}

[[link(android)]]
class OpacityEffectAction {
	TodoReturn step(float) = android32 0x479e9c;
}

[[link(android)]]
class OptionsCell : TableViewCell {
	// virtual ~OptionsCell();
	OptionsCell(char const*, float, float);

	TodoReturn loadFromObject(OptionsObject*) = android32 0x327704;
	void onToggleOption(cocos2d::CCObject* sender) = android32 0x3216b8;
	TodoReturn updateBGColor(int) = android32 0x327978;
}

[[link(android)]]
class OptionsLayer : GJDropDownLayer, FLAlertLayerProtocol {
	// virtual ~OptionsLayer();

	static OptionsLayer* create() = android32 0x4082e8;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = android32 0x40840c;
	TodoReturn exitLayer() = android32 0x4085de;
	TodoReturn musicSliderChanged(cocos2d::CCObject*) = android32 0x408028;
	void onAccount(cocos2d::CCObject* sender) = android32 0x4085f8;
	void onHelp(cocos2d::CCObject* sender) = android32 0x40776c;
	void onMenuMusic(cocos2d::CCObject* sender) = android32 0x407ffc;
	void onOptions(cocos2d::CCObject* sender) = android32 0x40872c;
	void onProgressBar(cocos2d::CCObject* sender) = android32 0x4085c4;
	void onRate(cocos2d::CCObject* sender) = android32 0x4076e4;
	void onRecordReplays(cocos2d::CCObject* sender) = android32 0x408604;
	void onSecretVault(cocos2d::CCObject* sender) = android32 0x407504;
	void onSoundtracks(cocos2d::CCObject* sender) = android32 0x4085e4;
	void onSupport(cocos2d::CCObject* sender) = android32 0x4085ee;
	void onVideo(cocos2d::CCObject* sender) = android32 0x409fac;
	TodoReturn sfxSliderChanged(cocos2d::CCObject*) = android32 0x4074c0;
	TodoReturn tryEnableRecord() = android32 0x4076f4;

	virtual TodoReturn customSetup() = android32 0x406d40;
	virtual TodoReturn layerHidden() = android32 0x40777e;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x406c3e = android32 0x406c3c;
}

[[link(android)]]
class OptionsObject : cocos2d::CCObject {
	// virtual ~OptionsObject();

	static OptionsObject* create(int, bool, gd::string, OptionsObjectDelegate*) = android32 0x492f68;

	bool init(int, bool, gd::string, OptionsObjectDelegate*) = android32 0x492f4c;
	TodoReturn toggleState() = android32 0x493014;
}

[[link(android)]]
class OptionsObjectDelegate {
	virtual TodoReturn stateChanged(OptionsObject*);
}

[[link(android)]]
class OptionsScrollLayer : FLAlertLayer, TableViewCellDelegate {
	// virtual ~OptionsScrollLayer();

	static OptionsScrollLayer* create(cocos2d::CCArray*, bool) = android32 0x55f608;

	TodoReturn getRelevantObjects(cocos2d::CCArray*) = android32 0x55f37a;
	bool init(cocos2d::CCArray*, bool) = android32 0x55f4e4;
	void onClose(cocos2d::CCObject* sender) = android32 0x55deb6;
	TodoReturn setupList(cocos2d::CCArray*) = android32 0x55f3bc;

	virtual void registerWithTouchDispatcher() = android32 0x55e038;
	virtual void keyBackClicked() = android32 0x55df16 = android32 0x55df10;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = android32 0x55f77e = android32 0x55f750;
}

[[link(android)]]
class ParentalOptionsLayer : FLAlertLayer {
	// virtual ~ParentalOptionsLayer();

	static ParentalOptionsLayer* create() = android32 0x40bfc8;

	TodoReturn addToggle(char const*, char const*, char const*) = android32 0x40c3b0;
	TodoReturn countForPage(int) = android32 0x40c088;
	TodoReturn goToPage(int) = android32 0x40c6f8;
	TodoReturn incrementCountForPage(int) = android32 0x40c1d0;
	TodoReturn infoKey(int) = android32 0x40c398;
	TodoReturn layerForPage(int) = android32 0x40c2fc;
	TodoReturn layerKey(int) = android32 0x40c2e4;
	TodoReturn nextPosition(int) = android32 0x40c0dc;
	TodoReturn objectKey(int) = android32 0x40c240;
	TodoReturn objectsForPage(int) = android32 0x40c258;
	void onClose(cocos2d::CCObject* sender) = android32 0x406c92;
	void onInfo(cocos2d::CCObject* sender) = android32 0x40c654;
	void onNextPage(cocos2d::CCObject* sender) = android32 0x40cbfc;
	void onPrevPage(cocos2d::CCObject* sender) = android32 0x40cc06;
	void onToggle(cocos2d::CCObject* sender) = android32 0x407a3a;
	TodoReturn pageKey(int) = android32 0x40c070;

	virtual bool init() = android32 0x40c8a4;
	virtual void keyBackClicked() = android32 0x406cb6 = android32 0x406cb0;
}

[[link(android)]]
class ParticleGameObject : EnhancedGameObject {
	// virtual ~ParticleGameObject();

	static ParticleGameObject* create() = android32 0x3cf01c;

	TodoReturn applyParticleSettings(cocos2d::CCParticleSystemQuad*) = android32 0x3cf518;
	TodoReturn createAndAddCustomParticle() = android32 0x3cf200;
	TodoReturn createParticlePreviewArt() = android32 0x3cf2f8;
	void setParticleString(gd::string) = android32 0x3cf1c4;
	void updateParticle() = android32 0x3cf92e;
	TodoReturn updateParticleAngle(float, cocos2d::CCParticleSystemQuad*) = android32 0x3cf428;
	TodoReturn updateParticlePreviewArtOpacity(float) = android32 0x3cf3c4;
	TodoReturn updateParticleScale(float) = android32 0x3cf8ea;
	TodoReturn updateParticleStruct() = android32 0x3cf1e6;

	virtual bool init() = android32 0x3c92a8;
	virtual void setScaleX(float) = android32 0x3cf9d6;
	virtual void setScaleY(float) = android32 0x3cf9f4;
	virtual void setScale(float) = android32 0x3cfa12;
	virtual void setRotation(float) = android32 0x3cf86c;
	virtual void setRotationX(float) = android32 0x3cf896;
	virtual void setRotationY(float) = android32 0x3cf8c0;
	virtual void setChildColor(cocos2d::ccColor3B const&) = android32 0x3c8f48;
	virtual TodoReturn customSetup() = android32 0x3c92c8;
	virtual TodoReturn addMainSpriteToParent(bool) = android32 0x3cc514;
	virtual TodoReturn resetObject() = android32 0x3cd498;
	virtual TodoReturn deactivateObject(bool) = android32 0x3cd3f4;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3cf220;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3d6ab8;
	virtual TodoReturn claimParticle() = android32 0x3cf77c;
	virtual TodoReturn unclaimParticle() = android32 0x3cd508;
	virtual TodoReturn particleWasActivated() = android32 0x3cd418;
	virtual void setObjectColor(cocos2d::ccColor3B const&) = android32 0x3c90e0;
	virtual TodoReturn blendModeChanged() = android32 0x3c8c9a;
	virtual TodoReturn updateParticleColor(cocos2d::ccColor3B const&) = android32 0x3c8c84;
	virtual TodoReturn updateParticleOpacity(unsigned char) = android32 0x3c8c86;
	virtual TodoReturn updateMainParticleOpacity(unsigned char) = android32 0x3c8cbc;
	virtual TodoReturn updateSecondaryParticleOpacity(unsigned char) = android32 0x3c8d04;
	virtual TodoReturn updateSyncedAnimation(float, int) = android32 0x3cc598;
	virtual TodoReturn updateAnimateOnTrigger(bool) = android32 0x3cd4dc;

	// property 145
	gd::string m_particleData;
	bool m_updatedParticleData;
	PAD = android32 0x10f;

	// property 147
	bool m_hasUniformObjectColor;
	PAD = android32 0x7;

	// property 211
	bool m_shouldQuickStart;
	PAD = android32 0xf;
}

[[link(android)]]
class ParticlePreviewLayer : cocos2d::CCLayerColor {
	// virtual ~ParticlePreviewLayer();

	static ParticlePreviewLayer* create(cocos2d::CCParticleSystemQuad*) = android32 0x50fc3c;

	bool init(cocos2d::CCParticleSystemQuad*) = android32 0x50fbd8;
	TodoReturn postVisit() = android32 0x512648;
	TodoReturn preVisitWithClippingRect(cocos2d::CCRect) = android32 0x5125d0;

	virtual void draw() = android32 0x50cee0;
	virtual void visit() = android32 0x50ce18;
}

[[link(android)]]
class PauseLayer : CCBlockLayer {
	// virtual ~PauseLayer();

	static PauseLayer* create(bool) = android32 0x39229c;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = android32 0x39239c;
	TodoReturn goEdit() = android32 0x3921b4;
	bool init(bool) = android32 0x392294;
	TodoReturn musicSliderChanged(cocos2d::CCObject*) = android32 0x39207c;
	void onEdit(cocos2d::CCObject* sender) = android32 0x3921fc;
	void onHelp(cocos2d::CCObject* sender) = android32 0x393450;
	void onNormalMode(cocos2d::CCObject* sender) = android32 0x392126;
	void onPracticeMode(cocos2d::CCObject* sender) = android32 0x392144;
	void onQuit(cocos2d::CCObject* sender) = android32 0x393464;
	void onRecordReplays(cocos2d::CCObject* sender) = android32 0x393430;
	void onReplay(cocos2d::CCObject* sender) = android32 0x392340;
	void onRestart(cocos2d::CCObject* sender) = android32 0x39216c;
	void onRestartFull(cocos2d::CCObject* sender) = android32 0x392190;
	void onResume(cocos2d::CCObject* sender) = android32 0x392104;
	void onSettings(cocos2d::CCObject* sender) = android32 0x39203a;
	void onTime(cocos2d::CCObject* sender) = android32 0x39233c;
	TodoReturn setupProgressBars() = android32 0x3924f4;
	TodoReturn sfxSliderChanged(cocos2d::CCObject*) = android32 0x3920c0;
	TodoReturn tryQuit(cocos2d::CCObject*) = android32 0x3934dc;
	TodoReturn tryShowBanner(float) = android32 0x392054;

	virtual void keyBackClicked() = android32 0x393608 = android32 0x3935f6;
	virtual void keyDown(cocos2d::enumKeyCodes) = android32 0x3935ee = android32 0x393584;
	virtual TodoReturn customSetup() = android32 0x392b78;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x393634 = android32 0x393610;
	virtual void keyUp(cocos2d::enumKeyCodes) = android32 0x391fb4 = android32 0x391fb2;
}

[[link(android)]]
class PlatformDownloadDelegate {
	virtual TodoReturn downloadFinished(char const*);
	virtual TodoReturn downloadFailed(char const*);
}

[[link(android)]]
class PlatformToolbox {
	static TodoReturn activateGameCenter() = android32 0x2b1f2e;
	static TodoReturn copyToClipboard(gd::string) = android32 0x2b25da;
	static TodoReturn doesFileExist(gd::string) = android32 0x2b23e0;
	static TodoReturn downloadAndSavePromoImage(gd::string, gd::string) = android32 0x2b2438;
	static TodoReturn gameDidSave() = android32 0x2b253c;
	static TodoReturn getDeviceRefreshRate() = android32 0x2b25e0;
	static TodoReturn getDisplaySize() = android32 0x2b2544;
	static TodoReturn getRawPath(char const*) = android32 0x2b2588;
	static TodoReturn getUniqueUserID() = android32 0x2b1b5c;
	static TodoReturn getUserID() = android32 0x2b1c20;
	static TodoReturn hideCursor() = android32 0x2b25d2;
	static bool isControllerConnected() {
		//todo: mac
		#ifdef GEODE_IS_WINDOWS
			return cocos2d::CCApplication::sharedApplication()->getControllerConnected();
		#else
			return false;
		#endif
	}
	static bool isHD() = android32 0x2b23dc;
	static bool isLocalPlayerAuthenticated() = android32 0x2b1f30;
	static bool isLowMemoryDevice() = android32 0x2b25d6;
	static bool isNetworkAvailable() = android32 0x2b1c2c;
	static bool isSignedInGooglePlay() = android32 0x2b1f34;
	static TodoReturn loadAndDecryptFileToString(char const*, char const*, gd::string&) = android32 0x2b2304;
	static TodoReturn logEvent(char const*) = android32 0x2b1f2c;
	static TodoReturn onGameLaunch() = android32 0x2b1dd4;
	static TodoReturn onNativePause() = android32 0x2b1c8c;
	static TodoReturn onNativeResume() = android32 0x2b1cdc;
	static TodoReturn onToggleKeyboard() = android32 0x2b1d2c;
	static TodoReturn openAppPage() = android32 0x2b21f0;
	static TodoReturn platformShutdown() = android32 0x2b257c;
	static TodoReturn refreshWindow() = android32 0x2b2542;
	static TodoReturn reportAchievementWithID(char const*, int) = android32 0x2b2034;
	static TodoReturn reportLoadingFinished() = android32 0x2b1edc;
	static TodoReturn resizeWindow(float, float) = android32 0x2b2540;
	static TodoReturn saveAndEncryptStringToFile(gd::string&, char const*, char const*) = android32 0x2b2240;
	static TodoReturn sendMail(char const*, char const*, char const*) = android32 0x2b20f4;
	static void setBlockBackButton(bool) = android32 0x2b1e24;
	static void setKeyboardState(bool) = android32 0x2b1d7c;
	static TodoReturn shouldResumeSound() = android32 0x2b1e7c;
	static TodoReturn showAchievements() = android32 0x2b20a4;
	static TodoReturn showCursor() = android32 0x2b25d4;
	static TodoReturn signInGooglePlay() = android32 0x2b1f94;
	static TodoReturn signOutGooglePlay() = android32 0x2b1fe4;
	static TodoReturn spriteFromSavedFile(gd::string) = android32 0x2b243c;
	static TodoReturn toggleCallGLFinish(bool) = android32 0x2b25c0;
	static TodoReturn toggleCPUSleepMode(bool) = android32 0x2b25bc;
	static TodoReturn toggleForceTimer(bool) = android32 0x2b25c2;
	static TodoReturn toggleFullScreen(bool, bool) = android32 0x2b253e;
	static TodoReturn toggleLockCursor(bool) = android32 0x2b25de;
	static TodoReturn toggleMouseControl(bool) = android32 0x2b2580;
	static TodoReturn toggleSmoothFix(bool) = android32 0x2b25c4;
	static TodoReturn toggleVerticalSync(bool) = android32 0x2b25be;
	static TodoReturn tryShowRateDialog(gd::string) = android32 0x2b2188;
	static TodoReturn updateMouseControl() = android32 0x2b257e;
	static TodoReturn updateWindowedSize(float, float) = android32 0x2b2586;
}

[[link(android)]]
class PlayerCheckpoint : cocos2d::CCNode {
	// virtual ~PlayerCheckpoint();

	static PlayerCheckpoint* create() = android32 0x307498;

	virtual bool init() = android32 0x312860;
}

[[link(android)]]
class PlayerControlGameObject : EffectGameObject {
	// virtual ~PlayerControlGameObject();

	static PlayerControlGameObject* create() = android32 0x3d4628;

	virtual bool init() = android32 0x3d0d9c;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3cbee0;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e5064;
}

[[link(android)]]
class PlayerFireBoostSprite : cocos2d::CCSprite {
	// virtual ~PlayerFireBoostSprite();

	static PlayerFireBoostSprite* create() = android32 0x336ef8;

	TodoReturn animateFireIn() = android32 0x336f5c;
	TodoReturn animateFireOut() = android32 0x336fc4;
	TodoReturn loopFireAnimation() = android32 0x32e060;

	virtual bool init() = android32 0x32df68;
}

[[link(android)]]
class PlayerObject : GameObject, AnimatedSpriteDelegate {
	// virtual ~PlayerObject();

	static PlayerObject* create(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool) = android32 0x342998;

	TodoReturn activateStreak() = android32 0x333a64;
	TodoReturn addAllParticles() = android32 0x32ee88;
	TodoReturn addToTouchedRings(RingObject*) = android32 0x33fbf4;
	TodoReturn addToYVelocity(double, int) = android32 0x32f072;
	TodoReturn animatePlatformerJump(float) = android32 0x331af0;
	TodoReturn boostPlayer(float) = android32 0x333944;
	TodoReturn bumpPlayer(float, int, bool, GameObject*) = android32 0x33d124;
	TodoReturn buttonDown(PlayerButton) = android32 0x32fc64;
	TodoReturn canStickToGround() = android32 0x330d84;
	TodoReturn checkSnapJumpToObject(GameObject*) = android32 0x32fd28;
	TodoReturn collidedWithObject(float, GameObject*, cocos2d::CCRect, bool) = android32 0x33e284;
	TodoReturn collidedWithObject(float, GameObject*) = android32 0x33e2ec;
	TodoReturn collidedWithObjectInternal(float, GameObject*, cocos2d::CCRect, bool) = android32 0x3371f8;
	TodoReturn collidedWithSlope(float, GameObject*, bool) = android32 0x33e394;
	TodoReturn collidedWithSlopeInternal(float, GameObject*, bool) = android32 0x33d1f8;
	TodoReturn convertToClosestRotation(float) = android32 0x330db8;
	TodoReturn copyAttributes(PlayerObject*) = android32 0x33951c;
	TodoReturn createFadeOutDartStreak() = android32 0x32fc70;
	TodoReturn createRobot(int) = ios 0x2217cc, android32 0x32eb3c;
	TodoReturn createSpider(int) = ios 0x221a58, android32 0x32ece0;
	TodoReturn deactivateParticle() = android32 0x32dfe8;
	TodoReturn deactivateStreak(bool) = android32 0x333cb0;
	TodoReturn destroyFromHitHead() = android32 0x331f48;
	TodoReturn didHitHead() = android32 0x3371c4;
	void disableCustomGlowColor() {
		m_hasCustomGlowColor = false;
	}
	TodoReturn disablePlayerControls() = android32 0x33fa08;
	TodoReturn disableSwingFire() = android32 0x33193e;
	TodoReturn doReversePlayer(bool) = android32 0x334272;
	void enableCustomGlowColor(cocos2d::_ccColor3B const& color) {
		m_hasCustomGlowColor = true;
		m_glowColor = color;
	}
	TodoReturn enablePlayerControls() = android32 0x3406e0;
	TodoReturn exitPlatformerAnimateJump() = android32 0x32f1e8;
	TodoReturn fadeOutStreak2(float) = android32 0x333c50;
	TodoReturn flashPlayer(float, float, cocos2d::ccColor3B, cocos2d::ccColor3B) = android32 0x331fc6;
	TodoReturn flipGravity(bool, bool) = android32 0x337034;
	TodoReturn flipMod() = android32 0x32fd16;
	TodoReturn gameEventTriggered(int, int) = android32 0x32fd04;
	TodoReturn getActiveMode() = android32 0x331918;
	TodoReturn getCurrentXVelocity() = android32 0x32f08a;
	TodoReturn getModifiedSlopeYVel() = android32 0x32f4a8;
	TodoReturn getOldPosition(float) = android32 0x32f110;
	cocos2d::ccColor3B getSecondColor() = android32 0x3324e4;
	TodoReturn getYVelocity() = android32 0x32f068;
	TodoReturn gravityDown() = android32 0x336e58;
	TodoReturn gravityUp() = android32 0x336e38;
	TodoReturn handlePlayerCommand(int) = android32 0x32f2a8;
	TodoReturn handleRotatedCollisionInternal(float, GameObject*, cocos2d::CCRect, bool, bool, bool) = android32 0x33e140;
	TodoReturn handleRotatedObjectCollision(float, GameObject*, cocos2d::CCRect, bool) = android32 0x33e234;
	TodoReturn handleRotatedSlopeCollision(float, GameObject*, bool) = android32 0x33e33c;
	TodoReturn hardFlipGravity() = android32 0x33718c;
	TodoReturn hitGround(GameObject*, bool) = android32 0x336048;
	TodoReturn hitGroundNoJump(GameObject*, bool) = android32 0x3364e0;
	TodoReturn incrementJumps() = android32 0x32f1ca;
	bool init(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool) = ios 0x2205f4, android32 0x341c98;
	bool isBoostValid(float) = android32 0x32f450;
	bool isFlying() = android32 0x330d9e;
	bool isInBasicMode() = android32 0x331f2a;
	bool isInNormalMode() = android32 0x331ac4;
	bool isSafeFlip(float) = android32 0x333d58;
	bool isSafeHeadTest() = android32 0x333e08;
	bool isSafeMode(float) = android32 0x333dcc;
	bool isSafeSpiderFlip(float) = android32 0x333d92;
	TodoReturn levelFlipFinished() = android32 0x334220;
	TodoReturn levelFlipping() = android32 0x331998;
	TodoReturn levelWillFlip() = android32 0x333cfc;
	TodoReturn loadFromCheckpoint(PlayerCheckpoint*) = android32 0x3418d0;
	TodoReturn lockPlayer() = android32 0x33f9bc;
	TodoReturn logValues() = android32 0x336e34;
	TodoReturn modeDidChange() = android32 0x331f18;
	TodoReturn performSlideCheck() = android32 0x32f518;
	TodoReturn placeStreakPoint() = android32 0x334104;
	TodoReturn playBumpEffect(int, GameObject*) = android32 0x333580;
	TodoReturn playBurstEffect() = android32 0x331a58;
	TodoReturn playCompleteEffect(bool, bool) = android32 0x54334c;
	TodoReturn playDeathEffect() = android32 0x543d30;
	TodoReturn playDynamicSpiderRun() = android32 0x334b60;
	TodoReturn playerDestroyed(bool) = android32 0x335fb8;
	TodoReturn playerIsFalling(float) = android32 0x330c98;
	TodoReturn playerIsFallingBugged() = android32 0x330cda;
	TodoReturn playerIsMovingUp() = android32 0x330d5a;
	TodoReturn playerTeleported() = android32 0x334b24;
	TodoReturn playingEndEffect() = android32 0x333520;
	TodoReturn playSpawnEffect() = android32 0x32f8e0;
	TodoReturn playSpiderDashEffect(cocos2d::CCPoint, cocos2d::CCPoint) = android32 0x332024;
	TodoReturn postCollision(float) = android32 0x33e3b0;
	TodoReturn preCollision() = android32 0x339e80;
	TodoReturn preSlopeCollision(float, GameObject*) = android32 0x339f64;
	TodoReturn propellPlayer(float, bool, int) = android32 0x333af0;
	TodoReturn pushButton(PlayerButton) = android32 0x340540;
	TodoReturn pushDown() = android32 0x333e38;
	TodoReturn pushPlayer(float) = android32 0x333664;
	TodoReturn redirectDash(float) = android32 0x3343d8;
	TodoReturn redirectPlayerForce(float, float, float, float) = android32 0x3337a0;
	TodoReturn releaseAllButtons() = android32 0x33f994;
	TodoReturn releaseButton(PlayerButton) = android32 0x33f8c0;
	TodoReturn removeAllParticles() = android32 0x32ef56;
	TodoReturn removePendingCheckpoint() = android32 0x336bd6;
	TodoReturn removePlacedCheckpoint() = android32 0x32fc44;
	TodoReturn resetAllParticles() = android32 0x32f170;
	TodoReturn resetCollisionLog(bool) = android32 0x32f2bc;
	TodoReturn resetCollisionValues() = android32 0x32f5ce;
	TodoReturn resetPlayerIcon() = android32 0x333fcc;
	TodoReturn resetStateVariables() = android32 0x3397ac;
	TodoReturn resetStreak() = android32 0x3319b4;
	TodoReturn resetTouchedRings(bool) = android32 0x339756;
	TodoReturn reverseMod() = android32 0x330154;
	TodoReturn reversePlayer(EffectGameObject*) = android32 0x33431c;
	TodoReturn ringJump(RingObject*, bool) = android32 0x33fc40;
	TodoReturn rotateGameplay(int, int, bool, float, float, bool, bool) = android32 0x338638;
	TodoReturn rotateGameplayObject(GameObject*) = android32 0x33a494;
	TodoReturn rotateGameplayOnly(bool) = android32 0x331f10;
	TodoReturn rotatePreSlopeObjects() = android32 0x33a640;
	TodoReturn runBallRotation(float) = android32 0x330164;
	TodoReturn runBallRotation2() = android32 0x330288;
	TodoReturn runNormalRotation() = android32 0x330f4c;
	TodoReturn runNormalRotation(bool, float) = android32 0x330e7c;
	TodoReturn runRotateAction(bool, int) = android32 0x330f56;
	TodoReturn saveToCheckpoint(PlayerCheckpoint*) = android32 0x341720;
	void setSecondColor(cocos2d::ccColor3B const&) = android32 0x331f76;
	TodoReturn setupStreak() = android32 0x3408d4;
	void setYVelocity(double, int) = android32 0x32f010;
	TodoReturn spawnCircle() = android32 0x32e1b8;
	TodoReturn spawnCircle2() = android32 0x32f98c;
	TodoReturn spawnDualCircle() = android32 0x32fb98;
	TodoReturn spawnFromPlayer(PlayerObject*, bool) = android32 0x339660;
	TodoReturn spawnPortalCircle(cocos2d::ccColor3B, float) = android32 0x32f9f8;
	TodoReturn spawnScaleCircle() = android32 0x32fac4;
	TodoReturn specialGroundHit() = android32 0x333e56;
	TodoReturn speedDown() = android32 0x336e98;
	TodoReturn speedUp() = android32 0x336e78;
	TodoReturn spiderTestJump(bool) = android32 0x33b10c;
	TodoReturn spiderTestJumpInternal(bool) = android32 0x33a848;
	TodoReturn spiderTestJumpX(bool) = android32 0x33c85c;
	TodoReturn spiderTestJumpY(bool) = android32 0x33bfa0;
	TodoReturn startDashing(DashRingObject*) = android32 0x334548;
	TodoReturn stopBurstEffect() = android32 0x32e002;
	TodoReturn stopDashing() = android32 0x335b70;
	TodoReturn stopParticles() = android32 0x32f19e;
	TodoReturn stopPlatformerJumpAnimation() = android32 0x32f244;
	TodoReturn stopRotation(bool, int) = android32 0x32f294;
	TodoReturn stopStreak2() = android32 0x333d30;
	TodoReturn storeCollision(PlayerCollisionDirection, int) = android32 0x32f312;
	TodoReturn switchedDirTo(PlayerButton) = android32 0x33f7cc;
	TodoReturn switchedToMode(GameObjectType) = android32 0x3389cc;
	TodoReturn testForMoving(float, GameObject*) = android32 0x32f374;
	TodoReturn toggleBirdMode(bool, bool) = android32 0x338e3c;
	TodoReturn toggleDartMode(bool, bool) = android32 0x339034;
	TodoReturn toggleFlyMode(bool, bool) = android32 0x338c3c;
	TodoReturn toggleGhostEffect(GhostType) = android32 0x333404;
	void togglePlatformerMode(bool val) {
        m_isPlatformer = val;
    }
	TodoReturn togglePlayerScale(bool, bool) = android32 0x336768;
	TodoReturn toggleRobotMode(bool, bool) = android32 0x339320;
	TodoReturn toggleRollMode(bool, bool) = android32 0x339234;
	TodoReturn toggleSpiderMode(bool, bool) = android32 0x338a3c;
	TodoReturn toggleSwingMode(bool, bool) = android32 0x338828;
	TodoReturn toggleVisibility(bool) = android32 0x334170;
	TodoReturn touchedObject(GameObject*) = android32 0x33fa40;
	TodoReturn tryPlaceCheckpoint() = android32 0x336c04;
	TodoReturn unrotateGameplayObject(GameObject*) = android32 0x33a6a4;
	TodoReturn unrotatePreSlopeObjects() = android32 0x33a830;
	TodoReturn updateCheckpointMode(bool) = android32 0x336bd0;
	TodoReturn updateCheckpointTest() = android32 0x336d98;
	TodoReturn updateCollide(PlayerCollisionDirection, GameObject*) = android32 0x330064;
	TodoReturn updateCollideBottom(float, GameObject*) = android32 0x32f614;
	TodoReturn updateCollideLeft(float, GameObject*) = android32 0x32f6bc;
	TodoReturn updateCollideRight(float, GameObject*) = android32 0x32f70c;
	TodoReturn updateCollideTop(float, GameObject*) = android32 0x32f668;
	TodoReturn updateDashAnimation() = android32 0x32f760;
	TodoReturn updateDashArt() = android32 0x331598;
	TodoReturn updateEffects(float) = android32 0x32f108;
	TodoReturn updateGlowColor() = android32 0x332534;
	TodoReturn updateInternalActions(float) = android32 0x3396ee;
	TodoReturn updateJump(float) = android32 0x33b178;
	TodoReturn updateJumpVariables() = android32 0x336e10;
	TodoReturn updateLastGroundObject(GameObject*) = android32 0x32f5f4;
	TodoReturn updateMove(float) = android32 0x334ce0;
	TodoReturn updatePlayerArt() = android32 0x331c6c;
	TodoReturn updatePlayerBirdFrame(int) = android32 0x333264;
	TodoReturn updatePlayerDartFrame(int) = android32 0x332dcc;
	TodoReturn updatePlayerForce(cocos2d::CCPoint, bool) = android32 0x333680;
	TodoReturn updatePlayerFrame(int) = android32 0x3329d0;
	TodoReturn updatePlayerGlow() = android32 0x333ec8;
	TodoReturn updatePlayerJetpackFrame(int) = android32 0x333110;
	void updatePlayerRobotFrame(int id) {
        if (id < 1) id = 1;
        else if (id > 0x43) id = 0x44;

        createRobot(id);
    }
	TodoReturn updatePlayerRollFrame(int) = android32 0x332b2c;
	TodoReturn updatePlayerScale() = android32 0x333e9e;
	TodoReturn updatePlayerShipFrame(int) = android32 0x332fbc;
	void updatePlayerSpiderFrame(int id) {
        if (id < 1) id = 1;
        else if (id > 0x44) id = 0x45;

        createSpider(id);
    }

	TodoReturn updatePlayerSpriteExtra(gd::string) = android32 0x332934;
	TodoReturn updatePlayerSwingFrame(int) = android32 0x332c78;
	TodoReturn updateRobotAnimationSpeed() = android32 0x33650c;
	TodoReturn updateRotation(float, float) = android32 0x3312e0;
	TodoReturn updateRotation(float) = android32 0x331450;
	TodoReturn updateShipRotation(float) = android32 0x330f90;
	TodoReturn updateShipSpriteExtra(gd::string) = android32 0x332f20;
	TodoReturn updateSlopeRotation(float) = android32 0x3313d0;
	TodoReturn updateSlopeYVelocity(float) = android32 0x32f5cc;
	TodoReturn updateSpecial(float) = android32 0x32f0b8;
	TodoReturn updateStateVariables() = android32 0x339b0c;
	TodoReturn updateStaticForce(float, float, bool) = android32 0x3336c8;
	TodoReturn updateStreakBlend(bool) = android32 0x32ef90;
	TodoReturn updateStreaks(float) = android32 0x32effc;
	TodoReturn updateSwingFire() = android32 0x336fec;
	TodoReturn updateTimeMod(float, bool) = android32 0x336a00;
	TodoReturn usingWallLimitedMode() = android32 0x334b48;
	TodoReturn yStartDown() = android32 0x336ed8;
	TodoReturn yStartUp() = android32 0x336eb8;

	virtual void update(float) = android32 0x340b68;
	virtual void setScaleX(float) = android32 0x32de98;
	virtual void setScaleY(float) = android32 0x32de9c;
	virtual void setScale(float) = android32 0x32dea0;
	virtual void setPosition(cocos2d::CCPoint const&) = android32 0x3303a0;
	virtual void setVisible(bool) = android32 0x32dea4;
	virtual void setRotation(float) = android32 0x32deb2;
	virtual void setOpacity(unsigned char) = android32 0x32df5e = android32 0x32deb6;
	virtual void setColor(cocos2d::ccColor3B const&) = android32 0x32e126 = android32 0x32e0d0;
	virtual void setFlipX(bool) = android32 0x32e12e;
	virtual void setFlipY(bool) = android32 0x32dfbc;
	virtual TodoReturn resetObject() = android32 0x33980c;
	virtual cocos2d::CCPoint getRealPosition() = android32 0x32dfd0;
	virtual TodoReturn getOrientedBox() = android32 0x32dd3e;
	virtual TodoReturn getObjectRotation() = android32 0x32dd50;
	virtual TodoReturn animationFinished(char const*) = android32 0x32e4e4 = android32 0x32e348;

	cocos2d::CCNode* m_mainLayer;
	PAD = win 0x44, android32 0x44, android64 0x48;
	cocos2d::CCNode* m_unk4e4;
	cocos2d::CCDictionary* m_unk4e8;
	cocos2d::CCDictionary* m_unk4ec;
	cocos2d::CCDictionary* m_unk4f0;
	cocos2d::CCDictionary* m_unk4f4;
	PAD = win 0x20, android32 0x20, android64 0x20;
	float m_unk518;
	bool m_unk51c;
	bool m_unk51d;
	bool m_unk51e;
	bool m_unk51f;
	PAD = win 0x4, android32 0x4, android64 0x4;
	GameObject* m_collidedObject;
	PAD = win 0x40, android32 0x40, android64 0x50;
	float m_unk568;
	cocos2d::CCSprite* m_unk56c;
	PAD = win 0x4, android32 0x4, android64 0x4;
	GameObject* m_unk574;
	GameObject* m_unk578;
	PAD = win 0x8, android32 0x8, android64 0x0;
	float unk_584;
	int unk_588; // seems to always be 0, but when you respawn it's -1 until you move at least 1 block from the respawn place
	PAD = win 0x4, android32 0x4, android64 0x4;
	cocos2d::CCArray* m_particleSystems;
	gd::unordered_map<int, GJPointDouble> m_unk594; // insertions are in PlayerObject::rotateGameplayObject
	gd::unordered_map<int, GameObject*> m_unk5b4;
	float m_unk5d4;
	float m_rotationSpeed;
	float m_unk5dc;
	bool m_isRotating;
	bool m_unk5e1;
	bool m_hasGlow;
	bool m_isHidden;
	int m_hasGhostTrail;
	GhostTrailEffect* m_ghostTrail;
	cocos2d::CCSprite* m_iconSprite;
	cocos2d::CCSprite* m_iconSpriteSecondary;
	cocos2d::CCSprite* m_iconSpriteWhitener;
	cocos2d::CCSprite* m_iconGlow;
	cocos2d::CCSprite* m_vehicleSprite;
	cocos2d::CCSprite* m_vehicleSpriteSecondary;
	cocos2d::CCSprite* m_unk604;
	cocos2d::CCSprite* m_vehicleSpriteWhitener;
	cocos2d::CCSprite* m_vehicleGlow;
	PlayerFireBoostSprite* m_swingFireMiddle;
	PlayerFireBoostSprite* m_swingFireBottom;
	PlayerFireBoostSprite* m_swingFireTop;
	cocos2d::CCSprite* m_unk61c;
	cocos2d::CCMotionStreak* m_regularTrail;
	PAD = win 0x4, android32 0x4, android64 0x8;
	HardStreak* m_waveTrail;
	float m_unk62c;
	PAD = win 0x14, android32 0x14, android64 0x14;
	float m_unk644;
	float m_unk648;
	PAD = win 0xc, android32 0xc, android64 0xc;
	bool m_unk658;
	bool m_unk659;
	bool m_unk65a;
	bool m_unk65b; // midair ??
	bool m_unk65c; // something to do with spider, when false the spider tp animation does not play
	bool m_unk65d; // walking ???
	bool m_unk65e;
	bool m_unk65f;
	PAD = win 0x28, android32 0x28, android64 0x28;
	float m_unk688;
	float m_unk68c;
	PAD = win 0x12, android32 0x12, android64 0x12;
	bool m_unk6a2; // = GameManager::getGameVariable("0096")
	bool m_unk6a3; // = GameManager::getGameVariable("0100")
	PAD = win 0x18, android32 0x18, android64 0x18;
	gd::unordered_set<int> m_unk6a4;
	GameObject* m_objectSnappedTo;
	int m_unk6c0;
	PAD = win 0x4, android32 0x4, android64 0xc; // android64 unsure
	GJRobotSprite* m_robotSprite;
	GJSpiderSprite* m_spiderSprite;
	PAD = win 0x4, android32 0x4, android64 0x8;
	cocos2d::CCParticleSystemQuad* m_unk6dc;
	cocos2d::CCParticleSystemQuad* m_unk6e0;
	cocos2d::CCParticleSystemQuad* m_unk6e4;
	cocos2d::CCParticleSystemQuad* m_unk6e8;
	cocos2d::CCParticleSystemQuad* m_unk6ec;
	cocos2d::CCParticleSystemQuad* m_unk6f0;
	cocos2d::CCParticleSystemQuad* m_unk6f4;
	cocos2d::CCParticleSystemQuad* m_unk6f8;
	cocos2d::CCParticleSystemQuad* m_unk6fc;
	PAD = win 0x4, android32 0x4, android64 0x4;
	cocos2d::CCParticleSystemQuad* m_unk704;
	cocos2d::CCParticleSystemQuad* m_unk708;
	float m_unk70c;
	float m_unk710;
	PAD = android32 0x60, android64 0x60;
	bool m_hasCustomGlowColor;
	cocos2d::ccColor3B m_glowColor;
	PAD = win 0x1c, android32 0x20, android64 0x20;
	double m_yVelocity;
	bool m_isOnSlope;
	bool m_wasOnSlope;
	PAD = win 0x7, android32 0x7, android64 0x7;
	bool m_isShip;
	bool m_isBird;
	bool m_isBall;
	bool m_isDart;
	bool m_isRobot;
	bool m_isSpider;
	bool m_isUpsideDown;
	bool m_isDead;
	bool m_isOnGround;
	bool m_isGoingLeft;
	bool m_isSideways;
	bool m_isSwing;
	PAD = win 0x10, android32 0x10, android64 0x10;
	float m_unk7c8;
	float m_unk7cc; // unsure if float
	float m_unk7d0;
	bool m_isDashing;
	PAD = win 0x8, android32 0x8, android64 0x8;
	float m_vehicleSize;
	float m_playerSpeed;
	float m_unk7e0;
	float m_unk7e4;
	cocos2d::CCPoint m_unk7e8;
	cocos2d::CCPoint m_unk7f0; // maybe m_lastPortalPos
	bool m_unk7f8;
	PAD = win 0x18, android32 0x18, android64 0x1c;
	cocos2d::CCPoint m_lastGroundedPos;
	cocos2d::CCArray* m_touchingRings;
	gd::unordered_set<int> m_unk828;
	GameObject* m_lastActivatedPortal;
	bool m_unk814;
	bool m_unk815;
	cocos2d::ccColor3B m_playerColor1;
	cocos2d::ccColor3B m_playerColor2;
	cocos2d::CCPoint m_position;
	PAD = win 0x14, android32 0x20, android64 0x20; // android64 unverified
	bool m_gamevar0060; // used in init
	bool m_gamevar0061;
	bool m_gamevar0062;
	PAD = win 0x4, android32 0x4, android64 0x4;
	gd::vector<float> m_unk880;
	float m_unk838;
	PAD = android32 0x18, android64 0x18;
	double m_platformerXVelocity;
	PAD = android32 0x70, android64 0x70;
	bool m_isPlatformer;
	int m_unk8ec;
	int m_unk8f0;
	int m_unk8f4;
	int m_unk8f8;
	float m_gravityMod;
	PAD = win 0x4, android32 0x4, android64 0x4;
	cocos2d::CCPoint m_unk904;
	PAD = win 0x4, android32 0x4, android64 0x4;
	gd::map<int, bool> m_unk910;
	float m_unk918; // increments whenever you're midiar?
	float m_unk91c;
	PAD = win 0x4, android32 0x4, android64 0x4;
	gd::map<int, bool> m_unk924;
	PAD = win 0x4, android32 0x4, android64 0x4;
	gd::string m_unk930; // this is always "run" ???
	bool m_unk948; // = getGameVariable("0123")
	PAD = win 0x3, android32 0x3, android64 0x3;
	int m_iconRequestID;
	cocos2d::CCSpriteBatchNode* m_unk950;
	cocos2d::CCSpriteBatchNode* m_unk954;
	cocos2d::CCArray* m_unk958;
	PlayerFireBoostSprite* m_robotFire;
	PAD = win 0x4, android32 0x4, android64 0x8;
	GJBaseGameLayer* m_gameLayer;
	cocos2d::CCLayer* m_parentLayer;
	GJActionManager* m_actionManager;
	PAD = win 0x4, android32 0x4, android64 0x4;
	float m_unk974;
	bool m_unk978;
	bool m_unk979; // = isItemEnabled(0xc, 0x12);
	bool m_unk97a; // = isItemEnabled(0xc, 0x13);
	bool m_unk97b; // = isItemEnabled(0xc, 0x14);
	PAD = win 0x4, android32 0x4, android64 0x4;
}

[[link(android)]]
class PlayLayer : GJBaseGameLayer, CCCircleWaveDelegate, CurrencyRewardDelegate, DialogDelegate {
	// virtual ~PlayLayer();

	static PlayLayer* create(GJGameLevel*, bool, bool) = android32 0x312148;
	static PlayLayer* get() {
		return GameManager::get()->m_playLayer;
	}

	TodoReturn addCircle(CCCircleWave*) = android32 0x305a60;
	TodoReturn addObject(GameObject*) = android32 0x303c48;
	TodoReturn addToGroupOld(GameObject*) = android32 0x304514;
	TodoReturn applyCustomEnterEffect(GameObject*, bool) = android32 0x30480c;
	TodoReturn applyEnterEffect(GameObject*, int, bool) = android32 0x304f00;
	bool canPauseGame() = android32 0x3070e0;
	TodoReturn checkpointWithID(int) = android32 0x305b22;
	TodoReturn colorObject(int, cocos2d::ccColor3B) = android32 0x3045be;
	TodoReturn commitJumps() = android32 0x306194;
	TodoReturn compareStateSnapshot() = android32 0x305e3a;
	TodoReturn createCheckpoint() = android32 0x30fe6c;
	TodoReturn createObjectsFromSetupFinished() = android32 0x30d428;
	TodoReturn delayedFullReset() = android32 0x305e3c;
	TodoReturn delayedResetLevel() = android32 0x312546;
	TodoReturn fullReset() = android32 0x312670;
	float getCurrentPercent() = android32 0x3055c8;
	int getCurrentPercentInt() = android32 0x3058f4;
	TodoReturn getEndPosition() = android32 0x302404;
	TodoReturn getLastCheckpoint() = android32 0x305b50;
	TodoReturn getRelativeMod(cocos2d::CCPoint, float, float, float) = android32 0x305324;
	TodoReturn getRelativeModNew(cocos2d::CCPoint, float, float, bool, bool) = android32 0x304eb0;
	TodoReturn getTempMilliTime() = android32 0x3045c4;
	TodoReturn gravityEffectFinished() = android32 0x3015d2;
	TodoReturn incrementJumps() = android32 0x306134;
	bool init(GJGameLevel*, bool, bool) = android32 0x311b70;
	bool isGameplayActive() = android32 0x3073b8;
	TodoReturn levelComplete() = android32 0x3061b4;
	TodoReturn loadActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&) = android32 0x305de6;
	TodoReturn loadDefaultColors() = android32 0x30d724;
	TodoReturn loadDynamicSaveObjects(gd::vector<SavedObjectStateRef>&) = android32 0x305b6c;
	TodoReturn loadFromCheckpoint(CheckpointObject*) = android32 0x310454;
	TodoReturn loadLastCheckpoint() = android32 0x3106f4;
	TodoReturn markCheckpoint() = android32 0x31012c;
	TodoReturn onQuit() = android32 0x305f56;
	TodoReturn optimizeColorGroups() = android32 0x308f7c;
	TodoReturn optimizeOpacityGroups() = android32 0x309050;
	TodoReturn pauseGame(bool) = android32 0x3070f8;
	TodoReturn playEndAnimationToPos(cocos2d::CCPoint) = android32 0x3039a8;
	TodoReturn playPlatformerEndAnimationToPos(cocos2d::CCPoint, bool) = android32 0x3067fc;
	TodoReturn playReplay(gd::string) = android32 0x31274c;
	TodoReturn prepareCreateObjectsFromSetup(gd::string&) = android32 0x30d270;
	TodoReturn prepareMusic(bool) = android32 0x3072e0;
	TodoReturn processCreateObjectsFromSetup() = android32 0x3116e8;
	TodoReturn processLoadedMoveActions() = android32 0x307a44;
	TodoReturn queueCheckpoint() = android32 0x305b18;
	TodoReturn removeAllObjects() = android32 0x3073dc;
	TodoReturn removeCheckpoint(bool) = android32 0x3075b4;
	TodoReturn removeFromGroupOld(GameObject*) = android32 0x304586;
	TodoReturn resetLevel() = android32 0x310718;
	TodoReturn resetLevelFromStart() = android32 0x312574;
	TodoReturn resume() = android32 0x3071c0;
	TodoReturn resumeAndRestart(bool) = android32 0x31279c;
	TodoReturn saveActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&) = android32 0x30cdac;
	TodoReturn saveDynamicSaveObjects(gd::vector<SavedObjectStateRef>&) = android32 0x30c660;
	TodoReturn scanActiveSaveObjects() = android32 0x305c5c;
	TodoReturn scanDynamicSaveObjects() = android32 0x309c50;
	static cocos2d::CCScene* scene(GJGameLevel*, bool, bool) = android32 0x312514;
	TodoReturn screenFlipObject(GameObject*) = android32 0x304630;
	void setDamageVerifiedIdx(int) = android32 0x30234c;
	TodoReturn setupHasCompleted() = android32 0x310e00;
	TodoReturn shouldBlend(int) = android32 0x303c40;
	TodoReturn showCompleteEffect() = android32 0x3028e0;
	TodoReturn showCompleteText() = android32 0x30243c;
	TodoReturn showEndLayer() = android32 0x301c5c;
	TodoReturn showHint() = android32 0x30590c;
	TodoReturn showNewBest(bool, int, int, bool, bool, bool) = android32 0x302bfc;
	TodoReturn showRetryLayer() = android32 0x301cac;
	TodoReturn showTwoPlayerGuide() = android32 0x301818;
	TodoReturn spawnCircle() = android32 0x302850;
	TodoReturn spawnFirework() = android32 0x301a84;
	TodoReturn startGame() = android32 0x31040c;
	TodoReturn startGameDelayed() = android32 0x310446;
	TodoReturn startMusic() = android32 0x310358;
	TodoReturn startRecording() = android32 0x301632;
	TodoReturn startRecordingDelayed() = android32 0x305efc;
	TodoReturn stopRecording() = android32 0x305f50;
	TodoReturn storeCheckpoint(CheckpointObject*) = android32 0x307660;
	TodoReturn takeStateSnapshot() = android32 0x305e38;
	TodoReturn toggleBGEffectVisibility(bool) = android32 0x305ebc;
	TodoReturn toggleDebugDraw(bool) = android32 0x3023d8;
	TodoReturn toggleGhostEffect(int) = android32 0x305e98;
	TodoReturn togglePracticeMode(bool) = android32 0x3125c8;
	TodoReturn tryStartRecord() = android32 0x305ee6;
	TodoReturn updateAttempts() = android32 0x305fc4;
	TodoReturn updateEffectPositions() = android32 0x305a6c;
	TodoReturn updateInfoLabel() = android32 0x30dd10;
	TodoReturn updateInvisibleBlock(GameObject*, float, float, float, float, cocos2d::ccColor3B const&) = android32 0x305398;
	TodoReturn updateProgressbar() = android32 0x30563c;
	TodoReturn updateScreenRotation(int, bool, bool, float, int, float, int, int) = android32 0x30391c;
	TodoReturn updateTimeWarp(EffectGameObject*, float) = android32 0x303910;

	virtual void onEnterTransitionDidFinish() = android32 0x30163e;
	virtual void onExit() = android32 0x302010;
	virtual TodoReturn postUpdate(float) = android32 0x3101a0;
	virtual TodoReturn checkForEnd() = android32 0x301e84;
	virtual TodoReturn testTime() = android32 0x3015d0;
	virtual TodoReturn updateVerifyDamage() = android32 0x301684;
	virtual TodoReturn updateAttemptTime(float) = android32 0x3045f8;
	virtual TodoReturn updateVisibility(float) = android32 0x3082f4;
	virtual TodoReturn opacityForObject(GameObject*) = android32 0x301d42;
	virtual TodoReturn updateColor(cocos2d::ccColor3B&, float, int, bool, float, cocos2d::ccHSVValue&, int, bool, EffectGameObject*, int, int) = android32 0x30d654;
	virtual TodoReturn activateEndTrigger(int, bool, bool) = android32 0x3015ce;
	virtual TodoReturn activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&) = android32 0x3069d4;
	virtual TodoReturn toggleGlitter(bool) = android32 0x302038;
	virtual TodoReturn destroyPlayer(PlayerObject*, GameObject*) = android32 0x306aa4;
	virtual TodoReturn toggleGroundVisibility(bool) = android32 0x301e5c;
	virtual TodoReturn toggleMGVisibility(bool) = android32 0x301e78;
	virtual TodoReturn toggleHideAttempts(bool) = android32 0x301f9c;
	virtual TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, int) = android32 0x301dc4;
	virtual TodoReturn posForTime(float) = android32 0x301e2c;
	virtual TodoReturn resetSPTriggered() = android32 0x301602;
	virtual TodoReturn updateTimeWarp(float) = android32 0x30165a;
	virtual TodoReturn playGravityEffect(bool) = android32 0x307748;
	virtual TodoReturn manualUpdateObjectColors(GameObject*) = android32 0x301d48;
	virtual TodoReturn checkpointActivated(CheckpointGameObject*) = android32 0x301670;
	virtual TodoReturn flipArt(bool) = android32 0x3015e2;
	virtual TodoReturn updateTimeLabel(int, int, bool) = android32 0x3016fc;
	virtual TodoReturn checkSnapshot() = android32 0x301630;
	virtual TodoReturn toggleProgressbar() = android32 0x3057bc;
	virtual TodoReturn toggleInfoLabel() = android32 0x30e368;
	virtual TodoReturn removeAllCheckpoints() = android32 0x307642;
	virtual TodoReturn toggleMusicInPractice() = android32 0x301d88;
	virtual TodoReturn currencyWillExit(CurrencyRewardLayer*) = android32 0x312558 = android32 0x312554;
	virtual TodoReturn circleWaveWillBeRemoved(CCCircleWave*) = android32 0x301d36 = android32 0x301d2a;
	virtual TodoReturn dialogClosed(DialogLayer*) = android32 0x312568 = android32 0x312564;

	PAD = android32 0xac, android64 0xfc;
	cocos2d::CCArray* m_circleWaveArray;
	PAD = android32 0x1c, android64 0x2c;
	cocos2d::CCSprite* m_progressBar;
	PAD = android32 0x11c, android64 0x180;
}

[[link(android)]]
class PointNode : cocos2d::CCObject {
	// virtual ~PointNode();

	static PointNode* create(cocos2d::CCPoint) = android32 0x439e9c;

	bool init(cocos2d::CCPoint) = android32 0x439e90;
}

[[link(android)]]
class PriceLabel : cocos2d::CCNode {
	// virtual ~PriceLabel();

	static PriceLabel* create(int) = android32 0x2e620c;

	bool init(int) = android32 0x2e6158;
	void setColor(cocos2d::ccColor3B) = android32 0x2e6264;
	void setOpacity(float) = android32 0x2e628e;
	void setPrice(int) = android32 0x2e6058;
}

[[link(android)]]
class ProfilePage : FLAlertLayer, FLAlertLayerProtocol, LevelCommentDelegate, CommentUploadDelegate, UserInfoDelegate, UploadActionDelegate, UploadPopupDelegate, LeaderboardManagerDelegate {
	// virtual ~ProfilePage();

	static ProfilePage* create(int accountID, bool ownProfile) = ios 0x19d408, android32 0x4a6f64;

	TodoReturn blockUser() = android32 0x4a5ebc;
	bool init(int accountID, bool ownProfile) = android32 0x4a6754;
	bool isCorrect(char const*) = android32 0x4a6540;
	bool isOnWatchlist(int) = android32 0x4a4734;
	TodoReturn loadPage(int) = android32 0x4a70d0;
	void loadPageFromUserInfo(GJUserScore*) = android32 0x4a4738;
	void onBlockUser(cocos2d::CCObject* sender) = android32 0x4a6430;
	void onClose(cocos2d::CCObject* sender) = android32 0x4a38be;
	void onComment(cocos2d::CCObject* sender) = android32 0x4a3db8;
	void onCommentHistory(cocos2d::CCObject* sender) = android32 0x4a3d98;
	void onFollow(cocos2d::CCObject* sender) = android32 0x4a3f30;
	void onFriend(cocos2d::CCObject* sender) = android32 0x4a6278;
	void onFriends(cocos2d::CCObject* sender) = android32 0x4a4448;
	void onInfo(cocos2d::CCObject* sender) = android32 0x4a3974;
	void onMessages(cocos2d::CCObject* sender) = android32 0x4a442e;
	void onMyLevels(cocos2d::CCObject* sender) = android32 0x4a3ba4;
	void onMyLists(cocos2d::CCObject* sender) = android32 0x4a3c9c;
	void onNextPage(cocos2d::CCObject* sender) = android32 0x4a71e4;
	void onPrevPage(cocos2d::CCObject* sender) = android32 0x4a71ee;
	void onRequests(cocos2d::CCObject* sender) = android32 0x4a4462;
	void onSendMessage(cocos2d::CCObject* sender) = android32 0x4a6240;
	void onSettings(cocos2d::CCObject* sender) = android32 0x4a4418;
	void onStatInfo(cocos2d::CCObject* sender) = android32 0x4a85c0;
	void onTwitch(cocos2d::CCObject* sender) = android32 0x4a437c;
	void onTwitter(cocos2d::CCObject* sender) = android32 0x4a42e0;
	void onUpdate(cocos2d::CCObject* sender) = android32 0x4a45ac;
	void onYouTube(cocos2d::CCObject* sender) = android32 0x4a4244;
	TodoReturn setupComments() = android32 0x4a6030;
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*) = android32 0x4a65cc;
	TodoReturn showNoAccountError() = android32 0x4a61cc;
	TodoReturn toggleMainPageVisibility(bool) = android32 0x4a7406;
	TodoReturn toggleShip(cocos2d::CCObject*) = android32 0x4a3914;
	TodoReturn updateLevelsLabel() = android32 0x4a75e8;
	TodoReturn updatePageArrows() = android32 0x4a73c8;

	virtual void registerWithTouchDispatcher() = android32 0x4a447c;
	virtual void keyBackClicked() = android32 0x4a390c = android32 0x4a3906;
	virtual void show() = ios 0x2b4cf0, android32 0x4a44e8;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x4a6028 = android32 0x4a5f30;
	virtual TodoReturn updateUserScoreFinished() = android32 0x4a674c = android32 0x4a6744 = android32 0x4a66ec;
	virtual TodoReturn updateUserScoreFailed() = android32 0x4a3602 = android32 0x4a35ce;
	virtual TodoReturn getUserInfoFinished(GJUserScore*) = ios 0x1a24a0, android32 0x4a7370, android32 0x4a72fc;
	virtual TodoReturn getUserInfoFailed(int) = android32 0x4a44de = android32 0x4a44a0;
	virtual TodoReturn userInfoChanged(GJUserScore*) = android32 0x4a73c0 = android32 0x4a7378;
	virtual TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*) = android32 0x4a70c8 = android32 0x4a7080;
	virtual TodoReturn loadCommentsFailed(char const*) = android32 0x4a65c4 = android32 0x4a6588;
	virtual TodoReturn setupPageInfo(gd::string, char const*) = android32 0x4a75e0 = android32 0x4a74b0;
	virtual TodoReturn commentUploadFinished(int) = android32 0x4a7222 = android32 0x4a71f8;
	virtual TodoReturn commentUploadFailed(int, CommentError) = android32 0x4a3f28 = android32 0x4a3ea8;
	virtual TodoReturn commentDeleteFailed(int, int) = android32 0x4a72f4 = android32 0x4a722c;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = android32 0x4a4110 = android32 0x4a40f4;
	virtual TodoReturn uploadActionFinished(int, int) = android32 0x4a41d8 = android32 0x4a4118;
	virtual TodoReturn uploadActionFailed(int, int) = android32 0x4a423c = android32 0x4a41e0;

	GJUserScore* m_score;
	int m_accountID;
	bool m_ownProfile;
	gd::string m_profileKey;
	cocos2d::CCLabelBMFont* m_somethingWentWrong;
	cocos2d::CCLabelBMFont* m_usernameLabel;
	GJCommentListLayer* m_list;
	CCMenuItemSpriteExtra* m_rightArrow;
	CCMenuItemSpriteExtra* m_leftArrow;
	CCMenuItemSpriteExtra* m_followBtn;
	void* m_unk;
	cocos2d::CCArray* m_buttons;
	cocos2d::CCArray* m_arrayWithUsernameLabel;
	int m_itemCount;
	int m_pageStartIdx;
	int m_pageEndIdx;
	int m_page;
	LoadingCircle* m_circle;
	void* m_popupDelegate;
	CCMenuItemSpriteExtra* m_refreshBtn;
}

[[link(android)]]
class PromoInterstitial : FLAlertLayer {
	// virtual ~PromoInterstitial();

	static PromoInterstitial* create(bool) = android32 0x419124;

	bool init(bool) = android32 0x4190f8;
	void onClick(cocos2d::CCObject* sender) = android32 0x418e04;
	void onClose(cocos2d::CCObject* sender) = android32 0x418dae;
	TodoReturn setup() = android32 0x418f1c;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x418e78 = android32 0x418e30;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x418f14 = android32 0x418eea;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x418eb0 = android32 0x418e80;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x418ee2 = android32 0x418eb8;
	virtual void keyBackClicked() = android32 0x418dfc = android32 0x418de2;
	virtual void show() = android32 0x418d96;
}

[[link(android)]]
class PulseEffectAction {
	bool isFinished() = android32 0x479f10;
	TodoReturn step(float) = android32 0x479fa4;
	TodoReturn valueForDelta(float, float, float, float) = android32 0x479f40;
}

[[link(android)]]
class PurchaseItemPopup : FLAlertLayer {
	// virtual ~PurchaseItemPopup();

	static PurchaseItemPopup* create(GJStoreItem*) = android32 0x4c2520;

	bool init(GJStoreItem*) = android32 0x4c1e4c;
	void onClose(cocos2d::CCObject* sender) = android32 0x4bf6a4;
	void onPurchase(cocos2d::CCObject* sender) = android32 0x4bfe8a;

	virtual void keyBackClicked() = android32 0x4bf6c8 = android32 0x4bf6c2;
}

[[link(android)]]
class RandTriggerGameObject : ChanceTriggerGameObject {
	// virtual ~RandTriggerGameObject();

	static RandTriggerGameObject* create() = android32 0x3d32d0;

	TodoReturn getRandomGroupID() = android32 0x3d3350;
	TodoReturn getTotalChance() = android32 0x3d3338;

	virtual bool init() = android32 0x3d324c;
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = android32 0x3d647c;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3d50c8;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e01cc;
}

[[link(android)]]
class RateDemonLayer : FLAlertLayer, UploadPopupDelegate, UploadActionDelegate {
	// virtual ~RateDemonLayer();

	static RateDemonLayer* create(int) = android32 0x4c45b4;

	bool init(int) = android32 0x4c4270;
	void onClose(cocos2d::CCObject* sender) = android32 0x4c3efc;
	void onRate(cocos2d::CCObject* sender) = android32 0x4c40ac;
	void selectRating(cocos2d::CCObject*) = android32 0x4c3fe8;

	virtual void keyBackClicked() = android32 0x4c3f2e = android32 0x4c3f28;
	virtual TodoReturn uploadActionFinished(int, int) = android32 0x4c41c0 = android32 0x4c4158;
	virtual TodoReturn uploadActionFailed(int, int) = android32 0x4c423c = android32 0x4c41c8;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = android32 0x4c4266 = android32 0x4c4244;

	PAD = win 0x12;
	int m_demonRate;
}

[[link(android)]]
class RateLevelDelegate {
	virtual void rateLevelClosed() {}
}

[[link(android)]]
class RateLevelLayer : FLAlertLayer {
	// virtual ~RateLevelLayer();

	static RateLevelLayer* create(int) = android32 0x3ef8d4;

	bool init(int) = android32 0x3ef5c8;
	void onClose(cocos2d::CCObject* sender) = android32 0x3ef426;
	void onRate(cocos2d::CCObject* sender) = android32 0x3ef452;
	TodoReturn selectRating(cocos2d::CCObject*) = android32 0x3ef4f4;

	virtual void keyBackClicked() = android32 0x3ef468 = android32 0x3ef462;
}

[[link(android)]]
class RateStarsLayer : FLAlertLayer, UploadPopupDelegate, UploadActionDelegate {
	// virtual ~RateStarsLayer();

	static RateStarsLayer* create(int, bool, bool) = android32 0x4393a4;

	TodoReturn getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float) = android32 0x438eb4;
	bool init(int, bool, bool) = android32 0x438f30;
	void onClose(cocos2d::CCObject* sender) = android32 0x438a7c;
	void onFeature(cocos2d::CCObject* sender) = android32 0x438b66;
	void onRate(cocos2d::CCObject* sender) = android32 0x438c8c;
	void onToggleCoins(cocos2d::CCObject* sender) = android32 0x438e50;
	TodoReturn selectRating(cocos2d::CCObject*) = android32 0x438b80;

	virtual void keyBackClicked() = android32 0x438aae = android32 0x438aa8;
	virtual TodoReturn uploadActionFinished(int, int) = android32 0x438da4 = android32 0x438d40;
	virtual TodoReturn uploadActionFailed(int, int) = android32 0x438e1c = android32 0x438dac;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = android32 0x438e46 = android32 0x438e24;
	PAD = win 0x10;
	int m_starsRate;
}

[[link(android)]]
class RetryLevelLayer : GJDropDownLayer, RewardedVideoDelegate {
	// virtual ~RetryLevelLayer();

	static RetryLevelLayer* create() = android32 0x41a92c;

	TodoReturn getEndText() = android32 0x41b1d8;
	void onEveryplay(cocos2d::CCObject* sender) = android32 0x41b218;
	void onMenu(cocos2d::CCObject* sender) = android32 0x41a77c;
	void onReplay(cocos2d::CCObject* sender) = android32 0x41a748;
	void onRewardedVideo(cocos2d::CCObject* sender) = android32 0x41b21c;
	TodoReturn setupLastProgress() = android32 0x41aa4c;

	virtual void keyBackClicked() = android32 0x41a924 = android32 0x41a912;
	virtual void keyDown(cocos2d::enumKeyCodes) = android32 0x41a82a = android32 0x41a7f8;
	virtual TodoReturn customSetup() = android32 0x41ad04;
	virtual TodoReturn showLayer(bool) = android32 0x41a834;
	virtual TodoReturn enterAnimFinished() = android32 0x41a8ec;
	virtual TodoReturn rewardedVideoFinished() = android32 0x41a69a = android32 0x41a692;
	virtual TodoReturn shouldOffsetRewardCurrency() = android32 0x41a68a = android32 0x41a686;
	virtual void keyUp(cocos2d::enumKeyCodes) = android32 0x41a6a4 = android32 0x41a6a2;
}

[[link(android)]]
class RewardedVideoDelegate {
	virtual TodoReturn rewardedVideoFinished();
	virtual TodoReturn shouldOffsetRewardCurrency();
}

[[link(android)]]
class RewardsPage : FLAlertLayer, FLAlertLayerProtocol, GJRewardDelegate {
	// virtual ~RewardsPage();

	static RewardsPage* create() = android32 0x4c4b98;

	static char const* getRewardFrame(int, int) = android32 0x4c4c88;
	void onClose(cocos2d::CCObject* sender) = android32 0x4c46be;
	void onFreeStuff(cocos2d::CCObject* sender) = android32 0x4c47be;
	void onReward(cocos2d::CCObject* sender) = android32 0x4c6f74;
	TodoReturn tryGetRewards() = android32 0x4c47ae;
	TodoReturn unlockLayerClosed(RewardUnlockLayer*) = android32 0x4c576c;
	TodoReturn updateTimers(float) = android32 0x4c4ca8;

	virtual bool init() = android32 0x4c4ee0;
	virtual void registerWithTouchDispatcher() = android32 0x4c47d8;
	virtual void keyBackClicked() = android32 0x4c46e2 = android32 0x4c46dc;
	virtual void show() = android32 0x4c4a00;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x4c46b6 = android32 0x4c46b4;
	virtual TodoReturn rewardsStatusFinished(int) = android32 0x4c7ba4 = android32 0x4c7af0;
	virtual TodoReturn rewardsStatusFailed() = android32 0x4c49f8 = android32 0x4c49a8;

	cocos2d::CCLabelBMFont* m_leftLabel;
	cocos2d::CCLabelBMFont* m_rightLabel;
	CCMenuItemSpriteExtra* m_leftChest;
	CCMenuItemSpriteExtra* m_rightChest;
	bool m_leftOpen;
	bool m_rightOpen;
	cocos2d::CCNode* m_openLayer;
}

[[link(android)]]
class RewardUnlockLayer : FLAlertLayer, CurrencyRewardDelegate {
	// virtual ~RewardUnlockLayer();

	static RewardUnlockLayer* create(int, RewardsPage*) = android32 0x4c6e7c;

	TodoReturn connectionTimeout() = android32 0x4c496e;
	bool init(int, RewardsPage*) = android32 0x4c6634;
	TodoReturn labelEnterFinishedO(cocos2d::CCObject*) = android32 0x4c46ea;
	void onClose(cocos2d::CCObject* sender) = android32 0x4c577c;
	TodoReturn playDropSound() = android32 0x4c48e0;
	TodoReturn playLabelEffect(int, int, cocos2d::CCSprite*, cocos2d::CCPoint, float) = android32 0x4c57bc;
	TodoReturn playRewardEffect() = android32 0x4c7030;
	TodoReturn readyToCollect(GJRewardItem*) = android32 0x4c57a8;
	TodoReturn showCloseButton() = android32 0x4c4892;
	TodoReturn showCollectReward(GJRewardItem*) = android32 0x4c7a7c;
	TodoReturn step2() = android32 0x4c64f8;
	TodoReturn step3() = android32 0x4c7bac;

	virtual void keyBackClicked() = android32 0x4c4704 = android32 0x4c4702;
	virtual TodoReturn currencyWillExit(CurrencyRewardLayer*) = android32 0x4c46fa = android32 0x4c46ec;
}

[[link(android)]]
class RingObject : EffectGameObject {
	// virtual ~RingObject();

	static RingObject* create(char const*) = android32 0x3d0c94;

	bool init(char const*) = android32 0x3d0bf0;
	TodoReturn spawnCircle() = android32 0x3cfaac;

	virtual void setScale(float) = android32 0x3c8e3c;
	virtual void setRotation(float) = android32 0x3c8e70;
	virtual TodoReturn resetObject() = android32 0x3c905c;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3cd608;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3defb8;
	virtual void setRScale(float) = android32 0x3c9094;
	virtual TodoReturn triggerActivated(float) = android32 0x3c8d44;
	virtual TodoReturn shouldDrawEditorHitbox() = android32 0x3c8d4c;
	virtual TodoReturn powerOnObject(int) = android32 0x3cfb4c;

	bool m_claimTouch;
	// property 504
	bool m_isSpawnOnly;
}

[[link(android)]]
class RotateGameplayGameObject : EffectGameObject {
	// virtual ~RotateGameplayGameObject();

	static RotateGameplayGameObject* create() = android32 0x3d4914;

	TodoReturn updateGameplayRotation() = android32 0x3d49a4;

	virtual bool init() = android32 0x3d0dc0;
	virtual TodoReturn updateStartValues() = android32 0x3d49fc;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3cbf8c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e5964;
}

[[link(android)]]
class ScrollingLayer : cocos2d::CCLayerColor {
	// virtual ~ScrollingLayer();

	static ScrollingLayer* create(cocos2d::CCSize, cocos2d::CCPoint, float) = android32 0x2f1204;

	TodoReturn getViewRect() = android32 0x2f131c;
	bool init(cocos2d::CCSize, cocos2d::CCPoint, float) = android32 0x2f1160;
	void setStartOffset(cocos2d::CCPoint) = android32 0x2f147c;

	virtual void draw() = android32 0x2f0fe4;
	virtual void visit() = android32 0x2f149c;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2f1474 = android32 0x2f13d8;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2f1158 = android32 0x2f1080;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2f0f54 = android32 0x2f0f40;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2f0f64 = android32 0x2f0f5c;
}

[[link(android)]]
class SearchButton : cocos2d::CCSprite {
	// virtual ~SearchButton();

	static SearchButton* create(char const*, char const*, float, char const*) = android32 0x398178;

	bool init(char const*, char const*, float, char const*) = android32 0x397fac;

	cocos2d::CCLabelBMFont* m_label;
	cocos2d::CCSprite* m_icon;
}

[[link(android)]]
class SearchSFXPopup : SetTextPopup {
	// virtual ~SearchSFXPopup();

	static SearchSFXPopup* create(gd::string) = android32 0x561228;

	bool init(gd::string) = android32 0x561088;
	void onSearchFolders(cocos2d::CCObject* sender) = android32 0x55fa8c;
}

[[link(android)]]
class SecretLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol {
	// virtual ~SecretLayer();

	static SecretLayer* create() = android32 0x4a8864;

	TodoReturn getBasicMessage() = android32 0x4a9564;
	TodoReturn getMessage() = android32 0x4a9748;
	TodoReturn getThreadMessage() = android32 0x4a8bd0;
	TodoReturn nodeWithTag(int) = android32 0x4a8bb8;
	void onBack(cocos2d::CCObject* sender) = android32 0x4a880c;
	void onSubmit(cocos2d::CCObject* sender) = android32 0x4a9aec;
	TodoReturn playCoinEffect() = android32 0x4a97ac;
	static cocos2d::CCScene* scene() = android32 0x4a8910;
	TodoReturn selectAThread() = android32 0x4a8b28;
	TodoReturn updateMessageLabel(gd::string) = android32 0x4a8afc;
	void updateSearchLabel(char const*) = android32 0x4a8934;

	virtual bool init() = android32 0x4aa4cc;
	virtual void keyBackClicked() = android32 0x4a885a = android32 0x4a8854;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = android32 0x4a8804 = android32 0x4a8770;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x4a8aa8 = android32 0x4a8a64;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x4a8af4 = android32 0x4a8ab0;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x4a86d6 = android32 0x4a86d4;
}

[[link(android)]]
class SecretLayer2 : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DialogDelegate {
	// virtual ~SecretLayer2();

	static SecretLayer2* create() = android32 0x4c9e24;

	gd::string getBasicMessage() = android32 0x4ca634;
	TodoReturn getErrorMessage() = android32 0x4ca8e8;
	TodoReturn getMessage() = android32 0x4ca88c;
	TodoReturn getThreadMessage() = android32 0x4ca258;
	TodoReturn nodeWithTag(int) = android32 0x4ca240;
	void onBack(cocos2d::CCObject* sender) = android32 0x4c9078;
	void onDoor(cocos2d::CCObject* sender) = android32 0x4cbca4;
	void onSecretLevel(cocos2d::CCObject* sender) = android32 0x4c8980;
	void onSubmit(cocos2d::CCObject* sender) = android32 0x4cb1c8;
	TodoReturn playCoinEffect() = android32 0x4cab78;
	static cocos2d::CCScene* scene() = android32 0x4c9eec;
	TodoReturn selectAThread() = android32 0x4ca1b0;
	TodoReturn showCompletedLevel() = android32 0x4c7e58;
	TodoReturn showSecretLevel() = android32 0x4c9f10;
	void updateMessageLabel(gd::string) = android32 0x4ca184;
	void updateSearchLabel(char const*) = android32 0x4c9fbc;

	virtual bool init() = android32 0x4cc450;
	virtual void onExit() = android32 0x4c9df0;
	virtual void keyBackClicked() = android32 0x4c90c8 = android32 0x4c90c2;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = android32 0x4c9070 = android32 0x4c8fdc;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x4ca130 = android32 0x4ca0ec;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x4ca17c = android32 0x4ca138;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x4c7cc8 = android32 0x4c7cc6;
	virtual TodoReturn dialogClosed(DialogLayer*) = android32 0x4c8978 = android32 0x4c8930;
}

[[link(android)]]
class SecretLayer3 : cocos2d::CCLayer, DialogDelegate {
	// virtual ~SecretLayer3();

	static SecretLayer3* create() = android32 0x4cbbf0;

	TodoReturn animateEyes() = android32 0x4c9234;
	TodoReturn firstInteractionStep1() = android32 0x4cbe84;
	TodoReturn firstInteractionStep2() = android32 0x4c92e0;
	TodoReturn firstInteractionStep3() = android32 0x4cbf78;
	TodoReturn firstInteractionStep4() = android32 0x4c8340;
	void onBack(cocos2d::CCObject* sender) = android32 0x4cbf14;
	void onChest01(cocos2d::CCObject* sender) = android32 0x4c90fc;
	void onChest02(cocos2d::CCObject* sender) = android32 0x4c9198;
	void onClick(cocos2d::CCObject* sender) = android32 0x4c94e0;
	TodoReturn revealStep1() = android32 0x4cc400;
	TodoReturn revealStep2() = android32 0x4c853c;
	TodoReturn revealStep3() = android32 0x4cc074;
	TodoReturn revealStep4() = android32 0x4c8cb8;
	TodoReturn revealStep5() = android32 0x4c86dc;
	static cocos2d::CCScene* scene() = android32 0x4cbc80;
	TodoReturn showUnlockDialog() = android32 0x4c8a8c;

	virtual bool init() = android32 0x4cce54;
	virtual void onExit() = android32 0x4c90d0;
	virtual void keyBackClicked() = android32 0x4cbf6e = android32 0x4cbf68;
	virtual TodoReturn dialogClosed(DialogLayer*) = android32 0x4cc2b0 = android32 0x4cc0f0;
}

[[link(android)]]
class SecretLayer4 : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DialogDelegate {
	// virtual ~SecretLayer4();

	static SecretLayer4* create() = android32 0x4ce088;

	TodoReturn getBasicMessage() = android32 0x4ceacc;
	TodoReturn getErrorMessage() = android32 0x4cec9c;
	TodoReturn getMessage() = android32 0x4cec40;
	TodoReturn getThreadMessage() = android32 0x4ce860;
	TodoReturn nodeWithTag(int) = android32 0x4ce848;
	void onBack(cocos2d::CCObject* sender) = android32 0x4cdf90;
	void onChest01(cocos2d::CCObject* sender) = android32 0x4cdd04;
	void onSubmit(cocos2d::CCObject* sender) = android32 0x4cef2c;
	TodoReturn playCoinEffect() = android32 0x4cf4b8;
	static cocos2d::CCScene* scene() = android32 0x4ce140;
	TodoReturn selectAThread() = android32 0x4ce7b8;
	TodoReturn showDialog(int) = android32 0x4ce164;
	TodoReturn showFirstDialog() = android32 0x4cdd98;
	TodoReturn updateMessageLabel(gd::string) = android32 0x4ce78c;
	void updateSearchLabel(char const*) = android32 0x4ce5c0;

	virtual bool init() = android32 0x4cf7fc;
	virtual void onExit() = android32 0x4cfff4;
	virtual void keyBackClicked() = android32 0x4cdfe2 = android32 0x4cdfdc;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = android32 0x4ce080 = android32 0x4cdfec;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x4ce738 = android32 0x4ce6f4;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x4ce784 = android32 0x4ce740;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x4cdc70 = android32 0x4cdc6e;
	virtual TodoReturn dialogClosed(DialogLayer*) = android32 0x4cdc66 = android32 0x4cdc64;
}

[[link(android)]]
class SecretNumberLayer : cocos2d::CCLayer {
	// virtual ~SecretNumberLayer();

	static SecretNumberLayer* create() = android32 0x4caebc;

	TodoReturn playNumberEffect(int) = android32 0x4caf30;

	virtual bool init() = android32 0x4cce50;
}

[[link(android)]]
class SecretRewardsLayer : cocos2d::CCLayer, DialogDelegate, BoomScrollLayerDelegate {
	// virtual ~SecretRewardsLayer();

	static SecretRewardsLayer* create(bool) = android32 0x563664;

	TodoReturn createSecondaryLayer(int) = android32 0x566328;
	TodoReturn generateChestItems(int) = android32 0x565ca4;
	TodoReturn getPageColor(int) = android32 0x561c84;
	TodoReturn goToPage(int) = android32 0x561c22;
	bool init(bool) = android32 0x56264c;
	TodoReturn moveToMainLayer(cocos2d::CCObject*) = android32 0x562084;
	TodoReturn moveToSecondaryLayer(int) = android32 0x566628;
	void onBack(cocos2d::CCObject* sender) = android32 0x562188;
	void onChestType(cocos2d::CCObject* sender) = android32 0x566700;
	void onSelectItem(cocos2d::CCObject* sender) = android32 0x56374c;
	void onShop(cocos2d::CCObject* sender) = android32 0x565bd8;
	void onSpecialItem(cocos2d::CCObject* sender) = android32 0x562360;
	void onSwitchPage(cocos2d::CCObject* sender) = android32 0x561c4e;
	static cocos2d::CCScene* scene(bool) = android32 0x563724;
	TodoReturn showDialog01() = android32 0x563918;
	TodoReturn showDialog03() = android32 0x5644ec;
	TodoReturn showDialogDiamond() = android32 0x565674;
	TodoReturn showDialogMechanic() = android32 0x564de0;
	TodoReturn showLockedChest() = android32 0x561e30;
	TodoReturn showShop(int) = android32 0x5621dc;
	TodoReturn switchToOpenedState(CCMenuItemSpriteExtra*) = android32 0x5622b8;
	TodoReturn updateBackButton() = android32 0x561fb8;
	TodoReturn updateUnlockedLabel() = android32 0x562524;

	virtual void onExit() = android32 0x56672c;
	virtual void keyBackClicked() = android32 0x5621d4 = android32 0x5621ce;
	virtual TodoReturn dialogClosed(DialogLayer*) = android32 0x5622b0 = android32 0x562214;
	virtual TodoReturn scrollLayerMoved(cocos2d::CCPoint) = android32 0x561e28 = android32 0x561ce0;
}

[[link(android)]]
class SelectArtDelegate {
	virtual TodoReturn selectArtClosed(SelectArtLayer*);
}

[[link(android)]]
class SelectArtLayer : FLAlertLayer {
	// virtual ~SelectArtLayer();

	static SelectArtLayer* create(SelectArtType, int) = android32 0x54db2c;

	bool init(SelectArtType, int) = android32 0x54d398;
	void onClose(cocos2d::CCObject* sender) = android32 0x54c104;
	void onSelectCustom(cocos2d::CCObject* sender) = android32 0x54c5d8;
	TodoReturn selectArt(cocos2d::CCObject*) = android32 0x54c544;
	TodoReturn updateSelectedCustom(int) = android32 0x54dc20;

	virtual void keyBackClicked() = android32 0x54c138 = android32 0x54c132;
}

[[link(android)]]
class SelectEventLayer : SetupTriggerPopup {
	// virtual ~SelectEventLayer();

	static SelectEventLayer* create(SetupEventLinkPopup*, gd::set<int>&) = android32 0x55ca84;

	TodoReturn addToggle(int, gd::string) = android32 0x55bc64;
	bool init(SetupEventLinkPopup*, gd::set<int>&) = android32 0x55bec4;
	TodoReturn nextPosition() = android32 0x5551f8;
	void onInfo(cocos2d::CCObject* sender) = android32 0x55cc04;

	virtual void keyBackClicked() = android32 0x554196 = android32 0x55418c;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x55bc3c;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = android32 0x55b9fc;
}

[[link(android)]]
class SelectFontLayer : FLAlertLayer {
	// virtual ~SelectFontLayer();

	static SelectFontLayer* create(LevelEditorLayer*) = android32 0x48a7c8;

	bool init(LevelEditorLayer*) = android32 0x48a378;
	void onChangeFont(cocos2d::CCObject* sender) = android32 0x48a318;
	void onClose(cocos2d::CCObject* sender) = android32 0x486f54;
	TodoReturn updateFontLabel() = android32 0x48a238;

	virtual void keyBackClicked() = android32 0x486f78 = android32 0x486f72;
}

[[link(android)]]
class SelectListIconDelegate {
	virtual TodoReturn iconSelectClosed(SelectListIconLayer*);
}

[[link(android)]]
class SelectListIconLayer : FLAlertLayer {
	// virtual ~SelectListIconLayer();

	static SelectListIconLayer* create(int) = android32 0x56ec3c;

	bool init(int) = android32 0x56e86c;
	void onClose(cocos2d::CCObject* sender) = android32 0x56ae7a;
	void onSelect(cocos2d::CCObject* sender) = android32 0x56bb24;

	virtual void keyBackClicked() = android32 0x56aeae = android32 0x56aea8;
}

[[link(android)]]
class SelectPremadeDelegate {
	virtual TodoReturn selectPremadeClosed(SelectPremadeLayer*, int) = android32 0x53b9c8;
}

[[link(android)]]
class SelectPremadeLayer : FLAlertLayer {
	// virtual ~SelectPremadeLayer();

	static SelectPremadeLayer* create() = android32 0x53e724;

	void onClose(cocos2d::CCObject* sender) = android32 0x53b9ca;
	void onSelectPremade(cocos2d::CCObject* sender) = android32 0x53b9e8;

	virtual bool init() = android32 0x53bf20;
	virtual void keyBackClicked() = android32 0x53ba18 = android32 0x53ba12;
}

[[link(android)]]
class SelectSettingDelegate {
	virtual TodoReturn selectSettingClosed(SelectSettingLayer*);
}

[[link(android)]]
class SelectSettingLayer : FLAlertLayer {
	// virtual ~SelectSettingLayer();

	static SelectSettingLayer* create(SelectSettingType, int) = android32 0x54fc04;

	TodoReturn frameForItem(SelectSettingType, int) = android32 0x54dc68;
	TodoReturn frameForValue(SelectSettingType, int) = android32 0x54dd7c;
	TodoReturn getSelectedFrame() = android32 0x54fd1a;
	TodoReturn getSelectedValue() = android32 0x54fd0c;
	TodoReturn idxToValue(SelectSettingType, int) = android32 0x54fcec;
	bool init(SelectSettingType, int) = android32 0x54f7d4;
	void onClose(cocos2d::CCObject* sender) = android32 0x54c140;
	void onSelect(cocos2d::CCObject* sender) = android32 0x54c63c;
	TodoReturn valueToIdx(SelectSettingType, int) = android32 0x54dd5c;

	virtual void keyBackClicked() = android32 0x54c174 = android32 0x54c16e;
}

[[link(android)]]
class SelectSFXSortDelegate {
	virtual TodoReturn sortSelectClosed(SelectSFXSortLayer*) = android32 0x55f786;
}

[[link(android)]]
class SelectSFXSortLayer : FLAlertLayer {
	// virtual ~SelectSFXSortLayer();

	static SelectSFXSortLayer* create(AudioSortType) = android32 0x561780;

	bool init(AudioSortType) = android32 0x56137c;
	void onClose(cocos2d::CCObject* sender) = android32 0x55f7e0;
	void onSelect(cocos2d::CCObject* sender) = android32 0x55f7fe;

	virtual void keyBackClicked() = android32 0x55f82e = android32 0x55f828;
}

[[link(android)]]
class SequenceTriggerGameObject : ChanceTriggerGameObject {
	// virtual ~SequenceTriggerGameObject();

	static SequenceTriggerGameObject* create() = android32 0x3d4ab0;

	TodoReturn addCount(int, int) = android32 0x3d3438;
	TodoReturn addTarget(int, int) = android32 0x3d5494;
	TodoReturn deleteTarget(int) = android32 0x3d4a44;
	TodoReturn reorderTarget(int, bool) = android32 0x3d33c4;
	TodoReturn updateSequenceTotalCount() = android32 0x3d339e;

	virtual bool init() = android32 0x3d3258;
	virtual TodoReturn resetObject() = android32 0x3d4bf8;
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = android32 0x3d67c8;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3d5194;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e0344;
}

[[link(android)]]
class SetColorIDPopup : SetIDPopup, GJSpecialColorSelectDelegate {
	// virtual ~SetColorIDPopup();

	static SetColorIDPopup* create(int) = android32 0x491ec8;

	bool init(int) = android32 0x491d78;
	void onSelectSpecialColor(cocos2d::CCObject* sender) = android32 0x488d1c;

	virtual TodoReturn colorSelectClosed(GJSpecialColorSelect*, int) = android32 0x488d14 = android32 0x488c70;
}

[[link(android)]]
class SetFolderPopup : SetIDPopup, SetTextPopupDelegate {
	// virtual ~SetFolderPopup();

	static SetFolderPopup* create(int, bool, gd::string) = android32 0x4921c8;

	bool init(int, bool, gd::string) = android32 0x492000;
	void onSetFolderName(cocos2d::CCObject* sender) = android32 0x4929cc;

	virtual TodoReturn valueChanged() = android32 0x488d54;
	virtual void setTextPopupClosed(SetTextPopup*, gd::string) = android32 0x488e30 = android32 0x488dcc;
}

[[link(android)]]
class SetGroupIDLayer : FLAlertLayer, TextInputDelegate {
	// virtual ~SetGroupIDLayer();

	static SetGroupIDLayer* create(GameObject*, cocos2d::CCArray*) = android32 0x4e91e8;

	TodoReturn addGroupID(int) = android32 0x4e775c;
	TodoReturn callRemoveFromGroup(float) = android32 0x4e7860;
	TodoReturn createTextInput(cocos2d::CCPoint, int, int, gd::string, float, int) = android32 0x4e6e08;
	TodoReturn determineStartValues() = android32 0x4e70f0;
	bool init(GameObject*, cocos2d::CCArray*) = android32 0x4e7d9c;
	void onAddGroup(cocos2d::CCObject* sender) = android32 0x4e77e0;
	void onAddGroupParent(cocos2d::CCObject* sender) = android32 0x4e7694;
	void onAnim(cocos2d::CCObject* sender) = android32 0x4e6618;
	TodoReturn onArrow(int, int) = android32 0x4e9514;
	void onArrowLeft(cocos2d::CCObject* sender) = android32 0x4e9612;
	void onArrowRight(cocos2d::CCObject* sender) = android32 0x4e962e;
	void onClose(cocos2d::CCObject* sender) = android32 0x4e64c8;
	void onCopy(cocos2d::CCObject* sender) = android32 0x4e6440;
	void onExtra(cocos2d::CCObject* sender) = android32 0x4ea948;
	void onExtra2(cocos2d::CCObject* sender) = android32 0x4ead98;
	void onNextFreeEditorLayer1(cocos2d::CCObject* sender) = android32 0x4e7980;
	void onNextFreeEditorLayer2(cocos2d::CCObject* sender) = android32 0x4e7a28;
	void onNextFreeOrderChannel(cocos2d::CCObject* sender) = android32 0x4e9346;
	void onNextGroupID1(cocos2d::CCObject* sender) = android32 0x4e7b50;
	void onPaste(cocos2d::CCObject* sender) = android32 0x4e7d4a;
	void onRemoveFromGroup(cocos2d::CCObject* sender) = android32 0x4e6798;
	void onSmoothEase(cocos2d::CCObject* sender) = android32 0x4e9648;
	void onToggleGuide(cocos2d::CCObject* sender) = android32 0x4e6404;
	void onToggleSelectedOrder(cocos2d::CCObject* sender) = android32 0x4e6422;
	void onZLayer(cocos2d::CCObject* sender) = android32 0x4e7cec;
	void onZLayerShift(cocos2d::CCObject* sender) = android32 0x4e6458;
	TodoReturn removeGroupID(int) = android32 0x4e77e8;
	TodoReturn updateEditorLabel() = android32 0x4e7900;
	TodoReturn updateEditorLabel2() = android32 0x4e79a8;
	TodoReturn updateEditorLayerID() = android32 0x4e76ec;
	TodoReturn updateEditorLayerID2() = android32 0x4e7724;
	TodoReturn updateEditorOrder() = android32 0x4e936c;
	TodoReturn updateEditorOrderLabel() = android32 0x4e7b70;
	TodoReturn updateGroupIDButtons() = android32 0x4e72e4;
	TodoReturn updateGroupIDLabel() = android32 0x4e7ad0;
	TodoReturn updateOrderChannel() = android32 0x4e92ec;
	TodoReturn updateOrderChannelLabel() = android32 0x4e7c04;
	TodoReturn updateZLayerButtons() = android32 0x4e7c98;
	TodoReturn updateZOrder() = android32 0x4e78bc;
	TodoReturn updateZOrderLabel() = android32 0x4e7a50;

	virtual void keyBackClicked() = android32 0x4e6640 = android32 0x4e663a;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x4e60a0 = android32 0x4e6098;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x4e950c = android32 0x4e93c8;

    GameObject* m_targetObject;
    cocos2d::CCArray* m_targetObjects;
    cocos2d::CCArray* m_array0;
    cocos2d::CCArray* m_groupIDObjects;
    CCTextInputNode* m_editorLayerInput;
    CCTextInputNode* m_editorLayer2Input;
    CCTextInputNode* m_zOrderInput;
    CCTextInputNode* m_groupIDInput;
    CCTextInputNode* m_orderInput;
    CCTextInputNode* m_channelInput;
	bool m_showChannelOrder;
	int m_channelValue;
	bool m_channelUpdated;
    int m_groupIDValue;
    int m_editorLayerValue;
    int m_editorLayer2Value;
    int m_zOrderValue;
    ZLayer m_zLayerValue;
	int m_orderValue;
	bool m_channelOrderEdited;
	bool m_editorLayerEdited;
	bool m_removeGroupsLock;
	int m_groupToRemove;
	bool m_addedGroup;
	bool m_unkBool0;
	bool m_hasTargetObjects;
}

[[link(android)]]
class SetIDPopup : FLAlertLayer, TextInputDelegate {
	// virtual ~SetIDPopup();
	// SetIDPopup();

	static SetIDPopup* create(int, int, int, gd::string, gd::string, bool, int, float, bool, bool) = android32 0x491bc8;

	bool init(int, int, int, gd::string, gd::string, bool, int, float, bool, bool) = android32 0x491518;
	void onCancel(cocos2d::CCObject* sender) = android32 0x487040;
	void onClose(cocos2d::CCObject* sender) = android32 0x486fda;
	void onItemIDArrow(cocos2d::CCObject* sender) = android32 0x491d2c;
	void onResetValue(cocos2d::CCObject* sender) = android32 0x491d6a;
	TodoReturn updateTextInputLabel() = android32 0x491488;

	virtual void keyBackClicked() = android32 0x487052 = android32 0x48704c;
	virtual void show() = android32 0x488c22;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x486fd0 = android32 0x486fc8;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x489fd8 = android32 0x489f70;
	virtual TodoReturn valueChanged() = android32 0x486fd8;

	CCTextInputNode* m_inputNode;
	int m_value;
	bool m_unkBool;
	bool m_cancelled;
	int m_minimum;
	int m_maximum;
	int m_default;
	SetIDPopupDelegate* m_delegate;
}

[[link(android)]]
class SetIDPopupDelegate {
	virtual void setIDPopupClosed(SetIDPopup*, int) {}
}

[[link(android)]]
class SetItemIDLayer : SetupTriggerPopup {
	// virtual ~SetItemIDLayer();

	static SetItemIDLayer* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d061c;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d0204;
	TodoReturn updateEditorLabel() = android32 0x4d07c0;

	virtual void onClose(cocos2d::CCObject* sender) = android32 0x4d07e6;
	virtual TodoReturn valueDidChange(int, float) = android32 0x4d0198;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = android32 0x4d00b6;
}

[[link(android)]]
class SetLevelOrderPopup : SetIDPopup {
	// virtual ~SetLevelOrderPopup();

	static SetLevelOrderPopup* create(int, int, int) = android32 0x56e688;

	bool init(int, int, int) = android32 0x56e460;
	void onOrderButton(cocos2d::CCObject* sender) = android32 0x56b94e;
}

[[link(android)]]
class SetTargetIDLayer : SetupTriggerPopup {
	// virtual ~SetTargetIDLayer();

	static SetTargetIDLayer* create(EffectGameObject*, cocos2d::CCArray*, gd::string, gd::string, int, int, int) = android32 0x4d0ab4;

	bool init(EffectGameObject*, cocos2d::CCArray*, gd::string, gd::string, int, int, int) = android32 0x4d08c8;

	virtual TodoReturn determineStartValues() = android32 0x4d088a;
	virtual TodoReturn valueDidChange(int, float) = android32 0x4d088e;
}

[[link(android)]]
class SetTextPopup : FLAlertLayer, TextInputDelegate {
	// virtual ~SetTextPopup();

	static SetTextPopup* create(gd::string, gd::string, int, gd::string, gd::string, bool, float) = android32 0x492868;

	bool init(gd::string, gd::string, int, gd::string, gd::string, bool, float) = android32 0x492300;
	void onCancel(cocos2d::CCObject* sender) = android32 0x48831c;
	void onClose(cocos2d::CCObject* sender) = android32 0x488290;
	void onResetValue(cocos2d::CCObject* sender) = android32 0x492ad4;
	TodoReturn updateTextInputLabel() = android32 0x4922a8;

	virtual void keyBackClicked() = android32 0x48832e = android32 0x488328;
	virtual void show() = android32 0x48753a;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x487062 = android32 0x48705a;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x48854c = android32 0x4884fc;

	CCTextInputNode* m_input;
	bool m_disableDelegate;
	gd::string m_value;
	SetTextPopupDelegate* m_delegate;
}

[[link(android)]]
class SetTextPopupDelegate {
	virtual void setTextPopupClosed(SetTextPopup*, gd::string) {}
}

[[link(android)]]
class SetupAdvFollowEditPhysicsPopup : SetupTriggerPopup {
	// virtual ~SetupAdvFollowEditPhysicsPopup();

	static SetupAdvFollowEditPhysicsPopup* create(AdvancedFollowEditObject*, cocos2d::CCArray*) = android32 0x53ef18;

	bool init(AdvancedFollowEditObject*, cocos2d::CCArray*) = android32 0x53e804;

	virtual TodoReturn valueDidChange(int, float) = android32 0x53c416;
}

[[link(android)]]
class SetupAdvFollowPopup : SetupTriggerPopup, SelectPremadeDelegate {
	// virtual ~SetupAdvFollowPopup();

	static SetupAdvFollowPopup* create(AdvancedFollowTriggerObject*, cocos2d::CCArray*) = android32 0x53e348;

	bool init(AdvancedFollowTriggerObject*, cocos2d::CCArray*) = android32 0x53c450;
	void onMode(cocos2d::CCObject* sender) = android32 0x53e458;
	void onPremade(cocos2d::CCObject* sender) = android32 0x53e7e8;
	TodoReturn updateMode(int) = android32 0x53e3f4;

	virtual void onClose(cocos2d::CCObject* sender) = android32 0x53ba96;
	virtual TodoReturn updateDefaultTriggerValues() = android32 0x53ba9c;
	virtual TodoReturn valueDidChange(int, float) = android32 0x53bc74;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = android32 0x53becc;
	virtual TodoReturn selectPremadeClosed(SelectPremadeLayer*, int) = android32 0x53e71c = android32 0x53e470;
}

[[link(android)]]
class SetupAdvFollowRetargetPopup : SetupTriggerPopup {
	// virtual ~SetupAdvFollowRetargetPopup();

	static SetupAdvFollowRetargetPopup* create(AdvancedFollowEditObject*, cocos2d::CCArray*) = android32 0x53f2f8;

	bool init(AdvancedFollowEditObject*, cocos2d::CCArray*) = android32 0x53efbc;

	virtual TodoReturn updateDefaultTriggerValues() = android32 0x53bb88;
	virtual TodoReturn valueDidChange(int, float) = android32 0x53bdb8;
}

[[link(android)]]
class SetupAnimationPopup : SetupTriggerPopup {
	// virtual ~SetupAnimationPopup();

	static SetupAnimationPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d161c;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d0f00;
	void onAnimationIDArrow(cocos2d::CCObject* sender) = android32 0x4d1930;
	void onTargetIDArrow(cocos2d::CCObject* sender) = android32 0x4d1826;
	TodoReturn updateAnimationID() = android32 0x4d185a;
	TodoReturn updateAnimationTextInputLabel() = android32 0x4d0e94;
	TodoReturn updateTargetID() = android32 0x4d17d0;
	TodoReturn updateTextInputLabel() = android32 0x4d0e28;

	virtual TodoReturn determineStartValues() = android32 0x4d0d9a;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x4d0d5a;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x4d1928 = android32 0x4d18ac;
}

[[link(android)]]
class SetupAnimSettingsPopup : SetupTriggerPopup {
	// virtual ~SetupAnimSettingsPopup();

	static SetupAnimSettingsPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d1e0c;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d19f0;
	TodoReturn updateAnimSettings() = android32 0x4d1fb0;

	virtual void onClose(cocos2d::CCObject* sender) = android32 0x4d1fe4;
}

[[link(android)]]
class SetupAreaAnimTriggerPopup : SetupAreaTintTriggerPopup {
	// virtual ~SetupAreaAnimTriggerPopup();

	static SetupAreaAnimTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*, int) = android32 0x5391ac;

	TodoReturn createValueControlAdvancedAnim(int, gd::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float, float, int, int, GJInputStyle) = android32 0x5381b8;
	bool init(EnterEffectObject*, cocos2d::CCArray*, int) = android32 0x5382f4;
	void onDeactivateAnimValue(cocos2d::CCObject* sender) = android32 0x534cc0;
	TodoReturn updateTargetIDLabel() = android32 0x539264;

	virtual TodoReturn updateDefaultTriggerValues() = android32 0x539318;
	virtual TodoReturn valueDidChange(int, float) = android32 0x5392b4;
}

[[link(android)]]
class SetupAreaFadeTriggerPopup : SetupAreaMoveTriggerPopup {
	// virtual ~SetupAreaFadeTriggerPopup();

	static SetupAreaFadeTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*) = android32 0x537610;

	bool init(EnterEffectObject*, cocos2d::CCArray*) = android32 0x537224;
}

[[link(android)]]
class SetupAreaMoveTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupAreaMoveTriggerPopup();
	// SetupAreaMoveTriggerPopup();

	static SetupAreaMoveTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*) = android32 0x53671c;

	TodoReturn addAreaDefaultControls(int) = android32 0x5353b8;
	TodoReturn getModeValues(int, int&, bool&, bool&) = android32 0x535260;
	bool init(EnterEffectObject*, cocos2d::CCArray*) = android32 0x535f54;
	void onMode(cocos2d::CCObject* sender) = android32 0x5352b4;
	void onNextFreeEffectID(cocos2d::CCObject* sender) = android32 0x534aae;
	void onSpecialTarget(cocos2d::CCObject* sender) = android32 0x5351cc;
	TodoReturn updateEnterTargetIDState() = android32 0x53504c;

	virtual TodoReturn updateInputValue(int, float&) = android32 0x536818;
	virtual TodoReturn updateDefaultTriggerValues() = android32 0x53518c;
	virtual TodoReturn updateInputNode(int, float) = android32 0x5367e6;
	virtual TodoReturn valueDidChange(int, float) = android32 0x534d28;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = android32 0x53677a;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = android32 0x5367aa;
}

[[link(android)]]
class SetupAreaRotateTriggerPopup : SetupAreaMoveTriggerPopup {
	// virtual ~SetupAreaRotateTriggerPopup();

	static SetupAreaRotateTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*) = android32 0x537180;

	bool init(EnterEffectObject*, cocos2d::CCArray*) = android32 0x536d8c;
}

[[link(android)]]
class SetupAreaTintTriggerPopup : SetupAreaMoveTriggerPopup, HSVWidgetDelegate {
	// virtual ~SetupAreaTintTriggerPopup();

	static SetupAreaTintTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*) = android32 0x537d44;

	bool init(EnterEffectObject*, cocos2d::CCArray*) = android32 0x537788;
	void onHSV(cocos2d::CCObject* sender) = android32 0x534c5c;
	TodoReturn updateHSVButton() = android32 0x5376b4;

	virtual TodoReturn determineStartValues() = android32 0x534ad8;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x534bec;
	virtual TodoReturn valueDidChange(int, float) = android32 0x534d92;
	virtual TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue) = android32 0x537780 = android32 0x537758;
}

[[link(android)]]
class SetupAreaTransformTriggerPopup : SetupAreaMoveTriggerPopup {
	// virtual ~SetupAreaTransformTriggerPopup();

	static SetupAreaTransformTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*) = android32 0x536ce8;

	bool init(EnterEffectObject*, cocos2d::CCArray*) = android32 0x536838;
}

[[link(android)]]
class SetupAreaTriggerPopup : SetupAreaMoveTriggerPopup {
	// virtual ~SetupAreaTriggerPopup();

	static SetupAreaTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*) = android32 0x538114;

	bool init(EnterEffectObject*, cocos2d::CCArray*) = android32 0x537df8;
}

[[link(android)]]
class SetupArtSwitchPopup : SetupTriggerPopup, SelectArtDelegate {
	// virtual ~SetupArtSwitchPopup();

	static SetupArtSwitchPopup* create(ArtTriggerGameObject*, cocos2d::CCArray*, int) = android32 0x55ad04;

	bool init(ArtTriggerGameObject*, cocos2d::CCArray*, int) = android32 0x55aa40;
	void onArt(cocos2d::CCObject* sender) = android32 0x554d7c;

	virtual TodoReturn selectArtClosed(SelectArtLayer*) = android32 0x55aa38 = android32 0x55a9bc;
}

[[link(android)]]
class SetupAudioLineGuidePopup : SetupTriggerPopup, SelectSettingDelegate {
	// virtual ~SetupAudioLineGuidePopup();

	static SetupAudioLineGuidePopup* create(AudioLineGuideGameObject*, cocos2d::CCArray*) = android32 0x55a024;

	bool init(AudioLineGuideGameObject*, cocos2d::CCArray*) = android32 0x559bfc;
	void onSpeed(cocos2d::CCObject* sender) = android32 0x554cb6;

	virtual TodoReturn selectSettingClosed(SelectSettingLayer*) = android32 0x554d74 = android32 0x554cec;
}

[[link(android)]]
class SetupAudioTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupAudioTriggerPopup();

	TodoReturn addProxVolControls(int) = android32 0x5521fc;
	TodoReturn addTimeControls(int, float) = android32 0x551ee8;
	void onProxMode(cocos2d::CCObject* sender) = android32 0x551c74;
	TodoReturn updateSpecialGroup() = android32 0x552114;

	virtual TodoReturn valueDidChange(int, float) = android32 0x552182;
}

[[link(android)]]
class SetupBGSpeedTrigger : SetupTriggerPopup {
	// virtual ~SetupBGSpeedTrigger();

	static SetupBGSpeedTrigger* create(EffectGameObject*, cocos2d::CCArray*, int) = android32 0x540c44;

	bool init(EffectGameObject*, cocos2d::CCArray*, int) = android32 0x5409cc;
}

[[link(android)]]
class SetupCameraEdgePopup : SetupTriggerPopup {
	// virtual ~SetupCameraEdgePopup();

	static SetupCameraEdgePopup* create(CameraTriggerGameObject*, cocos2d::CCArray*) = android32 0x526774;

	bool init(CameraTriggerGameObject*, cocos2d::CCArray*) = android32 0x525e88;
	void onCameraEdge(cocos2d::CCObject* sender) = android32 0x525d6a;
	void onTargetIDArrow(cocos2d::CCObject* sender) = android32 0x5269f2;
	void onUnlockEdge(cocos2d::CCObject* sender) = android32 0x5269d4;
	TodoReturn updateTargetID() = android32 0x526928;
	TodoReturn updateTextInputLabel() = android32 0x525e1c;

	virtual TodoReturn determineStartValues() = android32 0x525cde;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x525cb6;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x5269cc = android32 0x526980;
}

[[link(android)]]
class SetupCameraGuidePopup : SetupTriggerPopup {
	// virtual ~SetupCameraGuidePopup();

	static SetupCameraGuidePopup* create(CameraTriggerGameObject*, cocos2d::CCArray*) = android32 0x55a3e8;

	bool init(CameraTriggerGameObject*, cocos2d::CCArray*) = android32 0x55a0d4;
}

[[link(android)]]
class SetupCameraModePopup : SetupTriggerPopup {
	// virtual ~SetupCameraModePopup();

	static SetupCameraModePopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x53b704;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x53b0c4;
	void onEditCameraSettings(cocos2d::CCObject* sender) = android32 0x53b8e8;
	void onUnboundMode(cocos2d::CCObject* sender) = android32 0x53afce;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x53b944;
	TodoReturn updateCameraEasing() = android32 0x53b048;
	TodoReturn updateCameraEasingLabel() = android32 0x53b018;
	TodoReturn updateCameraPadding() = android32 0x53b8ac;
	TodoReturn updateCameraPaddingLabel() = android32 0x53b090;
	TodoReturn updateItemVisibility() = android32 0x53af78;

	virtual TodoReturn determineStartValues() = android32 0x53ae40;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x53ae3a;
}

[[link(android)]]
class SetupCameraOffsetTrigger : SetupTriggerPopup {
	// virtual ~SetupCameraOffsetTrigger();

	static SetupCameraOffsetTrigger* create(CameraTriggerGameObject*, cocos2d::CCArray*) = android32 0x4e07a0;

	bool init(CameraTriggerGameObject*, cocos2d::CCArray*) = android32 0x4dfafc;
	void onEasing(cocos2d::CCObject* sender) = android32 0x4e0984;
	void onEasingRate(cocos2d::CCObject* sender) = android32 0x4df5b4;
	void onTargetMode(cocos2d::CCObject* sender) = android32 0x4df648;
	TodoReturn posFromSliderValue(float) = android32 0x4df738;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x4e0c4e;
	TodoReturn sliderValueFromPos(int) = android32 0x4df6d4;
	TodoReturn sliderXChanged(cocos2d::CCObject*) = android32 0x4e0b18;
	TodoReturn sliderYChanged(cocos2d::CCObject*) = android32 0x4e0bec;
	TodoReturn toggleEasingRateVisibility() = android32 0x4df800;
	TodoReturn updateDuration() = android32 0x4e0c12;
	TodoReturn updateDurLabel(bool) = android32 0x4df8f0;
	TodoReturn updateEasingLabel() = android32 0x4df858;
	TodoReturn updateEasingRateLabel() = android32 0x4df770;
	TodoReturn updateMoveCommandEasing() = android32 0x4e094c;
	TodoReturn updateMoveCommandEasingRate() = android32 0x4e09c2;
	TodoReturn updateMoveCommandPosX() = android32 0x4e0a6c;
	TodoReturn updateMoveCommandPosY() = android32 0x4e0b40;
	TodoReturn updateValueXLabel() = android32 0x4df9ac;
	TodoReturn updateValueYLabel() = android32 0x4dfa54;

	virtual TodoReturn determineStartValues() = android32 0x4df3a8;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x4df352;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x4e0e10 = android32 0x4e0c7c;
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = android32 0x4e0a64 = android32 0x4e0a00;
}

[[link(android)]]
class SetupCameraRotatePopup : SetupTriggerPopup {
	// virtual ~SetupCameraRotatePopup();

	static SetupCameraRotatePopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x5049d0;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x503ed0;
	void onEasing(cocos2d::CCObject* sender) = android32 0x504ab8;
	void onEasingRate(cocos2d::CCObject* sender) = android32 0x503b6c;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x504c60;
	TodoReturn sliderDegreesChanged(cocos2d::CCObject*) = android32 0x504bdc;
	TodoReturn toggleEasingRateVisibility() = android32 0x503c90;
	TodoReturn updateCommandDegrees() = android32 0x504ba0;
	TodoReturn updateDegreesLabel() = android32 0x503e3c;
	TodoReturn updateDuration() = android32 0x504c24;
	TodoReturn updateDurLabel(bool) = android32 0x503d80;
	TodoReturn updateEasingLabel() = android32 0x503ce8;
	TodoReturn updateEasingRateLabel() = android32 0x503c00;
	TodoReturn updateMoveCommandEasing() = android32 0x504a80;
	TodoReturn updateMoveCommandEasingRate() = android32 0x504af6;

	virtual TodoReturn determineStartValues() = android32 0x503a08;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x5039c8;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x504db0 = android32 0x504c8c;
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = android32 0x504b98 = android32 0x504b34;
}

[[link(android)]]
class SetupCameraRotatePopup2 : SetupTriggerPopup {
	// virtual ~SetupCameraRotatePopup2();

	static SetupCameraRotatePopup2* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x50508c;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x504db8;
}

[[link(android)]]
class SetupCheckpointPopup : SetupTriggerPopup {
	// virtual ~SetupCheckpointPopup();

	static SetupCheckpointPopup* create(CheckpointGameObject*, cocos2d::CCArray*) = android32 0x555fbc;

	bool init(CheckpointGameObject*, cocos2d::CCArray*) = android32 0x555cf8;
}

[[link(android)]]
class SetupCoinLayer : SetupTriggerPopup {
	// virtual ~SetupCoinLayer();

	static SetupCoinLayer* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x5597bc;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x5595a4;
}

[[link(android)]]
class SetupCollisionStateTriggerPopup : SetupInstantCollisionTriggerPopup {
	// virtual ~SetupCollisionStateTriggerPopup();

	static SetupCollisionStateTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d39e8;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d37e8;
}

[[link(android)]]
class SetupCollisionTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupCollisionTriggerPopup();

	static SetupCollisionTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d2ebc;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d2674;
	void onActivateOnExit(cocos2d::CCObject* sender) = android32 0x4d2338;
	void onEnableGroup(cocos2d::CCObject* sender) = android32 0x4d22f0;
	void onItemID2Arrow(cocos2d::CCObject* sender) = android32 0x4d305a;
	void onItemIDArrow(cocos2d::CCObject* sender) = android32 0x4d2fda;
	void onTargetIDArrow(cocos2d::CCObject* sender) = android32 0x4d318c;
	void onTargetP1(cocos2d::CCObject* sender) = android32 0x4d2428;
	void onTargetP2(cocos2d::CCObject* sender) = android32 0x4d2494;
	void onTargetPP(cocos2d::CCObject* sender) = android32 0x4d257c;
	TodoReturn updateItemID() = android32 0x4d2f88;
	TodoReturn updateItemID2() = android32 0x4d3008;
	TodoReturn updateItemID2InputLabel() = android32 0x4d2500;
	TodoReturn updateItemIDInputLabel() = android32 0x4d2380;
	TodoReturn updateTargetID() = android32 0x4d3088;
	TodoReturn updateTargetIDInputLabel() = android32 0x4d2608;

	virtual TodoReturn determineStartValues() = android32 0x4d21fc;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x4d21a6;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x4d3184 = android32 0x4d30e0;
}

[[link(android)]]
class SetupCountTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupCountTriggerPopup();

	static SetupCountTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d4768;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d3e34;
	void onEnableGroup(cocos2d::CCObject* sender) = android32 0x4d3c5e;
	void onItemIDArrow(cocos2d::CCObject* sender) = android32 0x4d497a;
	void onMultiActivate(cocos2d::CCObject* sender) = android32 0x4d3ca6;
	void onTargetCountArrow(cocos2d::CCObject* sender) = android32 0x4d4b24;
	void onTargetIDArrow(cocos2d::CCObject* sender) = android32 0x4d4a08;
	TodoReturn updateCountTextInputLabel() = android32 0x4d3dc8;
	TodoReturn updateItemID() = android32 0x4d4928;
	TodoReturn updateItemIDInputLabel() = android32 0x4d3cf0;
	TodoReturn updateTargetCount() = android32 0x4d4a36;
	TodoReturn updateTargetID() = android32 0x4d49ae;
	TodoReturn updateTargetIDInputLabel() = android32 0x4d3d5c;

	virtual TodoReturn determineStartValues() = android32 0x4d3b1c;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x4d3bf8;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x4d4b1c = android32 0x4d4a78;
}

[[link(android)]]
class SetupDashRingPopup : SetupTriggerPopup {
	// virtual ~SetupDashRingPopup();

	static SetupDashRingPopup* create(DashRingObject*, cocos2d::CCArray*) = android32 0x55b7d8;

	bool init(DashRingObject*, cocos2d::CCArray*) = android32 0x55b454;
}

[[link(android)]]
class SetupEndPopup : SetupTriggerPopup {
	// virtual ~SetupEndPopup();

	static SetupEndPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x4e4108;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x4e3a6c;
	void onLockY(cocos2d::CCObject* sender) = android32 0x4e3970;
	void onMultiActivate(cocos2d::CCObject* sender) = android32 0x4e3778;
	void onReversed(cocos2d::CCObject* sender) = android32 0x4e39b8;
	void onTargetIDArrow(cocos2d::CCObject* sender) = android32 0x4e4268;
	TodoReturn updateTargetID() = android32 0x4e41bc;
	TodoReturn updateTextInputLabel() = android32 0x4e3a00;

	virtual TodoReturn determineStartValues() = android32 0x4e38e4;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x4e38bc;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x4e3798 = android32 0x4e3790;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x4e4260 = android32 0x4e4214;
}

[[link(android)]]
class SetupEnterEffectPopup : SetupTriggerPopup, HSVWidgetDelegate {
	// virtual ~SetupEnterEffectPopup();

	static SetupEnterEffectPopup* create(EnterEffectObject*, cocos2d::CCArray*, int) = android32 0x53aaf4;

	bool init(EnterEffectObject*, cocos2d::CCArray*, int) = android32 0x5398c0;
	void onEnterType(cocos2d::CCObject* sender) = android32 0x539706;
	void onHSV(cocos2d::CCObject* sender) = android32 0x539788;
	void onNextFreeEnterChannel(cocos2d::CCObject* sender) = android32 0x5396b0;
	void onNextFreeEnterEffectID(cocos2d::CCObject* sender) = android32 0x5396dc;
	TodoReturn updateHSVButton() = android32 0x5397ec;

	virtual TodoReturn determineStartValues() = android32 0x5394dc;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x539462;
	virtual TodoReturn updateInputValue(int, float&) = android32 0x53ad76;
	virtual TodoReturn updateInputNode(int, float) = android32 0x53ad44;
	virtual TodoReturn valueDidChange(int, float) = android32 0x539624;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = android32 0x53acd8;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = android32 0x53ad08;
	virtual TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue) = android32 0x5398b8 = android32 0x539890;
}

[[link(android)]]
class SetupEnterTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupEnterTriggerPopup();

	static SetupEnterTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*) = android32 0x48ae30;

	bool init(EnterEffectObject*, cocos2d::CCArray*) = android32 0x48ab04;
	void onEnterType(cocos2d::CCObject* sender) = android32 0x487ad4;

	virtual TodoReturn determineStartValues() = android32 0x487976;
}

[[link(android)]]
class SetupEventLinkPopup : SetupTriggerPopup {
	// virtual ~SetupEventLinkPopup();

	static SetupEventLinkPopup* create(EventLinkTrigger*, cocos2d::CCArray*) = android32 0x555154;

	bool init(EventLinkTrigger*, cocos2d::CCArray*) = android32 0x554e44;
	void onSelectEvent(cocos2d::CCObject* sender) = android32 0x55cb74;
	TodoReturn updateEventIDs(gd::set<int>&) = android32 0x55bbfa;
}

[[link(android)]]
class SetupForceBlockPopup : SetupTriggerPopup {
	// virtual ~SetupForceBlockPopup();

	static SetupForceBlockPopup* create(ForceBlockGameObject*, cocos2d::CCArray*) = android32 0x55a898;

	bool init(ForceBlockGameObject*, cocos2d::CCArray*) = android32 0x55a48c;

	virtual TodoReturn valueDidChange(int, float) = android32 0x554df2;
}

[[link(android)]]
class SetupGameplayOffsetPopup : SetupTriggerPopup {
	// virtual ~SetupGameplayOffsetPopup();

	static SetupGameplayOffsetPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x527638;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x527224;
	void onDefaultValues(cocos2d::CCObject* sender) = android32 0x526a28;

	virtual TodoReturn updateInputValue(int, float&) = android32 0x527786;
	virtual TodoReturn updateInputNode(int, float) = android32 0x527754;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = android32 0x5276e8;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = android32 0x527718;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = android32 0x526b92;
}

[[link(android)]]
class SetupGradientPopup : SetupTriggerPopup {
	// virtual ~SetupGradientPopup();

	static SetupGradientPopup* create(GradientTriggerObject*, cocos2d::CCArray*) = android32 0x52e97c;

	bool init(GradientTriggerObject*, cocos2d::CCArray*) = android32 0x52dfa8;
	void onBlending(cocos2d::CCObject* sender) = android32 0x52df74;
	void onZLayer(cocos2d::CCObject* sender) = android32 0x52de68;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x52deb0;
	TodoReturn updateBlending() = android32 0x52dec6;
	TodoReturn updateBlendingLabel() = android32 0x52df00;
	TodoReturn updateGradientLabels(bool) = android32 0x52dd34;
	TodoReturn updateZLayerButtons() = android32 0x52de14;

	virtual TodoReturn determineStartValues() = android32 0x52dc24;
	virtual void onPlusButton(cocos2d::CCObject* sender) = android32 0x52dcf8;
	virtual TodoReturn updateToggleItem(int, bool) = android32 0x52ddf4;
	virtual TodoReturn valueDidChange(int, float) = android32 0x52dcc0;
}

[[link(android)]]
class SetupGravityModPopup : FLAlertLayer, TextInputDelegate {
	// virtual ~SetupGravityModPopup();

	static SetupGravityModPopup* create(EffectGameObject*, cocos2d::CCArray*, bool) = android32 0x50c720;

	TodoReturn determineStartValues() = android32 0x50bd78;
	bool init(EffectGameObject*, cocos2d::CCArray*, bool) = android32 0x50bf78;
	void onClose(cocos2d::CCObject* sender) = android32 0x50bc60;
	void onItemIDArrow(cocos2d::CCObject* sender) = android32 0x50c8c8;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x50beb8;
	TodoReturn updateItemID() = android32 0x50c824;
	TodoReturn updateTextInputLabel() = android32 0x50bf0c;
	TodoReturn updateValue() = android32 0x50be74;
	TodoReturn updateValueLabel() = android32 0x50be28;

	virtual void keyBackClicked() = android32 0x50bc9e = android32 0x50bc98;
	virtual void show() = android32 0x50bd42;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x50bc58 = android32 0x50bc50;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x50c8c0 = android32 0x50c878;
}

[[link(android)]]
class SetupGravityTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupGravityTriggerPopup();

	static SetupGravityTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x541064;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x540dd0;

	virtual TodoReturn valueDidChange(int, float) = android32 0x540d7a;
}

[[link(android)]]
class SetupInstantCollisionTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupInstantCollisionTriggerPopup();

	static SetupInstantCollisionTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d3578;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d31c0;
	TodoReturn updateSpecialNodes() = android32 0x4d361c;

	virtual TodoReturn updateDefaultTriggerValues() = android32 0x4d37d6;
	virtual TodoReturn valueDidChange(int, float) = android32 0x4d37c4;
}

[[link(android)]]
class SetupInstantCountPopup : SetupTriggerPopup {
	// virtual ~SetupInstantCountPopup();

	static SetupInstantCountPopup* create(CountTriggerGameObject*, cocos2d::CCArray*) = android32 0x4d5eec;

	bool init(CountTriggerGameObject*, cocos2d::CCArray*) = android32 0x4d56c8;
	void onCountType(cocos2d::CCObject* sender) = android32 0x4d5504;
	void onEnableGroup(cocos2d::CCObject* sender) = android32 0x4d54bc;
	void onTargetCountArrow(cocos2d::CCObject* sender) = android32 0x4d62a4;
	void onTargetID2Arrow(cocos2d::CCObject* sender) = android32 0x4d6188;
	void onTargetIDArrow(cocos2d::CCObject* sender) = android32 0x4d60fe;
	TodoReturn updateCountTextInputLabel() = android32 0x4d565c;
	TodoReturn updateItemID() = android32 0x4d60ac;
	TodoReturn updateItemIDInputLabel() = android32 0x4d5584;
	TodoReturn updateTargetCount() = android32 0x4d61b6;
	TodoReturn updateTargetID() = android32 0x4d6132;
	TodoReturn updateTargetIDInputLabel() = android32 0x4d55f0;

	virtual TodoReturn determineStartValues() = android32 0x4d53e4;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x4d538e;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x4d629c = android32 0x4d61f8;
}

[[link(android)]]
class SetupInteractObjectPopup : SetupTriggerPopup {
	// virtual ~SetupInteractObjectPopup();

	static SetupInteractObjectPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d515c;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d4cac;
	TodoReturn updateItems() = android32 0x4d4c2e;

	virtual void onClose(cocos2d::CCObject* sender) = android32 0x4d4be2;
	virtual void onPlusButton(cocos2d::CCObject* sender) = android32 0x4d4c04;
	virtual TodoReturn valueDidChange(int, float) = android32 0x4d4c8a;
}

[[link(android)]]
class SetupItemCompareTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupItemCompareTriggerPopup();

	static SetupItemCompareTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*) = android32 0x55946c;

	bool init(ItemTriggerGameObject*, cocos2d::CCArray*) = android32 0x558964;
	void onOpButton(cocos2d::CCObject* sender) = android32 0x559514;
	TodoReturn updateFormulaLabel() = android32 0x5583bc;
	TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int) = android32 0x5582d4;

	virtual TodoReturn valueDidChange(int, float) = android32 0x558944;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = android32 0x558830;
}

[[link(android)]]
class SetupItemEditTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupItemEditTriggerPopup();

	static SetupItemEditTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*) = android32 0x558180;

	bool init(ItemTriggerGameObject*, cocos2d::CCArray*) = android32 0x557728;
	void onOpButton(cocos2d::CCObject* sender) = android32 0x558228;
	TodoReturn updateFormulaLabel() = android32 0x556fb4;
	TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int) = android32 0x556eb4;

	virtual TodoReturn valueDidChange(int, float) = android32 0x55770a;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = android32 0x557588;
}

[[link(android)]]
class SetupKeyframeAnimPopup : SetupTriggerPopup {
	// virtual ~SetupKeyframeAnimPopup();

	static SetupKeyframeAnimPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x550834;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x5502dc;
}

[[link(android)]]
class SetupKeyframePopup : SetupTriggerPopup {
	// virtual ~SetupKeyframePopup();

	static SetupKeyframePopup* create(KeyframeGameObject*, cocos2d::CCArray*, LevelEditorLayer*) = android32 0x551540;

	bool init(KeyframeGameObject*, cocos2d::CCArray*, LevelEditorLayer*) = android32 0x5509a4;
	void onTimeMode(cocos2d::CCObject* sender) = android32 0x550938;
	TodoReturn refreshPreviewArt() = android32 0x5515f4;
	TodoReturn updateTimeModeButtons() = android32 0x5508d8;

	virtual void onClose(cocos2d::CCObject* sender) = android32 0x550274;
	virtual void onCustomButton(cocos2d::CCObject* sender) = android32 0x551700;
	virtual TodoReturn valueDidChange(int, float) = android32 0x5516e8;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = android32 0x5501fe;
}

[[link(android)]]
class SetupMGTrigger : SetupTriggerPopup {
	// virtual ~SetupMGTrigger();

	static SetupMGTrigger* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x540584;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x53faa8;
	void onEasing(cocos2d::CCObject* sender) = android32 0x54066c;
	void onEasingRate(cocos2d::CCObject* sender) = android32 0x53f694;
	TodoReturn posFromSliderValue(float) = android32 0x53f78c;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x540862;
	TodoReturn sliderValueFromPos(int) = android32 0x53f728;
	TodoReturn sliderYChanged(cocos2d::CCObject*) = android32 0x540800;
	TodoReturn toggleEasingRateVisibility() = android32 0x53f854;
	TodoReturn updateDuration() = android32 0x540826;
	TodoReturn updateDurLabel(bool) = android32 0x53f944;
	TodoReturn updateEasingLabel() = android32 0x53f8ac;
	TodoReturn updateEasingRateLabel() = android32 0x53f7c4;
	TodoReturn updateMoveCommandEasing() = android32 0x540634;
	TodoReturn updateMoveCommandEasingRate() = android32 0x5406aa;
	TodoReturn updateMoveCommandPosY() = android32 0x540754;
	TodoReturn updateValueYLabel() = android32 0x53fa00;

	virtual TodoReturn determineStartValues() = android32 0x53f4f8;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x53f4b8;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x5409c4 = android32 0x540890;
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = android32 0x54074c = android32 0x5406e8;
}

[[link(android)]]
class SetupMoveCommandPopup : SetupTriggerPopup {
	// virtual ~SetupMoveCommandPopup();

	static SetupMoveCommandPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x498fa4;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x498504;
	TodoReturn updateControlVisibility() = android32 0x4982a0;

	virtual TodoReturn updateInputValue(int, float&) = android32 0x4981a2;
	virtual TodoReturn updateInputNode(int, float) = android32 0x498112;
	virtual TodoReturn valueDidChange(int, float) = android32 0x4983f2;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = android32 0x4981c8;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = android32 0x49821c;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = android32 0x49813a;
}

[[link(android)]]
class SetupObjectControlPopup : SetupTriggerPopup {
	// virtual ~SetupObjectControlPopup();

	static SetupObjectControlPopup* create(ObjectControlGameObject*, cocos2d::CCArray*) = android32 0x55b3b0;

	bool init(ObjectControlGameObject*, cocos2d::CCArray*) = android32 0x55b200;
}

[[link(android)]]
class SetupObjectOptions2Popup : SetupTriggerPopup {
	// virtual ~SetupObjectOptions2Popup();

	static SetupObjectOptions2Popup* create(GameObject*, cocos2d::CCArray*) = android32 0x4eac34;

	bool init(GameObject*, cocos2d::CCArray*) = android32 0x4ea964;

	virtual void onPlusButton(cocos2d::CCObject* sender) = android32 0x4e672a;
}

[[link(android)]]
class SetupObjectOptionsPopup : FLAlertLayer, TextInputDelegate {
	// virtual ~SetupObjectOptionsPopup();

	static SetupObjectOptionsPopup* create(GameObject*, cocos2d::CCArray*, SetGroupIDLayer*) = android32 0x4ea848;

	bool init(GameObject*, cocos2d::CCArray*, SetGroupIDLayer*) = android32 0x4e965c;
	void onAlwaysHide(cocos2d::CCObject* sender) = android32 0x4e6acc;
	void onApplyScaleStick(cocos2d::CCObject* sender) = android32 0x4e6c0c;
	void onCenterEffect(cocos2d::CCObject* sender) = android32 0x4e6d0c;
	void onDisableGlow(cocos2d::CCObject* sender) = android32 0x4e6858;
	void onDisableObject(cocos2d::CCObject* sender) = android32 0x4e6a18;
	void onDontBoost(cocos2d::CCObject* sender) = android32 0x4e6c8c;
	void onDontBoostX(cocos2d::CCObject* sender) = android32 0x4e6ccc;
	void onDontEnter(cocos2d::CCObject* sender) = android32 0x4e6898;
	void onDontFade(cocos2d::CCObject* sender) = android32 0x4e68d8;
	void onExtendedCollision(cocos2d::CCObject* sender) = android32 0x4e6648;
	void onExtraSticky(cocos2d::CCObject* sender) = android32 0x4e6c4c;
	void onGripSlope(cocos2d::CCObject* sender) = android32 0x4e6bcc;
	void onHideEffects(cocos2d::CCObject* sender) = android32 0x4e6918;
	void onHighDetail(cocos2d::CCObject* sender) = android32 0x4e6756;
	void onIceBlock(cocos2d::CCObject* sender) = android32 0x4e6b8c;
	void onNoAudioScale(cocos2d::CCObject* sender) = android32 0x4e6818;
	void onNonStickX(cocos2d::CCObject* sender) = android32 0x4e6b0c;
	void onNonStickY(cocos2d::CCObject* sender) = android32 0x4e6b4c;
	void onNoParticle(cocos2d::CCObject* sender) = android32 0x4e6958;
	void onPassable(cocos2d::CCObject* sender) = android32 0x4e6a8c;
	void onReverse(cocos2d::CCObject* sender) = android32 0x4e6dac;
	void onSinglePlayerTouch(cocos2d::CCObject* sender) = android32 0x4e6d5c;
	void onToggleAreaParent(cocos2d::CCObject* sender) = android32 0x4e69d8;
	void onToggleGroupParent(cocos2d::CCObject* sender) = android32 0x4e6998;

	virtual void keyBackClicked() = android32 0x4e60b2 = android32 0x4e60a8;
	virtual void show() = android32 0x4e621e;
	virtual TodoReturn determineStartValues() = android32 0x4e6252;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x4e60ba;
}

[[link(android)]]
class SetupObjectTogglePopup : SetupTriggerPopup {
	// virtual ~SetupObjectTogglePopup();

	static SetupObjectTogglePopup* create(EffectGameObject*, cocos2d::CCArray*, bool) = android32 0x49b3c0;

	bool init(EffectGameObject*, cocos2d::CCArray*, bool) = android32 0x49aee8;

	virtual void onClose(cocos2d::CCObject* sender) = android32 0x49ae8e;
	virtual TodoReturn valueDidChange(int, float) = android32 0x49aeb0;
}

[[link(android)]]
class SetupOpacityPopup : SetupTriggerPopup {
	// virtual ~SetupOpacityPopup();

	static SetupOpacityPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x49a968;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x49a0a4;
	void onTargetIDArrow(cocos2d::CCObject* sender) = android32 0x49adcc;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x49aba0;
	TodoReturn updateDuration() = android32 0x49ab18;
	TodoReturn updateDurLabel(bool) = android32 0x499f48;
	TodoReturn updateOpacity() = android32 0x49ab5c;
	TodoReturn updateOpacityLabel() = android32 0x49a004;
	TodoReturn updateTargetID() = android32 0x49ac74;
	TodoReturn updateTextInputLabel() = android32 0x49a038;

	virtual TodoReturn determineStartValues() = android32 0x499e44;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x499e02;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x499d6c = android32 0x499d64;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x49adc4 = android32 0x49accc;
}

[[link(android)]]
class SetupOptionsTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupOptionsTriggerPopup();

	static SetupOptionsTriggerPopup* create(GameOptionsTrigger*, cocos2d::CCArray*) = android32 0x51dcd0;

	TodoReturn addOption(int, gd::string) = android32 0x51d75c;
	bool init(GameOptionsTrigger*, cocos2d::CCArray*) = android32 0x51d8f4;

	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = android32 0x51d6de;
}

[[link(android)]]
class SetupPersistentItemTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupPersistentItemTriggerPopup();

	static SetupPersistentItemTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*) = android32 0x559b58;

	bool init(ItemTriggerGameObject*, cocos2d::CCArray*) = android32 0x559860;
}

[[link(android)]]
class SetupPickupTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupPickupTriggerPopup();

	static SetupPickupTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d680c;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d6438;
	TodoReturn updateState() = android32 0x4d638a;

	virtual void onPlusButton(cocos2d::CCObject* sender) = android32 0x4d62d2;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = android32 0x4d63cc;
}

[[link(android)]]
class SetupPlatformerEndPopup : SetupTriggerPopup {
	// virtual ~SetupPlatformerEndPopup();

	static SetupPlatformerEndPopup* create(EndTriggerGameObject*, cocos2d::CCArray*) = android32 0x4e45a0;

	bool init(EndTriggerGameObject*, cocos2d::CCArray*) = android32 0x4e429c;
}

[[link(android)]]
class SetupPlayerControlPopup : SetupTriggerPopup {
	// virtual ~SetupPlayerControlPopup();

	static SetupPlayerControlPopup* create(PlayerControlGameObject*, cocos2d::CCArray*) = android32 0x5555d4;

	bool init(PlayerControlGameObject*, cocos2d::CCArray*) = android32 0x5552c8;
}

[[link(android)]]
class SetupPortalPopup : FLAlertLayer, TextInputDelegate {
	// virtual ~SetupPortalPopup();

	static SetupPortalPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x4e17e8;

	TodoReturn determineStartValues() = android32 0x4e0f04;
	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x4e1174;
	void onClose(cocos2d::CCObject* sender) = android32 0x4e0ec2;
	void onEditCameraSettings(cocos2d::CCObject* sender) = android32 0x4e1924;
	void onUnboundMode(cocos2d::CCObject* sender) = android32 0x4e107e;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x4e1980;
	TodoReturn updateCameraEasing() = android32 0x4e10f8;
	TodoReturn updateCameraEasingLabel() = android32 0x4e10c8;
	TodoReturn updateCameraPadding() = android32 0x4e18e8;
	TodoReturn updateCameraPaddingLabel() = android32 0x4e1140;
	TodoReturn updateItemVisibility() = android32 0x4e1028;

	virtual void keyBackClicked() = android32 0x4e0efc = android32 0x4e0ef6;
}

[[link(android)]]
class SetupPulsePopup : SetupTriggerPopup, cocos2d::extension::ColorPickerDelegate, GJSpecialColorSelectDelegate {
	// virtual ~SetupPulsePopup();

	static SetupPulsePopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x49fd1c;

	TodoReturn getColorValue() = android32 0x49cfb4;
	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x49dacc;
	void onCopy(cocos2d::CCObject* sender) = android32 0x49cfe0;
	void onExclusive(cocos2d::CCObject* sender) = android32 0x49c89c;
	void onGroupMainOnly(cocos2d::CCObject* sender) = android32 0x49cbe0;
	void onGroupSecondaryOnly(cocos2d::CCObject* sender) = android32 0x49cc18;
	void onHSVLegacyMode(cocos2d::CCObject* sender) = android32 0x49c8e4;
	void onPaste(cocos2d::CCObject* sender) = android32 0x49cf88;
	void onSelectPulseMode(cocos2d::CCObject* sender) = android32 0x49d654;
	void onSelectSpecialColor(cocos2d::CCObject* sender) = android32 0x49c848;
	void onSelectSpecialTargetID(cocos2d::CCObject* sender) = android32 0x49c872;
	void onSelectTargetMode(cocos2d::CCObject* sender) = android32 0x49d878;
	void onUpdateCopyColor(cocos2d::CCObject* sender) = android32 0x49ff40;
	void onUpdateCustomColor(cocos2d::CCObject* sender) = android32 0x49d9b0;
	TodoReturn selectColor(cocos2d::ccColor3B) = android32 0x49cf6c;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x49cd1c;
	TodoReturn updateColorLabels() = android32 0x49d048;
	TodoReturn updateColorValue() = android32 0x49cf04;
	TodoReturn updateCopyColor() = android32 0x49d1fe;
	TodoReturn updateCopyColorTextInputLabel() = android32 0x49da1c;
	TodoReturn updateFadeInLabel(bool) = android32 0x49c92c;
	TodoReturn updateFadeInTime() = android32 0x49cc50;
	TodoReturn updateFadeOutLabel(bool) = android32 0x49caa4;
	TodoReturn updateFadeOutTime() = android32 0x49ccd8;
	TodoReturn updateGroupMainOnly() = android32 0x49cb60;
	TodoReturn updateGroupSecondaryOnly() = android32 0x49cba0;
	TodoReturn updateHoldLabel(bool) = android32 0x49c9e8;
	TodoReturn updateHoldTime() = android32 0x49cc94;
	TodoReturn updateHSVValue() = android32 0x49cda8;
	TodoReturn updatePulseMode() = android32 0x49d614;
	TodoReturn updatePulseTargetType() = android32 0x49d778;
	TodoReturn updateTargetID() = android32 0x49d1ba;
	TodoReturn updateTextInputLabel() = android32 0x49d7b8;

	virtual void show() = android32 0x49d008;
	virtual TodoReturn determineStartValues() = android32 0x49c520;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x49ce04;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x49d60c = android32 0x49d368;
	virtual TodoReturn colorValueChanged(cocos2d::ccColor3B) = android32 0x49d1b2 = android32 0x49d158;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = android32 0x49c45e = android32 0x49c45c;
	virtual TodoReturn colorSelectClosed(GJSpecialColorSelect*, int) = android32 0x49d360 = android32 0x49d240;
}

[[link(android)]]
class SetupRandAdvTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupRandAdvTriggerPopup();

	static SetupRandAdvTriggerPopup* create(RandTriggerGameObject*, cocos2d::CCArray*) = android32 0x506458;

	TodoReturn addChance(int, int) = android32 0x506614;
	TodoReturn addChanceToObject(RandTriggerGameObject*, int, int) = android32 0x5052b4;
	TodoReturn callRemoveFromGroup(float) = android32 0x5066b0;
	bool init(RandTriggerGameObject*, cocos2d::CCArray*) = android32 0x505dfc;
	void onAddChance(cocos2d::CCObject* sender) = android32 0x5066e4;
	void onRemoveFromGroup(cocos2d::CCObject* sender) = android32 0x505234;
	TodoReturn removeGroupID(int) = android32 0x506664;
	TodoReturn removeGroupIDFromObject(RandTriggerGameObject*, int) = android32 0x505394;
	TodoReturn updateGroupIDButtons() = android32 0x505838;

	virtual void onClose(cocos2d::CCObject* sender) = android32 0x5051e2;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x505140 = android32 0x50513e;
}

[[link(android)]]
class SetupRandTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupRandTriggerPopup();

	static SetupRandTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x4e33bc;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x4e2ad0;
	void onTargetID2Arrow(cocos2d::CCObject* sender) = android32 0x4e3744;
	void onTargetIDArrow(cocos2d::CCObject* sender) = android32 0x4e35d2;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x4e2988;
	TodoReturn updateChance() = android32 0x4e294c;
	TodoReturn updateChanceLabel(bool) = android32 0x4e2890;
	TodoReturn updateTargetID() = android32 0x4e357c;
	TodoReturn updateTargetID2() = android32 0x4e3606;
	TodoReturn updateTextInputLabel() = android32 0x4e29c0;
	TodoReturn updateTextInputLabel2() = android32 0x4e2a48;

	virtual TodoReturn determineStartValues() = android32 0x4e2756;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x4e282a;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x4e373c = android32 0x4e365c;
}

[[link(android)]]
class SetupResetTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupResetTriggerPopup();

	static SetupResetTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x556ae8;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x556964;
}

[[link(android)]]
class SetupReverbPopup : SetupTriggerPopup {
	// virtual ~SetupReverbPopup();

	static SetupReverbPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*) = android32 0x552de4;

	bool init(SFXTriggerGameObject*, cocos2d::CCArray*) = android32 0x552a08;
	void onPlay(cocos2d::CCObject* sender) = android32 0x551d0a;
	void onReverb(cocos2d::CCObject* sender) = android32 0x552f00;
	TodoReturn updateReverbLabel() = android32 0x552968;

	virtual void onClose(cocos2d::CCObject* sender) = android32 0x551cf0;
}

[[link(android)]]
class SetupRotateCommandPopup : SetupTriggerPopup {
	// virtual ~SetupRotateCommandPopup();

	static SetupRotateCommandPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x4bf5d8;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x4bec6c;
	void onInfiniteDuration(cocos2d::CCObject* sender) = android32 0x4bcdf0;
	TodoReturn updateControlVisibility() = android32 0x4beb04;

	virtual TodoReturn updateInputNode(int, float) = android32 0x4bcaca;
	virtual TodoReturn valueDidChange(int, float) = android32 0x4bebae;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = android32 0x4bcdfc;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = android32 0x4bcace;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = android32 0x4bc924;
}

[[link(android)]]
class SetupRotateGameplayPopup : SetupTriggerPopup {
	// virtual ~SetupRotateGameplayPopup();

	static SetupRotateGameplayPopup* create(RotateGameplayGameObject*, cocos2d::CCArray*) = android32 0x527180;

	bool init(RotateGameplayGameObject*, cocos2d::CCArray*) = android32 0x526c24;

	virtual void onPlusButton(cocos2d::CCObject* sender) = android32 0x526a48;
	virtual TodoReturn valueDidChange(int, float) = android32 0x526bf8;
}

[[link(android)]]
class SetupRotatePopup : SetupTriggerPopup {
	// virtual ~SetupRotatePopup();

	static SetupRotatePopup* create(EnhancedGameObject*, cocos2d::CCArray*) = android32 0x4d6e08;

	bool init(EnhancedGameObject*, cocos2d::CCArray*) = android32 0x4d6b00;

	virtual void onClose(cocos2d::CCObject* sender) = android32 0x4d69b0;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = android32 0x4d69fa;
}

[[link(android)]]
class SetupSequenceTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupSequenceTriggerPopup();

	static SetupSequenceTriggerPopup* create(SequenceTriggerGameObject*) = android32 0x55d9a0;

	bool init(SequenceTriggerGameObject*) = android32 0x55d0b0;
	void onAddChance(cocos2d::CCObject* sender) = android32 0x55db50;
	void onChangeOrder(cocos2d::CCObject* sender) = android32 0x55dbce;
	void onDeleteSelected(cocos2d::CCObject* sender) = android32 0x55dc2a;
	void onSelect(cocos2d::CCObject* sender) = android32 0x55cdc8;
	TodoReturn updateGroupIDButtons() = android32 0x55ce18;

	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = android32 0x55cd26;
}

[[link(android)]]
class SetupSFXEditPopup : SetupAudioTriggerPopup {
	// virtual ~SetupSFXEditPopup();

	static SetupSFXEditPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*, bool) = android32 0x5540e0;

	bool init(SFXTriggerGameObject*, cocos2d::CCArray*, bool) = android32 0x553a80;
}

[[link(android)]]
class SetupSFXPopup : SetupAudioTriggerPopup, CustomSFXDelegate, SFXBrowserDelegate {
	// virtual ~SetupSFXPopup();

	static SetupSFXPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*) = android32 0x5539c0;

	TodoReturn createSFXWidget() = android32 0x552f94;
	bool init(SFXTriggerGameObject*, cocos2d::CCArray*) = android32 0x5531b4;
	void onBrowseSFX(cocos2d::CCObject* sender) = android32 0x551eb4;
	TodoReturn updateLength() = android32 0x552f5a;

	virtual TodoReturn pageChanged() = android32 0x551c18;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x551d6c;
	virtual void onPlusButton(cocos2d::CCObject* sender) = android32 0x552e88;
	virtual TodoReturn valueDidChange(int, float) = android32 0x55313c;
	virtual TodoReturn sfxObjectSelected(SFXInfoObject*) = android32 0x5519ac = android32 0x5519aa;
	virtual TodoReturn getActiveSFXID() = android32 0x5519ba = android32 0x5519b4;
	virtual TodoReturn overridePlaySFX(SFXInfoObject*) = android32 0x551d64 = android32 0x551d3a;
	virtual TodoReturn sfxBrowserClosed(SFXBrowser*) = android32 0x551c6a = android32 0x551c52;
}

[[link(android)]]
class SetupShaderEffectPopup : SetupTriggerPopup {
	// virtual ~SetupShaderEffectPopup();

	static SetupShaderEffectPopup* create(EffectGameObject*, cocos2d::CCArray*, int) = android32 0x5344e8;

	bool init(EffectGameObject*, cocos2d::CCArray*, int) = android32 0x534314;
	void onResetColors(cocos2d::CCObject* sender) = android32 0x52ecee;
	void onZLayer(cocos2d::CCObject* sender) = android32 0x52f064;
	TodoReturn setupBulge() = android32 0x532840;
	TodoReturn setupChromatic() = android32 0x530c7c;
	TodoReturn setupChromaticGlitch() = android32 0x530f90;
	TodoReturn setupColorChange() = android32 0x533cc8;
	TodoReturn setupGlitch() = android32 0x530930;
	TodoReturn setupGrayscale() = android32 0x533370;
	TodoReturn setupHueShift() = android32 0x533b10;
	TodoReturn setupInvertColor() = android32 0x5337bc;
	TodoReturn setupLensCircle() = android32 0x531774;
	TodoReturn setupMotionBlur() = android32 0x5321fc;
	TodoReturn setupPinch() = android32 0x532d38;
	TodoReturn setupPixelate() = android32 0x5313c8;
	TodoReturn setupRadialBlur() = android32 0x531c74;
	TodoReturn setupSepia() = android32 0x533618;
	TodoReturn setupShaderTrigger() = android32 0x52f110;
	TodoReturn setupShockLine() = android32 0x52ff54;
	TodoReturn setupShockWave() = android32 0x52f4ec;
	TodoReturn setupSplitScreen() = android32 0x53407c;
	TodoReturn updateZLayerButtons() = android32 0x52efec;
	TodoReturn zLayerToString(int) = android32 0x52ef08;

	virtual TodoReturn toggleGroup(int, bool) = android32 0x52ecbc;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x52ebca;
	virtual TodoReturn updateDefaultTriggerValues() = android32 0x52ebd0;
	virtual TodoReturn valueDidChange(int, float) = android32 0x52ed38;
}

[[link(android)]]
class SetupShakePopup : SetupTriggerPopup {
	// virtual ~SetupShakePopup();

	static SetupShakePopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d7a78;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d7460;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x4d7c64;
	TodoReturn updateDuration() = android32 0x4d7270;
	TodoReturn updateDurLabel(bool) = android32 0x4d71b4;
	TodoReturn updateInterval() = android32 0x4d7c28;
	TodoReturn updateIntervalLabel(bool) = android32 0x4d73a4;
	TodoReturn updateShake() = android32 0x4d7368;
	TodoReturn updateShakeLabel(bool) = android32 0x4d72ac;

	virtual TodoReturn determineStartValues() = android32 0x4d7090;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x4d703a;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x4d7ee0 = android32 0x4d7cf8;
}

[[link(android)]]
class SetupSmartBlockLayer : FLAlertLayer, TextInputDelegate, SelectArtDelegate {
	// virtual ~SetupSmartBlockLayer();

	static SetupSmartBlockLayer* create(SmartGameObject*, cocos2d::CCArray*) = android32 0x51b5a4;

	TodoReturn determineStartValues() = android32 0x51ac08;
	bool init(SmartGameObject*, cocos2d::CCArray*) = android32 0x51ac9c;
	void onAllowFlipping(cocos2d::CCObject* sender) = android32 0x51a5b4;
	void onAllowRotation(cocos2d::CCObject* sender) = android32 0x51a590;
	void onClose(cocos2d::CCObject* sender) = android32 0x51a754;
	void onCreate(cocos2d::CCObject* sender) = android32 0x51a928;
	void onCreateAll(cocos2d::CCObject* sender) = android32 0x51a670;
	void onCreateTemplate(cocos2d::CCObject* sender) = android32 0x51a9ce;
	void onDontDelete(cocos2d::CCObject* sender) = android32 0x51a648;
	void onIgnoreCorners(cocos2d::CCObject* sender) = android32 0x51a5fa;
	void onNearbyReference(cocos2d::CCObject* sender) = android32 0x51a620;
	void onPasteTemplate(cocos2d::CCObject* sender) = android32 0x51a7c4;
	void onReferenceOnly(cocos2d::CCObject* sender) = android32 0x51abc0;
	void onSelectPremade(cocos2d::CCObject* sender) = android32 0x51aa1a;
	void onSelectTemplate(cocos2d::CCObject* sender) = android32 0x51aa46;

	virtual void keyBackClicked() = android32 0x51a7bc = android32 0x51a7b6;
	virtual void show() = android32 0x51a55c;
	virtual TodoReturn selectArtClosed(SelectArtLayer*) = android32 0x51a2e4 = android32 0x51a2da;
}

[[link(android)]]
class SetupSmartTemplateLayer : FLAlertLayer, TextInputDelegate, FLAlertLayerProtocol {
	// virtual ~SetupSmartTemplateLayer();

	static SetupSmartTemplateLayer* create(GJSmartTemplate*) = android32 0x51bc38;

	bool init(GJSmartTemplate*) = android32 0x51b66c;
	void onBack(cocos2d::CCObject* sender) = android32 0x51bd54;
	void onClick(cocos2d::CCObject* sender) = android32 0x51d55c;
	void onClose(cocos2d::CCObject* sender) = android32 0x51bcdc;

	virtual void keyBackClicked() = android32 0x51bdae = android32 0x51bda8;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x51bda0 = android32 0x51bd72;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = android32 0x51ab9c = android32 0x51aafc;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x51aaf4 = android32 0x51aa60;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x51a2f4 = android32 0x51a2ec;
}

[[link(android)]]
class SetupSongTriggerPopup : SetupAudioTriggerPopup, MusicDownloadDelegate, SongPlaybackDelegate {
	// virtual ~SetupSongTriggerPopup();

	static SetupSongTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x503058;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x502a1c;
	void onResetSongTime(cocos2d::CCObject* sender) = android32 0x503214;
	void onSavePlaybackPos(cocos2d::CCObject* sender) = android32 0x502710;
	TodoReturn updateApplyPrepare(bool) = android32 0x5028a0;
	TodoReturn updateLength() = android32 0x5028c4;
	TodoReturn updateSongTimeSlider() = android32 0x502968;

	virtual TodoReturn pageChanged() = android32 0x50284e;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x5027f4;
	virtual TodoReturn valueDidChange(int, float) = android32 0x502902;
	virtual TodoReturn onPlayback(SongInfoObject*) = android32 0x502708 = android32 0x50258c;
}

[[link(android)]]
class SetupSpawnParticlePopup : SetupTriggerPopup {
	// virtual ~SetupSpawnParticlePopup();

	static SetupSpawnParticlePopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x555c54;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x555678;
}

[[link(android)]]
class SetupSpawnPopup : SetupTriggerPopup {
	// virtual ~SetupSpawnPopup();

	static SetupSpawnPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x49c2a0;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x49bc30;
	void onAddRemap(cocos2d::CCObject* sender) = android32 0x49b66c;
	void onDeleteRemap(cocos2d::CCObject* sender) = android32 0x49b6ee;
	void onSelectRemap(cocos2d::CCObject* sender) = android32 0x49b750;
	TodoReturn queueUpdateButtons() = android32 0x49b628;
	TodoReturn updateRemapButtons(float) = android32 0x49b7e8;

	virtual void onClose(cocos2d::CCObject* sender) = android32 0x49b568;
}

[[link(android)]]
class SetupStaticCameraPopup : SetupTriggerPopup {
	// virtual ~SetupStaticCameraPopup();

	static SetupStaticCameraPopup* create(CameraTriggerGameObject*, cocos2d::CCArray*) = android32 0x4e20a8;

	bool init(CameraTriggerGameObject*, cocos2d::CCArray*) = android32 0x4e1b68;
	TodoReturn updateState() = android32 0x4e1afa;

	virtual TodoReturn valueDidChange(int, float) = android32 0x4e1b56;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = android32 0x4e1a04;
}

[[link(android)]]
class SetupStopTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupStopTriggerPopup();

	static SetupStopTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x55b15c;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x55adbc;

	virtual void onClose(cocos2d::CCObject* sender) = android32 0x554db2;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = android32 0x554c64;
}

[[link(android)]]
class SetupTeleportPopup : SetupTriggerPopup {
	// virtual ~SetupTeleportPopup();

	static SetupTeleportPopup* create(TeleportPortalObject*, cocos2d::CCArray*, int, bool) = android32 0x5282b0;

	bool init(TeleportPortalObject*, cocos2d::CCArray*, int, bool) = android32 0x5278c8;
	void onTeleportGravity(cocos2d::CCObject* sender) = android32 0x5284d0;
	TodoReturn updateTeleportGravityState(int) = android32 0x528464;

	virtual TodoReturn determineStartValues() = android32 0x52783e;
	virtual TodoReturn updateDefaultTriggerValues() = android32 0x5284a2;
	virtual TodoReturn valueDidChange(int, float) = android32 0x527842;
}

[[link(android)]]
class SetupTimerControlTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupTimerControlTriggerPopup();

	static SetupTimerControlTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*) = android32 0x570b3c;

	bool init(TimerTriggerGameObject*, cocos2d::CCArray*) = android32 0x5708d8;

	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = android32 0x56ffde;
}

[[link(android)]]
class SetupTimerEventTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupTimerEventTriggerPopup();

	static SetupTimerEventTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*) = android32 0x570834;

	bool init(TimerTriggerGameObject*, cocos2d::CCArray*) = android32 0x570560;
}

[[link(android)]]
class SetupTimerTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupTimerTriggerPopup();

	static SetupTimerTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*) = android32 0x5704bc;

	bool init(TimerTriggerGameObject*, cocos2d::CCArray*) = android32 0x570024;
}

[[link(android)]]
class SetupTimeWarpPopup : SetupTriggerPopup {
	// virtual ~SetupTimeWarpPopup();

	static SetupTimeWarpPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x503664;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x50337c;
	TodoReturn sliderChanged(cocos2d::CCObject*) = android32 0x503850;
	TodoReturn updateTimeWarp() = android32 0x50380c;
	TodoReturn updateTimeWarpLabel() = android32 0x503348;

	virtual TodoReturn determineStartValues() = android32 0x5032b2;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x5032ae;
}

[[link(android)]]
class SetupTouchTogglePopup : SetupTriggerPopup {
	// virtual ~SetupTouchTogglePopup();

	static SetupTouchTogglePopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d8a80;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x4d8268;
	void onControlMode(cocos2d::CCObject* sender) = android32 0x4d80be;
	void onDualTouchMode(cocos2d::CCObject* sender) = android32 0x4d81b4;
	void onHoldMode(cocos2d::CCObject* sender) = android32 0x4d816c;
	void onTargetIDArrow(cocos2d::CCObject* sender) = android32 0x4d8cfc;
	void onTouchMode(cocos2d::CCObject* sender) = android32 0x4d8040;
	TodoReturn updateTargetID() = android32 0x4d8c40;
	TodoReturn updateTextInputLabel() = android32 0x4d81fc;

	virtual TodoReturn determineStartValues() = android32 0x4d7f76;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x4d8134;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x4d8cf4 = android32 0x4d8c98;
}

[[link(android)]]
class SetupTransformPopup : SetupTriggerPopup {
	// virtual ~SetupTransformPopup();

	static SetupTransformPopup* create(TransformTriggerGameObject*, cocos2d::CCArray*) = android32 0x502334;

	bool init(TransformTriggerGameObject*, cocos2d::CCArray*) = android32 0x501dfc;
}

[[link(android)]]
class SetupTriggerPopup : FLAlertLayer, TextInputDelegate, ConfigureValuePopupDelegate, SliderDelegate {
	// virtual ~SetupTriggerPopup();
	// SetupTriggerPopup();

	static SetupTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*, float, float, int) = android32 0x51e5f8;
	static SetupTriggerPopup* create(float, float) = android32 0x51e7ac;

	TodoReturn addCloseButton(gd::string) = android32 0x51edcc;
	TodoReturn addHelpButton(gd::string, gd::string, float) = android32 0x51ee3c;
	TodoReturn addInfoLabel(gd::string, float, cocos2d::CCPoint, int, int) = android32 0x51fb90;
	TodoReturn addObjectsToGroup(cocos2d::CCArray*, int) = android32 0x51eb3c;
	TodoReturn addObjectsToPage(cocos2d::CCArray*, int) = android32 0x51eafe;
	TodoReturn addObjectToGroup(cocos2d::CCObject*, int) = android32 0x51eb28;
	TodoReturn addObjectToPage(cocos2d::CCObject*, int) = android32 0x51eaea;
	TodoReturn addTitle(gd::string) = android32 0x51ed30;
	TodoReturn closeInputNodes() = android32 0x51f72c;
	TodoReturn createCustomButton(int, gd::string, gd::string, cocos2d::CCPoint, float, float, bool, int, int) = android32 0x51fcc4;
	TodoReturn createCustomEasingControls(gd::string, cocos2d::CCPoint, float, int, int, int, int) = android32 0x52310c;
	TodoReturn createCustomToggleValueControl(int, bool, bool, gd::string, cocos2d::CCPoint, bool, int, int) = android32 0x51fa18;
	TodoReturn createEasingControls(cocos2d::CCPoint, float, int, int) = android32 0x5229c8;
	TodoReturn createMultiTriggerItems(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint) = android32 0x51f1d8;
	TodoReturn createMultiTriggerItemsCorner() = android32 0x51f4c0;
	TodoReturn createMultiTriggerItemsDefault() = android32 0x51f3e4;
	TodoReturn createMultiTriggerItemsDefaultHorizontal() = android32 0x51f650;
	TodoReturn createMultiTriggerItemsDefaultVertical() = android32 0x51f588;
	TodoReturn createPageButtons(float, int) = android32 0x51e7e8;
	TodoReturn createPlusButton(int, cocos2d::CCPoint, float, gd::string, int, int) = android32 0x51fbec;
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCPoint) = android32 0x51ef1c;
	TodoReturn createToggleValueControl(int, gd::string, cocos2d::CCPoint, bool, int, int, float) = android32 0x51f938;
	TodoReturn createToggleValueControlAdvanced(int, gd::string, cocos2d::CCPoint, bool, int, int, float, float, float, cocos2d::CCPoint) = android32 0x51f828;
	TodoReturn createValueControl(int, gd::string, cocos2d::CCPoint, float, float, float) = android32 0x52267c;
	TodoReturn createValueControlAdvanced(int, gd::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float, float, int, int, GJInputStyle, int, bool) = android32 0x521ed4;
	TodoReturn createValueControlWArrows(int, gd::string, cocos2d::CCPoint, float) = android32 0x522700;
	TodoReturn getGroupContainer(int) = android32 0x51ea42;
	TodoReturn getMaxSliderValue(int) = android32 0x522780;
	TodoReturn getMinSliderValue(int) = android32 0x521ea4;
	TodoReturn getObjects() = android32 0x51efd8;
	TodoReturn getPageContainer(int) = android32 0x51ea10;
	TodoReturn getTriggerValue(int, GameObject*) = android32 0x51ffd0;
	TodoReturn getTruncatedValue(float, int) = android32 0x51fec4;
	TodoReturn getTruncatedValueByTag(int, float) = android32 0x51ff20;
	TodoReturn goToPage(int, bool) = android32 0x51ebdc;
	TodoReturn hideAll() = android32 0x51ed26;
	bool init(EffectGameObject*, cocos2d::CCArray*, float, float, int) = android32 0x51e3bc;
	TodoReturn onCustomEaseArrow(int, bool) = android32 0x525b7c;
	void onCustomEaseArrowDown(cocos2d::CCObject* sender) = android32 0x525c00;
	void onCustomEaseArrowUp(cocos2d::CCObject* sender) = android32 0x525be6;
	void onCustomEaseRate(cocos2d::CCObject* sender) = android32 0x51e158;
	void onDisableValue(cocos2d::CCObject* sender) = android32 0x5259f0;
	void onEase(cocos2d::CCObject* sender) = android32 0x525a84;
	void onEaseRate(cocos2d::CCObject* sender) = android32 0x51e0bc;
	void onMultiTrigger(cocos2d::CCObject* sender) = android32 0x51e2fc;
	void onPage(cocos2d::CCObject* sender) = android32 0x51ece8;
	void onSpawnedByTrigger(cocos2d::CCObject* sender) = android32 0x51f1a4;
	void onToggleTriggerValue(cocos2d::CCObject* sender) = android32 0x525952;
	void onTouchTriggered(cocos2d::CCObject* sender) = android32 0x51f172;
	TodoReturn postSetup() = android32 0x51feae;
	TodoReturn preSetup() = android32 0x51fea0;
	TodoReturn refreshGroupVisibility() = android32 0x51eb66;
	TodoReturn removeObjectFromGroup(cocos2d::CCObject*, int) = android32 0x51eb50;
	TodoReturn removeObjectFromPage(cocos2d::CCObject*, int) = android32 0x51eb12;
	TodoReturn resetDisabledValues() = android32 0x525a10;
	void setMaxSliderValue(float, int) = android32 0x521eb8;
	void setMinSliderValue(float, int) = android32 0x521e88;
	TodoReturn shouldLimitValue(int) = android32 0x5237b8;
	TodoReturn toggleBG(bool) = android32 0x51e7c4;
	TodoReturn toggleCustomEaseRateVisibility(int, int) = android32 0x523068;
	TodoReturn toggleDisableButtons(bool) = android32 0x51f7a8;
	TodoReturn toggleEaseRateVisibility() = android32 0x522970;
	TodoReturn toggleLimitValue(int, bool) = android32 0x52379e;
	TodoReturn togglePageArrows(bool) = android32 0x51e9cc;
	TodoReturn triggerArrowChanged(int, bool) = android32 0x5258c0;
	TodoReturn triggerArrowLeft(cocos2d::CCObject*) = android32 0x52591e;
	TodoReturn triggerArrowRight(cocos2d::CCObject*) = android32 0x525938;
	TodoReturn triggerSliderChanged(cocos2d::CCObject*) = android32 0x525868;
	TodoReturn updateCustomEaseLabel(int, int) = android32 0x522f1c;
	TodoReturn updateCustomEaseRateLabel(int, float) = android32 0x522fec;
	TodoReturn updateCustomToggleTrigger(int, bool) = android32 0x51fb58;
	TodoReturn updateEaseLabel() = android32 0x522830;
	TodoReturn updateEaseRateLabel() = android32 0x5228e0;
	TodoReturn updateEditorLabel() = android32 0x51f06a;
	TodoReturn updateInputNodeLabel(int, gd::string) = android32 0x521e24;
	TodoReturn updateLabel(int, gd::string) = android32 0x51fb72;
	TodoReturn updateMultiTriggerBtn() = android32 0x51f0aa;
	TodoReturn updateSlider(int, float) = android32 0x51ff46;
	TodoReturn updateSlider(int) = android32 0x51ffa6;
	TodoReturn updateSpawnedByTrigger() = android32 0x51f12c;
	TodoReturn updateTouchTriggered() = android32 0x51f0e6;
	TodoReturn updateValue(int, float) = android32 0x52599c;
	TodoReturn updateValueControls(int, float) = android32 0x51ff60;
	TodoReturn valueChanged(int, float) = android32 0x5237d2;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x51deae = android32 0x51deaa;
	virtual void keyBackClicked() = android32 0x51dea2 = android32 0x51de98;
	virtual void show() = android32 0x51deb6;
	virtual TodoReturn pageChanged() = android32 0x3c2248;
	virtual TodoReturn toggleGroup(int, bool) = android32 0x51ea74;
	virtual TodoReturn determineStartValues() = android32 0x51effa;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x51f768;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x51de90 = android32 0x51de88;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x525860 = android32 0x5257ac;
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float) = android32 0x51df3c = android32 0x51deec;
	virtual TodoReturn textInputReturn(CCTextInputNode*) = android32 0x51df90 = android32 0x51df44;
	virtual TodoReturn updateInputValue(int, float&) = android32 0x3c224a;
	virtual TodoReturn sliderBegan(Slider*) = android32 0x51e284 = android32 0x51e21c;
	virtual TodoReturn sliderEnded(Slider*) = android32 0x51e2f4 = android32 0x51e28c;
	virtual void onPlusButton(cocos2d::CCObject* sender) = android32 0x3c224c;
	virtual void onCustomButton(cocos2d::CCObject* sender) = android32 0x3c224e;
	virtual TodoReturn updateDefaultTriggerValues() = android32 0x521b60;
	virtual TodoReturn updateInputNode(int, float) = android32 0x51df98;
	virtual TodoReturn updateToggleItem(int, bool) = android32 0x51e378;
	virtual TodoReturn valueDidChange(int, float) = android32 0x3c2250;
	virtual TodoReturn getValue(int) = android32 0x521d8c;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = android32 0x522796;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = android32 0x5227cc;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = android32 0x3c2252;
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = android32 0x525b74 = android32 0x525ad0;

	PAD = android32 0xac;
}

[[link(android)]]
class SetupZoomTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupZoomTriggerPopup();

	static SetupZoomTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = android32 0x4e2524;

	bool init(EffectGameObject*, cocos2d::CCArray*) = android32 0x4e22e4;

	virtual TodoReturn determineStartValues() = android32 0x4e22da;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x4e22de;
}

[[link(android)]]
class SFXBrowser : FLAlertLayer, MusicDownloadDelegate, TableViewCellDelegate, SetTextPopupDelegate, SelectSFXSortDelegate {
	// virtual ~SFXBrowser();

	static SFXBrowser* create(int) = android32 0x560d28;

	bool init(int) = android32 0x560d0c;
	void onClearSearch(cocos2d::CCObject* sender) = android32 0x560ebc;
	void onClose(cocos2d::CCObject* sender) = android32 0x55f7a4;
	void onCredits(cocos2d::CCObject* sender) = android32 0x55fa0c;
	void onExitFolder(cocos2d::CCObject* sender) = android32 0x560fa4;
	void onPage(cocos2d::CCObject* sender) = android32 0x561010;
	void onSearch(cocos2d::CCObject* sender) = android32 0x56130c;
	void onSorting(cocos2d::CCObject* sender) = android32 0x561810;
	void onToggleCompactMode(cocos2d::CCObject* sender) = android32 0x560e7c;
	void onUpdateLibrary(cocos2d::CCObject* sender) = android32 0x55fb46;
	TodoReturn setupList(SFXSearchResult*) = android32 0x55fc84;
	TodoReturn trySetupSFXBrowser() = android32 0x560158;
	TodoReturn updatePageLabel() = android32 0x55fb7c;

	virtual void registerWithTouchDispatcher() = android32 0x55faa4;
	virtual void keyBackClicked() = android32 0x55f7d8 = android32 0x55f7d2;
	virtual TodoReturn musicActionFinished(GJMusicAction) = android32 0x560e38 = android32 0x560e20;
	virtual TodoReturn musicActionFailed(GJMusicAction) = android32 0x55fa04 = android32 0x55f968;
	virtual TodoReturn sortSelectClosed(SelectSFXSortLayer*) = android32 0x560e74 = android32 0x560e40;
	virtual void setTextPopupClosed(SetTextPopup*, gd::string) = android32 0x560f2c = android32 0x560ef8;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = android32 0x560f9c = android32 0x560f34;
	virtual TodoReturn getSelectedCellIdx() = android32 0x55f78e = android32 0x55f788;
	virtual TodoReturn shouldSnapToSelected() = android32 0x55f79c = android32 0x55f796;
}

[[link(android)]]
class SFXBrowserDelegate {
	virtual TodoReturn sfxBrowserClosed(SFXBrowser*) = android32 0x5519a8;
}

[[link(android)]]
class SFXFolderObject : SFXInfoObject {
	// virtual ~SFXFolderObject();

	static SFXFolderObject* create(int, gd::string, int) = android32 0x43c0c0;

	bool init(int, gd::string, int) = android32 0x43c054;
}

[[link(android)]]
class SFXInfoObject : cocos2d::CCObject {
	// virtual ~SFXInfoObject();

	static SFXInfoObject* create(int, gd::string, int, int, int) = android32 0x43bf5c;

	TodoReturn getLowerCaseName() = android32 0x43c014;
	bool init(int, gd::string, int, int, int) = android32 0x43bf36;
}

[[link(android)]]
class SFXSearchResult : MusicSearchResult {
	// virtual ~SFXSearchResult();

	static SFXSearchResult* create(int) = android32 0x43c430;

	TodoReturn getActiveFolder() = android32 0x43c4d4;
	TodoReturn getSelectedPage(int, int) = android32 0x43c4d8;
	bool init(int) = android32 0x43c41c;
	void setActiveFolder(SFXFolderObject*) = android32 0x43c4a8;

	virtual TodoReturn updateObjects(AudioSortType) = android32 0x43fcd8;
}

[[link(android)]]
class SFXTriggerGameObject : EffectGameObject {
	// virtual ~SFXTriggerGameObject();
	// SFXTriggerGameObject();

	static SFXTriggerGameObject* create(char const*) = android32 0x3d36b8;

	TodoReturn getSFXRefID() = android32 0x3d36f6;
	TodoReturn getUniqueSFXID() = android32 0x3d3708;
	bool init(char const*) = android32 0x3d36b4;

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3d1f1c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e0c48;
}

[[link(android)]]
class ShaderGameObject : EffectGameObject {
	// virtual ~ShaderGameObject();

	static ShaderGameObject* create(char const*) = android32 0x3d09a0;

	bool init(char const*) = android32 0x3d099c;

	virtual TodoReturn customSetup() = android32 0x3cd218;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3d1024;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3dc320;
}

[[link(android)]]
class ShaderLayer : cocos2d::CCLayer {
	// virtual ~ShaderLayer();

	static ShaderLayer* create() = android32 0x52c828;

	TodoReturn objectPosToShaderPos(cocos2d::CCPoint) = android32 0x528c10;
	TodoReturn performCalculations() = android32 0x52c548;
	TodoReturn preBulgeShader() = android32 0x52b758;
	TodoReturn preChromaticGlitchShader() = android32 0x52a8a0;
	TodoReturn preChromaticShader() = android32 0x52a6ec;
	TodoReturn preColorChangeShader() = android32 0x52bbc8;
	TodoReturn preCommonShader() = android32 0x528adc;
	TodoReturn preGlitchShader() = android32 0x52a43c;
	TodoReturn preGrayscaleShader() = android32 0x52b8c0;
	TodoReturn preHueShiftShader() = android32 0x52bb00;
	TodoReturn preInvertColorShader() = android32 0x52ba14;
	TodoReturn preLensCircleShader() = android32 0x52b0f0;
	TodoReturn preMotionBlurShader() = android32 0x52b408;
	TodoReturn prepareTargetContainer() = android32 0x52ac90;
	TodoReturn prePinchShader() = android32 0x52b824;
	TodoReturn prePixelateShader() = android32 0x52ab18;
	TodoReturn preRadialBlurShader() = android32 0x52b2c0;
	TodoReturn preSepiaShader() = android32 0x52b9b0;
	TodoReturn preShockLineShader() = android32 0x52a050;
	TodoReturn preShockWaveShader() = android32 0x529b78;
	TodoReturn preSplitScreenShader() = android32 0x52c148;
	TodoReturn resetAllShaders() = android32 0x52c768;
	TodoReturn resetTargetContainer() = android32 0x52afe0;
	TodoReturn setupBulgeShader() = android32 0x52b6d8;
	TodoReturn setupChromaticGlitchUniforms() = android32 0x52a7c8;
	TodoReturn setupChromaticUniforms() = android32 0x52a6a8;
	TodoReturn setupColorChangeShader() = android32 0x52bb84;
	TodoReturn setupCommonUniforms() = android32 0x5289e4;
	TodoReturn setupGlitchUniforms() = android32 0x52a3a0;
	TodoReturn setupGrayscaleShader() = android32 0x52b860;
	TodoReturn setupHueShiftShader() = android32 0x52babc;
	TodoReturn setupInvertColorShader() = android32 0x52b9f0;
	TodoReturn setupLensCircleShader() = android32 0x52b034;
	TodoReturn setupMotionBlurShader() = android32 0x52b3a8;
	TodoReturn setupPinchShader() = android32 0x52b7a4;
	TodoReturn setupRadialBlurShader() = android32 0x52b27c;
	TodoReturn setupSepiaShader() = android32 0x52b98c;
	TodoReturn setupShader(bool) = android32 0x52be24;
	TodoReturn setupShockLineUniforms() = android32 0x529edc;
	TodoReturn setupShockWaveUniforms() = android32 0x529a04;
	TodoReturn setupSplitScreenShader() = android32 0x52bcf0;
	TodoReturn toggleAntiAlias(bool) = android32 0x5288b6;
	TodoReturn triggerBulge(float, float, float, float, float, int, int, float, bool) = android32 0x52d7fe;
	TodoReturn triggerChromaticGlitch(bool, float, float, float, float, float, float, float, int, float, bool, bool) = android32 0x52d498;
	TodoReturn triggerChromaticX(float, float, int, float, bool) = android32 0x52d454;
	TodoReturn triggerChromaticY(float, float, int, float, bool) = android32 0x52d476;
	TodoReturn triggerColorChange(float, float, float, float, float, float, float, int, float) = android32 0x52da06;
	TodoReturn triggerGlitch(float, float, float, float, float, float, float, bool) = android32 0x52d3f0;
	TodoReturn triggerGrayscale(float, float, bool, int, int, float) = android32 0x52d92e;
	TodoReturn triggerHueShift(float, float, int, float) = android32 0x52d9ee;
	TodoReturn triggerInvertColor(float, float, float, float, float, bool, bool, bool, int, float) = android32 0x52d96e;
	TodoReturn triggerLensCircle(float, float, float, float, int, int, float, float, int, float, bool) = android32 0x52d614;
	TodoReturn triggerMotionBlurX(float, float, float, float, int, float, bool, int, int, float, bool, bool) = android32 0x52d71a;
	TodoReturn triggerMotionBlurY(float, float, float, float, int, float, bool, int, int, float, bool, bool) = android32 0x52d78c;
	TodoReturn triggerPinchX(float, float, float, float, float, bool, int, int, float, bool) = android32 0x52d85e;
	TodoReturn triggerPinchY(float, float, float, float, float, bool, int, int, float, bool) = android32 0x52d8c6;
	TodoReturn triggerPixelateX(float, float, bool, bool, int, float, bool) = android32 0x52d588;
	TodoReturn triggerPixelateY(float, float, bool, bool, int, float, bool) = android32 0x52d5ce;
	TodoReturn triggerRadialBlur(float, float, float, float, int, float, float, bool, int, int, float, bool) = android32 0x52d69a;
	TodoReturn triggerSepia(float, float, int, float) = android32 0x52d956;
	TodoReturn triggerShockLine(float, float, bool, bool, bool, bool, float, float, float, float, float, float, int, bool, bool, bool, float, bool, float, int, float) = android32 0x52d27c;
	TodoReturn triggerShockWave(float, float, float, float, float, float, float, bool, float, float, float, int, bool, bool, bool, float, float, bool, float, int, float) = android32 0x52d0d0;
	TodoReturn triggerSplitScreenCols(float, float, int, float) = android32 0x52daa8;
	TodoReturn triggerSplitScreenRows(float, float, int, float) = android32 0x52da90;
	TodoReturn tweenValue(float, float, int, float, int, float) = android32 0x52ce5a;
	TodoReturn tweenValueAuto(float, int, float, int, float) = android32 0x52ce68;
	TodoReturn updateEffectOffsets(cocos2d::CCPoint) = android32 0x528d20;
	TodoReturn updateMotionBlurSpeedX(float, float) = android32 0x52b65c;
	TodoReturn updateMotionBlurSpeedY(float, float) = android32 0x52b69a;
	TodoReturn updateShockLineCenter(cocos2d::CCPoint) = android32 0x529ec0;
	TodoReturn updateShockWaveCenter(cocos2d::CCPoint) = android32 0x5299e8;
	TodoReturn updateZLayer(int, int, bool) = android32 0x52c5ea;

	virtual void update(float) = android32 0x52db0e;
	virtual bool init() = android32 0x52db2c;
	virtual void visit() = android32 0x52c3a8;
}

[[link(android)]]
class ShardsPage : FLAlertLayer {
	// virtual ~ShardsPage();

	static ShardsPage* create() = android32 0x4d8f2c;

	void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x4da2d0;
	TodoReturn goToPage(int) = android32 0x4d9004;
	void onClose(cocos2d::CCObject* sender) = android32 0x4d8d30;
	void onIconInfo(cocos2d::CCObject* sender) = android32 0x4d8dde;
	void onSwitchPage(cocos2d::CCObject* sender) = android32 0x4d90d0;

	virtual bool init() = android32 0x4d90f4;
	virtual void registerWithTouchDispatcher() = android32 0x4d8e04;
	virtual void keyBackClicked() = android32 0x4d8d54 = android32 0x4d8d4e;
	virtual void show() = android32 0x4d8e28;
}

[[link(android)]]
class ShareCommentDelegate {
	virtual TodoReturn shareCommentClosed(gd::string, ShareCommentLayer*);
}

[[link(android)]]
class ShareCommentLayer : FLAlertLayer, TextInputDelegate, UploadActionDelegate, UploadPopupDelegate {
	// virtual ~ShareCommentLayer();

	static ShareCommentLayer* create(gd::string, int, CommentType, int, gd::string) = android32 0x417794;

	bool init(gd::string, int, CommentType, int, gd::string) = android32 0x416e18;
	void onClear(cocos2d::CCObject* sender) = android32 0x417918;
	void onClose(cocos2d::CCObject* sender) = android32 0x4168e0;
	void onPercent(cocos2d::CCObject* sender) = android32 0x416d20;
	void onShare(cocos2d::CCObject* sender) = android32 0x416b14;
	TodoReturn updateCharCountLabel() = android32 0x416d30;
	TodoReturn updateDescText(gd::string) = android32 0x416e00;
	TodoReturn updatePercentLabel() = android32 0x416c94;

	virtual void registerWithTouchDispatcher() = android32 0x4169e4;
	virtual void keyBackClicked() = android32 0x416914 = android32 0x41690e;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = android32 0x41691e = android32 0x41691c;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = android32 0x4179f4 = android32 0x41798c;
	virtual TodoReturn textChanged(CCTextInputNode*) = android32 0x417a5c = android32 0x4179fc;
	virtual TodoReturn uploadActionFinished(int, int) = android32 0x416a70 = android32 0x416a08;
	virtual TodoReturn uploadActionFailed(int, int) = android32 0x416ad4 = android32 0x416a78;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = android32 0x416b0a = android32 0x416adc;
}

[[link(android)]]
class ShareLevelLayer : FLAlertLayer {
	// virtual ~ShareLevelLayer();

	static ShareLevelLayer* create(GJGameLevel*) = android32 0x3a3620;

	TodoReturn getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float) = android32 0x3a2bd0;
	bool init(GJGameLevel*) = android32 0x3a2e8c;
	void onClose(cocos2d::CCObject* sender) = android32 0x3a244c;
	void onSettings(cocos2d::CCObject* sender) = android32 0x3a4438;
	void onShare(cocos2d::CCObject* sender) = android32 0x3a3af4;
	TodoReturn selectRating(cocos2d::CCObject*) = android32 0x3a2600;
	TodoReturn setupStars() = android32 0x3a2c4c;

	virtual void keyBackClicked() = android32 0x3a2470 = android32 0x3a246a;
}

[[link(android)]]
class ShareLevelSettingsLayer : FLAlertLayer, NumberInputDelegate {
	// virtual ~ShareLevelSettingsLayer();

	static ShareLevelSettingsLayer* create(GJGameLevel*) = android32 0x3a43a8;

	bool init(GJGameLevel*) = android32 0x3a3c84;
	void onClose(cocos2d::CCObject* sender) = android32 0x3a2a78;
	void onCopyable(cocos2d::CCObject* sender);
	void onEditPassword(cocos2d::CCObject* sender);
	void onPassword(cocos2d::CCObject* sender);
	void onUnlisted(cocos2d::CCObject* sender) = android32 0x3a4464;
	void onUnlistedFriendsOnly(cocos2d::CCObject* sender) = android32 0x3a24a0;
	TodoReturn updateSettingsState() = android32 0x3a3bd4;

	virtual void keyBackClicked() = android32 0x3a2ada = android32 0x3a2ad4;
	virtual TodoReturn numberInputClosed(NumberInputLayer*);
}

[[link(android)]]
class ShareListLayer : FLAlertLayer {
	// virtual ~ShareListLayer();

	static ShareListLayer* create(GJLevelList*) = android32 0x56f828;

	bool init(GJLevelList*) = android32 0x56ede4;
	void onClose(cocos2d::CCObject* sender) = android32 0x56aeb6;
	void onInfo(cocos2d::CCObject* sender) = android32 0x56b71c;
	void onShare(cocos2d::CCObject* sender) = android32 0x56fd78;
	void onUnlisted(cocos2d::CCObject* sender) = android32 0x56eda4;
	TodoReturn updateUnlistedF() = android32 0x56ecfc;

	virtual void keyBackClicked() = android32 0x56aeda = android32 0x56aed4;
}

[[link(android)]]
class SimpleObject : cocos2d::CCObject {
	// virtual ~SimpleObject();

	static SimpleObject* create() = android32 0x479df8;

	bool init() = android32 0x479df4;
}

[[link(android)]]
class SimplePlayer : cocos2d::CCSprite {
	// virtual ~SimplePlayer();

	static SimplePlayer* create(int) = android32 0x3ebd7c;

	TodoReturn asyncLoadIcon(int, IconType) = android32 0x3eb2bc;
	TodoReturn createRobotSprite(int) = android32 0x3ea51c;
	TodoReturn createSpiderSprite(int) = android32 0x3ea550;
	inline void disableCustomGlowColor() {
		m_hasCustomGlowColor = false;
	}
	inline void enableCustomGlowColor(cocos2d::_ccColor3B const& color) {
		m_hasCustomGlowColor = true;
		m_glowColor = color;
	}
	TodoReturn hideAll() = android32 0x3ea5c0;
	TodoReturn hideSecondary() = android32 0x3eaa16;
	TodoReturn iconFinishedLoading(int, IconType) = android32 0x3eb304;
	bool init(int) = android32 0x3eba98;
	void setColors(cocos2d::ccColor3B const&, cocos2d::ccColor3B const&) = android32 0x3ea888;
	void setFrames(char const*, char const*, char const*, char const*, char const*) = android32 0x3eaa88;
	inline void setSecondColor(cocos2d::_ccColor3B const& color) {
		m_secondLayer->setColor(color);
		updateColors();
	}
	TodoReturn updateColors() = android32 0x3ea654;
	TodoReturn updatePlayerFrame(int, IconType) = android32 0x3eac10;

	virtual void setOpacity(unsigned char) = android32 0x3e98c4 = android32 0x3e9854;
	virtual void setColor(cocos2d::ccColor3B const&) = android32 0x3ea9f4 = android32 0x3ea9da;

	inline void setGlowOutline(cocos2d::ccColor3B color) {
		enableCustomGlowColor(color);
		m_hasGlowOutline = true;
		updateColors();
	}

	inline void disableGlowOutline() {
		disableCustomGlowColor();
		m_hasGlowOutline = false;
		updateColors();
	}

	cocos2d::CCSprite* m_firstLayer;
	cocos2d::CCSprite* m_secondLayer;
	cocos2d::CCSprite* m_birdDome;
	cocos2d::CCSprite* m_outlineSprite;
	cocos2d::CCSprite* m_detailSprite;
	GJRobotSprite* m_robotSprite;
	GJSpiderSprite* m_spiderSprite;
	int m_unknown;
	bool m_hasGlowOutline;
	PAD = win 0x7, android32 0x7, android64 0x7;
	bool m_hasCustomGlowColor;
	cocos2d::ccColor3B m_glowColor;
	PAD = win 0x4, android32 0x4, android64 0x8;
}

[[link(android)]]
class SlideInLayer : cocos2d::CCLayerColor {
	// virtual ~SlideInLayer();

	static SlideInLayer* create() = android32 0x2e855c;

	virtual bool init() = android32 0x2e80e8;
	virtual void draw() = android32 0x2e8614;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2e8030 = android32 0x2e802c;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2e804e = android32 0x2e804c;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2e803a = android32 0x2e8038;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2e8044 = android32 0x2e8042;
	virtual void registerWithTouchDispatcher() = android32 0x2e83f8;
	virtual void keyBackClicked() = android32 0x2e7fbc = android32 0x2e7fb2;
	virtual TodoReturn customSetup() = android32 0x2e7f78;
	virtual TodoReturn enterLayer() = android32 0x2e7f96;
	virtual TodoReturn exitLayer(cocos2d::CCObject*) = android32 0x2e7fc4;
	virtual TodoReturn showLayer(bool) = android32 0x2e841c;
	virtual TodoReturn hideLayer(bool) = android32 0x2e84c8;
	virtual TodoReturn layerVisible() = android32 0x2e7ffc;
	virtual TodoReturn layerHidden() = android32 0x2e8006;
	virtual TodoReturn enterAnimFinished() = android32 0x2e7ffa;
	virtual TodoReturn disableUI() = android32 0x2e7f7a;
	virtual TodoReturn enableUI() = android32 0x2e7f88;
}

[[link(android)]]
class Slider : cocos2d::CCLayer {
	// virtual ~Slider();

	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float) = ios 0x2f60d8, android32 0x2e8dc8;
	static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler) {
		return Slider::create(target, handler, 1.f);
	}
	static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler, float idk) {
		return Slider::create(target, handler, "sliderBar.png", "slidergroove.png", "sliderthumb.png", "sliderthumbsel.png", idk);
	}

	TodoReturn disableSlider() = android32 0x2e90f8;
	TodoReturn disableTouch() = android32 0x2e8f3c;
	TodoReturn enableSlider() = android32 0x2e8ed8;
	TodoReturn getLiveDragging() = android32 0x2e9190;
	SliderThumb* getThumb() {
		return m_touchLogic->m_thumb;
	}
	float getValue() = android32 0x2e8f54;
	TodoReturn hideGroove(bool) = android32 0x2e91e8;
	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float) = android32 0x2e8c78;
	void setBarVisibility(bool) = android32 0x2e9184;
	void setLiveDragging(bool) = android32 0x2e919a;
	void setMaxOffset(float) = android32 0x2e91e0;
	void setRotated(bool) = android32 0x2e91a4;
	void setValue(float val) {
		this->getThumb()->setValue(val);
		this->updateBar();
	}
	TodoReturn sliderBegan() = android32 0x2e91f8;
	TodoReturn sliderEnded() = android32 0x2e9284;
	void updateBar() = ios 0x2f5fe0, android32 0x2e8f64;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2e865c = android32 0x2e8650;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2e8684 = android32 0x2e8678;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2e8670 = android32 0x2e8664;

	SliderTouchLogic* m_touchLogic;
	cocos2d::CCSprite* m_sliderBar;
	cocos2d::CCSprite* m_groove;
	float m_width;
	float m_height;
	void* m_unknown;
	void* m_unknown2;
}

[[link(android)]]
class SliderDelegate {
	virtual TodoReturn sliderBegan(Slider*);
	virtual TodoReturn sliderEnded(Slider*);
}

[[link(android)]]
class SliderThumb : cocos2d::CCMenuItemImage {
	// virtual ~SliderThumb();

	static SliderThumb* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*) = android32 0x2e8858;

	float getValue() {
		return (this->getScaleX() * m_length * .5f +
				(m_vertical ?
					this->getPositionY() :
					this->getPositionX())
			) / (this->getScaleX() * m_length);
	}
	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*) = android32 0x2e882c;
	void setMaxOffset(float) = android32 0x2e8a7c;
	void setRotated(bool) = android32 0x2e8a28;
	void setValue(float) = ios 0x2f5a54, android32 0x2e8958;

	float m_length;
	bool m_vertical;
}

[[link(android)]]
class SliderTouchLogic : cocos2d::CCMenu {
	// virtual ~SliderTouchLogic();

	static SliderTouchLogic* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float) = android32 0x2e8b78;

	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float) = android32 0x2e8ad0;
	void setMaxOffset(float) = android32 0x2e8c34;
	void setRotated(bool) = android32 0x2e8c6a;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2e927c = android32 0x2e9208;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2e90d4 = android32 0x2e8fd0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2e92b2 = android32 0x2e9294;
	virtual void registerWithTouchDispatcher() = android32 0x2e868c;

	float m_unknownUnused;
	float m_length;
	SliderThumb* m_thumb;
	Slider* m_slider;
	bool m_activateThumb;
	cocos2d::CCPoint m_position;
	bool m_rotated;
}

[[link(android)]]
class SmartGameObject : GameObject {
	// virtual ~SmartGameObject();

	static SmartGameObject* create(char const*) = android32 0x3ceea0;

	bool init(char const*) = android32 0x3cee78;
	TodoReturn updateSmartFrame() = android32 0x3cef18;

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3ceff0;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3d69e0;

	bool m_property157;
	PAD = android32 0x9;
}

[[link(android)]]
class SmartTemplateCell : TableViewCell {
	// virtual ~SmartTemplateCell();
	SmartTemplateCell(char const*, float, float);

	TodoReturn loadFromObject(GJSmartTemplate*) = android32 0x32c098;
	void onClick(cocos2d::CCObject* sender) = android32 0x322484;
	TodoReturn updateBGColor(int) = android32 0x32c2f4;

	virtual bool init() = android32 0x31fd5c;
	virtual void draw() = android32 0x320d38;
}

[[link(android)]]
class SongCell : TableViewCell {
	// virtual ~SongCell();
	SongCell(char const*, float, float);

	TodoReturn loadFromObject(SongObject*) = android32 0x326dc4;
	void onClick(cocos2d::CCObject* sender) = android32 0x321616;
	TodoReturn updateBGColor(int) = android32 0x3270c4;

	virtual bool init() = android32 0x31fc10;
	virtual void draw() = android32 0x320600;
}

[[link(android)]]
class SongInfoLayer : FLAlertLayer {
	// virtual ~SongInfoLayer();

	static SongInfoLayer* create(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string, int, gd::string) = android32 0x413610;
	static SongInfoLayer* create(int) = android32 0x413840;

	bool init(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string, int, gd::string) = android32 0x412c50;
	void onBPM(cocos2d::CCObject* sender) = android32 0x412c2e;
	void onClose(cocos2d::CCObject* sender) = android32 0x412b10;
	void onDownload(cocos2d::CCObject* sender) = android32 0x412bd6;
	void onFB(cocos2d::CCObject* sender) = android32 0x412c18;
	void onMenuMusic(cocos2d::CCObject* sender) = android32 0x413b44;
	void onNG(cocos2d::CCObject* sender) = android32 0x412bec;
	void onPracticeMusic(cocos2d::CCObject* sender) = android32 0x413b9a;
	void onYT(cocos2d::CCObject* sender) = android32 0x412c02;
	TodoReturn showCustomMusicUnlockInfo() = android32 0x4139e4;

	virtual void keyBackClicked() = android32 0x412b34 = android32 0x412b2e;
}

[[link(android)]]
class SongInfoObject : cocos2d::CCNode {
	// virtual ~SongInfoObject();

	static SongInfoObject* create(cocos2d::CCDictionary*) = android32 0x43e3a0;
	static SongInfoObject* create(int, gd::string, gd::string, int, float, gd::string, gd::string, gd::string, int) = android32 0x43e200;
	static SongInfoObject* create(int) = android32 0x43ec34;

	TodoReturn addTags(gd::string) = android32 0x43dc04;
	TodoReturn containsTag(int) = android32 0x43beb4;
	TodoReturn createWithCoder(DS_Dictionary*) = android32 0x43ea7c;
	TodoReturn getTagsString() = android32 0x43f220;
	bool init(int, gd::string, gd::string, int, float, gd::string, gd::string, gd::string, int) = android32 0x43e188;

	virtual void encodeWithCoder(DS_Dictionary*) = android32 0x43a468;
	virtual bool canEncode() = android32 0x43a16e;

	int m_songID;
	gd::string m_songName;
	gd::string m_artistName;
	gd::string m_youtubeVideo;
	gd::string m_youtubeChannel;
	gd::string m_songUrl;
	gd::string m_artistID;
	float m_fileSize;
	bool m_isUnkownSong;
	int m_priority;
}

[[link(android)]]
class SongObject : cocos2d::CCObject {
	// virtual ~SongObject();

	static SongObject* create(int) = android32 0x326d1c;

	bool init(int) = android32 0x326d14;
}

[[link(android)]]
class SongOptionsLayer : FLAlertLayer {
	// virtual ~SongOptionsLayer();

	static SongOptionsLayer* create(CustomSongDelegate*) = android32 0x4420fc;

	bool init(CustomSongDelegate*) = android32 0x441a54;
	void onClose(cocos2d::CCObject* sender) = android32 0x4406a4;
	void onFadeIn(cocos2d::CCObject* sender) = android32 0x44008c;
	void onFadeOut(cocos2d::CCObject* sender) = android32 0x4400b4;
	void onInfo(cocos2d::CCObject* sender) = android32 0x4402bc;
	void onPlayback(cocos2d::CCObject* sender) = android32 0x4421ec;
	TodoReturn updatePlaybackBtn() = android32 0x4421a0;

	virtual void keyBackClicked() = android32 0x440762 = android32 0x44075c;
}

[[link(android)]]
class SongPlaybackDelegate {
	virtual TodoReturn onPlayback(SongInfoObject*) = android32 0x5024d8;
}

[[link(android)]]
class SongSelectNode : cocos2d::CCNode, FLAlertLayerProtocol, CustomSongLayerDelegate, CustomSongDelegate {
	// virtual ~SongSelectNode();

	static SongSelectNode* create(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool) = android32 0x442c10;

	TodoReturn audioNext(cocos2d::CCObject*) = android32 0x44241a;
	TodoReturn audioPrevious(cocos2d::CCObject*) = android32 0x44242a;
	bool init(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool) = android32 0x442590;
	void onOpenCustomSong(cocos2d::CCObject* sender) = android32 0x442d20;
	void onSongMode(cocos2d::CCObject* sender) = android32 0x442578;
	TodoReturn onSongMode(int) = android32 0x442494;
	TodoReturn selectSong(int) = android32 0x442400;
	TodoReturn showCustomSongSelect() = android32 0x442d00;
	TodoReturn updateAudioLabel() = android32 0x44233c;
	TodoReturn updateWidgetVisibility() = android32 0x442438;

	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x442d84 = android32 0x442d50;
	virtual TodoReturn customSongLayerClosed() = android32 0x442cf8 = android32 0x442cf0;
	virtual TodoReturn songIDChanged(int) = android32 0x440114 = android32 0x440108;
	virtual TodoReturn getActiveSongID() = android32 0x440122 = android32 0x44011c;
	virtual TodoReturn getSongFileName() = android32 0x4408a4 = android32 0x440838;
	virtual TodoReturn getLevelSettings() = android32 0x440130 = android32 0x44012a;
}

[[link(android)]]
class SongsLayer : GJDropDownLayer {
	// virtual ~SongsLayer();

	static SongsLayer* create() = android32 0x413de0;

	virtual TodoReturn customSetup() = android32 0x413c5c;
}

[[link(android)]]
class SongTriggerGameObject : SFXTriggerGameObject {
	// virtual ~SongTriggerGameObject();

	static SongTriggerGameObject* create(char const*) = android32 0x3d371c;

	bool init(char const*) = android32 0x3d3716;

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3d2338;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e1928;
}

[[link(android)]]
class SpawnParticleGameObject : EffectGameObject {
	// virtual ~SpawnParticleGameObject();

	static SpawnParticleGameObject* create() = android32 0x3d487c;

	virtual bool init() = android32 0x3d0db4;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3d2534;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e5500;
}

[[link(android)]]
class SpawnTriggerAction {
	bool isFinished() = android32 0x47a008;
	TodoReturn step(float) = android32 0x479fd6;
}

[[link(android)]]
class SpawnTriggerGameObject : EffectGameObject {
	// virtual ~SpawnTriggerGameObject();

	static SpawnTriggerGameObject* create() = android32 0x3d3810;

	TodoReturn addRemap(int, int) = android32 0x3d52e8;
	TodoReturn changeRemap(int, int, bool) = android32 0x3d5564;
	TodoReturn removeRemap(int, int) = android32 0x3d4a78;
	TodoReturn updateRemapKeys(gd::vector<int> const&) = android32 0x3e5d44;

	virtual bool init() = android32 0x3d0d38;
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = android32 0x3cd28c;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3d5320;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e1ce4;
}

[[link(android)]]
class SpecialAnimGameObject : EnhancedGameObject {
	// virtual ~SpecialAnimGameObject();

	static SpecialAnimGameObject* create(char const*) = android32 0x3cfa44;

	bool init(char const*) = android32 0x3cfa30;

	virtual TodoReturn resetObject() = android32 0x3c904e;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3c9262;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3d6c74;
	virtual TodoReturn updateMainColor(cocos2d::ccColor3B const&) = android32 0x3c91de;
	virtual TodoReturn updateSecondaryColor(cocos2d::ccColor3B const&) = android32 0x3c91ea;
	virtual TodoReturn updateSyncedAnimation(float, int) = android32 0x507af4;
}

[[link(android)]]
class SpriteAnimationManager : cocos2d::CCNode {
	// virtual ~SpriteAnimationManager();

	TodoReturn animationFinished() = android32 0x2e62c4;
	TodoReturn callAnimationFinished() = android32 0x2e6384;
	TodoReturn createAnimations(gd::string) = android32 0x2e6400;
	TodoReturn createWithOwner(CCAnimatedSprite*, gd::string) = android32 0x2e7558;
	TodoReturn doCleanup() = android32 0x2e7070;
	TodoReturn executeAnimation(gd::string) = android32 0x2e6c40;
	TodoReturn finishAnimation(gd::string) = android32 0x2e6f2c;
	TodoReturn getAnimType(gd::string) = android32 0x2e6c2c;
	TodoReturn getPrio(gd::string) = android32 0x2e6b96;
	TodoReturn initWithOwner(CCAnimatedSprite*, gd::string) = android32 0x2e7420;
	TodoReturn loadAnimations(gd::string) = android32 0x2e7088;
	TodoReturn offsetCurrentAnimation(float) = android32 0x2e6f64;
	TodoReturn overridePrio() = android32 0x2e6b04;
	TodoReturn playSound(gd::string) = android32 0x2e6a48;
	TodoReturn playSoundForAnimation(gd::string) = android32 0x2e6a4c;
	TodoReturn queueAnimation(gd::string) = android32 0x2e6bb0;
	TodoReturn resetAnimState() = android32 0x2e6f98;
	TodoReturn runAnimation(gd::string) = android32 0x2e6dd8;
	TodoReturn runQueuedAnimation() = android32 0x2e6ea0;
	TodoReturn stopAnimations() = android32 0x2e6b6c;
	TodoReturn storeAnimation(cocos2d::CCAnimate*, cocos2d::CCAnimate*, gd::string, int, spriteMode, cocos2d::CCSpriteFrame*) = android32 0x2e6924;
	TodoReturn storeSoundForAnimation(cocos2d::CCString*, gd::string, float) = android32 0x2e6a08;
	TodoReturn switchToFirstFrameOfAnimation(gd::string) = android32 0x2e6fbc;
	TodoReturn updateAnimationSpeed(float) = android32 0x2e68d8;
}

[[link(android)]]
class SpriteDescription : cocos2d::CCObject {
	// virtual ~SpriteDescription();
	// SpriteDescription();

	TodoReturn createDescription(cocos2d::CCDictionary*) = android32 0x2d84c0;
	TodoReturn createDescription(DS_Dictionary*) = android32 0x2d7f2c;
	TodoReturn initDescription(cocos2d::CCDictionary*) = android32 0x2d82c8;
	TodoReturn initDescription(DS_Dictionary*) = android32 0x2d7dd0;
}

[[link(android)]]
class SpritePartDelegate {
	virtual TodoReturn displayFrameChanged(cocos2d::CCObject*, gd::string) = android32 0x3c8c82;
}

[[link(android)]]
class StarInfoPopup {
	// virtual ~StarInfoPopup();

	static StarInfoPopup* create(int, int, int, int, int, int, int, int, int, bool) = android32 0x4a81c0;

	TodoReturn createFromString(gd::string) = android32 0x4a83f4;
	TodoReturn createFromStringMoons(gd::string) = android32 0x4a8330;
	bool init(int, int, int, int, int, int, int, int, int, bool) = android32 0x4a7c68;
	void onClose(cocos2d::CCObject* sender) = android32 0x4a3636;

	virtual void keyBackClicked() = android32 0x4a365a = android32 0x4a3654;
}

[[link(android)]]
class StartPosObject : EffectGameObject {
	// virtual ~StartPosObject();

	static StartPosObject* create() = android32 0x3d2a64;

	TodoReturn loadSettingsFromString(gd::string) = android32 0x3d2b1c;
	void setSettings(LevelSettingsObject*) = android32 0x3d2ac4;

	virtual bool init() = android32 0x3d2aec;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3cb514;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3da9f8;

	int m_unknown;
}

[[link(android)]]
class StatsCell : TableViewCell {
	// virtual ~StatsCell();
	StatsCell(char const*, float, float);

	TodoReturn getTitleFromKey(char const*) = android32 0x3265b8;
	TodoReturn loadFromObject(StatsObject*) = android32 0x326ac4;
	TodoReturn updateBGColor(int) = android32 0x32655c;

	virtual bool init() = android32 0x31fc0c;
	virtual void draw() = android32 0x320558;
}

[[link(android)]]
class StatsLayer : GJDropDownLayer {
	// virtual ~StatsLayer();

	static StatsLayer* create() = android32 0x410ed4;

	virtual TodoReturn customSetup() = android32 0x410bec;
}

[[link(android)]]
class StatsObject : cocos2d::CCObject {
	// virtual ~StatsObject();

	static StatsObject* create(char const*, int) = android32 0x3264b0;

	bool init(char const*, int) = android32 0x326460;
}

[[link(android)]]
class SupportLayer : GJDropDownLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate {
	// virtual ~SupportLayer();

	static SupportLayer* create() = android32 0x412008;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCArray*) = android32 0x412128;
	TodoReturn exitLayer() = android32 0x412a34;
	void onCocos2d(cocos2d::CCObject* sender) = android32 0x411c90;
	void onEmail(cocos2d::CCObject* sender) = android32 0x411f80;
	void onGetReward(cocos2d::CCObject* sender) = android32 0x411d50;
	void onLinks(cocos2d::CCObject* sender) = android32 0x411ae8;
	void onLowDetail(cocos2d::CCObject* sender) = android32 0x411ed8;
	void onPrivacy(cocos2d::CCObject* sender) = android32 0x411ca8;
	void onRequestAccess(cocos2d::CCObject* sender) = android32 0x411cd8;
	void onRobTop(cocos2d::CCObject* sender) = android32 0x411c78;
	void onSFX(cocos2d::CCObject* sender) = android32 0x4118d8;
	void onTOS(cocos2d::CCObject* sender) = android32 0x411cc0;
	TodoReturn sendSupportMail() = android32 0x412a3c;

	virtual TodoReturn customSetup() = android32 0x4122fc;
	virtual TodoReturn uploadActionFinished(int, int) = android32 0x411e70 = android32 0x411de8;
	virtual TodoReturn uploadActionFailed(int, int) = android32 0x411ed0 = android32 0x411e78;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = android32 0x411dde = android32 0x411dcc;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = android32 0x412b08 = android32 0x412b00;
}

[[link(android), depends(CCIndexPath)]]
class TableView : CCScrollLayerExt, CCScrollLayerExtDelegate {
	// virtual ~TableView();
	TableView(cocos2d::CCRect);

	static TableView* create(TableViewDelegate*, TableViewDataSource*, TableViewCellDelegate*, cocos2d::CCRect) = ios 0x305598, android32 0x2dc540;

	TodoReturn cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2dcf74;
	TodoReturn cellForRowAtIndexPath(CCIndexPath&) = android32 0x2dcbb0;
	TodoReturn cellForTouch(cocos2d::CCTouch*) = android32 0x2dc8f8;
	TodoReturn checkBoundaryOfCell(cocos2d::CCPoint&, float) = android32 0x2dd15c;
	TodoReturn checkBoundaryOfCell(TableViewCell*) = android32 0x2dd06c;
	TodoReturn checkBoundaryOfContent(float) = android32 0x2dd738;
	TodoReturn checkFirstCell(TableViewCell*) = android32 0x2dd234;
	TodoReturn checkLastCell(TableViewCell*) = android32 0x2dd418;
	TodoReturn claimTouch(cocos2d::CCTouch*) = android32 0x2dcf3c;
	TodoReturn deleteTableViewCell(TableViewCell*) = android32 0x2dca30;
	TodoReturn dequeueReusableCellWithIdentifier(char const*) = android32 0x2dcbac;
	TodoReturn initTableViewCells() = android32 0x2dc6d0;
	bool isDuplicateIndexPath(CCIndexPath&) = android32 0x2dc5fe;
	bool isDuplicateInVisibleCellArray(CCIndexPath*) = android32 0x2dc5b8;
	void reloadData() = ios 0x305e54, android32 0x2dcbf0;
	TodoReturn removeIndexPathFromPathAddedArray(CCIndexPath&) = android32 0x2dc644;
	TodoReturn scrollToIndexPath(CCIndexPath&) = android32 0x2dcbec;
	TodoReturn touchFinish(cocos2d::CCTouch*) = android32 0x2dcfcc;

	virtual void onEnter() = android32 0x2ddaf8;
	virtual void onExit() = android32 0x2ddafc;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2ddb8c = android32 0x2ddb00;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2ddcc4 = android32 0x2ddc20;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2ddbd0 = android32 0x2ddb94;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2ddc18 = android32 0x2ddbd8;
	virtual void registerWithTouchDispatcher() = android32 0x2dc3be;
	virtual void scrollWheel(float, float) = android32 0x2dc3f2 = android32 0x2dc3de;
	virtual TodoReturn scrllViewWillBeginDecelerating(CCScrollLayerExt*) = android32 0x2dc2a2 = android32 0x2dc2a0;
	virtual TodoReturn scrollViewDidEndDecelerating(CCScrollLayerExt*) = android32 0x2dc2ac = android32 0x2dc2aa;
	virtual TodoReturn scrollViewTouchMoving(CCScrollLayerExt*) = android32 0x2dc2b6 = android32 0x2dc2b4;
	virtual TodoReturn scrollViewDidEndMoving(CCScrollLayerExt*) = android32 0x2dc2c0 = android32 0x2dc2be;

	bool m_touchOutOfBoundary;
	cocos2d::CCTouch* m_touchStart;
	cocos2d::CCPoint m_touchStartPosition2;
	cocos2d::CCPoint m_unknown2;
	cocos2d::CCPoint m_touchPosition2;
	void* m_idk;
	bool m_touchMoved;
	cocos2d::CCArray* m_cellArray;
	cocos2d::CCArray* m_array2;
	cocos2d::CCArray* m_array3;
	TableViewDelegate* m_tableDelegate;
	TableViewDataSource* m_dataSource;
	TableViewCellDelegate* m_cellDelegate;
	int m_unused2;
	void* m_unused3;
	int m_unused4;
	float m_touchLastY;
	bool m_cancellingTouches;
}

[[link(android), depends(CCIndexPath)]]
class TableViewCell : cocos2d::CCLayer {
	~TableViewCell() = android32 0x2ddd42 = android32 0x2ddd30 = android32 0x2ddd28 = android32 0x2ddccc;
	TableViewCell(char const*, float, float) = ios 0x3d438;

	TodoReturn updateVisibility() = android32 0x2dde78;

	bool m_unknown;
	TableView* m_tableView;
	CCIndexPath m_indexPath;
	void* m_unknown2;
	void* m_unknown3;
	int m_unknownThing; // don't even know if this is an int, it's always set to 0
	gd::string m_unknownString;
	float m_width;
	float m_height;
	cocos2d::CCLayerColor* m_backgroundLayer;
	cocos2d::CCLayer* m_mainLayer;
	BoomListType m_listType;
}

[[link(android)]]
class TableViewCellDelegate {
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	virtual TodoReturn getSelectedCellIdx();
	virtual TodoReturn shouldSnapToSelected();
}

[[link(android)]]
class TableViewDataSource {
	virtual int numberOfRowsInSection(unsigned int, TableView*) { return 0; }
	virtual unsigned int numberOfSectionsInTableView(TableView*) { return 0; }
	virtual void TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&) {}
	virtual TableViewCell* cellForRowAtIndexPath(CCIndexPath&, TableView*) { return nullptr; }
}

[[link(android)]]
class TableViewDelegate {
	virtual void willTweenToIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual void didEndTweenToIndexPath(CCIndexPath&, TableView*) {}
	virtual void TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual void TableViewDidDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual void TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual float cellHeightForRowAtIndexPath(CCIndexPath&, TableView*) { return 0; }
	virtual void didSelectRowAtIndexPath(CCIndexPath&, TableView*) {}
}

[[link(android)]]
class TeleportPortalObject : RingObject {
	// virtual ~TeleportPortalObject();

	static TeleportPortalObject* create(char const*, bool) = android32 0x3d2b58;

	TodoReturn getTeleportXOff(cocos2d::CCNode*) = android32 0x3d2c68;
	bool init(char const*, bool) = android32 0x3d2b40;
	void setPositionOverride(cocos2d::CCPoint) = android32 0x3d2c64;
	void setStartPosOverride(cocos2d::CCPoint) = android32 0x3d2c30;

	virtual void setPosition(cocos2d::CCPoint const&) = android32 0x3d2dac;
	virtual void setRotation(float) = android32 0x3cd552;
	virtual void setStartPos(cocos2d::CCPoint) = android32 0x3d2d14;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3cd744;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3df84c;
	virtual TodoReturn addToGroup(int) = android32 0x3cd58e;
	virtual TodoReturn removeFromGroup(int) = android32 0x3cd5cc;
	virtual void setRotation2(float) = android32 0x3c8e74;
	virtual TodoReturn addToGroup2(int) = android32 0x3c91f6;
	virtual TodoReturn removeFromGroup2(int) = android32 0x3c91fa;

	void* m_unknown;
	TeleportPortalObject* m_orangePortal;
	bool m_isYellowPortal;
	float m_teleportYOffset;
	// property 55
	bool m_teleportEase;
	// property 345
	bool m_staticForceEnabled;
	// property 346
	int m_staticForce;
	// property 347
	bool m_redirectForceEnabled;
	// property 350
	float m_redirectForceMod;
	// property 348
	float m_redirectForceMin;
	// property 349
	float m_redirectForceMax;
	// property 351
	bool m_saveOffset;
	// property 352
	bool m_ignoreX;
	// property 353
	bool m_ignoreY;
	// property 354
	int m_gravityMode;
	// property 443
	bool m_property443;
	// property 464
	bool m_property464;
	// property 510
	bool m_property510;
	// property 591
	bool m_property591;
}

[[link(android)]]
class TextAlertPopup : cocos2d::CCNode {
	// virtual ~TextAlertPopup();

	static TextAlertPopup* create(gd::string, float, float, int, gd::string) = android32 0x492d28;

	bool init(gd::string, float, float, int, gd::string) = android32 0x492af4;
	void setAlertPosition(cocos2d::CCPoint, cocos2d::CCPoint) = android32 0x492e10;
	void setLabelColor(cocos2d::ccColor3B) = android32 0x492df4;
}

[[link(android)]]
class TextArea : cocos2d::CCSprite {
	// virtual ~TextArea();

	static TextArea* create(gd::string str, char const* font, float scale, float width, cocos2d::CCPoint anchor, float lineHeight, bool disableColor) = android32 0x2e7a9c;

	TodoReturn colorAllCharactersTo(cocos2d::ccColor3B) = android32 0x2e7cf8;
	TodoReturn colorAllLabels(cocos2d::ccColor3B) = android32 0x2e7d56;
	TodoReturn fadeIn(float, bool) = android32 0x2e7bfc;
	TodoReturn fadeInCharacters(float, float) = android32 0x2e7d8c;
	TodoReturn fadeOut(float) = android32 0x2e7c68;
	TodoReturn fadeOutAndRemove() = android32 0x2e7cac;
	TodoReturn finishFade() = android32 0x2e7610;
	TodoReturn hideAll() = android32 0x2e783e;
	bool init(gd::string str, char const* font, float scale, float width, cocos2d::CCPoint anchor, float lineHeight, bool disableColor) = android32 0x2e7a14;
	void setIgnoreColorCode(bool) = android32 0x2e77c8;
	void setString(gd::string) = android32 0x2e7858;
	TodoReturn showAll() = android32 0x2e7be0;
	TodoReturn stopAllCharacterActions() = android32 0x2e77d8;

	virtual void update(float) = android32 0x2e767c;
	virtual void draw() = android32 0x2e7626;
	virtual void setOpacity(unsigned char) = android32 0x2e7f70 = android32 0x2e7f54;

	bool m_disableColor;            // 0x1e4
	MultilineBitmapFont* m_label;   // 0x1e8
	float m_width;                  // 0x1ec
	int m_unknown;                  // 0x1f0
	gd::string m_fontFile;          // 0x1f4
	float m_height;                 // 0x20c
	PAD = win 0x4;
	cocos2d::CCPoint m_anchorPoint;
}

[[link(android)]]
class TextAreaDelegate {
	virtual TodoReturn fadeInTextFinished(TextArea*);
}

[[link(android)]]
class TextGameObject : GameObject {
	// virtual ~TextGameObject();

	static TextGameObject* create(cocos2d::CCTexture2D*) = android32 0x352bd0;

	bool init(cocos2d::CCTexture2D*) = android32 0x352bca;
	TodoReturn updateTextObject(gd::string, bool) = android32 0x353f90;

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x354140;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x355ab8;
	virtual TodoReturn updateTextKerning(int) = android32 0x343bd2;
	virtual TodoReturn getTextKerning() = android32 0x34357e;

	gd::string m_text;
	// property 488
	int m_kerning;
}

[[link(android)]]
class TextInputDelegate {
	virtual void textChanged(CCTextInputNode*) {}
	virtual void textInputOpened(CCTextInputNode*) {}
	virtual void textInputClosed(CCTextInputNode*) {}
	virtual void textInputShouldOffset(CCTextInputNode*, float) {}
	virtual void textInputReturn(CCTextInputNode*) {}
	virtual bool allowTextInput(CCTextInputNode*) { return true; }
	virtual void enterPressed(CCTextInputNode*) {}
}

[[link(android)]]
class TextStyleSection : cocos2d::CCObject {
	// virtual ~TextStyleSection();

	static TextStyleSection* create(int, int, TextStyleType) = android32 0x2e45bc;

	TodoReturn createColoredSection(cocos2d::ccColor3B, int, int) = android32 0x2e4618;
	TodoReturn createDelaySection(int, float) = android32 0x2e4662;
	TodoReturn createInstantSection(int, int, float) = android32 0x2e4642;
	TodoReturn createShakeSection(int, int, int, int) = android32 0x2e4650;
	bool init(int, int, TextStyleType) = android32 0x2e45b0;
}

[[link(android)]]
class TimerTriggerGameObject : EffectGameObject {
	// virtual ~TimerTriggerGameObject();

	static TimerTriggerGameObject* create(char const*) = android32 0x3d4120;

	bool init(char const*) = android32 0x3d411c;

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = android32 0x3d66c0;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3cb8cc;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e3ac8;
}

[[link(android)]]
class TopArtistsLayer : FLAlertLayer, OnlineListDelegate {
	// virtual ~TopArtistsLayer();

	static TopArtistsLayer* create() = android32 0x4de83c;

	bool isCorrect(char const*) = android32 0x4de918;
	TodoReturn loadPage(int) = android32 0x4df144;
	void onClose(cocos2d::CCObject* sender) = android32 0x4de64a;
	void onNextPage(cocos2d::CCObject* sender) = android32 0x4df2b0;
	void onPrevPage(cocos2d::CCObject* sender) = android32 0x4df2ba;
	TodoReturn setupLeaderboard(cocos2d::CCArray*) = android32 0x4de944;
	TodoReturn updateLevelsLabel() = android32 0x4def7c;

	virtual bool init() = android32 0x4deaac;
	virtual void registerWithTouchDispatcher() = android32 0x4de714;
	virtual void keyBackClicked() = android32 0x4de66e = android32 0x4de668;
	virtual void show() = android32 0x4de738;
	virtual TodoReturn loadListFinished(cocos2d::CCArray*, char const*) = android32 0x4deaa4 = android32 0x4dea60;
	virtual TodoReturn loadListFailed(char const*) = android32 0x4de93a = android32 0x4de91c;
	virtual TodoReturn setupPageInfo(gd::string, char const*) = android32 0x4df13c = android32 0x4defcc;
}

[[link(android)]]
class TOSPopup : FLAlertLayer {
	// virtual ~TOSPopup();

	static TOSPopup* create() = android32 0x492ec8;

	void onClose(cocos2d::CCObject* sender) = android32 0x489320;
	void onPrivacy(cocos2d::CCObject* sender) = android32 0x4892f0;
	void onTOS(cocos2d::CCObject* sender) = android32 0x489308;

	virtual bool init() = android32 0x488e98;
	virtual void keyBackClicked() = android32 0x48706c = android32 0x48706a;
}

[[link(android)]]
class TransformTriggerGameObject : EffectGameObject {
	// virtual ~TransformTriggerGameObject();

	static TransformTriggerGameObject* create(char const*) = android32 0x3d3f24;

	bool init(char const*) = android32 0x3d3f20;

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = android32 0x3d62b0;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3cd974;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e26bc;
}

[[link(android)]]
class TriggerControlGameObject : EffectGameObject {
	// virtual ~TriggerControlGameObject();

	static TriggerControlGameObject* create(char const*) = android32 0x3d470c;

	bool init(char const*) = android32 0x3d46f0;
	TodoReturn updateTriggerControlFrame() = android32 0x3d4780;

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = android32 0x3cd36e;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3d481c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e5390;
}

[[link(android)]]
class TriggerEffectDelegate {
	virtual TodoReturn pure_virtual_00a1b9c0() {} // TODO: figure out what function this is
	virtual TodoReturn pure_virtual_00a1b9c4() {} // TODO: figure out what function this is
	virtual TodoReturn pure_virtual_00a1b9c8() {} // TODO: figure out what function this is
}

[[link(android)]]
class TutorialLayer : FLAlertLayer {
	// virtual ~TutorialLayer();

	static TutorialLayer* create() = android32 0x411050;

	TodoReturn loadPage(int) = android32 0x411190;
	void onClose(cocos2d::CCObject* sender) = android32 0x411150;
	void onNext(cocos2d::CCObject* sender) = android32 0x411818;
	TodoReturn removeTutorialTexture() = android32 0x411124;

	virtual bool init() = android32 0x411460;
	virtual void keyBackClicked() = android32 0x411188 = android32 0x411182;
}

[[link(android)]]
class TutorialPopup : FLAlertLayer {
	// virtual ~TutorialPopup();

	static TutorialPopup* create(gd::string) = android32 0x31c844;

	TodoReturn animateMenu() = android32 0x31c5d4;
	TodoReturn closeTutorial(cocos2d::CCObject*) = android32 0x31c538;
	bool init(gd::string) = android32 0x31c6b0;
	TodoReturn registerForCallback(cocos2d::SEL_MenuHandler, cocos2d::CCNode*) = android32 0x31c960;

	virtual void keyBackClicked() = android32 0x31c584 = android32 0x31c57e;
	virtual void show() = android32 0x31c58c;
}

[[link(android)]]
class UIButtonConfig {
	TodoReturn reset() = android32 0x312e08;
	TodoReturn resetOneBtn() = android32 0x312e7c;

	PAD = win 0x28, android32 0x28, android64 0x28;
}

[[link(android)]]
class UILayer : cocos2d::CCLayerColor {
	// virtual ~UILayer();

	static UILayer* create(GJBaseGameLayer*) = android32 0x30142c;

	TodoReturn disableMenu() = android32 0x2ffe90;
	TodoReturn editorPlaytest(bool) = android32 0x30081a;
	TodoReturn enableEditorMode() = android32 0x30083c;
	TodoReturn enableMenu() = android32 0x2ffe82;
	TodoReturn handleKeypress(cocos2d::enumKeyCodes, bool) = android32 0x300508;
	bool init(GJBaseGameLayer*) = android32 0x301058;
	bool isJumpButtonPressed(bool) = android32 0x2ffe9e;
	void onCheck(cocos2d::CCObject* sender) = android32 0x2ff984;
	void onDeleteCheck(cocos2d::CCObject* sender) = android32 0x2ff9b2;
	void onPause(cocos2d::CCObject* sender) = android32 0x3004b0;
	TodoReturn processUINodesTouch(GJUITouchEvent, cocos2d::CCTouch*) = android32 0x300a5c;
	TodoReturn processUINodeTouch(GJUITouchEvent, int, cocos2d::CCPoint, GJUINode*) = android32 0x3008d0;
	TodoReturn refreshDpad() = android32 0x300fe0;
	TodoReturn resetAllButtons() = android32 0x3007fc;
	TodoReturn resetUINodeState() = android32 0x300484;
	TodoReturn toggleCheckpointsMenu(bool) = android32 0x2ffe76;
	TodoReturn toggleMenuVisibility(bool) = android32 0x3007f8;
	TodoReturn togglePlatformerMode(bool) = android32 0x30103c;
	TodoReturn updateCheckState() = android32 0x2ffcbc;
	TodoReturn updateDualMode(bool) = android32 0x301510;
	TodoReturn updateUINodeVisibility(bool) = android32 0x2ffe3a;

	virtual void draw() = android32 0x2ff972;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x300bd4 = android32 0x300ad8;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x300bec = android32 0x300bdc;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x300c58 = android32 0x300bf4;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x2ff97c = android32 0x2ff974;
	virtual void registerWithTouchDispatcher() = android32 0x2ff9d2;
	virtual void keyBackClicked() = android32 0x300500 = android32 0x3004e0;
	virtual void keyDown(cocos2d::enumKeyCodes) = android32 0x3007da = android32 0x3007d2 = android32 0x3007cc;
	virtual void keyUp(cocos2d::enumKeyCodes) = android32 0x3007f0 = android32 0x3007e8 = android32 0x3007e2;

	// This member is here because rob managed to inhert CCKeyboardDelegate twice
	// in this class, which ended up breaking addresser when trying to hook it.
	// so instead, we removed the second CCKeyboardDelegate from the base class list
	// and put this member here to take the place of its vtable
	void* m_stupidDelegate;
}

[[link(android)]]
class UIObjectSettingsPopup : SetupTriggerPopup {
	// virtual ~UIObjectSettingsPopup();

	static UIObjectSettingsPopup* create(UISettingsGameObject*, cocos2d::CCArray*) = android32 0x5568c0;

	bool init(UISettingsGameObject*, cocos2d::CCArray*) = android32 0x556260;

	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = android32 0x554bac;
}

[[link(android)]]
class UIOptionsLayer : SetupTriggerPopup {
	// virtual ~UIOptionsLayer();

	static UIOptionsLayer* create(bool) = android32 0x494a24;

	TodoReturn getNode(int) = android32 0x494f40;
	bool init(bool) = android32 0x493a14;
	void onReset(cocos2d::CCObject* sender) = android32 0x494af4;
	void onSaveLoad(cocos2d::CCObject* sender) = android32 0x4954a4;
	TodoReturn toggleUIGroup(int) = android32 0x49391c;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x495150 = android32 0x495078;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x495030 = android32 0x494f68;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x495070 = android32 0x495038;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x48707c = android32 0x487074;
	virtual void registerWithTouchDispatcher() = android32 0x488bc0;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x4894a0;
	virtual TodoReturn valueDidChange(int, float) = android32 0x494b3c;
	virtual TodoReturn getValue(int) = android32 0x4895cc;
}

[[link(android)]]
class UIPOptionsLayer {
	// virtual ~UIPOptionsLayer();

	static UIPOptionsLayer* create() = android32 0x495d04;

	TodoReturn getTouchRect() = android32 0x495ddc;
	void onReset(cocos2d::CCObject* sender) = android32 0x4898c0;

	virtual bool init() = android32 0x489964;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x495edc = android32 0x495e4c;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x489794 = android32 0x489700;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x487098 = android32 0x487084;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x4870a8 = android32 0x4870a0;
	virtual void registerWithTouchDispatcher() = android32 0x488c04;
	virtual void onClose(cocos2d::CCObject* sender) = android32 0x489d38;
	virtual TodoReturn valueDidChange(int, float) = android32 0x489d98;
	virtual TodoReturn getValue(int) = android32 0x489d80;
}

[[link(android)]]
class UISaveLoadLayer : SetupTriggerPopup {
	// virtual ~UISaveLoadLayer();

	static UISaveLoadLayer* create(UIOptionsLayer*) = android32 0x495400;

	bool init(UIOptionsLayer*) = android32 0x495158;
	void onLoad(cocos2d::CCObject* sender) = android32 0x494e24;
	void onSave(cocos2d::CCObject* sender) = android32 0x494d08;
}

[[link(android)]]
class UISettingsGameObject : EffectGameObject {
	// virtual ~UISettingsGameObject();

	static UISettingsGameObject* create() = android32 0x3d4020;

	virtual bool init() = android32 0x3d0d70;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = android32 0x3d2494;
	virtual gd::string getSaveString(GJBaseGameLayer*) = android32 0x3e2ddc;
}

[[link(android)]]
class UndoObject : cocos2d::CCObject {
	// virtual ~UndoObject();
	// UndoObject();

	static UndoObject* create(GameObject*, UndoCommand) = android32 0x35ae4a;
	static UndoObject* createWithArray(cocos2d::CCArray*, UndoCommand) = android32 0x35ad02;
	static UndoObject* createWithTransformObjects(cocos2d::CCArray*, UndoCommand) = android32 0x35aec8;

	bool init(cocos2d::CCArray*, UndoCommand) = android32 0x35ace0;
	bool init(GameObject*, UndoCommand) = android32 0x35ae30;
	TodoReturn initWithTransformObjects(cocos2d::CCArray*, UndoCommand) = android32 0x35ae8a;
	void setObjects(cocos2d::CCArray*) = android32 0x35ad42;

	GameObjectCopy* m_objectCopy;
	UndoCommand m_command;
	cocos2d::CCArray* m_objects;
	bool m_redo;
}

[[link(android)]]
class UpdateAccountSettingsPopup : FLAlertLayer, GJAccountSettingsDelegate {
	// virtual ~UpdateAccountSettingsPopup();

	static UpdateAccountSettingsPopup* create(GJAccountSettingsLayer*, int, int, int, gd::string, gd::string, gd::string) = android32 0x48de14;

	bool init(GJAccountSettingsLayer*, int, int, int, gd::string, gd::string, gd::string) = android32 0x48da90;
	void onClose(cocos2d::CCObject* sender) = android32 0x48da48;

	virtual void keyBackClicked() = android32 0x48da88 = android32 0x48da82;
	virtual TodoReturn updateSettingsFinished() = android32 0x488770 = android32 0x4886d0;
	virtual TodoReturn updateSettingsFailed() = android32 0x488808 = android32 0x488778;
}

[[link(android)]]
class UploadActionDelegate {
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
}

[[link(android)]]
class UploadActionPopup : FLAlertLayer {
	// virtual ~UploadActionPopup();

	static UploadActionPopup* create(UploadPopupDelegate*, gd::string) = android32 0x48e390;

	TodoReturn closePopup() = android32 0x48eb6c;
	bool init(UploadPopupDelegate*, gd::string) = android32 0x48e094;
	void onClose(cocos2d::CCObject* sender) = android32 0x48eb8a;
	void showFailMessage(gd::string) = android32 0x48e98c;
	void showSuccessMessage(gd::string) = android32 0x48e6d4;

	virtual void keyBackClicked() = android32 0x48eba4 = android32 0x48eb9e;
}

[[link(android)]]
class UploadListPopup : FLAlertLayer, ListUploadDelegate {
	// virtual ~UploadListPopup();

	static UploadListPopup* create(GJLevelList*) = android32 0x56fcd8;

	bool init(GJLevelList*) = android32 0x56f96c;
	void onBack(cocos2d::CCObject* sender) = android32 0x56b2f4;
	void onClose(cocos2d::CCObject* sender) = android32 0x56aee2;
	void onReturnToList(cocos2d::CCObject* sender) = android32 0x56dff6;

	virtual void keyBackClicked() = android32 0x56af02 = android32 0x56af00;
	virtual void show() = android32 0x56b03a;
	virtual TodoReturn listUploadFinished(GJLevelList*) = android32 0x56bd04 = android32 0x56bbb4;
	virtual TodoReturn listUploadFailed(GJLevelList*, int) = android32 0x56beac = android32 0x56bd0c;
}

[[link(android)]]
class UploadMessageDelegate {
	virtual TodoReturn uploadMessageFinished(int) = android32 0x486f48;
	virtual TodoReturn uploadMessageFailed(int) = android32 0x486f4a;
}

[[link(android)]]
class UploadPopup : FLAlertLayer, LevelUploadDelegate {
	// virtual ~UploadPopup();

	static UploadPopup* create(GJGameLevel*) = android32 0x3a3a54;

	bool init(GJGameLevel*) = android32 0x3a36b4;
	void onBack(cocos2d::CCObject* sender) = android32 0x3a2a44;
	void onClose(cocos2d::CCObject* sender) = android32 0x3a2478;
	void onReturnToLevel(cocos2d::CCObject* sender) = android32 0x3a2ae2;

	virtual void keyBackClicked() = android32 0x3a2498 = android32 0x3a2496;
	virtual void show() = android32 0x3a25c0;
	virtual TodoReturn levelUploadFinished(GJGameLevel*) = android32 0x3a28f0 = android32 0x3a27a0;
	virtual TodoReturn levelUploadFailed(GJGameLevel*) = android32 0x3a2a3c = android32 0x3a28f8;
}

[[link(android)]]
class UploadPopupDelegate {
	virtual TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class URLCell : TableViewCell {
	// virtual ~URLCell();
	URLCell(char const*, float, float);

	TodoReturn loadFromObject(CCURLObject*) = android32 0x32d82c;
	void onURL(cocos2d::CCObject* sender) = android32 0x3216e4;
	TodoReturn updateBGColor(int) = android32 0x32d99c;

	virtual bool init() = android32 0x31fd6a;
	virtual void draw() = android32 0x320e88;
}

[[link(android)]]
class URLViewLayer : GJDropDownLayer {
	// virtual ~URLViewLayer();

	static URLViewLayer* create(gd::string, cocos2d::CCArray*) = android32 0x49553c;

	bool init(gd::string, cocos2d::CCArray*) = android32 0x4954b8;
}

[[link(android)]]
class UserInfoDelegate {
	virtual TodoReturn getUserInfoFinished(GJUserScore*);
	virtual TodoReturn getUserInfoFailed(int);
	virtual TodoReturn userInfoChanged(GJUserScore*);
}

[[link(android)]]
class UserListDelegate {
	virtual TodoReturn getUserListFinished(cocos2d::CCArray*, UserListType);
	virtual TodoReturn getUserListFailed(UserListType, GJErrorCode);
	virtual TodoReturn userListChanged(cocos2d::CCArray*, UserListType);
	virtual TodoReturn forceReloadList(UserListType);
}

[[link(android)]]
class VideoOptionsLayer : FLAlertLayer {
	// virtual ~VideoOptionsLayer();

	static VideoOptionsLayer* create() = android32 0x409f10;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float, bool, cocos2d::CCArray*) = android32 0x40a318;
	void onAdvanced(cocos2d::CCObject* sender) = android32 0x40af8c;
	void onApply(cocos2d::CCObject* sender) = android32 0x407c54;
	void onBorderless(cocos2d::CCObject* sender) = android32 0x406c46;
	void onClose(cocos2d::CCObject* sender) = android32 0x407ddc;
	void onFullscreen(cocos2d::CCObject* sender) = android32 0x40a1b4;
	void onInfo(cocos2d::CCObject* sender) = android32 0x40a288;
	void onResolutionNext(cocos2d::CCObject* sender) = android32 0x40a27e;
	void onResolutionPrev(cocos2d::CCObject* sender) = android32 0x40a274;
	void onTextureQualityNext(cocos2d::CCObject* sender) = android32 0x40a036;
	void onTextureQualityPrev(cocos2d::CCObject* sender) = android32 0x40a02c;
	TodoReturn reloadMenu() = android32 0x40a2fc;
	TodoReturn toggleResolution() = android32 0x40a040;
	TodoReturn updateResolution(int) = android32 0x40a1c4;
	TodoReturn updateTextureQuality(int) = android32 0x409fc0;

	virtual bool init() = android32 0x40a4bc;
	virtual void keyBackClicked() = android32 0x407e18 = android32 0x407e12;
}

[[link(android)]]
class WorldLevelPage : FLAlertLayer {
	// virtual ~WorldLevelPage();

	static WorldLevelPage* create(GJGameLevel*, GJWorldNode*) = android32 0x4dd08c;

	bool init(GJGameLevel*, GJWorldNode*) = android32 0x4dc628;
	void onClose(cocos2d::CCObject* sender) = android32 0x4da2e6;
	void onInfo(cocos2d::CCObject* sender) = android32 0x4da740;
	void onPlay(cocos2d::CCObject* sender) = android32 0x4db1ac;
	void onSong(cocos2d::CCObject* sender) = android32 0x4da830;

	virtual void keyBackClicked() = android32 0x4da30a = android32 0x4da304;
	virtual void show() = android32 0x4da8d8;
}

[[link(android)]]
class WorldSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate {
	// virtual ~WorldSelectLayer();

	static WorldSelectLayer* create(int) = android32 0x4dc568;

	TodoReturn animateInActiveIsland() = android32 0x4dade8;
	TodoReturn colorForPage(int) = android32 0x4daec0;
	TodoReturn getColorValue(int, int, float) = android32 0x4daf10;
	TodoReturn goToPage(int, bool) = android32 0x4dadaa;
	bool init(int) = android32 0x4dbf54;
	void onBack(cocos2d::CCObject* sender) = android32 0x4da84e;
	void onFreeLevels(cocos2d::CCObject* sender) = android32 0x4da384;
	void onGarage(cocos2d::CCObject* sender) = android32 0x4da998;
	void onNext(cocos2d::CCObject* sender) = android32 0x4dae7c;
	void onPrev(cocos2d::CCObject* sender) = android32 0x4dae92;
	static cocos2d::CCScene* scene(int) = android32 0x4dc600;
	TodoReturn setupWorlds() = android32 0x4dbc64;
	TodoReturn showCompleteDialog() = android32 0x4da3c4;
	TodoReturn tryShowAd() = android32 0x4dad44;
	TodoReturn unblockButtons() = android32 0x4da2d2;
	TodoReturn updateArrows() = android32 0x4dad58;

	virtual void onExit() = android32 0x4da8a4;
	virtual void keyBackClicked() = android32 0x4da89a = android32 0x4da894;
	virtual TodoReturn scrollLayerWillScrollToPage(BoomScrollLayer*, int) = android32 0x4daeb8 = android32 0x4daeb4;
	virtual TodoReturn scrollLayerScrolledToPage(BoomScrollLayer*, int) = android32 0x4daeac = android32 0x4daea8;
	virtual TodoReturn scrollLayerMoved(cocos2d::CCPoint) = android32 0x4db0d8 = android32 0x4db024;
}
