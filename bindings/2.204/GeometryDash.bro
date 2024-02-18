// clang-format off

[[link(android)]]
class AccountHelpLayer : GJDropDownLayer, GJAccountDelegate, FLAlertLayerProtocol {
	// virtual ~AccountHelpLayer();

	static AccountHelpLayer* create() = win 0x58a10;

	TodoReturn doUnlink();
	TodoReturn exitLayer();
	void onAccountManagement(cocos2d::CCObject* sender);
	void onReLogin(cocos2d::CCObject* sender);
	void onUnlink(cocos2d::CCObject* sender);
	TodoReturn updatePage();
	TodoReturn verifyUnlink();

	virtual void customSetup() = win 0x58b90;
	virtual TodoReturn layerHidden();
	virtual TodoReturn accountStatusChanged();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class AccountLayer : GJDropDownLayer, GJAccountDelegate, GJAccountBackupDelegate, GJAccountSyncDelegate, FLAlertLayerProtocol {
	// virtual ~AccountLayer();
	// AccountLayer() = win 0x571f0;

	static AccountLayer* create() = win 0x573e0;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn doBackup() = win 0x57dc0;
	TodoReturn doSync() = win 0x57f20;
	TodoReturn exitLayer();
	TodoReturn hideLoadingUI();
	void onBackup(cocos2d::CCObject* sender) = win 0x57c70;
	void onHelp(cocos2d::CCObject* sender);
	void onLogin(cocos2d::CCObject* sender) = win 0x57c20;
	void onMore(cocos2d::CCObject* sender) = win 0x58010;
	void onRegister(cocos2d::CCObject* sender);
	void onSync(cocos2d::CCObject* sender) = win 0x57e30;
	TodoReturn showLoadingUI();
	TodoReturn toggleUI(bool);
	TodoReturn updatePage(bool) = win 0x58060;

	virtual void customSetup() = win 0x575c0;
	virtual TodoReturn layerHidden() = win 0x589b0;
	virtual TodoReturn backupAccountFinished();
	virtual TodoReturn backupAccountFailed(BackupAccountError, int);
	virtual TodoReturn syncAccountFinished();
	virtual TodoReturn syncAccountFailed(BackupAccountError, int);
	virtual TodoReturn accountStatusChanged();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class AccountLoginLayer : FLAlertLayer, TextInputDelegate, GJAccountLoginDelegate, FLAlertLayerProtocol {
	// virtual ~AccountLoginLayer();

	static AccountLoginLayer* create(gd::string);

	TodoReturn createTextBackground(cocos2d::CCPoint, char const*, cocos2d::CCSize);
	TodoReturn createTextInput(cocos2d::CCPoint, cocos2d::CCSize, char const*, int);
	TodoReturn createTextLabel(cocos2d::CCPoint, char const*, cocos2d::CCSize);
	TodoReturn disableNodes();
	TodoReturn hideLoadingUI();
	bool init(gd::string) = win 0x55cb0;
	void onClose(cocos2d::CCObject* sender);
	void onForgotPassword(cocos2d::CCObject* sender) = win 0x56440;
	void onForgotUser(cocos2d::CCObject* sender) = win 0x56420;
	void onSubmit(cocos2d::CCObject* sender);
	TodoReturn resetLabel(int);
	TodoReturn resetLabels();
	TodoReturn showLoadingUI();
	TodoReturn toggleUI(bool);
	TodoReturn updateLabel(AccountError);

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn loginAccountFinished(int, int) = win 0x56680;
	virtual TodoReturn loginAccountFailed(AccountError);
}

[[link(android)]]
class AccountRegisterLayer : FLAlertLayer, TextInputDelegate, GJAccountRegisterDelegate, FLAlertLayerProtocol {
	// virtual ~AccountRegisterLayer();

	static AccountRegisterLayer* create();

	TodoReturn createTextBackground(cocos2d::CCPoint, cocos2d::CCSize);
	TodoReturn createTextInput(cocos2d::CCPoint, cocos2d::CCSize, gd::string, int);
	TodoReturn createTextLabel(cocos2d::CCPoint, gd::string, cocos2d::CCSize);
	TodoReturn disableNodes();
	TodoReturn hideLoadingUI();
	void onClose(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);
	TodoReturn resetLabel(int);
	TodoReturn resetLabels();
	TodoReturn showLoadingUI();
	TodoReturn toggleUI(bool);
	TodoReturn updateLabel(AccountError);
	TodoReturn validEmail(gd::string);
	TodoReturn validPassword(gd::string);
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
	virtual bool allowTextInput(CCTextInputNode*);
	virtual TodoReturn registerAccountFinished();
	virtual TodoReturn registerAccountFailed(AccountError);
}

[[link(android)]]
class AchievementBar : cocos2d::CCNodeRGBA {
	// virtual ~AchievementBar();

	static AchievementBar* create(char const* title, char const* desc, char const* icon, bool quest) = win 0x59720;

	bool init(char const* title, char const* desc, char const* icon, bool quest) = win 0x59800;
	TodoReturn show() = win 0x5a610;

	virtual void setOpacity(unsigned char);
}

[[link(android)]]
class AchievementCell : TableViewCell {
	// virtual ~AchievementCell();
	AchievementCell(char const*, float, float);

	TodoReturn loadFromDict(cocos2d::CCDictionary*) = win 0x7c730;
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class AchievementManager : cocos2d::CCNode {
	// virtual ~AchievementManager();

	static AchievementManager* sharedState() = win 0x9ac0;

	TodoReturn achievementForUnlock(int, UnlockType);
	TodoReturn addAchievement(gd::string, gd::string, gd::string, gd::string, gd::string, int) = win 0x9bc0;
	TodoReturn addManualAchievements() = win 0xf74a;
	TodoReturn areAchievementsEarned(cocos2d::CCArray*);
	TodoReturn checkAchFromUnlock(char const*);
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn getAchievementRewardDict();
	TodoReturn getAchievementsWithID(char const*);
	TodoReturn getAllAchievements();
	TodoReturn getAllAchievementsSorted(bool);
	bool isAchievementAvailable(gd::string);
	bool isAchievementEarned(char const*);
	TodoReturn limitForAchievement(gd::string);
	TodoReturn notifyAchievement(char const*, char const*, char const*);
	TodoReturn notifyAchievementWithID(char const*) = win 0x1b550;
	TodoReturn percentageForCount(int, int);
	TodoReturn percentForAchievement(char const*) = win 0x1ab50;
	TodoReturn reportAchievementWithID(char const*, int, bool) = win 0x1b7e0;
	TodoReturn reportPlatformAchievementWithID(char const*, int) = win 0x1b8f0;
	TodoReturn resetAchievement(char const*) = win 0x1b730;
	TodoReturn resetAchievements();
	TodoReturn setup();
	TodoReturn storeAchievementUnlocks();

	virtual bool init();
}

[[link(android)]]
class AchievementNotifier : cocos2d::CCNode {
	// virtual ~AchievementNotifier();

	static AchievementNotifier* sharedState();

	TodoReturn achievementDisplayFinished();
	TodoReturn notifyAchievement(char const* title, char const* desc, char const* icon, bool quest);
	TodoReturn showNextAchievement() = win 0x1c0a0;
	TodoReturn willSwitchToScene(cocos2d::CCScene*) = win 0x1c200;

	virtual bool init();
}

[[link(android)]]
class AchievementsLayer : GJDropDownLayer {
	// virtual ~AchievementsLayer();

	static AchievementsLayer* create() = win 0x5a9a0;

	TodoReturn loadPage(int) = win 0x5adc0;
	void onNextPage(cocos2d::CCObject* sender) = win 0x5b040;
	void onPrevPage(cocos2d::CCObject* sender) = win 0x5b050;
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	TodoReturn setupPageInfo(int, int, int);

	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void customSetup() = win 0x5aab0;
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

	static AdvancedFollowEditObject* create(char const*);

	bool init(char const*);

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class AdvancedFollowTriggerObject : EffectGameObject {
	// virtual ~AdvancedFollowTriggerObject();
	// AdvancedFollowTriggerObject();

	static AdvancedFollowTriggerObject* create(char const*);

	TodoReturn getAdvancedFollowID();
	bool init(char const*);

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
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
	bool init(int);
	TodoReturn playAnimation(int);
	TodoReturn setupAnimatedSize(int);
	TodoReturn setupChildSprites();
	TodoReturn updateChildSpriteColor(cocos2d::ccColor3B);
	TodoReturn updateObjectAnimation();

	virtual void setOpacity(unsigned char);
	virtual void setChildColor(cocos2d::ccColor3B const&);
	virtual TodoReturn resetObject();
	virtual TodoReturn activateObject();
	virtual void deactivateObject(bool);
	virtual void setObjectColor(cocos2d::ccColor3B const&);
	virtual TodoReturn animationFinished(char const*);
	virtual TodoReturn displayFrameChanged(cocos2d::CCObject*, gd::string);
}

[[link(android)]]
class AnimatedShopKeeper : CCAnimatedSprite {
	// virtual ~AnimatedShopKeeper();

	static AnimatedShopKeeper* create(ShopType) = win 0x21d880;

	bool init(ShopType) = win 0x21d920;
	TodoReturn playReactAnimation() = win 0x21da20;
	TodoReturn startAnimating() = win 0x21db40;

	virtual TodoReturn animationFinished(char const*) = win 0x21db80;
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

	TodoReturn bgScale();
	TodoReturn checkSound();
	TodoReturn hideLoadingCircle();
	TodoReturn loadingIsFinished();
	TodoReturn musicTest() = win 0x5b710;
	TodoReturn pauseGame() = win 0x5b5e0;
	TodoReturn pauseSound() = win 0x5b640;
	TodoReturn platformShutdown();
	TodoReturn resumeSound() = win 0x5b6c0;
	void setIdleTimerDisabled(bool);
	TodoReturn setupGLView();
	TodoReturn showLoadingCircle(bool, bool, bool);

	virtual bool applicationDidFinishLaunching() = win 0x5b320;
	virtual void applicationDidEnterBackground() = win 0x5b4f0;
	virtual void applicationWillEnterForeground() = win 0x5b530;
	virtual void applicationWillBecomeActive() = win 0x5b4d0;
	virtual void applicationWillResignActive();
	virtual void trySaveGame(bool) = win 0x5b790;
	virtual TodoReturn willSwitchToScene(cocos2d::CCScene*) = win 0x5b930;

	PAD = win 0x4, android32 0xC, android64 0x18;
	cocos2d::CCScene* m_runningScene;
}

[[link(android)]]
class ArtistCell : TableViewCell {
	// virtual ~ArtistCell();
	ArtistCell(char const*, float, float);

	TodoReturn loadFromObject(SongInfoObject*) = win 0x83eb0;
	void onNewgrounds(cocos2d::CCObject* sender);
	void onYouTube(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int) = win 0x80e10;

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class ArtTriggerGameObject : EffectGameObject {
	// virtual ~ArtTriggerGameObject();

	static ArtTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class AudioEffectsLayer : cocos2d::CCLayerColor {
	// virtual ~AudioEffectsLayer();

	static AudioEffectsLayer* create(gd::string);

	TodoReturn audioStep(float) = win 0x5beb0;
	TodoReturn getBGSquare();
	TodoReturn goingDown();
	bool init(gd::string);
	TodoReturn resetAudioVars();
	TodoReturn triggerEffect(float) = win 0x5bf70;

	virtual void draw();
	virtual void updateTweenAction(float, char const*);
}

[[link(android)]]
class AudioLineGuideGameObject : EffectGameObject {
	// virtual ~AudioLineGuideGameObject();

	static AudioLineGuideGameObject* create();

	virtual bool init();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class BitmapFontCache : cocos2d::CCObject {
	// virtual ~BitmapFontCache();

	static BitmapFontCache* sharedFontCache();

	TodoReturn fontWithConfigFile(char const*, float);
	bool init();
	TodoReturn purgeSharedFontCache();
}

[[link(android)]]
class BonusDropdown : cocos2d::CCNode {
	// virtual ~BonusDropdown();

	static BonusDropdown* create(gd::string, int);

	bool init(gd::string, int);
	TodoReturn show();
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
	bool init(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = win 0x1d400;
	TodoReturn lockList(bool);

	bool init(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
		return this->init(entries, nullptr, height, width, 0, type, 0.0f);
	}

	virtual void draw() {}
	virtual TodoReturn setupList(float) = win 0x1d5c0;
	virtual void TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual float cellHeightForRowAtIndexPath(CCIndexPath&, TableView*) = win 0x1d650;
	virtual void didSelectRowAtIndexPath(CCIndexPath&, TableView*) {}
	virtual int numberOfRowsInSection(unsigned, TableView*) = win 0x1d660;
	virtual unsigned int numberOfSectionsInTableView(TableView*) { return 1; }
	virtual TableViewCell* cellForRowAtIndexPath(CCIndexPath&, TableView*) = win 0x1d670;
	virtual void TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&) {}
	virtual void TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual TableViewCell* getListCell(char const*) = win 0x1d6d0;
	virtual TodoReturn loadCell(TableViewCell*, int) = win 0x1d7b0;

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
	TodoReturn getRelativePageForNum(int);
	TodoReturn getRelativePosForPage(int);
	TodoReturn getTotalPages();
	bool init(cocos2d::CCArray*, int, bool, cocos2d::CCArray*, DynamicScrollDelegate*);
	TodoReturn instantMoveToPage(int);
	TodoReturn moveToPage(int);
	TodoReturn moveToPageEnded();
	TodoReturn pageNumberForPosition(cocos2d::CCPoint);
	TodoReturn positionForPageWithNumber(int);
	TodoReturn quickUpdate();
	TodoReturn removePage(cocos2d::CCLayer*);
	TodoReturn removePageWithNumber(int);
	TodoReturn repositionPagesLooped();
	TodoReturn selectPage(int);
	void setDotScale(float);
	void setPagesIndicatorPosition(cocos2d::CCPoint);
	TodoReturn setupDynamicScrolling(cocos2d::CCArray*, DynamicScrollDelegate*);
	TodoReturn togglePageIndicators(bool);
	TodoReturn updateDots(float);
	TodoReturn updatePages();

	virtual void visit();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
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

	static BrowseSmartKeyLayer* create(GJSmartTemplate*, gd::string);

	TodoReturn addChanceToSelected(int, bool);
	TodoReturn createTemplateObjects();
	TodoReturn deletedSelectedItems();
	TodoReturn getAllSelectedBlocks();
	bool init(GJSmartTemplate*, gd::string);
	void onButton(cocos2d::CCObject* sender);
	void onPrefabObject(cocos2d::CCObject* sender);
	TodoReturn updateChanceValues();

	virtual void onBack(cocos2d::CCObject* sender);
}

[[link(android)]]
class BrowseSmartTemplateLayer : FLAlertLayer {
	// virtual ~BrowseSmartTemplateLayer();

	static BrowseSmartTemplateLayer* create(GJSmartTemplate*, SmartBrowseFilter);

	TodoReturn addObjectToPage(cocos2d::CCObject*, int);
	TodoReturn addPrefabMenuItem(SmartPrefabResult, int);
	TodoReturn baseSetup();
	TodoReturn createDots();
	TodoReturn createPrefab(gd::string, int);
	TodoReturn goToPage(int);
	bool init(GJSmartTemplate*, SmartBrowseFilter);
	void onClick(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onTemplateObject(cocos2d::CCObject* sender);
	TodoReturn updateDots();

	virtual void keyBackClicked();
	virtual void onBack(cocos2d::CCObject* sender);
}

[[link(android)]]
class ButtonPage : cocos2d::CCLayer {
	// virtual ~ButtonPage();

	static ButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint, int, float);

	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, float);
}

[[link(android)]]
class ButtonSprite : cocos2d::CCSprite {
	// virtual ~ButtonSprite();
	// ButtonSprite() = win 0x1fa30;

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
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*, float) = win 0x1feb0;
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*);
	static ButtonSprite* create(char const*, int, int, float, bool);
	static ButtonSprite* create(cocos2d::CCSprite* topSprite, int width, int unused, float height, float, bool, char const* bgSprite, bool noScaleSpriteForBG) = win 0x1fb90;
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool);
	static ButtonSprite* create(cocos2d::CCSprite*);

	bool init(char const*, int, int, float, bool, char const*, char const*, float) = win 0x1ff80;
	bool init(cocos2d::CCSprite* topSprite, int width, int unused, float scale, float height, bool unkBool, char const* bgSprite, bool useNormalCCSpriteForBG) = win 0x1fc60;
	void setColor(cocos2d::ccColor3B) = win 0x20b20;
	void setString(char const*) = win 0x20770;
	TodoReturn updateBGImage(char const*) = win 0x20230;
	void updateSpriteBGSize() = win 0x20340;
	TodoReturn updateSpriteOffset(cocos2d::CCPoint);

    PAD = mac 0x18, win 0x18;
    cocos2d::CCLabelBMFont* m_label;
    cocos2d::CCSprite* m_subSprite;
    cocos2d::CCSprite* m_subBGSprite;
    cocos2d::extension::CCScale9Sprite* m_BGSprite;
    PAD = mac 0xC, win 0x8;
    cocos2d::CCPoint m_spritePosition;
}

[[link(android)]]
class CameraTriggerGameObject : EffectGameObject {
	// virtual ~CameraTriggerGameObject();

	static CameraTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
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

	TodoReturn cleanupSprite() = win 0x21440;
	TodoReturn createWithType(char const*, cocos2d::CCTexture2D*, bool) = win 0x20c80;
	TodoReturn initWithType(char const*, cocos2d::CCTexture2D*, bool) = win 0x20d20;
	TodoReturn loadType(char const*, cocos2d::CCTexture2D*, bool) = win 0x20ec0;
	TodoReturn runAnimation(gd::string) = win 0x21640;
	TodoReturn runAnimationForced(gd::string) = win 0x216c0;
	TodoReturn stopTween();
	TodoReturn switchToMode(spriteMode) = win 0x214f0;
	TodoReturn tweenToAnimation(gd::string, float) = win 0x21750;
	TodoReturn tweenToAnimationFinished() = win 0x219c0;
	TodoReturn willPlayAnimation();

	virtual void setOpacity(unsigned char);
	virtual void setColor(cocos2d::ccColor3B const&);
	virtual TodoReturn animationFinished(char const*);
	virtual TodoReturn animationFinishedO(cocos2d::CCObject*);
}

[[link(android)]]
class CCAnimateFrameCache : cocos2d::CCObject {
	// virtual ~CCAnimateFrameCache();

	static CCAnimateFrameCache* sharedSpriteFrameCache();

	TodoReturn addCustomSpriteFramesWithFile(char const*);
	TodoReturn addDict(cocos2d::CCDictionary*, char const*);
	TodoReturn addDict(DS_Dictionary*, char const*);
	TodoReturn addSpriteFramesWithFile(char const*);
	bool init();
	TodoReturn purgeSharedSpriteFrameCache();
	TodoReturn removeSpriteFrames();
	TodoReturn spriteFrameByName(char const*);
}

[[link(android)]]
class CCBlockLayer : cocos2d::CCLayerColor {
	// virtual ~CCBlockLayer();

	static CCBlockLayer* create();

	TodoReturn decrementForcePrio();
	TodoReturn incrementForcePrio();

	virtual bool init() = win 0x22f00;
	virtual void draw() = win 0x230a0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void customSetup();
	virtual TodoReturn enterLayer();
	virtual TodoReturn exitLayer();
	virtual TodoReturn showLayer(bool);
	virtual TodoReturn hideLayer(bool);
	virtual TodoReturn layerVisible();
	virtual TodoReturn layerHidden();
	virtual TodoReturn enterAnimFinished();
	virtual TodoReturn disableUI();
	virtual TodoReturn enableUI();

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
	// CCCircleWave() = win 0x230e0;

	static CCCircleWave* create(float, float, float, bool, bool) = win 0x23220;
	static CCCircleWave* create(float, float, float, bool);

	TodoReturn baseSetup(float);
	TodoReturn followObject(cocos2d::CCNode*, bool);
	bool init(float, float, float, bool, bool) = win 0x232f0;
	TodoReturn updatePosition(float);

	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void removeMeAndCleanup();
	virtual void draw();
	virtual void updateTweenAction(float, char const*);

	PAD = win 0x11;
	cocos2d::ccColor3B m_color;
}

[[link(android)]]
class CCCircleWaveDelegate {
	virtual TodoReturn circleWaveWillBeRemoved(CCCircleWave*);
}

[[link(android)]]
class CCContentLayer : cocos2d::CCLayerColor {
	inline CCContentLayer() {}
	~CCContentLayer();

	static CCContentLayer* create(cocos2d::ccColor4B const&, float, float);

	virtual void setPosition(cocos2d::CCPoint const&) = win 0x23b20;
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

	static CCCounterLabel* create(int, char const*, FormatterType);

	TodoReturn calculateStepSize(int);
	TodoReturn disableCounter();
	TodoReturn enableCounter();
	TodoReturn fastUpdateCounter();
	TodoReturn getTargetCount();
	bool init(int, char const*, FormatterType);
	void setTargetCount(int) = win 0x23e20;
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
	TodoReturn fadeAndRemove();
	TodoReturn playEffect(cocos2d::CCPoint, cocos2d::ccColor3B, float, float, float, float, float, float, float, float, float, float, float, float, float, float, int, bool, bool, float);
	TodoReturn removeLights();
	TodoReturn showFlash();

	virtual bool init();
}

[[link(android)]]
class CCLightStrip : cocos2d::CCNode {
	// virtual ~CCLightStrip();

	static CCLightStrip* create(float, float, float, float, float);

	bool init(float, float, float, float, float);

	virtual void draw();
	virtual void updateTweenAction(float, char const*);
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

	static CCMenuItemSpriteExtra* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = win 0x25830;

	static CCMenuItemSpriteExtra* create(cocos2d::CCNode* sprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) {
		return CCMenuItemSpriteExtra::create(sprite, nullptr, target, callback);
	}

	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = win 0x258f0;
	inline void setSizeMult(float mult) {
		//inlined on windows, member is in CCMenuItemSprite
		m_scaleMultiplier = mult;
	}
	TodoReturn useAnimationType(MenuAnimationType);

	virtual void activate() = win 0x259d0;
	virtual void selected() = win 0x25aa0;
	virtual void unselected() = win 0x25c80;

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

	static CCMenuItemToggler* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = win 0x25e50;
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

	TodoReturn activeItem();
	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = win 0x25f30;
	TodoReturn normalTouch(cocos2d::CCObject*);
	TodoReturn selectedTouch(cocos2d::CCObject*);
	void setSizeMult(float mult) {
		m_offButton->setSizeMult(mult);
		m_onButton->setSizeMult(mult);

		this->toggle(this->m_toggled);
	}
	void toggle(bool) = win 0x261e0;

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

	virtual void activate() = win 0x26100;
	virtual void selected() = win 0x260d0;
	virtual void unselected() = win 0x26130;
	virtual void setEnabled(bool) = win 0x26160;

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
	virtual void visit();
}

[[link(android)]]
class CCPartAnimSprite : cocos2d::CCSprite {
	// virtual ~CCPartAnimSprite();

	TodoReturn changeTextureOfID(char const*, char const*);
	TodoReturn countParts();
	TodoReturn createWithAnimDesc(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn dirtify();
	TodoReturn getSpriteForKey(char const*);
	TodoReturn initWithAnimDesc(char const*, cocos2d::CCTexture2D*, bool);
	void setColor(cocos2d::ccColor3B) = win 0x27270;
	void setFlipX(bool);
	void setFlipY(bool);
	TodoReturn transformSprite(SpriteDescription*);
	TodoReturn tweenSpriteTo(SpriteDescription*, float);
	TodoReturn tweenToFrame(cocos2d::CCSpriteFrame*, float);

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
class CCScrollLayerExt : cocos2d::CCLayer {
	// virtual ~CCScrollLayerExt();
	CCScrollLayerExt(cocos2d::CCRect) = win 0x276e0;

	TodoReturn constraintContent();
	TodoReturn doConstraintContent(bool);
	TodoReturn getMaxY();
	TodoReturn getMinY();
	TodoReturn moveToTop() = win 0x27b60;
	TodoReturn moveToTopWithOffset(float) = win 0x27ae0;
	TodoReturn scrollingEnd();
	TodoReturn scrollLayer(float) = win 0x28550;
	void setContentLayerSize(cocos2d::CCSize);
	void setContentOffset(cocos2d::CCPoint, bool);
	TodoReturn updateIndicators(float);

	virtual void visit() = win 0x28600;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x280d0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x28410;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x281c0;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x283e0;
	virtual void registerWithTouchDispatcher() = win 0x280a0;
	virtual TodoReturn preVisitWithClippingRect(cocos2d::CCRect) = win 0x286d0;
	virtual TodoReturn postVisit() = win 0x28760;

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

	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(char const*);

	virtual void setOpacity(unsigned char);
}

[[link(android)]]
class CCSpriteGrayscale : CCSpriteWithHue {
	// virtual ~CCSpriteGrayscale();

	static CCSpriteGrayscale* create(gd::string const&, cocos2d::CCRect const&);
	static CCSpriteGrayscale* create(gd::string const&);

	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(gd::string const&);
	TodoReturn createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
	TodoReturn createWithTexture(cocos2d::CCTexture2D*);

	virtual TodoReturn getShaderName();
	virtual TodoReturn shaderBody();
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

	virtual void setVisible(bool);
}

[[link(android)]]
class CCSpritePlus : cocos2d::CCSprite {
	// virtual ~CCSpritePlus();

	TodoReturn addFollower(cocos2d::CCNode*);
	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(char const*);
	TodoReturn followSprite(CCSpritePlus*);
	TodoReturn getFollower();
	TodoReturn removeFollower(cocos2d::CCNode*);
	TodoReturn stopFollow();

	virtual void setScaleX(float) = win 0x28c10;
	virtual void setScaleY(float) = win 0x28c90;
	virtual void setScale(float) = win 0x28d10;
	virtual void setPosition(cocos2d::CCPoint const&) = win 0x288f0;
	virtual void setRotation(float) = win 0x28950;
	virtual void setRotationX(float);
	virtual void setRotationY(float);
	virtual bool initWithTexture(cocos2d::CCTexture2D*);
	virtual bool initWithSpriteFrameName(char const*) = win 0x288b0;
	virtual void setFlipX(bool);
	virtual void setFlipY(bool);

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
	TodoReturn getUniformLocations();
	TodoReturn initShader();
	void setCustomLuminance(float, float, float);
	void setEvenLuminance(float);
	void setHue(float);
	void setHueDegrees(float);
	void setLuminance(float);
	TodoReturn setupDefaultSettings();
	TodoReturn updateColorMatrix();
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
		m_unknown3 = false;
		m_usePasswordChar = false;
		m_forceOffset = false;
		m_textArea = nullptr;
	}

	static CCTextInputNode* create(float, float, char const*, char const*, int, char const*) = win 0x2e440;

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

	void addTextArea(TextArea*) = win 0x2e6d0;
	TodoReturn forceOffset();
	gd::string getString() {
		return m_textField->getString();
	}
	bool init(float, float, char const*, char const*, int, char const*) = win 0x2e500;
	TodoReturn refreshLabel() = win 0x2ede0;
	void setLabelNormalColor(cocos2d::ccColor3B color) {
        m_textColor = color;
        this->refreshLabel();
    }
	void setString(gd::string) = win 0x2e9a0;
	TodoReturn updateBlinkLabel();
	TodoReturn updateBlinkLabelToChar(int);
	TodoReturn updateCursorPosition(cocos2d::CCPoint, cocos2d::CCRect) = win 0x2ff50;
	void updateDefaultFontValues(gd::string) = win 0x2e7a0;
	TodoReturn updateLabel(gd::string) = win 0x2eac0;

	virtual void visit() = win 0x2e930;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x304f0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
	virtual void registerWithTouchDispatcher() = win 0x306d0;
	virtual TodoReturn textChanged() = win 0x2f630;
	virtual TodoReturn onClickTrackNode(bool) = win 0x2f600;
	virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&) = win 0x2f4d0;
	virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&) = win 0x2f5a0;
	virtual bool onTextFieldInsertText(cocos2d::CCTextFieldTTF*, char const*, int, cocos2d::enumKeyCodes) = win 0x2f6b0;
	virtual bool onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF*) = win 0x2fa30;
	virtual bool onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF*) = win 0x2fd50;

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
	bool m_unknown3;
	bool m_usePasswordChar;
	bool m_forceOffset;
	TextArea* m_textArea;
	PAD = android32 0xc, android64 0x10;
}

[[link(android)]]
class CCURLObject : cocos2d::CCObject {
	// virtual ~CCURLObject();

	static CCURLObject* create(gd::string, gd::string);

	bool init(gd::string, gd::string);
}

[[link(android)]]
class ChallengeNode : cocos2d::CCNode {
	// virtual ~ChallengeNode();

	static ChallengeNode* create(GJChallengeItem*, ChallengesPage*, bool) = win 0x5da50;

	bool init(GJChallengeItem*, ChallengesPage*, bool) = win 0x5db30;
	void onClaimReward(cocos2d::CCObject* sender);
	TodoReturn updateTimeLabel(gd::string);
}

[[link(android)]]
class ChallengesPage : FLAlertLayer, FLAlertLayerProtocol, GJChallengeDelegate, CurrencyRewardDelegate {
	// virtual ~ChallengesPage();

	static ChallengesPage* create() = win 0x5c4c0;

	TodoReturn claimItem(ChallengeNode*, GJChallengeItem*, cocos2d::CCPoint);
	TodoReturn createChallengeNode(int, bool, float, bool) = win 0x5d190;
	TodoReturn exitNodeAtSlot(int, float);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn tryGetChallenges();
	TodoReturn updateDots();
	callback void updateTimers(float);

	virtual bool init() = win 0x5c560;
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void show();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn challengeStatusFinished();
	virtual TodoReturn challengeStatusFailed();
	virtual TodoReturn currencyWillExit(CurrencyRewardLayer*);
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
	virtual TodoReturn playerColorChanged();
	virtual TodoReturn showUnlockPopup(int, UnlockType);
}

[[link(android)]]
class CharacterColorPage : FLAlertLayer {
	// virtual ~CharacterColorPage();

	static CharacterColorPage* create() = win 0x5e9b0;

	TodoReturn activeColorForMode(int);
	TodoReturn checkColor(int, UnlockType);
	TodoReturn colorForIndex(int);
	TodoReturn createColorMenu() = win 0x5f630;
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn offsetForIndex(int);
	void onClose(cocos2d::CCObject* sender) = win 0x608A0;
	void onMode(cocos2d::CCObject* sender);
	void onPlayerColor(cocos2d::CCObject* sender);
	TodoReturn toggleGlow(cocos2d::CCObject*);
	TodoReturn toggleGlowItems(bool);
	TodoReturn toggleShip(cocos2d::CCObject*);
	TodoReturn updateColorMode(int) = win 0x5fc60;
	TodoReturn updateIconColors() = win 0x60700;

	virtual bool init() = win 0x5ea50;
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void show();
}

[[link(android)]]
class CheckpointGameObject : EffectGameObject {
	// virtual ~CheckpointGameObject();

	static CheckpointGameObject* create();

	TodoReturn resetCheckpoint();
	TodoReturn updateCheckpointSpriteVisibility();

	virtual bool init();
	virtual TodoReturn setupCustomSprites(gd::string);
	virtual TodoReturn resetObject();
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
	virtual TodoReturn triggerActivated(float);
	virtual TodoReturn restoreObject();
	virtual TodoReturn updateSyncedAnimation(float, int);
}

[[link(android)]]
class CheckpointObject : cocos2d::CCNode {
	// virtual ~CheckpointObject();
	// CheckpointObject() = win 0x2db9f0;

	static CheckpointObject* create() = win 0x2eb9a0;

	TodoReturn getObject();
	void setObject(GameObject*);

	virtual bool init() = win 0x52e00;
}

[[link(android)]]
class CollisionBlockPopup : FLAlertLayer, TextInputDelegate {
	// virtual ~CollisionBlockPopup();

	static CollisionBlockPopup* create(EffectGameObject*, cocos2d::CCArray*);

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn determineStartValues();
	bool init(EffectGameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	void onDynamicBlock(cocos2d::CCObject* sender);
	void onItemIDArrow(cocos2d::CCObject* sender);
	void onNextItemID(cocos2d::CCObject* sender);
	TodoReturn updateEditorLabel();
	TodoReturn updateItemID();
	TodoReturn updateTextInputLabel();

	virtual void keyBackClicked();
	virtual void show();
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual TodoReturn textInputReturn(CCTextInputNode*);
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
	bool isInUse() = win 0x1d8fa0;
	void loadFromState(CAState&) = win 0x1d9090;
	TodoReturn resetAction();
	void saveToState(CAState&) = win 0x1d8ff0;
	TodoReturn setupFromMap(gd::map<gd::string, gd::string>&) = win 0x1d9a30;
	TodoReturn setupFromString(gd::string) = win 0x1d9950;
	TodoReturn step(float);
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

	static ColorActionSprite* create() = win 0x1d8bf0;

	virtual bool init();
}

[[link(android)]]
class ColorChannelSprite : cocos2d::CCSprite {
	// virtual ~ColorChannelSprite();

	static ColorChannelSprite* create() = win 0x1d85c0;

	TodoReturn updateBlending(bool) = win 0x1d8990;
	TodoReturn updateCopyLabel(int, bool) = win 0x1d86c0;
	TodoReturn updateOpacity(float) = win 0x1d8840;
	TodoReturn updateValues(ColorAction*) = win 0x1d8a80;

	virtual bool init();
}

[[link(android)]]
class ColorSelectDelegate {
	virtual void colorSelectClosed(cocos2d::CCNode*);
}

[[link(android)]]
class ColorSelectLiveOverlay : FLAlertLayer {
	// virtual ~ColorSelectLiveOverlay();

	static ColorSelectLiveOverlay* create(ColorAction*, ColorAction*, EffectGameObject*);

	TodoReturn closeColorSelect(cocos2d::CCObject*);
	TodoReturn colorValueChanged(cocos2d::ccColor3B);
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn createWithActions(ColorAction*, ColorAction*);
	TodoReturn createWithObject(EffectGameObject*);
	TodoReturn determineStartValues();
	TodoReturn getColorValue();
	bool init(ColorAction*, ColorAction*, EffectGameObject*) = win 0x61bd0;
	void onSelectTab(cocos2d::CCObject* sender);
	TodoReturn selectColor(cocos2d::ccColor3B);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn toggleControls(bool);
	TodoReturn updateColorLabel();
	TodoReturn updateColorValue();
	TodoReturn updateOpacity();

	virtual void keyBackClicked();
	virtual void show();

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
	static ColorSelectPopup* create(EffectGameObject*, cocos2d::CCArray*, ColorAction*) = win 0x63a10;
	static ColorSelectPopup* create(EffectGameObject*, cocos2d::CCArray*);

	TodoReturn closeColorSelect(cocos2d::CCObject*) = win 0x66b30;
	TodoReturn colorToHex(cocos2d::ccColor3B);
	TodoReturn getColorValue();
	TodoReturn hexToColor(gd::string);
	bool init(EffectGameObject*, cocos2d::CCArray*, ColorAction*) = win 0x63ac0;
	void onCopy(cocos2d::CCObject* sender);
	void onCopyOpacity(cocos2d::CCObject* sender);
	void onDefault(cocos2d::CCObject* sender);
	void onHSVLegacyMode(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onPlayerColor1(cocos2d::CCObject* sender);
	void onPlayerColor2(cocos2d::CCObject* sender);
	void onSelectSpecialColor(cocos2d::CCObject* sender);
	void onTintGround(cocos2d::CCObject* sender);
	void onToggleHSVMode(cocos2d::CCObject* sender);
	void onToggleTintMode(cocos2d::CCObject* sender);
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
	TodoReturn updateOpacity();
	TodoReturn updateOpacityLabel();
	TodoReturn updateTextInputLabel();

	virtual void show();
	virtual TodoReturn determineStartValues();
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn colorValueChanged(cocos2d::ccColor3B);
	virtual TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);

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

	TodoReturn incrementDislikes();
	TodoReturn incrementLikes();
	void loadFromComment(GJComment*) = win 0x84490;
	void onConfirmDelete(cocos2d::CCObject* sender) = win 0x862c0;
	TodoReturn onDelete() = win 0x86360;
	void onGoToLevel(cocos2d::CCObject* sender);
	void onLike(cocos2d::CCObject* sender) = win 0x86110;
	TodoReturn onUndelete();
	void onUnhide(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int) = win 0x86090;
	TodoReturn updateLabelValues() = win 0x86240;

	virtual bool init();
	virtual void draw() = win 0x7d5b0;
	virtual TodoReturn likedItem(LikeItemType, int, bool) = win 0x861f0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = win 0x863d0;

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

	static CommunityCreditNode* create(int, int, int, gd::string);

	bool init(int, int, int, gd::string);
}

[[link(android)]]
class CommunityCreditsPage : FLAlertLayer {
	// virtual ~CommunityCreditsPage();

	static CommunityCreditsPage* create();

	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn goToPage(int);
	void onClose(cocos2d::CCObject* sender);
	void onSwitchPage(cocos2d::CCObject* sender);

	virtual bool init() = win 0x68b10;
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void show();
}

[[link(android)]]
class ConfigureHSVWidget : cocos2d::CCNode, TextInputDelegate {
	// virtual ~ConfigureHSVWidget();

	static ConfigureHSVWidget* create(cocos2d::ccHSVValue, bool, bool);

	TodoReturn createTextInputNode(cocos2d::CCPoint, int);
	TodoReturn getHSV(GameObject*, cocos2d::CCArray*, int) = win 0x6c320;
	bool init(cocos2d::ccHSVValue, bool, bool);
	TodoReturn onClose();
	void onResetHSV(cocos2d::CCObject* sender);
	void onToggleSConst(cocos2d::CCObject* sender);
	void onToggleVConst(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateLabels();
	TodoReturn updateSliders();

	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class ConfigureValuePopup : FLAlertLayer, TextInputDelegate {
	// virtual ~ConfigureValuePopup();

	static ConfigureValuePopup* create(ConfigureValuePopupDelegate*, float, float, float, gd::string, gd::string);

	bool init(ConfigureValuePopupDelegate*, float, float, float, gd::string, gd::string);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateTextInputLabel();

	virtual void keyBackClicked();
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
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

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class CreateGuidelinesLayer : FLAlertLayer, FLAlertLayerProtocol {
	// virtual ~CreateGuidelinesLayer();

	static CreateGuidelinesLayer* create(CustomSongDelegate*, AudioGuidelinesType);

	TodoReturn doClearGuidelines();
	TodoReturn getMergedRecordString(gd::string, gd::string);
	bool init(CustomSongDelegate*, AudioGuidelinesType);
	void onClearGuidelines(cocos2d::CCObject* sender);
	void onStop(cocos2d::CCObject* sender);
	TodoReturn toggleItems(bool);

	virtual void update(float);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void onClose(cocos2d::CCObject* sender);
	virtual void keyUp(cocos2d::enumKeyCodes);
	virtual TodoReturn playMusic();
	virtual TodoReturn registerTouch();
	virtual void onInfo(cocos2d::CCObject* sender);
	virtual void onRecord(cocos2d::CCObject* sender);
	virtual TodoReturn recordingDidStop();
}

[[link(android)]]
class CreateMenuItem : CCMenuItemSpriteExtra {
	// virtual ~CreateMenuItem();

	static CreateMenuItem* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = win 0xddb80;

	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = win 0x258f0;
}

[[link(android)]]
class CreateParticlePopup : FLAlertLayer, TextInputDelegate, ColorSelectDelegate, SliderDelegate {
	// virtual ~CreateParticlePopup();

	static CreateParticlePopup* create(gd::string);
	static CreateParticlePopup* create(ParticleGameObject*, cocos2d::CCArray*, gd::string);
	static CreateParticlePopup* create(ParticleGameObject*, cocos2d::CCArray*);

	TodoReturn centerAlignParticle(cocos2d::CCObject*);
	TodoReturn createParticleSlider(gjParticleValue, int, bool, cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn getPage(int);
	TodoReturn getPageButton(int);
	TodoReturn getPageContainer(int);
	TodoReturn getPageInputNodes(int);
	TodoReturn getPageMenu(int);
	TodoReturn getPageSliders(int);
	bool init(ParticleGameObject*, cocos2d::CCArray*, gd::string) = win 0x338190;
	TodoReturn maxSliderValueForType(gjParticleValue);
	TodoReturn minSliderValueForType(gjParticleValue);
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
	TodoReturn titleForParticleValue(gjParticleValue);
	TodoReturn toggleGravityMode(bool);
	TodoReturn updateColorSprite(int);
	TodoReturn updateInputNodeStringForType(gjParticleValue);
	TodoReturn updateParticleValueForType(float, gjParticleValue, cocos2d::CCParticleSystemQuad*);
	TodoReturn updateSliderForType(gjParticleValue);
	TodoReturn valueForParticleValue(gjParticleValue);
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
class CreatorLayer : cocos2d::CCLayer, cocos2d::CCSceneTransitionDelegate, DialogDelegate {
	// virtual ~CreatorLayer();

	static CreatorLayer* create() = win 0x6f4b0;

	TodoReturn canPlayOnlineLevels();
	TodoReturn checkQuestsStatus() = win 0x71550;
	void onAdventureMap(cocos2d::CCObject* sender) = win 0x70b80;
	void onBack(cocos2d::CCObject* sender) = win 0x71720;
	void onChallenge(cocos2d::CCObject* sender) = win 0x70dd0;
	void onDailyLevel(cocos2d::CCObject* sender) = win 0x70bc0;
	void onEventLevel(cocos2d::CCObject* sender) = win 0x70c00;
	void onFameLevels(cocos2d::CCObject* sender);
	void onFeaturedLevels(cocos2d::CCObject* sender) = win 0x70580;
	void onGauntlets(cocos2d::CCObject* sender) = win 0x70790;
	void onLeaderboards(cocos2d::CCObject* sender) = win 0x70520;
	void onMapPacks(cocos2d::CCObject* sender) = win 0x70710;
	void onMultiplayer(cocos2d::CCObject* sender) = win 0x707f0;
	void onMyLevels(cocos2d::CCObject* sender) = win 0x70350;
	void onOnlineLevels(cocos2d::CCObject* sender) = win 0x706a0;
	void onOnlyFullVersion(cocos2d::CCObject* sender);
	void onPaths(cocos2d::CCObject* sender) = win 0x70600;
	void onSavedLevels(cocos2d::CCObject* sender) = win 0x70440;
	void onSecretVault(cocos2d::CCObject* sender) = win 0x70e00;
	void onTopLists(cocos2d::CCObject* sender) = win 0x70620;
	void onTreasureRoom(cocos2d::CCObject* sender) = win 0x71110;
	void onWeeklyLevel(cocos2d::CCObject* sender) = win 0x70be0;
	TodoReturn scene() = win 0x6f460;

	virtual bool init() = win 0x6f550;
	virtual void keyBackClicked();
	virtual void sceneWillResume();
	virtual TodoReturn dialogClosed(DialogLayer*) = win 0x71690;
}

[[link(android)]]
class CurrencyRewardDelegate {
	virtual TodoReturn currencyWillExit(CurrencyRewardLayer*);
}

[[link(android)]]
class CurrencyRewardLayer : cocos2d::CCLayer {
	// virtual ~CurrencyRewardLayer();
	// CurrencyRewardLayer() = win 0x71880;

	static CurrencyRewardLayer* create(int, int, int, int, CurrencySpriteType, int, CurrencySpriteType, int, cocos2d::CCPoint, CurrencyRewardType, float, float) = win 0x71c40;

	TodoReturn createObjects(CurrencySpriteType, int, cocos2d::CCPoint, float);
	TodoReturn createObjectsFull(CurrencySpriteType, int, cocos2d::CCSprite*, cocos2d::CCPoint, float);
	TodoReturn createUnlockObject(cocos2d::CCSprite*, cocos2d::CCPoint, float);
	TodoReturn incrementCount(int);
	TodoReturn incrementDiamondsCount(int);
	TodoReturn incrementMoonsCount(int);
	TodoReturn incrementSpecialCount1(int);
	TodoReturn incrementSpecialCount2(int);
	TodoReturn incrementStarsCount(int);
	bool init(int, int, int, int, CurrencySpriteType, int, CurrencySpriteType, int, cocos2d::CCPoint, CurrencyRewardType, float, float) = win 0x71d30;
	TodoReturn pulseSprite(cocos2d::CCSprite*);

	virtual void update(float) = win 0x744c0;
}

[[link(android)]]
class CurrencySprite : CCSpritePlus {
	// virtual ~CurrencySprite();
	// CurrencySprite();

	static CurrencySprite* create(CurrencySpriteType, bool);

	TodoReturn createWithSprite(cocos2d::CCSprite*);
	bool init(CurrencySpriteType, bool);
	TodoReturn initWithSprite(cocos2d::CCSprite*);
	TodoReturn rewardToSpriteType(int);
	TodoReturn spriteTypeToStat(CurrencySpriteType);
}

[[link(android)]]
class CustomizeObjectLayer : FLAlertLayer, TextInputDelegate, HSVWidgetDelegate, ColorSelectDelegate, ColorSetupDelegate {
	// virtual ~CustomizeObjectLayer();

	static CustomizeObjectLayer* create(GameObject*, cocos2d::CCArray*) = win 0x763f0;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn determineStartValues();
	int getActiveMode(bool) = win 0x79a00;
	TodoReturn getButtonByTag(int);
	TodoReturn getHSV();
	void highlightSelected(ButtonSprite*) = win 0x7a1b0;
	bool init(GameObject*, cocos2d::CCArray*) = win 0x764a0;
	void onBreakApart(cocos2d::CCObject* sender);
	void onBrowse(cocos2d::CCObject* sender);
	void onClear(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = win 0x7a2a0;
	void onCopy(cocos2d::CCObject* sender);
	void onEditColor(cocos2d::CCObject* sender);
	void onHSV(cocos2d::CCObject* sender);
	void onLiveEdit(cocos2d::CCObject* sender);
	void onNextColorChannel(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onSelectColor(cocos2d::CCObject* sender) = win 0x79fa0;
	void onSelectMode(cocos2d::CCObject* sender) = win 0x79550;
	void onSettings(cocos2d::CCObject* sender);
	void onUpdateCustomColor(cocos2d::CCObject* sender) = win 0x79af0;
	TodoReturn recreateLayer();
	void sliderChanged(cocos2d::CCObject*) = win 0x78930;
	void toggleVisible() = win 0x79780;
	void updateChannelLabel(int) = win 0x79720;
	void updateColorSprite() = win 0x78d40;
	void updateCurrentSelection();
	void updateCustomColorLabels() = win 0x79ec0;
	void updateHSVButtons() = win 0x79050;
	void updateKerningLabel() = win 0x787e0;
	void updateSelected(int) = win 0x7a040;

	virtual void keyBackClicked();
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual void textChanged(CCTextInputNode*) = win 0x79cf0;
	virtual TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue);
	virtual void colorSelectClosed(cocos2d::CCNode*) = win 0x78e60;
	virtual void colorSetupClosed(int) = win 0x78c30;

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
    bool m_showTextInput;
    bool m_customColorSelected;
}

[[link(android)]]
class CustomizeObjectSettingsPopup : SetupTriggerPopup {
	// virtual ~CustomizeObjectSettingsPopup();

	static CustomizeObjectSettingsPopup* create(GameObject*, cocos2d::CCArray*, CustomizeObjectLayer*) = win 0x7a340;

	bool init(GameObject*, cocos2d::CCArray*, CustomizeObjectLayer*) = win 0x7a3f0;

	virtual void onClose(cocos2d::CCObject* sender);
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class CustomListView : BoomListView {
	inline CustomListView() {}
	~CustomListView() {}

	static CustomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = win 0x7ad30;

	static CustomListView* create(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
		return CustomListView::create(entries, nullptr, width, height, 0, type, 0.0f);
	}

	TodoReturn getCellHeight(BoomListType);
	TodoReturn reloadAll() = win 0x7c300;

	virtual TodoReturn setupList(float) = win 0x7bbc0;
	virtual TableViewCell* getListCell(char const*);
	virtual TodoReturn loadCell(TableViewCell*, int) = win 0x7b780;

	int m_unknown;
}

[[link(android)]]
class CustomMusicCell : CustomSongCell {
	// virtual ~CustomMusicCell();
	CustomMusicCell(char const*, float, float);

	TodoReturn loadFromObject(SongInfoObject*) = win 0x838a0;
	TodoReturn updateBGColor(int);
}

[[link(android)]]
class CustomSFXCell : TableViewCell, CustomSFXDelegate {
	// virtual ~CustomSFXCell();
	CustomSFXCell(char const*, float, float);

	TodoReturn loadFromObject(SFXInfoObject*) = win 0x83670;
	TodoReturn shouldReload();
	TodoReturn updateBGColor(int) = win 0x83760;

	virtual bool init();
	virtual void draw();
	virtual TodoReturn sfxObjectSelected(SFXInfoObject*);
	virtual TodoReturn getActiveSFXID();
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

	static CustomSFXWidget* create(SFXInfoObject*, CustomSFXDelegate*, bool, bool, bool, bool, bool);

	TodoReturn deleteSFX();
	TodoReturn downloadFailed();
	TodoReturn hideLoadingArt();
	bool init(SFXInfoObject*, CustomSFXDelegate*, bool, bool, bool, bool, bool);
	void onCancelDownload(cocos2d::CCObject* sender);
	void onDelete(cocos2d::CCObject* sender);
	void onDownload(cocos2d::CCObject* sender);
	void onPlayback(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);
	TodoReturn showLoadingArt();
	TodoReturn startDownload();
	TodoReturn startMonitorDownload();
	TodoReturn updateDownloadProgress(float);
	TodoReturn updateError(GJSongError);
	TodoReturn updateLengthMod(float);
	TodoReturn updatePlaybackBtn();
	TodoReturn updateProgressBar(int);
	TodoReturn updateSFXInfo();
	TodoReturn updateSFXObject(SFXInfoObject*);
	TodoReturn verifySFXID(int);

	virtual TodoReturn downloadSFXFinished(int);
	virtual TodoReturn downloadSFXFailed(int, GJSongError);
	virtual TodoReturn songStateChanged();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class CustomSongCell : TableViewCell, CustomSongDelegate {
	// virtual ~CustomSongCell();
	CustomSongCell(char const*, float, float);

	TodoReturn loadFromObject(SongInfoObject*) = win 0x831a0;
	void onDelete(cocos2d::CCObject* sender);
	TodoReturn shouldReload();
	TodoReturn updateBGColor(int) = win 0x833a0;

	virtual bool init();
	virtual void draw();
	virtual TodoReturn songIDChanged(int);
	virtual TodoReturn getActiveSongID();
	virtual TodoReturn getSongFileName();
	virtual TodoReturn getLevelSettings();
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

	bool init(CustomSongDelegate*);
	void onClose(cocos2d::CCObject* sender);
	void onCreateLines(cocos2d::CCObject* sender);
	void onMusicBrowser(cocos2d::CCObject* sender);
	void onNewgroundsBrowser(cocos2d::CCObject* sender);
	void onOptions(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);
	void onSongBrowser(cocos2d::CCObject* sender);
	TodoReturn showNewgroundsMessage();

	virtual void keyBackClicked();
	virtual void show();
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual TodoReturn textInputReturn(CCTextInputNode*);
	virtual TodoReturn dropDownLayerWillClose(GJDropDownLayer*);
	virtual TodoReturn musicBrowserClosed(MusicBrowser*);
}

[[link(android)]]
class CustomSongLayerDelegate {
	virtual TodoReturn customSongLayerClosed();
}

[[link(android), depends(GJAssetDownloadAction)]]
class CustomSongWidget : cocos2d::CCNode, MusicDownloadDelegate, FLAlertLayerProtocol {
	// virtual ~CustomSongWidget();

	static CustomSongWidget* create(SongInfoObject* songInfo, CustomSongDelegate* songDelegate, bool showSongSelect, bool showPlayMusic, bool showDownload, bool isRobtopSong, bool unkBool, bool isMusicLibrary) = win 0x92b60;

	TodoReturn deleteSong();
	TodoReturn downloadAssetFailed(int, GJAssetType, GJSongError);
	TodoReturn downloadAssetFinished(int, GJAssetType);
	TodoReturn downloadFailed();
	TodoReturn getSongInfoIfUnloaded();
	bool init(SongInfoObject* songInfo, CustomSongDelegate* songDelegate, bool showSongSelect, bool showPlayMusic, bool showDownload, bool isRobtopSong, bool unkBool, bool isMusicLibrary) = win 0x92c20;
	void onCancelDownload(cocos2d::CCObject* sender);
	void onDelete(cocos2d::CCObject* sender);
	void onDownload(cocos2d::CCObject* sender) = win 0x94510;
	void onGetSongInfo(cocos2d::CCObject* sender) = win 0x94450;
	void onMore(cocos2d::CCObject* sender) = win 0x93e10;
	void onPlayback(cocos2d::CCObject* sender) = win 0x94790;
	void onSelect(cocos2d::CCObject* sender) = win 0x94740;
	TodoReturn processNextMultiAsset();
	TodoReturn showError(bool) = win 0x96a70;
	void startDownload() = win 0x94660;
	TodoReturn startMonitorDownload() = win 0x94690;
	TodoReturn startMultiAssetDownload();
	TodoReturn toggleUpdateButton(bool) = win 0x944c0;
	TodoReturn updateDownloadProgress(float);
	TodoReturn updateError(GJSongError);
	TodoReturn updateLengthMod(float);
	void updateMultiAssetInfo(bool) = win 0x95a60;
	TodoReturn updatePlaybackBtn() = win 0x94970;
	TodoReturn updateProgressBar(int);
	void updateSongInfo() = win 0x94b80;
	void updateSongObject(SongInfoObject*) = win 0x94280;
	void updateWithMultiAssets(gd::string, gd::string, int) = win 0x956f0;
	TodoReturn verifySongID(int);

	virtual TodoReturn loadSongInfoFinished(SongInfoObject*);
	virtual TodoReturn loadSongInfoFailed(int, GJSongError);
	virtual TodoReturn downloadSongFinished(int) = win 0x96340;
	virtual TodoReturn downloadSongFailed(int, GJSongError);
	virtual TodoReturn downloadSFXFinished(int);
	virtual TodoReturn downloadSFXFailed(int, GJSongError);
	virtual TodoReturn musicActionFinished(GJMusicAction);
	virtual TodoReturn musicActionFailed(GJMusicAction);
	virtual TodoReturn songStateChanged();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);

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

	static DailyLevelNode* create(GJGameLevel*, DailyLevelPage*, bool) = win 0x99610;

	bool init(GJGameLevel*, DailyLevelPage*, bool) = win 0x996c0;
	void onClaimReward(cocos2d::CCObject* sender) = win 0x9a040;
	void onSkipLevel(cocos2d::CCObject* sender);
	TodoReturn showSkipButton() = win 0x99ff0;
	TodoReturn updateTimeLabel(gd::string) = win 0x9a290;

	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);

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

	static DailyLevelPage* create(GJTimedLevelType) = win 0x97630;

	TodoReturn claimLevelReward(DailyLevelNode*, GJGameLevel*, cocos2d::CCPoint) = win 0x992a0;
	TodoReturn createDailyNode(GJGameLevel*, bool, float, bool) = win 0x98a70;
	TodoReturn createNodeIfLoaded() = win 0x989c0;
	TodoReturn downloadAndCreateNode() = win 0x98960;
	TodoReturn exitDailyNode(DailyLevelNode*, float) = win 0x98c40;
	TodoReturn getDailyTime() = win 0x98cf0;
	TodoReturn getDailyTimeString(int) = win 0x98da0;
	bool init(GJTimedLevelType) = win 0x976d0;
	void onClose(cocos2d::CCObject* sender);
	void onTheSafe(cocos2d::CCObject* sender);
	TodoReturn refreshDailyPage();
	TodoReturn skipDailyLevel(DailyLevelNode*, GJGameLevel*);
	TodoReturn tryGetDailyStatus() = win 0x98910;
	callback void updateTimers(float) = win 0x99120;

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void show() = win 0x5D6D0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn dailyStatusFinished(GJTimedLevelType) = win 0x98550;
	virtual TodoReturn dailyStatusFailed(GJTimedLevelType, GJErrorCode);
	virtual TodoReturn levelDownloadFinished(GJGameLevel*);
	virtual TodoReturn levelDownloadFailed(int);

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

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class DemonFilterDelegate {
	virtual TodoReturn demonFilterSelectClosed(int);
}

[[link(android)]]
class DemonFilterSelectLayer : FLAlertLayer {
	// virtual ~DemonFilterSelectLayer();

	static DemonFilterSelectLayer* create();

	void onClose(cocos2d::CCObject* sender);
	TodoReturn selectRating(cocos2d::CCObject*);

	virtual bool init() = win 0x2673e0;
	virtual void keyBackClicked();
}

[[link(android)]]
class DialogDelegate {
	virtual TodoReturn dialogClosed(DialogLayer*);
}

[[link(android)]]
class DialogLayer : cocos2d::CCLayerColor, TextAreaDelegate {
	// virtual ~DialogLayer();

	static DialogLayer* create(DialogObject*, int);

	TodoReturn addToMainScene();
	TodoReturn animateIn(DialogAnimationType) = win 0x9b4c0;
	TodoReturn animateInDialog();
	TodoReturn animateInRandomSide();
	static DialogLayer* createDialogLayer(DialogObject*, cocos2d::CCArray*, int) = win 0x9a850;
	TodoReturn createWithObjects(cocos2d::CCArray*, int);
	TodoReturn displayDialogObject(DialogObject*);
	TodoReturn displayNextObject();
	TodoReturn finishCurrentAnimation();
	TodoReturn handleDialogTap();
	bool init(DialogObject*, cocos2d::CCArray*, int) = win 0x9a900;
	TodoReturn onClose();
	TodoReturn updateChatPlacement(DialogChatPlacement);
	TodoReturn updateNavButtonFrame();

	virtual void onEnter();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn fadeInTextFinished(TextArea*);
}

[[link(android)]]
class DialogObject : cocos2d::CCObject {
	// virtual ~DialogObject();

	static DialogObject* create(gd::string, gd::string, int, float, bool, cocos2d::ccColor3B) = win 0x9a580;

	bool init(gd::string, gd::string, int, float, bool, cocos2d::ccColor3B) = win 0x9a6c0;
}

[[link(android)]]
class DownloadMessageDelegate {
	virtual TodoReturn downloadMessageFinished(GJUserMessage*);
	virtual TodoReturn downloadMessageFailed(int);
}

[[link(android)]]
class DrawGridLayer : cocos2d::CCLayer {
	// virtual ~DrawGridLayer();

	static DrawGridLayer* create(cocos2d::CCNode*, LevelEditorLayer*);

	void addAudioLineObject(AudioLineGuideGameObject*) = win 0x24ae00;
	TodoReturn addToEffects(EffectGameObject*);
	TodoReturn addToGuides(GameObject*);
	TodoReturn addToSpeedObjects(EffectGameObject*) = win 0x3a1c10;
	TodoReturn getPortalMinMax(GameObject*);
	bool init(cocos2d::CCNode*, LevelEditorLayer*);
	void loadTimeMarkers(gd::string) = win 0x24afa0;
	TodoReturn posForTime(float);
	TodoReturn postUpdate();
	TodoReturn removeAudioLineObject(AudioLineGuideGameObject*) = win 0x24ae60;
	TodoReturn removeFromEffects(EffectGameObject*);
	TodoReturn removeFromGuides(GameObject*);
	TodoReturn removeFromSpeedObjects(EffectGameObject*);
	TodoReturn sortSpeedObjects();
	TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, bool, bool, int);
	TodoReturn updateMusicGuideTime(float);
	TodoReturn updateTimeMarkers();

	virtual void update(float);
	virtual void draw();
}

[[link(android)]]
class DungeonBarsSprite : cocos2d::CCNode {
	// virtual ~DungeonBarsSprite();

	static DungeonBarsSprite* create();

	TodoReturn animateOutBars();

	virtual bool init();
	virtual void visit();
}

[[link(android)]]
class DynamicBitset {
	TodoReturn resize(unsigned int) = win 0x2ebf00;
}

[[link(android)]]
class DynamicScrollDelegate {
	virtual TodoReturn pure_virtual_00a34a60() {} // TODO: figure out what function this is
}

[[link(android)]]
class EditButtonBar : cocos2d::CCNode {
	// virtual ~EditButtonBar();

	static EditButtonBar* create(cocos2d::CCArray*, cocos2d::CCPoint, int, bool, int, int) = win 0x9b7e0;

	TodoReturn getPage();
	TodoReturn goToPage(int);
	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, bool, int, int) = win 0x9b8e0;
	void loadFromItems(cocos2d::CCArray*, int, int, bool) = win 0x9b970;
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

	static EditGameObjectPopup* create(EffectGameObject*, cocos2d::CCArray*, bool) = win 0x20f5a0;

	bool init(EffectGameObject*, cocos2d::CCArray*, bool) = win 0x20f650;
}

[[link(android)]]
class EditLevelLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, SetIDPopupDelegate {
	// virtual ~EditLevelLayer();

	static EditLevelLayer* create(GJGameLevel*) = win 0x9c840;

	TodoReturn closeTextInputs() = win 0x9e520;
	void confirmClone(cocos2d::CCObject*) = win 0x9f560;
	void confirmDelete(cocos2d::CCObject*) = win 0x9f0e0;
	void confirmMoveToTop(cocos2d::CCObject*) = win 0x9f5e0;
	bool init(GJGameLevel*) = win 0x9c8e0;
	void onBack(cocos2d::CCObject* sender) = win 0x9f7a0;
	void onClone() = win 0x9f440;
	void onDelete();
	void onEdit(cocos2d::CCObject* sender) = win 0x9ed00;
	void onGuidelines(cocos2d::CCObject* sender) = win 0x9da70;
	void onHelp(cocos2d::CCObject* sender) = win 0x9f3c0;
	void onLevelInfo(cocos2d::CCObject* sender) = win 0x9db40;
	void onLevelLeaderboard(cocos2d::CCObject* sender);
	void onLowDetailMode(cocos2d::CCObject* sender);
	void onMoveToTop() = win 0x9f740;
	void onPlay(cocos2d::CCObject* sender) = win 0x9ea10;
	void onSetFolder(cocos2d::CCObject* sender) = win 0x9f660;
	void onShare(cocos2d::CCObject* sender) = win 0x9ee00;
	void onTest(cocos2d::CCObject* sender);
	void onUpdateDescription(cocos2d::CCObject* sender) = win 0x9ec80;
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn scene(GJGameLevel*);
	TodoReturn setupLevelInfo();
	TodoReturn updateDescText(char const*);
	TodoReturn verifyLevelName() = win 0x9f8f0;

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void setIDPopupClosed(SetIDPopup*, int);
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x9f160;
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);

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

	virtual bool init();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn setupOptions();
}

[[link(android)]]
class EditorPauseLayer : CCBlockLayer, FLAlertLayerProtocol {
	// virtual ~EditorPauseLayer();
	// EditorPauseLayer() = win 0x9fd40;

	static EditorPauseLayer* create(LevelEditorLayer*) = win 0x9ff80;

	TodoReturn doResetUnused() = win 0x242150;
	bool init(LevelEditorLayer*) = win 0xa0020;
	void onAlignX(cocos2d::CCObject* sender);
	void onAlignY(cocos2d::CCObject* sender);
	void onBuildHelper(cocos2d::CCObject* sender);
	void onCopyWColor(cocos2d::CCObject* sender);
	void onCreateExtras(cocos2d::CCObject* sender);
	void onCreateLoop(cocos2d::CCObject* sender);
	void onCreateTemplate(cocos2d::CCObject* sender);
	void onExitEditor(cocos2d::CCObject* sender) = win 0xa2ef0;
	void onExitNoSave(cocos2d::CCObject* sender) = win 0xa2f50;
	void onHelp(cocos2d::CCObject* sender);
	void onKeybindings(cocos2d::CCObject* sender);
	void onNewGroupX(cocos2d::CCObject* sender);
	void onNewGroupY(cocos2d::CCObject* sender);
	void onOptions(cocos2d::CCObject* sender);
	void onPasteWColor(cocos2d::CCObject* sender);
	void onReGroup(cocos2d::CCObject* sender);
	void onResetUnusedColors(cocos2d::CCObject* sender) = win 0xa1f30;
	void onResume(cocos2d::CCObject* sender) = win 0xa2640;
	void onSave(cocos2d::CCObject* sender) = win 0xa2e40;
	void onSaveAndExit(cocos2d::CCObject* sender) = win 0xa2eb0;
	void onSaveAndPlay(cocos2d::CCObject* sender) = win 0xa2c90;
	void onSelectAll(cocos2d::CCObject* sender) = win 0xa20e0;
	void onSelectAllLeft(cocos2d::CCObject* sender) = win 0xa2100;
	void onSelectAllRight(cocos2d::CCObject* sender);
	void onSong(cocos2d::CCObject* sender) = win 0xa25a0;
	void onUnlockAllLayers(cocos2d::CCObject* sender);
	TodoReturn playStep2() = win 0xa2cf0;
	TodoReturn playStep3();
	TodoReturn saveLevel() = win 0xa26c0;
	TodoReturn toggleDebugDraw(cocos2d::CCObject*);
	TodoReturn toggleEditorBackground(cocos2d::CCObject*);
	TodoReturn toggleEditorColorMode(cocos2d::CCObject*);
	TodoReturn toggleEditorGrid(cocos2d::CCObject*);
	TodoReturn toggleEditorGround(cocos2d::CCObject*);
	TodoReturn toggleEffectDuration(cocos2d::CCObject*);
	TodoReturn toggleEffectLines(cocos2d::CCObject*);
	TodoReturn toggleFollowPlayer(cocos2d::CCObject*);
	TodoReturn toggleGridOnTop(cocos2d::CCObject*);
	TodoReturn toggleHideInvisible(cocos2d::CCObject*);
	TodoReturn toggleIgnoreDamage(cocos2d::CCObject*);
	TodoReturn togglePlaytestMusic(cocos2d::CCObject*);
	TodoReturn togglePreviewAnim(cocos2d::CCObject*);
	TodoReturn togglePreviewParticles(cocos2d::CCObject*);
	TodoReturn togglePreviewShaders(cocos2d::CCObject*);
	TodoReturn toggleRecordOrder(cocos2d::CCObject*);
	TodoReturn toggleSelectFilter(cocos2d::CCObject*);
	TodoReturn toggleShowObjectInfo(cocos2d::CCObject*);
	TodoReturn uncheckAllPortals(cocos2d::CCObject*) = win 0xa1e70;
	TodoReturn updateSongButton() = win 0xa25d0;

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0xa3080;
	virtual void customSetup() = win 0xa0730;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = win 0xa2fc0;

	bool m_saved;
    CCMenuItemSpriteExtra* m_guidelinesOffButton;
    CCMenuItemSpriteExtra* m_guidelinesOnButton;
    LevelEditorLayer* m_editorLayer;
}

[[link(android)]]
class EditorUI : cocos2d::CCLayer, FLAlertLayerProtocol, ColorSelectDelegate, GJRotationControlDelegate, GJScaleControlDelegate, GJTransformControlDelegate, MusicDownloadDelegate, SetIDPopupDelegate {
	// virtual ~EditorUI();

	static EditorUI* create(LevelEditorLayer*);

	TodoReturn activateRotationControl(cocos2d::CCObject*) = win 0xd83d0;
	TodoReturn activateScaleControl(cocos2d::CCObject*) = win 0xcc130;
	TodoReturn activateTransformControl(cocos2d::CCObject*);
	TodoReturn addObjectsToSmartTemplate(GJSmartTemplate*, cocos2d::CCArray*);
	TodoReturn addSnapPosition(cocos2d::CCPoint);
	TodoReturn alignObjects(cocos2d::CCArray*, bool);
	TodoReturn applyOffset(GameObject*) = win 0xd7d70;
	TodoReturn applySpecialOffset(cocos2d::CCPoint, GameObject*, cocos2d::CCPoint);
	TodoReturn arrayContainsClass(cocos2d::CCArray*, int);
	TodoReturn assignNewGroups(bool);
	TodoReturn canAllowMultiActivate(GameObject*, cocos2d::CCArray*);
	TodoReturn canSelectObject(GameObject*) = win 0xc89c0;
	TodoReturn centerCameraOnObject(GameObject*) = win 0xaa950;
	TodoReturn changeSelectedObjects(cocos2d::CCArray*, bool);
	TodoReturn checkDiffAfterTransformAnchor(cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn checkLiveColorSelect() = win 0xc8b70;
	TodoReturn clickOnPosition(cocos2d::CCPoint) = win 0xa6870;
	TodoReturn closeLiveColorSelect() = win 0xd4550;
	TodoReturn closeLiveHSVSelect() = win 0xd46d0;
	TodoReturn colorSelectClosed(cocos2d::ccColor3B);
	TodoReturn constrainGameLayerPosition() = win 0xd7df0;
	void constrainGameLayerPosition(float, float) = win 0xd7df0;
	TodoReturn convertKeyBasedOnNeighbors(int, int, cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn convertToBaseKey(int);
	TodoReturn copyObjects(cocos2d::CCArray*, bool, bool) = win 0xca970;
	TodoReturn copyObjectsDetailed(cocos2d::CCArray*);
	cocos2d::CCArray* createCustomItems() = win 0xa8570;
	TodoReturn createEdgeForObject(GameObject*, int);
	TodoReturn createExtraObject(int, cocos2d::CCPoint, GameObject*, cocos2d::CCArray*, int, int);
	TodoReturn createExtras(cocos2d::CCArray*);
	TodoReturn createExtrasForObject(int, GameObject*, cocos2d::CCArray*);
	TodoReturn createGlow();
	TodoReturn createLoop();
	TodoReturn createMoveMenu() = win 0xd1be0;
	TodoReturn createNewKeyframeAnim();
	TodoReturn createObject(int, cocos2d::CCPoint);
	TodoReturn createOutlines(cocos2d::CCArray*);
	TodoReturn createPrefab(GJSmartTemplate*, gd::string, int);
	TodoReturn createRockBases(cocos2d::CCArray*);
	TodoReturn createRockEdges(cocos2d::CCArray*);
	TodoReturn createSmartObjectsFromTemplate(GJSmartTemplate*, cocos2d::CCArray*, bool, bool, bool, bool);
	TodoReturn createSmartObjectsFromType(int, cocos2d::CCArray*, bool, bool);
	TodoReturn createUndoObject(UndoCommand, bool) = win 0xc9320;
	TodoReturn createUndoSelectObject(bool) = win 0xc9470;
	TodoReturn deactivateRotationControl();
	TodoReturn deactivateScaleControl() = win 0xcc2d0;
	TodoReturn deactivateTransformControl() = win 0xcc800;
	void deleteObject(GameObject*, bool) = win 0xaa120;
	TodoReturn deleteSmartBlocksFromObjects(cocos2d::CCArray*);
	TodoReturn deleteTypeFromObjects(int, cocos2d::CCArray*);
	TodoReturn deselectAll() = win 0xc9600;
	TodoReturn deselectObject() = win 0xc94f0;
	TodoReturn deselectObject(GameObject*) = win 0xc9540;
	TodoReturn deselectObjectsColor();
	TodoReturn deselectTargetPortals() = win 0xaa480;
	TodoReturn disableButton(CreateMenuItem*);
	TodoReturn doCopyObjects(bool) = win 0xcaf10;
	TodoReturn doPasteInPlace(bool);
	TodoReturn doPasteObjects(bool) = win 0xcb090;
	TodoReturn dynamicGroupUpdate(bool);
	TodoReturn edgeForObject(int, int);
	TodoReturn editButton2Usable() = win 0xd13a0;
	TodoReturn editButtonUsable() = win 0xd0cc0;
	TodoReturn editColor() = win 0xd4110;
	TodoReturn editColorButtonUsable() = win 0xd3d50;
	TodoReturn editGroup(cocos2d::CCObject*) = win 0xd4720;
	TodoReturn editHSV() = win 0xd45a0;
	TodoReturn editObject(cocos2d::CCObject*) = win 0xd2840;
	TodoReturn editObject2(cocos2d::CCObject*) = win 0xd36b0;
	TodoReturn editObject3(cocos2d::CCObject*);
	TodoReturn editObjectSpecial(int) = win 0xd36c0;
	TodoReturn editorLayerForArray(cocos2d::CCArray*, bool) = win 0xcbda0;
	TodoReturn enableButton(CreateMenuItem*);
	TodoReturn findAndSelectObject(int, bool) = win 0xaa870;
	TodoReturn findSnapObject(cocos2d::CCArray*, float);
	TodoReturn findSnapObject(cocos2d::CCPoint, float);
	TodoReturn findTriggerTest();
	TodoReturn flipObjectsX(cocos2d::CCArray*) = win 0xd5c20;
	TodoReturn flipObjectsY(cocos2d::CCArray*) = win 0xd5e50;
	TodoReturn getButton(char const*, int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);
	CreateMenuItem* getCreateBtn(int id, int bg) = win 0xC78A0;
	TodoReturn getCreateMenuItemButton(cocos2d::CCSprite*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	TodoReturn getCycledObject(cocos2d::CCArray*, bool);
	TodoReturn getEditColorTargets(ColorAction*&, ColorAction*&, EffectGameObject*&);
	TodoReturn getGridSnappedPos(cocos2d::CCPoint) = win 0xd8aa0;
	TodoReturn getGroupCenter(cocos2d::CCArray*, bool) = win 0xd8140;
	TodoReturn getGroupInfo(GameObject*, cocos2d::CCArray*, int&, int&, int&);
	TodoReturn getLimitedPosition(cocos2d::CCPoint) = win 0xd4ff0;
	TodoReturn getModeBtn(char const*, int);
	TodoReturn getNeighbor(int, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*);
	TodoReturn getRandomStartKey(int);
	TodoReturn getRelativeOffset(GameObject*);
	cocos2d::CCArray* getSelectedObjects() = win 0xc92a0;
	TodoReturn getSimpleButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);
	TodoReturn getSmartNeighbor(SmartGameObject*, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*);
	TodoReturn getSmartObjectKey(int, GJSmartDirection);
	TodoReturn getSnapAngle(GameObject*, cocos2d::CCArray*) = win 0x23c490;
	CCMenuItemSpriteExtra* getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	CCMenuItemSpriteExtra* getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float) = win 0xa6c00;
	CCMenuItemSpriteExtra* getSpriteButton(cocos2d::CCSprite*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	TodoReturn getTouchPoint(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn getTransformState();
	TodoReturn getXMin(int) = win 0xd8010;
	bool init(LevelEditorLayer* editorLayer) = win 0xa4260;
	bool isLiveColorSelectTrigger(GameObject*);
	bool isSpecialSnapObject(int) = win 0xdd6e0;
	TodoReturn liveEditColorUsable();
	TodoReturn menuItemFromObjectString(gd::string, int);
	cocos2d::CCPoint moveForCommand(EditCommand command) = win 0xd4a20;
	TodoReturn moveGamelayer(cocos2d::CCPoint) = win 0xa7070;
	TodoReturn moveObject(GameObject*, cocos2d::CCPoint) = win 0xd4f10;
	TodoReturn moveObjectCall(cocos2d::CCObject*);
	TodoReturn moveObjectCall(EditCommand) = win 0xd4d40;
	TodoReturn offsetForKey(int) = win 0xdb460;
	TodoReturn onAssignNewGroupID();
	void onColorFilter(cocos2d::CCObject* sender);
	void onCopy(cocos2d::CCObject* sender) = win 0xcaf00;
	void onCopyState(cocos2d::CCObject* sender) = win 0xcbcd0;
	bool onCreate() = win 0xc7ee0;
	void onCreateButton(cocos2d::CCObject* sender) = win 0xc7d50;
	TodoReturn onCreateObject(int);
	void onDelete(cocos2d::CCObject* sender) = win 0xa9b50;
	void onDeleteAll(cocos2d::CCObject* sender);
	void onDeleteCustomItem(cocos2d::CCObject* sender);
	void onDeleteInfo(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender) = win 0xaa1a0;
	void onDeleteSelectedType(cocos2d::CCObject* sender) = win 0xaa5f0;
	void onDeleteStartPos(cocos2d::CCObject* sender);
	void onDeselectAll(cocos2d::CCObject* sender) = win 0xc95c0;
	void onDuplicate(cocos2d::CCObject* sender) = win 0xca7d0;
	void onEditColor(cocos2d::CCObject* sender) = win 0xd3eb0;
	void onFindObject(cocos2d::CCObject* sender);
	void onGoToBaseLayer(cocos2d::CCObject* sender) = win 0xcbec0;
	void onGoToLayer(cocos2d::CCObject* sender) = win 0xcbe10;
	void onGroupDown(cocos2d::CCObject* sender) = win 0xd47a0;
	void onGroupIDFilter(cocos2d::CCObject* sender);
	void onGroupSticky(cocos2d::CCObject* sender) = win 0xca5c0;
	void onGroupUp(cocos2d::CCObject* sender) = win 0xd4780;
	void onLockLayer(cocos2d::CCObject* sender) = win 0xd48f0;
	void onNewCustomItem(cocos2d::CCObject* sender) = win 0xa81c0;
	void onPaste(cocos2d::CCObject* sender) = win 0xcb080;
	void onPasteColor(cocos2d::CCObject* sender) = win 0xcbd50;
	void onPasteInPlace(cocos2d::CCObject* sender);
	void onPasteState(cocos2d::CCObject* sender) = win 0xcbd00;
	void onPause(cocos2d::CCObject* sender) = win 0xa6130;
	void onPlayback(cocos2d::CCObject* sender) = win 0xc9d20;
	void onPlaytest(cocos2d::CCObject* sender) = win 0xca090;
	void onResetSpecialFilter(cocos2d::CCObject* sender);
	void onSelectBuildTab(cocos2d::CCObject* sender) = win 0xcbee0;
	void onSettings(cocos2d::CCObject* sender) = win 0xa60e0;
	void onStopPlaytest(cocos2d::CCObject* sender) = win 0xca200;
	TodoReturn onTargetIDChange(int);
	TodoReturn onToggleGuide(EffectGameObject*);
	TodoReturn onToggleSelectedOrder(EffectGameObject*);
	void onUngroupSticky(cocos2d::CCObject* sender) = win 0xca600;
	void onUpdateDeleteFilter(cocos2d::CCObject* sender) = win 0xaabe0;
	TodoReturn orderDownCustomItem(cocos2d::CCObject*);
	TodoReturn orderUpCustomItem(cocos2d::CCObject*);
	TodoReturn pasteObjects(gd::string, bool) = win 0xcb240;
	TodoReturn playCircleAnim(cocos2d::CCPoint, float, float);
	TodoReturn playerTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn playerTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn playtestStopped() = win 0xca240;
	TodoReturn positionIsInSnapped(cocos2d::CCPoint);
	TodoReturn positionWithoutOffset(GameObject*);
	TodoReturn processSelectObjects(cocos2d::CCArray*);
	TodoReturn processSmartObjectsFromType(int, cocos2d::CCArray*, cocos2d::CCArray*, cocos2d::CCArray*, cocos2d::CCArray*);
	void recreateButtonTabs() = win 0xa8a60;
	TodoReturn redoLastAction(cocos2d::CCObject*) = win 0xc9ba0;
	void reloadCustomItems() = win 0xa8a10;
	TodoReturn removeOffset(GameObject*) = win 0xd7cf0;
	TodoReturn replaceGroupID(GameObject*, int, int);
	TodoReturn repositionObjectsToCenter(cocos2d::CCArray*, cocos2d::CCPoint, bool) = win 0xcbc50;
	TodoReturn resetObjectEditorValues(cocos2d::CCArray*) = win 0xcca80;
	TodoReturn resetSelectedObjectsColor() = win 0xd4990;
	TodoReturn resetUI() = win 0xa8b10;
	TodoReturn rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint) = win 0xd6080;
	TodoReturn rotationforCommand(EditCommand);
	TodoReturn scaleObjects(cocos2d::CCArray*, float, float, cocos2d::CCPoint, ObjectScaleType) = win 0xd64b0;
	TodoReturn selectAll() = win 0xc9750;
	TodoReturn selectAllWithDirection(bool) = win 0xc9890;
	TodoReturn selectBuildTab(int) = win 0xcbf00;
	TodoReturn selectObject(GameObject*, bool) = win 0xc8aa0;
	TodoReturn selectObjects(cocos2d::CCArray*, bool) = win 0xc8d40;
	TodoReturn selectObjectsInRect(cocos2d::CCRect);
	TodoReturn setupCreateMenu() = win 0xab240;
	TodoReturn setupDeleteMenu() = win 0xa8cc0;
	TodoReturn setupEditMenu();
	TodoReturn setupTransformControl();
	TodoReturn shouldDeleteObject(GameObject*);
	TodoReturn shouldSnap(GameObject*);
	TodoReturn showDeleteConfirmation();
	TodoReturn showLiveColorSelectForMode(int);
	TodoReturn showLiveColorSelectForModeSpecial(int);
	TodoReturn showMaxBasicError() = win 0xca6c0;
	TodoReturn showMaxCoinError() = win 0xca750;
	TodoReturn showMaxError() = win 0xca640;
	TodoReturn showUI(bool) = win 0xc9c10;
	TodoReturn sliderChanged(cocos2d::CCObject*) = win 0xa6cd0;
	TodoReturn smartTypeForKey(int);
	TodoReturn spriteFromObjectString(gd::string, bool, bool, int, cocos2d::CCArray*, cocos2d::CCArray*, GameObject*);
	TodoReturn toggleDuplicateButton();
	TodoReturn toggleEditObjectButton() = win 0xd1680;
	TodoReturn toggleEnableRotate(cocos2d::CCObject*) = win 0xc8900;
	TodoReturn toggleFreeMove(cocos2d::CCObject*) = win 0xc8810;
	TodoReturn toggleLockUI(bool);
	TodoReturn toggleMode(cocos2d::CCObject*) = win 0xa8c20;
	TodoReturn toggleObjectInfoLabel();
	TodoReturn toggleSnap(cocos2d::CCObject*) = win 0xc8880;
	TodoReturn toggleSpecialEditButtons();
	TodoReturn toggleStickyControls(bool) = win 0xa6080;
	TodoReturn toggleSwipe(cocos2d::CCObject*) = win 0xc87a0;
	TodoReturn transformObject(GameObject*, EditCommand, bool) = win 0xd5780;
	TodoReturn transformObjectCall(cocos2d::CCObject*) = win 0xd5360;
	TodoReturn transformObjectCall(EditCommand) = win 0xd5380;
	TodoReturn transformObjects(cocos2d::CCArray*, cocos2d::CCPoint, float, float, float, float, float, float) = win 0xd6e40;
	TodoReturn transformObjectsActive() = win 0xd6d20;
	TodoReturn transformObjectsReset() = win 0xd6da0;
	TodoReturn triggerSwipeMode();
	TodoReturn tryUpdateTimeMarkers();
	TodoReturn undoLastAction(cocos2d::CCObject*) = win 0xc9b40;
	TodoReturn updateButtons() = win 0xa6310;
	TodoReturn updateCreateMenu(bool) = win 0xc7d90;
	TodoReturn updateDeleteButtons();
	TodoReturn updateDeleteMenu();
	TodoReturn updateEditButtonColor(int, cocos2d::ccColor3B) = win 0xcc030;
	TodoReturn updateEditColorButton();
	TodoReturn updateEditMenu() = win 0xd0c90;
	TodoReturn updateGridNodeSize() = win 0xa6f20;
	TodoReturn updateGridNodeSize(int);
	TodoReturn updateGroupIDBtn2();
	TodoReturn updateGroupIDLabel() = win 0xd47d0;
	TodoReturn updateObjectInfoLabel() = win 0xa70d0;
	TodoReturn updatePlaybackBtn() = win 0xc9f80;
	TodoReturn updateSlider();
	TodoReturn updateSpecialUIElements();
	void updateZoom(float) = win 0xca3d0;
	void valueFromXPos(float) = win 0xa6e20;
	TodoReturn xPosFromValue(float);
	TodoReturn zoomGameLayer(bool);
	TodoReturn zoomIn(cocos2d::CCObject*) = win 0xca2f0;
	TodoReturn zoomOut(cocos2d::CCObject*) = win 0xca360;

	virtual void draw() = win 0xd80f0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0xd8be0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0xd9160;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0xd9730;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x4c830;
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked() = win 0xcc020;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0xda300;
	virtual TodoReturn getUI() = win 0xa3aa0;
	virtual void setIDPopupClosed(SetIDPopup*, int) = win 0xaa700;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = win 0xaa650;
	virtual TodoReturn updateTransformControl() = win 0xcc870;
	virtual TodoReturn transformChangeBegin() = win 0xccc50;
	virtual TodoReturn transformChangeEnded();
	virtual TodoReturn getTransformNode() = win 0xa3ab0;
	virtual TodoReturn transformScaleXChanged(float) = win 0xd6ba0;
	virtual TodoReturn transformScaleYChanged(float) = win 0xd6bc0;
	virtual TodoReturn transformScaleXYChanged(float, float) = win 0xd6be0;
	virtual TodoReturn transformSkewXChanged(float) = win 0xd6c10;
	virtual TodoReturn transformSkewYChanged(float) = win 0xd6c30;
	virtual TodoReturn transformRotationXChanged(float) = win 0xd6c50;
	virtual TodoReturn transformRotationYChanged(float) = win 0xd6c70;
	virtual TodoReturn transformRotationChanged(float) = win 0xd6c90;
	virtual TodoReturn transformResetRotation() = win 0xd6cc0;
	virtual TodoReturn transformRestoreRotation() = win 0xd6cf0;
	virtual TodoReturn songStateChanged() = win 0xca080;
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*) = win 0xd4930;
	virtual void keyUp(cocos2d::enumKeyCodes) = win 0xdb210;
	virtual void scrollWheel(float, float) = win 0xdb260;
	virtual TodoReturn angleChangeBegin() = win 0xd84d0;
	virtual TodoReturn angleChangeEnded() = win 0x95c0;
	virtual TodoReturn angleChanged(float) = win 0xd84e0;
	virtual TodoReturn updateScaleControl() = win 0xcc380;
	virtual TodoReturn anchorPointMoved(cocos2d::CCPoint) = win 0xccc60;
	virtual TodoReturn scaleChangeBegin() = win 0xcc4b0;
	virtual TodoReturn scaleChangeEnded();
	virtual TodoReturn scaleXChanged(float) = win 0xcc4c0;
	virtual TodoReturn scaleYChanged(float) = win 0xcc540;
	virtual TodoReturn scaleXYChanged(float, float) = win 0xcc5c0;


	PAD = win 0x60, android32 0x5c;

	float m_unk1b8;
	float m_unk1bc;
	PAD = win 0x4, android32 0x4;
	EditButtonBar* m_buttonBar;
	PAD = win 0x4, android32 0x4;
	cocos2d::CCArray* m_unk1cc;
	float m_unk1d0;
	PAD = win 0x30, android32 0x30;
	cocos2d::CCLabelBMFont* m_unk204;
	GJRotationControl* m_rotationControl;
	PAD = win 0xc, android32 0xc;
	GJScaleControl* m_scaleControl;
	GJTransformControl* m_transformControl;
	cocos2d::CCNode* m_unk220;
	cocos2d::CCNode* m_unk224;
    cocos2d::CCDictionary* m_editButtonDict; // win 0x228
	EditButtonBar* m_createButtonBar;
	EditButtonBar* m_editButtonBar; // win 0x230
	Slider* m_positionSlider;
	float m_unk238;
	float m_unk23c;
	float m_unk240;
	float m_unk244;

	PAD = win 0x10, android32 0x10;
	cocos2d::CCArray* m_unk258;
	PAD = win 0x8, android32 0x8;

	cocos2d::CCArray* m_selectedObjects; // win 0x264

	// most of these are not tested
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
	PAD = win 0x4, android32 0x4;
	CCMenuItemSpriteExtra* m_copyPasteBtn;
	CCMenuItemSpriteExtra* m_copyBtn;
	CCMenuItemSpriteExtra* m_pasteBtn;
	CCMenuItemSpriteExtra* m_copyValuesBtn;
	CCMenuItemSpriteExtra* m_pasteStateBtn;
	CCMenuItemSpriteExtra* m_pasteColorBtn;
	CCMenuItemSpriteExtra* m_goToLayerBtn;
	// CCMenuItemToggler* m_guideToggle;
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
	ButtonSprite* m_unk31c;
	ButtonSprite* m_unk320;
	int m_selectedCreateObjectID;
	PAD = win 0x8, android32 0x8;
	cocos2d::CCArray* m_createButtonArray;
	cocos2d::CCArray* m_customObjectButtonArray;
	cocos2d::CCArray* m_unknownArray9;
	int m_selectedMode; // win 0x33c
	LevelEditorLayer* m_editorLayer; // win 0x340
	cocos2d::CCPoint m_swipeStart;
	cocos2d::CCPoint m_swipeEnd;
	PAD = mac 0x8, win 0x8, android32 0x8;
	cocos2d::CCPoint m_lastTouchPoint;
	cocos2d::CCPoint m_cameraTest;
	PAD = mac 0x8, win 0x8, android32 0x8;
	GameObject* m_selectedObject;
	PAD = win 0xc, android32 0xc;
	int m_selectedTab;
	PAD = win 0x2c;
	bool m_unk3b4;

	PAD = win 0x8;
}

[[link(android)]]
class EditTriggersPopup : SetupTriggerPopup {
	// virtual ~EditTriggersPopup();

	static EditTriggersPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x205550;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x205600;

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class EffectGameObject : EnhancedGameObject {
	// virtual ~EffectGameObject();
	// EffectGameObject();

	static EffectGameObject* create(char const*) = win 0x39c8b0;

	TodoReturn getTargetColorIndex();
	bool init(char const*) = win 0x39c950;
	TodoReturn playTriggerEffect() = win 0x39ca70;
	TodoReturn resetSpawnTrigger();
	void setTargetID(int);
	void setTargetID2(int);
	TodoReturn triggerEffectFinished() = win 0x39cca0;
	TodoReturn updateInteractiveHover(float);
	TodoReturn updateSpecialColor() = win 0x39e750;
	TodoReturn updateSpeedModType();

	virtual void setOpacity(unsigned char);
	virtual TodoReturn firstSetup();
	virtual void customSetup() = win 0x39e950;
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x39ccf0;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = win 0x39eb70;
	virtual gd::string getSaveString(GJBaseGameLayer*) = win 0x3a1df0; // = win 0x13f9a0;
	virtual void setRScaleX(float);
	virtual void setRScaleY(float);
	virtual TodoReturn triggerActivated(float);
	virtual TodoReturn restoreObject();
	virtual TodoReturn spawnXPosition();
	virtual TodoReturn canReverse();
	virtual bool isSpecialSpawnObject();
	virtual TodoReturn canBeOrdered();
	virtual TodoReturn getObjectLabel();
	virtual void setObjectLabel(cocos2d::CCLabelBMFont*);
	virtual TodoReturn stateSensitiveOff(GJBaseGameLayer*);

	cocos2d::ccColor3B m_triggerTargetColor;
	// property 10
	float m_duration;
	// property 35
	float m_opacity;
	PAD = android32 0x4, win 0x4;
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
	PAD = android32 0x6, win 0x6;
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
	PAD = android32 0x8, win 0x8;
	// property 87
	bool m_isMultiActivate;
	PAD = android32 0x2, win 0x2;
	// property 93
	bool m_triggerOnExit;
	// property 95
	int m_itemID2;
	// property 534
	int m_property534;
	PAD = android32 0x4, win 0x4;
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
	PAD = android32 0x1f, win 0x1f;
	// property 148
	float m_gravityValue;
	// property 284
	bool m_isSinglePTouch;
	PAD = android32 0x3, win 0x3;
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
	PAD = android32 0xb, win 0xb;
	// property 12
	int m_secretCoinID;
	PAD = android32 0x1c, win 0x1c;
	// property 280
	bool m_ignoreGroupParent;
	// property 281
	bool m_ignoreLinkedObjects;
	PAD = android32 0x1, win 0x1;
}

[[link(android)]]
class EffectManagerState {
	// ~EffectManagerState();
	// EffectManagerState();
}

[[link(android)]]
class EndLevelLayer : GJDropDownLayer {
	// virtual ~EndLevelLayer();
	// EndLevelLayer() = win 0xe7240;

	static EndLevelLayer* create() = win 0xe7380;

	TodoReturn coinEnterFinished(cocos2d::CCPoint) = win 0xe9720;
	TodoReturn coinEnterFinishedO(cocos2d::CCObject*) = win 0xe96f0;
	TodoReturn currencyEnterFinished() = win 0xe9cd0;
	TodoReturn diamondEnterFinished() = win 0xea0c0;
	TodoReturn getCoinString() = win 0xe8a60;
	TodoReturn getEndText() = win 0xea370;
	TodoReturn goEdit() = win 0xe9060;
	void onEdit(cocos2d::CCObject* sender) = win 0xe8fb0;
	void onEveryplay(cocos2d::CCObject* sender);
	void onLevelLeaderboard(cocos2d::CCObject* sender) = win 0xe89f0;
	void onMenu(cocos2d::CCObject* sender) = win 0xe8ec0;
	void onReplay(cocos2d::CCObject* sender) = win 0xe8dc0;
	void playCoinEffect(float) = win 0xe9570;
	void playCurrencyEffect(float) = win 0xe99c0;
	void playDiamondEffect(float) = win 0xe9db0;
	void playEndEffect() = win 0xea1a0;
	void playStarEffect(float) = win 0xe9120;
	TodoReturn starEnterFinished() = win 0xe9440;
	TodoReturn tryShowBanner(float);

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void customSetup() = win 0xe74f0;
	virtual void showLayer(bool) = win 0xe8c20;
	virtual TodoReturn enterAnimFinished();
	virtual void keyUp(cocos2d::enumKeyCodes);
}

[[link(android)]]
class EndPortalObject : GameObject {
	// virtual ~EndPortalObject();

	static EndPortalObject* create() = win 0xeb140;

	TodoReturn getSpawnPos() = win 0xeb740;
	TodoReturn triggerObject(GJBaseGameLayer*) = win 0xeb6c0;
	TodoReturn updateColors(cocos2d::ccColor3B) = win 0xeb5b0;
	TodoReturn updateEndPos(bool) = win 0xeb920;

	virtual bool init();
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setVisible(bool);
}

[[link(android)]]
class EndTriggerGameObject : EffectGameObject {
	// virtual ~EndTriggerGameObject();

	static EndTriggerGameObject* create();

	virtual bool init();
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
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
	TodoReturn updateRotateAction(float);
	TodoReturn updateState(int);
	TodoReturn updateUserCoin() = win 0x1473b0;
	TodoReturn waitForAnimationTrigger();

	virtual void customSetup() = win 0x145af0;
	virtual TodoReturn resetObject() = win 0x145510;
	virtual void deactivateObject(bool) = win 0x1474c0;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = win 0x1457b0;
	virtual gd::string getSaveString(GJBaseGameLayer*) = win 0x147520;
	virtual TodoReturn triggerActivated(float);
	virtual TodoReturn restoreObject();
	virtual TodoReturn animationTriggered();
	virtual TodoReturn activatedByPlayer(PlayerObject*);
	virtual TodoReturn hasBeenActivatedByPlayer(PlayerObject*);
	virtual TodoReturn hasBeenActivated();
	virtual TodoReturn saveActiveColors();
	virtual TodoReturn canAllowMultiActivate();
	virtual TodoReturn getHasSyncedAnimation();
	virtual TodoReturn getHasRotateAction();
	virtual TodoReturn canMultiActivate(bool);
	virtual TodoReturn powerOnObject(int);
	virtual TodoReturn powerOffObject();
	virtual TodoReturn stateSensitiveOff(GJBaseGameLayer*);
	virtual TodoReturn updateSyncedAnimation(float, int);
	virtual TodoReturn updateAnimateOnTrigger(bool);

	PAD = android32 0x25, win 0x2a;

	bool m_hasCustomAnimation;
	bool m_hasCustomRotation;
	// property 98
	bool m_disableRotation;
	PAD = android32 0x3, win 0x3;

	// property 97
	float m_rotationSpeed;
	PAD = android32 0xc, win 0xc;

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
	PAD = android32 0xf, win 0xf;

	// property 214
	bool m_animateOnlyWhenActive;
	// property 444
	bool m_isNoMultiActivate; // used in platformer stuff
	// property 99
	bool m_isMultiActivate;
	PAD = android32 0x4, win 0x4;
}

[[link(android)]]
class EnhancedTriggerObject : EffectGameObject {
	// virtual ~EnhancedTriggerObject();

	static EnhancedTriggerObject* create(char const*);

	bool init(char const*);

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
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

	virtual void customSetup();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class EventLinkTrigger : EffectGameObject {
	// virtual ~EventLinkTrigger();

	static EventLinkTrigger* create();

	virtual bool init();
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class ExplodeItemNode : cocos2d::CCNode {
	// virtual ~ExplodeItemNode();

	static ExplodeItemNode* create(cocos2d::CCRenderTexture*);

	TodoReturn createSprites(int, int, float, float, float, float, float, float, cocos2d::ccColor4F, cocos2d::ccColor4F, bool);
	bool init(cocos2d::CCRenderTexture*);

	virtual void update(float);
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

	static ExtendedLayer* create();

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
class FileSaveManager : GManager {
	// virtual ~FileSaveManager();

	static FileSaveManager* sharedState();

	TodoReturn getStoreData();
	TodoReturn loadDataFromFile(char const*);

	virtual bool init();
	virtual TodoReturn firstLoad();
}

[[link(android)]]
class FindBPMLayer : CreateGuidelinesLayer {
	// virtual ~FindBPMLayer();

	static FindBPMLayer* create(int);

	TodoReturn calculateBPM();
	bool init(int);

	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn playMusic();
	virtual TodoReturn registerTouch();
	virtual void onInfo(cocos2d::CCObject* sender);
	virtual void onRecord(cocos2d::CCObject* sender);
	virtual TodoReturn recordingDidStop();
}

[[link(android)]]
class FindObjectPopup : SetIDPopup {
	// virtual ~FindObjectPopup();

	static FindObjectPopup* create();

	void onFindObjectID(cocos2d::CCObject* sender);

	virtual bool init();
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

	static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, gd::string desc, char const* btn1, char const* btn2, float width, bool scroll, float height, float textScale) = win 0x30da0;
	static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, gd::string desc, char const* btn1, char const* btn2, float width) = win 0x30cf0;
	static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, gd::string desc, char const* btn1, char const* btn2) = win 0x30c40;

	static FLAlertLayer* create(char const* title, const gd::string& desc, char const* btn) {
		return FLAlertLayer::create(nullptr, title, desc, btn, nullptr, 300.0);
	}

	TodoReturn incrementForcePrio();
	bool init(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float, bool, float, float) = win 0x30f60;
	bool init(int) = win 0x30ea0;
	void onBtn1(cocos2d::CCObject* sender) = win 0x31ab0;
	void onBtn2(cocos2d::CCObject* sender) = win 0x31af0;

	// virtual void onEnter(); // only exists on armv7...
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31b30;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31c80;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31bc0;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31c30;
	virtual void registerWithTouchDispatcher() = win 0x31e60;
	virtual void keyBackClicked() = win 0x31a10;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x319a0;
	virtual void show() = win 0x31cd0;

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
	// FMODAudioEngine() = win 0x32460;

	static FMODAudioEngine* sharedEngine() = win 0x32bf0;

	TodoReturn activateQueuedMusic(int);
	TodoReturn channelForChannelID(int);
	TodoReturn channelForUniqueID(int);
	TodoReturn channelIDForUniqueID(int);
	TodoReturn channelLinkSound(int, FMODSound*);
	TodoReturn channelStopped(FMOD::Channel*, bool);
	TodoReturn channelUnlinkSound(int);
	TodoReturn clearAllAudio();
	TodoReturn countActiveEffects();
	TodoReturn countActiveMusic();
	TodoReturn createStream(gd::string) = win 0x3aea0;
	TodoReturn disableMetering();
	TodoReturn enableMetering();
	TodoReturn fadeInBackgroundMusic(float);
	TodoReturn fadeInMusic(float, int) = win 0x3a740;
	TodoReturn fadeOutMusic(float, int);
	TodoReturn getActiveMusic(int) = win 0x3a940;
	TodoReturn getActiveMusicChannel(int);
	TodoReturn getBackgroundMusicVolume();
	TodoReturn getChannelGroup(int, bool) = win 0x35240;
	TodoReturn getEffectsVolume();
	TodoReturn getFMODStatus(int) = win 0x3b0f0;
	TodoReturn getMeteringValue();
	TodoReturn getMusicChannelID(int);
	TodoReturn getMusicLengthMS(int) = win 0x3a570;
	TodoReturn getMusicTime(int);
	TodoReturn getMusicTimeMS(int);
	TodoReturn getNextChannelID();
	TodoReturn getTweenContainer(AudioTargetType);
	bool isChannelStopping(int);
	bool isEffectLoaded(gd::string);
	bool isMusicPlaying(gd::string, int);
	bool isMusicPlaying(int);
	bool isSoundReady(FMOD::Sound*);
	TodoReturn lengthForSound(gd::string);
	TodoReturn loadAndPlayMusic(gd::string, unsigned int, int);
	TodoReturn loadAudioState(FMODAudioState&) = win 0x34000;
	TodoReturn loadMusic(gd::string, float, float, float, bool, int, int) = win 0x38740;
	TodoReturn loadMusic(gd::string) = win 0x386a0;
	TodoReturn pauseAllAudio();
	TodoReturn pauseAllEffects();
	TodoReturn pauseAllMusic() = win 0x38350;
	TodoReturn pauseEffect(unsigned int);
	TodoReturn pauseMusic(int);
	TodoReturn pitchForIdx(int) = win 0x350e0;
	void playEffect(gd::string, float, float, float) = win 0x356e0;
	void playEffect(gd::string) = win 0x35590;
	TodoReturn playEffectAdvanced(gd::string, float, float, float, float, bool, bool, int, int, int, int, bool, int, bool, bool, int, int, float, int) = win 0x357b0;
	TodoReturn playEffectAsync(gd::string);
	TodoReturn playMusic(gd::string, bool, float, int) = win 0x385b0;
	TodoReturn preloadEffect(gd::string) = win 0x37a10;
	TodoReturn preloadEffectAsync(gd::string);
	TodoReturn preloadMusic(gd::string, bool, int);
	TodoReturn printResult(FMOD_RESULT);
	TodoReturn queuedEffectFinishedLoading(gd::string) = win 0x391f0;
	TodoReturn queuePlayEffect(gd::string, float, float, float, float, bool, bool, int, int, int, int, bool, int, bool, int, float, int) = win 0x4361f0;
	TodoReturn queueStartMusic(gd::string, float, float, float, bool, int, int, int, int, int, bool, int, bool);
	TodoReturn registerChannel(FMOD::Channel*, int, int) = win 0x36410;
	TodoReturn releaseRemovedSounds();
	TodoReturn resumeAllAudio();
	TodoReturn resumeAllEffects();
	TodoReturn resumeAllMusic() = win 0x383a0;
	TodoReturn resumeAudio();
	TodoReturn resumeEffect(unsigned int);
	TodoReturn resumeMusic(int);
	TodoReturn reverbToString(FMODReverbPreset);
	TodoReturn saveAudioState(FMODAudioState&) = win 0x33b80;
	void setBackgroundMusicVolume(float);
	void setChannelPitch(int, AudioTargetType, float) = win 0x378b0;
	void setChannelVolume(int, AudioTargetType, float) = win 0x373b0;
	void setChannelVolumeMod(int, AudioTargetType, float) = win 0x37630;
	void setEffectsVolume(float);
	void setMusicTimeMS(unsigned int, bool, int) = win 0x3a3f0;
	TodoReturn setup() = win 0x32c70;
	TodoReturn setupAudioEngine() = win 0x32f90;
	TodoReturn start() = win 0x33830;
	TodoReturn startMusic(int, int, int, int, bool, int) = win 0x38b90;
	TodoReturn stop();
	TodoReturn stopAllEffects() = win 0x37f90;
	TodoReturn stopAllMusic() = win 0x38310;
	TodoReturn stopAndGetFade(FMOD::Channel*);
	TodoReturn stopAndRemoveMusic(int);
	TodoReturn stopChannel(FMOD::Channel*, bool, float);
	TodoReturn stopChannel(int, AudioTargetType, bool, float);
	TodoReturn stopChannel(int);
	TodoReturn stopChannelTween(int, AudioTargetType, AudioModType);
	TodoReturn stopChannelTweens(int, AudioTargetType);
	TodoReturn stopMusic(int);
	TodoReturn stopMusicNotInSet(std::unordered_set<int, std::hash<int>, std::equal_to<int>, std::allocator<int> >&);
	TodoReturn storeEffect(FMOD::Sound*, gd::string) = win 0x37c00;
	TodoReturn swapMusicIndex(int, int);
	TodoReturn testFunction(int);
	TodoReturn triggerQueuedMusic(FMODQueuedMusic) = win 0x39800;
	TodoReturn unloadAllEffects() = win 0x38130;
	TodoReturn unloadEffect(gd::string);
	TodoReturn unregisterChannel(int);
	TodoReturn updateBackgroundFade();
	TodoReturn updateChannel(int, AudioTargetType, AudioModType, float, float) = win 0x37200;
	TodoReturn updateChannelTweens(float) = win 0x34dd0;
	TodoReturn updateMetering();
	TodoReturn updateQueuedEffects() = win 0x39120;
	TodoReturn updateQueuedMusic();
	TodoReturn updateReverb(FMODReverbPreset, bool) = win 0x33220;
	TodoReturn updateTemporaryEffects();
	TodoReturn waitUntilSoundReady(FMOD::Sound*);

	virtual void update(float) = win 0x33980;

	PAD = win 0x60, android32 0x50, android64 0xac;
	float m_musicVolume;
	float m_sfxVolume;
	PAD = win 0x1c, android32 0x20, android64 0x20;
	FMOD::Channel* m_backgroundMusicChannel;
	FMOD::System* m_system;
	FMOD::Sound* m_sound;
	FMOD::Channel* m_currentSoundChannel;
	FMOD::Channel* m_globalChannel;
	FMOD::DSP* m_DSP;
	FMOD_RESULT m_lastResult;
	int m_version;
	void* m_extraDriverData;
	int m_musicOffset;
}

[[link(android)]]
class FMODAudioState {
	// ~FMODAudioState();
	// FMODAudioState();
}

[[link(android)]]
class FMODLevelVisualizer : cocos2d::CCNode {
	// virtual ~FMODLevelVisualizer();

	static FMODLevelVisualizer* create() = win 0x2129f0;

	TodoReturn updateVisualizer(float, float, float) = win 0x212e70;

	virtual bool init() = win 0x212aa0;
}

[[link(android)]]
class FollowRewardPage : FLAlertLayer, FLAlertLayerProtocol, GameRateDelegate, RewardedVideoDelegate {
	// virtual ~FollowRewardPage();

	static FollowRewardPage* create();

	void onClose(cocos2d::CCObject* sender);
	void onRewardedVideo(cocos2d::CCObject* sender);
	void onSpecialItem(cocos2d::CCObject* sender);
	TodoReturn switchToOpenedState(CCMenuItemSpriteExtra*);

	virtual bool init();
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void show();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn rewardedVideoFinished();
	virtual TodoReturn updateRate();
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

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class FRequestProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, FriendRequestDelegate {
	// virtual ~FRequestProfilePage();

	static FRequestProfilePage* create(bool) = win 0xeeee0;

	TodoReturn deleteSelected() = win 0xefb90;
	bool init(bool) = win 0xeef90;
	bool isCorrect(char const*);
	TodoReturn loadPage(int) = win 0xf00d0;
	void onClose(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onSentRequests(cocos2d::CCObject* sender);
	void onToggleAllObjects(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*) = win 0xf0320;
	TodoReturn untoggleAll() = win 0xefe50;
	TodoReturn updateLevelsLabel();
	TodoReturn updatePageArrows();

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn loadFRequestsFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadFRequestsFailed(char const*, GJErrorCode);
	virtual TodoReturn setupPageInfo(gd::string, char const*);
	virtual TodoReturn forceReloadRequests(bool);
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

	static FriendRequestPopup* create(GJFriendRequest*) = win 0x20b440;

	TodoReturn blockUser();
	bool init(GJFriendRequest*) = win 0x20b4e0;
	TodoReturn loadFromGJFriendRequest(GJFriendRequest*);
	void onAccept(cocos2d::CCObject* sender);
	void onBlock(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onRemove(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class FriendsProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, UserListDelegate {
	// virtual ~FriendsProfilePage();

	static FriendsProfilePage* create(UserListType) = win 0xf0960;

	bool init(UserListType) = win 0xf0a10;
	void onBlocked(cocos2d::CCObject* sender) = win 0xf1630;
	void onClose(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	TodoReturn setupUsersBrowser(cocos2d::CCArray*, UserListType) = win 0xf1090;

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn getUserListFinished(cocos2d::CCArray*, UserListType);
	virtual TodoReturn getUserListFailed(UserListType, GJErrorCode);
	virtual TodoReturn userListChanged(cocos2d::CCArray*, UserListType);
	virtual TodoReturn forceReloadList(UserListType);
}

[[link(android)]]
class GameCell : TableViewCell {
	// virtual ~GameCell();
	GameCell(char const*, float, float);

	TodoReturn loadFromString(gd::string);
	void onTouch(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
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

	static GameLevelManager* sharedState() = win 0xf3a00;
	static GameLevelManager* get() {
		return GameLevelManager::sharedState();
	}

	TodoReturn acceptFriendRequest(int, int) = win 0x10be70;
	int accountIDForUserID(int userID);
	void addDLToActive(char const*) = win 0xf8c10;
	TodoReturn areGauntletsLoaded();
	void banUser(int);
	TodoReturn blockUser(int) = win 0x10ca10;
	TodoReturn cleanupDailyLevels() = win 0xf96a0;
	TodoReturn createAndGetAccountComments(gd::string, int);
	TodoReturn createAndGetCommentsFull(gd::string, int, bool);
	TodoReturn createAndGetLevelComments(gd::string, int);
	TodoReturn createAndGetLevelLists(gd::string);
	TodoReturn createAndGetLevels(gd::string);
	TodoReturn createAndGetMapPacks(gd::string);
	TodoReturn createAndGetScores(gd::string, GJScoreType);
	GJGameLevel* createNewLevel() = win 0xf5130;
	TodoReturn createNewLevelList() = win 0xf5ac0;
	TodoReturn createPageInfo(int, int, int) = win 0xf8ac0;
	TodoReturn createSmartTemplate();
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn deleteAccountComment(int, int);
	TodoReturn deleteComment(int, CommentType, int) = win 0x10a920;
	TodoReturn deleteFriendRequests(int, cocos2d::CCArray*, bool) = win 0x10b8c0;
	TodoReturn deleteLevel(GJGameLevel*) = win 0xf58b0;
	TodoReturn deleteLevelComment(int, int);
	TodoReturn deleteLevelList(GJLevelList*);
	TodoReturn deleteSentFriendRequest(int);
	TodoReturn deleteServerLevel(int) = win 0x102990;
	TodoReturn deleteServerLevelList(int) = win 0xff440;
	TodoReturn deleteSmartTemplate(GJSmartTemplate*);
	TodoReturn deleteUserMessages(GJUserMessage*, cocos2d::CCArray*, bool) = win 0x107880;
	TodoReturn downloadLevel(int, bool) = win 0x100c20;
	TodoReturn downloadUserMessage(int, bool) = win 0x107070;
	TodoReturn encodeDataTo(DS_Dictionary*) = win 0xfa200;
	TodoReturn firstSetup() = win 0x39e930;
	TodoReturn followUser(int) = win 0xf99f0;
	TodoReturn friendRequestFromAccountID(int);
	TodoReturn friendRequestWasRemoved(int, bool);
	TodoReturn getAccountCommentKey(int, int);
	void getAccountComments(int accountID, int page, int total) = win 0x108720;
	TodoReturn getActiveDailyID(GJTimedLevelType);
	TodoReturn getActiveSmartTemplate();
	TodoReturn getAllSmartTemplates();
	TodoReturn getAllUsedSongIDs();
	static gd::string getBasePostString() = win 0xfb5b0;
	bool getBoolForKey(char const*) = win 0x111d40;
	gd::string getCommentKey(int ID, int page, int mode, CommentKeyType keytype) = win 0x1091d0;
	cocos2d::CCArray* getCompletedLevels(bool) = win 0xf7790;
	TodoReturn getDailyID(GJTimedLevelType);
	TodoReturn getDailyTimer(GJTimedLevelType);
	TodoReturn getDeleteCommentKey(int, int, int);
	TodoReturn getDeleteMessageKey(int, bool);
	TodoReturn getDescKey(int);
	TodoReturn getDifficultyStr(bool, bool, bool, bool, bool, bool, bool, bool);
	TodoReturn getDiffKey(int);
	TodoReturn getDiffVal(int);
	TodoReturn getFolderName(int, bool);
	TodoReturn getFriendRequestKey(bool, int);
	TodoReturn getFriendRequests(bool, int, int) = win 0x10ae30;
	TodoReturn getGauntletKey(int);
	TodoReturn getGauntletLevels(int) = win 0x100860;
	TodoReturn getGauntlets() = win 0x100100;
	TodoReturn getGauntletSearchKey(int) = win 0x100080;
	TodoReturn getGJChallenges() = win 0x10fd60;
	TodoReturn getGJDailyLevelState(GJTimedLevelType) = win 0x110670;
	void getGJRewards(int) = win 0x10f140;
	TodoReturn getGJUserInfo(int) = win 0x106790;
	TodoReturn getHighestLevelOrder() = win 0xf7550;
	TodoReturn getIntForKey(char const*);
	TodoReturn getLeaderboardScores(char const*) = win 0x104c40;
	TodoReturn getLengthStr(bool, bool, bool, bool, bool, bool);
	const char *getLenKey(int len);
	TodoReturn getLenVal(int);
	void getLevelComments(int ID, int page, int total, int mode, CommentKeyType keytype) = win 0x108160;
	TodoReturn getLevelDownloadKey(int, bool);
	const char* getLevelKey(int levelID);
	void getLevelLeaderboard(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = win 0x1053a0;
	TodoReturn getLevelLeaderboardKey(int, LevelLeaderboardType, LevelLeaderboardMode);
	TodoReturn getLevelListKey(int);
	void getLevelLists(GJSearchObject*) = win 0xff800;
	TodoReturn getLevelSaveData() = win 0xfdd10;
	TodoReturn getLikeAccountItemKey(LikeItemType, int, bool, int);
	TodoReturn getLikeItemKey(LikeItemType, int, bool, int);
	TodoReturn getLocalLevel(int);
	TodoReturn getLocalLevelByName(gd::string);
	TodoReturn getLocalLevelList(int);
	TodoReturn getLowestLevelOrder() = win 0xf75a0;
	GJGameLevel* getMainLevel(int, bool) = win 0xf4d50;
	const char* getMapPackKey(int pack);
	TodoReturn getMapPacks(GJSearchObject*) = win 0xfe120;
	TodoReturn getMessageKey(int);
	TodoReturn getMessagesKey(bool, int);
	TodoReturn getNews();
	TodoReturn getNextFreeTemplateID() = win 0xf9e00;
	TodoReturn getNextLevelName(gd::string);
	TodoReturn getOnlineLevels(GJSearchObject*) = win 0xfccb0;
	TodoReturn getPageInfo(char const*) = win 0xf89e0;
	TodoReturn getPostCommentKey(int);
	const char *getRateStarsKey(int key);
	TodoReturn getReportKey(int);
	GJGameLevel* getSavedDailyLevel(int) = win 0xf7f20;
	GJGameLevel* getSavedDailyLevelFromLevelID(int);
	GJGameLevel* getSavedGauntlet(int) = win 0x100a40;
	GJGameLevel* getSavedGauntletLevel(int) = win 0xf8060;
	GJGameLevel* getSavedLevel(GJGameLevel*) = win 0xf7df0;
	GJGameLevel* getSavedLevel(int) = win 0xf7e50;
	TodoReturn getSavedLevelList(int);
	TodoReturn getSavedLevelLists(int);
	cocos2d::CCArray* getSavedLevels(bool, int) = win 0xf7340;
	TodoReturn getSavedMapPack(int);
	TodoReturn getSearchScene(char const*);
	TodoReturn getSplitIntFromKey(char const*, int) = win 0x109250;
	TodoReturn getStoredLevelComments(char const*) = win 0x1098a0;
	cocos2d::CCArray* getStoredOnlineLevels(char const*) = win 0xf8930;
	TodoReturn getStoredUserList(UserListType) = win 0x10d820;
	TodoReturn getStoredUserMessage(int);
	TodoReturn getStoredUserMessageReply(int);
	TodoReturn getTimeLeft(char const*, float) = win 0xf8fc0;
	void getTopArtists(int page, int total) = win 0x105d80;
	TodoReturn getTopArtistsKey(int);
	TodoReturn getUploadMessageKey(int);
	TodoReturn getUserInfoKey(int);
	TodoReturn getUserList(UserListType) = win 0x10d2a0;
	TodoReturn getUserMessages(bool, int, int) = win 0x106ad0;
	TodoReturn getUsers(GJSearchObject*) = win 0x106320;
	TodoReturn gotoLevelPage(GJGameLevel*);
	void handleIt(bool, gd::string, gd::string, GJHttpType) = win 0xf3e90;
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	TodoReturn hasDailyStateBeenLoaded(GJTimedLevelType);
	TodoReturn hasDownloadedLevel(int);
	TodoReturn hasDownloadedList(int);
	TodoReturn hasLikedAccountItem(LikeItemType, int, bool, int);
	TodoReturn hasLikedItem(LikeItemType, int, bool, int) = win 0x10ed90;
	bool hasLikedItemFullCheck(LikeItemType, int, int) = win 0x10ed10;
	TodoReturn hasRatedDemon(int);
	TodoReturn hasRatedLevelStars(int);
	TodoReturn hasReportedLevel(int);
	TodoReturn invalidateMessages(bool, bool) = win 0x107ff0;
	TodoReturn invalidateRequests(bool, bool) = win 0x10db50;
	TodoReturn invalidateUserList(UserListType, bool);
	bool isDLActive(char const* tag) = win 0xf8b50;
	bool isFollowingUser(int) = win 0xf9910;
	bool isTimeValid(char const*, float) = win 0xf8e90;
	bool isUpdateValid(int);
	TodoReturn itemIDFromLikeKey(char const*);
	TodoReturn keyHasTimer(char const*);
	TodoReturn levelIDFromCommentKey(char const*) = win 0x109430;
	TodoReturn levelIDFromPostCommentKey(char const*);
	TodoReturn likeFromLikeKey(char const*);
	TodoReturn likeItem(LikeItemType, int, bool, int) = win 0x10e100;
	TodoReturn limitSavedLevels() = win 0xf9210;
	TodoReturn makeTimeStamp(char const*) = win 0xf8d70;
	TodoReturn markItemAsLiked(LikeItemType, int, bool, int) = win 0x10eba0;
	TodoReturn markLevelAsDownloaded(int);
	TodoReturn markLevelAsRatedDemon(int);
	TodoReturn markLevelAsRatedStars(int) = win 0x102590;
	TodoReturn markLevelAsReported(int);
	TodoReturn markListAsDownloaded(int);
	TodoReturn messageWasRemoved(int, bool);
	void onAcceptFriendRequestCompleted(gd::string response, gd::string tag) = win 0x10c080;
	void onBanUserCompleted(gd::string response, gd::string tag) = win 0x102db0;
	void onBlockUserCompleted(gd::string response, gd::string tag) = win 0x10cc20;
	void onDeleteCommentCompleted(gd::string response, gd::string tag) = win 0x10ac70;
	void onDeleteFriendRequestCompleted(gd::string response, gd::string tag) = win 0x10bc60;
	void onDeleteServerLevelCompleted(gd::string response, gd::string tag) = win 0x102c10;
	void onDeleteServerLevelListCompleted(gd::string response, gd::string tag) = win 0xff690;
	void onDeleteUserMessagesCompleted(gd::string response, gd::string tag) = win 0x107c80;
	void onDownloadLevelCompleted(gd::string response, gd::string tag) = win 0x101090;
	void onDownloadUserMessageCompleted(gd::string response, gd::string tag) = win 0x1071e0;
	void onGetAccountCommentsCompleted(gd::string response, gd::string tag) = win 0x108890;
	void onGetFriendRequestsCompleted(gd::string response, gd::string tag) = win 0x10afb0;
	void onGetGauntletsCompleted(gd::string response, gd::string tag) = win 0x100260;
	void onGetGJChallengesCompleted(gd::string response, gd::string tag) = win 0x10ffc0;
	void onGetGJDailyLevelStateCompleted(gd::string response, gd::string tag) = win 0x110870;
	void onGetGJRewardsCompleted(gd::string response, gd::string tag) = win 0x10f6d0;
	void onGetGJUserInfoCompleted(gd::string response, gd::string tag) = win 0x1068f0;
	void onGetLeaderboardScoresCompleted(gd::string response, gd::string tag) = win 0x105050;
	void onGetLevelCommentsCompleted(gd::string response, gd::string tag) = win 0x108440;
	void onGetLevelLeaderboardCompleted(gd::string response, gd::string tag) = win 0x105bf0;
	void onGetLevelListsCompleted(gd::string response, gd::string tag) = win 0xff9f0;
	void onGetLevelSaveDataCompleted(gd::string response, gd::string tag) = win 0xfde50;
	void onGetMapPacksCompleted(gd::string response, gd::string tag) = win 0xfe280;
	void onGetNewsCompleted(gd::string response, gd::string tag) = win 0x108120;
	void onGetOnlineLevelsCompleted(gd::string response, gd::string tag) = win 0xfd470;
	void onGetTopArtistsCompleted(gd::string response, gd::string tag) = win 0x105f70;
	void onGetUserListCompleted(gd::string response, gd::string tag) = win 0x10d3f0;
	void onGetUserMessagesCompleted(gd::string response, gd::string tag) = win 0x106c50;
	void onGetUsersCompleted(gd::string response, gd::string tag) = win 0x1064b0;
	void onLikeItemCompleted(gd::string response, gd::string tag) = win 0x10e610;
	void onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	void onRateDemonCompleted(gd::string response, gd::string tag) = win 0x1035a0;
	void onRateStarsCompleted(gd::string response, gd::string tag) = win 0x102410;
	void onReadFriendRequestCompleted(gd::string response, gd::string tag) = win 0x10c4a0;
	void onRemoveFriendCompleted(gd::string response, gd::string tag) = win 0x10c7a0;
	void onReportLevelCompleted(gd::string response, gd::string tag) = win 0x111410;
	void onRequestUserAccessCompleted(gd::string response, gd::string tag) = win 0x10e9c0;
	void onRestoreItemsCompleted(gd::string response, gd::string tag) = win 0x110d90;
	void onSetLevelFeaturedCompleted(gd::string response, gd::string tag) = win 0x103a00;
	void onSetLevelStarsCompleted(gd::string response, gd::string tag) = win 0x103860;
	void onSubmitUserInfoCompleted(gd::string response, gd::string tag);
	void onSuggestLevelStarsCompleted(gd::string response, gd::string tag) = win 0x1030d0;
	void onUnblockUserCompleted(gd::string response, gd::string tag) = win 0x10d060;
	void onUpdateDescriptionCompleted(gd::string response, gd::string tag) = win 0x10ded0;
	void onUpdateLevelCompleted(gd::string response, gd::string tag) = win 0x101eb0;
	void onUpdateUserScoreCompleted(gd::string response, gd::string tag) = win 0x104a00;
	void onUploadCommentCompleted(gd::string response, gd::string tag) = win 0x10a160;
	void onUploadFriendRequestCompleted(gd::string response, gd::string tag) = win 0x10b6e0;
	void onUploadLevelCompleted(gd::string response, gd::string tag) = win 0xfc3b0;
	void onUploadLevelListCompleted(gd::string response, gd::string tag) = win 0xff320;
	void onUploadUserMessageCompleted(gd::string response, gd::string tag) = win 0x1076a0;
	TodoReturn pageFromCommentKey(char const*);
	TodoReturn parseRestoreData(gd::string);
	void performNetworkTest() = win 0xf3a80;
	void ProcessHttpRequest(gd::string endpoint, gd::string params, gd::string tag, GJHttpType httpType) = win 0xf3bf0;
	void processOnDownloadLevelCompleted(gd::string, gd::string, bool) = win 0x101160;
	TodoReturn purgeUnusedLevels();
	TodoReturn rateDemon(int, int, bool) = win 0x103330;
	TodoReturn rateStars(int, int) = win 0x101f90;
	TodoReturn readFriendRequest(int) = win 0x10c2a0;
	TodoReturn removeDelimiterChars(gd::string, bool);
	TodoReturn removeDLFromActive(char const*) = win 0xf8cc0;
	TodoReturn removeFriend(int) = win 0x10c590;
	TodoReturn removeLevelDownloadedKeysFromDict(cocos2d::CCDictionary*);
	TodoReturn removeUserFromList(int, UserListType);
	TodoReturn reportLevel(int) = win 0x111310;
	TodoReturn requestUserAccess() = win 0x10e7c0;
	TodoReturn resetAccountComments(int) = win 0x109030;
	TodoReturn resetAllTimers();
	void resetCommentTimersForLevelID(int, CommentKeyType) = win 0x10a6e0;
	void resetDailyLevelState(GJTimedLevelType) = win 0x110d30;
	void resetGauntlets();
    inline void resetStoredUserInfo(int id) {
        m_storedUserInfo->removeObjectForKey(id);
    }
	void resetStoredUserList(UserListType);
	void resetTimerForKey(char const*) = win 0xf9130;
	cocos2d::CCDictionary* responseToDict(gd::string, bool) = win 0x111fa0;
	TodoReturn restoreItems();
	TodoReturn saveFetchedLevelLists(cocos2d::CCArray*);
	TodoReturn saveFetchedLevels(cocos2d::CCArray*);
	TodoReturn saveFetchedMapPacks(cocos2d::CCArray*);
	TodoReturn saveGauntlet(GJMapPack*) = win 0x100b20;
	TodoReturn saveLevel(GJGameLevel*) = win 0xf8130;
	TodoReturn saveLevelList(GJLevelList*);
	TodoReturn saveLocalScore(int, int, int);
	TodoReturn saveMapPack(GJMapPack*);
	void setActiveSmartTemplate(GJSmartTemplate*);
	void setBoolForKey(bool, char const*);
	void setDiffVal(int, bool);
	void setFolderName(int, gd::string, bool);
	void setIntForKey(int, char const*);
	void setLenVal(int, bool);
	void setLevelFeatured(int, int, bool);
	void setLevelStars(int, int, bool);
	TodoReturn specialFromLikeKey(char const*);
	void storeCommentsResult(cocos2d::CCArray*, gd::string, char const*);
	void storeDailyLevelState(int, int, GJTimedLevelType);
	void storeFriendRequest(GJFriendRequest*);
	void storeSearchResult(cocos2d::CCArray*, gd::string, char const*);
	void storeUserInfo(GJUserScore*);
	void storeUserMessage(GJUserMessage*);
	void storeUserMessageReply(int, GJUserMessage*);
	void storeUserName(int userID, int accountID, gd::string userName) = win 0xf6140;
	void storeUserNames(gd::string usernameString);
	TodoReturn submitUserInfo() = win 0x110f40;
	TodoReturn suggestLevelStars(int, int, int) = win 0x102ec0;
	TodoReturn tryGetUsername(int) = win 0xf6370;
	TodoReturn typeFromCommentKey(char const*);
	TodoReturn typeFromLikeKey(char const*);
	TodoReturn unblockUser(int) = win 0x10ce50;
	TodoReturn unfollowUser(int) = win 0xf9b10;
	TodoReturn updateDescription(int, gd::string) = win 0x10dc80;
	TodoReturn updateLevel(GJGameLevel*) = win 0x101d40;
	TodoReturn updateLevelOrders() = win 0xf75f0;
	TodoReturn updateLevelRewards(GJGameLevel*);
	TodoReturn updateSavedLevelList(GJLevelList*);
	TodoReturn updateUsernames();
	TodoReturn updateUserScore() = win 0x103ab0;
	TodoReturn uploadAccountComment(gd::string) = win 0x1099d0;
	TodoReturn uploadComment(gd::string, CommentType, int, int) = win 0x109a70;
	TodoReturn uploadFriendRequest(int, gd::string) = win 0x10b440;
	TodoReturn uploadLevel(GJGameLevel*) = win 0xfb760;
	TodoReturn uploadLevelComment(int, gd::string, int) = win 0x109940;
	TodoReturn uploadLevelList(GJLevelList*) = win 0xfeac0;
	TodoReturn uploadUserMessage(int, gd::string, gd::string) = win 0x107370;
	TodoReturn userIDForAccountID(int);
	TodoReturn userInfoForAccountID(int);
	gd::string userNameForUserID(int) = win 0xf6290;
	TodoReturn verifyLevelState(GJGameLevel*);
	TodoReturn writeSpecialFilters(GJSearchObject*);

	virtual bool init();

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
class GameLevelOptionsLayer : GJOptionsLayer{
    // virtual ~GameLevelOptionsLayer();

    static GameLevelOptionsLayer* create(GJGameLevel*);

    bool init(GJGameLevel*);

    virtual TodoReturn setupOptions() = win 0x213d20;
    virtual TodoReturn didToggle(int);
}

[[link(android), depends(UIButtonConfig)]]
class GameManager : GManager {
	// virtual ~GameManager();
	// GameManager() = win 0x120770;

	static GameManager* get() {
		return GameManager::sharedState();
	}

	static GameManager* sharedState() = win 0x121540;

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
	TodoReturn activeIconForType(IconType) = win 0x1270f0;
	TodoReturn addCustomAnimationFrame(int, int, gd::string, gd::string) = win 0x14da60;
	TodoReturn addDuplicateLastFrame(int);
	TodoReturn addGameAnimation(int, int, float, gd::string, gd::string, int) = win 0x14d8c0;
	TodoReturn addIconDelegate(cocos2d::CCObject*, int);
	TodoReturn addNewCustomObject(gd::string) = win 0x128ea0;
	TodoReturn addToGJLog(cocos2d::CCString*);
	TodoReturn applicationDidEnterBackground();
	TodoReturn applicationWillEnterForeground() = win 0x12ded0;
	TodoReturn calculateBaseKeyForIcons() = win 0x1278d0;
	TodoReturn canShowRewardedVideo();
	TodoReturn checkSteamAchievementUnlock() = win 0x1234f0;
	TodoReturn checkUsedIcons() = win 0x1297d0;
	TodoReturn claimItemsResponse(gd::string);
	TodoReturn clearGJLog();
	cocos2d::ccColor3B colorForIdx(int) = win 0x126090;
	TodoReturn colorForPos(int);
	TodoReturn colorKey(int, UnlockType) = win 0x122350;
	TodoReturn completedAchievement(gd::string) = win 0x122b50;
	TodoReturn countForType(IconType) = win 0x127270;
	TodoReturn defaultFrameForAnimation(int);
	TodoReturn defaultYOffsetForBG2(int);
	TodoReturn didExitPlayscene();
	TodoReturn doQuickSave() = win 0x12de10;
	TodoReturn dpadConfigToString(UIButtonConfig&);
	TodoReturn eventUnlockFeature(char const*);
	TodoReturn fadeInMenuMusic() = win 0x1219f0;
	TodoReturn fadeInMusic(gd::string) = win 0x121a60;
	TodoReturn finishedLoadingBGAsync(cocos2d::CCObject*) = win 0x127ed0;
	TodoReturn finishedLoadingGAsync(int);
	TodoReturn finishedLoadingGAsync1(cocos2d::CCObject*);
	TodoReturn finishedLoadingGAsync2(cocos2d::CCObject*);
	TodoReturn finishedLoadingIconAsync(cocos2d::CCObject*);
	TodoReturn finishedLoadingMGAsync(int);
	TodoReturn finishedLoadingMGAsync1(cocos2d::CCObject*);
	TodoReturn finishedLoadingMGAsync2(cocos2d::CCObject*);
	TodoReturn followTwitch();
	TodoReturn followTwitter();
	TodoReturn framesForAnimation(int);
	TodoReturn frameTimeForAnimation(int);
	TodoReturn generateSecretNumber();
	TodoReturn getBGTexture(int); //  = win 0x127dc0; actually loadBackground, source: LevelSettingsLayer::selectArtClosed
	TodoReturn getFontFile(int);
	TodoReturn getFontTexture(int) = win 0x127c30;
	bool getGameVariable(char const*) = win 0x128730;
	TodoReturn getGTexture(int);
	TodoReturn getIconRequestID();
	int getIntGameVariable(char const*) = win 0x128c80;
	TodoReturn getMenuMusicFile() = win 0x1216e0;
	TodoReturn getMGTexture(int);
	TodoReturn getNextUniqueObjectKey() = win 0x128d70;
	TodoReturn getNextUsedKey(int, bool) = win 0x128de0;
	TodoReturn getOrderedCustomObjectKeys();
	TodoReturn getPracticeMusicFile() = win 0x1217b0;
	TodoReturn getUGV(char const*) = win 0x128a20;
	TodoReturn getUnlockForAchievement(gd::string, int&, UnlockType&) = win 0x122690;
	TodoReturn groundHasSecondaryColor(int);
	TodoReturn iconAndTypeForKey(int, int&, int&);
	TodoReturn iconKey(int, IconType) = win 0x121d30;
	UnlockType iconTypeToUnlockType(IconType) = win 0x122090;
	bool isColorUnlocked(int, UnlockType) = win 0x122490;
	bool isIconLoaded(int, int);
	bool isIconUnlocked(int, IconType) = win 0x121f90;
	TodoReturn itemPurchased(char const*);
	TodoReturn joinDiscord();
	TodoReturn joinReddit();
	TodoReturn keyForIcon(int, int);
	TodoReturn levelIsPremium(int, int);
	TodoReturn likeFacebook();
	void loadBackground(int) = win 0x127dc0;
	TodoReturn loadBackgroundAsync(int) = win 0x127e60;
	TodoReturn loadDeathEffect(int) = win 0x127c80;
	TodoReturn loadDpadFromString(UIButtonConfig&, gd::string);
	TodoReturn loadDPadLayout(int, bool) = win 0x12af80;
	TodoReturn loadFont(int) = win 0x127ba0;
	void loadGround(int) = win 0x1281f0;
	TodoReturn loadGroundAsync(int);
	TodoReturn loadIcon(int, int, int) = win 0x127440;
	TodoReturn loadIconAsync(int, int, int, cocos2d::CCObject*);
	void loadMiddleground(int) = win 0x127f50;
	TodoReturn loadMiddlegroundAsync(int);
	TodoReturn loadVideoSettings();
	TodoReturn lockColor(int, UnlockType) = win 0x122610;
	TodoReturn lockIcon(int, IconType) = win 0x1222d0;
	TodoReturn logLoadedIconInfo();
	TodoReturn openEditorGuide() = win 0x1270d0;
	TodoReturn playMenuMusic() = win 0x121890;
	TodoReturn playSFXTrigger(SFXTriggerGameObject*) = win 0x121b40;
	TodoReturn prepareDPadSettings() = win 0x12b720;
	TodoReturn printGJLog();
	TodoReturn queueReloadMenu() = win 0x12e3e0;
	TodoReturn rateGame();
	void recountUserStats(gd::string) = win 0x129ce0;
	void reloadAll(bool, bool, bool, bool) = win 0x12e4b0;
	void reloadAll(bool a, bool b, bool c) {
		// TODO: figure out these args i have no idea
		return this->reloadAll(a, b, c, false);
	}
	TodoReturn reloadAllStep2() = win 0x12e540;
	TodoReturn reloadAllStep3() = win 0x12e6a0;
	TodoReturn reloadAllStep4() = win 0x12e740;
	TodoReturn reloadAllStep5() = win 0x12e7b0;
	TodoReturn reloadMenu();
	TodoReturn removeCustomObject(int);
	TodoReturn removeIconDelegate(int) = win 0x127370;
	TodoReturn reorderKey(int, bool);
	TodoReturn reportAchievementWithID(char const*, int, bool) = win 0x1234a0;
	TodoReturn reportPercentageForLevel(int, int, bool) = win 0x122d50;
	TodoReturn resetAchievement(gd::string);
	TodoReturn resetAdTimer();
	TodoReturn resetAllIcons();
	TodoReturn resetCoinUnlocks();
	TodoReturn resetDPadSettings(bool);
	TodoReturn resolutionForKey(int) = win 0x12e800;
	TodoReturn returnToLastScene(GJGameLevel*) = win 0x12e110;
	TodoReturn rewardedVideoAdFinished(int);
	TodoReturn rewardedVideoHidden();
	TodoReturn rewardedVideoHiddenDelayed();
	TodoReturn safePopScene();
	TodoReturn saveAdTimer();
	TodoReturn saveDPadLayout(int, bool) = win 0x12ac70;
	void setGameVariable(char const*, bool) = win 0x1284e0;
	void setHasRatingPower(int);
	void setIntGameVariable(char const*, int) = win 0x128b80;
	void setPlayerUserID(int);
	void setUGV(char const*, bool) = win 0x1288d0;
	TodoReturn setupGameAnimations() = win 0x14b280;
	TodoReturn sheetNameForIcon(int, int) = win 0x1279a0;
	TodoReturn shortenAdTimer(float);
	TodoReturn shouldShowInterstitial(int, int, int);
	TodoReturn showInterstitial();
	TodoReturn showInterstitialForced();
	TodoReturn showMainMenuAd();
	TodoReturn startUpdate();
	TodoReturn stringForCustomObject(int);
	TodoReturn subYouTube();
	TodoReturn switchCustomObjects(int, int);
	TodoReturn switchScreenMode(bool, bool);
	TodoReturn syncPlatformAchievements();
	TodoReturn toggleGameVariable(char const*);
	TodoReturn tryCacheAd();
	TodoReturn tryShowInterstitial(int, int, int);
	TodoReturn unloadBackground() = win 0x127d40;
	TodoReturn unloadIcon(int, int, int) = win 0x1276b0;
	TodoReturn unloadIcons(int) = win 0x127870;
	TodoReturn unlockColor(int, UnlockType) = win 0x122560;
	TodoReturn unlockedPremium();
	TodoReturn unlockIcon(int, IconType) = win 0x122220;
	TodoReturn unlockTypeToIconType(int) = win 0x122190;
	TodoReturn updateCustomFPS() = win 0x12ec60;
	TodoReturn updateMusic();
	TodoReturn verifyAchievementUnlocks();
	TodoReturn verifyCoinUnlocks();
	TodoReturn verifyStarUnlocks();
	TodoReturn verifySyncedCoins();
	TodoReturn videoAdHidden();
	TodoReturn videoAdShowed();

	virtual void update(float);
	virtual bool init() = win 0x1215c0;
	virtual TodoReturn encodeDataTo(DS_Dictionary*) = win 0x12d480;
	virtual TodoReturn dataLoaded(DS_Dictionary*) = win 0x12b830;
	virtual TodoReturn firstLoad() = win 0x12cb20;

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
	gd::map<int, bool> m_probablyIsIconLoaded;
	void* m_somethingIconAndTypeForKey;
	void* m_somethingKeyForIcon;
	void* m_idk;
	gd::map<int, cocos2d::CCObject*> m_iconDelegates;
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
	// GameObject() = win 0xeaac0;

	TodoReturn addColorSprite(gd::string);
	TodoReturn addColorSpriteToParent(bool);
	TodoReturn addColorSpriteToSelf();
	TodoReturn addCustomBlackChild(gd::string, float, bool);
	TodoReturn addCustomChild(gd::string, cocos2d::CCPoint, int);
	TodoReturn addCustomColorChild(gd::string);
	TodoReturn addEmptyGlow();
	TodoReturn addGlow(gd::string);
	TodoReturn addInternalChild(cocos2d::CCSprite*, gd::string, cocos2d::CCPoint, int);
	TodoReturn addInternalCustomColorChild(gd::string, cocos2d::CCPoint, int);
	TodoReturn addInternalGlowChild(gd::string, cocos2d::CCPoint);
	TodoReturn addNewSlope01(bool);
	TodoReturn addNewSlope01Glow(bool);
	TodoReturn addNewSlope02(bool);
	TodoReturn addNewSlope02Glow(bool);
	TodoReturn addRotation(float, float);
	TodoReturn addRotation(float);
	TodoReturn addToColorGroup(int);
	TodoReturn addToCustomScaleX(float);
	TodoReturn addToCustomScaleY(float);
	TodoReturn addToOpacityGroup(int);
	TodoReturn addToTempOffset(double, double);
	TodoReturn assignUniqueID();
	TodoReturn belongsToGroup(int);
	TodoReturn calculateOrientedBox();
	TodoReturn canChangeCustomColor();
	TodoReturn canChangeMainColor();
	TodoReturn canChangeSecondaryColor();
	TodoReturn canRotateFree();
	TodoReturn colorForMode(int, bool) = win 0x142a50;
	TodoReturn commonInteractiveSetup();
	TodoReturn commonSetup() = win 0x1310c0;
	TodoReturn copyGroups(GameObject*) = win 0x13d8f0;
	TodoReturn createAndAddParticle(int, char const*, int, cocos2d::tCCPositionType) = win 0x13b790;
	TodoReturn createColorGroupContainer(int);
	TodoReturn createGlow(gd::string);
	void createGroupContainer(int) = win 0x13d790;
	TodoReturn createOpacityGroupContainer(int);
	TodoReturn createSpriteColor(int);
	static GameObject* createWithFrame(char const*) = win 0x130fc0;
	static GameObject* createWithKey(int) = win 0x130330;
	void deselectObject(); // = win 0x141b70; actually updateObjectEditorColor, source: LevelEditorLayer::updateVisibility
	TodoReturn destroyObject();
	TodoReturn determineSlopeDirection() = win 0x13d3c0;
	TodoReturn didScaleXChange();
	TodoReturn didScaleYChange();
	TodoReturn dirtifyObjectPos();
	TodoReturn dirtifyObjectRect();
	TodoReturn disableObject();
	TodoReturn dontCountTowardsLimit();
	TodoReturn duplicateAttributes(GameObject*);
	TodoReturn duplicateColorMode(GameObject*) = win 0x1424c0;
	TodoReturn duplicateValues(GameObject*);
	TodoReturn editorColorForCustomMode(int);
	TodoReturn editorColorForMode(int);
	TodoReturn fastRotateObject(float);
	TodoReturn getActiveColorForMode(int, bool) = win 0x142d30;
	TodoReturn getBallFrame(int);
	TodoReturn getBoundingRect();
	TodoReturn getBoxOffset();
	TodoReturn getColorFrame(gd::string);
	TodoReturn getColorIndex();
	TodoReturn getColorKey(bool, bool) = win 0x13df90;
	TodoReturn getCustomZLayer();
	TodoReturn getGlowFrame(gd::string);
	TodoReturn getGroupDisabled();
	TodoReturn getGroupID(int);
	TodoReturn getGroupString();
	TodoReturn getLastPosition();
	TodoReturn getMainColor();
	TodoReturn getMainColorMode();
	TodoReturn getObjectDirection();
	TodoReturn getObjectRadius();
	TodoReturn getObjectRectDirty();
	TodoReturn getObjectRectPointer();
	TodoReturn getObjectZLayer();
	TodoReturn getObjectZOrder();
	TodoReturn getOrientedRectDirty();
	TodoReturn getOuterObjectRect();
	TodoReturn getParentMode();
	TodoReturn getRelativeSpriteColor(int) = win 0x142320;
	TodoReturn getScalePosDelta();
	TodoReturn getSecondaryColor();
	TodoReturn getSecondaryColorMode();
	TodoReturn getSlopeAngle();
	TodoReturn getStartPos();
	TodoReturn getType();
	TodoReturn getUnmodifiedPosition();
	TodoReturn groupColor(cocos2d::ccColor3B const&, bool);
	TodoReturn groupOpacityMod() = win 0x13dd70;
	TodoReturn groupWasDisabled();
	TodoReturn groupWasEnabled();
	TodoReturn hasSecondaryColor();
	TodoReturn ignoreEditorDuration();
	TodoReturn ignoreEnter();
	TodoReturn ignoreFade();
	bool init(char const*);
	bool isBasicEnterEffect(int);
	bool isBasicTrigger();
	bool isColorObject();
	bool isColorTrigger();
	bool isConfigurablePortal();
	bool isEditorSpawnableTrigger();
	bool isFacingDown() = win 0x142180;
	bool isFacingLeft();
	bool isSettingsObject();
	bool isSpawnableTrigger();
	bool isSpecialObject();
	bool isSpeedObject() = win 0x143970;
	bool isStoppableTrigger();
	bool isTrigger() = win 0x142ea0;
	void loadGroupsFromString(gd::string) = win 0x13dc20;
	TodoReturn makeInvisible();
	TodoReturn objectFromVector(gd::vector<gd::string>&, gd::vector<void*>&, GJBaseGameLayer*, bool) = win 0x13e420;
	TodoReturn opacityModForMode(int, bool);
	TodoReturn parentForZLayer(int, bool, int);
	TodoReturn perspectiveColorFrame(char const*, int);
	TodoReturn perspectiveFrame(char const*, int);
	TodoReturn playDestroyObjectAnim(GJBaseGameLayer*);
	TodoReturn playPickupAnimation(cocos2d::CCSprite*, float, float, float, float, float, float, float, float, bool, float, float);
	TodoReturn playPickupAnimation(cocos2d::CCSprite*, float, float, float, float);
	TodoReturn playShineEffect() = win 0x13bf40;
	TodoReturn quickUpdatePosition();
	TodoReturn quickUpdatePosition2();
	TodoReturn removeColorSprite();
	TodoReturn removeGlow();
	TodoReturn reorderColorSprite();
	TodoReturn resetColorGroups();
	TodoReturn resetGroupDisabled();
	TodoReturn resetGroups();
	TodoReturn resetMainColorMode();
	TodoReturn resetMID();
	TodoReturn resetMoveOffset();
	TodoReturn resetRScaleForced();
	TodoReturn resetSecondaryColorMode();
	void setAreaOpacity(float, float, int);
	void setCustomZLayer(int);
	void setDefaultMainColorMode(int);
	void setDefaultSecondaryColorMode(int);
	void setGlowOpacity(unsigned char);
	void setLastPosition(cocos2d::CCPoint const&);
	void setMainColorMode(int);
	void setSecondaryColorMode(int);
	TodoReturn setupColorSprite(int, bool);
	TodoReturn setupPixelScale();
	TodoReturn setupSpriteSize();
	TodoReturn shouldBlendColor(GJSpriteColor*, bool) = win 0x133880;
	TodoReturn shouldLockX() = win 0x139d10;
	TodoReturn shouldNotHideAnimFreeze();
	TodoReturn shouldShowPickupEffects();
	TodoReturn slopeFloorTop();
	TodoReturn slopeWallLeft();
	TodoReturn slopeYPos(cocos2d::CCRect);
	TodoReturn slopeYPos(float);
	TodoReturn slopeYPos(GameObject*);
	TodoReturn spawnDefaultPickupParticle(GJBaseGameLayer*);
	TodoReturn updateBlendMode() = win 0x13cf30;
	TodoReturn updateCustomColorType(short);
	TodoReturn updateCustomScaleX(float) = win 0x13b290;
	TodoReturn updateCustomScaleY(float) = win 0x13b350;
	TodoReturn updateHSVState();
	TodoReturn updateIsOriented() = win 0x141fe0;
	TodoReturn updateMainColorOnly();
	TodoReturn updateMainOpacity();
	void updateObjectEditorColor() = win 0x141b70;
	TodoReturn updateSecondaryColorOnly();
	TodoReturn updateSecondaryOpacity();
	TodoReturn updateStartPos() = win 0x133160;
	TodoReturn updateUnmodifiedPositions();
	TodoReturn usesFreezeAnimation();
	TodoReturn usesSpecialAnimation();

	// MSVC changed virtual table ordering somewhere between what Rob uses
	// and now, and now virtual functions that have non virtual overloads
	// are added to the first of the vtable regardless of the order
	// defined in the header. This is why we simply can not use these
	// two functions since defining them would break the vtable layout.
	// TodoReturn updateMainColor(); 
	// TodoReturn updateSecondaryColor();

	virtual void update(float);
	virtual void setScaleX(float) = win 0x13af80;
	virtual void setScaleY(float) = win 0x13b010;
	virtual void setScale(float) = win 0x13b0a0;
	virtual void setPosition(cocos2d::CCPoint const&) = win 0x13aa40;
	virtual void setVisible(bool) = win 0x13b890;
	virtual void setRotation(float) = win 0x13ac30;
	virtual void setRotationX(float) = win 0x13ad30;
	virtual void setRotationY(float) = win 0x13ae30;
	virtual void setOpacity(unsigned char) = win 0x13b490;
	virtual bool initWithTexture(cocos2d::CCTexture2D*) = win 0x131080;
	virtual void setChildColor(cocos2d::ccColor3B const&) = win 0x141630;
	virtual void setFlipX(bool) = win 0x13af00;
	virtual void setFlipY(bool) = win 0x13af40;
	virtual TodoReturn firstSetup();
	virtual void customSetup();
	virtual TodoReturn setupCustomSprites(gd::string);
	virtual TodoReturn addMainSpriteToParent(bool) = win 0x13cf90;
	virtual TodoReturn resetObject();
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn activateObject();
	virtual void deactivateObject(bool) = win 0x133790;
	virtual TodoReturn transferObjectRect(cocos2d::CCRect&) = win 0x13a500;
	virtual TodoReturn getObjectRect() = win 0x13a570;
	virtual TodoReturn getObjectRect(float, float) = win 0x13a570;
	virtual TodoReturn getObjectRect2(float, float);
	virtual TodoReturn getObjectTextureRect();
	virtual cocos2d::CCPoint getRealPosition();
	virtual void setStartPos(cocos2d::CCPoint);
	virtual TodoReturn updateStartValues();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
	virtual TodoReturn claimParticle();
	virtual TodoReturn unclaimParticle();
	virtual TodoReturn particleWasActivated();
	virtual bool isFlipX() = win 0x13aee0;
	virtual bool isFlipY() = win 0x13aef0;
	virtual void setRScaleX(float);
	virtual void setRScaleY(float);
	virtual void setRScale(float);
	virtual TodoReturn getRScaleX();
	virtual TodoReturn getRScaleY();
	virtual void setRRotation(float);
	virtual TodoReturn triggerActivated(float);
	virtual void setObjectColor(cocos2d::ccColor3B const&) = win 0x141300;
	virtual void setGlowColor(cocos2d::ccColor3B const&);
	virtual TodoReturn restoreObject();
	virtual TodoReturn animationTriggered();
	virtual TodoReturn selectObject(cocos2d::ccColor3B) = win 0x141690;
	virtual TodoReturn activatedByPlayer(PlayerObject*);
	virtual TodoReturn hasBeenActivatedByPlayer(PlayerObject*);
	virtual TodoReturn hasBeenActivated();
	virtual TodoReturn getOrientedBox();
	virtual TodoReturn updateOrientedBox();
	virtual TodoReturn getObjectRotation();
	virtual TodoReturn updateMainColor(cocos2d::ccColor3B const&);
	virtual TodoReturn updateSecondaryColor(cocos2d::ccColor3B const&);
	virtual void addToGroup(int) = win 0x13d7f0;
	virtual void removeFromGroup(int) = win 0x13d870;
	virtual TodoReturn saveActiveColors();
	virtual TodoReturn spawnXPosition();
	virtual TodoReturn canAllowMultiActivate();
	virtual TodoReturn blendModeChanged();
	virtual TodoReturn updateParticleColor(cocos2d::ccColor3B const&);
	virtual TodoReturn updateParticleOpacity(unsigned char);
	virtual TodoReturn updateMainParticleOpacity(unsigned char);
	virtual TodoReturn updateSecondaryParticleOpacity(unsigned char);
	virtual TodoReturn canReverse();
	virtual bool isSpecialSpawnObject();
	virtual TodoReturn canBeOrdered();
	virtual TodoReturn getObjectLabel();
	virtual void setObjectLabel(cocos2d::CCLabelBMFont*);
	virtual TodoReturn shouldDrawEditorHitbox();
	virtual TodoReturn getHasSyncedAnimation();
	virtual TodoReturn getHasRotateAction();
	virtual TodoReturn canMultiActivate(bool);
	virtual TodoReturn updateTextKerning(int);
	virtual TodoReturn getTextKerning();
	virtual void setObjectRectDirty(bool);
	virtual void setOrientedRectDirty(bool);
	virtual void setType(GameObjectType);

	// windows members may be wrong! yay!

	PAD = android32 0x11, win 0xf, android64 0x11; // i will not question the windows pad
	
	// property 511
	bool m_hasExtendedCollision;
	PAD = android32 0x13, win 0x13, android64 0x13;
	
	// somehow related to property 155 and 156 if anyone wants to reverse engineer
	int m_activeMainColorID;
	int m_activeDetailColorID;
	
	PAD = android32 0x4c, win 0x4c, android64 0x54;

	cocos2d::CCSprite* m_glowSprite;

	PAD = android32 0x14, win 0x14, android64 0x14;
	
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
	PAD = android32 0xc, win 0xa, android64 0xc; // i will not question the windows pad
	
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
	
	PAD = android32 0x12, win 0x12, android64 0x12; // TODO: yeah someone pls fix windows pads
}

[[link(android)]]
class GameObjectCopy : cocos2d::CCObject {
	// virtual ~GameObjectCopy();

	static GameObjectCopy* create(GameObject*) = win 0x24a8b0;

	bool init(GameObject*) = win 0x24a960;
	TodoReturn resetObject();

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
	void onPracticeMusicSync(cocos2d::CCObject* sender) = win 0x213930;
	void onUIOptions(cocos2d::CCObject* sender);
	TodoReturn showPracticeMusicSyncUnlockInfo() = win 0x213620;

	virtual TodoReturn setupOptions();
	virtual TodoReturn didToggle(int);
}

[[link(android)]]
class GameOptionsTrigger : EffectGameObject {
	// virtual ~GameOptionsTrigger();

	static GameOptionsTrigger* create(char const*);

	bool init(char const*);

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class GameRateDelegate {
	virtual TodoReturn updateRate();
}

[[link(android)]]
class GameStatsManager : cocos2d::CCNode {
	// virtual ~GameStatsManager();
	// GameStatsManager() = win 0x167860;

	static GameStatsManager* sharedState() = win 0x167d90;

	TodoReturn accountIDForIcon(int, UnlockType);
	TodoReturn addSimpleSpecialChestReward(gd::string, UnlockType, int, bool) = win 0x179bd0;
	TodoReturn addSpecialRewardDescription(gd::string, gd::string) = win 0x179e00;
	TodoReturn addStoreItem(int, int, int, int, ShopType) = win 0x169f40;
	TodoReturn areChallengesLoaded();
	TodoReturn areRewardsLoaded();
	TodoReturn awardCurrencyForLevel(GJGameLevel*) = win 0x172080;
	TodoReturn awardDiamondsForLevel(GJGameLevel*) = win 0x1725a0;
	TodoReturn awardSecretKey() = win 0x180040;
	TodoReturn checkAchievement(char const*) = win 0x16b0b0;
	TodoReturn checkCoinAchievement(GJGameLevel*);
	TodoReturn checkCoinsForLevel(GJGameLevel*);
	TodoReturn claimListReward(GJLevelList*);
	TodoReturn collectReward(GJRewardType, GJRewardItem*);
	TodoReturn collectVideoReward(int);
	TodoReturn completedChallenge(GJChallengeItem*);
	TodoReturn completedDailyLevel(GJGameLevel*);
	TodoReturn completedDemonLevel(GJGameLevel*) = win 0x1700b0;
	TodoReturn completedLevel(GJGameLevel*);
	TodoReturn completedMapPack(GJMapPack*);
	TodoReturn completedStarLevel(GJGameLevel*) = win 0x1701a0;
	TodoReturn countSecretChests(GJRewardType);
	TodoReturn countUnlockedSecretChests(GJRewardType);
	TodoReturn createSecretChestItems() = win 0x17a620;
	TodoReturn createSecretChestRewards() = win 0x17aab0;
	TodoReturn createSpecialChestItems() = win 0x176940;
	TodoReturn createStoreItems() = win 0x168680;
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn encodeDataTo(DS_Dictionary*) = win 0x180630;
	TodoReturn firstSetup();
	TodoReturn generateItemUnlockableData() = win 0x1680a0;
	int getAwardedCurrencyForLevel(GJGameLevel*) = win 0x171eb0;
	TodoReturn getAwardedDiamondsForLevel(GJGameLevel*) = win 0x1723f0;
	TodoReturn getBaseCurrency(int, bool, int);
	int getBaseCurrencyForLevel(GJGameLevel*) = win 0x171d90;
	TodoReturn getBaseDiamonds(int);
	TodoReturn getBonusDiamonds(int);
	TodoReturn getChallenge(int) = win 0x173400;
	TodoReturn getChallengeKey(GJChallengeItem*);
	int getCollectedCoinsForLevel(GJGameLevel*) = win 0x16fa70;
	TodoReturn getCompletedMapPacks();
	TodoReturn getCurrencyKey(GJGameLevel*) = win 0x171c70;
	TodoReturn getDailyLevelKey(int) = win 0x173d60;
	TodoReturn getDemonLevelKey(GJGameLevel*) = win 0x16fcb0;
	TodoReturn getGauntletRewardKey(int) = win 0x179d00;
	TodoReturn getItemKey(int, int) = win 0x1729f0;
	int getItemUnlockState(int, UnlockType) = win 0x176730;
	int getItemUnlockStateLite(int, UnlockType);
	gd::string getLevelKey(GJGameLevel*) = win 0x16fb10;
	gd::string getLevelKey(int, bool, bool, bool) = win 0x16fb80;
	TodoReturn getListRewardKey(GJLevelList*) = win 0x173b70;
	TodoReturn getMapPackKey(int);
	TodoReturn getNextVideoAdReward();
	TodoReturn getPathRewardKey(int) = win 0x17a3d0;
	TodoReturn getQueuedChallenge(int) = win 0x1734d0;
	TodoReturn getRewardForSecretChest(int);
	TodoReturn getRewardForSpecialChest(gd::string);
	TodoReturn getRewardItem(GJRewardType);
	TodoReturn getRewardKey(GJRewardType, int);
	TodoReturn getSecondaryQueuedChallenge(int) = win 0x1735a0;
	TodoReturn getSecretChestForItem(int, UnlockType);
	TodoReturn getSecretCoinKey(char const*);
	TodoReturn getSpecialChestKeyForItem(int, UnlockType) = win 0x179c70;
	TodoReturn getSpecialRewardDescription(gd::string, bool);
	TodoReturn getSpecialUnlockDescription(int, UnlockType, bool);
	TodoReturn getStarLevelKey(GJGameLevel*) = win 0x16fd10;
	int getStat(char const*) = win 0x16adc0;
	TodoReturn getStatFromKey(StatKey);
	TodoReturn getStoreItem(int, int);
	TodoReturn getStoreItem(int);
	TodoReturn getTotalCollectedCurrency() = win 0x1740d0;
	TodoReturn getTotalCollectedDiamonds();
	bool hasClaimedListReward(GJLevelList*) = win 0x173bf0;
	bool hasCompletedChallenge(GJChallengeItem*);
	bool hasCompletedDailyLevel(int) = win 0x173de0;
	bool hasCompletedDemonLevel(GJGameLevel*) = win 0x16fe00;
	bool hasCompletedGauntletLevel(int);
	bool hasCompletedLevel(GJGameLevel* level) {
		return m_completedLevels->objectForKey(this->getLevelKey(level)) != nullptr;
	}
	bool hasCompletedMainLevel(int levelID) {
		return m_completedLevels->objectForKey(this->getLevelKey(levelID, false, false, false)) != nullptr;
	}
	bool hasCompletedMapPack(int);
	bool hasCompletedOnlineLevel(int);
	bool hasCompletedStarLevel(GJGameLevel*) = win 0x16fec0;
	bool hasPendingUserCoin(char const*) = win 0x171670;
	bool hasRewardBeenCollected(GJRewardType, int);
	bool hasSecretCoin(char const*) = win 0x1717e0;
	bool hasUserCoin(char const*) = win 0x171500;
	TodoReturn incrementActivePath(int) = win 0x16a4f0;
	TodoReturn incrementChallenge(GJChallengeType, int) = win 0x173670;
	TodoReturn incrementStat(char const*, int) = win 0x16a250;
	TodoReturn incrementStat(char const*);
	bool isGauntletChestUnlocked(int);
	bool isItemEnabled(UnlockType, int) = win 0x1767f0;
	bool isItemUnlocked(UnlockType, int) = win 0x176570;
	bool isPathChestUnlocked(int) = win 0x17a4d0;
	bool isPathUnlocked(StatKey);
	bool isSecretChestUnlocked(int) = win 0x17a7c0;
	bool isSecretCoin(gd::string);
	bool isSecretCoinValid(gd::string);
	bool isSpecialChestLiteUnlockable(gd::string);
	bool isSpecialChestUnlocked(gd::string) = win 0x17a050;
	bool isStoreItemUnlocked(int) = win 0x16a010;
	TodoReturn keyCostForSecretChest(int) = win 0x17a9b0;
	TodoReturn logCoins();
	TodoReturn markLevelAsCompletedAndClaimed(GJGameLevel*);
	TodoReturn postLoadGameStats() = win 0x181810;
	TodoReturn preProcessReward(GJRewardItem*) = win 0x172c80;
	TodoReturn preSaveGameStats() = win 0x1819d0;
	TodoReturn processChallengeQueue(int) = win 0x173b10;
	TodoReturn purchaseItem(int) = win 0x16a0f0;
	TodoReturn recountSpecialStats() = win 0x174ec0;
	TodoReturn recountUserCoins(bool);
	TodoReturn registerRewardsFromItem(GJRewardItem*) = win 0x17fee0;
	TodoReturn removeChallenge(int) = win 0x172ff0;
	TodoReturn removeErrorFromSpecialChests();
	TodoReturn removeQueuedChallenge(int) = win 0x173190;
	TodoReturn removeQueuedSecondaryChallenge(int) = win 0x173330;
	TodoReturn resetChallengeTimer();
	TodoReturn resetPreSync();
	TodoReturn resetSpecialStatAchievements();
	TodoReturn resetUserCoins();
	TodoReturn restorePostSync();
	void setAwardedBonusKeys(int);
	void setStarsForMapPack(int, int);
	void setStat(char const*, int) = win 0x16af10;
	void setStatIfHigher(char const*, int);
	TodoReturn setupIconCredits() = win 0x15e8d0;
	TodoReturn shopTypeForItemID(int);
	TodoReturn shouldAwardSecretKey();
	TodoReturn starsForMapPack(int);
	TodoReturn storeChallenge(int, GJChallengeItem*) = win 0x172f20;
	TodoReturn storeChallengeTime(int);
	TodoReturn storePendingUserCoin(char const*);
	TodoReturn storeQueuedChallenge(int, GJChallengeItem*) = win 0x1730c0;
	TodoReturn storeRewardState(GJRewardType, int, int, gd::string);
	TodoReturn storeSecondaryQueuedChallenge(int, GJChallengeItem*);
	TodoReturn storeSecretCoin(char const*);
	TodoReturn storeUserCoin(char const*);
	TodoReturn tempClear();
	TodoReturn toggleEnableItem(UnlockType, int, bool) = win 0x176890;
	TodoReturn trySelectActivePath() = win 0x16a350;
	TodoReturn uncompleteLevel(GJGameLevel*);
	TodoReturn unlockGauntletChest(int);
	TodoReturn unlockPathChest(int);
	TodoReturn unlockSecretChest(int) = win 0x17a8a0;
	TodoReturn unlockSpecialChest(gd::string) = win 0x17a130;
	TodoReturn updateActivePath(StatKey);
	TodoReturn usernameForAccountID(int) = win 0x15e830;
	TodoReturn verifyUserCoins();

	virtual bool init() = win 0x168000;

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
	static void addBackButton(cocos2d::CCLayer*, cocos2d::CCMenuItem*) = win 0x41910;
	static void addRThumbScrollButton(cocos2d::CCLayer*) = win 0x419c0;
	static TodoReturn alignItemsHorisontally(cocos2d::CCArray*, float, cocos2d::CCPoint, bool) = win 0x40a50;
	static TodoReturn alignItemsVertically(cocos2d::CCArray*, float, cocos2d::CCPoint);
	static TodoReturn bounceTime(float);
	static TodoReturn colorToSepia(cocos2d::ccColor3B, float);
	static TodoReturn contentScaleClipRect(cocos2d::CCRect&);
	static TodoReturn createHashString(gd::string const&, int);
	static CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCArray*) = win 0x40f80;
	static CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, float, float, float, cocos2d::CCPoint, char const*, bool, int, cocos2d::CCArray*) = win 0x41080;
	static TodoReturn doWeHaveInternet();
	static TodoReturn easeToText(int);
	static TodoReturn fast_rand_0_1();
	static TodoReturn fast_rand_minus1_1();
	static TodoReturn fast_rand();
	static TodoReturn fast_srand(unsigned long);
	static TodoReturn gen_random(int);
	static TodoReturn getDropActionWDelay(float, float, float, cocos2d::CCNode*, cocos2d::SEL_CallFunc);
	static TodoReturn getDropActionWEnd(float, float, float, cocos2d::CCAction*, float);
	static TodoReturn getEasedAction(cocos2d::CCActionInterval*, int, float);
	static TodoReturn getEasedValue(float, int, float);
	static TodoReturn getfast_srand();
	static TodoReturn getInvertedEasing(int);
	static TodoReturn getLargestMergedIntDicts(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
	static TodoReturn getMultipliedHSV(cocos2d::ccHSVValue const&, float);
	static TodoReturn getRelativeOffset(GameObject*, cocos2d::CCPoint) = win 0x41300;
	static TodoReturn getResponse(cocos2d::extension::CCHttpResponse*);
	static TodoReturn getTimeString(int);
	static TodoReturn hsvFromString(gd::string const&, char const*);
	static TodoReturn intToShortString(int);
	static TodoReturn intToString(int) = win 0x453a0;
	static bool isIOS();
	static bool isRateEasing(int);
	static TodoReturn mergeDictsSaveLargestInt(cocos2d::CCDictionary*, cocos2d::CCDictionary*) = win 0x41510;
	static TodoReturn mergeDictsSkipConflict(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
	static TodoReturn msToTimeString(int, int);
	static TodoReturn multipliedColorValue(cocos2d::ccColor3B, cocos2d::ccColor3B, float) = win 0x41d80;
	static TodoReturn openAppPage();
	static TodoReturn openRateURL(gd::string, gd::string);
	static TodoReturn particleFromString(gd::string const&, cocos2d::CCParticleSystemQuad*, bool);
	static TodoReturn particleFromStruct(cocos2d::ParticleStruct const&, cocos2d::CCParticleSystemQuad*, bool);
	static TodoReturn particleStringToStruct(gd::string const&, cocos2d::ParticleStruct&) = win 0x43ae0;
	static TodoReturn pointsToString(int);
	static TodoReturn postClipVisit();
	static TodoReturn preVisitWithClippingRect(cocos2d::CCNode*, cocos2d::CCRect) = win 0x40f00;
	static TodoReturn preVisitWithClipRect(cocos2d::CCRect);
	static TodoReturn saveParticleToString(cocos2d::CCParticleSystemQuad*) = win 0x428f0;
	static TodoReturn saveStringToFile(gd::string const&, gd::string const&);
	static TodoReturn stringFromHSV(cocos2d::ccHSVValue, char const*);
	static cocos2d::CCDictionary* stringSetupToDict(gd::string const&, char const*) = win 0x42430;
	static TodoReturn stringSetupToMap(gd::string const&, char const*, gd::map<gd::string, gd::string>&) = win 0x42230;
	static TodoReturn strongColor(cocos2d::ccColor3B) = win 0x425e0;
	static gd::string timestampToHumanReadable(long) = win 0x45640;
	static TodoReturn transformColor(cocos2d::ccColor3B const&, cocos2d::ccHSVValue) = win 0x41b20;
	static TodoReturn transformColor(cocos2d::ccColor3B const&, float, float, float);
}

[[link(android)]]
class GauntletLayer : cocos2d::CCLayer, LevelManagerDelegate {
	// virtual ~GauntletLayer();

	static GauntletLayer* create(GauntletType) = win 0x1845f0;

	bool init(GauntletType) = win 0x184970;
	void onBack(cocos2d::CCObject* sender);
	void onLevel(cocos2d::CCObject* sender);
	TodoReturn scene(GauntletType);
	TodoReturn setupGauntlet(cocos2d::CCArray*) = win 0x1851d0;
	TodoReturn unlockActiveItem();

	virtual void keyBackClicked();
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	virtual TodoReturn loadLevelsFailed(char const*, int);
}

[[link(android)]]
class GauntletNode : cocos2d::CCNode {
	// virtual ~GauntletNode();

	static GauntletNode* create(GJMapPack*);

	TodoReturn frameForType(GauntletType) = win 0x189b30;
	bool init(GJMapPack*) = win 0x188740;
	TodoReturn nameForType(GauntletType) = win 0x189f90;
	TodoReturn onClaimReward() = win 0x189b00;
}

[[link(android)]]
class GauntletSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate, LevelManagerDelegate {
	// virtual ~GauntletSelectLayer();

	static GauntletSelectLayer* create(int);

	TodoReturn goToPage(int, bool);
	bool init(int) = win 0x186cf0;
	void onBack(cocos2d::CCObject* sender) = win 0x188270;
	void onInfo(cocos2d::CCObject* sender);
	void onNext(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender) = win 0x1882e0;
	void onPrev(cocos2d::CCObject* sender);
	void onRefresh(cocos2d::CCObject* sender) = win 0x187770;
	TodoReturn scene(int);
	TodoReturn setupGauntlets() = win 0x187b90;
	TodoReturn unblockPlay();
	TodoReturn updateArrows();

	virtual void onExit();
	virtual void keyBackClicked();
	virtual TodoReturn scrollLayerWillScrollToPage(BoomScrollLayer*, int);
	virtual TodoReturn scrollLayerScrolledToPage(BoomScrollLayer*, int);
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	virtual TodoReturn loadLevelsFailed(char const*, int);
}

[[link(android)]]
class GauntletSprite : cocos2d::CCNode {
	// virtual ~GauntletSprite();

	static GauntletSprite* create(GauntletType, bool);

	TodoReturn addLockedSprite();
	TodoReturn addNormalSprite();
	TodoReturn colorForType(GauntletType);
	bool init(GauntletType, bool);
	TodoReturn luminanceForType(GauntletType);
	TodoReturn toggleLockedSprite(bool);
}

[[link(android)]]
class GhostTrailEffect : cocos2d::CCNode {
	// virtual ~GhostTrailEffect();

	static GhostTrailEffect* create() = win 0x46b20;

	TodoReturn doBlendAdditive();
	TodoReturn runWithTarget(cocos2d::CCSprite*, float, float, float, float, bool);
	TodoReturn stopTrail();
	TodoReturn trailSnapshot(float);

	virtual bool init();
	virtual void draw();
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
	// GJAccountManager() = win 0x18a400;

	static GJAccountManager* get() {
		return GJAccountManager::sharedState();
	}

	static GJAccountManager* sharedState() = win 0x18a510;

	void addDLToActive(char const* tag, cocos2d::CCObject*) = win 0x18aba0;
	void addDLToActive(char const* tag);
	TodoReturn backupAccount(gd::string);
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn getAccountBackupURL() = win 0x18b530;
	TodoReturn getAccountSyncURL() = win 0x18bdc0;
	TodoReturn getDLObject(char const*);
	TodoReturn getShaPassword(gd::string);
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType) = win 0x18a830;
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	bool isDLActive(char const* tag);
	TodoReturn linkToAccount(gd::string, gd::string, int, int);
	TodoReturn loginAccount(gd::string, gd::string) = win 0x18afe0;
	TodoReturn onBackupAccountCompleted(gd::string, gd::string) = win 0x18bb20;
	TodoReturn onGetAccountBackupURLCompleted(gd::string, gd::string) = win 0x18b660;
	TodoReturn onGetAccountSyncURLCompleted(gd::string, gd::string) = win 0x18bef0;
	TodoReturn onLoginAccountCompleted(gd::string, gd::string) = win 0x18b260;
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onRegisterAccountCompleted(gd::string, gd::string) = win 0x18ae80;
	TodoReturn onSyncAccountCompleted(gd::string, gd::string) = win 0x18c230;
	TodoReturn onUpdateAccountSettingsCompleted(gd::string, gd::string) = win 0x18ce40;
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn registerAccount(gd::string, gd::string, gd::string) = win 0x18ad00;
	TodoReturn removeDLFromActive(char const*) = win 0x18ac50;
	TodoReturn syncAccount(gd::string);
	TodoReturn unlinkFromAccount();
	TodoReturn updateAccountSettings(int, int, int, gd::string, gd::string, gd::string) = win 0x18cc30;

	virtual bool init();

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

	static GJAccountSettingsLayer* create(int) = win 0x208440;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float);
	bool init(int) = win 0x2084f0;
	void onClose(cocos2d::CCObject* sender);
	void onCommentSetting(cocos2d::CCObject* sender);
	void onFriendRequests(cocos2d::CCObject* sender);
	void onMessageSetting(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	TodoReturn updateScoreValues();

	virtual void keyBackClicked();
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual TodoReturn textInputReturn(CCTextInputNode*);
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
	TodoReturn runInternalAction(cocos2d::CCAction*, cocos2d::CCNode*);
	TodoReturn stopAllInternalActions();
	TodoReturn stopInternalAction(int);
	TodoReturn updateInternalActions(float, bool);

	virtual bool init();
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
	// GJBaseGameLayer() = win 0x237ce0;

	TodoReturn activateCustomRing(RingObject*);
	TodoReturn activatedAudioTrigger(SFXTriggerGameObject*, float);
	TodoReturn activateEventTrigger(EventLinkTrigger*, gd::vector<int> const&);
	TodoReturn activateItemCompareTrigger(ItemTriggerGameObject*, gd::vector<int> const&);
	TodoReturn activateItemEditTrigger(ItemTriggerGameObject*);
	TodoReturn activateObjectControlTrigger(ObjectControlGameObject*);
	TodoReturn activatePersistentItemTrigger(ItemTriggerGameObject*);
	TodoReturn activatePlayerControlTrigger(PlayerControlGameObject*);
	TodoReturn activateResetTrigger(EffectGameObject*);
	TodoReturn activateSFXEditTrigger(SFXTriggerGameObject*) = win 0x1c4370;
	TodoReturn activateSFXTrigger(SFXTriggerGameObject*) = win 0x1c4230;
	TodoReturn activateSongEditTrigger(SongTriggerGameObject*);
	TodoReturn activateSongTrigger(SongTriggerGameObject*) = win 0x1c3df0;
	TodoReturn activateTimerTrigger(TimerTriggerGameObject*, gd::vector<int> const&);
	TodoReturn addAreaEffect(EnterEffectObject*, gd::vector<EnterEffectInstance>*, GJAreaActionType);
	TodoReturn addCustomEnterEffect(EnterEffectObject*, bool);
	TodoReturn addGuideArt(GameObject*);
	TodoReturn addObjectCounter(LabelGameObject*) = win 0x1b74c0;
	TodoReturn addPickupTrigger(CountTriggerGameObject*);
	TodoReturn addPoints(int);
	TodoReturn addProximityVolumeEffect(int, int, SFXTriggerGameObject*) = win 0x1c4a20;
	TodoReturn addRemapTargets(gd::set<int>&);
	TodoReturn addToGroupParents(GameObject*) = win 0x1a96a0;
	TodoReturn addToGroups(GameObject*, bool) = win 0x1a8c80;
	TodoReturn addToObjectsToShow(GameObject*);
	TodoReturn addUIObject(GameObject*);
	TodoReturn animateInDualGroundNew(GameObject*, float, bool, float);
	TodoReturn animateInGroundNew(bool, float, bool);
	TodoReturn animateOutGroundNew(bool);
	TodoReturn animatePortalY(float, float, float, float);
	TodoReturn applyLevelSettings(GameObject*) = win 0x1bd900;
	TodoReturn applyRemap(EffectGameObject*, gd::vector<int> const&, gd::unordered_map<int, int>&);
	TodoReturn applySFXEditTrigger(int, int, SFXTriggerGameObject*) = win 0x1c45b0;
	TodoReturn applyShake(cocos2d::CCPoint&) = win 0x1c18c0;
	TodoReturn assignNewStickyGroups(cocos2d::CCArray*) = win 0x1a9cb0;
	TodoReturn asyncBGLoaded(int);
	TodoReturn asyncGLoaded(int);
	TodoReturn asyncMGLoaded(int);
	TodoReturn atlasValue(int);
	TodoReturn bumpPlayer(PlayerObject*, EffectGameObject*) = win 0x19e670;
	TodoReturn buttonIDToButton(int);
	TodoReturn calculateColorGroups() = win 0x1960b0;
	TodoReturn cameraMoveX(float, float, float, bool);
	TodoReturn cameraMoveY(float, float, float, bool);
	TodoReturn canBeActivatedByPlayer(PlayerObject*, EffectGameObject*) = win 0x19e470;
	TodoReturn canProcessSFX(SFXTriggerState&, gd::unordered_map<int, int>&, gd::unordered_map<int, float>&, gd::vector<SFXTriggerState>&);
	TodoReturn canTouchObject(GameObject*);
	TodoReturn checkCameraLimitAfterTeleport(PlayerObject*, float);
	TodoReturn checkCollision(int, int);
	TodoReturn checkCollisionBlocks(EffectGameObject*, gd::vector<EffectGameObject*>*, int);
	TodoReturn checkCollisions(PlayerObject*, float, bool) = win 0x19b310;
	TodoReturn checkRepellPlayer();
	TodoReturn checkSpawnObjects() = win 0x1a1390;
	TodoReturn claimMoveAction(int, bool);
	TodoReturn claimParticle(gd::string, int);
	TodoReturn claimRotationAction(int, int, float&, float&, bool, bool);
	TodoReturn clearActivatedAudioTriggers() = win 0x1c5590;
	TodoReturn clearPickedUpItems();
	TodoReturn collectedObject(EffectGameObject*);
	TodoReturn collisionCheckObjects(PlayerObject*, gd::vector<GameObject*>*, int, float) = win 0x19c1b0;
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
	TodoReturn convertToClosestDirection(float, float) = win 0x1b2c10;
	void createBackground(int) = win 0x193890;
	void createGroundLayer(int, int) = win 0x193c60;
	void createMiddleground(int) = win 0x193bc0;
	TodoReturn createNewKeyframeAnim();
	TodoReturn createParticle(int, char const*, int, cocos2d::tCCPositionType) = win 0x1c2fb0;
	TodoReturn createPlayer() = win 0x193550;
	TodoReturn createPlayerCollisionBlock() = win 0x19f1b0;
	TodoReturn createTextLayers() = win 0x197090;
	TodoReturn damagingObjectsInRect(cocos2d::CCRect, bool);
	void destroyObject(GameObject*) = win 0x19cf50;
	TodoReturn enterDualMode(GameObject*, bool);
	TodoReturn exitStaticCamera(bool, bool, float, int, float, bool, float, bool);
	TodoReturn flipFinished();
	TodoReturn flipGravity(PlayerObject*, bool, bool) = win 0x19a5f0;
	TodoReturn flipObjects() = win 0x1c8980;
	TodoReturn gameEventToString(GJGameEvent);
	TodoReturn gameEventTriggered(GJGameEvent, int, int) = win 0x1b5bf0;
	TodoReturn generateEnterEasingBuffer(int, float);
	TodoReturn generateEnterEasingBuffers(EnterEffectObject*);
	TodoReturn generatePickupAnimRandVal(GameObject*, float&, float&);
	TodoReturn generateSpawnRemap() = win 0x1a3fc0;
	TodoReturn generateTargetGroups() = win 0x1a9f10;
	TodoReturn generateVisibilityGroups() = win 0x1b5060;
	TodoReturn getActiveOrderSpawnObjects();
	TodoReturn getAreaObjectValue(EnterEffectInstance*, GameObject*, cocos2d::CCPoint&, bool&);
	TodoReturn getBumpMod(PlayerObject*, int) = win 0x19e590;
	TodoReturn getCameraEdgeValue(int);
	TodoReturn getCapacityString() = win 0x196ee0;
	TodoReturn getCenterGroupObject(int, int);
	TodoReturn getCustomEnterEffects(int, bool);
	TodoReturn getEasedAreaValue(GameObject*, EnterEffectInstance*, float, bool, int);
	TodoReturn getEnterEasingKey(int, float);
	TodoReturn getEnterEasingValue(float, int, float, int);
	TodoReturn getFollowSpeedVal(GameObject*, int, int, float, float);
	TodoReturn getGroundHeight(PlayerObject*, int);
	TodoReturn getGroundHeightForMode(int);
	TodoReturn getGroup(int) = win 0x1a8f50;
	TodoReturn getGroupParent(int);
	TodoReturn getGroupParentsString(GameObject*);
	TodoReturn getItemValue(int, int);
	TodoReturn getMaxPortalY();
	TodoReturn getMinDistance(cocos2d::CCPoint, cocos2d::CCArray*, float, int) = win 0x1c4ea0;
	TodoReturn getMinPortalY();
	TodoReturn getModifiedDelta(float);
	TodoReturn getMoveTargetDelta(EffectGameObject*, bool);
	TodoReturn getOptimizedGroup(int) = win 0x1a9010;
	TodoReturn getOtherPlayer(PlayerObject*);
	TodoReturn getParticleKey(int, char const*, int, cocos2d::tCCPositionType) = win 0x1c2d70;
	TodoReturn getParticleKey2(gd::string);
	TodoReturn getPlayerButtonID(int, bool);
	TodoReturn getPlayTimerFullSeconds();
	TodoReturn getPlayTimerMilli();
	TodoReturn getPortalTarget(TeleportPortalObject*) = win 0x1985c0;
	TodoReturn getPortalTargetPos(TeleportPortalObject*, GameObject*, PlayerObject*);
	TodoReturn getRecordString();
	TodoReturn getRotateCommandTargets(EnhancedTriggerObject*, GameObject*&, GameObject*&, GameObject*&);
	TodoReturn getSavedPosition(int, float);
	TodoReturn getScaledGroundHeight(float);
	TodoReturn getSingleGroupObject(int) = win 0x1a9070;
	TodoReturn getSpecialKey(int, bool, bool);
	TodoReturn getStaticGroup(int) = win 0x1a8fb0;
	TodoReturn getStickyGroup(int);
	TodoReturn getTargetFlyCameraY(GameObject*);
	TodoReturn getTargetGroup(int, int);
	TodoReturn getTargetGroupOrigin(int, int);
	TodoReturn gravBumpPlayer(PlayerObject*, EffectGameObject*) = win 0x19e770;
	TodoReturn groupStickyObjects(cocos2d::CCArray*) = win 0x1a9b20;
	TodoReturn handleButton(bool, int, bool) = win 0x1b69f0;
	TodoReturn hasItem(int);
	TodoReturn hasUniqueCoin(EffectGameObject*) = win 0x19d580;
	TodoReturn increaseBatchNodeCapacity() = win 0x194b40;
	bool isFlipping();
	bool isPlayer2Button(int);
	TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::ccColor3B);
	TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::ccColor3B, float, float, int, bool, float);
	TodoReturn loadGroupParentsFromString(GameObject*, gd::string);
	TodoReturn loadLevelSettings() = win 0x1bd7b0;
	TodoReturn loadStartPosObject() = win 0x1b8d10;
	TodoReturn loadUpToPosition(float, int, int) = win 0x1b8e80;
	TodoReturn maxZOrderForShaderZ(int);
	TodoReturn minZOrderForShaderZ(int);
	TodoReturn modifyGroupPhysics(AdvancedFollowEditObject*, cocos2d::CCArray*);
	TodoReturn modifyObjectPhysics(AdvancedFollowEditObject*, GameObjectPhysics&);
	TodoReturn moveAreaObject(GameObject*, float, float);
	TodoReturn moveCameraToPos(cocos2d::CCPoint);
	TodoReturn moveObject(GameObject*, double, double, bool);
	TodoReturn moveObjects(cocos2d::CCArray*, double, double, bool) = win 0x1b1fa0;
	TodoReturn moveObjectsSilent(int, double, double);
	TodoReturn objectIntersectsCircle(GameObject*, GameObject*);
	TodoReturn objectTypeToGameEvent(int);
	TodoReturn optimizeMoveGroups() = win 0x1b4cd0;
	TodoReturn orderSpawnObjects() = win 0x1c7c20;
	TodoReturn parentForZLayer(int, bool, int, int);
	TodoReturn pauseAudio() = win 0x1bb600;
	TodoReturn performMathOperation(double, double, int);
	TodoReturn performMathRounding(double, int);
	TodoReturn pickupItem(EffectGameObject*);
	TodoReturn playAnimationCommand(int, int);
	TodoReturn playerCircleCollision(PlayerObject*, GameObject*);
	TodoReturn playerIntersectsCircle(PlayerObject*, GameObject*);
	TodoReturn playerTouchedObject(PlayerObject*, GameObject*);
	TodoReturn playerTouchedRing(PlayerObject*, RingObject*) = win 0x19eca0;
	TodoReturn playerTouchedTrigger(PlayerObject*, EffectGameObject*);
	TodoReturn playerWasTouchingObject(PlayerObject*, GameObject*) = win 0x19e530;
	TodoReturn playerWillSwitchMode(PlayerObject*, GameObject*);
	TodoReturn playExitDualEffect(PlayerObject*) = win 0x19da70;
	TodoReturn playFlashEffect(float, int, float);
	TodoReturn playKeyframeAnimation(KeyframeAnimTriggerObject*, gd::vector<int> const&);
	TodoReturn playSpeedParticle(float);
	TodoReturn positionForShaderTarget(int);
	TodoReturn positionUIObjects() = win 0x1ab2f0;
	TodoReturn prepareSavePositionObjects() = win 0x1a0220;
	TodoReturn prepareTransformParent(bool);
	TodoReturn preResumeGame();
	TodoReturn preUpdateVisibility(float) = win 0x1b97e0;
	TodoReturn processActivatedAudioTriggers(float) = win 0x1c5960;
	TodoReturn processAdvancedFollowAction(AdvancedFollowInstance&, bool, float);
	TodoReturn processAdvancedFollowActions(float);
	TodoReturn processAreaActions(float, bool);
	TodoReturn processAreaEffects(gd::vector<EnterEffectInstance>*, GJAreaActionType, float, bool);
	TodoReturn processAreaFadeGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, bool);
	TodoReturn processAreaMoveGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool);
	TodoReturn processAreaRotateGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool);
	TodoReturn processAreaTintGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, bool);
	TodoReturn processAreaTransformGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool);
	TodoReturn processAreaVisualActions(float);
	TodoReturn processCameraObject(GameObject*, PlayerObject*);
	TodoReturn processCommands(float);
	TodoReturn processDynamicObjectActions(int, float) = win 0x1b2740;
	TodoReturn processFollowActions();
	TodoReturn processItems() = win 0x19d2b0;
	TodoReturn processMoveActions() = win 0x1b1b90;
	TodoReturn processMoveActionsStep(float, bool) = win 0x1afce0;
	TodoReturn processOptionsTrigger(GameOptionsTrigger*);
	TodoReturn processPlayerFollowActions(float) = win 0x1b2400;
	TodoReturn processQueuedAudioTriggers() = win 0x1be520;
	TodoReturn processQueuedButtons() = win 0x1b5b40;
	TodoReturn processRotationActions();
	TodoReturn processSFXObjects() = win 0x1c3fe0;
	TodoReturn processSFXState(SFXTriggerState*, SFXTriggerState*, int, float);
	TodoReturn processSongState(int, float, float, int, float, float, gd::vector<SongTriggerState>*);
	TodoReturn processStateObjects();
	TodoReturn processTransformActions(bool);
	TodoReturn queueButton(int, bool, bool) = win 0x1b5af0;
	TodoReturn reAddToStickyGroup(GameObject*) = win 0x1a9e40;
	TodoReturn recordAction(int, bool, bool);
	TodoReturn rectIntersectsCircle(cocos2d::CCRect, cocos2d::CCPoint, float);
	TodoReturn refreshCounterLabels() = win 0x1b87a0;
	TodoReturn refreshKeyframeAnims() = win 0x1b6d70;
	TodoReturn regenerateEnterEasingBuffers() = win 0x196be0;
	TodoReturn registerSpawnRemap(gd::vector<ChanceObject>&);
	TodoReturn registerStateObject(EffectGameObject*);
	TodoReturn removeBackground();
	TodoReturn removeCustomEnterEffects(int, bool);
	TodoReturn removeFromGroupParents(GameObject*) = win 0x1a9600;
	TodoReturn removeFromGroups(GameObject*) = win 0x1a8da0;
	TodoReturn removeFromStickyGroup(GameObject*) = win 0x1a9da0;
	TodoReturn removeGroundLayer();
	TodoReturn removeGroupParent(int) = win 0x1a9550;
	TodoReturn removeKeyframe(KeyframeGameObject*) = win 0x1b6c90;
	TodoReturn removeMiddleground();
	TodoReturn removeObjectFromSection(GameObject*) = win 0x1abea0;
	TodoReturn removePlayer2();
	TodoReturn removeTemporaryParticles() = win 0x1c3d30;
	TodoReturn reorderObjectSection(GameObject*);
	TodoReturn reparentObject(cocos2d::CCNode*, cocos2d::CCNode*);
	TodoReturn resetActiveEnterEffects() = win 0x196350;
	TodoReturn resetAreaObjectValues(GameObject*, bool);
	TodoReturn resetAudio();
	TodoReturn resetCamera() = win 0x1c22b0;
	TodoReturn resetGradientLayers();
	TodoReturn resetGroupCounters(bool);
	TodoReturn resetLevelVariables() = win 0x1bdb10;
	TodoReturn resetMoveOptimizedValue();
	TodoReturn resetPlayer();
	void resetSongTriggerValues(); //someone keeps adding win 0x3bf30 for this but it's WRONG! that addr is an stl func
	TodoReturn resetSpawnChannelIndex() = win 0x1c7e40;
	TodoReturn resetStaticCamera(bool, bool);
	TodoReturn resetStoppedAreaObjects();
	TodoReturn restoreAllUIObjects();
	TodoReturn restoreDefaultGameplayOffsetX();
	TodoReturn restoreDefaultGameplayOffsetY();
	TodoReturn restoreRemap(EffectGameObject*, gd::unordered_map<int, int>&);
	TodoReturn resumeAudio() = win 0x1bb660;
	TodoReturn rotateAreaObjects(GameObject*, cocos2d::CCArray*, float, bool);
	TodoReturn rotateObject(GameObject*, float);
	TodoReturn rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint, cocos2d::CCPoint, bool, bool);
	void setGroupParent(GameObject*, int) = win 0x1a9460;
	void setStartPosObject(StartPosObject*) = win 0x199e90;
	TodoReturn setupLayers() = win 0x191440;
	TodoReturn setupLevelStart(LevelSettingsObject*) = win 0x199ed0;
	TodoReturn setupReplay(gd::string) = win 0x1bd3d0;
	TodoReturn shakeCamera(float, float, float) = win 0x1be5d0;
	TodoReturn shouldExitHackedLevel() = win 0x1934a0;
	TodoReturn sortAllGroupsX();
	TodoReturn sortGroups() = win 0x1a90f0;
	TodoReturn sortSectionVector() = win 0x1ac070;
	TodoReturn sortStickyGroups() = win 0x1a99e0;
	TodoReturn spawnGroupTriggered(int, float, bool, gd::vector<int> const&, int, int);
	TodoReturn spawnObjectsInOrder(cocos2d::CCArray*, double, gd::vector<int> const&, int, int);
	TodoReturn spawnParticle(char const*, int, cocos2d::tCCPositionType, cocos2d::CCPoint) = win 0x1c2b80;
	TodoReturn spawnParticleTrigger(int, cocos2d::CCPoint, float, float);
	TodoReturn spawnParticleTrigger(SpawnParticleGameObject*);
	TodoReturn spawnPlayer2() = win 0x19d970;
	TodoReturn speedForShaderTarget(int);
	TodoReturn staticObjectsInRect(cocos2d::CCRect, bool);
	TodoReturn stopAllGroundActions();
	TodoReturn stopCameraShake();
	TodoReturn stopCustomEnterEffect(EnterEffectObject*, bool);
	TodoReturn stopCustomEnterEffect(EnterEffectObject*);
	TodoReturn stopSFXTrigger(SFXTriggerGameObject*);
	TodoReturn swapBackground(int);
	TodoReturn swapGround(int);
	TodoReturn swapMiddleground(int);
	void switchToFlyMode(PlayerObject*, GameObject*, bool, int) = win 0x19a6d0;
	void switchToRobotMode(PlayerObject*, GameObject*, bool) = win 0x19a800;
	void switchToRollMode(PlayerObject*, GameObject*, bool) = win 0x19a9c0;
	void switchToSpiderMode(PlayerObject*, GameObject*, bool) = win 0x19a8e0;
	TodoReturn syncBGTextures() = win 0x1bda80;
	TodoReturn teleportPlayer(TeleportPortalObject*, PlayerObject*);
	TodoReturn testInstantCountTrigger(int, int, int, bool, int, gd::vector<int> const&, int, int);
	void toggleAudioVisualizer(bool) = win 0x1ca4d0;
	TodoReturn toggleDualMode(GameObject*, bool, PlayerObject*, bool) = win 0x19d6a0;
	TodoReturn toggleFlipped(bool, bool) = win 0x1c87e0;
	TodoReturn toggleGroup(int, bool);
	TodoReturn toggleLockPlayer(bool, bool);
	TodoReturn togglePlayerStreakBlend(bool);
	TodoReturn togglePlayerVisibility(bool, bool);
	TodoReturn togglePlayerVisibility(bool);
	TodoReturn transformAreaObjects(GameObject*, cocos2d::CCArray*, float, float, bool);
	TodoReturn triggerAdvancedFollowCommand(AdvancedFollowTriggerObject*);
	TodoReturn triggerAdvancedFollowEditCommand(AdvancedFollowEditObject*);
	TodoReturn triggerAreaEffect(EnterEffectObject*);
	TodoReturn triggerAreaEffectAnimation(EnterEffectObject*);
	TodoReturn triggerDynamicMoveCommand(EffectGameObject*);
	TodoReturn triggerDynamicRotateCommand(EnhancedTriggerObject*);
	TodoReturn triggerGradientCommand(GradientTriggerObject*);
	TodoReturn triggerGravityChange(EffectGameObject*, int);
	TodoReturn triggerMoveCommand(EffectGameObject*);
	TodoReturn triggerRotateCommand(EnhancedTriggerObject*);
	TodoReturn triggerShaderCommand(ShaderGameObject*);
	TodoReturn triggerTransformCommand(TransformTriggerGameObject*);
	TodoReturn tryGetGroupParent(int);
	TodoReturn tryGetMainObject(int) = win 0x1a9340;
	TodoReturn tryGetObject(int) = win 0x1a9380;
	TodoReturn tryResumeAudio();
	TodoReturn unclaimParticle(char const*, cocos2d::CCParticleSystemQuad*);
	TodoReturn ungroupStickyObjects(cocos2d::CCArray*) = win 0x1a9c10;
	TodoReturn unlinkAllEvents();
	TodoReturn updateActiveEnterEffect(EnterEffectObject*);
	TodoReturn updateAllObjectSection();
	TodoReturn updateAreaObjectLastValues(GameObject*);
	TodoReturn updateAudioVisualizer() = win 0x1ca410;
	TodoReturn updateBGArtSpeed(float, float);
	TodoReturn updateCamera(float) = win 0x1be670;
	TodoReturn updateCameraBGArt(cocos2d::CCPoint, float);
	TodoReturn updateCameraEdge(int, int);
	TodoReturn updateCameraMode(EffectGameObject*, bool);
	TodoReturn updateCameraOffsetX(float, float, int, float, int, int);
	TodoReturn updateCameraOffsetY(float, float, int, float, int, int);
	TodoReturn updateCollisionBlocks();
	TodoReturn updateCounters(int, int);
	TodoReturn updateDualGround(PlayerObject*, int, bool, float);
	TodoReturn updateEnterEffects(float);
	TodoReturn updateExtendedCollision(GameObject*, bool);
	TodoReturn updateExtraGameLayers();
	TodoReturn updateGameplayOffsetX(int, bool);
	TodoReturn updateGameplayOffsetY(int, bool);
	TodoReturn updateGradientLayers() = win 0x1a57c0;
	TodoReturn updateGroundShadows();
	TodoReturn updateGuideArt() = win 0x1c8700;
	TodoReturn updateInternalCamOffsetX(float, float, float);
	TodoReturn updateInternalCamOffsetY(float, float, float);
	TodoReturn updateKeyframeOrder(int) = win 0x1b6ce0;
	TodoReturn updateLayerCapacity(gd::string) = win 0x194ca0;
	TodoReturn updateLegacyLayerCapacity(int, int, int, int);
	TodoReturn updateLevelColors() = win 0x194490;
	TodoReturn updateMaxGameplayY() = win 0x1bd960;
	TodoReturn updateMGArtSpeed(float, float);
	TodoReturn updateMGOffsetY(float, float, int, float, int, int);
	TodoReturn updateOBB2(cocos2d::CCRect);
	TodoReturn updateParticles(float);
	TodoReturn updatePlatformerTime() = win 0x1bcd60;
	TodoReturn updatePlayerCollisionBlocks();
	TodoReturn updateProximityVolumeEffects();
	TodoReturn updateQueuedLabels();
	TodoReturn updateReplay();
	TodoReturn updateSavePositionObjects();
	TodoReturn updateShaderLayer(float) = win 0x1a7820;
	TodoReturn updateSpecialGroupData() = win 0x196060;
	TodoReturn updateSpecialLabels() = win 0x1bc9f0;
	TodoReturn updateStaticCameraPos(cocos2d::CCPoint, bool, bool, bool, float, int, float) = win 0x1c1cb0;
	TodoReturn updateStaticCameraPosToGroup(int, bool, bool, bool, float, float, int, float, bool, float);
	TodoReturn updateTimeMod(float, bool, bool);
	TodoReturn updateTimerLabels();
	TodoReturn updateZoom(float, float, int, float, int, int);
	TodoReturn visitWithColorFlash();
	TodoReturn volumeForProximityEffect(SFXTriggerInstance&) = win 0x1c4ae0;

	virtual void update(float) = win 0x1bb780;
	virtual bool init() = win 0x190290;
	virtual void visit() = win 0x1c8ea0;
	virtual TodoReturn postUpdate(float);
	virtual TodoReturn checkForEnd();
	virtual TodoReturn testTime();
	virtual TodoReturn updateVerifyDamage();
	virtual TodoReturn updateAttemptTime(float);
	virtual TodoReturn updateVisibility(float);
	virtual TodoReturn playerTookDamage(PlayerObject*);
	virtual TodoReturn opacityForObject(GameObject*);
	virtual TodoReturn addToSpeedObjects(EffectGameObject*);
	virtual TodoReturn objectsCollided(int, int) = win 0x19fac0;
	virtual TodoReturn updateColor(cocos2d::ccColor3B&, float, int, bool, float, cocos2d::ccHSVValue&, int, bool, EffectGameObject*, int, int) = win 0x1a8760;
	virtual TodoReturn toggleGroupTriggered(int, bool, gd::vector<int> const&, int, int);
	virtual TodoReturn spawnGroup(int, bool, double, gd::vector<int> const&, int, int);
	virtual TodoReturn spawnObject(GameObject*, double, gd::vector<int> const&);
	virtual TodoReturn activateEndTrigger(int, bool, bool);
	virtual TodoReturn activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&);
	virtual TodoReturn toggleGlitter(bool);
	virtual TodoReturn destroyPlayer(PlayerObject*, GameObject*);
	virtual TodoReturn updateDebugDraw() = win 0x1986f0;
	virtual TodoReturn addToSection(GameObject*) = win 0x1ab800;
	virtual void addToGroup(GameObject*, int, bool) = win 0x1a8ce0;
	virtual void removeFromGroup(GameObject*, int) = win 0x1a8e00;
	virtual TodoReturn updateObjectSection(GameObject*) = win 0x1acd40;
	virtual TodoReturn updateDisabledObjectsLastPos(cocos2d::CCArray*);
	virtual TodoReturn toggleGroundVisibility(bool);
	virtual TodoReturn toggleMGVisibility(bool);
	virtual TodoReturn toggleHideAttempts(bool);
	virtual TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, int) {}
	virtual TodoReturn posForTime(float) {}
	virtual TodoReturn resetSPTriggered() {}
	virtual TodoReturn updateScreenRotation(float, bool, bool, float, int, float, int, int) = win 0x1b9450;
	virtual TodoReturn reverseDirection(EffectGameObject*) = win 0x19efb0;
	virtual TodoReturn rotateGameplay(RotateGameplayGameObject*) = win 0x19f010;
	virtual TodoReturn didRotateGameplay();
	virtual TodoReturn updateTimeWarp(float) = win 0x2dfda0;
	virtual TodoReturn updateTimeWarp(GameObject*, float) = win 0x2dfda0;
	virtual TodoReturn applyTimeWarp(float) = win 0x1b9770;
	virtual TodoReturn playGravityEffect(bool);
	virtual TodoReturn manualUpdateObjectColors(GameObject*);
	virtual TodoReturn createCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, bool);
	virtual TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool);
	virtual TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*);
	virtual TodoReturn activatedAudioTrigger(SFXTriggerGameObject*);
	virtual TodoReturn checkpointActivated(CheckpointGameObject*) = win 0x1c8a50;
	virtual TodoReturn flipArt(bool);
	virtual TodoReturn addKeyframe(KeyframeGameObject*);
	virtual TodoReturn updateTimeLabel(int, int, bool);
	virtual TodoReturn checkSnapshot();
	virtual TodoReturn toggleProgressbar();
	virtual TodoReturn toggleInfoLabel();
	virtual void removeAllCheckpoints();
	virtual TodoReturn toggleMusicInPractice();

	PAD = win 0x8, android32 0x8, android64 0x8;
	GJGameState m_gameState;
	GJGameLevel* m_level;
	PlaybackMode m_playbackMode;
	PAD = win 0x290, android32 0x28c, android64 0x510;
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
	gd::unordered_map<int, gd::unordered_set<int>> m_unknownD48;
	gd::vector<GameObject*> m_unknownD70;
	gd::unordered_map<int, gd::vector<GameObject*>> m_unknownD88;
	int m_unknownDB0;
	int m_unknownDB8;
	int m_unknownDBC;
	int m_unknownDC0;
	int m_unknownDC4;
	int m_unknownDC8;
	int m_unknownDCC;
	int m_unknownDD0;
	int m_unknownDD4;
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
	PAD = win 0x70, android32 0x70, android64 0xec;
	std::array<float, 2000> m_massiveFloatArray;
	PAD = win 0x110, android32 0x114, android64 0x1ec;
	bool m_isPracticeMode;
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
	PAD = win 0xa0; // wrong, android32 0xba, android64 0xf0;
	gd::vector<PlayerButtonCommand> m_queuedButtons;
	PAD = win 0xb0;
	UILayer* m_uiLayer;
	PAD = win 0x38;
	gd::vector<GameObject*> m_sections;
	PAD = win 0x12a;
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
	static GJChallengeItem* create(GJChallengeType, int, int, int, gd::string);

	TodoReturn createFromString(gd::string);
	TodoReturn createWithCoder(DS_Dictionary*) = win 0x182ab0;
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn incrementCount(int);
	bool init(GJChallengeType, int, int, int, gd::string);
	void setCount(int);

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();

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

	static GJChestSprite* create(int) = win 0x2fa380;

	bool init(int);
	TodoReturn switchToState(ChestSpriteState, bool) = win 0x2fa590;

	virtual void setOpacity(unsigned char);
	virtual void setColor(cocos2d::ccColor3B const&);
}

[[link(android)]]
class GJColorSetupLayer : FLAlertLayer, ColorSelectDelegate, FLAlertLayerProtocol {
	// virtual ~GJColorSetupLayer();

	static GJColorSetupLayer* create(LevelSettingsObject*) = win 0x1d5ae0;

	bool init(LevelSettingsObject*) = win 0x1d5b80;
	void onClose(cocos2d::CCObject* sender);
	void onColor(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	TodoReturn showPage(int);
	TodoReturn updateSpriteColor(ColorChannelSprite*, cocos2d::CCLabelBMFont*, int);
	TodoReturn updateSpriteColors();

	virtual void keyBackClicked();
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*);
}

[[link(android)]]
class GJComment : cocos2d::CCNode {
	// virtual ~GJComment();

	static GJComment* create();
	static GJComment* create(cocos2d::CCDictionary*);

	virtual bool init();

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

	static GJCommentListLayer* create(BoomListView*, char const*, cocos2d::ccColor4B, float, float, bool) = win 0x207dc0;

	bool init(BoomListView*, char const*, cocos2d::ccColor4B, float, float, bool) = win 0x207eb0;

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

	static GJDifficultySprite* create(int, GJDifficultyName) = win 0x216be0;

	gd::string getDifficultyFrame(int, GJDifficultyName);
	bool init(int, GJDifficultyName) = win 0x216cb0;
	void updateDifficultyFrame(int, GJDifficultyName) = win 0x216e30;
	void updateFeatureState(GJFeatureState) = win 0x216ff0;
	void updateFeatureStateFromLevel(GJGameLevel*) = win 0x216f70;
}

[[link(android)]]
class GJDropDownLayer : cocos2d::CCLayerColor {
	// virtual ~GJDropDownLayer();
    inline GJDropDownLayer() {
        m_endPosition = cocos2d::CCPointMake(0.f, 0.f);
        m_startPosition = cocos2d::CCPointMake(0.f, 0.f);
        m_buttonMenu = nullptr;
        m_listLayer = nullptr;
        m_mainLayer = nullptr;
        m_hidden = false;
        m_delegate = nullptr;
    }

	bool init(char const*, float, bool) = win 0x1d6700;
	bool init(char const* title) {
		return init(title, 220.0f, false);
	}

    static GJDropDownLayer* create(const char* title, float height, bool p2) {
        GJDropDownLayer* pRet = new GJDropDownLayer();
        if (pRet && pRet->init(title, height, p2)) {
            pRet->autorelease();
            return pRet;
        }
        CC_SAFE_DELETE(pRet);
        return nullptr;
    }
	static GJDropDownLayer* create(const char* title) {
		GJDropDownLayer* pRet = new GJDropDownLayer();
        if (pRet && pRet->init(title)) {
            pRet->autorelease();
            return pRet;
        }
        CC_SAFE_DELETE(pRet);
        return nullptr;
	}

	virtual void draw() = win 0x230a0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x230d0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher() = win 0x22fc0;
	virtual void keyBackClicked() = win 0x1d6b20;
	virtual void customSetup();
	virtual TodoReturn enterLayer() = win 0x22fa0;
	virtual TodoReturn exitLayer(cocos2d::CCObject*) = win 0x1d6b40;
	virtual TodoReturn showLayer(bool) = win 0x1d6b70;
	virtual TodoReturn hideLayer(bool) = win 0x1d6c60;
	virtual TodoReturn layerVisible() = win 0x23060;
	virtual TodoReturn layerHidden() = win 0x1d6d50;
	virtual TodoReturn enterAnimFinished();
	virtual TodoReturn disableUI() = win 0x1d6ae0;
	virtual TodoReturn enableUI() = win 0x1d6b00;

	cocos2d::CCPoint m_endPosition;
	cocos2d::CCPoint m_startPosition;
	cocos2d::CCMenu* m_buttonMenu;
	GJListLayer* m_listLayer;
	cocos2d::CCLayer* m_mainLayer;
	bool m_hidden;
	GJDropDownLayerDelegate* m_delegate;
	int m_unknown;
}

[[link(android)]]
class GJDropDownLayerDelegate {
	virtual TodoReturn dropDownLayerWillClose(GJDropDownLayer*);
}

[[link(android)]]
class GJEffectManager : cocos2d::CCNode {
	// virtual ~GJEffectManager();
	// GJEffectManager() = win 0x1d7fa0;

	static GJEffectManager* create() = win 0x1db2d0;

	TodoReturn activeColorForIndex(int) = win 0x1db7b0;
	TodoReturn activeOpacityForIndex(int);
	TodoReturn addAllInheritedColorActions(cocos2d::CCArray*);
	TodoReturn addCountToItem(int, int);
	TodoReturn addMoveCalculation(CCMoveCNode*, cocos2d::CCPoint, GameObject*);
	TodoReturn calculateBaseActiveColors() = win 0x1db830;
	TodoReturn calculateInheritedColor(int, ColorAction*);
	TodoReturn calculateLightBGColor(cocos2d::ccColor3B) = win 0x1e3b10;
	TodoReturn checkCollision(int const&, int const&);
	TodoReturn colorActionChanged(ColorAction*);
	TodoReturn colorExists(int);
	TodoReturn colorForEffect(cocos2d::ccColor3B, cocos2d::ccHSVValue);
	TodoReturn colorForGroupID(int, cocos2d::ccColor3B const&, bool);
	TodoReturn colorForIndex(int);
	TodoReturn colorForPulseEffect(cocos2d::ccColor3B const&, PulseEffectAction*) = win 0x1e2010;
	TodoReturn controlActionsForControlID(int, GJActionCommand);
	TodoReturn controlActionsForTrigger(EffectGameObject*, GJActionCommand);
	TodoReturn countForItem(int);
	TodoReturn createFollowCommand(float, float, float, int, int, int, int);
	TodoReturn createKeyframeCommand(int, cocos2d::CCArray*, GameObject*, int, int, bool, float, float, float, float, float, float, gd::vector<int> const&);
	TodoReturn createMoveCommand(cocos2d::CCPoint, int, float, int, float, bool, bool, bool, bool, float, float, int, int);
	TodoReturn createPlayerFollowCommand(float, float, int, float, float, int, int, int);
	TodoReturn createRotateCommand(float, float, int, int, int, float, bool, bool, bool, int, int);
	TodoReturn createTransformCommand(double, double, double, double, bool, float, int, int, int, float, bool, bool, int, int);
	TodoReturn getAllColorActions();
	TodoReturn getAllColorSprites();
	ColorAction* getColorAction(int) = win 0x1dbe80;
	ColorActionSprite* getColorSprite(int) = win 0x1dbf00;
	TodoReturn getLoadedMoveOffset(gd::unordered_map<int, std::pair<double, double>>&);
	TodoReturn getMixedColor(cocos2d::ccColor3B, cocos2d::ccColor3B, float);
	TodoReturn getMoveCommandNode(GroupCommandObject2*);
	TodoReturn getMoveCommandObject();
	TodoReturn getOpacityActionForGroup(int);
	TodoReturn getSaveString();
	TodoReturn getTempGroupCommand();
	TodoReturn handleObjectCollision(bool, int, int);
	TodoReturn hasActiveDualTouch();
	TodoReturn hasBeenTriggered(int, int);
	TodoReturn hasPulseEffectForGroupID(int);
	bool isGroupEnabled(int);
	TodoReturn keyForGroupIDColor(int, cocos2d::ccColor3B const&, bool);
	void loadFromState(EffectManagerState&) = win 0x1e44a0;
	TodoReturn objectsCollided(int, int) = win 0x1dc3c0;
	TodoReturn opacityForIndex(int);
	TodoReturn opacityModForGroup(int);
	TodoReturn pauseTimer(int);
	TodoReturn playerButton(bool, bool);
	TodoReturn playerDied() = win 0x1e29b0;
	TodoReturn postCollisionCheck();
	TodoReturn postMoveActions();
	TodoReturn preCollisionCheck();
	TodoReturn prepareMoveActions(float, bool);
	TodoReturn processColors();
	TodoReturn processCopyColorPulseActions() = win 0x1e1df0;
	TodoReturn processInheritedColors() = win 0x1db900;
	TodoReturn processMoveCalculations();
	TodoReturn processPulseActions() = win 0x1e1d30;
	TodoReturn registerCollisionTrigger(int, int, int, bool, bool, gd::vector<int> const&, int, int);
	TodoReturn registerRotationCommand(GroupCommandObject2*, bool);
	TodoReturn removeAllPulseActions();
	TodoReturn removeColorAction(int);
	TodoReturn removePersistentFromAllItems();
	TodoReturn removePersistentFromAllTimers();
	TodoReturn removeTriggeredID(int, int);
	TodoReturn reset();
	TodoReturn resetEffects();
	TodoReturn resetMoveActions();
	TodoReturn resetTempGroupCommands(bool);
	TodoReturn resetToggledGroups();
	TodoReturn resetTriggeredIDs();
	TodoReturn resumeTimer(int);
	TodoReturn runCountTrigger(int, int, bool, int, bool, gd::vector<int> const&, int, int);
	TodoReturn runDeathTrigger(int, bool, gd::vector<int> const&, int, int);
	TodoReturn runOpacityActionOnGroup(int, float, float, int, int);
	TodoReturn runPulseEffect(int, bool, float, float, float, PulseEffectType, cocos2d::ccColor3B, cocos2d::ccHSVValue, int, bool, bool, bool, bool, int, int);
	TodoReturn runTimerTrigger(int, double, bool, int, gd::vector<int> const&, int, int);
	TodoReturn runTouchTriggerCommand(int, bool, TouchTriggerType, TouchTriggerControl, bool, gd::vector<int> const&, int, int);
	TodoReturn saveCompletedMove(int, double, double);
	TodoReturn saveToState(EffectManagerState&) = win 0x1e42a0;
	void setColorAction(ColorAction*, int);
	void setFollowing(int, int, bool);
	TodoReturn setupFromString(gd::string);
	TodoReturn shouldBlend(int);
	TodoReturn spawnGroup(int, float, bool, gd::vector<int> const&, int, int);
	TodoReturn spawnObject(GameObject*, float, gd::vector<int> const&, int, int);
	TodoReturn startTimer(int, double, double, bool, bool, bool, float, bool, int, gd::vector<int> const&, int, int);
	TodoReturn storeTriggeredID(int, int);
	TodoReturn timeForItem(int);
	TodoReturn timerExists(int);
	TodoReturn toggleGroup(int, bool);
	TodoReturn toggleItemPersistent(int, bool);
	TodoReturn toggleTimerPersistent(int, bool);
	TodoReturn transferPersistentItems();
	TodoReturn traverseInheritanceChain(InheritanceNode*) = win 0x1dbb50;
	TodoReturn tryGetMoveCommandNode(int);
	TodoReturn updateActiveOpacityEffects();
	TodoReturn updateColorAction(ColorAction*);
	TodoReturn updateColorEffects(float);
	TodoReturn updateColors(cocos2d::ccColor3B, cocos2d::ccColor3B);
	TodoReturn updateCountForItem(int, int);
	TodoReturn updateEffects(float);
	TodoReturn updateOpacityAction(OpacityEffectAction*);
	TodoReturn updateOpacityEffects(float);
	TodoReturn updatePulseEffects(float);
	TodoReturn updateSpawnTriggers(float);
	TodoReturn updateTimer(int, double);
	TodoReturn updateTimers(float, float);
	TodoReturn wasFollowing(int, int);
	TodoReturn wouldCreateLoop(InheritanceNode*, int) = win 0x1dbe50;

	virtual bool init() = win 0x1db370;
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

	static GJFollowCommandLayer* create(EffectGameObject*, cocos2d::CCArray*) = win 0x1ecb80;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x1ecc30;
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

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class GJFriendRequest : cocos2d::CCNode {
	// virtual ~GJFriendRequest();

	static GJFriendRequest* create() = win 0x1190e0;
	static GJFriendRequest* create(cocos2d::CCDictionary*);

	virtual bool init();
}

[[link(android)]]
class GJGameLevel : cocos2d::CCNode {
	// virtual ~GJGameLevel();

	static GJGameLevel* create() = win 0x113a60;
	static GJGameLevel* create(cocos2d::CCDictionary*, bool) = win 0x112680;
	inline static GJGameLevel* createWithCoder(DS_Dictionary* dict) {
		//inlined on windows
		auto level = GJGameLevel::create();
		level->dataLoaded(dict);
		return level;
	}

	TodoReturn areCoinsVerified() = win 0x116e00;
	TodoReturn copyLevelInfo(GJGameLevel*);
	void dataLoaded(DS_Dictionary*) = win 0x115060;
	TodoReturn demonIconForDifficulty(DemonDifficultyType);
	TodoReturn generateSettingsString();
	gd::string getAudioFileName() = win 0x114440;
	int getAverageDifficulty() = win 0x114180;
	char const* getCoinKey(int) = win 0x114220;
	TodoReturn getLastBuildPageForTab(int);
	TodoReturn getLengthKey(int, bool) = win 0x1140c0;
	TodoReturn getListSnapshot();
	TodoReturn getNormalPercent();
	TodoReturn getSongName();
	gd::string getUnpackedLevelDescription() = win 0x116f10;
	TodoReturn handleStatsConflict(GJGameLevel*);
	inline bool isPlatformer() {
		return m_levelLength == 5;
	}
	TodoReturn lengthKeyToString(int);
	TodoReturn levelWasAltered();
	TodoReturn levelWasSubmitted();
	TodoReturn parseSettingsString(gd::string);
	TodoReturn saveNewScore(int, int);
	TodoReturn savePercentage(int, bool, int, int, bool) = win 0x113d70;
	TodoReturn scoreStringToVector(gd::string&, gd::vector<int>&);
	TodoReturn scoreVectorToString(gd::vector<int>&, int);
	void setAccountID(int);
	void setAttempts(int);
	void setAttemptTime(int);
	void setClicks(int);
	void setCoinsVerified(int);
	void setDailyID(int);
	void setDemon(int);
	void setJumps(int);
	void setLastBuildPageForTab(int, int);
	void setLevelID(int);
	void setNewNormalPercent(int);
	void setNewNormalPercent2(int);
	void setNormalPercent(int);
	void setObjectCount(int);
	void setOriginalLevel(int);
	void setPassword(int);
	void setStars(int);
	TodoReturn storeNewLocalScore(int, int);
	TodoReturn unverifyCoins();

	virtual void encodeWithCoder(DS_Dictionary*) = win 0x1160d0;
	virtual bool canEncode(); //merged func (return true)
	virtual bool init() = win 0x113b00;

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

	static GJGameLoadingLayer* create(GJGameLevel*, bool);

	TodoReturn gameLayerDidUnload();
	bool init(GJGameLevel*, bool);
	TodoReturn loadLevel();
	TodoReturn transitionToLoadingLayer(GJGameLevel*, bool);

	virtual void onEnter();
	virtual void onEnterTransitionDidFinish();
}

[[link(android), depends(EventTriggerInstance), depends(SongChannelState), depends(DynamicObjectAction), depends(AdvancedFollowInstance), depends(EnterEffectInstance), depends(GameObjectPhysics), depends(GJValueTween), depends(SFXTriggerInstance)]]
class GJGameState {
	// ~GJGameState();
	// GJGameState() = win 0x18d990;

	TodoReturn controlTweenAction(int, int, GJActionCommand);
	TodoReturn getGameObjectPhysics(GameObject*);
	TodoReturn processStateTriggers();
	TodoReturn stopTweenAction(int);
	TodoReturn tweenValue(float, float, int, float, int, float, int, int) = win 0x18e920;
	TodoReturn updateTweenAction(float, int);
	TodoReturn updateTweenActions(float);
	
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
	PAD = win 0x8;
	int m_unk1f8; // used in PlayLayer::getCurrentPercent
	PAD = win 0x18;
	cocos2d::CCPoint m_unk20c;
	PAD = win 0x10, android32 0x10, android64 0x10;
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
	// GJGarageLayer() = win 0x1eec50;

	TodoReturn achievementForUnlock(int, UnlockType);
	TodoReturn descriptionForUnlock(int, UnlockType);
	TodoReturn getItems(IconType);
	TodoReturn getItems(int, int, IconType, int) = win 0x1f2310;
	TodoReturn getLockFrame(int, UnlockType);
	TodoReturn node() = win 0x1eedc0;
	void onArrow(cocos2d::CCObject* sender) = win 0x1f1bf0;
	void onBack(cocos2d::CCObject* sender) = win 0x1f3c70;
	void onInfo(cocos2d::CCObject* sender);
	void onNavigate(cocos2d::CCObject* sender);
	void onPaint(cocos2d::CCObject* sender) = win 0x1f3bb0;
	void onSelect(cocos2d::CCObject* sender) = win 0x1f2d30;
	void onSelectTab(cocos2d::CCObject* sender);
	void onShards(cocos2d::CCObject* sender) = win 0x1f3b90;
	void onShop(cocos2d::CCObject* sender) = win 0x1f3c00;
	void onSpecial(cocos2d::CCObject* sender);
	void onToggleItem(cocos2d::CCObject* sender) = win 0x1f3050;
	TodoReturn playRainbowEffect() = win 0x1f3a00;
	TodoReturn playShadowEffect();
	TodoReturn scene();
	TodoReturn selectTab(IconType) = win 0x1f1cd0;
	TodoReturn setupIconSelect() = win 0x1f1170;
	void setupPage(int, IconType) = win 0x1f1d70;
	TodoReturn setupSpecialPage() = win 0x1f2590;
	TodoReturn showUnlockPopupNew(int, UnlockType);
	TodoReturn titleForUnlock(int, UnlockType);
	TodoReturn toggleGlow();
	TodoReturn updatePlayerColors() = win 0x1f3180;
	TodoReturn updatePlayerName(char const*);

	virtual bool init() = win 0x1ef250;
	virtual void keyBackClicked();
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn listButtonBarSwitchedPage(ListButtonBar*, int);
	virtual TodoReturn showUnlockPopup(int, UnlockType) = win 0x1f32b0;
	virtual TodoReturn updateRate() = win 0x1f3880;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn dialogClosed(DialogLayer*);
	virtual TodoReturn playerColorChanged();
}

[[link(android)]]
class GJGradientLayer : cocos2d::CCLayerGradient {
	// virtual ~GJGradientLayer();

	static GJGradientLayer* create();

	virtual bool init();
}

[[link(android)]]
class GJGroundLayer : cocos2d::CCLayer {
	// virtual ~GJGroundLayer();

	static GJGroundLayer* create(int, int) = win 0x1f73f0;

	TodoReturn createLine(int) = win 0x1f7b70;
	TodoReturn deactivateGround();
	TodoReturn fadeInFinished();
	TodoReturn getGroundY();
	TodoReturn hideShadows();
	bool init(int, int) = win 0x1f74a0;
	TodoReturn loadGroundSprites(int, bool) = win 0x1f7900;
	TodoReturn positionGround(float);
	TodoReturn scaleGround(float);
	TodoReturn toggleVisible01(bool);
	TodoReturn toggleVisible02(bool);
	TodoReturn updateGround01Color(cocos2d::ccColor3B) = win 0x1f7ab0;
	TodoReturn updateGround02Color(cocos2d::ccColor3B) = win 0x1f7b10;
	TodoReturn updateGroundPos(cocos2d::CCPoint);
	TodoReturn updateGroundWidth(bool);
	TodoReturn updateLineBlend(bool);
	TodoReturn updateShadows();
	TodoReturn updateShadowXPos(float, float);

	virtual void draw();
	virtual TodoReturn showGround();
	virtual TodoReturn fadeInGround(float);
	virtual TodoReturn fadeOutGround(float);
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

	static GJItemIcon* create(UnlockType, int, cocos2d::ccColor3B, cocos2d::ccColor3B, bool, bool, bool, cocos2d::ccColor3B) = win 0x1f5010;

	void changeToLockedState(float) = win 0x1f5920;
	inline static GJItemIcon* createBrowserItem(UnlockType unlockType, int itemID) {
		return GJItemIcon::create(unlockType, itemID, {0xAF, 0xAF, 0xAF}, {0xFF, 0xFF, 0xFF}, false, true, true, {0xFF, 0xFF, 0xFF});
	}
	TodoReturn createStoreItem(UnlockType, int, bool, cocos2d::ccColor3B);
	void darkenStoreItem(cocos2d::ccColor3B) = win 0x1f5720;
	TodoReturn darkenStoreItem(ShopType);
	bool init(UnlockType, int, cocos2d::ccColor3B, cocos2d::ccColor3B, bool, bool, bool, cocos2d::ccColor3B) = win 0x1f50f0;
	TodoReturn scaleForType(UnlockType) = win 0x1f59e0;
	TodoReturn toggleEnabledState(bool) = win 0x1f5870;
	TodoReturn unlockedColorForType(int);

	virtual void setOpacity(unsigned char);
}

[[link(android)]]
class GJLevelList : cocos2d::CCNode {
	// virtual ~GJLevelList();

	static GJLevelList* create() = win 0x11bf40;
	static GJLevelList* create(cocos2d::CCDictionary*);

	TodoReturn addLevelToList(GJGameLevel*);
	TodoReturn completedLevels() = win 0x11cdd0;
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn dataLoaded(DS_Dictionary*) = win 0x11d290;
	TodoReturn duplicateListLevels(GJLevelList*);
	TodoReturn frameForListDifficulty(int, DifficultyIconType) = win 0x11d7e0;
	TodoReturn getListLevelsArray(cocos2d::CCArray*);
	gd::string getUnpackedDescription() = win 0x11c1b0;
	TodoReturn orderForLevel(int);
	TodoReturn parseListLevels(gd::string);
	TodoReturn removeLevelFromList(int);
	TodoReturn reorderLevel(int, int);
	TodoReturn reorderLevelStep(int, bool);
	TodoReturn showListInfo() = win 0x11cef0;
	TodoReturn totalLevels();
	TodoReturn updateLevelsString();

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();
	virtual bool init();

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

	TodoReturn loadFromScore(GJUserScore*) = win 0x87cc0;
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class GJListLayer : cocos2d::CCLayerColor {
	// virtual ~GJListLayer();

	static GJListLayer* create(BoomListView*, char const*, cocos2d::ccColor4B, float, float, int) = win 0x1f8930;

	bool init(BoomListView*, char const*, cocos2d::ccColor4B, float, float, int) = win 0x1f8a20;

	BoomListView* m_listView;
}

[[link(android)]]
class GJLocalLevelScoreCell : TableViewCell {
	// virtual ~GJLocalLevelScoreCell();
	GJLocalLevelScoreCell(char const*, float, float);

	TodoReturn loadFromScore(GJLocalScore*) = win 0x878f0;
	TodoReturn updateBGColor(int) = win 0x87b80;

	virtual bool init();
	virtual void draw();
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

	TodoReturn completedMaps();
	TodoReturn hasCompletedMapPack();
	TodoReturn parsePackColors(gd::string, gd::string);
	TodoReturn parsePackLevels(gd::string);
	TodoReturn totalMaps();

	virtual bool init();

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

	TodoReturn loadFromMessage(GJUserMessage*) = win 0x8a3a0;
	TodoReturn markAsRead();
	void onDeleteMessage(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);
	void onViewMessage(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);
	TodoReturn updateToggle();

	virtual bool init();
	virtual void draw();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class GJMessagePopup : FLAlertLayer, UploadActionDelegate, UploadPopupDelegate, FLAlertLayerProtocol, DownloadMessageDelegate {
	// virtual ~GJMessagePopup();

	static GJMessagePopup* create(GJUserMessage*);

	TodoReturn blockUser();
	bool init(GJUserMessage*);
	TodoReturn loadFromGJMessage(GJUserMessage*);
	void onBlock(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onRemove(cocos2d::CCObject* sender);
	void onReply(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
	virtual TodoReturn downloadMessageFinished(GJUserMessage*);
	virtual TodoReturn downloadMessageFailed(int);
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class GJMGLayer : cocos2d::CCLayer {
	// virtual ~GJMGLayer();

	static GJMGLayer* create(int);

	TodoReturn deactivateGround();
	bool init(int);
	TodoReturn loadGroundSprites(int, bool);
	TodoReturn scaleGround(float);
	TodoReturn toggleVisible01(bool);
	TodoReturn toggleVisible02(bool);
	TodoReturn updateGroundColor(cocos2d::ccColor3B, bool);
	TodoReturn updateGroundOpacity(unsigned char, bool);
	TodoReturn updateGroundPos(cocos2d::CCPoint);
	TodoReturn updateGroundWidth(bool);
	TodoReturn updateMG01Blend(bool);
	TodoReturn updateMG02Blend(bool);

	virtual void draw();
	virtual TodoReturn showGround();
}

[[link(android)]]
class GJMoreGamesLayer : GJDropDownLayer {
	// virtual ~GJMoreGamesLayer();
	// GJMoreGamesLayer() = win 0x1f8ff0;

	static GJMoreGamesLayer* create() = win 0x1f9090;

	TodoReturn getMoreGamesList() = win 0x1f9330;

	virtual void customSetup() = win 0x1f95e0;
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

	static GJMultiplayerManager* sharedState();

	void addComment(gd::string, int) = win 0x1fc100;
	void addDLToActive(char const* tag, cocos2d::CCObject* obj);
	void addDLToActive(char const* tag);
	TodoReturn createAndAddComment(gd::string, int) = win 0x1fbfc0;
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn exitLobby(int);
	TodoReturn firstSetup();
	TodoReturn getBasePostString();
	TodoReturn getDLObject(char const*);
	TodoReturn getLastCommentIDForGame(int);
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType) = win 0x1faf80;
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	bool isDLActive(char const* tag);
	TodoReturn joinLobby(int);
	TodoReturn onExitLobbyCompleted(gd::string, gd::string) = win 0x1fb820;
	TodoReturn onJoinLobbyCompleted(gd::string, gd::string) = win 0x1fb220;
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = win 0x1fae60;
	TodoReturn onUploadCommentCompleted(gd::string, gd::string) = win 0x1fbe80;
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType) = win 0x1fac50;
	TodoReturn removeDLFromActive(char const*);
	TodoReturn uploadComment(gd::string, int) = win 0x1fb970;

	virtual bool init() = win 0x1FB1C0;
}

[[link(android)]]
class GJObjectDecoder : cocos2d::CCNode, ObjectDecoderDelegate {
	// virtual ~GJObjectDecoder();

	static GJObjectDecoder* sharedDecoder() = win 0x1fc3f0;

	virtual bool init();
	virtual TodoReturn getDecodedObject(int, DS_Dictionary*) = win 0x1fc490;
}

[[link(android)]]
class GJOptionsLayer : SetupTriggerPopup {
	// virtual ~GJOptionsLayer();
	// GJOptionsLayer();

	static GJOptionsLayer* create(int);

	TodoReturn addGVToggle(char const*, char const*, char const*);
	TodoReturn addToggle(char const*, int, bool, char const*);
	TodoReturn addToggleInternal(char const*, int, bool, char const*);
	TodoReturn countForPage(int);
	TodoReturn goToPage(int);
	TodoReturn incrementCountForPage(int);
	TodoReturn infoKey(int);
	bool init(int);
	TodoReturn layerForPage(int);
	TodoReturn layerKey(int);
	TodoReturn nextPosition(int);
	TodoReturn objectKey(int);
	TodoReturn objectsForPage(int);
	TodoReturn offsetToNextPage();
	void onInfo(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);
	TodoReturn pageKey(int);

	virtual TodoReturn setupOptions();
	virtual TodoReturn didToggleGV(gd::string);
	virtual TodoReturn didToggle(int);
}

[[link(android)]]
class GJPathPage : FLAlertLayer, FLAlertLayerProtocol, GJPurchaseDelegate {
	// virtual ~GJPathPage();

	static GJPathPage* create(int, GJPathsLayer*) = win 0x1fd2c0;

	bool init(int, GJPathsLayer*) = win 0x1fd370;
	void onActivatePath(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onIconInfo(cocos2d::CCObject* sender);
	void onUnlock(cocos2d::CCObject* sender);
	TodoReturn playUnlockAnimation();
	TodoReturn showCantAffordMessage(GJStoreItem*);
	TodoReturn unlockAnimationFinished();
	TodoReturn unlockAnimationStep2();
	TodoReturn unlockAnimationStep3();

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void show();
	virtual TodoReturn didPurchaseItem(GJStoreItem*);
}

[[link(android)]]
class GJPathRewardPopup : FLAlertLayer {
	// virtual ~GJPathRewardPopup();

	static GJPathRewardPopup* create(int) = win 0x200930;

	TodoReturn closePopup();
	bool init(int);
	void onClaim(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
}

[[link(android)]]
class GJPathsLayer : FLAlertLayer, FLAlertLayerProtocol {
	// virtual ~GJPathsLayer();

	static GJPathsLayer* create() = win 0x1fcb20;

	TodoReturn darkenButtons(bool);
	TodoReturn nameForPath(int) = win 0x1fc9a0;
	void onClose(cocos2d::CCObject* sender);
	void onPath(cocos2d::CCObject* sender) = win 0x1fd0a0;

	virtual bool init() = win 0x1fcbc0;
	virtual void onExit();
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void show();
}

[[link(android)]]
class GJPathSprite : CCSpriteCOpacity {
	// virtual ~GJPathSprite();

	static GJPathSprite* create(int) = win 0x200120;

	TodoReturn addRankLabel(int);
	TodoReturn addShardSprite();
	TodoReturn changeToLockedArt();
	bool init(int);
	TodoReturn updateState() = win 0x2002c0;
}

[[link(android)]]
class GJPFollowCommandLayer : SetupTriggerPopup {
	// virtual ~GJPFollowCommandLayer();

	static GJPFollowCommandLayer* create(EffectGameObject*, cocos2d::CCArray*) = win 0x2010e0;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x201190;
	void onUpdateGroupID(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn sliderXModChanged(cocos2d::CCObject*);
	TodoReturn sliderYModChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateMaxSpeed();
	TodoReturn updateMaxSpeedLabel();
	TodoReturn updateOffsetLabel();
	TodoReturn updatePlayerOffset();
	TodoReturn updateTargetGroupID();
	TodoReturn updateTextInputLabel();
	TodoReturn updateXMod();
	TodoReturn updateXModLabel();
	TodoReturn updateYMod();
	TodoReturn updateYModLabel();

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class GJPromoPopup : FLAlertLayer {
	// virtual ~GJPromoPopup();

	static GJPromoPopup* create(gd::string) = win 0x216860;

	bool init(gd::string) = win 0x216920;
	void onClose(cocos2d::CCObject* sender);

	virtual void onExit();
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void show();
}

[[link(android)]]
class GJPurchaseDelegate {
	virtual TodoReturn didPurchaseItem(GJStoreItem*);
}

[[link(android)]]
class GJRequestCell : TableViewCell, FLAlertLayerProtocol, UploadPopupDelegate, UploadActionDelegate {
	// virtual ~GJRequestCell();
	GJRequestCell(char const*, float, float);

	TodoReturn loadFromScore(GJUserScore*) = win 0x896e0;
	TodoReturn markAsRead();
	void onDeleteRequest(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);
	void onViewFriendRequest(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);
	TodoReturn updateToggle();

	virtual bool init();
	virtual void draw();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class GJRewardDelegate {
	virtual TodoReturn rewardsStatusFinished(int);
	virtual TodoReturn rewardsStatusFailed();
}

[[link(android)]]
class GJRewardItem : cocos2d::CCObject {
	// virtual ~GJRewardItem();

	static GJRewardItem* create();
	static GJRewardItem* create(int, int, gd::string);

	TodoReturn createSpecial(GJRewardType, int, int, SpecialRewardItem, int, SpecialRewardItem, int, int, int) = win 0x181cd0;
	TodoReturn createWithCoder(DS_Dictionary*) = win 0x1826b0;
	TodoReturn createWithObject(GJRewardType, GJRewardObject*);
	TodoReturn createWithObjects(GJRewardType, cocos2d::CCArray*) = win 0x181e10;
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn getNextShardType(SpecialRewardItem);
	TodoReturn getRandomNonMaxShardType();
	TodoReturn getRandomShardType();
	TodoReturn getRewardCount(SpecialRewardItem);
	TodoReturn getRewardObjectForType(SpecialRewardItem) = win 0x1825b0;
	bool init(int, int, gd::string);
	bool isShardType(SpecialRewardItem);
	TodoReturn rewardItemToStat(SpecialRewardItem);

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();

	int m_chestID;
	int m_timeRemaining;
	GJRewardType m_rewardType;
	cocos2d::CCArray* m_rewardObjects;
	bool m_unk;
}

[[link(android)]]
class GJRewardObject : cocos2d::CCObject {
	// virtual ~GJRewardObject();

	static GJRewardObject* create() = win 0x181ba0;
	static GJRewardObject* create(SpecialRewardItem, int, int) = win 0x181c30;

	TodoReturn createItemUnlock(UnlockType, int);
	TodoReturn createWithCoder(DS_Dictionary*) = win 0x181d60;
	TodoReturn dataLoaded(DS_Dictionary*);
	bool init(SpecialRewardItem, int, int);
	bool isSpecialType();

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();

	SpecialRewardItem m_specialRewardItem;
	UnlockType m_unlockType;
	int m_itemID;
	int m_total;
}

[[link(android)]]
class GJRobotSprite : CCAnimatedSprite {
	// virtual ~GJRobotSprite();
	// GJRobotSprite() = win 0x217330;

	static GJRobotSprite* create(int) = win 0x217510;

	TodoReturn hideGlow();
	bool init(int, gd::string) = win 0x2175e0;
	bool init(int);
	TodoReturn showGlow();
	TodoReturn updateColor01(cocos2d::ccColor3B);
	TodoReturn updateColor02(cocos2d::ccColor3B);
	TodoReturn updateColors() = win 0x217b70;
	TodoReturn updateFrame(int) = win 0x2180b0;
	TodoReturn updateGlowColor(cocos2d::ccColor3B, bool) = win 0x217b10;

	virtual void setOpacity(unsigned char);
	virtual TodoReturn hideSecondary();
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
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float);
}

[[link(android)]]
class GJRotationControl : cocos2d::CCLayer {
	// virtual ~GJRotationControl();

	static GJRotationControl* create() = win 0xddc40;

	TodoReturn finishTouch() = win 0xddf70;
	void setAngle(float);
	TodoReturn updateSliderPosition(cocos2d::CCPoint);

	virtual bool init();
	virtual void draw();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
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

	static GJScaleControl* create() = win 0xde1c0;

	TodoReturn finishTouch();
	TodoReturn loadValues(GameObject*, cocos2d::CCArray*, gd::unordered_map<int, GameObjectEditorState>&) = win 0xde650;
	TodoReturn scaleFromValue(float);
	TodoReturn skewFromValue(float);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateLabelX(float);
	TodoReturn updateLabelXY(float);
	TodoReturn updateLabelY(float);
	TodoReturn valueFromScale(float);
	TodoReturn valueFromSkew(float);

	virtual bool init();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
}

[[link(android)]]
class GJScaleControlDelegate {
	virtual TodoReturn scaleXChanged(float);
	virtual TodoReturn scaleYChanged(float);
	virtual TodoReturn scaleXYChanged(float, float);
	virtual TodoReturn scaleChangeBegin();
	virtual TodoReturn scaleChangeEnded();
	virtual TodoReturn updateScaleControl();
	virtual TodoReturn anchorPointMoved(cocos2d::CCPoint);
}

[[link(android)]]
class GJScoreCell : TableViewCell, FLAlertLayerProtocol {
	// virtual ~GJScoreCell();
	GJScoreCell(char const*, float, float);

	TodoReturn loadFromScore(GJUserScore*) = win 0x865b0;
	void onBan(cocos2d::CCObject* sender);
	void onCheck(cocos2d::CCObject* sender);
	void onMoreLevels(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender) = win 0x876f0;
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);

	GJUserScore* m_score;
}

[[link(android)]]
class GJSearchObject : cocos2d::CCNode {
	// virtual ~GJSearchObject();

	static GJSearchObject* create(SearchType searchType, gd::string searchQuery, gd::string difficulty, gd::string length, int page, bool star, bool uncompleted, bool featured, int songID, bool original, bool twoPlayer, bool customSong, bool songFilter, bool noStar, bool coins, bool epic, bool legendary, bool mythic, bool onlyCompleted, int demonFilter, int folder, int searchMode) = win 0x11a480;
	static GJSearchObject* create(SearchType searchType, gd::string searchQuery) = win 0x11a380;
	static GJSearchObject* create(SearchType searchType) = win 0x11a290;
	static GJSearchObject* createFromKey(char const* key) = win 0x119ee0;

	char const* getKey() = win 0x11a7d0;
	TodoReturn getNextPageKey();
	TodoReturn getNextPageObject();
	TodoReturn getPageObject(int page) = win 0x11aa90;
	TodoReturn getPrevPageObject();
	TodoReturn getSearchKey(SearchType searchType, gd::string searchQuery, gd::string difficulty, gd::string length, int page, bool star, bool uncompleted, bool featured, int songID, bool original, bool twoPlayer, bool customSong, bool songFilter, bool noStar, bool coins, bool epic, bool legendary, bool mythic, bool onlyCompleted, int demonFilter, int folder, int searchMode);
	bool init(SearchType searchType, gd::string searchQuery, gd::string difficulty, gd::string length, int page, bool star, bool uncompleted, bool featured, int songID, bool original, bool twoPlayer, bool customSong, bool songFilter, bool noStar, bool coins, bool epic, bool legendary, bool mythic, bool onlyCompleted, int demonFilter, int folder, int searchMode) = win 0x11a630;
	bool isLevelSearchObject() = win 0x11ade0;

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
	TodoReturn reset();
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

	static GJShopLayer* create(ShopType) = win 0x219ad0;

	TodoReturn exitVideoAdItems();
	bool init(ShopType) = win 0x219b70;
	void onBack(cocos2d::CCObject* sender);
	void onCommunityCredits(cocos2d::CCObject* sender);
	void onPlushies(cocos2d::CCObject* sender);
	void onSelectItem(cocos2d::CCObject* sender) = win 0x21b2c0;
	void onVideoAd(cocos2d::CCObject* sender);
	TodoReturn scene(ShopType) = win 0x219a90;
	TodoReturn showCantAffordMessage(GJStoreItem*);
	TodoReturn showReactMessage() = win 0x21be50;
	TodoReturn updateCurrencyCounter();

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
class GJSmartBlockPreview : cocos2d::CCNode {
	// virtual ~GJSmartBlockPreview();

	static GJSmartBlockPreview* create(gd::string);

	TodoReturn addChance(int, int);
	TodoReturn addCount(int);
	TodoReturn addPreview(gd::string, gd::string, LevelEditorLayer*);
	TodoReturn addTemplateGuide(gd::string, int);
	TodoReturn addTemplateGuide(SmartPrefabResult, float);
	TodoReturn createInfoLabel();
	bool init(gd::string);
	TodoReturn toggleSelectItem(bool);
}

[[link(android)]]
class GJSmartBlockPreviewSprite : cocos2d::CCNode {
	// virtual ~GJSmartBlockPreviewSprite();

	static GJSmartBlockPreviewSprite* create();

	virtual bool init();
	virtual void visit();
}

[[link(android)]]
class GJSmartPrefab : cocos2d::CCObject {
	// virtual ~GJSmartPrefab();

	static GJSmartPrefab* create() = win 0x222e20;

	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn dataLoaded(DS_Dictionary*) = win 0x222ee0;
	bool init();

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();
}

[[link(android)]]
class GJSmartTemplate : cocos2d::CCObject {
	// virtual ~GJSmartTemplate();

	static GJSmartTemplate* create() = win 0x21e860;

	TodoReturn applyTransformationsForType(SmartBlockType, cocos2d::CCSprite*);
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn dataLoaded(DS_Dictionary*) = win 0x222ab0;
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
	bool init() = win 0x21e900;
	bool isUnrequired(gd::string);
	TodoReturn keyFromNeighbors(cocos2d::CCPoint, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*);
	TodoReturn keyFromNeighbors(SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType);
	TodoReturn keyFromNeighborsOld(bool, bool, bool, bool, bool, bool, bool, bool);
	TodoReturn logTemplateStatus(bool) = win 0x222330;
	TodoReturn offsetForDir(GJSmartDirection, int);
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
	TodoReturn smartObjectToType(SmartGameObject*, cocos2d::CCPoint);
	TodoReturn smartTypeToObjectKey(SmartBlockType);

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();
}

[[link(android)]]
class GJSongBrowser : GJDropDownLayer, FLAlertLayerProtocol, TableViewCellDelegate {
	// virtual ~GJSongBrowser();

	static GJSongBrowser* create() = win 0x224e80;

	TodoReturn loadPage(int) = win 0x2253c0;
	void onDeleteAll(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn setupPageInfo(int, int, int);
	TodoReturn setupSongBrowser(cocos2d::CCArray*);

	virtual bool init() = win 0x224fe0;
	virtual void customSetup() = win 0x225080;
	virtual TodoReturn exitLayer(cocos2d::CCObject*) = win 0x225010;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	virtual TodoReturn getSelectedCellIdx();

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
	bool init(int, GJSpecialColorSelectDelegate*, ColorSelectType) = win 0x225bf0;
	void onClose(cocos2d::CCObject* sender);
	void onSelectColor(cocos2d::CCObject* sender);
	static const char* textForColorIdx(int) = win 0x2265d0;

	virtual void keyBackClicked();
}

[[link(android)]]
class GJSpecialColorSelectDelegate {
	virtual TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
}

[[link(android)]]
class GJSpiderSprite : GJRobotSprite {
	// virtual ~GJSpiderSprite();

	static GJSpiderSprite* create(int) = win 0x2186e0;

	bool init(int);
}

[[link(android)]]
class GJSpriteColor {
	// GJSpriteColor() = win 0x12ff60;

	TodoReturn getColorMode();

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

	static GJStoreItem* create(int, int, int, int, ShopType) = win 0x182d20;

	TodoReturn getCurrencyKey() = win 0x182ed0;
	bool init(int, int, int, int, ShopType) = win 0x182dd0;
}

[[link(android)]]
class GJTransformControl : cocos2d::CCLayer {
	// virtual ~GJTransformControl();

	static GJTransformControl* create() = win 0xdf700;

	TodoReturn applyRotation(float) = win 0xe14d0;
	TodoReturn calculateRotationOffset();
	TodoReturn finishTouch();
	TodoReturn loadFromState(GJTransformState&);
	TodoReturn loadValues(GameObject*, cocos2d::CCArray*, gd::unordered_map<int, GameObjectEditorState>&) = win 0xdfda0;
	TodoReturn logCurrentZeroPos();
	void onToggleLockScale(cocos2d::CCObject* sender);
	TodoReturn refreshControl();
	TodoReturn saveToState(GJTransformState&);
	TodoReturn scaleButtons(float) = win 0xdfd10;
	TodoReturn spriteByTag(int);
	TodoReturn updateAnchorSprite(cocos2d::CCPoint);
	TodoReturn updateButtons(bool, bool) = win 0xdffc0;
	TodoReturn updateMinMaxPositions();

	virtual bool init();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
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

	static GJUINode* create(UIButtonConfig&) = win 0x3c0230;

	TodoReturn activeRangeTouchTest(cocos2d::CCPoint);
	TodoReturn activeTouchTest(cocos2d::CCPoint);
	TodoReturn getButtonScale();
	TodoReturn getOpacity();
	TodoReturn highlightButton(int);
	bool init(UIButtonConfig&);
	TodoReturn loadFromConfig(UIButtonConfig&);
	TodoReturn resetState() = win 0x3c04f0;
	TodoReturn saveToConfig(UIButtonConfig&);
	void setOpacity(unsigned char);
	TodoReturn toggleHighlight(int, bool);
	TodoReturn toggleModeB(bool);
	TodoReturn touchEnded();
	TodoReturn touchTest(cocos2d::CCPoint);
	TodoReturn updateButtonFrames();
	TodoReturn updateButtonPositions();
	TodoReturn updateButtonScale(float);
	TodoReturn updateDeadzone(int);
	TodoReturn updateDragRadius(float);
	TodoReturn updateHeight(float);
	TodoReturn updateRangePos(cocos2d::CCPoint);
	TodoReturn updateSize(float, float);
	TodoReturn updateWidth(float);

	virtual void draw();
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

	TodoReturn loadFromScore(GJUserScore*) = win 0x88750;
	void onCancelFriendRequest(cocos2d::CCObject* sender);
	void onRemoveFriend(cocos2d::CCObject* sender);
	void onSendMessage(cocos2d::CCObject* sender);
	void onUnblockUser(cocos2d::CCObject* sender);
	void onViewFriendRequest(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class GJUserMessage : cocos2d::CCNode {
	// virtual ~GJUserMessage();

	static GJUserMessage* create();
	static GJUserMessage* create(cocos2d::CCDictionary*);

	virtual bool init();
}

[[link(android)]]
class GJUserScore : cocos2d::CCNode {
	// virtual ~GJUserScore();

	static GJUserScore* create() = win 0x118ea0;
	static GJUserScore* create(cocos2d::CCDictionary*) = win 0x117ea0;

	bool isCurrentUser() = win 0x118fa0;
	TodoReturn mergeWithScore(GJUserScore*);

	virtual bool init();

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

	static GJWriteMessagePopup* create(int, int) = win 0x20df90;

	TodoReturn closeMessagePopup(bool);
	bool init(int, int) = win 0x20e040;
	void onClearBody(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onSend(cocos2d::CCObject* sender);
	TodoReturn updateBody(gd::string) = win 0x20f0e0;
	TodoReturn updateCharCountLabel(int) = win 0x20f340;
	TodoReturn updateSubject(gd::string) = win 0x20f060;
	TodoReturn updateText(gd::string, int) = win 0x20f160;

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
class GManager : cocos2d::CCNode {
	// virtual ~GManager();

	TodoReturn getCompressedSaveString();
	TodoReturn getSaveString();
	TodoReturn load();
	TodoReturn loadDataFromFile(gd::string const&);
	TodoReturn loadFromCompressedString(gd::string&);
	TodoReturn loadFromString(gd::string&);
	inline void save() {
		saveGMTo(m_fileName);
	}
	TodoReturn saveData(DS_Dictionary*, gd::string);
	TodoReturn saveGMTo(gd::string) = win 0x47580;
	TodoReturn tryLoadData(DS_Dictionary*, gd::string const&);
	inline GManager() {}

	virtual bool init();
	virtual TodoReturn setup() = win 0x472c0;
	virtual TodoReturn encodeDataTo(DS_Dictionary*);
	virtual TodoReturn dataLoaded(DS_Dictionary*);
	virtual TodoReturn firstLoad();

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

	static GooglePlayManager* sharedState() = win 0x478b0;

	TodoReturn googlePlaySignedIn();

	virtual bool init();
}

[[link(android)]]
class GradientTriggerObject : EffectGameObject {
	// virtual ~GradientTriggerObject();

	static GradientTriggerObject* create();

	virtual bool init();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class GraphicsReloadLayer : cocos2d::CCLayer {
	// virtual ~GraphicsReloadLayer();

	static GraphicsReloadLayer* create(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool) = win 0x2b8460;

	bool init(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool);
	TodoReturn performReload();
	TodoReturn scene(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool);
}

[[link(android)]]
class GravityEffectSprite : cocos2d::CCSprite {
	// virtual ~GravityEffectSprite();

	static GravityEffectSprite* create() = win 0x2eba40;

	TodoReturn updateSpritesColor(cocos2d::ccColor3B) = win 0x2ebd60;

	virtual bool init() = win 0x2ebb00;
	virtual void draw();
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

	static HardStreak* create();

	TodoReturn addPoint(cocos2d::CCPoint) = win 0x227250;
	TodoReturn clearAboveXPos(float);
	TodoReturn clearBehindXPos(float);
	TodoReturn createDuplicate();
	TodoReturn firstSetup();
	TodoReturn normalizeAngle(double);
	TodoReturn quadCornerOffset(cocos2d::CCPoint, cocos2d::CCPoint, float);
	TodoReturn reset();
	TodoReturn resumeStroke();
	TodoReturn scheduleAutoUpdate();
	TodoReturn stopStroke();
	callback void updateStroke(float) = win 0x226960;

	virtual bool init() = win 0x226860;
}

[[link(android)]]
class HSVLiveOverlay : FLAlertLayer, HSVWidgetDelegate {
	// virtual ~HSVLiveOverlay();

	static HSVLiveOverlay* create(GameObject*, cocos2d::CCArray*);

	TodoReturn closeColorSelect(cocos2d::CCObject*);
	TodoReturn createHSVWidget(int);
	TodoReturn determineStartValues();
	bool init(GameObject*, cocos2d::CCArray*);
	void onSelectTab(cocos2d::CCObject* sender);
	TodoReturn toggleControls(bool);

	virtual void keyBackClicked();
	virtual void show();
	virtual TodoReturn hsvChanged(ConfigureHSVWidget*);
}

[[link(android)]]
class HSVWidgetDelegate {
	virtual void hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue) {}
	virtual void hsvChanged(ConfigureHSVWidget*) {}
}

[[link(android)]]
class HSVWidgetPopup : FLAlertLayer {
	// virtual ~HSVWidgetPopup();

	static HSVWidgetPopup* create(cocos2d::ccHSVValue, HSVWidgetDelegate*, gd::string);

	bool init(cocos2d::ccHSVValue, HSVWidgetDelegate*, gd::string);
	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
}

[[link(android)]]
class InfoAlertButton : CCMenuItemSpriteExtra {
	// virtual ~InfoAlertButton();

	static InfoAlertButton* create(gd::string, gd::string, float) = win 0x228110;

	bool init(gd::string, gd::string, float) = win 0x228230;

	virtual void activate();
}

[[link(android)]]
class InfoLayer : FLAlertLayer, LevelCommentDelegate, CommentUploadDelegate, FLAlertLayerProtocol {
	// virtual ~InfoLayer();

	static InfoLayer* create(GJGameLevel*, GJUserScore*, GJLevelList*) = win 0x228730;

	TodoReturn confirmReport(cocos2d::CCObject*);
	int getAccountID();
	int getID() {
		if(m_score) return m_score->m_userID;
		if(m_levelList) return - m_levelList->m_listID;
		if(m_level) return m_level->m_levelID;
		return 0;
	}
	int getRealID();
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint) = win 0x22a410;
	bool init(GJGameLevel*, GJUserScore*, GJLevelList*) = win 0x228810;
	bool isCorrect(char const*);
	void loadPage(int, bool) = win 0x22b340;
	void onClose(cocos2d::CCObject* sender) = win 0x22b200;
	void onComment(cocos2d::CCObject* sender) = win 0x22aba0;
	void onCopyLevelID(cocos2d::CCObject* sender) = win 0x22a8f0;
	void onGetComments(cocos2d::CCObject* sender) = win 0x22ad90;
	void onLevelInfo(cocos2d::CCObject* sender) = win 0x22ada0;
	void onMore(cocos2d::CCObject* sender) = win 0x22aaa0;
	void onNextPage(cocos2d::CCObject* sender) = win 0x22bac0;
	void onOriginal(cocos2d::CCObject* sender) = win 0x22aae0;
	void onPrevPage(cocos2d::CCObject* sender) = win 0x22bae0;
	void onRefreshComments(cocos2d::CCObject* sender) = win 0x22a680;
	void onSimilar(cocos2d::CCObject* sender);
	TodoReturn reloadWindow() = win 0x22bd00;
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*) = win 0x22b670;
	TodoReturn setupLevelInfo();
	TodoReturn toggleCommentMode(cocos2d::CCObject*);
	TodoReturn toggleExtendedMode(cocos2d::CCObject*);
	TodoReturn toggleSmallCommentMode(cocos2d::CCObject*) = win 0x22bc10;
	TodoReturn updateCommentModeButtons();
	TodoReturn updateLevelsLabel();

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void show() = win 0x8fff0;
	virtual TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadCommentsFailed(char const*);
	virtual TodoReturn setupPageInfo(gd::string, char const*);
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
class InheritanceNode : cocos2d::CCObject {
	// virtual ~InheritanceNode();

	static InheritanceNode* create(int, InheritanceNode*) = win 0x1d8b50;

	bool init(int, InheritanceNode*);
}

[[link(android)]]
class ItemInfoPopup : FLAlertLayer {
	// virtual ~ItemInfoPopup();

	static ItemInfoPopup* create(int, UnlockType) = win 0x1f5ad0;

	bool init(int, UnlockType) = win 0x1f5b80;
	bool isUnlockedByDefault(int, UnlockType);
	TodoReturn nameForUnlockType(int, UnlockType) = win 0x1f6f40;
	void onClose(cocos2d::CCObject* sender);
	void onCredit(cocos2d::CCObject* sender);

	virtual void keyBackClicked();

	int m_itemID;
	UnlockType m_unlockType;
	int m_accountID;
}

[[link(android)]]
class ItemTriggerGameObject : EffectGameObject {
	// virtual ~ItemTriggerGameObject();

	static ItemTriggerGameObject* create(char const*) = win 0x3b5040;

	bool init(char const*);

	virtual void customSetup() = win 0x3b50e0;
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class KeybindingsLayer : FLAlertLayer {
	// virtual ~KeybindingsLayer();

	static KeybindingsLayer* create() = win 0x22c1c0;

	TodoReturn addKeyPair(char const*, char const*) = win 0x22c9d0;
	TodoReturn countForPage(int) = win 0x22ccd0;
	TodoReturn goToPage(int) = win 0x22d010;
	TodoReturn incrementCountForPage(int) = win 0x22cda0;
	TodoReturn infoKey(int);
	TodoReturn layerForPage(int) = win 0x22ce80;
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

	virtual bool init() = win 0x22c260;
	virtual void keyBackClicked();
}

[[link(android)]]
class KeybindingsManager : cocos2d::CCNode {
	// virtual ~KeybindingsManager();

	static KeybindingsManager* sharedState();

	TodoReturn commandForKey(cocos2d::enumKeyCodes, GJKeyGroup, bool, bool, bool);
	TodoReturn commandForKeyMods(cocos2d::enumKeyCodes, GJKeyGroup);
	TodoReturn commandForKeyNoMods(cocos2d::enumKeyCodes, GJKeyGroup);
	TodoReturn commandToKeyForGroup(GJKeyGroup);
	TodoReturn dataLoaded(DS_Dictionary*) = win 0x22d570;
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn groupForCommand(GJKeyCommand);
	TodoReturn keyForCommand(GJKeyCommand);
	TodoReturn keyToCommandForGroup(GJKeyGroup);

	virtual bool init();
}

[[link(android)]]
class KeyframeAnimTriggerObject : EffectGameObject {
	// virtual ~KeyframeAnimTriggerObject();

	static KeyframeAnimTriggerObject* create();

	virtual bool init();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class KeyframeGameObject : EffectGameObject {
	// virtual ~KeyframeGameObject();

	static KeyframeGameObject* create();

	TodoReturn updateShadowObjects(GJBaseGameLayer*, EditorUI*);

	virtual bool init();
	virtual void setOpacity(unsigned char);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
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
	TodoReturn updatePreviewLabel();

	virtual bool init();
	virtual void setOpacity(unsigned char);
	virtual TodoReturn setupCustomSprites(gd::string) = win 0x14dda0;
	virtual TodoReturn addMainSpriteToParent(bool);
	virtual TodoReturn resetObject();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
	virtual void setObjectColor(cocos2d::ccColor3B const&);
	virtual TodoReturn updateTextKerning(int);
	virtual TodoReturn getTextKerning();

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

	static LeaderboardsLayer* create(LeaderboardState) = win 0x22dbc0;

	bool init(LeaderboardState) = win 0x22dc60;
	bool isCorrect(char const*);
	void onBack(cocos2d::CCObject* sender);
	void onCreators(cocos2d::CCObject* sender);
	void onGlobal(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onTop(cocos2d::CCObject* sender);
	void onWeek(cocos2d::CCObject* sender);
	TodoReturn refreshTabs();
	TodoReturn scene(LeaderboardState);
	TodoReturn selectLeaderboard(LeaderboardState);
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	TodoReturn setupTabs();
	TodoReturn toggleTabButtons();

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
class LevelAreaInnerLayer : cocos2d::CCLayer, DialogDelegate {
	// virtual ~LevelAreaInnerLayer();

	static LevelAreaInnerLayer* create(bool) = win 0x231140;

	bool init(bool) = win 0x2311e0;
	void onBack(cocos2d::CCObject* sender) = win 0x232940;
	void onDoor(cocos2d::CCObject* sender) = win 0x232720;
	void onInfo(cocos2d::CCObject* sender) = win 0x232c30;
	void onNextFloor(cocos2d::CCObject* sender) = win 0x231ef0;
	bool playStep1() = win 0x232850;
	TodoReturn scene(bool);
	cocos2d::CCAction* showFloor1CompleteDialog() = win 0x231f40;
	TodoReturn tryResumeTowerMusic() = win 0x2326a0;

	virtual void keyBackClicked() = win 0x2329a0;
	virtual TodoReturn dialogClosed(DialogLayer*);
}

[[link(android)]]
class LevelAreaLayer : cocos2d::CCLayer, DialogDelegate {
	// virtual ~LevelAreaLayer();

	static LevelAreaLayer* create() = win 0x22f560;

	cocos2d::CCAction* addGodRay(float, float, float, float, float, cocos2d::CCPoint) = win 0x230d50;
	void addTorch(cocos2d::CCNode*, cocos2d::CCPoint, int, float, int, bool) = win 0x230800;
	cocos2d::CCAction* fadeInsideTower() = win 0x2306c0;
	void onBack(cocos2d::CCObject* sender) = win 0x231080;
	void onClickDoor(cocos2d::CCObject* sender) = win 0x230580;
	bool onEnterTower() = win 0x230750;
	TodoReturn scene();
	cocos2d::CCAction* showDialog() = win 0x230300;

	virtual bool init() = win 0x22f610;
	virtual void keyBackClicked() = win 0x2310f0;
	virtual TodoReturn dialogClosed(DialogLayer*);
}

[[link(android)]]
class LevelBrowserLayer : cocos2d::CCLayerColor, LevelManagerDelegate, FLAlertLayerProtocol, SetIDPopupDelegate, SetTextPopupDelegate, TableViewCellDelegate, ShareCommentDelegate {
	// virtual ~LevelBrowserLayer();

	static LevelBrowserLayer* create(GJSearchObject*) = win 0x232db0;

	TodoReturn createNewLevel(cocos2d::CCObject*) = win 0x236600;
	TodoReturn createNewList(cocos2d::CCObject*);
	TodoReturn createNewSmartTemplate(cocos2d::CCObject*);
	TodoReturn deleteSelected();
	TodoReturn exitLayer(cocos2d::CCObject*);
	TodoReturn getItemsMatchingSearch(cocos2d::CCArray*, gd::string, GJSearchObject*);
	TodoReturn getSearchTitle() = win 0x235390;
	bool init(GJSearchObject*) = win 0x232e60;
	bool isCorrect(char const*) = win 0x2343a0;
	TodoReturn loadPage(GJSearchObject*) = win 0x2344e0;
	void onClearSearch(cocos2d::CCObject* sender) = win 0x236e90;
	void onDeleteAll(cocos2d::CCObject* sender) = win 0x236c30;
	void onDeleteSelected(cocos2d::CCObject* sender) = win 0x237460;
	void onFavorites(cocos2d::CCObject* sender) = win 0x236a10;
	void onGoToFolder(cocos2d::CCObject* sender) = win 0x235d10;
	void onGoToLastPage(cocos2d::CCObject* sender) = win 0x235c10;
	void onGoToPage(cocos2d::CCObject* sender) = win 0x235c40;
	void onHelp(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender) = win 0x236140;
	void onLocalMode(cocos2d::CCObject* sender) = win 0x236500;
	void onMyOnlineLevels(cocos2d::CCObject* sender) = win 0x236860;
	void onNew(cocos2d::CCObject* sender) = win 0x236440;
	void onNextPage(cocos2d::CCObject* sender) = win 0x235f90;
	void onPrevPage(cocos2d::CCObject* sender) = win 0x235fd0;
	void onRefresh(cocos2d::CCObject* sender) = win 0x236dc0;
	void onRemoveAllFavorites(cocos2d::CCObject* sender);
	void onSaved(cocos2d::CCObject* sender);
	void onSavedMode(cocos2d::CCObject* sender) = win 0x236470;
	void onSearch(cocos2d::CCObject* sender) = win 0x236f60;
	void onToggleAllObjects(cocos2d::CCObject* sender) = win 0x2376e0;
	void reloadAllObjects();
	static cocos2d::CCScene* scene(GJSearchObject* search) = win 0x232d70;
	void setSearchObject(GJSearchObject*);
	void setupLevelBrowser(cocos2d::CCArray*) = win 0x235080;
	void show() = win 0x237c60;
	void updateLevelsLabel() = win 0x235b90;
	void updatePageLabel() = win 0x235e80;

	virtual void onEnter() = win 0x237ae0;
	virtual void onEnterTransitionDidFinish();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher() = win 0x237c20;
	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) = win 0x2358a0;
	virtual void loadLevelsFailed(char const*, int) = win 0x2359a0;
	virtual void setupPageInfo(gd::string, char const*) = win 0x2359e0;
	virtual void onBack(cocos2d::CCObject* sender);
	virtual TodoReturn shareCommentClosed(gd::string, ShareCommentLayer*);
	virtual void setTextPopupClosed(SetTextPopup*, gd::string);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void setIDPopupClosed(SetIDPopup*, int) = win 0x235d80;
	virtual TodoReturn updateResultArray(cocos2d::CCArray*);
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);

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
	LevelCell(char const*, float, float) = win 0x7d7b0;

	static LevelCell* create(float, float) = win 0x7d6f0;

	TodoReturn loadCustomLevelCell() = win 0x7da60;
	TodoReturn loadFromLevel(GJGameLevel*) = win 0x7d8b0;
	TodoReturn loadLocalLevelCell() = win 0x804d0;
	void onClick(cocos2d::CCObject* sender) = win 0x80e80;
	void onToggle(cocos2d::CCObject* sender) = win 0x7da40;
	void onViewProfile(cocos2d::CCObject* sender) = win 0x80f70;
	TodoReturn updateBGColor(int);
	TodoReturn updateCellMode(int) = win 0x80d80;
	TodoReturn updateToggle();

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
	// LevelEditorLayer() = win 0x238990;

    static LevelEditorLayer* get() {
        return GameManager::sharedState()->m_levelEditorLayer;
    }
	
	static LevelEditorLayer* create(GJGameLevel*, bool) = win 0x2399c0;

	TodoReturn activateTriggerEffect(EffectGameObject*, float, float, float, bool);
	TodoReturn addDelayedSpawn(EffectGameObject*, float);
	TodoReturn addExclusionList(cocos2d::CCArray*, cocos2d::CCDictionary*);
	TodoReturn addObjectFromVector(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn addObjectsAtPosition(cocos2d::CCPoint, cocos2d::CCArray*, cocos2d::CCArray*);
	TodoReturn addObjectsInRect(cocos2d::CCRect, bool, cocos2d::CCArray*, cocos2d::CCArray*);
	TodoReturn addObjectToGroup(GameObject*, int);
	TodoReturn addPlayer2Point(cocos2d::CCPoint, bool);
	TodoReturn addPlayerCollisionBlock();
	TodoReturn addPlayerPoint(cocos2d::CCPoint);
	void addSpecial(GameObject*) = win 0x23ec50;
	TodoReturn addToRedoList(UndoObject*);
	TodoReturn addTouchPoint(cocos2d::CCPoint) = win 0x2509d0;
	TodoReturn addToUndoList(UndoObject*, bool);
	TodoReturn applyAttributeState(GameObject*, GameObject*);
	TodoReturn applyGroupState(GameObject*, GameObject*);
	TodoReturn breakApartTextObject(TextGameObject*);
	TodoReturn canPasteState();
	TodoReturn clearPlayerPoints();
	TodoReturn clearTouchPoints();
	TodoReturn copyObjectState(GameObject*) = win 0x2477f0;
	TodoReturn copyParticleState(ParticleGameObject*);
	GameObject* createObject(int, cocos2d::CCPoint, bool) = win 0x23bf10;
	void createObjectsFromSetup(gd::string&) = win 0x23b330;
	TodoReturn createObjectsFromString(gd::string const&, bool, bool) = win 0x23b970;
	TodoReturn dirtifyTriggers();
	TodoReturn duplicateKeyframeAnimation(int);
	TodoReturn fastUpdateDisabledGroups();
	TodoReturn findGameObject(int) = win 0x23d260;
	TodoReturn findStartPosObject();
	TodoReturn forceShowSelectedObjects(bool);
	TodoReturn fullUpdateDisabledGroups();
	TodoReturn getAllObjects();
	TodoReturn getDelayedSpawnNode();
	TodoReturn getGridPos(cocos2d::CCPoint);
	TodoReturn getLastObjectX();
	TodoReturn getLevelString() = win 0x23db70;
	TodoReturn getLockedLayers();
	TodoReturn getNextColorChannel();
	TodoReturn getNextFreeAreaEffectID(cocos2d::CCArray*);
	TodoReturn getNextFreeBlockID(cocos2d::CCArray*);
	TodoReturn getNextFreeEditorLayer(cocos2d::CCArray*) = win 0x241950;
	TodoReturn getNextFreeEnterChannel(cocos2d::CCArray*);
	TodoReturn getNextFreeGradientID(cocos2d::CCArray*);
	TodoReturn getNextFreeGroupID(cocos2d::CCArray*) = win 0x241530;
	TodoReturn getNextFreeItemID(cocos2d::CCArray*);
	TodoReturn getNextFreeOrderChannel(cocos2d::CCArray*) = win 0x241870;
	TodoReturn getNextFreeSFXGroupID(cocos2d::CCArray*);
	TodoReturn getNextFreeSFXID(cocos2d::CCArray*);
	TodoReturn getObjectRect(GameObject*, bool, bool) = win 0x23cb10;
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
	void handleAction(bool, cocos2d::CCArray*) = win 0x23d670;
	TodoReturn hasAction(bool);
	bool init(GJGameLevel*, bool) = win 0x239a70;
	bool isLayerLocked(int layer) {
		if (layer < 10000 && m_layerLockingEnabled) {
			return m_lockedLayers.at(layer);
		}
		return false;
	}
	TodoReturn objectAtPosition(cocos2d::CCPoint) = win 0x23c610;
	TodoReturn objectMoved(GameObject*) = win 0x23f080;
	TodoReturn objectsAtPosition(cocos2d::CCPoint);
	TodoReturn objectsInRect(cocos2d::CCRect, bool);
	TodoReturn onPausePlaytest() = win 0x246c70;
	TodoReturn onPlaytest() = win 0x2463a0;
	TodoReturn onResumePlaytest() = win 0x246d60;
	TodoReturn onStopPlaytest();
	TodoReturn pasteAttributeState(GameObject*, cocos2d::CCArray*) = win 0x247940;
	TodoReturn pasteColorState(GameObject*, cocos2d::CCArray*) = win 0x2478d0;
	TodoReturn pasteGroupState(GameObject*, cocos2d::CCArray*);
	TodoReturn pasteParticleState(ParticleGameObject*, cocos2d::CCArray*);
	TodoReturn processLoadedMoveActions();
	TodoReturn quickUpdateAllPositions();
	TodoReturn recreateGroups();
	TodoReturn redoLastAction();
	TodoReturn refreshSpecial(GameObject*);
	TodoReturn removeAllObjects() = win 0x23d360;
	TodoReturn removeAllObjectsOfType(int);
	TodoReturn removeObject(GameObject*, bool) = win 0x23d2b0;
	TodoReturn removePlayerCollisionBlock();
	TodoReturn removeSpecial(GameObject*) = win 0x23f2f0;
	TodoReturn resetDelayedSpawnNodes();
	TodoReturn resetEffectTriggerOptim(GameObject*, cocos2d::CCArray*);
	TodoReturn resetMovingObjects();
	TodoReturn resetObjectVector();
	TodoReturn resetPlayback();
	TodoReturn resetToggledGroups();
	TodoReturn resetToggledGroupsAndObjects();
	TodoReturn resetUnusedColorChannels();
	TodoReturn reverseKeyframeAnimationOrder(int);
	TodoReturn reverseObjectChanged(EffectGameObject*);
	TodoReturn rotationForSlopeNearObject(GameObject*);
	TodoReturn runColorEffect(EffectGameObject*, int, float, float, bool);
	TodoReturn saveEditorPosition(cocos2d::CCPoint&, int);
	static cocos2d::CCScene* scene(GJGameLevel*, bool) = win 0x239980;
	void setObjectCount(int);
	TodoReturn shouldBlend(int);
	TodoReturn sortBatchnodeChildren(float);
	TodoReturn spawnGroupPreview(int, float, float, float, float, float, bool, bool);
	TodoReturn stopPlayback();
	TodoReturn stopTriggersInGroup(int, float);
	TodoReturn timeObjectChanged();
	TodoReturn toggleBackground(bool);
	TodoReturn toggleGrid(bool);
	TodoReturn toggleGround(bool);
	TodoReturn toggleGroupPreview(int, bool);
	TodoReturn toggleLockActiveLayer() = win 0x23e6a0;
	TodoReturn transferDefaultColors(GJEffectManager*, GJEffectManager*);
	TodoReturn triggerFollowCommand(EffectGameObject*);
	TodoReturn triggerPlayerFollowCommand(EffectGameObject*);
	TodoReturn triggerRotateCommand(EffectGameObject*);
	TodoReturn tryUpdateSpeedObject(EffectGameObject*, bool) = win 0x23f600;
	TodoReturn typeExistsAtPosition(int, cocos2d::CCPoint, bool, bool, float);
	TodoReturn undoLastAction();
	TodoReturn unlockAllLayers();
	TodoReturn updateAnimateOnTriggerObjects(bool);
	TodoReturn updateArt(float);
	TodoReturn updateBlendValues();
	TodoReturn updateEditor(float);
	TodoReturn updateEditorMode() = win 0x2423a0;
	TodoReturn updateGameObjects();
	TodoReturn updateGridLayer();
	TodoReturn updateGridLayerParent();
	TodoReturn updateKeyframeObjects();
	TodoReturn updateKeyframeVisibility(bool);
	void updateLevelFont(int) = win 0x2458c0;
	TodoReturn updateObjectColors(cocos2d::CCArray*);
	static void updateObjectLabel(GameObject*) = win 0x23e710;
	TodoReturn updateOptions() = win 0x23afa0;
	TodoReturn updatePreviewAnim() = win 0x247c90;
	void updatePreviewParticle(ParticleGameObject*) = win 0x247ec0;
	TodoReturn updatePreviewParticles() = win 0x247e20;
	TodoReturn updateToggledGroups();
	TodoReturn validGroup(GameObject*, bool);

	virtual void draw();
	virtual TodoReturn postUpdate(float) = win 0x2475d0;
	virtual TodoReturn updateVisibility(float) = win 0x23fa90;
	virtual TodoReturn playerTookDamage(PlayerObject*);
	virtual TodoReturn updateColor(cocos2d::ccColor3B&, float, int, bool, float, cocos2d::ccHSVValue&, int, bool, EffectGameObject*, int, int);
	virtual TodoReturn updateDebugDraw();
	virtual TodoReturn addToGroup(GameObject*, int, bool);
	virtual TodoReturn removeFromGroup(GameObject*, int);
	virtual TodoReturn updateObjectSection(GameObject*);
	virtual TodoReturn updateDisabledObjectsLastPos(cocos2d::CCArray*);
	virtual TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, int);
	virtual TodoReturn posForTime(float);
	virtual TodoReturn resetSPTriggered();
	virtual TodoReturn didRotateGameplay() = win 0x2460b0;
	virtual TodoReturn manualUpdateObjectColors(GameObject*);
	virtual TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool);
	virtual TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*);
	virtual TodoReturn activatedAudioTrigger(SFXTriggerGameObject*);
	virtual TodoReturn checkpointActivated(CheckpointGameObject*);
	virtual TodoReturn addKeyframe(KeyframeGameObject*);
	virtual TodoReturn levelSettingsUpdated() = win 0x23b2b0;

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

	PAD = win 0x86, android32 0x7a, android64 0xfa;

	gd::vector<bool> m_lockedLayers;
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
	// LevelInfoLayer() = win 0x2511a0;

	static LevelInfoLayer* create(GJGameLevel*, bool) = win 0x2515f0;

	TodoReturn confirmClone(cocos2d::CCObject*) = win 0x2560f0;
	TodoReturn confirmDelete(cocos2d::CCObject*);
	TodoReturn confirmMoveToBottom(cocos2d::CCObject*) = win 0x256cb0;
	TodoReturn confirmMoveToTop(cocos2d::CCObject*) = win 0x256c40;
	TodoReturn confirmOwnerDelete(cocos2d::CCObject*);
	void downloadLevel() = win 0x2539a0;
	TodoReturn incrementDislikes();
	TodoReturn incrementLikes();
	bool init(GJGameLevel*, bool) = win 0x2516a0;
	TodoReturn loadLevelStep();
	void onAddToList(cocos2d::CCObject* sender) = win 0x253540;
	void onBack(cocos2d::CCObject* sender) = win 0x257c80;
	void onClone(cocos2d::CCObject* sender);
	void onDelete(cocos2d::CCObject* sender) = win 0x2562c0;
	void onFavorite(cocos2d::CCObject* sender) = win 0x253760;
	void onFeatured(cocos2d::CCObject* sender);
	void onGarage(cocos2d::CCObject* sender) = win 0x253830;
	void onInfo(cocos2d::CCObject* sender) = win 0x255ee0;
	void onLevelInfo(cocos2d::CCObject* sender) = win 0x256a70;
	void onLevelLeaderboard(cocos2d::CCObject* sender) = win 0x2537d0;
	void onLike(cocos2d::CCObject* sender) = win 0x256660;
	void onLowDetailMode(cocos2d::CCObject* sender);
	void onOwnerDelete(cocos2d::CCObject* sender) = win 0x256370;
	void onPlay(cocos2d::CCObject* sender) = win 0x2555b0;
	void onPlayReplay(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender);
	void onRateDemon(cocos2d::CCObject* sender) = win 0x256620;
	void onRateStars(cocos2d::CCObject* sender) = win 0x2564f0;
	void onRateStarsMod(cocos2d::CCObject* sender) = win 0x2565d0;
	void onSetFolder(cocos2d::CCObject* sender) = win 0x253680;
	void onUpdate(cocos2d::CCObject* sender) = win 0x2568b0;
	void onViewProfile(cocos2d::CCObject* sender) = win 0x256a10;
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn playStep4();
	TodoReturn scene(GJGameLevel*, bool);
	TodoReturn setupLevelInfo() = win 0x2544a0;
	TodoReturn setupPlatformerStats() = win 0x253a90;
	TodoReturn setupProgressBars() = win 0x253e20;
	bool shouldDownloadLevel() = win 0x253890;
	TodoReturn showSongWarning() = win 0x255510;
	TodoReturn showUpdateAlert(UpdateResponse) = win 0x255280;
	TodoReturn tryCloneLevel(cocos2d::CCObject*) = win 0x255f10;
	TodoReturn tryShowAd();
	TodoReturn updateLabelValues() = win 0x256d20;
	TodoReturn updateSideButtons();

	virtual void keyBackClicked() = win 0x257d50;
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn numberInputClosed(NumberInputLayer*);
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	virtual TodoReturn levelDownloadFinished(GJGameLevel*) = win 0x254f00;
	virtual TodoReturn levelDownloadFailed(int) = win 0x255120;
	virtual TodoReturn levelUpdateFinished(GJGameLevel*, UpdateResponse) = win 0x255230;
	virtual TodoReturn levelUpdateFailed(int) = win 0x255320;
	virtual TodoReturn levelDeleteFinished(int) = win 0x255430;
	virtual TodoReturn levelDeleteFailed(int) = win 0x2554a0;
	virtual TodoReturn rateLevelClosed();
	virtual TodoReturn likedItem(LikeItemType, int, bool);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void setIDPopupClosed(SetIDPopup*, int);

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

	static LevelLeaderboard* create(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = win 0x257fa0;

	TodoReturn deleteLocalScores();
	TodoReturn getLocalScores();
	TodoReturn getSpriteButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint, int);
	bool init(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = win 0x258060;
	bool isCorrect(char const*);
	TodoReturn loadScores();
	void onChangeMode(cocos2d::CCObject* sender) = win 0x2595f0;
	void onChangeType(cocos2d::CCObject* sender) = win 0x2595a0;
	void onClose(cocos2d::CCObject* sender) = win 0x6a750;
	void onDeleteLocalScores(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender) = win 0x259630;
	TodoReturn reloadLeaderboard(LevelLeaderboardType, LevelLeaderboardMode) = win 0x2594f0;
	TodoReturn setupLeaderboard(cocos2d::CCArray*);

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void show() = win 0x5d6d0; //merged func
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
class LevelListCell : TableViewCell {
	// virtual ~LevelListCell();
	LevelListCell(char const*, float, float);

	static LevelListCell* create(float, float);

	void loadFromList(GJLevelList*) = win 0x8b570;
	void onClick(cocos2d::CCObject* sender) = win 0x8c8b0;
	void onListInfo(cocos2d::CCObject* sender) = win 0x8c9a0;
	void onViewProfile(cocos2d::CCObject* sender) = win 0x8c9c0;
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();

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

	static LevelListLayer* create(GJLevelList*) = win 0x25a1e0;

	TodoReturn cloneList();
	TodoReturn confirmClone(cocos2d::CCObject*);
	TodoReturn confirmDelete(cocos2d::CCObject*);
	TodoReturn confirmOwnerDelete(cocos2d::CCObject*);
	bool init(GJLevelList*) = win 0x25a280;
	void onClaimReward(cocos2d::CCObject* sender);
	TodoReturn onDelete();
	void onDescription(cocos2d::CCObject* sender);
	void onFavorite(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onLike(cocos2d::CCObject* sender);
	void onListInfo(cocos2d::CCObject* sender);
	void onRefreshLevelList(cocos2d::CCObject* sender);
	void onSelectIcon(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender);
	void onToggleEditMode(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn ownerDelete();
	TodoReturn scene(GJLevelList*);
	TodoReturn updateEditMode();
	TodoReturn updateSideButtons() = win 0x25d770;
	TodoReturn updateStatsArt() = win 0x25bab0;
	TodoReturn verifyListName();

	virtual void onEnter();
	virtual void onExit();
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	virtual TodoReturn loadLevelsFailed(char const*, int);
	virtual void onBack(cocos2d::CCObject* sender);
	virtual TodoReturn shareCommentClosed(gd::string, ShareCommentLayer*);
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

	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn getValue(int);
	virtual TodoReturn setupOptions();
	virtual TodoReturn didToggle(int);
}

[[link(android)]]
class LevelOptionsLayer2 : LevelOptionsLayer {
	// virtual ~LevelOptionsLayer2();

	static LevelOptionsLayer2* create(LevelSettingsObject*);

	bool init(LevelSettingsObject*);

	virtual TodoReturn setupOptions();
}

[[link(android)]]
class LevelPage : cocos2d::CCLayer, DialogDelegate {
	// virtual ~LevelPage();

	static LevelPage* create(GJGameLevel*) = win 0x268f30;

	TodoReturn addSecretCoin();
	TodoReturn addSecretDoor();
	bool init(GJGameLevel*) = win 0x268ff0;
	void onInfo(cocos2d::CCObject* sender) = win 0x26c400;
	void onMoreGames(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender) = win 0x26c080;
	void onSecretDoor(cocos2d::CCObject* sender) = win 0x26bad0;
	void onTheTower(cocos2d::CCObject* sender);
	TodoReturn playCoinEffect();
	TodoReturn playStep2();
	TodoReturn playStep3();
	void updateDynamicPage(GJGameLevel*) = win 0x269a80;

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
class LevelSearchLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DemonFilterDelegate {
	// virtual ~LevelSearchLayer();

	static LevelSearchLayer* create(int) = win 0x260e70;

	TodoReturn checkDiff(int);
	TodoReturn checkTime(int);
	TodoReturn clearFilters();
	TodoReturn confirmClearFilters(cocos2d::CCObject*);
	TodoReturn getDiffKey(int);
	TodoReturn getLevelLenKey();
	TodoReturn getSearchDiffKey();
	GJSearchObject* getSearchObject(SearchType, gd::string) = win 0x263ba0;
	TodoReturn getTimeKey(int);
	bool init(int) = win 0x260f10;
	void onBack(cocos2d::CCObject* sender);
	void onClearFreeSearch(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onFollowed(cocos2d::CCObject* sender);
	void onFriends(cocos2d::CCObject* sender);
	void onLatestStars(cocos2d::CCObject* sender);
	void onMagic(cocos2d::CCObject* sender);
	void onMoreOptions(cocos2d::CCObject* sender) = win 0x2629d0;
	void onMostDownloaded(cocos2d::CCObject* sender);
	void onMostLikes(cocos2d::CCObject* sender) = win 0x263e40;
	void onMostRecent(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender) = win 0x264340;
	void onSearchMode(cocos2d::CCObject* sender);
	void onSearchUser(cocos2d::CCObject* sender) = win 0x2644f0;
	void onSpecialDemon(cocos2d::CCObject* sender);
	void onStarAward(cocos2d::CCObject* sender);
	void onSuggested(cocos2d::CCObject* sender);
	void onTrending(cocos2d::CCObject* sender);
	TodoReturn scene(int);
	TodoReturn toggleDifficulty(cocos2d::CCObject*);
	TodoReturn toggleDifficultyNum(int, bool);
	TodoReturn toggleStar(cocos2d::CCObject*);
	TodoReturn toggleTime(cocos2d::CCObject*);
	TodoReturn toggleTimeNum(int, bool);
	TodoReturn updateSearchLabel(char const*) = win 0x2638d0;

	virtual void keyBackClicked();
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn demonFilterSelectClosed(int);

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

	static LevelSelectLayer* create(int) = win 0x267c60;

	TodoReturn colorForPage(int) = win 0x268ac0;
	TodoReturn getColorValue(int, int, float) = win 0x268980;
	bool init(int) = win 0x267d00;
	void onBack(cocos2d::CCObject* sender) = win 0x268d00;
	void onDownload(cocos2d::CCObject* sender) = win 0x268750;
	void onInfo(cocos2d::CCObject* sender) = win 0x268e30;
	void onNext(cocos2d::CCObject* sender) = win 0x268c40;
	void onPlay(cocos2d::CCObject* sender);
	void onPrev(cocos2d::CCObject* sender) = win 0x268ca0;
	TodoReturn scene(int) = win 0x267c20;
	TodoReturn tryShowAd();

	virtual void keyBackClicked() = win 0x268d60;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x268d70;
	virtual void updatePageWithObject(cocos2d::CCObject*, cocos2d::CCObject*) = win 0x268790;
	virtual TodoReturn scrollLayerMoved(cocos2d::CCPoint) = win 0x2687f0;
}

[[link(android)]]
class LevelSettingsDelegate {
	virtual void levelSettingsUpdated() {}
}

[[link(android)]]
class LevelSettingsLayer : FLAlertLayer, ColorSelectDelegate, SelectArtDelegate, SelectSettingDelegate, FLAlertLayerProtocol, CustomSongLayerDelegate, TextInputDelegate {
	// virtual ~LevelSettingsLayer();

	static LevelSettingsLayer* create(LevelSettingsObject*, LevelEditorLayer*) = win 0x26cd70;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	bool init(LevelSettingsObject*, LevelEditorLayer*) = win 0x26CE20;
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
	TodoReturn showPicker(ColorAction*);
	TodoReturn updateColorSprite(ColorChannelSprite*) = win 0x26f870;
	TodoReturn updateColorSprites() = win 0x26f810;
	TodoReturn updateGameplayModeButtons();

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*);
	virtual void selectArtClosed(SelectArtLayer*) = win 0x26f9f0;
	virtual TodoReturn selectSettingClosed(SelectSettingLayer*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class LevelSettingsObject : cocos2d::CCNode {
	// virtual ~LevelSettingsObject();

	static LevelSettingsObject* create() = win 0x24d2f0;

	gd::string getSaveString() = win 0x24d7f0;
	static LevelSettingsObject* objectFromDict(cocos2d::CCDictionary*) = win 0x24eb70;
	static LevelSettingsObject* objectFromString(gd::string const& str) {
		return objectFromDict(GameToolbox::stringSetupToDict(str, ","));
	}
	TodoReturn setupColorsFromLegacyMode(cocos2d::CCDictionary*);
	TodoReturn shouldUseYSection();

	virtual bool init();

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
	static int artistForAudio(int) = win 0x2737c0;
	TodoReturn base64DecodeString(gd::string) = win 0x2753e0;
	TodoReturn base64EncodeString(gd::string) = win 0x275360;
	TodoReturn createStarPackDict();
	static gd::string fbURLForArtist(int) = win 0x274010;
	TodoReturn getAudioBPM(int);
	static gd::string getAudioFileName(int) = win 0x273430;
	static gd::string getAudioString(int) = win 0x274140;
	static gd::string getAudioTitle(int) = win 0x273090;
	TodoReturn getLastGameplayReversed();
	TodoReturn getLastGameplayRotated();
	TodoReturn getLastTimewarp();
	static GJGameLevel* getLevel(int, bool) = win 0x2725d0;
	TodoReturn getLevelList();
	TodoReturn getSongObject(int) = win 0x275040;
	TodoReturn moveTriggerObjectsToArray(cocos2d::CCArray*, cocos2d::CCDictionary*, int);
	static gd::string nameForArtist(int) = win 0x2738c0;
	static gd::string ngURLForArtist(int) = win 0x273d90;
	TodoReturn offsetBPMForTrack(int);
	TodoReturn posForTime(float, cocos2d::CCArray*, int, bool, int&);
	TodoReturn posForTimeInternal(float, cocos2d::CCArray*, int, bool, bool, bool, int&, int) = win 0x274a60;
	TodoReturn sortChannelOrderObjects(cocos2d::CCArray*, cocos2d::CCDictionary*, bool) = win 0x275600;
	TodoReturn sortSpeedObjects(cocos2d::CCArray*, GJBaseGameLayer*) = win 0x275820;
	TodoReturn timeForPos(cocos2d::CCPoint, cocos2d::CCArray*, int, int, int, bool, bool, bool, bool, int) = win 0x2743d0;
	TodoReturn toggleDebugLogging(bool);
	static gd::string urlForAudio(int) = win 0x273a00;
	TodoReturn valueForSpeedMod(int) = win 0x274380;
	TodoReturn verifyLevelIntegrity(gd::string, int) = win 0x2751d0;
	static gd::string ytURLForArtist(int) = win 0x273ed0;
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

	static LikeItemLayer* create(LikeItemType, int, int) = win 0x275d20;

	bool init(LikeItemType, int, int) = win 0x275dd0;
	void onClose(cocos2d::CCObject* sender);
	void onDislike(cocos2d::CCObject* sender);
	void onLike(cocos2d::CCObject* sender);
	TodoReturn triggerLike(bool);

	virtual void keyBackClicked();

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
	TodoReturn goToPage(int);
	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int);
	void onLeft(cocos2d::CCObject* sender);
	void onRight(cocos2d::CCObject* sender);
}

[[link(android)]]
class ListButtonBarDelegate {
	virtual TodoReturn listButtonBarSwitchedPage(ListButtonBar*, int);
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
	ListCell(char const*, float, float);

	TodoReturn loadFromObject(cocos2d::CCObject*, int, int, int);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class ListUploadDelegate {
	virtual TodoReturn listUploadFinished(GJLevelList*);
	virtual TodoReturn listUploadFailed(GJLevelList*, int);
}

[[link(android)]]
class LoadingCircle : cocos2d::CCLayerColor {
	// virtual ~LoadingCircle();

	static LoadingCircle* create() = win 0x483d0;

	TodoReturn fadeAndRemove() = win 0x48670;
	TodoReturn show() = win 0x48590;

	void setFade(bool fade) {
		m_fade = fade;
	}

	virtual bool init() = win 0x484d0;
	virtual void draw();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();

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

	static LoadingCircleSprite* create();

	TodoReturn fadeInCircle(bool);
	TodoReturn hideCircle();

	virtual bool init();
}

[[link(android)]]
class LoadingLayer : cocos2d::CCLayer {
	// virtual ~LoadingLayer();

	static LoadingLayer* create(bool) = win 0x2762d0;

	TodoReturn getLoadingString() = win 0x277280;
	bool init(bool) = win 0x276370;
	TodoReturn loadAssets() = win 0x276bd0;
	TodoReturn loadingFinished() = win 0x276ae0;
	TodoReturn scene(bool);
	TodoReturn updateProgress(int);

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

	static LocalLevelManager* sharedState() = win 0x277760;
	inline static LocalLevelManager* get() {
        return LocalLevelManager::sharedState();
    }

	cocos2d::CCDictionary* getAllLevelsInDict() = win 0x277cb0;
	TodoReturn getAllLevelsWithName(gd::string) = win 0x277e00;
	TodoReturn getCreatedLevels(int);
	TodoReturn getCreatedLists(int) = win 0x2784f0;
	TodoReturn getLevelsInNameGroups();
	TodoReturn getMainLevelString(int) = win 0x277a90;
	TodoReturn markLevelsAsUnmodified();
	TodoReturn moveLevelToTop(GJGameLevel*);
	TodoReturn reorderLevels();
	TodoReturn tryLoadMainLevelString(int) = win 0x277900;
	TodoReturn updateLevelOrder();
	TodoReturn updateLevelRevision();

	virtual bool init();
	virtual TodoReturn encodeDataTo(DS_Dictionary*);
	virtual TodoReturn dataLoaded(DS_Dictionary*);
	virtual TodoReturn firstLoad();

	cocos2d::CCArray* m_localLevels;
	cocos2d::CCArray* m_LLM03;
	gd::map<int, gd::string> m_mainLevels;
}

[[link(android)]]
class MapPackCell : TableViewCell {
	// virtual ~MapPackCell();
	MapPackCell(char const*, float, float);

	TodoReturn loadFromMapPack(GJMapPack*) = win 0x812a0;
	void onClaimReward(cocos2d::CCObject* sender);
	void onClick(cocos2d::CCObject* sender) = win 0x81cf0;
	TodoReturn playCompleteEffect();
	TodoReturn reloadCell();
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class MapSelectLayer : cocos2d::CCLayer {
	// virtual ~MapSelectLayer();

	static MapSelectLayer* create();

	TodoReturn checkTouchMonster(cocos2d::CCPoint);
	TodoReturn createObjectAtPoint(cocos2d::CCPoint);
	TodoReturn getConstrainedMapPos(cocos2d::CCPoint);
	void onBack(cocos2d::CCObject* sender);
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
class MenuGameLayer : cocos2d::CCLayer {
	// virtual ~MenuGameLayer();

	static MenuGameLayer* create();

	void destroyPlayer() = win 0x27AE40;
	TodoReturn getBGColor(int);
	TodoReturn resetPlayer() = win 0x279fd0;
	TodoReturn tryJump(float);
	TodoReturn updateColor(float) = win 0x2796d0;
	TodoReturn updateColors();

	virtual void update(float) = win 0x279c60;
	virtual bool init() = win 0x279240;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();

	bool m_unkBool1;
	float m_deltaCount;
	bool m_isDestroyingPlayer;
	int m_initCount;
	cocos2d::CCPoint* m_unused1;
	int m_unused2;
	PlayerObject* m_playerObject;
	cocos2d::CCSprite* m_backgroundSprite;
	GJGroundLayer* m_groundLayer;
	float m_backgroundSpeed;
}

[[link(android)]]
class MenuLayer : cocos2d::CCLayer, FLAlertLayerProtocol, GooglePlayDelegate {
	// virtual ~MenuLayer();

	static cocos2d::CCScene* scene(bool) = win 0x27b3d0;

	TodoReturn endGame();
	TodoReturn firstNetworkTest();
	void onAchievements(cocos2d::CCObject* sender) = win 0x27c830;
	void onCreator(cocos2d::CCObject* sender) = win 0x27c9d0;
	void onDaily(cocos2d::CCObject* sender);
	void onDiscord(cocos2d::CCObject* sender);
	void onEveryplay(cocos2d::CCObject* sender);
	void onFacebook(cocos2d::CCObject* sender);
	void onFreeLevels(cocos2d::CCObject* sender);
	void onFullVersion(cocos2d::CCObject* sender);
	void onGameCenter(cocos2d::CCObject* sender);
	void onGarage(cocos2d::CCObject* sender) = win 0x27ca40;
	void onGooglePlayGames(cocos2d::CCObject* sender);
	void onMoreGames(cocos2d::CCObject* sender) = win 0x27c7a0;
	void onMyProfile(cocos2d::CCObject* sender);
	void onNewgrounds(cocos2d::CCObject* sender) = win 0x27cae0;
	void onOptions(cocos2d::CCObject* sender) = win 0x27c930;
	TodoReturn onOptionsInstant();
	void onPlay(cocos2d::CCObject* sender) = win 0x27c890;
	void onQuit(cocos2d::CCObject* sender) = win 0x27cb70;
	void onRobTop(cocos2d::CCObject* sender);
	void onStats(cocos2d::CCObject* sender) = win 0x27c9a0;
	void onTrailer(cocos2d::CCObject* sender);
	void onTwitch(cocos2d::CCObject* sender);
	void onTwitter(cocos2d::CCObject* sender);
	void onYouTube(cocos2d::CCObject* sender);
	TodoReturn openOptions(bool);
	TodoReturn showGCQuestion();
	TodoReturn showMeltdownPromo();
	TodoReturn showTOS() = win 0x27c660;
	TodoReturn syncPlatformAchievements(float);
	TodoReturn tryShowAd(float);
	TodoReturn updateUserProfileButton() = win 0x27c520;
	TodoReturn videoOptionsClosed();
	TodoReturn videoOptionsOpened();
	TodoReturn willClose();

	virtual bool init() = win 0x27b450;
	virtual void keyBackClicked() = win 0x27CB60;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x27CD70;
	virtual TodoReturn googlePlaySignedIn() = win 0x27c860;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = win 0x27cbf0;
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

	static MessagesProfilePage* create(bool) = win 0x27d110;

	TodoReturn deleteSelected();
	bool init(bool) = win 0x27d1c0;
	bool isCorrect(char const*);
	TodoReturn loadPage(int) = win 0x27e140;
	void onClose(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onSentMessages(cocos2d::CCObject* sender);
	void onToggleAllObjects(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*) = win 0x27e390;
	TodoReturn untoggleAll() = win 0x27e0f0;
	TodoReturn updateLevelsLabel();
	TodoReturn updatePageArrows();

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn loadMessagesFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadMessagesFailed(char const*, GJErrorCode);
	virtual TodoReturn forceReloadMessages(bool);
	virtual TodoReturn setupPageInfo(gd::string, char const*);
}

[[link(android)]]
class MoreOptionsLayer : FLAlertLayer, TextInputDelegate, GooglePlayDelegate, GJDropDownLayerDelegate {
	// virtual ~MoreOptionsLayer();

	static MoreOptionsLayer* create();

	TodoReturn addToggle(char const*, char const*, char const*) = win 0x2b25f0;
	TodoReturn countForPage(int) = win 0x2b2b90;
	TodoReturn goToPage(int) = win 0x2b2fd0;
	TodoReturn incrementCountForPage(int) = win 0x2b2c60;
	TodoReturn infoKey(int);
	TodoReturn layerForPage(int) = win 0x2b2e70;
	TodoReturn layerKey(int);
	TodoReturn nextPosition(int) = win 0x2b2a50;
	TodoReturn objectKey(int);
	TodoReturn objectsForPage(int) = win 0x2b2d40;
	TodoReturn offsetToNextPage();
	void onClose(cocos2d::CCObject* sender);
	void onFMODDebug(cocos2d::CCObject* sender);
	void onGPSignIn(cocos2d::CCObject* sender);
	void onGPSignOut(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onKeybindings(cocos2d::CCObject* sender) = win 0xa21a0;
	void onNextPage(cocos2d::CCObject* sender);
	void onParental(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onSongBrowser(cocos2d::CCObject* sender) = win 0x2b3890;
	void onToggle(cocos2d::CCObject* sender);
	TodoReturn pageKey(int);
	TodoReturn toggleGP();

	virtual bool init() = win 0x2b1630;
	virtual void keyBackClicked();
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual TodoReturn textInputReturn(CCTextInputNode*);
	virtual TodoReturn googlePlaySignedIn();
	virtual TodoReturn dropDownLayerWillClose(GJDropDownLayer*);
}

[[link(android)]]
class MoreSearchLayer : FLAlertLayer, TextInputDelegate {
	// virtual ~MoreSearchLayer();

	static MoreSearchLayer* create() = win 0x265610;

	TodoReturn audioNext(cocos2d::CCObject*);
	TodoReturn audioPrevious(cocos2d::CCObject*);
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	void onClose(cocos2d::CCObject* sender) = win 0x2671b0;
	void onCoins(cocos2d::CCObject* sender);
	void onCompleted(cocos2d::CCObject* sender);
	void onEpic(cocos2d::CCObject* sender);
	void onFeatured(cocos2d::CCObject* sender);
	void onFollowed(cocos2d::CCObject* sender);
	void onFriends(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onLegendary(cocos2d::CCObject* sender);
	void onMythic(cocos2d::CCObject* sender);
	void onNoStar(cocos2d::CCObject* sender);
	void onOriginal(cocos2d::CCObject* sender);
	void onSongFilter(cocos2d::CCObject* sender) = win 0x2669e0;
	void onSongMode(cocos2d::CCObject* sender) = win 0x266c90;
	void onTwoPlayer(cocos2d::CCObject* sender);
	void onUncompleted(cocos2d::CCObject* sender);
	TodoReturn selectSong(int);
	TodoReturn toggleSongNodes(bool, bool);
	TodoReturn updateAudioLabel();

	virtual bool init() = win 0x2656b0;
	virtual void keyBackClicked();
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual TodoReturn textInputReturn(CCTextInputNode*);

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

	static MoreVideoOptionsLayer* create();

	TodoReturn addToggle(char const*, char const*, char const*);
	TodoReturn countForPage(int);
	TodoReturn goToPage(int);
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
	void onToggle(cocos2d::CCObject* sender);
	TodoReturn pageKey(int);
	TodoReturn updateFPSButtons() = win 0x2b72e0;

	virtual bool init();
	virtual void keyBackClicked();
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
	TodoReturn scene(int);
	TodoReturn tryExitLobby();
	TodoReturn updateLobby(float);

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
class MultilineBitmapFont : cocos2d::CCSprite {
	// virtual ~MultilineBitmapFont();

	TodoReturn createWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int, bool);
	TodoReturn initWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int, bool);
	TodoReturn moveSpecialDescriptors(int, int);
	TodoReturn readColorInfo(gd::string);
	TodoReturn stringWithMaxWidth(gd::string, float, float);

	virtual void setOpacity(unsigned char);
}

[[link(android)]]
class MultiplayerLayer : cocos2d::CCLayer {
	// virtual ~MultiplayerLayer();

	static MultiplayerLayer* create();

	void onBack(cocos2d::CCObject* sender);
	void onBtn1(cocos2d::CCObject* sender);
	void onBtn2(cocos2d::CCObject* sender);
	TodoReturn scene();

	virtual bool init();
	virtual void keyBackClicked();
}

[[link(android)]]
class MultiTriggerPopup : SetupTriggerPopup {
	// virtual ~MultiTriggerPopup();

	static MultiTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x366f20;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x366fd0;
}

[[link(android)]]
class MusicArtistObject : cocos2d::CCObject {
	// virtual ~MusicArtistObject();

	static MusicArtistObject* create(int, gd::string, gd::string, gd::string) = win 0x289cb0;

	bool init(int, gd::string, gd::string, gd::string) = win 0x289e20;
}

[[link(android)]]
class MusicBrowser : FLAlertLayer, MusicDownloadDelegate, TableViewCellDelegate, SetTextPopupDelegate, FLAlertLayerProtocol, SliderDelegate {
	// virtual ~MusicBrowser();

	static MusicBrowser* create(int) = win 0x27eb00;

	bool init(int) = win 0x27eba0;
	void onArtistFilters(cocos2d::CCObject* sender);
	void onClearSearch(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	void onPlaybackControl(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);
	void onTagFilters(cocos2d::CCObject* sender);
	void onUpdateLibrary(cocos2d::CCObject* sender);
	TodoReturn setupList(MusicSearchResult*) = win 0x27fd00;
	TodoReturn setupSongControls() = win 0x27f760;
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn trySetupMusicBrowser() = win 0x27fad0;
	TodoReturn updatePageLabel() = win 0x280340;

	virtual void update(float);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn musicActionFinished(GJMusicAction);
	virtual TodoReturn musicActionFailed(GJMusicAction);
	virtual TodoReturn sliderEnded(Slider*);
	virtual void setTextPopupClosed(SetTextPopup*, gd::string);
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	virtual TodoReturn getSelectedCellIdx();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class MusicBrowserDelegate {
	virtual void musicBrowserClosed(MusicBrowser*) {}
}

[[link(android)]]
class MusicDelegateHandler : cocos2d::CCNode {
	// virtual ~MusicDelegateHandler();

	static MusicDelegateHandler* create(MusicDownloadDelegate*);

	bool init(MusicDownloadDelegate*);
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

	static MusicDownloadManager* sharedState() = win 0x2821e0;

	void addDLToActive(char const* tag, cocos2d::CCObject* obj);
	void addDLToActive(char const* tag);
	TodoReturn addMusicDownloadDelegate(MusicDownloadDelegate*) = win 0x2828d0;
	TodoReturn addSongObjectFromString(gd::string);
	TodoReturn clearSong(int);
	TodoReturn clearUnusedSongs();
	TodoReturn createSongsInfo(gd::string);
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn deleteSFX(int);
	TodoReturn deleteSong(int);
	TodoReturn downloadCustomSong(int);
	TodoReturn downloadMusicLibrary() = win 0x284fd0;
	TodoReturn downloadSFX(int);
	TodoReturn downloadSFXFailed(int, GJSongError);
	TodoReturn downloadSFXFinished(int);
	TodoReturn downloadSFXLibrary() = win 0x286940;
	TodoReturn downloadSong(int);
	TodoReturn downloadSongFailed(int, GJSongError);
	TodoReturn downloadSongFinished(int);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn filterMusicByArtistID(int, cocos2d::CCArray*);
	TodoReturn filterMusicByTag(int, cocos2d::CCArray*);
	TodoReturn firstSetup();
	TodoReturn generateCustomContentURL(gd::string);
	TodoReturn generateResourceAssetList();
	TodoReturn getAllMusicArtists(OptionsObjectDelegate*);
	TodoReturn getAllMusicObjects();
	TodoReturn getAllMusicTags(OptionsObjectDelegate*);
	TodoReturn getAllSFXObjects(bool);
	TodoReturn getAllSongs();
	TodoReturn getCustomContentURL() = win 0x2849c0;
	TodoReturn getDLObject(char const*);
	TodoReturn getDownloadedSongs();
	TodoReturn getDownloadProgress(int);
	TodoReturn getMusicArtistForID(int);
	TodoReturn getMusicObject(int);
	TodoReturn getSFXDownloadKey(int);
	TodoReturn getSFXDownloadProgress(int);
	TodoReturn getSFXFolderObjectForID(int) = win 0x2872b0;
	TodoReturn getSFXFolderPathForID(int, bool);
	TodoReturn getSFXObject(int);
	TodoReturn getSongDownloadKey(int);
	TodoReturn getSongInfo(int, bool) = win 0x282ae0;
	TodoReturn getSongInfoKey(int);
	SongInfoObject* getSongInfoObject(int) = win 0x283cb0;
	TodoReturn getSongPriority();
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType) = win 0x282600;
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	TodoReturn incrementPriorityForSong(int);
	bool isDLActive(char const* tag);
	bool isMusicLibraryLoaded();
	bool isResourceSFX(int);
	bool isResourceSong(int);
	bool isRunningActionForSongID(int) = win 0x282a30;
	bool isSFXDownloaded(int) = win 0x284140;
	bool isSFXLibraryLoaded();
	bool isSongDownloaded(int) = win 0x283dd0;
	TodoReturn limitDownloadedSongs();
	TodoReturn loadSongInfoFailed(int, GJSongError) = win 0x287b30;
	TodoReturn loadSongInfoFinished(SongInfoObject*) = win 0x287ae0;
	TodoReturn musicActionFailed(GJMusicAction) = win 0x287d40;
	TodoReturn musicActionFinished(GJMusicAction) = win 0x287cf0;
	TodoReturn nameForTagID(int);
	TodoReturn onDownloadMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onDownloadSFXCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onDownloadSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onDownloadSongCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onGetCustomContentURLCompleted(gd::string, gd::string) = win 0x284a70;
	void onGetSongInfoCompleted(gd::string, gd::string) = win 0x282d00;
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = win 0x2824e0;
	TodoReturn onTryUpdateMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onTryUpdateSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn parseMusicLibrary() = win 0x285270;
	TodoReturn parseSFXLibrary() = win 0x286bd0;
	gd::string pathForSFX(int) = win 0x2843e0;
	TodoReturn pathForSFXFolder(int) = win 0x284240;
	gd::string pathForSong(int) = win 0x284070;
	TodoReturn pathForSongFolder(int) = win 0x283ed0;
	TodoReturn ProcessHttpGetRequest(gd::string, gd::string, cocos2d::extension::SEL_HttpResponse, int, int);
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType) = win 0x282260;
	TodoReturn removeDLFromActive(char const*) = win 0x283c00;
	TodoReturn removeMusicDownloadDelegate(MusicDownloadDelegate*);
	TodoReturn responseToDict(gd::string, char const*);
	TodoReturn showTOS(FLAlertLayerProtocol*);
	TodoReturn songStateChanged() = win 0x282a90;
	TodoReturn stopDownload(int);
	TodoReturn storeMusicObject(SongInfoObject*);
	TodoReturn storeSFXInfoObject(SFXInfoObject*);
	TodoReturn tryLoadLibraries() = win 0x287210;
	TodoReturn tryUpdateMusicLibrary();
	TodoReturn tryUpdateSFXLibrary() = win 0x2866f0;

	virtual bool init();
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
	virtual TodoReturn stateChanged(OptionsObject*);
}

[[link(android)]]
class NewgroundsInfoLayer : FLAlertLayer, FLAlertLayerProtocol {
	// virtual ~NewgroundsInfoLayer();

	static NewgroundsInfoLayer* create();

	void onArtists(cocos2d::CCObject* sender);
	void onChanges(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onGuidelines(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onNewgrounds(cocos2d::CCObject* sender);
	void onSupporter(cocos2d::CCObject* sender);

	virtual bool init();
	virtual void keyBackClicked();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
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

	static NumberInputLayer* create() = win 0x28ab70;

	TodoReturn deleteLast();
	TodoReturn inputNumber(int);
	void onClose(cocos2d::CCObject* sender);
	void onDone(cocos2d::CCObject* sender);
	void onNumber(cocos2d::CCObject* sender);
	TodoReturn updateNumberState();

	virtual bool init() = win 0x28ac10;
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
}

[[link(android)]]
class OBB2D : cocos2d::CCNode {
	// virtual ~OBB2D();

	static OBB2D* create(cocos2d::CCPoint, float, float, float) = win 0x49fb0;

	TodoReturn calculateWithCenter(cocos2d::CCPoint, float, float, float) = win 0x4a140;
	TodoReturn computeAxes() = win 0x4a310;
	TodoReturn getBoundingRect() = win 0x4a670;
	bool init(cocos2d::CCPoint, float, float, float);
	TodoReturn orderCorners() = win 0x4a3e0;
	TodoReturn overlaps(OBB2D*);
	TodoReturn overlaps1Way(OBB2D*);
}

[[link(android)]]
class ObjectControlGameObject : EffectGameObject {
	// virtual ~ObjectControlGameObject();

	static ObjectControlGameObject* create();

	virtual bool init();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class ObjectDecoder {
	// virtual ~ObjectDecoder();

	static ObjectDecoder* sharedDecoder();

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
	TodoReturn getDefinition(char const*) = win 0x4bae0;
	TodoReturn getGlobalAnimCopy(char const*);
	TodoReturn instance() = win 0x4a7f0;
	TodoReturn loadCopiedAnimations();
	TodoReturn loadCopiedSets();
	TodoReturn purgeObjectManager();
	TodoReturn replaceAllOccurencesOfString(cocos2d::CCString*, cocos2d::CCString*, cocos2d::CCDictionary*);
	void setLoaded(char const*);
	TodoReturn setup();

	virtual bool init();
}

[[link(android)]]
class ObjectToolbox : cocos2d::CCNode {
	// virtual ~ObjectToolbox();

	static ObjectToolbox* sharedState() = win 0x28b340;

	TodoReturn allKeys();
	float gridNodeSizeForKey(int) = win 0x2af310;
	TodoReturn intKeyToFrame(int) = win 0x166920;
	TodoReturn perspectiveBlockFrame(int);

	virtual bool init();
}

[[link(android)]]
class OnlineListDelegate {
	virtual void loadListFinished(cocos2d::CCArray*, char const*) {}
	virtual void loadListFailed(char const*) {}
	virtual void setupPageInfo(gd::string, char const*) {}
}

[[link(android)]]
class OpacityEffectAction {
	TodoReturn step(float);
}

[[link(android)]]
class OptionsCell : TableViewCell {
	// virtual ~OptionsCell();
	OptionsCell(char const*, float, float);

	TodoReturn loadFromObject(OptionsObject*) = win 0x83a50;
	void onToggleOption(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);
}

[[link(android)]]
class OptionsLayer : GJDropDownLayer, FLAlertLayerProtocol {
	// virtual ~OptionsLayer();

	static OptionsLayer* create() = win 0x2b01c0;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn exitLayer();
	TodoReturn musicSliderChanged(cocos2d::CCObject*) = win 0x2b0d80;
	void onAccount(cocos2d::CCObject* sender) = win 0x2b1380;
	void onHelp(cocos2d::CCObject* sender);
	void onMenuMusic(cocos2d::CCObject* sender) = win 0x2b0ce0;
	void onOptions(cocos2d::CCObject* sender);
	void onProgressBar(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender) = win 0x2b13c0;
	void onRecordReplays(cocos2d::CCObject* sender);
	void onSecretVault(cocos2d::CCObject* sender) = win 0x2b0f90;
	void onSoundtracks(cocos2d::CCObject* sender) = win 0x2b0f30;
	void onSupport(cocos2d::CCObject* sender) = win 0x2b1340;
	void onVideo(cocos2d::CCObject* sender);
	TodoReturn sfxSliderChanged(cocos2d::CCObject*) = win 0x2b0e70;
	TodoReturn tryEnableRecord();

	virtual void customSetup() = win 0x2b02d0;
	virtual TodoReturn layerHidden() = win 0x2b1420;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
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
	bool init(cocos2d::CCArray*, bool);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn setupList(cocos2d::CCArray*);

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
}

[[link(android)]]
class ParentalOptionsLayer : FLAlertLayer {
	// virtual ~ParentalOptionsLayer();

	static ParentalOptionsLayer* create();

	TodoReturn addToggle(char const*, char const*, char const*);
	TodoReturn countForPage(int);
	TodoReturn goToPage(int);
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
class ParticleGameObject : EnhancedGameObject {
	// virtual ~ParticleGameObject();

	static ParticleGameObject* create() = win 0x398080;

	TodoReturn applyParticleSettings(cocos2d::CCParticleSystemQuad*);
	TodoReturn createAndAddCustomParticle();
	TodoReturn createParticlePreviewArt();
	void setParticleString(gd::string) = win 0x398c00;
	void updateParticle() = win 0x398cd0;
	TodoReturn updateParticleAngle(float, cocos2d::CCParticleSystemQuad*);
	TodoReturn updateParticlePreviewArtOpacity(float);
	TodoReturn updateParticleScale(float);
	TodoReturn updateParticleStruct();

	virtual bool init() = win 0x398120;
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setScale(float);
	virtual void setRotation(float);
	virtual void setRotationX(float);
	virtual void setRotationY(float);
	virtual void setChildColor(cocos2d::ccColor3B const&);
	virtual void customSetup() = win 0x3983f0;
	virtual TodoReturn addMainSpriteToParent(bool);
	virtual TodoReturn resetObject();
	virtual void deactivateObject(bool);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = win 0x398170;
	virtual gd::string getSaveString(GJBaseGameLayer*) = win 0x399880;
	virtual TodoReturn claimParticle();
	virtual TodoReturn unclaimParticle();
	virtual TodoReturn particleWasActivated();
	virtual void setObjectColor(cocos2d::ccColor3B const&);
	virtual TodoReturn blendModeChanged();
	virtual TodoReturn updateParticleColor(cocos2d::ccColor3B const&);
	virtual TodoReturn updateParticleOpacity(unsigned char);
	virtual TodoReturn updateMainParticleOpacity(unsigned char);
	virtual TodoReturn updateSecondaryParticleOpacity(unsigned char);
	virtual TodoReturn updateSyncedAnimation(float, int);
	virtual TodoReturn updateAnimateOnTrigger(bool);

	gd::string m_particleData;
	bool m_updatedParticleData;
	PAD = android32 0x10f, win 0x123;

	// property 147
	bool m_hasUniformObjectColor;
	PAD = android32 0x7, win 0x7;

	// property 211
	bool m_shouldQuickStart;
	PAD = android32 0xf, win 0xf;
}

[[link(android)]]
class ParticlePreviewLayer : cocos2d::CCLayerColor {
	// virtual ~ParticlePreviewLayer();

	static ParticlePreviewLayer* create(cocos2d::CCParticleSystemQuad*);

	bool init(cocos2d::CCParticleSystemQuad*);
	TodoReturn postVisit();
	TodoReturn preVisitWithClippingRect(cocos2d::CCRect);

	virtual void draw();
	virtual void visit();
}

[[link(android)]]
class PauseLayer : CCBlockLayer {
	// virtual ~PauseLayer();
	// PauseLayer() = win 0x2b8830;

	static PauseLayer* create(bool) = win 0x2b8940;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn goEdit() = win 0x2ba0f0;
	bool init(bool);
	TodoReturn musicSliderChanged(cocos2d::CCObject*) = win 0x2b9da0;
	void onEdit(cocos2d::CCObject* sender) = win 0x2ba020;
	void onHelp(cocos2d::CCObject* sender);
	void onNormalMode(cocos2d::CCObject* sender) = win 0x2b9ed0;
	void onPracticeMode(cocos2d::CCObject* sender) = win 0x2b9e60;
	void onQuit(cocos2d::CCObject* sender) = win 0x2ba240;
	void onRecordReplays(cocos2d::CCObject* sender);
	void onReplay(cocos2d::CCObject* sender);
	void onRestart(cocos2d::CCObject* sender) = win 0x2b9f80;
	void onRestartFull(cocos2d::CCObject* sender) = win 0x2b9fd0;
	void onResume(cocos2d::CCObject* sender) = win 0x2b9f30;
	void onSettings(cocos2d::CCObject* sender) = win 0x2b94d0;
	void onTime(cocos2d::CCObject* sender);
	TodoReturn setupProgressBars() = win 0x2b94f0;
	TodoReturn sfxSliderChanged(cocos2d::CCObject*) = win 0x2b0e70;
	TodoReturn tryShowBanner(float);

	virtual void keyBackClicked() = win 0x2ba3a0;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x2ba310;
	virtual void customSetup() = win 0x2b89f0;
	virtual void keyUp(cocos2d::enumKeyCodes);
}

[[link(android)]]
class PlatformDownloadDelegate {
	virtual TodoReturn downloadFinished(char const*);
	virtual TodoReturn downloadFailed(char const*);
}

[[link(android)]]
class PlatformToolbox {
	static TodoReturn activateGameCenter();
	static TodoReturn copyToClipboard(gd::string);
	static TodoReturn doesFileExist(gd::string);
	static TodoReturn downloadAndSavePromoImage(gd::string, gd::string);
	static TodoReturn gameDidSave();
	static TodoReturn getDeviceRefreshRate();
	static TodoReturn getDisplaySize();
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
	static bool isNetworkAvailable();
	static bool isSignedInGooglePlay();
	static TodoReturn loadAndDecryptFileToString(char const*, char const*);
	static TodoReturn logEvent(char const*);
	static TodoReturn onGameLaunch();
	static TodoReturn onNativePause();
	static TodoReturn onNativeResume();
	static TodoReturn onToggleKeyboard();
	static TodoReturn openAppPage();
	static TodoReturn platformShutdown();
	static TodoReturn refreshWindow();
	static TodoReturn reportAchievementWithID(char const*, int);
	static TodoReturn reportLoadingFinished();
	static TodoReturn resizeWindow(float, float);
	static TodoReturn saveAndEncryptStringToFile(gd::string, char const*, char const*);
	static TodoReturn sendMail(char const*, char const*, char const*);
	static void setBlockBackButton(bool);
	static void setKeyboardState(bool);
	static TodoReturn shouldResumeSound();
	static TodoReturn showAchievements();
	static TodoReturn showCursor();
	static TodoReturn signInGooglePlay();
	static TodoReturn signOutGooglePlay();
	static TodoReturn spriteFromSavedFile(gd::string);
	static TodoReturn toggleCallGLFinish(bool);
	static TodoReturn toggleCPUSleepMode(bool);
	static TodoReturn toggleForceTimer(bool);
	static TodoReturn toggleFullScreen(bool);
	static TodoReturn toggleLockCursor(bool);
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

	static PlayerCheckpoint* create() = win 0x2eb770;

	virtual bool init() = win 0x52e00;
}

[[link(android)]]
class PlayerControlGameObject : EffectGameObject {
	// virtual ~PlayerControlGameObject();

	static PlayerControlGameObject* create();

	virtual bool init();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class PlayerFireBoostSprite : cocos2d::CCSprite {
	// virtual ~PlayerFireBoostSprite();

	static PlayerFireBoostSprite* create();

	void animateFireIn() = win 0x2dac30;
	void animateFireOut() {
		this->stopAllActions();
		auto action = cocos2d::CCScaleTo::create(0.4f, 0.01f, 0.01f);
		this->runAction(action);
	}
	TodoReturn loopFireAnimation();

	virtual bool init();
}

[[link(android)]]
class PlayerObject : GameObject, AnimatedSpriteDelegate {
	// virtual ~PlayerObject();
	// PlayerObject() = win 0x2c0f30;

	static PlayerObject* create(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool) = win 0x2c2410;

	TodoReturn activateStreak() = win 0x2d89c0;
	TodoReturn addAllParticles() = win 0x2c3b10;
	TodoReturn addToTouchedRings(RingObject*);
	TodoReturn addToYVelocity(double, int);
	TodoReturn animatePlatformerJump(float) = win 0x2c7820;
	TodoReturn boostPlayer(float) = win 0x2d8820;
	TodoReturn bumpPlayer(float, int, bool, GameObject*) = win 0x2d80b0;
	TodoReturn buttonDown(PlayerButton);
	TodoReturn canStickToGround();
	TodoReturn checkSnapJumpToObject(GameObject*);
	TodoReturn collidedWithObject(float, GameObject*, cocos2d::CCRect, bool);
	TodoReturn collidedWithObject(float, GameObject*);
	TodoReturn collidedWithObjectInternal(float, GameObject*, cocos2d::CCRect, bool);
	TodoReturn collidedWithSlope(float, GameObject*, bool);
	TodoReturn collidedWithSlopeInternal(float, GameObject*, bool);
	TodoReturn convertToClosestRotation(float);
	TodoReturn copyAttributes(PlayerObject*);
	void createFadeOutDartStreak() = win 0x2d2320;
	TodoReturn createRobot(int) = win 0x2c35e0;
	TodoReturn createSpider(int) = win 0x2c3870;
	TodoReturn deactivateParticle();
	TodoReturn deactivateStreak(bool);
	TodoReturn destroyFromHitHead();
	TodoReturn didHitHead();
	void disableCustomGlowColor() {
		m_hasCustomGlowColor = false;
	}
	TodoReturn disablePlayerControls();
	TodoReturn disableSwingFire();
	TodoReturn doReversePlayer(bool) = win 0x2d2210;
	void enableCustomGlowColor(cocos2d::_ccColor3B const& color) {
		m_hasCustomGlowColor = true;
		m_glowColor = color;
	}
	TodoReturn enablePlayerControls();
	TodoReturn exitPlatformerAnimateJump();
	TodoReturn fadeOutStreak2(float) = win 0x2d8ab0;
	void flashPlayer(float, float, cocos2d::ccColor3B mainColor, cocos2d::ccColor3B secondColor) = win 0x2d1080;
	TodoReturn flipGravity(bool, bool) = win 0x2d36e0;
	TodoReturn flipMod();
	TodoReturn gameEventTriggered(int, int);
	TodoReturn getActiveMode();
	TodoReturn getCurrentXVelocity();
	TodoReturn getModifiedSlopeYVel() = win 0x2c9d30;
	TodoReturn getOldPosition(float);
	cocos2d::ccColor3B getSecondColor() = win 0x2d90e0;
	TodoReturn getYVelocity();
	TodoReturn gravityDown();
	TodoReturn gravityUp();
	TodoReturn handlePlayerCommand(int);
	TodoReturn handleRotatedCollisionInternal(float, GameObject*, cocos2d::CCRect, bool, bool, bool);
	TodoReturn handleRotatedObjectCollision(float, GameObject*, cocos2d::CCRect, bool);
	TodoReturn handleRotatedSlopeCollision(float, GameObject*, bool);
	TodoReturn hardFlipGravity();
	TodoReturn hitGround(GameObject*, bool);
	TodoReturn hitGroundNoJump(GameObject*, bool);
	TodoReturn incrementJumps() = win 0x2c77f0;
	bool init(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool) = win 0x2c24c0;
	bool isBoostValid(float) = win 0x2c9cd0;
	bool isFlying() = win 0x2d3a20;
	bool isInBasicMode();
	bool isInNormalMode() = win 0x2d5780;
	bool isSafeFlip(float);
	bool isSafeHeadTest();
	bool isSafeMode(float);
	bool isSafeSpiderFlip(float);
	TodoReturn levelFlipFinished();
	TodoReturn levelFlipping() = win 0x2d4880;
	TodoReturn levelWillFlip();
	void loadFromCheckpoint(PlayerCheckpoint*) = win 0x2d9e60;
	TodoReturn lockPlayer() = win 0x2d7d40;
	TodoReturn logValues();
	TodoReturn modeDidChange();
	TodoReturn performSlideCheck();
	TodoReturn placeStreakPoint() = win 0x2d9110;
	TodoReturn playBumpEffect(int, GameObject*) = win 0x2d8380;
	TodoReturn playBurstEffect();
	TodoReturn playCompleteEffect(bool, bool);
	TodoReturn playDeathEffect() = win 0x2ba470;
	TodoReturn playDynamicSpiderRun();
	TodoReturn playerDestroyed(bool) = win 0x2d1b30;
	TodoReturn playerIsFalling(float);
	TodoReturn playerIsFallingBugged();
	TodoReturn playerIsMovingUp();
	TodoReturn playerTeleported();
	TodoReturn playingEndEffect();
	TodoReturn playSpawnEffect();
	void playSpiderDashEffect(cocos2d::CCPoint from, cocos2d::CCPoint to) = win 0x2cf5b0;
	TodoReturn postCollision(float) = win 0x2c82f0;
	TodoReturn preCollision() = win 0x2c81b0;
	TodoReturn preSlopeCollision(float, GameObject*);
	TodoReturn propellPlayer(float, bool, int) = win 0x2d81b0;
	TodoReturn pushButton(PlayerButton) = win 0x2d1d30;
	TodoReturn pushDown();
	TodoReturn pushPlayer(float);
	TodoReturn redirectDash(float) = win 0x2cfbb0;
	TodoReturn redirectPlayerForce(float, float, float, float);
	TodoReturn releaseAllButtons();
	TodoReturn releaseButton(PlayerButton) = win 0x2d1f70;
	TodoReturn removeAllParticles();
	TodoReturn removePendingCheckpoint() = win 0x2da1c0;
	TodoReturn removePlacedCheckpoint();
	TodoReturn resetAllParticles();
	TodoReturn resetCollisionLog(bool);
	TodoReturn resetCollisionValues();
	void resetPlayerIcon() = win 0x2d45b0;
	TodoReturn resetStateVariables();
	TodoReturn resetStreak() = win 0x2c6540;
	TodoReturn resetTouchedRings();
	TodoReturn reverseMod();
	TodoReturn reversePlayer(EffectGameObject*) = win 0x2d2130;
	TodoReturn ringJump(RingObject*, bool) = win 0x2d27c0;
	TodoReturn rotateGameplay(int, int, bool, float, float, bool, bool) = win 0x2d3340;
	TodoReturn rotateGameplayObject(GameObject*);
	TodoReturn rotateGameplayOnly(bool);
	TodoReturn rotatePreSlopeObjects();
	TodoReturn runBallRotation(float) = win 0x2c7e30;
	TodoReturn runBallRotation2() = win 0x2c7f70;
	TodoReturn runNormalRotation() = win 0x2c7cf0;
	TodoReturn runNormalRotation(bool, float) = win 0x2c7cf0;
	TodoReturn runRotateAction(bool, int);
	TodoReturn saveToCheckpoint(PlayerCheckpoint*) = win 0x2d9c20;
	void setSecondColor(cocos2d::ccColor3B const&) = win 0x2d65a0;
	void setupStreak() = win 0x2c3c80;
	void setYVelocity(double, int) = win 0x2c40c0;
	TodoReturn spawnCircle();
	TodoReturn spawnCircle2();
	TodoReturn spawnDualCircle();
	TodoReturn spawnFromPlayer(PlayerObject*, bool) = win 0x2d8f90;
	TodoReturn spawnPortalCircle(cocos2d::ccColor3B, float) = win 0x2d1810;
	TodoReturn spawnScaleCircle();
	TodoReturn specialGroundHit();
	TodoReturn speedDown();
	TodoReturn speedUp();
	TodoReturn spiderTestJump(bool);
	TodoReturn spiderTestJumpInternal(bool);
	TodoReturn spiderTestJumpX(bool);
	TodoReturn spiderTestJumpY(bool);
	TodoReturn startDashing(DashRingObject*);
	TodoReturn stopBurstEffect();
	TodoReturn stopDashing() = win 0x2d0940;
	TodoReturn stopParticles();
	TodoReturn stopPlatformerJumpAnimation();
	TodoReturn stopRotation(bool, int);
	TodoReturn stopStreak2() = win 0x2d8b20;
	TodoReturn storeCollision(PlayerCollisionDirection, int);
	TodoReturn switchedDirTo(PlayerButton) = win 0x2d1c40;
	TodoReturn switchedToMode(GameObjectType) = win 0x2d4fd0;
	TodoReturn testForMoving(float, GameObject*);
	TodoReturn toggleBirdMode(bool, bool) = win 0x2d3d30;
	TodoReturn toggleDartMode(bool, bool) = win 0x2d42f0;
	TodoReturn toggleFlyMode(bool, bool) = win 0x2d3aa0;
	TodoReturn toggleGhostEffect(GhostType) = win 0x2d7a40;
	void togglePlatformerMode(bool val) {
        m_isPlatformer = val;
    }
	TodoReturn togglePlayerScale(bool, bool) = win 0x2d9170;
	TodoReturn toggleRobotMode(bool, bool) = win 0x2d49f0;
	TodoReturn toggleRollMode(bool, bool) = win 0x2d48c0;
	TodoReturn toggleSpiderMode(bool, bool) = win 0x2d4ce0;
	TodoReturn toggleSwingMode(bool, bool) = win 0x2d3fb0;
	TodoReturn toggleVisibility(bool) = win 0x2c63f0;
	TodoReturn touchedObject(GameObject*);
	TodoReturn tryPlaceCheckpoint() = win 0x2da220;
	TodoReturn unrotateGameplayObject(GameObject*);
	TodoReturn unrotatePreSlopeObjects();
	TodoReturn updateCheckpointMode(bool);
	TodoReturn updateCheckpointTest() = win 0x2c6310;
	TodoReturn updateCollide(PlayerCollisionDirection, GameObject*);
	TodoReturn updateCollideBottom(float, GameObject*);
	TodoReturn updateCollideLeft(float, GameObject*);
	TodoReturn updateCollideRight(float, GameObject*);
	TodoReturn updateCollideTop(float, GameObject*);
	TodoReturn updateDashAnimation();
	TodoReturn updateDashArt() = win 0x2d0530;
	TodoReturn updateEffects(float);
	TodoReturn updateGlowColor() = win 0x2d6610;
	TodoReturn updateInternalActions(float);
	TodoReturn updateJump(float) = win 0x2c67b0;
	TodoReturn updateJumpVariables();
	TodoReturn updateLastGroundObject(GameObject*);
	TodoReturn updateMove(float);
	TodoReturn updatePlayerArt() = win 0x2d23e0;
	TodoReturn updatePlayerBirdFrame(int) = win 0x2d70e0;
	TodoReturn updatePlayerDartFrame(int) = win 0x2d7680;
	TodoReturn updatePlayerForce(cocos2d::CCPoint, bool);
	TodoReturn updatePlayerFrame(int) = win 0x2d6b90;
	TodoReturn updatePlayerGlow() = win 0x2d8c50;
	TodoReturn updatePlayerJetpackFrame(int) = win 0x2d6f20;
	void updatePlayerRobotFrame(int id) {
        if (id < 1) id = 1;
        else if (id > 0x43) id = 0x44;

        createRobot(id);
    }
	TodoReturn updatePlayerRollFrame(int) = win 0x2d7300;
	TodoReturn updatePlayerScale() = win 0x2d8bf0;
	TodoReturn updatePlayerShipFrame(int) = win 0x2d6d60;
	void updatePlayerSpiderFrame(int id) {
        if (id < 1) id = 1;
        else if (id > 0x44) id = 0x45;

        createSpider(id);
    }

	TodoReturn updatePlayerSpriteExtra(gd::string);
	TodoReturn updatePlayerSwingFrame(int) = win 0x2d74c0;
	TodoReturn updateRobotAnimationSpeed();
	TodoReturn updateRotation(float, float);
	TodoReturn updateRotation(float) = win 0x2cbd20;
	TodoReturn updateShipRotation(float);
	TodoReturn updateShipSpriteExtra(gd::string);
	TodoReturn updateSlopeRotation(float);
	TodoReturn updateSlopeYVelocity(float);
	TodoReturn updateSpecial(float) = win 0x2c62c0;
	TodoReturn updateStateVariables();
	TodoReturn updateStaticForce(float, float, bool);
	void updateStreakBlend(bool) = win 0x2c4050;
	TodoReturn updateStreaks(float);
	TodoReturn updateSwingFire() = win 0x2d41e0;
	TodoReturn updateTimeMod(float, bool) = win 0x2d95e0;
	TodoReturn usingWallLimitedMode();
	TodoReturn yStartDown();
	TodoReturn yStartUp();

	virtual void update(float) = win 0x2c41b0;
	virtual void setScaleX(float) = win 0x2da740;
	virtual void setScaleY(float) = win 0x2da760;
	virtual void setScale(float) = win 0x2da780;
	virtual void setPosition(cocos2d::CCPoint const&) = win 0x2d5860;
	virtual void setVisible(bool) = win 0x2da7a0;
	virtual void setRotation(float) = win 0x2da690;
	virtual void setOpacity(unsigned char) = win 0x2d6a90;
	virtual void setColor(cocos2d::ccColor3B const&) = win 0x2d6520;
	virtual void setFlipX(bool) = win 0x2da6b0;
	virtual void setFlipY(bool);
	virtual TodoReturn resetObject() = win 0x2d1100;
	virtual cocos2d::CCPoint getRealPosition() = win 0x2d6b70;
	virtual TodoReturn getOrientedBox();
	virtual TodoReturn getObjectRotation();
	virtual TodoReturn animationFinished(char const*);

	cocos2d::CCNode* m_unk49c;
	PAD = win 0x44, android32 0x44;
	cocos2d::CCNode* m_unk4e4;
	cocos2d::CCDictionary* m_unk4e8;
	cocos2d::CCDictionary* m_unk4ec;
	cocos2d::CCDictionary* m_unk4f0;
	cocos2d::CCDictionary* m_unk4f4;
	PAD = win 0x20, android32 0x20;
	float m_unk518;
	PAD = win 0x8, android32 0x8;
	GameObject* m_collidedObject;
	PAD = win 0x40, android32 0x40;
	float m_unk568;
	cocos2d::CCSprite* m_unk56c;
	PAD = win 0x4, android32 0x4;
	GameObject* m_unk574;
	GameObject* m_unk578;
	PAD = win 0x8, android32 0x8;
	float unk_584;
	int unk_588; // seems to always be 0, but when you respawn it's -1 until you move at least 1 block from the respawn place
	PAD = win 0x4, android32 0x4;
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
	PAD = win 0x4, android32 0x4;
	HardStreak* m_waveTrail;
	float m_unk62c;
	PAD = win 0x14, android32 0x14;
	float m_unk644;
	float m_unk648;
	PAD = win 0xc, android32 0xc;
	bool m_unk658;
	bool m_unk659;
	bool m_unk65a;
	bool m_unk65b; // midair ??
	bool m_unk65c;
	bool m_unk65d; // walking ???
	bool m_unk65e;
	bool m_unk65f;
	PAD = win 0x28, android32 0x28;
	float m_unk688;
	float m_unk68c;
	PAD = win 0x12, android32 0x12;
	bool m_unk6a2; // = GameManager::getGameVariable("0096")
	bool m_unk6a3; // = GameManager::getGameVariable("0100")
	PAD = win 0x18, android32 0x18;
	GameObject* m_objectSnappedTo;
	PAD = win 0x8, android32 0x8;
	GJRobotSprite* m_robotSprite;
	GJSpiderSprite* m_spiderSprite;
	PAD = win 0x4, android32 0x4;
	cocos2d::CCParticleSystemQuad* m_unk6dc;
	cocos2d::CCParticleSystemQuad* m_trailingParticles; // 0x6d8
	cocos2d::CCParticleSystemQuad* m_shipClickParticles; // 0x6dc
	cocos2d::CCParticleSystemQuad* m_unk6e8;
	cocos2d::CCParticleSystemQuad* m_ufoClickParticles; // 0x6e4
	cocos2d::CCParticleSystemQuad* m_robotBurstParticles;
	cocos2d::CCParticleSystemQuad* m_unk6f4;
	cocos2d::CCParticleSystemQuad* m_swingBurstParticles1; // 0x6f0
	cocos2d::CCParticleSystemQuad* m_swingBurstParticles2; // 0x6f4
	PAD = win 0x4, android32 0x4;
	cocos2d::CCParticleSystemQuad* m_unk704;
	cocos2d::CCParticleSystemQuad* m_unk708;
	PAD = win 0x6c, android32 0x6c;
	bool m_hasCustomGlowColor;
	cocos2d::ccColor3B m_glowColor;
	PAD = win 0x24, android32 0x1c;
	double m_yVelocity;
	bool m_isOnSlope;
	bool m_wasOnSlope;
	PAD = win 0x7, android32 0x7;
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
	bool m_unk7b3;
	bool m_isSwing;
	PAD = win 0x10, android32 0x10;
	float m_unk7c8;
	float m_unk7cc; // unsure if float
	float m_unk7d0;
	bool m_isDashing;
	PAD = win 0x8, android32 0x8;
	float m_vehicleSize;
	float m_playerSpeed;
	float m_unk7e0;
	float m_unk7e4;
	cocos2d::CCPoint m_unk7e8;
	cocos2d::CCPoint m_unk7f0; // maybe m_lastPortalPos
	PAD = win 0x1c, android32 0x1c;
	cocos2d::CCPoint m_lastGroundedPos;
	cocos2d::CCArray* m_touchingRings;
	gd::unordered_set<int> m_unk828;
	GameObject* m_lastActivatedPortal;
	bool m_unk814;
	bool m_unk815;
	cocos2d::ccColor3B m_playerColor1; // 0x816
	cocos2d::ccColor3B m_playerColor2; // 0x819
	cocos2d::CCPoint m_position;
	PAD = win 0x14, android32 0x14;
	float m_unk838;
	gd::unordered_map<int, int> m_unk83c; // the types are placeholders, no idea what they should be
	PAD = win 0x10;
	double m_platformerXVelocity;
	PAD = win 0x70;
	bool m_isPlatformer;
	int m_unk8ec;
	int m_unk8f0;
	int m_unk8f4;
	int m_unk8f8;
	float m_gravityMod;
	PAD = win 0x4, android32 0x4;
	cocos2d::CCPoint m_unk904;
	PAD = win 0x4, android32 0x4;
	gd::map<int, bool> m_unk910;
	float m_unk918; // increments whenever you're midiar?
	float m_unk91c;
	PAD = win 0x4, android32 0x4;
	gd::map<int, bool> m_unk924;
	PAD = win 0x4, android32 0x4;
	gd::string m_unk930; // this is always "run" ???
	bool m_unk948; // = getGameVariable("0123")
	PAD = win 0x7, android32 0x7;
	cocos2d::CCSpriteBatchNode* m_unk950;
	cocos2d::CCSpriteBatchNode* m_unk954;
	cocos2d::CCArray* m_unk958;
	PlayerFireBoostSprite* m_robotFire;
	PAD = win 0x4, android32 0x4;
	GJBaseGameLayer* m_gameLayer;
	cocos2d::CCLayer* m_parentLayer;
	GJActionManager* m_actionManager;
	PAD = win 0x4, android32 0x4;
	float m_unk974;
	bool m_unk978;
	bool m_unk979; // = isItemEnabled(0xc, 0x12);
	bool m_unk97a; // = isItemEnabled(0xc, 0x13);
	bool m_unk97b; // = isItemEnabled(0xc, 0x14);
	PAD = win 0x4, android32 0x4;
}

[[link(android)]]
class PlayLayer : GJBaseGameLayer, CCCircleWaveDelegate, CurrencyRewardDelegate, DialogDelegate {
	virtual ~PlayLayer() = win 0x2dc080;
	// PlayLayer() = win 0x2db390;

	static PlayLayer* create(GJGameLevel* level, bool useReplay, bool dontCreateObjects) = win 0x2dc3f0;
	static PlayLayer* get() {
		return GameManager::get()->m_playLayer;
	}

	TodoReturn addCircle(CCCircleWave*);
	TodoReturn addObject(GameObject*) = win 0x2e19b0;
	TodoReturn addToGroupOld(GameObject*);
	TodoReturn applyCustomEnterEffect(GameObject*, bool);
	TodoReturn applyEnterEffect(GameObject*, int, bool);
	bool canPauseGame() = win 0x2eae60;
	TodoReturn checkpointWithID(int);
	TodoReturn colorObject(int, cocos2d::ccColor3B);
	TodoReturn commitJumps();
	TodoReturn compareStateSnapshot();
	TodoReturn createCheckpoint() = win 0x2e76e0;
	TodoReturn createObjectsFromSetupFinished() = win 0x2e1730;
	TodoReturn delayedFullReset() = win 0x2e9f20;
	TodoReturn delayedResetLevel() = win 0x2ea080;
	TodoReturn fullReset() = win 0x2e9f80;
	float getCurrentPercent() {
		float percent;

		if (m_level->m_timestamp > 0) {
			percent = static_cast<float>(m_gameState.m_unk1f8) / m_level->m_timestamp * 100.f;
		} else {
			percent = m_player1->getPosition().x / m_levelLength * 100.f;
		}

		if (percent >= 100.f) {
			return 100.f;
		} else if (percent <= 0.f) {
			return 0.f;
		} else {
			return percent;
		}
	}
	int getCurrentPercentInt() = win 0x2e6680;
	TodoReturn getEndPosition();
	TodoReturn getLastCheckpoint() = win 0x2e8d40;
	TodoReturn getRelativeMod(cocos2d::CCPoint, float, float, float);
	TodoReturn getRelativeModNew(cocos2d::CCPoint, float, float, bool, bool);
	TodoReturn getTempMilliTime();
	TodoReturn gravityEffectFinished();
	void incrementJumps() = win 0x2eacd0;
	bool init(GJGameLevel* level, bool useReplay, bool dontCreateObjects) = win 0x2dc4a0;
	bool isGameplayActive();
	void levelComplete() = win 0x2ddb60;
	TodoReturn loadActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&);
	TodoReturn loadDefaultColors() = win 0x2e4e80;
	TodoReturn loadDynamicSaveObjects(gd::vector<SavedObjectStateRef>&);
	TodoReturn loadFromCheckpoint(CheckpointObject*) = win 0x2e85e0;
	TodoReturn loadLastCheckpoint();
	TodoReturn markCheckpoint() = win 0x2e8550;
	void onQuit() = win 0x2eb480;
	TodoReturn optimizeColorGroups() = win 0x2e2530;
	TodoReturn optimizeOpacityGroups() = win 0x2e2790;
	TodoReturn pauseGame(bool) = win 0x2eae80;
	TodoReturn playEndAnimationToPos(cocos2d::CCPoint) = win 0x2dfe00;
	TodoReturn playPlatformerEndAnimationToPos(cocos2d::CCPoint, bool) = win 0x2e05e0;
	TodoReturn playReplay(gd::string);
	TodoReturn prepareCreateObjectsFromSetup(gd::string&) = win 0x2e0c40;
	TodoReturn prepareMusic(bool) = win 0x2eb2b0;
	TodoReturn processCreateObjectsFromSetup() = win 0x2e0ed0;
	TodoReturn processLoadedMoveActions();
	TodoReturn queueCheckpoint();
	TodoReturn removeAllObjects() = win 0x2eb570;
	TodoReturn removeCheckpoint(bool) = win 0x2e8d70;
	TodoReturn removeFromGroupOld(GameObject*);
	void resetLevel() = win 0x2ea130;
	TodoReturn resetLevelFromStart() = win 0x2ea090;
	TodoReturn resume() = win 0x2eb100;
	TodoReturn resumeAndRestart(bool) = win 0x2eafe0;
	TodoReturn saveActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&) = win 0x2e9c20;
	TodoReturn saveDynamicSaveObjects(gd::vector<SavedObjectStateRef>&) = win 0x2e9780;
	TodoReturn scanActiveSaveObjects() = win 0x2e9b70;
	TodoReturn scanDynamicSaveObjects() = win 0x2e8f80;
	static cocos2d::CCScene* scene(GJGameLevel* level, bool useReplay, bool dontCreateObjects) = win 0x2dc3a0;
	TodoReturn screenFlipObject(GameObject*);
	void setDamageVerifiedIdx(int) = win 0x2db7c0;
	TodoReturn setupHasCompleted() = win 0x2dce40;
	TodoReturn shouldBlend(int);
	TodoReturn showCompleteEffect();
	TodoReturn showCompleteText() = win 0x2de410;
	TodoReturn showEndLayer();
	TodoReturn showHint() = win 0x2e6f90;
	TodoReturn showNewBest(bool, int, int, bool, bool, bool) = win 0x2dedc0;
	TodoReturn showRetryLayer();
	TodoReturn showTwoPlayerGuide();
	TodoReturn spawnCircle();
	TodoReturn spawnFirework();
	TodoReturn startGame() = win 0x2ddab0;
	TodoReturn startGameDelayed() = win 0x2ddaf0;
	TodoReturn startMusic() = win 0x2eb3a0;
	TodoReturn startRecording();
	TodoReturn startRecordingDelayed();
	TodoReturn stopRecording();
	TodoReturn storeCheckpoint(CheckpointObject*) = win 0x2e84a0;
	TodoReturn takeStateSnapshot();
	TodoReturn toggleBGEffectVisibility(bool);
	TodoReturn toggleGhostEffect(int);
	//void toggleDebugDraw(bool) = win 0x2dda61;
	void togglePracticeMode(bool) = win 0x2ead30;
	TodoReturn tryStartRecord();
	TodoReturn updateAttempts() = win 0x2eab40;
	TodoReturn updateEffectPositions() = win 0x2e7130;
	TodoReturn updateInfoLabel() = win 0x2e5ad0;
	TodoReturn updateInvisibleBlock(GameObject*, float, float, float, float, cocos2d::ccColor3B const&);
	TodoReturn updateProgressbar() = win 0x2e5440;
	TodoReturn updateScreenRotation(int, bool, bool, float, int, float, int, int);
	TodoReturn updateTimeWarp(EffectGameObject*, float) = win 0x1b9700;

	virtual void onEnterTransitionDidFinish() = win 0x2eb700;
	virtual void onExit() = win 0x2eb730;
	virtual TodoReturn postUpdate(float) = win 0x2e7220;
	virtual TodoReturn checkForEnd() = win 0x2e74d0;
	virtual TodoReturn testTime();
	virtual TodoReturn updateVerifyDamage() = win 0x2e75b0;
	virtual TodoReturn updateAttemptTime(float) = win 0x2e7630;
	virtual TodoReturn updateVisibility(float) = win 0x2e2bf0;
	virtual TodoReturn opacityForObject(GameObject*) = win 0x2e3920;
	virtual TodoReturn updateColor(cocos2d::ccColor3B&, float, int, bool, float, cocos2d::ccHSVValue&, int, bool, EffectGameObject*, int, int) = win 0x2e50e0;
	virtual TodoReturn activateEndTrigger(int, bool, bool);
	virtual TodoReturn activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&) = win 0x2e04d0;
	virtual TodoReturn toggleGlitter(bool) = win 0x2e6630;
	virtual TodoReturn destroyPlayer(PlayerObject*, GameObject*) = win 0x2e6730;
	virtual TodoReturn toggleGroundVisibility(bool) = win 0x2e64e0;
	virtual TodoReturn toggleMGVisibility(bool) = win 0x2e6560;
	virtual TodoReturn toggleHideAttempts(bool) = win 0x2e65b0;
	virtual TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, int) = win 0x2e63e0;
	virtual TodoReturn posForTime(float) = win 0x2e6450;
	virtual TodoReturn resetSPTriggered() = win 0x2e64a0;
	virtual TodoReturn updateTimeWarp(float);
	virtual TodoReturn playGravityEffect(bool);
	virtual TodoReturn manualUpdateObjectColors(GameObject*) = win 0x2e3940;
	virtual TodoReturn checkpointActivated(CheckpointGameObject*) = win 0x2e76c0;
	virtual TodoReturn flipArt(bool);
	virtual void updateTimeLabel(int, int, bool) = win 0x2e5670;
	virtual TodoReturn checkSnapshot();
	virtual TodoReturn toggleProgressbar();
	virtual TodoReturn toggleInfoLabel();
	virtual TodoReturn removeAllCheckpoints();
	virtual TodoReturn toggleMusicInPractice();
	virtual TodoReturn currencyWillExit(CurrencyRewardLayer*);
	virtual TodoReturn circleWaveWillBeRemoved(CCCircleWave*);
	virtual TodoReturn dialogClosed(DialogLayer*) = win 0x2e6f50;

	PAD = win 0x84;
	float m_unksomefloat;
	PAD = win 0x44;
	cocos2d::CCSprite* m_progressBar;
	PAD = win 0x5c;
	bool m_endLayerStars; // not verified on android
	PAD = win 0xb8;
}

[[link(android)]]
class PointNode : cocos2d::CCObject {
	// virtual ~PointNode();

	static PointNode* create(cocos2d::CCPoint) = win 0x2274c0;

	bool init(cocos2d::CCPoint);
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
	// ProfilePage() = win 0x2ecb80;

	static ProfilePage* create(int accountID, bool ownProfile) = win 0x2ecfd0;

	TodoReturn blockUser();
	bool init(int accountID, bool ownProfile) = win 0x2ed080;
	bool isCorrect(char const* key) = win 0x2f1ef0;
	bool isOnWatchlist(int);
	TodoReturn loadPage(int) = win 0x2f1fc0;
	void loadPageFromUserInfo(GJUserScore*) = win 0x2edda0;
	void onBlockUser(cocos2d::CCObject* sender) = win 0x2f0c90;
	void onClose(cocos2d::CCObject* sender) = win 0x2f15e0;
	void onComment(cocos2d::CCObject* sender) = win 0x2f09a0;
	void onCommentHistory(cocos2d::CCObject* sender) = win 0x2f0930;
	void onFollow(cocos2d::CCObject* sender) = win 0x2f0e70;
	void onFriend(cocos2d::CCObject* sender) = win 0x2f0ab0;
	void onFriends(cocos2d::CCObject* sender) = win 0x2f1d70;
	void onMessages(cocos2d::CCObject* sender) = win 0x2f1d50;
	void onMyLevels(cocos2d::CCObject* sender) = win 0x2f0680;
	void onMyLists(cocos2d::CCObject* sender) = win 0x2f07e0;
	void onNextPage(cocos2d::CCObject* sender) = win 0x2f24c0;
	void onPrevPage(cocos2d::CCObject* sender) = win 0x2f24d0;
	void onRequests(cocos2d::CCObject* sender) = win 0x2f1d90;
	void onSendMessage(cocos2d::CCObject* sender) = win 0x2f0960;
	void onSettings(cocos2d::CCObject* sender) = win 0x2f1d30;
	void onTwitch(cocos2d::CCObject* sender) = win 0x2f1bd0;
	void onTwitter(cocos2d::CCObject* sender) = win 0x2f1a70;
	void onUpdate(cocos2d::CCObject* sender) = win 0x2edb10;
	void onYouTube(cocos2d::CCObject* sender) = win 0x2f1910;
	TodoReturn setupComments() = win 0x2f1170;
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*) = win 0x2f2160;
	TodoReturn showNoAccountError() = win 0x2f1650;
	TodoReturn toggleMainPageVisibility(bool);
	TodoReturn updateLevelsLabel();
	TodoReturn updatePageArrows();

	virtual void registerWithTouchDispatcher() = win 0x22fc0;
	virtual void keyBackClicked() = win 0x2f1640;
	virtual void show() = win 0x2f17f0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2f1340;
	virtual TodoReturn updateUserScoreFinished() = win 0x2f1740;
	virtual TodoReturn updateUserScoreFailed() = win 0x2f17b0;
	virtual TodoReturn getUserInfoFinished(GJUserScore*) = win 0x2f1db0;
	virtual TodoReturn getUserInfoFailed(int) = win 0x2f1e40;
	virtual TodoReturn userInfoChanged(GJUserScore*) = win 0x2f1e90;
	virtual TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*) = win 0x2f2290;
	virtual TodoReturn loadCommentsFailed(char const*) = win 0x2f22f0;
	virtual TodoReturn setupPageInfo(gd::string, char const*) = win 0x2f2350;
	virtual TodoReturn commentUploadFinished(int);
	virtual TodoReturn commentUploadFailed(int, CommentError);
	virtual TodoReturn commentDeleteFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*) = win 0x2f1480;
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);

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
	TodoReturn step(float);
	TodoReturn valueForDelta(float, float, float, float);
}

[[link(android)]]
class PurchaseItemPopup : FLAlertLayer {
	// virtual ~PurchaseItemPopup();
	// PurchaseItemPopup() = win 0x219820;

	static PurchaseItemPopup* create(GJStoreItem*) = win 0x21cd00;

	bool init(GJStoreItem*) = win 0x21cda0;
	void onClose(cocos2d::CCObject* sender) = win 0x6a750;
	void onPurchase(cocos2d::CCObject* sender) = win 0x21d820;

	virtual void keyBackClicked();
}

[[link(android)]]
class RandTriggerGameObject : ChanceTriggerGameObject {
	// virtual ~RandTriggerGameObject();

	static RandTriggerGameObject* create();

	TodoReturn getRandomGroupID();
	TodoReturn getTotalChance();

	virtual bool init();
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class RateDemonLayer : FLAlertLayer, UploadPopupDelegate, UploadActionDelegate {
	// virtual ~RateDemonLayer();

	static RateDemonLayer* create(int);

	bool init(int) = win 0x2f35b0;
	void onClose(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender) = win 0x2f3c20;
	void selectRating(cocos2d::CCObject*) = win 0x2f3ac0;

	virtual void keyBackClicked();
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);

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
	TodoReturn selectRating(cocos2d::CCObject*);

	virtual void keyBackClicked();
}

[[link(android)]]
class RateStarsLayer : FLAlertLayer, UploadPopupDelegate, UploadActionDelegate {
	// virtual ~RateStarsLayer();

	static RateStarsLayer* create(int, bool, bool) = win 0x2f4870;

	TodoReturn getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);
	bool init(int, bool, bool) = win 0x2f4920;
	void onClose(cocos2d::CCObject* sender) = win 0x2f53b0;
	void onFeature(cocos2d::CCObject* sender) = win 0x2f4f90;
	void onRate(cocos2d::CCObject* sender) = win 0x2f51c0;
	void onToggleCoins(cocos2d::CCObject* sender);
	TodoReturn selectRating(cocos2d::CCObject*) = win 0x2f5070;

	virtual void keyBackClicked();
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
	PAD = win 0x10;
	int m_starsRate;
}

[[link(android)]]
class RetryLevelLayer : GJDropDownLayer, RewardedVideoDelegate {
	// virtual ~RetryLevelLayer();

	static RetryLevelLayer* create() = win 0x2f54d0;

	TodoReturn getEndText();
	void onEveryplay(cocos2d::CCObject* sender);
	void onMenu(cocos2d::CCObject* sender) = win 0x2f6230;
	void onReplay(cocos2d::CCObject* sender) = win 0x2f6140;
	void onRewardedVideo(cocos2d::CCObject* sender);
	TodoReturn setupLastProgress();

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void customSetup() = win 0x2f5650;
	virtual TodoReturn showLayer(bool);
	virtual TodoReturn enterAnimFinished();
	virtual TodoReturn rewardedVideoFinished();
	virtual TodoReturn shouldOffsetRewardCurrency();
	virtual void keyUp(cocos2d::enumKeyCodes);
}

[[link(android)]]
class RewardedVideoDelegate {
	virtual TodoReturn rewardedVideoFinished();
	virtual TodoReturn shouldOffsetRewardCurrency();
}

[[link(android)]]
class RewardsPage : FLAlertLayer, FLAlertLayerProtocol, GJRewardDelegate {
	// virtual ~RewardsPage();

	static RewardsPage* create();

	static char const* getRewardFrame(int, int);
	void onClose(cocos2d::CCObject* sender) = win 0x6a750;
	void onFreeStuff(cocos2d::CCObject* sender) = win 0x2f7A00;
	void onReward(cocos2d::CCObject* sender) = win 0x2f74a0;
	TodoReturn tryGetRewards();
	TodoReturn unlockLayerClosed(RewardUnlockLayer*);
	TodoReturn updateTimers(float);

	virtual bool init() = win 0x2f67f0;
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void show();
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
class RewardUnlockLayer : FLAlertLayer, CurrencyRewardDelegate {
	// virtual ~RewardUnlockLayer();

	static RewardUnlockLayer* create(int, RewardsPage*);

	TodoReturn connectionTimeout();
	bool init(int, RewardsPage*);
	TodoReturn labelEnterFinishedO(cocos2d::CCObject*);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn playDropSound();
	TodoReturn playLabelEffect(int, int, cocos2d::CCSprite*, cocos2d::CCPoint, float);
	TodoReturn playRewardEffect();
	TodoReturn readyToCollect(GJRewardItem*);
	TodoReturn showCloseButton();
	TodoReturn showCollectReward(GJRewardItem*) = win 0x2f8860;
	TodoReturn step2();
	TodoReturn step3();

	virtual void keyBackClicked();
	virtual TodoReturn currencyWillExit(CurrencyRewardLayer*);
}

[[link(android)]]
class RingObject : EffectGameObject {
	// virtual ~RingObject();

	static RingObject* create(char const*);

	bool init(char const*);
	TodoReturn spawnCircle();

	virtual void setScale(float);
	virtual void setRotation(float);
	virtual TodoReturn resetObject();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
	virtual void setRScale(float);
	virtual TodoReturn triggerActivated(float);
	virtual TodoReturn shouldDrawEditorHitbox();
	virtual TodoReturn powerOnObject(int);

	bool m_claimTouch;
	// property 504
	bool m_isSpawnOnly;
}

[[link(android)]]
class RotateGameplayGameObject : EffectGameObject {
	// virtual ~RotateGameplayGameObject();

	static RotateGameplayGameObject* create();

	TodoReturn updateGameplayRotation();

	virtual bool init();
	virtual TodoReturn updateStartValues();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class ScrollingLayer : cocos2d::CCLayerColor {
	// virtual ~ScrollingLayer();

	static ScrollingLayer* create(cocos2d::CCSize, cocos2d::CCPoint, float);

	TodoReturn getViewRect();
	bool init(cocos2d::CCSize, cocos2d::CCPoint, float);
	void setStartOffset(cocos2d::CCPoint);

	virtual void draw();
	virtual void visit();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
}

[[link(android)]]
class SearchButton : cocos2d::CCSprite {
	// virtual ~SearchButton();

	static SearchButton* create(char const*, char const*, float, char const*) = win 0x265230;

	bool init(char const*, char const*, float, char const*) = win 0x265320;

	cocos2d::CCLabelBMFont* m_label;
	cocos2d::CCSprite* m_icon;
}

[[link(android)]]
class SearchSFXPopup : SetTextPopup {
	// virtual ~SearchSFXPopup();

	static SearchSFXPopup* create(gd::string);

	bool init(gd::string);
	void onSearchFolders(cocos2d::CCObject* sender) = win 0x37a1f0;
}

[[link(android)]]
class SecretLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol {
	// virtual ~SecretLayer();

	static SecretLayer* create();

	TodoReturn getBasicMessage();
	TodoReturn getMessage();
	TodoReturn getThreadMessage();
	TodoReturn nodeWithTag(int);
	void onBack(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);
	TodoReturn playCoinEffect();
	TodoReturn scene();
	TodoReturn selectAThread();
	TodoReturn updateMessageLabel(gd::string);
	void updateSearchLabel(char const*);

	virtual bool init();
	virtual void keyBackClicked();
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class SecretLayer2 : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DialogDelegate {
	// virtual ~SecretLayer2();

	static SecretLayer2* create();

	gd::string getBasicMessage() = win 0x309030;
	TodoReturn getErrorMessage();
	TodoReturn getMessage();
	TodoReturn getThreadMessage();
	TodoReturn nodeWithTag(int);
	void onBack(cocos2d::CCObject* sender);
	void onDoor(cocos2d::CCObject* sender);
	void onSecretLevel(cocos2d::CCObject* sender) = win 0x306c30;
	void onSubmit(cocos2d::CCObject* sender) = win 0x3071c0;
	TodoReturn playCoinEffect();
	TodoReturn scene();
	TodoReturn selectAThread();
	TodoReturn showCompletedLevel();
	TodoReturn showSecretLevel();
	void updateMessageLabel(gd::string) = win 0x308770;
	void updateSearchLabel(char const*) = win 0x3084b0;

	virtual bool init() = win 0x3056d0;
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
	// virtual ~SecretLayer3();

	static SecretLayer3* create();

	TodoReturn animateEyes();
	TodoReturn firstInteractionStep1();
	TodoReturn firstInteractionStep2();
	TodoReturn firstInteractionStep3();
	TodoReturn firstInteractionStep4();
	void onBack(cocos2d::CCObject* sender);
	void onChest01(cocos2d::CCObject* sender);
	void onChest02(cocos2d::CCObject* sender);
	void onClick(cocos2d::CCObject* sender);
	TodoReturn revealStep1();
	TodoReturn revealStep2();
	TodoReturn revealStep3();
	TodoReturn revealStep4();
	TodoReturn revealStep5();
	TodoReturn scene();
	TodoReturn showUnlockDialog();

	virtual bool init();
	virtual void onExit();
	virtual void keyBackClicked();
	virtual TodoReturn dialogClosed(DialogLayer*);
}

[[link(android)]]
class SecretLayer4 : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DialogDelegate {
	// virtual ~SecretLayer4();

	static SecretLayer4* create() = win 0x30e500;

	TodoReturn getBasicMessage() = win 0x310480;
	TodoReturn getErrorMessage();
	TodoReturn getMessage() = win 0x30fd10;
	TodoReturn getThreadMessage() = win 0x30fdb0;
	TodoReturn nodeWithTag(int);
	void onBack(cocos2d::CCObject* sender);
	void onChest01(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);
	TodoReturn playCoinEffect();
	TodoReturn scene();
	TodoReturn selectAThread() = win 0x3088b0;
	TodoReturn showDialog(int);
	TodoReturn showFirstDialog();
	TodoReturn updateMessageLabel(gd::string) = win 0x308770;
	void updateSearchLabel(char const*) = win 0x3084b0;

	virtual bool init() = win 0x30e5a0;
	virtual void onExit();
	virtual void keyBackClicked();
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn dialogClosed(DialogLayer*);
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

	static SecretRewardsLayer* create(bool) = win 0x2fb610;

	TodoReturn createSecondaryLayer(int) = win 0x2fd430;
	TodoReturn generateChestItems(int) = win 0x2fd8a0;
	TodoReturn getPageColor(int);
	TodoReturn goToPage(int);
	bool init(bool) = win 0x2fb6b0;
	TodoReturn moveToMainLayer(cocos2d::CCObject*);
	TodoReturn moveToSecondaryLayer(int);
	void onBack(cocos2d::CCObject* sender);
	void onChestType(cocos2d::CCObject* sender);
	void onSelectItem(cocos2d::CCObject* sender) = win 0x2fe220;
	void onShop(cocos2d::CCObject* sender) = win 0x2fe580;
	void onSpecialItem(cocos2d::CCObject* sender) = win 0x2fe830;
	void onSwitchPage(cocos2d::CCObject* sender);
	TodoReturn scene(bool);
	TodoReturn showDialog01() = win 0x2fee50;
	TodoReturn showDialog03() = win 0x2ffb50;
	TodoReturn showDialogDiamond() = win 0x300f10;
	TodoReturn showDialogMechanic() = win 0x300560;
	TodoReturn showLockedChest();
	TodoReturn showShop(int);
	TodoReturn switchToOpenedState(CCMenuItemSpriteExtra*) = win 0x2feb00;
	TodoReturn updateBackButton();
	TodoReturn updateUnlockedLabel() = win 0x2febb0;

	virtual void onExit();
	virtual void keyBackClicked();
	virtual TodoReturn dialogClosed(DialogLayer*);
	virtual TodoReturn scrollLayerMoved(cocos2d::CCPoint);
}

[[link(android)]]
class SelectArtDelegate {
	virtual TodoReturn selectArtClosed(SelectArtLayer*);
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

	virtual void keyBackClicked();
}

[[link(android)]]
class SelectEventLayer : SetupTriggerPopup {
	// virtual ~SelectEventLayer();

	static SelectEventLayer* create(SetupEventLinkPopup*, gd::set<int>&);

	TodoReturn addToggle(int, gd::string);
	bool init(SetupEventLinkPopup*, gd::set<int>&);
	TodoReturn nextPosition();
	void onInfo(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class SelectFontLayer : FLAlertLayer {
	// virtual ~SelectFontLayer();

	static SelectFontLayer* create(LevelEditorLayer*);

	bool init(LevelEditorLayer*) = win 0x204DD0;
	void onChangeFont(cocos2d::CCObject* sender) = win 0x205460;
	void onClose(cocos2d::CCObject* sender);
	TodoReturn updateFontLabel() = win 0x205320;

	virtual void keyBackClicked();
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

	virtual void keyBackClicked();
}

[[link(android)]]
class SelectPremadeDelegate {
	virtual TodoReturn selectPremadeClosed(SelectPremadeLayer*, int);
}

[[link(android)]]
class SelectPremadeLayer : FLAlertLayer {
	// virtual ~SelectPremadeLayer();

	static SelectPremadeLayer* create();

	void onClose(cocos2d::CCObject* sender);
	void onSelectPremade(cocos2d::CCObject* sender);

	virtual bool init();
	virtual void keyBackClicked();
}

[[link(android)]]
class SelectSettingDelegate {
	virtual TodoReturn selectSettingClosed(SelectSettingLayer*);
}

[[link(android)]]
class SelectSettingLayer : FLAlertLayer {
	// virtual ~SelectSettingLayer();

	static SelectSettingLayer* create(SelectSettingType, int) = win 0x270c10;

	TodoReturn frameForItem(SelectSettingType, int) = win 0x271380;
	TodoReturn frameForValue(SelectSettingType, int);
	TodoReturn getSelectedFrame();
	TodoReturn getSelectedValue();
	TodoReturn idxToValue(SelectSettingType, int);
	bool init(SelectSettingType, int) = win 0x270cc0;
	void onClose(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender) = win 0x2715d0;
	TodoReturn valueToIdx(SelectSettingType, int);

	virtual void keyBackClicked();

	PAD = win 0x4;
	int m_settingID;
}

[[link(android)]]
class SelectSFXSortDelegate {
	virtual TodoReturn sortSelectClosed(SelectSFXSortLayer*);
}

[[link(android)]]
class SelectSFXSortLayer : FLAlertLayer {
	// virtual ~SelectSFXSortLayer();

	static SelectSFXSortLayer* create(AudioSortType);

	bool init(AudioSortType);
	void onClose(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
}

[[link(android)]]
class SequenceTriggerGameObject : ChanceTriggerGameObject {
	// virtual ~SequenceTriggerGameObject();

	static SequenceTriggerGameObject* create();

	TodoReturn addCount(int, int);
	TodoReturn addTarget(int, int);
	TodoReturn deleteTarget(int);
	TodoReturn reorderTarget(int, bool);
	TodoReturn updateSequenceTotalCount();

	virtual bool init();
	virtual TodoReturn resetObject();
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class SetColorIDPopup : SetIDPopup, GJSpecialColorSelectDelegate {
	// virtual ~SetColorIDPopup();

	static SetColorIDPopup* create(int);

	bool init(int);
	void onSelectSpecialColor(cocos2d::CCObject* sender);

	virtual TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
}

[[link(android)]]
class SetFolderPopup : SetIDPopup, SetTextPopupDelegate {
	// virtual ~SetFolderPopup();

	static SetFolderPopup* create(int, bool, gd::string) = win 0x210a80;

	bool init(int, bool, gd::string) = win 0x210b50;
	void onSetFolderName(cocos2d::CCObject* sender);

	virtual TodoReturn valueChanged();
	virtual void setTextPopupClosed(SetTextPopup*, gd::string);
}

[[link(android)]]
class SetGroupIDLayer : FLAlertLayer, TextInputDelegate {
	// virtual ~SetGroupIDLayer();

	static SetGroupIDLayer* create(GameObject*, cocos2d::CCArray*) = win 0x310cd0;

	TodoReturn addGroupID(int) = win 0x314320;
	void callRemoveFromGroup(float); // win 0x313ea0
	TodoReturn createTextInput(cocos2d::CCPoint, int, int, gd::string, float, int) = win 0x1bb10; // win 0x312b40
	TodoReturn determineStartValues() = win 0x313130;
	bool init(GameObject* obj, cocos2d::CCArray* objs) = win 0x310d80;
	void onAddGroup(cocos2d::CCObject* sender) = win 0x313fd0;
	void onAddGroupParent(cocos2d::CCObject* sender) = win 0x313fe0;
	void onAnim(cocos2d::CCObject* sender) = win 0x313580;
	TodoReturn onArrow(int, int) = win 0x312fc0;
	void onArrowLeft(cocos2d::CCObject* sender) = win 0x312f80;
	void onArrowRight(cocos2d::CCObject* sender) = win 0x312fa0;
	void onClose(cocos2d::CCObject* sender) = win 0x314bd0;
	void onCopy(cocos2d::CCObject* sender) = win 0x3134a0;
	void onExtra(cocos2d::CCObject* sender) = win 0x313530;
	void onExtra2(cocos2d::CCObject* sender) = win 0x313560;
	void onNextFreeEditorLayer1(cocos2d::CCObject* sender) = win 0x3142c0;
	void onNextFreeEditorLayer2(cocos2d::CCObject* sender) = win 0x3142f0;
	void onNextFreeOrderChannel(cocos2d::CCObject* sender) = win 0x314910;
	void onNextGroupID1(cocos2d::CCObject* sender) = win 0x3137e0;
	void onPaste(cocos2d::CCObject* sender) = win 0x3134c0;
	void onRemoveFromGroup(cocos2d::CCObject* sender) = win 0x313f20;
	void onSmoothEase(cocos2d::CCObject* sender);
	void onToggleGuide(cocos2d::CCObject* sender) = win 0x312aa0;
	void onToggleSelectedOrder(cocos2d::CCObject* sender) = win 0x312af0;
	void onZLayer(cocos2d::CCObject* sender) = win 0x314050;
	void onZLayerShift(cocos2d::CCObject* sender) = win 0x314150;
	TodoReturn removeGroupID(int); // win 0x314460
	TodoReturn updateEditorLabel() = win 0x314610;
	TodoReturn updateEditorLabel2() = win 0x3146a0;
	TodoReturn updateEditorLayerID() = win 0x314200;
	TodoReturn updateEditorLayerID2() = win 0x314260;
	TodoReturn updateEditorOrder() = win 0x314b40;
	TodoReturn updateEditorOrderLabel() = win 0x314850;
	TodoReturn updateGroupIDButtons() = win 0x313810;
	TodoReturn updateGroupIDLabel() = win 0x3147c0;
	TodoReturn updateOrderChannel() = win 0x314ab0;
	TodoReturn updateOrderChannelLabel() = win 0x3148b0;
	TodoReturn updateZLayerButtons();
	TodoReturn updateZOrder() = win 0x314590;
	TodoReturn updateZOrderLabel() = win 0x314730;

	virtual void keyBackClicked();
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	
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

	static SetIDPopup* create(int, int, int, gd::string, gd::string, bool, int, float, bool, bool) = win 0x20f840;

	bool init(int, int, int, gd::string, gd::string, bool, int, float, bool, bool) = win 0x20f980;
	void onCancel(cocos2d::CCObject* sender) = win 0x210410;
	void onClose(cocos2d::CCObject* sender) = win 0x210430;
	void onItemIDArrow(cocos2d::CCObject* sender) = win 0x2101e0;
	void onResetValue(cocos2d::CCObject* sender) = win 0x210240;
	TodoReturn updateTextInputLabel() = win 0x2102f0;

	virtual void keyBackClicked();
	virtual void show() = win 0x2103a0;
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn valueChanged();

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

	static SetItemIDLayer* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn updateEditorLabel();

	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn valueDidChange(int, float);
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetLevelOrderPopup : SetIDPopup {
	// virtual ~SetLevelOrderPopup();

	static SetLevelOrderPopup* create(int, int, int);

	bool init(int, int, int);
	void onOrderButton(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetTargetIDLayer : SetupTriggerPopup {
	// virtual ~SetTargetIDLayer();

	static SetTargetIDLayer* create(EffectGameObject*, cocos2d::CCArray*, gd::string, gd::string, int, int, int);

	bool init(EffectGameObject*, cocos2d::CCArray*, gd::string, gd::string, int, int, int);

	virtual TodoReturn determineStartValues();
	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetTextPopup : FLAlertLayer, TextInputDelegate {
	// virtual ~SetTextPopup();

	static SetTextPopup* create(gd::string, gd::string, int, gd::string, gd::string, bool, float) = win 0x211180;

	bool init(gd::string, gd::string, int, gd::string, gd::string, bool, float) = win 0x211340;
	void onCancel(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onResetValue(cocos2d::CCObject* sender);
	TodoReturn updateTextInputLabel();

	virtual void keyBackClicked();
	virtual void show();
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetTextPopupDelegate {
	virtual void setTextPopupClosed(SetTextPopup*, gd::string) {}
}

[[link(android)]]
class SetupAdvFollowEditPhysicsPopup : SetupTriggerPopup {
	// virtual ~SetupAdvFollowEditPhysicsPopup();

	static SetupAdvFollowEditPhysicsPopup* create(AdvancedFollowEditObject*, cocos2d::CCArray*);

	bool init(AdvancedFollowEditObject*, cocos2d::CCArray*);

	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupAdvFollowPopup : SetupTriggerPopup, SelectPremadeDelegate {
	// virtual ~SetupAdvFollowPopup();

	static SetupAdvFollowPopup* create(AdvancedFollowTriggerObject*, cocos2d::CCArray*);

	bool init(AdvancedFollowTriggerObject*, cocos2d::CCArray*);
	void onMode(cocos2d::CCObject* sender);
	void onPremade(cocos2d::CCObject* sender);
	TodoReturn updateMode(int);

	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn updateDefaultTriggerValues();
	virtual TodoReturn valueDidChange(int, float);
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	virtual TodoReturn selectPremadeClosed(SelectPremadeLayer*, int);
}

[[link(android)]]
class SetupAdvFollowRetargetPopup : SetupTriggerPopup {
	// virtual ~SetupAdvFollowRetargetPopup();

	static SetupAdvFollowRetargetPopup* create(AdvancedFollowEditObject*, cocos2d::CCArray*);

	bool init(AdvancedFollowEditObject*, cocos2d::CCArray*);

	virtual TodoReturn updateDefaultTriggerValues();
	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupAnimationPopup : SetupTriggerPopup {
	// virtual ~SetupAnimationPopup();

	static SetupAnimationPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	void onAnimationIDArrow(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	TodoReturn updateAnimationID();
	TodoReturn updateAnimationTextInputLabel();
	TodoReturn updateTargetID();
	TodoReturn updateTextInputLabel();

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupAnimSettingsPopup : SetupTriggerPopup {
	// virtual ~SetupAnimSettingsPopup();

	static SetupAnimSettingsPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn updateAnimSettings();

	virtual void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupAreaAnimTriggerPopup : SetupAreaTintTriggerPopup {
	// virtual ~SetupAreaAnimTriggerPopup();

	static SetupAreaAnimTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*, int) = win 0x322760;

	TodoReturn createValueControlAdvancedAnim(int, gd::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float min, float max, int, int, GJInputStyle) = win 0x370030;
	bool init(EnterEffectObject*, cocos2d::CCArray*, int) = win 0x322810;
	void onDeactivateAnimValue(cocos2d::CCObject* sender);
	TodoReturn updateTargetIDLabel();

	virtual TodoReturn updateDefaultTriggerValues();
	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupAreaFadeTriggerPopup : SetupAreaMoveTriggerPopup {
	// virtual ~SetupAreaFadeTriggerPopup();

	static SetupAreaFadeTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*) = win 0x321140;

	bool init(EnterEffectObject*, cocos2d::CCArray*) = win 0x3211f0;
}

[[link(android)]]
class SetupAreaMoveTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupAreaMoveTriggerPopup();
	// SetupAreaMoveTriggerPopup();

	static SetupAreaMoveTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*) = win 0x31e580;

	TodoReturn addAreaDefaultControls(int);
	TodoReturn getModeValues(int, int&, bool&, bool&);
	bool init(EnterEffectObject*, cocos2d::CCArray*) = win 0x31e630;
	void onMode(cocos2d::CCObject* sender);
	void onNextFreeEffectID(cocos2d::CCObject* sender);
	void onSpecialTarget(cocos2d::CCObject* sender);
	TodoReturn updateEnterTargetIDState();

	virtual TodoReturn updateInputValue(int, float&);
	virtual TodoReturn updateDefaultTriggerValues();
	virtual TodoReturn updateInputNode(int, float);
	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn triggerValueFromSliderValue(int, float);
	virtual TodoReturn triggerSliderValueFromValue(int, float);
}

[[link(android)]]
class SetupAreaRotateTriggerPopup : SetupAreaMoveTriggerPopup {
	// virtual ~SetupAreaRotateTriggerPopup();

	static SetupAreaRotateTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*) = win 0x320c00;

	bool init(EnterEffectObject*, cocos2d::CCArray*) = win 0x320cb0;
}

[[link(android)]]
class SetupAreaTintTriggerPopup : SetupAreaMoveTriggerPopup, HSVWidgetDelegate {
	// virtual ~SetupAreaTintTriggerPopup();

	static SetupAreaTintTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*) = win 0x321690;

	bool init(EnterEffectObject*, cocos2d::CCArray*) = win 0x321740;
	void onHSV(cocos2d::CCObject* sender);
	TodoReturn updateHSVButton();

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue);
}

[[link(android)]]
class SetupAreaTransformTriggerPopup : SetupAreaMoveTriggerPopup {
	// virtual ~SetupAreaTransformTriggerPopup();

	static SetupAreaTransformTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*) = win 0x3205e0;

	bool init(EnterEffectObject*, cocos2d::CCArray*) = win 0x320690;
}

[[link(android)]]
class SetupAreaTriggerPopup : SetupAreaMoveTriggerPopup {
	// virtual ~SetupAreaTriggerPopup();

	static SetupAreaTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*) = win 0x3222e0;

	bool init(EnterEffectObject*, cocos2d::CCArray*) = win 0x322390;
}

[[link(android)]]
class SetupArtSwitchPopup : SetupTriggerPopup, SelectArtDelegate {
	// virtual ~SetupArtSwitchPopup();

	static SetupArtSwitchPopup* create(ArtTriggerGameObject*, cocos2d::CCArray*, int);

	bool init(ArtTriggerGameObject*, cocos2d::CCArray*, int);
	void onArt(cocos2d::CCObject* sender);

	virtual TodoReturn selectArtClosed(SelectArtLayer*);
}

[[link(android)]]
class SetupAudioLineGuidePopup : SetupTriggerPopup, SelectSettingDelegate {
	// virtual ~SetupAudioLineGuidePopup();

	static SetupAudioLineGuidePopup* create(AudioLineGuideGameObject*, cocos2d::CCArray*);

	bool init(AudioLineGuideGameObject*, cocos2d::CCArray*);
	void onSpeed(cocos2d::CCObject* sender);

	virtual TodoReturn selectSettingClosed(SelectSettingLayer*);
}

[[link(android)]]
class SetupAudioTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupAudioTriggerPopup();

	TodoReturn addProxVolControls(int);
	TodoReturn addTimeControls(int, float);
	void onProxMode(cocos2d::CCObject* sender);
	TodoReturn updateSpecialGroup();

	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupBGSpeedTrigger : SetupTriggerPopup {
	// virtual ~SetupBGSpeedTrigger();

	static SetupBGSpeedTrigger* create(EffectGameObject*, cocos2d::CCArray*, int);

	bool init(EffectGameObject*, cocos2d::CCArray*, int);
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

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupCameraGuidePopup : SetupTriggerPopup {
	// virtual ~SetupCameraGuidePopup();

	static SetupCameraGuidePopup* create(CameraTriggerGameObject*, cocos2d::CCArray*);

	bool init(CameraTriggerGameObject*, cocos2d::CCArray*);
}

[[link(android)]]
class SetupCameraModePopup : SetupTriggerPopup {
	// virtual ~SetupCameraModePopup();

	static SetupCameraModePopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	void onEditCameraSettings(cocos2d::CCObject* sender);
	void onUnboundMode(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateCameraEasing();
	TodoReturn updateCameraEasingLabel();
	TodoReturn updateCameraPadding();
	TodoReturn updateCameraPaddingLabel();
	TodoReturn updateItemVisibility();

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupCameraOffsetTrigger : SetupTriggerPopup {
	// virtual ~SetupCameraOffsetTrigger();

	static SetupCameraOffsetTrigger* create(CameraTriggerGameObject*, cocos2d::CCArray*);

	bool init(CameraTriggerGameObject*, cocos2d::CCArray*);
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

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float);
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
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float);
}

[[link(android)]]
class SetupCameraRotatePopup2 : SetupTriggerPopup {
	// virtual ~SetupCameraRotatePopup2();

	static SetupCameraRotatePopup2* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
}

[[link(android)]]
class SetupCheckpointPopup : SetupTriggerPopup {
	// virtual ~SetupCheckpointPopup();

	static SetupCheckpointPopup* create(CheckpointGameObject*, cocos2d::CCArray*);

	bool init(CheckpointGameObject*, cocos2d::CCArray*);
}

[[link(android)]]
class SetupCoinLayer : SetupTriggerPopup {
	// virtual ~SetupCoinLayer();

	static SetupCoinLayer* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
}

[[link(android)]]
class SetupCollisionStateTriggerPopup : SetupInstantCollisionTriggerPopup {
	// virtual ~SetupCollisionStateTriggerPopup();

	static SetupCollisionStateTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x32a940;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x32a9f0;
}

[[link(android)]]
class SetupCollisionTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupCollisionTriggerPopup();

	static SetupCollisionTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x328a90;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x328b40;
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
	TodoReturn updateItemID2InputLabel();
	TodoReturn updateItemIDInputLabel();
	TodoReturn updateTargetID();
	TodoReturn updateTargetIDInputLabel();

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupCountTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupCountTriggerPopup();

	static SetupCountTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x32ad80;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x32ae30;
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

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupDashRingPopup : SetupTriggerPopup {
	// virtual ~SetupDashRingPopup();

	static SetupDashRingPopup* create(DashRingObject*, cocos2d::CCArray*);

	bool init(DashRingObject*, cocos2d::CCArray*);
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

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupEnterEffectPopup : SetupTriggerPopup, HSVWidgetDelegate {
	// virtual ~SetupEnterEffectPopup();

	static SetupEnterEffectPopup* create(EnterEffectObject*, cocos2d::CCArray*, int);

	bool init(EnterEffectObject*, cocos2d::CCArray*, int);
	void onEnterType(cocos2d::CCObject* sender);
	void onHSV(cocos2d::CCObject* sender);
	void onNextFreeEnterChannel(cocos2d::CCObject* sender);
	void onNextFreeEnterEffectID(cocos2d::CCObject* sender);
	TodoReturn updateHSVButton();

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn updateInputValue(int, float&);
	virtual TodoReturn updateInputNode(int, float);
	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn triggerValueFromSliderValue(int, float);
	virtual TodoReturn triggerSliderValueFromValue(int, float);
	virtual TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue);
}

[[link(android)]]
class SetupEnterTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupEnterTriggerPopup();

	static SetupEnterTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*) = win 0x205930;

	bool init(EnterEffectObject*, cocos2d::CCArray*) = win 0x2059e0;
	void onEnterType(cocos2d::CCObject* sender);

	virtual TodoReturn determineStartValues();
}

[[link(android)]]
class SetupEventLinkPopup : SetupTriggerPopup {
	// virtual ~SetupEventLinkPopup();

	static SetupEventLinkPopup* create(EventLinkTrigger*, cocos2d::CCArray*);

	bool init(EventLinkTrigger*, cocos2d::CCArray*);
	void onSelectEvent(cocos2d::CCObject* sender);
	TodoReturn updateEventIDs(gd::set<int>&);
}

[[link(android)]]
class SetupForceBlockPopup : SetupTriggerPopup {
	// virtual ~SetupForceBlockPopup();

	static SetupForceBlockPopup* create(ForceBlockGameObject*, cocos2d::CCArray*);

	bool init(ForceBlockGameObject*, cocos2d::CCArray*);

	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupGameplayOffsetPopup : SetupTriggerPopup {
	// virtual ~SetupGameplayOffsetPopup();

	static SetupGameplayOffsetPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	void onDefaultValues(cocos2d::CCObject* sender);

	virtual TodoReturn updateInputValue(int, float&);
	virtual TodoReturn updateInputNode(int, float);
	virtual TodoReturn triggerValueFromSliderValue(int, float);
	virtual TodoReturn triggerSliderValueFromValue(int, float);
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupGradientPopup : SetupTriggerPopup {
	// virtual ~SetupGradientPopup();

	static SetupGradientPopup* create(GradientTriggerObject*, cocos2d::CCArray*);

	bool init(GradientTriggerObject*, cocos2d::CCArray*);
	void onBlending(cocos2d::CCObject* sender);
	void onZLayer(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateBlending();
	TodoReturn updateBlendingLabel();
	TodoReturn updateGradientLabels(bool);
	TodoReturn updateZLayerButtons();

	virtual TodoReturn determineStartValues();
	virtual void onPlusButton(cocos2d::CCObject* sender);
	virtual TodoReturn updateToggleItem(int, bool);
	virtual TodoReturn valueDidChange(int, float);
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
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupGravityTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupGravityTriggerPopup();

	static SetupGravityTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x335b20;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x335bd0;

	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupInstantCollisionTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupInstantCollisionTriggerPopup();

	static SetupInstantCollisionTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x32a2a0;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x32a350;
	TodoReturn updateSpecialNodes();

	virtual TodoReturn updateDefaultTriggerValues();
	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupInstantCountPopup : SetupTriggerPopup {
	// virtual ~SetupInstantCountPopup();

	static SetupInstantCountPopup* create(CountTriggerGameObject*, cocos2d::CCArray*);

	bool init(CountTriggerGameObject*, cocos2d::CCArray*);
	void onCountType(cocos2d::CCObject* sender);
	void onEnableGroup(cocos2d::CCObject* sender);
	void onTargetCountArrow(cocos2d::CCObject* sender);
	void onTargetID2Arrow(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	TodoReturn updateCountTextInputLabel();
	TodoReturn updateItemID();
	TodoReturn updateItemIDInputLabel();
	TodoReturn updateTargetCount();
	TodoReturn updateTargetID();
	TodoReturn updateTargetIDInputLabel();

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupInteractObjectPopup : SetupTriggerPopup {
	// virtual ~SetupInteractObjectPopup();

	static SetupInteractObjectPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn updateItems();

	virtual void onClose(cocos2d::CCObject* sender);
	virtual void onPlusButton(cocos2d::CCObject* sender);
	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupItemCompareTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupItemCompareTriggerPopup();

	static SetupItemCompareTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*) = win 0x369a60;

	bool init(ItemTriggerGameObject*, cocos2d::CCArray*) = win 0x369b10;
	void onOpButton(cocos2d::CCObject* sender);
	TodoReturn updateFormulaLabel();
	TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int);

	virtual TodoReturn valueDidChange(int, float);
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupItemEditTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupItemEditTriggerPopup();

	static SetupItemEditTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*) = win 0x367c80;

	bool init(ItemTriggerGameObject*, cocos2d::CCArray*) = win 0x367d30;
	void onOpButton(cocos2d::CCObject* sender);
	TodoReturn updateFormulaLabel();
	TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int);

	virtual TodoReturn valueDidChange(int, float);
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupKeyframeAnimPopup : SetupTriggerPopup {
	// virtual ~SetupKeyframeAnimPopup();

	static SetupKeyframeAnimPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
}

[[link(android)]]
class SetupKeyframePopup : SetupTriggerPopup {
	// virtual ~SetupKeyframePopup();

	static SetupKeyframePopup* create(KeyframeGameObject*, cocos2d::CCArray*, LevelEditorLayer*);

	bool init(KeyframeGameObject*, cocos2d::CCArray*, LevelEditorLayer*);
	void onTimeMode(cocos2d::CCObject* sender);
	TodoReturn refreshPreviewArt();
	TodoReturn updateTimeModeButtons();

	virtual void onClose(cocos2d::CCObject* sender);
	virtual void onCustomButton(cocos2d::CCObject* sender);
	virtual TodoReturn valueDidChange(int, float);
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupMGTrigger : SetupTriggerPopup {
	// virtual ~SetupMGTrigger();

	static SetupMGTrigger* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	void onEasing(cocos2d::CCObject* sender);
	void onEasingRate(cocos2d::CCObject* sender);
	TodoReturn posFromSliderValue(float);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn sliderValueFromPos(int);
	TodoReturn sliderYChanged(cocos2d::CCObject*);
	TodoReturn toggleEasingRateVisibility();
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateEasingLabel();
	TodoReturn updateEasingRateLabel();
	TodoReturn updateMoveCommandEasing();
	TodoReturn updateMoveCommandEasingRate();
	TodoReturn updateMoveCommandPosY();
	TodoReturn updateValueYLabel();

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float);
}

[[link(android)]]
class SetupMoveCommandPopup : SetupTriggerPopup {
	// virtual ~SetupMoveCommandPopup();

	static SetupMoveCommandPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x1f9810;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x1f98c0;
	TodoReturn updateControlVisibility();

	virtual TodoReturn updateInputValue(int, float&);
	virtual TodoReturn updateInputNode(int, float);
	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn triggerValueFromSliderValue(int, float);
	virtual TodoReturn triggerSliderValueFromValue(int, float);
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupObjectControlPopup : SetupTriggerPopup {
	// virtual ~SetupObjectControlPopup();

	static SetupObjectControlPopup* create(ObjectControlGameObject*, cocos2d::CCArray*);

	bool init(ObjectControlGameObject*, cocos2d::CCArray*);
}

[[link(android)]]
class SetupObjectOptions2Popup : SetupTriggerPopup {
	// virtual ~SetupObjectOptions2Popup();

	static SetupObjectOptions2Popup* create(GameObject*, cocos2d::CCArray*);

	bool init(GameObject*, cocos2d::CCArray*);

	virtual void onPlusButton(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupObjectOptionsPopup : FLAlertLayer, TextInputDelegate {
	// virtual ~SetupObjectOptionsPopup();

	static SetupObjectOptionsPopup* create(GameObject*, cocos2d::CCArray*, SetGroupIDLayer*);

	bool init(GameObject*, cocos2d::CCArray*, SetGroupIDLayer*);
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

	virtual void keyBackClicked();
	virtual void show();
	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupObjectTogglePopup : SetupTriggerPopup {
	// virtual ~SetupObjectTogglePopup();

	static SetupObjectTogglePopup* create(EffectGameObject*, cocos2d::CCArray*, bool);

	bool init(EffectGameObject*, cocos2d::CCArray*, bool);

	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn valueDidChange(int, float);
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
	TodoReturn updateOpacity();
	TodoReturn updateOpacityLabel();
	TodoReturn updateTargetID();
	TodoReturn updateTextInputLabel();

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupOptionsTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupOptionsTriggerPopup();

	static SetupOptionsTriggerPopup* create(GameOptionsTrigger*, cocos2d::CCArray*) = win 0x340390;

	TodoReturn addOption(int, gd::string);
	bool init(GameOptionsTrigger*, cocos2d::CCArray*) = win 0x340440;

	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupPersistentItemTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupPersistentItemTriggerPopup();

	static SetupPersistentItemTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*) = win 0x36b630;

	bool init(ItemTriggerGameObject*, cocos2d::CCArray*) = win 0x36b6e0;
}

[[link(android)]]
class SetupPickupTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupPickupTriggerPopup();

	static SetupPickupTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x340b80;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x340c30;
	TodoReturn updateState();

	virtual void onPlusButton(cocos2d::CCObject* sender);
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupPlatformerEndPopup : SetupTriggerPopup {
	// virtual ~SetupPlatformerEndPopup();

	static SetupPlatformerEndPopup* create(EndTriggerGameObject*, cocos2d::CCArray*);

	bool init(EndTriggerGameObject*, cocos2d::CCArray*);
}

[[link(android)]]
class SetupPlayerControlPopup : SetupTriggerPopup {
	// virtual ~SetupPlayerControlPopup();

	static SetupPlayerControlPopup* create(PlayerControlGameObject*, cocos2d::CCArray*);

	bool init(PlayerControlGameObject*, cocos2d::CCArray*);
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
	TodoReturn updateCameraEasingLabel();
	TodoReturn updateCameraPadding();
	TodoReturn updateCameraPaddingLabel();
	TodoReturn updateItemVisibility();

	virtual void keyBackClicked();
}

[[link(android)]]
class SetupPulsePopup : SetupTriggerPopup, cocos2d::extension::ColorPickerDelegate, GJSpecialColorSelectDelegate {
	// virtual ~SetupPulsePopup();

	static SetupPulsePopup* create(EffectGameObject*, cocos2d::CCArray*);

	TodoReturn getColorValue();
	bool init(EffectGameObject*, cocos2d::CCArray*);
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
	TodoReturn sliderChanged(cocos2d::CCObject*);
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

	virtual void show();
	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn colorValueChanged(cocos2d::ccColor3B);
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
}

[[link(android)]]
class SetupRandAdvTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupRandAdvTriggerPopup();

	static SetupRandAdvTriggerPopup* create(RandTriggerGameObject*, cocos2d::CCArray*) = win 0x346250;

	TodoReturn addChance(int, int);
	TodoReturn addChanceToObject(RandTriggerGameObject*, int, int);
	TodoReturn callRemoveFromGroup(float);
	bool init(RandTriggerGameObject*, cocos2d::CCArray*) = win 0x346300;
	void onAddChance(cocos2d::CCObject* sender);
	void onRemoveFromGroup(cocos2d::CCObject* sender);
	TodoReturn removeGroupID(int);
	TodoReturn removeGroupIDFromObject(RandTriggerGameObject*, int);
	TodoReturn updateGroupIDButtons();

	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupRandTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupRandTriggerPopup();

	static SetupRandTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x348530;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x3485e0;
	void onTargetID2Arrow(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateChance();
	TodoReturn updateChanceLabel(bool);
	TodoReturn updateTargetID();
	TodoReturn updateTargetID2();
	TodoReturn updateTextInputLabel();
	TodoReturn updateTextInputLabel2();

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupResetTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupResetTriggerPopup();

	static SetupResetTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x367a20;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x367ad0;
}

[[link(android)]]
class SetupReverbPopup : SetupTriggerPopup {
	// virtual ~SetupReverbPopup();

	static SetupReverbPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*);

	bool init(SFXTriggerGameObject*, cocos2d::CCArray*);
	void onPlay(cocos2d::CCObject* sender);
	void onReverb(cocos2d::CCObject* sender);
	TodoReturn updateReverbLabel();

	virtual void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupRotateCommandPopup : SetupTriggerPopup {
	// virtual ~SetupRotateCommandPopup();

	static SetupRotateCommandPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x2188f0;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x2189a0;
	void onInfiniteDuration(cocos2d::CCObject* sender);
	TodoReturn updateControlVisibility();

	virtual TodoReturn updateInputNode(int, float);
	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn triggerValueFromSliderValue(int, float);
	virtual TodoReturn triggerSliderValueFromValue(int, float);
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupRotateGameplayPopup : SetupTriggerPopup {
	// virtual ~SetupRotateGameplayPopup();

	static SetupRotateGameplayPopup* create(RotateGameplayGameObject*, cocos2d::CCArray*);

	bool init(RotateGameplayGameObject*, cocos2d::CCArray*);

	virtual void onPlusButton(cocos2d::CCObject* sender);
	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupRotatePopup : SetupTriggerPopup {
	// virtual ~SetupRotatePopup();

	static SetupRotatePopup* create(EnhancedGameObject*, cocos2d::CCArray*);

	bool init(EnhancedGameObject*, cocos2d::CCArray*);

	virtual void onClose(cocos2d::CCObject* sender);
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupSequenceTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupSequenceTriggerPopup();

	static SetupSequenceTriggerPopup* create(SequenceTriggerGameObject*) = win 0x34b450;

	bool init(SequenceTriggerGameObject*) = win 0x34b4f0;
	void onAddChance(cocos2d::CCObject* sender);
	void onChangeOrder(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);
	TodoReturn updateGroupIDButtons();

	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
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

	TodoReturn createSFXWidget();
	bool init(SFXTriggerGameObject*, cocos2d::CCArray*);
	void onBrowseSFX(cocos2d::CCObject* sender);
	TodoReturn updateLength();

	virtual TodoReturn pageChanged();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual void onPlusButton(cocos2d::CCObject* sender);
	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn sfxObjectSelected(SFXInfoObject*);
	virtual TodoReturn getActiveSFXID();
	virtual TodoReturn overridePlaySFX(SFXInfoObject*);
	virtual TodoReturn sfxBrowserClosed(SFXBrowser*);
}

[[link(android)]]
class SetupShaderEffectPopup : SetupTriggerPopup {
	// virtual ~SetupShaderEffectPopup();

	static SetupShaderEffectPopup* create(EffectGameObject*, cocos2d::CCArray*, int);

	bool init(EffectGameObject*, cocos2d::CCArray*, int);
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
	TodoReturn setupShaderTrigger();
	TodoReturn setupShockLine();
	TodoReturn setupShockWave();
	TodoReturn setupSplitScreen();
	TodoReturn updateZLayerButtons();
	TodoReturn zLayerToString(int);

	virtual TodoReturn toggleGroup(int, bool);
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn updateDefaultTriggerValues();
	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupShakePopup : SetupTriggerPopup {
	// virtual ~SetupShakePopup();

	static SetupShakePopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateInterval();
	TodoReturn updateIntervalLabel(bool);
	TodoReturn updateShake();
	TodoReturn updateShakeLabel(bool);

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupSmartBlockLayer : FLAlertLayer, TextInputDelegate, SelectArtDelegate {
	// virtual ~SetupSmartBlockLayer();

	static SetupSmartBlockLayer* create(SmartGameObject*, cocos2d::CCArray*);

	TodoReturn determineStartValues();
	bool init(SmartGameObject*, cocos2d::CCArray*);
	void onAllowFlipping(cocos2d::CCObject* sender);
	void onAllowRotation(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onCreate(cocos2d::CCObject* sender);
	void onCreateAll(cocos2d::CCObject* sender);
	void onCreateTemplate(cocos2d::CCObject* sender);
	void onDontDelete(cocos2d::CCObject* sender);
	void onIgnoreCorners(cocos2d::CCObject* sender);
	void onNearbyReference(cocos2d::CCObject* sender);
	void onPasteTemplate(cocos2d::CCObject* sender);
	void onReferenceOnly(cocos2d::CCObject* sender);
	void onSelectPremade(cocos2d::CCObject* sender);
	void onSelectTemplate(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
	virtual void show();
	virtual TodoReturn selectArtClosed(SelectArtLayer*);
}

[[link(android)]]
class SetupSmartTemplateLayer : FLAlertLayer, TextInputDelegate, FLAlertLayerProtocol {
	// virtual ~SetupSmartTemplateLayer();

	static SetupSmartTemplateLayer* create(GJSmartTemplate*) = win 0x35a240;

	bool init(GJSmartTemplate*) = win 0x35a2e0;
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
class SetupSongTriggerPopup : SetupAudioTriggerPopup, MusicDownloadDelegate, SongPlaybackDelegate {
	// virtual ~SetupSongTriggerPopup();

	static SetupSongTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x35d280;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x35d330;
	void onResetSongTime(cocos2d::CCObject* sender);
	void onSavePlaybackPos(cocos2d::CCObject* sender);
	TodoReturn updateApplyPrepare(bool);
	TodoReturn updateLength();
	TodoReturn updateSongTimeSlider();

	virtual TodoReturn pageChanged();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn onPlayback(SongInfoObject*);
}

[[link(android)]]
class SetupSpawnParticlePopup : SetupTriggerPopup {
	// virtual ~SetupSpawnParticlePopup();

	static SetupSpawnParticlePopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x366430;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x3664e0;
}

[[link(android)]]
class SetupSpawnPopup : SetupTriggerPopup {
	// virtual ~SetupSpawnPopup();

	static SetupSpawnPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x35e2d0;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x35e380;
	void onAddRemap(cocos2d::CCObject* sender);
	void onDeleteRemap(cocos2d::CCObject* sender);
	void onSelectRemap(cocos2d::CCObject* sender);
	TodoReturn queueUpdateButtons();
	TodoReturn updateRemapButtons(float);

	virtual void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupStaticCameraPopup : SetupTriggerPopup {
	// virtual ~SetupStaticCameraPopup();

	static SetupStaticCameraPopup* create(CameraTriggerGameObject*, cocos2d::CCArray*);

	bool init(CameraTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn updateState();

	virtual TodoReturn valueDidChange(int, float);
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupStopTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupStopTriggerPopup();

	static SetupStopTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x36d0c0;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x36d170;

	virtual void onClose(cocos2d::CCObject* sender);
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupTeleportPopup : SetupTriggerPopup {
	// virtual ~SetupTeleportPopup();

	static SetupTeleportPopup* create(TeleportPortalObject*, cocos2d::CCArray*, int, bool);

	bool init(TeleportPortalObject*, cocos2d::CCArray*, int, bool);
	void onTeleportGravity(cocos2d::CCObject* sender);
	TodoReturn updateTeleportGravityState(int);

	virtual TodoReturn determineStartValues();
	virtual TodoReturn updateDefaultTriggerValues();
	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupTimerControlTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupTimerControlTriggerPopup();

	static SetupTimerControlTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*) = win 0x3617b0;

	bool init(TimerTriggerGameObject*, cocos2d::CCArray*) = win 0x361860;

	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupTimerEventTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupTimerEventTriggerPopup();

	static SetupTimerEventTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*) = win 0x361400;

	bool init(TimerTriggerGameObject*, cocos2d::CCArray*) = win 0x3614b0;
}

[[link(android)]]
class SetupTimerTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupTimerTriggerPopup();

	static SetupTimerTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*) = win 0x360e90;

	bool init(TimerTriggerGameObject*, cocos2d::CCArray*) = win 0x360f40;
}

[[link(android)]]
class SetupTimeWarpPopup : SetupTriggerPopup {
	// virtual ~SetupTimeWarpPopup();

	static SetupTimeWarpPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateTimeWarp();
	TodoReturn updateTimeWarpLabel();

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupTouchTogglePopup : SetupTriggerPopup {
	// virtual ~SetupTouchTogglePopup();

	static SetupTouchTogglePopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	void onControlMode(cocos2d::CCObject* sender);
	void onDualTouchMode(cocos2d::CCObject* sender);
	void onHoldMode(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onTouchMode(cocos2d::CCObject* sender);
	TodoReturn updateTargetID();
	TodoReturn updateTextInputLabel();

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetupTransformPopup : SetupTriggerPopup {
	// virtual ~SetupTransformPopup();

	static SetupTransformPopup* create(TransformTriggerGameObject*, cocos2d::CCArray*);

	bool init(TransformTriggerGameObject*, cocos2d::CCArray*);
}

[[link(android)]]
class SetupTriggerPopup : FLAlertLayer, TextInputDelegate, ConfigureValuePopupDelegate, SliderDelegate {
	// virtual ~SetupTriggerPopup();
	// SetupTriggerPopup();

	static SetupTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*, float, float, int);
	static SetupTriggerPopup* create(float, float);

	TodoReturn addCloseButton(gd::string);
	TodoReturn addHelpButton(gd::string, gd::string, float);
	TodoReturn addInfoLabel(gd::string, float, cocos2d::CCPoint, int, int);
	TodoReturn addObjectsToGroup(cocos2d::CCArray*, int);
	TodoReturn addObjectsToPage(cocos2d::CCArray*, int);
	TodoReturn addObjectToGroup(cocos2d::CCObject*, int);
	TodoReturn addObjectToPage(cocos2d::CCObject*, int);
	TodoReturn addTitle(gd::string);
	TodoReturn closeInputNodes();
	TodoReturn createCustomButton(int, gd::string, gd::string, cocos2d::CCPoint, float, float, bool, int, int);
	TodoReturn createCustomEasingControls(gd::string, cocos2d::CCPoint, float, int, int, int, int);
	TodoReturn createCustomToggleValueControl(int, bool, bool, gd::string, cocos2d::CCPoint, bool, int, int);
	TodoReturn createEasingControls(cocos2d::CCPoint, float, int, int);
	TodoReturn createMultiTriggerItems(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);
	TodoReturn createMultiTriggerItemsCorner();
	TodoReturn createMultiTriggerItemsDefault();
	TodoReturn createMultiTriggerItemsDefaultHorizontal();
	TodoReturn createMultiTriggerItemsDefaultVertical();
	TodoReturn createPageButtons(float, int);
	TodoReturn createPlusButton(int, cocos2d::CCPoint, float, gd::string, int, int);
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCPoint);
	TodoReturn createToggleValueControl(int, gd::string, cocos2d::CCPoint, bool, int, int, float);
	TodoReturn createToggleValueControlAdvanced(int, gd::string, cocos2d::CCPoint, bool, int, int, float, float, float, cocos2d::CCPoint);
	TodoReturn createValueControl(int, gd::string, cocos2d::CCPoint, float, float, float);
	TodoReturn createValueControlAdvanced(int, gd::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float, float, int, int, GJInputStyle, int, bool);
	TodoReturn createValueControlWArrows(int, gd::string, cocos2d::CCPoint, float);
	TodoReturn getGroupContainer(int);
	TodoReturn getMaxSliderValue(int);
	TodoReturn getMinSliderValue(int);
	TodoReturn getObjects();
	TodoReturn getPageContainer(int);
	TodoReturn getTriggerValue(int, GameObject*);
	TodoReturn getTruncatedValue(float, int);
	TodoReturn getTruncatedValueByTag(int, float);
	TodoReturn goToPage(int, bool);
	TodoReturn hideAll();
	bool init(EffectGameObject*, cocos2d::CCArray*, float, float, int) = win 0x36e210;
	TodoReturn onCustomEaseArrow(int, bool);
	void onCustomEaseArrowDown(cocos2d::CCObject* sender);
	void onCustomEaseArrowUp(cocos2d::CCObject* sender);
	void onCustomEaseRate(cocos2d::CCObject* sender);
	void onDisableValue(cocos2d::CCObject* sender);
	void onEase(cocos2d::CCObject* sender);
	void onEaseRate(cocos2d::CCObject* sender);
	void onMultiTrigger(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	void onSpawnedByTrigger(cocos2d::CCObject* sender);
	void onToggleTriggerValue(cocos2d::CCObject* sender);
	void onTouchTriggered(cocos2d::CCObject* sender);
	TodoReturn postSetup();
	TodoReturn preSetup();
	TodoReturn refreshGroupVisibility();
	TodoReturn removeObjectFromGroup(cocos2d::CCObject*, int);
	TodoReturn removeObjectFromPage(cocos2d::CCObject*, int);
	TodoReturn resetDisabledValues();
	void setMaxSliderValue(float, int);
	void setMinSliderValue(float, int);
	TodoReturn shouldLimitValue(int);
	TodoReturn toggleBG(bool);
	TodoReturn toggleCustomEaseRateVisibility(int, int);
	TodoReturn toggleDisableButtons(bool);
	TodoReturn toggleEaseRateVisibility();
	TodoReturn toggleLimitValue(int, bool);
	TodoReturn togglePageArrows(bool);
	TodoReturn triggerArrowChanged(int, bool);
	TodoReturn triggerArrowLeft(cocos2d::CCObject*);
	TodoReturn triggerArrowRight(cocos2d::CCObject*);
	TodoReturn triggerSliderChanged(cocos2d::CCObject*);
	TodoReturn updateCustomEaseLabel(int, int);
	TodoReturn updateCustomEaseRateLabel(int, float);
	TodoReturn updateCustomToggleTrigger(int, bool);
	TodoReturn updateEaseLabel();
	TodoReturn updateEaseRateLabel();
	TodoReturn updateEditorLabel();
	TodoReturn updateInputNodeLabel(int, gd::string);
	TodoReturn updateLabel(int, gd::string);
	TodoReturn updateMultiTriggerBtn();
	TodoReturn updateSlider(int, float);
	TodoReturn updateSlider(int);
	TodoReturn updateSpawnedByTrigger();
	TodoReturn updateTouchTriggered();
	TodoReturn updateValue(int, float);
	TodoReturn updateValueControls(int, float);
	TodoReturn valueChanged(int, float);

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void keyBackClicked();
	virtual void show();
	virtual TodoReturn pageChanged();
	virtual TodoReturn toggleGroup(int, bool);
	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual TodoReturn textInputReturn(CCTextInputNode*);
	virtual TodoReturn updateInputValue(int, float&);
	virtual TodoReturn sliderBegan(Slider*);
	virtual TodoReturn sliderEnded(Slider*);
	virtual void onPlusButton(cocos2d::CCObject* sender);
	virtual void onCustomButton(cocos2d::CCObject* sender);
	virtual TodoReturn updateDefaultTriggerValues();
	virtual TodoReturn updateInputNode(int, float);
	virtual TodoReturn updateToggleItem(int, bool);
	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn getValue(int);
	virtual TodoReturn triggerValueFromSliderValue(int, float);
	virtual TodoReturn triggerSliderValueFromValue(int, float);
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float);

	PAD = android32 0xac;
}

[[link(android)]]
class SetupZoomTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupZoomTriggerPopup();

	static SetupZoomTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x377a70;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x377b20;

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class SFXBrowser : FLAlertLayer, MusicDownloadDelegate, TableViewCellDelegate, SetTextPopupDelegate, SelectSFXSortDelegate {
	// virtual ~SFXBrowser();

	static SFXBrowser* create(int) = win 0x378110;

	bool init(int) = win 0x3781b0;
	void onClearSearch(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onCredits(cocos2d::CCObject* sender);
	void onExitFolder(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);
	void onSorting(cocos2d::CCObject* sender);
	void onToggleCompactMode(cocos2d::CCObject* sender);
	void onUpdateLibrary(cocos2d::CCObject* sender);
	TodoReturn setupList(SFXSearchResult*) = win 0x379250;
	TodoReturn trySetupSFXBrowser() = win 0x379010;
	TodoReturn updatePageLabel() = win 0x379ea0;

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn musicActionFinished(GJMusicAction);
	virtual TodoReturn musicActionFailed(GJMusicAction);
	virtual TodoReturn sortSelectClosed(SelectSFXSortLayer*);
	virtual void setTextPopupClosed(SetTextPopup*, gd::string);
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	virtual TodoReturn getSelectedCellIdx();
	virtual TodoReturn shouldSnapToSelected();
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

	static SFXSearchResult* create(int) = win 0x289f00;

	TodoReturn getActiveFolder();
	TodoReturn getSelectedPage(int, int) = win 0x28a500;
	bool init(int);
	void setActiveFolder(SFXFolderObject*);

	virtual TodoReturn updateObjects(AudioSortType);
}

[[link(android)]]
class SFXTriggerGameObject : EffectGameObject {
	// virtual ~SFXTriggerGameObject();
	// SFXTriggerGameObject();

	static SFXTriggerGameObject* create(char const*);

	TodoReturn getSFXRefID();
	TodoReturn getUniqueSFXID();
	bool init(char const*);

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class ShaderGameObject : EffectGameObject {
	// virtual ~ShaderGameObject();

	static ShaderGameObject* create(char const*) = win 0x391eb0;

	bool init(char const*);

	virtual void customSetup() = win 0x391f50;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class ShaderLayer : cocos2d::CCLayer {
	// virtual ~ShaderLayer();

	static ShaderLayer* create();

	TodoReturn objectPosToShaderPos(cocos2d::CCPoint);
	TodoReturn performCalculations() = win 0x3836c0;
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
	TodoReturn resetAllShaders();
	TodoReturn resetTargetContainer();
	TodoReturn setupBulgeShader();
	TodoReturn setupChromaticGlitchUniforms();
	TodoReturn setupChromaticUniforms();
	TodoReturn setupColorChangeShader();
	TodoReturn setupCommonUniforms();
	TodoReturn setupGlitchUniforms();
	TodoReturn setupGrayscaleShader();
	TodoReturn setupHueShiftShader();
	TodoReturn setupInvertColorShader();
	TodoReturn setupLensCircleShader();
	TodoReturn setupMotionBlurShader();
	TodoReturn setupPinchShader();
	TodoReturn setupRadialBlurShader();
	TodoReturn setupSepiaShader();
	TodoReturn setupShader(bool);
	TodoReturn setupShockLineUniforms();
	TodoReturn setupShockWaveUniforms();
	TodoReturn setupSplitScreenShader();
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
	TodoReturn triggerShockLine(float, float, bool, bool, bool, bool, float, float, float, float, float, float, int, bool, bool, bool, float, bool, float, int, float);
	TodoReturn triggerShockWave(float, float, float, float, float, float, float, bool, float, float, float, int, bool, bool, bool, float, float, bool, float, int, float);
	TodoReturn triggerSplitScreenCols(float, float, int, float);
	TodoReturn triggerSplitScreenRows(float, float, int, float);
	TodoReturn tweenValue(float, float, int, float, int, float);
	TodoReturn tweenValueAuto(float, int, float, int, float);
	TodoReturn updateEffectOffsets(cocos2d::CCPoint);
	TodoReturn updateMotionBlurSpeedX(float, float);
	TodoReturn updateMotionBlurSpeedY(float, float);
	TodoReturn updateShockLineCenter(cocos2d::CCPoint);
	TodoReturn updateShockWaveCenter(cocos2d::CCPoint);
	TodoReturn updateZLayer(int, int, bool);

	virtual void update(float);
	virtual bool init();
	virtual void visit() = win 0x383810;
}

[[link(android)]]
class ShardsPage : FLAlertLayer {
	// virtual ~ShardsPage();

	static ShardsPage* create() = win 0x384280;

	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn goToPage(int);
	void onClose(cocos2d::CCObject* sender);
	void onIconInfo(cocos2d::CCObject* sender);
	void onSwitchPage(cocos2d::CCObject* sender);

	virtual bool init() = win 0x384320;
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void show();
}

[[link(android)]]
class ShareCommentDelegate {
	virtual TodoReturn shareCommentClosed(gd::string, ShareCommentLayer*);
}

[[link(android)]]
class ShareCommentLayer : FLAlertLayer, TextInputDelegate, UploadActionDelegate, UploadPopupDelegate {
	// virtual ~ShareCommentLayer();

	static ShareCommentLayer* create(gd::string, int, CommentType, int, gd::string) = win 0x386370;

	bool init(gd::string, int, CommentType, int, gd::string) = win 0x386490;
	void onClear(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onPercent(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender) = win 0x3874c0;
	TodoReturn updateCharCountLabel() = win 0x3879e0;
	TodoReturn updateDescText(gd::string);
	TodoReturn updatePercentLabel() = win 0x387410;

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class ShareLevelLayer : FLAlertLayer {
	// virtual ~ShareLevelLayer();

	static ShareLevelLayer* create(GJGameLevel*) = win 0x387e70;

	TodoReturn getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);
	bool init(GJGameLevel*) = win 0x387f10;
	void onClose(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender) = win 0x388f20;
	TodoReturn selectRating(cocos2d::CCObject*);
	TodoReturn setupStars();

	virtual void keyBackClicked();
}

[[link(android)]]
class ShareLevelSettingsLayer : FLAlertLayer, NumberInputDelegate {
	// virtual ~ShareLevelSettingsLayer();

	static ShareLevelSettingsLayer* create(GJGameLevel*);

	bool init(GJGameLevel*) = win 0x389b10;
	void onClose(cocos2d::CCObject* sender);
	void onCopyable(cocos2d::CCObject* sender);
	void onEditPassword(cocos2d::CCObject* sender);
	void onPassword(cocos2d::CCObject* sender);
	void onUnlisted(cocos2d::CCObject* sender);
	void onUnlistedFriendsOnly(cocos2d::CCObject* sender);
	TodoReturn updateSettingsState();

	virtual void keyBackClicked();
	virtual TodoReturn numberInputClosed(NumberInputLayer*);
}

[[link(android)]]
class ShareListLayer : FLAlertLayer {
	// virtual ~ShareListLayer();

	static ShareListLayer* create(GJLevelList*);

	bool init(GJLevelList*);
	void onClose(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender);
	void onUnlisted(cocos2d::CCObject* sender);
	TodoReturn updateUnlistedF();

	virtual void keyBackClicked();
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

	static SimplePlayer* create(int) = win 0x1f3e90;

	TodoReturn asyncLoadIcon(int, IconType);
	TodoReturn createRobotSprite(int) = win 0x1f45d0;
	TodoReturn createSpiderSprite(int) = win 0x1f4620;
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
	bool init(int) = win 0x1f3f30;
	void setColors(cocos2d::ccColor3B const&, cocos2d::ccColor3B const&);
	void setFrames(char const*, char const*, char const*, char const*, char const*) = win 0x1f4dc0;
	inline void setSecondColor(cocos2d::_ccColor3B const& color) {
		m_secondLayer->setColor(color);
		updateColors();
	}
	TodoReturn updateColors() = win 0x1f46d0;
	TodoReturn updatePlayerFrame(int, IconType) = win 0x1f49c0;

	virtual void setOpacity(unsigned char) = win 0x1f4f70;
	virtual void setColor(cocos2d::ccColor3B const&) = win 0x1f46a0;

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
class Slider : cocos2d::CCLayer {
	// virtual ~Slider();

	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float) = win 0x4d130;
	static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler) {
		return Slider::create(target, handler, 1.f);
	}
	static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler, float idk) {
		return Slider::create(target, handler, "sliderBar.png", "slidergroove.png", "sliderthumb.png", "sliderthumbsel.png", idk);
	}

	TodoReturn disableSlider();
	TodoReturn disableTouch();
	TodoReturn enableSlider();
	TodoReturn getLiveDragging();
	SliderThumb* getThumb() {
		return m_touchLogic->m_thumb;
	}
	TodoReturn getValue() = win 0x4d4f0;
	TodoReturn hideGroove(bool);
	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float) = win 0x4d1f0;
	void setBarVisibility(bool);
	void setLiveDragging(bool);
	void setMaxOffset(float);
	void setRotated(bool);
	void setValue(float val) {
		this->getThumb()->setValue(val);
		this->updateBar();
	}
	TodoReturn sliderBegan();
	TodoReturn sliderEnded();
	TodoReturn updateBar() = win 0x4d590;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);

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

	static SliderThumb* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*) = win 0x4c900;

	float getValue() {
		return (this->getScaleX() * m_length * .5f +
				(m_vertical ?
					this->getPositionY() :
					this->getPositionX())
			) / (this->getScaleX() * m_length);
	}
	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*);
	void setMaxOffset(float) = win 0x4ca90;
	void setRotated(bool);
	void setValue(float) = win 0x4cbd0;

	float m_length;
	bool m_vertical;
}

[[link(android)]]
class SliderTouchLogic : cocos2d::CCMenu {
	// virtual ~SliderTouchLogic();

	static SliderTouchLogic* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float) = win 0x4ccc0;

	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float);
	void setMaxOffset(float);
	void setRotated(bool);

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();

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
	TodoReturn updateSmartFrame();

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);

	bool m_property157;
	PAD = android32 0x9;
}

[[link(android)]]
class SmartTemplateCell : TableViewCell {
	// virtual ~SmartTemplateCell();
	SmartTemplateCell(char const*, float, float);

	TodoReturn loadFromObject(GJSmartTemplate*) = win 0x8b020;
	void onClick(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int) = win 0x8b320;

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class SongCell : TableViewCell {
	// virtual ~SongCell();
	SongCell(char const*, float, float);

	void loadFromObject(SongObject*) = win 0x82cb0;
	void onClick(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class SongInfoLayer : FLAlertLayer {
	// virtual ~SongInfoLayer();

	static SongInfoLayer* create(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string, int, gd::string);
	static SongInfoLayer* create(int) = win 0x38aba0;

	bool init(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string, int, gd::string) = win 0x38ae50;
	void onBPM(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onDownload(cocos2d::CCObject* sender);
	void onFB(cocos2d::CCObject* sender);
	void onMenuMusic(cocos2d::CCObject* sender) = win 0x38bd20;
	void onNG(cocos2d::CCObject* sender);
	void onPracticeMusic(cocos2d::CCObject* sender) = win 0x38bda0;
	void onYT(cocos2d::CCObject* sender);
	TodoReturn showCustomMusicUnlockInfo() = win 0x38baa0;

	virtual void keyBackClicked();
}

[[link(android)]]
class SongInfoObject : cocos2d::CCNode {
	// virtual ~SongInfoObject();

	static SongInfoObject* create(cocos2d::CCDictionary*);
	static SongInfoObject* create(int songID, gd::string songName, gd::string artistName, int artistID, float filesize, gd::string youtubeVideo, gd::string youtubeChannel, gd::string url, int priority) = win 0x288650;
	static SongInfoObject* create(int) = win 0x287f00;

	TodoReturn addTags(gd::string);
	TodoReturn containsTag(int);
	TodoReturn createWithCoder(DS_Dictionary*) = win 0x288a10;
	TodoReturn getTagsString();
	bool init(int songID, gd::string songName, gd::string artistName, int artistID, float filesize, gd::string youtubeVideo, gd::string youtubeChannel, gd::string url, int priority) = win 0x288860;

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();

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

	static SongOptionsLayer* create(CustomSongDelegate*);

	bool init(CustomSongDelegate*);
	void onClose(cocos2d::CCObject* sender);
	void onFadeIn(cocos2d::CCObject* sender);
	void onFadeOut(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onPlayback(cocos2d::CCObject* sender);
	TodoReturn updatePlaybackBtn();

	virtual void keyBackClicked();
}

[[link(android)]]
class SongPlaybackDelegate {
	virtual TodoReturn onPlayback(SongInfoObject*);
}

[[link(android)]]
class SongSelectNode : cocos2d::CCNode, FLAlertLayerProtocol, CustomSongLayerDelegate, CustomSongDelegate {
	// virtual ~SongSelectNode();

	static SongSelectNode* create(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool);

	void audioNext(cocos2d::CCObject*) = win 0x92270;
	void audioPrevious(cocos2d::CCObject*) = win 0x922b0;
	bool init(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool) = win 0x91a70;
	void onOpenCustomSong(cocos2d::CCObject* sender) = win 0x92500;
	void onSongMode(cocos2d::CCObject* sender) = win 0x922f0;
	void onSongMode(int) = win 0x92310;
	TodoReturn selectSong(int);
	TodoReturn showCustomSongSelect();
	void updateAudioLabel() = win 0x92160;
	TodoReturn updateWidgetVisibility();

	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn customSongLayerClosed();
	virtual TodoReturn songIDChanged(int);
	virtual TodoReturn getActiveSongID();
	virtual TodoReturn getSongFileName() = win 0x92660;
	virtual TodoReturn getLevelSettings();
}

[[link(android)]]
class SongsLayer : GJDropDownLayer {
	// virtual ~SongsLayer();

	static SongsLayer* create() = win 0x38bfb0;

	virtual void customSetup() = win 0x38c0c0;
}

[[link(android)]]
class SongTriggerGameObject : SFXTriggerGameObject {
	// virtual ~SongTriggerGameObject();

	static SongTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class SpawnParticleGameObject : EffectGameObject {
	// virtual ~SpawnParticleGameObject();

	static SpawnParticleGameObject* create();

	virtual bool init();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
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

	virtual bool init();
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class SpecialAnimGameObject : EnhancedGameObject {
	// virtual ~SpecialAnimGameObject();

	static SpecialAnimGameObject* create(char const*);

	bool init(char const*);

	virtual TodoReturn resetObject();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
	virtual TodoReturn updateMainColor(cocos2d::ccColor3B const&);
	virtual TodoReturn updateSecondaryColor(cocos2d::ccColor3B const&);
	virtual TodoReturn updateSyncedAnimation(float, int);
}

[[link(android)]]
class SpriteAnimationManager : cocos2d::CCNode {
	// virtual ~SpriteAnimationManager();

	TodoReturn animationFinished();
	TodoReturn callAnimationFinished();
	TodoReturn createAnimations(gd::string);
	TodoReturn createWithOwner(CCAnimatedSprite*, gd::string);
	TodoReturn doCleanup();
	TodoReturn executeAnimation(gd::string) = win 0x4f480;
	TodoReturn finishAnimation(gd::string);
	TodoReturn getAnimType(gd::string);
	TodoReturn getPrio(gd::string);
	TodoReturn initWithOwner(CCAnimatedSprite*, gd::string);
	TodoReturn loadAnimations(gd::string);
	TodoReturn offsetCurrentAnimation(float);
	TodoReturn overridePrio() = win 0x4f7e0;
	TodoReturn playSound(gd::string);
	TodoReturn playSoundForAnimation(gd::string);
	TodoReturn queueAnimation(gd::string);
	TodoReturn resetAnimState();
	TodoReturn runAnimation(gd::string) = win 0x4f280;
	TodoReturn runQueuedAnimation();
	TodoReturn stopAnimations() = win 0x4fa60;
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
class StartPosObject : EffectGameObject {
	// virtual ~StartPosObject();

	static StartPosObject* create() = win 0x3a7850;

	TodoReturn loadSettingsFromString(gd::string);
	void setSettings(LevelSettingsObject*);

	virtual bool init() = win 0x3a7910;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);

	int m_unknown;
}

[[link(android)]]
class StatsCell : TableViewCell {
	// virtual ~StatsCell();
	StatsCell(char const*, float, float);

	TodoReturn getTitleFromKey(char const*);
	TodoReturn loadFromObject(StatsObject*) = win 0x82230;
	TodoReturn updateBGColor(int) = win 0x7d560;

	virtual bool init();
	virtual void draw() = win 0x7d5b0;
}

[[link(android)]]
class StatsLayer : GJDropDownLayer {
	// virtual ~StatsLayer();

	static StatsLayer* create() = win 0x3bb620;

	virtual void customSetup() = win 0x3bb730;
}

[[link(android)]]
class StatsObject : cocos2d::CCObject {
	// virtual ~StatsObject();

	static StatsObject* create(char const*, int) = win 0x82070;

	bool init(char const*, int) = win 0x82120;
}

[[link(android)]]
class SupportLayer : GJDropDownLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate {
	// virtual ~SupportLayer();

	static SupportLayer* create() = win 0x3bbb30;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCArray*) = win 0x3bc520;
	TodoReturn exitLayer();
	void onCocos2d(cocos2d::CCObject* sender);
	void onEmail(cocos2d::CCObject* sender);
	void onGetReward(cocos2d::CCObject* sender);
	void onLinks(cocos2d::CCObject* sender) = win 0x3bce90;
	void onLowDetail(cocos2d::CCObject* sender) = win 0x3bcc50;
	void onPrivacy(cocos2d::CCObject* sender);
	void onRequestAccess(cocos2d::CCObject* sender) = win 0x3bca70;
	void onRobTop(cocos2d::CCObject* sender);
	void onSFX(cocos2d::CCObject* sender);
	void onTOS(cocos2d::CCObject* sender);
	TodoReturn sendSupportMail() = win 0x3bcd40;

	virtual void customSetup() = win 0x3bbcc0;
	virtual void uploadActionFinished(int, int) = win 0x3bcbc0;
	virtual void uploadActionFailed(int, int) = win 0x3bcc20;
	virtual TodoReturn onClosePopup(UploadActionPopup*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = win 0x3bd0b0;
}

[[link(android), depends(CCIndexPath)]]
class TableView : CCScrollLayerExt, CCScrollLayerExtDelegate {
	// virtual ~TableView();
	TableView(cocos2d::CCRect);

	static TableView* create(TableViewDelegate*, TableViewDataSource*, TableViewCellDelegate*, cocos2d::CCRect);

	TodoReturn cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn cellForRowAtIndexPath(CCIndexPath&);
	TodoReturn cellForTouch(cocos2d::CCTouch*);
	TodoReturn checkBoundaryOfCell(cocos2d::CCPoint&, float);
	TodoReturn checkBoundaryOfCell(TableViewCell*);
	TodoReturn checkBoundaryOfContent(float);
	TodoReturn checkFirstCell(TableViewCell*);
	TodoReturn checkLastCell(TableViewCell*);
	TodoReturn claimTouch(cocos2d::CCTouch*);
	TodoReturn deleteTableViewCell(TableViewCell*);
	TodoReturn dequeueReusableCellWithIdentifier(char const*);
	TodoReturn initTableViewCells();
	bool isDuplicateIndexPath(CCIndexPath&);
	bool isDuplicateInVisibleCellArray(CCIndexPath*);
	TodoReturn reloadData() = win 0x50770;
	TodoReturn removeIndexPathFromPathAddedArray(CCIndexPath&);
	TodoReturn scrollToIndexPath(CCIndexPath&);
	TodoReturn touchFinish(cocos2d::CCTouch*);

	virtual void onEnter();
	virtual void onExit();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void scrollWheel(float, float) = win 0x50fd0;
	virtual TodoReturn scrllViewWillBeginDecelerating(CCScrollLayerExt*);
	virtual TodoReturn scrollViewDidEndDecelerating(CCScrollLayerExt*);
	virtual TodoReturn scrollViewTouchMoving(CCScrollLayerExt*);
	virtual TodoReturn scrollViewDidEndMoving(CCScrollLayerExt*);

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
	// virtual ~TableViewCell();
	TableViewCell(char const*, float, float) = win 0x51db0;

	TodoReturn updateVisibility();

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

	static TeleportPortalObject* create(char const*, bool) = win 0x3a7a50;

	TodoReturn getTeleportXOff(cocos2d::CCNode*) = win 0x3a7c50;
	bool init(char const*, bool);
	void setPositionOverride(cocos2d::CCPoint);
	void setStartPosOverride(cocos2d::CCPoint);

	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setRotation(float);
	virtual void setStartPos(cocos2d::CCPoint);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
	virtual TodoReturn addToGroup(int);
	virtual TodoReturn removeFromGroup(int);
	virtual void setRotation2(float);
	virtual TodoReturn addToGroup2(int);
	virtual TodoReturn removeFromGroup2(int);

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

	static TextAlertPopup* create(gd::string, float, float, int, gd::string) = win 0x211c90;

	bool init(gd::string, float, float, int, gd::string) = win 0x211de0;
	void setAlertPosition(cocos2d::CCPoint, cocos2d::CCPoint);
	void setLabelColor(cocos2d::ccColor3B);
}

[[link(android)]]
class TextArea : cocos2d::CCSprite {
	// virtual ~TextArea();
	// TextArea() = win 0x52050;

	static TextArea* create(gd::string, char const*, float, float, cocos2d::CCPoint, float, bool) = win 0x52250;

	TodoReturn colorAllCharactersTo(cocos2d::ccColor3B) = win 0x52850;
	TodoReturn colorAllLabels(cocos2d::ccColor3B);
	TodoReturn fadeIn(float, bool);
	TodoReturn fadeInCharacters(float, float);
	TodoReturn fadeOut(float);
	TodoReturn fadeOutAndRemove();
	TodoReturn finishFade();
	TodoReturn hideAll();
	bool init(gd::string, char const*, float, float, cocos2d::CCPoint, float, bool) = win 0x52350;
	void setIgnoreColorCode(bool);
	void setString(gd::string) = win 0x52460;
	TodoReturn showAll();
	TodoReturn stopAllCharacterActions();

	virtual void update(float);
	virtual void draw();
	virtual void setOpacity(unsigned char);

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

	static TextGameObject* create(cocos2d::CCTexture2D*) = win 0x147cc0;

	bool init(cocos2d::CCTexture2D*);
	TodoReturn updateTextObject(gd::string, bool) = win 0x147d90;

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
	virtual TodoReturn updateTextKerning(int);
	virtual TodoReturn getTextKerning();

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

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class TopArtistsLayer : FLAlertLayer, OnlineListDelegate {
	// virtual ~TopArtistsLayer();

	static TopArtistsLayer* create() = win 0x3bd270;

	bool isCorrect(char const*);
	TodoReturn loadPage(int) = win 0x3bdcb0;
	void onClose(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn setupLeaderboard(cocos2d::CCArray*);
	TodoReturn updateLevelsLabel();

	virtual bool init();
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void show();
	virtual TodoReturn loadListFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadListFailed(char const*);
	virtual TodoReturn setupPageInfo(gd::string, char const*);
}

[[link(android)]]
class TOSPopup : FLAlertLayer {
	// virtual ~TOSPopup();

	static TOSPopup* create();

	void onClose(cocos2d::CCObject* sender);
	void onPrivacy(cocos2d::CCObject* sender);
	void onTOS(cocos2d::CCObject* sender);

	virtual bool init() = win 0x2122e0;
	virtual void keyBackClicked();
}

[[link(android)]]
class TransformTriggerGameObject : EffectGameObject {
	// virtual ~TransformTriggerGameObject();

	static TransformTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class TriggerControlGameObject : EffectGameObject {
	// virtual ~TriggerControlGameObject();

	static TriggerControlGameObject* create(char const*);

	bool init(char const*);
	TodoReturn updateTriggerControlFrame();

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
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

	static TutorialLayer* create();

	TodoReturn loadPage(int);
	void onClose(cocos2d::CCObject* sender);
	void onNext(cocos2d::CCObject* sender);
	TodoReturn removeTutorialTexture();

	virtual bool init();
	virtual void keyBackClicked();
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
	TodoReturn reset() = win 0x120660;
	TodoReturn resetOneBtn();

	PAD = win 0x28, android32 0x28, android64 0x28;
}

[[link(android)]]
class UILayer : cocos2d::CCLayerColor {
	// virtual ~UILayer();
	// UILayer() = win 0x3bea20;

	static UILayer* create(GJBaseGameLayer*);

	TodoReturn disableMenu();
	TodoReturn editorPlaytest(bool);
	TodoReturn enableEditorMode() = win 0x3bf420;
	TodoReturn enableMenu();
	TodoReturn handleKeypress(cocos2d::enumKeyCodes, bool) = win 0x3bf480;
	bool init(GJBaseGameLayer*) = win 0x3bec10;
	bool isJumpButtonPressed(bool);
	void onCheck(cocos2d::CCObject* sender) = win 0x3bfa10;
	void onDeleteCheck(cocos2d::CCObject* sender) = win 0x3bfa50;
	void onPause(cocos2d::CCObject* sender) = win 0x3bf9a0;
	TodoReturn processUINodesTouch(GJUITouchEvent, cocos2d::CCTouch*);
	TodoReturn processUINodeTouch(GJUITouchEvent, int, cocos2d::CCPoint, GJUINode*);
	TodoReturn refreshDpad();
	TodoReturn resetAllButtons() = win 0x3bfad0;
	TodoReturn resetUINodeState() = win 0x3bf390;
	TodoReturn toggleCheckpointsMenu(bool);
	TodoReturn toggleMenuVisibility(bool) = win 0x3bfa80;
	TodoReturn togglePlatformerMode(bool);
	TodoReturn updateDualMode(bool);
	TodoReturn updateUINodeVisibility(bool);

	virtual void draw() = win 0x3c0de0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked() = win 0x3bf970;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x3bf930;
	virtual void keyUp(cocos2d::enumKeyCodes) = win 0x3bf950;

	// This member is here because rob managed to inhert CCKeyboardDelegate twice
	// in this class, which ended up breaking addresser when trying to hook it.
	// so instead, we removed the second CCKeyboardDelegate from the base class list
	// and put this member here to take the place of its vtable
	void* m_stupidDelegate;
}

[[link(android)]]
class UIObjectSettingsPopup : SetupTriggerPopup {
	// virtual ~UIObjectSettingsPopup();

	static UIObjectSettingsPopup* create(UISettingsGameObject*, cocos2d::CCArray*);

	bool init(UISettingsGameObject*, cocos2d::CCArray*);

	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class UIOptionsLayer : SetupTriggerPopup {
	// virtual ~UIOptionsLayer();

	static UIOptionsLayer* create(bool) = win 0x213db0;

	TodoReturn getNode(int);
	bool init(bool) = win 0x213e60;
	void onReset(cocos2d::CCObject* sender);
	void onSaveLoad(cocos2d::CCObject* sender);
	TodoReturn toggleUIGroup(int);

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn getValue(int);
}

[[link(android)]]
class UISaveLoadLayer : SetupTriggerPopup {
	// virtual ~UISaveLoadLayer();

	static UISaveLoadLayer* create(UIOptionsLayer*) = win 0x215e10;

	bool init(UIOptionsLayer*) = win 0x215eb0;
	void onLoad(cocos2d::CCObject* sender);
	void onSave(cocos2d::CCObject* sender);
}

[[link(android)]]
class UISettingsGameObject : EffectGameObject {
	// virtual ~UISettingsGameObject();

	static UISettingsGameObject* create();

	virtual bool init();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual gd::string getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class UndoObject : cocos2d::CCObject {
	// virtual ~UndoObject();
	// UndoObject();

	static UndoObject* create(GameObject*, UndoCommand) = win 0x24a4b0;
	static UndoObject* createWithArray(cocos2d::CCArray*, UndoCommand) = win 0x24a760;
	static UndoObject* createWithTransformObjects(cocos2d::CCArray*, UndoCommand) = win 0x24a580;

	bool init(cocos2d::CCArray*, UndoCommand);
	bool init(GameObject*, UndoCommand);
	TodoReturn initWithTransformObjects(cocos2d::CCArray*, UndoCommand) = win 0x24a650;
	void setObjects(cocos2d::CCArray*);

	GameObjectCopy* m_objectCopy;
	UndoCommand m_command;
	cocos2d::CCArray* m_objects;
	bool m_redo;
}

[[link(android)]]
class UpdateAccountSettingsPopup : FLAlertLayer, GJAccountSettingsDelegate {
	// virtual ~UpdateAccountSettingsPopup();

	static UpdateAccountSettingsPopup* create(GJAccountSettingsLayer*, int, int, int, gd::string, gd::string, gd::string);

	bool init(GJAccountSettingsLayer*, int, int, int, gd::string, gd::string, gd::string);
	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
	virtual TodoReturn updateSettingsFinished();
	virtual TodoReturn updateSettingsFailed();
}

[[link(android)]]
class UploadActionDelegate {
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
}

[[link(android)]]
class UploadActionPopup : FLAlertLayer {
	// virtual ~UploadActionPopup();

	static UploadActionPopup* create(UploadPopupDelegate*, gd::string) = win 0x20ac30;

	TodoReturn closePopup();
	bool init(UploadPopupDelegate*, gd::string) = win 0x20ad00;
	void onClose(cocos2d::CCObject* sender);
	void showFailMessage(gd::string) = win 0x20b1e0;
	void showSuccessMessage(gd::string) = win 0x20b0e0;

	virtual void keyBackClicked();
}

[[link(android)]]
class UploadListPopup : FLAlertLayer, ListUploadDelegate {
	// virtual ~UploadListPopup();

	static UploadListPopup* create(GJLevelList*);

	bool init(GJLevelList*);
	void onBack(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onReturnToList(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
	virtual void show();
	virtual TodoReturn listUploadFinished(GJLevelList*);
	virtual TodoReturn listUploadFailed(GJLevelList*, int);
}

[[link(android)]]
class UploadMessageDelegate {
	virtual TodoReturn uploadMessageFinished(int);
	virtual TodoReturn uploadMessageFailed(int);
}

[[link(android)]]
class UploadPopup : FLAlertLayer, LevelUploadDelegate {
	// virtual ~UploadPopup();

	static UploadPopup* create(GJGameLevel*) = win 0x3890f0;

	bool init(GJGameLevel*) = win 0x389190;
	void onBack(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onReturnToLevel(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
	virtual void show();
	virtual TodoReturn levelUploadFinished(GJGameLevel*);
	virtual TodoReturn levelUploadFailed(GJGameLevel*);
}

[[link(android)]]
class UploadPopupDelegate {
	virtual TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class URLCell : TableViewCell {
	// virtual ~URLCell();
	URLCell(char const*, float, float);

	TodoReturn loadFromObject(CCURLObject*) = win 0x8ca50;
	void onURL(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class URLViewLayer : GJDropDownLayer {
	// virtual ~URLViewLayer();

	static URLViewLayer* create(gd::string, cocos2d::CCArray*);

	bool init(gd::string, cocos2d::CCArray*);
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

	static VideoOptionsLayer* create();

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float, bool);
	void onAdvanced(cocos2d::CCObject* sender);
	void onApply(cocos2d::CCObject* sender) = win 0x2b50e0;
	void onClose(cocos2d::CCObject* sender);
	void onFullscreen(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onResolutionNext(cocos2d::CCObject* sender);
	void onResolutionPrev(cocos2d::CCObject* sender);
	void onTextureQualityNext(cocos2d::CCObject* sender);
	void onTextureQualityPrev(cocos2d::CCObject* sender);
	TodoReturn reloadMenu();
	TodoReturn toggleResolution();
	TodoReturn updateResolution(int) = win 0x2b4ea0;
	TodoReturn updateTextureQuality(int) = win 0x2b4de0;

	virtual bool init();
	virtual void keyBackClicked();
}

[[link(android)]]
class WorldLevelPage : FLAlertLayer {
	// virtual ~WorldLevelPage();

	static WorldLevelPage* create(GJGameLevel*, GJWorldNode*);

	bool init(GJGameLevel*, GJWorldNode*);
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
	TodoReturn colorForPage(int);
	TodoReturn getColorValue(int, int, float);
	TodoReturn goToPage(int, bool);
	bool init(int);
	void onBack(cocos2d::CCObject* sender);
	void onFreeLevels(cocos2d::CCObject* sender);
	void onGarage(cocos2d::CCObject* sender);
	void onNext(cocos2d::CCObject* sender);
	void onPrev(cocos2d::CCObject* sender);
	TodoReturn scene(int);
	TodoReturn setupWorlds();
	TodoReturn showCompleteDialog();
	TodoReturn tryShowAd();
	TodoReturn unblockButtons();
	TodoReturn updateArrows();

	virtual void onExit();
	virtual void keyBackClicked();
	virtual TodoReturn scrollLayerWillScrollToPage(BoomScrollLayer*, int);
	virtual TodoReturn scrollLayerScrolledToPage(BoomScrollLayer*, int);
	virtual TodoReturn scrollLayerMoved(cocos2d::CCPoint);
}
