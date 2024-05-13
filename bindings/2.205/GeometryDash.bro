// clang-format off

[[link(android)]]
class AccountHelpLayer : GJDropDownLayer, GJAccountDelegate, FLAlertLayerProtocol {
	// virtual ~AccountHelpLayer();

	static AccountHelpLayer* create() = ios 0x16dee8;

	TodoReturn doUnlink();
	TodoReturn exitLayer();
	void onAccountManagement(cocos2d::CCObject* sender) = ios 0x16e48c;
	void onReLogin(cocos2d::CCObject* sender);
	void onUnlink(cocos2d::CCObject* sender) = ios 0x16e540;
	TodoReturn updatePage() = ios 0x16e664;
	TodoReturn verifyUnlink() = ios 0x16e900;

	virtual void customSetup() = ios 0x16e070;
	virtual void layerHidden() = ios 0x16ea78;
	virtual TodoReturn accountStatusChanged() = ios 0x16e9c4;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x16e9d0;
}

[[link(android)]]
class AccountLayer : GJDropDownLayer, GJAccountDelegate, GJAccountBackupDelegate, GJAccountSyncDelegate, FLAlertLayerProtocol {
	// virtual ~AccountLayer();

	static AccountLayer* create();

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn doBackup() = ios 0x16d664;
	TodoReturn doSync() = ios 0x16d6ec;
	TodoReturn exitLayer();
	TodoReturn hideLoadingUI();
	void onBackup(cocos2d::CCObject* sender) = ios 0x16cebc;
	void onHelp(cocos2d::CCObject* sender) = ios 0x16d1f8;
	void onLogin(cocos2d::CCObject* sender);
	void onMore(cocos2d::CCObject* sender);
	void onRegister(cocos2d::CCObject* sender);
	void onSync(cocos2d::CCObject* sender) = ios 0x16d0a8;
	void showLoadingUI();
	TodoReturn toggleUI(bool);
	TodoReturn updatePage(bool) = ios 0x16d2bc;

	virtual void customSetup() = ios 0x16c800;
	virtual void layerHidden() = ios 0x16de7c;
	virtual TodoReturn backupAccountFinished() = ios 0x16d788;
	virtual TodoReturn backupAccountFailed(BackupAccountError, int) = ios 0x16d8bc;
	virtual TodoReturn syncAccountFinished() = ios 0x16db2c;
	virtual TodoReturn syncAccountFailed(BackupAccountError, int) = ios 0x16dc60;
	virtual TodoReturn accountStatusChanged() = ios 0x16d774;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x16dde0;
}

[[link(android)]]
class AccountLoginLayer : FLAlertLayer, TextInputDelegate, GJAccountLoginDelegate, FLAlertLayerProtocol {
	// virtual ~AccountLoginLayer();

	static AccountLoginLayer* create(gd::string) = ios 0x89170;

	TodoReturn createTextBackground(cocos2d::CCPoint, char const*, cocos2d::CCSize) = ios 0x89c9c;
	TodoReturn createTextInput(cocos2d::CCPoint, cocos2d::CCSize, char const*, int) = ios 0x89e44;
	TodoReturn createTextLabel(cocos2d::CCPoint, char const*, cocos2d::CCSize) = ios 0x89d60;
	TodoReturn disableNodes();
	TodoReturn hideLoadingUI() = ios 0x8a548;
	bool init(gd::string) = ios 0x8928c;
	void onClose(cocos2d::CCObject* sender);
	void onForgotPassword(cocos2d::CCObject* sender) = ios 0x89f50;
	void onForgotUser(cocos2d::CCObject* sender) = ios 0x89f2c;
	void onSubmit(cocos2d::CCObject* sender) = ios 0x89a38;
	TodoReturn resetLabel(int) = ios 0x8a360;
	TodoReturn resetLabels();
	void showLoadingUI();
	TodoReturn toggleUI(bool);
	TodoReturn updateLabel(AccountError) = ios 0x8a178;

	virtual void registerWithTouchDispatcher() = ios 0x8a5c4;
	virtual void keyBackClicked() = ios 0x8a4d8;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x8a3e0;
	virtual void textInputOpened(CCTextInputNode*) {}
	virtual void textInputClosed(CCTextInputNode*) = ios 0x8a5fc;
	virtual void textChanged(CCTextInputNode*) {}
	virtual TodoReturn loginAccountFinished(int, int) = ios 0x89f74;
	virtual TodoReturn loginAccountFailed(AccountError) = ios 0x8a13c;
}

[[link(android)]]
class AccountRegisterLayer : FLAlertLayer, TextInputDelegate, GJAccountRegisterDelegate, FLAlertLayerProtocol {
	// virtual ~AccountRegisterLayer();

	static AccountRegisterLayer* create();

	TodoReturn createTextBackground(cocos2d::CCPoint, cocos2d::CCSize) = ios 0x87f8c;
	TodoReturn createTextInput(cocos2d::CCPoint, cocos2d::CCSize, gd::string, int);
	TodoReturn createTextLabel(cocos2d::CCPoint, gd::string, cocos2d::CCSize) = ios 0x88050;
	TodoReturn disableNodes();
	TodoReturn hideLoadingUI();
	void onClose(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender) = ios 0x87be8;
	TodoReturn resetLabel(int);
	TodoReturn resetLabels();
	void showLoadingUI();
	TodoReturn toggleUI(bool);
	TodoReturn updateLabel(AccountError) = ios 0x8a26c;
	TodoReturn validEmail(gd::string);
	TodoReturn validPassword(gd::string);
	TodoReturn validUser(gd::string);

	virtual bool init() = ios 0x87128;
	virtual void registerWithTouchDispatcher() = ios 0x88a28;
	virtual void keyBackClicked() = ios 0x888e4;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x88730;
	virtual void textInputOpened(CCTextInputNode*) {}
	virtual void textInputClosed(CCTextInputNode*) = ios 0x88a60;
	virtual void textChanged(CCTextInputNode*) {}
	virtual void textInputShouldOffset(CCTextInputNode*, float) = ios 0x88f8c;
	virtual void textInputReturn(CCTextInputNode*) = ios 0x88ff8;
	virtual bool allowTextInput(CCTextInputNode*) = ios 0x89058;
	virtual TodoReturn registerAccountFinished() = ios 0x8823c;
	virtual TodoReturn registerAccountFailed(AccountError) = ios 0x8836c;
}

[[link(android)]]
class AchievementBar : cocos2d::CCNodeRGBA {
	// virtual ~AchievementBar();

	static AchievementBar* create(char const* title, char const* desc, char const* icon, bool quest) = ios 0x272100;

	bool init(char const* title, char const* desc, char const* icon, bool quest) = ios 0x2721bc;
	void show() = ios 0x273290;

	virtual void setOpacity(unsigned char) = ios 0x2734b0;
}

[[link(android)]]
class AchievementCell : TableViewCell {
	// virtual ~AchievementCell();
	AchievementCell(char const*, float, float);

	void loadFromDict(cocos2d::CCDictionary*);
	void updateBGColor(int);

	virtual bool init() = ios 0x10c4c4;
	virtual void draw() = ios 0x10c550;
}

[[link(android)]]
class AchievementManager : cocos2d::CCNode {
	// virtual ~AchievementManager();

	static AchievementManager* sharedState() = ios 0xb93f0;

	TodoReturn achievementForUnlock(int, UnlockType) = ios 0xe9edc;
	void addAchievement(gd::string, gd::string, gd::string, gd::string, gd::string, int) = ios 0xe9928;
	void addManualAchievements() = ios 0xb94f8;
	TodoReturn areAchievementsEarned(cocos2d::CCArray*);
	TodoReturn checkAchFromUnlock(char const*);
	void dataLoaded(DS_Dictionary*) = ios 0xe9c4c;
	void encodeDataTo(DS_Dictionary*) = ios 0xe9c9c;
	void firstSetup() = ios 0xe9bdc;
	TodoReturn getAchievementRewardDict();
	TodoReturn getAchievementsWithID(char const*);
	TodoReturn getAllAchievements();
	TodoReturn getAllAchievementsSorted(bool) = ios 0xe95d4;
	bool isAchievementAvailable(gd::string);
	bool isAchievementEarned(char const*) = ios 0xe9d40;
	TodoReturn limitForAchievement(gd::string);
	TodoReturn notifyAchievement(char const*, char const*, char const*) = ios 0xea2a4;
	TodoReturn notifyAchievementWithID(char const*) = ios 0xea160;
	TodoReturn percentageForCount(int, int);
	TodoReturn percentForAchievement(char const*);
	void reportAchievementWithID(char const*, int, bool);
	void reportPlatformAchievementWithID(char const*, int);
	void resetAchievement(char const*);
	TodoReturn resetAchievements();
	TodoReturn setup();
	TodoReturn storeAchievementUnlocks() = ios 0xe9734;

	virtual bool init() = ios 0xb9470;
}

[[link(android)]]
class AchievementNotifier : cocos2d::CCNode {
	// virtual ~AchievementNotifier();

	static AchievementNotifier* sharedState() = ios 0x21f3d8;

	TodoReturn achievementDisplayFinished();
	TodoReturn notifyAchievement(char const* title, char const* desc, char const* icon, bool quest) = ios 0x21f474;
	void showNextAchievement() = ios 0x21f4c8;
	void willSwitchToScene(cocos2d::CCScene*) = ios 0x21f60c;

	virtual bool init() = ios 0x21f448;
}

[[link(android)]]
class AchievementsLayer : GJDropDownLayer {
	// virtual ~AchievementsLayer();

	static AchievementsLayer* create();

	void loadPage(int) = ios 0x41eb50;
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	void setupPageInfo(int, int, int);

	virtual void keyDown(cocos2d::enumKeyCodes) = ios 0x41ee98;
	virtual void customSetup() = ios 0x41e894;
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
	TodoReturn setupAds() = ios 0x2ff72c;
	void showDebug();
	void showInterstitial();
	void showRewardedVideo();
}

[[link(android)]]
class AdvancedFollowEditObject : AdvancedFollowTriggerObject {
	// virtual ~AdvancedFollowEditObject();

	static AdvancedFollowEditObject* create(char const*);

	bool init(char const*);

	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x37dcd4;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x37d914;
}

[[link(android)]]
class AdvancedFollowTriggerObject : EffectGameObject {
	// virtual ~AdvancedFollowTriggerObject();
	// AdvancedFollowTriggerObject();

	static AdvancedFollowTriggerObject* create(char const*);

	int getAdvancedFollowID();
	bool init(char const*);

	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x37c948;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x37ab08;
}

[[link(android)]]
class AdvFollowSetup {
	// ~AdvFollowSetup();
}

[[link(android)]]
class AnimatedGameObject : EnhancedGameObject, AnimatedSpriteDelegate, SpritePartDelegate {
	// virtual ~AnimatedGameObject();

	static AnimatedGameObject* create(int);

	TodoReturn animationForID(int, int);
	TodoReturn getTweenTime(int, int);
	bool init(int) = ios 0x3813bc;
	TodoReturn playAnimation(int);
	TodoReturn setupAnimatedSize(int) = ios 0x381558;
	TodoReturn setupChildSprites() = ios 0x3816e8;
	TodoReturn updateChildSpriteColor(cocos2d::ccColor3B) = ios 0x381de0;
	TodoReturn updateObjectAnimation();

	virtual void setOpacity(unsigned char) = ios 0x38204c;
	virtual void setChildColor(cocos2d::ccColor3B const&) = ios 0x383044;
	virtual void resetObject() = ios 0x382fec;
	virtual void activateObject() = ios 0x381f8c;
	virtual void deactivateObject(bool) = ios 0x381fd0;
	virtual void setObjectColor(cocos2d::ccColor3B const&) = ios 0x382118;
	virtual void animationFinished(char const*) = ios 0x38214c;
	virtual TodoReturn displayFrameChanged(cocos2d::CCObject*, gd::string) = ios 0x382b8c;
}

[[link(android)]]
class AnimatedShopKeeper : CCAnimatedSprite {
	// virtual ~AnimatedShopKeeper();

	static AnimatedShopKeeper* create(ShopType) = ios 0x153d40;

	bool init(ShopType) = ios 0x1567e4;
	TodoReturn playReactAnimation() = ios 0x155b74;
	TodoReturn startAnimating();

	virtual void animationFinished(char const*) = ios 0x156898;
}

[[link(android)]]
class AnimatedSpriteDelegate {
	virtual void animationFinished(char const*);
}

[[link(android)]]
class AppDelegate : cocos2d::CCApplication, cocos2d::CCSceneDelegate {
	// virtual ~AppDelegate();
	inline static AppDelegate* get() {
        return static_cast<AppDelegate*>(cocos2d::CCApplication::sharedApplication());
    }

	TodoReturn bgScale() = ios 0x270dec;
	TodoReturn checkSound();
	TodoReturn hideLoadingCircle();
	TodoReturn loadingIsFinished() = ios 0x270e04;
	TodoReturn musicTest();
	void pauseGame();
	void pauseSound() = ios 0x270ef8;
	void platformShutdown();
	TodoReturn resumeSound();
	void setIdleTimerDisabled(bool);
	void setupGLView() = ios 0x270bc0;
	void showLoadingCircle(bool, bool, bool);

	virtual bool applicationDidFinishLaunching() = ios 0x270cac;
	virtual void applicationDidEnterBackground() = ios 0x270e90;
	virtual void applicationWillEnterForeground() = ios 0x270f48;
	virtual void applicationWillBecomeActive() = ios 0x270e10;
	virtual void applicationWillResignActive() = ios 0x270e28;
	virtual void trySaveGame(bool) = ios 0x271114;
	virtual void willSwitchToScene(cocos2d::CCScene*) = ios 0x2711e4;

	PAD = win 0x4, android32 0xC, android64 0x18;
	cocos2d::CCScene* m_runningScene;
}

[[link(android)]]
class ArtistCell : TableViewCell {
	// virtual ~ArtistCell();
	ArtistCell(char const*, float, float);

	void loadFromObject(SongInfoObject*);
	void onNewgrounds(cocos2d::CCObject* sender) = ios 0x110c54;
	void onYouTube(cocos2d::CCObject* sender) = ios 0x110d00;
	TodoReturn updateBGColor(int);
	virtual bool init() = ios 0x110c48;
	virtual void draw() = ios 0x110dac;
}

[[link(android)]]
class ArtTriggerGameObject : EffectGameObject {
	// virtual ~ArtTriggerGameObject();

	static ArtTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = ios 0x395010;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x394fa8;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x394e18;
}

[[link(android)]]
class AudioEffectsLayer : cocos2d::CCLayerColor {
	// virtual ~AudioEffectsLayer();

	static AudioEffectsLayer* create(gd::string) = ios 0x3c0e10;

	TodoReturn audioStep(float) = ios 0x3c1208;
	TodoReturn getBGSquare();
	TodoReturn goingDown();
	bool init(gd::string) = ios 0x3c0f14;
	TodoReturn resetAudioVars() = ios 0x3c11c0;
	TodoReturn triggerEffect(float) = ios 0x3c12c4;

	virtual void draw() {}
	virtual void updateTweenAction(float, char const*) = ios 0x3c141c;
}

[[link(android)]]
class AudioLineGuideGameObject : EffectGameObject {
	// virtual ~AudioLineGuideGameObject();

	static AudioLineGuideGameObject* create();

	virtual bool init() = ios 0x394078;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x3943e4;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x3940c8;
}

[[link(android)]]
class BitmapFontCache : cocos2d::CCObject {
	// virtual ~BitmapFontCache();

	static BitmapFontCache* sharedFontCache() = ios 0x2fa6c4;

	TodoReturn fontWithConfigFile(char const*, float) = ios 0x2fa7b0;
	bool init();
	TodoReturn purgeSharedFontCache() = ios 0x2fa730;
}

[[link(android)]]
class BonusDropdown : cocos2d::CCNode {
	// virtual ~BonusDropdown();

	static BonusDropdown* create(gd::string, int);

	bool init(gd::string, int);
	void show();
}

[[link(android)]]
class BoomListLayer : cocos2d::CCLayerColor {
	// virtual ~BoomListLayer();

	static BoomListLayer* create(BoomListView*, char const*);

	bool init(BoomListView*, char const*);
}

[[link(android)]]
class BoomListView : cocos2d::CCLayer, TableViewDelegate, TableViewDataSource {
	BoomListView() {}
	~BoomListView() {
		CC_SAFE_RELEASE(m_entries);
	}

	static BoomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float);

	TodoReturn addObjectToList(cocos2d::CCNode*);
	bool init(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = ios 0x1d3a64;
	TodoReturn lockList(bool) = ios 0x1d3bfc;

	bool init(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
		return this->init(entries, nullptr, height, width, 0, type, 0.0f);
	}

	virtual void draw() {}
	virtual void setupList(float) = ios 0x1d3c58;
	virtual void TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual float cellHeightForRowAtIndexPath(CCIndexPath&, TableView*) = ios 0x1d3ce8;
	virtual void didSelectRowAtIndexPath(CCIndexPath&, TableView*) {}
	virtual int numberOfRowsInSection(unsigned, TableView*) = ios 0x1d3d00;
	virtual unsigned int numberOfSectionsInTableView(TableView*) { return 1; }
	virtual TableViewCell* cellForRowAtIndexPath(CCIndexPath&, TableView*) = ios 0x1d3d20;
	virtual void TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&) {}
	virtual void TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual TableViewCell* getListCell(char const*) = ios 0x1d3db4;
	virtual void loadCell(TableViewCell*, int) = ios 0x1d3eac;

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

	static BoomScrollLayer* create(cocos2d::CCArray*, int, bool, cocos2d::CCArray*, DynamicScrollDelegate*);
	static BoomScrollLayer* create(cocos2d::CCArray*, int, bool);

	TodoReturn addPage(cocos2d::CCLayer*, int);
	TodoReturn addPage(cocos2d::CCLayer*);
	TodoReturn cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn claimTouch(cocos2d::CCTouch*);
	TodoReturn getPage(int);
	int getRelativePageForNum(int);
	TodoReturn getRelativePosForPage(int);
	TodoReturn getTotalPages();
	bool init(cocos2d::CCArray*, int, bool, cocos2d::CCArray*, DynamicScrollDelegate*) = ios 0x12ff60;
	void instantMoveToPage(int);
	void moveToPage(int);
	void moveToPageEnded();
	int pageNumberForPosition(cocos2d::CCPoint);
	TodoReturn positionForPageWithNumber(int);
	TodoReturn quickUpdate();
	TodoReturn removePage(cocos2d::CCLayer*);
	TodoReturn removePageWithNumber(int);
	void repositionPagesLooped();
	void selectPage(int);
	void setDotScale(float);
	void setPagesIndicatorPosition(cocos2d::CCPoint) = ios 0x1302a0;
	void setupDynamicScrolling(cocos2d::CCArray*, DynamicScrollDelegate*);
	void togglePageIndicators(bool);
	void updateDots(float);
	void updatePages();

	virtual void visit() = ios 0x130e24;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x131418;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x1314d4;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x1316ec;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x1313c8;
	virtual void registerWithTouchDispatcher() = ios 0x131290;
}

[[link(android)]]
class BoomScrollLayerDelegate {
	virtual void scrollLayerScrollingStarted(BoomScrollLayer*) {}
	virtual void scrollLayerScrolledToPage(BoomScrollLayer*, int) {}
	virtual void scrollLayerMoved(cocos2d::CCPoint) {}
	virtual void scrollLayerWillScrollToPage(BoomScrollLayer*, int) {}
}

[[link(android)]]
class BrowseSmartKeyLayer : BrowseSmartTemplateLayer {
	// virtual ~BrowseSmartKeyLayer();

	static BrowseSmartKeyLayer* create(GJSmartTemplate*, gd::string) = ios 0x7c200;

	TodoReturn addChanceToSelected(int, bool);
	TodoReturn createTemplateObjects();
	TodoReturn deletedSelectedItems();
	TodoReturn getAllSelectedBlocks();
	bool init(GJSmartTemplate*, gd::string) = ios 0x7c418;
	void onButton(cocos2d::CCObject* sender);
	void onPrefabObject(cocos2d::CCObject* sender);
	TodoReturn updateChanceValues();

	virtual void onBack(cocos2d::CCObject* sender) = ios 0x7d2f8;
}

[[link(android)]]
class BrowseSmartTemplateLayer : FLAlertLayer {
	// virtual ~BrowseSmartTemplateLayer();

	static BrowseSmartTemplateLayer* create(GJSmartTemplate*, SmartBrowseFilter) = ios 0x7aa24;

	TodoReturn addObjectToPage(cocos2d::CCObject*, int);
	TodoReturn addPrefabMenuItem(SmartPrefabResult, int);
	TodoReturn baseSetup() = ios 0x7b438;
	TodoReturn createDots() = ios 0x7becc;
	TodoReturn createPrefab(gd::string, int);
	void goToPage(int);
	bool init(GJSmartTemplate*, SmartBrowseFilter) = ios 0x7af88;
	void onClick(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onTemplateObject(cocos2d::CCObject* sender);
	TodoReturn updateDots();

	virtual void keyBackClicked() = ios 0x7c31c;
	virtual void onBack(cocos2d::CCObject* sender) = ios 0x7c340;
}

[[link(android)]]
class ButtonPage : cocos2d::CCLayer {
	// virtual ~ButtonPage();

	static ButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint, int, float) = ios 0x41de6c;

	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, float);
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

	static ButtonSprite* create(char const*, float);
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*, float) = ios 0x689b0;
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*);
	static ButtonSprite* create(char const*, int, int, float, bool);
	static ButtonSprite* create(cocos2d::CCSprite* topSprite, int width, int unused, float height, float, bool, char const* bgSprite, bool noScaleSpriteForBG) = ios 0x6827c;
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool);
	static ButtonSprite* create(cocos2d::CCSprite*) = ios 0x68970;

	bool init(char const*, int, int, float, bool, char const*, char const*, float);
	bool init(cocos2d::CCSprite* topSprite, int width, int unused, float scale, float height, bool unkBool, char const* bgSprite, bool useNormalCCSpriteForBG);
	void setColor(cocos2d::ccColor3B) = ios 0x691c8;
	void setString(char const*);
	void updateBGImage(char const*) = ios 0x69090;
	void updateSpriteBGSize() = ios 0x6859c;
	TodoReturn updateSpriteOffset(cocos2d::CCPoint) = ios 0x691a0;

    PAD = mac 0x18, win 0x18, android32 0x18, android64 0x18, ios 0x18;
    cocos2d::CCLabelBMFont* m_label;
    cocos2d::CCSprite* m_subSprite;
    cocos2d::CCSprite* m_subBGSprite;
    cocos2d::extension::CCScale9Sprite* m_BGSprite;
    PAD = mac 0xC, win 0x8, android32 0x8, android64 0xc, ios 0xc;
    cocos2d::CCPoint m_spritePosition;
}

[[link(android)]]
class CameraTriggerGameObject : EffectGameObject {
	// virtual ~CameraTriggerGameObject();

	static CameraTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = ios 0x3908b8;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x3917f0;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x390a74;
}

[[link(android)]]
class CCAlertCircle : cocos2d::CCNode {
	// virtual ~CCAlertCircle();

	static CCAlertCircle* create();

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class CCAnimatedSprite : cocos2d::CCSprite {
	// virtual ~CCAnimatedSprite();

	TodoReturn cleanupSprite() = ios 0x3047f4;
	TodoReturn createWithType(char const*, cocos2d::CCTexture2D*, bool) = ios 0x3040d4;
	bool initWithType(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn loadType(char const*, cocos2d::CCTexture2D*, bool) = ios 0x3042fc;
	TodoReturn runAnimation(gd::string) = ios 0x304990;
	TodoReturn runAnimationForced(gd::string) = ios 0x3049f4;
	TodoReturn stopTween();
	TodoReturn switchToMode(spriteMode);
	void tweenToAnimation(gd::string, float) = ios 0x304a9c;
	void tweenToAnimationFinished();
	TodoReturn willPlayAnimation();

	virtual void setOpacity(unsigned char) = ios 0x304d74;
	virtual void setColor(cocos2d::ccColor3B const&) = ios 0x304dd4;
	virtual void animationFinished(char const*) = ios 0x304d5c;
	virtual void animationFinishedO(cocos2d::CCObject*) = ios 0x304d28;
}

[[link(android)]]
class CCAnimateFrameCache : cocos2d::CCObject {
	// virtual ~CCAnimateFrameCache();

	static CCAnimateFrameCache* sharedSpriteFrameCache() = ios 0x1b77a4;

	TodoReturn addCustomSpriteFramesWithFile(char const*);
	TodoReturn addDict(cocos2d::CCDictionary*, char const*);
	TodoReturn addDict(DS_Dictionary*, char const*);
	TodoReturn addSpriteFramesWithFile(char const*) = ios 0x1b7ab8;
	bool init() = ios 0x1b7810;
	TodoReturn purgeSharedSpriteFrameCache();
	TodoReturn removeSpriteFrames() = ios 0x1b7be8;
	TodoReturn spriteFrameByName(char const*);
}

[[link(android)]]
class CCBlockLayer : cocos2d::CCLayerColor {
	// virtual ~CCBlockLayer();

	static CCBlockLayer* create();

	TodoReturn decrementForcePrio() = ios 0x8c5c4;
	TodoReturn incrementForcePrio() = ios 0x8c3b0;

	virtual bool init() = ios 0x8c300;
	virtual void draw() = ios 0x8c560;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x8c59c;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void registerWithTouchDispatcher() = ios 0x8c444;
	virtual void keyBackClicked() = ios 0x8c47c;
	virtual void customSetup() {}
	virtual void enterLayer() = ios 0x8c40c;
	virtual TodoReturn exitLayer() = ios 0x8c498;
	virtual void showLayer(bool) = ios 0x8c4e4;
	virtual void hideLayer(bool) = ios 0x8c4f0;
	virtual void layerVisible() = ios 0x8c500;
	virtual void layerHidden() = ios 0x8c510;
	virtual void enterAnimFinished() {}
	virtual void disableUI() {}
	virtual void enableUI() {}

	void* m_unknown;
}

[[link(android)]]
class CCCircleAlert : CCCircleWave {
	// virtual ~CCCircleAlert();

	static CCCircleAlert* create(float, float, float);

	bool init(float, float, float);
}

[[link(android)]]
class CCCircleWave : cocos2d::CCNode {
	// virtual ~CCCircleWave();
	// CCCircleWave();

	static CCCircleWave* create(float startRadius, float endRadius, float duration, bool fadeIn, bool easeOut);
	static CCCircleWave* create(float, float, float, bool);

	TodoReturn baseSetup(float);
	TodoReturn followObject(cocos2d::CCNode*, bool) = ios 0x173268;
	bool init(float startRadius, float endRadius, float duration, bool fadeIn, bool easeOut); // easeOut is only used in fadeOut
	TodoReturn updatePosition(float) = ios 0x17321c;

	virtual void setPosition(cocos2d::CCPoint const&) = ios 0x1731e8;
	virtual void removeMeAndCleanup() = ios 0x1735dc;
	virtual void draw() = ios 0x1734b4;
	virtual void updateTweenAction(float, char const*) = ios 0x1732f8;
}

[[link(android)]]
class CCCircleWaveDelegate {
	virtual void circleWaveWillBeRemoved(CCCircleWave*) {}
}

[[link(android)]]
class CCContentLayer : cocos2d::CCLayerColor {
	inline CCContentLayer() {}
	~CCContentLayer() = ios 0x195b80;

	static CCContentLayer* create(cocos2d::ccColor4B const&, float, float) = ios 0x195a44;

	virtual void setPosition(cocos2d::CCPoint const&) = ios 0x195b18;
}

[[link(android)]]
class CCCountdown : cocos2d::CCSprite {
	// virtual ~CCCountdown();

	static CCCountdown* create();

	TodoReturn lapFinished();
	TodoReturn startTimerWithSeconds(float, cocos2d::SEL_CallFunc, cocos2d::CCNode*);

	virtual bool init();
	virtual void setOpacity(unsigned char);
}

[[link(android)]]
class CCCounterLabel : cocos2d::CCLabelBMFont {
	// virtual ~CCCounterLabel();

	static CCCounterLabel* create(int, char const*, FormatterType) = ios 0x4417c;

	TodoReturn calculateStepSize(int);
	TodoReturn disableCounter();
	TodoReturn enableCounter();
	TodoReturn fastUpdateCounter();
	TodoReturn getTargetCount();
	bool init(int, char const*, FormatterType);
	void setTargetCount(int) = ios 0x4433c;
	TodoReturn updateCounter(float);
	TodoReturn updateString();
}

[[link(android)]]
class CCExtenderNode {
	void setOpacity(unsigned int);
}

[[link(android)]]
class CCIndexPath : cocos2d::CCObject {
	CCIndexPath() {}
	// virtual ~CCIndexPath();

	TodoReturn CCIndexPathWithSectionRow(int, int);
}

[[link(android)]]
class CCLightFlash : cocos2d::CCNode {
	// virtual ~CCLightFlash();

	static CCLightFlash* create();

	TodoReturn cleanupFlash();
	void fadeAndRemove();
	TodoReturn playEffect(cocos2d::CCPoint, cocos2d::ccColor3B, float, float, float, float, float, float, float, float, float, float, float, float, float, float, int, bool, bool, float);
	TodoReturn removeLights();
	void showFlash() = ios 0x3a8cc;

	virtual bool init() = ios 0x3a4e0;
}

[[link(android)]]
class CCLightStrip : cocos2d::CCNode {
	// virtual ~CCLightStrip();

	static CCLightStrip* create(float, float, float, float, float) = ios 0x3a818;

	bool init(float, float, float, float, float) = ios 0x3ac50;

	virtual void draw() = ios 0x3ad68;
	virtual void updateTweenAction(float, char const*) = ios 0x3aec0;
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

	static CCMenuItemSpriteExtra* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = ios 0x21c4fc;

	static CCMenuItemSpriteExtra* create(cocos2d::CCNode* sprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) {
		return CCMenuItemSpriteExtra::create(sprite, nullptr, target, callback);
	}

	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = ios 0x21c5a0;
	inline void setSizeMult(float mult) {
		//inlined on windows, member is in CCMenuItemSprite
		m_fSizeMult = mult;
	}
	TodoReturn useAnimationType(MenuAnimationType);

	virtual void activate() = ios 0x21c72c;
	virtual void selected() = ios 0x21c80c;
	virtual void unselected() = ios 0x21c9e4;

	/// Set a new image for this button
	/// Prefer using this over `setNormalImage` as the latter does not actually 
	/// handle any of the special sizing operations `CCMenuItemSpriteExtra` has
	/// @param sprite The sprite to replace this button's sprite with
	/// @note Geode addition
	void setSprite(cocos2d::CCSprite* sprite) {
		this->setNormalImage(sprite);
		this->updateSprite();
	}
	/// Update the sizing of this button's image
	/// If you for example have a `ButtonSprite` on this button and change the 
	/// text, you need to call `updateSprite` afterwards to fix the button's 
	/// content size
	/// @note Geode addition
	void updateSprite() {
		auto sprite = this->getNormalImage();
		auto size = sprite->getScaledContentSize();
		sprite->setPosition(size / 2);
		sprite->setAnchorPoint({ .5f, .5f });
		this->setContentSize(size);
	}

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

	static CCMenuItemToggler* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = ios 0x197eb8;
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

	TodoReturn activeItem() = ios 0x19827c;
	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = ios 0x197f88;
	TodoReturn normalTouch(cocos2d::CCObject*) = ios 0x198138;
	TodoReturn selectedTouch(cocos2d::CCObject*) = ios 0x19814c;
	void setSizeMult(float) = ios 0x198238;
	void toggle(bool) = ios 0x198160;

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

	virtual void activate() = ios 0x1982d8;
	virtual void selected() = ios 0x198298;
	virtual void unselected() = ios 0x198318;
	virtual void setEnabled(bool) = ios 0x198358;

	/// Update the sizing of this toggle's image
	/// If you for example have a `ButtonSprite` on this toggle and change the 
	/// text, you need to call `updateSprite` afterwards to fix the toggle's 
	/// content size
	/// @note Geode addition
	void updateSprite() {
		m_offButton->updateSprite();
		m_onButton->updateSprite();
		auto size = m_offButton->getScaledContentSize();
		m_offButton->setPosition(size / 2);
		m_offButton->setAnchorPoint({ .5f, .5f });
		m_onButton->setPosition(size / 2);
		m_onButton->setAnchorPoint({ .5f, .5f });
		this->setContentSize(size);
	}

	CCMenuItemSpriteExtra* m_offButton;
	CCMenuItemSpriteExtra* m_onButton;
	bool m_toggled;
	bool m_notClickable;
}

[[link(android)]]
class CCMoveCNode : cocos2d::CCObject {
	// virtual ~CCMoveCNode();

	static CCMoveCNode* create();

	bool init();
	TodoReturn reset();
}

[[link(android)]]
class CCNodeContainer : cocos2d::CCNode {
	// virtual ~CCNodeContainer();

	static CCNodeContainer* create();

	virtual bool init();
	virtual void visit() = ios 0x20d490;
}

[[link(android)]]
class CCPartAnimSprite : cocos2d::CCSprite {
	// virtual ~CCPartAnimSprite();

	TodoReturn changeTextureOfID(char const*, char const*);
	TodoReturn countParts();
	TodoReturn createWithAnimDesc(char const*, cocos2d::CCTexture2D*, bool) = ios 0x8468c;
	TodoReturn dirtify();
	TodoReturn getSpriteForKey(char const*);
	TodoReturn initWithAnimDesc(char const*, cocos2d::CCTexture2D*, bool);
	void setColor(cocos2d::ccColor3B);
	void setFlipX(bool);
	void setFlipY(bool);
	TodoReturn transformSprite(SpriteDescription*);
	TodoReturn tweenSpriteTo(SpriteDescription*, float);
	TodoReturn tweenToFrame(cocos2d::CCSpriteFrame*, float);

	virtual void setScaleX(float) = ios 0x8553c;
	virtual void setScaleY(float) = ios 0x85564;
	virtual void setScale(float) = ios 0x85514;
	virtual void setOpacity(unsigned char) = ios 0x85750;
	virtual void setBlendFunc(cocos2d::_ccBlendFunc) = ios 0x8558c;
	virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = ios 0x851d0;
	virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = ios 0x85304;
	virtual cocos2d::CCSpriteFrame* displayFrame() = ios 0x8531c;
}

[[link(android)]]
class CCScrollLayerExt : cocos2d::CCLayer {
	// virtual ~CCScrollLayerExt();
	CCScrollLayerExt(cocos2d::CCRect) = ios 0x307634;

	TodoReturn constraintContent() = ios 0x307da8;
	TodoReturn doConstraintContent(bool);
	TodoReturn getMaxY();
	TodoReturn getMinY();
	void moveToTop() = ios 0x307c78;
	void moveToTopWithOffset(float) = ios 0x307bd0;
	TodoReturn scrollingEnd();
	void scrollLayer(float) = ios 0x308548;
	void setContentLayerSize(cocos2d::CCSize);
	void setContentOffset(cocos2d::CCPoint, bool) = ios 0x307f7c;
	TodoReturn updateIndicators(float);

	virtual void visit() = ios 0x308610;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x30804c;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3083e8;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x308158;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x308384;
	virtual void registerWithTouchDispatcher() = ios 0x308014;
	virtual TodoReturn preVisitWithClippingRect(cocos2d::CCRect) = ios 0x308704;
	virtual TodoReturn postVisit() = ios 0x308798;

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
	virtual void scrllViewWillBeginDecelerating(CCScrollLayerExt*) {}
	virtual void scrollViewDidEndDecelerating(CCScrollLayerExt*) {}
	virtual void scrollViewTouchMoving(CCScrollLayerExt*) {}
	virtual void scrollViewDidEndMoving(CCScrollLayerExt*) {}
	virtual void scrollViewTouchBegin(CCScrollLayerExt*) {}
	virtual void scrollViewTouchEnd(CCScrollLayerExt*) {}
}

[[link(android)]]
class CCSpriteCOpacity : cocos2d::CCSprite {
	// virtual ~CCSpriteCOpacity();

	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(char const*);

	virtual void setOpacity(unsigned char);
}

[[link(android)]]
class CCSpriteGrayscale : CCSpriteWithHue {
	// virtual ~CCSpriteGrayscale();

	static CCSpriteGrayscale* create(gd::string const&, cocos2d::CCRect const&);
	static CCSpriteGrayscale* create(gd::string const&);

	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*) = ios 0x1aa08c;
	static CCSpriteGrayscale* createWithSpriteFrameName(gd::string const&) = ios 0x1aa178;
	TodoReturn createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
	TodoReturn createWithTexture(cocos2d::CCTexture2D*);

	virtual TodoReturn getShaderName() = ios 0x1aa07c;
	virtual TodoReturn shaderBody() = ios 0x1a9fa8;
}

[[link(android)]]
class CCSpritePart : CCSpritePlus {
	// virtual ~CCSpritePart();

	static CCSpritePart* create(cocos2d::CCTexture2D*);

	TodoReturn createWithSpriteFrameName(char const*);
	TodoReturn frameChanged(gd::string);
	TodoReturn getBeingUsed();
	TodoReturn hideInactive();
	TodoReturn markAsNotBeingUsed();
	TodoReturn resetTextureRect();
	void setBeingUsed(bool);
	TodoReturn updateDisplayFrame(gd::string);

	virtual void setVisible(bool) = ios 0x858a8;
}

[[link(android)]]
class CCSpritePlus : cocos2d::CCSprite {
	// virtual ~CCSpritePlus();

	TodoReturn addFollower(cocos2d::CCNode*) = ios 0x1bd44c;
	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(char const*);
	TodoReturn followSprite(CCSpritePlus*);
	TodoReturn getFollower();
	TodoReturn removeFollower(cocos2d::CCNode*);
	TodoReturn stopFollow();

	virtual void setScaleX(float) = ios 0x1bd2d8;
	virtual void setScaleY(float) = ios 0x1bd354;
	virtual void setScale(float) = ios 0x1bd3d0;
	virtual void setPosition(cocos2d::CCPoint const&) = ios 0x1bcfa8;
	virtual void setRotation(float) = ios 0x1bd01c;
	virtual void setRotationX(float) = ios 0x1bd090;
	virtual void setRotationY(float) = ios 0x1bd104;
	virtual bool initWithTexture(cocos2d::CCTexture2D*) = ios 0x1bcf94;
	virtual bool initWithSpriteFrameName(char const*) = ios 0x1bcf88;
	virtual void setFlipX(bool) = ios 0x1bd178;
	virtual void setFlipY(bool) = ios 0x1bd228;

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

	static CCSpriteWithHue* create(gd::string const&, cocos2d::CCRect const&);
	static CCSpriteWithHue* create(gd::string const&);

	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(gd::string const&);
	TodoReturn createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
	TodoReturn createWithTexture(cocos2d::CCTexture2D*);
	TodoReturn getAlpha();
	TodoReturn getHue();
	TodoReturn getUniformLocations() = ios 0x1a9b54;
	TodoReturn initShader() = ios 0x1a9888;
	void setCustomLuminance(float, float, float);
	void setEvenLuminance(float) = ios 0x1a9e10;
	void setHue(float);
	void setHueDegrees(float);
	void setLuminance(float);
	TodoReturn setupDefaultSettings();
	TodoReturn updateColorMatrix();
	TodoReturn updateHue(float);

	virtual void draw() = ios 0x1a9e2c;
	virtual bool initWithTexture(cocos2d::CCTexture2D*);
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = ios 0x1a9acc;
	virtual TodoReturn getShaderName() = ios 0x1a9714;
	virtual TodoReturn shaderBody() = ios 0x1a9bd8;
	virtual void updateColor() = ios 0x1a9be4;
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

	static CCTextInputNode* create(float, float, char const*, char const*, int, char const*) = ios 0x1737d4;

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

	void addTextArea(TextArea* tArea) = ios 0x173af0;
	void forceOffset() = ios 0x175328;
	gd::string getString() {
		return m_textField->getString();
	}
	bool init(float, float, char const*, char const*, int, char const*);
	void refreshLabel() = ios 0x173ff0;
	void setLabelNormalColor(cocos2d::ccColor3B);
	void setString(gd::string) = ios 0x173f1c;
	void updateBlinkLabel();
	void updateBlinkLabelToChar(int);
	void updateCursorPosition(cocos2d::CCPoint, cocos2d::CCRect) = ios 0x17532c;
	void updateDefaultFontValues(gd::string);
	void updateLabel(gd::string label) = ios 0x173c00;

	virtual void visit() = ios 0x173ec0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x175770;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x175918;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x175908;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x175910;
	virtual void registerWithTouchDispatcher() = ios 0x175920;
	virtual void textChanged() = ios 0x174754;
	virtual void onClickTrackNode(bool) = ios 0x174734;
	virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&) = ios 0x174550;
	virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&) = ios 0x1746a4;
	virtual bool onTextFieldInsertText(cocos2d::CCTextFieldTTF*, char const*, int, cocos2d::enumKeyCodes) = ios 0x1747ec;
	virtual bool onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF* pSender) = ios 0x174bac;
	virtual bool onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF* pSender) = ios 0x174e18;

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

	static CCURLObject* create(gd::string, gd::string) = ios 0x3184f4;

	bool init(gd::string, gd::string);
}

[[link(android), depends(ChallengesPage), depends(GJChallengeItem)]]
class ChallengeNode : cocos2d::CCNode {
	// virtual ~ChallengeNode();

	static ChallengeNode* create(GJChallengeItem* challengeItem, ChallengesPage* challengesPage, bool isNew);

	bool init(GJChallengeItem* challengeItem, ChallengesPage* challengesPage, bool isNew) = ios 0x3c5dc;
	void onClaimReward(cocos2d::CCObject* sender) = ios 0x3d23c;
	void updateTimeLabel(gd::string);

	ChallengesPage* m_challengesPage;
	GJChallengeItem* m_challengeItem;
	cocos2d::CCPoint m_unkPoint;
	cocos2d::CCLabelBMFont* m_countdownLabel;
	bool m_unloaded;
}

[[link(android)]]
class ChallengesPage : FLAlertLayer, FLAlertLayerProtocol, GJChallengeDelegate, CurrencyRewardDelegate {
	// virtual ~ChallengesPage();

	static ChallengesPage* create() = ios 0x3b278;

	TodoReturn claimItem(ChallengeNode*, GJChallengeItem*, cocos2d::CCPoint) = ios 0x3c428;
	ChallengeNode* createChallengeNode(int number, bool skipAnimation, float animLength, bool isNew) = ios 0x3bcb8;
	TodoReturn exitNodeAtSlot(int, float);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn tryGetChallenges();
	TodoReturn updateDots();
	callback void updateTimers(float) = ios 0x3bae0;

	virtual bool init() = ios 0x3b350;
	virtual void registerWithTouchDispatcher() = ios 0x3c3f0;
	virtual void keyBackClicked() = ios 0x3c3e4;
	virtual void show() = ios 0x3c268;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) {}
	virtual TodoReturn challengeStatusFinished() = ios 0x3bef4;
	virtual TodoReturn challengeStatusFailed() = ios 0x3c0f8;
	virtual void currencyWillExit(CurrencyRewardLayer*) = ios 0x3c558;

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

	TodoReturn editChanceObject(int, int);
	bool init(char const*);
	TodoReturn remapChanceObjects(gd::unordered_map<int, int> const*);
	TodoReturn revertChanceRemap();
}

[[link(android)]]
class CharacterColorDelegate {
	virtual void playerColorChanged();
	virtual void showUnlockPopup(int, UnlockType);
}

[[link(android)]]
class CharacterColorPage : FLAlertLayer {
	// virtual ~CharacterColorPage();

	static CharacterColorPage* create()= ios 0x12dacc;

	int activeColorForMode(int mode);
	TodoReturn checkColor(int, UnlockType);
	int colorForIndex(int);
	void createColorMenu() = ios 0x12e8cc;
	void FLAlert_Clicked(FLAlertLayer*, bool);
	cocos2d::CCPoint offsetForIndex(int) = ios 0x12f1ac;
	void onClose(cocos2d::CCObject* sender);
	void onMode(cocos2d::CCObject* sender) = ios 0x12e628;
	void onPlayerColor(cocos2d::CCObject* sender) = ios 0x12efbc;
	void toggleGlow(cocos2d::CCObject*);
	void toggleGlowItems(bool);
	void toggleShip(cocos2d::CCObject*);
	void updateColorMode(int);
	void updateIconColors();

	virtual bool init() = ios 0x12db8c;
	virtual void registerWithTouchDispatcher() = ios 0x12f488;
	virtual void keyBackClicked() = ios 0x12f42c;
	virtual void show() = ios 0x12f2b8;

	int m_colorMode;
	float m_height;
	float m_width;
	cocos2d::CCArray* m_playerObjects;
	cocos2d::CCArray* m_modeButtons;
	cocos2d::CCDictionary* m_colorButtons;
	cocos2d::CCArray* m_cursors;
	CharacterColorDelegate* m_delegate;
	CCMenuItemToggler* m_glowToggler;
	cocos2d::CCLabelBMFont* m_glowLabel;
}

[[link(android)]]
class CheckpointGameObject : EffectGameObject {
	// virtual ~CheckpointGameObject();

	static CheckpointGameObject* create();

	TodoReturn resetCheckpoint();
	TodoReturn updateCheckpointSpriteVisibility() = ios 0x38d80c;

	virtual bool init() = ios 0x38d5c8;
	virtual void setupCustomSprites(gd::string) = ios 0x38d99c;
	virtual void resetObject() = ios 0x38e4e4;
	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = ios 0x38d624;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x38e3d4;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x38e130;
	virtual void triggerActivated(float) = ios 0x38d63c;
	virtual TodoReturn restoreObject() = ios 0x38e534;
	virtual TodoReturn updateSyncedAnimation(float, int) = ios 0x38dda0;
}

[[link(android)]]
class CheckpointObject : cocos2d::CCNode {
	// virtual ~CheckpointObject();

	static CheckpointObject* create() = ios 0x121300;

	TodoReturn getObject();
	void setObject(GameObject*) = ios 0x121e8c;

	virtual bool init();
}

[[link(android)]]
class CollisionBlockPopup : FLAlertLayer, TextInputDelegate {
	// virtual ~CollisionBlockPopup();

	static CollisionBlockPopup* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x8ac38;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn determineStartValues() = ios 0x8b610;
	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x8ad14;
	void onClose(cocos2d::CCObject* sender);
	void onDynamicBlock(cocos2d::CCObject* sender);
	void onItemIDArrow(cocos2d::CCObject* sender);
	void onNextItemID(cocos2d::CCObject* sender);
	TodoReturn updateEditorLabel();
	TodoReturn updateItemID();
	TodoReturn updateTextInputLabel() = ios 0x8b7d0;

	virtual void keyBackClicked() = ios 0x8babc;
	virtual void show() = ios 0x8ba70;
	virtual void textInputClosed(CCTextInputNode*) = ios 0x8b9d4;
	virtual void textChanged(CCTextInputNode*) = ios 0x8b9f0;
	virtual void textInputShouldOffset(CCTextInputNode*, float) = ios 0x8bac8;
	virtual void textInputReturn(CCTextInputNode*) = ios 0x8bb34;
}

[[link(android)]]
class ColorAction : cocos2d::CCObject {
	// virtual ~ColorAction();

	static ColorAction* create();
	static ColorAction* create(cocos2d::ccColor3B, bool, int);
	static ColorAction* create(cocos2d::ccColor3B, cocos2d::ccColor3B, float, double, bool, int, float, float);
	static ColorAction* create(cocos2d::ccColor3B, cocos2d::ccColor3B, float, double, bool);

	TodoReturn getCopy();
	bool init(cocos2d::ccColor3B, cocos2d::ccColor3B, float, double, bool, int, float, float);
	bool isInUse();
	void loadFromState(CAState&);
	TodoReturn resetAction() = ios 0x10a28;
	void saveToState(CAState&);
	TodoReturn setupFromMap(gd::map<gd::string, gd::string>&);
	void setupFromString(gd::string) = ios 0x11370;
	TodoReturn step(float) = ios 0x10934;
	TodoReturn updateCustomColor(cocos2d::ccColor3B, cocos2d::ccColor3B);
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

	TodoReturn resetAction();
	TodoReturn step(float);
	TodoReturn updateCustomColor(cocos2d::ccColor3B, cocos2d::ccColor3B);
}

[[link(android)]]
class ColorActionSprite : cocos2d::CCNode {
	// virtual ~ColorActionSprite();

	static ColorActionSprite* create();
	virtual bool init() = ios 0x10750;

	float m_opacity;
	cocos2d::ccColor3B m_color;
	cocos2d::ccColor3B m_copyColor;
}

[[link(android)]]
class ColorChannelSprite : cocos2d::CCSprite {
	// virtual ~ColorChannelSprite();

	static ColorChannelSprite* create() = ios 0x1008c;

	TodoReturn updateBlending(bool) = ios 0x10430;
	TodoReturn updateCopyLabel(int, bool) = ios 0x10134;
	void updateOpacity(float) = ios 0x102d4;
	TodoReturn updateValues(ColorAction*) = ios 0x10538;

	virtual bool init() = ios 0x10128;
}

[[link(android)]]
class ColorSelectDelegate {
	virtual void colorSelectClosed(cocos2d::CCNode*) {}
}

[[link(android)]]
class ColorSelectLiveOverlay : FLAlertLayer {
	// virtual ~ColorSelectLiveOverlay();

	static ColorSelectLiveOverlay* create(ColorAction*, ColorAction*, EffectGameObject*) = ios 0xf65f4;

	void closeColorSelect(cocos2d::CCObject*);
	void colorValueChanged(cocos2d::ccColor3B);
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn createWithActions(ColorAction*, ColorAction*);
	TodoReturn createWithObject(EffectGameObject*);
	TodoReturn determineStartValues() = ios 0xf7344;
	TodoReturn getColorValue();
	bool init(ColorAction*, ColorAction*, EffectGameObject*) = ios 0xf6688;
	void onSelectTab(cocos2d::CCObject* sender);
	TodoReturn selectColor(cocos2d::ccColor3B) = ios 0xf764c;
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn textChanged(CCTextInputNode*);
	void textInputClosed(CCTextInputNode*);
	TodoReturn toggleControls(bool);
	TodoReturn updateColorLabel();
	TodoReturn updateColorValue();
	void updateOpacity();

	virtual void keyBackClicked() = ios 0xf7abc;
	virtual void show() = ios 0xf7ad0;

	EffectGameObject* m_effectGameObject;
	cocos2d::CCArray* m_barSprites;
	cocos2d::CCArray* m_12buttons;
	ColorAction* m_baseColorAction;
	ColorAction* m_detailColorAction;
}

[[link(android)]]
class ColorSelectPopup : SetupTriggerPopup, cocos2d::extension::ColorPickerDelegate, GJSpecialColorSelectDelegate {
	// virtual ~ColorSelectPopup();

	static ColorSelectPopup* create(cocos2d::ccColor3B);
	static ColorSelectPopup* create(ColorAction*);
	static ColorSelectPopup* create(EffectGameObject*, cocos2d::CCArray*, ColorAction*);
	static ColorSelectPopup* create(EffectGameObject*, cocos2d::CCArray*);

	void closeColorSelect(cocos2d::CCObject*);
	TodoReturn colorToHex(cocos2d::ccColor3B);
	TodoReturn getColorValue();
	TodoReturn hexToColor(gd::string);
	bool init(EffectGameObject*, cocos2d::CCArray*, ColorAction*) = ios 0x418db4;
	void onCopy(cocos2d::CCObject* sender);
	void onCopyOpacity(cocos2d::CCObject* sender);
	void onDefault(cocos2d::CCObject* sender) = ios 0x41b34c;
	void onHSVLegacyMode(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onPlayerColor1(cocos2d::CCObject* sender);
	void onPlayerColor2(cocos2d::CCObject* sender);
	void onSelectSpecialColor(cocos2d::CCObject* sender);
	void onTintGround(cocos2d::CCObject* sender);
	void onToggleHSVMode(cocos2d::CCObject* sender);
	void onToggleTintMode(cocos2d::CCObject* sender) = ios 0x41b708;
	void onUpdateCopyColor(cocos2d::CCObject* sender);
	void onUpdateCustomColor(cocos2d::CCObject* sender);
	TodoReturn selectColor(cocos2d::ccColor3B);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateColorLabels();
	TodoReturn updateColorValue();
	TodoReturn updateCopyColor();
	TodoReturn updateCopyColorTextInputLabel();
	TodoReturn updateCustomColorIdx();
	TodoReturn updateDuration();
	TodoReturn updateDurLabel();
	TodoReturn updateHSVMode();
	TodoReturn updateHSVValue();
	void updateOpacity() = ios 0x41c1c4;
	void updateOpacityLabel() = ios 0x41b268;
	TodoReturn updateTextInputLabel();

	virtual void show() = ios 0x41cd48;
	virtual TodoReturn determineStartValues() = ios 0x41bd34;
	virtual void textChanged(CCTextInputNode*) = ios 0x41ce14;
	virtual void colorValueChanged(cocos2d::ccColor3B) = ios 0x41c344;
	virtual void colorSelectClosed(GJSpecialColorSelect*, int) = ios 0x41d224;

	PAD = android32 0x40, win 0x40;
	ColorAction* m_colorAction;
}

[[link(android)]]
class ColorSetupDelegate {
	virtual void colorSetupClosed(int);
}

[[link(android)]]
class CommentCell : TableViewCell, LikeItemDelegate, FLAlertLayerProtocol {
	// virtual ~CommentCell();
	CommentCell(char const*, float, float);

	TodoReturn incrementDislikes();
	TodoReturn incrementLikes();
	void loadFromComment(GJComment*) = ios 0x106764;
	void onConfirmDelete(cocos2d::CCObject* sender) = ios 0x1110dc;
	TodoReturn onDelete();
	void onGoToLevel(cocos2d::CCObject* sender);
	void onLike(cocos2d::CCObject* sender);
	TodoReturn onUndelete();
	void onUnhide(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	void updateBGColor(int);
	void updateLabelValues();

	virtual bool init() = ios 0x110efc;
	virtual void draw() = ios 0x111198;
	virtual void likedItem(LikeItemType, int, bool) = ios 0x111244;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x1113bc;

	cocos2d::CCSprite* m_iconSprite;
	cocos2d::CCLabelBMFont* m_likeLabel;
	GJComment* m_comment;
	bool m_accountComment;
}

[[link(android)]]
class CommentUploadDelegate {
	virtual void commentUploadFinished(int);
	virtual void commentUploadFailed(int, CommentError);
	virtual void commentDeleteFailed(int, int) {}
}

[[link(android)]]
class CommunityCreditNode : cocos2d::CCNode {
	// virtual ~CommunityCreditNode();

	static CommunityCreditNode* create(int, int, int, gd::string) = ios 0x1a64b4;

	bool init(int, int, int, gd::string);
}

[[link(android)]]
class CommunityCreditsPage : FLAlertLayer {
	// virtual ~CommunityCreditsPage();

	static CommunityCreditsPage* create() = ios 0x1a665c;

	void FLAlert_Clicked(FLAlertLayer*, bool);
	void goToPage(int);
	void onClose(cocos2d::CCObject* sender);
	void onSwitchPage(cocos2d::CCObject* sender);

	virtual bool init() = ios 0x1a6718;
	virtual void registerWithTouchDispatcher() = ios 0x1a8d00;
	virtual void keyBackClicked() = ios 0x1a8c84;
	virtual void show() = ios 0x1a8b10;
}

[[link(android)]]
class ConfigureHSVWidget : cocos2d::CCNode, TextInputDelegate {
	// virtual ~ConfigureHSVWidget();

	static ConfigureHSVWidget* create(cocos2d::ccHSVValue, bool, bool) = ios 0xffb90;

	TodoReturn createTextInputNode(cocos2d::CCPoint, int);
	TodoReturn getHSV(GameObject*, cocos2d::CCArray*, int);
	bool init(cocos2d::ccHSVValue, bool, bool) = ios 0xffcb8;
	TodoReturn onClose();
	void onResetHSV(cocos2d::CCObject* sender);
	void onToggleSConst(cocos2d::CCObject* sender);
	void onToggleVConst(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateLabels() = ios 0x10099c;
	TodoReturn updateSliders() = ios 0x100d30;

	virtual void textInputOpened(CCTextInputNode*) {}
	virtual void textInputClosed(CCTextInputNode*) = ios 0x100df4;
	virtual void textChanged(CCTextInputNode*) = ios 0x100e10;
}

[[link(android)]]
class ConfigureValuePopup : FLAlertLayer, TextInputDelegate {
	// virtual ~ConfigureValuePopup();

	static ConfigureValuePopup* create(ConfigureValuePopupDelegate*, float, float, float, gd::string, gd::string) = ios 0x158814;

	bool init(ConfigureValuePopupDelegate*, float, float, float, gd::string, gd::string) = ios 0x158984;
	void onClose(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateTextInputLabel() = ios 0x1590cc;

	virtual void keyBackClicked() = ios 0x159268;
	virtual void textInputClosed(CCTextInputNode*) = ios 0x159160;
	virtual void textChanged(CCTextInputNode*) = ios 0x15917c;
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

	static CountTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = ios 0x38e634;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x38e7d4;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x38ead4;
}

[[link(android)]]
class CreateGuidelinesLayer : FLAlertLayer, FLAlertLayerProtocol {
	// virtual ~CreateGuidelinesLayer();

	static CreateGuidelinesLayer* create(CustomSongDelegate*, AudioGuidelinesType);

	TodoReturn doClearGuidelines() = ios 0x834d8;
	TodoReturn getMergedRecordString(gd::string, gd::string);
	bool init(CustomSongDelegate*, AudioGuidelinesType) = ios 0x82538;
	void onClearGuidelines(cocos2d::CCObject* sender) = ios 0x83324;
	void onStop(cocos2d::CCObject* sender);
	TodoReturn toggleItems(bool);

	virtual void update(float) = ios 0x83d68;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x83f68;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x8401c;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x840e4;
	virtual void registerWithTouchDispatcher() = ios 0x84100;
	virtual void keyBackClicked() = ios 0x83ee4;
	virtual void keyDown(cocos2d::enumKeyCodes) = ios 0x84138;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x83e10;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x83ea8;
	virtual void keyUp(cocos2d::enumKeyCodes) {}
	virtual TodoReturn playMusic() = ios 0x8369c;
	virtual TodoReturn registerTouch() = ios 0x83f20;
	virtual void onInfo(cocos2d::CCObject* sender) = ios 0x83d78;
	virtual void onRecord(cocos2d::CCObject* sender) = ios 0x8358c;
	virtual TodoReturn recordingDidStop() = ios 0x8372c;
}

[[link(android)]]
class CreateMenuItem : CCMenuItemSpriteExtra {
	// virtual ~CreateMenuItem();

	static CreateMenuItem* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
}

[[link(android)]]
class CreateParticlePopup : FLAlertLayer, TextInputDelegate, ColorSelectDelegate, SliderDelegate {
	// virtual ~CreateParticlePopup();

	static CreateParticlePopup* create(gd::string);
	static CreateParticlePopup* create(ParticleGameObject*, cocos2d::CCArray*, gd::string);
	static CreateParticlePopup* create(ParticleGameObject*, cocos2d::CCArray*);

	TodoReturn centerAlignParticle(cocos2d::CCObject*);
	TodoReturn createParticleSlider(gjParticleValue, int, bool, cocos2d::CCPoint, cocos2d::CCArray*) = ios 0x2d6c24;
	TodoReturn getPage(int);
	TodoReturn getPageButton(int);
	TodoReturn getPageContainer(int);
	TodoReturn getPageInputNodes(int);
	TodoReturn getPageMenu(int);
	TodoReturn getPageSliders(int);
	bool init(ParticleGameObject*, cocos2d::CCArray*, gd::string);
	TodoReturn maxSliderValueForType(gjParticleValue) = ios 0x2d9380;
	TodoReturn minSliderValueForType(gjParticleValue) = ios 0x2d9360;
	void onAnimateActiveOnly(cocos2d::CCObject* sender);
	void onAnimateOnTrigger(cocos2d::CCObject* sender);
	void onCalcEmission(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onCopySettings(cocos2d::CCObject* sender);
	void onDuplicateColor(cocos2d::CCObject* sender);
	void onDurationForever(cocos2d::CCObject* sender);
	void onDynamicColor(cocos2d::CCObject* sender);
	void onDynamicRotation(cocos2d::CCObject* sender);
	void onEmitterMode(cocos2d::CCObject* sender);
	void onEndRGBVarSync(cocos2d::CCObject* sender);
	void onMaxEmission(cocos2d::CCObject* sender);
	void onMode(cocos2d::CCObject* sender);
	void onOrderSensitive(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	void onPasteSettings(cocos2d::CCObject* sender);
	void onPosType(cocos2d::CCObject* sender);
	void onQuickStart(cocos2d::CCObject* sender);
	void onSelectColor(cocos2d::CCObject* sender);
	void onSelectParticleTexture(cocos2d::CCObject* sender);
	void onStartRGBVarSync(cocos2d::CCObject* sender);
	void onToggleBlending(cocos2d::CCObject* sender);
	void onToggleStartRadiusEqualToEnd(cocos2d::CCObject* sender);
	void onToggleStartRotationIsDir(cocos2d::CCObject* sender);
	void onToggleStartSizeEqualToEnd(cocos2d::CCObject* sender);
	void onToggleStartSpinEqualToEnd(cocos2d::CCObject* sender);
	void onUniformColor(cocos2d::CCObject* sender);
	TodoReturn particleValueIsInt(gjParticleValue);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn titleForParticleValue(gjParticleValue) = ios 0x2d7cf4;
	TodoReturn toggleGravityMode(bool);
	TodoReturn updateColorSprite(int);
	TodoReturn updateInputNodeStringForType(gjParticleValue) = ios 0x2d7d20;
	TodoReturn updateParticleValueForType(float, gjParticleValue, cocos2d::CCParticleSystemQuad*);
	TodoReturn updateSliderForType(gjParticleValue) = ios 0x2d7f44;
	TodoReturn valueForParticleValue(gjParticleValue) = ios 0x2d8f78;
	void willClose();

	virtual void update(float) = ios 0x2d8d40;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2d95a8;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2d969c;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2d9a34;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2d9a70;
	virtual void keyBackClicked() = ios 0x2d94d0;
	virtual void sliderBegan(Slider*) = ios 0x2d93a0;
	virtual TodoReturn sliderEnded(Slider*) = ios 0x2d94b8;
	virtual void colorSelectClosed(cocos2d::CCNode*) = ios 0x2d8adc;
	virtual void textInputShouldOffset(CCTextInputNode*, float) = ios 0x2d94dc;
	virtual void textInputReturn(CCTextInputNode*) = ios 0x2d9548;
	virtual void textInputClosed(CCTextInputNode*) = ios 0x2d8e74;
	virtual void textChanged(CCTextInputNode*) = ios 0x2d8e90;
}

[[link(android)]]
class CreatorLayer : cocos2d::CCLayer, cocos2d::CCSceneTransitionDelegate, DialogDelegate {
	// virtual ~CreatorLayer();

	static CreatorLayer* create() = ios 0xb75f0;

	TodoReturn canPlayOnlineLevels();
	TodoReturn checkQuestsStatus();
	void onAdventureMap(cocos2d::CCObject* sender) = ios 0xb8680;
	void onBack(cocos2d::CCObject* sender);
	void onChallenge(cocos2d::CCObject* sender);
	void onDailyLevel(cocos2d::CCObject* sender);
	void onEventLevel(cocos2d::CCObject* sender) = ios 0xb8770;
	void onFameLevels(cocos2d::CCObject* sender);
	void onFeaturedLevels(cocos2d::CCObject* sender);
	void onGauntlets(cocos2d::CCObject* sender);
	void onLeaderboards(cocos2d::CCObject* sender);
	void onMapPacks(cocos2d::CCObject* sender);
	void onMultiplayer(cocos2d::CCObject* sender) = ios 0xb83e0;
	void onMyLevels(cocos2d::CCObject* sender);
	void onOnlineLevels(cocos2d::CCObject* sender);
	void onOnlyFullVersion(cocos2d::CCObject* sender);
	void onPaths(cocos2d::CCObject* sender);
	void onSavedLevels(cocos2d::CCObject* sender) = ios 0xb82e4;
	void onSecretVault(cocos2d::CCObject* sender);
	void onTopLists(cocos2d::CCObject* sender);
	void onTreasureRoom(cocos2d::CCObject* sender) = ios 0xb8d88;
	void onWeeklyLevel(cocos2d::CCObject* sender);
	static cocos2d::CCScene* scene() = ios 0xb7598;

	virtual bool init() = ios 0xb76a0;
	virtual void keyBackClicked() = ios 0xb92b0;
	virtual void sceneWillResume() = ios 0xb9270;
	virtual void dialogClosed(DialogLayer*) = ios 0xb91e0;
}

[[link(android)]]
class CurrencyRewardDelegate {
	virtual void currencyWillExit(CurrencyRewardLayer*) {}
}

[[link(android)]]
class CurrencyRewardLayer : cocos2d::CCLayer {
	// virtual ~CurrencyRewardLayer();

	static CurrencyRewardLayer* create(int, int, int, int, CurrencySpriteType, int, CurrencySpriteType, int, cocos2d::CCPoint, CurrencyRewardType, float, float) = ios 0x324b44;

	TodoReturn createObjects(CurrencySpriteType, int, cocos2d::CCPoint, float);
	TodoReturn createObjectsFull(CurrencySpriteType, int, cocos2d::CCSprite*, cocos2d::CCPoint, float) = ios 0x326910;
	TodoReturn createUnlockObject(cocos2d::CCSprite*, cocos2d::CCPoint, float) = ios 0x3268b4;
	TodoReturn incrementCount(int);
	TodoReturn incrementDiamondsCount(int);
	TodoReturn incrementMoonsCount(int);
	TodoReturn incrementSpecialCount1(int);
	TodoReturn incrementSpecialCount2(int);
	TodoReturn incrementStarsCount(int);
	bool init(int, int, int, int, CurrencySpriteType, int, CurrencySpriteType, int, cocos2d::CCPoint, CurrencyRewardType, float, float) = ios 0x328bb4;
	TodoReturn pulseSprite(cocos2d::CCSprite*);

	virtual void update(float) = ios 0x327428;
}

[[link(android)]]
class CurrencySprite : CCSpritePlus {
	// virtual ~CurrencySprite();
	// CurrencySprite();

	static CurrencySprite* create(CurrencySpriteType, bool);

	TodoReturn createWithSprite(cocos2d::CCSprite*);
	bool init(CurrencySpriteType, bool) = ios 0x3285dc;
	TodoReturn initWithSprite(cocos2d::CCSprite*) = ios 0x3289dc;
	TodoReturn rewardToSpriteType(int);
	TodoReturn spriteTypeToStat(CurrencySpriteType);
}

[[link(android)]]
class CustomizeObjectLayer : FLAlertLayer, TextInputDelegate, HSVWidgetDelegate, ColorSelectDelegate, ColorSetupDelegate {
	// virtual ~CustomizeObjectLayer();

	static CustomizeObjectLayer* create(GameObject*, cocos2d::CCArray*) = ios 0x567f4;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn determineStartValues() = ios 0x5875c;
	int getActiveMode(bool) = ios 0x59394;
	TodoReturn getButtonByTag(int) = ios 0x59a50;
	TodoReturn getHSV();
	void highlightSelected(ButtonSprite*) = ios 0x59934;
	bool init(GameObject*, cocos2d::CCArray*) = ios 0x56878;
	void onBreakApart(cocos2d::CCObject* sender);
	void onBrowse(cocos2d::CCObject* sender);
	void onClear(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onCopy(cocos2d::CCObject* sender);
	void onEditColor(cocos2d::CCObject* sender);
	void onHSV(cocos2d::CCObject* sender) = ios 0x58a4c;
	void onLiveEdit(cocos2d::CCObject* sender);
	void onNextColorChannel(cocos2d::CCObject* sender) = ios 0x59238;
	void onPaste(cocos2d::CCObject* sender);
	void onSelectColor(cocos2d::CCObject* sender);
	void onSelectMode(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onUpdateCustomColor(cocos2d::CCObject* sender);
	TodoReturn recreateLayer();
	void sliderChanged(cocos2d::CCObject*);
	void toggleVisible() = ios 0x59b94;
	void updateChannelLabel(int) = ios 0x595a4;
	void updateColorSprite() = ios 0x594d4;
	void updateCurrentSelection();
	void updateCustomColorLabels() = ios 0x58e70;
	void updateHSVButtons();
	void updateKerningLabel() = ios 0x58fe4;
	void updateSelected(int) = ios 0x59810;

	virtual void keyBackClicked() = ios 0x59fd8;
	virtual void textInputOpened(CCTextInputNode*) = ios 0x59cc8;
	virtual void textInputClosed(CCTextInputNode*) = ios 0x59e48;
	virtual void textChanged(CCTextInputNode*) = ios 0x59e64;
	virtual void hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue) = ios 0x59adc;
	virtual void colorSelectClosed(cocos2d::CCNode*) = ios 0x59ad0;
	virtual void colorSetupClosed(int) = ios 0x5979c;

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

	static CustomizeObjectSettingsPopup* create(GameObject*, cocos2d::CCArray*, CustomizeObjectLayer*) = ios 0x59614;

	bool init(GameObject*, cocos2d::CCArray*, CustomizeObjectLayer*) = ios 0x59fe4;

	virtual void onClose(cocos2d::CCObject* sender) = ios 0x5a3b0;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = ios 0x5a330;
}

[[link(android)]]
class CustomListView : BoomListView {
	inline CustomListView() {}
	~CustomListView() {}

	static CustomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = ios 0x1011fc;

	static CustomListView* create(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
		return CustomListView::create(entries, nullptr, width, height, 0, type, 0.0f);
	}

	TodoReturn getCellHeight(BoomListType) = ios 0x101a4c;
	TodoReturn reloadAll();

	virtual void setupList(float) = ios 0x10bad0;
	virtual TableViewCell* getListCell(char const*) = ios 0x10130c;
	virtual void loadCell(TableViewCell*, int) = ios 0x101a74;

	int m_unknown;
}

[[link(android)]]
class CustomMusicCell : CustomSongCell {
	// virtual ~CustomMusicCell();
	CustomMusicCell(char const*, float, float);

	void loadFromObject(SongInfoObject*);
	void updateBGColor(int);
}

[[link(android)]]
class CustomSFXCell : TableViewCell, CustomSFXDelegate {
	// virtual ~CustomSFXCell();
	CustomSFXCell(char const*, float, float);

	void loadFromObject(SFXInfoObject*);
	TodoReturn shouldReload();
	void updateBGColor(int);

	virtual bool init() = ios 0x11098c;
	virtual void draw() = ios 0x110a30;
	virtual void sfxObjectSelected(SFXInfoObject*) = ios 0x11099c;
	virtual TodoReturn getActiveSFXID() = ios 0x1109f8;
}

[[link(android)]]
class CustomSFXDelegate {
	virtual void sfxObjectSelected(SFXInfoObject*);
	virtual TodoReturn getActiveSFXID();
	virtual TodoReturn overridePlaySFX(SFXInfoObject*);
}

[[link(android)]]
class CustomSFXWidget : cocos2d::CCNode, MusicDownloadDelegate, FLAlertLayerProtocol {
	// virtual ~CustomSFXWidget();

	static CustomSFXWidget* create(SFXInfoObject*, CustomSFXDelegate*, bool, bool, bool, bool, bool) = ios 0x2f6830;

	TodoReturn deleteSFX() = ios 0x2f8094;
	void downloadFailed();
	TodoReturn hideLoadingArt() = ios 0x2f79a8;
	bool init(SFXInfoObject*, CustomSFXDelegate*, bool, bool, bool, bool, bool) = ios 0x2f6928;
	void onCancelDownload(cocos2d::CCObject* sender);
	void onDelete(cocos2d::CCObject* sender);
	void onDownload(cocos2d::CCObject* sender);
	void onPlayback(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);
	void showLoadingArt();
	TodoReturn startDownload();
	TodoReturn startMonitorDownload();
	TodoReturn updateDownloadProgress(float);
	TodoReturn updateError(GJSongError);
	TodoReturn updateLengthMod(float);
	TodoReturn updatePlaybackBtn();
	TodoReturn updateProgressBar(int) = ios 0x2f792c;
	TodoReturn updateSFXInfo() = ios 0x2f7a8c;
	TodoReturn updateSFXObject(SFXInfoObject*);
	TodoReturn verifySFXID(int);

	virtual void downloadSFXFinished(int) = ios 0x2f83e0;
	virtual void downloadSFXFailed(int, GJSongError) = ios 0x2f8438;
	virtual void songStateChanged() = ios 0x2f83cc;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x2f8578;
}

[[link(android)]]
class CustomSongCell : TableViewCell, CustomSongDelegate {
	// virtual ~CustomSongCell();
	CustomSongCell(char const*, float, float);

	void loadFromObject(SongInfoObject*) = ios 0x102dd8;
	void onDelete(cocos2d::CCObject* sender);
	TodoReturn shouldReload();
	void updateBGColor(int);

	virtual bool init() = ios 0x110720;
	virtual void draw() = ios 0x1108a8;
	virtual TodoReturn songIDChanged(int) = ios 0x1107e4;
	virtual TodoReturn getActiveSongID() = ios 0x110840;
	virtual TodoReturn getSongFileName() = ios 0x110878;
	virtual TodoReturn getLevelSettings() = ios 0x110898;

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

	static CustomSongLayer* create(CustomSongDelegate*);

	bool init(CustomSongDelegate*) = ios 0x14c748;
	void onClose(cocos2d::CCObject* sender);
	void onCreateLines(cocos2d::CCObject* sender);
	void onMusicBrowser(cocos2d::CCObject* sender);
	void onNewgroundsBrowser(cocos2d::CCObject* sender);
	void onOptions(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender) = ios 0x14d338;
	void onSongBrowser(cocos2d::CCObject* sender);
	void showNewgroundsMessage();

	virtual void keyBackClicked() = ios 0x14d84c;
	virtual void show() = ios 0x14d858;
	virtual void textChanged(CCTextInputNode*) = ios 0x14d5d8;
	virtual void textInputOpened(CCTextInputNode*) = ios 0x14d5a0;
	virtual void textInputClosed(CCTextInputNode*) = ios 0x14d568;
	virtual void textInputShouldOffset(CCTextInputNode*, float) = ios 0x14d5f8;
	virtual void textInputReturn(CCTextInputNode*) = ios 0x14d664;
	virtual void dropDownLayerWillClose(GJDropDownLayer*) = ios 0x14d774;
	virtual void musicBrowserClosed(MusicBrowser*) = ios 0x14d7e0;
}

[[link(android)]]
class CustomSongLayerDelegate {
	virtual void customSongLayerClosed() {}
}

[[link(android), depends(GJAssetDownloadAction)]]
class CustomSongWidget : cocos2d::CCNode, MusicDownloadDelegate, FLAlertLayerProtocol {
	// virtual ~CustomSongWidget();

	static CustomSongWidget* create(SongInfoObject* songInfo, CustomSongDelegate* songDelegate, bool showSongSelect, bool showPlayMusic, bool showDownload, bool isRobtopSong, bool unkBool, bool isMusicLibrary) = ios 0xfae58;

	void deleteSong() = ios 0xfd778;
	void downloadAssetFailed(int, GJAssetType, GJSongError);
	void downloadAssetFinished(int, GJAssetType);
	void downloadFailed();
	TodoReturn getSongInfoIfUnloaded() = ios 0xfdaa8;
	bool init(SongInfoObject* songInfo, CustomSongDelegate* songDelegate, bool showSongSelect, bool showPlayMusic, bool showDownload, bool isRobtopSong, bool unkBool, bool isMusicLibrary) = ios 0xfaf2c;
	void onCancelDownload(cocos2d::CCObject* sender);
	void onDelete(cocos2d::CCObject* sender) = ios 0xfc1d4;
	void onDownload(cocos2d::CCObject* sender);
	void onGetSongInfo(cocos2d::CCObject* sender) = ios 0xfc2ec;
	void onMore(cocos2d::CCObject* sender) = ios 0xfc54c;
	void onPlayback(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);
	TodoReturn processNextMultiAsset() = ios 0xfef44;
	void showError(bool);
	void startDownload();
	TodoReturn startMonitorDownload();
	TodoReturn startMultiAssetDownload() = ios 0xfed44;
	TodoReturn toggleUpdateButton(bool);
	TodoReturn updateDownloadProgress(float);
	TodoReturn updateError(GJSongError) = ios 0xfeb70;
	TodoReturn updateLengthMod(float);
	void updateMultiAssetInfo(bool);
	TodoReturn updatePlaybackBtn();
	TodoReturn updateProgressBar(int);
	void updateSongInfo() = ios 0xfcb2c;
	void updateSongObject(SongInfoObject*) = ios 0xfcac0;
	void updateWithMultiAssets(gd::string, gd::string, int);
	TodoReturn verifySongID(int);

	virtual void loadSongInfoFinished(SongInfoObject*) = ios 0xfea34;
	virtual void loadSongInfoFailed(int, GJSongError) = ios 0xfeb00;
	virtual void downloadSongFinished(int) = ios 0xfec80;
	virtual void downloadSongFailed(int, GJSongError) = ios 0xfee30;
	virtual void downloadSFXFinished(int) = ios 0xfef1c;
	virtual void downloadSFXFailed(int, GJSongError) = ios 0xfef30;
	virtual void musicActionFinished(GJMusicAction) = ios 0xff100;
	virtual void musicActionFailed(GJMusicAction) = ios 0xff140;
	virtual void songStateChanged() = ios 0xfdeec;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0xff194;

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

	static DailyLevelNode* create(GJGameLevel*, DailyLevelPage*, bool) = ios 0x1bfa6c;

	bool init(GJGameLevel*, DailyLevelPage*, bool) = ios 0x1c0044;
	void onClaimReward(cocos2d::CCObject* sender);
	void onSkipLevel(cocos2d::CCObject* sender) = ios 0x1c0bd4;
	void showSkipButton();
	void updateTimeLabel(gd::string);

	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x1c0d04;

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

	static DailyLevelPage* create(GJTimedLevelType) = ios 0x1be220;

	TodoReturn claimLevelReward(DailyLevelNode*, GJGameLevel*, cocos2d::CCPoint);
	TodoReturn createDailyNode(GJGameLevel*, bool, float, bool);
	TodoReturn createNodeIfLoaded();
	TodoReturn downloadAndCreateNode();
	TodoReturn exitDailyNode(DailyLevelNode*, float);
	TodoReturn getDailyTime() = ios 0x1bfaf8;
	TodoReturn getDailyTimeString(int) = ios 0x1bee74;
	bool init(GJTimedLevelType) = ios 0x1be294;
	void onClose(cocos2d::CCObject* sender);
	void onTheSafe(cocos2d::CCObject* sender);
	TodoReturn refreshDailyPage();
	TodoReturn skipDailyLevel(DailyLevelNode*, GJGameLevel*);
	TodoReturn tryGetDailyStatus();
	callback void updateTimers(float) = ios 0x1bf0f8;

	virtual void registerWithTouchDispatcher() = ios 0x1bfcf8;
	virtual void keyBackClicked() = ios 0x1bfcec;
	virtual void show() = ios 0x1bfb70;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) {}
	virtual void dailyStatusFinished(GJTimedLevelType) = ios 0x1bf408;
	virtual void dailyStatusFailed(GJTimedLevelType, GJErrorCode) = ios 0x1bf74c;
	virtual void levelDownloadFinished(GJGameLevel*) = ios 0x1bf920;
	virtual void levelDownloadFailed(int) = ios 0x1bf998;

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

	static DashRingObject* create(char const*);

	bool init(char const*);

	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x380de4;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x380f28;
}

[[link(android)]]
class DemonFilterDelegate {
	virtual void demonFilterSelectClosed(int);
}

[[link(android)]]
class DemonFilterSelectLayer : FLAlertLayer {
	// virtual ~DemonFilterSelectLayer();

	static DemonFilterSelectLayer* create();

	void onClose(cocos2d::CCObject* sender);
	TodoReturn selectRating(cocos2d::CCObject*);

	virtual bool init() = ios 0x602a8;
	virtual void keyBackClicked() = ios 0x607fc;
}

// 2.205
[[link(android)]]
class DemonInfoPopup {
	// ~DemonInfoPopup();

	static DemonInfoPopup* create(int, int, int, int, int, int, int, int, int, int, int, int);

	TodoReturn createFromString(gd::string);
	bool init(int, int, int, int, int, int, int, int, int, int, int, int) = ios 0x1a31a0;
	TodoReturn keyBackClicked() = ios 0x1a3a94;
	void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class DialogDelegate {
	virtual void dialogClosed(DialogLayer*) {}
}

[[link(android)]]
class DialogLayer : cocos2d::CCLayerColor, TextAreaDelegate {
	// virtual ~DialogLayer();

	static DialogLayer* create(DialogObject*, int) = ios 0x8c884;

	TodoReturn addToMainScene() = ios 0x8d364;
	TodoReturn animateIn(DialogAnimationType) = ios 0x8d5bc;
	TodoReturn animateInDialog();
	TodoReturn animateInRandomSide() = ios 0x8d564;
	static DialogLayer* createDialogLayer(DialogObject*, cocos2d::CCArray*, int) = ios 0x8c890;
	TodoReturn createWithObjects(cocos2d::CCArray*, int) = ios 0x8c91c;
	TodoReturn displayDialogObject(DialogObject*) = ios 0x8cdb8;
	TodoReturn displayNextObject() = ios 0x8cd58;
	TodoReturn finishCurrentAnimation();
	TodoReturn handleDialogTap();
	bool init(DialogObject*, cocos2d::CCArray*, int) = ios 0x8c92c;
	TodoReturn onClose();
	TodoReturn updateChatPlacement(DialogChatPlacement) = ios 0x8d0f8;
	TodoReturn updateNavButtonFrame() = ios 0x8d098;

	virtual void onEnter();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x8d3c8;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x8d428;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x8d468;
	virtual void registerWithTouchDispatcher() = ios 0x8d4ac;
	virtual void keyBackClicked() = ios 0x8d3bc;
	virtual void keyDown(cocos2d::enumKeyCodes) = ios 0x8d7c4;
	virtual TodoReturn fadeInTextFinished(TextArea*) = ios 0x8d4e8;
}

[[link(android)]]
class DialogObject : cocos2d::CCObject {
	// virtual ~DialogObject();

	static DialogObject* create(gd::string, gd::string, int, float, bool, cocos2d::ccColor3B) = ios 0x8c670;

	bool init(gd::string, gd::string, int, float, bool, cocos2d::ccColor3B);
}

[[link(android)]]
class DownloadMessageDelegate {
	virtual TodoReturn downloadMessageFinished(GJUserMessage*);
	virtual TodoReturn downloadMessageFailed(int);
}

[[link(android)]]
class DrawGridLayer : cocos2d::CCLayer {
	// virtual ~DrawGridLayer();

	static DrawGridLayer* create(cocos2d::CCNode*, LevelEditorLayer*) = ios 0x35b740;

	void addAudioLineObject(AudioLineGuideGameObject*);
	TodoReturn addToEffects(EffectGameObject*);
	TodoReturn addToGuides(GameObject*);
	TodoReturn addToSpeedObjects(EffectGameObject*);
	TodoReturn getPortalMinMax(GameObject*);
	bool init(cocos2d::CCNode*, LevelEditorLayer*);
	void loadTimeMarkers(gd::string);
	float posForTime(float);
	void postUpdate();
	TodoReturn removeAudioLineObject(AudioLineGuideGameObject*);
	TodoReturn removeFromEffects(EffectGameObject*);
	TodoReturn removeFromGuides(GameObject*);
	TodoReturn removeFromSpeedObjects(EffectGameObject*);
	TodoReturn sortSpeedObjects();
	float timeForPos(cocos2d::CCPoint, int, int, bool, bool, bool, int);
	TodoReturn updateMusicGuideTime(float);
	TodoReturn updateTimeMarkers();

	virtual void update(float) = ios 0x3697a0;
	virtual void draw() = ios 0x3698b0;
}

[[link(android)]]
class DungeonBarsSprite : cocos2d::CCNode {
	// virtual ~DungeonBarsSprite();

	static DungeonBarsSprite* create() = ios 0x3158b4;

	TodoReturn animateOutBars();

	virtual bool init() = ios 0x3181e8;
	virtual void visit() = ios 0x318268;
}

[[link(android)]]
class DynamicBitset {
	TodoReturn resize(unsigned int);
}

[[link(android)]]
class DynamicScrollDelegate {
	virtual void updatePageWithObject(cocos2d::CCObject* p0, cocos2d::CCObject* p1) {}
}

[[link(android)]]
class EditButtonBar : cocos2d::CCNode {
	// virtual ~EditButtonBar();

	static EditButtonBar* create(cocos2d::CCArray* objects, cocos2d::CCPoint size, int unk, bool unkBool, int columns, int rows) = ios 0x41d7ac;

	TodoReturn getPage();
	void goToPage(int);
	bool init(cocos2d::CCArray* objects, cocos2d::CCPoint size, int unk, bool unkBool, int columns, int rows);
	void loadFromItems(cocos2d::CCArray*, int, int, bool) = ios 0x41d920;
	void onLeft(cocos2d::CCObject* sender);
	void onRight(cocos2d::CCObject* sender);
	void reloadItems(int rowCount, int columnCount) {
		if (m_buttonArray)
			this->loadFromItems(m_buttonArray, rowCount, columnCount, m_unknown);
	}

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

	static EditGameObjectPopup* create(EffectGameObject*, cocos2d::CCArray*, bool);

	bool init(EffectGameObject*, cocos2d::CCArray*, bool) = ios 0x2e50d4;
}

[[link(android)]]
class EditLevelLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, SetIDPopupDelegate {
	// virtual ~EditLevelLayer();

	static EditLevelLayer* create(GJGameLevel*) = ios 0xea604;

	TodoReturn closeTextInputs() = ios 0xecff0;
	void confirmClone(cocos2d::CCObject*) = ios 0xeca5c;
	void confirmDelete(cocos2d::CCObject*) = ios 0xec8f4;
	void confirmMoveToTop(cocos2d::CCObject*) = ios 0xecb10;
	bool init(GJGameLevel*) = ios 0xea6dc;
	void onBack(cocos2d::CCObject* sender);
	void onClone();
	void onDelete();
	void onEdit(cocos2d::CCObject* sender);
	void onGuidelines(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender) = ios 0xec9a8;
	void onLevelInfo(cocos2d::CCObject* sender) = ios 0xecda0;
	void onLevelLeaderboard(cocos2d::CCObject* sender) = ios 0xecc5c;
	void onLevelOptions(cocos2d::CCObject* sender);
	void onMoveToTop();
	void onPlay(cocos2d::CCObject* sender);
	void onSetFolder(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender) = ios 0xebd14;
	void onTest(cocos2d::CCObject* sender);
	void onUpdateDescription(cocos2d::CCObject* sender);
	TodoReturn playStep2();
	TodoReturn playStep3();
	static cocos2d::CCScene* scene(GJGameLevel*);
	void setupLevelInfo() = ios 0xec008;
	TodoReturn updateDescText(char const*) = ios 0xb1484;
	TodoReturn verifyLevelName();

	virtual void keyBackClicked() = ios 0xedbb8;
	virtual void keyDown(cocos2d::enumKeyCodes) = ios 0xedbc4;
	virtual void setIDPopupClosed(SetIDPopup*, int) = ios 0xedb30;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0xed7d8;
	virtual void textInputOpened(CCTextInputNode*) = ios 0xed27c;
	virtual void textInputClosed(CCTextInputNode*) = ios 0xed04c;
	virtual void textChanged(CCTextInputNode*) = ios 0xed38c;
	virtual void uploadActionFinished(int, int) = ios 0xedc34;
	virtual void uploadActionFailed(int, int) = ios 0xedd28;
	virtual void onClosePopup(UploadActionPopup*) = ios 0xedbe4;

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

	static EditorOptionsLayer* create();

	void onButtonRows(cocos2d::CCObject* sender);
	void onButtonsPerRow(cocos2d::CCObject* sender);

	virtual bool init() = ios 0x2dc6e8;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x2dd0e0;
	virtual void setupOptions() = ios 0x2dc704;
}

[[link(android)]]
class EditorPauseLayer : CCBlockLayer, FLAlertLayerProtocol {
	// virtual ~EditorPauseLayer();

	static EditorPauseLayer* create(LevelEditorLayer*) = ios 0x399990;

	TodoReturn doResetUnused();
	bool init(LevelEditorLayer*) = ios 0x399a5c;
	void onAlignX(cocos2d::CCObject* sender);
	void onAlignY(cocos2d::CCObject* sender);
	void onBuildHelper(cocos2d::CCObject* sender);
	void onCopyWColor(cocos2d::CCObject* sender);
	void onCreateExtras(cocos2d::CCObject* sender);
	void onCreateLoop(cocos2d::CCObject* sender);
	void onCreateTemplate(cocos2d::CCObject* sender);
	void onExitEditor(cocos2d::CCObject* sender);
	void onExitNoSave(cocos2d::CCObject* sender) = ios 0x39ba84;
	void onHelp(cocos2d::CCObject* sender);
	void onKeybindings(cocos2d::CCObject* sender);
	void onNewGroupX(cocos2d::CCObject* sender);
	void onNewGroupY(cocos2d::CCObject* sender);
	void onOptions(cocos2d::CCObject* sender);
	void onPasteWColor(cocos2d::CCObject* sender);
	void onReGroup(cocos2d::CCObject* sender);
	void onResetUnusedColors(cocos2d::CCObject* sender) = ios 0x39bcd0;
	void onResume(cocos2d::CCObject* sender) = ios 0x39b878;
	void onSave(cocos2d::CCObject* sender);
	void onSaveAndExit(cocos2d::CCObject* sender) = ios 0x39b974;
	void onSaveAndPlay(cocos2d::CCObject* sender) = ios 0x39b8e4;
	void onSelectAll(cocos2d::CCObject* sender);
	void onSelectAllLeft(cocos2d::CCObject* sender);
	void onSelectAllRight(cocos2d::CCObject* sender);
	void onSong(cocos2d::CCObject* sender);
	void onUnlockAllLayers(cocos2d::CCObject* sender);
	TodoReturn playStep2();
	TodoReturn playStep3();
	void saveLevel() = ios 0x39c094;
	TodoReturn toggleDebugDraw(cocos2d::CCObject*);
	TodoReturn toggleEditorBackground(cocos2d::CCObject*);
	TodoReturn toggleEditorColorMode(cocos2d::CCObject*) = ios 0x39c010;
	TodoReturn toggleEditorGrid(cocos2d::CCObject*) = ios 0x39befc;
	TodoReturn toggleEditorGround(cocos2d::CCObject*) = ios 0x39bf4c;
	TodoReturn toggleEffectDuration(cocos2d::CCObject*);
	TodoReturn toggleEffectLines(cocos2d::CCObject*);
	TodoReturn toggleFollowPlayer(cocos2d::CCObject*);
	TodoReturn toggleGridOnTop(cocos2d::CCObject*);
	TodoReturn toggleHideInvisible(cocos2d::CCObject*);
	TodoReturn toggleIgnoreDamage(cocos2d::CCObject*);
	TodoReturn togglePlaytestMusic(cocos2d::CCObject*);
	TodoReturn togglePreviewAnim(cocos2d::CCObject*) = ios 0x39bfe0;
	TodoReturn togglePreviewParticles(cocos2d::CCObject*) = ios 0x39bfb0;
	TodoReturn togglePreviewShaders(cocos2d::CCObject*) = ios 0x39bf94;
	TodoReturn toggleRecordOrder(cocos2d::CCObject*);
	TodoReturn toggleSelectFilter(cocos2d::CCObject*);
	TodoReturn toggleShowObjectInfo(cocos2d::CCObject*) = ios 0x39bf18;
	TodoReturn uncheckAllPortals(cocos2d::CCObject*);
	TodoReturn updateSongButton() = ios 0x39bb8c;

	virtual void keyBackClicked() = ios 0x39c6a8;
	virtual void keyDown(cocos2d::enumKeyCodes) = ios 0x39c6b4;
	virtual void customSetup() = ios 0x399fe4;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x39c5e4;

	bool m_saved;
    CCMenuItemSpriteExtra* m_guidelinesOffButton;
    CCMenuItemSpriteExtra* m_guidelinesOnButton;
    LevelEditorLayer* m_editorLayer;
}

[[link(android)]]
class EditorUI : cocos2d::CCLayer, FLAlertLayerProtocol, ColorSelectDelegate, GJRotationControlDelegate, GJScaleControlDelegate, GJTransformControlDelegate, MusicDownloadDelegate, SetIDPopupDelegate {
	// virtual ~EditorUI();

	static EditorUI* create(LevelEditorLayer*);

	TodoReturn activateRotationControl(cocos2d::CCObject*) = ios 0x3eab54;
	TodoReturn activateScaleControl(cocos2d::CCObject*) = ios 0x3eb89c;
	TodoReturn activateTransformControl(cocos2d::CCObject*);
	TodoReturn addObjectsToSmartTemplate(GJSmartTemplate*, cocos2d::CCArray*);
	TodoReturn addSnapPosition(cocos2d::CCPoint);
	TodoReturn alignObjects(cocos2d::CCArray*, bool) = ios 0x3f3e14;
	TodoReturn applyOffset(GameObject*);
	TodoReturn applySpecialOffset(cocos2d::CCPoint, GameObject*, cocos2d::CCPoint) = ios 0x3f43e4;
	TodoReturn arrayContainsClass(cocos2d::CCArray*, int);
	TodoReturn assignNewGroups(bool);
	TodoReturn canAllowMultiActivate(GameObject*, cocos2d::CCArray*);
	TodoReturn canSelectObject(GameObject*);
	TodoReturn centerCameraOnObject(GameObject*);
	TodoReturn changeSelectedObjects(cocos2d::CCArray*, bool);
	TodoReturn checkDiffAfterTransformAnchor(cocos2d::CCPoint, cocos2d::CCArray*) = ios 0x3ecf7c;
	TodoReturn checkLiveColorSelect();
	TodoReturn clickOnPosition(cocos2d::CCPoint) = ios 0x3e2fa4;
	TodoReturn closeLiveColorSelect();
	TodoReturn closeLiveHSVSelect();
	void colorSelectClosed(cocos2d::ccColor3B);
	void constrainGameLayerPosition();
	void constrainGameLayerPosition(float, float);
	TodoReturn convertKeyBasedOnNeighbors(int, int, cocos2d::CCPoint, cocos2d::CCArray*) = ios 0x16b6f4;
	TodoReturn convertToBaseKey(int);
	TodoReturn copyObjects(cocos2d::CCArray*, bool, bool) = ios 0x3e4f8c;
	TodoReturn copyObjectsDetailed(cocos2d::CCArray*);
	cocos2d::CCArray* createCustomItems();
	TodoReturn createEdgeForObject(GameObject*, int);
	TodoReturn createExtraObject(int, cocos2d::CCPoint, GameObject*, cocos2d::CCArray*, int, int);
	TodoReturn createExtras(cocos2d::CCArray*);
	TodoReturn createExtrasForObject(int, GameObject*, cocos2d::CCArray*);
	TodoReturn createGlow();
	void createLoop();
	TodoReturn createMoveMenu();
	TodoReturn createNewKeyframeAnim();
	TodoReturn createObject(int, cocos2d::CCPoint);
	TodoReturn createOutlines(cocos2d::CCArray*);
	TodoReturn createPrefab(GJSmartTemplate*, gd::string, int);
	TodoReturn createRockBases(cocos2d::CCArray*);
	TodoReturn createRockEdges(cocos2d::CCArray*);
	TodoReturn createSmartObjectsFromTemplate(GJSmartTemplate*, cocos2d::CCArray*, bool, bool, bool, bool);
	TodoReturn createSmartObjectsFromType(int, cocos2d::CCArray*, bool, bool);
	UndoObject* createUndoObject(UndoCommand, bool) = ios 0x3ea79c;
	TodoReturn createUndoSelectObject(bool) = ios 0x3e3698;
	TodoReturn deactivateRotationControl() = ios 0x3c39f4;
	TodoReturn deactivateScaleControl() = ios 0x3c3ac4;
	TodoReturn deactivateTransformControl() = ios 0x3c3bd8;
	void deleteObject(GameObject*, bool);
	TodoReturn deleteSmartBlocksFromObjects(cocos2d::CCArray*);
	TodoReturn deleteTypeFromObjects(int, cocos2d::CCArray*);
	void deselectAll() = ios 0x3e64ec;
	void deselectObject();
	void deselectObject(GameObject*);
	void deselectObjectsColor();
	TodoReturn deselectTargetPortals();
	TodoReturn disableButton(CreateMenuItem*);
	TodoReturn doCopyObjects(bool) = ios 0x3eb264;
	TodoReturn doPasteInPlace(bool);
	TodoReturn doPasteObjects(bool) = ios 0x3eb35c;
	TodoReturn dynamicGroupUpdate(bool);
	TodoReturn edgeForObject(int, int);
	TodoReturn editButton2Usable();
	TodoReturn editButtonUsable() = ios 0x3f1068;
	TodoReturn editColor();
	TodoReturn editColorButtonUsable();
	TodoReturn editGroup(cocos2d::CCObject*);
	TodoReturn editHSV();
	TodoReturn editObject(cocos2d::CCObject*) = ios 0x3e12c4;
	TodoReturn editObject2(cocos2d::CCObject*);
	TodoReturn editObject3(cocos2d::CCObject*);
	TodoReturn editObjectSpecial(int);
	TodoReturn editorLayerForArray(cocos2d::CCArray*, bool) = ios 0x3e2f00;
	TodoReturn enableButton(CreateMenuItem*);
	TodoReturn findAndSelectObject(int, bool);
	TodoReturn findSnapObject(cocos2d::CCArray*, float);
	TodoReturn findSnapObject(cocos2d::CCPoint, float);
	TodoReturn findTriggerTest();
	TodoReturn flipObjectsX(cocos2d::CCArray*);
	TodoReturn flipObjectsY(cocos2d::CCArray*);
	TodoReturn getButton(char const*, int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);
	CreateMenuItem* getCreateBtn(int id, int bg);
	TodoReturn getCreateMenuItemButton(cocos2d::CCSprite*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	TodoReturn getCycledObject(cocos2d::CCArray*, bool);
	TodoReturn getEditColorTargets(ColorAction*&, ColorAction*&, EffectGameObject*&);
	TodoReturn getGridSnappedPos(cocos2d::CCPoint) = ios 0x3e81ec;
	TodoReturn getGroupCenter(cocos2d::CCArray*, bool) = ios 0x3e9760;
	TodoReturn getGroupInfo(GameObject*, cocos2d::CCArray*, int&, int&, int&) = ios 0x3f14c4;
	TodoReturn getLimitedPosition(cocos2d::CCPoint) = ios 0x3f2858;
	TodoReturn getModeBtn(char const*, int);
	TodoReturn getNeighbor(int, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*);
	TodoReturn getRandomStartKey(int);
	TodoReturn getRelativeOffset(GameObject*) = ios 0x3e8d50;
	cocos2d::CCArray* getSelectedObjects() = ios 0x3ea700;
	TodoReturn getSimpleButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);
	TodoReturn getSmartNeighbor(SmartGameObject*, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*);
	TodoReturn getSmartObjectKey(int, GJSmartDirection);
	TodoReturn getSnapAngle(GameObject*, cocos2d::CCArray*);
	CCMenuItemSpriteExtra* getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	CCMenuItemSpriteExtra* getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);
	CCMenuItemSpriteExtra* getSpriteButton(cocos2d::CCSprite*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	TodoReturn getTouchPoint(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3f4b34;
	TodoReturn getTransformState();
	TodoReturn getXMin(int);
	bool init(LevelEditorLayer* editorLayer) = ios 0x3c1998;
	bool isLiveColorSelectTrigger(GameObject*);
	bool isSpecialSnapObject(int);
	TodoReturn liveEditColorUsable();
	TodoReturn menuItemFromObjectString(gd::string, int);
	cocos2d::CCPoint moveForCommand(EditCommand command);
	void moveGamelayer(cocos2d::CCPoint) = ios 0x3e3ffc;
	void moveObject(GameObject*, cocos2d::CCPoint) = ios 0x3eb704;
	void moveObjectCall(cocos2d::CCObject*);
	void moveObjectCall(EditCommand);
	TodoReturn offsetForKey(int);
	TodoReturn onAssignNewGroupID();
	void onColorFilter(cocos2d::CCObject* sender);
	void onCopy(cocos2d::CCObject* sender) = ios 0x3e1240;
	void onCopyState(cocos2d::CCObject* sender);
	bool onCreate() = ios 0x3e3418;
	void onCreateButton(cocos2d::CCObject* sender);
	TodoReturn onCreateObject(int);
	void onDelete(cocos2d::CCObject* sender);
	void onDeleteAll(cocos2d::CCObject* sender);
	void onDeleteCustomItem(cocos2d::CCObject* sender);
	void onDeleteInfo(cocos2d::CCObject* sender) = ios 0x3e5a58;
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onDeleteSelectedType(cocos2d::CCObject* sender);
	void onDeleteStartPos(cocos2d::CCObject* sender);
	void onDeselectAll(cocos2d::CCObject* sender);
	void onDuplicate(cocos2d::CCObject* sender);
	void onEditColor(cocos2d::CCObject* sender);
	void onFindObject(cocos2d::CCObject* sender);
	void onGoToBaseLayer(cocos2d::CCObject* sender);
	void onGoToLayer(cocos2d::CCObject* sender);
	void onGroupDown(cocos2d::CCObject* sender);
	void onGroupIDFilter(cocos2d::CCObject* sender) = ios 0x3e5af0;
	void onGroupSticky(cocos2d::CCObject* sender);
	void onGroupUp(cocos2d::CCObject* sender);
	void onLockLayer(cocos2d::CCObject* sender);
	void onNewCustomItem(cocos2d::CCObject* sender) = ios 0x3e4cdc;
	void onPaste(cocos2d::CCObject* sender);
	void onPasteColor(cocos2d::CCObject* sender);
	void onPasteInPlace(cocos2d::CCObject* sender);
	void onPasteState(cocos2d::CCObject* sender);
	void onPause(cocos2d::CCObject* sender);
	void onPlayback(cocos2d::CCObject* sender);
	void onPlaytest(cocos2d::CCObject* sender) = ios 0x3c42d8;
	void onResetSpecialFilter(cocos2d::CCObject* sender);
	void onSelectBuildTab(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onStopPlaytest(cocos2d::CCObject* sender) = ios 0x3c446c;
	TodoReturn onTargetIDChange(int);
	void onToggleGuide(EffectGameObject*);
	TodoReturn onToggleSelectedOrder(EffectGameObject*);
	void onUngroupSticky(cocos2d::CCObject* sender);
	void onUpdateDeleteFilter(cocos2d::CCObject* sender);
	TodoReturn orderDownCustomItem(cocos2d::CCObject*);
	TodoReturn orderUpCustomItem(cocos2d::CCObject*);
	void pasteObjects(gd::string, bool, bool) = ios 0x3e8fbc;
	TodoReturn playCircleAnim(cocos2d::CCPoint, float, float);
	TodoReturn playerTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn playerTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn playtestStopped() = ios 0x3eadb0;
	TodoReturn positionIsInSnapped(cocos2d::CCPoint);
	TodoReturn positionWithoutOffset(GameObject*);
	TodoReturn processSelectObjects(cocos2d::CCArray*) = ios 0x3ea93c;
	TodoReturn processSmartObjectsFromType(int, cocos2d::CCArray*, cocos2d::CCArray*, cocos2d::CCArray*, cocos2d::CCArray*);
	void recreateButtonTabs();
	void redoLastAction(cocos2d::CCObject*);
	void reloadCustomItems();
	TodoReturn removeOffset(GameObject*);
	TodoReturn replaceGroupID(GameObject*, int, int);
	TodoReturn repositionObjectsToCenter(cocos2d::CCArray*, cocos2d::CCPoint, bool) = ios 0x3e7608;
	void resetObjectEditorValues(cocos2d::CCArray*) = ios 0x3ec848;
	TodoReturn resetSelectedObjectsColor();
	TodoReturn resetUI() = ios 0x3e0b14;
	void rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint) = ios 0x3e9964;
	TodoReturn rotationforCommand(EditCommand);
	void scaleObjects(cocos2d::CCArray*, float, float, cocos2d::CCPoint, ObjectScaleType, bool) = ios 0x3ec004;
	TodoReturn selectAll();
	TodoReturn selectAllWithDirection(bool);
	void selectBuildTab(int) = ios 0x3e5454;
	void selectObject(GameObject*, bool);
	void selectObjects(cocos2d::CCArray*, bool) = ios 0x3e9da4;
	void selectObjectsInRect(cocos2d::CCRect) = ios 0x3ea61c;
	void setupCreateMenu() = ios 0x3c4f90;
	void setupDeleteMenu() = ios 0x3c45d4;
	void setupEditMenu();
	TodoReturn setupTransformControl();
	static bool shouldDeleteObject(GameObject*);
	TodoReturn shouldSnap(GameObject*);
	void showDeleteConfirmation();
	void showLiveColorSelectForMode(int);
	void showLiveColorSelectForModeSpecial(int);
	void showMaxBasicError() = ios 0x3e7930;
	void showMaxCoinError() = ios 0x3e7a14;
	void showMaxError() = ios 0x3e7850;
	void showUI(bool) = ios 0x3eac60;
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn smartTypeForKey(int);
	cocos2d::CCPoint* spriteFromObjectString(gd::string, bool, bool, int, cocos2d::CCArray*, cocos2d::CCArray*, GameObject*);
	TodoReturn toggleDuplicateButton() = ios 0x3e2bec;
	TodoReturn toggleEditObjectButton() = ios 0x3e2b28;
	TodoReturn toggleEnableRotate(cocos2d::CCObject*) = ios 0x3c3e34;
	TodoReturn toggleFreeMove(cocos2d::CCObject*);
	TodoReturn toggleLockUI(bool);
	void toggleMode(cocos2d::CCObject*) = ios 0x3e0d94;
	TodoReturn toggleObjectInfoLabel();
	TodoReturn toggleSnap(cocos2d::CCObject*);
	TodoReturn toggleSpecialEditButtons() = ios 0x3e2d20;
	TodoReturn toggleStickyControls(bool) = ios 0x3e29b0;
	TodoReturn toggleSwipe(cocos2d::CCObject*);
	void transformObject(GameObject*, EditCommand, bool);
	void transformObjectCall(cocos2d::CCObject*);
	void transformObjectCall(EditCommand);
	TodoReturn transformObjects(cocos2d::CCArray*, cocos2d::CCPoint, float, float, float, float, float, float) = ios 0x3ec908;
	TodoReturn transformObjectsActive();
	TodoReturn transformObjectsReset();
	TodoReturn triggerSwipeMode();
	void tryUpdateTimeMarkers();
	void undoLastAction(cocos2d::CCObject*);
	void updateButtons() = ios 0x3e2410;
	TodoReturn updateCreateMenu(bool);
	TodoReturn updateDeleteButtons() = ios 0x3e5cf8;
	TodoReturn updateDeleteMenu();
	TodoReturn updateEditButtonColor(int, cocos2d::ccColor3B) = ios 0x3eb7f8;
	TodoReturn updateEditColorButton() = ios 0x3f1930;
	TodoReturn updateEditMenu();
	void updateGridNodeSize();
	TodoReturn updateGridNodeSize(int);
	TodoReturn updateGroupIDBtn2();
	TodoReturn updateGroupIDLabel() = ios 0x3e2304;
	void updateObjectInfoLabel() = ios 0x3e4078;
	TodoReturn updatePlaybackBtn() = ios 0x3e2a1c;
	TodoReturn updateSlider() = ios 0x3e1010;
	TodoReturn updateSpecialUIElements(); // inlined on ios
	void updateZoom(float) = ios 0x3eae70;
	float valueFromXPos(float);
	float xPosFromValue(float);
	TodoReturn zoomGameLayer(bool);
	void zoomIn(cocos2d::CCObject*);
	void zoomOut(cocos2d::CCObject*);

	virtual void draw() = ios 0x3f4520;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3f4b9c;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3f512c;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3f5610;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3f5d98;
	virtual void registerWithTouchDispatcher() = ios 0x3f5db4;
	virtual void keyBackClicked() = ios 0x3eb7ec;
	virtual void keyDown(cocos2d::enumKeyCodes) = ios 0x3f5dec;
	virtual TodoReturn getUI() = ios 0x3f88e8;
	virtual void setIDPopupClosed(SetIDPopup*, int) = ios 0x3e66a4;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x3e65c8;
	virtual void updateTransformControl() = ios 0x3ec6a8;
	virtual void transformChangeBegin() = ios 0x3ece48;
	virtual void transformChangeEnded() {}
	virtual TodoReturn getTransformNode() = ios 0x3f88ec;
	virtual void transformScaleXChanged(float) = ios 0x3f3bb8;
	virtual void transformScaleYChanged(float) = ios 0x3f3c58;
	virtual void transformScaleXYChanged(float, float) = ios 0x3f3c70;
	virtual void transformSkewXChanged(float) = ios 0x3f3c8c;
	virtual void transformSkewYChanged(float) = ios 0x3f3ca4;
	virtual void transformRotationXChanged(float) = ios 0x3f3cbc;
	virtual void transformRotationYChanged(float) = ios 0x3f3cd4;
	virtual void transformRotationChanged(float) = ios 0x3f3cec;
	virtual void transformResetRotation() = ios 0x3f3d08;
	virtual void transformRestoreRotation() = ios 0x3f3d4c;
	virtual void songStateChanged() = ios 0x3eada4;
	virtual void colorSelectClosed(cocos2d::CCNode*);
	virtual void keyUp(cocos2d::enumKeyCodes) = ios 0x3f6a74;
	virtual void scrollWheel(float, float) = ios 0x3f6aec;
	virtual void angleChangeBegin() = ios 0x3f45f8;
	virtual void angleChangeEnded() {}
	virtual void angleChanged(float) = ios 0x3f461c;
	virtual void updateScaleControl() = ios 0x3eba58;
	virtual void anchorPointMoved(cocos2d::CCPoint) = ios 0x3ecefc;
	virtual void scaleChangeBegin() = ios 0x3ebf40;
	virtual void scaleChangeEnded() {}
	virtual void scaleXChanged(float, bool) = ios 0x3ebf64;
	virtual void scaleYChanged(float, bool) = ios 0x3ec358;
	virtual void scaleXYChanged(float, float, bool) = ios 0x3ec400;

	PAD = android32 0x1c, android64 0x38;

	GJTransformState m_transformState;
	PAD = android32 0x4, android64 0x8;
	EditButtonBar* m_buttonBar;

	PAD = android32 0x3c, android64 0x48;

	cocos2d::CCLabelBMFont* m_objectInfoLabel;
	GJRotationControl* m_rotationControl;
	cocos2d::CCPoint m_pivotPoint;
	PAD = android32 0x4, android64 0x8;
	GJScaleControl* m_scaleControl;
	GJTransformControl* m_transformControl;
	cocos2d::CCNode* m_unk220;
	cocos2d::CCNode* m_unk224;
    cocos2d::CCDictionary* m_editButtonDict; // win 0x228
	EditButtonBar* m_createButtonBar;
    EditButtonBar* m_editButtonBar;
    Slider* m_positionSlider;

	PAD = android32 0xc, android64 0xc;
	bool m_swipeEnabled;
	PAD = android32 0x7, android64 0x7;
	bool m_updatedSpeedObjects;

	PAD = android32 0x17, android64 0x1b;

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

	static EditTriggersPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class EffectGameObject : EnhancedGameObject {
	// virtual ~EffectGameObject();
	// EffectGameObject() = ios 0x39784c;

	static EffectGameObject* create(char const*) = ios 0x25c830;

	TodoReturn getTargetColorIndex();
	bool init(char const*) = ios 0x26a7fc;
	TodoReturn playTriggerEffect() = ios 0x38316c;
	TodoReturn resetSpawnTrigger();
	void setTargetID(int);
	void setTargetID2(int);
	TodoReturn triggerEffectFinished();
	TodoReturn updateInteractiveHover(float) = ios 0x3845f8;
	TodoReturn updateSpecialColor();
	TodoReturn updateSpeedModType();

	virtual void setOpacity(unsigned char) = ios 0x383364;
	virtual void firstSetup() = ios 0x3847a0;
	virtual void customSetup() = ios 0x375318;
	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = ios 0x3833e8;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x37631c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x370768;
	virtual void setRScaleX(float) = ios 0x38314c;
	virtual void setRScaleY(float) = ios 0x38315c;
	virtual void triggerActivated(float) = ios 0x38472c;
	virtual TodoReturn restoreObject() = ios 0x3844f8;
	virtual TodoReturn spawnXPosition() = ios 0x3846f4;
	virtual TodoReturn canReverse() = ios 0x38488c;
	virtual bool isSpecialSpawnObject() = ios 0x384918;
	virtual TodoReturn canBeOrdered() = ios 0x384920;
	virtual TodoReturn getObjectLabel() = ios 0x3972d0;
	virtual void setObjectLabel(cocos2d::CCLabelBMFont*) = ios 0x3972d8;
	virtual TodoReturn stateSensitiveOff(GJBaseGameLayer*) = ios 0x38446c;

	bool m_unknownBool;
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
	bool m_isMultiTriggered;
	PAD = android32 0x2, win 0x2, android64 0x2;
	// property 93
	bool m_triggerOnExit;
	// property 95
	int m_itemID2;
	// property 534
	int m_property534;
	PAD = android32 0x1, win 0x1, android64 0x1;
	// property 94
	bool m_isDynamicBlock;
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
	bool m_shouldPreview;
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
	static EndLevelLayer* create(PlayLayer*) = ios 0x2fc588;

	void coinEnterFinished(cocos2d::CCPoint) = ios 0x2ff1e4;
	void coinEnterFinishedO(cocos2d::CCObject*) = ios 0x2ff198;
	void currencyEnterFinished();
	void diamondEnterFinished();
	TodoReturn getCoinString() = ios 0x2fdbd8;
	TodoReturn getEndText() = ios 0x2fdda0;
	void goEdit();
	bool init(PlayLayer*);
	void onEdit(cocos2d::CCObject* sender);
	void onEveryplay(cocos2d::CCObject* sender);
	void onLevelLeaderboard(cocos2d::CCObject* sender);
	void onMenu(cocos2d::CCObject* sender);
	void onReplay(cocos2d::CCObject* sender) = ios 0x2fde68;
	void playCoinEffect(float);
	void playCurrencyEffect(float);
	void playDiamondEffect(float);
	void playEndEffect();
	void playStarEffect(float);
	TodoReturn starEnterFinished();
	TodoReturn tryShowBanner(float);

	virtual void keyBackClicked() = ios 0x2fee88;
	virtual void keyDown(cocos2d::enumKeyCodes) = ios 0x2ff5d0;
	virtual void customSetup() = ios 0x2fc6b4;
	virtual void showLayer(bool) = ios 0x2fe16c;
	virtual void enterAnimFinished() {}
	virtual void keyUp(cocos2d::enumKeyCodes) {}

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

	static EndPortalObject* create() = ios 0x3fad68;

	TodoReturn getSpawnPos() = ios 0x3fb21c;
	TodoReturn triggerObject(GJBaseGameLayer*) = ios 0x3fb198;
	TodoReturn updateColors(cocos2d::ccColor3B) = ios 0x3fb0cc;
	TodoReturn updateEndPos(bool) = ios 0x3fb3dc;

	virtual bool init() = ios 0x3fadf8;
	virtual void setPosition(cocos2d::CCPoint const&) = ios 0x3fb280;
	virtual void setVisible(bool) = ios 0x3fb378;
}

[[link(android)]]
class EndTriggerGameObject : EffectGameObject {
	// virtual ~EndTriggerGameObject();

	static EndTriggerGameObject* create();

	virtual bool init() = ios 0x38fcd4;
	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = ios 0x38fd24;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x3900ac;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x38fdac;
}

[[link(android)]]
class EnhancedGameObject : GameObject {
	// virtual ~EnhancedGameObject();
	// EnhancedGameObject();

	static EnhancedGameObject* create(char const*);

	TodoReturn createRotateAction(float, int);
	bool init(char const*);
	TodoReturn previewAnimateOnTrigger();
	TodoReturn refreshRotateAction();
	TodoReturn resetSyncedAnimation();
	TodoReturn setupAnimationVariables();
	TodoReturn triggerAnimation();
	TodoReturn updateRotateAction(float) = ios 0x26c788;
	TodoReturn updateState(int);
	TodoReturn updateUserCoin() = ios 0x266fac;
	TodoReturn waitForAnimationTrigger();

	virtual void customSetup() = ios 0x26af34;
	virtual void resetObject() = ios 0x26a970;
	virtual void deactivateObject(bool) = ios 0x26c140;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x26ac00;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x26c1a8;
	virtual void triggerActivated(float) = ios 0x26aa9c;
	virtual TodoReturn restoreObject() = ios 0x26a9ec;
	virtual TodoReturn animationTriggered() = ios 0x26ab7c;
	virtual TodoReturn activatedByPlayer(PlayerObject*) = ios 0x26aaa8;
	virtual TodoReturn hasBeenActivatedByPlayer(PlayerObject*) = ios 0x26ab00;
	virtual TodoReturn hasBeenActivated() = ios 0x26ab5c;
	virtual TodoReturn saveActiveColors() = ios 0x26ab8c;
	virtual TodoReturn canAllowMultiActivate() = ios 0x26a83c;
	virtual TodoReturn getHasSyncedAnimation() = ios 0x26ceec;
	virtual TodoReturn getHasRotateAction() = ios 0x26cef4;
	virtual TodoReturn canMultiActivate(bool) = ios 0x26aa78;
	virtual TodoReturn powerOnObject(int) = ios 0x26aa24;
	virtual TodoReturn powerOffObject() = ios 0x26aa38;
	virtual TodoReturn stateSensitiveOff(GJBaseGameLayer*) = ios 0x26cefc;
	virtual TodoReturn updateSyncedAnimation(float, int) = ios 0x34b8b8;
	virtual TodoReturn updateAnimateOnTrigger(bool) = ios 0x34cc60;

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

	static EnhancedTriggerObject* create(char const*);

	bool init(char const*);

	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x385388;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x3850e4;
}

[[link(android)]]
class EnterEffectInstance {
	// ~EnterEffectInstance();
	// EnterEffectInstance(EnterEffectInstance const&);
	// EnterEffectInstance(EnterEffectInstance&&);
	EnterEffectInstance(EnterEffectObject*, int, int, int, int, int, int);

	TodoReturn animateValue(int, float, float, float, int, float, int);
	TodoReturn getValue(int);
	TodoReturn loadTransitions(EnterEffectObject*, float);
	TodoReturn loadValuesFromObject(EnterEffectObject*);
	void setValue(int, float);
	TodoReturn updateTransitions(float, GJBaseGameLayer*);
}

[[link(android)]]
class EnterEffectObject : EffectGameObject {
	// virtual ~EnterEffectObject();

	static EnterEffectObject* create(char const*);

	bool init(char const*);
	TodoReturn resetEnterAnimValues();

	virtual void customSetup() = ios 0x3752d8;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x37556c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x36ef4c;
}

[[link(android)]]
class EventLinkTrigger : EffectGameObject {
	// virtual ~EventLinkTrigger();

	static EventLinkTrigger* create();

	virtual bool init() = ios 0x38bcc4;
	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = ios 0x38bd14;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x38c10c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x38bd94;
}

[[link(android)]]
class ExplodeItemNode : cocos2d::CCNode {
	// virtual ~ExplodeItemNode();

	static ExplodeItemNode* create(cocos2d::CCRenderTexture*) = ios 0x65c8c;

	TodoReturn createSprites(int, int, float, float, float, float, float, float, cocos2d::ccColor4F, cocos2d::ccColor4F, bool);
	bool init(cocos2d::CCRenderTexture*);

	virtual void update(float) = ios 0x669d4;
}

[[link(android)]]
class ExplodeItemSprite : cocos2d::CCSprite {
	// virtual ~ExplodeItemSprite();

	static ExplodeItemSprite* create();

	virtual bool init();
}

[[link(android)]]
class ExtendedLayer : cocos2d::CCLayer {
	// virtual ~ExtendedLayer();

	static ExtendedLayer* create() = ios 0x130204;

	virtual bool init();
	virtual void setPosition(cocos2d::CCPoint const&) = ios 0x131890;
}

[[link(android)]]
class FileOperation {
	gd::string getFilePath();
	TodoReturn readFile();
	TodoReturn saveFile();
}

[[link(android)]]
class FileSaveManager : GManager {
	// virtual ~FileSaveManager();

	static FileSaveManager* sharedState();

	TodoReturn getStoreData();
	TodoReturn loadDataFromFile(char const*);

	virtual bool init();
	virtual void firstLoad() = ios 0x640ca0;
}

[[link(android)]]
class FindBPMLayer : CreateGuidelinesLayer {
	// virtual ~FindBPMLayer();

	static FindBPMLayer* create(int) = ios 0x84184;

	TodoReturn calculateBPM();
	bool init(int) = ios 0x841f8;

	virtual void onClose(cocos2d::CCObject* sender) = ios 0x84528;
	virtual TodoReturn playMusic() = ios 0x843b4;
	virtual TodoReturn registerTouch() = ios 0x84440;
	virtual void onInfo(cocos2d::CCObject* sender) {}
	virtual void onRecord(cocos2d::CCObject* sender) = ios 0x84310;
	virtual TodoReturn recordingDidStop() = ios 0x84348;
}

[[link(android)]]
class FindObjectPopup : SetIDPopup {
	// virtual ~FindObjectPopup();

	static FindObjectPopup* create();

	void onFindObjectID(cocos2d::CCObject* sender);

	virtual bool init() = ios 0x2e6514;
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

	static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, gd::string desc, char const* btn1, char const* btn2, float width, bool scroll, float height, float textScale) = ios 0x2b3d40;
	static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, gd::string desc, char const* btn1, char const* btn2, float width) = ios 0x2b3e4c;
	static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, gd::string desc, char const* btn1, char const* btn2) = ios 0x2b3c9c;

	static FLAlertLayer* create(char const* title, const gd::string& desc, char const* btn) {
		return FLAlertLayer::create(nullptr, title, desc, btn, nullptr, 300.0);
	}

	void incrementForcePrio() = ios 0x2b48e4;
	bool init(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float, bool, float, float) = ios 0x2b3ef8;
	bool init(int) = ios 0x2b4834;
	void onBtn1(cocos2d::CCObject* sender) = ios 0x2b4934;
	void onBtn2(cocos2d::CCObject* sender) = ios 0x2b4994;

	// virtual void onEnter(); // only exists on armv7...
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2b4a88;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2b4c78;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2b4b40;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2b4c00;
	virtual void registerWithTouchDispatcher() = ios 0x2b4e78;
	virtual void keyBackClicked() = ios 0x2b4a24;
	virtual void keyDown(cocos2d::enumKeyCodes) = ios 0x2b49f4;
	virtual void show() = ios 0x2b4cf0;

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
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) {}
}

[[link(android)]]
class FMODAudioEngine : cocos2d::CCNode {
	// virtual ~FMODAudioEngine();
	// FMODAudioEngine();

	static FMODAudioEngine* sharedEngine() = ios 0x13cc54;

	TodoReturn activateQueuedMusic(int);
	TodoReturn channelForChannelID(int) = ios 0x13e494;
	TodoReturn channelForUniqueID(int);
	TodoReturn channelIDForUniqueID(int);
	TodoReturn channelLinkSound(int, FMODSound*);
	TodoReturn channelStopped(FMOD::Channel*, bool);
	TodoReturn channelUnlinkSound(int);
	void clearAllAudio() = ios 0x13d758;
	TodoReturn countActiveEffects() = ios 0x13fa10;
	TodoReturn countActiveMusic() = ios 0x13fa34;
	TodoReturn createStream(gd::string);
	void disableMetering();
	void enableMetering() = ios 0x13fdb8;
	TodoReturn fadeInBackgroundMusic(float);
	TodoReturn fadeInMusic(float, int) = ios 0x141d3c;
	TodoReturn fadeOutMusic(float, int) = ios 0x143250;
	TodoReturn getActiveMusic(int);
	TodoReturn getActiveMusicChannel(int) = ios 0x13efd4;
	float getBackgroundMusicVolume() = ios 0x141918;
	TodoReturn getChannelGroup(int, bool) = ios 0x13ff30;
	inline float getEffectsVolume() {
		return m_sfxVolume;
	}
	TodoReturn getFMODStatus(int) = ios 0x1434b0;
	float getMeteringValue() = ios 0x13fde0;
	TodoReturn getMusicChannelID(int) = ios 0x1402f4;
	TodoReturn getMusicLengthMS(int) = ios 0x142f74;
	TodoReturn getMusicTime(int);
	TodoReturn getMusicTimeMS(int) = ios 0x142ee4;
	TodoReturn getNextChannelID();
	TodoReturn getTweenContainer(AudioTargetType);
	bool isChannelStopping(int);
	bool isEffectLoaded(gd::string);
	bool isMusicPlaying(gd::string, int);
	bool isMusicPlaying(int);
	bool isSoundReady(FMOD::Sound*);
	TodoReturn lengthForSound(gd::string);
	TodoReturn loadAndPlayMusic(gd::string, unsigned int, int);
	TodoReturn loadAudioState(FMODAudioState&) = ios 0x13e698;
	void loadMusic(gd::string, float, float, float, bool, int, int);
	void loadMusic(gd::string);
	TodoReturn pauseAllAudio() = ios 0x13d6c4;
	TodoReturn pauseAllEffects();
	TodoReturn pauseAllMusic() = ios 0x141980;
	TodoReturn pauseEffect(unsigned int);
	TodoReturn pauseMusic(int);
	TodoReturn pitchForIdx(int) = ios 0x13fde8;
	void playEffect(gd::string, float, float, float) = ios 0x14017c;
	void playEffect(gd::string) = ios 0x140104;
	void playEffectAdvanced(gd::string, float, float, float, float, bool, bool, int, int, int, int, bool, int, bool, bool, int, int, float, int) = ios 0x13f048;
	TodoReturn playEffectAsync(gd::string);
	void playMusic(gd::string, bool, float, int) = ios 0x141c64;
	void preloadEffect(gd::string) = ios 0x13d1dc;
	void preloadEffectAsync(gd::string);
	TodoReturn preloadMusic(gd::string, bool, int);
	TodoReturn printResult(FMOD_RESULT);
	TodoReturn queuedEffectFinishedLoading(gd::string);
	TodoReturn queuePlayEffect(gd::string, float, float, float, float, bool, bool, int, int, int, int, bool, int, bool, int, float, int);
	TodoReturn queueStartMusic(gd::string, float, float, float, bool, int, int, int, int, int, bool, int, bool);
	TodoReturn registerChannel(FMOD::Channel*, int, int);
	void releaseRemovedSounds();
	TodoReturn resumeAllAudio() = ios 0x13d710;
	TodoReturn resumeAllEffects();
	TodoReturn resumeAllMusic() = ios 0x1419c4;
	TodoReturn resumeAudio();
	TodoReturn resumeEffect(unsigned int);
	TodoReturn resumeMusic(int);
	TodoReturn reverbToString(FMODReverbPreset);
	TodoReturn saveAudioState(FMODAudioState&) = ios 0x13e338;
	void setBackgroundMusicVolume(float) = ios 0x141920;
	void setChannelPitch(int, AudioTargetType, float);
	void setChannelVolume(int, AudioTargetType, float);
	void setChannelVolumeMod(int, AudioTargetType, float) = ios 0x1413d0;
	void setEffectsVolume(float) = ios 0x141938;
	void setMusicTimeMS(unsigned int, bool, int) = ios 0x13f794;
	void setup() = ios 0x13ccb4;
	TodoReturn setupAudioEngine() = ios 0x13cf4c;
	void start();
	void startMusic(int, int, int, int, bool, int, bool) = ios 0x21b748;
	TodoReturn stop();
	void stopAllEffects() = ios 0x13d7d8;
	void stopAllMusic() = ios 0x13d884;
	TodoReturn stopAndGetFade(FMOD::Channel*) = ios 0x14112c;
	TodoReturn stopAndRemoveMusic(int);
	TodoReturn stopChannel(FMOD::Channel*, bool, float);
	TodoReturn stopChannel(int, AudioTargetType, bool, float);
	TodoReturn stopChannel(int);
	TodoReturn stopChannelTween(int, AudioTargetType, AudioModType);
	TodoReturn stopChannelTweens(int, AudioTargetType);
	TodoReturn stopMusic(int);
	TodoReturn stopMusicNotInSet(std::unordered_set<int, std::hash<int>, std::equal_to<int>, std::allocator<int> >&);
	TodoReturn storeEffect(FMOD::Sound*, gd::string);
	TodoReturn swapMusicIndex(int, int);
	TodoReturn testFunction(int);
	TodoReturn triggerQueuedMusic(FMODQueuedMusic);
	TodoReturn unloadAllEffects() = ios 0x141784;
	TodoReturn unloadEffect(gd::string);
	TodoReturn unregisterChannel(int);
	void updateBackgroundFade();
	TodoReturn updateChannel(int, AudioTargetType, AudioModType, float, float) = ios 0x141228;
	TodoReturn updateChannelTweens(float);
	void updateMetering();
	TodoReturn updateQueuedEffects();
	void updateQueuedMusic();
	TodoReturn updateReverb(FMODReverbPreset, bool) = ios 0x13d3a0;
	void updateTemporaryEffects();
	TodoReturn waitUntilSoundReady(FMOD::Sound*);

	virtual void update(float) = ios 0x13d8bc;

	PAD = win 0x60, android32 0x50, android64 0xac, ios 0x7c;
	float m_musicVolume;
	float m_sfxVolume;
	PAD = win 0x8, android32 0x8, android64 0x8, ios 0x8;
	float m_pulse1;
	float m_pulse2;
	float m_pulse3;
	int m_pulseCounter;
	bool m_metering;
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

	static FMODLevelVisualizer* create() = ios 0x2e8578;

	void updateVisualizer(float, float, float) = ios 0x2e89dc;

	virtual bool init() = ios 0x2e85f4;
}

[[link(android)]]
class FollowRewardPage : FLAlertLayer, FLAlertLayerProtocol, GameRateDelegate, RewardedVideoDelegate {
	// virtual ~FollowRewardPage();

	static FollowRewardPage* create();

	void onClose(cocos2d::CCObject* sender);
	void onRewardedVideo(cocos2d::CCObject* sender);
	void onSpecialItem(cocos2d::CCObject* sender);
	TodoReturn switchToOpenedState(CCMenuItemSpriteExtra*);

	virtual bool init() = ios 0x421100;
	virtual void registerWithTouchDispatcher() = ios 0x422a28;
	virtual void keyBackClicked() = ios 0x4229ac;
	virtual void show() = ios 0x4227a4;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x422918;
	virtual TodoReturn rewardedVideoFinished() = ios 0x422794;
	virtual void updateRate() = ios 0x422440;
}

[[link(android)]]
class FontObject : cocos2d::CCObject {
	// virtual ~FontObject();

	TodoReturn createWithConfigFile(char const*, float);
	TodoReturn getFontWidth(int);
	TodoReturn initWithConfigFile(char const*, float);
	TodoReturn parseConfigFile(char const*, float);
}

[[link(android)]]
class ForceBlockGameObject : EffectGameObject {
	// virtual ~ForceBlockGameObject();

	static ForceBlockGameObject* create(char const*);

	TodoReturn calculateForceToTarget(GameObject*);
	bool init(char const*);

	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x394984;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x3945dc;
}

[[link(android)]]
class FRequestProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, FriendRequestDelegate {
	// virtual ~FRequestProfilePage();

	static FRequestProfilePage* create(bool);

	TodoReturn deleteSelected() = ios 0x1bc1f0;
	bool init(bool) = ios 0x1bb1f4;
	bool isCorrect(char const*);
	void loadPage(int) = ios 0x1bbfd4;
	void onClose(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender) = ios 0x1bbd38;
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onSentRequests(cocos2d::CCObject* sender);
	void onToggleAllObjects(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender) = ios 0x1bbf70;
	void setupCommentsBrowser(cocos2d::CCArray*) = ios 0x1bc770;
	TodoReturn untoggleAll();
	TodoReturn updateLevelsLabel();
	TodoReturn updatePageArrows();

	virtual void registerWithTouchDispatcher() = ios 0x1bc494;
	virtual void keyBackClicked() = ios 0x1bc488;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x1bc38c;
	virtual void onClosePopup(UploadActionPopup*) = ios 0x1bc4cc;
	virtual void uploadActionFinished(int, int) = ios 0x1bc53c;
	virtual void uploadActionFailed(int, int) = ios 0x1bc624;
	virtual TodoReturn loadFRequestsFinished(cocos2d::CCArray*, char const*) = ios 0x1bc8e4;
	virtual TodoReturn loadFRequestsFailed(char const*, GJErrorCode) = ios 0x1bc968;
	virtual void setupPageInfo(gd::string, char const*) = ios 0x1bca38;
	virtual TodoReturn forceReloadRequests(bool) = ios 0x1bca04;
}

[[link(android)]]
class FriendRequestDelegate {
	virtual TodoReturn loadFRequestsFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadFRequestsFailed(char const*, GJErrorCode);
	virtual void setupPageInfo(gd::string, char const*);
	virtual TodoReturn forceReloadRequests(bool);
}

[[link(android)]]
class FriendRequestPopup : FLAlertLayer, UploadActionDelegate, UploadPopupDelegate, FLAlertLayerProtocol {
	// virtual ~FriendRequestPopup();

	static FriendRequestPopup* create(GJFriendRequest*);

	void blockUser();
	bool init(GJFriendRequest*);
	void loadFromGJFriendRequest(GJFriendRequest*) = ios 0x2e0d00;
	void onAccept(cocos2d::CCObject* sender) = ios 0x2e14f4;
	void onBlock(cocos2d::CCObject* sender) = ios 0x2e1630;
	void onClose(cocos2d::CCObject* sender) = ios 0x2e0c94;
	void onRemove(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = ios 0x2e183c;
	virtual void uploadActionFinished(int, int) = ios 0x2e1848;
	virtual void uploadActionFailed(int, int) = ios 0x2e197c;
	virtual void onClosePopup(UploadActionPopup*) = ios 0x2e1a14;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x2e1a8c;
}

[[link(android)]]
class FriendsProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, UserListDelegate {
	// virtual ~FriendsProfilePage();

	static FriendsProfilePage* create(UserListType);

	bool init(UserListType) = ios 0x1dbaac;
	void onBlocked(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender) = ios 0x1dc248;
	void setupUsersBrowser(cocos2d::CCArray*, UserListType) = ios 0x1dc2ac;

	virtual void registerWithTouchDispatcher() = ios 0x1dc764;
	virtual void keyBackClicked() = ios 0x1dc758;
	virtual void getUserListFinished(cocos2d::CCArray*, UserListType) = ios 0x1dc4fc;
	virtual void getUserListFailed(UserListType, GJErrorCode) = ios 0x1dc60c;
	virtual void userListChanged(cocos2d::CCArray*, UserListType) = ios 0x1dc6ac;
	virtual void forceReloadList(UserListType) = ios 0x1dc6c8;
}

[[link(android)]]
class GameCell : TableViewCell {
	// virtual ~GameCell();
	GameCell(char const*, float, float);

	void loadFromString(gd::string);
	void onTouch(cocos2d::CCObject* sender);
	void updateBGColor(int);

	virtual bool init() = ios 0x1d4288;
	virtual void draw() = ios 0x1d4350;
}

[[link(android)]]
class GameEffectsManager : cocos2d::CCNode {
	// virtual ~GameEffectsManager();

	static GameEffectsManager* create(PlayLayer*);

	TodoReturn addParticleEffect(cocos2d::CCParticleSystemQuad*, int);
	bool init(PlayLayer*);
	TodoReturn scaleParticle(cocos2d::CCParticleSystemQuad*, float);
}

[[link(android)]]
class GameLevelManager : cocos2d::CCNode {
	// virtual ~GameLevelManager();

	static GameLevelManager* sharedState() = ios 0x8db7c;
	static GameLevelManager* get() {
		return GameLevelManager::sharedState();
	}

	void acceptFriendRequest(int, int) = ios 0xab03c;
	int accountIDForUserID(int userID) = ios 0x977f0;
	void addDLToActive(char const* tag) = ios 0x9cf14;
	bool areGauntletsLoaded();
	void banUser(int);
	void blockUser(int) = ios 0xab840;
	void cleanupDailyLevels() = ios 0x9d930;
	bool createAndGetAccountComments(gd::string, int);
	bool createAndGetCommentsFull(gd::string, int, bool);
	bool createAndGetLevelComments(gd::string, int);
	cocos2d::CCArray* createAndGetLevelLists(gd::string);
	cocos2d::CCArray* createAndGetLevels(gd::string);
	cocos2d::CCArray* createAndGetMapPacks(gd::string);
	cocos2d::CCArray* createAndGetScores(gd::string, GJScoreType);
	GJGameLevel* createNewLevel() = ios 0x9649c;
	GJLevelList* createNewLevelList() = ios 0x96c94;
	TodoReturn createPageInfo(int, int, int) = ios 0x9ce54;
	GJSmartTemplate* createSmartTemplate();
	void dataLoaded(DS_Dictionary*) = ios 0x9e880;
	void deleteAccountComment(int, int);
	void deleteComment(int, CommentType, int) = ios 0xaa254;
	void deleteFriendRequests(int, cocos2d::CCArray*, bool) = ios 0xaaac4;
	void deleteLevel(GJGameLevel*);
	void deleteLevelComment(int, int);
	void deleteLevelList(GJLevelList*);
	void deleteSentFriendRequest(int);
	void deleteServerLevel(int) = ios 0xa42d8;
	void deleteServerLevelList(int) = ios 0xa1bd8;
	void deleteSmartTemplate(GJSmartTemplate*);
	void deleteUserMessages(GJUserMessage* message, cocos2d::CCArray* messages, bool isSender) = ios 0xa805c;
	void downloadLevel(int, bool) = ios 0xa2aac;
	void downloadUserMessage(int, bool);
	void encodeDataTo(DS_Dictionary*) = ios 0x9e558;
	void firstSetup() = ios 0x9dfd8;
	void followUser(int);
	GJFriendRequest* friendRequestFromAccountID(int);
	void friendRequestWasRemoved(int, bool);
	char const* getAccountCommentKey(int, int);
	void getAccountComments(int accountID, int page, int total) = ios 0xa8a74;
	int getActiveDailyID(GJTimedLevelType);
	GJSmartTemplate* getActiveSmartTemplate() = ios 0x9de70;
	cocos2d::CCArray* getAllSmartTemplates();
	cocos2d::CCDictionary* getAllUsedSongIDs();
	gd::string getBasePostString() = ios 0x9f6e0;
	bool getBoolForKey(char const*) = ios 0xae03c;
	gd::string getCommentKey(int ID, int page, int mode, CommentKeyType keytype);
	TodoReturn getCompletedDailyLevels();
	TodoReturn getCompletedGauntletDemons();
	TodoReturn getCompletedGauntletLevels();
	cocos2d::CCArray* getCompletedLevels(bool) = ios 0x9b2d4;
	TodoReturn getCompletedWeeklyLevels();
	int getDailyID(GJTimedLevelType) = ios 0xad8f8;
	double getDailyTimer(GJTimedLevelType);
	char const* getDeleteCommentKey(int, int, int);
	char const* getDeleteMessageKey(int, bool);
	TodoReturn getDemonLevelsString();
	char const* getDescKey(int);
	gd::string getActiveDailyID(bool, bool, bool, bool, bool, bool, bool, bool);
	char const* getDiffKey(int);
	bool getDiffVal(int);
	gd::string getFolderName(int, bool) = ios 0x9dd28;
	char const* getFriendRequestKey(bool, int);
	void getFriendRequests(bool, int, int) = ios 0xaa60c;
	char const* getGauntletKey(int);
	void getGauntletLevels(int) = ios 0xa2778;
	void getGauntlets() = ios 0xa254c;
	void getGauntletsearchKey(int);
	void getGJChallenges() = ios 0xad264;
	void getGJDailyLevelState(GJTimedLevelType);
	void getGJRewards(int) = ios 0xacd98;
	void getGJUserInfo(int accID) = ios 0xa6e08;
	int getHighestLevelOrder();
	int getIntForKey(char const*) = ios 0xadf3c;
	void getLeaderboardScores(char const*);
	gd::string getLengthStr(bool, bool, bool, bool, bool, bool);
	char const* getLenKey(int len);
	bool getLenVal(int);
	void getLevelComments(int ID, int page, int total, int mode, CommentKeyType keytype) = ios 0xa85f4;
	char const* getLevelDownloadKey(int levelID, bool isGauntlet) {
		return cocos2d::CCString::createWithFormat("%i_%i", levelID, isGauntlet)->getCString();
	}
	char const* getLevelKey(int levelID);
	void getLevelLeaderboard(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = ios 0xa609c;
	char const* getLevelLeaderboardKey(int, LevelLeaderboardType, LevelLeaderboardMode);
	char const* getLevelListKey(int);
	void getLevelLists(GJSearchObject*) = ios 0xa1e4c;
	void getLevelSaveData() = ios 0xa1198;
	char const* getLikeAccountItemKey(LikeItemType, int, bool, int);
	char const* getLikeItemKey(LikeItemType, int, bool, int);
	GJGameLevel* getLocalLevel(int);
	GJGameLevel* getLocalLevelByName(gd::string);
	GJLevelList* getAllUsedSongIDs(int);
	int getLowestLevelOrder();
	GJGameLevel* getMainLevel(int, bool) = ios 0x9610c;
	char const* getMapPackKey(int pack);
	void getMapPacks(GJSearchObject*) = ios 0xa1338;
	char const* getMessageKey(int) = ios 0xa7b4c;
	char const* getMessagesKey(bool, int);
	void getNews();
	int getNextFreeTemplateID();
	gd::string getNextLevelName(gd::string);
	void getOnlineLevels(GJSearchObject*) = ios 0xa0978;
	char const* getPageInfo(char const*);
	char const* getPostCommentKey(int);
	char const* getRateStarsKey(int key);
	char const* getReportKey(int);
	GJGameLevel* getSavedDailyLevel(int) = ios 0x9c2ec;
	GJGameLevel* getSavedDailyLevelFromLevelID(int);
	GJGameLevel* getSavedGauntlet(int);
	GJGameLevel* getSavedGauntletLevel(int);
	GJGameLevel* getSavedLevel(GJGameLevel*);
	GJGameLevel* getSavedLevel(int) = ios 0x9c3f4; // NOT SURE !!
	GJLevelList* getSavedLevelList(int);
	cocos2d::CCArray* getSavedLevelLists(int);
	cocos2d::CCArray* getSavedLevels(bool, int) = ios 0x9af38;
	TodoReturn getSavedMapPack(int);
	cocos2d::CCScene* getSearchScene(char const*);
	int getSplitIntFromKey(char const*, int);
	TodoReturn getStarLevelsString();
	TodoReturn getStoredLevelComments(char const*);
	cocos2d::CCArray* getStoredOnlineLevels(char const*);
	cocos2d::CCArray* getStoredUserList(UserListType) = ios 0xab790;
	GJUserMessage* getStoredUserMessage(int);
	GJUserMessage* getStoredUserMessageReply(int);
	double getTimeLeft(char const*, float);
	void getTopArtists(int page, int total) = ios 0xa69b0;
	char const* getTopArtistsKey(int page) {
	    return cocos2d::CCString::createWithFormat("topArtists_%i", page)->getCString();
	}
	char const* getUploadMessageKey(int);
	char const* getUserInfoKey(int);
	void getUserList(UserListType) = ios 0xabd6c;
	void getUserMessages(bool, int, int) = ios 0xa7308;
	void getUsers(GJSearchObject*) = ios 0xa6bf8;
	void gotoLevelPage(GJGameLevel*);
	void handleIt(bool, gd::string, gd::string, GJHttpType) = ios 0x8e034;
	void handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	void handleItND(cocos2d::CCNode*, void*);
	bool hasDailyStateBeenLoaded(GJTimedLevelType);
	bool hasDownloadedLevel(int) = ios 0xa2f58;
	bool hasDownloadedList(int);
	bool hasLikedAccountItem(LikeItemType, int, bool, int);
	bool hasLikedItem(LikeItemType, int, bool, int);
	bool hasLikedItemFullCheck(LikeItemType, int, int);
	bool hasRatedDemon(int) = ios 0xa4250;
	bool hasRatedLevelStars(int) = ios 0xa4028;
	bool hasReportedLevel(int) = ios 0xadb00;
	void invalidateMessages(bool, bool) = ios 0xa839c;
	void invalidateRequests(bool, bool) = ios 0xaade4;
	void invalidateUserList(UserListType, bool) = ios 0xabf28;
	bool isDLActive(char const* tag) = ios 0x9cea4;
	bool isFollowingUser(int) = ios 0x9db50; // fairly sure
	bool isTimeValid(char const*, float);
	bool isUpdateValid(int);
	int itemIDFromLikeKey(char const*);
	bool keyHasTimer(char const*);
	int levelIDFromCommentKey(char const*);
	int levelIDFromPostCommentKey(char const*);
	int likeFromLikeKey(char const*);
	void likeItem(LikeItemType, int, bool, int) = ios 0xac20c;
	void limitSavedLevels() = ios 0x9d5ec;
	void makeTimeStamp(char const*) = ios 0x9cbbc;
	void markItemAsLiked(LikeItemType, int, bool, int) = ios 0xac7b8;
	void markLevelAsDownloaded(int);
	void markLevelAsRatedDemon(int);
	void markLevelAsRatedStars(int) = ios 0xa40b0;
	void markLevelAsReported(int) = ios 0xadb88;
	void markListAsDownloaded(int id) {
		this->markLevelAsDownloaded(-id);
	}
	void messageWasRemoved(int, bool);
	void onAcceptFriendRequestCompleted(gd::string response, gd::string tag);
	void onBanUserCompleted(gd::string response, gd::string tag);
	void onBlockUserCompleted(gd::string response, gd::string tag);
	void onDeleteCommentCompleted(gd::string response, gd::string tag);
	void onDeleteFriendRequestCompleted(gd::string response, gd::string tag);
	void onDeleteServerLevelCompleted(gd::string response, gd::string tag);
	void onDeleteServerLevelListCompleted(gd::string response, gd::string tag);
	void onDeleteUserMessagesCompleted(gd::string response, gd::string tag);
	void onDownloadLevelCompleted(gd::string response, gd::string tag);
	void onDownloadUserMessageCompleted(gd::string response, gd::string tag);
	void onGetAccountCommentsCompleted(gd::string response, gd::string tag);
	void onGetFriendRequestsCompleted(gd::string response, gd::string tag);
	void onGetGauntletsCompleted(gd::string response, gd::string tag);
	void onGetGJChallengesCompleted(gd::string response, gd::string tag);
	void onGetGJDailyLevelStateCompleted(gd::string response, gd::string tag) = ios 0x94c74;
	void onGetGJRewardsCompleted(gd::string response, gd::string tag);
	void onGetGJUserInfoCompleted(gd::string response, gd::string tag);
	void onGetLeaderboardScoresCompleted(gd::string response, gd::string tag);
	void onGetLevelCommentsCompleted(gd::string response, gd::string tag);
	void onGetLevelLeaderboardCompleted(gd::string response, gd::string tag);
	void onGetLevelListsCompleted(gd::string response, gd::string tag);
	void onGetLevelSaveDataCompleted(gd::string response, gd::string tag);
	void onGetMapPacksCompleted(gd::string response, gd::string tag);
	void onGetNewsCompleted(gd::string response, gd::string tag);
	void onGetOnlineLevelsCompleted(gd::string response, gd::string tag);
	void onGetTopArtistsCompleted(gd::string response, gd::string tag);
	void onGetUserListCompleted(gd::string response, gd::string tag);
	void onGetUserMessagesCompleted(gd::string response, gd::string tag);
	void onGetUsersCompleted(gd::string response, gd::string tag);
	void onLikeItemCompleted(gd::string response, gd::string tag);
	void onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient* client, cocos2d::extension::CCHttpResponse* response);
	void onRateDemonCompleted(gd::string response, gd::string tag);
	void onRateStarsCompleted(gd::string response, gd::string tag);
	void onReadFriendRequestCompleted(gd::string response, gd::string tag);
	void onRemoveFriendCompleted(gd::string response, gd::string tag);
	void onReportLevelCompleted(gd::string response, gd::string tag);
	void onRequestUserAccessCompleted(gd::string response, gd::string tag) = ios 0x9392c;
	void onRestoreItemsCompleted(gd::string response, gd::string tag) = ios 0x918fc;
	void onSetLevelFeaturedCompleted(gd::string response, gd::string tag);
	void onSetLevelStarsCompleted(gd::string response, gd::string tag);
	void onSubmitUserInfoCompleted(gd::string response, gd::string tag);
	void onSuggestLevelStarsCompleted(gd::string response, gd::string tag);
	void onUnblockUserCompleted(gd::string response, gd::string tag);
	void onUpdateDescriptionCompleted(gd::string response, gd::string tag);
	void onUpdateLevelCompleted(gd::string response, gd::string tag);
	void onUpdateUserScoreCompleted(gd::string response, gd::string tag) = ios 0x90888;
	void onUploadCommentCompleted(gd::string response, gd::string tag) = ios 0x91164;
	void onUploadFriendRequestCompleted(gd::string response, gd::string tag);
	void onUploadLevelCompleted(gd::string response, gd::string tag);
	void onUploadLevelListCompleted(gd::string response, gd::string tag);
	void onUploadUserMessageCompleted(gd::string response, gd::string tag);
	int pageFromCommentKey(char const*);
	void parseRestoreData(gd::string);
	void performNetworkTest() = ios 0x8dc58;
	void ProcessHttpRequest(gd::string endpoint, gd::string params, gd::string tag, GJHttpType httpType) = ios 0x8ded0;
	void processOnDownloadLevelCompleted(gd::string, gd::string, bool) = ios 0xa2fe0;
	void purgeUnusedLevels() = ios 0x9d768;
	void rateDemon(int, int, bool) = ios 0xa4884;
	void rateStars(int, int) = ios 0xa3b7c;
	void readFriendRequest(int) = ios 0xab328;
	TodoReturn removeDelimiterChars(gd::string, bool) = ios 0xa01ac;
	void removeDLFromActive(char const* tag) = ios 0x9cf94;
	void removeFriend(int) = ios 0xab558;
	void removeLevelDownloadedKeysFromDict(cocos2d::CCDictionary*);
	void removeUserFromList(int, UserListType);
	void reportLevel(int) = ios 0xad994;
	void requestUserAccess() = ios 0xaca60;
	void resetAccountComments(int);
	void resetAllTimers();
	void resetCommentTimersForLevelID(int, CommentKeyType);
	void resetDailyLevelState(GJTimedLevelType);
	void resetGauntlets();
    inline void resetStoredUserInfo(int id) {
        m_storedUserInfo->removeObjectForKey(id); // ios 0xa72bc moment
    }
	void resetStoredUserList(UserListType) = ios 0xab288;
	void resetTimerForKey(char const*);
	static cocos2d::CCDictionary* responseToDict(gd::string, bool);
	void restoreItems();
	void saveFetchedLevelLists(cocos2d::CCArray*);
	void saveFetchedLevels(cocos2d::CCArray*);
	void saveFetchedMapPacks(cocos2d::CCArray*);
	void saveGauntlet(GJMapPack*);
	void saveLevel(GJGameLevel*);
	void saveLevelList(GJLevelList*);
	void saveLocalScore(int, int, int);
	void saveMapPack(GJMapPack*);
	void setActiveSmartTemplate(GJSmartTemplate*);
	void setBoolForKey(bool, char const*);
	void setDiffVal(int, bool);
	void setFolderName(int, gd::string, bool);
	void setIntForKey(int, char const*) = ios 0xadeb0;
	void setLenVal(int, bool);
	void setLevelFeatured(int, int, bool);
	void setLevelStars(int, int, bool);
	int specialFromLikeKey(char const*);
	void storeCommentsResult(cocos2d::CCArray*, gd::string, char const*);
	void storeDailyLevelState(int, int, GJTimedLevelType);
	void storeFriendRequest(GJFriendRequest*);
	void storeSearchResult(cocos2d::CCArray* levels, gd::string pageInfo, char const* searchKey);
	void storeUserInfo(GJUserScore*);
	void storeUserMessage(GJUserMessage*);
	void storeUserMessageReply(int, GJUserMessage*);
	void storeUserName(int userID, int accountID, gd::string userName) = ios 0x97460;
	void storeUserNames(gd::string usernameString);
	void submitUserInfo() = ios 0xa5960;
	void suggestLevelStars(int, int, int) = ios 0xa4594;
	gd::string tryGetUsername(int) = ios 0x97674;
	CommentType typeFromCommentKey(char const*);
	LikeItemType typeFromLikeKey(char const*);
	void unblockUser(int) = ios 0xabb34;
	void unfollowUser(int);
	void updateDescription(int, gd::string);
	void updateLevel(GJGameLevel*) = ios 0xa39a8;
	void updateLevelOrders() = ios 0x9b188;
	void updateLevelRewards(GJGameLevel*);
	void updateSavedLevelList(GJLevelList*);
	void updateUsernames() = ios 0x9da9c;
	void updateUserScore() = ios 0xa4afc;
	void uploadAccountComment(gd::string);
	void uploadComment(gd::string, CommentType, int, int) = ios 0xa997c;
	void uploadFriendRequest(int, gd::string) = ios 0xaa7fc;
	void uploadLevel(GJGameLevel*) = ios 0x9f840;
	void uploadLevelComment(int, gd::string, int);
	void uploadLevelList(GJLevelList*) = ios 0xa1574;
	void uploadUserMessage(int, gd::string, gd::string) = ios 0xa7d28;
	int userIDForAccountID(int);
	GJUserScore* userInfoForAccountID(int) = ios 0x977e4;
	gd::string userNameForUserID(int) = ios 0x975a4;
	TodoReturn verifyContainerOnlyHasLevels(cocos2d::CCDictionary*);
	void verifyLevelState(GJGameLevel*);
	gd::string writeSpecialFilters(GJSearchObject*) = ios 0xa06d8;

	virtual bool init() = ios 0x95ffc;

	PAD = win 0x8, android32 0x18, android64 0x30, ios 0x18;
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
	cocos2d::CCDictionary* m_friendReqAndUserBlocks;
	cocos2d::CCDictionary* m_storedUserInfo;
	cocos2d::CCDictionary* m_friendRequests;
	cocos2d::CCDictionary* m_userMessages;
	cocos2d::CCDictionary* m_userReplies;
	gd::string m_searchSceneStr;
	gd::string m_searchType9Str;
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

	static GameLevelOptionsLayer* create(GJGameLevel*);

	bool init(GJGameLevel*);

	virtual void setupOptions() = ios 0x2e99d4;
	virtual void didToggle(int) = ios 0x2e9a40;
}

[[link(android), depends(UIButtonConfig)]]
class GameManager : GManager {
	// virtual ~GameManager();

	static GameManager* get() {
		return GameManager::sharedState();
	}

	static GameManager* sharedState() = ios 0x318608;

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

	TodoReturn accountStatusChanged();
	int activeIconForType(IconType);
	TodoReturn addCustomAnimationFrame(int, int, gd::string, gd::string);
	TodoReturn addDuplicateLastFrame(int);
	TodoReturn addGameAnimation(int, int, float, gd::string, gd::string, int);
	TodoReturn addIconDelegate(cocos2d::CCObject*, int);
	TodoReturn addNewCustomObject(gd::string);
	TodoReturn addToGJLog(cocos2d::CCString*);
	TodoReturn applicationDidEnterBackground() = ios 0x323868;
	TodoReturn applicationWillEnterForeground() = ios 0x32386c;
	TodoReturn calculateBaseKeyForIcons() = ios 0x318744;
	TodoReturn canShowRewardedVideo();
	TodoReturn checkSteamAchievementUnlock() = ios 0x168ac4;
	TodoReturn checkUsedIcons() = ios 0x31d030;
	TodoReturn claimItemsResponse(gd::string);
	TodoReturn clearGJLog() = ios 0x3209ac;
	cocos2d::ccColor3B colorForIdx(int) = ios 0x31d514;
	TodoReturn colorForPos(int);
	TodoReturn colorKey(int, UnlockType);
	TodoReturn completedAchievement(gd::string) = ios 0x319e50;
	int countForType(IconType);
	TodoReturn defaultFrameForAnimation(int);
	TodoReturn didExitPlayscene() = ios 0x3237f8;
	TodoReturn doQuickSave();
	TodoReturn dpadConfigToString(UIButtonConfig&) = ios 0x320d90;
	TodoReturn eventUnlockFeature(char const*);
	void fadeInMenuMusic() = ios 0x318c34;
	void fadeInMusic(gd::string) = ios 0x318cc0;
	TodoReturn finishedLoadingBGAsync(cocos2d::CCObject*);
	TodoReturn finishedLoadingGAsync(int) = ios 0x31f2c8;
	TodoReturn finishedLoadingGAsync1(cocos2d::CCObject*);
	TodoReturn finishedLoadingGAsync2(cocos2d::CCObject*);
	TodoReturn finishedLoadingIconAsync(cocos2d::CCObject*);
	TodoReturn finishedLoadingMGAsync(int) = ios 0x31ef70;
	TodoReturn finishedLoadingMGAsync1(cocos2d::CCObject*);
	TodoReturn finishedLoadingMGAsync2(cocos2d::CCObject*);
	TodoReturn followTwitch();
	TodoReturn followTwitter();
	TodoReturn framesForAnimation(int);
	TodoReturn frameTimeForAnimation(int);
	TodoReturn generateSecretNumber();
	TodoReturn getBGTexture(int) = ios 0x31f364;
	TodoReturn getFontFile(int) = ios 0x31e8a0;
	TodoReturn getFontTexture(int) = ios 0x31e90c;
	bool getGameVariable(char const*) = ios 0x318b58;
	TodoReturn getGTexture(int) = ios 0x31f3fc;
	int getIconRequestID() {
		return m_iconRequestID++;
	}
	int getIntGameVariable(char const*) = ios 0x31f858;
	TodoReturn getMenuMusicFile() = ios 0x318898;
	TodoReturn getMGTexture(int) = ios 0x31f3b0;
	TodoReturn getNextUniqueObjectKey();
	TodoReturn getNextUsedKey(int, bool);
	TodoReturn getOrderedCustomObjectKeys();
	TodoReturn getPracticeMusicFile() = ios 0x318960;
	bool getUGV(char const*) = ios 0x31f6cc;
	TodoReturn getUnlockForAchievement(gd::string, int&, UnlockType&) = ios 0x3196e8;
	TodoReturn groundHasSecondaryColor(int);
	TodoReturn iconAndTypeForKey(int, int&, int&);
	TodoReturn iconKey(int, IconType);
	UnlockType iconTypeToUnlockType(IconType);
	bool isColorUnlocked(int, UnlockType) = ios 0x319548;
	bool isIconLoaded(int, int);
	bool isIconUnlocked(int, IconType) = ios 0x319178;
	TodoReturn itemPurchased(char const*);
	TodoReturn joinDiscord();
	TodoReturn joinReddit() = ios 0x31dc60;
	int keyForIcon(int iconIdx, int iconEnum) {
		return m_keyStartForIcon->at(iconEnum) + iconIdx - 1;
	}
	TodoReturn levelIsPremium(int, int);
	TodoReturn likeFacebook();
	void loadBackground(int) = ios 0x31eaf0;
	void loadBackgroundAsync(int);
	void loadDeathEffect(int) = ios 0x31e978;
	TodoReturn loadDpadFromString(UIButtonConfig&, gd::string);
	TodoReturn loadDPadLayout(int, bool) = ios 0x321078;
	TodoReturn loadFont(int) = ios 0x31e7f8;
	void loadGround(int) = ios 0x31f00c;
	void loadGroundAsync(int) = ios 0x31f120;
	cocos2d::CCTexture2D* loadIcon(int, int, int) = ios 0x31e19c;
	TodoReturn loadIconAsync(int, int, int, cocos2d::CCObject*);
	void loadMiddleground(int) = ios 0x31ecdc;
	void loadMiddlegroundAsync(int) = ios 0x31eddc;
	TodoReturn loadVideoSettings() = ios 0x32170c;
	TodoReturn lockColor(int, UnlockType);
	TodoReturn lockIcon(int, IconType);
	TodoReturn logLoadedIconInfo();
	void openEditorGuide();
	TodoReturn playMenuMusic();
	TodoReturn playSFXTrigger(SFXTriggerGameObject*);
	TodoReturn prepareDPadSettings() = ios 0x321504;
	TodoReturn printGJLog() = ios 0x3209a8;
	TodoReturn queueReloadMenu();
	TodoReturn rateGame();
	void recountUserStats(gd::string) = ios 0x320098;
	void reloadAll(bool switchModes, bool toFullscreen, bool borderless, bool unused) = ios 0x323d54;
	void reloadAll(bool switchModes, bool toFullscreen, bool unused) {
		return this->reloadAll(switchModes, toFullscreen, false, unused);
	}
	void reloadAllStep2() = ios 0x323df4;
	void reloadAllStep3() = ios 0x323edc;
	void reloadAllStep4();
	void reloadAllStep5();
	TodoReturn reloadMenu();
	TodoReturn removeCustomObject(int);
	TodoReturn removeIconDelegate(int);
	TodoReturn reorderKey(int, bool);
	void reportAchievementWithID(char const*, int, bool) = ios 0x31a428;
	TodoReturn reportPercentageForLevel(int, int, bool) = ios 0x31a020;
	TodoReturn resetAchievement(gd::string) = ios 0x319f28;
	TodoReturn resetAdTimer();
	TodoReturn resetAllIcons();
	TodoReturn resetCoinUnlocks() = ios 0x31c9f8;
	TodoReturn resetDPadSettings(bool) = ios 0x3216c0;
	TodoReturn resolutionForKey(int) = ios 0x324008;
	void returnToLastScene(GJGameLevel*) = ios 0x3239f8;
	TodoReturn rewardedVideoAdFinished(int);
	TodoReturn rewardedVideoHidden();
	TodoReturn rewardedVideoHiddenDelayed();
	void safePopScene() = ios 0x323c50;
	TodoReturn saveAdTimer();
	TodoReturn saveDPadLayout(int, bool) = ios 0x3209b4;
	void setGameVariable(char const*, bool) = ios 0x31f448;
	void setHasRatingPower(int);
	void setIntGameVariable(char const*, int) = ios 0x31f7a8;
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
	void setPlayerUserID(int);
	void setUGV(char const*, bool) = ios 0x31f5dc;
	TodoReturn setupGameAnimations() = ios 0x34e174;
	gd::string sheetNameForIcon(int, int) = ios 0x31dff0;
	TodoReturn shortenAdTimer(float);
	TodoReturn shouldShowInterstitial(int, int, int);
	void showInterstitial();
	void showInterstitialForced();
	void showMainMenuAd();
	TodoReturn startUpdate() = ios 0x318850;
	TodoReturn stringForCustomObject(int);
	TodoReturn subYouTube();
	TodoReturn switchCustomObjects(int, int);
	TodoReturn switchScreenMode(bool, bool, bool);
	TodoReturn syncPlatformAchievements() = ios 0x31dd08;
	TodoReturn toggleGameVariable(char const*) = ios 0x31f59c;
	TodoReturn tryCacheAd();
	TodoReturn tryShowInterstitial(int, int, int);
	TodoReturn unloadBackground() = ios 0x31ea58;
	void unloadIcon(int, int, int);
	void unloadIcons(int) = ios 0x31e734;
	TodoReturn unlockColor(int, UnlockType);
	TodoReturn unlockedPremium();
	void unlockIcon(int, IconType);
	TodoReturn unlockTypeToIconType(int) = ios 0x3192f4;
	void updateCustomFPS() = ios 0x3241b0;
	TodoReturn updateMusic() = ios 0x31d97c;
	TodoReturn verifyAchievementUnlocks();
	TodoReturn verifyCoinUnlocks() = ios 0x31a638;
	TodoReturn verifyStarUnlocks();
	TodoReturn verifySyncedCoins();
	TodoReturn videoAdHidden();
	TodoReturn videoAdShowed();

	virtual void update(float) = ios 0x32383c;
	virtual bool init() = ios 0x318668;
	virtual void encodeDataTo(DS_Dictionary*) = ios 0x323008;
	virtual void dataLoaded(DS_Dictionary*) = ios 0x321754;
	virtual void firstLoad() = ios 0x322ae8;

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

	void addColorSprite(gd::string) = ios 0x25d1d8;
	void addColorSpriteToParent(bool) = ios 0x25e058;
	void addColorSpriteToSelf();
	void addCustomBlackChild(gd::string, float, bool);
	void addCustomChild(gd::string, cocos2d::CCPoint, int) = ios 0x2623c8;
	void addCustomColorChild(gd::string);
	void addEmptyGlow() = ios 0x25d120;
	void addGlow(gd::string) = ios 0x25cb98;
	void addInternalChild(cocos2d::CCSprite*, gd::string, cocos2d::CCPoint, int);
	void addInternalCustomColorChild(gd::string, cocos2d::CCPoint, int);
	void addInternalGlowChild(gd::string, cocos2d::CCPoint);
	void addNewSlope01(bool) = ios 0x26a328;
	void addNewSlope01Glow(bool) = ios 0x26a3d4;
	void addNewSlope02(bool);
	void addNewSlope02Glow(bool);
	void addRotation(float, float);
	void addRotation(float);
	void addToColorGroup(int);
	void addToCustomScaleX(float);
	void addToCustomScaleY(float);
	void addToOpacityGroup(int);
	void addToTempOffset(double, double);
	void assignUniqueID();
	TodoReturn belongsToGroup(int);
	TodoReturn calculateOrientedBox() = ios 0x2692a8;
	TodoReturn canChangeCustomColor() = ios 0x269708;
	TodoReturn canChangeMainColor();
	TodoReturn canChangeSecondaryColor();
	TodoReturn canRotateFree() = ios 0x264e20;
	TodoReturn colorForMode(int, bool) = ios 0x269be4;
	void commonInteractiveSetup() = ios 0x261308;
	void commonSetup() = ios 0x25c964;
	TodoReturn copyGroups(GameObject*);
	TodoReturn createAndAddParticle(int, char const*, int, cocos2d::tCCPositionType) = ios 0x2613b8;
	TodoReturn createColorGroupContainer(int);
	TodoReturn createGlow(gd::string) = ios 0x25d08c;
	void createGroupContainer(int);
	TodoReturn createOpacityGroupContainer(int);
	TodoReturn createSpriteColor(int);
	static GameObject* createWithFrame(char const*) = ios 0x25c8a4;
	static GameObject* createWithKey(int) = ios 0x25c0fc;
	void deselectObject() = ios 0x268fd4;
	void destroyObject() = ios 0x263dc8;
	void determineSlopeDirection() = ios 0x264a60;
	TodoReturn didScaleXChange();
	TodoReturn didScaleYChange();
	TodoReturn dirtifyObjectPos() = ios 0x262680;
	TodoReturn dirtifyObjectRect();
	TodoReturn disableObject();
	TodoReturn dontCountTowardsLimit();
	TodoReturn duplicateAttributes(GameObject*);
	TodoReturn duplicateColorMode(GameObject*);
	void duplicateValues(GameObject*);
	TodoReturn editorColorForCustomMode(int);
	TodoReturn editorColorForMode(int);
	TodoReturn fastRotateObject(float);
	TodoReturn getActiveColorForMode(int, bool);
	TodoReturn getBallFrame(int) = ios 0x268788;
	TodoReturn getBoundingRect();
	TodoReturn getBoxOffset() = ios 0x262810;
	TodoReturn getColorFrame(gd::string);
	TodoReturn getColorIndex();
	gd::string getColorKey(bool, bool);
	TodoReturn getCustomZLayer();
	TodoReturn getGlowFrame(gd::string) = ios 0x25d91c;
	TodoReturn getGroupDisabled();
	TodoReturn getGroupID(int) = ios 0x265000;
	TodoReturn getGroupString();
	TodoReturn getLastPosition() = ios 0x269f28;
	TodoReturn getMainColor();
	TodoReturn getMainColorMode();
	TodoReturn getObjectDirection();
	TodoReturn getObjectRadius() = ios 0x26a284;
	TodoReturn getObjectRectDirty() = ios 0x236a88;
	TodoReturn getObjectRectPointer() = ios 0x2626d0;
	TodoReturn getObjectZLayer();
	TodoReturn getObjectZOrder() = ios 0x263d0c;
	TodoReturn getOrientedRectDirty() = ios 0x236a98;
	TodoReturn getOuterObjectRect();
	TodoReturn getParentMode();
	TodoReturn getRelativeSpriteColor(int) = ios 0x269770;
	TodoReturn getScalePosDelta();
	TodoReturn getSecondaryColor();
	TodoReturn getSecondaryColorMode();
	TodoReturn getSlopeAngle();
	TodoReturn getStartPos() = ios 0x236ab8;
	TodoReturn getType() = ios 0x236aa8;
	TodoReturn getUnmodifiedPosition() = ios 0x262b28;
	TodoReturn groupColor(cocos2d::ccColor3B const&, bool);
	TodoReturn groupOpacityMod();
	TodoReturn groupWasDisabled() = ios 0x1ecefc;
	TodoReturn groupWasEnabled();
	TodoReturn hasSecondaryColor() = ios 0x26982c;
	bool ignoreEditorDuration();
	TodoReturn ignoreEnter();
	TodoReturn ignoreFade();
	bool init(char const*) = ios 0x25c928;
	bool isBasicEnterEffect(int);
	bool isBasicTrigger();
	bool isColorObject();
	bool isColorTrigger();
	bool isConfigurablePortal();
	bool isEditorSpawnableTrigger();
	bool isFacingDown();
	bool isFacingLeft();
	bool isSettingsObject();
	bool isSpawnableTrigger();
	bool isSpecialObject();
	bool isSpeedObject();
	bool isStoppableTrigger();
	bool isTrigger() = ios 0x26165c;
	void loadGroupsFromString(gd::string);
	TodoReturn makeInvisible() = ios 0x263dfc;
	TodoReturn makeVisible();
	static GameObject* objectFromVector(gd::vector<gd::string>&, gd::vector<void*>&, GJBaseGameLayer*, bool) = ios 0x265b98;
	TodoReturn opacityModForMode(int, bool) = ios 0x269ce4;
	TodoReturn parentForZLayer(int, bool, int);
	TodoReturn perspectiveColorFrame(char const*, int);
	TodoReturn perspectiveFrame(char const*, int);
	void playDestroyObjectAnim(GJBaseGameLayer*) = ios 0x34d3a0;
	TodoReturn playPickupAnimation(cocos2d::CCSprite*, float, float, float, float, float, float, float, float, bool, float, float);
	TodoReturn playPickupAnimation(cocos2d::CCSprite*, float, float, float, float);
	void playShineEffect();
	TodoReturn quickUpdatePosition() = ios 0x262b70;
	TodoReturn quickUpdatePosition2();
	TodoReturn removeColorSprite();
	TodoReturn removeGlow() = ios 0x25d19c;
	TodoReturn reorderColorSprite();
	TodoReturn resetColorGroups();
	TodoReturn resetGroupDisabled();
	TodoReturn resetGroups();
	TodoReturn resetMainColorMode();
	TodoReturn resetMID() = ios 0x25c024;
	TodoReturn resetMoveOffset();
	TodoReturn resetRScaleForced();
	TodoReturn resetSecondaryColorMode();
	void setAreaOpacity(float, float, int);
	void setCustomZLayer(int);
	void setDefaultMainColorMode(int);
	void setDefaultSecondaryColorMode(int) = ios 0x25d8f8;
	void setGlowOpacity(unsigned char) = ios 0x263698;
	void setLastPosition(cocos2d::CCPoint const&) = ios 0x269f30;
	void setMainColorMode(int);
	void setSecondaryColorMode(int);
	TodoReturn setupColorSprite(int, bool);
	TodoReturn setupPixelScale();
	TodoReturn setupSpriteSize();
	TodoReturn shouldBlendColor(GJSpriteColor*, bool) = ios 0x25e384;
	TodoReturn shouldLockX();
	TodoReturn shouldNotHideAnimFreeze();
	TodoReturn shouldShowPickupEffects();
	TodoReturn slopeFloorTop();
	TodoReturn slopeWallLeft();
	TodoReturn slopeYPos(cocos2d::CCRect);
	TodoReturn slopeYPos(float);
	TodoReturn slopeYPos(GameObject*);
	TodoReturn spawnDefaultPickupParticle(GJBaseGameLayer*) = ios 0x34d1d0;
	TodoReturn updateBlendMode() = ios 0x26478c;
	TodoReturn updateCustomColorType(short);
	void updateCustomScaleX(float);
	void updateCustomScaleY(float);
	TodoReturn updateHSVState();
	TodoReturn updateIsOriented();
	TodoReturn updateMainColor();
	TodoReturn updateMainColorOnly();
	TodoReturn updateMainOpacity();
	void updateObjectEditorColor();
	TodoReturn updateSecondaryColor();
	TodoReturn updateSecondaryColorOnly();
	TodoReturn updateSecondaryOpacity();
	TodoReturn updateStartPos() = ios 0x25da2c;
	TodoReturn updateUnmodifiedPositions();
	TodoReturn usesFreezeAnimation();
	TodoReturn usesSpecialAnimation();

	virtual void update(float) = ios 0x25e430;
	virtual void setScaleX(float) = ios 0x2630f0;
	virtual void setScaleY(float) = ios 0x263188;
	virtual void setScale(float) = ios 0x263220;
	virtual void setPosition(cocos2d::CCPoint const&) = ios 0x262bd8;
	virtual void setVisible(bool) = ios 0x263788;
	virtual void setRotation(float) = ios 0x262de4;
	virtual void setRotationX(float) = ios 0x262ebc;
	virtual void setRotationY(float) = ios 0x262f88;
	virtual void setOpacity(unsigned char) = ios 0x26349c;
	virtual bool initWithTexture(cocos2d::CCTexture2D*) = ios 0x25caa4;
	virtual void setChildColor(cocos2d::ccColor3B const&) = ios 0x268bfc;
	virtual void setFlipX(bool) = ios 0x263048;
	virtual void setFlipY(bool) = ios 0x26309c;
	virtual void firstSetup() = ios 0x2369e4;
	virtual void customSetup() = ios 0x25e434;
	virtual void setupCustomSprites(gd::string) = ios 0x2b64d8;
	virtual TodoReturn addMainSpriteToParent(bool) = ios 0x2647f4;
	virtual void resetObject() = ios 0x25dacc;
	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = ios 0x2369e8;
	virtual void activateObject() = ios 0x25defc;
	virtual void deactivateObject(bool) = ios 0x25e280;
	virtual TodoReturn transferObjectRect(cocos2d::CCRect&) = ios 0x262690;
	virtual cocos2d::CCRect const& getObjectRect() = ios 0x262708;
	virtual cocos2d::CCRect getObjectRect(float, float) = ios 0x26271c;
	virtual TodoReturn getObjectRect2(float, float) = ios 0x2628f0;
	virtual TodoReturn getObjectTextureRect() = ios 0x262974;
	virtual cocos2d::CCPoint getRealPosition() = ios 0x262b58;
	virtual void setStartPos(cocos2d::CCPoint) = ios 0x25d9b0;
	virtual void updateStartValues() = ios 0x25de0c;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x2369ec;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x2670b0;
	virtual TodoReturn claimParticle() = ios 0x2638d0;
	virtual TodoReturn unclaimParticle() = ios 0x263d70;
	virtual TodoReturn particleWasActivated() = ios 0x263dc4;
	virtual bool isFlipX() = ios 0x263038;
	virtual bool isFlipY() = ios 0x263040;
	virtual void setRScaleX(float) = ios 0x2632b8;
	virtual void setRScaleY(float) = ios 0x2632ec;
	virtual void setRScale(float) = ios 0x263320;
	virtual TodoReturn getRScaleX() = ios 0x263364;
	virtual TodoReturn getRScaleY() = ios 0x26339c;
	virtual void setRRotation(float) = ios 0x262d60;
	virtual void triggerActivated(float) = ios 0x2369f0;
	virtual void setObjectColor(cocos2d::ccColor3B const&) = ios 0x2688fc;
	virtual void setGlowColor(cocos2d::ccColor3B const&) = ios 0x268ba4;
	virtual TodoReturn restoreObject() = ios 0x263de4;
	virtual TodoReturn animationTriggered() = ios 0x2369f4;
	virtual void selectObject(cocos2d::ccColor3B) = ios 0x268c88;
	virtual TodoReturn activatedByPlayer(PlayerObject*) = ios 0x2369f8;
	virtual TodoReturn hasBeenActivatedByPlayer(PlayerObject*) = ios 0x2369fc;
	virtual TodoReturn hasBeenActivated() = ios 0x236a04;
	virtual TodoReturn getOrientedBox() = ios 0x269250;
	virtual TodoReturn updateOrientedBox() = ios 0x2692e4;
	virtual TodoReturn getObjectRotation() = ios 0x26cec4;
	virtual TodoReturn updateMainColor(cocos2d::ccColor3B const&);
	virtual TodoReturn updateSecondaryColor(cocos2d::ccColor3B const&);
	virtual void addToGroup(int) = ios 0x264ec8;
	virtual void removeFromGroup(int) = ios 0x264f7c;
	virtual TodoReturn saveActiveColors() = ios 0x2687c4;
	virtual TodoReturn spawnXPosition() = ios 0x236a0c;
	virtual TodoReturn canAllowMultiActivate() = ios 0x236a2c;
	virtual TodoReturn blendModeChanged() = ios 0x236a34;
	virtual TodoReturn updateParticleColor(cocos2d::ccColor3B const&) = ios 0x268adc;
	virtual TodoReturn updateParticleOpacity(unsigned char) = ios 0x263700;
	virtual TodoReturn updateMainParticleOpacity(unsigned char) = ios 0x236a38;
	virtual TodoReturn updateSecondaryParticleOpacity(unsigned char) = ios 0x236a3c;
	virtual TodoReturn canReverse() = ios 0x236a40;
	virtual bool isSpecialSpawnObject() = ios 0x236a48;
	virtual TodoReturn canBeOrdered() = ios 0x236a50;
	virtual TodoReturn getObjectLabel() = ios 0x236a58;
	virtual void setObjectLabel(cocos2d::CCLabelBMFont*) = ios 0x236a60;
	virtual TodoReturn shouldDrawEditorHitbox() = ios 0x26a7f4;
	virtual TodoReturn getHasSyncedAnimation() = ios 0x236a64;
	virtual TodoReturn getHasRotateAction() = ios 0x236a6c;
	virtual TodoReturn canMultiActivate(bool) = ios 0x236a74;
	virtual TodoReturn updateTextKerning(int) = ios 0x236a7c;
	virtual TodoReturn getTextKerning() = ios 0x236a80;
	virtual void setObjectRectDirty(bool) = ios 0x236a90;
	virtual void setOrientedRectDirty(bool) = ios 0x236aa0;
	virtual void setType(GameObjectType) = ios 0x236ab0;

	PAD = android32 0x5, win 0x5, android64 0x5, ios 0x5;

	int m_innerSectionIndex;
	int m_outerSectionIndex;
	int m_middleSectionIndex;

	// property 511
	bool m_hasExtendedCollision;
	PAD = android32 0x13, win 0x13, android64 0x13, ios 0x13;

	// somehow related to property 155 and 156 if anyone wants to reverse engineer
	int m_activeMainColorID;
	int m_activeDetailColorID;

	PAD = android32 0x4c, win 0x4c, android64 0x54, ios 0x54;

	cocos2d::CCSprite* m_glowSprite;

	PAD = android32 0x8, win 0x4, android64 0x4, ios 0x4;

	float m_unk288;
	float m_unk28c;

	PAD = android32 0x8, win 0x8, android64 0x8, ios 0x8;

	gd::string m_particleString;

	PAD = android32 0x1, win 0x1, android64 0x1, ios 0x1;

	// property 146
	bool m_particleUseObjectColor;
	PAD = android32 0x3e, win 0x3e, android64 0x3e, ios 0x3e;

	// property 108
	int m_linkedGroup;

	PAD = android32 0xc, win 0xc, android64 0xc, ios 0xc;

	cocos2d::CCSprite* m_colorSprite;

	PAD = android32 0x13, win 0x13, android64 0x13, ios 0x13;

	int m_uniqueID;
	GameObjectType m_objectType;

	PAD = android32 0x10, win 0x10, android64 0x10, ios 0x10;
	double m_realXPosition;
	double m_realYPosition;
	cocos2d::CCPoint m_startPosition;
	PAD = android32 0x1, win 0x1, android64 0x1, ios 0x1;

	// property 372
	bool m_hasNoAudioScale;
	PAD = android32 0x12, win 0x12, android64 0x12, ios 0x12;

	float m_currentScaleX;
	float m_currentScaleY;

	PAD = android32 0x10, win 0x10, android64 0x10, ios 0x10;

	// property 343
	short m_enterChannel;
	// property 446
	short m_objectMaterial;
	PAD = android32 0x4, win 0x4, android64 0x4, ios 0x4;

	// property 96
	bool m_hasNoGlow;

	// property 23
	int m_targetColor;

	// property 1
	int m_objectID;
	PAD = android32 0x8, win 0x8, android64 0x8, ios 0x8;

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
	PAD = android32 0x16, win 0x16, android64 0x16, ios 0x16;

	// property 53
	int m_property53;
	PAD = android32 0x18, win 0x18, android64 0x18, ios 0x18;

	// property 21, also used with 41 and 43
	GJSpriteColor* m_baseColor;
	// property 22, also used with 42 and 44
	GJSpriteColor* m_detailColor;
	PAD = android32 0xc, win 0xc, android64 0xc, ios 0xc;

	// property 24
	ZLayer m_zLayer;
	// property 25
	int m_zOrder;
	PAD = android32 0x1, win 0x1, android64 0x1, ios 0x1;

	bool m_isSelected;

	PAD = android32 0xe, win 0xe, android64 0xe, ios 0xe;

	bool m_shouldUpdateColorSprite; // m_shouldUpdateColorSprite
	PAD = android32 0x1, win 0x1, android64 0x1, ios 0x1;

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
	PAD = android32 0x8, win 0x8, android64 0x8, ios 0x8;

	// property 121
	bool m_isNoTouch;
	PAD = android32 0x9, win 0x9, android64 0x9, ios 0x9;

	cocos2d::CCPoint m_lastPosition;

	PAD = android32 0x1b, win 0x1b, android64 0x1b, ios 0x1b;

	// property 103
	bool m_isHighDetail;
	PAD = android32 0x11, win 0x11, android64 0x21, ios 0x21;

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
	PAD = android32 0x11, win 0x11, android64 0x11, ios 0x11;

	// property 155
	int m_property155;
	// property 156
	int m_property156;

	PAD = android32 0x12, win 0x1e, android64 0x12, ios 0x12; // TODO: yeah someone pls fix windows pads
}

[[link(android)]]
class GameObjectCopy : cocos2d::CCObject {
	// virtual ~GameObjectCopy();

	static GameObjectCopy* create(GameObject*);

	bool init(GameObject*);
	void resetObject();

	GameObject* m_object;
}

[[link(android)]]
class GameObjectEditorState {
	TodoReturn loadValues(GameObject*);
}

[[link(android)]]
class GameOptionsLayer : GJOptionsLayer {
	// virtual ~GameOptionsLayer();

	static GameOptionsLayer* create(GJBaseGameLayer*);

	bool init(GJBaseGameLayer*);
	void onPracticeMusicSync(cocos2d::CCObject* sender);
	void onUIOptions(cocos2d::CCObject* sender);
	void onUIPOptions(cocos2d::CCObject* sender);
	void showPracticeMusicSyncUnlockInfo();

	virtual void setupOptions() = ios 0x2e8d24;
	virtual void didToggle(int) = ios 0x2e9678;
}

[[link(android)]]
class GameOptionsTrigger : EffectGameObject {
	// virtual ~GameOptionsTrigger();

	static GameOptionsTrigger* create(char const*);

	bool init(char const*);

	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x37e568;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x37df10;
}

[[link(android)]]
class GameRateDelegate {
	virtual void updateRate();
}

[[link(android)]]
class GameStatsManager : cocos2d::CCNode {
	// virtual ~GameStatsManager();

	static GameStatsManager* sharedState() = ios 0x32b8b0;

	int accountIDForIcon(int, UnlockType);
	TodoReturn addSimpleSpecialChestReward(gd::string, UnlockType, int, bool);
	void addSpecialRewardDescription(gd::string, gd::string);
	TodoReturn addStoreItem(int, int, int, int, ShopType);
	TodoReturn areChallengesLoaded() = ios 0x338f20;
	TodoReturn areRewardsLoaded() = ios 0x33891c;
	void awardCurrencyForLevel(GJGameLevel*);
	TodoReturn awardDiamondsForLevel(GJGameLevel*);
	TodoReturn awardSecretKey() = ios 0x342758;
	TodoReturn checkAchievement(char const*);
	TodoReturn checkCoinAchievement(GJGameLevel*) = ios 0x335da0;
	void checkCoinsForLevel(GJGameLevel*);
	TodoReturn claimListReward(GJLevelList*) = ios 0x339714;
	TodoReturn collectReward(GJRewardType, GJRewardItem*);
	TodoReturn collectVideoReward(int);
	void completedChallenge(GJChallengeItem*);
	void completedDailyLevel(GJGameLevel*);
	void completedDemonLevel(GJGameLevel*);
	void completedLevel(GJGameLevel*) = ios 0x3365a0;
	void completedMapPack(GJMapPack*);
	void completedStarLevel(GJGameLevel*);
	TodoReturn countSecretChests(GJRewardType);
	TodoReturn countUnlockedSecretChests(GJRewardType);
	TodoReturn createSecretChestItems();
	TodoReturn createSecretChestRewards();
	TodoReturn createSpecialChestItems() = ios 0x32db90;
	TodoReturn createStoreItems();
	void dataLoaded(DS_Dictionary*) = ios 0x34349c;
	void encodeDataTo(DS_Dictionary*) = ios 0x34310c;
	void firstSetup() = ios 0x342804;
	TodoReturn generateItemUnlockableData();
	int getAwardedCurrencyForLevel(GJGameLevel*);
	TodoReturn getAwardedDiamondsForLevel(GJGameLevel*);
	TodoReturn getBaseCurrency(int, bool, int);
	int getBaseCurrencyForLevel(GJGameLevel*);
	TodoReturn getBaseDiamonds(int);
	TodoReturn getBonusDiamonds(int) = ios 0x338314;
	GJChallengeItem* getChallenge(int) = ios 0x339244;
	TodoReturn getChallengeKey(GJChallengeItem*) = ios 0x33944c;
	int getCollectedCoinsForLevel(GJGameLevel*);
	TodoReturn getCompletedMapPacks() = ios 0x336d34;
	TodoReturn getCurrencyKey(GJGameLevel*);
	TodoReturn getDailyLevelKey(int);
	TodoReturn getDemonLevelKey(GJGameLevel*) = ios 0x3361ec;
	gd::string getGauntletRewardKey(int) = ios 0x33b594; // NOT FULLY SURE
	TodoReturn getItemKey(int, int) = ios 0x3314d4;
	int getItemUnlockState(int, UnlockType) = ios 0x33b2a0;
	int getItemUnlockStateLite(int, UnlockType);
	gd::string getLevelKey(GJGameLevel*) = ios 0x336088;
	gd::string getLevelKey(int, bool, bool, bool) = ios 0x3360c0;
	TodoReturn getListRewardKey(GJLevelList*) = ios 0x339660;
	char const* getMapPackKey(int);
	TodoReturn getNextVideoAdReward();
	TodoReturn getPathRewardKey(int);
	GJChallengeItem* getQueuedChallenge(int);
	TodoReturn getRewardForSecretChest(int);
	TodoReturn getRewardForSpecialChest(gd::string) = ios 0x33b828;
	TodoReturn getRewardItem(GJRewardType);
	TodoReturn getRewardKey(GJRewardType, int);
	GJChallengeItem* getSecondaryQueuedChallenge(int);
	TodoReturn getSecretChestForItem(int, UnlockType);
	TodoReturn getSecretCoinKey(char const*);
	TodoReturn getSpecialChestKeyForItem(int, UnlockType);
	TodoReturn getSpecialRewardDescription(gd::string, bool);
	TodoReturn getSpecialUnlockDescription(int, UnlockType, bool);
	TodoReturn getStarLevelKey(GJGameLevel*) = ios 0x33625c;
	int getStat(char const*) = ios 0x3319b4;
	TodoReturn getStatFromKey(StatKey);
	TodoReturn getStoreItem(int, int);
	TodoReturn getStoreItem(int);
	int getTotalCollectedCurrency() = ios 0x339cdc;
	int getTotalCollectedDiamonds();
	bool hasClaimedListReward(GJLevelList*) = ios 0x3396a4;
	bool hasCompletedChallenge(GJChallengeItem*);
	bool hasCompletedDailyLevel(int) = ios 0x339854;
	bool hasCompletedDemonLevel(GJGameLevel*);
	bool hasCompletedGauntletLevel(int);
	bool hasCompletedLevel(GJGameLevel* level) {
		return m_completedLevels->objectForKey(this->getLevelKey(level)) != nullptr;
	}
	bool hasCompletedMainLevel(int levelID) {
		return m_completedLevels->objectForKey(this->getLevelKey(levelID, false, false, false)) != nullptr;
	}
	bool hasCompletedMapPack(int) = ios 0x336b84;
	bool hasCompletedOnlineLevel(int) = ios 0x3363b8;
	bool hasCompletedStarLevel(GJGameLevel*);
	bool hasPendingUserCoin(char const*);
	bool hasRewardBeenCollected(GJRewardType, int);
	bool hasSecretCoin(char const*) = ios 0x336000;
	bool hasUserCoin(char const*);
	TodoReturn incrementActivePath(int);
	TodoReturn incrementChallenge(GJChallengeType, int) = ios 0x335184;
	TodoReturn incrementStat(char const*, int);
	TodoReturn incrementStat(char const*);
	bool isGauntletChestUnlocked(int);
	bool isItemEnabled(UnlockType, int) = ios 0x33b328;
	bool isItemUnlocked(UnlockType, int) = ios 0x335434;
	bool isPathChestUnlocked(int);
	bool isPathUnlocked(StatKey);
	bool isSecretChestUnlocked(int);
	bool isSecretCoin(gd::string);
	bool isSecretCoinValid(gd::string) = ios 0x3379b4;
	bool isSpecialChestLiteUnlockable(gd::string);
	bool isSpecialChestUnlocked(gd::string) = ios 0x33b224;
	bool isStoreItemUnlocked(int) = ios 0x331778;
	TodoReturn keyCostForSecretChest(int) = ios 0x33aec4;
	TodoReturn logCoins();
	TodoReturn markLevelAsCompletedAndClaimed(GJGameLevel*);
	TodoReturn postLoadGameStats();
	TodoReturn preProcessReward(GJRewardItem*);
	TodoReturn preSaveGameStats() = ios 0x343364;
	TodoReturn processChallengeQueue(int);
	TodoReturn purchaseItem(int);
	TodoReturn recountSpecialStats() = ios 0x33a490;
	TodoReturn recountUserCoins(bool) = ios 0x337158;
	TodoReturn registerRewardsFromItem(GJRewardItem*);
	TodoReturn removeChallenge(int);
	TodoReturn removeErrorFromSpecialChests();
	TodoReturn removeQueuedChallenge(int);
	TodoReturn removeQueuedSecondaryChallenge(int);
	TodoReturn resetChallengeTimer();
	TodoReturn resetPreSync();
	TodoReturn resetSpecialChest(gd::string);
	TodoReturn resetSpecialStatAchievements() = ios 0x33af08;
	TodoReturn resetUserCoins();
	TodoReturn restorePostSync();
	void setAwardedBonusKeys(int);
	void setStarsForMapPack(int, int) = ios 0x336c0c;
	void setStat(char const*, int) = ios 0x331a98;
	void setStatIfHigher(char const*, int);
	TodoReturn setupIconCredits();
	TodoReturn shopTypeForItemID(int);
	TodoReturn shouldAwardSecretKey();
	TodoReturn starsForMapPack(int) = ios 0x336cac;
	TodoReturn storeChallenge(int, GJChallengeItem*);
	TodoReturn storeChallengeTime(int);
	TodoReturn storePendingUserCoin(char const*);
	TodoReturn storeQueuedChallenge(int, GJChallengeItem*);
	TodoReturn storeRewardState(GJRewardType, int, int, gd::string);
	TodoReturn storeSecondaryQueuedChallenge(int, GJChallengeItem*);
	TodoReturn storeSecretCoin(char const*) = ios 0x337930;
	void storeUserCoin(char const*);
	TodoReturn tempClear();
	void toggleEnableItem(UnlockType, int, bool);
	TodoReturn tryFixPathBug() = ios 0x335694;
	TodoReturn trySelectActivePath();
	TodoReturn uncompleteLevel(GJGameLevel*);
	TodoReturn unlockGauntletChest(int) = ios 0x33b928;
	TodoReturn unlockPathChest(int);
	TodoReturn unlockSecretChest(int);
	TodoReturn unlockSpecialChest(gd::string) = ios 0x33b830;
	TodoReturn updateActivePath(StatKey);
	gd::string usernameForAccountID(int) = ios 0x6ed9c;
	TodoReturn verifyPathAchievements() = ios 0x335c88;
	TodoReturn verifyUserCoins() = ios 0x337594;

	virtual bool init() = ios 0x32ba40;

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
	static void addBackButton(cocos2d::CCLayer*, cocos2d::CCMenuItem*) = ios 0x4d880;
	static void addRThumbScrollButton(cocos2d::CCLayer*) = ios 0x4d964;
	static void alignItemsHorisontally(cocos2d::CCArray*, float, cocos2d::CCPoint, bool) = ios 0x4c9d4;
	static void alignItemsVertically(cocos2d::CCArray*, float, cocos2d::CCPoint) = ios 0x4cbac;
	static TodoReturn bounceTime(float);
	static TodoReturn colorToSepia(cocos2d::ccColor3B, float);
	static TodoReturn contentScaleClipRect(cocos2d::CCRect&);
	static TodoReturn createHashString(gd::string const&, int);
	static CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCArray*);
	static CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, float, float, float, cocos2d::CCPoint, char const*, bool, int, cocos2d::CCArray*);
	static TodoReturn doWeHaveInternet() = ios 0x4cd48;
	static TodoReturn easeToText(int);
	static TodoReturn fast_rand_0_1();
	static TodoReturn fast_rand_minus1_1();
	static TodoReturn fast_rand();
	static void fast_srand(unsigned long) = ios 0x4eaa8;
	static TodoReturn gen_random(int) = ios 0x4e9c4;
	static TodoReturn getDropActionWDelay(float, float, float, cocos2d::CCNode*, cocos2d::SEL_CallFunc);
	static TodoReturn getDropActionWEnd(float, float, float, cocos2d::CCAction*, float);
	static TodoReturn getEasedAction(cocos2d::CCActionInterval*, int, float);
	static TodoReturn getEasedValue(float, int, float) = ios 0x2412c;
	static int getfast_srand();
	static TodoReturn getInvertedEasing(int);
	static TodoReturn getLargestMergedIntDicts(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
	static TodoReturn getMultipliedHSV(cocos2d::ccHSVValue const&, float);
	static TodoReturn getRelativeOffset(GameObject*, cocos2d::CCPoint);
	static TodoReturn getResponse(cocos2d::extension::CCHttpResponse*);
	static gd::string getTimeString(int) = ios 0x4e8bc;
	static TodoReturn hsvFromString(gd::string const&, char const*);
	static TodoReturn intToShortString(int);
	static gd::string intToString(int) = ios 0x51184;
	static bool isIOS();
	static bool isRateEasing(int);
	static TodoReturn mergeDictsSaveLargestInt(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
	static TodoReturn mergeDictsSkipConflict(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
	static gd::string msToTimeString(int, int) = ios 0x516b8;
	static TodoReturn multipliedColorValue(cocos2d::ccColor3B, cocos2d::ccColor3B, float);
	static TodoReturn openAppPage();
	static TodoReturn openRateURL(gd::string, gd::string);
	static TodoReturn particleFromString(gd::string const&, cocos2d::CCParticleSystemQuad*, bool) = ios 0x506f4;
	static TodoReturn particleFromStruct(cocos2d::ParticleStruct const&, cocos2d::CCParticleSystemQuad*, bool) = ios 0x507c8;
	static TodoReturn particleStringToStruct(gd::string const&, cocos2d::ParticleStruct&) = ios 0x4fd70;
	static gd::string pointsToString(int) = ios 0x51800;
	static TodoReturn postClipVisit() = ios 0x4d088;
	static TodoReturn preVisitWithClippingRect(cocos2d::CCNode*, cocos2d::CCRect) = ios 0x4cfa4;
	static TodoReturn preVisitWithClipRect(cocos2d::CCRect);
	static TodoReturn saveParticleToString(cocos2d::CCParticleSystemQuad*);
	static TodoReturn saveStringToFile(gd::string const&, gd::string const&);
	static TodoReturn stringFromHSV(cocos2d::ccHSVValue, char const*);
	static cocos2d::CCDictionary* stringSetupToDict(gd::string const&, char const*) = ios 0x4e50c;
	static TodoReturn stringSetupToMap(gd::string const&, char const*, gd::map<gd::string, gd::string>&);
	static TodoReturn strongColor(cocos2d::ccColor3B) = ios 0x4e828;
	static gd::string timestampToHumanReadable(time_t);
	static TodoReturn transformColor(cocos2d::ccColor3B const&, cocos2d::ccHSVValue);
	static TodoReturn transformColor(cocos2d::ccColor3B const&, float, float, float);
}

[[link(android)]]
class GauntletLayer : cocos2d::CCLayer, LevelManagerDelegate {
	// virtual ~GauntletLayer();

	static GauntletLayer* create(GauntletType);

	bool init(GauntletType) = ios 0x23ae3c;
	void onBack(cocos2d::CCObject* sender);
	void onLevel(cocos2d::CCObject* sender);
	static cocos2d::CCScene* scene(GauntletType) = ios 0x23ad34;
	TodoReturn setupGauntlet(cocos2d::CCArray*) = ios 0x23b4a4;
	TodoReturn unlockActiveItem() = ios 0x23c644;

	virtual void keyBackClicked() = ios 0x23ca3c;
	virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) = ios 0x23c318;
	virtual void loadLevelsFailed(char const*, int) = ios 0x23c470;
}

[[link(android)]]
class GauntletNode : cocos2d::CCNode {
	// virtual ~GauntletNode();

	static GauntletNode* create(GJMapPack*) = ios 0x1c4a24;

	TodoReturn frameForType(GauntletType) = ios 0x1c65ec;
	bool init(GJMapPack*) = ios 0x1c5140;
	static gd::string nameForType(GauntletType);
	TodoReturn onClaimReward();
}

[[link(android)]]
class GauntletSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate, LevelManagerDelegate {
	// virtual ~GauntletSelectLayer();

	static GauntletSelectLayer* create(int);

	void goToPage(int, bool) = ios 0x1c4e54;
	bool init(int) = ios 0x1c37bc;
	void onBack(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender) = ios 0x1c425c;
	void onNext(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender) = ios 0x1c4aa8;
	void onPrev(cocos2d::CCObject* sender);
	void onRefresh(cocos2d::CCObject* sender);
	static cocos2d::CCScene* scene(int);
	void setupGauntlets() = ios 0x1c439c;
	TodoReturn unblockPlay();
	TodoReturn updateArrows();

	virtual void onExit() = ios 0x1c50d8;
	virtual void keyBackClicked() = ios 0x1c508c;
	virtual void scrollLayerWillScrollToPage(BoomScrollLayer*, int) = ios 0x1c4fec;
	virtual void scrollLayerScrolledToPage(BoomScrollLayer*, int) = ios 0x1c4f4c;
	virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) = ios 0x1c47d8;
	virtual void loadLevelsFailed(char const*, int) = ios 0x1c4960;
}

[[link(android)]]
class GauntletSprite : cocos2d::CCNode {
	// virtual ~GauntletSprite();

	static GauntletSprite* create(GauntletType, bool) = ios 0x23c540;

	TodoReturn addLockedSprite() = ios 0x23cbac;
	TodoReturn addNormalSprite();
	TodoReturn colorForType(GauntletType);
	bool init(GauntletType, bool);
	TodoReturn luminanceForType(GauntletType);
	TodoReturn toggleLockedSprite(bool);
}

[[link(android)]]
class GhostTrailEffect : cocos2d::CCNode {
	// virtual ~GhostTrailEffect();

	static GhostTrailEffect* create();

	TodoReturn doBlendAdditive();
	TodoReturn runWithTarget(cocos2d::CCSprite*, float, float, float, float, bool);
	TodoReturn stopTrail() = ios 0x2fc450;
	TodoReturn trailSnapshot(float);

	virtual bool init() = ios 0x2fbf48;
	virtual void draw() {}
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

	static GJAccountManager* sharedState() = ios 0x39c7b0;

	void addDLToActive(char const* tag, cocos2d::CCObject*);
	void addDLToActive(char const* tag);
	bool backupAccount(gd::string) = ios 0x39e7bc;
	void dataLoaded(DS_Dictionary*) = ios 0x39f2b4;
	void encodeDataTo(DS_Dictionary*) = ios 0x39f25c;
	void firstSetup() = ios 0x39f258;
	void getAccountBackupURL() = ios 0x39e5f8;
	void getAccountSyncURL() = ios 0x39eaf8;
	cocos2d::CCObject* getDLObject(char const*);
	gd::string getShaPassword(gd::string);
	void handleIt(bool, gd::string, gd::string, GJHttpType) = ios 0x39ca84;
	void handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	void handleItND(cocos2d::CCNode*, void*);
	bool isDLActive(char const* tag) = ios 0x39de18;
	void linkToAccount(gd::string, gd::string, int, int) = ios 0x39ee80;
	void loginAccount(gd::string, gd::string) = ios 0x39e18c;
	void onBackupAccountCompleted(gd::string, gd::string);
	void onGetAccountBackupURLCompleted(gd::string, gd::string);
	void onGetAccountSyncURLCompleted(gd::string, gd::string);
	void onLoginAccountCompleted(gd::string, gd::string);
	void onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	void onRegisterAccountCompleted(gd::string, gd::string) = ios 0x39d0cc;
	void onSyncAccountCompleted(gd::string, gd::string);
	void onUpdateAccountSettingsCompleted(gd::string, gd::string);
	void ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	void registerAccount(gd::string, gd::string, gd::string) = ios 0x39df54;
	void removeDLFromActive(char const*) = ios 0x39def0;
	bool syncAccount(gd::string) = ios 0x39ecbc;
	void unlinkFromAccount();
	void updateAccountSettings(int, int, int, gd::string, gd::string, gd::string) = ios 0x39f018;

	virtual bool init() = ios 0x39dde0;

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
	virtual TodoReturn updateSettingsFinished();
	virtual TodoReturn updateSettingsFailed();
}

[[link(android)]]
class GJAccountSettingsLayer : FLAlertLayer, TextInputDelegate {
	// virtual ~GJAccountSettingsLayer();

	static GJAccountSettingsLayer* create(int) = ios 0x2dd7c8;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float) = ios 0x2debe0;
	bool init(int) = ios 0x2dd898;
	void onClose(cocos2d::CCObject* sender);
	void onCommentSetting(cocos2d::CCObject* sender) = ios 0x2def00;
	void onFriendRequests(cocos2d::CCObject* sender) = ios 0x2dee68;
	void onMessageSetting(cocos2d::CCObject* sender) = ios 0x2dedd0;
	void onUpdate(cocos2d::CCObject* sender);
	TodoReturn updateScoreValues();

	virtual void keyBackClicked() = ios 0x2df638;
	virtual void textInputShouldOffset(CCTextInputNode*, float) = ios 0x2df2a4;
	virtual void textInputReturn(CCTextInputNode*) = ios 0x2df310;
}

[[link(android)]]
class GJAccountSyncDelegate {
	virtual TodoReturn syncAccountFinished();
	virtual TodoReturn syncAccountFailed(BackupAccountError, int);
}

[[link(android)]]
class GJActionManager : cocos2d::CCNode {
	// virtual ~GJActionManager();

	static GJActionManager* create();

	TodoReturn getInternalAction(int);
	TodoReturn runInternalAction(cocos2d::CCAction*, cocos2d::CCNode*) = ios 0x305294;
	TodoReturn stopAllInternalActions() = ios 0x305320;
	TodoReturn stopInternalAction(int) = ios 0x3052d0;
	TodoReturn updateInternalActions(float, bool);

	virtual bool init() = ios 0x30525c;
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

	static GJBaseGameLayer* get() {
		return GameManager::get()->m_gameLayer;
	}

	void activateCustomRing(RingObject*);
	TodoReturn activatedAudioTrigger(SFXTriggerGameObject*, float);
	TodoReturn activateEventTrigger(EventLinkTrigger*, gd::vector<int> const&);
	TodoReturn activateItemCompareTrigger(ItemTriggerGameObject*, gd::vector<int> const&);
	TodoReturn activateItemEditTrigger(ItemTriggerGameObject*);
	void activateObjectControlTrigger(ObjectControlGameObject*);
	TodoReturn activatePersistentItemTrigger(ItemTriggerGameObject*);
	void activatePlayerControlTrigger(PlayerControlGameObject*);
	TodoReturn activateResetTrigger(EffectGameObject*);
	void activateSFXEditTrigger(SFXTriggerGameObject*);
	void activateSFXTrigger(SFXTriggerGameObject*);
	TodoReturn activateSongEditTrigger(SongTriggerGameObject*) = ios 0x206f6c;
	void activateSongTrigger(SongTriggerGameObject*);
	TodoReturn activateTimerTrigger(TimerTriggerGameObject*, gd::vector<int> const&);
	TodoReturn addAreaEffect(EnterEffectObject*, gd::vector<EnterEffectInstance>*, GJAreaActionType);
	void addCustomEnterEffect(EnterEffectObject*, bool);
	TodoReturn addGuideArt(GameObject*) = ios 0x20b850;
	void addObjectCounter(LabelGameObject*);
	TodoReturn addPickupTrigger(CountTriggerGameObject*);
	TodoReturn addPoints(int);
	void addProximityVolumeEffect(int, int, SFXTriggerGameObject*);
	TodoReturn addRemapTargets(gd::set<int>&);
	void addToGroupParents(GameObject*) = ios 0x1f673c;
	void addToGroups(GameObject*, bool) = ios 0x1f6134;
	TodoReturn addToObjectsToShow(GameObject*);
	TodoReturn addUIObject(GameObject*) = ios 0x1f6e88;
	void animateInDualGroundNew(GameObject*, float, bool, float);
	TodoReturn animateInGroundNew(bool, float, bool);
	void animateOutGroundNew(bool) = ios 0x1ea0b8;
	TodoReturn animatePortalY(float, float, float, float);
	TodoReturn applyLevelSettings(GameObject*) = ios 0x205f50;
	TodoReturn applyRemap(EffectGameObject*, gd::vector<int> const&, gd::unordered_map<int, int>&);
	void applySFXEditTrigger(int, int, SFXTriggerGameObject*) = ios 0x209654;
	void applyShake(cocos2d::CCPoint&) = ios 0x207844;
	void assignNewStickyGroups(cocos2d::CCArray*);
	TodoReturn asyncBGLoaded(int);
	TodoReturn asyncGLoaded(int) = ios 0x1e0e84;
	TodoReturn asyncMGLoaded(int) = ios 0x1e10bc;
	TodoReturn atlasValue(int);
	void bumpPlayer(PlayerObject*, EffectGameObject*);
	TodoReturn buttonIDToButton(int);
	TodoReturn calculateColorGroups() = ios 0x1e56fc;
	TodoReturn cameraMoveX(float, float, float, bool);
	TodoReturn cameraMoveY(float, float, float, bool);
	bool canBeActivatedByPlayer(PlayerObject*, EffectGameObject*);
	TodoReturn canProcessSFX(SFXTriggerState&, gd::unordered_map<int, int>&, gd::unordered_map<int, float>&, gd::vector<SFXTriggerState>&);
	TodoReturn canTouchObject(GameObject*);
	TodoReturn checkCameraLimitAfterTeleport(PlayerObject*, float);
	TodoReturn checkCollision(int, int);
	TodoReturn checkCollisionBlocks(EffectGameObject*, gd::vector<EffectGameObject*>*, int) = ios 0x1eea28;
	int checkCollisions(PlayerObject*, float, bool) = ios 0x1ea648;
	TodoReturn checkRepellPlayer() = ios 0x203ab4;
	TodoReturn checkSpawnObjects() = ios 0x1ef51c;
	TodoReturn claimMoveAction(int, bool) = ios 0x1fd068;
	TodoReturn claimParticle(gd::string, int) = ios 0x208c50;
	TodoReturn claimRotationAction(int, int, float&, float&, bool, bool);
	TodoReturn clearActivatedAudioTriggers() = ios 0x206900;
	TodoReturn clearPickedUpItems() = ios 0x41f23c;
	TodoReturn collectedObject(EffectGameObject*);
	void collisionCheckObjects(PlayerObject*, gd::vector<GameObject*>*, int, float);
	TodoReturn controlAdvancedFollowCommand(AdvancedFollowTriggerObject*, int, GJActionCommand);
	TodoReturn controlAreaEffect(EnterEffectObject*, gd::vector<EnterEffectInstance>*, GJActionCommand);
	TodoReturn controlAreaEffectWithID(int, int, GJActionCommand);
	TodoReturn controlDynamicCommand(EffectGameObject*, int, gd::vector<DynamicObjectAction>&, GJActionCommand);
	TodoReturn controlDynamicMoveCommand(EffectGameObject*, int, GJActionCommand);
	TodoReturn controlDynamicRotateCommand(EffectGameObject*, int, GJActionCommand);
	TodoReturn controlEventLink(int, int, GJActionCommand);
	TodoReturn controlGradientTrigger(GradientTriggerObject*, GJActionCommand);
	TodoReturn controlTriggersInGroup(int, GJActionCommand);
	TodoReturn controlTriggersWithControlID(int, GJActionCommand);
	TodoReturn convertToClosestDirection(float, float) = ios 0x1f3080;
	void createBackground(int) = ios 0x1e0970;
	void createGroundLayer(int, int) = ios 0x1e0eac;
	void createMiddleground(int) = ios 0x1e1034;
	TodoReturn createNewKeyframeAnim();
	TodoReturn createParticle(int, char const*, int, cocos2d::tCCPositionType) = ios 0x2089a0;
	TodoReturn createPlayer() = ios 0x1e0630;
	TodoReturn createPlayerCollisionBlock() = ios 0x1ee248;
	TodoReturn createTextLayers() = ios 0x1e65bc;
	TodoReturn damagingObjectsInRect(cocos2d::CCRect, bool) = ios 0x1e8718;
	void destroyObject(GameObject*) = ios 0x1ecd1c;
	TodoReturn enterDualMode(GameObject*, bool);
	TodoReturn exitStaticCamera(bool, bool, float, int, float, bool, float, bool);
	TodoReturn flipFinished() = ios 0x2057f0;
	TodoReturn flipGravity(PlayerObject*, bool, bool) = ios 0x1e9af0;
	TodoReturn flipObjects();
	TodoReturn gameEventToString(GJGameEvent);
	void gameEventTriggered(GJGameEvent, int, int) = ios 0x1e7bd0;
	TodoReturn generateEnterEasingBuffer(int, float) = ios 0x1e6190;
	TodoReturn generateEnterEasingBuffers(EnterEffectObject*) = ios 0x1e614c;
	TodoReturn generatePickupAnimRandVal(GameObject*, float&, float&);
	TodoReturn generateSpawnRemap() = ios 0x1e2bc8;
	TodoReturn generateTargetGroups() = ios 0x1e3fd8;
	TodoReturn generateVisibilityGroups() = ios 0x1e4ecc;
	TodoReturn getActiveOrderSpawnObjects();
	TodoReturn getAreaObjectValue(EnterEffectInstance*, GameObject*, cocos2d::CCPoint&, bool&) = ios 0x1fa800;
	TodoReturn getBumpMod(PlayerObject*, int);
	TodoReturn getCameraEdgeValue(int) = ios 0x2014c0;
	TodoReturn getCapacityString() = ios 0x1e6414;
	TodoReturn getCenterGroupObject(int, int);
	TodoReturn getCustomEnterEffects(int, bool) = ios 0x1e6054;
	TodoReturn getEasedAreaValue(GameObject*, EnterEffectInstance*, float, bool, int);
	TodoReturn getEnterEasingKey(int, float);
	TodoReturn getEnterEasingValue(float, int, float, int);
	TodoReturn getFollowSpeedVal(GameObject*, int, int, float, float);
	float getGroundHeight(PlayerObject*, int);
	TodoReturn getGroundHeightForMode(int);
	TodoReturn getGroup(int) = ios 0x1e5868;
	TodoReturn getGroupParent(int);
	TodoReturn getGroupParentsString(GameObject*);
	TodoReturn getItemValue(int, int);
	TodoReturn getMaxPortalY() = ios 0x1ea5d0;
	TodoReturn getMinDistance(cocos2d::CCPoint, cocos2d::CCArray*, float, int);
	TodoReturn getMinPortalY() = ios 0x1ea500;
	TodoReturn getModifiedDelta(float) = ios 0x202bdc;
	TodoReturn getMoveTargetDelta(EffectGameObject*, bool) = ios 0x1eebf8;
	TodoReturn getOptimizedGroup(int) = ios 0x1f621c;
	TodoReturn getOtherPlayer(PlayerObject*) = ios 0x1e8d74;
	TodoReturn getParticleKey(int, char const*, int, cocos2d::tCCPositionType) = ios 0x2087d8;
	TodoReturn getParticleKey2(gd::string) = ios 0x20894c;
	TodoReturn getPlayerButtonID(int, bool);
	TodoReturn getPlayTimerFullSeconds();
	TodoReturn getPlayTimerMilli() = ios 0x205828;
	TeleportPortalObject* getPortalTarget(TeleportPortalObject*) = ios 0x1ff4d0;
	cocos2d::CCPoint getPortalTargetPos(TeleportPortalObject*, GameObject*, PlayerObject*);
	TodoReturn getRecordString();
	TodoReturn getRotateCommandTargets(EnhancedTriggerObject*, GameObject*&, GameObject*&, GameObject*&);
	TodoReturn getSavedPosition(int, float);
	TodoReturn getScaledGroundHeight(float);
	TodoReturn getSingleGroupObject(int) = ios 0x1f64dc;
	TodoReturn getSpecialKey(int, bool, bool);
	TodoReturn getStaticGroup(int) = ios 0x1f6284;
	TodoReturn getStickyGroup(int);
	TodoReturn getTargetFlyCameraY(GameObject*);
	TodoReturn getTargetGroup(int, int);
	TodoReturn getTargetGroupOrigin(int, int);
	TodoReturn gravBumpPlayer(PlayerObject*, EffectGameObject*);
	void groupStickyObjects(cocos2d::CCArray*) = ios 0x1f6aa0;
	void handleButton(bool down, int button, bool isPlayer1) = ios 0x1fed20; // button may be a PlayerButton enum
	TodoReturn hasItem(int);
	bool hasUniqueCoin(EffectGameObject*) = ios 0x1ece00;
	TodoReturn increaseBatchNodeCapacity() = ios 0x1e1784;
	bool isFlipping() = ios 0x2057d0;
	bool isPlayer2Button(int);
	TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::ccColor3B);
	TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::ccColor3B, float, float, int, bool, float);
	TodoReturn loadGroupParentsFromString(GameObject*, gd::string);
	void loadLevelSettings() = ios 0x205e58;
	TodoReturn loadStartPosObject() = ios 0x200cc8;
	TodoReturn loadUpToPosition(float, int, int) = ios 0x200df8;
	TodoReturn maxZOrderForShaderZ(int);
	TodoReturn minZOrderForShaderZ(int);
	TodoReturn modifyGroupPhysics(AdvancedFollowEditObject*, cocos2d::CCArray*);
	TodoReturn modifyObjectPhysics(AdvancedFollowEditObject*, GameObjectPhysics&);
	TodoReturn moveAreaObject(GameObject*, float, float);
	TodoReturn moveCameraToPos(cocos2d::CCPoint);
	void moveObject(GameObject*, double, double, bool);
	void moveObjects(cocos2d::CCArray*, double, double, bool) = ios 0x1fd56c;
	void moveObjectsSilent(int, double, double);
	TodoReturn objectIntersectsCircle(GameObject*, GameObject*);
	GJGameEvent objectTypeToGameEvent(int) = ios 0x1e9ec8;
	TodoReturn optimizeMoveGroups() = ios 0x1e2f94;
	TodoReturn orderSpawnObjects() = ios 0x20b7b0;
	TodoReturn parentForZLayer(int, bool, int, int) = ios 0x1e69a4;
	TodoReturn pauseAudio() = ios 0x202b30;
	TodoReturn performMathOperation(double, double, int);
	TodoReturn performMathRounding(double, int);
	TodoReturn pickupItem(EffectGameObject*);
	TodoReturn playAnimationCommand(int, int);
	TodoReturn playerCircleCollision(PlayerObject*, GameObject*);
	TodoReturn playerIntersectsCircle(PlayerObject*, GameObject*);
	TodoReturn playerTouchedObject(PlayerObject*, GameObject*);
	TodoReturn playerTouchedRing(PlayerObject*, RingObject*);
	TodoReturn playerTouchedTrigger(PlayerObject*, EffectGameObject*);
	TodoReturn playerWasTouchingObject(PlayerObject*, GameObject*);
	void playerWillSwitchMode(PlayerObject*, GameObject*) = ios 0x1e9cb8;
	TodoReturn playExitDualEffect(PlayerObject*) = ios 0x1ed6a8;
	TodoReturn playFlashEffect(float, int, float);
	TodoReturn playKeyframeAnimation(KeyframeAnimTriggerObject*, gd::vector<int> const&);
	TodoReturn playSpeedParticle(float) = ios 0x20864c;
	TodoReturn positionForShaderTarget(int) = ios 0x1f5800;
	TodoReturn positionUIObjects() = ios 0x1e4ae4;
	TodoReturn prepareSavePositionObjects() = ios 0x1e323c;
	TodoReturn prepareTransformParent(bool) = ios 0x1fae94;
	TodoReturn preResumeGame();
	TodoReturn preUpdateVisibility(float) = ios 0x2016cc;
	TodoReturn processActivatedAudioTriggers(float) = ios 0x20a7ec;
	TodoReturn processAdvancedFollowAction(AdvancedFollowInstance&, bool, float);
	TodoReturn processAdvancedFollowActions(float) = ios 0x1fcb7c;
	TodoReturn processAreaActions(float, bool) = ios 0x1fa468;
	TodoReturn processAreaEffects(gd::vector<EnterEffectInstance>*, GJAreaActionType, float, bool) = ios 0x1f8468;
	TodoReturn processAreaFadeGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, bool);
	TodoReturn processAreaMoveGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool);
	TodoReturn processAreaRotateGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool);
	TodoReturn processAreaTintGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, bool);
	TodoReturn processAreaTransformGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool);
	TodoReturn processAreaVisualActions(float) = ios 0x1fa7b4;
	TodoReturn processCameraObject(GameObject*, PlayerObject*);
	TodoReturn processCommands(float) = ios 0x2039d4;
	TodoReturn processDynamicObjectActions(int, float) = ios 0x1fb3c0;
	TodoReturn processFollowActions() = ios 0x1fcd0c;
	TodoReturn processItems() = ios 0x1ed49c;
	TodoReturn processMoveActions() = ios 0x1fc870;
	TodoReturn processMoveActionsStep(float, bool) = ios 0x1fb2a0;
	TodoReturn processOptionsTrigger(GameOptionsTrigger*);
	TodoReturn processPlayerFollowActions(float) = ios 0x1fc980;
	TodoReturn processQueuedAudioTriggers() = ios 0x206cb4;
	TodoReturn processQueuedButtons() = ios 0x1fecb0;
	TodoReturn processRotationActions() = ios 0x1fc26c;
	TodoReturn processSFXObjects() = ios 0x1e5568;
	TodoReturn processSFXState(SFXTriggerState*, SFXTriggerState*, int, float);
	TodoReturn processSongState(int, float, float, int, float, float, gd::vector<SongTriggerState>*, SongTriggerGameObject*) = ios 0x225dc;
	TodoReturn processStateObjects() = ios 0x1ee058;
	TodoReturn processTransformActions(bool) = ios 0x1fb8a0;
	void queueButton(int, bool, bool) = ios 0x1feb64;
	TodoReturn reAddToStickyGroup(GameObject*) = ios 0x1f6dd0;
	TodoReturn recordAction(int, bool, bool);
	TodoReturn rectIntersectsCircle(cocos2d::CCRect, cocos2d::CCPoint, float) = ios 0x1e8ae0;
	TodoReturn refreshCounterLabels() = ios 0x2009c8;
	TodoReturn refreshKeyframeAnims() = ios 0x1e53a0;
	TodoReturn regenerateEnterEasingBuffers() = ios 0x1e2cbc;
	TodoReturn registerSpawnRemap(gd::vector<ChanceObject>&);
	TodoReturn registerStateObject(EffectGameObject*);
	TodoReturn removeBackground();
	TodoReturn removeCustomEnterEffects(int, bool);
	void removeFromGroupParents(GameObject*);
	void removeFromGroups(GameObject*);
	TodoReturn removeFromStickyGroup(GameObject*);
	TodoReturn removeGroundLayer();
	TodoReturn removeGroupParent(int);
	TodoReturn removeKeyframe(KeyframeGameObject*);
	TodoReturn removeMiddleground();
	void removeObjectFromSection(GameObject*) = ios 0x1f7038;
	TodoReturn removePlayer2() = ios 0x1edafc;
	TodoReturn removeTemporaryParticles() = ios 0x206934;
	TodoReturn reorderObjectSection(GameObject*) = ios 0x1ee4fc;
	TodoReturn reparentObject(cocos2d::CCNode*, cocos2d::CCNode*) = ios 0x1f59d8;
	TodoReturn resetActiveEnterEffects() = ios 0x1e58d0;
	TodoReturn resetAreaObjectValues(GameObject*, bool) = ios 0x1f8b9c;
	TodoReturn resetAudio() = ios 0x52ddc;
	void resetCamera() = ios 0x2069e0;
	void resetGradientLayers() = ios 0x1f3a3c;
	TodoReturn resetGroupCounters(bool) = ios 0x200b74;
	void resetLevelVariables() = ios 0x2061b0;
	TodoReturn resetMoveOptimizedValue() = ios 0x1feb20;
	void resetPlayer() = ios 0x1e9034;
	void resetSongTriggerValues() = ios 0x129250;
	TodoReturn resetSpawnChannelIndex() = ios 0x206be8;
	TodoReturn resetStaticCamera(bool, bool) = ios 0x1ea448;
	TodoReturn resetStoppedAreaObjects() = ios 0x1fa700;
	TodoReturn restoreAllUIObjects() = ios 0x1f71d0;
	TodoReturn restoreDefaultGameplayOffsetX();
	TodoReturn restoreDefaultGameplayOffsetY();
	TodoReturn restoreRemap(EffectGameObject*, gd::unordered_map<int, int>&);
	TodoReturn resumeAudio() = ios 0x202b58;
	TodoReturn rotateAreaObjects(GameObject*, cocos2d::CCArray*, float, bool) = ios 0x1faa04;
	TodoReturn rotateObject(GameObject*, float) = ios 0x1fd124;
	void rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint, cocos2d::CCPoint, bool, bool) = ios 0x1fd19c;
	void setGroupParent(GameObject*, int);
	void setStartPosObject(StartPosObject*) = ios 0x1e91ec;
	TodoReturn setupLayers() = ios 0x1de4d8;
	TodoReturn setupLevelStart(LevelSettingsObject*) = ios 0x1e9234;
	TodoReturn setupReplay(gd::string);
	TodoReturn shakeCamera(float, float, float);
	TodoReturn shouldExitHackedLevel() = ios 0x1e0574;
	TodoReturn sortAllGroupsX();
	TodoReturn sortGroups() = ios 0x1e2d4c;
	TodoReturn sortSectionVector() = ios 0x1f7cb4;
	TodoReturn sortStickyGroups() = ios 0x1e3ec0;
	void spawnGroupTriggered(int, float, bool, gd::vector<int> const&, int, int);
	TodoReturn spawnObjectsInOrder(cocos2d::CCArray*, double, gd::vector<int> const&, int, int);
	TodoReturn spawnParticle(char const*, int, cocos2d::tCCPositionType, cocos2d::CCPoint);
	TodoReturn spawnParticleTrigger(int, cocos2d::CCPoint, float, float);
	TodoReturn spawnParticleTrigger(SpawnParticleGameObject*);
	TodoReturn spawnPlayer2() = ios 0x1ed62c;
	TodoReturn speedForShaderTarget(int) = ios 0x1f58c8;
	TodoReturn staticObjectsInRect(cocos2d::CCRect, bool) = ios 0x1e8448;
	TodoReturn stopAllGroundActions();
	TodoReturn stopCameraShake() = ios 0x207794;
	TodoReturn stopCustomEnterEffect(EnterEffectObject*, bool);
	TodoReturn stopCustomEnterEffect(EnterEffectObject*);
	TodoReturn stopSFXTrigger(SFXTriggerGameObject*);
	TodoReturn swapBackground(int) = ios 0x1e0b4c;
	TodoReturn swapGround(int) = ios 0x1e0e34;
	TodoReturn swapMiddleground(int) = ios 0x1e0f80;
	void switchToFlyMode(PlayerObject*, GameObject*, bool, int);
	void switchToRobotMode(PlayerObject*, GameObject*, bool);
	void switchToRollMode(PlayerObject*, GameObject*, bool);
	void switchToSpiderMode(PlayerObject*, GameObject*, bool);
	TodoReturn syncBGTextures() = ios 0x2060f8;
	void teleportPlayer(TeleportPortalObject*, PlayerObject*);
	TodoReturn testInstantCountTrigger(int, int, int, bool, int, gd::vector<int> const&, int, int);
	void toggleAudioVisualizer(bool) = ios 0x1de310;
	void toggleDualMode(GameObject*, bool, PlayerObject*, bool) = ios 0x1e954c;
	void toggleFlipped(bool, bool);
	void toggleGroup(int, bool) = ios 0x1f5de0;
	void toggleLockPlayer(bool, bool);
	void togglePlayerStreakBlend(bool) = ios 0x1f60e8;
	void togglePlayerVisibility(bool, bool);
	void togglePlayerVisibility(bool);
	TodoReturn transformAreaObjects(GameObject*, cocos2d::CCArray*, float, float, bool);
	TodoReturn triggerAdvancedFollowCommand(AdvancedFollowTriggerObject*);
	TodoReturn triggerAdvancedFollowEditCommand(AdvancedFollowEditObject*);
	TodoReturn triggerAreaEffect(EnterEffectObject*);
	TodoReturn triggerAreaEffectAnimation(EnterEffectObject*);
	TodoReturn triggerDynamicMoveCommand(EffectGameObject*);
	TodoReturn triggerDynamicRotateCommand(EnhancedTriggerObject*);
	TodoReturn triggerGradientCommand(GradientTriggerObject*) = ios 0x1f3740;
	TodoReturn triggerGravityChange(EffectGameObject*, int);
	TodoReturn triggerMoveCommand(EffectGameObject*) = ios 0x1f26c4;
	TodoReturn triggerRotateCommand(EnhancedTriggerObject*);
	bool triggerShaderCommand(ShaderGameObject*);
	TodoReturn triggerTransformCommand(TransformTriggerGameObject*);
	TodoReturn tryGetGroupParent(int);
	TodoReturn tryGetMainObject(int) = ios 0x1edfb4;
	TodoReturn tryGetObject(int);
	TodoReturn tryResumeAudio();
	TodoReturn unclaimParticle(char const*, cocos2d::CCParticleSystemQuad*);
	void ungroupStickyObjects(cocos2d::CCArray*) = ios 0x1f6bb0;
	TodoReturn unlinkAllEvents() = ios 0x12690c;
	TodoReturn updateActiveEnterEffect(EnterEffectObject*);
	TodoReturn updateAllObjectSection();
	TodoReturn updateAreaObjectLastValues(GameObject*);
	TodoReturn updateAudioVisualizer() = ios 0x2038b4;
	TodoReturn updateBGArtSpeed(float, float);
	TodoReturn updateCamera(float) = ios 0x203c98;
	TodoReturn updateCameraBGArt(cocos2d::CCPoint, float) = ios 0x207920;
	TodoReturn updateCameraEdge(int, int);
	void updateCameraMode(EffectGameObject*, bool) = ios 0x1e9c50;
	TodoReturn updateCameraOffsetX(float, float, int, float, int, int) = ios 0x20137c;
	TodoReturn updateCameraOffsetY(float, float, int, float, int, int) = ios 0x2013fc;
	TodoReturn updateCollisionBlocks() = ios 0x1ee530;
	void updateCounters(int, int) = ios 0x1ff6d8;
	void updateDualGround(PlayerObject*, int, bool, float) = ios 0x1e99d4;
	TodoReturn updateEnterEffects(float) = ios 0x1e60b4;
	TodoReturn updateExtendedCollision(GameObject*, bool);
	TodoReturn updateExtraGameLayers() = ios 0x1f5aa8;
	TodoReturn updateGameplayOffsetX(int, bool);
	TodoReturn updateGameplayOffsetY(int, bool);
	TodoReturn updateGradientLayers() = ios 0x1f3b74;
	TodoReturn updateGroundShadows();
	TodoReturn updateGuideArt() = ios 0x2037e0;
	TodoReturn updateInternalCamOffsetX(float, float, float);
	TodoReturn updateInternalCamOffsetY(float, float, float);
	TodoReturn updateKeyframeOrder(int) = ios 0x1ff3dc;
	TodoReturn updateLayerCapacity(gd::string) = ios 0x1e18f0;
	TodoReturn updateLegacyLayerCapacity(int, int, int, int);
	TodoReturn updateLevelColors() = ios 0x1e0be0;
	TodoReturn updateMaxGameplayY() = ios 0x205fa8;
	TodoReturn updateMGArtSpeed(float, float);
	void updateMGOffsetY(float, float, int, float, int, int) = ios 0x20ec54;
	TodoReturn updateOBB2(cocos2d::CCRect) = ios 0x1e8a7c;
	TodoReturn updateParticles(float) = ios 0x2094a8;
	TodoReturn updatePlatformerTime() = ios 0x205858;
	TodoReturn updatePlayerCollisionBlocks() = ios 0x1ee3e8;
	TodoReturn updateProximityVolumeEffects() = ios 0x205714;
	TodoReturn updateQueuedLabels() = ios 0x20093c;
	TodoReturn updateReplay() = ios 0x205a24;
	TodoReturn updateSavePositionObjects() = ios 0x1eef90;
	TodoReturn updateShaderLayer(float) = ios 0x1f4fc8;
	TodoReturn updateSpecialGroupData() = ios 0x1e2b5c;
	TodoReturn updateSpecialLabels() = ios 0x2054ec;
	void updateStaticCameraPos(cocos2d::CCPoint, bool, bool, bool, float, int, float) = ios 0x1ea1ac;
	TodoReturn updateStaticCameraPosToGroup(int, bool, bool, bool, float, float, int, float, bool, float);
	TodoReturn updateTimeMod(float, bool, bool) = ios 0x1e9a7c;
	TodoReturn updateTimerLabels() = ios 0x20069c;
	void updateZoom(float, float, int, float, int, int) = ios 0x20110c;
	TodoReturn visitWithColorFlash() = ios 0x20d2dc;
	TodoReturn volumeForProximityEffect(SFXTriggerInstance&) = ios 0x2097f4;

	virtual void update(float) = ios 0x202c74;
	virtual bool init() = ios 0x1dd6f8;
	virtual void visit() = ios 0x20c40c;
	virtual void postUpdate(float);
	virtual TodoReturn checkForEnd() = ios 0x20d878;
	virtual TodoReturn testTime() = ios 0x20d87c;
	virtual TodoReturn updateVerifyDamage() = ios 0x20d880;
	virtual TodoReturn updateAttemptTime(float) = ios 0x20d884;
	virtual void updateVisibility(float);
	virtual TodoReturn playerTookDamage(PlayerObject*) = ios 0x123c60;
	virtual TodoReturn opacityForObject(GameObject*) = ios 0x202aa4;
	virtual TodoReturn addToSpeedObjects(EffectGameObject*) = ios 0x123c64;
	virtual TodoReturn objectsCollided(int, int) = ios 0x1eebf0;
	virtual void updateColor(cocos2d::ccColor3B&, float, int, bool, float, cocos2d::ccHSVValue&, int, bool, EffectGameObject*, int, int) = ios 0x1f5bf4;
	virtual void toggleGroupTriggered(int, bool, gd::vector<int> const&, int, int) = ios 0x1f5d60;
	virtual void spawnGroup(int, bool, double, gd::vector<int> const&, int, int) = ios 0x1ef7c8;
	virtual void spawnObject(GameObject*, double, gd::vector<int> const&) = ios 0x1efa54;
	virtual TodoReturn activateEndTrigger(int, bool, bool) = ios 0x20d88c;
	virtual void activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&) = ios 0x20d890;
	virtual TodoReturn toggleGlitter(bool) = ios 0x20d894;
	virtual void destroyPlayer(PlayerObject*, GameObject*) = ios 0x20d898;
	virtual void updateDebugDraw() = ios 0x1e7d38;
	virtual void addToSection(GameObject*) = ios 0x1f7300;
	virtual void addToGroup(GameObject*, int, bool) = ios 0x1f61a8;
	virtual void removeFromGroup(GameObject*, int) = ios 0x1f6358;
	virtual TodoReturn updateObjectSection(GameObject*) = ios 0x1f836c;
	virtual TodoReturn updateDisabledObjectsLastPos(cocos2d::CCArray*) = ios 0x123c68;
	virtual TodoReturn toggleGroundVisibility(bool) = ios 0x201100;
	virtual TodoReturn toggleMGVisibility(bool) = ios 0x201104;
	virtual TodoReturn toggleHideAttempts(bool) = ios 0x201108;
	virtual float timeForPos(cocos2d::CCPoint, int, int, bool, int) { return 0.f; }
	virtual float posForTime(float) { return 0.f; }
	virtual void resetSPTriggered() {}
	virtual TodoReturn updateScreenRotation(float, bool, bool, float, int, float, int, int) = ios 0x2011ec;
	virtual TodoReturn reverseDirection(EffectGameObject*) = ios 0x1ee0d4;
	virtual TodoReturn rotateGameplay(RotateGameplayGameObject*) = ios 0x1ee118;
	virtual TodoReturn didRotateGameplay() = ios 0x123c6c;
	virtual void updateTimeWarp(float);
	virtual TodoReturn updateTimeWarp(GameObject*, float);
	virtual TodoReturn applyTimeWarp(float) = ios 0x20167c;
	virtual TodoReturn playGravityEffect(bool) = ios 0x20d89c;
	virtual TodoReturn manualUpdateObjectColors(GameObject*);
	virtual TodoReturn createCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, bool) = ios 0x208f80;
	virtual TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool) = ios 0x2091b0;
	virtual TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*) = ios 0x2093f0;
	virtual TodoReturn activatedAudioTrigger(SFXTriggerGameObject*);
	virtual void checkpointActivated(CheckpointGameObject*);
	virtual TodoReturn flipArt(bool) = ios 0x20c204;
	virtual TodoReturn addKeyframe(KeyframeGameObject*) = ios 0x1ff350;
	virtual void updateTimeLabel(int, int, bool) = ios 0x20d8a4;
	virtual TodoReturn checkSnapshot() = ios 0x20d8a8;
	virtual void toggleProgressbar() = ios 0x20d8ac;
	virtual void toggleInfoLabel() = ios 0x20d8b0;
	virtual void removeAllCheckpoints() = ios 0x20d8b4;
	virtual void toggleMusicInPractice() = ios 0x20d8b8;

	PAD = win 0x8, android32 0x8, android64 0x8, ios 0x2; // why 0x2 for iOS? i have no idea!
	GJGameState m_gameState;
	GJGameLevel* m_level;
	PlaybackMode m_playbackMode;
	PAD = android32 0x64, android64 0xC0, ios 0xC0;
	GJEffectManager* m_effectManager; // TODO: the offset for ios is wrong.
	PAD = android32 0x224, android64 0x448, ios 0x434;
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
	PAD = win 0x8, android32 0x8, android64 0x8, ios 0x8;
	gd::vector<GameObject*> m_unk918;
	PAD = win 0x30, android32 0x30, android64 0x30, ios 0x30;
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
	cocos2d::CCDictionary* m_linkedGroupDict;
	int m_lastUsedLinkedID;
	cocos2d::CCNode* m_unknownE90;
	cocos2d::CCNode* m_unknownE98;
	cocos2d::CCNode* m_unknownEA0;
	cocos2d::CCLayer* m_objectLayer;
	PAD = win 0x7c, android32 0x78, android64 0xec, ios 0xb4;
	std::array<float, 2000> m_massiveFloatArray;
	PAD = win 0x48, android32 0x54, android64 0x98, ios 0x98; // not sure about the android paddings
	// these 4 might be wrong on ios (they probably are wrong)
	int m_leftSectionIndex; // 29b4 win, 29d4 android32, 30b4 android64
	int m_rightSectionIndex;
	int m_bottomSectionIndex;
	int m_topSectionIndex;
	PAD = win 0xB8, android32 0xB0, android64 0x144, ios 0xfc;
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
	PAD = win 0xa0, android32 0x82, android64 0xb0, ios 0xc0;
	gd::vector<PlayerButtonCommand> m_queuedButtons;
	PAD = android32 0xb0, android64 0x148, ios 0x128;
	UILayer* m_uiLayer;
	PAD = android32 0x24, android64 0x30, ios 0x40;
	gd::vector<gd::vector<gd::vector<GameObject*>*>*> m_sections; // 2c2c
	PAD = android32 0x114, android64 0x1b0, ios 0x1a0;
	GJGameLoadingLayer* m_loadingLayer;
	cocos2d::CCDrawNode* m_debugDrawNode; // android32 = 0x2d50, android64 = 0x3668
	PAD = android32 0x4, android64 0x8, ios 0x8;
	bool m_isDebugDrawEnabled;
	PAD = android32 0x5, android64 0x9, ios 0x9;
}

[[link(android)]]
class GJBigSprite : cocos2d::CCNode {
	// virtual ~GJBigSprite();

	static GJBigSprite* create();

	TodoReturn finishedLoadingSpriteAsync(cocos2d::CCObject*);
	TodoReturn loadSpriteAsync(gd::string, int);
	TodoReturn unloadAll();
	TodoReturn unloadSprite(gd::string, int);
	TodoReturn updateSpriteVisibility();

	virtual bool init();
}

[[link(android)]]
class GJBigSpriteNode : cocos2d::CCNode {
	// virtual ~GJBigSpriteNode();

	static GJBigSpriteNode* create();

	virtual bool init();
}

[[link(android)]]
class GJChallengeDelegate {
	virtual TodoReturn challengeStatusFinished();
	virtual TodoReturn challengeStatusFailed();
}

[[link(android)]]
class GJChallengeItem : cocos2d::CCObject {
	// virtual ~GJChallengeItem();

	static GJChallengeItem* create();
	static GJChallengeItem* create(GJChallengeType challengeType, int goal, int reward, int timeLeft, gd::string questName);

	static GJChallengeItem* createFromString(gd::string string);
	static GJChallengeItem* createWithCoder(DS_Dictionary* dsdict);
	void dataLoaded(DS_Dictionary* dsdict);
	void incrementCount(int add);
	bool init(GJChallengeType challengeType, int goal, int reward, int timeLeft, gd::string questName);
	void setCount(int value);

	virtual void encodeWithCoder(DS_Dictionary* dsdict) = ios 0x344a44;
	virtual bool canEncode() = ios 0x344b20;

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

	static GJChestSprite* create(int) = ios 0x1c9a00;

	bool init(int);
	void switchToState(ChestSpriteState, bool) = ios 0x1caa64;

	virtual void setOpacity(unsigned char) = ios 0x1cbf58;
	virtual void setColor(cocos2d::ccColor3B const&) = ios 0x1cbe88;
}

[[link(android)]]
class GJColorSetupLayer : FLAlertLayer, ColorSelectDelegate, FLAlertLayerProtocol {
	// virtual ~GJColorSetupLayer();

	static GJColorSetupLayer* create(LevelSettingsObject*);

	bool init(LevelSettingsObject*);
	void onClose(cocos2d::CCObject* sender);
	void onColor(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	void showPage(int);
	TodoReturn updateSpriteColor(ColorChannelSprite*, cocos2d::CCLabelBMFont*, int) = ios 0x1955a8;
	TodoReturn updateSpriteColors() = ios 0x195364;

	virtual void keyBackClicked() = ios 0x195648;
	virtual void colorSelectClosed(cocos2d::CCNode*) = ios 0x19563c;
}

[[link(android)]]
class GJComment : cocos2d::CCNode {
	// virtual ~GJComment();

	static GJComment* create();
	static GJComment* create(cocos2d::CCDictionary*);

	virtual bool init() = ios 0xb28f8;

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

	static GJCommentListLayer* create(BoomListView* listView, char const* title, cocos2d::ccColor4B color, float width, float height, bool blueBorder) = ios 0x2dd1ac;

	bool init(BoomListView* listView, char const* title, cocos2d::ccColor4B color, float width, float height, bool blueBorder) = ios 0x2dd290;

	BoomListView* m_list;
}

[[link(android)]]
class GJDailyLevelDelegate {
	virtual void dailyStatusFinished(GJTimedLevelType);
	virtual void dailyStatusFailed(GJTimedLevelType, GJErrorCode);
}

[[link(android)]]
class GJDifficultySprite : cocos2d::CCSprite {
	// virtual ~GJDifficultySprite();

	static GJDifficultySprite* create(int, GJDifficultyName) = ios 0x2eca90;

	gd::string getDifficultyFrame(int, GJDifficultyName) = ios 0x2ecbbc;
	bool init(int, GJDifficultyName);
	void updateDifficultyFrame(int, GJDifficultyName);
	void updateFeatureState(GJFeatureState) = ios 0x2ecdf4;
	void updateFeatureStateFromLevel(GJGameLevel*);
}

[[link(android)]]
class GJDropDownLayer : cocos2d::CCLayerColor {
	// virtual ~GJDropDownLayer();
	// GJDropDownLayer();

	static GJDropDownLayer* create(char const*, float, bool);
	static GJDropDownLayer* create(char const*);

	bool init(char const*, float, bool) = ios 0x3af004;
	bool init(char const*);

	virtual void draw() = ios 0x3af784;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3af7c0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void registerWithTouchDispatcher() = ios 0x3af474;
	virtual void keyBackClicked() = ios 0x3af4ac;
	virtual void customSetup() {}
	virtual void enterLayer() = ios 0x3af43c;
	virtual void exitLayer(cocos2d::CCObject*) = ios 0x3af4d0;
	virtual void showLayer(bool) = ios 0x3af51c;
	virtual void hideLayer(bool) = ios 0x3af620;
	virtual void layerVisible() = ios 0x3af724;
	virtual void layerHidden() = ios 0x3af734;
	virtual void enterAnimFinished() {}
	virtual void disableUI() = ios 0x3af414;
	virtual void enableUI() = ios 0x3af428;

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
	virtual void dropDownLayerWillClose(GJDropDownLayer*);
}

[[link(android)]]
class GJEffectManager : cocos2d::CCNode {
	// virtual ~GJEffectManager();
	// GJEffectManager();

	static GJEffectManager* create() = ios 0x11f34;

	TodoReturn activeColorForIndex(int) = ios 0x12610;
	TodoReturn activeOpacityForIndex(int) = ios 0x126e8;
	TodoReturn addAllInheritedColorActions(cocos2d::CCArray*);
	TodoReturn addCountToItem(int, int);
	TodoReturn addMoveCalculation(CCMoveCNode*, cocos2d::CCPoint, GameObject*);
	TodoReturn calculateBaseActiveColors() = ios 0x12784;
	TodoReturn calculateInheritedColor(int, ColorAction*);
	TodoReturn calculateLightBGColor(cocos2d::ccColor3B) = ios 0x19c8c;
	TodoReturn checkCollision(int const&, int const&);
	TodoReturn colorActionChanged(ColorAction*) = ios 0x131c4;
	TodoReturn colorExists(int) = ios 0x1319c;
	TodoReturn colorForEffect(cocos2d::ccColor3B, cocos2d::ccHSVValue);
	TodoReturn colorForGroupID(int, cocos2d::ccColor3B const&, bool);
	TodoReturn colorForIndex(int);
	TodoReturn colorForPulseEffect(cocos2d::ccColor3B const&, PulseEffectAction*);
	TodoReturn controlActionsForControlID(int, GJActionCommand);
	TodoReturn controlActionsForTrigger(EffectGameObject*, GJActionCommand);
	int countForItem(int) = ios 0x1905c;
	TodoReturn createFollowCommand(float, float, float, int, int, int, int);
	TodoReturn createKeyframeCommand(int, cocos2d::CCArray*, GameObject*, int, int, bool, float, float, float, float, float, float, gd::vector<int> const&);
	TodoReturn createMoveCommand(cocos2d::CCPoint, int, float, int, float, bool, bool, bool, bool, float, float, int, int);
	TodoReturn createPlayerFollowCommand(float, float, int, float, float, int, int, int);
	TodoReturn createRotateCommand(float, float, int, int, int, float, bool, bool, bool, int, int);
	TodoReturn createTransformCommand(double, double, double, double, bool, float, int, int, int, float, bool, bool, int, int);
	TodoReturn getAllColorActions() = ios 0x124fc;
	TodoReturn getAllColorSprites();
	ColorAction* getColorAction(int) = ios 0x12594;
	ColorActionSprite* getColorSprite(int);
	TodoReturn getLoadedMoveOffset(gd::unordered_map<int, std::pair<double, double>>&);
	TodoReturn getMixedColor(cocos2d::ccColor3B, cocos2d::ccColor3B, float);
	TodoReturn getMoveCommandNode(GroupCommandObject2*);
	TodoReturn getMoveCommandObject();
	TodoReturn getOpacityActionForGroup(int);
	gd::string getSaveString();
	TodoReturn getTempGroupCommand();
	TodoReturn handleObjectCollision(bool, int, int);
	TodoReturn hasActiveDualTouch();
	TodoReturn hasBeenTriggered(int, int);
	TodoReturn hasPulseEffectForGroupID(int);
	bool isGroupEnabled(int) = ios 0x18a70;
	TodoReturn keyForGroupIDColor(int, cocos2d::ccColor3B const&, bool);
	void loadFromState(EffectManagerState&);
	TodoReturn objectsCollided(int, int);
	TodoReturn opacityForIndex(int);
	TodoReturn opacityModForGroup(int);
	TodoReturn pauseTimer(int);
	TodoReturn playerButton(bool, bool);
	TodoReturn playerDied() = ios 0x18da4;
	TodoReturn postCollisionCheck() = ios 0x136d4;
	TodoReturn postMoveActions() = ios 0x17b34;
	TodoReturn preCollisionCheck() = ios 0x136bc;
	TodoReturn prepareMoveActions(float, bool) = ios 0x1653c;
	TodoReturn processColors() = ios 0x12750;
	TodoReturn processCopyColorPulseActions();
	TodoReturn processInheritedColors() = ios 0x128d4;
	TodoReturn processMoveCalculations() = ios 0x17d2c;
	TodoReturn processPulseActions() = ios 0x12818;
	TodoReturn registerCollisionTrigger(int, int, int, bool, bool, gd::vector<int> const&, int, int);
	TodoReturn registerRotationCommand(GroupCommandObject2*, bool);
	TodoReturn removeAllPulseActions() = ios 0x134ec;
	TodoReturn removeColorAction(int);
	TodoReturn removePersistentFromAllItems();
	TodoReturn removePersistentFromAllTimers();
	TodoReturn removeTriggeredID(int, int);
	TodoReturn reset() = ios 0x122fc;
	TodoReturn resetEffects() = ios 0x123b4;
	TodoReturn resetMoveActions();
	TodoReturn resetTempGroupCommands(bool);
	TodoReturn resetToggledGroups() = ios 0x1354c;
	TodoReturn resetTriggeredIDs() = ios 0x1b5e0;
	TodoReturn resumeTimer(int);
	TodoReturn runCountTrigger(int, int, bool, int, bool, gd::vector<int> const&, int, int);
	TodoReturn runDeathTrigger(int, bool, gd::vector<int> const&, int, int);
	TodoReturn runOpacityActionOnGroup(int, float, float, int, int);
	TodoReturn runPulseEffect(int, bool, float, float, float, PulseEffectType, cocos2d::ccColor3B, cocos2d::ccHSVValue, int, bool, bool, bool, bool, int, int);
	TodoReturn runTimerTrigger(int, double, bool, int, gd::vector<int> const&, int, int);
	TodoReturn runTouchTriggerCommand(int, bool, TouchTriggerType, TouchTriggerControl, bool, gd::vector<int> const&, int, int);
	TodoReturn saveCompletedMove(int, double, double);
	void saveToState(EffectManagerState&);
	void setColorAction(ColorAction*, int) = ios 0x130e8;
	void setFollowing(int, int, bool) = ios 0x19e18;
	void setupFromString(gd::string) = ios 0x1a014;
	TodoReturn shouldBlend(int) = ios 0x12718;
	TodoReturn spawnGroup(int, float, bool, gd::vector<int> const&, int, int);
	TodoReturn spawnObject(GameObject*, float, gd::vector<int> const&, int, int);
	TodoReturn startTimer(int, double, double, bool, bool, bool, float, bool, int, gd::vector<int> const&, int, int);
	TodoReturn storeTriggeredID(int, int);
	TodoReturn timeForItem(int) = ios 0x19c40;
	TodoReturn timerExists(int);
	TodoReturn toggleGroup(int, bool);
	TodoReturn toggleItemPersistent(int, bool);
	TodoReturn toggleTimerPersistent(int, bool);
	TodoReturn transferPersistentItems() = ios 0x13594;
	TodoReturn traverseInheritanceChain(InheritanceNode*);
	TodoReturn tryGetMoveCommandNode(int) = ios 0x16154;
	TodoReturn updateActiveOpacityEffects();
	TodoReturn updateColorAction(ColorAction*);
	TodoReturn updateColorEffects(float) = ios 0x13224;
	TodoReturn updateColors(cocos2d::ccColor3B, cocos2d::ccColor3B) = ios 0x1254c;
	void updateCountForItem(int, int);
	TodoReturn updateEffects(float) = ios 0x131e4;
	void updateOpacityAction(OpacityEffectAction*);
	void updateOpacityEffects(float) = ios 0x13478;
	TodoReturn updatePulseEffects(float) = ios 0x132b0;
	TodoReturn updateSpawnTriggers(float) = ios 0x18778;
	TodoReturn updateTimer(int, double);
	TodoReturn updateTimers(float, float) = ios 0x19988;
	TodoReturn wasFollowing(int, int);
	TodoReturn wouldCreateLoop(InheritanceNode*, int);

	virtual bool init() = ios 0x11fa8;

	PAD = android32 0x90, mac 0xf0, android64 0x120, win 0x9c;
	cocos2d::CCDictionary* m_colorActionDict;
}

[[link(android)]]
class GJFlyGroundLayer : GJGroundLayer {
	// virtual ~GJFlyGroundLayer();

	static GJFlyGroundLayer* create();

	virtual bool init();
}

[[link(android)]]
class GJFollowCommandLayer : SetupTriggerPopup {
	// virtual ~GJFollowCommandLayer();

	static GJFollowCommandLayer* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	void onUpdateGroupID(cocos2d::CCObject* sender);
	void onUpdateGroupID2(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn sliderXModChanged(cocos2d::CCObject*);
	TodoReturn sliderYModChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateTargetGroupID();
	TodoReturn updateTargetGroupID2();
	TodoReturn updateTextInputLabel();
	TodoReturn updateTextInputLabel2();
	TodoReturn updateXMod();
	TodoReturn updateXModLabel();
	TodoReturn updateYMod();
	TodoReturn updateYModLabel();

	virtual TodoReturn determineStartValues() = ios 0x13c2bc;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x13ca74;
	virtual void textChanged(CCTextInputNode*) = ios 0x13c7b4;
}

[[link(android)]]
class GJFriendRequest : cocos2d::CCNode {
	// virtual ~GJFriendRequest();

	static GJFriendRequest* create();
	static GJFriendRequest* create(cocos2d::CCDictionary*);

	virtual bool init();
}

[[link(android)]]
class GJGameLevel : cocos2d::CCNode {
	// virtual ~GJGameLevel();
	static GJGameLevel* create() = ios 0x9660c;
	static GJGameLevel* create(cocos2d::CCDictionary* dict, bool hasPassword);
	inline static GJGameLevel* createWithCoder(DS_Dictionary* dict) {
		//inlined on windows
		auto level = GJGameLevel::create();
		level->dataLoaded(dict);
		return level;
	}

	bool areCoinsVerified();
	void copyLevelInfo(GJGameLevel* levelInfo) = ios 0xaf684;
	void dataLoaded(DS_Dictionary*) = ios 0xafb9c;
	static int demonIconForDifficulty(DemonDifficultyType);
	gd::string generateSettingsString();
	gd::string getAudioFileName() = ios 0xaeb34;
	int getAverageDifficulty() = ios 0xae9e0;
	char const* getCoinKey(int) = ios 0xa6930;
	int getLastBuildPageForTab(int page);
	int getLengthKey(int, bool) = ios 0xae978;
	GJGameLevel* getListSnapshot();
	int getNormalPercent();
	TodoReturn getSongName();
	gd::string getUnpackedLevelDescription();
	TodoReturn handleStatsConflict(GJGameLevel*);
	inline bool isPlatformer() {
		return m_levelLength == 5;
	}
	const char* lengthKeyToString(int) = ios 0xae9b4;
	void levelWasAltered();
	void levelWasSubmitted();
	void parseSettingsString(gd::string settings);
	void saveNewScore(int newTime, int newPoints);
	void savePercentage(int, bool, int, int, bool) = ios 0xae630;
	TodoReturn scoreStringToVector(gd::string&, gd::vector<int>&);
	TodoReturn scoreVectorToString(gd::vector<int>&, int);
	void setAccountID(int accountID);
	void setAttempts(int attempts);
	void setAttemptTime(int attemptTime);
	void setClicks(int clicks);
	void setCoinsVerified(int coinsVerified);
	void setDailyID(int dailyID);
	void setDemon(int demon);
	void setJumps(int jumps);
	void setLastBuildPageForTab(int, int);
	void setLevelID(int levelID);
	void setNewNormalPercent(int newNormalPercent);
	void setNewNormalPercent2(int newNormalPercent2);
	void setNormalPercent(int normalPercent) = ios 0x63f10c;
	void setObjectCount(int objectCount);
	void setOriginalLevel(int copiedID);
	void setStars(int stars);
	bool shouldCheatReset();
	TodoReturn storeNewLocalScore(int, int);
	void unverifyCoins();

	virtual void encodeWithCoder(DS_Dictionary* dsdict) = ios 0xb09ac;
	virtual bool canEncode(); //merged func (return true)
	virtual bool init() = ios 0xae370;

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

	static GJGameLoadingLayer* create(GJGameLevel* level, bool editor);

	void gameLayerDidUnload();
	bool init(GJGameLevel* level, bool editor);
	void loadLevel();
	static GJGameLoadingLayer* transitionToLoadingLayer(GJGameLevel* level, bool editor) = ios 0x20d53c;

	virtual void onEnter();
	virtual void onEnterTransitionDidFinish();

	GJGameLevel* m_level;
	bool m_editor;
}

[[link(android), depends(EventTriggerInstance), depends(SongChannelState), depends(DynamicObjectAction), depends(AdvancedFollowInstance), depends(EnterEffectInstance), depends(GameObjectPhysics), depends(GJValueTween), depends(SFXTriggerInstance)]]
class GJGameState {
	// ~GJGameState();
	// GJGameState();

	TodoReturn controlTweenAction(int, int, GJActionCommand);
	TodoReturn getGameObjectPhysics(GameObject*);
	TodoReturn processStateTriggers() = ios 0x1dcbfc;
	void stopTweenAction(int);
	TodoReturn tweenValue(float, float, int, float, int, float, int, int);
	TodoReturn updateTweenAction(float, int);
	TodoReturn updateTweenActions(float) = ios 0x1dcac8;

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
	PAD = win 0x10, android32 0x10, android64 0x10, ios 0x10;
	float m_unk124;
	float m_unk128;
	PAD = win 0x1c, android32 0x1c, android64 0x1c, ios 0x1c;
	float m_unk148;
	PAD = win 0x1c, android32 0x1c, android64 0x1c, ios 0x1c;
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
	PAD = win 0x10, android32 0x10, android64 0x10, ios 0x10;
	int m_unk1f8;
	PAD = win 0x10, android32 0x10, android64 0x1c, ios 0x1c;
	cocos2d::CCPoint m_unk20c;
	PAD = win 0xa, android32 0xa, android64 0xa, ios 0xa;
	bool m_isDualMode;
	PAD = win 0x5, android32 0x5, android64 0x5, ios 0x5;
	gd::unordered_map<int, GJValueTween> m_unk224;
	PAD = win 0x10, android32 0x10, android64 0x10, ios 0x10;
	gd::unordered_map<int, GameObjectPhysics> m_unk250;
	PAD = win 0x18, android32 0x18, android64 0x24, ios 0x24;
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
	PAD = win 0x6, android32 0x6, android64 0x6, ios 0x6;
	bool m_unk2d0;
	bool m_unk2d1;
	PAD = win 0x10, android32 0x10, android64 0x10, ios 0x10;
	double m_unk2e4; // unsure type
	cocos2d::CCPoint m_unk2e8;
	PAD = win 0x4, android32 0x4, android64 0x4, ios 0x4;
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
	PAD = win 0x4, android32 0x4, android64 0x4, ios 0x4;
	gd::unordered_map<int, gd::vector<int>> m_unk418;
	gd::map<std::pair<int, int>, SFXTriggerInstance> m_unk434;
	gd::unordered_map<int, SongChannelState> m_unk44c;
	gd::unordered_map<int, gd::vector<SongTriggerState>> m_unk468;
	gd::vector<SFXTriggerState> m_unk484;
	PAD = win 0x1c, android32 0x1c, android64 0x1c, ios 0x1c;
}

[[link(android)]]
class GJGarageLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, GameRateDelegate, ListButtonBarDelegate, DialogDelegate, CharacterColorDelegate {
	// virtual ~GJGarageLayer();

	gd::string achievementForUnlock(int, UnlockType);
	gd::string descriptionForUnlock(int, UnlockType);
	cocos2d::CCArray* getItems(IconType);
	cocos2d::CCArray* getItems(int, int, IconType, int);
	TodoReturn getLockFrame(int, UnlockType);
	static GJGarageLayer* node() = ios 0x308984;
	void onArrow(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender) = ios 0x30b450;
	void onNavigate(cocos2d::CCObject* sender);
	void onPaint(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);
	void onSelectTab(cocos2d::CCObject* sender);
	void onShards(cocos2d::CCObject* sender);
	void onShop(cocos2d::CCObject* sender);
	void onSpecial(cocos2d::CCObject* sender);
	void onToggleItem(cocos2d::CCObject* sender);
	void playRainbowEffect();
	void playShadowEffect();
	static cocos2d::CCScene* scene() = ios 0x308940;
	void selectTab(IconType) = ios 0x30b8f8;
	void setupIconSelect() = ios 0x30a78c;
	void setupPage(int, IconType) = ios 0x30b9d0;
	void setupSpecialPage() = ios 0x30bfa0;
	void showUnlockPopupNew(int, UnlockType);
	gd::string titleForUnlock(int, UnlockType);
	void toggleGlow();
	void updatePlayerColors();
	void updatePlayerName(char const*);

	virtual bool init() = ios 0x3089f8;
	virtual void keyBackClicked() = ios 0x30d9f4;
	virtual void textInputOpened(CCTextInputNode*) = ios 0x30b54c;
	virtual void textInputClosed(CCTextInputNode*) = ios 0x30b67c;
	virtual void textChanged(CCTextInputNode*) = ios 0x30b7c8;
	virtual void listButtonBarSwitchedPage(ListButtonBar*, int) = ios 0x30d32c;
	virtual void showUnlockPopup(int, UnlockType) = ios 0x30d414;
	virtual void updateRate() = ios 0x30d86c;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x30d634;
	virtual void dialogClosed(DialogLayer*) = ios 0x30d730;
	virtual void playerColorChanged() = ios 0x30d294;

	CCTextInputNode* m_usernameInput;
	SimplePlayer* m_playerObject;
	cocos2d::CCArray* m_tabButtons;
	cocos2d::CCArray* m_pageButtons;
	PAD = android32 0x8, win 0x8, android64 0x10;
	bool m_hasClosed;
	PAD = android32 0x3, win 0x3, android64 0x3;
	IconType m_iconType;
	gd::map<IconType, int> m_iconPages;
	cocos2d::CCSprite* m_cursor1;
	cocos2d::CCSprite* m_cursor2;
	CCMenuItemSpriteExtra* m_currentIcon;
	ListButtonBar* m_iconSelection;
	CCMenuItemSpriteExtra* m_leftArrow;
	CCMenuItemSpriteExtra* m_rightArrow;
	cocos2d::CCMenu* m_iconSelectionMenu;
	int m_iconID;
	IconType m_selectedIconType;
}

[[link(android)]]
class GJGradientLayer : cocos2d::CCLayerGradient {
	// virtual ~GJGradientLayer();

	static GJGradientLayer* create();

	virtual bool init() = ios 0x20d4cc;
}

[[link(android)]]
class GJGroundLayer : cocos2d::CCLayer {
	// virtual ~GJGroundLayer();

	static GJGroundLayer* create(int, int) = ios 0x35018;

	TodoReturn createLine(int) = ios 0x354fc;
	TodoReturn deactivateGround();
	TodoReturn fadeInFinished();
	TodoReturn getGroundY();
	TodoReturn hideShadows();
	bool init(int, int) = ios 0x3509c;
	void loadGroundSprites(int, bool) = ios 0x35694;
	TodoReturn positionGround(float);
	TodoReturn scaleGround(float) = ios 0x35a18;
	TodoReturn toggleVisible01(bool);
	TodoReturn toggleVisible02(bool) = ios 0x35918;
	void updateGround01Color(cocos2d::ccColor3B) = ios 0x3586c;
	void updateGround02Color(cocos2d::ccColor3B) = ios 0x35998;
	TodoReturn updateGroundPos(cocos2d::CCPoint);
	TodoReturn updateGroundWidth(bool);
	TodoReturn updateLineBlend(bool) = ios 0x35c9c;
	TodoReturn updateShadows() = ios 0x35c08;
	TodoReturn updateShadowXPos(float, float) = ios 0x35d70;

	virtual void draw() {}
	virtual void showGround() = ios 0x35cd8;
	virtual TodoReturn fadeInGround(float) = ios 0x35ce4;
	virtual TodoReturn fadeOutGround(float) = ios 0x35e38;
}

[[link(android)]]
class GJHttpResult : cocos2d::CCNode {
	// virtual ~GJHttpResult();

	static GJHttpResult* create(bool, gd::string, gd::string, GJHttpType);

	bool init(bool, gd::string, gd::string, GJHttpType);
}

[[link(android)]]
class GJItemIcon : cocos2d::CCSprite {
	// virtual ~GJItemIcon();

	static GJItemIcon* create(UnlockType, int, cocos2d::ccColor3B, cocos2d::ccColor3B, bool, bool, bool, cocos2d::ccColor3B);

	void changeToLockedState(float) = ios 0x30cc78;
	inline static GJItemIcon* createBrowserItem(UnlockType unlockType, int itemID) {
		return GJItemIcon::create(unlockType, itemID, {0xAF, 0xAF, 0xAF}, {0xFF, 0xFF, 0xFF}, false, true, true, {0xFF, 0xFF, 0xFF});
	}
	TodoReturn createStoreItem(UnlockType, int, bool, cocos2d::ccColor3B);
	void darkenStoreItem(cocos2d::ccColor3B);
	TodoReturn darkenStoreItem(ShopType);
	bool init(UnlockType, int, cocos2d::ccColor3B, cocos2d::ccColor3B, bool, bool, bool, cocos2d::ccColor3B) = ios 0x30e444;
	float scaleForType(UnlockType) = ios 0x30c758;
	TodoReturn toggleEnabledState(bool) = ios 0x30cd54;
	TodoReturn unlockedColorForType(int);

	virtual void setOpacity(unsigned char) = ios 0x30e8f4;
}

[[link(android)]]
class GJLevelList : cocos2d::CCNode {
	// virtual ~GJLevelList();

	static GJLevelList* create();
	static GJLevelList* create(cocos2d::CCDictionary*);

	TodoReturn addLevelToList(GJGameLevel*);
	int completedLevels() = ios 0xb365c;
	TodoReturn createWithCoder(DS_Dictionary*);
	void dataLoaded(DS_Dictionary*);
	TodoReturn duplicateListLevels(GJLevelList*);
	TodoReturn frameForListDifficulty(int, DifficultyIconType) = ios 0xb3f60;
	cocos2d::CCArray* getListLevelsArray(cocos2d::CCArray*);
	gd::string getUnpackedDescription() = ios 0xb2b9c;
	TodoReturn handleStatsConflict(GJLevelList*);
	TodoReturn hasMatchingLevels(GJLevelList*);
	TodoReturn orderForLevel(int);
	TodoReturn parseListLevels(gd::string);
	TodoReturn removeLevelFromList(int);
	TodoReturn reorderLevel(int, int);
	TodoReturn reorderLevelStep(int, bool);
	void showListInfo() = ios 0xb36b0;
	TodoReturn totalLevels() = ios 0xb364c;
	TodoReturn updateLevelsString();

	virtual void encodeWithCoder(DS_Dictionary*) = ios 0xb3d20;
	virtual bool canEncode() = ios 0xb3f58;
	virtual bool init() = ios 0xb29dc;

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

	void loadFromScore(GJUserScore*) = ios 0x109314;
	void onViewProfile(cocos2d::CCObject* sender) = ios 0x111848;
	void updateBGColor(int);

	virtual bool init() = ios 0x11183c;
	virtual void draw() = ios 0x111884;
}

[[link(android)]]
class GJListLayer : cocos2d::CCLayerColor {
	// virtual ~GJListLayer();

	static GJListLayer* create(BoomListView*, char const*, cocos2d::ccColor4B, float, float, int) = ios 0x85a2c;

	bool init(BoomListView*, char const*, cocos2d::ccColor4B, float, float, int) = ios 0x85b20;

	BoomListView* m_listView;
}

[[link(android)]]
class GJLocalLevelScoreCell : TableViewCell {
	// virtual ~GJLocalLevelScoreCell();
	GJLocalLevelScoreCell(char const*, float, float);

	void loadFromScore(GJLocalScore*);
	void updateBGColor(int);

	virtual bool init() = ios 0x11174c;
	virtual void draw() = ios 0x111758;
}

[[link(android)]]
class GJLocalScore : cocos2d::CCObject {
	// virtual ~GJLocalScore();

	static GJLocalScore* create(int, int);

	bool init(int, int);
}

[[link(android)]]
class GJMapObject : cocos2d::CCNode {
	// virtual ~GJMapObject();

	static GJMapObject* create(cocos2d::CCNode*);

	TodoReturn createMonster(int);
	bool init(cocos2d::CCNode*);
	TodoReturn monsterIdle();
	TodoReturn monsterJump();
	TodoReturn moveFinished();
	TodoReturn moveMonster();
	TodoReturn moveMonster(cocos2d::CCPoint, float);
	TodoReturn playerJump();
	void setObjectOrigin(cocos2d::CCPoint, float);
	TodoReturn startMonsterJumpLoop();
	TodoReturn startPlayerJumpLoop();
	TodoReturn touchMonster();
	TodoReturn updateShadow(float, float, cocos2d::CCPoint);
}

[[link(android)]]
class GJMapPack : cocos2d::CCNode {
	// virtual ~GJMapPack();

	static GJMapPack* create();
	static GJMapPack* create(cocos2d::CCDictionary*);

	int completedMaps() = ios 0xb1898;
	bool hasCompletedMapPack() = ios 0xb1930;
	TodoReturn parsePackColors(gd::string, gd::string);
	TodoReturn parsePackLevels(gd::string);
	int totalMaps() {
		if (this->m_levels) {
			return this->m_levels->count();
		}

		return 0;
	}

	virtual bool init() = ios 0xb1838;

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

	void loadFromMessage(GJUserMessage*);
	TodoReturn markAsRead();
	void onDeleteMessage(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);
	void onViewMessage(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	void updateBGColor(int);
	TodoReturn updateToggle();

	virtual bool init() = ios 0x112ab0;
	virtual void draw() = ios 0x112cdc;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x112d88;
	virtual void uploadActionFinished(int, int) = ios 0x112e70;
	virtual void uploadActionFailed(int, int) = ios 0x112f74;
	virtual void onClosePopup(UploadActionPopup*) = ios 0x11300c;
}

[[link(android)]]
class GJMessagePopup : FLAlertLayer, UploadActionDelegate, UploadPopupDelegate, FLAlertLayerProtocol, DownloadMessageDelegate {
	// virtual ~GJMessagePopup();

	static GJMessagePopup* create(GJUserMessage*);

	void blockUser();
	bool init(GJUserMessage*);
	void loadFromGJMessage(GJUserMessage*) = ios 0x2e25a8;
	void onBlock(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onRemove(cocos2d::CCObject* sender);
	void onReply(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = ios 0x2e2fec;
	virtual TodoReturn downloadMessageFinished(GJUserMessage*) = ios 0x2e3068;
	virtual TodoReturn downloadMessageFailed(int) = ios 0x2e30dc;
	virtual void uploadActionFinished(int, int) = ios 0x2e3194;
	virtual void uploadActionFailed(int, int) = ios 0x2e32bc;
	virtual void onClosePopup(UploadActionPopup*) = ios 0x2e3358;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x2e33f0;
}

[[link(android)]]
class GJMGLayer : cocos2d::CCLayer {
	// virtual ~GJMGLayer();

	static GJMGLayer* create(int) = ios 0x35e8c;

	TodoReturn deactivateGround();
	TodoReturn defaultYOffsetForBG2(int);
	bool init(int) = ios 0x35f5c;
	void loadGroundSprites(int, bool) = ios 0x362c4;
	TodoReturn scaleGround(float);
	TodoReturn toggleVisible01(bool);
	TodoReturn toggleVisible02(bool);
	TodoReturn updateGroundColor(cocos2d::ccColor3B, bool) = ios 0x36480;
	TodoReturn updateGroundOpacity(unsigned char, bool) = ios 0x36590;
	TodoReturn updateGroundPos(cocos2d::CCPoint);
	TodoReturn updateGroundWidth(bool);
	TodoReturn updateMG01Blend(bool) = ios 0x36788;
	TodoReturn updateMG02Blend(bool) = ios 0x367c4;

	virtual void draw() {}
	virtual void showGround() = ios 0x36778;
}

[[link(android)]]
class GJMoreGamesLayer : GJDropDownLayer {
	// virtual ~GJMoreGamesLayer();

	static GJMoreGamesLayer* create() = ios 0x6e474;

	TodoReturn getMoreGamesList();

	virtual void customSetup() = ios 0x6eb4c;
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

	static GJMultiplayerManager* sharedState() = ios 0x1d2078;

	void addComment(gd::string, int) = ios 0x1d3194;
	void addDLToActive(char const* tag, cocos2d::CCObject* obj);
	void addDLToActive(char const* tag);
	TodoReturn createAndAddComment(gd::string, int) = ios 0x1d37fc;
	void dataLoaded(DS_Dictionary*) = ios 0x1d38f8;
	void encodeDataTo(DS_Dictionary*) = ios 0x1d38f4;
	TodoReturn exitLobby(int);
	void firstSetup() = ios 0x1d38f0;
	TodoReturn getBasePostString() = ios 0x1d2e40;
	cocos2d::CCObject* getDLObject(char const*);
	TodoReturn getLastCommentIDForGame(int);
	void handleIt(bool, gd::string, gd::string, GJHttpType);
	void handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	void handleItND(cocos2d::CCNode*, void*);
	bool isDLActive(char const* tag);
	TodoReturn joinLobby(int);
	void onExitLobbyCompleted(gd::string, gd::string);
	void onJoinLobbyCompleted(gd::string, gd::string) = ios 0x1d26d8;
	void onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	void onUploadCommentCompleted(gd::string, gd::string);
	void ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType) = ios 0x12d328;
	void removeDLFromActive(char const*);
	void uploadComment(gd::string, int) = ios 0x1d333c;

	virtual bool init() = ios 0x1d2d80;
}

[[link(android)]]
class GJObjectDecoder : cocos2d::CCNode, ObjectDecoderDelegate {
	// virtual ~GJObjectDecoder();

	static GJObjectDecoder* sharedDecoder() = ios 0x21f8b4;

	virtual bool init();
	virtual TodoReturn getDecodedObject(int, DS_Dictionary*) = ios 0x21f954;
}

[[link(android)]]
class GJOptionsLayer : SetupTriggerPopup {
	// virtual ~GJOptionsLayer();
	// GJOptionsLayer();

	static GJOptionsLayer* create(int);

	TodoReturn addGVToggle(char const*, char const*, char const*) = ios 0x2dc34c;
	TodoReturn addToggle(char const*, int, bool, char const*);
	TodoReturn addToggleInternal(char const*, int, bool, char const*);
	TodoReturn countForPage(int) = ios 0x2dc544;
	void goToPage(int);
	TodoReturn incrementCountForPage(int) = ios 0x2dc2a0;
	TodoReturn infoKey(int);
	bool init(int) = ios 0x2db61c;
	TodoReturn layerForPage(int);
	TodoReturn layerKey(int);
	TodoReturn nextPosition(int);
	TodoReturn objectKey(int);
	TodoReturn objectsForPage(int);
	TodoReturn offsetToNextPage() = ios 0x2dbb94;
	void onInfo(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);
	TodoReturn pageKey(int);

	virtual void setupOptions() {}
	virtual TodoReturn didToggleGV(gd::string) = ios 0x18516c;
	virtual void didToggle(int) {}
}

[[link(android)]]
class GJPathPage : FLAlertLayer, FLAlertLayerProtocol, GJPurchaseDelegate {
	// virtual ~GJPathPage();

	static GJPathPage* create(int, GJPathsLayer*);

	bool init(int, GJPathsLayer*);
	void onActivatePath(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onIconInfo(cocos2d::CCObject* sender);
	void onUnlock(cocos2d::CCObject* sender) = ios 0x3b7150;
	TodoReturn playUnlockAnimation() = ios 0x3b726c;
	void showCantAffordMessage(GJStoreItem*) = ios 0x3b76a0;
	TodoReturn unlockAnimationFinished();
	TodoReturn unlockAnimationStep2() = ios 0x3b7bd4;
	TodoReturn unlockAnimationStep3() = ios 0x3b7dbc;

	virtual void registerWithTouchDispatcher() = ios 0x3b8384;
	virtual void keyBackClicked() = ios 0x3b8378;
	virtual void show() = ios 0x3b83bc;
	virtual TodoReturn didPurchaseItem(GJStoreItem*) = ios 0x3b7268;
}

[[link(android)]]
class GJPathRewardPopup : FLAlertLayer {
	// virtual ~GJPathRewardPopup();

	static GJPathRewardPopup* create(int);

	TodoReturn closePopup();
	bool init(int);
	void onClaim(cocos2d::CCObject* sender);

	virtual void keyBackClicked() {}
}

[[link(android)]]
class GJPathsLayer : FLAlertLayer, FLAlertLayerProtocol {
	// virtual ~GJPathsLayer();

	static GJPathsLayer* create();

	TodoReturn darkenButtons(bool);
	static gd::string nameForPath(int);
	void onClose(cocos2d::CCObject* sender);
	void onPath(cocos2d::CCObject* sender);

	virtual bool init() = ios 0x3b4f18;
	virtual void onExit() = ios 0x3b55a0;
	virtual void registerWithTouchDispatcher() = ios 0x3b5790;
	virtual void keyBackClicked() = ios 0x3b5784;
	virtual void show() = ios 0x3b57c8;
}

[[link(android)]]
class GJPathSprite : CCSpriteCOpacity {
	// virtual ~GJPathSprite();

	static GJPathSprite* create(int) = ios 0x3b53ec;

	TodoReturn addRankLabel(int);
	TodoReturn addShardSprite() = ios 0x3b8260;
	TodoReturn changeToLockedArt() = ios 0x3b79b4;
	bool init(int) = ios 0x3b8530;
	TodoReturn updateState();

  int m_pathNumber;
}

[[link(android)]]
class GJPFollowCommandLayer : SetupTriggerPopup {
	// virtual ~GJPFollowCommandLayer();

	static GJPFollowCommandLayer* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x16576c;

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x165858;
	void onUpdateGroupID(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn sliderXModChanged(cocos2d::CCObject*);
	TodoReturn sliderYModChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateMaxSpeed();
	TodoReturn updateMaxSpeedLabel() = ios 0x167058;
	TodoReturn updateOffsetLabel() = ios 0x166fa0;
	TodoReturn updatePlayerOffset();
	TodoReturn updateTargetGroupID();
	TodoReturn updateTextInputLabel() = ios 0x166d98;
	TodoReturn updateXMod();
	TodoReturn updateXModLabel() = ios 0x166e40;
	TodoReturn updateYMod();
	TodoReturn updateYModLabel() = ios 0x166ef0;

	virtual TodoReturn determineStartValues() = ios 0x167108;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x1679f0;
	virtual void textChanged(CCTextInputNode*) = ios 0x167608;
}

[[link(android)]]
class GJPromoPopup : FLAlertLayer {
	// virtual ~GJPromoPopup();

	static GJPromoPopup* create(gd::string) = ios 0x2ec500;

	bool init(gd::string) = ios 0x2ec5fc;
	void onClose(cocos2d::CCObject* sender);

	virtual void onExit() = ios 0x2ec8a4;
	virtual void registerWithTouchDispatcher() = ios 0x2ec8e4;
	virtual void keyBackClicked() = ios 0x2ec8d8;
	virtual void show() = ios 0x2ec91c;
}

[[link(android)]]
class GJPurchaseDelegate {
	virtual TodoReturn didPurchaseItem(GJStoreItem*);
}

[[link(android)]]
class GJRequestCell : TableViewCell, FLAlertLayerProtocol, UploadPopupDelegate, UploadActionDelegate {
	// virtual ~GJRequestCell();
	GJRequestCell(char const*, float, float);

	void loadFromScore(GJUserScore*);
	TodoReturn markAsRead();
	void onDeleteRequest(cocos2d::CCObject* sender) = ios 0x112490;
	void onToggle(cocos2d::CCObject* sender);
	void onViewFriendRequest(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	void updateBGColor(int);
	TodoReturn updateToggle();

	virtual bool init() = ios 0x1123d4;
	virtual void draw() = ios 0x112618;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x1126c4;
	virtual void uploadActionFinished(int, int) = ios 0x1127b8;
	virtual void uploadActionFailed(int, int) = ios 0x1128d8;
	virtual void onClosePopup(UploadActionPopup*) = ios 0x11298c;
}

[[link(android)]]
class GJRewardDelegate {
	virtual void rewardsStatusFinished(int);
	virtual void rewardsStatusFailed();
}

[[link(android)]]
class GJRewardItem : cocos2d::CCObject {
	// virtual ~GJRewardItem();

	static GJRewardItem* create();
	static GJRewardItem* create(int, int, gd::string);

	TodoReturn createSpecial(GJRewardType, int, int, SpecialRewardItem, int, SpecialRewardItem, int, int, int);
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn createWithObject(GJRewardType, GJRewardObject*);
	TodoReturn createWithObjects(GJRewardType, cocos2d::CCArray*);
	void dataLoaded(DS_Dictionary*);
	TodoReturn getNextShardType(SpecialRewardItem);
	TodoReturn getRandomNonMaxShardType();
	TodoReturn getRandomShardType();
	TodoReturn getRewardCount(SpecialRewardItem);
	TodoReturn getRewardObjectForType(SpecialRewardItem);
	bool init(int, int, gd::string);
	bool isShardType(SpecialRewardItem);
	TodoReturn rewardItemToStat(SpecialRewardItem);

	virtual void encodeWithCoder(DS_Dictionary*) = ios 0x3444fc;
	virtual bool canEncode() = ios 0x344568;

	int m_chestID;
	int m_timeRemaining;
	GJRewardType m_rewardType;
	cocos2d::CCArray* m_rewardObjects;
	bool m_unk;
}

[[link(android)]]
class GJRewardObject : cocos2d::CCObject {
	// virtual ~GJRewardObject();

	static GJRewardObject* create();
	static GJRewardObject* create(SpecialRewardItem, int, int);

	TodoReturn createItemUnlock(UnlockType, int);
	TodoReturn createWithCoder(DS_Dictionary*);
	void dataLoaded(DS_Dictionary*);
	bool init(SpecialRewardItem, int, int);
	bool isSpecialType();

	virtual void encodeWithCoder(DS_Dictionary*) = ios 0x3440d4;
	virtual bool canEncode() = ios 0x344154;

	SpecialRewardItem m_specialRewardItem;
	UnlockType m_unlockType;
	int m_itemID;
	int m_total;
}

[[link(android)]]
class GJRobotSprite : CCAnimatedSprite {
	// virtual ~GJRobotSprite();
	// GJRobotSprite();

	static GJRobotSprite* create(int);

	TodoReturn hideGlow();
	bool init(int, gd::string);
	bool init(int);
	void showGlow();
	TodoReturn updateColor01(cocos2d::ccColor3B) = ios 0x248694;
	TodoReturn updateColor02(cocos2d::ccColor3B) = ios 0x24893c;
	TodoReturn updateColors() = ios 0x2486a8;
	TodoReturn updateFrame(int) = ios 0x2481a4;
	void updateGlowColor(cocos2d::ccColor3B, bool) = ios 0x24894c;

	virtual void setOpacity(unsigned char) = ios 0x2489c8;
	virtual TodoReturn hideSecondary() = ios 0x248aac;
}

[[link(android)]]
class GJRotateCommandLayer : SetupTriggerPopup {
	// virtual ~GJRotateCommandLayer();

	static GJRotateCommandLayer* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	void onEasing(cocos2d::CCObject* sender);
	void onEasingRate(cocos2d::CCObject* sender);
	void onFollowRotation(cocos2d::CCObject* sender);
	void onLockRotation(cocos2d::CCObject* sender);
	void onUpdateGroupID(cocos2d::CCObject* sender);
	void onUpdateGroupID2(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn sliderDegreesChanged(cocos2d::CCObject*);
	TodoReturn sliderTimesChanged(cocos2d::CCObject*);
	TodoReturn toggleEasingRateVisibility();
	TodoReturn updateCommandDegrees();
	TodoReturn updateCommandTimes();
	TodoReturn updateDegreesLabel();
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateEasingLabel();
	TodoReturn updateEasingRateLabel();
	TodoReturn updateMoveCommandEasing();
	TodoReturn updateMoveCommandEasingRate();
	TodoReturn updateTargetGroupID();
	TodoReturn updateTargetGroupID2();
	TodoReturn updateTextInputLabel();
	TodoReturn updateTextInputLabel2();
	TodoReturn updateTimesLabel();

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual void textChanged(CCTextInputNode*);
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float);
}

[[link(android)]]
class GJRotationControl : cocos2d::CCLayer {
	// virtual ~GJRotationControl();

	static GJRotationControl* create() = ios 0x3c3980;

	TodoReturn finishTouch() = ios 0x3f4584;
	void setAngle(float) = ios 0x3f6cc0;
	TodoReturn updateSliderPosition(cocos2d::CCPoint) = ios 0x3f6d3c;

	virtual bool init() = ios 0x3f6c0c;
	virtual void draw() = ios 0x3f6fe0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3f6e14;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3f6f14;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3f6f90;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3f6fc4;
}

[[link(android)]]
class GJRotationControlDelegate {
	virtual void angleChanged(float);
	virtual void angleChangeBegin();
	virtual void angleChangeEnded();
}

[[link(android)]]
class GJScaleControl : cocos2d::CCLayer {
	// virtual ~GJScaleControl();

	static GJScaleControl* create() = ios 0x3c3a50;

	TodoReturn finishTouch();
	TodoReturn loadValues(GameObject*, cocos2d::CCArray*, gd::unordered_map<int, GameObjectEditorState>&);
	void onToggleLockScale(cocos2d::CCObject* sender);
	TodoReturn scaleFromValue(float);
	TodoReturn skewFromValue(float);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateLabelX(float) = ios 0x3f74a4;
	TodoReturn updateLabelXY(float) = ios 0x3f7574;
	TodoReturn updateLabelY(float) = ios 0x3f750c;
	TodoReturn valueFromScale(float);
	TodoReturn valueFromSkew(float);

	virtual bool init() = ios 0x3f7048;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3f75dc;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3f7768;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3f7ac0;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3f7be8;
}

[[link(android)]]
class GJScaleControlDelegate {
	virtual void scaleXChanged(float, bool);
	virtual void scaleYChanged(float, bool);
	virtual void scaleXYChanged(float, float, bool);
	virtual void scaleChangeBegin();
	virtual void scaleChangeEnded();
	virtual void updateScaleControl();
	virtual void anchorPointMoved(cocos2d::CCPoint);
}

[[link(android)]]
class GJScoreCell : TableViewCell, FLAlertLayerProtocol {
	// virtual ~GJScoreCell();
	GJScoreCell(char const*, float, float);

	void loadFromScore(GJUserScore*) = ios 0x108200;
	void onBan(cocos2d::CCObject* sender);
	void onCheck(cocos2d::CCObject* sender);
	void onMoreLevels(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	void updateBGColor(int);

	virtual bool init() = ios 0x1114c4;
	virtual void draw() = ios 0x111668;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x111610;

	GJUserScore* m_score;
}

[[link(android)]]
class GJSearchObject : cocos2d::CCNode {
	// virtual ~GJSearchObject();

	static GJSearchObject* create(SearchType searchType, gd::string searchQuery, gd::string difficulty, gd::string length, int page, bool star, bool uncompleted, bool featured, int songID, bool original, bool twoPlayer, bool customSong, bool songFilter, bool noStar, bool coins, bool epic, bool legendary, bool mythic, bool onlyCompleted, int demonFilter, int folder, int searchMode) = ios 0xb1e80;
	static GJSearchObject* create(SearchType searchType, gd::string searchQuery) = ios 0xb2188;
	static GJSearchObject* create(SearchType searchType) = ios 0xb2078;
	static GJSearchObject* createFromKey(char const* key);

	char const* getKey() = ios 0xa105c;
	char const* getNextPageKey();
	GJSearchObject* getNextPageObject();
	GJSearchObject* getPageObject(int page);
	GJSearchObject* getPrevPageObject();
	char const* getSearchKey(SearchType searchType, gd::string searchQuery, gd::string difficulty, gd::string length, int page, bool star, bool uncompleted, bool featured, int songID, bool original, bool twoPlayer, bool customSong, bool songFilter, bool noStar, bool coins, bool epic, bool legendary, bool mythic, bool onlyCompleted, int demonFilter, int folder, int searchMode) = ios 0xb23d4;
	bool init(SearchType searchType, gd::string searchQuery, gd::string difficulty, gd::string length, int page, bool star, bool uncompleted, bool featured, int songID, bool original, bool twoPlayer, bool customSong, bool songFilter, bool noStar, bool coins, bool epic, bool legendary, bool mythic, bool onlyCompleted, int demonFilter, int folder, int searchMode) = ios 0xb2290;
	bool isLevelSearchObject() = ios 0xb2778;

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
	TodoReturn reset() = ios 0x2754f8;
	TodoReturn stopTweenAction(int);
	TodoReturn timesyncShaderAction(int);
	TodoReturn timesyncShaderActions();
	TodoReturn tweenValue(float, float, int, float, int, float);
	TodoReturn updateTweenAction(float, int);
	TodoReturn updateTweenActions(float);
}

[[link(android)]]
class GJShopLayer : cocos2d::CCLayer, GJPurchaseDelegate, DialogDelegate, RewardedVideoDelegate {
	// virtual ~GJShopLayer();

	static GJShopLayer* create(ShopType);

	TodoReturn exitVideoAdItems();
	bool init(ShopType) = ios 0x1529a8;
	void onBack(cocos2d::CCObject* sender);
	void onCommunityCredits(cocos2d::CCObject* sender);
	void onPlushies(cocos2d::CCObject* sender);
	void onSelectItem(cocos2d::CCObject* sender) = ios 0x15402c;
	void onVideoAd(cocos2d::CCObject* sender);
	static cocos2d::CCScene* scene(ShopType);
	void showCantAffordMessage(GJStoreItem*) = ios 0x154360;
	void showReactMessage() = ios 0x154c3c;
	TodoReturn updateCurrencyCounter();

	virtual void onExit() = ios 0x15413c;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x1559d8;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x155cc4;
	virtual void registerWithTouchDispatcher() = ios 0x155ce0;
	virtual void keyBackClicked() = ios 0x154c30;
	virtual TodoReturn didPurchaseItem(GJStoreItem*) = ios 0x154730;
	virtual TodoReturn rewardedVideoFinished() = ios 0x1542c8;
	virtual void dialogClosed(DialogLayer*) = ios 0x15581c;
}

[[link(android)]]
class GJSmartBlockPreview : cocos2d::CCNode {
	// virtual ~GJSmartBlockPreview();

	static GJSmartBlockPreview* create(gd::string);

	TodoReturn addChance(int, int) = ios 0xcc70;
	TodoReturn addCount(int) = ios 0xcbcc;
	TodoReturn addPreview(gd::string, gd::string, LevelEditorLayer*) = ios 0xca00;
	TodoReturn addTemplateGuide(gd::string, int);
	TodoReturn addTemplateGuide(SmartPrefabResult, float);
	TodoReturn createInfoLabel() = ios 0xcb74;
	bool init(gd::string);
	TodoReturn toggleSelectItem(bool);
}

[[link(android)]]
class GJSmartBlockPreviewSprite : cocos2d::CCNode {
	// virtual ~GJSmartBlockPreviewSprite();

	static GJSmartBlockPreviewSprite* create();

	virtual bool init();
	virtual void visit() = ios 0xcebc;
}

[[link(android)]]
class GJSmartPrefab : cocos2d::CCObject {
	// virtual ~GJSmartPrefab();

	static GJSmartPrefab* create();

	TodoReturn createWithCoder(DS_Dictionary*);
	void dataLoaded(DS_Dictionary*);
	bool init();

	virtual void encodeWithCoder(DS_Dictionary*) = ios 0xc0c4;
	virtual bool canEncode() = ios 0xc010;
}

[[link(android)]]
class GJSmartTemplate : cocos2d::CCObject {
	// virtual ~GJSmartTemplate();

	static GJSmartTemplate* create();

	TodoReturn applyTransformationsForType(SmartBlockType, cocos2d::CCSprite*);
	TodoReturn createWithCoder(DS_Dictionary*);
	void dataLoaded(DS_Dictionary*);
	TodoReturn flipBlockType(SmartBlockType, bool, bool);
	TodoReturn flipBlockTypeX(SmartBlockType);
	TodoReturn flipBlockTypeY(SmartBlockType);
	TodoReturn flipKey(gd::string, bool, bool);
	TodoReturn generateRemapDict();
	TodoReturn getNoCornerKey(gd::string);
	TodoReturn getPrefab(cocos2d::CCPoint, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*);
	TodoReturn getPrefab(gd::string, bool, bool);
	TodoReturn getPrefabs(gd::string);
	TodoReturn getPrefabWithID(gd::string, int);
	TodoReturn getRandomPrefab(gd::string);
	TodoReturn getSimplifiedKey(gd::string);
	TodoReturn getSimplifiedType(SmartBlockType, bool&);
	TodoReturn getTemplateState(gd::vector<SmartPrefabResult>&);
	TodoReturn getTotalChanceForPrefab(gd::string);
	TodoReturn getVerySimplifiedKey(gd::string);
	bool init();
	bool isUnrequired(gd::string) = ios 0xb7b0;
	TodoReturn keyFromNeighbors(cocos2d::CCPoint, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*);
	TodoReturn keyFromNeighbors(SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType);
	TodoReturn keyFromNeighborsOld(bool, bool, bool, bool, bool, bool, bool, bool);
	TodoReturn logTemplateStatus(bool) = ios 0xb548;
	TodoReturn offsetForDir(GJSmartDirection, int) = ios 0xaf24;
	TodoReturn offsetForObject(SmartGameObject*);
	TodoReturn offsetForType(SmartBlockType);
	TodoReturn removePrefab(gd::string, int);
	TodoReturn resetScannedPrefabs();
	TodoReturn rotateBlockType(SmartBlockType, int);
	TodoReturn rotateBlockType90(SmartBlockType);
	TodoReturn rotateKey(gd::string, int);
	TodoReturn savePrefab(gd::string, gd::string);
	TodoReturn saveRemap(gd::string);
	TodoReturn saveRemapToDict(gd::string, gd::string, cocos2d::CCDictionary*);
	TodoReturn scanForPrefab(gd::string);
	TodoReturn shouldDiscardObject(SmartBlockType, GJSmartDirection);
	TodoReturn smartObjectToType(SmartGameObject*, cocos2d::CCPoint) = ios 0xb068;
	TodoReturn smartTypeToObjectKey(SmartBlockType);

	virtual void encodeWithCoder(DS_Dictionary*) = ios 0xbef0;
	virtual bool canEncode() = ios 0xbc9c;
}

[[link(android)]]
class GJSongBrowser : GJDropDownLayer, FLAlertLayerProtocol, TableViewCellDelegate {
	// virtual ~GJSongBrowser();

	static GJSongBrowser* create();

	void loadPage(int) = ios 0x26d398;
	void onDeleteAll(cocos2d::CCObject* sender) = ios 0x26d890;
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void setupPageInfo(int, int, int);
	TodoReturn setupSongBrowser(cocos2d::CCArray*);

	virtual bool init() = ios 0x26d358;
	virtual void customSetup() = ios 0x26d534;
	virtual void exitLayer(cocos2d::CCObject*) = ios 0x26d504;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x26da68;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = ios 0x26db24;
	virtual TodoReturn getSelectedCellIdx() = ios 0x26db84;

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

	static GJSpecialColorSelect* create(int, GJSpecialColorSelectDelegate*, ColorSelectType);

	TodoReturn getButtonByTag(int);
	TodoReturn highlightSelected(ButtonSprite*);
	bool init(int, GJSpecialColorSelectDelegate*, ColorSelectType);
	void onClose(cocos2d::CCObject* sender);
	void onSelectColor(cocos2d::CCObject* sender);
	static const char* textForColorIdx(int);

	virtual void keyBackClicked() = ios 0x1b6b54;
}

[[link(android)]]
class GJSpecialColorSelectDelegate {
	virtual void colorSelectClosed(GJSpecialColorSelect*, int);
}

[[link(android)]]
class GJSpiderSprite : GJRobotSprite {
	// virtual ~GJSpiderSprite();

	static GJSpiderSprite* create(int);

	bool init(int);
}

[[link(android)]]
class GJSpriteColor {
	// GJSpriteColor();

	TodoReturn getColorMode();

	int m_colorID;
    int m_defaultColorID;
    float m_opacity;
	float m_baseOpacity;
    cocos2d::ccHSVValue m_hsv;
    bool m_usesHSV;
    bool m_usesCustomBlend;
	cocos2d::ccColor3B m_customColor;

}

[[link(android)]]
class GJStoreItem : cocos2d::CCNode {
	// virtual ~GJStoreItem();

	static GJStoreItem* create(int, int, int, int, ShopType);

	TodoReturn getCurrencyKey() = ios 0x331990;
	bool init(int, int, int, int, ShopType);
}

[[link(android)]]
class GJTransformControl : cocos2d::CCLayer {
	// virtual ~GJTransformControl();

	static GJTransformControl* create() = ios 0x3c3b64;

	TodoReturn applyRotation(float);
	TodoReturn calculateRotationOffset();
	TodoReturn finishTouch();
	void loadFromState(GJTransformState&);
	TodoReturn loadValues(GameObject*, cocos2d::CCArray*, gd::unordered_map<int, GameObjectEditorState>&);
	TodoReturn logCurrentZeroPos();
	void onToggleLockScale(cocos2d::CCObject* sender);
	TodoReturn refreshControl();
	void saveToState(GJTransformState&);
	TodoReturn scaleButtons(float) = ios 0x3eb000;
	TodoReturn spriteByTag(int);
	TodoReturn updateAnchorSprite(cocos2d::CCPoint);
	void updateButtons(bool, bool);
	TodoReturn updateMinMaxPositions();

	virtual bool init() = ios 0x3f7ca4;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3f8044;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3f81e8;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3f86f4;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3f88cc;
}

[[link(android)]]
class GJTransformControlDelegate {
	virtual void transformScaleXChanged(float);
	virtual void transformScaleYChanged(float);
	virtual void transformScaleXYChanged(float, float);
	virtual void transformRotationXChanged(float);
	virtual void transformRotationYChanged(float);
	virtual void transformRotationChanged(float);
	virtual void transformResetRotation();
	virtual void transformRestoreRotation();
	virtual void transformSkewXChanged(float);
	virtual void transformSkewYChanged(float);
	virtual void transformChangeBegin();
	virtual void transformChangeEnded();
	virtual void updateTransformControl();
	virtual void anchorPointMoved(cocos2d::CCPoint);
	virtual TodoReturn getTransformNode();
	virtual TodoReturn getUI();
}

[[link(android)]]
class GJUINode : cocos2d::CCNode {
	// virtual ~GJUINode();

	static GJUINode* create(UIButtonConfig&) = ios 0x526e4;

	TodoReturn activeRangeTouchTest(cocos2d::CCPoint);
	TodoReturn activeTouchTest(cocos2d::CCPoint);
	TodoReturn getButtonScale();
	TodoReturn getOpacity();
	TodoReturn highlightButton(int);
	bool init(UIButtonConfig&) = ios 0x53b18;
	void loadFromConfig(UIButtonConfig&) = ios 0x52aec;
	TodoReturn resetState();
	TodoReturn saveToConfig(UIButtonConfig&);
	void setOpacity(unsigned char);
	TodoReturn toggleHighlight(int, bool);
	void toggleModeB(bool) = ios 0x53dec;
	TodoReturn touchEnded();
	TodoReturn touchTest(cocos2d::CCPoint) = ios 0x537b0;
	TodoReturn updateButtonFrames() = ios 0x53fcc;
	TodoReturn updateButtonPositions() = ios 0x53d04;
	TodoReturn updateButtonScale(float) = ios 0x53e54;
	TodoReturn updateDeadzone(int);
	TodoReturn updateDragRadius(float);
	TodoReturn updateHeight(float);
	TodoReturn updateRangePos(cocos2d::CCPoint);
	TodoReturn updateSize(float, float) = ios 0x53cb4;
	TodoReturn updateWidth(float);

	virtual void draw() = ios 0x54274;
}

[[link(android)]]
class GJUnlockableItem : cocos2d::CCObject {
	// virtual ~GJUnlockableItem();

	static GJUnlockableItem* create();

	bool init();
}

[[link(android)]]
class GJUserCell : TableViewCell, FLAlertLayerProtocol, UploadPopupDelegate, UploadActionDelegate {
	// virtual ~GJUserCell();
	GJUserCell(char const*, float, float);

	void loadFromScore(GJUserScore*);
	void onCancelFriendRequest(cocos2d::CCObject* sender);
	void onRemoveFriend(cocos2d::CCObject* sender) = ios 0x111cc4;
	void onSendMessage(cocos2d::CCObject* sender);
	void onUnblockUser(cocos2d::CCObject* sender) = ios 0x111a34;
	void onViewFriendRequest(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	void updateBGColor(int);

	virtual bool init() = ios 0x1119e8;
	virtual void draw() = ios 0x111e3c;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x111ee8;
	virtual void uploadActionFinished(int, int) = ios 0x1120f0;
	virtual void uploadActionFailed(int, int) = ios 0x112218;
	virtual void onClosePopup(UploadActionPopup*) = ios 0x1122b0;
}

[[link(android)]]
class GJUserMessage : cocos2d::CCNode {
	// virtual ~GJUserMessage();

	static GJUserMessage* create() = ios 0xb1d78;
	static GJUserMessage* create(cocos2d::CCDictionary*);

	virtual bool init();

	int m_messageID;
}

[[link(android)]]
class GJUserScore : cocos2d::CCNode {
	// virtual ~GJUserScore();

	static GJUserScore* create();
	static GJUserScore* create(cocos2d::CCDictionary*) = ios 0x99f48;

	bool isCurrentUser() = ios 0xb1b7c;
	TodoReturn mergeWithScore(GJUserScore*);

	virtual bool init() = ios 0xb1b34;

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

	static GJWorldNode* create(int, WorldSelectLayer*);

	TodoReturn addDotsToLevel(int, bool);
	TodoReturn dotPositionForLevel(int, int);
	bool init(int, WorldSelectLayer*);
	void onLevel(cocos2d::CCObject* sender);
	TodoReturn playStep1();
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn positionForLevelButton(int);
	TodoReturn unlockActiveItem();
}

[[link(android)]]
class GJWriteMessagePopup : FLAlertLayer, TextInputDelegate, UploadMessageDelegate, UploadPopupDelegate, FLAlertLayerProtocol {
	// virtual ~GJWriteMessagePopup();

	static GJWriteMessagePopup* create(int, int);

	TodoReturn closeMessagePopup(bool);
	bool init(int, int);
	void onClearBody(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onSend(cocos2d::CCObject* sender) = ios 0x2e42c0;
	TodoReturn updateBody(gd::string);
	TodoReturn updateCharCountLabel(int);
	TodoReturn updateSubject(gd::string);
	TodoReturn updateText(gd::string, int) = ios 0x2e49d0;

	virtual void registerWithTouchDispatcher() = ios 0x2e4850;
	virtual void keyBackClicked() = ios 0x2e483c;
	virtual void textInputOpened(CCTextInputNode*) {}
	virtual void textInputClosed(CCTextInputNode*) = ios 0x2e4888;
	virtual void textChanged(CCTextInputNode*) = ios 0x2e48ac;
	virtual void uploadMessageFinished(int) = ios 0x2e4ccc;
	virtual void uploadMessageFailed(int) = ios 0x2e4d5c;
	virtual void onClosePopup(UploadActionPopup*) = ios 0x2e4de0;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x2e4e5c;
	virtual void textInputShouldOffset(CCTextInputNode*, float) = ios 0x2e4ef0;
	virtual void textInputReturn(CCTextInputNode*) = ios 0x2e4f5c;
}

[[link(android)]]
class GManager : cocos2d::CCNode {
	// virtual ~GManager();

	TodoReturn getCompressedSaveString();
	gd::string getSaveString();
	TodoReturn load();
	void loadDataFromFile(gd::string const&) = ios 0x252508;
	void loadFromCompressedString(gd::string&) = ios 0x2522b8;
	void loadFromString(gd::string&) = ios 0x25220c;
	inline void save() {
		saveGMTo(m_fileName);
	}
	TodoReturn saveData(DS_Dictionary*, gd::string);
	void saveGMTo(gd::string) = ios 0x2523c4;
	TodoReturn tryLoadData(DS_Dictionary*, gd::string const&) = ios 0x252698;
	inline GManager() {}

	virtual bool init() = ios 0x2520fc;
	virtual void setup() = ios 0x25210c;
	virtual void encodeDataTo(DS_Dictionary*) = ios 0x252504;
	virtual void dataLoaded(DS_Dictionary*) = ios 0x252948;
	virtual void firstLoad() = ios 0x25294c;

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

	static GooglePlayManager* sharedState();

	void googlePlaySignedIn();

	virtual bool init() = ios 0x4aea0;
}

[[link(android)]]
class GradientTriggerObject : EffectGameObject {
	// virtual ~GradientTriggerObject();

	static GradientTriggerObject* create();

	virtual bool init() = ios 0x378908;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x378ea0;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x37895c;
}

[[link(android)]]
class GraphicsReloadLayer : cocos2d::CCLayer {
	// virtual ~GraphicsReloadLayer();

	static GraphicsReloadLayer* create(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool, bool);

	bool init(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool, bool);
	TodoReturn performReload();
	static cocos2d::CCScene* scene(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool, bool);
}

[[link(android)]]
class GravityEffectSprite : cocos2d::CCSprite {
	// virtual ~GravityEffectSprite();

	static GravityEffectSprite* create() = ios 0x116d50;

	TodoReturn updateSpritesColor(cocos2d::ccColor3B);

	virtual bool init() = ios 0x123a34;
	virtual void draw() = ios 0x123c58;
}

[[link(android)]]
class GroupCommandObject2 {
	// ~GroupCommandObject2();
	// GroupCommandObject2();
	// GroupCommandObject2(GroupCommandObject2 const&);

	TodoReturn reset();
	TodoReturn resetDelta(bool);
	TodoReturn runFollowCommand(double, double, double);
	TodoReturn runMoveCommand(cocos2d::CCPoint, double, int, double, bool, bool, bool, bool, double, double);
	TodoReturn runPlayerFollowCommand(double, double, int, double, double);
	TodoReturn runRotateCommand(double, double, int, double, bool, int);
	TodoReturn runTransformCommand(double, int, double);
	TodoReturn step(float);
	TodoReturn stepTransformCommand(float, bool, bool);
	TodoReturn updateAction(int, float);
	TodoReturn updateEffectAction(float, int);
}

[[link(android)]]
class HardStreak : cocos2d::CCDrawNode {
	// virtual ~HardStreak();

	static HardStreak* create() = ios 0x66e34;

	void addPoint(cocos2d::CCPoint);
	TodoReturn clearAboveXPos(float) = ios 0x67884;
	TodoReturn clearBehindXPos(float);
	TodoReturn createDuplicate() = ios 0x67918;
	void firstSetup() = ios 0x66ee8;
	TodoReturn normalizeAngle(double);
	TodoReturn quadCornerOffset(cocos2d::CCPoint, cocos2d::CCPoint, float);
	inline void reset() {
		this->clear();
		m_pointArray->removeAllObjects();
	}
	void resumeStroke() = ios 0x675bc;
	TodoReturn scheduleAutoUpdate() = ios 0x66f6c;
	void stopStroke();
	callback void updateStroke(float) = ios 0x66f7c;

	virtual bool init() = ios 0x66ea8;

	// camila
	PAD = android32 0x20, android64 0x24;
	cocos2d::CCArray* m_pointArray; // android64 = 0x1a0
	cocos2d::CCPoint m_currentPoint;
	float m_waveSize;
	float m_pulseSize; // android32 = 0x168 (0x168)
	// bool m_isSolid;
}

[[link(android)]]
class HSVLiveOverlay : FLAlertLayer, HSVWidgetDelegate {
	// virtual ~HSVLiveOverlay();

	static HSVLiveOverlay* create(GameObject*, cocos2d::CCArray*);

	void closeColorSelect(cocos2d::CCObject*);
	TodoReturn createHSVWidget(int);
	TodoReturn determineStartValues() = ios 0x1a6034;
	bool init(GameObject*, cocos2d::CCArray*) = ios 0x1a5be8;
	void onSelectTab(cocos2d::CCObject* sender);
	TodoReturn toggleControls(bool);

	virtual void keyBackClicked() = ios 0x1a62ac;
	virtual void show() = ios 0x1a62c0;
	virtual void hsvChanged(ConfigureHSVWidget*) = ios 0x1a630c;
}

[[link(android)]]
class HSVWidgetDelegate {
	virtual void hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue) {}
	virtual void hsvChanged(ConfigureHSVWidget*) {}
}

[[link(android)]]
class HSVWidgetPopup : FLAlertLayer {
	// virtual ~HSVWidgetPopup();

	static HSVWidgetPopup* create(cocos2d::ccHSVValue, HSVWidgetDelegate*, gd::string) = ios 0xff710;

	bool init(cocos2d::ccHSVValue, HSVWidgetDelegate*, gd::string) = ios 0xff828;
	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = ios 0xffc50;
}

[[link(android)]]
class InfoAlertButton : CCMenuItemSpriteExtra {
	// virtual ~InfoAlertButton();

	static InfoAlertButton* create(gd::string, gd::string, float) = ios 0x17228c;

	bool init(gd::string, gd::string, float) = ios 0x1723c4;

	virtual void activate() = ios 0x172468;
}

[[link(android)]]
class InfoLayer : FLAlertLayer, LevelCommentDelegate, CommentUploadDelegate, FLAlertLayerProtocol {
	// virtual ~InfoLayer();

	static InfoLayer* create(GJGameLevel*, GJUserScore*, GJLevelList*) = ios 0x35352c;

	TodoReturn confirmReport(cocos2d::CCObject*) = ios 0x3556c4;
	int getAccountID();
	int getID() {
		if(m_score) return m_score->m_userID;
		if(m_levelList) return - m_levelList->m_listID;
		if(m_level) return m_level->m_levelID;
		return 0;
	}
	int getRealID();
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint);
	bool init(GJGameLevel*, GJUserScore*, GJLevelList*) = ios 0x353630;
	bool isCorrect(char const*);
	void loadPage(int, bool);
	void onClose(cocos2d::CCObject* sender) = ios 0x355888;
	void onComment(cocos2d::CCObject* sender) = ios 0x3553ac;
	void onCopyLevelID(cocos2d::CCObject* sender) = ios 0x3564d4;
	void onGetComments(cocos2d::CCObject* sender);
	void onLevelInfo(cocos2d::CCObject* sender) = ios 0x355ff8;
	void onMore(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onOriginal(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onRefreshComments(cocos2d::CCObject* sender) = ios 0x356424;
	void onSimilar(cocos2d::CCObject* sender);
	TodoReturn reloadWindow() = ios 0x356ddc;
	void setupCommentsBrowser(cocos2d::CCArray*) = ios 0x355b08;
	void setupLevelInfo();
	TodoReturn toggleCommentMode(cocos2d::CCObject*);
	TodoReturn toggleExtendedMode(cocos2d::CCObject*) = ios 0x355a5c;
	TodoReturn toggleSmallCommentMode(cocos2d::CCObject*);
	TodoReturn updateCommentModeButtons();
	TodoReturn updateLevelsLabel();

	virtual void registerWithTouchDispatcher() = ios 0x356720;
	virtual void keyBackClicked() = ios 0x356714;
	virtual void show() = ios 0x356f48;
	virtual void loadCommentsFinished(cocos2d::CCArray*, char const*) = ios 0x3567a8;
	virtual void loadCommentsFailed(char const*) = ios 0x356818;
	virtual void setupPageInfo(gd::string, char const*) = ios 0x356874;
	virtual void commentUploadFinished(int) = ios 0x356c78;
	virtual void commentUploadFailed(int, CommentError) = ios 0x356d08;
	virtual void updateUserScoreFinished() = ios 0x356bac;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x356620;

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

	static InheritanceNode* create(int, InheritanceNode*);

	bool init(int, InheritanceNode*);
}

[[link(android)]]
class ItemInfoPopup : FLAlertLayer {
	// virtual ~ItemInfoPopup();

	static ItemInfoPopup* create(int, UnlockType) = ios 0x30d34c;

	bool init(int, UnlockType) = ios 0x30eb64;
	bool isUnlockedByDefault(int, UnlockType);
	TodoReturn nameForUnlockType(int, UnlockType) = ios 0x30fbb0;
	void onClose(cocos2d::CCObject* sender);
	void onCredit(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = ios 0x30fd24;

	int m_itemID;
	UnlockType m_unlockType;
	int m_accountID;
}

[[link(android)]]
class ItemTriggerGameObject : EffectGameObject {
	// virtual ~ItemTriggerGameObject();

	static ItemTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual void customSetup() = ios 0x3929bc;
	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = ios 0x3929f4;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x39392c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x392ad8;
}

[[link(android)]]
class KeybindingsLayer : FLAlertLayer {
	// virtual ~KeybindingsLayer();

	static KeybindingsLayer* create();

	TodoReturn addKeyPair(char const*, char const*);
	TodoReturn countForPage(int);
	void goToPage(int);
	TodoReturn incrementCountForPage(int);
	TodoReturn infoKey(int);
	TodoReturn layerForPage(int);
	TodoReturn layerKey(int);
	TodoReturn nextPosition(int);
	TodoReturn objectKey(int);
	TodoReturn objectsForPage(int);
	void onClose(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);
	TodoReturn pageKey(int);

	virtual bool init();
	virtual void keyBackClicked();
}

[[link(android)]]
class KeybindingsManager : cocos2d::CCNode {
	// virtual ~KeybindingsManager();

	static KeybindingsManager* sharedState() = ios 0x34aedc;

	TodoReturn commandForKey(cocos2d::enumKeyCodes, GJKeyGroup, bool, bool, bool);
	TodoReturn commandForKeyMods(cocos2d::enumKeyCodes, GJKeyGroup);
	TodoReturn commandForKeyNoMods(cocos2d::enumKeyCodes, GJKeyGroup);
	TodoReturn commandToKeyForGroup(GJKeyGroup);
	void dataLoaded(DS_Dictionary*) = ios 0x34b0b8;
	void encodeDataTo(DS_Dictionary*) = ios 0x34b074;
	void firstSetup() = ios 0x34afac;
	TodoReturn groupForCommand(GJKeyCommand);
	TodoReturn keyForCommand(GJKeyCommand);
	TodoReturn keyToCommandForGroup(GJKeyGroup);

	virtual bool init() = ios 0x34afa4;
}

[[link(android)]]
class KeyframeAnimTriggerObject : EffectGameObject {
	// virtual ~KeyframeAnimTriggerObject();

	static KeyframeAnimTriggerObject* create();

	virtual bool init() = ios 0x384a50;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x384e90;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x384aa0;
}

[[link(android)]]
class KeyframeGameObject : EffectGameObject {
	// virtual ~KeyframeGameObject();

	static KeyframeGameObject* create();

	TodoReturn updateShadowObjects(GJBaseGameLayer*, EditorUI*);

	virtual bool init() = ios 0x388d80;
	virtual void setOpacity(unsigned char) = ios 0x389028;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x3890d8;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x3894e0;
}

[[link(android)]]
class KeyframeObject {
	// KeyframeObject();
	// KeyframeObject(KeyframeObject const&);

	TodoReturn setupSpline(gd::vector<KeyframeObject*>&);
}

[[link(android)]]
class LabelGameObject : EffectGameObject {
	// virtual ~LabelGameObject();

	static LabelGameObject* create();

	TodoReturn createLabel(gd::string);
	TodoReturn queueUpdateLabel(gd::string);
	TodoReturn removeLabel();
	TodoReturn unlockLabelColor();
	TodoReturn updateLabel(float);
	TodoReturn updateLabel(gd::string);
	TodoReturn updateLabelAlign(int);
	TodoReturn updateLabelIfDirty();
	TodoReturn updatePreviewLabel() = ios 0x386c0c;

	virtual bool init() = ios 0x386878;
	virtual void setOpacity(unsigned char) = ios 0x386b74;
	virtual void setupCustomSprites(gd::string) = ios 0x3868a8;
	virtual TodoReturn addMainSpriteToParent(bool) = ios 0x3871a8;
	virtual void resetObject() = ios 0x38755c;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x386fe0;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x387200;
	virtual void setObjectColor(cocos2d::ccColor3B const&) = ios 0x387160;
	virtual TodoReturn updateTextKerning(int) = ios 0x386bf8;
	virtual TodoReturn getTextKerning() = ios 0x3973b8;

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

	static LeaderboardsLayer* create(LeaderboardState);

	bool init(LeaderboardState) = ios 0x3ad848;
	bool isCorrect(char const*) = ios 0x3ae9e0;
	void onBack(cocos2d::CCObject* sender);
	void onCreators(cocos2d::CCObject* sender);
	void onGlobal(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onTop(cocos2d::CCObject* sender);
	void onWeek(cocos2d::CCObject* sender);
	TodoReturn refreshTabs();
	static cocos2d::CCScene* scene(LeaderboardState);
	TodoReturn selectLeaderboard(LeaderboardState) = ios 0x3ae34c;
	void setupLevelBrowser(cocos2d::CCArray*);
	TodoReturn setupTabs() = ios 0x3adf7c;
	TodoReturn toggleTabButtons() = ios 0x3ae6f0;

	virtual void keyBackClicked() = ios 0x3aeee4;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x3aee8c;
	virtual void updateUserScoreFinished() = ios 0x3ae8cc;
	virtual void updateUserScoreFailed() = ios 0x3ae904;
	virtual void loadLeaderboardFinished(cocos2d::CCArray*, char const*) = ios 0x3ae960;
	virtual void loadLeaderboardFailed(char const*) = ios 0x3aec98;

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

	static LevelAreaInnerLayer* create(bool);

	bool init(bool) = ios 0x349548;
	void onBack(cocos2d::CCObject* sender) = ios 0x349f70;
	void onDoor(cocos2d::CCObject* sender) = ios 0x349fc8;
	void onInfo(cocos2d::CCObject* sender) = ios 0x34a1fc;
	void onNextFloor(cocos2d::CCObject* sender) = ios 0x34a0f4;
	bool playStep1();
	static cocos2d::CCScene* scene(bool) = ios 0x349408;
	void showFloor1CompleteDialog() = ios 0x34a5c4;
	TodoReturn tryResumeTowerMusic();

	virtual void keyBackClicked() = ios 0x34aa90;
	virtual void dialogClosed(DialogLayer*) = ios 0x34a944;
}

[[link(android)]]
class LevelAreaLayer : cocos2d::CCLayer, DialogDelegate {
	// virtual ~LevelAreaLayer();

	static LevelAreaLayer* create();

	void addGodRay(float, float, float, float, float, cocos2d::CCPoint);
	void addTorch(cocos2d::CCNode*, cocos2d::CCPoint, int, float, int, bool) = ios 0x348af0;
	void fadeInsideTower();
	void onBack(cocos2d::CCObject* sender);
	void onClickDoor(cocos2d::CCObject* sender);
	void onEnterTower() = ios 0x34937c;
	static cocos2d::CCScene* scene();
	void showDialog() = ios 0x349104;

	virtual bool init() = ios 0x347ae8;
	virtual void keyBackClicked() = ios 0x349454;
	virtual void dialogClosed(DialogLayer*) = ios 0x3492c4;
}

[[link(android)]]
class LevelBrowserLayer : cocos2d::CCLayerColor, LevelManagerDelegate, FLAlertLayerProtocol, SetIDPopupDelegate, SetTextPopupDelegate, TableViewCellDelegate, ShareCommentDelegate {
	virtual ~LevelBrowserLayer() = ios 0x410d9c;

	static LevelBrowserLayer* create(GJSearchObject*) = ios 0x410e20;

	TodoReturn createNewLevel(cocos2d::CCObject*);
	TodoReturn createNewList(cocos2d::CCObject*);
	TodoReturn createNewSmartTemplate(cocos2d::CCObject*);
	TodoReturn deleteSelected();
	TodoReturn exitLayer(cocos2d::CCObject*);
	TodoReturn getItemsMatchingSearch(cocos2d::CCArray*, gd::string, GJSearchObject*);
	gd::string getSearchTitle() = ios 0x414d4c;
	bool init(GJSearchObject*) = ios 0x410e94;
	bool isCorrect(char const*) = ios 0x4146b8;
	void loadPage(GJSearchObject*) = ios 0x4139b8;
	void onClearSearch(cocos2d::CCObject* sender);
	void onDeleteAll(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender) = ios 0x412a54;
	void onFavorites(cocos2d::CCObject* sender);
	void onGoToFolder(cocos2d::CCObject* sender) = ios 0x413684;
	void onGoToLastPage(cocos2d::CCObject* sender);
	void onGoToPage(cocos2d::CCObject* sender) = ios 0x412950;
	void onHelp(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender) = ios 0x4133f0;
	void onLocalMode(cocos2d::CCObject* sender);
	void onMyOnlineLevels(cocos2d::CCObject* sender);
	void onNew(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onRefresh(cocos2d::CCObject* sender);
	void onRemoveAllFavorites(cocos2d::CCObject* sender);
	void onSaved(cocos2d::CCObject* sender);
	void onSavedMode(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender) = ios 0x41377c;
	void onToggleAllObjects(cocos2d::CCObject* sender);
	void reloadAllObjects();
	static cocos2d::CCScene* scene(GJSearchObject* search) = ios 0x410dd4;
	void setSearchObject(GJSearchObject*) = ios 0x41279c;
	void setupLevelBrowser(cocos2d::CCArray*) = ios 0x414ab8;
	void show();
	void updateLevelsLabel();
	void updatePageLabel();

	virtual void onEnter() = ios 0x41616c;
	virtual void onEnterTransitionDidFinish() = ios 0x41629c;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x41636c;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void registerWithTouchDispatcher() = ios 0x4162a0;
	virtual void keyBackClicked() = ios 0x4158f0;
	virtual void keyDown(cocos2d::enumKeyCodes) = ios 0x415914;
	virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) = ios 0x415218;
	virtual void loadLevelsFailed(char const*, int) = ios 0x41533c;
	virtual void setupPageInfo(gd::string, char const*) = ios 0x4153b8;
	virtual void onBack(cocos2d::CCObject* sender) = ios 0x415878;
	virtual void shareCommentClosed(gd::string, ShareCommentLayer*) = ios 0x415be8;
	virtual void setTextPopupClosed(SetTextPopup*, gd::string) = ios 0x415c60;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x415dd8;
	virtual void setIDPopupClosed(SetIDPopup*, int) = ios 0x415770;
	virtual TodoReturn updateResultArray(cocos2d::CCArray*) = ios 0x416394;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = ios 0x4161f8;

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

	static LevelCell* create(float, float) = ios 0x10c634;

	void loadCustomLevelCell() = ios 0x10d058;
	void loadFromLevel(GJGameLevel*) = ios 0x103778;
	void loadLocalLevelCell() = ios 0x10c768;
	void onClick(cocos2d::CCObject* sender) = ios 0x10f500;
	void onToggle(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	void updateBGColor(int) = ios 0x10390c;
	TodoReturn updateCellMode(int);
	TodoReturn updateToggle();

	virtual bool init() = ios 0x10c74c;
	virtual void draw() = ios 0x10f678;

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

	static LevelEditorLayer* create(GJGameLevel*, bool) = ios 0x35a5e0;

    static LevelEditorLayer* get() {
        return GameManager::sharedState()->m_levelEditorLayer;
    }

	TodoReturn activateTriggerEffect(EffectGameObject*, float, float, float, bool);
	TodoReturn addDelayedSpawn(EffectGameObject*, float);
	TodoReturn addExclusionList(cocos2d::CCArray*, cocos2d::CCDictionary*);
	GameObject* addObjectFromVector(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x35d224;
	TodoReturn addObjectsAtPosition(cocos2d::CCPoint, cocos2d::CCArray*, cocos2d::CCArray*);
	TodoReturn addObjectsInRect(cocos2d::CCRect, bool, cocos2d::CCArray*, cocos2d::CCArray*);
	TodoReturn addObjectToGroup(GameObject*, int);
	TodoReturn addPlayer2Point(cocos2d::CCPoint, bool);
	TodoReturn addPlayerCollisionBlock();
	TodoReturn addPlayerPoint(cocos2d::CCPoint);
	void addSpecial(GameObject*) = ios 0x35d798;
	void addToRedoList(UndoObject*);
	TodoReturn addTouchPoint(cocos2d::CCPoint);
	void addToUndoList(UndoObject*, bool);
	TodoReturn applyAttributeState(GameObject*, GameObject*);
	TodoReturn applyGroupState(GameObject*, GameObject*);
	TodoReturn breakApartTextObject(TextGameObject*);
	TodoReturn canPasteState() = ios 0x367438;
	TodoReturn clearPlayerPoints() = ios 0x36c878;
	TodoReturn clearTouchPoints();
	TodoReturn copyObjectState(GameObject*);
	TodoReturn copyParticleState(ParticleGameObject*);
	GameObject* createObject(int, cocos2d::CCPoint, bool) = ios 0x35dc30;
	void createObjectsFromSetup(gd::string&) = ios 0x35b87c;
	void createObjectsFromString(gd::string const&, bool, bool);
	TodoReturn dirtifyTriggers();
	TodoReturn duplicateKeyframeAnimation(int);
	TodoReturn fastUpdateDisabledGroups();
	TodoReturn findGameObject(int);
	TodoReturn findStartPosObject() = ios 0x366134;
	TodoReturn forceShowSelectedObjects(bool) = ios 0x3620e0;
	TodoReturn fullUpdateDisabledGroups();
	TodoReturn getAllObjects();
	TodoReturn getDelayedSpawnNode();
	TodoReturn getGridPos(cocos2d::CCPoint);
	TodoReturn getLastObjectX();
	gd::string getLevelString() = ios 0x35fd70;
	TodoReturn getLockedLayers();
	TodoReturn getNextColorChannel() = ios 0x363a58;
	TodoReturn getNextFreeAreaEffectID(cocos2d::CCArray*);
	TodoReturn getNextFreeBlockID(cocos2d::CCArray*);
	TodoReturn getNextFreeEditorLayer(cocos2d::CCArray*);
	TodoReturn getNextFreeEnterChannel(cocos2d::CCArray*);
	TodoReturn getNextFreeGradientID(cocos2d::CCArray*);
	int getNextFreeGroupID(cocos2d::CCArray*);
	TodoReturn getNextFreeItemID(cocos2d::CCArray*);
	TodoReturn getNextFreeOrderChannel(cocos2d::CCArray*);
	TodoReturn getNextFreeSFXGroupID(cocos2d::CCArray*);
	TodoReturn getNextFreeSFXID(cocos2d::CCArray*);
	TodoReturn getObjectRect(GameObject*, bool, bool) = ios 0x35e924;
	TodoReturn getRelativeOffset(GameObject*);
	TodoReturn getSavedEditorPosition(int);
	TodoReturn getSavedEditorPositions();
	TodoReturn getSectionCount();
	TodoReturn getSelectedEditorOrder();
	TodoReturn getSelectedEffectPos();
	TodoReturn getSelectedOrderChannel();
	TodoReturn getSFXIDs();
	TodoReturn getSongIDs(bool&);
	TodoReturn getTriggerGroup(int);
	void handleAction(bool, cocos2d::CCArray*);
	TodoReturn hasAction(bool) = ios 0x35f6dc;
	bool init(GJGameLevel*, bool) = ios 0x35a664;
	bool isLayerLocked(int) = ios 0x3616a8;
	TodoReturn objectAtPosition(cocos2d::CCPoint);
	TodoReturn objectMoved(GameObject*);
	TodoReturn objectsAtPosition(cocos2d::CCPoint);
	TodoReturn objectsInRect(cocos2d::CCRect, bool) = ios 0x35e3fc;
	void onPausePlaytest() = ios 0x366a58;
	void onPlaytest();
	void onResumePlaytest() = ios 0x366b10;
	void onStopPlaytest() = ios 0x366c34;
	TodoReturn pasteAttributeState(GameObject*, cocos2d::CCArray*);
	TodoReturn pasteColorState(GameObject*, cocos2d::CCArray*);
	TodoReturn pasteGroupState(GameObject*, cocos2d::CCArray*);
	TodoReturn pasteParticleState(ParticleGameObject*, cocos2d::CCArray*);
	TodoReturn processLoadedMoveActions();
	TodoReturn quickUpdateAllPositions() = ios 0x366244;
	TodoReturn recreateGroups() = ios 0x3656e4;
	TodoReturn redoLastAction();
	TodoReturn refreshSpecial(GameObject*);
	TodoReturn removeAllObjects();
	TodoReturn removeAllObjectsOfType(int);
	TodoReturn removeObject(GameObject*, bool);
	TodoReturn removePlayerCollisionBlock() = ios 0x35b830;
	void removeSpecial(GameObject*);
	TodoReturn resetDelayedSpawnNodes();
	TodoReturn resetEffectTriggerOptim(GameObject*, cocos2d::CCArray*);
	TodoReturn resetMovingObjects();
	void resetObjectVector();
	TodoReturn resetPlayback();
	TodoReturn resetToggledGroups() = ios 0x36588c;
	TodoReturn resetToggledGroupsAndObjects() = ios 0x365364;
	TodoReturn resetUnusedColorChannels();
	TodoReturn reverseKeyframeAnimationOrder(int);
	TodoReturn reverseObjectChanged(EffectGameObject*);
	TodoReturn rotationForSlopeNearObject(GameObject*);
	TodoReturn runColorEffect(EffectGameObject*, int, float, float, bool);
	TodoReturn saveEditorPosition(cocos2d::CCPoint&, int) = ios 0x3614a8;
	static cocos2d::CCScene* scene(GJGameLevel*, bool);
	void setObjectCount(int);
	TodoReturn shouldBlend(int);
	TodoReturn sortBatchnodeChildren(float) = ios 0x361fd4;
	TodoReturn spawnGroupPreview(int, float, float, float, float, float, bool, bool);
	TodoReturn stopPlayback();
	TodoReturn stopTriggersInGroup(int, float);
	TodoReturn timeObjectChanged();
	TodoReturn toggleBackground(bool);
	TodoReturn toggleGrid(bool);
	TodoReturn toggleGround(bool);
	TodoReturn toggleGroupPreview(int, bool);
	TodoReturn toggleLockActiveLayer();
	TodoReturn transferDefaultColors(GJEffectManager*, GJEffectManager*) = ios 0x363e44;
	TodoReturn triggerFollowCommand(EffectGameObject*);
	TodoReturn triggerPlayerFollowCommand(EffectGameObject*);
	TodoReturn triggerRotateCommand(EffectGameObject*);
	bool tryUpdateSpeedObject(EffectGameObject*, bool);
	TodoReturn typeExistsAtPosition(int, cocos2d::CCPoint, bool, bool, float);
	TodoReturn undoLastAction();
	TodoReturn unlockAllLayers();
	TodoReturn updateAnimateOnTriggerObjects(bool) = ios 0x35cca0;
	TodoReturn updateArt(float);
	TodoReturn updateBlendValues() = ios 0x364bfc;
	TodoReturn updateEditor(float);
	void updateEditorMode() = ios 0x35ca00;
	TodoReturn updateGameObjects() = ios 0x35c008;
	TodoReturn updateGridLayer();
	TodoReturn updateGridLayerParent();
	TodoReturn updateKeyframeObjects() = ios 0x362a58;
	TodoReturn updateKeyframeVisibility(bool);
	void updateLevelFont(int) = ios 0x365930;
	TodoReturn updateObjectColors(cocos2d::CCArray*);
	static void updateObjectLabel(GameObject*) = ios 0x361720;
	TodoReturn updateOptions() = ios 0x35b308;
	TodoReturn updatePreviewAnim() = ios 0x367aac;
	void updatePreviewParticle(ParticleGameObject*) = ios 0x361ad8;
	TodoReturn updatePreviewParticles() = ios 0x363dac;
	TodoReturn updateToggledGroups();
	TodoReturn validGroup(GameObject*, bool) = ios 0x35e1b8;

	virtual void draw();
	virtual void postUpdate(float) = ios 0x36707c;
	virtual void updateVisibility(float) = ios 0x362180;
	virtual TodoReturn playerTookDamage(PlayerObject*) = ios 0x367068;
	virtual void updateColor(cocos2d::ccColor3B&, float, int, bool, float, cocos2d::ccHSVValue&, int, bool, EffectGameObject*, int, int) = ios 0x365218;
	virtual void updateDebugDraw() = ios 0x367dc8;
	virtual void addToGroup(GameObject*, int, bool) = ios 0x365604;
	virtual void removeFromGroup(GameObject*, int) = ios 0x365688;
	virtual TodoReturn updateObjectSection(GameObject*) = ios 0x366224;
	virtual TodoReturn updateDisabledObjectsLastPos(cocos2d::CCArray*) = ios 0x366320;
	virtual float timeForPos(cocos2d::CCPoint, int, int, bool, int) = ios 0x365424;
	virtual float posForTime(float) = ios 0x365494;
	virtual void resetSPTriggered() = ios 0x3654b4;
	virtual TodoReturn didRotateGameplay() = ios 0x366078;
	virtual TodoReturn manualUpdateObjectColors(GameObject*) = ios 0x362ac4;
	virtual TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool) = ios 0x367b8c;
	virtual TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*) = ios 0x367c58;
	virtual TodoReturn activatedAudioTrigger(SFXTriggerGameObject*) = ios 0x366fa4;
	virtual void checkpointActivated(CheckpointGameObject*) = ios 0x366fbc;
	virtual TodoReturn addKeyframe(KeyframeGameObject*) = ios 0x367c98;
	virtual void levelSettingsUpdated() = ios 0x35ce40;

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

	static LevelFeatureLayer* create(int);

	bool init(int);
	void onClose(cocos2d::CCObject* sender);
	void onDown(cocos2d::CCObject* sender);
	void onDown2(cocos2d::CCObject* sender);
	void onRemoveValues(cocos2d::CCObject* sender);
	void onSetEpicOnly(cocos2d::CCObject* sender);
	void onSetFeatured(cocos2d::CCObject* sender);
	void onToggleEpic(cocos2d::CCObject* sender);
	void onUp(cocos2d::CCObject* sender);
	void onUp2(cocos2d::CCObject* sender);
	TodoReturn updateStars();

	virtual void keyBackClicked();
}

[[link(android)]]
class LevelInfoLayer : cocos2d::CCLayer, LevelDownloadDelegate, LevelUpdateDelegate, RateLevelDelegate, LikeItemDelegate, FLAlertLayerProtocol, LevelDeleteDelegate, NumberInputDelegate, SetIDPopupDelegate, TableViewCellDelegate {
	// virtual ~LevelInfoLayer();

	static LevelInfoLayer* create(GJGameLevel*, bool) = ios 0x2ddb8;

	void confirmClone(cocos2d::CCObject*) = ios 0x32210;
	void confirmDelete(cocos2d::CCObject*) = ios 0x31b80;
	void confirmMoveToBottom(cocos2d::CCObject*) = ios 0x327e0;
	void confirmMoveToTop(cocos2d::CCObject*) = ios 0x32724;
	void confirmOwnerDelete(cocos2d::CCObject*) = ios 0x32154;
	void downloadLevel() = ios 0x3065c;
	TodoReturn incrementDislikes();
	TodoReturn incrementLikes();
	bool init(GJGameLevel*, bool) = ios 0x2de3c;
	TodoReturn loadLevelStep() = ios 0x33d78;
	void onAddToList(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onClone(cocos2d::CCObject* sender);
	void onDelete(cocos2d::CCObject* sender);
	void onFavorite(cocos2d::CCObject* sender);
	void onFeatured(cocos2d::CCObject* sender);
	void onGarage(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onLevelInfo(cocos2d::CCObject* sender) = ios 0x3248c;
	void onLevelLeaderboard(cocos2d::CCObject* sender);
	void onLevelOptions(cocos2d::CCObject* sender);
	void onLike(cocos2d::CCObject* sender);
	void onLowDetailMode(cocos2d::CCObject* sender);
	void onOwnerDelete(cocos2d::CCObject* sender) = ios 0x34120;
	void onPlay(cocos2d::CCObject* sender) = ios 0x2fec0;
	void onPlayReplay(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender) = ios 0x34184;
	void onRateDemon(cocos2d::CCObject* sender);
	void onRateStars(cocos2d::CCObject* sender) = ios 0x31de0;
	void onRateStarsMod(cocos2d::CCObject* sender);
	void onSetFolder(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender) = ios 0x2fe48;
	TodoReturn playStep2();
	TodoReturn playStep3() = ios 0x33cec;
	TodoReturn playStep4() = ios 0x33e28;
	static cocos2d::CCScene* scene(GJGameLevel*, bool);
	void setupLevelInfo();
	void setupPlatformerStats() = ios 0x3113c;
	void setupProgressBars() = ios 0x31498;
	bool shouldDownloadLevel();
	void showSongWarning();
	void showUpdateAlert(UpdateResponse) = ios 0x3383c;
	void tryCloneLevel(cocos2d::CCObject*) = ios 0x32300;
	TodoReturn tryShowAd();
	void updateLabelValues() = ios 0x32c48;
	TodoReturn updateSideButtons();

	virtual void onEnterTransitionDidFinish() = ios 0x33c04;
	virtual void keyBackClicked() = ios 0x34438;
	virtual void keyDown(cocos2d::enumKeyCodes) = ios 0x34444;
	virtual void numberInputClosed(NumberInputLayer*) = ios 0x33e98;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = ios 0x329f4;
	virtual void levelDownloadFinished(GJGameLevel*) = ios 0x334d4;
	virtual void levelDownloadFailed(int) = ios 0x3370c;
	virtual void levelUpdateFinished(GJGameLevel*, UpdateResponse) = ios 0x337cc;
	virtual void levelUpdateFailed(int) = ios 0x338ec;
	virtual void levelDeleteFinished(int) = ios 0x339b0;
	virtual void levelDeleteFailed(int) = ios 0x33a80;
	virtual void rateLevelClosed() = ios 0x34290;
	virtual void likedItem(LikeItemType, int, bool) = ios 0x3429c;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x34314;
	virtual void setIDPopupClosed(SetIDPopup*, int) = ios 0x32b1c;

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
	PAD = win 0x10, android32 0x10, android64 0x10, ios 0x10;
	bool m_challenge;
	PAD = win 0x4, android32 0x4, android64 0x8, ios 0x8;
	cocos2d::CCSprite* m_playSprite;
	void* m_unk11;
	CustomSongWidget* m_songWidget;
}

[[link(android)]]
class LevelLeaderboard : FLAlertLayer, LeaderboardManagerDelegate, FLAlertLayerProtocol {
	// virtual ~LevelLeaderboard();

	static LevelLeaderboard* create(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = ios 0x256e94;

	TodoReturn deleteLocalScores() = ios 0x25845c;
	TodoReturn getLocalScores();
	TodoReturn getSpriteButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint, int) = ios 0x257d78;
	bool init(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = ios 0x256f84;
	bool isCorrect(char const*) = ios 0x25898c;
	void loadScores() = ios 0x258150;
	void onChangeMode(cocos2d::CCObject* sender) = ios 0x257ecc;
	void onChangeType(cocos2d::CCObject* sender) = ios 0x2580dc;
	void onClose(cocos2d::CCObject* sender);
	void onDeleteLocalScores(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	TodoReturn reloadLeaderboard(LevelLeaderboardType, LevelLeaderboardMode);
	TodoReturn setupLeaderboard(cocos2d::CCArray*) = ios 0x2582c0;

	virtual void registerWithTouchDispatcher() = ios 0x258954;
	virtual void keyBackClicked() = ios 0x2588d8;
	virtual void show(); //merged func
	virtual void loadLeaderboardFinished(cocos2d::CCArray*, char const*) = ios 0x258ab8;
	virtual void loadLeaderboardFailed(char const*) = ios 0x258b5c;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x2585b0;
	virtual void updateUserScoreFinished() = ios 0x258794;
	virtual void updateUserScoreFailed() = ios 0x2587a0;

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

	static LevelListCell* create(float, float);

	void loadFromList(GJLevelList*) = ios 0x1044b8;
	void onClick(cocos2d::CCObject* sender);
	void onListInfo(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	void updateBGColor(int);

	virtual bool init() = ios 0x113284;
	virtual void draw() = ios 0x11339c;

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

	static LevelListLayer* create(GJLevelList*) = ios 0x24ad64;

	void cloneList();
	void confirmClone(cocos2d::CCObject*) = ios 0x24c7cc;
	void confirmDelete(cocos2d::CCObject*) = ios 0x24c9f4;
	void confirmOwnerDelete(cocos2d::CCObject*) = ios 0x24c938;
	bool init(GJLevelList*) = ios 0x24add8;
	void onClaimReward(cocos2d::CCObject* sender) = ios 0x24dbcc;
	void onDelete();
	void onDescription(cocos2d::CCObject* sender);
	void onFavorite(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onLike(cocos2d::CCObject* sender);
	void onListInfo(cocos2d::CCObject* sender);
	void onRefreshLevelList(cocos2d::CCObject* sender);
	void onSelectIcon(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender) = ios 0x24cbf8;
	void onToggleEditMode(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	void ownerDelete() = ios 0x24e7f4;
	static cocos2d::CCScene* scene(GJLevelList*);
	TodoReturn updateEditMode();
	TodoReturn updateSideButtons() = ios 0x24ccf0;
	TodoReturn updateStatsArt() = ios 0x24cd84;
	TodoReturn verifyListName();

	virtual void onEnter() = ios 0x24db6c;
	virtual void onExit() = ios 0x24dba4;
	virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) = ios 0x24de58;
	virtual void loadLevelsFailed(char const*, int) = ios 0x24e024;
	virtual void onBack(cocos2d::CCObject* sender) = ios 0x24e2f0;
	virtual void shareCommentClosed(gd::string, ShareCommentLayer*) = ios 0x24e858;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x24e574;
	virtual void setIDPopupClosed(SetIDPopup*, int) = ios 0x24e240;
	virtual TodoReturn updateResultArray(cocos2d::CCArray*) = ios 0x24e2e8;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = ios 0x24e030;
	virtual void likedItem(LikeItemType, int, bool) = ios 0x24e8f8;
	virtual TodoReturn iconSelectClosed(SelectListIconLayer*) = ios 0x24ea18;
	virtual void levelListDeleteFinished(int) = ios 0x24eafc;
	virtual void levelListDeleteFailed(int) = ios 0x24ebc4;
	virtual void textInputOpened(CCTextInputNode*) = ios 0x24edd4;
	virtual void textInputClosed(CCTextInputNode*) = ios 0x24ec8c;
	virtual void textChanged(CCTextInputNode*) = ios 0x24eed0;
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

	static LevelOptionsLayer* create(LevelSettingsObject*);

	bool init(LevelSettingsObject*);
	void onSettings(cocos2d::CCObject* sender);

	virtual void valueDidChange(int, float) = ios 0x184cf0;
	virtual TodoReturn getValue(int) = ios 0x184d08;
	virtual void setupOptions() = ios 0x184810;
	virtual void didToggle(int) = ios 0x184d24;
}

[[link(android)]]
class LevelOptionsLayer2 : LevelOptionsLayer {
	// virtual ~LevelOptionsLayer2();

	static LevelOptionsLayer2* create(LevelSettingsObject*);

	bool init(LevelSettingsObject*);

	virtual void setupOptions() = ios 0x184fa4;
}

[[link(android)]]
class LevelPage : cocos2d::CCLayer, DialogDelegate {
	// virtual ~LevelPage();

	static LevelPage* create(GJGameLevel*) = ios 0x3fe8f8;

	TodoReturn addSecretCoin();
	TodoReturn addSecretDoor();
	bool init(GJGameLevel*);
	void onInfo(cocos2d::CCObject* sender);
	void onMoreGames(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender) = ios 0x3ffffc;
	void onSecretDoor(cocos2d::CCObject* sender) = ios 0x4019e4;
	void onTheTower(cocos2d::CCObject* sender);
	TodoReturn playCoinEffect();
	TodoReturn playStep2();
	TodoReturn playStep3();
	void updateDynamicPage(GJGameLevel*) = ios 0x3feafc;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x4021cc;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x4022d8;
	virtual void registerWithTouchDispatcher() = ios 0x4022f4;
	virtual void dialogClosed(DialogLayer*) = ios 0x401fa8;

	void* m_unk;
	GJGameLevel* m_level;
}

[[link(android)]]
class LevelSearchLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DemonFilterDelegate {
	// virtual ~LevelSearchLayer();

	static LevelSearchLayer* create(int) = ios 0x5a6a4;
	static cocos2d::CCScene* scene(int);

	bool checkDiff(int);
	bool checkTime(int);
	void clearFilters();
	void confirmClearFilters(cocos2d::CCObject*) = ios 0x5c2bc;
	char const* getDiffKey(int);
	gd::string getLevelLenKey();
	gd::string getSearchDiffKey();
	GJSearchObject* getSearchObject(SearchType, gd::string);
	char const* getTimeKey(int);
	bool init(int) = ios 0x5a770;
	void onBack(cocos2d::CCObject* sender);
	void onClearFreeSearch(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onFollowed(cocos2d::CCObject* sender);
	void onFriends(cocos2d::CCObject* sender);
	void onLatestStars(cocos2d::CCObject* sender);
	void onMagic(cocos2d::CCObject* sender);
	void onMoreOptions(cocos2d::CCObject* sender);
	void onMostDownloaded(cocos2d::CCObject* sender);
	void onMostLikes(cocos2d::CCObject* sender);
	void onMostRecent(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);
	void onSearchMode(cocos2d::CCObject* sender);
	void onSearchUser(cocos2d::CCObject* sender);
	void onSpecialDemon(cocos2d::CCObject* sender);
	void onStarAward(cocos2d::CCObject* sender);
	void onSuggested(cocos2d::CCObject* sender);
	void onTrending(cocos2d::CCObject* sender);
	void toggleDifficulty(cocos2d::CCObject*);
	void toggleDifficultyNum(int, bool);
	void toggleStar(cocos2d::CCObject*);
	void toggleTime(cocos2d::CCObject*);
	void toggleTimeNum(int, bool);
	void updateSearchLabel(char const*);

	virtual void keyBackClicked() = ios 0x5e224;
	virtual void textInputOpened(CCTextInputNode*) = ios 0x5da70;
	virtual void textInputClosed(CCTextInputNode*) = ios 0x5dbe0;
	virtual void textChanged(CCTextInputNode*) = ios 0x5dc60;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x5d9d8;
	virtual void demonFilterSelectClosed(int) = ios 0x5d690;

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
	virtual ~LevelSelectLayer() = ios 0x3fded8;

	static LevelSelectLayer* create(int) = ios 0x3fdf5c;

	cocos2d::ccColor3B colorForPage(int);
	TodoReturn getColorValue(int, int, float);
	bool init(int) = ios 0x3fe018;
	void onBack(cocos2d::CCObject* sender);
	void onDownload(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onNext(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onPrev(cocos2d::CCObject* sender);
	static cocos2d::CCScene* scene(int) = ios 0x3fdf10;
	TodoReturn tryShowAd();

	virtual void keyBackClicked() = ios 0x3ffef0;
	virtual void keyDown(cocos2d::enumKeyCodes) = ios 0x3ffefc;
	virtual void updatePageWithObject(cocos2d::CCObject*, cocos2d::CCObject*) = ios 0x3fea80;
	virtual void scrollLayerMoved(cocos2d::CCPoint) = ios 0x3ffbe0;
}

[[link(android)]]
class LevelSettingsDelegate {
	virtual void levelSettingsUpdated() {}
}

[[link(android)]]
class LevelSettingsLayer : FLAlertLayer, ColorSelectDelegate, SelectArtDelegate, SelectSettingDelegate, FLAlertLayerProtocol, CustomSongLayerDelegate, TextInputDelegate {
	// virtual ~LevelSettingsLayer();

	static LevelSettingsLayer* create(LevelSettingsObject*, LevelEditorLayer*) = ios 0x180380;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	bool init(LevelSettingsObject*, LevelEditorLayer*) = ios 0x180404;
	void onBGArt(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onCol(cocos2d::CCObject* sender);
	void onDisable(cocos2d::CCObject* sender);
	void onFGArt(cocos2d::CCObject* sender);
	void onGameplayMode(cocos2d::CCObject* sender);
	void onGArt(cocos2d::CCObject* sender);
	void onLiveEdit(cocos2d::CCObject* sender);
	void onMode(cocos2d::CCObject* sender);
	void onOptionToggle(cocos2d::CCObject* sender);
	void onSelectFont(cocos2d::CCObject* sender);
	void onSelectMode(cocos2d::CCObject* sender);
	void onSelectSpeed(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onShowPicker(cocos2d::CCObject* sender);
	void onSpeed(cocos2d::CCObject* sender);
	void showPicker(ColorAction*);
	TodoReturn updateColorSprite(ColorChannelSprite*);
	TodoReturn updateColorSprites();
	TodoReturn updateGameplayModeButtons();

	virtual void registerWithTouchDispatcher() = ios 0x182f50;
	virtual void keyBackClicked() = ios 0x183494;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x183178;
	virtual void colorSelectClosed(cocos2d::CCNode*) = ios 0x1830c0;
	virtual void selectArtClosed(SelectArtLayer*) = ios 0x183294;
	virtual TodoReturn selectSettingClosed(SelectSettingLayer*) = ios 0x182da8;
	virtual void textInputClosed(CCTextInputNode*) = ios 0x182fa8;
	virtual void textChanged(CCTextInputNode*) = ios 0x182fc4;
}

[[link(android)]]
class LevelSettingsObject : cocos2d::CCNode {
	// virtual ~LevelSettingsObject();

	static LevelSettingsObject* create() = ios 0x35bc70;

	gd::string getSaveString() = ios 0x36000c;
	static LevelSettingsObject* objectFromDict(cocos2d::CCDictionary*) = ios 0x36acd8;
	static LevelSettingsObject* objectFromString(gd::string const& str) {
		return objectFromDict(GameToolbox::stringSetupToDict(str, ","));
	}
	TodoReturn setupColorsFromLegacyMode(cocos2d::CCDictionary*) = ios 0x36bc48;
	TodoReturn shouldUseYSection() = ios 0x36acb8;

	virtual bool init() = ios 0x36ab3c;

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
	static int artistForAudio(int);
	static gd::string base64DecodeString(gd::string);
	static gd::string base64EncodeString(gd::string) = ios 0x1af850;
	static cocos2d::CCDictionary* createStarPackDict() = ios 0x1af8c0;
	static gd::string fbURLForArtist(int);
	static int getAudioBPM(int);
	static gd::string getAudioFileName(int) = ios 0x1ae8c0;
	static gd::string getAudioString(int) = ios 0x1ae9f0;
	static gd::string getAudioTitle(int);
	static TodoReturn getLastGameplayReversed();
	static TodoReturn getLastGameplayRotated();
	static TodoReturn getLastTimewarp();
	static GJGameLevel* getLevel(int, bool) = ios 0x1ad230;
	static TodoReturn getLevelList();
	static SongInfoObject* getSongObject(int);
	static TodoReturn moveTriggerObjectsToArray(cocos2d::CCArray*, cocos2d::CCDictionary*, int);
	static gd::string nameForArtist(int);
	static gd::string ngURLForArtist(int);
	static TodoReturn offsetBPMForTrack(int);
	static float posForTime(float, cocos2d::CCArray*, int, bool, int&);
	static float posForTimeInternal(float, cocos2d::CCArray*, int, bool, bool, bool, int&, int);
	static TodoReturn sortChannelOrderObjects(cocos2d::CCArray*, cocos2d::CCDictionary*, bool);
	static TodoReturn sortSpeedObjects(cocos2d::CCArray*, GJBaseGameLayer*) = ios 0x1afe64;
	static float timeForPos(cocos2d::CCPoint, cocos2d::CCArray*, int, int, int, bool, bool, bool, bool, int) = ios 0x1aea1c;
	static TodoReturn toggleDebugLogging(bool);
	static gd::string urlForAudio(int);
	static TodoReturn valueForSpeedMod(int);
	static bool verifyLevelIntegrity(gd::string, int);
	static gd::string ytURLForArtist(int);

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

	static LikeItemLayer* create(LikeItemType, int, int);

	bool init(LikeItemType, int, int);
	void onClose(cocos2d::CCObject* sender);
	void onDislike(cocos2d::CCObject* sender);
	void onLike(cocos2d::CCObject* sender);
	void triggerLike(bool isLiked) = ios 0x2549bc;

	virtual void keyBackClicked() = ios 0x254a38;

	LikeItemType m_itemType;
	int m_itemID;
	int m_commentSourceID;
	LikeItemDelegate* m_likeDelegate;
}

[[link(android)]]
class ListButtonBar : cocos2d::CCNode {
	// virtual ~ListButtonBar();

	static ListButtonBar* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int);

	TodoReturn getPage();
	void goToPage(int);
	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int);
	void onLeft(cocos2d::CCObject* sender);
	void onRight(cocos2d::CCObject* sender);
}

[[link(android)]]
class ListButtonBarDelegate {
	virtual void listButtonBarSwitchedPage(ListButtonBar*, int);
}

[[link(android)]]
class ListButtonPage : cocos2d::CCLayer {
	// virtual ~ListButtonPage();

	static ListButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float);

	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float);
}

[[link(android)]]
class ListCell : TableViewCell {
	// virtual ~ListCell();
	ListCell(char const*, float, float) = ios 0x3d438;

	void loadFromObject(cocos2d::CCObject*, int, int, int);
	void updateBGColor(int);

	virtual bool init() = ios 0x1d4200;
	virtual void draw() = ios 0x1d4208;
}

[[link(android)]]
class ListUploadDelegate {
	virtual void listUploadFinished(GJLevelList*);
	virtual void listUploadFailed(GJLevelList*, int);
}

[[link(android)]]
class LoadingCircle : cocos2d::CCLayerColor {
	// virtual ~LoadingCircle();

	static LoadingCircle* create() = ios 0x397d8c;

	void fadeAndRemove() = ios 0x398028;
	void show() = ios 0x397f34;

	void setFade(bool fade) {
		m_fade = fade;
	}

	virtual bool init() = ios 0x397e78;
	virtual void draw() = ios 0x3980dc;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x398278;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void registerWithTouchDispatcher() = ios 0x3980ec;

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

	static LoadingCircleSprite* create() = ios 0x398124;

	TodoReturn fadeInCircle(bool);
	TodoReturn hideCircle() = ios 0x398230;

	virtual bool init() = ios 0x3981c4;
}

[[link(android)]]
class LoadingLayer : cocos2d::CCLayer {
	// virtual ~LoadingLayer();

	static LoadingLayer* create(bool) = ios 0x1d8c34;

	const char* getLoadingString() = ios 0x1d93c0;
	bool init(bool) = ios 0x1d8ce8;
	void loadAssets() = ios 0x1d949c;
	void loadingFinished() = ios 0x1d9b28;
	static cocos2d::CCScene* scene(bool) = ios 0x1d8bf0;
	TodoReturn updateProgress(int) = ios 0x1d9430;

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

	static LocalLevelManager* sharedState() = ios 0x1cc298;
	inline static LocalLevelManager* get() {
        return LocalLevelManager::sharedState();
    }

	cocos2d::CCDictionary* getAllLevelsInDict();
	TodoReturn getAllLevelsWithName(gd::string);
	TodoReturn getCreatedLevels(int);
	TodoReturn getCreatedLists(int);
	TodoReturn getLevelsInNameGroups() = ios 0x1cc614;
	gd::string getMainLevelString(int) = ios 0x1cc584;
	TodoReturn markLevelsAsUnmodified() = ios 0x1cccc0;
	TodoReturn moveLevelToTop(GJGameLevel*);
	TodoReturn reorderLevels();
	TodoReturn reorderLists();
	TodoReturn tryLoadMainLevelString(int) = ios 0x1cc3f8;
	TodoReturn updateLevelOrder() = ios 0x1ccc44;
	TodoReturn updateLevelRevision();
	TodoReturn updateListOrder() = ios 0x1ccdec;

	virtual bool init() = ios 0x1cc3b8;
	virtual void encodeDataTo(DS_Dictionary*) = ios 0x1cd00c;
	virtual void dataLoaded(DS_Dictionary*) = ios 0x1cd064;
	virtual void firstLoad() = ios 0x1ccf44;

	cocos2d::CCArray* m_localLevels;
	cocos2d::CCArray* m_LLM03;
	gd::map<int, gd::string> m_mainLevels;
}

[[link(android)]]
class MapPackCell : TableViewCell {
	// virtual ~MapPackCell();
	MapPackCell(char const*, float, float);

	void loadFromMapPack(GJMapPack*) = ios 0x10398c;
	void onClaimReward(cocos2d::CCObject* sender);
	void onClick(cocos2d::CCObject* sender);
	TodoReturn playCompleteEffect();
	TodoReturn reloadCell();
	void updateBGColor(int);

	virtual bool init() = ios 0x10f834;
	virtual void draw() = ios 0x10fc04;
}

[[link(android)]]
class MapSelectLayer : cocos2d::CCLayer {
	// virtual ~MapSelectLayer();

	static MapSelectLayer* create();

	TodoReturn checkTouchMonster(cocos2d::CCPoint);
	TodoReturn createObjectAtPoint(cocos2d::CCPoint);
	TodoReturn getConstrainedMapPos(cocos2d::CCPoint);
	void onBack(cocos2d::CCObject* sender);
	static cocos2d::CCScene* scene();

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
class MenuGameLayer : cocos2d::CCLayer {
	// virtual ~MenuGameLayer();

	static MenuGameLayer* create() = ios 0x39833c;

	void destroyPlayer() = ios 0x399500;
	TodoReturn getBGColor(int) = ios 0x3987c8;
	void resetPlayer() = ios 0x398bcc;
	void tryJump(float);
	void updateColor(float) = ios 0x398ab4;
	void updateColors() = ios 0x3991e8;

	virtual void update(float) = ios 0x399260;
	virtual bool init() = ios 0x3983b0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3996f0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x399818;
	virtual void registerWithTouchDispatcher() = ios 0x399834;
}

[[link(android)]]
class MenuLayer : cocos2d::CCLayer, FLAlertLayerProtocol, GooglePlayDelegate {
	// virtual ~MenuLayer();

	static cocos2d::CCScene* scene(bool) = ios 0x26dd84;

	void endGame() = ios 0x26fc50;
	TodoReturn firstNetworkTest();
	void onAchievements(cocos2d::CCObject* sender);
	void onCreator(cocos2d::CCObject* sender);
	void onDaily(cocos2d::CCObject* sender);
	void onDiscord(cocos2d::CCObject* sender);
	void onEveryplay(cocos2d::CCObject* sender);
	void onFacebook(cocos2d::CCObject* sender);
	void onFreeLevels(cocos2d::CCObject* sender);
	void onFullVersion(cocos2d::CCObject* sender);
	void onGameCenter(cocos2d::CCObject* sender) = ios 0x26f740;
	void onGarage(cocos2d::CCObject* sender);
	void onGooglePlayGames(cocos2d::CCObject* sender);
	void onMoreGames(cocos2d::CCObject* sender) = ios 0x26f4d8;
	void onMyProfile(cocos2d::CCObject* sender) = ios 0x26f55c;
	void onNewgrounds(cocos2d::CCObject* sender) = ios 0x26f34c;
	void onOptions(cocos2d::CCObject* sender);
	TodoReturn onOptionsInstant();
	void onPlay(cocos2d::CCObject* sender);
	void onQuit(cocos2d::CCObject* sender) = ios 0x26f9e8;
	void onRobTop(cocos2d::CCObject* sender);
	void onStats(cocos2d::CCObject* sender) = ios 0x26f300;
	void onTrailer(cocos2d::CCObject* sender);
	void onTwitch(cocos2d::CCObject* sender);
	void onTwitter(cocos2d::CCObject* sender);
	void onYouTube(cocos2d::CCObject* sender);
	TodoReturn openOptions(bool);
	void showGCQuestion() = ios 0x26f788;
	void showMeltdownPromo();
	void showTOS();
	TodoReturn syncPlatformAchievements(float);
	TodoReturn tryShowAd(float);
	TodoReturn updateUserProfileButton() = ios 0x26f5bc;
	TodoReturn videoOptionsClosed();
	TodoReturn videoOptionsOpened();
	TodoReturn willClose();

	virtual bool init() = ios 0x26dee0;
	virtual void keyBackClicked() = ios 0x26f9e4;
	virtual void keyDown(cocos2d::enumKeyCodes) = ios 0x26fc6c;
	virtual void googlePlaySignedIn() = ios 0x26f848;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x26faa4;
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

	static MessagesProfilePage* create(bool) = ios 0x1cfb14;

	TodoReturn deleteSelected() = ios 0x1d0ad4;
	bool init(bool) = ios 0x1cfb88;
	bool isCorrect(char const*);
	void loadPage(int) = ios 0x1d08ac;
	void onClose(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender) = ios 0x1d0610;
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onSentMessages(cocos2d::CCObject* sender);
	void onToggleAllObjects(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender) = ios 0x1d0848;
	void setupCommentsBrowser(cocos2d::CCArray*) = ios 0x1d1070;
	TodoReturn untoggleAll();
	TodoReturn updateLevelsLabel();
	TodoReturn updatePageArrows();

	virtual void registerWithTouchDispatcher() = ios 0x1d0f64;
	virtual void keyBackClicked() = ios 0x1d0f58;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x1d0c8c;
	virtual void onClosePopup(UploadActionPopup*) = ios 0x1d0d1c;
	virtual void uploadActionFinished(int, int) = ios 0x1d0d8c;
	virtual void uploadActionFailed(int, int) = ios 0x1d0e74;
	virtual void loadMessagesFinished(cocos2d::CCArray*, char const*) = ios 0x1d11d4;
	virtual void loadMessagesFailed(char const*, GJErrorCode) = ios 0x1d12e8;
	virtual void forceReloadMessages(bool) = ios 0x1d1384;
	virtual void setupPageInfo(gd::string, char const*) = ios 0x1d13b8;
}

[[link(android)]]
class MoreOptionsLayer : FLAlertLayer, TextInputDelegate, GooglePlayDelegate, GJDropDownLayerDelegate {
	// virtual ~MoreOptionsLayer();

	static MoreOptionsLayer* create() = ios 0xeeb54;

	TodoReturn addToggle(char const*, char const*, char const*);
	TodoReturn countForPage(int);
	void goToPage(int) = ios 0xf05d4;
	TodoReturn incrementCountForPage(int);
	TodoReturn infoKey(int);
	TodoReturn layerForPage(int);
	TodoReturn layerKey(int);
	TodoReturn nextPosition(int);
	TodoReturn objectKey(int);
	TodoReturn objectsForPage(int);
	TodoReturn offsetToNextPage();
	void onClose(cocos2d::CCObject* sender);
	void onFMODDebug(cocos2d::CCObject* sender) = ios 0xf03b0;
	void onGPSignIn(cocos2d::CCObject* sender);
	void onGPSignOut(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onKeybindings(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onParental(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onSongBrowser(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);
	TodoReturn pageKey(int);
	TodoReturn toggleGP();

	virtual bool init() = ios 0xeedfc;
	virtual void keyBackClicked() = ios 0xf11d4;
	virtual void textInputShouldOffset(CCTextInputNode*, float) = ios 0xf11e0;
	virtual void textInputReturn(CCTextInputNode*) = ios 0xf124c;
	virtual void googlePlaySignedIn() = ios 0xf12ac;
	virtual void dropDownLayerWillClose(GJDropDownLayer*) = ios 0xf10f8;
}

[[link(android)]]
class MoreSearchLayer : FLAlertLayer, TextInputDelegate {
	// virtual ~MoreSearchLayer();

	static MoreSearchLayer* create() = ios 0x5d774;

	TodoReturn audioNext(cocos2d::CCObject*);
	TodoReturn audioPrevious(cocos2d::CCObject*);
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = ios 0x5f674;
	void onClose(cocos2d::CCObject* sender);
	void onCoins(cocos2d::CCObject* sender) = ios 0x5f998;
	void onCompleted(cocos2d::CCObject* sender) = ios 0x5f918;
	void onEpic(cocos2d::CCObject* sender) = ios 0x5fb68;
	void onFeatured(cocos2d::CCObject* sender) = ios 0x5fb28;
	void onFollowed(cocos2d::CCObject* sender);
	void onFriends(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender) = ios 0x5fe10;
	void onLegendary(cocos2d::CCObject* sender) = ios 0x5fba8;
	void onMythic(cocos2d::CCObject* sender) = ios 0x5fbe8;
	void onNoStar(cocos2d::CCObject* sender) = ios 0x5fae8;
	void onOriginal(cocos2d::CCObject* sender) = ios 0x5f958;
	void onSongFilter(cocos2d::CCObject* sender) = ios 0x5fa18;
	void onSongMode(cocos2d::CCObject* sender);
	void onTwoPlayer(cocos2d::CCObject* sender) = ios 0x5f9d8;
	void onUncompleted(cocos2d::CCObject* sender) = ios 0x5f8d8;
	TodoReturn selectSong(int);
	TodoReturn toggleSongNodes(bool, bool);
	TodoReturn updateAudioLabel();

	virtual bool init() = ios 0x5e504;
	virtual void keyBackClicked() = ios 0x601f8;
	virtual void textInputShouldOffset(CCTextInputNode*, float) = ios 0x6012c;
	virtual void textInputReturn(CCTextInputNode*) = ios 0x60198;

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

	static MoreVideoOptionsLayer* create() = ios 0xf263c;

	void addToggle(char const*, char const*, char const*);
	TodoReturn countForPage(int);
	void goToPage(int);
	TodoReturn incrementCountForPage(int);
	TodoReturn infoKey(int);
	TodoReturn layerForPage(int);
	TodoReturn layerKey(int);
	TodoReturn nextPosition(int);
	TodoReturn objectKey(int);
	TodoReturn objectsForPage(int);
	void onApplyFPS(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender) = ios 0xf35dc;
	char const* pageKey(int);
	void updateFPSButtons();

	virtual bool init() = ios 0xf293c;
	virtual void keyBackClicked() = ios 0xf3d90;
}

[[link(android)]]
class MPLobbyLayer : cocos2d::CCLayer, GJMPDelegate, UploadPopupDelegate, UploadActionDelegate, FLAlertLayerProtocol, TextInputDelegate {
	// virtual ~MPLobbyLayer();

	static MPLobbyLayer* create(int);

	bool init(int);
	void onBack(cocos2d::CCObject* sender);
	void onBtn1(cocos2d::CCObject* sender);
	void onBtn2(cocos2d::CCObject* sender);
	void onBtn3(cocos2d::CCObject* sender);
	void onComment(cocos2d::CCObject* sender);
	TodoReturn onUpdateLobby();
	TodoReturn postComment();
	static cocos2d::CCScene* scene(int);
	TodoReturn tryExitLobby();
	TodoReturn updateLobby(float);

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn joinLobbyFinished(int);
	virtual TodoReturn joinLobbyFailed(int, GJMPErrorCode);
	virtual TodoReturn updateComments();
	virtual TodoReturn didUploadMPComment(int);
	virtual void textInputOpened(CCTextInputNode*);
	virtual void textInputClosed(CCTextInputNode*);
	virtual void textChanged(CCTextInputNode*);
	virtual void keyUp(cocos2d::enumKeyCodes);
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void uploadActionFinished(int, int);
	virtual void uploadActionFailed(int, int);
	virtual void onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class MultilineBitmapFont : cocos2d::CCSprite {
	// virtual ~MultilineBitmapFont();

	TodoReturn createWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int, bool);
	TodoReturn initWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int, bool) = ios 0x23d028;
	TodoReturn moveSpecialDescriptors(int, int);
	TodoReturn readColorInfo(gd::string);
	TodoReturn stringWithMaxWidth(gd::string, float, float);

	virtual void setOpacity(unsigned char) = ios 0x23e2a8;
}

[[link(android)]]
class MultiplayerLayer : cocos2d::CCLayer {
	// virtual ~MultiplayerLayer();

	static MultiplayerLayer* create();

	void onBack(cocos2d::CCObject* sender);
	void onBtn1(cocos2d::CCObject* sender);
	void onBtn2(cocos2d::CCObject* sender);
	static cocos2d::CCScene* scene();

	virtual bool init();
	virtual void keyBackClicked();
}

[[link(android)]]
class MultiTriggerPopup : SetupTriggerPopup {
	// virtual ~MultiTriggerPopup();

	static MultiTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x406e74;

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x406f50;
}

[[link(android)]]
class MusicArtistObject : cocos2d::CCObject {
	// virtual ~MusicArtistObject();

	static MusicArtistObject* create(int, gd::string, gd::string, gd::string);

	bool init(int, gd::string, gd::string, gd::string);
}

[[link(android)]]
class MusicBrowser : FLAlertLayer, MusicDownloadDelegate, TableViewCellDelegate, SetTextPopupDelegate, FLAlertLayerProtocol, SliderDelegate {
	// virtual ~MusicBrowser();

	static MusicBrowser* create(int) = ios 0x3bdac0;

	bool init(int) = ios 0x3bdb34;
	void onArtistFilters(cocos2d::CCObject* sender);
	void onClearSearch(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	void onPlaybackControl(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender) = ios 0x3be690;
	void onTagFilters(cocos2d::CCObject* sender);
	void onUpdateLibrary(cocos2d::CCObject* sender);
	void setupList(MusicSearchResult*) = ios 0x3bee30;
	TodoReturn setupSongControls() = ios 0x3be90c;
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn trySetupMusicBrowser() = ios 0x3beb90;
	TodoReturn updatePageLabel() = ios 0x3bf3c0;

	virtual void update(float) = ios 0x3bec34;
	virtual void registerWithTouchDispatcher() = ios 0x3bf6d4;
	virtual void keyBackClicked() = ios 0x3bf6c8;
	virtual void musicActionFinished(GJMusicAction) = ios 0x3bf2bc;
	virtual void musicActionFailed(GJMusicAction) = ios 0x3bf2dc;
	virtual TodoReturn sliderEnded(Slider*) = ios 0x3bedb0;
	virtual void setTextPopupClosed(SetTextPopup*, gd::string) = ios 0x3bf52c;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = ios 0x3bf4c4;
	virtual TodoReturn getSelectedCellIdx() = ios 0x3bf51c;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x3bf658;
}

[[link(android)]]
class MusicBrowserDelegate {
	virtual void musicBrowserClosed(MusicBrowser*) {}
}

[[link(android)]]
class MusicDelegateHandler : cocos2d::CCNode {
	// virtual ~MusicDelegateHandler();

	static MusicDelegateHandler* create(MusicDownloadDelegate*) = ios 0x140564;

	bool init(MusicDownloadDelegate*) = ios 0x23b40;
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

	static MusicDownloadManager* sharedState() = ios 0x15bf60;

	void addDLToActive(char const* tag, cocos2d::CCObject* obj);
	void addDLToActive(char const* tag);
	TodoReturn addMusicDownloadDelegate(MusicDownloadDelegate*) = ios 0x15c8a4;
	void addSongObjectFromString(gd::string);
	void clearSong(int);
	void clearUnusedSongs();
	void createSongsInfo(gd::string);
	void dataLoaded(DS_Dictionary*);
	void deleteSFX(int) = ios 0x162578;
	void deleteSong(int);
	void downloadCustomSong(int);
	void downloadMusicLibrary() = ios 0x15f980;
	void downloadSFX(int) = ios 0x1611bc;
	void downloadSFXFailed(int, GJSongError);
	void downloadSFXFinished(int);
	void downloadSFXLibrary() = ios 0x161884;
	void downloadSong(int) = ios 0x15dfe8;
	void downloadSongFailed(int, GJSongError);
	void downloadSongFinished(int);
	void encodeDataTo(DS_Dictionary*) = ios 0x15ed58;
	TodoReturn filterMusicByArtistID(int, cocos2d::CCArray*);
	TodoReturn filterMusicByTag(int, cocos2d::CCArray*);
	void firstSetup() = ios 0x15ecd8;
	TodoReturn generateCustomContentURL(gd::string) = ios 0x15f2b0;
	TodoReturn generateResourceAssetList();
	TodoReturn getAllMusicArtists(OptionsObjectDelegate*);
	TodoReturn getAllMusicObjects();
	TodoReturn getAllMusicTags(OptionsObjectDelegate*);
	TodoReturn getAllSFXObjects(bool);
	TodoReturn getAllSongs();
	void getCustomContentURL() = ios 0x15f0cc;
	cocos2d::CCObject* getDLObject(char const*);
	TodoReturn getDownloadedSongs();
	TodoReturn getDownloadProgress(int);
	TodoReturn getMusicArtistForID(int) = ios 0x160d9c;
	TodoReturn getMusicObject(int);
	TodoReturn getSFXDownloadKey(int);
	TodoReturn getSFXDownloadProgress(int);
	TodoReturn getSFXFolderObjectForID(int);
	TodoReturn getSFXFolderPathForID(int, bool);
	TodoReturn getSFXObject(int);
	TodoReturn getSongDownloadKey(int);
	void getSongInfo(int, bool) = ios 0x15cca4;
	TodoReturn getSongInfoKey(int);
	SongInfoObject* getSongInfoObject(int) = ios 0x15cbe0;
	TodoReturn getSongPriority();
	void handleIt(bool, gd::string, gd::string, GJHttpType);
	void handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	void handleItND(cocos2d::CCNode*, void*);
	TodoReturn incrementPriorityForSong(int) = ios 0x15cbac;
	bool isDLActive(char const* tag);
	bool isMusicLibraryLoaded();
	bool isResourceSFX(int);
	bool isResourceSong(int);
	bool isRunningActionForSongID(int);
	bool isSFXDownloaded(int);
	bool isSFXLibraryLoaded();
	bool isSongDownloaded(int) = ios 0x15dbe0;
	void limitDownloadedSongs();
	void loadSongInfoFailed(int, GJSongError);
	void loadSongInfoFinished(SongInfoObject*);
	void musicActionFailed(GJMusicAction);
	void musicActionFinished(GJMusicAction);
	TodoReturn nameForTagID(int);
	void onDownloadMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	void onDownloadSFXCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	void onDownloadSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	void onDownloadSongCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = ios 0x15e4a0;
	void onGetCustomContentURLCompleted(gd::string, gd::string);
	void onGetSongInfoCompleted(gd::string, gd::string);
	void onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	void onTryUpdateMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	void onTryUpdateSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = ios 0x1617ac;
	void parseMusicLibrary() = ios 0x15fc64;
	void parseSFXLibrary() = ios 0x161b48;
	gd::string pathForSFX(int) = ios 0x15ea28;
	gd::string pathForSFXFolder(int) = ios 0x15eaf4;
	gd::string pathForSong(int) = ios 0x15de74;
	gd::string pathForSongFolder(int) = ios 0x15e818;
	void ProcessHttpGetRequest(gd::string, gd::string, cocos2d::extension::SEL_HttpResponse, int, int);
	void ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType) = ios 0x15c018;
	void removeDLFromActive(char const*);
	TodoReturn removeMusicDownloadDelegate(MusicDownloadDelegate*) = ios 0x15c928;
	static cocos2d::CCDictionary* responseToDict(gd::string, char const*);
	void showTOS(FLAlertLayerProtocol*) = ios 0x15ec14;
	void songStateChanged();
	TodoReturn stopDownload(int);
	TodoReturn storeMusicObject(SongInfoObject*);
	TodoReturn storeSFXInfoObject(SFXInfoObject*);
	TodoReturn tryLoadLibraries() = ios 0x162348;
	TodoReturn tryUpdateMusicLibrary() = ios 0x15f700;
	TodoReturn tryUpdateSFXLibrary() = ios 0x161604;

	virtual bool init() = ios 0x15c7ac;

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

	static MusicSearchResult* create();

	TodoReturn applyArtistFilters(cocos2d::CCArray*);
	TodoReturn applyTagFilters(cocos2d::CCArray*);
	TodoReturn createArtistFilterObjects();
	TodoReturn createTagFilterObjects();
	TodoReturn getFilesMatchingSearch(cocos2d::CCArray*, gd::string);
	bool init();
	TodoReturn updateFutureCount(cocos2d::CCArray*, cocos2d::CCArray*);
	TodoReturn updateObjects();

	virtual TodoReturn updateObjects(AudioSortType);
	virtual TodoReturn stateChanged(OptionsObject*) = ios 0x16376c;
}

[[link(android)]]
class NewgroundsInfoLayer : FLAlertLayer, FLAlertLayerProtocol {
	// virtual ~NewgroundsInfoLayer();

	static NewgroundsInfoLayer* create() = ios 0x14d6c4;

	void onArtists(cocos2d::CCObject* sender);
	void onChanges(cocos2d::CCObject* sender) = ios 0x14ee10;
	void onClose(cocos2d::CCObject* sender);
	void onGuidelines(cocos2d::CCObject* sender) = ios 0x14edc8;
	void onInfo(cocos2d::CCObject* sender) = ios 0x14eeb0;
	void onNewgrounds(cocos2d::CCObject* sender) = ios 0x14eda4;
	void onSupporter(cocos2d::CCObject* sender) = ios 0x14edec;

	virtual bool init() = ios 0x14e538;
	virtual void keyBackClicked() = ios 0x14efa0;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x14ef48;
}

[[link(android)]]
class NodePoint : cocos2d::CCObject {
	// virtual ~NodePoint();

	static NodePoint* create(cocos2d::CCPoint);

	bool init(cocos2d::CCPoint);
}

[[link(android)]]
class NumberInputDelegate {
	virtual void numberInputClosed(NumberInputLayer*) {}
}

[[link(android)]]
class NumberInputLayer : FLAlertLayer {
	// virtual ~NumberInputLayer();

	static NumberInputLayer* create();

	TodoReturn deleteLast();
	TodoReturn inputNumber(int);
	void onClose(cocos2d::CCObject* sender);
	void onDone(cocos2d::CCObject* sender);
	void onNumber(cocos2d::CCObject* sender);
	TodoReturn updateNumberState();

	virtual bool init() = ios 0xfa504;
	virtual void registerWithTouchDispatcher() = ios 0xfacc4;
	virtual void keyBackClicked() = ios 0xfac48;
}

[[link(android)]]
class OBB2D : cocos2d::CCNode {
	// virtual ~OBB2D();

	static OBB2D* create(cocos2d::CCPoint, float, float, float) = ios 0x131a64;

	TodoReturn calculateWithCenter(cocos2d::CCPoint, float, float, float) = ios 0x131c50;
	TodoReturn computeAxes();
	TodoReturn getBoundingRect() = ios 0x132158;
	bool init(cocos2d::CCPoint, float, float, float);
	TodoReturn orderCorners();
	TodoReturn overlaps(OBB2D*);
	TodoReturn overlaps1Way(OBB2D*) = ios 0x1320ac;
}

[[link(android)]]
class ObjectControlGameObject : EffectGameObject {
	// virtual ~ObjectControlGameObject();

	static ObjectControlGameObject* create();

	virtual bool init() = ios 0x3956e4;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x3958c4;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x395734;
}

[[link(android)]]
class ObjectDecoder {
	// virtual ~ObjectDecoder();

	static ObjectDecoder* sharedDecoder() = ios 0x23e5a8;

	TodoReturn getDecodedObject(int, DS_Dictionary*);

	virtual bool init();
}

[[link(android)]]
class ObjectDecoderDelegate {
	virtual TodoReturn getDecodedObject(int, DS_Dictionary*);
}

[[link(android)]]
class ObjectManager : cocos2d::CCNode {
	// virtual ~ObjectManager();

	TodoReturn animLoaded(char const*);
	TodoReturn getDefinition(char const*);
	TodoReturn getGlobalAnimCopy(char const*) = ios 0x2552bc;
	TodoReturn instance() = ios 0x254b18;
	TodoReturn loadCopiedAnimations() = ios 0x254bfc;
	TodoReturn loadCopiedSets() = ios 0x254e10;
	TodoReturn purgeObjectManager() = ios 0x254b80;
	TodoReturn replaceAllOccurencesOfString(cocos2d::CCString*, cocos2d::CCString*, cocos2d::CCDictionary*) = ios 0x255364;
	void setLoaded(char const*);
	TodoReturn setup();

	virtual bool init() = ios 0x254bac;
}

[[link(android)]]
class ObjectToolbox : cocos2d::CCNode {
	// virtual ~ObjectToolbox();

	static ObjectToolbox* sharedState() = ios 0x27fa40;

	TodoReturn allKeys();
	float gridNodeSizeForKey(int) = ios 0x2b36c0;
	const char* intKeyToFrame(int) = ios 0x2b366c;
	TodoReturn perspectiveBlockFrame(int) = ios 0x2b3a00;

	virtual bool init() = ios 0x27fb24;
}

[[link(android)]]
class OnlineListDelegate {
	virtual void loadListFinished(cocos2d::CCArray*, char const*) {}
	virtual void loadListFailed(char const*) {}
	virtual void setupPageInfo(gd::string, char const*) {}
}

[[link(android)]]
class OpacityEffectAction {
	TodoReturn step(float) = ios 0x1078c;
}

[[link(android)]]
class OptionsCell : TableViewCell {
	// virtual ~OptionsCell();
	OptionsCell(char const*, float, float);

	void loadFromObject(OptionsObject*);
	void onToggleOption(cocos2d::CCObject* sender);
	void updateBGColor(int);
}

[[link(android)]]
class OptionsLayer : GJDropDownLayer, FLAlertLayerProtocol {
	// virtual ~OptionsLayer();

	static OptionsLayer* create();

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn exitLayer();
	TodoReturn musicSliderChanged(cocos2d::CCObject*);
	void onAccount(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onMenuMusic(cocos2d::CCObject* sender);
	void onOptions(cocos2d::CCObject* sender);
	void onProgressBar(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender);
	void onRecordReplays(cocos2d::CCObject* sender);
	void onSecretVault(cocos2d::CCObject* sender) = ios 0xee8bc;
	void onSoundtracks(cocos2d::CCObject* sender);
	void onSupport(cocos2d::CCObject* sender);
	void onVideo(cocos2d::CCObject* sender);
	TodoReturn sfxSliderChanged(cocos2d::CCObject*);
	TodoReturn tryEnableRecord();

	virtual void customSetup() = ios 0xedf38;
	virtual void layerHidden() = ios 0xeec84;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) {}
}

[[link(android)]]
class OptionsObject : cocos2d::CCObject {
	// virtual ~OptionsObject();

	static OptionsObject* create(int, bool, gd::string, OptionsObjectDelegate*);

	bool init(int, bool, gd::string, OptionsObjectDelegate*);
	TodoReturn toggleState();
}

[[link(android)]]
class OptionsObjectDelegate {
	virtual TodoReturn stateChanged(OptionsObject*);
}

[[link(android)]]
class OptionsScrollLayer : FLAlertLayer, TableViewCellDelegate {
	// virtual ~OptionsScrollLayer();

	static OptionsScrollLayer* create(cocos2d::CCArray*, bool);

	TodoReturn getRelevantObjects(cocos2d::CCArray*);
	bool init(cocos2d::CCArray*, bool) = ios 0x3bf7b8;
	void onClose(cocos2d::CCObject* sender);
	void setupList(cocos2d::CCArray*) = ios 0x3bf9a0;

	virtual void registerWithTouchDispatcher() = ios 0x3bfb5c;
	virtual void keyBackClicked() = ios 0x3bfb50;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = ios 0x3bfb94;
}

[[link(android)]]
class ParentalOptionsLayer : FLAlertLayer {
	// virtual ~ParentalOptionsLayer();

	static ParentalOptionsLayer* create() = ios 0xf1120;

	TodoReturn addToggle(char const*, char const*, char const*) = ios 0xf4220;
	TodoReturn countForPage(int);
	void goToPage(int) = ios 0xf4614;
	TodoReturn incrementCountForPage(int) = ios 0xf4af4;
	TodoReturn infoKey(int);
	TodoReturn layerForPage(int) = ios 0xf4984;
	TodoReturn layerKey(int);
	TodoReturn nextPosition(int) = ios 0xf4890;
	TodoReturn objectKey(int);
	TodoReturn objectsForPage(int) = ios 0xf4ba0;
	void onClose(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);
	TodoReturn pageKey(int);

	virtual bool init() = ios 0xf3e4c;
	virtual void keyBackClicked() = ios 0xf4e20;
}

[[link(android)]]
class ParticleGameObject : EnhancedGameObject {
	// virtual ~ParticleGameObject();

	static ParticleGameObject* create();

	TodoReturn applyParticleSettings(cocos2d::CCParticleSystemQuad*);
	TodoReturn createAndAddCustomParticle();
	TodoReturn createParticlePreviewArt() = ios 0x37f960;
	void setParticleString(gd::string);
	void updateParticle();
	TodoReturn updateParticleAngle(float, cocos2d::CCParticleSystemQuad*);
	TodoReturn updateParticlePreviewArtOpacity(float);
	TodoReturn updateParticleScale(float);
	TodoReturn updateParticleStruct() = ios 0x37f0e0;

	virtual bool init() = ios 0x37edb0;
	virtual void setScaleX(float) = ios 0x37fbec;
	virtual void setScaleY(float) = ios 0x37fc38;
	virtual void setScale(float) = ios 0x37fc84;
	virtual void setRotation(float) = ios 0x37fb08;
	virtual void setRotationX(float) = ios 0x37fb54;
	virtual void setRotationY(float) = ios 0x37fba0;
	virtual void setChildColor(cocos2d::ccColor3B const&) = ios 0x37fdc4;
	virtual void customSetup() = ios 0x37ef74;
	virtual TodoReturn addMainSpriteToParent(bool) = ios 0x37f020;
	virtual void resetObject() = ios 0x37ff84;
	virtual void deactivateObject(bool) = ios 0x37ff4c;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x37ede8;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x380164;
	virtual TodoReturn claimParticle() = ios 0x37f100;
	virtual TodoReturn unclaimParticle() = ios 0x37f6a8;
	virtual TodoReturn particleWasActivated() = ios 0x37f728;
	virtual void setObjectColor(cocos2d::ccColor3B const&) = ios 0x37fcd0;
	virtual TodoReturn blendModeChanged() = ios 0x37eff0;
	virtual TodoReturn updateParticleColor(cocos2d::ccColor3B const&) = ios 0x3972b0;
	virtual TodoReturn updateParticleOpacity(unsigned char) = ios 0x3972b4;
	virtual TodoReturn updateMainParticleOpacity(unsigned char) = ios 0x37feb8;
	virtual TodoReturn updateSecondaryParticleOpacity(unsigned char) = ios 0x37ff04;
	virtual TodoReturn updateSyncedAnimation(float, int) = ios 0x37ffec;
	virtual TodoReturn updateAnimateOnTrigger(bool) = ios 0x380114;

	// property 145
	gd::string m_particleData;
	bool m_updatedParticleData;
	PAD = android32 0x10f, android64 0x117;

	// property 147
	bool m_hasUniformObjectColor;
	PAD = android32 0x7, android64 0x7;

	// property 211
	bool m_shouldQuickStart;
	PAD = android32 0xf, android64 0xf;
}

[[link(android)]]
class ParticlePreviewLayer : cocos2d::CCLayerColor {
	// virtual ~ParticlePreviewLayer();

	static ParticlePreviewLayer* create(cocos2d::CCParticleSystemQuad*);

	bool init(cocos2d::CCParticleSystemQuad*);
	TodoReturn postVisit();
	TodoReturn preVisitWithClippingRect(cocos2d::CCRect);

	virtual void draw() = ios 0x2d9be4;
	virtual void visit() = ios 0x2d9b04;
}

[[link(android)]]
class PauseLayer : CCBlockLayer {
	// virtual ~PauseLayer();

	static PauseLayer* create(bool) = ios 0x14ab04;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	void goEdit() = ios 0x14c324;
	bool init(bool);
	void musicSliderChanged(cocos2d::CCObject*);
	void onEdit(cocos2d::CCObject* sender) = ios 0x14bfc4;
	void onHelp(cocos2d::CCObject* sender);
	void onNormalMode(cocos2d::CCObject* sender) = ios 0x14c13c;
	void onPracticeMode(cocos2d::CCObject* sender) = ios 0x14c100;
	void onQuit(cocos2d::CCObject* sender) = ios 0x14c3b0;
	void onRecordReplays(cocos2d::CCObject* sender);
	void onReplay(cocos2d::CCObject* sender);
	void onRestart(cocos2d::CCObject* sender) = ios 0x14c24c;
	void onRestartFull(cocos2d::CCObject* sender) = ios 0x14c0c4;
	void onResume(cocos2d::CCObject* sender) = ios 0x14c08c;
	void onSettings(cocos2d::CCObject* sender) = ios 0x14c288;
	void onTime(cocos2d::CCObject* sender);
	void setupProgressBars() = ios 0x14b668;
	void sfxSliderChanged(cocos2d::CCObject*);
	void tryQuit(cocos2d::CCObject*) = ios 0x14c16c;
	TodoReturn tryShowBanner(float);

	virtual void keyBackClicked() = ios 0x14c598;
	virtual void keyDown(cocos2d::enumKeyCodes) = ios 0x14c4e4;
	virtual void customSetup() = ios 0x14abc4;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x14c44c;
	virtual void keyUp(cocos2d::enumKeyCodes) {}
}

[[link(android)]]
class PlatformDownloadDelegate {
	virtual void downloadFinished(char const*) {}
	virtual void downloadFailed(char const*) {}
}

[[link(android)]]
class PlatformToolbox {
	static TodoReturn activateGameCenter();
	static TodoReturn copyToClipboard(gd::string) = ios 0x172d2c;
	static TodoReturn doesFileExist(gd::string);
	static TodoReturn downloadAndSavePromoImage(gd::string, gd::string);
	static TodoReturn gameDidSave() = ios 0x1b27c8;
	static TodoReturn getDeviceRefreshRate();
	static TodoReturn getDisplaySize() = ios 0x172cac;
	static TodoReturn getRawPath(char const*);
	static TodoReturn getUniqueUserID();
	static TodoReturn getUserID();
	static TodoReturn hideCursor();
	static bool isControllerConnected() {
		//todo: mac
		#ifdef GEODE_IS_WINDOWS
			return cocos2d::CCApplication::sharedApplication()->getControllerConnected();
		#else
			return false;
		#endif
	}
	static bool isHD();
	static bool isLocalPlayerAuthenticated();
	static bool isLowMemoryDevice();
	static bool isNetworkAvailable() = ios 0x172800;
	static bool isSignedInGooglePlay();
	static TodoReturn loadAndDecryptFileToString(char const*, char const*, gd::string&);
	static TodoReturn logEvent(char const*) = ios 0x172850;
	static TodoReturn onGameLaunch();
	static TodoReturn onNativePause() = ios 0x172838;
	static TodoReturn onNativeResume();
	static TodoReturn onToggleKeyboard();
	static TodoReturn openAppPage();
	static void platformShutdown();
	static TodoReturn refreshWindow();
	static TodoReturn reportAchievementWithID(char const*, int);
	static TodoReturn reportLoadingFinished();
	static TodoReturn resizeWindow(float, float) = ios 0x172ca8;
	static TodoReturn saveAndEncryptStringToFile(gd::string&, char const*, char const*);
	static TodoReturn sendMail(char const*, char const*, char const*);
	static void setBlockBackButton(bool);
	static void setKeyboardState(bool) = ios 0x172844;
	static TodoReturn shouldResumeSound();
	static void showAchievements();
	static void showCursor() = ios 0x172d28;
	static TodoReturn signInGooglePlay();
	static TodoReturn signOutGooglePlay();
	static TodoReturn spriteFromSavedFile(gd::string);
	static TodoReturn toggleCallGLFinish(bool);
	static TodoReturn toggleCPUSleepMode(bool);
	static TodoReturn toggleForceTimer(bool);
	static TodoReturn toggleFullScreen(bool, bool) = ios 0x172ca4;
	static TodoReturn toggleLockCursor(bool) = ios 0x172d34;
	static TodoReturn toggleMouseControl(bool);
	static TodoReturn toggleSmoothFix(bool);
	static TodoReturn toggleVerticalSync(bool);
	static TodoReturn tryShowRateDialog(gd::string);
	static TodoReturn updateMouseControl();
	static TodoReturn updateWindowedSize(float, float);
}

[[link(android)]]
class PlayerCheckpoint : cocos2d::CCNode {
	// virtual ~PlayerCheckpoint();

	static PlayerCheckpoint* create() = ios 0x121374;

	virtual bool init();
}

[[link(android)]]
class PlayerControlGameObject : EffectGameObject {
	// virtual ~PlayerControlGameObject();

	static PlayerControlGameObject* create();

	virtual bool init() = ios 0x395120;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x3954cc;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x395170;
}

[[link(android)]]
class PlayerFireBoostSprite : cocos2d::CCSprite {
	// virtual ~PlayerFireBoostSprite();

	static PlayerFireBoostSprite* create() = ios 0x2219c8;

	void animateFireIn() = ios 0x2331c8;
	void animateFireOut() = ios 0x233240;
	TodoReturn loopFireAnimation();

	virtual bool init() = ios 0x236978;

	float m_size;
}

[[link(android), depends(GJPointDouble)]]
class PlayerObject : GameObject, AnimatedSpriteDelegate {
	// virtual ~PlayerObject();

	static PlayerObject* create(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool) = ios 0x220550;

	void activateStreak() = ios 0x226930;
	TodoReturn addAllParticles() = ios 0x222154;
	TodoReturn addToTouchedRings(RingObject*) = ios 0x231780;
	TodoReturn addToYVelocity(double, int);
	void animatePlatformerJump(float) = ios 0x226e0c;
	void boostPlayer(float) = ios 0x2289bc;
	void bumpPlayer(float, int, bool, GameObject*);
	TodoReturn buttonDown(PlayerButton);
	TodoReturn canStickToGround();
	TodoReturn checkSnapJumpToObject(GameObject*);
	void collidedWithObject(float, GameObject*, cocos2d::CCRect, bool) = ios 0x228bf8;
	void collidedWithObject(float, GameObject*) = ios 0x22cf6c;
	void collidedWithObjectInternal(float, GameObject*, cocos2d::CCRect, bool) = ios 0x22a268;
	void collidedWithSlope(float, GameObject*, bool);
	void collidedWithSlopeInternal(float, GameObject*, bool) = ios 0x229144;
	TodoReturn convertToClosestRotation(float);
	TodoReturn copyAttributes(PlayerObject*) = ios 0x235a30;
	void createFadeOutDartStreak() = ios 0x2318ac;
	void createRobot(int) = ios 0x2217cc;
	void createSpider(int) = ios 0x221a58;
	void deactivateParticle() = ios 0x2253d0;
	void deactivateStreak(bool);
	TodoReturn destroyFromHitHead();
	TodoReturn didHitHead();
	void disableCustomGlowColor() {
		m_hasCustomGlowColor = false;
	}
	TodoReturn disablePlayerControls() = ios 0x235144;
	void disableSwingFire() = ios 0x2306d0;
	void doReversePlayer(bool) = ios 0x225e3c;
	void enableCustomGlowColor(cocos2d::_ccColor3B const& color) {
		m_hasCustomGlowColor = true;
		m_glowColor = color;
	}
	void enablePlayerControls();
	void exitPlatformerAnimateJump() = ios 0x225f40;
	void fadeOutStreak2(float);
	void flashPlayer(float, float, cocos2d::ccColor3B, cocos2d::ccColor3B);
	void flipGravity(bool, bool) = ios 0x226c50;
	TodoReturn flipMod();
	void gameEventTriggered(int, int);
	TodoReturn getActiveMode() = ios 0x231f28;
	TodoReturn getCurrentXVelocity() = ios 0x225350;
	TodoReturn getModifiedSlopeYVel();
	TodoReturn getOldPosition(float);
	cocos2d::ccColor3B getSecondColor() = ios 0x234a50;
	TodoReturn getYVelocity();
	TodoReturn gravityDown();
	TodoReturn gravityUp();
	TodoReturn handlePlayerCommand(int);
	TodoReturn handleRotatedCollisionInternal(float, GameObject*, cocos2d::CCRect, bool, bool, bool);
	void handleRotatedObjectCollision(float, GameObject*, cocos2d::CCRect, bool) = ios 0x228e48;
	TodoReturn handleRotatedSlopeCollision(float, GameObject*, bool);
	TodoReturn hardFlipGravity();
	void hitGround(GameObject*, bool) = ios 0x22c2e8;
	TodoReturn hitGroundNoJump(GameObject*, bool);
	void incrementJumps() = ios 0x226c18;
	bool init(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool) = ios 0x2205f4;
	bool isBoostValid(float);
	bool isFlying() = ios 0x225374;
	bool isInBasicMode() = ios 0x22e108;
	bool isInNormalMode();
	bool isSafeFlip(float);
	bool isSafeHeadTest();
	bool isSafeMode(float);
	bool isSafeSpiderFlip(float);
	TodoReturn levelFlipFinished();
	bool levelFlipping() = ios 0x2253a4;
	TodoReturn levelWillFlip();
	void loadFromCheckpoint(PlayerCheckpoint*) = ios 0x23615c;
	TodoReturn lockPlayer() = ios 0x2350c0;
	TodoReturn logValues();
	void modeDidChange();
	TodoReturn performSlideCheck();
	void placeStreakPoint() = ios 0x2269d8;
	TodoReturn playBumpEffect(int, GameObject*);
	TodoReturn playBurstEffect();
	TodoReturn playCompleteEffect(bool, bool) = ios 0x663d8;
	void playDeathEffect() = ios 0x60aa8;
	void playDynamicSpiderRun() = ios 0x225b84;
	void playerDestroyed(bool) = ios 0x230554;
	void playerIsFalling(float) = ios 0x227078;
	TodoReturn playerIsFallingBugged();
	TodoReturn playerIsMovingUp();
	TodoReturn playerTeleported();
	TodoReturn playingEndEffect() = ios 0x235284;
	TodoReturn playSpawnEffect() = ios 0x230010;
	void playSpiderDashEffect(cocos2d::CCPoint, cocos2d::CCPoint) = ios 0x22e148;
	void postCollision(float) = ios 0x227530;
	void preCollision() = ios 0x227420;
	TodoReturn preSlopeCollision(float, GameObject*) = ios 0x22be1c;
	void propellPlayer(float, bool, int) = ios 0x235550;
	void pushButton(PlayerButton) = ios 0x23087c;
	TodoReturn pushDown();
	void pushPlayer(float);
	TodoReturn redirectDash(float);
	TodoReturn redirectPlayerForce(float, float, float, float) = ios 0x2357e8;
	TodoReturn releaseAllButtons() = ios 0x23507c;
	void releaseButton(PlayerButton) = ios 0x23166c;
	TodoReturn removeAllParticles() = ios 0x222274;
	void removePendingCheckpoint() = ios 0x22fa48;
	TodoReturn removePlacedCheckpoint() = ios 0x23051c;
	TodoReturn resetAllParticles() = ios 0x2267f8;
	TodoReturn resetCollisionLog(bool) = ios 0x2273c0;
	TodoReturn resetCollisionValues() = ios 0x2222ec;
	void resetPlayerIcon() = ios 0x232570;
	TodoReturn resetStateVariables() = ios 0x22f944;
	void resetStreak() = ios 0x22685c;
	TodoReturn resetTouchedRings(bool) = ios 0x22f9a8;
	TodoReturn reverseMod();
	void reversePlayer(EffectGameObject*) = ios 0x2317d8;
	void ringJump(RingObject*, bool) = ios 0x230ae8;
	void rotateGameplay(int, int, bool, float, float, bool, bool) = ios 0x22f6dc;
	TodoReturn rotateGameplayObject(GameObject*);
	TodoReturn rotateGameplayOnly(bool) = ios 0x231e4c;
	TodoReturn rotatePreSlopeObjects();
	void runBallRotation(float);
	void runBallRotation2();
	void runNormalRotation() {
		this->runNormalRotation(false, 1.0f);
	}
	void runNormalRotation(bool, float);
	void runRotateAction(bool, int) = ios 0x225ffc;
	TodoReturn saveToCheckpoint(PlayerCheckpoint*) = ios 0x235fb8;
	void setSecondColor(cocos2d::ccColor3B const&) = ios 0x22303c;
	void setupStreak() = ios 0x221dec;
	void setYVelocity(double, int);
	TodoReturn spawnCircle() = ios 0x2300fc;
	TodoReturn spawnCircle2();
	TodoReturn spawnDualCircle() = ios 0x23042c;
	TodoReturn spawnFromPlayer(PlayerObject*, bool);
	TodoReturn spawnPortalCircle(cocos2d::ccColor3B, float) = ios 0x2301dc;
	TodoReturn spawnScaleCircle() = ios 0x2302f8;
	TodoReturn specialGroundHit();
	TodoReturn speedDown();
	TodoReturn speedUp();
	void spiderTestJump(bool) = ios 0x226b84;
	void spiderTestJumpInternal(bool) = ios 0x22d5b0;
	void spiderTestJumpX(bool);
	void spiderTestJumpY(bool);
	void startDashing(DashRingObject*) = ios 0x22ecb8;
	TodoReturn stopBurstEffect();
	void stopDashing() = ios 0x225624;
	TodoReturn stopParticles() = ios 0x226b38;
	void stopPlatformerJumpAnimation() = ios 0x22711c;
	TodoReturn stopRotation(bool, int);
	TodoReturn stopStreak2() = ios 0x235984;
	void storeCollision(PlayerCollisionDirection, int);
	TodoReturn switchedDirTo(PlayerButton);
	void switchedToMode(GameObjectType) = ios 0x22fa94;
	TodoReturn testForMoving(float, GameObject*);
	void toggleBirdMode(bool, bool) = ios 0x232710;
	void toggleDartMode(bool, bool) = ios 0x233280;
	void toggleFlyMode(bool, bool) = ios 0x231f78;
	void toggleGhostEffect(GhostType) = ios 0x22fed8;
	void togglePlatformerMode(bool val) {
            m_isPlatformer = val;
        }
	void togglePlayerScale(bool, bool) = ios 0x22fbb8;
	void toggleRobotMode(bool, bool) = ios 0x2339b4;
	void toggleRollMode(bool, bool) = ios 0x2336c4;
	void toggleSpiderMode(bool, bool) = ios 0x233c88;
	void toggleSwingMode(bool, bool) = ios 0x232ba8;
	void toggleVisibility(bool) = ios 0x2266b8;
	TodoReturn touchedObject(GameObject*) = ios 0x236480;
	void tryPlaceCheckpoint() = ios 0x226438;
	TodoReturn unrotateGameplayObject(GameObject*) = ios 0x228fa8;
	TodoReturn unrotatePreSlopeObjects();
	void updateCheckpointMode(bool);
	void updateCheckpointTest() = ios 0x226364;
	void updateCollide(PlayerCollisionDirection, GameObject*) = ios 0x22c8a4;
	void updateCollideBottom(float, GameObject*);
	void updateCollideLeft(float, GameObject*);
	void updateCollideRight(float, GameObject*);
	void updateCollideTop(float, GameObject*);
	void updateDashAnimation() = ios 0x225400;
	void updateDashArt() = ios 0x22e818;
	void updateEffects(float) = ios 0x2262e4;
	void updateGlowColor() = ios 0x234a9c;
	void updateInternalActions(float) = ios 0x2369d8;
	void updateJump(float) = ios 0x2230a4;
	void updateJumpVariables();
	void updateLastGroundObject(GameObject*);
	void updateMove(float);
	void updatePlayerArt() = ios 0x231b28;
	void updatePlayerBirdFrame(int) = ios 0x232988;
	void updatePlayerDartFrame(int) = ios 0x233508;
	void updatePlayerForce(cocos2d::CCPoint, bool);
	void updatePlayerFrame(int) = ios 0x233008;
	void updatePlayerGlow() = ios 0x231988;
	void updatePlayerJetpackFrame(int) = ios 0x232208;
	void updatePlayerRobotFrame(int id) {
        if (id < 1) id = 1;
        else if (id > 0x43) id = 0x44;

        createRobot(id);
    }
	void updatePlayerRollFrame(int) = ios 0x233800;
	void updatePlayerScale();
	void updatePlayerShipFrame(int) = ios 0x2323bc;
	void updatePlayerSpiderFrame(int id) {
        if (id < 1) id = 1;
        else if (id > 0x44) id = 0x45;

        createSpider(id);
    }

	void updatePlayerSpriteExtra(gd::string) = ios 0x221634;
	void updatePlayerSwingFrame(int) = ios 0x232dc8;
	void updateRobotAnimationSpeed() = ios 0x235d04;
	void updateRotation(float, float);
	void updateRotation(float);
	void updateShipRotation(float) = ios 0x22caa0;
	void updateShipSpriteExtra(gd::string) = ios 0x221700;
	void updateSlopeRotation(float);
	void updateSlopeYVelocity(float);
	void updateSpecial(float) = ios 0x226274;
	void updateStateVariables();
	void updateStaticForce(float, float, bool);
	void updateStreakBlend(bool) = ios 0x222354;
	void updateStreaks(float);
	void updateSwingFire() = ios 0x231e88;
	void updateTimeMod(float, bool) = ios 0x221ca4;
	TodoReturn usingWallLimitedMode();
	TodoReturn yStartDown();
	TodoReturn yStartUp();

	virtual void update(float) = ios 0x2223cc;
	virtual void setScaleX(float) = ios 0x236698;
	virtual void setScaleY(float) = ios 0x23669c;
	virtual void setScale(float) = ios 0x2366a0;
	virtual void setPosition(cocos2d::CCPoint const&) = ios 0x233f84;
	virtual void setVisible(bool) = ios 0x2366a4;
	virtual void setRotation(float) = ios 0x236628;
	virtual void setOpacity(unsigned char) = ios 0x234f18;
	virtual void setColor(cocos2d::ccColor3B const&) = ios 0x2349d8;
	virtual void setFlipX(bool) = ios 0x23662c;
	virtual void setFlipY(bool) = ios 0x236694;
	virtual void resetObject() = ios 0x22f3d4;
	virtual cocos2d::CCPoint getRealPosition() = ios 0x23501c;
	virtual TodoReturn getOrientedBox() = ios 0x235ccc;
	virtual TodoReturn getObjectRotation() = ios 0x235cf8;
	virtual void animationFinished(char const*) = ios 0x2366b8;

	cocos2d::CCNode* m_mainLayer;
	PAD = win 0x44, android32 0x44, android64 0x48, ios 0x48;
	cocos2d::CCNode* m_unk4e4;
	cocos2d::CCDictionary* m_unk4e8;
	cocos2d::CCDictionary* m_unk4ec;
	cocos2d::CCDictionary* m_unk4f0;
	cocos2d::CCDictionary* m_unk4f4;
	PAD = win 0x20, android32 0x20, android64 0x20, ios 0x20;
	float m_unk518;
	bool m_unk51c;
	bool m_unk51d;
	bool m_unk51e;
	bool m_unk51f;
	PAD = win 0x4, android32 0x4, android64 0x4, ios 0x4;
	GameObject* m_collidedObject;
	PAD = win 0x40, android32 0x40, android64 0x50, ios 0x50;
	float m_unk568;
	cocos2d::CCSprite* m_unk56c;
	PAD = win 0x4, android32 0x4, android64 0x4, ios 0x4;
	GameObject* m_unk574;
	GameObject* m_unk578;
	PAD = win 0x8, android32 0x8, android64 0x0, ios 0x0;
	float unk_584;
	int unk_588; // seems to always be 0, but when you respawn it's -1 until you move at least 1 block from the respawn place
	PAD = win 0x4, android32 0x4, android64 0x4, ios 0x4;
	cocos2d::CCArray* m_particleSystems;
	gd::unordered_map<int, GJPointDouble> m_unk594; // insertions are in PlayerObject::rotateGameplayObject
	gd::unordered_map<int, GameObject*> m_unk5b4;
	void* m_unk5d4;
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
	cocos2d::CCMotionStreak* m_shipStreak;
	HardStreak* m_waveTrail;
	float m_unk62c;
	PAD = win 0x14, android32 0x14, android64 0x14, ios 0x14;
	float m_unk644;
	float m_unk648;
	PAD = win 0xc, android32 0xc, android64 0xc, ios 0xc;
	bool m_unk658;
	bool m_unk659;
	bool m_unk65a;
	bool m_unk65b; // midair ??
	bool m_unk65c; // something to do with spider, when false the spider tp animation does not play
	bool m_unk65d; // walking ???
	bool m_unk65e;
	bool m_unk65f;
	PAD = win 0x28, android32 0x28, android64 0x28, ios 0x28;
	float m_unk688;
	float m_unk68c;
	PAD = win 0x12, android32 0x12, android64 0x12, ios 0x12;
	bool m_unk6a2; // = GameManager::getGameVariable("0096")
	bool m_unk6a3; // = GameManager::getGameVariable("0100")
	PAD = win 0x18, android32 0x18, android64 0x18, ios 0x18;
	gd::unordered_set<int> m_unk6a4;
	GameObject* m_objectSnappedTo;
	int m_unk6c0;
	PAD = win 0x4, android32 0x4, android64 0xc, ios 0xc; // android64 unsure
	GJRobotSprite* m_robotSprite;
	GJSpiderSprite* m_spiderSprite;
	PAD = win 0x4, android32 0x4, android64 0x8, ios 0x8;
	cocos2d::CCParticleSystemQuad* m_unk6dc;
	cocos2d::CCParticleSystemQuad* m_trailingParticles;
	cocos2d::CCParticleSystemQuad* m_shipClickParticles;
	cocos2d::CCParticleSystemQuad* m_unk6e8;
	cocos2d::CCParticleSystemQuad* m_ufoClickParticles;
	cocos2d::CCParticleSystemQuad* m_robotBurstParticles;
	cocos2d::CCParticleSystemQuad* m_unk6f4;
	cocos2d::CCParticleSystemQuad* m_swingBurstParticles1;
	cocos2d::CCParticleSystemQuad* m_swingBurstParticles2;
	PAD = win 0x4, android32 0x4, android64 0x4, ios 0x4;
	cocos2d::CCParticleSystemQuad* m_unk704;
	cocos2d::CCParticleSystemQuad* m_unk708;
	float m_unk70c;
	float m_unk710;
	PAD = android32 0x60, android64 0x60, ios 0x60;
	bool m_hasCustomGlowColor;
	cocos2d::ccColor3B m_glowColor;
	PAD = win 0x1c, android32 0x20, android64 0x20, ios 0x20;
	double m_yVelocity;
	bool m_isOnSlope;
	bool m_wasOnSlope;
	PAD = win 0x7, android32 0x7, android64 0x7, ios 0x7;
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
	PAD = win 0x10, android32 0x10, android64 0x10, ios 0x10;
	float m_unk7c8;
	float m_unk7cc; // unsure if float
	float m_unk7d0;
	bool m_isDashing;
	PAD = win 0x8, android32 0x8, android64 0x8, ios 0x8;
	float m_vehicleSize;
	float m_playerSpeed;
	float m_unk7e0;
	float m_unk7e4;
	cocos2d::CCPoint m_unk7e8;
	cocos2d::CCPoint m_unk7f0; // maybe m_lastPortalPos
	bool m_unk7f8;
	PAD = win 0x18, android32 0x18, android64 0x1c, ios 0x1c;
	cocos2d::CCPoint m_lastGroundedPos;
	cocos2d::CCArray* m_touchingRings;
	gd::unordered_set<int> m_unk828;
	GameObject* m_lastActivatedPortal;
	bool m_unk814;
	bool m_unk815;
	cocos2d::ccColor3B m_playerColor1;
	cocos2d::ccColor3B m_playerColor2;
	cocos2d::CCPoint m_position;
	PAD = win 0x14, android32 0x20, android64 0x20, ios 0x20; // android64 unverified
	bool m_gamevar0060; // used in init
	bool m_gamevar0061;
	bool m_gamevar0062;
	PAD = win 0x4, android32 0x4, android64 0x4, ios 0x4;
	gd::vector<float> m_unk880;
	float m_unk838;
	PAD = android32 0x18, android64 0x18, ios 0x18;
	double m_platformerXVelocity;
	PAD = android32 0x70, android64 0x70, ios 0x70;
	bool m_isPlatformer;
	int m_unk8ec;
	int m_unk8f0;
	int m_unk8f4;
	int m_unk8f8;
	float m_gravityMod;
	PAD = win 0x4, android32 0x4, android64 0x4, ios 0x4;
	cocos2d::CCPoint m_unk904;
	PAD = win 0x4, android32 0x4, android64 0x4, ios 0x4;
	gd::map<int, bool> m_unk910;
	float m_unk918; // increments whenever you're midiar?
	float m_unk91c;
	PAD = win 0x4, android32 0x4, android64 0x4, ios 0x4;
	gd::map<int, bool> m_unk924;
	PAD = win 0x4, android32 0x4, android64 0x4, ios 0x4;
	gd::string m_unk930; // this is always "run" ???
	bool m_unk948; // = getGameVariable("0123")
	PAD = win 0x3, android32 0x3, android64 0x3, ios 0x3;
	int m_iconRequestID;
	cocos2d::CCSpriteBatchNode* m_unk950;
	cocos2d::CCSpriteBatchNode* m_unk954;
	cocos2d::CCArray* m_unk958;
	PlayerFireBoostSprite* m_robotFire;
	PAD = win 0x4, android32 0x4, android64 0x8, ios 0x8;
	GJBaseGameLayer* m_gameLayer;
	cocos2d::CCLayer* m_parentLayer;
	GJActionManager* m_actionManager;
	PAD = win 0x4, android32 0x4, android64 0x4, ios 0x4;
	float m_unk974;
	bool m_unk978;
	bool m_unk979; // = isItemEnabled(0xc, 0x12);
	bool m_unk97a; // = isItemEnabled(0xc, 0x13);
	bool m_unk97b; // = isItemEnabled(0xc, 0x14);
	PAD = win 0x4, android32 0x4, android64 0x4, ios 0x4;
}

[[link(android)]]
class PlayLayer : GJBaseGameLayer, CCCircleWaveDelegate, CurrencyRewardDelegate, DialogDelegate {
	// virtual ~PlayLayer();

	static PlayLayer* create(GJGameLevel* level, bool useReplay, bool dontCreateObjects) = ios 0x116584;
	static PlayLayer* get() {
		return GameManager::get()->m_playLayer;
	}

	void addCircle(CCCircleWave* cw) {
		m_circleWaveArray->addObject(cw);
	}
	void addObject(GameObject*) = ios 0x119a44;
	void addToGroupOld(GameObject*);
	TodoReturn applyCustomEnterEffect(GameObject*, bool) = ios 0x11e788;
	TodoReturn applyEnterEffect(GameObject*, int, bool) = ios 0x11ef24;
	bool canPauseGame();
	TodoReturn checkpointWithID(int);
	TodoReturn colorObject(int, cocos2d::ccColor3B);
	TodoReturn commitJumps();
	TodoReturn compareStateSnapshot();
	CheckpointObject* createCheckpoint() = ios 0x120f78;
	void createObjectsFromSetupFinished() = ios 0x11d7c4;
	void delayedFullReset() = ios 0x122f60;
	void delayedResetLevel() = ios 0x12095c;
	void fullReset() = ios 0x122fd4;
	float getCurrentPercent() = ios 0x11fa08;
	int getCurrentPercentInt();
	TodoReturn getEndPosition() = ios 0x11b104;
	TodoReturn getLastCheckpoint() = ios 0x121d18;
	TodoReturn getRelativeMod(cocos2d::CCPoint, float, float, float);
	TodoReturn getRelativeModNew(cocos2d::CCPoint, float, float, bool, bool);
	TodoReturn getTempMilliTime() = ios 0x63e92c;
	TodoReturn gravityEffectFinished();
	void incrementJumps() = ios 0x12342c;
	bool init(GJGameLevel* level, bool useReplay, bool dontCreateObjects) = ios 0x116610;
	bool isGameplayActive();
	void levelComplete() = ios 0x11b160;
	TodoReturn loadActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&);
	TodoReturn loadDefaultColors() = ios 0x119848;
	TodoReturn loadDynamicSaveObjects(gd::vector<SavedObjectStateRef>&);
	void loadFromCheckpoint(CheckpointObject*) = ios 0x1224f4;
	CheckpointObject* loadLastCheckpoint() = ios 0x1224a8;
	TodoReturn markCheckpoint() = ios 0x120cbc;
	void onQuit() = ios 0x11ae88;
	TodoReturn optimizeColorGroups() = ios 0x1180ec;
	TodoReturn optimizeOpacityGroups() = ios 0x11824c;
	void pauseGame(bool) = ios 0x1234d4;
	void playEndAnimationToPos(cocos2d::CCPoint) = ios 0x11cf20;
	void playPlatformerEndAnimationToPos(cocos2d::CCPoint, bool) = ios 0x11d328;
	TodoReturn playReplay(gd::string);
	void prepareCreateObjectsFromSetup(gd::string&);
	void prepareMusic(bool) = ios 0x11ad30;
	void processCreateObjectsFromSetup() = ios 0x1170d8;
	TodoReturn processLoadedMoveActions();
	void queueCheckpoint();
	void removeAllObjects() = ios 0x11af14;
	void removeCheckpoint(bool) = ios 0x1223bc;
	void removeFromGroupOld(GameObject*);
	void resetLevel() = ios 0x11a550;
	void resetLevelFromStart() = ios 0x123194;
	void resume() = ios 0x123708;
	void resumeAndRestart(bool) = ios 0x123604;
	TodoReturn saveActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&) = ios 0x12201c;
	TodoReturn saveDynamicSaveObjects(gd::vector<SavedObjectStateRef>&) = ios 0x121ed4;
	TodoReturn scanActiveSaveObjects() = ios 0x118a48;
	TodoReturn scanDynamicSaveObjects() = ios 0x1183ac;
	static cocos2d::CCScene* scene(GJGameLevel*, bool, bool) = ios 0x116518;
	TodoReturn screenFlipObject(GameObject*) = ios 0x11f400;
	void setDamageVerifiedIdx(int);
	void setupHasCompleted() = ios 0x1175dc;
	TodoReturn shouldBlend(int);
	void showCompleteEffect() = ios 0x11b98c;
	void showCompleteText() = ios 0x11bce4;
	void showEndLayer() = ios 0x11c434;
	void showHint() = ios 0x1207f4;
	void showNewBest(bool, int, int, bool, bool, bool) = ios 0x11c4b0;
	void showRetryLayer();
	void showTwoPlayerGuide() = ios 0x1193c8;
	TodoReturn spawnCircle() = ios 0x11b8e4;
	TodoReturn spawnFirework() = ios 0x11c21c;
	void startGame() = ios 0x11ae2c;
	void startGameDelayed();
	void startMusic() = ios 0x11b01c;
	TodoReturn startRecording();
	TodoReturn startRecordingDelayed();
	void stopRecording() = ios 0x116d48;
	void storeCheckpoint(CheckpointObject*) = ios 0x12235c;
	TodoReturn takeStateSnapshot();
	TodoReturn toggleBGEffectVisibility(bool);
	TodoReturn toggleDebugDraw(bool) = ios 0x116de4;
	TodoReturn toggleGhostEffect(int) = ios 0x1233b8;
	void togglePracticeMode(bool) = ios 0x1230ac;
	TodoReturn tryStartRecord();
	void updateAttempts() = ios 0x123218;
	void updateEffectPositions() = ios 0x1209e8;
	void updateInfoLabel() = ios 0x118ca8;
	void updateInvisibleBlock(GameObject*, float, float, float, float, cocos2d::ccColor3B const&) = ios 0x11e548;
	void updateProgressbar() = ios 0x1196d8;
	void updateScreenRotation(int, bool, bool, float, int, float, int, int);
	void updateTimeWarp(EffectGameObject*, float);

	virtual void onEnterTransitionDidFinish() = ios 0x12387c;
	virtual void onExit() = ios 0x1238b0;
	virtual void postUpdate(float) = ios 0x120a9c;
	virtual TodoReturn checkForEnd() = ios 0x120d70;
	virtual TodoReturn testTime() = ios 0x123c5c;
	virtual TodoReturn updateVerifyDamage() = ios 0x120e58;
	virtual TodoReturn updateAttemptTime(float) = ios 0x120ef4;
	virtual void updateVisibility(float) = ios 0x11db90;
	virtual TodoReturn opacityForObject(GameObject*) = ios 0x11f618;
	virtual void updateColor(cocos2d::ccColor3B&, float, int, bool, float, cocos2d::ccHSVValue&, int, bool, EffectGameObject*, int, int) = ios 0x11f688;
	virtual TodoReturn activateEndTrigger(int, bool, bool) = ios 0x11cf1c;
	virtual void activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&) = ios 0x11d234;
	virtual TodoReturn toggleGlitter(bool) = ios 0x120020;
	virtual void destroyPlayer(PlayerObject*, GameObject*) = ios 0x120084;
	virtual TodoReturn toggleGroundVisibility(bool) = ios 0x11ff3c;
	virtual TodoReturn toggleMGVisibility(bool) = ios 0x11ff6c;
	virtual TodoReturn toggleHideAttempts(bool) = ios 0x11ff7c;
	virtual float timeForPos(cocos2d::CCPoint, int, int, bool, int) = ios 0x11fe68;
	virtual float posForTime(float) = ios 0x11fedc;
	virtual void resetSPTriggered() = ios 0x11fefc;
	virtual void updateTimeWarp(float);
	virtual TodoReturn playGravityEffect(bool) = ios 0x11f6f4;
	virtual TodoReturn manualUpdateObjectColors(GameObject*) = ios 0x11f620;
	virtual void checkpointActivated(CheckpointGameObject*) = ios 0x120f64;
	virtual TodoReturn flipArt(bool) = ios 0x11fe04;
	virtual void updateTimeLabel(int, int, bool) = ios 0x11fa78;
	virtual TodoReturn checkSnapshot() = ios 0x122f5c;
	virtual void toggleProgressbar() = ios 0x11fc20;
	virtual void toggleInfoLabel() = ios 0x11fe24;
	virtual void removeAllCheckpoints() = ios 0x122a40;
	virtual void toggleMusicInPractice() = ios 0x11fd98;
	virtual void currencyWillExit(CurrencyRewardLayer*) = ios 0x120970;
	virtual void circleWaveWillBeRemoved(CCCircleWave*) = ios 0x1209d0;
	virtual void dialogClosed(DialogLayer*) = ios 0x12099c;

	PAD = android32 0x24, android64 0x2c, ios 0x2c;
	cocos2d::CCArray* m_coinArray;
	PAD = android32 0x84, android64 0xc8, ios 0xc8;
	cocos2d::CCArray* m_circleWaveArray;
	PAD = android32 0x10, android64 0x18, ios 0x18;
	cocos2d::CCLabelBMFont* m_attemptLabel;
	PAD = android32 0x8, android64 0x10, ios 0x10;
	cocos2d::CCSprite* m_progressBar;
	PAD = android32 0xD4, android64 0x108, ios 0xf8; // (ios) maybe add 0x10 here and subtract at the end
	cocos2d::CCDictionary* m_colorKeyDict;
	gd::vector<int> m_keyColors; // type not really accurate
	gd::vector<int> m_keyOpacities; // type not really accurate
	gd::vector<int> m_keyPulses; // type not really accurate
	int m_nextColorKey;
	PAD = android32 0x18, android64 0x24, ios 0x24;
}

[[link(android)]]
class PointNode : cocos2d::CCObject {
	// virtual ~PointNode();

	static PointNode* create(cocos2d::CCPoint);

	bool init(cocos2d::CCPoint);

	cocos2d::CCPoint m_point;
}

[[link(android)]]
class PriceLabel : cocos2d::CCNode {
	// virtual ~PriceLabel();

	static PriceLabel* create(int);

	bool init(int);
	void setColor(cocos2d::ccColor3B);
	void setOpacity(float);
	void setPrice(int);
}

[[link(android)]]
class ProfilePage : FLAlertLayer, FLAlertLayerProtocol, LevelCommentDelegate, CommentUploadDelegate, UserInfoDelegate, UploadActionDelegate, UploadPopupDelegate, LeaderboardManagerDelegate {
	// virtual ~ProfilePage();

	static ProfilePage* create(int accountID, bool ownProfile) = ios 0x19d408;

	void blockUser();
	bool init(int accountID, bool ownProfile) = ios 0x19d48c;
	bool isCorrect(char const*);
	bool isOnWatchlist(int);
	void loadPage(int) = ios 0x1a2560;
	void loadPageFromUserInfo(GJUserScore*) = ios 0x19e5f8;
	void onBlockUser(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onComment(cocos2d::CCObject* sender) = ios 0x1a16bc;
	void onCommentHistory(cocos2d::CCObject* sender);
	void onFollow(cocos2d::CCObject* sender) = ios 0x19e10c;
	void onFriend(cocos2d::CCObject* sender);
	void onFriends(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender) = ios 0x1a0b18;
	void onMessages(cocos2d::CCObject* sender);
	void onMyLevels(cocos2d::CCObject* sender);
	void onMyLists(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onRequests(cocos2d::CCObject* sender);
	void onSendMessage(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onStatInfo(cocos2d::CCObject* sender);
	void onTwitch(cocos2d::CCObject* sender) = ios 0x1a09c4;
	void onTwitter(cocos2d::CCObject* sender) = ios 0x1a08a8;
	void onUpdate(cocos2d::CCObject* sender) = ios 0x19e2fc;
	void onYouTube(cocos2d::CCObject* sender) = ios 0x1a078c;
	TodoReturn setupComments() = ios 0x19df18;
	void setupCommentsBrowser(cocos2d::CCArray*) = ios 0x19e4c8;
	void showNoAccountError() = ios 0x1a1d48;
	TodoReturn toggleMainPageVisibility(bool);
	TodoReturn toggleShip(cocos2d::CCObject*);
	TodoReturn updateLevelsLabel();
	TodoReturn updatePageArrows();

	virtual void registerWithTouchDispatcher() = ios 0x1a2ec8;
	virtual void keyBackClicked() = ios 0x1a2220;
	virtual void show() = ios 0x1a2368;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x1a1e90;
	virtual void updateUserScoreFinished() = ios 0x1a222c;
	virtual void updateUserScoreFailed() = ios 0x1a22c0;
	virtual void getUserInfoFinished(GJUserScore*) = ios 0x1a24a0;
	virtual void getUserInfoFailed(int) = ios 0x1a2714;
	virtual void userInfoChanged(GJUserScore*) = ios 0x1a2788;
	virtual void loadCommentsFinished(cocos2d::CCArray*, char const*) = ios 0x1a28d4;
	virtual void loadCommentsFailed(char const*) = ios 0x1a2958;
	virtual void setupPageInfo(gd::string, char const*) = ios 0x1a29c8;
	virtual void commentUploadFinished(int) = ios 0x1a2c90;
	virtual void commentUploadFailed(int, CommentError) = ios 0x1a2ce8;
	virtual void commentDeleteFailed(int, int) = ios 0x1a2d98;
	virtual void onClosePopup(UploadActionPopup*) = ios 0x1a2014;
	virtual void uploadActionFinished(int, int) = ios 0x1a2084;
	virtual void uploadActionFailed(int, int) = ios 0x1a219c;

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

	static PromoInterstitial* create(bool);

	bool init(bool);
	void onClick(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn setup();

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void keyBackClicked();
	virtual void show();
}

[[link(android)]]
class PulseEffectAction {
	bool isFinished();
	TodoReturn step(float) = ios 0x107f4;
	TodoReturn valueForDelta(float, float, float, float);
}

[[link(android)]]
class PurchaseItemPopup : FLAlertLayer {
	// virtual ~PurchaseItemPopup();

	static PurchaseItemPopup* create(GJStoreItem*);

	bool init(GJStoreItem*);
	void onClose(cocos2d::CCObject* sender);
	void onPurchase(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = ios 0x156750;
}

[[link(android)]]
class RandTriggerGameObject : ChanceTriggerGameObject {
	// virtual ~RandTriggerGameObject();

	static RandTriggerGameObject* create();

	int getRandomGroupID();
	int getTotalChance();

	virtual bool init() = ios 0x3876c8;
	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = ios 0x3877ec;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x3878c0;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x387ca0;
}

[[link(android)]]
class RateDemonLayer : FLAlertLayer, UploadPopupDelegate, UploadActionDelegate {
	// virtual ~RateDemonLayer();

	static RateDemonLayer* create(int);

	bool init(int) = ios 0x422c6c;
	void onClose(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender) = ios 0x4231b0;
	void selectRating(cocos2d::CCObject*);

	virtual void keyBackClicked() = ios 0x423468;
	virtual void uploadActionFinished(int, int) = ios 0x4232bc;
	virtual void uploadActionFailed(int, int) = ios 0x423350;
	virtual void onClosePopup(UploadActionPopup*) = ios 0x4233ec;

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

	static RateLevelLayer* create(int);

	bool init(int);
	void onClose(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender);
	void selectRating(cocos2d::CCObject*);

	virtual void keyBackClicked() = ios 0x681b4;
}

[[link(android)]]
class RateStarsLayer : FLAlertLayer, UploadPopupDelegate, UploadActionDelegate {
	// virtual ~RateStarsLayer();

	static RateStarsLayer* create(int, bool, bool) = ios 0x86278;
	CCMenuItemSpriteExtra* getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float) = ios 0x86890;
	bool init(int, bool, bool) = ios 0x86304;
	void onClose(cocos2d::CCObject* sender) = ios 0x86ad4;
	void onFeature(cocos2d::CCObject* sender) = ios 0x86abc;
	void onRate(cocos2d::CCObject* sender) = ios 0x86b30;
	void onToggleCoins(cocos2d::CCObject* sender);
	void selectRating(cocos2d::CCObject*) = ios 0x86958;

	virtual void keyBackClicked() = ios 0x86dec;
	virtual void uploadActionFinished(int, int) = ios 0x86c50;
	virtual void uploadActionFailed(int, int) = ios 0x86cdc;
	virtual void onClosePopup(UploadActionPopup*) = ios 0x86d70;
	PAD = win 0x10;
	int m_starsRate;
}

[[link(android)]]
class RetryLevelLayer : GJDropDownLayer, RewardedVideoDelegate {
	// virtual ~RetryLevelLayer();

	static RetryLevelLayer* create();

	TodoReturn getEndText();
	void onEveryplay(cocos2d::CCObject* sender);
	void onMenu(cocos2d::CCObject* sender);
	void onReplay(cocos2d::CCObject* sender);
	void onRewardedVideo(cocos2d::CCObject* sender);
	TodoReturn setupLastProgress();

	virtual void keyBackClicked() = ios 0x1b8ed4;
	virtual void keyDown(cocos2d::enumKeyCodes) = ios 0x1b8e88;
	virtual void customSetup() = ios 0x1b8264;
	virtual void showLayer(bool) = ios 0x1b8d38;
	virtual void enterAnimFinished() = ios 0x1b8e40;
	virtual TodoReturn rewardedVideoFinished() = ios 0x1b8e78;
	virtual TodoReturn shouldOffsetRewardCurrency() = ios 0x1b8f0c;
	virtual void keyUp(cocos2d::enumKeyCodes) {}
}

[[link(android)]]
class RewardedVideoDelegate {
	virtual TodoReturn rewardedVideoFinished();
	virtual TodoReturn shouldOffsetRewardCurrency();
}

[[link(android)]]
class RewardsPage : FLAlertLayer, FLAlertLayerProtocol, GJRewardDelegate {
	// virtual ~RewardsPage();

	static RewardsPage* create() = ios 0x1c78fc;

	static char const* getRewardFrame(int, int);
	void onClose(cocos2d::CCObject* sender);
	void onFreeStuff(cocos2d::CCObject* sender);
	void onReward(cocos2d::CCObject* sender);
	TodoReturn tryGetRewards();
	TodoReturn unlockLayerClosed(RewardUnlockLayer*);
	callback void updateTimers(float) = ios 0x1c85dc;

	virtual bool init() = ios 0x1c79c8;
	virtual void registerWithTouchDispatcher() = ios 0x1c8dec;
	virtual void keyBackClicked() = ios 0x1c8d70;
	virtual void show() = ios 0x1c8c30;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) {}
	virtual void rewardsStatusFinished(int) = ios 0x1c89e4;
	virtual void rewardsStatusFailed() = ios 0x1c8b9c;

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

	static RewardUnlockLayer* create(int, RewardsPage*) = ios 0x1c8900;

	TodoReturn connectionTimeout();
	bool init(int, RewardsPage*);
	TodoReturn labelEnterFinishedO(cocos2d::CCObject*);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn playDropSound() = ios 0x1c9a9c;
	TodoReturn playLabelEffect(int, int, cocos2d::CCSprite*, cocos2d::CCPoint, float);
	TodoReturn playRewardEffect() = ios 0x1c9c8c;
	TodoReturn readyToCollect(GJRewardItem*);
	void showCloseButton();
	void showCollectReward(GJRewardItem*) = ios 0x1c8ae0;
	TodoReturn step2();
	TodoReturn step3();

	virtual void keyBackClicked() {}
	virtual void currencyWillExit(CurrencyRewardLayer*) = ios 0x1cbddc;
}

[[link(android)]]
class RingObject : EffectGameObject {
	// virtual ~RingObject();

	static RingObject* create(char const*);

	bool init(char const*);
	TodoReturn spawnCircle();

	virtual void setScale(float) = ios 0x3808fc;
	virtual void setRotation(float);
	virtual void resetObject() = ios 0x3808d0;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x380960;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x380a60;
	virtual void setRScale(float) = ios 0x380924;
	virtual void triggerActivated(float) = ios 0x380784;
	virtual TodoReturn shouldDrawEditorHitbox() = ios 0x380950;
	virtual TodoReturn powerOnObject(int) = ios 0x380790;

	bool m_claimTouch;
	// property 504
	bool m_isSpawnOnly;
}

[[link(android)]]
class RotateGameplayGameObject : EffectGameObject {
	// virtual ~RotateGameplayGameObject();

	static RotateGameplayGameObject* create();

	TodoReturn updateGameplayRotation();

	virtual bool init() = ios 0x3968ac;
	virtual void updateStartValues() = ios 0x397114;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x396e58;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x3968fc;
}

[[link(android)]]
class ScrollingLayer : cocos2d::CCLayerColor {
	// virtual ~ScrollingLayer();

	static ScrollingLayer* create(cocos2d::CCSize, cocos2d::CCPoint, float);

	TodoReturn getViewRect();
	bool init(cocos2d::CCSize, cocos2d::CCPoint, float);
	void setStartOffset(cocos2d::CCPoint);

	virtual void draw() = ios 0x1bdc9c;
	virtual void visit() = ios 0x1bdd40;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x1bddc8;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x1bde88;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x1bdf84;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x1bdfbc;
}

[[link(android)]]
class SearchButton : cocos2d::CCSprite {
	// virtual ~SearchButton();

	static SearchButton* create(char const*, char const*, float, char const*);

	bool init(char const*, char const*, float, char const*);

	cocos2d::CCLabelBMFont* m_label;
	cocos2d::CCSprite* m_icon;
}

[[link(android)]]
class SearchSFXPopup : SetTextPopup {
	// virtual ~SearchSFXPopup();

	static SearchSFXPopup* create(gd::string);

	bool init(gd::string) = ios 0x1718f0;
	void onSearchFolders(cocos2d::CCObject* sender);
}

[[link(android)]]
class SecretLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol {
	// virtual ~SecretLayer();

	static SecretLayer* create() = ios 0x3b9f50;

	TodoReturn getBasicMessage();
	TodoReturn getMessage() = ios 0x3baa84;
	TodoReturn getThreadMessage();
	TodoReturn nodeWithTag(int);
	void onBack(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender) = ios 0x3bad2c;
	TodoReturn playCoinEffect();
	static cocos2d::CCScene* scene() = ios 0x3b9f0c;
	TodoReturn selectAThread();
	TodoReturn updateMessageLabel(gd::string) = ios 0x3baa34;
	void updateSearchLabel(char const*) = ios 0x3bab20;

	virtual bool init() = ios 0x3ba018;
	virtual void keyBackClicked() = ios 0x3bcd1c;
	virtual void textInputOpened(CCTextInputNode*) = ios 0x3bc228;
	virtual void textInputClosed(CCTextInputNode*) = ios 0x3bc314;
	virtual void textChanged(CCTextInputNode*) = ios 0x3bc394;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) {}
}

[[link(android)]]
class SecretLayer2 : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DialogDelegate {
	// virtual ~SecretLayer2();

	static SecretLayer2* create() = win 0x305630;

	gd::string getBasicMessage() = ios 0x313e4c;
	gd::string getErrorMessage();
	gd::string getMessage() = ios 0x310f8c;
	gd::string getThreadMessage();
	TodoReturn nodeWithTag(int);
	void onBack(cocos2d::CCObject* sender);
	void onDoor(cocos2d::CCObject* sender) = ios 0x3123d0;
	void onSecretLevel(cocos2d::CCObject* sender) = ios 0x312588;
	void onSubmit(cocos2d::CCObject* sender) = ios 0x311230;
	void playCoinEffect();
	static cocos2d::CCScene* scene();
	void selectAThread();
	void showCompletedLevel() = ios 0x3126e4;
	void showSecretLevel();
	void updateMessageLabel(gd::string) = ios 0x310f3c;
	void updateSearchLabel(char const*) = ios 0x31101c;

	virtual bool init() = ios 0x310228;
	virtual void onExit() = ios 0x3144ec;
	virtual void keyBackClicked() = ios 0x3144e0;
	virtual void textInputOpened(CCTextInputNode*) = ios 0x313b9c;
	virtual void textInputClosed(CCTextInputNode*) = ios 0x313c88;
	virtual void textChanged(CCTextInputNode*) = ios 0x313d08;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) {}
	virtual void dialogClosed(DialogLayer*) = ios 0x312f6c;
}

[[link(android)]]
class SecretLayer3 : cocos2d::CCLayer, DialogDelegate {
	// virtual ~SecretLayer3();

	static SecretLayer3* create() = ios 0x314614;

	TodoReturn animateEyes() = ios 0x315930;
	TodoReturn firstInteractionStep1();
	TodoReturn firstInteractionStep2() = ios 0x3167fc;
	TodoReturn firstInteractionStep3();
	TodoReturn firstInteractionStep4() = ios 0x316c50;
	void onBack(cocos2d::CCObject* sender);
	void onChest01(cocos2d::CCObject* sender);
	void onChest02(cocos2d::CCObject* sender);
	void onClick(cocos2d::CCObject* sender) = ios 0x315a20;
	TodoReturn revealStep1();
	TodoReturn revealStep2() = ios 0x317424;
	TodoReturn revealStep3();
	TodoReturn revealStep4() = ios 0x317710;
	TodoReturn revealStep5() = ios 0x317bd0;
	static cocos2d::CCScene* scene() = ios 0x312fd8;
	void showUnlockDialog() = ios 0x316fa0;

	virtual bool init() = ios 0x3146c0;
	virtual void onExit() = ios 0x3181b8;
	virtual void keyBackClicked() = ios 0x3181ac;
	virtual void dialogClosed(DialogLayer*) = ios 0x317f50;
}

[[link(android)]]
class SecretLayer4 : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DialogDelegate {
	// virtual ~SecretLayer4();

	static SecretLayer4* create();

	TodoReturn getBasicMessage();
	TodoReturn getErrorMessage() = ios 0x3bc198;
	TodoReturn getMessage() = ios 0x3587ec;
	TodoReturn getThreadMessage();
	TodoReturn nodeWithTag(int);
	void onBack(cocos2d::CCObject* sender);
	void onChest01(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender) = ios 0x358a94;
	TodoReturn playCoinEffect();
	static cocos2d::CCScene* scene() = ios 0x357954;
	TodoReturn selectAThread();
	void showDialog(int);
	void showFirstDialog() = ios 0x3584c0;
	TodoReturn updateMessageLabel(gd::string) = ios 0x35879c;
	void updateSearchLabel(char const*) = ios 0x35887c;

	virtual bool init() = ios 0x357a0c;
	virtual void onExit() = ios 0x35a01c;
	virtual void keyBackClicked() = ios 0x35a010;
	virtual void textInputOpened(CCTextInputNode*) = ios 0x359a00;
	virtual void textInputClosed(CCTextInputNode*) = ios 0x359aec;
	virtual void textChanged(CCTextInputNode*) = ios 0x359b6c;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) {}
	virtual void dialogClosed(DialogLayer*) {}
}

[[link(android)]]
class SecretNumberLayer : cocos2d::CCLayer {
	// virtual ~SecretNumberLayer();

	static SecretNumberLayer* create();

	TodoReturn playNumberEffect(int);

	virtual bool init();
}

[[link(android)]]
class SecretRewardsLayer : cocos2d::CCLayer, DialogDelegate, BoomScrollLayerDelegate {
	// virtual ~SecretRewardsLayer();

	static SecretRewardsLayer* create(bool) = ios 0x2ef424;

	TodoReturn createSecondaryLayer(int) = ios 0x2f15a0;
	TodoReturn generateChestItems(int) = ios 0x2f1948;
	TodoReturn getPageColor(int);
	void goToPage(int);
	bool init(bool) = ios 0x2ef498;
	TodoReturn moveToMainLayer(cocos2d::CCObject*) = ios 0x2f1480;
	TodoReturn moveToSecondaryLayer(int);
	void onBack(cocos2d::CCObject* sender) = ios 0x2f09a0;
	void onChestType(cocos2d::CCObject* sender);
	void onSelectItem(cocos2d::CCObject* sender) = ios 0x2f218c;
	void onShop(cocos2d::CCObject* sender);
	void onSpecialItem(cocos2d::CCObject* sender) = ios 0x2f0fd4;
	void onSwitchPage(cocos2d::CCObject* sender);
	static cocos2d::CCScene* scene(bool) = ios 0x2ef3d8;
	void showDialog01() = ios 0x2f2428;
	void showDialog03() = ios 0x2f3524;
	void showDialogDiamond() = ios 0x2f4e48;
	void showDialogMechanic() = ios 0x2f4200;
	void showLockedChest();
	void showShop(int);
	TodoReturn switchToOpenedState(CCMenuItemSpriteExtra*) = ios 0x2f0a60;
	TodoReturn updateBackButton() = ios 0x2f1360;
	TodoReturn updateUnlockedLabel() = ios 0x2f0b48;

	virtual void onExit() = ios 0x2f5768;
	virtual void keyBackClicked() = ios 0x2f5754;
	virtual void dialogClosed(DialogLayer*) = ios 0x2f5660;
	virtual void scrollLayerMoved(cocos2d::CCPoint) = ios 0x2f0e98;
}

[[link(android)]]
class SelectArtDelegate {
	virtual void selectArtClosed(SelectArtLayer*);
}

[[link(android)]]
class SelectArtLayer : FLAlertLayer {
	// virtual ~SelectArtLayer();

	static SelectArtLayer* create(SelectArtType, int);

	bool init(SelectArtType, int);
	void onClose(cocos2d::CCObject* sender);
	void onSelectCustom(cocos2d::CCObject* sender);
	TodoReturn selectArt(cocos2d::CCObject*);
	TodoReturn updateSelectedCustom(int);

	virtual void keyBackClicked() = ios 0x184024;
}

[[link(android)]]
class SelectEventLayer : SetupTriggerPopup {
	// virtual ~SelectEventLayer();

	static SelectEventLayer* create(SetupEventLinkPopup*, gd::set<int>&) = ios 0x403b28;

	TodoReturn addToggle(int, gd::string) = ios 0x405378;
	bool init(SetupEventLinkPopup*, gd::set<int>&) = ios 0x403d10;
	TodoReturn nextPosition() = ios 0x1ff170;
	void onInfo(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = ios 0x40586c;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x40582c;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = ios 0x405704;
}

[[link(android)]]
class SelectFontLayer : FLAlertLayer {
	// virtual ~SelectFontLayer();

	static SelectFontLayer* create(LevelEditorLayer*) = ios 0x2da284;

	bool init(LevelEditorLayer*) = ios 0x2da344;
	void onChangeFont(cocos2d::CCObject* sender) = ios 0x2da8ec;
	void onClose(cocos2d::CCObject* sender);
	TodoReturn updateFontLabel() = ios 0x2da984;

	virtual void keyBackClicked() = ios 0x2daa84;
}

[[link(android)]]
class SelectListIconDelegate {
	virtual TodoReturn iconSelectClosed(SelectListIconLayer*);
}

[[link(android)]]
class SelectListIconLayer : FLAlertLayer {
	// virtual ~SelectListIconLayer();

	static SelectListIconLayer* create(int);

	bool init(int);
	void onClose(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = ios 0x24f988;
}

[[link(android)]]
class SelectPremadeDelegate {
	virtual void selectPremadeClosed(SelectPremadeLayer*, int);
}

[[link(android)]]
class SelectPremadeLayer : FLAlertLayer {
	// virtual ~SelectPremadeLayer();

	static SelectPremadeLayer* create() = ios 0x6c670;

	void onClose(cocos2d::CCObject* sender);
	void onSelectPremade(cocos2d::CCObject* sender);

	virtual bool init() = ios 0x6c9e8;
	virtual void keyBackClicked() = ios 0x6cea0;
}

[[link(android)]]
class SelectSettingDelegate {
	virtual TodoReturn selectSettingClosed(SelectSettingLayer*);
}

[[link(android)]]
class SelectSettingLayer : FLAlertLayer {
	// virtual ~SelectSettingLayer();

	static SelectSettingLayer* create(SelectSettingType, int);

	TodoReturn frameForItem(SelectSettingType, int);
	TodoReturn frameForValue(SelectSettingType, int) = ios 0x182b50;
	TodoReturn getSelectedFrame();
	TodoReturn getSelectedValue();
	TodoReturn idxToValue(SelectSettingType, int);
	bool init(SelectSettingType, int);
	void onClose(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);
	TodoReturn valueToIdx(SelectSettingType, int);

	virtual void keyBackClicked() = ios 0x184774;
}

[[link(android)]]
class SelectSFXSortDelegate {
	virtual TodoReturn sortSelectClosed(SelectSFXSortLayer*);
}

[[link(android)]]
class SelectSFXSortLayer : FLAlertLayer {
	// virtual ~SelectSFXSortLayer();

	static SelectSFXSortLayer* create(AudioSortType) = ios 0x171558;

	bool init(AudioSortType) = ios 0x171b48;
	void onClose(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = ios 0x172084;
}

[[link(android)]]
class SequenceTriggerGameObject : ChanceTriggerGameObject {
	// virtual ~SequenceTriggerGameObject();

	static SequenceTriggerGameObject* create();

	void addCount(int, int);
	void addTarget(int, int);
	void deleteTarget(int);
	int reorderTarget(int, bool);
	TodoReturn updateSequenceTotalCount();

	virtual bool init() = ios 0x387fe0;
	virtual void resetObject() = ios 0x388030;
	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = ios 0x388060;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x388314;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x388638;
}

[[link(android)]]
class SetColorIDPopup : SetIDPopup, GJSpecialColorSelectDelegate {
	// virtual ~SetColorIDPopup();

	static SetColorIDPopup* create(int) = ios 0x2e60b8;

	bool init(int) = ios 0x2e612c;
	void onSelectSpecialColor(cocos2d::CCObject* sender);

	virtual void colorSelectClosed(GJSpecialColorSelect*, int) = ios 0x2e6370;
}

[[link(android)]]
class SetFolderPopup : SetIDPopup, SetTextPopupDelegate {
	// virtual ~SetFolderPopup();

	static SetFolderPopup* create(int, bool, gd::string) = ios 0x2e6638;

	bool init(int, bool, gd::string);
	void onSetFolderName(cocos2d::CCObject* sender) = ios 0x2e6954;

	virtual void valueChanged() = ios 0x2e6af0;
	virtual void setTextPopupClosed(SetTextPopup*, gd::string) = ios 0x2e6db4;
}

[[link(android)]]
class SetGroupIDLayer : FLAlertLayer, TextInputDelegate {
	// virtual ~SetGroupIDLayer();

	static SetGroupIDLayer* create(GameObject* obj, cocos2d::CCArray* objs) = ios 0x445dc;

	TodoReturn addGroupID(int);
	void callRemoveFromGroup(float);
	TodoReturn createTextInput(cocos2d::CCPoint, int, int, gd::string, float, int);
	TodoReturn determineStartValues() = ios 0x46890;
	bool init(GameObject* obj, cocos2d::CCArray* objs) = ios 0x44660;
	void onAddGroup(cocos2d::CCObject* sender);
	void onAddGroupParent(cocos2d::CCObject* sender);
	void onAnim(cocos2d::CCObject* sender);
	TodoReturn onArrow(int, int);
	void onArrowLeft(cocos2d::CCObject* sender);
	void onArrowRight(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = ios 0x4607c;
	void onCopy(cocos2d::CCObject* sender);
	void onExtra(cocos2d::CCObject* sender);
	void onExtra2(cocos2d::CCObject* sender);
	void onNextFreeEditorLayer1(cocos2d::CCObject* sender);
	void onNextFreeEditorLayer2(cocos2d::CCObject* sender);
	void onNextFreeOrderChannel(cocos2d::CCObject* sender);
	void onNextGroupID1(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onRemoveFromGroup(cocos2d::CCObject* sender);
	void onSmoothEase(cocos2d::CCObject* sender);
	void onToggleGuide(cocos2d::CCObject* sender);
	void onToggleSelectedOrder(cocos2d::CCObject* sender);
	void onZLayer(cocos2d::CCObject* sender);
	void onZLayerShift(cocos2d::CCObject* sender);
	TodoReturn removeGroupID(int);
	TodoReturn updateEditorLabel();
	TodoReturn updateEditorLabel2();
	TodoReturn updateEditorLayerID();
	TodoReturn updateEditorLayerID2();
	TodoReturn updateEditorOrder();
	TodoReturn updateEditorOrderLabel();
	TodoReturn updateGroupIDButtons();
	TodoReturn updateGroupIDLabel();
	TodoReturn updateOrderChannel();
	TodoReturn updateOrderChannelLabel();
	TodoReturn updateZLayerButtons();
	TodoReturn updateZOrder();
	TodoReturn updateZOrderLabel();

	virtual void keyBackClicked() = ios 0x48318;
	virtual void textInputClosed(CCTextInputNode*) = ios 0x47d88;
	virtual void textChanged(CCTextInputNode*) = ios 0x47da4;

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

	static SetIDPopup* create(int, int, int, gd::string, gd::string, bool, int, float, bool, bool) = ios 0x2e536c;

	bool init(int, int, int, gd::string, gd::string, bool, int, float, bool, bool) = ios 0x2e5528;
	void onCancel(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onItemIDArrow(cocos2d::CCObject* sender);
	void onResetValue(cocos2d::CCObject* sender);
	TodoReturn updateTextInputLabel();

	virtual void keyBackClicked() = ios 0x2e6074;
	virtual void show() = ios 0x2e5ff8;
	virtual void textInputClosed(CCTextInputNode*) = ios 0x2e5f3c;
	virtual void textChanged(CCTextInputNode*) = ios 0x2e5f58;
	virtual void valueChanged() {}

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

	static SetItemIDLayer* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x41649c;

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x416574;
	TodoReturn updateEditorLabel();

	virtual void onClose(cocos2d::CCObject* sender) = ios 0x416d7c;
	virtual void valueDidChange(int, float) = ios 0x416c88;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = ios 0x416b80;
}

[[link(android)]]
class SetLevelOrderPopup : SetIDPopup {
	// virtual ~SetLevelOrderPopup();

	static SetLevelOrderPopup* create(int, int, int) = ios 0x24e1ac;

	bool init(int, int, int) = ios 0x24efac;
	void onOrderButton(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetTargetIDLayer : SetupTriggerPopup {
	// virtual ~SetTargetIDLayer();

	static SetTargetIDLayer* create(EffectGameObject*, cocos2d::CCArray*, gd::string, gd::string, int, int, int) = ios 0x21c004;

	bool init(EffectGameObject*, cocos2d::CCArray*, gd::string, gd::string, int, int, int) = ios 0x21c190;

	virtual TodoReturn determineStartValues();
	virtual void valueDidChange(int, float) = ios 0x21c45c;
}

[[link(android)]]
class SetTextPopup : FLAlertLayer, TextInputDelegate {
	// virtual ~SetTextPopup();

	static SetTextPopup* create(gd::string value, gd::string placeholder, int maxLength, gd::string title, gd::string okBtnText, bool showResetBtn, float) = ios 0x2e6bc0;

	bool init(gd::string value, gd::string placeholder, int maxLength, gd::string title, gd::string okBtnText, bool showResetBtn, float) = ios 0x2e6f0c;
	void onCancel(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onResetValue(cocos2d::CCObject* sender);
	TodoReturn updateTextInputLabel();

	virtual void keyBackClicked() = ios 0x2e7804;
	virtual void show() = ios 0x2e77b8;
	virtual void textInputClosed(CCTextInputNode*) = ios 0x2e7714;
	virtual void textChanged(CCTextInputNode*) = ios 0x2e7730;

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

	static SetupAdvFollowEditPhysicsPopup* create(AdvancedFollowEditObject*, cocos2d::CCArray*) = ios 0x6cf1c;

	bool init(AdvancedFollowEditObject*, cocos2d::CCArray*) = ios 0x6cff4;

	virtual void valueDidChange(int, float) = ios 0x6da98;
}

[[link(android)]]
class SetupAdvFollowPopup : SetupTriggerPopup, SelectPremadeDelegate {
	// virtual ~SetupAdvFollowPopup();

	static SetupAdvFollowPopup* create(AdvancedFollowTriggerObject*, cocos2d::CCArray*);

	bool init(AdvancedFollowTriggerObject*, cocos2d::CCArray*);
	void onMode(cocos2d::CCObject* sender);
	void onPremade(cocos2d::CCObject* sender);
	void updateMode(int);

	virtual void onClose(cocos2d::CCObject* sender);
	virtual void updateDefaultTriggerValues() = ios 0x6c218;
	virtual void valueDidChange(int, float) = ios 0x6c378;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = ios 0x6c558;
	virtual void selectPremadeClosed(SelectPremadeLayer*, int) = ios 0x6c718;
}

[[link(android)]]
class SetupAdvFollowRetargetPopup : SetupTriggerPopup {
	// virtual ~SetupAdvFollowRetargetPopup();

	static SetupAdvFollowRetargetPopup* create(AdvancedFollowEditObject*, cocos2d::CCArray*) = ios 0x6dad0;

	bool init(AdvancedFollowEditObject*, cocos2d::CCArray*) = ios 0x6dba8;

	virtual void updateDefaultTriggerValues() = ios 0x6e07c;
	virtual void valueDidChange(int, float) = ios 0x6e1dc;
}

[[link(android)]]
class SetupAnimationPopup : SetupTriggerPopup {
	// virtual ~SetupAnimationPopup();

	static SetupAnimationPopup* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x3bfd24;

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x3bfe08;
	void onAnimationIDArrow(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	TodoReturn updateAnimationID();
	TodoReturn updateAnimationTextInputLabel() = ios 0x3c0958;
	TodoReturn updateTargetID();
	TodoReturn updateTextInputLabel() = ios 0x3c08c8;

	virtual TodoReturn determineStartValues() = ios 0x3c09e8;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x3c0ca4;
	virtual void textChanged(CCTextInputNode*) = ios 0x3c0bc8;
}

[[link(android)]]
class SetupAnimSettingsPopup : SetupTriggerPopup {
	// virtual ~SetupAnimSettingsPopup();

	static SetupAnimSettingsPopup* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x2eea70;

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x2eeb48;
	TodoReturn updateAnimSettings();

	virtual void onClose(cocos2d::CCObject* sender) = ios 0x2ef20c;
}

[[link(android)]]
class SetupAreaAnimTriggerPopup : SetupAreaTintTriggerPopup {
	// virtual ~SetupAreaAnimTriggerPopup();

	static SetupAreaAnimTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*, int);

	TodoReturn createValueControlAdvancedAnim(int, gd::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float min, float max, int, int, GJInputStyle);
	bool init(EnterEffectObject*, cocos2d::CCArray*, int) = ios 0x424ac;
	void onDeactivateAnimValue(cocos2d::CCObject* sender);
	TodoReturn updateTargetIDLabel();

	virtual void updateDefaultTriggerValues() = ios 0x43e38;
	virtual void valueDidChange(int, float) = ios 0x43f9c;
}

[[link(android)]]
class SetupAreaFadeTriggerPopup : SetupAreaMoveTriggerPopup {
	// virtual ~SetupAreaFadeTriggerPopup();

	static SetupAreaFadeTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*) = ios 0x40b10;
}

[[link(android)]]
class SetupAreaMoveTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupAreaMoveTriggerPopup();
	// SetupAreaMoveTriggerPopup();

	static SetupAreaMoveTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*) = ios 0x3d894;

	TodoReturn addAreaDefaultControls(int) = ios 0x3e538;
	TodoReturn getModeValues(int, int&, bool&, bool&);
	bool init(EnterEffectObject*, cocos2d::CCArray*) = ios 0x3d974;
	void onMode(cocos2d::CCObject* sender);
	void onNextFreeEffectID(cocos2d::CCObject* sender);
	void onSpecialTarget(cocos2d::CCObject* sender);
	TodoReturn updateEnterTargetIDState();

	virtual void updateInputValue(int, float&) = ios 0x3fae4;
	virtual void updateDefaultTriggerValues() = ios 0x3f7a4;
	virtual TodoReturn updateInputNode(int, float) = ios 0x3fab0;
	virtual void valueDidChange(int, float) = ios 0x3f9a0;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = ios 0x3fa28;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = ios 0x3fa7c;
}

[[link(android)]]
class SetupAreaRotateTriggerPopup : SetupAreaMoveTriggerPopup {
	// virtual ~SetupAreaRotateTriggerPopup();

	static SetupAreaRotateTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*) = ios 0x40438;
}

[[link(android)]]
class SetupAreaTintTriggerPopup : SetupAreaMoveTriggerPopup, HSVWidgetDelegate {
	// virtual ~SetupAreaTintTriggerPopup();

	static SetupAreaTintTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*) = ios 0x4117c;
	void onHSV(cocos2d::CCObject* sender);
	TodoReturn updateHSVButton() = ios 0x41a64;

	virtual TodoReturn determineStartValues() = ios 0x41bfc;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x41d68;
	virtual void valueDidChange(int, float) = ios 0x41b34;
	virtual void hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue) = ios 0x41d3c;
}

[[link(android)]]
class SetupAreaTransformTriggerPopup : SetupAreaMoveTriggerPopup {
	// virtual ~SetupAreaTransformTriggerPopup();

	static SetupAreaTransformTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*) = ios 0x3fc38;
}

[[link(android)]]
class SetupAreaTriggerPopup : SetupAreaMoveTriggerPopup {
	// virtual ~SetupAreaTriggerPopup();

	static SetupAreaTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*) = ios 0x41e30;

	bool init(EnterEffectObject*, cocos2d::CCArray*) = ios 0x41f10;
}

[[link(android)]]
class SetupArtSwitchPopup : SetupTriggerPopup, SelectArtDelegate {
	// virtual ~SetupArtSwitchPopup();

	static SetupArtSwitchPopup* create(ArtTriggerGameObject*, cocos2d::CCArray*, int) = ios 0x40d418;

	bool init(ArtTriggerGameObject*, cocos2d::CCArray*, int) = ios 0x40d508;
	void onArt(cocos2d::CCObject* sender);

	virtual void selectArtClosed(SelectArtLayer*) = ios 0x40da04;
}

[[link(android)]]
class SetupAudioLineGuidePopup : SetupTriggerPopup, SelectSettingDelegate {
	// virtual ~SetupAudioLineGuidePopup();

	static SetupAudioLineGuidePopup* create(AudioLineGuideGameObject*, cocos2d::CCArray*) = ios 0x40c0d8;

	bool init(AudioLineGuideGameObject*, cocos2d::CCArray*) = ios 0x40c1bc;
	void onSpeed(cocos2d::CCObject* sender);

	virtual TodoReturn selectSettingClosed(SelectSettingLayer*) = ios 0x40c7b0;
}

[[link(android)]]
class SetupAudioTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupAudioTriggerPopup();

	TodoReturn addProxVolControls(int) = ios 0x18570c;
	TodoReturn addTimeControls(int, float) = ios 0x185404;
	void onProxMode(cocos2d::CCObject* sender);
	TodoReturn updateSpecialGroup();

	virtual void valueDidChange(int, float) = ios 0x1862cc;
}

[[link(android)]]
class SetupBGSpeedTrigger : SetupTriggerPopup {
	// virtual ~SetupBGSpeedTrigger();

	static SetupBGSpeedTrigger* create(EffectGameObject*, cocos2d::CCArray*, int) = ios 0x2fa20c;

	bool init(EffectGameObject*, cocos2d::CCArray*, int) = ios 0x2fa2ec;
}

[[link(android)]]
class SetupCameraEdgePopup : SetupTriggerPopup {
	// virtual ~SetupCameraEdgePopup();

	static SetupCameraEdgePopup* create(CameraTriggerGameObject*, cocos2d::CCArray*);

	bool init(CameraTriggerGameObject*, cocos2d::CCArray*);
	void onCameraEdge(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onUnlockEdge(cocos2d::CCObject* sender);
	TodoReturn updateTargetID();
	TodoReturn updateTextInputLabel();

	virtual TodoReturn determineStartValues() = ios 0x24360c;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x2437e8;
	virtual void textChanged(CCTextInputNode*) = ios 0x243768;
}

[[link(android)]]
class SetupCameraGuidePopup : SetupTriggerPopup {
	// virtual ~SetupCameraGuidePopup();

	static SetupCameraGuidePopup* create(CameraTriggerGameObject*, cocos2d::CCArray*) = ios 0x40c880;

	bool init(CameraTriggerGameObject*, cocos2d::CCArray*) = ios 0x40c95c;
}

[[link(android)]]
class SetupCameraModePopup : SetupTriggerPopup {
	// virtual ~SetupCameraModePopup();

	static SetupCameraModePopup* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x3a766c;

	bool init(EffectGameObject*, cocos2d::CCArray*);
	void onEditCameraSettings(cocos2d::CCObject* sender);
	void onUnboundMode(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateCameraEasing();
	TodoReturn updateCameraEasingLabel();
	TodoReturn updateCameraPadding();
	TodoReturn updateCameraPaddingLabel() = ios 0x3a80e8;
	TodoReturn updateItemVisibility();

	virtual TodoReturn determineStartValues() = ios 0x3a81d4;
	virtual void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupCameraOffsetTrigger : SetupTriggerPopup {
	// virtual ~SetupCameraOffsetTrigger();

	static SetupCameraOffsetTrigger* create(CameraTriggerGameObject*, cocos2d::CCArray*) = ios 0x27b7f0;

	bool init(CameraTriggerGameObject*, cocos2d::CCArray*) = ios 0x27b8cc;
	void onEasing(cocos2d::CCObject* sender);
	void onEasingRate(cocos2d::CCObject* sender);
	void onTargetMode(cocos2d::CCObject* sender);
	TodoReturn posFromSliderValue(float);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn sliderValueFromPos(int);
	TodoReturn sliderXChanged(cocos2d::CCObject*);
	TodoReturn sliderYChanged(cocos2d::CCObject*);
	TodoReturn toggleEasingRateVisibility();
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateEasingLabel();
	TodoReturn updateEasingRateLabel();
	TodoReturn updateMoveCommandEasing();
	TodoReturn updateMoveCommandEasingRate();
	TodoReturn updateMoveCommandPosX();
	TodoReturn updateMoveCommandPosY();
	TodoReturn updateValueXLabel();
	TodoReturn updateValueYLabel();

	virtual TodoReturn determineStartValues() = ios 0x197538;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x197de4;
	virtual void textChanged(CCTextInputNode*) = ios 0x197bb4;
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = ios 0x197884;
}

[[link(android)]]
class SetupCameraRotatePopup : SetupTriggerPopup {
	// virtual ~SetupCameraRotatePopup();

	static SetupCameraRotatePopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	void onEasing(cocos2d::CCObject* sender);
	void onEasingRate(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn sliderDegreesChanged(cocos2d::CCObject*);
	TodoReturn toggleEasingRateVisibility();
	TodoReturn updateCommandDegrees();
	TodoReturn updateDegreesLabel();
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateEasingLabel();
	TodoReturn updateEasingRateLabel();
	TodoReturn updateMoveCommandEasing();
	TodoReturn updateMoveCommandEasingRate();

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual void textChanged(CCTextInputNode*);
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float);
}

[[link(android)]]
class SetupCameraRotatePopup2 : SetupTriggerPopup {
	// virtual ~SetupCameraRotatePopup2();

	static SetupCameraRotatePopup2* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x55410;

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x554ec;
}

[[link(android)]]
class SetupCheckpointPopup : SetupTriggerPopup {
	// virtual ~SetupCheckpointPopup();

	static SetupCheckpointPopup* create(CheckpointGameObject*, cocos2d::CCArray*) = ios 0x4069b8;

	bool init(CheckpointGameObject*, cocos2d::CCArray*) = ios 0x406a90;
}

[[link(android)]]
class SetupCoinLayer : SetupTriggerPopup {
	// virtual ~SetupCoinLayer();

	static SetupCoinLayer* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x40b800;

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x40b8dc;
}

[[link(android)]]
class SetupCollisionStateTriggerPopup : SetupInstantCollisionTriggerPopup {
	// virtual ~SetupCollisionStateTriggerPopup();

	static SetupCollisionStateTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x239ee4;

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x239fc0;
}

[[link(android)]]
class SetupCollisionTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupCollisionTriggerPopup();

	static SetupCollisionTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x238014;
	void onActivateOnExit(cocos2d::CCObject* sender);
	void onEnableGroup(cocos2d::CCObject* sender);
	void onItemID2Arrow(cocos2d::CCObject* sender);
	void onItemIDArrow(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onTargetP1(cocos2d::CCObject* sender);
	void onTargetP2(cocos2d::CCObject* sender);
	void onTargetPP(cocos2d::CCObject* sender);
	TodoReturn updateItemID();
	TodoReturn updateItemID2();
	TodoReturn updateItemID2InputLabel() = ios 0x238ce4;
	TodoReturn updateItemIDInputLabel() = ios 0x238c1c;
	TodoReturn updateTargetID();
	TodoReturn updateTargetIDInputLabel() = ios 0x238d84;

	virtual TodoReturn determineStartValues() = ios 0x239114;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x23952c;
	virtual void textChanged(CCTextInputNode*) = ios 0x2393ec;
}

[[link(android)]]
class SetupCountTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupCountTriggerPopup();

	static SetupCountTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	void onEnableGroup(cocos2d::CCObject* sender);
	void onItemIDArrow(cocos2d::CCObject* sender);
	void onMultiActivate(cocos2d::CCObject* sender);
	void onTargetCountArrow(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	TodoReturn updateCountTextInputLabel();
	TodoReturn updateItemID();
	TodoReturn updateItemIDInputLabel();
	TodoReturn updateTargetCount();
	TodoReturn updateTargetID();
	TodoReturn updateTargetIDInputLabel();

	virtual TodoReturn determineStartValues() = ios 0xf6048;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0xf6420;
	virtual void textChanged(CCTextInputNode*) = ios 0xf62e0;
}

[[link(android)]]
class SetupDashRingPopup : SetupTriggerPopup {
	// virtual ~SetupDashRingPopup();

	static SetupDashRingPopup* create(DashRingObject*, cocos2d::CCArray*) = ios 0x40e4c0;

	bool init(DashRingObject*, cocos2d::CCArray*) = ios 0x40e59c;
}

[[link(android)]]
class SetupEndPopup : SetupTriggerPopup {
	// virtual ~SetupEndPopup();

	static SetupEndPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	void onLockY(cocos2d::CCObject* sender);
	void onMultiActivate(cocos2d::CCObject* sender);
	void onReversed(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	TodoReturn updateTargetID();
	TodoReturn updateTextInputLabel();

	virtual TodoReturn determineStartValues() = ios 0x2b5a80;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x2b5c78;
	virtual void textInputClosed(CCTextInputNode*) = ios 0x2b5bdc;
	virtual void textChanged(CCTextInputNode*) = ios 0x2b5bf8;
}

[[link(android)]]
class SetupEnterEffectPopup : SetupTriggerPopup, HSVWidgetDelegate {
	// virtual ~SetupEnterEffectPopup();

	static SetupEnterEffectPopup* create(EnterEffectObject*, cocos2d::CCArray*, int) = ios 0x3fbb04;

	bool init(EnterEffectObject*, cocos2d::CCArray*, int) = ios 0x3fbb90;
	void onEnterType(cocos2d::CCObject* sender);
	void onHSV(cocos2d::CCObject* sender);
	void onNextFreeEnterChannel(cocos2d::CCObject* sender);
	void onNextFreeEnterEffectID(cocos2d::CCObject* sender);
	TodoReturn updateHSVButton();

	virtual TodoReturn determineStartValues() = ios 0x3fda04;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x3fdc58;
	virtual void updateInputValue(int, float&) = ios 0x3fddb0;
	virtual TodoReturn updateInputNode(int, float) = ios 0x3fdd7c;
	virtual void valueDidChange(int, float) = ios 0x3fdb70;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = ios 0x3fdcf4;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = ios 0x3fdd48;
	virtual void hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue) = ios 0x3fdc2c;
}

[[link(android)]]
class SetupEnterTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupEnterTriggerPopup();

	static SetupEnterTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*) = ios 0x2daeb0;

	bool init(EnterEffectObject*, cocos2d::CCArray*) = ios 0x2daf94;
	void onEnterType(cocos2d::CCObject* sender);

	virtual TodoReturn determineStartValues() = ios 0x2db4a4;
}

[[link(android)]]
class SetupEventLinkPopup : SetupTriggerPopup {
	// virtual ~SetupEventLinkPopup();

	static SetupEventLinkPopup* create(EventLinkTrigger*, cocos2d::CCArray*);

	bool init(EventLinkTrigger*, cocos2d::CCArray*) = ios 0x403638;
	void onSelectEvent(cocos2d::CCObject* sender);
	TodoReturn updateEventIDs(gd::set<int>&);
}

[[link(android)]]
class SetupForceBlockPopup : SetupTriggerPopup {
	// virtual ~SetupForceBlockPopup();

	static SetupForceBlockPopup* create(ForceBlockGameObject*, cocos2d::CCArray*) = ios 0x40cd88;

	bool init(ForceBlockGameObject*, cocos2d::CCArray*) = ios 0x40ce60;

	virtual void valueDidChange(int, float) = ios 0x40d3c4;
}

[[link(android)]]
class SetupGameplayOffsetPopup : SetupTriggerPopup {
	// virtual ~SetupGameplayOffsetPopup();

	static SetupGameplayOffsetPopup* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x1a517c;

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x1a5254;
	void onDefaultValues(cocos2d::CCObject* sender);

	virtual void updateInputValue(int, float&) = ios 0x1a5968;
	virtual TodoReturn updateInputNode(int, float) = ios 0x1a5950;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = ios 0x1a5900;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = ios 0x1a5938;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = ios 0x1a587c;
}

[[link(android)]]
class SetupGradientPopup : SetupTriggerPopup {
	// virtual ~SetupGradientPopup();

	static SetupGradientPopup* create(GradientTriggerObject*, cocos2d::CCArray*) = ios 0x34649c;

	bool init(GradientTriggerObject*, cocos2d::CCArray*) = ios 0x346520;
	void onBlending(cocos2d::CCObject* sender);
	void onZLayer(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateBlending();
	TodoReturn updateBlendingLabel() = ios 0x3473a0;
	TodoReturn updateGradientLabels(bool);
	TodoReturn updateZLayerButtons();

	virtual TodoReturn determineStartValues() = ios 0x3475bc;
	virtual void onPlusButton(cocos2d::CCObject* sender) = ios 0x3476cc;
	virtual TodoReturn updateToggleItem(int, bool) = ios 0x347728;
	virtual void valueDidChange(int, float) = ios 0x3477e0;
}

[[link(android)]]
class SetupGravityModPopup : FLAlertLayer, TextInputDelegate {
	// virtual ~SetupGravityModPopup();

	static SetupGravityModPopup* create(EffectGameObject*, cocos2d::CCArray*, bool);

	TodoReturn determineStartValues();
	bool init(EffectGameObject*, cocos2d::CCArray*, bool);
	void onClose(cocos2d::CCObject* sender);
	void onItemIDArrow(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateItemID();
	TodoReturn updateTextInputLabel();
	TodoReturn updateValue();
	TodoReturn updateValueLabel();

	virtual void keyBackClicked();
	virtual void show();
	virtual void textInputClosed(CCTextInputNode*);
	virtual void textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupGravityTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupGravityTriggerPopup();

	static SetupGravityTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x2d2e68;

	bool init(EffectGameObject*, cocos2d::CCArray*);

	virtual void valueDidChange(int, float) = ios 0x41e6e8;
}

[[link(android)]]
class SetupInstantCollisionTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupInstantCollisionTriggerPopup();

	static SetupInstantCollisionTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x23959c;

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x239674;
	TodoReturn updateSpecialNodes();

	virtual void updateDefaultTriggerValues() = ios 0x239ec0;
	virtual void valueDidChange(int, float) = ios 0x239bd8;
}

[[link(android)]]
class SetupInstantCountPopup : SetupTriggerPopup {
	// virtual ~SetupInstantCountPopup();

	static SetupInstantCountPopup* create(CountTriggerGameObject*, cocos2d::CCArray*);

	bool init(CountTriggerGameObject*, cocos2d::CCArray*) = ios 0x1c0fac;
	void onCountType(cocos2d::CCObject* sender);
	void onEnableGroup(cocos2d::CCObject* sender);
	void onTargetCountArrow(cocos2d::CCObject* sender);
	void onTargetID2Arrow(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	TodoReturn updateCountTextInputLabel() = ios 0x1c1ccc;
	TodoReturn updateItemID();
	TodoReturn updateItemIDInputLabel() = ios 0x1c1bac;
	TodoReturn updateTargetCount();
	TodoReturn updateTargetID();
	TodoReturn updateTargetIDInputLabel() = ios 0x1c1c3c;

	virtual TodoReturn determineStartValues() = ios 0x1c1e8c;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x1c2274;
	virtual void textChanged(CCTextInputNode*) = ios 0x1c2134;
}

[[link(android)]]
class SetupInteractObjectPopup : SetupTriggerPopup {
	// virtual ~SetupInteractObjectPopup();

	static SetupInteractObjectPopup* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x40f528;

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x40f600;
	TodoReturn updateItems();

	virtual void onClose(cocos2d::CCObject* sender) = ios 0x40fd90;
	virtual void onPlusButton(cocos2d::CCObject* sender) = ios 0x40fd34;
	virtual void valueDidChange(int, float) = ios 0x40fd6c;
}

[[link(android)]]
class SetupItemCompareTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupItemCompareTriggerPopup();

	static SetupItemCompareTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);

	bool init(ItemTriggerGameObject*, cocos2d::CCArray*) = ios 0x409dcc;
	void onOpButton(cocos2d::CCObject* sender);
	TodoReturn updateFormulaLabel() = ios 0x40af38;
	TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int) = ios 0x40ae1c;

	virtual void valueDidChange(int, float) = ios 0x40b7cc;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = ios 0x40b684;
}

[[link(android)]]
class SetupItemEditTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupItemEditTriggerPopup();

	static SetupItemEditTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);

	bool init(ItemTriggerGameObject*, cocos2d::CCArray*) = ios 0x407ff8;
	void onOpButton(cocos2d::CCObject* sender);
	TodoReturn updateFormulaLabel() = ios 0x4090b0;
	TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int);

	virtual void valueDidChange(int, float) = ios 0x409cb8;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = ios 0x409af8;
}

[[link(android)]]
class SetupKeyframeAnimPopup : SetupTriggerPopup {
	// virtual ~SetupKeyframeAnimPopup();

	static SetupKeyframeAnimPopup* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x1b8fb8;

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x1b9090;
}

[[link(android)]]
class SetupKeyframePopup : SetupTriggerPopup {
	// virtual ~SetupKeyframePopup();

	static SetupKeyframePopup* create(KeyframeGameObject*, cocos2d::CCArray*, LevelEditorLayer*) = ios 0x1b98d0;

	bool init(KeyframeGameObject*, cocos2d::CCArray*, LevelEditorLayer*) = ios 0x1b99bc;
	void onTimeMode(cocos2d::CCObject* sender);
	TodoReturn refreshPreviewArt();
	TodoReturn updateTimeModeButtons();

	virtual void onClose(cocos2d::CCObject* sender) = ios 0x1baf94;
	virtual void onCustomButton(cocos2d::CCObject* sender) = ios 0x1bac9c;
	virtual void valueDidChange(int, float) = ios 0x1baa6c;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = ios 0x1babf8;
}

[[link(android)]]
class SetupMGTrigger : SetupTriggerPopup {
	// virtual ~SetupMGTrigger();

	static SetupMGTrigger* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x2f8698;

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x2f8774;
	void onEasing(cocos2d::CCObject* sender);
	void onEasingRate(cocos2d::CCObject* sender);
	TodoReturn posFromSliderValue(float);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn sliderValueFromPos(int);
	TodoReturn sliderYChanged(cocos2d::CCObject*);
	TodoReturn toggleEasingRateVisibility();
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateEasingLabel() = ios 0x2f9a2c;
	TodoReturn updateEasingRateLabel();
	TodoReturn updateMoveCommandEasing();
	TodoReturn updateMoveCommandEasingRate();
	TodoReturn updateMoveCommandPosY();
	TodoReturn updateValueYLabel() = ios 0x2f9974;

	virtual TodoReturn determineStartValues() = ios 0x2f9b08;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x2fa17c;
	virtual void textChanged(CCTextInputNode*) = ios 0x2f9fb4;
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = ios 0x2f9d4c;
}

[[link(android)]]
class SetupMoveCommandPopup : SetupTriggerPopup {
	// virtual ~SetupMoveCommandPopup();

	static SetupMoveCommandPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn updateControlVisibility();

	virtual void updateInputValue(int, float&) = ios 0x27cb38;
	virtual TodoReturn updateInputNode(int, float) = ios 0x27cb0c;
	virtual void valueDidChange(int, float) = ios 0x27cb6c;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = ios 0x27ca54;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = ios 0x27ca98;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = ios 0x27cd2c;
}

[[link(android)]]
class SetupObjectControlPopup : SetupTriggerPopup {
	// virtual ~SetupObjectControlPopup();

	static SetupObjectControlPopup* create(ObjectControlGameObject*, cocos2d::CCArray*) = ios 0x40e198;

	bool init(ObjectControlGameObject*, cocos2d::CCArray*) = ios 0x40e274;
}

[[link(android)]]
class SetupObjectOptions2Popup : SetupTriggerPopup {
	// virtual ~SetupObjectOptions2Popup();

	static SetupObjectOptions2Popup* create(GameObject*, cocos2d::CCArray*) = ios 0x47cb0;

	bool init(GameObject*, cocos2d::CCArray*) = ios 0x4a8c4;

	virtual void onPlusButton(cocos2d::CCObject* sender) = ios 0x4acb0;
}

[[link(android)]]
class SetupObjectOptionsPopup : FLAlertLayer, TextInputDelegate {
	// virtual ~SetupObjectOptionsPopup();

	static SetupObjectOptionsPopup* create(GameObject*, cocos2d::CCArray*, SetGroupIDLayer*) = ios 0x47bbc;

	bool init(GameObject*, cocos2d::CCArray*, SetGroupIDLayer*) = ios 0x483e4;
	void onAlwaysHide(cocos2d::CCObject* sender);
	void onApplyScaleStick(cocos2d::CCObject* sender);
	void onCenterEffect(cocos2d::CCObject* sender);
	void onDisableGlow(cocos2d::CCObject* sender);
	void onDisableObject(cocos2d::CCObject* sender);
	void onDontBoost(cocos2d::CCObject* sender);
	void onDontBoostX(cocos2d::CCObject* sender);
	void onDontEnter(cocos2d::CCObject* sender);
	void onDontFade(cocos2d::CCObject* sender);
	void onExtendedCollision(cocos2d::CCObject* sender);
	void onExtraSticky(cocos2d::CCObject* sender);
	void onGripSlope(cocos2d::CCObject* sender);
	void onHideEffects(cocos2d::CCObject* sender);
	void onHighDetail(cocos2d::CCObject* sender);
	void onIceBlock(cocos2d::CCObject* sender);
	void onNoAudioScale(cocos2d::CCObject* sender);
	void onNonStickX(cocos2d::CCObject* sender);
	void onNonStickY(cocos2d::CCObject* sender);
	void onNoParticle(cocos2d::CCObject* sender);
	void onPassable(cocos2d::CCObject* sender);
	void onReverse(cocos2d::CCObject* sender);
	void onSinglePlayerTouch(cocos2d::CCObject* sender);
	void onToggleAreaParent(cocos2d::CCObject* sender);
	void onToggleGroupParent(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = ios 0x4a7e0;
	virtual void show() = ios 0x4a804;
	virtual TodoReturn determineStartValues() = ios 0x4a5fc;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x4a850;
}

[[link(android)]]
class SetupObjectTogglePopup : SetupTriggerPopup {
	// virtual ~SetupObjectTogglePopup();

	static SetupObjectTogglePopup* create(EffectGameObject*, cocos2d::CCArray*, bool);

	bool init(EffectGameObject*, cocos2d::CCArray*, bool);

	virtual void onClose(cocos2d::CCObject* sender) = ios 0x1a9674;
	virtual void valueDidChange(int, float) = ios 0x1a9604;
}

[[link(android)]]
class SetupOpacityPopup : SetupTriggerPopup {
	// virtual ~SetupOpacityPopup();

	static SetupOpacityPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	void updateOpacity();
	void updateOpacityLabel();
	TodoReturn updateTargetID();
	TodoReturn updateTextInputLabel();

	virtual TodoReturn determineStartValues() = ios 0x2d748;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x2db5c;
	virtual void textInputClosed(CCTextInputNode*) = ios 0x2d9d8;
	virtual void textChanged(CCTextInputNode*) = ios 0x2d9f4;
}

[[link(android)]]
class SetupOptionsTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupOptionsTriggerPopup();

	static SetupOptionsTriggerPopup* create(GameOptionsTrigger*, cocos2d::CCArray*) = ios 0x4101c4;

	TodoReturn addOption(int, gd::string) = ios 0x41087c;
	bool init(GameOptionsTrigger*, cocos2d::CCArray*);

	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = ios 0x410aa8;
}

[[link(android)]]
class SetupPersistentItemTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupPersistentItemTriggerPopup();

	static SetupPersistentItemTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*) = ios 0x40bbb8;

	bool init(ItemTriggerGameObject*, cocos2d::CCArray*) = ios 0x40bc94;
}

[[link(android)]]
class SetupPickupTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupPickupTriggerPopup();

	static SetupPickupTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x4c030;

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x4c108;
	TodoReturn updateState();

	virtual void onPlusButton(cocos2d::CCObject* sender) = ios 0x4c6e0;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = ios 0x4c718;
}

[[link(android)]]
class SetupPlatformerEndPopup : SetupTriggerPopup {
	// virtual ~SetupPlatformerEndPopup();

	static SetupPlatformerEndPopup* create(EndTriggerGameObject*, cocos2d::CCArray*) = ios 0x2b5cf0;

	bool init(EndTriggerGameObject*, cocos2d::CCArray*) = ios 0x2b5dc8;
}

[[link(android)]]
class SetupPlayerControlPopup : SetupTriggerPopup {
	// virtual ~SetupPlayerControlPopup();

	static SetupPlayerControlPopup* create(PlayerControlGameObject*, cocos2d::CCArray*) = ios 0x405ab0;

	bool init(PlayerControlGameObject*, cocos2d::CCArray*) = ios 0x405b88;
}

[[link(android)]]
class SetupPortalPopup : FLAlertLayer, TextInputDelegate {
	// virtual ~SetupPortalPopup();

	static SetupPortalPopup* create(EffectGameObject*, cocos2d::CCArray*);

	TodoReturn determineStartValues();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	void onEditCameraSettings(cocos2d::CCObject* sender);
	void onUnboundMode(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateCameraEasing();
	TodoReturn updateCameraEasingLabel() = ios 0x3a809c;
	TodoReturn updateCameraPadding();
	TodoReturn updateCameraPaddingLabel();
	TodoReturn updateItemVisibility();

	virtual void keyBackClicked();
}

[[link(android)]]
class SetupPulsePopup : SetupTriggerPopup, cocos2d::extension::ColorPickerDelegate, GJSpecialColorSelectDelegate {
	// virtual ~SetupPulsePopup();

	static SetupPulsePopup* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x3b0220;

	TodoReturn getColorValue();
	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x3b02a4;
	void onCopy(cocos2d::CCObject* sender);
	void onExclusive(cocos2d::CCObject* sender);
	void onGroupMainOnly(cocos2d::CCObject* sender);
	void onGroupSecondaryOnly(cocos2d::CCObject* sender);
	void onHSVLegacyMode(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onSelectPulseMode(cocos2d::CCObject* sender);
	void onSelectSpecialColor(cocos2d::CCObject* sender);
	void onSelectSpecialTargetID(cocos2d::CCObject* sender);
	void onSelectTargetMode(cocos2d::CCObject* sender);
	void onUpdateCopyColor(cocos2d::CCObject* sender);
	void onUpdateCustomColor(cocos2d::CCObject* sender);
	TodoReturn selectColor(cocos2d::ccColor3B);
	TodoReturn sliderChanged(cocos2d::CCObject*) = ios 0x3b2ce8;
	TodoReturn updateColorLabels();
	TodoReturn updateColorValue();
	TodoReturn updateCopyColor();
	TodoReturn updateCopyColorTextInputLabel();
	TodoReturn updateFadeInLabel(bool);
	TodoReturn updateFadeInTime();
	TodoReturn updateFadeOutLabel(bool);
	TodoReturn updateFadeOutTime();
	TodoReturn updateGroupMainOnly();
	TodoReturn updateGroupSecondaryOnly();
	TodoReturn updateHoldLabel(bool);
	TodoReturn updateHoldTime();
	TodoReturn updateHSVValue();
	TodoReturn updatePulseMode();
	TodoReturn updatePulseTargetType();
	TodoReturn updateTargetID();
	TodoReturn updateTextInputLabel();

	virtual void show() = ios 0x3b4730;
	virtual TodoReturn determineStartValues() = ios 0x3b3ad8;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x3b4328;
	virtual void textChanged(CCTextInputNode*) = ios 0x3b478c;
	virtual void colorValueChanged(cocos2d::ccColor3B) = ios 0x3b4448;
	virtual void textInputOpened(CCTextInputNode*) {}
	virtual void colorSelectClosed(GJSpecialColorSelect*, int) = ios 0x3b3f2c;
}

[[link(android)]]
class SetupRandAdvTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupRandAdvTriggerPopup();

	static SetupRandAdvTriggerPopup* create(RandTriggerGameObject*, cocos2d::CCArray*) = ios 0x37c3c;

	void addChance(int, int);
	void addChanceToObject(RandTriggerGameObject*, int, int);
	void callRemoveFromGroup(float);
	bool init(RandTriggerGameObject*, cocos2d::CCArray*);
	void onAddChance(cocos2d::CCObject* sender);
	void onRemoveFromGroup(cocos2d::CCObject* sender);
	void removeGroupID(int);
	void removeGroupIDFromObject(RandTriggerGameObject*, int);
	void updateGroupIDButtons();

	virtual void onClose(cocos2d::CCObject* sender) = ios 0x38cc4;
	virtual void textChanged(CCTextInputNode*) {}
}

[[link(android)]]
class SetupRandTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupRandTriggerPopup();

	static SetupRandTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	void onTargetID2Arrow(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateChance() = ios 0x1ce8ac;
	TodoReturn updateChanceLabel(bool);
	TodoReturn updateTargetID();
	TodoReturn updateTargetID2();
	TodoReturn updateTextInputLabel();
	TodoReturn updateTextInputLabel2();

	virtual TodoReturn determineStartValues() = ios 0x1ce7a4;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x1ceba8;
	virtual void textChanged(CCTextInputNode*) = ios 0x1cea24;
}

[[link(android)]]
class SetupResetTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupResetTriggerPopup();

	static SetupResetTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x407d10;
}

[[link(android)]]
class SetupReverbPopup : SetupTriggerPopup {
	// virtual ~SetupReverbPopup();

	static SetupReverbPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*) = ios 0x186390;

	bool init(SFXTriggerGameObject*, cocos2d::CCArray*) = ios 0x186468;
	void onPlay(cocos2d::CCObject* sender);
	void onReverb(cocos2d::CCObject* sender);
	TodoReturn updateReverbLabel() = ios 0x186a0c;

	virtual void onClose(cocos2d::CCObject* sender) = ios 0x186b18;
}

[[link(android)]]
class SetupRotateCommandPopup : SetupTriggerPopup {
	// virtual ~SetupRotateCommandPopup();

	static SetupRotateCommandPopup* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x40244c;

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x402524;
	void onInfiniteDuration(cocos2d::CCObject* sender);
	TodoReturn updateControlVisibility();

	virtual TodoReturn updateInputNode(int, float);
	virtual void valueDidChange(int, float) = ios 0x4033a0;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = ios 0x403374;
	virtual TodoReturn triggerSliderValueFromValue(int, float);
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = ios 0x4034b4;
}

[[link(android)]]
class SetupRotateGameplayPopup : SetupTriggerPopup {
	// virtual ~SetupRotateGameplayPopup();

	static SetupRotateGameplayPopup* create(RotateGameplayGameObject*, cocos2d::CCArray*) = ios 0x1a483c;

	bool init(RotateGameplayGameObject*, cocos2d::CCArray*) = ios 0x1a4914;

	virtual void onPlusButton(cocos2d::CCObject* sender) = ios 0x1a50e8;
	virtual void valueDidChange(int, float) = ios 0x1a5120;
}

[[link(android)]]
class SetupRotatePopup : SetupTriggerPopup {
	// virtual ~SetupRotatePopup();

	static SetupRotatePopup* create(EnhancedGameObject*, cocos2d::CCArray*) = ios 0x26fd9c;

	bool init(EnhancedGameObject*, cocos2d::CCArray*) = ios 0x26fe74;

	virtual void onClose(cocos2d::CCObject* sender) = ios 0x2702a8;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = ios 0x270328;
}

[[link(android)]]
class SetupSequenceTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupSequenceTriggerPopup();

	static SetupSequenceTriggerPopup* create(SequenceTriggerGameObject*) = ios 0x1d5190;

	bool init(SequenceTriggerGameObject*) = ios 0x1d5204;
	void onAddChance(cocos2d::CCObject* sender);
	void onChangeOrder(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);
	void updateGroupIDButtons();

	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = ios 0x1d62c4;
}

[[link(android)]]
class SetupSFXEditPopup : SetupAudioTriggerPopup {
	// virtual ~SetupSFXEditPopup();

	static SetupSFXEditPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*, bool);

	bool init(SFXTriggerGameObject*, cocos2d::CCArray*, bool);
}

[[link(android)]]
class SetupSFXPopup : SetupAudioTriggerPopup, CustomSFXDelegate, SFXBrowserDelegate {
	// virtual ~SetupSFXPopup();

	static SetupSFXPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*);

	TodoReturn createSFXWidget() = ios 0x187814;
	bool init(SFXTriggerGameObject*, cocos2d::CCArray*) = ios 0x186c04;
	void onBrowseSFX(cocos2d::CCObject* sender);
	TodoReturn updateLength();

	virtual void pageChanged() = ios 0x187a30;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x187a84;
	virtual void onPlusButton(cocos2d::CCObject* sender) = ios 0x187e0c;
	virtual void valueDidChange(int, float) = ios 0x187d24;
	virtual void sfxObjectSelected(SFXInfoObject*) {}
	virtual TodoReturn getActiveSFXID() = ios 0x187cb0;
	virtual TodoReturn overridePlaySFX(SFXInfoObject*) = ios 0x187cc0;
	virtual TodoReturn sfxBrowserClosed(SFXBrowser*) = ios 0x187eb4;
}

[[link(android)]]
class SetupShaderEffectPopup : SetupTriggerPopup {
	// virtual ~SetupShaderEffectPopup();

	static SetupShaderEffectPopup* create(EffectGameObject*, cocos2d::CCArray*, int);

	bool init(EffectGameObject*, cocos2d::CCArray*, int) = ios 0x188bb4;
	void onResetColors(cocos2d::CCObject* sender);
	void onZLayer(cocos2d::CCObject* sender);
	TodoReturn setupBulge();
	TodoReturn setupChromatic();
	TodoReturn setupChromaticGlitch();
	TodoReturn setupColorChange();
	TodoReturn setupGlitch();
	TodoReturn setupGrayscale();
	TodoReturn setupHueShift();
	TodoReturn setupInvertColor();
	TodoReturn setupLensCircle();
	TodoReturn setupMotionBlur();
	TodoReturn setupPinch();
	TodoReturn setupPixelate();
	TodoReturn setupRadialBlur();
	TodoReturn setupSepia();
	TodoReturn setupShaderTrigger() = ios 0x1902dc;
	TodoReturn setupShockLine();
	TodoReturn setupShockWave();
	TodoReturn setupSplitScreen();
	TodoReturn updateZLayerButtons();
	TodoReturn zLayerToString(int) = ios 0x19099c;

	virtual TodoReturn toggleGroup(int, bool) = ios 0x190e58;
	virtual void onClose(cocos2d::CCObject* sender);
	virtual void updateDefaultTriggerValues() = ios 0x19083c;
	virtual void valueDidChange(int, float) = ios 0x190bc0;
}

[[link(android)]]
class SetupShakePopup : SetupTriggerPopup {
	// virtual ~SetupShakePopup();

	static SetupShakePopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x3a640c;
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateInterval();
	TodoReturn updateIntervalLabel(bool);
	TodoReturn updateShake();
	TodoReturn updateShakeLabel(bool);

	virtual TodoReturn determineStartValues() = ios 0x3a6f9c;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x3a74d0;
	virtual void textChanged(CCTextInputNode*) = ios 0x3a728c;
}

[[link(android)]]
class SetupSmartBlockLayer : FLAlertLayer, TextInputDelegate, SelectArtDelegate {
	// virtual ~SetupSmartBlockLayer();

	static SetupSmartBlockLayer* create(SmartGameObject*, cocos2d::CCArray*) = ios 0x78b5c;

	TodoReturn determineStartValues();
	bool init(SmartGameObject*, cocos2d::CCArray*) = ios 0x78c4c;
	void onAllowFlipping(cocos2d::CCObject* sender);
	void onAllowRotation(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onCreate(cocos2d::CCObject* sender);
	void onCreateAll(cocos2d::CCObject* sender);
	void onCreateTemplate(cocos2d::CCObject* sender);
	void onDontDelete(cocos2d::CCObject* sender) = ios 0x79f0c;
	void onIgnoreCorners(cocos2d::CCObject* sender);
	void onNearbyReference(cocos2d::CCObject* sender) = ios 0x79ed4;
	void onPasteTemplate(cocos2d::CCObject* sender) = ios 0x79a58;
	void onReferenceOnly(cocos2d::CCObject* sender);
	void onSelectPremade(cocos2d::CCObject* sender);
	void onSelectTemplate(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = ios 0x79fa8;
	virtual void show() = ios 0x79f44;
	virtual void selectArtClosed(SelectArtLayer*) = ios 0x79f90;
}

[[link(android)]]
class SetupSmartTemplateLayer : FLAlertLayer, TextInputDelegate, FLAlertLayerProtocol {
	// virtual ~SetupSmartTemplateLayer();

	static SetupSmartTemplateLayer* create(GJSmartTemplate*) = ios 0x7a068;

	bool init(GJSmartTemplate*) = ios 0x7a134;
	void onBack(cocos2d::CCObject* sender);
	void onClick(cocos2d::CCObject* sender) = ios 0x7a924;
	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = ios 0x7aeb8;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x7abc4;
	virtual void textInputOpened(CCTextInputNode*) = ios 0x7ad2c;
	virtual void textInputClosed(CCTextInputNode*) = ios 0x7ac28;
	virtual void textChanged(CCTextInputNode*) = ios 0x7ae98;
}

[[link(android)]]
class SetupSongTriggerPopup : SetupAudioTriggerPopup, MusicDownloadDelegate, SongPlaybackDelegate {
	// virtual ~SetupSongTriggerPopup();

	static SetupSongTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x1c683c;

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x1c68c0;
	void onResetSongTime(cocos2d::CCObject* sender);
	void onSavePlaybackPos(cocos2d::CCObject* sender);
	TodoReturn updateApplyPrepare(bool);
	TodoReturn updateLength() = ios 0x1c7130;
	TodoReturn updateSongTimeSlider() = ios 0x1c7298;

	virtual void pageChanged() = ios 0x1c7644;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x1c76d8;
	virtual void valueDidChange(int, float) = ios 0x1c75b4;
	virtual TodoReturn onPlayback(SongInfoObject*) = ios 0x1c73b8;
}

[[link(android)]]
class SetupSpawnParticlePopup : SetupTriggerPopup {
	// virtual ~SetupSpawnParticlePopup();

	static SetupSpawnParticlePopup* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x40602c;

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x406108;
}

[[link(android)]]
class SetupSpawnPopup : SetupTriggerPopup {
	// virtual ~SetupSpawnPopup();

	static SetupSpawnPopup* create(EffectGameObject*, cocos2d::CCArray*) = ios 0xf8e90;

	bool init(EffectGameObject*, cocos2d::CCArray*);
	void onAddRemap(cocos2d::CCObject* sender);
	void onDeleteRemap(cocos2d::CCObject* sender);
	void onSelectRemap(cocos2d::CCObject* sender);
	TodoReturn queueUpdateButtons();
	TodoReturn updateRemapButtons(float);

	virtual void onClose(cocos2d::CCObject* sender) = ios 0xfa0b4;
}

[[link(android)]]
class SetupStaticCameraPopup : SetupTriggerPopup {
	// virtual ~SetupStaticCameraPopup();

	static SetupStaticCameraPopup* create(CameraTriggerGameObject*, cocos2d::CCArray*) = ios 0x1d46a0;

	bool init(CameraTriggerGameObject*, cocos2d::CCArray*) = ios 0x1d4778;
	TodoReturn updateState();

	virtual void valueDidChange(int, float) = ios 0x1d4f9c;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = ios 0x1d4fb4;
}

[[link(android)]]
class SetupStopTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupStopTriggerPopup();

	static SetupStopTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x40dac0;

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x40db98;

	virtual void onClose(cocos2d::CCObject* sender) = ios 0x40e11c;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = ios 0x40e0a4;
}

[[link(android)]]
class SetupTeleportPopup : SetupTriggerPopup {
	// virtual ~SetupTeleportPopup();

	static SetupTeleportPopup* create(TeleportPortalObject*, cocos2d::CCArray*, int, bool);

	bool init(TeleportPortalObject*, cocos2d::CCArray*, int, bool);
	void onTeleportGravity(cocos2d::CCObject* sender);
	TodoReturn updateTeleportGravityState(int);

	virtual TodoReturn determineStartValues() = ios 0xfa2c;
	virtual void updateDefaultTriggerValues() = ios 0xfa30;
	virtual void valueDidChange(int, float) = ios 0xfaec;
}

[[link(android)]]
class SetupTimerControlTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupTimerControlTriggerPopup();

	static SetupTimerControlTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);

	bool init(TimerTriggerGameObject*, cocos2d::CCArray*) = ios 0x3769c;

	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = ios 0x379fc;
}

[[link(android)]]
class SetupTimerEventTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupTimerEventTriggerPopup();

	static SetupTimerEventTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);

	bool init(TimerTriggerGameObject*, cocos2d::CCArray*);
}

[[link(android)]]
class SetupTimerTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupTimerTriggerPopup();

	static SetupTimerTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*) = ios 0x36964;

	bool init(TimerTriggerGameObject*, cocos2d::CCArray*);
}

[[link(android)]]
class SetupTimeWarpPopup : SetupTriggerPopup {
	// virtual ~SetupTimeWarpPopup();

	static SetupTimeWarpPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateTimeWarp();
	TodoReturn updateTimeWarpLabel() = ios 0x1504fc;

	virtual TodoReturn determineStartValues() = ios 0x15054c;
	virtual void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupTouchTogglePopup : SetupTriggerPopup {
	// virtual ~SetupTouchTogglePopup();

	static SetupTouchTogglePopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x252aec;
	void onControlMode(cocos2d::CCObject* sender);
	void onDualTouchMode(cocos2d::CCObject* sender);
	void onHoldMode(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onTouchMode(cocos2d::CCObject* sender);
	TodoReturn updateTargetID();
	TodoReturn updateTextInputLabel() = ios 0x253594;

	virtual TodoReturn determineStartValues() = ios 0x253870;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x253ab4;
	virtual void textChanged(CCTextInputNode*) = ios 0x253a18;
}

[[link(android)]]
class SetupTransformPopup : SetupTriggerPopup {
	// virtual ~SetupTransformPopup();

	static SetupTransformPopup* create(TransformTriggerGameObject*, cocos2d::CCArray*) = ios 0x23a364;

	bool init(TransformTriggerGameObject*, cocos2d::CCArray*) = ios 0x23a440;
}

[[link(android)]]
class SetupTriggerPopup : FLAlertLayer, TextInputDelegate, ConfigureValuePopupDelegate, SliderDelegate {
	// virtual ~SetupTriggerPopup();
	// SetupTriggerPopup();

	static SetupTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*, float, float, int);
	static SetupTriggerPopup* create(float, float);

	void addCloseButton(gd::string) = ios 0x133e0c;
	void addHelpButton(gd::string, gd::string, float) = ios 0x133e88;
	void addInfoLabel(gd::string, float, cocos2d::CCPoint, int, int);
	void addObjectsToGroup(cocos2d::CCArray*, int) = ios 0x133d1c;
	void addObjectsToPage(cocos2d::CCArray*, int);
	void addObjectToGroup(cocos2d::CCObject*, int) = ios 0x133cf4;
	void addObjectToPage(cocos2d::CCObject*, int) = ios 0x133c78;
	void addTitle(gd::string) = ios 0x133d44;
	void closeInputNodes();
	void createCustomButton(int, gd::string, gd::string, cocos2d::CCPoint, float, float, bool, int, int) = ios 0x1371d8;
	void createCustomEasingControls(gd::string, cocos2d::CCPoint, float, int, int, int, int) = ios 0x139040;
	void createCustomToggleValueControl(int, bool, bool, gd::string, cocos2d::CCPoint, bool, int, int) = ios 0x136dc4;
	void createEasingControls(cocos2d::CCPoint, float, int, int) = ios 0x138478;
	void createMultiTriggerItems(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint) = ios 0x1341b0;
	void createMultiTriggerItemsCorner() = ios 0x13443c;
	void createMultiTriggerItemsDefault() = ios 0x1340d0;
	void createMultiTriggerItemsDefaultHorizontal() = ios 0x1345dc;
	void createMultiTriggerItemsDefaultVertical() = ios 0x13450c;
	void createPageButtons(float, int) = ios 0x1334c8;
	void createPlusButton(int, cocos2d::CCPoint, float, gd::string, int, int) = ios 0x137084;
	void createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCPoint) = ios 0x133fcc;
	void createToggleValueControl(int, gd::string, cocos2d::CCPoint, bool, int, int, float) = ios 0x136a78;
	void createToggleValueControlAdvanced(int, gd::string, cocos2d::CCPoint, bool, int, int, float, float, float, cocos2d::CCPoint) = ios 0x136b9c;
	void createValueControl(int, gd::string, cocos2d::CCPoint, float, float, float);
	void createValueControlAdvanced(int, gd::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float, float, int, int, GJInputStyle, int, bool) = ios 0x135e04;
	void createValueControlWArrows(int, gd::string, cocos2d::CCPoint, float);
	cocos2d::CCArray* getGroupContainer(int) = ios 0x133b34;
	float getMaxSliderValue(int);
	float getMinSliderValue(int);
	cocos2d::CCArray* getObjects();
	cocos2d::CCArray* getPageContainer(int) = ios 0x1339f0;
	float getTriggerValue(int, GameObject*);
	float getTruncatedValue(float, int);
	float getTruncatedValueByTag(int, float);
	void goToPage(int, bool) = ios 0x133848;
	void hideAll();
	bool init(EffectGameObject*, cocos2d::CCArray*, float, float, int) = ios 0x1331e8;
	void onCustomEaseArrow(int, bool);
	void onCustomEaseArrowDown(cocos2d::CCObject* sender);
	void onCustomEaseArrowUp(cocos2d::CCObject* sender);
	void onCustomEaseRate(cocos2d::CCObject* sender);
	void onDisableValue(cocos2d::CCObject* sender);
	void onEase(cocos2d::CCObject* sender);
	void onEaseRate(cocos2d::CCObject* sender);
	void onMultiTrigger(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	void onSpawnedByTrigger(cocos2d::CCObject* sender);
	void onToggleTriggerValue(cocos2d::CCObject* sender) = ios 0x136d34;
	void onTouchTriggered(cocos2d::CCObject* sender);
	void postSetup() = ios 0x137474;
	void preSetup() = ios 0x137460;
	void refreshGroupVisibility();
	void removeObjectFromGroup(cocos2d::CCObject*, int);
	void removeObjectFromPage(cocos2d::CCObject*, int);
	void resetDisabledValues();
	void setMaxSliderValue(float, int);
	void setMinSliderValue(float, int);
	bool shouldLimitValue(int);
	void toggleBG(bool) = ios 0x13347c;
	void toggleCustomEaseRateVisibility(int, int);
	void toggleDisableButtons(bool);
	void toggleEaseRateVisibility();
	void toggleLimitValue(int, bool) = ios 0x138320;
	void togglePageArrows(bool);
	void triggerArrowChanged(int, bool);
	void triggerArrowLeft(cocos2d::CCObject*);
	void triggerArrowRight(cocos2d::CCObject*);
	void triggerSliderChanged(cocos2d::CCObject*);
	void updateCustomEaseLabel(int, int);
	void updateCustomEaseRateLabel(int, float);
	void updateCustomToggleTrigger(int, bool);
	void updateEaseLabel();
	void updateEaseRateLabel();
	void updateEditorLabel();
	void updateInputNodeLabel(int, gd::string);
	void updateLabel(int, gd::string);
	void updateMultiTriggerBtn();
	void updateSlider(int, float);
	void updateSlider(int);
	void updateSpawnedByTrigger();
	void updateTouchTriggered();
	void updateValue(int, float) = ios 0x1368a8;
	void updateValueControls(int, float);
	void valueChanged(int, float) = ios 0x134bdc;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void keyBackClicked() = ios 0x135818;
	virtual void show() = ios 0x13573c;
	virtual void pageChanged() {}
	virtual TodoReturn toggleGroup(int, bool) = ios 0x133b90;
	virtual TodoReturn determineStartValues() = ios 0x13487c;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x135788;
	virtual void textInputClosed(CCTextInputNode*) = ios 0x134a88;
	virtual void textChanged(CCTextInputNode*) = ios 0x134aa4;
	virtual void textInputShouldOffset(CCTextInputNode*, float) = ios 0x13583c;
	virtual void textInputReturn(CCTextInputNode*) = ios 0x1358a8;
	virtual void updateInputValue(int, float&) {}
	virtual void sliderBegan(Slider*) = ios 0x135908;
	virtual TodoReturn sliderEnded(Slider*) = ios 0x1359d4;
	virtual void onPlusButton(cocos2d::CCObject* sender) {}
	virtual void onCustomButton(cocos2d::CCObject* sender) {}
	virtual void updateDefaultTriggerValues() = ios 0x1374a0;
	virtual TodoReturn updateInputNode(int, float) = ios 0x137f6c;
	virtual TodoReturn updateToggleItem(int, bool) = ios 0x13811c;
	virtual void valueDidChange(int, float) {}
	virtual TodoReturn getValue(int) = ios 0x13818c;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = ios 0x138370;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = ios 0x1383dc;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) {}
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = ios 0x138ec4;

	PAD = android32 0xac;
}

[[link(android)]]
class SetupZoomTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupZoomTriggerPopup();

	static SetupZoomTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = ios 0x1bd618;

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0x1bd6f0;

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class SFXBrowser : FLAlertLayer, MusicDownloadDelegate, TableViewCellDelegate, SetTextPopupDelegate, SelectSFXSortDelegate {
	// virtual ~SFXBrowser();

	static SFXBrowser* create(int);

	bool init(int);
	void onClearSearch(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onCredits(cocos2d::CCObject* sender) = ios 0x17095c;
	void onExitFolder(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);
	void onSorting(cocos2d::CCObject* sender);
	void onToggleCompactMode(cocos2d::CCObject* sender) = ios 0x1708f8;
	void onUpdateLibrary(cocos2d::CCObject* sender);
	void setupList(SFXSearchResult*) = ios 0x170c0c;
	TodoReturn trySetupSFXBrowser();
	TodoReturn updatePageLabel() = ios 0x17140c;

	virtual void registerWithTouchDispatcher() = ios 0x1718b8;
	virtual void keyBackClicked() = ios 0x1718ac;
	virtual void musicActionFinished(GJMusicAction) = ios 0x171308;
	virtual void musicActionFailed(GJMusicAction) = ios 0x171328;
	virtual TodoReturn sortSelectClosed(SelectSFXSortLayer*) = ios 0x171610;
	virtual void setTextPopupClosed(SetTextPopup*, gd::string) = ios 0x171780;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = ios 0x1717e4;
	virtual TodoReturn getSelectedCellIdx() = ios 0x17188c;
	virtual TodoReturn shouldSnapToSelected() = ios 0x17189c;
}

[[link(android)]]
class SFXBrowserDelegate {
	virtual TodoReturn sfxBrowserClosed(SFXBrowser*);
}

[[link(android)]]
class SFXFolderObject : SFXInfoObject {
	// virtual ~SFXFolderObject();

	static SFXFolderObject* create(int, gd::string, int);

	bool init(int, gd::string, int);
}

[[link(android)]]
class SFXInfoObject : cocos2d::CCObject {
	// virtual ~SFXInfoObject();

	static SFXInfoObject* create(int, gd::string, int, int, int);

	TodoReturn getLowerCaseName();
	bool init(int, gd::string, int, int, int);
}

[[link(android)]]
class SFXSearchResult : MusicSearchResult {
	// virtual ~SFXSearchResult();

	static SFXSearchResult* create(int);

	TodoReturn getActiveFolder();
	TodoReturn getSelectedPage(int, int);
	bool init(int);
	void setActiveFolder(SFXFolderObject*);

	virtual TodoReturn updateObjects(AudioSortType) = ios 0x163d8c;
}

[[link(android)]]
class SFXTriggerGameObject : EffectGameObject {
	// virtual ~SFXTriggerGameObject();
	// SFXTriggerGameObject();

	static SFXTriggerGameObject* create(char const*);

	TodoReturn getSFXRefID();
	TodoReturn getUniqueSFXID();
	bool init(char const*);

	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x38ae9c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x389eb8;
}

[[link(android)]]
class ShaderGameObject : EffectGameObject {
	// virtual ~ShaderGameObject();

	static ShaderGameObject* create(char const*);

	bool init(char const*);

	virtual void customSetup() = ios 0x3791bc;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x37a1c4;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x37921c;
}

[[link(android)]]
class ShaderLayer : cocos2d::CCLayer {
	// virtual ~ShaderLayer();

	static ShaderLayer* create();

	TodoReturn objectPosToShaderPos(cocos2d::CCPoint);
	void performCalculations() = ios 0x27ac58;
	TodoReturn preBulgeShader();
	TodoReturn preChromaticGlitchShader();
	TodoReturn preChromaticShader();
	TodoReturn preColorChangeShader();
	TodoReturn preCommonShader();
	TodoReturn preGlitchShader();
	TodoReturn preGrayscaleShader();
	TodoReturn preHueShiftShader();
	TodoReturn preInvertColorShader();
	TodoReturn preLensCircleShader();
	TodoReturn preMotionBlurShader();
	TodoReturn prepareTargetContainer();
	TodoReturn prePinchShader();
	TodoReturn prePixelateShader();
	TodoReturn preRadialBlurShader();
	TodoReturn preSepiaShader();
	TodoReturn preShockLineShader();
	TodoReturn preShockWaveShader();
	TodoReturn preSplitScreenShader();
	bool resetAllShaders() = ios 0x27af00;
	TodoReturn resetTargetContainer();
	TodoReturn setupBulgeShader() = ios 0x276518;
	TodoReturn setupChromaticGlitchUniforms() = ios 0x2762a8;
	TodoReturn setupChromaticUniforms() = ios 0x276244;
	TodoReturn setupColorChangeShader() = ios 0x2767e4;
	TodoReturn setupCommonUniforms() = ios 0x275ca0;
	TodoReturn setupGlitchUniforms() = ios 0x276174;
	TodoReturn setupGrayscaleShader() = ios 0x2766f8;
	TodoReturn setupHueShiftShader() = ios 0x276780;
	TodoReturn setupInvertColorShader();
	TodoReturn setupLensCircleShader() = ios 0x2763c0;
	TodoReturn setupMotionBlurShader() = ios 0x276670;
	TodoReturn setupPinchShader() = ios 0x2765c4;
	TodoReturn setupRadialBlurShader() = ios 0x2764b4;
	TodoReturn setupSepiaShader();
	TodoReturn setupShader(bool) = ios 0x2757d4;
	TodoReturn setupShockLineUniforms() = ios 0x275fa8;
	TodoReturn setupShockWaveUniforms() = ios 0x275ddc;
	TodoReturn setupSplitScreenShader() = ios 0x276848;
	TodoReturn toggleAntiAlias(bool);
	TodoReturn triggerBulge(float, float, float, float, float, int, int, float, bool);
	TodoReturn triggerChromaticGlitch(bool, float, float, float, float, float, float, float, int, float, bool, bool);
	TodoReturn triggerChromaticX(float, float, int, float, bool);
	TodoReturn triggerChromaticY(float, float, int, float, bool);
	TodoReturn triggerColorChange(float, float, float, float, float, float, float, int, float);
	TodoReturn triggerGlitch(float, float, float, float, float, float, float, bool);
	TodoReturn triggerGrayscale(float, float, bool, int, int, float);
	TodoReturn triggerHueShift(float, float, int, float);
	TodoReturn triggerInvertColor(float, float, float, float, float, bool, bool, bool, int, float);
	TodoReturn triggerLensCircle(float, float, float, float, int, int, float, float, int, float, bool);
	TodoReturn triggerMotionBlurX(float, float, float, float, int, float, bool, int, int, float, bool, bool);
	TodoReturn triggerMotionBlurY(float, float, float, float, int, float, bool, int, int, float, bool, bool);
	TodoReturn triggerPinchX(float, float, float, float, float, bool, int, int, float, bool);
	TodoReturn triggerPinchY(float, float, float, float, float, bool, int, int, float, bool);
	TodoReturn triggerPixelateX(float, float, bool, bool, int, float, bool);
	TodoReturn triggerPixelateY(float, float, bool, bool, int, float, bool);
	TodoReturn triggerRadialBlur(float, float, float, float, int, float, float, bool, int, int, float, bool);
	TodoReturn triggerSepia(float, float, int, float);
	bool triggerShockLine(float, float, bool, bool, bool, bool, float, float, float, float, float, float, int, bool, bool, bool, float, bool, float, int, float);
	bool triggerShockWave(float, float, float, float, float, float, float, bool, float, float, float, int, bool, bool, bool, float, float, bool, float, int, float);
	TodoReturn triggerSplitScreenCols(float, float, int, float);
	TodoReturn triggerSplitScreenRows(float, float, int, float);
	TodoReturn tweenValue(float, float, int, float, int, float);
	TodoReturn tweenValueAuto(float, int, float, int, float);
	TodoReturn updateEffectOffsets(cocos2d::CCPoint);
	TodoReturn updateMotionBlurSpeedX(float, float);
	TodoReturn updateMotionBlurSpeedY(float, float);
	TodoReturn updateShockLineCenter(cocos2d::CCPoint);
	TodoReturn updateShockWaveCenter(cocos2d::CCPoint);
	bool updateZLayer(int, int, bool);

	virtual void update(float) = ios 0x2769cc;
	virtual bool init() = ios 0x27572c;
	virtual void visit() = ios 0x27ad34;
}

[[link(android)]]
class ShardsPage : FLAlertLayer {
	// virtual ~ShardsPage();

	static ShardsPage* create() = ios 0x39f664;

	void FLAlert_Clicked(FLAlertLayer*, bool);
	void goToPage(int) = ios 0x3a0db8;
	void onClose(cocos2d::CCObject* sender);
	void onIconInfo(cocos2d::CCObject* sender);
	void onSwitchPage(cocos2d::CCObject* sender);

	virtual bool init() = ios 0x39f720;
	virtual void registerWithTouchDispatcher() = ios 0x3a10f0;
	virtual void keyBackClicked() = ios 0x3a1074;
	virtual void show() = ios 0x3a0f00;
}

[[link(android)]]
class ShareCommentDelegate {
	virtual void shareCommentClosed(gd::string, ShareCommentLayer*);
}

[[link(android)]]
class ShareCommentLayer : FLAlertLayer, TextInputDelegate, UploadActionDelegate, UploadPopupDelegate {
	// virtual ~ShareCommentLayer();

	static ShareCommentLayer* create(gd::string title, int charLimit, CommentType type, int ID, gd::string desc) = ios 0x1d71dc;
	bool init(gd::string title, int charLimit, CommentType type, int ID, gd::string desc) = ios 0x1d72f4;
	void onClear(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onPercent(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender) = ios 0x1d824c;
	void updateCharCountLabel();
	void updateDescText(gd::string desc);
	void updatePercentLabel() = ios 0x1d8080;

	virtual void registerWithTouchDispatcher() = ios 0x1d85e0;
	virtual void keyBackClicked() = ios 0x1d8538;
	virtual void textInputOpened(CCTextInputNode* textInput) {}
	virtual void textInputClosed(CCTextInputNode* textInput) = ios 0x1d8618;
	virtual void textChanged(CCTextInputNode* textInput) = ios 0x1d86f4;
	virtual void uploadActionFinished(int ID, int unk) = ios 0x1d88b4;
	virtual void uploadActionFailed(int ID, int unk) = ios 0x1d8944;
	virtual void onClosePopup(UploadActionPopup* popup) = ios 0x1d89c8;
}

[[link(android)]]
class ShareLevelLayer : FLAlertLayer {
	// virtual ~ShareLevelLayer();

	static ShareLevelLayer* create(GJGameLevel*) = ios 0x27cedc;

	CCMenuItemSpriteExtra* getStarsButton(int btnID, cocos2d::SEL_MenuHandler callback, cocos2d::CCMenu* menu, float scale) = ios 0x27e028;
	bool init(GJGameLevel* level) = ios 0x27cf98;
	void onClose(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender) = ios 0x27de7c;
	TodoReturn selectRating(cocos2d::CCObject*) = ios 0x27e0f0;
	void setupStars() = ios 0x27db64;

	virtual void keyBackClicked() = ios 0x27e3e4;
}

[[link(android)]]
class ShareLevelSettingsLayer : FLAlertLayer, NumberInputDelegate {
	// virtual ~ShareLevelSettingsLayer();

	static ShareLevelSettingsLayer* create(GJGameLevel*) = ios 0x27e26c;

	bool init(GJGameLevel*) = ios 0x27eea0;
	void onClose(cocos2d::CCObject* sender);
	void onCopyable(cocos2d::CCObject* sender);
	void onEditPassword(cocos2d::CCObject* sender);
	void onPassword(cocos2d::CCObject* sender);
	void onUnlisted(cocos2d::CCObject* sender) = ios 0x27f80c;
	void onUnlistedFriendsOnly(cocos2d::CCObject* sender);
	TodoReturn updateSettingsState() = ios 0x27f90c;

	virtual void keyBackClicked() = ios 0x27f9cc;
	virtual void numberInputClosed(NumberInputLayer*) {}
}

[[link(android)]]
class ShareListLayer : FLAlertLayer {
	// virtual ~ShareListLayer();

	static ShareListLayer* create(GJLevelList*) = ios 0x24ea40;

	bool init(GJLevelList*);
	void onClose(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender) = ios 0x250aa4;
	void onShare(cocos2d::CCObject* sender) = ios 0x2509b4;
	void onUnlisted(cocos2d::CCObject* sender);
	TodoReturn updateUnlistedF();

	virtual void keyBackClicked() = ios 0x250d24;
}

[[link(android)]]
class SimpleObject : cocos2d::CCObject {
	// virtual ~SimpleObject();

	static SimpleObject* create();

	bool init();
}

[[link(android)]]
class SimplePlayer : cocos2d::CCSprite {
	// virtual ~SimplePlayer();

	static SimplePlayer* create(int) = ios 0x30a068;

	TodoReturn asyncLoadIcon(int, IconType);
	TodoReturn createRobotSprite(int);
	TodoReturn createSpiderSprite(int);
	inline void disableCustomGlowColor() {
		m_hasCustomGlowColor = false;
	}
	inline void enableCustomGlowColor(cocos2d::_ccColor3B const& color) {
		m_hasCustomGlowColor = true;
		m_glowColor = color;
	}
	TodoReturn hideAll();
	TodoReturn hideSecondary();
	TodoReturn iconFinishedLoading(int, IconType);
	bool init(int) = ios 0x30da78;
	void setColors(cocos2d::ccColor3B const&, cocos2d::ccColor3B const&);
	void setFrames(char const*, char const*, char const*, char const*, char const*);
	inline void setSecondColor(cocos2d::_ccColor3B const& color) {
		m_secondLayer->setColor(color);
		updateColors();
	} // ios 0x30df40 moment
	void updateColors() = ios 0x30cedc;
	void updatePlayerFrame(int, IconType) = ios 0x30a32c;

	virtual void setOpacity(unsigned char) = ios 0x30e244;
	virtual void setColor(cocos2d::ccColor3B const&) = ios 0x30dee0;

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

	static SlideInLayer* create();

	virtual bool init();
	virtual void draw();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void customSetup();
	virtual void enterLayer();
	virtual void exitLayer(cocos2d::CCObject*);
	virtual void showLayer(bool);
	virtual void hideLayer(bool);
	virtual void layerVisible();
	virtual void layerHidden();
	virtual void enterAnimFinished();
	virtual void disableUI();
	virtual void enableUI();
}

[[link(android)]]
class Slider : cocos2d::CCLayer {
	// virtual ~Slider();

	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float) = ios 0x2f60d8;
	static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler) {
		return Slider::create(target, handler, 1.f);
	}
	static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler, float idk) {
		return Slider::create(target, handler, "sliderBar.png", "slidergroove.png", "sliderthumb.png", "sliderthumbsel.png", idk);
	}

	TodoReturn disableSlider();
	TodoReturn disableTouch();
	TodoReturn enableSlider() = ios 0x2f647c;
	TodoReturn getLiveDragging() = ios 0x2f655c;
	SliderThumb* getThumb() {
		return m_touchLogic->m_thumb;
	}
	float getValue();
	TodoReturn hideGroove(bool) = ios 0x2f6660;
	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float) = ios 0x2f61e8;
	void setBarVisibility(bool) = ios 0x2f654c;
	void setLiveDragging(bool);
	void setMaxOffset(float) = ios 0x2f6618;
	void setRotated(bool) = ios 0x2f65c8;
	void setValue(float val) {
		this->getThumb()->setValue(val);
		this->updateBar();
	}
	TodoReturn sliderBegan();
	TodoReturn sliderEnded();
	void updateBar() = ios 0x2f5fe0;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2f6568;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2f65a8;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2f6588;

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
	virtual void sliderBegan(Slider*) {}
	virtual TodoReturn sliderEnded(Slider*);
}

[[link(android)]]
class SliderThumb : cocos2d::CCMenuItemImage {
	// virtual ~SliderThumb();

	static SliderThumb* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*);

	float getValue() {
		return (this->getScaleX() * m_length * .5f +
				(m_vertical ?
					this->getPositionY() :
					this->getPositionX())
			) / (this->getScaleX() * m_length);
	}
	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*);
	void setMaxOffset(float);
	void setRotated(bool);
	void setValue(float) = ios 0x2f5a54;

	float m_length;
	bool m_vertical;
}

[[link(android)]]
class SliderTouchLogic : cocos2d::CCMenu {
	// virtual ~SliderTouchLogic();

	static SliderTouchLogic* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float) = ios 0x2f5bcc;

	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float);
	void setMaxOffset(float);
	void setRotated(bool);

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2f5dfc;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2f5ef4;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2f5ea4;
	virtual void registerWithTouchDispatcher() = ios 0x2f6054;

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

	static SmartGameObject* create(char const*);

	bool init(char const*);
	TodoReturn updateSmartFrame() = ios 0x37e93c;

	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x37ec5c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x37eac8;

	bool m_property157;
	PAD = android32 0x9;
}

[[link(android)]]
class SmartTemplateCell : TableViewCell {
	// virtual ~SmartTemplateCell();
	SmartTemplateCell(char const*, float, float);

	void loadFromObject(GJSmartTemplate*);
	void onClick(cocos2d::CCObject* sender);
	void updateBGColor(int);

	virtual bool init() = ios 0x113094;
	virtual void draw() = ios 0x113144;
}

[[link(android)]]
class SongCell : TableViewCell {
	// virtual ~SongCell();
	SongCell(char const*, float, float);

	void loadFromObject(SongObject*);
	void onClick(cocos2d::CCObject* sender);
	void updateBGColor(int);

	virtual bool init() = ios 0x11060c;
	virtual void draw() = ios 0x11063c;
}

[[link(android)]]
class SongInfoLayer : FLAlertLayer {
	// virtual ~SongInfoLayer();

	static SongInfoLayer* create(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string, int, gd::string);
	static SongInfoLayer* create(int);

	bool init(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string, int, gd::string) = ios 0x3a4f08;
	void onBPM(cocos2d::CCObject* sender) = ios 0x3a5bd8;
	void onClose(cocos2d::CCObject* sender);
	void onDownload(cocos2d::CCObject* sender);
	void onFB(cocos2d::CCObject* sender);
	void onMenuMusic(cocos2d::CCObject* sender);
	void onNG(cocos2d::CCObject* sender);
	void onPracticeMusic(cocos2d::CCObject* sender);
	void onYT(cocos2d::CCObject* sender);
	void showCustomMusicUnlockInfo() = ios 0x3a5e00;

	virtual void keyBackClicked() = ios 0x3a5fbc;
}

[[link(android)]]
class SongInfoObject : cocos2d::CCNode {
	// virtual ~SongInfoObject();

	static SongInfoObject* create(cocos2d::CCDictionary*);
	static SongInfoObject* create(int songID, gd::string songName, gd::string artistName, int artistID, float filesize, gd::string youtubeVideo, gd::string youtubeChannel, gd::string url, int priority);
	static SongInfoObject* create(int);

	TodoReturn addTags(gd::string);
	TodoReturn containsTag(int);
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn getTagsString() = ios 0x162ef8;
	bool init(int songID, gd::string songName, gd::string artistName, int artistID, float filesize, gd::string youtubeVideo, gd::string youtubeChannel, gd::string url, int priority);

	virtual void encodeWithCoder(DS_Dictionary*) = ios 0x162dc0;
	virtual bool canEncode() = ios 0x162ef0;

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

	static SongObject* create(int);

	bool init(int);
}

[[link(android)]]
class SongOptionsLayer : FLAlertLayer {
	// virtual ~SongOptionsLayer();

	static SongOptionsLayer* create(CustomSongDelegate*) = ios 0x14d4b4;

	bool init(CustomSongDelegate*) = ios 0x14d970;
	void onClose(cocos2d::CCObject* sender);
	void onFadeIn(cocos2d::CCObject* sender);
	void onFadeOut(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender) = ios 0x14e330;
	void onPlayback(cocos2d::CCObject* sender);
	TodoReturn updatePlaybackBtn();

	virtual void keyBackClicked() = ios 0x14e52c;
}

[[link(android)]]
class SongPlaybackDelegate {
	virtual TodoReturn onPlayback(SongInfoObject*);
}

[[link(android)]]
class SongSelectNode : cocos2d::CCNode, FLAlertLayerProtocol, CustomSongLayerDelegate, CustomSongDelegate {
	// virtual ~SongSelectNode();

	static SongSelectNode* create(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool) = ios 0x14f09c;

	void audioNext(cocos2d::CCObject*);
	void audioPrevious(cocos2d::CCObject*);
	bool init(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool) = ios 0x14f1ac;
	void onOpenCustomSong(cocos2d::CCObject* sender);
	void onSongMode(cocos2d::CCObject* sender);
	void onSongMode(int);
	TodoReturn selectSong(int);
	void showCustomSongSelect();
	void updateAudioLabel();
	TodoReturn updateWidgetVisibility();

	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x14fda0;
	virtual void customSongLayerClosed() = ios 0x14fe1c;
	virtual TodoReturn songIDChanged(int) = ios 0x14fe84;
	virtual TodoReturn getActiveSongID() = ios 0x14fea4;
	virtual TodoReturn getSongFileName() = ios 0x14feb4;
	virtual TodoReturn getLevelSettings() = ios 0x14ff60;
}

[[link(android)]]
class SongsLayer : GJDropDownLayer {
	// virtual ~SongsLayer();

	static SongsLayer* create() = ios 0x34ab64;

	virtual void customSetup() = ios 0x34ac4c;
}

[[link(android)]]
class SongTriggerGameObject : SFXTriggerGameObject {
	// virtual ~SongTriggerGameObject();

	static SongTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x38ba8c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x38b844;
}

[[link(android)]]
class SpawnParticleGameObject : EffectGameObject {
	// virtual ~SpawnParticleGameObject();

	static SpawnParticleGameObject* create();

	virtual bool init() = ios 0x395ed0;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x39650c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x395f20;
}

[[link(android)]]
class SpawnTriggerAction {
	bool isFinished();
	TodoReturn step(float);
}

[[link(android)]]
class SpawnTriggerGameObject : EffectGameObject {
	// virtual ~SpawnTriggerGameObject();

	static SpawnTriggerGameObject* create();

	TodoReturn addRemap(int, int);
	TodoReturn changeRemap(int, int, bool);
	TodoReturn removeRemap(int, int);
	TodoReturn updateRemapKeys(gd::vector<int> const&);

	virtual bool init() = ios 0x38c58c;
	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = ios 0x38c9a8;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x38cd5c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x38d084;
}

[[link(android)]]
class SpecialAnimGameObject : EnhancedGameObject {
	// virtual ~SpecialAnimGameObject();

	static SpecialAnimGameObject* create(char const*);

	bool init(char const*);

	virtual void resetObject() = ios 0x3804c4;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x3804d0;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x380530;
	virtual TodoReturn updateMainColor(cocos2d::ccColor3B const&) = ios 0x3804a4;
	virtual TodoReturn updateSecondaryColor(cocos2d::ccColor3B const&) = ios 0x3804b4;
	virtual TodoReturn updateSyncedAnimation(float, int) = ios 0x34caf4;
}

[[link(android)]]
class SpriteAnimationManager : cocos2d::CCNode {
	// virtual ~SpriteAnimationManager();

	TodoReturn animationFinished();
	TodoReturn callAnimationFinished();
	TodoReturn createAnimations(gd::string);
	TodoReturn createWithOwner(CCAnimatedSprite*, gd::string);
	TodoReturn doCleanup();
	TodoReturn executeAnimation(gd::string) = ios 0x32a55c;
	TodoReturn finishAnimation(gd::string);
	TodoReturn getAnimType(gd::string) = ios 0x32a7e8;
	TodoReturn getPrio(gd::string);
	TodoReturn initWithOwner(CCAnimatedSprite*, gd::string) = ios 0x328e34;
	TodoReturn loadAnimations(gd::string) = ios 0x329914;
	TodoReturn offsetCurrentAnimation(float);
	TodoReturn overridePrio() = ios 0x32a800;
	TodoReturn playSound(gd::string);
	TodoReturn playSoundForAnimation(gd::string);
	TodoReturn queueAnimation(gd::string);
	TodoReturn resetAnimState();
	TodoReturn runAnimation(gd::string) = ios 0x32a2ac;
	TodoReturn runQueuedAnimation();
	TodoReturn stopAnimations() = ios 0x32a888;
	TodoReturn storeAnimation(cocos2d::CCAnimate*, cocos2d::CCAnimate*, gd::string, int, spriteMode, cocos2d::CCSpriteFrame*);
	TodoReturn storeSoundForAnimation(cocos2d::CCString*, gd::string, float);
	TodoReturn switchToFirstFrameOfAnimation(gd::string);
	TodoReturn updateAnimationSpeed(float);
}

[[link(android)]]
class SpriteDescription : cocos2d::CCObject {
	// virtual ~SpriteDescription();
	// SpriteDescription();

	TodoReturn createDescription(cocos2d::CCDictionary*);
	TodoReturn createDescription(DS_Dictionary*);
	TodoReturn initDescription(cocos2d::CCDictionary*);
	TodoReturn initDescription(DS_Dictionary*);
}

[[link(android)]]
class SpritePartDelegate {
	virtual TodoReturn displayFrameChanged(cocos2d::CCObject*, gd::string);
}

[[link(android)]]
class StarInfoPopup {
	// virtual ~StarInfoPopup();

	static StarInfoPopup* create(int, int, int, int, int, int, int, int, int, bool) = ios 0x1a3b10;

	TodoReturn createFromString(gd::string);
	TodoReturn createFromStringMoons(gd::string);
	bool init(int, int, int, int, int, int, int, int, int, bool) = ios 0x1a3c2c;
	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = ios 0x1a447c;
}

[[link(android)]]
class StartPosObject : EffectGameObject {
	// virtual ~StartPosObject();

	static StartPosObject* create();

	TodoReturn loadSettingsFromString(gd::string) = ios 0x38563c;
	void setSettings(LevelSettingsObject*) = ios 0x3855f4;

	virtual bool init() = ios 0x38557c;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x385678;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x38567c;

	LevelSettingsObject* m_startSettings;
}

[[link(android)]]
class StatsCell : TableViewCell {
	// virtual ~StatsCell();
	StatsCell(char const*, float, float);
	TodoReturn getTitleFromKey(char const*) = ios 0x10fdb4;
	void loadFromObject(StatsObject*) = ios 0x105998;
	void updateBGColor(int);

	virtual bool init() = ios 0x10fdac;
	virtual void draw() = ios 0x1104bc;
}

[[link(android)]]
class StatsLayer : GJDropDownLayer {
	// virtual ~StatsLayer();

	static StatsLayer* create() = ios 0x24a6c8;

	virtual void customSetup() = ios 0x24a7b0;
}

[[link(android)]]
class StatsObject : cocos2d::CCObject {
	// virtual ~StatsObject();

	static StatsObject* create(char const*, int);

	bool init(char const*, int);
}

[[link(android)]]
class SupportLayer : GJDropDownLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate {
	// virtual ~SupportLayer();

	static SupportLayer* create() = ios 0x19841c;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn exitLayer();
	void onCocos2d(cocos2d::CCObject* sender) = ios 0x199ab8;
	void onEmail(cocos2d::CCObject* sender);
	void onGetReward(cocos2d::CCObject* sender);
	void onLinks(cocos2d::CCObject* sender) = ios 0x198e70;
	void onLowDetail(cocos2d::CCObject* sender) = ios 0x199870;
	void onPrivacy(cocos2d::CCObject* sender);
	void onRequestAccess(cocos2d::CCObject* sender) = ios 0x199940;
	void onRobTop(cocos2d::CCObject* sender);
	void onSFX(cocos2d::CCObject* sender) = ios 0x199224;
	void onTOS(cocos2d::CCObject* sender);
	TodoReturn sendSupportMail() = ios 0x199c94;

	virtual void customSetup() = ios 0x1985b4;
	virtual void uploadActionFinished(int, int) = ios 0x199b2c;
	virtual void uploadActionFailed(int, int) = ios 0x199c14;
	virtual void onClosePopup(UploadActionPopup*) = ios 0x199adc;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x199de4;
}

[[link(android), depends(CCIndexPath)]]
class TableView : CCScrollLayerExt, CCScrollLayerExtDelegate {
	// virtual ~TableView();
	TableView(cocos2d::CCRect) = ios 0x30564c;

	static TableView* create(TableViewDelegate*, TableViewDataSource*, TableViewCellDelegate*, cocos2d::CCRect) = ios 0x305598;

	TodoReturn cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x30638c;
	TodoReturn cellForRowAtIndexPath(CCIndexPath&);
	TodoReturn cellForTouch(cocos2d::CCTouch*);
	TodoReturn checkBoundaryOfCell(cocos2d::CCPoint&, float);
	TodoReturn checkBoundaryOfCell(TableViewCell*);
	TodoReturn checkBoundaryOfContent(float);
	TodoReturn checkFirstCell(TableViewCell*);
	TodoReturn checkLastCell(TableViewCell*);
	TodoReturn claimTouch(cocos2d::CCTouch*) = ios 0x306328;
	TodoReturn deleteTableViewCell(TableViewCell*);
	TodoReturn dequeueReusableCellWithIdentifier(char const*) = ios 0x305e4c;
	TodoReturn initTableViewCells();
	bool isDuplicateIndexPath(CCIndexPath&);
	bool isDuplicateInVisibleCellArray(CCIndexPath*);
	void reloadData() = ios 0x305e54;
	TodoReturn removeIndexPathFromPathAddedArray(CCIndexPath&);
	TodoReturn scrollToIndexPath(CCIndexPath&);
	TodoReturn touchFinish(cocos2d::CCTouch*) = ios 0x306abc;

	virtual void onEnter() = ios 0x3062e8;
	virtual void onExit() = ios 0x3062ec;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x306428;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x306be0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x306a6c;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x306b80;
	virtual void registerWithTouchDispatcher() = ios 0x3062f0;
	virtual void scrollWheel(float, float) = ios 0x306ca8;
	virtual void scrllViewWillBeginDecelerating(CCScrollLayerExt*) {}
	virtual void scrollViewDidEndDecelerating(CCScrollLayerExt*) {}
	virtual void scrollViewTouchMoving(CCScrollLayerExt*) {}
	virtual void scrollViewDidEndMoving(CCScrollLayerExt*) {}

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
	~TableViewCell() = ios 0x3d624;
	TableViewCell(char const*, float, float) = ios 0x3d438;

	TodoReturn updateVisibility() = ios 0x3d65c;

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

	static TeleportPortalObject* create(char const*, bool);

	TodoReturn getTeleportXOff(cocos2d::CCNode*);
	bool init(char const*, bool);
	void setPositionOverride(cocos2d::CCPoint);
	void setStartPosOverride(cocos2d::CCPoint);

	virtual void setPosition(cocos2d::CCPoint const&) = ios 0x385970;
	virtual void setRotation(float) = ios 0x385a18;
	virtual void setStartPos(cocos2d::CCPoint) = ios 0x3857e4;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x386374;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x385b6c;
	virtual void addToGroup(int) = ios 0x385a94;
	virtual void removeFromGroup(int) = ios 0x385b08;
	virtual void setRotation2(float) = ios 0x385a88;
	virtual void addToGroup2(int) = ios 0x385a8c;
	virtual void removeFromGroup2(int) = ios 0x385a90;

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

	GJBaseGameLayer* m_gameLayer;
}

[[link(android)]]
class TextAlertPopup : cocos2d::CCNode {
	// virtual ~TextAlertPopup();

	static TextAlertPopup* create(gd::string, float, float, int, gd::string) = ios 0x2e7810;

	bool init(gd::string, float, float, int, gd::string) = ios 0x2e7944;
	void setAlertPosition(cocos2d::CCPoint, cocos2d::CCPoint);
	void setLabelColor(cocos2d::ccColor3B);
}

[[link(android)]]
class TextArea : cocos2d::CCSprite {
	// virtual ~TextArea();

	static TextArea* create(gd::string str, char const* font, float scale, float width, cocos2d::CCPoint anchor, float lineHeight, bool disableColor) = ios 0xf7ce8;

	TodoReturn colorAllCharactersTo(cocos2d::ccColor3B) = ios 0xf82d0;
	TodoReturn colorAllLabels(cocos2d::ccColor3B);
	TodoReturn fadeIn(float, bool);
	TodoReturn fadeInCharacters(float, float);
	TodoReturn fadeOut(float);
	TodoReturn fadeOutAndRemove();
	TodoReturn finishFade();
	TodoReturn hideAll();
	bool init(gd::string str, char const* font, float scale, float width, cocos2d::CCPoint anchor, float lineHeight, bool disableColor) = ios 0xf7df8;
	void setIgnoreColorCode(bool);
	void setString(gd::string) = ios 0xf7ed4;
	void showAll();
	TodoReturn stopAllCharacterActions();

	virtual void update(float) = ios 0xf8404;
	virtual void draw() {}
	virtual void setOpacity(unsigned char) = ios 0xf8264;

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

	static TextGameObject* create(cocos2d::CCTexture2D*) = ios 0x25c788;

	bool init(cocos2d::CCTexture2D*);
	void updateTextObject(gd::string, bool) = ios 0x26c880;

	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x26cb50;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x26cc6c;
	virtual TodoReturn updateTextKerning(int) = ios 0x26c878;
	virtual TodoReturn getTextKerning() = ios 0x26cf9c;

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

	static TextStyleSection* create(int, int, TextStyleType);

	TodoReturn createColoredSection(cocos2d::ccColor3B, int, int);
	TodoReturn createDelaySection(int, float);
	TodoReturn createInstantSection(int, int, float);
	TodoReturn createShakeSection(int, int, int, int);
	bool init(int, int, TextStyleType);
}

[[link(android)]]
class TimerTriggerGameObject : EffectGameObject {
	// virtual ~TimerTriggerGameObject();

	static TimerTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = ios 0x391efc;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x392608;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x391fa8;
}

[[link(android)]]
class TopArtistsLayer : FLAlertLayer, OnlineListDelegate {
	// virtual ~TopArtistsLayer();

	static TopArtistsLayer* create();

	bool isCorrect(char const*);
	void loadPage(int);
	void onClose(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn setupLeaderboard(cocos2d::CCArray*);
	TodoReturn updateLevelsLabel();

	virtual bool init() = ios 0x1aaa48;
	virtual void registerWithTouchDispatcher() = ios 0x1ab290;
	virtual void keyBackClicked() = ios 0x1ab214;
	virtual void show() = ios 0x1ab8d4;
	virtual void loadListFinished(cocos2d::CCArray*, char const*) = ios 0x1ab2c8;
	virtual void loadListFailed(char const*) = ios 0x1ab32c;
	virtual void setupPageInfo(gd::string, char const*) = ios 0x1ab354;
}

[[link(android)]]
class TOSPopup : FLAlertLayer {
	// virtual ~TOSPopup();

	static TOSPopup* create() = ios 0x2e7d58;

	void onClose(cocos2d::CCObject* sender);
	void onPrivacy(cocos2d::CCObject* sender);
	void onTOS(cocos2d::CCObject* sender);

	virtual bool init() = ios 0x2e7e00;
	virtual void keyBackClicked() {}
}

[[link(android)]]
class TransformTriggerGameObject : EffectGameObject {
	// virtual ~TransformTriggerGameObject();

	static TransformTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = ios 0x38f284;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x38f2a8;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x38f538;
}

[[link(android)]]
class TriggerControlGameObject : EffectGameObject {
	// virtual ~TriggerControlGameObject();

	static TriggerControlGameObject* create(char const*);

	bool init(char const*);
	TodoReturn updateTriggerControlFrame();

	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = ios 0x395e3c;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x395c7c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x395a34;
}

[[link(android)]]
class TriggerEffectDelegate {
	virtual void toggleGroupTriggered(int, bool, gd::vector<int> const&, int, int) {}
	virtual void spawnGroup(int, bool, double, gd::vector<int> const&, int, int) {}
	virtual void spawnObject(GameObject*, double, gd::vector<int> const&) {}
}

[[link(android)]]
class TutorialLayer : FLAlertLayer {
	// virtual ~TutorialLayer();

	static TutorialLayer* create();

	void loadPage(int) = ios 0x1c292c;
	void onClose(cocos2d::CCObject* sender);
	void onNext(cocos2d::CCObject* sender);
	TodoReturn removeTutorialTexture() = ios 0x1c2ccc;

	virtual bool init() = ios 0x1c243c;
	virtual void keyBackClicked() = ios 0x1c2d24;
}

[[link(android)]]
class TutorialPopup : FLAlertLayer {
	// virtual ~TutorialPopup();

	static TutorialPopup* create(gd::string);

	TodoReturn animateMenu();
	TodoReturn closeTutorial(cocos2d::CCObject*);
	bool init(gd::string);
	TodoReturn registerForCallback(cocos2d::SEL_MenuHandler, cocos2d::CCNode*);

	virtual void keyBackClicked();
	virtual void show();
}

[[link(android)]]
class UIButtonConfig {
	TodoReturn reset() = ios 0x321598;
	TodoReturn resetOneBtn() = ios 0x321610;

	PAD = win 0x28, android32 0x28, android64 0x28;
}

[[link(android)]]
class UILayer : cocos2d::CCLayerColor {
	// virtual ~UILayer();

	static UILayer* create(GJBaseGameLayer*) = ios 0x52180;

	void disableMenu();
	void editorPlaytest(bool) = ios 0x52df0;
	void enableEditorMode() = ios 0x52d88;
	void enableMenu() = ios 0x531dc;
	void handleKeypress(cocos2d::enumKeyCodes, bool);
	bool init(GJBaseGameLayer*) = ios 0x521f4;
	bool isJumpButtonPressed(bool) = ios 0x5320c;
	void onCheck(cocos2d::CCObject* sender);
	void onDeleteCheck(cocos2d::CCObject* sender);
	void onPause(cocos2d::CCObject* sender);
	void processUINodesTouch(GJUITouchEvent, cocos2d::CCTouch*);
	void processUINodeTouch(GJUITouchEvent, int, cocos2d::CCPoint, GJUINode*);
	void refreshDpad() = ios 0x52a60;
	void resetAllButtons() = ios 0x531f4;
	void resetUINodeState() = ios 0x52ca8;
	void toggleCheckpointsMenu(bool) = ios 0x52800;
	void toggleMenuVisibility(bool) = ios 0x531f0;
	void togglePlatformerMode(bool) = ios 0x52984;
	void updateCheckState();
	void updateDualMode(bool) = ios 0x52a1c;
	void updateUINodeVisibility(bool) = ios 0x52c20;

	virtual void draw() {}
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x53248;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x53454;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x53488;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x53a0c;
	virtual void registerWithTouchDispatcher() = ios 0x53a28;
	virtual void keyBackClicked() = ios 0x5315c;
	virtual void keyDown(cocos2d::enumKeyCodes) = ios 0x5311c;
	virtual void keyUp(cocos2d::enumKeyCodes) = ios 0x5313c;

	// This member is here because rob managed to inhert CCKeyboardDelegate twice
	// in this class, which ended up breaking addresser when trying to hook it.
	// so instead, we removed the second CCKeyboardDelegate from the base class list
	// and put this member here to take the place of its vtable
	void* m_stupidDelegate;
}

[[link(android)]]
class UIObjectSettingsPopup : SetupTriggerPopup {
	// virtual ~UIObjectSettingsPopup();

	static UIObjectSettingsPopup* create(UISettingsGameObject*, cocos2d::CCArray*) = ios 0x407148;

	bool init(UISettingsGameObject*, cocos2d::CCArray*) = ios 0x407220;

	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = ios 0x407b64;
}

[[link(android)]]
class UIOptionsLayer : SetupTriggerPopup {
	// virtual ~UIOptionsLayer();

	static UIOptionsLayer* create(bool) = ios 0x2e9528;

	TodoReturn getNode(int);
	bool init(bool) = ios 0x2e9a78;
	void onReset(cocos2d::CCObject* sender);
	void onSaveLoad(cocos2d::CCObject* sender);
	TodoReturn toggleUIGroup(int) = ios 0x2eb15c;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2eb80c;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2eb9a0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2ebae8;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2ebb80;
	virtual void registerWithTouchDispatcher() = ios 0x2ebb9c;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x2eb378;
	virtual void valueDidChange(int, float) = ios 0x2eb4c8;
	virtual TodoReturn getValue(int) = ios 0x2eb6a0;
}

[[link(android)]]
class UIPOptionsLayer {
	// virtual ~UIPOptionsLayer();

	static UIPOptionsLayer* create();

	TodoReturn getTouchRect();
	void onReset(cocos2d::CCObject* sender);

	virtual bool init() = ios 0x2ed044;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2ed718;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2ed7e0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2ed894;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x2ed8cc;
	virtual void registerWithTouchDispatcher() = ios 0x2ed8e8;
	virtual void onClose(cocos2d::CCObject* sender) = ios 0x2ed560;
	virtual void valueDidChange(int, float) = ios 0x2ed5d0;
	virtual TodoReturn getValue(int) = ios 0x2ed684;
}

[[link(android)]]
class UISaveLoadLayer : SetupTriggerPopup {
	// virtual ~UISaveLoadLayer();

	static UISaveLoadLayer* create(UIOptionsLayer*) = ios 0x2eb2a8;

	bool init(UIOptionsLayer*) = ios 0x2ebbd4;
	void onLoad(cocos2d::CCObject* sender) = ios 0x2ec0f8;
	void onSave(cocos2d::CCObject* sender) = ios 0x2ebf54;
}

[[link(android)]]
class UISettingsGameObject : EffectGameObject {
	// virtual ~UISettingsGameObject();

	static UISettingsGameObject* create();

	virtual bool init() = ios 0x3902b8;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = ios 0x390664;
	virtual gd::string getSaveString(GJBaseGameLayer*) = ios 0x390308;
}

[[link(android)]]
class UndoObject : cocos2d::CCObject {
	// virtual ~UndoObject();
	// UndoObject();

	static UndoObject* create(GameObject*, UndoCommand);
	static UndoObject* createWithArray(cocos2d::CCArray*, UndoCommand);
	static UndoObject* createWithTransformObjects(cocos2d::CCArray*, UndoCommand);

	bool init(cocos2d::CCArray*, UndoCommand);
	bool init(GameObject*, UndoCommand);
	TodoReturn initWithTransformObjects(cocos2d::CCArray*, UndoCommand);
	void setObjects(cocos2d::CCArray*);

	GameObjectCopy* m_objectCopy;
	UndoCommand m_command;
	cocos2d::CCArray* m_objects;
	bool m_redo;
}

[[link(android)]]
class UpdateAccountSettingsPopup : FLAlertLayer, GJAccountSettingsDelegate {
	// virtual ~UpdateAccountSettingsPopup();

	static UpdateAccountSettingsPopup* create(GJAccountSettingsLayer*, int, int, int, gd::string, gd::string, gd::string) = ios 0x2df370;

	bool init(GJAccountSettingsLayer*, int, int, int, gd::string, gd::string, gd::string) = ios 0x2df700;
	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = ios 0x2dfdbc;
	virtual TodoReturn updateSettingsFinished() = ios 0x2dfc0c;
	virtual TodoReturn updateSettingsFailed() = ios 0x2dfcf0;
}

[[link(android)]]
class UploadActionDelegate {
	virtual void uploadActionFinished(int, int) {}
	virtual void uploadActionFailed(int, int) {}
}

[[link(android)]]
class UploadActionPopup : FLAlertLayer {
	// virtual ~UploadActionPopup();

	static UploadActionPopup* create(UploadPopupDelegate* delegate, gd::string str);

	void closePopup();
	bool init(UploadPopupDelegate*, gd::string) = ios 0x2dff10;
	void onClose(cocos2d::CCObject* sender);
	void showFailMessage(gd::string message);
	void showSuccessMessage(gd::string message) = ios 0x2e0308;

	virtual void keyBackClicked() = ios 0x2e0510;
	
	UploadPopupDelegate * m_delegate;
    TextArea * m_textArea;	
    LoadingCircle *	m_loadingCircle;
    CCMenuItemSpriteExtra *	m_menuItemSpriteExtra;
    bool m_succeeded;
}

[[link(android)]]
class UploadListPopup : FLAlertLayer, ListUploadDelegate {
	// virtual ~UploadListPopup();

	static UploadListPopup* create(GJLevelList*) = ios 0x250c64;

	bool init(GJLevelList*) = ios 0x250e68;
	void onBack(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onReturnToList(cocos2d::CCObject* sender);

	virtual void keyBackClicked() {}
	virtual void show() = ios 0x251764;
	virtual void listUploadFinished(GJLevelList*) = ios 0x2512d4;
	virtual void listUploadFailed(GJLevelList*, int) = ios 0x2514c8;
}

[[link(android)]]
class UploadMessageDelegate {
	virtual void uploadMessageFinished(int);
	virtual void uploadMessageFailed(int);
}

[[link(android)]]
class UploadPopup : FLAlertLayer, LevelUploadDelegate {
	// virtual ~UploadPopup();

	static UploadPopup* create(GJGameLevel*) = ios 0x27e324;

	bool init(GJGameLevel*) = ios 0x27e534;
	void onBack(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onReturnToLevel(cocos2d::CCObject* sender);

	virtual void keyBackClicked() {}
	virtual void show() = ios 0x27ee00;
	virtual void levelUploadFinished(GJGameLevel*) = ios 0x27ea04;
	virtual void levelUploadFailed(GJGameLevel*) = ios 0x27ec2c;
}

[[link(android)]]
class UploadPopupDelegate {
	virtual void onClosePopup(UploadActionPopup*) {}
}

[[link(android)]]
class URLCell : TableViewCell {
	// virtual ~URLCell();
	URLCell(char const*, float, float);

	void loadFromObject(CCURLObject*);
	void onURL(cocos2d::CCObject* sender);
	void updateBGColor(int);

	virtual bool init() = ios 0x113448;
	virtual void draw() = ios 0x1134a4;
}

[[link(android)]]
class URLViewLayer : GJDropDownLayer {
	// virtual ~URLViewLayer();

	static URLViewLayer* create(gd::string, cocos2d::CCArray*);

	bool init(gd::string, cocos2d::CCArray*);
}

[[link(android)]]
class UserInfoDelegate {
	virtual void getUserInfoFinished(GJUserScore*);
	virtual void getUserInfoFailed(int);
	virtual void userInfoChanged(GJUserScore*);
}

[[link(android)]]
class UserListDelegate {
	virtual void getUserListFinished(cocos2d::CCArray*, UserListType);
	virtual void getUserListFailed(UserListType, GJErrorCode);
	virtual void userListChanged(cocos2d::CCArray*, UserListType);
	virtual void forceReloadList(UserListType);
}

[[link(android)]]
class VideoOptionsLayer : FLAlertLayer {
	// virtual ~VideoOptionsLayer();

	static VideoOptionsLayer* create() = ios 0xeebc8;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float, bool, cocos2d::CCArray*) = ios 0xf1fb8;
	void onAdvanced(cocos2d::CCObject* sender);
	void onApply(cocos2d::CCObject* sender) = ios 0xf22bc;
	void onBorderless(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onFullscreen(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onResolutionNext(cocos2d::CCObject* sender);
	void onResolutionPrev(cocos2d::CCObject* sender);
	void onTextureQualityNext(cocos2d::CCObject* sender);
	void onTextureQualityPrev(cocos2d::CCObject* sender);
	TodoReturn reloadMenu();
	TodoReturn toggleResolution();
	TodoReturn updateResolution(int) = ios 0xf2560;
	TodoReturn updateTextureQuality(int) = ios 0xf2498;

	virtual bool init() = ios 0xf135c;
	virtual void keyBackClicked() = ios 0xf2878;
}

[[link(android)]]
class WorldLevelPage : FLAlertLayer {
	// virtual ~WorldLevelPage();

	static WorldLevelPage* create(GJGameLevel*, GJWorldNode*);

	bool init(GJGameLevel*, GJWorldNode*) = ios 0xb404;
	void onClose(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onSong(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
	virtual void show();
}

[[link(android)]]
class WorldSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate {
	// virtual ~WorldSelectLayer();

	static WorldSelectLayer* create(int);

	TodoReturn animateInActiveIsland();
	cocos2d::ccColor3B colorForPage(int);
	TodoReturn getColorValue(int, int, float);
	void goToPage(int, bool);
	bool init(int);
	void onBack(cocos2d::CCObject* sender);
	void onFreeLevels(cocos2d::CCObject* sender);
	void onGarage(cocos2d::CCObject* sender);
	void onNext(cocos2d::CCObject* sender);
	void onPrev(cocos2d::CCObject* sender);
	static cocos2d::CCScene* scene(int);
	TodoReturn setupWorlds();
	void showCompleteDialog();
	TodoReturn tryShowAd();
	TodoReturn unblockButtons();
	TodoReturn updateArrows();

	virtual void onExit();
	virtual void keyBackClicked();
	virtual void scrollLayerWillScrollToPage(BoomScrollLayer*, int);
	virtual void scrollLayerScrolledToPage(BoomScrollLayer*, int);
	virtual void scrollLayerMoved(cocos2d::CCPoint);
}
