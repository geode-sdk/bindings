// clang-format off

[[link(android)]]
class AccountHelpLayer : GJDropDownLayer, GJAccountDelegate, FLAlertLayerProtocol {
	// virtual ~AccountHelpLayer();

	static AccountHelpLayer* create();

	TodoReturn doUnlink();
	TodoReturn exitLayer();
	void onAccountManagement(cocos2d::CCObject* sender);
	void onReLogin(cocos2d::CCObject* sender);
	void onUnlink(cocos2d::CCObject* sender);
	TodoReturn updatePage();
	TodoReturn verifyUnlink();

	virtual TodoReturn customSetup();
	virtual TodoReturn layerHidden();
	virtual TodoReturn accountStatusChanged();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class AccountLayer : GJDropDownLayer, GJAccountDelegate, GJAccountBackupDelegate, GJAccountSyncDelegate, FLAlertLayerProtocol {
	// virtual ~AccountLayer();

	static AccountLayer* create() = win 0x573D0;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn doBackup() = win 0x57DB0;
	TodoReturn doSync() = win 0x57F10;
	TodoReturn exitLayer();
	TodoReturn hideLoadingUI();
	void onBackup(cocos2d::CCObject* sender) = win 0x57C60;
	void onHelp(cocos2d::CCObject* sender) = win 0x57F80;
	void onLogin(cocos2d::CCObject* sender) = win 0x57C10;
	void onMore(cocos2d::CCObject* sender) = win 0x58000;
	void onRegister(cocos2d::CCObject* sender) = win 0x57C40;
	void onSync(cocos2d::CCObject* sender) = win 0x57E20;
	TodoReturn showLoadingUI();
	TodoReturn toggleUI(bool);
	TodoReturn updatePage(bool) = win 0x58050;

	virtual TodoReturn customSetup() = win 0x575B0;
	virtual TodoReturn layerHidden() = win 0x589A0;
	virtual TodoReturn backupAccountFinished() = win 0x58390;
	virtual TodoReturn backupAccountFailed(BackupAccountError, int) = win 0x584F0;
	virtual TodoReturn syncAccountFinished() = win 0x58720;
	virtual TodoReturn syncAccountFailed(BackupAccountError, int) = win 0x58880;
	virtual TodoReturn accountStatusChanged() = win 0x58040;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = win 0x58930;
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
	bool init(gd::string);
	void onClose(cocos2d::CCObject* sender);
	void onForgotPassword(cocos2d::CCObject* sender);
	void onForgotUser(cocos2d::CCObject* sender);
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
	virtual TodoReturn loginAccountFinished(int, int);
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

	static AchievementBar* create(char const*, char const*, char const*, bool);

	bool init(char const*, char const*, char const*, bool);
	TodoReturn show();

	virtual void setOpacity(unsigned char);
}

[[link(android)]]
class AchievementCell : TableViewCell {
	// virtual ~AchievementCell();
	AchievementCell(char const*, float, float);

	TodoReturn loadFromDict(cocos2d::CCDictionary*) = win 0x7c6a0;
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class AchievementManager : cocos2d::CCNode {
	// virtual ~AchievementManager();

	static AchievementManager* sharedState();

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
	TodoReturn notifyAchievementWithID(char const*);
	TodoReturn percentageForCount(int, int);
	TodoReturn percentForAchievement(char const*);
	TodoReturn reportAchievementWithID(char const*, int, bool);
	TodoReturn reportPlatformAchievementWithID(char const*, int);
	TodoReturn resetAchievement(char const*);
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
	TodoReturn notifyAchievement(char const*, char const*, char const*, bool);
	TodoReturn showNextAchievement();
	TodoReturn willSwitchToScene(cocos2d::CCScene*) = win 0x1c200;

	virtual bool init();
}

[[link(android)]]
class AchievementsLayer : GJDropDownLayer {
	// virtual ~AchievementsLayer();

	static AchievementsLayer* create();

	TodoReturn loadPage(int);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	TodoReturn setupPageInfo(int, int, int);

	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn customSetup();
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
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class AdvancedFollowTriggerObject : EffectGameObject {
	// virtual ~AdvancedFollowTriggerObject();
	// AdvancedFollowTriggerObject();

	static AdvancedFollowTriggerObject* create(char const*);

	TodoReturn getAdvancedFollowID();
	bool init(char const*);

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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
	virtual TodoReturn deactivateObject(bool);
	virtual void setObjectColor(cocos2d::ccColor3B const&);
	virtual TodoReturn animationFinished(char const*);
	virtual TodoReturn displayFrameChanged(cocos2d::CCObject*, gd::string);
}

[[link(android)]]
class AnimatedShopKeeper : CCAnimatedSprite {
	// virtual ~AnimatedShopKeeper();

	static AnimatedShopKeeper* create(ShopType);

	bool init(ShopType);
	TodoReturn playReactAnimation();
	TodoReturn startAnimating();

	virtual TodoReturn animationFinished(char const*);
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
	TodoReturn musicTest() = win 0x5b6f0;
	TodoReturn pauseGame();
	TodoReturn pauseSound();
	TodoReturn platformShutdown();
	TodoReturn resumeSound() = win 0x5b6a0;
	void setIdleTimerDisabled(bool);
	TodoReturn setupGLView();
	TodoReturn showLoadingCircle(bool, bool, bool);

	virtual bool applicationDidFinishLaunching() = win 0x5b300;
	virtual void applicationDidEnterBackground() = win 0x5b4d0;
	virtual void applicationWillEnterForeground() = win 0x5b510;
	virtual void applicationWillBecomeActive() = win 0x5b4b0;
	virtual void applicationWillResignActive() = win 0x5b5c0;
	virtual void trySaveGame(bool) = win 0x5b770;
	virtual TodoReturn willSwitchToScene(cocos2d::CCScene*) = win 0x5b910;

	PAD = win 0xC, android32 0xC, android64 0x18;
	cocos2d::CCScene* m_runningScene;
}

[[link(android)]]
class ArtistCell : TableViewCell {
	// virtual ~ArtistCell();
	ArtistCell(char const*, float, float);

	TodoReturn loadFromObject(SongInfoObject*) = win 0x83e20;
	void onNewgrounds(cocos2d::CCObject* sender);
	void onYouTube(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int) = win 0x80d80;

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
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class AudioEffectsLayer : cocos2d::CCLayerColor {
	// virtual ~AudioEffectsLayer();

	static AudioEffectsLayer* create(gd::string);

	TodoReturn audioStep(float) = win 0x5be90;
	TodoReturn getBGSquare();
	TodoReturn goingDown();
	bool init(gd::string);
	TodoReturn resetAudioVars();
	TodoReturn triggerEffect(float) = win 0x5bf30;

	virtual void draw();
	virtual void updateTweenAction(float, char const*);
}

[[link(android)]]
class AudioLineGuideGameObject : EffectGameObject {
	// virtual ~AudioLineGuideGameObject();

	static AudioLineGuideGameObject* create();

	virtual bool init();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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
	virtual int numberOfRowsInSection(unsigned int, TableView*) = win 0x1d660;
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
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*, float) = win 0x1feb0;
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*);
	static ButtonSprite* create(char const*, int, int, float, bool);
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool, char const*, bool) = win 0x1fb90;
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool);
	static ButtonSprite* create(cocos2d::CCSprite*);

	bool init(char const*, int, int, float, bool, char const*, char const*, float);
	bool init(cocos2d::CCSprite*, int, int, float, float, bool, char const*, bool);
	void setColor(cocos2d::ccColor3B) = win 0x20b20;
	void setString(char const*) = win 0x20770;
	TodoReturn updateBGImage(char const*) = win 0x20230;
	TodoReturn updateSpriteBGSize();
	TodoReturn updateSpriteOffset(cocos2d::CCPoint);
}

[[link(android)]]
class CameraTriggerGameObject : EffectGameObject {
	// virtual ~CameraTriggerGameObject();

	static CameraTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x3afa20;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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

	TodoReturn cleanupSprite();
	TodoReturn createWithType(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn initWithType(char const*, cocos2d::CCTexture2D*, bool) = win 0x20d20;
	TodoReturn loadType(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn runAnimation(gd::string) = win 0x21640;
	TodoReturn runAnimationForced(gd::string);
	TodoReturn stopTween();
	TodoReturn switchToMode(spriteMode);
	TodoReturn tweenToAnimation(gd::string, float) = win 0x21750;
	TodoReturn tweenToAnimationFinished();
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
	// CCCircleWave();

	static CCCircleWave* create(float, float, float, bool, bool) = win 0x23220;
	static CCCircleWave* create(float, float, float, bool);

	TodoReturn baseSetup(float);
	TodoReturn followObject(cocos2d::CCNode*, bool) = win 0x23540;
	bool init(float, float, float, bool, bool) = win 0x232f0;
	TodoReturn updatePosition(float);

	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void removeMeAndCleanup();
	virtual void draw();
	virtual void updateTweenAction(float, char const*);
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

	static CCCounterLabel* create(int, char const*, FormatterType) = win 0x23d00;

	TodoReturn calculateStepSize(int);
	TodoReturn disableCounter();
	TodoReturn enableCounter();
	TodoReturn fastUpdateCounter();
	TodoReturn getTargetCount();
	bool init(int, char const*, FormatterType) = win 0x23db0;
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
	// virtual ~CCMenuItemSpriteExtra();

	static CCMenuItemSpriteExtra* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = win 0x25830;

	static CCMenuItemSpriteExtra* create(cocos2d::CCNode* sprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) {
		return CCMenuItemSpriteExtra::create(sprite, nullptr, target, callback);
	}

	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	inline void setSizeMult(float mult) {
		//inlined on windows, member is in CCMenuItemSprite
		m_scaleMultiplier = mult;
	}
	TodoReturn useAnimationType(MenuAnimationType);

	virtual void activate();
	virtual void selected();
	virtual void unselected();

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
	void setSizeMult(float);
	TodoReturn toggle(bool) = win 0x261e0;

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
	virtual void selected() = win 0x260D0;
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

	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setScale(float);
	virtual void setPosition(cocos2d::CCPoint const&) = win 0x288f0;
	virtual void setRotation(float);
	virtual void setRotationX(float);
	virtual void setRotationY(float);
	virtual bool initWithTexture(cocos2d::CCTexture2D*);
	virtual bool initWithSpriteFrameName(char const*);
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

	TodoReturn addTextArea(TextArea*);
	TodoReturn forceOffset();
	gd::string getString() = win 0x2ea50;
	bool init(float, float, char const*, char const*, int, char const*) = win 0x2e500;
	TodoReturn refreshLabel() = win 0x2ede0;
	void setLabelNormalColor(cocos2d::ccColor3B);
	void setString(gd::string) = win 0x2e9a0;
	TodoReturn updateBlinkLabel();
	TodoReturn updateBlinkLabelToChar(int);
	TodoReturn updateCursorPosition(cocos2d::CCPoint, cocos2d::CCRect);
	TodoReturn updateDefaultFontValues(gd::string);
	TodoReturn updateLabel(gd::string) = win 0x2eac0;

	virtual void visit();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual TodoReturn textChanged();
	virtual TodoReturn onClickTrackNode(bool) = win 0x2f600;
	virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
	virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
	virtual bool onTextFieldInsertText(cocos2d::CCTextFieldTTF*, char const*, int, cocos2d::enumKeyCodes);
	virtual bool onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF*);
	virtual bool onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF*);

	bool m_numberInput;
	gd::string m_caption;
	int m_unknown1;
	bool m_selected;
	bool m_unknown2;
	PAD = android32 0xc, win 0xc, android64 0x10;
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
	PAD = android32 0x10, android64 0x18;
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

	static ChallengeNode* create(GJChallengeItem*, ChallengesPage*, bool);

	bool init(GJChallengeItem*, ChallengesPage*, bool);
	void onClaimReward(cocos2d::CCObject* sender);
	TodoReturn updateTimeLabel(gd::string);
}

[[link(android)]]
class ChallengesPage : FLAlertLayer, FLAlertLayerProtocol, GJChallengeDelegate, CurrencyRewardDelegate {
	// virtual ~ChallengesPage();

	static ChallengesPage* create();

	TodoReturn claimItem(ChallengeNode*, GJChallengeItem*, cocos2d::CCPoint);
	TodoReturn createChallengeNode(int, bool, float, bool);
	TodoReturn exitNodeAtSlot(int, float);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn tryGetChallenges();
	TodoReturn updateDots();
	callback void updateTimers(float);

	virtual bool init();
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

	static CharacterColorPage* create();

	TodoReturn activeColorForMode(int);
	TodoReturn checkColor(int, UnlockType);
	TodoReturn colorForIndex(int);
	TodoReturn createColorMenu();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn offsetForIndex(int);
	void onClose(cocos2d::CCObject* sender);
	void onMode(cocos2d::CCObject* sender);
	void onPlayerColor(cocos2d::CCObject* sender);
	TodoReturn toggleGlow(cocos2d::CCObject*);
	TodoReturn toggleGlowItems(bool);
	TodoReturn toggleShip(cocos2d::CCObject*);
	TodoReturn updateColorMode(int);
	TodoReturn updateIconColors();

	virtual bool init() = win 0x5ea00;
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
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
	virtual TodoReturn triggerActivated(float);
	virtual TodoReturn restoreObject();
	virtual TodoReturn updateSyncedAnimation(float, int);
}

[[link(android)]]
class CheckpointObject : cocos2d::CCNode {
	// virtual ~CheckpointObject();

	static CheckpointObject* create();

	TodoReturn getObject();
	void setObject(GameObject*);

	virtual bool init();
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
	bool isInUse();
	TodoReturn loadFromState(CAState&);
	TodoReturn resetAction();
	TodoReturn saveToState(CAState&);
	TodoReturn setupFromMap(gd::map<gd::string, gd::string>&);
	TodoReturn setupFromString(gd::string);
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

	static ColorActionSprite* create();

	virtual bool init();
}

[[link(android)]]
class ColorChannelSprite : cocos2d::CCSprite {
	// virtual ~ColorChannelSprite();

	static ColorChannelSprite* create() = win 0x1d7490;

	TodoReturn updateBlending(bool);
	TodoReturn updateCopyLabel(int, bool);
	TodoReturn updateOpacity(float) = win 0x1d7710;
	TodoReturn updateValues(ColorAction*);

	virtual bool init();
}

[[link(android)]]
class ColorSelectDelegate {
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*);
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
	bool init(ColorAction*, ColorAction*, EffectGameObject*);
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
	static ColorSelectPopup* create(EffectGameObject*, cocos2d::CCArray*, ColorAction*);
	static ColorSelectPopup* create(EffectGameObject*, cocos2d::CCArray*);

	TodoReturn closeColorSelect(cocos2d::CCObject*);
	TodoReturn colorToHex(cocos2d::ccColor3B);
	TodoReturn getColorValue();
	TodoReturn hexToColor(gd::string);
	bool init(EffectGameObject*, cocos2d::CCArray*, ColorAction*);
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

	PAD = android32 0x40;
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
	void loadFromComment(GJComment*) = win 0x84400;
	void onConfirmDelete(cocos2d::CCObject* sender) = win 0x86230;
	TodoReturn onDelete() = win 0x862d0;
	void onGoToLevel(cocos2d::CCObject* sender);
	void onLike(cocos2d::CCObject* sender) = win 0x86080;
	TodoReturn onUndelete();
	void onUnhide(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int) = win 0x86000;
	TodoReturn updateLabelValues();

	virtual bool init();
	virtual void draw() = win 0x7D520;
	virtual TodoReturn likedItem(LikeItemType, int, bool) = win 0x86160;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = win 0x86340;

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

	virtual bool init();
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void show();
}

[[link(android)]]
class ConfigureHSVWidget : cocos2d::CCNode, TextInputDelegate {
	// virtual ~ConfigureHSVWidget();

	static ConfigureHSVWidget* create(cocos2d::ccHSVValue, bool, bool);

	TodoReturn createTextInputNode(cocos2d::CCPoint, int);
	TodoReturn getHSV(GameObject*, cocos2d::CCArray*, int);
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
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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
	TodoReturn createParticleSlider(gjParticleValue, int, bool, cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn getPage(int);
	TodoReturn getPageButton(int);
	TodoReturn getPageContainer(int);
	TodoReturn getPageInputNodes(int);
	TodoReturn getPageMenu(int);
	TodoReturn getPageSliders(int);
	bool init(ParticleGameObject*, cocos2d::CCArray*, gd::string);
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

	static CreatorLayer* create();

	TodoReturn canPlayOnlineLevels();
	TodoReturn checkQuestsStatus() = win 0x714c0;
	void onAdventureMap(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onChallenge(cocos2d::CCObject* sender) = win 0x70d40;
	void onDailyLevel(cocos2d::CCObject* sender);
	void onEventLevel(cocos2d::CCObject* sender) = win 0x70b70;
	void onFameLevels(cocos2d::CCObject* sender);
	void onFeaturedLevels(cocos2d::CCObject* sender);
	void onGauntlets(cocos2d::CCObject* sender);
	void onLeaderboards(cocos2d::CCObject* sender);
	void onMapPacks(cocos2d::CCObject* sender);
	void onMultiplayer(cocos2d::CCObject* sender) = win 0x70760;
	void onMyLevels(cocos2d::CCObject* sender) = win 0x702c0;
	void onOnlineLevels(cocos2d::CCObject* sender) = win 0x70610;
	void onOnlyFullVersion(cocos2d::CCObject* sender);
	void onPaths(cocos2d::CCObject* sender);
	void onSavedLevels(cocos2d::CCObject* sender) = win 0x703b0;
	void onSecretVault(cocos2d::CCObject* sender) = win 0x70d70;
	void onTopLists(cocos2d::CCObject* sender) = win 0x70590;
	void onTreasureRoom(cocos2d::CCObject* sender) = win 0x71080;
	void onWeeklyLevel(cocos2d::CCObject* sender);
	TodoReturn scene();

	virtual bool init() = win 0x6f4c0;
	virtual void keyBackClicked();
	virtual void sceneWillResume();
	virtual TodoReturn dialogClosed(DialogLayer*) = win 0x71600;
}

[[link(android)]]
class CurrencyRewardDelegate {
	virtual TodoReturn currencyWillExit(CurrencyRewardLayer*);
}

[[link(android)]]
class CurrencyRewardLayer : cocos2d::CCLayer {
	// virtual ~CurrencyRewardLayer();

	static CurrencyRewardLayer* create(int, int, int, int, CurrencySpriteType, int, CurrencySpriteType, int, cocos2d::CCPoint, CurrencyRewardType, float, float) = win 0x71bb0;

	TodoReturn createObjects(CurrencySpriteType, int, cocos2d::CCPoint, float);
	TodoReturn createObjectsFull(CurrencySpriteType, int, cocos2d::CCSprite*, cocos2d::CCPoint, float);
	TodoReturn createUnlockObject(cocos2d::CCSprite*, cocos2d::CCPoint, float);
	TodoReturn incrementCount(int);
	TodoReturn incrementDiamondsCount(int);
	TodoReturn incrementMoonsCount(int);
	TodoReturn incrementSpecialCount1(int);
	TodoReturn incrementSpecialCount2(int);
	TodoReturn incrementStarsCount(int);
	bool init(int, int, int, int, CurrencySpriteType, int, CurrencySpriteType, int, cocos2d::CCPoint, CurrencyRewardType, float, float) = win 0x71ca0;
	TodoReturn pulseSprite(cocos2d::CCSprite*);

	virtual void update(float);
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

	static CustomizeObjectLayer* create(GameObject*, cocos2d::CCArray*);

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn determineStartValues();
	TodoReturn getActiveMode(bool);
	TodoReturn getButtonByTag(int);
	TodoReturn getHSV();
	TodoReturn highlightSelected(ButtonSprite*);
	bool init(GameObject*, cocos2d::CCArray*);
	void onBreakApart(cocos2d::CCObject* sender);
	void onBrowse(cocos2d::CCObject* sender);
	void onClear(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onCopy(cocos2d::CCObject* sender);
	void onEditColor(cocos2d::CCObject* sender);
	void onHSV(cocos2d::CCObject* sender);
	void onLiveEdit(cocos2d::CCObject* sender);
	void onNextColorChannel(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onSelectColor(cocos2d::CCObject* sender);
	void onSelectMode(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onUpdateCustomColor(cocos2d::CCObject* sender);
	TodoReturn recreateLayer();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn toggleVisible();
	TodoReturn updateChannelLabel(int);
	TodoReturn updateColorSprite();
	TodoReturn updateCurrentSelection();
	TodoReturn updateCustomColorLabels();
	TodoReturn updateHSVButtons();
	TodoReturn updateKerningLabel();
	TodoReturn updateSelected(int);

	virtual void keyBackClicked();
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue);
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*);
	virtual TodoReturn colorSetupClosed(int);
}

[[link(android)]]
class CustomizeObjectSettingsPopup : SetupTriggerPopup {
	// virtual ~CustomizeObjectSettingsPopup();

	static CustomizeObjectSettingsPopup* create(GameObject*, cocos2d::CCArray*, CustomizeObjectLayer*);

	bool init(GameObject*, cocos2d::CCArray*, CustomizeObjectLayer*);

	virtual void onClose(cocos2d::CCObject* sender);
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class CustomListView : BoomListView {
	inline CustomListView() {}
	~CustomListView() {}

	static CustomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = win 0x7acb0;

	static CustomListView* create(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
		return CustomListView::create(entries, nullptr, width, height, 0, type, 0.0f);
	}

	TodoReturn getCellHeight(BoomListType);
	TodoReturn reloadAll();

	virtual TodoReturn setupList(float) = win 0x7bb40;
	virtual TableViewCell* getListCell(char const*);
	virtual TodoReturn loadCell(TableViewCell*, int) = win 0x7b700;

	int m_unknown;
}

[[link(android)]]
class CustomMusicCell : CustomSongCell {
	// virtual ~CustomMusicCell();
	CustomMusicCell(char const*, float, float);

	TodoReturn loadFromObject(SongInfoObject*) = win 0x83810;
	TodoReturn updateBGColor(int);
}

[[link(android)]]
class CustomSFXCell : TableViewCell, CustomSFXDelegate {
	// virtual ~CustomSFXCell();
	CustomSFXCell(char const*, float, float);

	TodoReturn loadFromObject(SFXInfoObject*) = win 0x835e0;
	TodoReturn shouldReload();
	TodoReturn updateBGColor(int) = win 0x836d0;

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

	TodoReturn loadFromObject(SongInfoObject*) = win 0x83110;
	void onDelete(cocos2d::CCObject* sender);
	TodoReturn shouldReload();
	TodoReturn updateBGColor(int) = win 0x83310;

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

[[link(android)]]
class CustomSongWidget : cocos2d::CCNode, MusicDownloadDelegate, FLAlertLayerProtocol {
	// virtual ~CustomSongWidget();

	static CustomSongWidget* create(SongInfoObject*, CustomSongDelegate*, bool, bool, bool, bool, bool, bool) = win 0x92AD0;

	TodoReturn deleteSong();
	TodoReturn downloadAssetFailed(int, GJAssetType, GJSongError);
	TodoReturn downloadAssetFinished(int, GJAssetType);
	TodoReturn downloadFailed();
	TodoReturn getSongInfoIfUnloaded();
	bool init(SongInfoObject*, CustomSongDelegate*, bool, bool, bool, bool, bool, bool) = win 0x92b90;
	void onCancelDownload(cocos2d::CCObject* sender);
	void onDelete(cocos2d::CCObject* sender);
	void onDownload(cocos2d::CCObject* sender) = win 0x94480;
	void onGetSongInfo(cocos2d::CCObject* sender);
	void onMore(cocos2d::CCObject* sender) = win 0x93d80;
	void onPlayback(cocos2d::CCObject* sender) = win 0x94700;
	void onSelect(cocos2d::CCObject* sender) = win 0x946b0;
	TodoReturn processNextMultiAsset();
	TodoReturn showError(bool);
	TodoReturn startDownload();
	TodoReturn startMonitorDownload();
	TodoReturn startMultiAssetDownload();
	TodoReturn toggleUpdateButton(bool);
	TodoReturn updateDownloadProgress(float);
	TodoReturn updateError(GJSongError);
	TodoReturn updateLengthMod(float);
	TodoReturn updateMultiAssetInfo(bool);
	TodoReturn updatePlaybackBtn();
	TodoReturn updateProgressBar(int);
	TodoReturn updateSongInfo();
	TodoReturn updateSongObject(SongInfoObject*);
	TodoReturn updateWithMultiAssets(gd::string, gd::string, int);
	TodoReturn verifySongID(int);

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
class DailyLevelNode : cocos2d::CCNode, FLAlertLayerProtocol {
	// virtual ~DailyLevelNode();

	static DailyLevelNode* create(GJGameLevel*, DailyLevelPage*, bool);

	bool init(GJGameLevel*, DailyLevelPage*, bool) = win 0x995c0;
	void onClaimReward(cocos2d::CCObject* sender);
	void onSkipLevel(cocos2d::CCObject* sender);
	TodoReturn showSkipButton();
	TodoReturn updateTimeLabel(gd::string) = win 0x9a190;

	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = win 0x9a160;

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

	static DailyLevelPage* create(GJTimedLevelType);

	TodoReturn claimLevelReward(DailyLevelNode*, GJGameLevel*, cocos2d::CCPoint);
	TodoReturn createDailyNode(GJGameLevel*, bool, float, bool);
	TodoReturn createNodeIfLoaded() = win 0x988c0;
	TodoReturn downloadAndCreateNode() = win 0x98860;
	TodoReturn exitDailyNode(DailyLevelNode*, float) = win 0x98b40;
	TodoReturn getDailyTime() = win 0x98bf0;
	TodoReturn getDailyTimeString(int) = win 0x98ca0;
	bool init(GJTimedLevelType) = win 0x975d0;
	void onClose(cocos2d::CCObject* sender);
	void onTheSafe(cocos2d::CCObject* sender);
	TodoReturn refreshDailyPage();
	TodoReturn skipDailyLevel(DailyLevelNode*, GJGameLevel*);
	TodoReturn tryGetDailyStatus() = win 0x98810;
	callback void updateTimers(float) = win 0x99020;

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void show() = win 0x5d680;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn dailyStatusFinished(GJTimedLevelType);
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
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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

	virtual bool init();
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
	TodoReturn animateIn(DialogAnimationType) = win 0x9b3d0;
	TodoReturn animateInDialog();
	TodoReturn animateInRandomSide();
	TodoReturn createDialogLayer(DialogObject*, cocos2d::CCArray*, int);
	TodoReturn createWithObjects(cocos2d::CCArray*, int);
	TodoReturn displayDialogObject(DialogObject*);
	TodoReturn displayNextObject();
	TodoReturn finishCurrentAnimation();
	TodoReturn handleDialogTap();
	bool init(DialogObject*, cocos2d::CCArray*, int) = win 0x9a800;
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

	static DialogObject* create(gd::string, gd::string, int, float, bool, cocos2d::ccColor3B) = win 0x9a480;

	bool init(gd::string, gd::string, int, float, bool, cocos2d::ccColor3B) = win 0x9a5c0;
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

	TodoReturn addAudioLineObject(AudioLineGuideGameObject*);
	TodoReturn addToEffects(EffectGameObject*);
	TodoReturn addToGuides(GameObject*);
	TodoReturn addToSpeedObjects(EffectGameObject*);
	TodoReturn getPortalMinMax(GameObject*);
	bool init(cocos2d::CCNode*, LevelEditorLayer*);
	TodoReturn loadTimeMarkers(gd::string);
	TodoReturn posForTime(float);
	TodoReturn postUpdate();
	TodoReturn removeAudioLineObject(AudioLineGuideGameObject*);
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
	TodoReturn resize(unsigned int);
}

[[link(android)]]
class DynamicScrollDelegate {
	virtual TodoReturn pure_virtual_00a34a60() {} // TODO: figure out what function this is
}

[[link(android)]]
class EditButtonBar : cocos2d::CCNode {
	// virtual ~EditButtonBar();

	static EditButtonBar* create(cocos2d::CCArray*, cocos2d::CCPoint, int, bool, int, int);

	TodoReturn getPage();
	TodoReturn goToPage(int);
	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, bool, int, int);
	TodoReturn loadFromItems(cocos2d::CCArray*, int, int, bool);
	void onLeft(cocos2d::CCObject* sender);
	void onRight(cocos2d::CCObject* sender);
	TodoReturn reloadItems(int, int);
}

[[link(android)]]
class EditGameObjectPopup : SetupTriggerPopup {
	// virtual ~EditGameObjectPopup();

	static EditGameObjectPopup* create(EffectGameObject*, cocos2d::CCArray*, bool);

	bool init(EffectGameObject*, cocos2d::CCArray*, bool);
}

[[link(android)]]
class EditLevelLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, SetIDPopupDelegate {
	// virtual ~EditLevelLayer();

	static EditLevelLayer* create(GJGameLevel*);

	TodoReturn closeTextInputs();
	TodoReturn confirmClone(cocos2d::CCObject*);
	TodoReturn confirmDelete(cocos2d::CCObject*);
	TodoReturn confirmMoveToTop(cocos2d::CCObject*);
	bool init(GJGameLevel*) = win 0x9C7F0;
	void onBack(cocos2d::CCObject* sender);
	TodoReturn onClone();
	TodoReturn onDelete();
	void onEdit(cocos2d::CCObject* sender);
	void onGuidelines(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onLevelInfo(cocos2d::CCObject* sender);
	void onLevelLeaderboard(cocos2d::CCObject* sender);
	void onLowDetailMode(cocos2d::CCObject* sender);
	TodoReturn onMoveToTop();
	void onPlay(cocos2d::CCObject* sender);
	void onSetFolder(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender);
	void onTest(cocos2d::CCObject* sender);
	void onUpdateDescription(cocos2d::CCObject* sender);
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn scene(GJGameLevel*);
	TodoReturn setupLevelInfo();
	TodoReturn updateDescText(char const*);
	TodoReturn verifyLevelName();

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void setIDPopupClosed(SetIDPopup*, int);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
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

	static EditorPauseLayer* create(LevelEditorLayer*);

	TodoReturn doResetUnused();
	bool init(LevelEditorLayer*) = win 0x9ff50;
	void onAlignX(cocos2d::CCObject* sender);
	void onAlignY(cocos2d::CCObject* sender);
	void onBuildHelper(cocos2d::CCObject* sender);
	void onCopyWColor(cocos2d::CCObject* sender);
	void onCreateExtras(cocos2d::CCObject* sender);
	void onCreateLoop(cocos2d::CCObject* sender);
	void onCreateTemplate(cocos2d::CCObject* sender);
	void onExitEditor(cocos2d::CCObject* sender);
	void onExitNoSave(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onKeybindings(cocos2d::CCObject* sender);
	void onNewGroupX(cocos2d::CCObject* sender);
	void onNewGroupY(cocos2d::CCObject* sender);
	void onOptions(cocos2d::CCObject* sender);
	void onPasteWColor(cocos2d::CCObject* sender);
	void onReGroup(cocos2d::CCObject* sender);
	void onResetUnusedColors(cocos2d::CCObject* sender);
	void onResume(cocos2d::CCObject* sender);
	void onSave(cocos2d::CCObject* sender);
	void onSaveAndExit(cocos2d::CCObject* sender);
	void onSaveAndPlay(cocos2d::CCObject* sender);
	void onSelectAll(cocos2d::CCObject* sender);
	void onSelectAllLeft(cocos2d::CCObject* sender);
	void onSelectAllRight(cocos2d::CCObject* sender);
	void onSong(cocos2d::CCObject* sender);
	void onUnlockAllLayers(cocos2d::CCObject* sender);
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn saveLevel();
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
	TodoReturn uncheckAllPortals(cocos2d::CCObject*);
	TodoReturn updateSongButton();

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn customSetup() = win 0xa0660;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class EditorUI : cocos2d::CCLayer, FLAlertLayerProtocol, ColorSelectDelegate, GJRotationControlDelegate, GJScaleControlDelegate, GJTransformControlDelegate, MusicDownloadDelegate, SetIDPopupDelegate {
	// virtual ~EditorUI();

	static EditorUI* create(LevelEditorLayer*);

	TodoReturn activateRotationControl(cocos2d::CCObject*);
	TodoReturn activateScaleControl(cocos2d::CCObject*);
	TodoReturn activateTransformControl(cocos2d::CCObject*);
	TodoReturn addObjectsToSmartTemplate(GJSmartTemplate*, cocos2d::CCArray*);
	TodoReturn addSnapPosition(cocos2d::CCPoint);
	TodoReturn alignObjects(cocos2d::CCArray*, bool);
	TodoReturn applyOffset(GameObject*);
	TodoReturn applySpecialOffset(cocos2d::CCPoint, GameObject*, cocos2d::CCPoint);
	TodoReturn arrayContainsClass(cocos2d::CCArray*, int);
	TodoReturn assignNewGroups(bool);
	TodoReturn canAllowMultiActivate(GameObject*, cocos2d::CCArray*);
	TodoReturn canSelectObject(GameObject*);
	TodoReturn centerCameraOnObject(GameObject*);
	TodoReturn changeSelectedObjects(cocos2d::CCArray*, bool);
	TodoReturn checkDiffAfterTransformAnchor(cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn checkLiveColorSelect();
	TodoReturn clickOnPosition(cocos2d::CCPoint);
	TodoReturn closeLiveColorSelect();
	TodoReturn closeLiveHSVSelect();
	TodoReturn colorSelectClosed(cocos2d::ccColor3B);
	TodoReturn constrainGameLayerPosition();
	TodoReturn constrainGameLayerPosition(float, float);
	TodoReturn convertKeyBasedOnNeighbors(int, int, cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn convertToBaseKey(int);
	TodoReturn copyObjects(cocos2d::CCArray*, bool, bool);
	TodoReturn copyObjectsDetailed(cocos2d::CCArray*);
	TodoReturn createCustomItems();
	TodoReturn createEdgeForObject(GameObject*, int);
	TodoReturn createExtraObject(int, cocos2d::CCPoint, GameObject*, cocos2d::CCArray*, int, int);
	TodoReturn createExtras(cocos2d::CCArray*);
	TodoReturn createExtrasForObject(int, GameObject*, cocos2d::CCArray*);
	TodoReturn createGlow();
	TodoReturn createLoop();
	TodoReturn createMoveMenu();
	TodoReturn createNewKeyframeAnim();
	TodoReturn createObject(int, cocos2d::CCPoint);
	TodoReturn createOutlines(cocos2d::CCArray*);
	TodoReturn createPrefab(GJSmartTemplate*, gd::string, int);
	TodoReturn createRockBases(cocos2d::CCArray*);
	TodoReturn createRockEdges(cocos2d::CCArray*);
	TodoReturn createSmartObjectsFromTemplate(GJSmartTemplate*, cocos2d::CCArray*, bool, bool, bool, bool);
	TodoReturn createSmartObjectsFromType(int, cocos2d::CCArray*, bool, bool);
	TodoReturn createUndoObject(UndoCommand, bool);
	TodoReturn createUndoSelectObject(bool);
	TodoReturn deactivateRotationControl();
	TodoReturn deactivateScaleControl();
	TodoReturn deactivateTransformControl();
	TodoReturn deleteObject(GameObject*, bool);
	TodoReturn deleteSmartBlocksFromObjects(cocos2d::CCArray*);
	TodoReturn deleteTypeFromObjects(int, cocos2d::CCArray*);
	TodoReturn deselectAll() = win 0xc9510;
	TodoReturn deselectObject();
	TodoReturn deselectObject(GameObject*);
	TodoReturn deselectObjectsColor();
	TodoReturn deselectTargetPortals();
	TodoReturn disableButton(CreateMenuItem*);
	TodoReturn doCopyObjects(bool);
	TodoReturn doPasteInPlace(bool);
	TodoReturn doPasteObjects(bool);
	TodoReturn dynamicGroupUpdate(bool);
	TodoReturn edgeForObject(int, int);
	TodoReturn editButton2Usable() = win 0xD1510;
	TodoReturn editButtonUsable() = win 0xD0E30;
	TodoReturn editColor() = win 0xD41D0;
	TodoReturn editColorButtonUsable() = win 0xD3E10;
	TodoReturn editGroup(cocos2d::CCObject*) = win 0xD47E0;
	TodoReturn editHSV() = win 0xD4660;
	TodoReturn editObject(cocos2d::CCObject*) = win 0xD2900;
	TodoReturn editObject2(cocos2d::CCObject*) = win 0xD3770;
	TodoReturn editObject3(cocos2d::CCObject*);
	TodoReturn editObjectSpecial(int) = win 0xD3780;
	TodoReturn editorLayerForArray(cocos2d::CCArray*, bool);
	TodoReturn enableButton(CreateMenuItem*);
	TodoReturn findAndSelectObject(int, bool);
	TodoReturn findSnapObject(cocos2d::CCArray*, float);
	TodoReturn findSnapObject(cocos2d::CCPoint, float);
	TodoReturn findTriggerTest();
	TodoReturn flipObjectsX(cocos2d::CCArray*);
	TodoReturn flipObjectsY(cocos2d::CCArray*);
	TodoReturn getButton(char const*, int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);
	TodoReturn getCreateBtn(int, int);
	TodoReturn getCreateMenuItemButton(cocos2d::CCSprite*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	TodoReturn getCycledObject(cocos2d::CCArray*, bool);
	TodoReturn getEditColorTargets(ColorAction*&, ColorAction*&, EffectGameObject*&) = win 0xD3FD0;
	TodoReturn getGridSnappedPos(cocos2d::CCPoint);
	TodoReturn getGroupCenter(cocos2d::CCArray*, bool);
	TodoReturn getGroupInfo(GameObject*, cocos2d::CCArray*, int&, int&, int&);
	TodoReturn getLimitedPosition(cocos2d::CCPoint);
	TodoReturn getModeBtn(char const*, int);
	TodoReturn getNeighbor(int, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*);
	TodoReturn getRandomStartKey(int);
	TodoReturn getRelativeOffset(GameObject*);
	TodoReturn getSelectedObjects();
	TodoReturn getSimpleButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);
	TodoReturn getSmartNeighbor(SmartGameObject*, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*);
	TodoReturn getSmartObjectKey(int, GJSmartDirection);
	TodoReturn getSnapAngle(GameObject*, cocos2d::CCArray*);
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);
	TodoReturn getSpriteButton(cocos2d::CCSprite*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	TodoReturn getTouchPoint(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn getTransformState();
	TodoReturn getXMin(int) = win 0xd8070;
	bool init(LevelEditorLayer*) = win 0xa4130;
	bool isLiveColorSelectTrigger(GameObject*);
	bool isSpecialSnapObject(int);
	TodoReturn liveEditColorUsable();
	TodoReturn menuItemFromObjectString(gd::string, int);
	TodoReturn moveForCommand(EditCommand);
	TodoReturn moveGamelayer(cocos2d::CCPoint);
	TodoReturn moveObject(GameObject*, cocos2d::CCPoint);
	TodoReturn moveObjectCall(cocos2d::CCObject*);
	TodoReturn moveObjectCall(EditCommand);
	TodoReturn offsetForKey(int);
	TodoReturn onAssignNewGroupID();
	void onColorFilter(cocos2d::CCObject* sender);
	void onCopy(cocos2d::CCObject* sender);
	void onCopyState(cocos2d::CCObject* sender);
	TodoReturn onCreate();
	void onCreateButton(cocos2d::CCObject* sender);
	TodoReturn onCreateObject(int);
	void onDelete(cocos2d::CCObject* sender);
	void onDeleteAll(cocos2d::CCObject* sender);
	void onDeleteCustomItem(cocos2d::CCObject* sender);
	void onDeleteInfo(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onDeleteSelectedType(cocos2d::CCObject* sender);
	void onDeleteStartPos(cocos2d::CCObject* sender);
	void onDeselectAll(cocos2d::CCObject* sender);
	void onDuplicate(cocos2d::CCObject* sender);
	void onEditColor(cocos2d::CCObject* sender) = win 0xD3F70;
	void onFindObject(cocos2d::CCObject* sender);
	void onGoToBaseLayer(cocos2d::CCObject* sender);
	void onGoToLayer(cocos2d::CCObject* sender);
	void onGroupDown(cocos2d::CCObject* sender);
	void onGroupIDFilter(cocos2d::CCObject* sender);
	void onGroupSticky(cocos2d::CCObject* sender);
	void onGroupUp(cocos2d::CCObject* sender);
	void onLockLayer(cocos2d::CCObject* sender);
	void onNewCustomItem(cocos2d::CCObject* sender) = win 0xa8090;
	void onPaste(cocos2d::CCObject* sender);
	void onPasteColor(cocos2d::CCObject* sender);
	void onPasteInPlace(cocos2d::CCObject* sender);
	void onPasteState(cocos2d::CCObject* sender);
	void onPause(cocos2d::CCObject* sender) = win 0xa6000;
	void onPlayback(cocos2d::CCObject* sender) = win 0xc9c30;
	void onPlaytest(cocos2d::CCObject* sender) = win 0xc9f90;
	void onResetSpecialFilter(cocos2d::CCObject* sender);
	void onSelectBuildTab(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onStopPlaytest(cocos2d::CCObject* sender) = win 0xca100;
	TodoReturn onTargetIDChange(int);
	TodoReturn onToggleGuide(EffectGameObject*);
	TodoReturn onToggleSelectedOrder(EffectGameObject*);
	void onUngroupSticky(cocos2d::CCObject* sender);
	void onUpdateDeleteFilter(cocos2d::CCObject* sender);
	TodoReturn orderDownCustomItem(cocos2d::CCObject*);
	TodoReturn orderUpCustomItem(cocos2d::CCObject*);
	TodoReturn pasteObjects(gd::string, bool);
	TodoReturn playCircleAnim(cocos2d::CCPoint, float, float);
	TodoReturn playerTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn playerTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn playtestStopped() = win 0xca140;
	TodoReturn positionIsInSnapped(cocos2d::CCPoint);
	TodoReturn positionWithoutOffset(GameObject*);
	TodoReturn processSelectObjects(cocos2d::CCArray*);
	TodoReturn processSmartObjectsFromType(int, cocos2d::CCArray*, cocos2d::CCArray*, cocos2d::CCArray*, cocos2d::CCArray*);
	TodoReturn recreateButtonTabs();
	TodoReturn redoLastAction(cocos2d::CCObject*);
	TodoReturn reloadCustomItems();
	TodoReturn removeOffset(GameObject*);
	TodoReturn replaceGroupID(GameObject*, int, int);
	TodoReturn repositionObjectsToCenter(cocos2d::CCArray*, cocos2d::CCPoint, bool);
	TodoReturn resetObjectEditorValues(cocos2d::CCArray*);
	TodoReturn resetSelectedObjectsColor();
	TodoReturn resetUI();
	TodoReturn rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint);
	TodoReturn rotationforCommand(EditCommand);
	TodoReturn scaleObjects(cocos2d::CCArray*, float, float, cocos2d::CCPoint, ObjectScaleType) = win 0xd6510;
	TodoReturn selectAll();
	TodoReturn selectAllWithDirection(bool);
	TodoReturn selectBuildTab(int);
	TodoReturn selectObject(GameObject*, bool);
	TodoReturn selectObjects(cocos2d::CCArray*, bool);
	TodoReturn selectObjectsInRect(cocos2d::CCRect);
	TodoReturn setupCreateMenu() = win 0xAB150;
	TodoReturn setupDeleteMenu();
	TodoReturn setupEditMenu();
	TodoReturn setupTransformControl();
	TodoReturn shouldDeleteObject(GameObject*);
	TodoReturn shouldSnap(GameObject*);
	TodoReturn showDeleteConfirmation();
	TodoReturn showLiveColorSelectForMode(int);
	TodoReturn showLiveColorSelectForModeSpecial(int);
	TodoReturn showMaxBasicError();
	TodoReturn showMaxCoinError();
	TodoReturn showMaxError();
	TodoReturn showUI(bool);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn smartTypeForKey(int);
	TodoReturn spriteFromObjectString(gd::string, bool, bool, int, cocos2d::CCArray*, cocos2d::CCArray*, GameObject*);
	TodoReturn toggleDuplicateButton();
	TodoReturn toggleEditObjectButton() = win 0xD17F0;
	TodoReturn toggleEnableRotate(cocos2d::CCObject*);
	TodoReturn toggleFreeMove(cocos2d::CCObject*);
	TodoReturn toggleLockUI(bool);
	TodoReturn toggleMode(cocos2d::CCObject*);
	TodoReturn toggleObjectInfoLabel();
	TodoReturn toggleSnap(cocos2d::CCObject*);
	TodoReturn toggleSpecialEditButtons();
	TodoReturn toggleStickyControls(bool);
	TodoReturn toggleSwipe(cocos2d::CCObject*);
	TodoReturn transformObject(GameObject*, EditCommand, bool);
	TodoReturn transformObjectCall(cocos2d::CCObject*);
	TodoReturn transformObjectCall(EditCommand);
	TodoReturn transformObjects(cocos2d::CCArray*, cocos2d::CCPoint, float, float, float, float, float, float);
	TodoReturn transformObjectsActive();
	TodoReturn transformObjectsReset();
	TodoReturn triggerSwipeMode();
	TodoReturn tryUpdateTimeMarkers();
	TodoReturn undoLastAction(cocos2d::CCObject*);
	TodoReturn updateButtons() = win 0xA61E0;
	TodoReturn updateCreateMenu(bool);
	TodoReturn updateDeleteButtons();
	TodoReturn updateDeleteMenu();
	TodoReturn updateEditButtonColor(int, cocos2d::ccColor3B);
	TodoReturn updateEditColorButton();
	TodoReturn updateEditMenu();
	TodoReturn updateGridNodeSize();
	TodoReturn updateGridNodeSize(int);
	TodoReturn updateGroupIDBtn2();
	TodoReturn updateGroupIDLabel();
	TodoReturn updateObjectInfoLabel();
	TodoReturn updatePlaybackBtn() = win 0xc9e80;
	TodoReturn updateSlider();
	TodoReturn updateSpecialUIElements();
	TodoReturn updateZoom(float) = win 0xca2d0;
	TodoReturn valueFromXPos(float) = win 0xa6cf0;
	TodoReturn xPosFromValue(float);
	TodoReturn zoomGameLayer(bool);
	TodoReturn zoomIn(cocos2d::CCObject*);
	TodoReturn zoomOut(cocos2d::CCObject*);

	virtual void draw();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn getUI();
	virtual void setIDPopupClosed(SetIDPopup*, int);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn updateTransformControl();
	virtual TodoReturn transformChangeBegin();
	virtual TodoReturn transformChangeEnded();
	virtual TodoReturn getTransformNode();
	virtual TodoReturn transformScaleXChanged(float);
	virtual TodoReturn transformScaleYChanged(float);
	virtual TodoReturn transformScaleXYChanged(float, float);
	virtual TodoReturn transformSkewXChanged(float);
	virtual TodoReturn transformSkewYChanged(float);
	virtual TodoReturn transformRotationXChanged(float);
	virtual TodoReturn transformRotationYChanged(float);
	virtual TodoReturn transformRotationChanged(float);
	virtual TodoReturn transformResetRotation();
	virtual TodoReturn transformRestoreRotation();
	virtual TodoReturn songStateChanged();
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*);
	virtual void keyUp(cocos2d::enumKeyCodes);
	virtual void scrollWheel(float, float);
	virtual TodoReturn angleChangeBegin();
	virtual TodoReturn angleChangeEnded();
	virtual TodoReturn angleChanged(float);
	virtual TodoReturn updateScaleControl();
	virtual TodoReturn anchorPointMoved(cocos2d::CCPoint);
	virtual TodoReturn scaleChangeBegin();
	virtual TodoReturn scaleChangeEnded();
	virtual TodoReturn scaleXChanged(float);
	virtual TodoReturn scaleYChanged(float);
	virtual TodoReturn scaleXYChanged(float, float) = win 0xcc4c0;

	PAD = android32 0xd4;
	EditButtonBar* m_editButtonBar;
	
	PAD = android32 0x30;
	
	cocos2d::CCArray* m_selectedObjects;
	
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
	PAD = mac 0x10, win 0x8, android32 0x8;
	int m_selectedCreateObjectID;
	cocos2d::CCArray* m_createButtonArray;
	cocos2d::CCArray* m_customObjectButtonArray;
	cocos2d::CCArray* m_unknownArray9;
	int m_selectedMode;
	LevelEditorLayer* m_editorLayer;
	cocos2d::CCPoint m_swipeStart;
	cocos2d::CCPoint m_swipeEnd;
	PAD = mac 0x8, win 0x8, android32 0x8;
	cocos2d::CCPoint m_lastTouchPoint;
	cocos2d::CCPoint m_cameraTest;
	PAD = mac 0x8, win 0x8, android32 0x8;
	
	PAD = android32 0x8;
	GameObject* m_selectedObject;
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
	// EffectGameObject();

	static EffectGameObject* create(char const*);

	TodoReturn getTargetColorIndex();
	bool init(char const*);
	TodoReturn playTriggerEffect() = win 0x399910;
	TodoReturn resetSpawnTrigger();
	void setTargetID(int);
	void setTargetID2(int);
	TodoReturn triggerEffectFinished();
	TodoReturn updateInteractiveHover(float);
	TodoReturn updateSpecialColor();
	TodoReturn updateSpeedModType();

	virtual void setOpacity(unsigned char);
	virtual TodoReturn firstSetup();
	virtual TodoReturn customSetup() = win 0x39b7f0;
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x399b90;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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
	PAD = android32 0x4;
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
	PAD = android32 0x6;
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
	PAD = android32 0x8;
	// property 87
	bool m_isMultiActivate;
	PAD = android32 0x2;
	// property 93
	bool m_triggerOnExit;
	// property 95
	int m_itemID2;
	// property 534
	int m_property534;
	PAD = android32 0x4;
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
	PAD = android32 0x1f;
	// property 148
	float m_gravityValue;
	// property 284
	bool m_isSinglePTouch;
	PAD = android32 0x3;
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
	PAD = android32 0xb;
	// property 12
	int m_secretCoinID;
	PAD = android32 0x1c;
	// property 280
	bool m_ignoreGroupParent;
	// property 281
	bool m_ignoreLinkedObjects;
	PAD = android32 0x1;
}

[[link(android)]]
class EffectManagerState {
	// ~EffectManagerState();
	// EffectManagerState();
}

[[link(android)]]
class EndLevelLayer : GJDropDownLayer {
	// virtual ~EndLevelLayer();

	static EndLevelLayer* create();

	TodoReturn coinEnterFinished(cocos2d::CCPoint);
	TodoReturn coinEnterFinishedO(cocos2d::CCObject*);
	TodoReturn currencyEnterFinished();
	TodoReturn diamondEnterFinished();
	TodoReturn getCoinString() = win 0xe8940;
	TodoReturn getEndText() = win 0xea2e0;
	TodoReturn goEdit();
	void onEdit(cocos2d::CCObject* sender);
	void onEveryplay(cocos2d::CCObject* sender);
	void onLevelLeaderboard(cocos2d::CCObject* sender);
	void onMenu(cocos2d::CCObject* sender) = win 0xe8e00;
	void onReplay(cocos2d::CCObject* sender);
	TodoReturn playCoinEffect(float);
	TodoReturn playCurrencyEffect(float);
	TodoReturn playDiamondEffect(float);
	TodoReturn playEndEffect();
	void playStarEffect(float) = win 0xe9070;
	TodoReturn starEnterFinished();
	TodoReturn tryShowBanner(float);

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn customSetup() = win 0xe73e0;
	virtual TodoReturn showLayer(bool);
	virtual TodoReturn enterAnimFinished();
	virtual void keyUp(cocos2d::enumKeyCodes);
}

[[link(android)]]
class EndPortalObject : GameObject {
	// virtual ~EndPortalObject();

	static EndPortalObject* create();

	TodoReturn getSpawnPos() = win 0xeb6b0;
	TodoReturn triggerObject(GJBaseGameLayer*) = win 0xeb630;
	TodoReturn updateColors(cocos2d::ccColor3B) = win 0xeb520;
	TodoReturn updateEndPos(bool) = win 0xeb890;

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
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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
	TodoReturn updateUserCoin() = win 0x1465c0;
	TodoReturn waitForAnimationTrigger();

	virtual TodoReturn customSetup();
	virtual TodoReturn resetObject() = win 0x144720;
	virtual TodoReturn deactivateObject(bool);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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

	PAD = android32 0x25;
	
	bool m_hasCustomAnimation;
	bool m_hasCustomRotation;
	// property 98
	bool m_disableRotation;
	PAD = android32 0x3;
	
	// property 97
	float m_rotationSpeed;
	PAD = android32 0xc;
	
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
	PAD = android32 0xf;
	
	// property 214
	bool m_animateOnlyWhenActive;
	// property 444
	bool m_isNoMultiActivate; // used in platformer stuff
	// property 99
	bool m_isMultiActivate;
	PAD = android32 0x4;
}

[[link(android)]]
class EnhancedTriggerObject : EffectGameObject {
	// virtual ~EnhancedTriggerObject();

	static EnhancedTriggerObject* create(char const*);

	bool init(char const*);

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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

	virtual TodoReturn customSetup();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class EventLinkTrigger : EffectGameObject {
	// virtual ~EventLinkTrigger();

	static EventLinkTrigger* create();

	virtual bool init();
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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
	// virtual ~FLAlertLayer();
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

	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float, bool, float, float) = win 0x30da0;
	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float) = win 0x30cf0;
	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*) = win 0x30c40;

	static FLAlertLayer* create(char const* title, const gd::string& desc, char const* btn) {
		return FLAlertLayer::create(nullptr, title, desc, btn, nullptr, 300.0);
	}

	TodoReturn incrementForcePrio();
	bool init(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float, bool, float, float) = win 0x30f40;
	bool init(int) = win 0x30ea0;
	void onBtn1(cocos2d::CCObject* sender) = win 0x31a80;
	void onBtn2(cocos2d::CCObject* sender) = win 0x31ac0;

	// virtual void onEnter(); // only exists on armv7...
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31b00;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31c50;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31b90;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31c00;
	virtual void registerWithTouchDispatcher() = win 0x31e30;
	virtual void keyBackClicked() = win 0x319e0;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x31970;
	virtual void show() = win 0x31ca0;

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
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class FMODAudioEngine : cocos2d::CCNode {
	// virtual ~FMODAudioEngine();
	// FMODAudioEngine();

	static FMODAudioEngine* sharedEngine() = win 0x32bc0;

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
	TodoReturn createStream(gd::string) = win 0x3ae60;
	TodoReturn disableMetering();
	TodoReturn enableMetering();
	TodoReturn fadeInBackgroundMusic(float);
	TodoReturn fadeInMusic(float, int);
	TodoReturn fadeOutMusic(float, int);
	TodoReturn getActiveMusic(int) = win 0x3a900;
	TodoReturn getActiveMusicChannel(int);
	TodoReturn getBackgroundMusicVolume();
	TodoReturn getChannelGroup(int, bool) = win 0x35210;
	TodoReturn getEffectsVolume();
	TodoReturn getFMODStatus(int) = win 0x3b0b0;
	TodoReturn getMeteringValue();
	TodoReturn getMusicChannelID(int);
	TodoReturn getMusicLengthMS(int) = win 0x3a530;
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
	TodoReturn loadAudioState(FMODAudioState&) = win 0x33fd0;
	TodoReturn loadMusic(gd::string, float, float, float, bool, int, int);
	TodoReturn loadMusic(gd::string);
	TodoReturn pauseAllAudio();
	TodoReturn pauseAllEffects();
	TodoReturn pauseAllMusic() = win 0x38310;
	TodoReturn pauseEffect(unsigned int);
	TodoReturn pauseMusic(int);
	TodoReturn pitchForIdx(int) = win 0x350b0;
	TodoReturn playEffect(gd::string, float, float, float) = win 0x355f0;
	TodoReturn playEffect(gd::string);
	TodoReturn playEffectAdvanced(gd::string, float, float, float, float, bool, bool, int, int, int, int, bool, int, bool, bool, int, int, float, int);
	TodoReturn playEffectAsync(gd::string);
	TodoReturn playMusic(gd::string, bool, float, int);
	TodoReturn preloadEffect(gd::string) = win 0x379d0;
	TodoReturn preloadEffectAsync(gd::string);
	TodoReturn preloadMusic(gd::string, bool, int);
	TodoReturn printResult(FMOD_RESULT);
	TodoReturn queuedEffectFinishedLoading(gd::string) = win 0x391b0;
	TodoReturn queuePlayEffect(gd::string, float, float, float, float, bool, bool, int, int, int, int, bool, int, bool, int, float, int);
	TodoReturn queueStartMusic(gd::string, float, float, float, bool, int, int, int, int, int, bool, int, bool);
	TodoReturn registerChannel(FMOD::Channel*, int, int) = win 0x363e0;
	TodoReturn releaseRemovedSounds();
	TodoReturn resumeAllAudio();
	TodoReturn resumeAllEffects();
	TodoReturn resumeAllMusic() = win 0x38360;
	TodoReturn resumeAudio();
	TodoReturn resumeEffect(unsigned int);
	TodoReturn resumeMusic(int);
	TodoReturn reverbToString(FMODReverbPreset);
	TodoReturn saveAudioState(FMODAudioState&) = win 0x33b50;
	void setBackgroundMusicVolume(float);
	void setChannelPitch(int, AudioTargetType, float) = win 0x37870;
	void setChannelVolume(int, AudioTargetType, float);
	void setChannelVolumeMod(int, AudioTargetType, float);
	void setEffectsVolume(float);
	void setMusicTimeMS(unsigned int, bool, int) = win 0x3a3b0;
	TodoReturn setup() = win 0x32c40;
	TodoReturn setupAudioEngine() = win 0x32f60;
	TodoReturn start() = win 0x33800;
	TodoReturn startMusic(int, int, int, int, bool, int);
	TodoReturn stop() = win 0x5b620;
	TodoReturn stopAllEffects() = win 0x37f50;
	TodoReturn stopAllMusic();
	TodoReturn stopAndGetFade(FMOD::Channel*);
	TodoReturn stopAndRemoveMusic(int);
	TodoReturn stopChannel(FMOD::Channel*, bool, float);
	TodoReturn stopChannel(int, AudioTargetType, bool, float);
	TodoReturn stopChannel(int);
	TodoReturn stopChannelTween(int, AudioTargetType, AudioModType);
	TodoReturn stopChannelTweens(int, AudioTargetType);
	TodoReturn stopMusic(int);
	TodoReturn stopMusicNotInSet(std::unordered_set<int, std::hash<int>, std::equal_to<int>, std::allocator<int> >&);
	TodoReturn storeEffect(FMOD::Sound*, gd::string) = win 0x37bc0;
	TodoReturn swapMusicIndex(int, int);
	TodoReturn testFunction(int);
	TodoReturn triggerQueuedMusic(FMODQueuedMusic);
	TodoReturn unloadAllEffects() = win 0x380f0;
	TodoReturn unloadEffect(gd::string);
	TodoReturn unregisterChannel(int);
	TodoReturn updateBackgroundFade();
	TodoReturn updateChannel(int, AudioTargetType, AudioModType, float, float) = win 0x371c0;
	TodoReturn updateChannelTweens(float) = win 0x34da0;
	TodoReturn updateMetering();
	TodoReturn updateQueuedEffects() = win 0x390e0;
	TodoReturn updateQueuedMusic();
	TodoReturn updateReverb(FMODReverbPreset, bool) = win 0x331f0;
	TodoReturn updateTemporaryEffects();
	TodoReturn waitUntilSoundReady(FMOD::Sound*);

	virtual void update(float) = win 0x33950;

	PAD = win 0x88, android32 0x7c, android64 0xdc;
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

	static FMODLevelVisualizer* create();

	TodoReturn updateVisualizer(float, float, float);

	virtual bool init();
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
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class FRequestProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, FriendRequestDelegate {
	// virtual ~FRequestProfilePage();

	static FRequestProfilePage* create(bool);

	TodoReturn deleteSelected();
	bool init(bool) = win 0xeef10;
	bool isCorrect(char const*);
	TodoReturn loadPage(int);
	void onClose(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onSentRequests(cocos2d::CCObject* sender);
	void onToggleAllObjects(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*);
	TodoReturn untoggleAll();
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

	static FriendRequestPopup* create(GJFriendRequest*);

	TodoReturn blockUser();
	bool init(GJFriendRequest*);
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

	static FriendsProfilePage* create(UserListType);

	bool init(UserListType) = win 0xf0990;
	void onBlocked(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	TodoReturn setupUsersBrowser(cocos2d::CCArray*, UserListType);

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

	static GameLevelManager* sharedState() = win 0xF38F0;

	TodoReturn acceptFriendRequest(int, int);
	TodoReturn accountIDForUserID(int);
	TodoReturn addDLToActive(char const*);
	TodoReturn areGauntletsLoaded();
	TodoReturn banUser(int);
	TodoReturn blockUser(int);
	TodoReturn cleanupDailyLevels() = win 0xf9090;
	TodoReturn createAndGetAccountComments(gd::string, int);
	TodoReturn createAndGetCommentsFull(gd::string, int, bool);
	TodoReturn createAndGetLevelComments(gd::string, int);
	TodoReturn createAndGetLevelLists(gd::string);
	TodoReturn createAndGetLevels(gd::string);
	TodoReturn createAndGetMapPacks(gd::string);
	TodoReturn createAndGetScores(gd::string, GJScoreType);
	TodoReturn createNewLevel();
	TodoReturn createNewLevelList();
	TodoReturn createPageInfo(int, int, int);
	TodoReturn createSmartTemplate();
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn deleteAccountComment(int, int);
	TodoReturn deleteComment(int, CommentType, int) = win 0x10a1f0;
	TodoReturn deleteFriendRequests(int, cocos2d::CCArray*, bool);
	TodoReturn deleteLevel(GJGameLevel*);
	TodoReturn deleteLevelComment(int, int);
	TodoReturn deleteLevelList(GJLevelList*);
	TodoReturn deleteSentFriendRequest(int);
	TodoReturn deleteServerLevel(int);
	TodoReturn deleteServerLevelList(int);
	TodoReturn deleteSmartTemplate(GJSmartTemplate*);
	TodoReturn deleteUserMessages(GJUserMessage*, cocos2d::CCArray*, bool);
	TodoReturn downloadLevel(int, bool) = win 0x100820;
	TodoReturn downloadUserMessage(int, bool);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn firstSetup() = win 0x39b7d0;
	TodoReturn followUser(int);
	TodoReturn friendRequestFromAccountID(int);
	TodoReturn friendRequestWasRemoved(int, bool);
	TodoReturn getAccountCommentKey(int, int);
	TodoReturn getAccountComments(int, int, int);
	TodoReturn getActiveDailyID(GJTimedLevelType);
	TodoReturn getActiveSmartTemplate();
	TodoReturn getAllSmartTemplates();
	TodoReturn getAllUsedSongIDs();
	TodoReturn getBasePostString() = win 0xfb1b0;
	bool getBoolForKey(char const*) = win 0x111610;
	TodoReturn getCommentKey(int, int, int, CommentKeyType);
	cocos2d::CCArray* getCompletedLevels(bool) = win 0xf7680;
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
	TodoReturn getFriendRequests(bool, int, int);
	TodoReturn getGauntletKey(int);
	TodoReturn getGauntletLevels(int) = win 0x100460;
	TodoReturn getGauntlets();
	TodoReturn getGauntletSearchKey(int);
	TodoReturn getGJChallenges();
	TodoReturn getGJDailyLevelState(GJTimedLevelType) = win 0x10ff40;
	TodoReturn getGJRewards(int);
	TodoReturn getGJUserInfo(int) = win 0x106070;
	TodoReturn getHighestLevelOrder();
	TodoReturn getIntForKey(char const*);
	TodoReturn getLeaderboardScores(char const*);
	TodoReturn getLengthStr(bool, bool, bool, bool, bool, bool);
	TodoReturn getLenKey(int);
	TodoReturn getLenVal(int);
	TodoReturn getLevelComments(int, int, int, int, CommentKeyType);
	TodoReturn getLevelDownloadKey(int, bool);
	TodoReturn getLevelKey(int);
	TodoReturn getLevelLeaderboard(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = win 0x104c80;
	TodoReturn getLevelLeaderboardKey(int, LevelLeaderboardType, LevelLeaderboardMode);
	TodoReturn getLevelListKey(int);
	void getLevelLists(GJSearchObject*) = win 0xFF400;
	TodoReturn getLevelSaveData();
	TodoReturn getLikeAccountItemKey(LikeItemType, int, bool, int);
	TodoReturn getLikeItemKey(LikeItemType, int, bool, int);
	TodoReturn getLocalLevel(int);
	TodoReturn getLocalLevelByName(gd::string);
	TodoReturn getLocalLevelList(int);
	TodoReturn getLowestLevelOrder();
	TodoReturn getMainLevel(int, bool) = win 0xf4c40;
	TodoReturn getMapPackKey(int);
	TodoReturn getMapPacks(GJSearchObject*);
	TodoReturn getMessageKey(int);
	TodoReturn getMessagesKey(bool, int);
	TodoReturn getNews();
	TodoReturn getNextFreeTemplateID();
	TodoReturn getNextLevelName(gd::string);
	TodoReturn getOnlineLevels(GJSearchObject*) = win 0xfc8b0;
	TodoReturn getPageInfo(char const*);
	TodoReturn getPostCommentKey(int);
	TodoReturn getRateStarsKey(int);
	TodoReturn getReportKey(int);
	TodoReturn getSavedDailyLevel(int);
	TodoReturn getSavedDailyLevelFromLevelID(int);
	TodoReturn getSavedGauntlet(int);
	TodoReturn getSavedGauntletLevel(int);
	TodoReturn getSavedLevel(GJGameLevel*);
	TodoReturn getSavedLevel(int);
	TodoReturn getSavedLevelList(int);
	TodoReturn getSavedLevelLists(int) = win 0xf7680;
	TodoReturn getSavedLevels(bool, int) = win 0xf7230;
	TodoReturn getSavedMapPack(int);
	TodoReturn getSearchScene(char const*);
	TodoReturn getSplitIntFromKey(char const*, int);
	TodoReturn getStoredLevelComments(char const*);
	cocos2d::CCArray* getStoredOnlineLevels(char const*) = win 0xf8320;
	TodoReturn getStoredUserList(UserListType);
	TodoReturn getStoredUserMessage(int);
	TodoReturn getStoredUserMessageReply(int);
	TodoReturn getTimeLeft(char const*, float);
	TodoReturn getTopArtists(int, int);
	TodoReturn getTopArtistsKey(int);
	TodoReturn getUploadMessageKey(int);
	TodoReturn getUserInfoKey(int);
	TodoReturn getUserList(UserListType);
	TodoReturn getUserMessages(bool, int, int);
	TodoReturn getUsers(GJSearchObject*);
	TodoReturn gotoLevelPage(GJGameLevel*);
	void handleIt(bool, gd::string, gd::string, GJHttpType) = win 0xf3d80;
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	TodoReturn hasDailyStateBeenLoaded(GJTimedLevelType);
	TodoReturn hasDownloadedLevel(int);
	TodoReturn hasDownloadedList(int);
	TodoReturn hasLikedAccountItem(LikeItemType, int, bool, int);
	TodoReturn hasLikedItem(LikeItemType, int, bool, int);
	bool hasLikedItemFullCheck(LikeItemType, int, int) = win 0x10e5e0;
	TodoReturn hasRatedDemon(int);
	TodoReturn hasRatedLevelStars(int);
	TodoReturn hasReportedLevel(int);
	TodoReturn invalidateMessages(bool, bool);
	TodoReturn invalidateRequests(bool, bool);
	TodoReturn invalidateUserList(UserListType, bool);
	bool isDLActive(char const*);
	bool isFollowingUser(int) = win 0xF9300;
	bool isTimeValid(char const*, float);
	bool isUpdateValid(int);
	TodoReturn itemIDFromLikeKey(char const*);
	TodoReturn keyHasTimer(char const*);
	TodoReturn levelIDFromCommentKey(char const*);
	TodoReturn levelIDFromPostCommentKey(char const*);
	TodoReturn likeFromLikeKey(char const*);
	TodoReturn likeItem(LikeItemType, int, bool, int);
	TodoReturn limitSavedLevels() = win 0xf8c00;
	TodoReturn makeTimeStamp(char const*) = win 0xf8760;
	TodoReturn markItemAsLiked(LikeItemType, int, bool, int);
	TodoReturn markLevelAsDownloaded(int);
	TodoReturn markLevelAsRatedDemon(int);
	TodoReturn markLevelAsRatedStars(int);
	TodoReturn markLevelAsReported(int);
	TodoReturn markListAsDownloaded(int);
	TodoReturn messageWasRemoved(int, bool);
	TodoReturn onAcceptFriendRequestCompleted(gd::string, gd::string);
	TodoReturn onBanUserCompleted(gd::string, gd::string);
	TodoReturn onBlockUserCompleted(gd::string, gd::string);
	TodoReturn onDeleteCommentCompleted(gd::string, gd::string) = win 0x10a540;
	TodoReturn onDeleteFriendRequestCompleted(gd::string, gd::string);
	TodoReturn onDeleteServerLevelCompleted(gd::string, gd::string);
	TodoReturn onDeleteServerLevelListCompleted(gd::string, gd::string) = win 0xff290;
	TodoReturn onDeleteUserMessagesCompleted(gd::string, gd::string);
	TodoReturn onDownloadLevelCompleted(gd::string, gd::string) = win 0x100C90;
	TodoReturn onDownloadUserMessageCompleted(gd::string, gd::string);
	TodoReturn onGetAccountCommentsCompleted(gd::string, gd::string);
	TodoReturn onGetFriendRequestsCompleted(gd::string, gd::string);
	TodoReturn onGetGauntletsCompleted(gd::string, gd::string) = win 0xffe60;
	TodoReturn onGetGJChallengesCompleted(gd::string, gd::string);
	TodoReturn onGetGJDailyLevelStateCompleted(gd::string, gd::string) = win 0x110140;
	TodoReturn onGetGJRewardsCompleted(gd::string, gd::string);
	TodoReturn onGetGJUserInfoCompleted(gd::string, gd::string) = win 0x1061d0;
	TodoReturn onGetLeaderboardScoresCompleted(gd::string, gd::string);
	TodoReturn onGetLevelCommentsCompleted(gd::string, gd::string);
	TodoReturn onGetLevelLeaderboardCompleted(gd::string, gd::string);
	TodoReturn onGetLevelListsCompleted(gd::string, gd::string) = win 0xff5f0;
	TodoReturn onGetLevelSaveDataCompleted(gd::string, gd::string);
	TodoReturn onGetMapPacksCompleted(gd::string, gd::string) = win 0xfde80;
	TodoReturn onGetNewsCompleted(gd::string, gd::string) = win 0x107a00;
	TodoReturn onGetOnlineLevelsCompleted(gd::string, gd::string) = win 0xfd070;
	TodoReturn onGetTopArtistsCompleted(gd::string, gd::string) = win 0x105850;
	TodoReturn onGetUserListCompleted(gd::string, gd::string);
	TodoReturn onGetUserMessagesCompleted(gd::string, gd::string);
	TodoReturn onGetUsersCompleted(gd::string, gd::string);
	TodoReturn onLikeItemCompleted(gd::string, gd::string) = win 0x10dee0;
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onRateDemonCompleted(gd::string, gd::string);
	TodoReturn onRateStarsCompleted(gd::string, gd::string);
	TodoReturn onReadFriendRequestCompleted(gd::string, gd::string);
	TodoReturn onRemoveFriendCompleted(gd::string, gd::string);
	TodoReturn onReportLevelCompleted(gd::string, gd::string);
	TodoReturn onRequestUserAccessCompleted(gd::string, gd::string);
	TodoReturn onRestoreItemsCompleted(gd::string, gd::string);
	TodoReturn onSetLevelFeaturedCompleted(gd::string, gd::string);
	TodoReturn onSetLevelStarsCompleted(gd::string, gd::string);
	TodoReturn onSubmitUserInfoCompleted(gd::string, gd::string);
	TodoReturn onSuggestLevelStarsCompleted(gd::string, gd::string);
	TodoReturn onUnblockUserCompleted(gd::string, gd::string);
	TodoReturn onUpdateDescriptionCompleted(gd::string, gd::string);
	TodoReturn onUpdateLevelCompleted(gd::string, gd::string);
	TodoReturn onUpdateUserScoreCompleted(gd::string, gd::string);
	TodoReturn onUploadCommentCompleted(gd::string, gd::string) = win 0x109a30;
	TodoReturn onUploadFriendRequestCompleted(gd::string, gd::string);
	TodoReturn onUploadLevelCompleted(gd::string, gd::string) = win 0xfbfb0;
	TodoReturn onUploadLevelListCompleted(gd::string, gd::string) = win 0xfef20;
	TodoReturn onUploadUserMessageCompleted(gd::string, gd::string);
	TodoReturn pageFromCommentKey(char const*);
	TodoReturn parseRestoreData(gd::string);
	TodoReturn performNetworkTest() = win 0xf3970;
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType) = win 0xf3ae0;
	TodoReturn processOnDownloadLevelCompleted(gd::string, gd::string, bool) = win 0x100D60;
	TodoReturn purgeUnusedLevels();
	TodoReturn rateDemon(int, int, bool);
	TodoReturn rateStars(int, int);
	TodoReturn readFriendRequest(int);
	TodoReturn removeDelimiterChars(gd::string, bool);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn removeFriend(int);
	TodoReturn removeLevelDownloadedKeysFromDict(cocos2d::CCDictionary*);
	TodoReturn removeUserFromList(int, UserListType);
	TodoReturn reportLevel(int);
	TodoReturn requestUserAccess();
	TodoReturn resetAccountComments(int) = win 0x108910;
	TodoReturn resetAllTimers();
	TodoReturn resetCommentTimersForLevelID(int, CommentKeyType) = win 0x109fb0;
	TodoReturn resetDailyLevelState(GJTimedLevelType) = win 0x110600;
	TodoReturn resetGauntlets();
    inline void resetStoredUserInfo(int id) {
        m_storedUserInfo->removeObjectForKey(id);
    }
	TodoReturn resetStoredUserList(UserListType);
	TodoReturn resetTimerForKey(char const*);
	TodoReturn responseToDict(gd::string, bool);
	TodoReturn restoreItems();
	TodoReturn saveFetchedLevelLists(cocos2d::CCArray*);
	TodoReturn saveFetchedLevels(cocos2d::CCArray*);
	TodoReturn saveFetchedMapPacks(cocos2d::CCArray*);
	TodoReturn saveGauntlet(GJMapPack*);
	TodoReturn saveLevel(GJGameLevel*);
	TodoReturn saveLevelList(GJLevelList*);
	TodoReturn saveLocalScore(int, int, int);
	TodoReturn saveMapPack(GJMapPack*);
	void setActiveSmartTemplate(GJSmartTemplate*);
	void setBoolForKey(bool, char const*) = win 0x111550;
	void setDiffVal(int, bool);
	void setFolderName(int, gd::string, bool);
	void setIntForKey(int, char const*);
	void setLenVal(int, bool);
	void setLevelFeatured(int, int, bool);
	void setLevelStars(int, int, bool);
	TodoReturn specialFromLikeKey(char const*);
	TodoReturn storeCommentsResult(cocos2d::CCArray*, gd::string, char const*);
	TodoReturn storeDailyLevelState(int, int, GJTimedLevelType);
	TodoReturn storeFriendRequest(GJFriendRequest*);
	TodoReturn storeSearchResult(cocos2d::CCArray*, gd::string, char const*);
	TodoReturn storeUserInfo(GJUserScore*);
	TodoReturn storeUserMessage(GJUserMessage*);
	TodoReturn storeUserMessageReply(int, GJUserMessage*);
	TodoReturn storeUserName(int, int, gd::string) = win 0xf6030;
	TodoReturn storeUserNames(gd::string);
	TodoReturn submitUserInfo();
	TodoReturn suggestLevelStars(int, int, int);
	TodoReturn tryGetUsername(int) = win 0xf6260;
	TodoReturn typeFromCommentKey(char const*);
	TodoReturn typeFromLikeKey(char const*);
	TodoReturn unblockUser(int);
	TodoReturn unfollowUser(int);
	TodoReturn updateDescription(int, gd::string);
	TodoReturn updateLevel(GJGameLevel*);
	TodoReturn updateLevelOrders() = win 0xf74e0;
	TodoReturn updateLevelRewards(GJGameLevel*);
	TodoReturn updateSavedLevelList(GJLevelList*);
	TodoReturn updateUsernames();
	TodoReturn updateUserScore() = win 0x1036a0;
	TodoReturn uploadAccountComment(gd::string) = win 0x1092b0;
	TodoReturn uploadComment(gd::string, CommentType, int, int) = win 0x109340;
	TodoReturn uploadFriendRequest(int, gd::string) = win 0x10ad10;
	TodoReturn uploadLevel(GJGameLevel*) = win 0xfb360;
	TodoReturn uploadLevelComment(int, gd::string, int) = win 0x109220;
	TodoReturn uploadLevelList(GJLevelList*);
	TodoReturn uploadUserMessage(int, gd::string, gd::string);
	TodoReturn userIDForAccountID(int);
	TodoReturn userInfoForAccountID(int);
	gd::string userNameForUserID(int) = win 0xf6180;
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
	/*UserListDelegate* m_userListDelegate;
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
	cocos2d::CCString* m_unkStr4;*/
}

[[link(android), depends(UIButtonConfig)]]
class GameManager : GManager {
	// virtual ~GameManager();

	static GameManager* get() {
		return GameManager::sharedState();
	}

	static GameManager* sharedState() = win 0x120860;

	TodoReturn accountStatusChanged();
	TodoReturn activeIconForType(IconType);
	TodoReturn addCustomAnimationFrame(int, int, gd::string, gd::string);
	TodoReturn addDuplicateLastFrame(int);
	TodoReturn addGameAnimation(int, int, float, gd::string, gd::string, int);
	TodoReturn addIconDelegate(cocos2d::CCObject*, int);
	TodoReturn addNewCustomObject(gd::string);
	TodoReturn addToGJLog(cocos2d::CCString*);
	TodoReturn applicationDidEnterBackground();
	TodoReturn applicationWillEnterForeground() = win 0x12d130;
	TodoReturn calculateBaseKeyForIcons();
	TodoReturn canShowRewardedVideo();
	TodoReturn checkSteamAchievementUnlock();
	TodoReturn checkUsedIcons();
	TodoReturn claimItemsResponse(gd::string);
	TodoReturn clearGJLog();
	cocos2d::ccColor3B colorForIdx(int) = win 0x1253b0;
	TodoReturn colorForPos(int);
	TodoReturn colorKey(int, UnlockType);
	TodoReturn completedAchievement(gd::string);
	TodoReturn countForType(IconType);
	TodoReturn defaultFrameForAnimation(int);
	TodoReturn defaultYOffsetForBG2(int);
	TodoReturn didExitPlayscene();
	TodoReturn doQuickSave() = win 0x12d080;
	TodoReturn dpadConfigToString(UIButtonConfig&);
	TodoReturn eventUnlockFeature(char const*);
	TodoReturn fadeInMenuMusic() = win 0x120d10;
	TodoReturn fadeInMusic(gd::string);
	TodoReturn finishedLoadingBGAsync(cocos2d::CCObject*);
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
	TodoReturn getBGTexture(int);
	TodoReturn getFontFile(int);
	TodoReturn getFontTexture(int);
	bool getGameVariable(char const*) = win 0x127a50;
	TodoReturn getGTexture(int);
	TodoReturn getIconRequestID();
	int getIntGameVariable(char const*) = win 0x127fa0;
	TodoReturn getMenuMusicFile();
	TodoReturn getMGTexture(int);
	TodoReturn getNextUniqueObjectKey();
	TodoReturn getNextUsedKey(int, bool);
	TodoReturn getOrderedCustomObjectKeys();
	TodoReturn getPracticeMusicFile() = win 0x120ad0;
	TodoReturn getUGV(char const*);
	TodoReturn getUnlockForAchievement(gd::string, int&, UnlockType&);
	TodoReturn groundHasSecondaryColor(int);
	TodoReturn iconAndTypeForKey(int, int&, int&);
	TodoReturn iconKey(int, IconType);
	UnlockType iconTypeToUnlockType(IconType) = win 0x1213B0;
	bool isColorUnlocked(int, UnlockType) = win 0x1217b0;
	bool isIconLoaded(int, int);
	bool isIconUnlocked(int, IconType) = win 0x1212b0;
	TodoReturn itemPurchased(char const*);
	TodoReturn joinDiscord();
	TodoReturn joinReddit();
	TodoReturn keyForIcon(int, int);
	TodoReturn levelIsPremium(int, int);
	TodoReturn likeFacebook();
	TodoReturn loadBackground(int);
	TodoReturn loadBackgroundAsync(int);
	TodoReturn loadDeathEffect(int);
	TodoReturn loadDpadFromString(UIButtonConfig&, gd::string);
	TodoReturn loadDPadLayout(int, bool);
	TodoReturn loadFont(int);
	TodoReturn loadGround(int);
	TodoReturn loadGroundAsync(int);
	TodoReturn loadIcon(int, int, int) = win 0x126760;
	TodoReturn loadIconAsync(int, int, int, cocos2d::CCObject*);
	TodoReturn loadMiddleground(int);
	TodoReturn loadMiddlegroundAsync(int);
	TodoReturn loadVideoSettings();
	TodoReturn lockColor(int, UnlockType);
	TodoReturn lockIcon(int, IconType);
	TodoReturn logLoadedIconInfo();
	TodoReturn openEditorGuide();
	TodoReturn playMenuMusic();
	TodoReturn playSFXTrigger(SFXTriggerGameObject*) = win 0x120e60;
	TodoReturn prepareDPadSettings();
	TodoReturn printGJLog();
	TodoReturn queueReloadMenu() = win 0x12d640;
	TodoReturn rateGame();
	TodoReturn recountUserStats(gd::string);
	TodoReturn reloadAll(bool, bool, bool) = win 0x12d710;
	TodoReturn reloadAllStep2() = win 0x12d7a0;
	TodoReturn reloadAllStep3() = win 0x12d900;
	TodoReturn reloadAllStep4() = win 0x12d9a0;
	TodoReturn reloadAllStep5();
	TodoReturn reloadMenu();
	TodoReturn removeCustomObject(int);
	TodoReturn removeIconDelegate(int) = win 0x126690;
	TodoReturn reorderKey(int, bool);
	TodoReturn reportAchievementWithID(char const*, int, bool);
	TodoReturn reportPercentageForLevel(int, int, bool) = win 0x122070;
	TodoReturn resetAchievement(gd::string);
	TodoReturn resetAdTimer();
	TodoReturn resetAllIcons();
	TodoReturn resetCoinUnlocks();
	TodoReturn resetDPadSettings(bool);
	TodoReturn resolutionForKey(int) = win 0x12da60;
	TodoReturn returnToLastScene(GJGameLevel*) = win 0x12d370;
	TodoReturn rewardedVideoAdFinished(int);
	TodoReturn rewardedVideoHidden();
	TodoReturn rewardedVideoHiddenDelayed();
	TodoReturn safePopScene();
	TodoReturn saveAdTimer();
	TodoReturn saveDPadLayout(int, bool);
	void setGameVariable(char const*, bool) = win 0x127800;
	void setHasRatingPower(int);
	void setIntGameVariable(char const*, int);
	void setPlayerBall(int);
	void setPlayerBird(int);
	void setPlayerColor(int);
	void setPlayerColor2(int);
	void setPlayerColor3(int);
	void setPlayerDart(int);
	void setPlayerDeathEffect(int);
	void setPlayerFrame(int);
	void setPlayerJetpack(int);
	void setPlayerRobot(int);
	void setPlayerShip(int);
	void setPlayerShipStreak(int);
	void setPlayerSpider(int);
	void setPlayerStreak(int);
	void setPlayerSwing(int);
	void setPlayerUserID(int);
	void setUGV(char const*, bool) = win 0x127bf0;
	TodoReturn setupGameAnimations();
	TodoReturn sheetNameForIcon(int, int);
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
	TodoReturn unloadBackground();
	TodoReturn unloadIcon(int, int, int);
	TodoReturn unloadIcons(int) = win 0x126b90;
	TodoReturn unlockColor(int, UnlockType);
	TodoReturn unlockedPremium();
	TodoReturn unlockIcon(int, IconType);
	TodoReturn unlockTypeToIconType(int);
	TodoReturn updateCustomFPS() = win 0x12dec0;
	TodoReturn updateMusic();
	TodoReturn verifyAchievementUnlocks();
	TodoReturn verifyCoinUnlocks();
	TodoReturn verifyStarUnlocks();
	TodoReturn verifySyncedCoins();
	TodoReturn videoAdHidden();
	TodoReturn videoAdShowed();

	virtual void update(float);
	virtual bool init() = win 0x11faa0;
	virtual TodoReturn encodeDataTo(DS_Dictionary*);
	virtual TodoReturn dataLoaded(DS_Dictionary*);
	virtual TodoReturn firstLoad();

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
	int m_playerUserID_a;
	int m_playerUserID_b;
	int m_playerUserID;
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
	int m_playerIconType;
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
	// GameObject();

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
	TodoReturn colorForMode(int, bool) = win 0x141c60;
	TodoReturn commonInteractiveSetup();
	TodoReturn commonSetup() = win 0x130320;
	TodoReturn copyGroups(GameObject*);
	TodoReturn createAndAddParticle(int, char const*, int, cocos2d::tCCPositionType) = win 0x13a9e0;
	TodoReturn createColorGroupContainer(int);
	TodoReturn createGlow(gd::string);
	TodoReturn createGroupContainer(int);
	TodoReturn createOpacityGroupContainer(int);
	TodoReturn createSpriteColor(int);
	TodoReturn createWithFrame(char const*) = win 0x130220;
	TodoReturn createWithKey(int) = win 0x12f590;
	TodoReturn deselectObject();
	TodoReturn destroyObject();
	TodoReturn determineSlopeDirection() = win 0x13c610;
	TodoReturn didScaleXChange();
	TodoReturn didScaleYChange();
	TodoReturn dirtifyObjectPos();
	TodoReturn dirtifyObjectRect();
	TodoReturn disableObject();
	TodoReturn dontCountTowardsLimit();
	TodoReturn duplicateAttributes(GameObject*);
	TodoReturn duplicateColorMode(GameObject*);
	TodoReturn duplicateValues(GameObject*);
	TodoReturn editorColorForCustomMode(int);
	TodoReturn editorColorForMode(int);
	TodoReturn fastRotateObject(float);
	TodoReturn getActiveColorForMode(int, bool) = win 0x141f40;
	TodoReturn getBallFrame(int);
	TodoReturn getBoundingRect();
	TodoReturn getBoxOffset();
	TodoReturn getColorFrame(gd::string);
	TodoReturn getColorIndex();
	TodoReturn getColorKey(bool, bool) = win 0x13d1e0;
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
	TodoReturn getRelativeSpriteColor(int);
	TodoReturn getScalePosDelta();
	TodoReturn getSecondaryColor();
	TodoReturn getSecondaryColorMode();
	TodoReturn getSlopeAngle();
	TodoReturn getStartPos();
	TodoReturn getType();
	TodoReturn getUnmodifiedPosition();
	TodoReturn groupColor(cocos2d::ccColor3B const&, bool);
	TodoReturn groupOpacityMod() = win 0x13cfc0;
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
	bool isFacingDown() = win 0x141390;
	bool isFacingLeft();
	bool isSettingsObject();
	bool isSpawnableTrigger();
	bool isSpecialObject();
	bool isSpeedObject() = win 0x142b80;
	bool isStoppableTrigger();
	bool isTrigger();
	TodoReturn loadGroupsFromString(gd::string);
	TodoReturn makeInvisible();
	TodoReturn objectFromVector(gd::vector<gd::string>&, gd::vector<void*>&, GJBaseGameLayer*, bool) = win 0x13d670;
	TodoReturn opacityModForMode(int, bool);
	TodoReturn parentForZLayer(int, bool, int);
	TodoReturn perspectiveColorFrame(char const*, int);
	TodoReturn perspectiveFrame(char const*, int);
	TodoReturn playDestroyObjectAnim(GJBaseGameLayer*);
	TodoReturn playPickupAnimation(cocos2d::CCSprite*, float, float, float, float, float, float, float, float, bool, float, float);
	TodoReturn playPickupAnimation(cocos2d::CCSprite*, float, float, float, float);
	TodoReturn playShineEffect();
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
	TodoReturn shouldBlendColor(GJSpriteColor*, bool) = win 0x132ad0;
	TodoReturn shouldLockX();
	TodoReturn shouldNotHideAnimFreeze();
	TodoReturn shouldShowPickupEffects();
	TodoReturn slopeFloorTop();
	TodoReturn slopeWallLeft();
	TodoReturn slopeYPos(cocos2d::CCRect);
	TodoReturn slopeYPos(float);
	TodoReturn slopeYPos(GameObject*);
	TodoReturn spawnDefaultPickupParticle(GJBaseGameLayer*);
	TodoReturn updateBlendMode() = win 0x13c180;
	TodoReturn updateCustomColorType(short);
	TodoReturn updateCustomScaleX(float);
	TodoReturn updateCustomScaleY(float);
	TodoReturn updateHSVState();
	TodoReturn updateIsOriented() = win 0x1411f0;
	TodoReturn updateMainColor();
	TodoReturn updateMainColorOnly();
	TodoReturn updateMainOpacity();
	TodoReturn updateObjectEditorColor();
	TodoReturn updateSecondaryColor();
	TodoReturn updateSecondaryColorOnly();
	TodoReturn updateSecondaryOpacity();
	TodoReturn updateStartPos();
	TodoReturn updateUnmodifiedPositions();
	TodoReturn usesFreezeAnimation();
	TodoReturn usesSpecialAnimation();

	virtual void update(float);
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setScale(float);
	virtual void setPosition(cocos2d::CCPoint const&) = win 0x139c90;
	virtual void setVisible(bool);
	virtual void setRotation(float);
	virtual void setRotationX(float);
	virtual void setRotationY(float);
	virtual void setOpacity(unsigned char);
	virtual bool initWithTexture(cocos2d::CCTexture2D*);
	virtual void setChildColor(cocos2d::ccColor3B const&);
	virtual void setFlipX(bool);
	virtual void setFlipY(bool);
	virtual TodoReturn firstSetup();
	virtual TodoReturn customSetup();
	virtual TodoReturn setupCustomSprites(gd::string) = win 0x14cfa0;
	virtual TodoReturn addMainSpriteToParent(bool) = win 0x13c1e0;
	virtual TodoReturn resetObject();
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn activateObject();
	virtual TodoReturn deactivateObject(bool) = win 0x1329e0;
	virtual TodoReturn transferObjectRect(cocos2d::CCRect&) = win 0x139750;
	virtual TodoReturn getObjectRect() = win 0x1397c0;
	virtual TodoReturn getObjectRect(float, float);
	virtual TodoReturn getObjectRect2(float, float);
	virtual TodoReturn getObjectTextureRect();
	virtual TodoReturn getRealPosition();
	virtual void setStartPos(cocos2d::CCPoint);
	virtual TodoReturn updateStartValues();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
	virtual TodoReturn claimParticle();
	virtual TodoReturn unclaimParticle();
	virtual TodoReturn particleWasActivated();
	virtual bool isFlipX();
	virtual bool isFlipY();
	virtual void setRScaleX(float);
	virtual void setRScaleY(float);
	virtual void setRScale(float);
	virtual TodoReturn getRScaleX();
	virtual TodoReturn getRScaleY();
	virtual void setRRotation(float);
	virtual TodoReturn triggerActivated(float);
	virtual void setObjectColor(cocos2d::ccColor3B const&);
	virtual void setGlowColor(cocos2d::ccColor3B const&);
	virtual TodoReturn restoreObject();
	virtual TodoReturn animationTriggered();
	virtual TodoReturn selectObject(cocos2d::ccColor3B);
	virtual TodoReturn activatedByPlayer(PlayerObject*);
	virtual TodoReturn hasBeenActivatedByPlayer(PlayerObject*);
	virtual TodoReturn hasBeenActivated();
	virtual TodoReturn getOrientedBox();
	virtual TodoReturn updateOrientedBox();
	virtual TodoReturn getObjectRotation();
	virtual TodoReturn updateMainColor(cocos2d::ccColor3B const&);
	virtual TodoReturn updateSecondaryColor(cocos2d::ccColor3B const&);
	virtual TodoReturn addToGroup(int);
	virtual TodoReturn removeFromGroup(int);
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

	PAD = android32 0xf, win 0xf;
	
	// property 511
	bool m_hasExtendedCollision;
	PAD = android32 0x13, win 0x13;
	
	cocos2d::CCSprite* m_baseSprite;
	cocos2d::CCSprite* m_detailSprite;
	
	PAD = android32 0x64, win 0x64;
	
	gd::string m_particleString;
	
	PAD = android32 0x1, win 0x1;
	
	// property 146
	bool m_particleUseObjectColor;
	PAD = android32 0x3e, win 0x32;
	
	// property 108
	int m_linkedGroup;
	PAD = android32 0x23, win 0x23;
	
	int m_uniqueID;
	GameObjectType m_objectType;
	
	PAD = android32 0x14, win 0x14;
	double m_realXPosition;
	double m_realYPosition;
	cocos2d::CCPoint m_startPosition;
	PAD = android32 0x1, win 0x1;
	
	// property 372
	bool m_hasNoAudioScale;
	PAD = android32 0x2a, win 0x2a;
	
	// property 343
	short m_enterChannel;
	// property 446
	short m_objectMaterial;
	PAD = android32 0x4, win 0x4;
	
	// property 96
	bool m_hasNoGlow;
	
	// property 23
	int m_targetColor;
	
	// property 1
	int m_objectID;
	PAD = android32 0x8, win 0x8;
	
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
	PAD = android32 0x16, win 0x16;
	
	// property 53
	int m_property53;
	PAD = android32 0x18, win 0x18;
	
	// property 21, also used with 41 and 43
	GJSpriteColor* m_baseColor;
	// property 22, also used with 42 and 44
	GJSpriteColor* m_detailColor;
	PAD = android32 0xc;
	
	// property 24
	ZLayer m_zLayer;
	// property 25
	int m_zOrder;
	PAD = android32 0x10, win 0x10;
	
	bool m_shouldUpdateColorSprite; // m_shouldUpdateColorSprite
	PAD = android32 0x1, win 0x1;
	
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
	PAD = android32 0xf, win 0xf;
	
	// property 20
	short m_editorLayer;
	// property 61
	short m_editorLayer2;
	PAD = android32 0x8, win 0x8;
	
	// property 121
	bool m_isNoTouch;
	PAD = android32 0x2c, win 0x2c;
	
	// property 103
	bool m_isHighDetail;
	PAD = android32 0x11, win 0x11;
	
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
	PAD = android32 0x11, win 0x11;
	
	// property 155
	int m_property155;
	// property 156
	int m_property156;
	
	PAD = android32 0x12, win 0x26; // TODO: yeah someone pls fix windows pads
}

[[link(android)]]
class GameObjectCopy : cocos2d::CCObject {
	// virtual ~GameObjectCopy();

	static GameObjectCopy* create(GameObject*);

	bool init(GameObject*);
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
	void onPracticeMusicSync(cocos2d::CCObject* sender) = win 0x212430;
	void onUIOptions(cocos2d::CCObject* sender);
	TodoReturn showPracticeMusicSyncUnlockInfo() = win 0x212120;

	virtual TodoReturn setupOptions();
	virtual TodoReturn didToggle(int);
}

[[link(android)]]
class GameOptionsTrigger : EffectGameObject {
	// virtual ~GameOptionsTrigger();

	static GameOptionsTrigger* create(char const*);

	bool init(char const*);

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class GameRateDelegate {
	virtual TodoReturn updateRate();
}

[[link(android)]]
class GameStatsManager : cocos2d::CCNode {
	// virtual ~GameStatsManager();

	static GameStatsManager* sharedState() = win 0x166FC0;

	TodoReturn accountIDForIcon(int, UnlockType);
	TodoReturn addSimpleSpecialChestReward(gd::string, UnlockType, int, bool);
	TodoReturn addSpecialRewardDescription(gd::string, gd::string);
	TodoReturn addStoreItem(int, int, int, int, ShopType) = win 0x169170;
	TodoReturn areChallengesLoaded();
	TodoReturn areRewardsLoaded();
	TodoReturn awardCurrencyForLevel(GJGameLevel*) = win 0x1711b0;
	TodoReturn awardDiamondsForLevel(GJGameLevel*) = win 0x1716d0;
	TodoReturn awardSecretKey() = win 0x17f1e0;
	TodoReturn checkAchievement(char const*) = win 0x16a1e0;
	TodoReturn checkCoinAchievement(GJGameLevel*);
	TodoReturn checkCoinsForLevel(GJGameLevel*);
	TodoReturn claimListReward(GJLevelList*);
	TodoReturn collectReward(GJRewardType, GJRewardItem*);
	TodoReturn collectVideoReward(int);
	TodoReturn completedChallenge(GJChallengeItem*);
	TodoReturn completedDailyLevel(GJGameLevel*);
	TodoReturn completedDemonLevel(GJGameLevel*) = win 0x16f1e0;
	TodoReturn completedLevel(GJGameLevel*);
	TodoReturn completedMapPack(GJMapPack*);
	TodoReturn completedStarLevel(GJGameLevel*) = win 0x16f2d0;
	TodoReturn countSecretChests(GJRewardType);
	TodoReturn countUnlockedSecretChests(GJRewardType);
	TodoReturn createSecretChestItems();
	TodoReturn createSecretChestRewards();
	TodoReturn createSpecialChestItems();
	TodoReturn createStoreItems();
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn generateItemUnlockableData();
	int getAwardedCurrencyForLevel(GJGameLevel*) = win 0x170fe0;
	TodoReturn getAwardedDiamondsForLevel(GJGameLevel*);
	TodoReturn getBaseCurrency(int, bool, int);
	int getBaseCurrencyForLevel(GJGameLevel*) = win 0x170ec0;
	TodoReturn getBaseDiamonds(int);
	TodoReturn getBonusDiamonds(int);
	TodoReturn getChallenge(int);
	TodoReturn getChallengeKey(GJChallengeItem*);
	int getCollectedCoinsForLevel(GJGameLevel*) = win 0x16eba0;
	TodoReturn getCompletedMapPacks();
	TodoReturn getCurrencyKey(GJGameLevel*) = win 0x170da0;
	TodoReturn getDailyLevelKey(int);
	TodoReturn getDemonLevelKey(GJGameLevel*);
	TodoReturn getGauntletRewardKey(int);
	TodoReturn getItemKey(int, int);
	TodoReturn getItemUnlockState(int, UnlockType);
	TodoReturn getItemUnlockStateLite(int, UnlockType);
	gd::string getLevelKey(GJGameLevel*) = win 0x16EC40;
	gd::string getLevelKey(int, bool, bool, bool) = win 0x16ECB0;
	TodoReturn getListRewardKey(GJLevelList*);
	TodoReturn getMapPackKey(int);
	TodoReturn getNextVideoAdReward();
	TodoReturn getPathRewardKey(int);
	TodoReturn getQueuedChallenge(int);
	TodoReturn getRewardForSecretChest(int);
	TodoReturn getRewardForSpecialChest(gd::string);
	TodoReturn getRewardItem(GJRewardType);
	TodoReturn getRewardKey(GJRewardType, int);
	TodoReturn getSecondaryQueuedChallenge(int);
	TodoReturn getSecretChestForItem(int, UnlockType);
	TodoReturn getSecretCoinKey(char const*);
	TodoReturn getSpecialChestKeyForItem(int, UnlockType);
	TodoReturn getSpecialRewardDescription(gd::string, bool);
	TodoReturn getSpecialUnlockDescription(int, UnlockType, bool);
	TodoReturn getStarLevelKey(GJGameLevel*);
	int getStat(char const*) = win 0x169ff0;
	TodoReturn getStatFromKey(StatKey);
	TodoReturn getStoreItem(int, int);
	TodoReturn getStoreItem(int);
	TodoReturn getTotalCollectedCurrency();
	TodoReturn getTotalCollectedDiamonds();
	TodoReturn hasClaimedListReward(GJLevelList*);
	TodoReturn hasCompletedChallenge(GJChallengeItem*);
	TodoReturn hasCompletedDailyLevel(int) = win 0x172f10;
	TodoReturn hasCompletedDemonLevel(GJGameLevel*);
	TodoReturn hasCompletedGauntletLevel(int);
	bool hasCompletedLevel(GJGameLevel* level) {
		return m_completedLevels->objectForKey(this->getLevelKey(level)) != nullptr;
	}
	TodoReturn hasCompletedMainLevel(int);
	TodoReturn hasCompletedMapPack(int);
	TodoReturn hasCompletedOnlineLevel(int);
	TodoReturn hasCompletedStarLevel(GJGameLevel*);
	TodoReturn hasPendingUserCoin(char const*);
	TodoReturn hasRewardBeenCollected(GJRewardType, int);
	TodoReturn hasSecretCoin(char const*);
	TodoReturn hasUserCoin(char const*);
	TodoReturn incrementActivePath(int) = win 0x169720;
	TodoReturn incrementChallenge(GJChallengeType, int) = win 0x1727a0;
	TodoReturn incrementStat(char const*, int) = win 0x169480;
	TodoReturn incrementStat(char const*);
	bool isGauntletChestUnlocked(int);
	bool isItemEnabled(UnlockType, int) = win 0x175920;
	bool isItemUnlocked(UnlockType, int) = win 0x1756a0;
	bool isPathChestUnlocked(int);
	bool isPathUnlocked(StatKey);
	bool isSecretChestUnlocked(int);
	bool isSecretCoin(gd::string);
	bool isSecretCoinValid(gd::string);
	bool isSpecialChestLiteUnlockable(gd::string);
	bool isSpecialChestUnlocked(gd::string) = win 0x1791f0;
	bool isStoreItemUnlocked(int);
	TodoReturn keyCostForSecretChest(int) = win 0x179b50;
	TodoReturn logCoins();
	TodoReturn markLevelAsCompletedAndClaimed(GJGameLevel*);
	TodoReturn postLoadGameStats();
	TodoReturn preProcessReward(GJRewardItem*);
	TodoReturn preSaveGameStats();
	TodoReturn processChallengeQueue(int);
	TodoReturn purchaseItem(int) = win 0x169320;
	TodoReturn recountSpecialStats();
	TodoReturn recountUserCoins(bool);
	TodoReturn registerRewardsFromItem(GJRewardItem*);
	TodoReturn removeChallenge(int);
	TodoReturn removeErrorFromSpecialChests();
	TodoReturn removeQueuedChallenge(int);
	TodoReturn removeQueuedSecondaryChallenge(int);
	TodoReturn resetChallengeTimer();
	TodoReturn resetPreSync();
	TodoReturn resetSpecialStatAchievements();
	TodoReturn resetUserCoins();
	TodoReturn restorePostSync();
	void setAwardedBonusKeys(int);
	void setStarsForMapPack(int, int);
	void setStat(char const*, int) = win 0x16a0d0;
	void setStatIfHigher(char const*, int);
	TodoReturn setupIconCredits();
	TodoReturn shopTypeForItemID(int);
	TodoReturn shouldAwardSecretKey();
	TodoReturn starsForMapPack(int);
	TodoReturn storeChallenge(int, GJChallengeItem*);
	TodoReturn storeChallengeTime(int);
	TodoReturn storePendingUserCoin(char const*);
	TodoReturn storeQueuedChallenge(int, GJChallengeItem*);
	TodoReturn storeRewardState(GJRewardType, int, int, gd::string);
	TodoReturn storeSecondaryQueuedChallenge(int, GJChallengeItem*);
	TodoReturn storeSecretCoin(char const*);
	TodoReturn storeUserCoin(char const*);
	TodoReturn tempClear();
	TodoReturn toggleEnableItem(UnlockType, int, bool) = win 0x1759c0;
	TodoReturn trySelectActivePath();
	TodoReturn uncompleteLevel(GJGameLevel*);
	TodoReturn unlockGauntletChest(int);
	TodoReturn unlockPathChest(int);
	TodoReturn unlockSecretChest(int) = win 0x179a40;
	TodoReturn unlockSpecialChest(gd::string) = win 0x1792d0;
	TodoReturn updateActivePath(StatKey);
	TodoReturn usernameForAccountID(int) = win 0x15da30;
	TodoReturn verifyUserCoins();

	virtual bool init();

	bool m_unkBool;
	bool m_unkBool2;
	bool m_usePlayerStatsCCDictionary;
	cocos2d::CCString* m_trueString;
	cocos2d::CCDictionary* m_allStoreItems;
	cocos2d::CCDictionary* m_storeItems;
	cocos2d::CCDictionary* m_allTreasureRoomChests;
	cocos2d::CCDictionary* m_allTreasureRoomChestItems;
	cocos2d::CCDictionary* m_allSpecialChests;
	cocos2d::CCDictionary* m_allSpecialChestItems;
	gd::map<gd::string, gd::string> m_specialRewardDescriptions;
	gd::map<gd::string, gd::string> m_createSpecialChestItemsMap;
	cocos2d::CCDictionary* m_specialChestsLite;
	cocos2d::CCArray* m_storeItemArray;
	cocos2d::CCDictionary* m_rewardItems;
	cocos2d::CCDictionary* m_dailyChests;
	cocos2d::CCDictionary* m_worldAdvertChests;
	cocos2d::CCDictionary* m_activeChallenges;
	cocos2d::CCDictionary* m_upcomingChallenges;
	double m_challengeTime;
	cocos2d::CCDictionary* m_playerStats;
	gd::map<int, int> m_playerStatsRandMap;
	gd::map<int, int> m_playerStatsSeedMap;
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
	int m_activePath;
}

[[link(android)]]
class GameToolbox {
	static TodoReturn addBackButton(cocos2d::CCLayer*, cocos2d::CCMenuItem*);
	static TodoReturn addRThumbScrollButton(cocos2d::CCLayer*);
	static TodoReturn alignItemsHorisontally(cocos2d::CCArray*, float, cocos2d::CCPoint, bool);
	static TodoReturn alignItemsVertically(cocos2d::CCArray*, float, cocos2d::CCPoint);
	static TodoReturn bounceTime(float);
	static TodoReturn colorToSepia(cocos2d::ccColor3B, float);
	static TodoReturn contentScaleClipRect(cocos2d::CCRect&);
	static TodoReturn createHashString(gd::string const&, int);
	static CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCArray*) = win 0x40F10;
	static CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, float, float, float, cocos2d::CCPoint, char const*, bool, int, cocos2d::CCArray*) = win 0x41010;
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
	static TodoReturn getRelativeOffset(GameObject*, cocos2d::CCPoint);
	static TodoReturn getResponse(cocos2d::extension::CCHttpResponse*);
	static TodoReturn getTimeString(int);
	static TodoReturn hsvFromString(gd::string const&, char const*);
	static TodoReturn intToShortString(int);
	static TodoReturn intToString(int);
	static bool isIOS();
	static bool isRateEasing(int);
	static TodoReturn mergeDictsSaveLargestInt(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
	static TodoReturn mergeDictsSkipConflict(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
	static TodoReturn msToTimeString(int, int);
	static TodoReturn multipliedColorValue(cocos2d::ccColor3B, cocos2d::ccColor3B, float);
	static TodoReturn openAppPage();
	static TodoReturn openRateURL(gd::string, gd::string);
	static TodoReturn particleFromString(gd::string const&, cocos2d::CCParticleSystemQuad*, bool);
	static TodoReturn particleFromStruct(cocos2d::ParticleStruct const&, cocos2d::CCParticleSystemQuad*, bool);
	static TodoReturn particleStringToStruct(gd::string const&, cocos2d::ParticleStruct&);
	static TodoReturn pointsToString(int);
	static TodoReturn postClipVisit();
	static TodoReturn preVisitWithClippingRect(cocos2d::CCNode*, cocos2d::CCRect);
	static TodoReturn preVisitWithClipRect(cocos2d::CCRect);
	static TodoReturn saveParticleToString(cocos2d::CCParticleSystemQuad*);
	static TodoReturn saveStringToFile(gd::string const&, gd::string const&);
	static TodoReturn stringFromHSV(cocos2d::ccHSVValue, char const*);
	static TodoReturn stringSetupToDict(gd::string const&, char const*);
	static TodoReturn stringSetupToMap(gd::string const&, char const*, gd::map<gd::string, gd::string>&);
	static TodoReturn strongColor(cocos2d::ccColor3B);
	static TodoReturn timestampToHumanReadable(long);
	static TodoReturn transformColor(cocos2d::ccColor3B const&, cocos2d::ccHSVValue);
	static TodoReturn transformColor(cocos2d::ccColor3B const&, float, float, float);
}

[[link(android)]]
class GauntletLayer : cocos2d::CCLayer, LevelManagerDelegate {
	// virtual ~GauntletLayer();

	static GauntletLayer* create(GauntletType);

	bool init(GauntletType) = win 0x185cc0;
	void onBack(cocos2d::CCObject* sender);
	void onLevel(cocos2d::CCObject* sender);
	TodoReturn scene(GauntletType);
	TodoReturn setupGauntlet(cocos2d::CCArray*);
	TodoReturn unlockActiveItem();

	virtual void keyBackClicked();
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	virtual TodoReturn loadLevelsFailed(char const*, int);
}

[[link(android)]]
class GauntletNode : cocos2d::CCNode {
	// virtual ~GauntletNode();

	static GauntletNode* create(GJMapPack*);

	TodoReturn frameForType(GauntletType);
	bool init(GJMapPack*) = win 0x187710;
	TodoReturn nameForType(GauntletType);
	TodoReturn onClaimReward() = win 0x188ad0;
}

[[link(android)]]
class GauntletSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate, LevelManagerDelegate {
	// virtual ~GauntletSelectLayer();

	static GauntletSelectLayer* create(int);

	TodoReturn goToPage(int, bool) = win 0x1870d0;
	bool init(int);
	void onBack(cocos2d::CCObject* sender) = win 0x187240;
	void onInfo(cocos2d::CCObject* sender);
	void onNext(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender) = win 0x1872b0;
	void onPrev(cocos2d::CCObject* sender);
	void onRefresh(cocos2d::CCObject* sender) = win 0x186740;
	TodoReturn scene(int);
	TodoReturn setupGauntlets() = win 0x186b60;
	TodoReturn unblockPlay();
	TodoReturn updateArrows();

	virtual void onExit();
	virtual void keyBackClicked();
	virtual TodoReturn scrollLayerWillScrollToPage(BoomScrollLayer*, int);
	virtual TodoReturn scrollLayerScrolledToPage(BoomScrollLayer*, int);
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int) = win 0x1867f0;
	virtual TodoReturn loadLevelsFailed(char const*, int) = win 0x1869c0;
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

	static GhostTrailEffect* create();

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

	static GJAccountManager* sharedState() = win 0x1894E0;

	TodoReturn addDLToActive(char const*, cocos2d::CCObject*) = win 0x189b70;
	TodoReturn addDLToActive(char const*);
	TodoReturn backupAccount(gd::string);
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn getAccountBackupURL();
	TodoReturn getAccountSyncURL();
	TodoReturn getDLObject(char const*);
	TodoReturn getShaPassword(gd::string);
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType);
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	bool isDLActive(char const*);
	TodoReturn linkToAccount(gd::string, gd::string, int, int);
	TodoReturn loginAccount(gd::string, gd::string);
	TodoReturn onBackupAccountCompleted(gd::string, gd::string);
	TodoReturn onGetAccountBackupURLCompleted(gd::string, gd::string);
	TodoReturn onGetAccountSyncURLCompleted(gd::string, gd::string);
	TodoReturn onLoginAccountCompleted(gd::string, gd::string);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onRegisterAccountCompleted(gd::string, gd::string);
	TodoReturn onSyncAccountCompleted(gd::string, gd::string);
	TodoReturn onUpdateAccountSettingsCompleted(gd::string, gd::string);
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn registerAccount(gd::string, gd::string, gd::string);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn syncAccount(gd::string);
	TodoReturn unlinkFromAccount();
	TodoReturn updateAccountSettings(int, int, int, gd::string, gd::string, gd::string) = win 0x18bbf0;

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

	static GJAccountSettingsLayer* create(int);

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float);
	bool init(int) = win 0x206ff0;
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
	TodoReturn updateInternalActions(float, bool) = win 0x18c3b0;

	virtual bool init();
}

[[link(android), depends(GJGameState)]]
class GJBaseGameLayer : cocos2d::CCLayer, TriggerEffectDelegate {
	// ~GJBaseGameLayer();
	// GJBaseGameLayer();

	TodoReturn activateCustomRing(RingObject*);
	TodoReturn activatedAudioTrigger(SFXTriggerGameObject*, float);
	TodoReturn activateEventTrigger(EventLinkTrigger*, gd::vector<int> const&);
	TodoReturn activateItemCompareTrigger(ItemTriggerGameObject*, gd::vector<int> const&);
	TodoReturn activateItemEditTrigger(ItemTriggerGameObject*);
	TodoReturn activateObjectControlTrigger(ObjectControlGameObject*);
	TodoReturn activatePersistentItemTrigger(ItemTriggerGameObject*);
	TodoReturn activatePlayerControlTrigger(PlayerControlGameObject*);
	TodoReturn activateResetTrigger(EffectGameObject*);
	TodoReturn activateSFXEditTrigger(SFXTriggerGameObject*);
	TodoReturn activateSFXTrigger(SFXTriggerGameObject*);
	TodoReturn activateSongEditTrigger(SongTriggerGameObject*);
	TodoReturn activateSongTrigger(SongTriggerGameObject*);
	TodoReturn activateTimerTrigger(TimerTriggerGameObject*, gd::vector<int> const&);
	TodoReturn addAreaEffect(EnterEffectObject*, gd::vector<EnterEffectInstance>*, GJAreaActionType);
	TodoReturn addCustomEnterEffect(EnterEffectObject*, bool);
	TodoReturn addGuideArt(GameObject*);
	TodoReturn addObjectCounter(LabelGameObject*) = win 0x1b6470;
	TodoReturn addPickupTrigger(CountTriggerGameObject*);
	TodoReturn addPoints(int);
	TodoReturn addProximityVolumeEffect(int, int, SFXTriggerGameObject*) = win 0x1c3980;
	TodoReturn addRemapTargets(gd::set<int>&);
	TodoReturn addToGroupParents(GameObject*);
	TodoReturn addToGroups(GameObject*, bool) = win 0x1a7ca0;
	TodoReturn addToObjectsToShow(GameObject*);
	TodoReturn addUIObject(GameObject*);
	TodoReturn animateInDualGroundNew(GameObject*, float, bool, float);
	TodoReturn animateInGroundNew(bool, float, bool);
	TodoReturn animateOutGroundNew(bool);
	TodoReturn animatePortalY(float, float, float, float);
	TodoReturn applyLevelSettings(GameObject*);
	TodoReturn applyRemap(EffectGameObject*, gd::vector<int> const&, gd::unordered_map<int, int>&);
	TodoReturn applySFXEditTrigger(int, int, SFXTriggerGameObject*) = win 0x1c3510;
	TodoReturn applyShake(cocos2d::CCPoint&) = win 0x1c0820;
	TodoReturn assignNewStickyGroups(cocos2d::CCArray*);
	TodoReturn asyncBGLoaded(int);
	TodoReturn asyncGLoaded(int);
	TodoReturn asyncMGLoaded(int);
	TodoReturn atlasValue(int);
	TodoReturn bumpPlayer(PlayerObject*, EffectGameObject*) = win 0x19d6b0;
	TodoReturn buttonIDToButton(int);
	TodoReturn calculateColorGroups();
	TodoReturn cameraMoveX(float, float, float, bool);
	TodoReturn cameraMoveY(float, float, float, bool);
	TodoReturn canBeActivatedByPlayer(PlayerObject*, EffectGameObject*) = win 0x19d4b0;
	TodoReturn canProcessSFX(SFXTriggerState&, gd::unordered_map<int, int>&, gd::unordered_map<int, float>&, gd::vector<SFXTriggerState>&);
	TodoReturn canTouchObject(GameObject*);
	TodoReturn checkCameraLimitAfterTeleport(PlayerObject*, float);
	TodoReturn checkCollision(int, int);
	TodoReturn checkCollisionBlocks(EffectGameObject*, gd::vector<EffectGameObject*>*, int);
	TodoReturn checkCollisions(PlayerObject*, float, bool);
	TodoReturn checkRepellPlayer();
	TodoReturn checkSpawnObjects() = win 0x1a03b0;
	TodoReturn claimMoveAction(int, bool);
	TodoReturn claimParticle(gd::string, int);
	TodoReturn claimRotationAction(int, int, float&, float&, bool, bool);
	TodoReturn clearActivatedAudioTriggers() = win 0x1c44e0;
	TodoReturn clearPickedUpItems();
	TodoReturn collectedObject(EffectGameObject*);
	TodoReturn collisionCheckObjects(PlayerObject*, gd::vector<GameObject*>*, int, float);
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
	TodoReturn convertToClosestDirection(float, float) = win 0x1b1c20;
	TodoReturn createBackground(int);
	TodoReturn createGroundLayer(int, int);
	TodoReturn createMiddleground(int);
	TodoReturn createNewKeyframeAnim();
	TodoReturn createParticle(int, char const*, int, cocos2d::tCCPositionType) = win 0x1c1f10;
	TodoReturn createPlayer();
	TodoReturn createPlayerCollisionBlock() = win 0x19e1d0;
	TodoReturn createTextLayers() = win 0x196110;
	TodoReturn damagingObjectsInRect(cocos2d::CCRect, bool);
	TodoReturn destroyObject(GameObject*);
	TodoReturn enterDualMode(GameObject*, bool);
	TodoReturn exitStaticCamera(bool, bool, float, int, float, bool, float, bool);
	TodoReturn flipFinished();
	TodoReturn flipGravity(PlayerObject*, bool, bool) = win 0x199570;
	TodoReturn flipObjects() = win 0x1c78d0;
	TodoReturn gameEventToString(GJGameEvent);
	TodoReturn gameEventTriggered(GJGameEvent, int, int) = win 0x1b4be0;
	TodoReturn generateEnterEasingBuffer(int, float);
	TodoReturn generateEnterEasingBuffers(EnterEffectObject*);
	TodoReturn generatePickupAnimRandVal(GameObject*, float&, float&);
	TodoReturn generateSpawnRemap();
	TodoReturn generateTargetGroups();
	TodoReturn generateVisibilityGroups();
	TodoReturn getActiveOrderSpawnObjects();
	TodoReturn getAreaObjectValue(EnterEffectInstance*, GameObject*, cocos2d::CCPoint&, bool&);
	TodoReturn getBumpMod(PlayerObject*, int) = win 0x19d5d0;
	TodoReturn getCameraEdgeValue(int);
	TodoReturn getCapacityString() = win 0x195f60;
	TodoReturn getCenterGroupObject(int, int);
	TodoReturn getCustomEnterEffects(int, bool);
	TodoReturn getEasedAreaValue(GameObject*, EnterEffectInstance*, float, bool, int);
	TodoReturn getEnterEasingKey(int, float);
	TodoReturn getEnterEasingValue(float, int, float, int);
	TodoReturn getFollowSpeedVal(GameObject*, int, int, float, float);
	TodoReturn getGroundHeight(PlayerObject*, int);
	TodoReturn getGroundHeightForMode(int);
	TodoReturn getGroup(int);
	TodoReturn getGroupParent(int);
	TodoReturn getGroupParentsString(GameObject*);
	TodoReturn getItemValue(int, int);
	TodoReturn getMaxPortalY();
	TodoReturn getMinDistance(cocos2d::CCPoint, cocos2d::CCArray*, float, int) = win 0x1c3df0;
	TodoReturn getMinPortalY();
	TodoReturn getModifiedDelta(float);
	TodoReturn getMoveTargetDelta(EffectGameObject*, bool);
	TodoReturn getOptimizedGroup(int);
	TodoReturn getOtherPlayer(PlayerObject*);
	TodoReturn getParticleKey(int, char const*, int, cocos2d::tCCPositionType) = win 0x1c1cd0;
	TodoReturn getParticleKey2(gd::string);
	TodoReturn getPlayerButtonID(int, bool);
	TodoReturn getPlayTimerFullSeconds();
	TodoReturn getPlayTimerMilli();
	TodoReturn getPortalTarget(TeleportPortalObject*);
	TodoReturn getPortalTargetPos(TeleportPortalObject*, GameObject*, PlayerObject*);
	TodoReturn getRecordString();
	TodoReturn getRotateCommandTargets(EnhancedTriggerObject*, GameObject*&, GameObject*&, GameObject*&);
	TodoReturn getSavedPosition(int, float);
	TodoReturn getScaledGroundHeight(float);
	TodoReturn getSingleGroupObject(int) = win 0x1a8090;
	TodoReturn getSpecialKey(int, bool, bool);
	TodoReturn getStaticGroup(int);
	TodoReturn getStickyGroup(int);
	TodoReturn getTargetFlyCameraY(GameObject*);
	TodoReturn getTargetGroup(int, int);
	TodoReturn getTargetGroupOrigin(int, int);
	TodoReturn gravBumpPlayer(PlayerObject*, EffectGameObject*);
	TodoReturn groupStickyObjects(cocos2d::CCArray*);
	TodoReturn handleButton(bool, int, bool);
	TodoReturn hasItem(int);
	TodoReturn hasUniqueCoin(EffectGameObject*) = win 0x19c5c0;
	TodoReturn increaseBatchNodeCapacity();
	bool isFlipping();
	bool isPlayer2Button(int);
	TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::ccColor3B);
	TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::ccColor3B, float, float, int, bool, float);
	TodoReturn loadGroupParentsFromString(GameObject*, gd::string);
	TodoReturn loadLevelSettings();
	TodoReturn loadStartPosObject() = win 0x1b7cc0;
	TodoReturn loadUpToPosition(float, int, int) = win 0x1b7e30;
	TodoReturn maxZOrderForShaderZ(int);
	TodoReturn minZOrderForShaderZ(int);
	TodoReturn modifyGroupPhysics(AdvancedFollowEditObject*, cocos2d::CCArray*);
	TodoReturn modifyObjectPhysics(AdvancedFollowEditObject*, GameObjectPhysics&);
	TodoReturn moveAreaObject(GameObject*, float, float);
	TodoReturn moveCameraToPos(cocos2d::CCPoint);
	TodoReturn moveObject(GameObject*, double, double, bool);
	TodoReturn moveObjects(cocos2d::CCArray*, double, double, bool) = win 0x1b0fb0;
	TodoReturn moveObjectsSilent(int, double, double);
	TodoReturn objectIntersectsCircle(GameObject*, GameObject*);
	TodoReturn objectTypeToGameEvent(int);
	TodoReturn optimizeMoveGroups();
	TodoReturn orderSpawnObjects() = win 0x1c6b70;
	TodoReturn parentForZLayer(int, bool, int, int);
	TodoReturn pauseAudio() = win 0x1ba580;
	TodoReturn performMathOperation(double, double, int);
	TodoReturn performMathRounding(double, int);
	TodoReturn pickupItem(EffectGameObject*);
	TodoReturn playAnimationCommand(int, int);
	TodoReturn playerCircleCollision(PlayerObject*, GameObject*);
	TodoReturn playerIntersectsCircle(PlayerObject*, GameObject*);
	TodoReturn playerTouchedObject(PlayerObject*, GameObject*);
	TodoReturn playerTouchedRing(PlayerObject*, RingObject*) = win 0x19dce0;
	TodoReturn playerTouchedTrigger(PlayerObject*, EffectGameObject*);
	TodoReturn playerWasTouchingObject(PlayerObject*, GameObject*) = win 0x19d570;
	TodoReturn playerWillSwitchMode(PlayerObject*, GameObject*);
	TodoReturn playExitDualEffect(PlayerObject*) = win 0x19cab0;
	TodoReturn playFlashEffect(float, int, float);
	TodoReturn playKeyframeAnimation(KeyframeAnimTriggerObject*, gd::vector<int> const&);
	TodoReturn playSpeedParticle(float);
	TodoReturn positionForShaderTarget(int);
	TodoReturn positionUIObjects();
	TodoReturn prepareSavePositionObjects();
	TodoReturn prepareTransformParent(bool);
	TodoReturn preResumeGame();
	TodoReturn preUpdateVisibility(float) = win 0x1b8780;
	TodoReturn processActivatedAudioTriggers(float);
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
	TodoReturn processDynamicObjectActions(int, float) = win 0x1b1750;
	TodoReturn processFollowActions();
	TodoReturn processItems() = win 0x19c2f0;
	TodoReturn processMoveActions() = win 0x1b0ba0;
	TodoReturn processMoveActionsStep(float, bool) = win 0x1aecf0;
	TodoReturn processOptionsTrigger(GameOptionsTrigger*);
	TodoReturn processPlayerFollowActions(float) = win 0x1b1410;
	TodoReturn processQueuedAudioTriggers() = win 0x1bd490;
	TodoReturn processQueuedButtons() = win 0x1b4b30;
	TodoReturn processRotationActions();
	TodoReturn processSFXObjects();
	TodoReturn processSFXState(SFXTriggerState*, SFXTriggerState*, int, float);
	TodoReturn processSongState(int, float, float, int, float, float, gd::vector<SongTriggerState>*);
	TodoReturn processStateObjects();
	TodoReturn processTransformActions(bool);
	TodoReturn queueButton(int, bool, bool) = win 0x1b4ae0;
	TodoReturn reAddToStickyGroup(GameObject*);
	TodoReturn recordAction(int, bool, bool);
	TodoReturn rectIntersectsCircle(cocos2d::CCRect, cocos2d::CCPoint, float);
	TodoReturn refreshCounterLabels() = win 0x1b7750;
	TodoReturn refreshKeyframeAnims();
	TodoReturn regenerateEnterEasingBuffers();
	TodoReturn registerSpawnRemap(gd::vector<ChanceObject>&);
	TodoReturn registerStateObject(EffectGameObject*);
	TodoReturn removeBackground();
	TodoReturn removeCustomEnterEffects(int, bool);
	TodoReturn removeFromGroupParents(GameObject*);
	TodoReturn removeFromGroups(GameObject*);
	TodoReturn removeFromStickyGroup(GameObject*);
	TodoReturn removeGroundLayer();
	TodoReturn removeGroupParent(int) = win 0x1a8570;
	TodoReturn removeKeyframe(KeyframeGameObject*);
	TodoReturn removeMiddleground();
	TodoReturn removeObjectFromSection(GameObject*) = win 0x1aaec0;
	TodoReturn removePlayer2();
	TodoReturn removeTemporaryParticles() = win 0x1c2c90;
	TodoReturn reorderObjectSection(GameObject*);
	TodoReturn reparentObject(cocos2d::CCNode*, cocos2d::CCNode*);
	TodoReturn resetActiveEnterEffects() = win 0x1952f0;
	TodoReturn resetAreaObjectValues(GameObject*, bool);
	TodoReturn resetAudio();
	TodoReturn resetCamera() = win 0x1c1210;
	TodoReturn resetGradientLayers();
	TodoReturn resetGroupCounters(bool);
	TodoReturn resetLevelVariables();
	TodoReturn resetMoveOptimizedValue();
	TodoReturn resetPlayer();
	TodoReturn resetSongTriggerValues() = win 0x3bef0;
	TodoReturn resetSpawnChannelIndex() = win 0x1c6d90;
	TodoReturn resetStaticCamera(bool, bool) = win 0x1c1470;
	TodoReturn resetStoppedAreaObjects();
	TodoReturn restoreAllUIObjects();
	TodoReturn restoreDefaultGameplayOffsetX();
	TodoReturn restoreDefaultGameplayOffsetY();
	TodoReturn restoreRemap(EffectGameObject*, gd::unordered_map<int, int>&);
	TodoReturn resumeAudio() = win 0x1ba5e0;
	TodoReturn rotateAreaObjects(GameObject*, cocos2d::CCArray*, float, bool);
	TodoReturn rotateObject(GameObject*, float);
	TodoReturn rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint, cocos2d::CCPoint, bool, bool);
	void setGroupParent(GameObject*, int);
	void setStartPosObject(StartPosObject*);
	TodoReturn setupLayers() = win 0x1903d0;
	TodoReturn setupLevelStart(LevelSettingsObject*) = win 0x198e50;
	TodoReturn setupReplay(gd::string);
	TodoReturn shakeCamera(float, float, float);
	TodoReturn shouldExitHackedLevel() = win 0x192430;
	TodoReturn sortAllGroupsX();
	TodoReturn sortGroups();
	TodoReturn sortSectionVector() = win 0x1ab090;
	TodoReturn sortStickyGroups();
	TodoReturn spawnGroupTriggered(int, float, bool, gd::vector<int> const&, int, int);
	TodoReturn spawnObjectsInOrder(cocos2d::CCArray*, double, gd::vector<int> const&, int, int);
	TodoReturn spawnParticle(char const*, int, cocos2d::tCCPositionType, cocos2d::CCPoint);
	TodoReturn spawnParticleTrigger(int, cocos2d::CCPoint, float, float);
	TodoReturn spawnParticleTrigger(SpawnParticleGameObject*);
	TodoReturn spawnPlayer2() = win 0x19c9b0;
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
	TodoReturn switchToFlyMode(PlayerObject*, GameObject*, bool, int);
	TodoReturn switchToRobotMode(PlayerObject*, GameObject*, bool);
	TodoReturn switchToRollMode(PlayerObject*, GameObject*, bool);
	TodoReturn switchToSpiderMode(PlayerObject*, GameObject*, bool);
	TodoReturn syncBGTextures() = win 0x1bca00;
	TodoReturn teleportPlayer(TeleportPortalObject*, PlayerObject*);
	TodoReturn testInstantCountTrigger(int, int, int, bool, int, gd::vector<int> const&, int, int);
	TodoReturn toggleAudioVisualizer(bool);
	TodoReturn toggleDualMode(GameObject*, bool, PlayerObject*, bool) = win 0x19c6e0;
	TodoReturn toggleFlipped(bool, bool);
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
	TodoReturn tryGetMainObject(int);
	TodoReturn tryGetObject(int);
	TodoReturn tryResumeAudio();
	TodoReturn unclaimParticle(char const*, cocos2d::CCParticleSystemQuad*);
	TodoReturn ungroupStickyObjects(cocos2d::CCArray*);
	TodoReturn unlinkAllEvents();
	TodoReturn updateActiveEnterEffect(EnterEffectObject*);
	TodoReturn updateAllObjectSection();
	TodoReturn updateAreaObjectLastValues(GameObject*);
	TodoReturn updateAudioVisualizer();
	TodoReturn updateBGArtSpeed(float, float);
	TodoReturn updateCamera(float) = win 0x1bd5e0;
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
	TodoReturn updateGradientLayers() = win 0x1a47e0;
	TodoReturn updateGroundShadows();
	TodoReturn updateGuideArt();
	TodoReturn updateInternalCamOffsetX(float, float, float);
	TodoReturn updateInternalCamOffsetY(float, float, float);
	TodoReturn updateKeyframeOrder(int);
	TodoReturn updateLayerCapacity(gd::string);
	TodoReturn updateLegacyLayerCapacity(int, int, int, int);
	TodoReturn updateLevelColors() = win 0x193420;
	TodoReturn updateMaxGameplayY() = win 0x1bc8e0;
	TodoReturn updateMGArtSpeed(float, float);
	TodoReturn updateMGOffsetY(float, float, int, float, int, int);
	TodoReturn updateOBB2(cocos2d::CCRect);
	TodoReturn updateParticles(float);
	TodoReturn updatePlatformerTime() = win 0x1bbce0;
	TodoReturn updatePlayerCollisionBlocks();
	TodoReturn updateProximityVolumeEffects();
	TodoReturn updateQueuedLabels();
	TodoReturn updateReplay();
	TodoReturn updateSavePositionObjects();
	TodoReturn updateShaderLayer(float) = win 0x1a6840;
	TodoReturn updateSpecialGroupData();
	TodoReturn updateSpecialLabels() = win 0x1bb970;
	TodoReturn updateStaticCameraPos(cocos2d::CCPoint, bool, bool, bool, float, int, float) = win 0x1c0c10;
	TodoReturn updateStaticCameraPosToGroup(int, bool, bool, bool, float, float, int, float, bool, float);
	TodoReturn updateTimeMod(float, bool, bool);
	TodoReturn updateTimerLabels();
	TodoReturn updateZoom(float, float, int, float, int, int);
	TodoReturn visitWithColorFlash();
	TodoReturn volumeForProximityEffect(SFXTriggerInstance&) = win 0x1c3a40;

	virtual void update(float);
	virtual bool init() = win 0x18f210;
	virtual void visit();
	virtual TodoReturn postUpdate(float);
	virtual TodoReturn checkForEnd();
	virtual TodoReturn testTime();
	virtual TodoReturn updateVerifyDamage();
	virtual TodoReturn updateAttemptTime(float);
	virtual TodoReturn updateVisibility(float);
	virtual TodoReturn playerTookDamage(PlayerObject*);
	virtual TodoReturn opacityForObject(GameObject*);
	virtual TodoReturn addToSpeedObjects(EffectGameObject*);
	virtual TodoReturn objectsCollided(int, int);
	virtual TodoReturn updateColor(cocos2d::ccColor3B&, float, int, bool, float, cocos2d::ccHSVValue&, int, bool, EffectGameObject*, int, int) = win 0x1a7780;
	virtual TodoReturn toggleGroupTriggered(int, bool, gd::vector<int> const&, int, int);
	virtual TodoReturn spawnGroup(int, bool, double, gd::vector<int> const&, int, int);
	virtual TodoReturn spawnObject(GameObject*, double, gd::vector<int> const&);
	virtual TodoReturn activateEndTrigger(int, bool, bool);
	virtual TodoReturn activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&);
	virtual TodoReturn toggleGlitter(bool);
	virtual TodoReturn destroyPlayer(PlayerObject*, GameObject*);
	virtual TodoReturn addToSection(GameObject*) = win 0x1aa820;
	virtual TodoReturn addToGroup(GameObject*, int, bool) = win 0x1a7d00;
	virtual TodoReturn removeFromGroup(GameObject*, int) = win 0x1a7e20;
	virtual TodoReturn updateObjectSection(GameObject*) = win 0x1abd60;
	virtual TodoReturn updateDisabledObjectsLastPos(cocos2d::CCArray*);
	virtual TodoReturn toggleGroundVisibility(bool);
	virtual TodoReturn toggleMGVisibility(bool);
	virtual TodoReturn toggleHideAttempts(bool);
	virtual TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, int) {}
	virtual TodoReturn posForTime(float) {}
	virtual TodoReturn resetSPTriggered() {}
	virtual TodoReturn updateScreenRotation(float, bool, bool, float, int, float, int, int) = win 0x1b8400;
	virtual TodoReturn reverseDirection(EffectGameObject*) = win 0x19dfd0;
	virtual TodoReturn rotateGameplay(RotateGameplayGameObject*) = win 0x19e030;
	virtual TodoReturn didRotateGameplay();
	virtual TodoReturn updateTimeWarp(float);
	virtual TodoReturn updateTimeWarp(GameObject*, float);
	virtual TodoReturn applyTimeWarp(float) = win 0x1b8720;
	virtual TodoReturn playGravityEffect(bool);
	virtual TodoReturn manualUpdateObjectColors(GameObject*);
	virtual TodoReturn createCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, bool);
	virtual TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool);
	virtual TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*);
	virtual TodoReturn activatedAudioTrigger(SFXTriggerGameObject*);
	virtual TodoReturn checkpointActivated(CheckpointGameObject*) = win 0x1c79a0;
	virtual TodoReturn flipArt(bool);
	virtual TodoReturn addKeyframe(KeyframeGameObject*);
	virtual TodoReturn updateTimeLabel(int, int, bool);
	virtual TodoReturn checkSnapshot();
	virtual TodoReturn toggleProgressbar();
	virtual TodoReturn toggleInfoLabel();
	virtual TodoReturn removeAllCheckpoints();
	virtual TodoReturn toggleMusicInPractice();

	PAD = win 0x8, android32 0x8, android64 0xc;
	GJGameState m_gameState;
	GJGameLevel* m_level;
	PlaybackMode m_playbackMode;
	PAD = win 0x290, android32 0x28c, android64 0x510;
	PlayerObject* m_player1;
	PlayerObject* m_player2;
	LevelSettingsObject* m_levelSettings;
	PAD = win 0x134, android32 0x134, android64 0x21c;
	cocos2d::CCLayer* m_objectLayer;
	PAD = win 0x70, android32 0x70, android64 0xec;
	std::array<float, 2000> m_massiveFloatArray;
	PAD = win 0x110, android32 0x114, android64 0x1ec;
	bool m_isPracticeMode;
	bool m_practiceMusicSync;
	PAD = win 0xd2, android32 0xba, android64 0xf0;
	gd::vector<PlayerButtonCommand> m_queuedButtons;
	PAD = win 0x20a, android32 0x1ea, android64 0x340;
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
	TodoReturn createWithCoder(DS_Dictionary*);
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

	static GJChestSprite* create(int);

	bool init(int);
	TodoReturn switchToState(ChestSpriteState, bool);

	virtual void setOpacity(unsigned char);
	virtual void setColor(cocos2d::ccColor3B const&);
}

[[link(android)]]
class GJColorSetupLayer : FLAlertLayer, ColorSelectDelegate, FLAlertLayerProtocol {
	// virtual ~GJColorSetupLayer();

	static GJColorSetupLayer* create(LevelSettingsObject*);

	bool init(LevelSettingsObject*);
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

	static GJCommentListLayer* create(BoomListView*, char const*, cocos2d::ccColor4B, float, float, bool) = win 0x2068c0;

	bool init(BoomListView*, char const*, cocos2d::ccColor4B, float, float, bool) = win 0x2069b0;

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

	static GJDifficultySprite* create(int, GJDifficultyName) = win 0x2156e0;

	TodoReturn getDifficultyFrame(int, GJDifficultyName) = win 0x215840;
	bool init(int, GJDifficultyName) = win 0x2157b0;
	TodoReturn updateDifficultyFrame(int, GJDifficultyName) = win 0x215930;
	TodoReturn updateFeatureState(GJFeatureState) = win 0x215af0;
	TodoReturn updateFeatureStateFromLevel(GJGameLevel*) = win 0x215a70;
}

[[link(android)]]
class GJDropDownLayer : cocos2d::CCLayerColor {
	// virtual ~GJDropDownLayer();
	// GJDropDownLayer();

	static GJDropDownLayer* create(char const*, float);
	static GJDropDownLayer* create(char const*);

	bool init(char const*, float) = win 0x1d5600;
	bool init(char const*);

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
	virtual TodoReturn showLayer(bool) = win 0x1d5a80;
	virtual TodoReturn hideLayer(bool);
	virtual TodoReturn layerVisible();
	virtual TodoReturn layerHidden();
	virtual TodoReturn enterAnimFinished();
	virtual TodoReturn disableUI();
	virtual TodoReturn enableUI();

	cocos2d::CCPoint m_endPosition;
	cocos2d::CCPoint m_startPosition;
	cocos2d::CCMenu* m_buttonMenu;
	GJListLayer* m_listLayer;
	bool m_controllerEnabled;
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
	// GJEffectManager();

	static GJEffectManager* create();

	TodoReturn activeColorForIndex(int) = win 0x1da660;
	TodoReturn activeOpacityForIndex(int);
	TodoReturn addAllInheritedColorActions(cocos2d::CCArray*);
	TodoReturn addCountToItem(int, int);
	TodoReturn addMoveCalculation(CCMoveCNode*, cocos2d::CCPoint, GameObject*);
	TodoReturn calculateBaseActiveColors() = win 0x1da6e0;
	TodoReturn calculateInheritedColor(int, ColorAction*);
	TodoReturn calculateLightBGColor(cocos2d::ccColor3B) = win 0x1e29c0;
	TodoReturn checkCollision(int const&, int const&);
	TodoReturn colorActionChanged(ColorAction*);
	TodoReturn colorExists(int);
	TodoReturn colorForEffect(cocos2d::ccColor3B, cocos2d::ccHSVValue);
	TodoReturn colorForGroupID(int, cocos2d::ccColor3B const&, bool);
	TodoReturn colorForIndex(int);
	TodoReturn colorForPulseEffect(cocos2d::ccColor3B const&, PulseEffectAction*) = win 0x1e0ec0;
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
	TodoReturn getColorAction(int) = win 0x1dad30;
	TodoReturn getColorSprite(int) = win 0x1dadb0;
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
	TodoReturn loadFromState(EffectManagerState&);
	TodoReturn objectsCollided(int, int) = win 0x1db270;
	TodoReturn opacityForIndex(int);
	TodoReturn opacityModForGroup(int);
	TodoReturn pauseTimer(int);
	TodoReturn playerButton(bool, bool);
	TodoReturn playerDied() = win 0x1e1860;
	TodoReturn postCollisionCheck();
	TodoReturn postMoveActions();
	TodoReturn preCollisionCheck();
	TodoReturn prepareMoveActions(float, bool);
	TodoReturn processColors();
	TodoReturn processCopyColorPulseActions() = win 0x1e0ca0;
	TodoReturn processInheritedColors() = win 0x1da7b0;
	TodoReturn processMoveCalculations();
	TodoReturn processPulseActions() = win 0x1e0be0;
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
	TodoReturn saveToState(EffectManagerState&) = win 0x1e3150;
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
	TodoReturn traverseInheritanceChain(InheritanceNode*) = win 0x1daa00;
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
	TodoReturn wouldCreateLoop(InheritanceNode*, int) = win 0x1dad00;

	virtual bool init() = win 0x1da220;
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

	virtual TodoReturn determineStartValues();
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class GJFriendRequest : cocos2d::CCNode {
	// virtual ~GJFriendRequest();

	static GJFriendRequest* create() = win 0x118930;
	static GJFriendRequest* create(cocos2d::CCDictionary*);

	virtual bool init();
}

[[link(android)]]
class GJGameLevel : cocos2d::CCNode {
	// virtual ~GJGameLevel();

	static GJGameLevel* create() = win 0x113330;
	static GJGameLevel* create(cocos2d::CCDictionary*, bool) = win 0x111F50;
	inline static GJGameLevel* createWithCoder(DS_Dictionary* dict) {
		//inlined on windows
		auto level = GJGameLevel::create();
		level->dataLoaded(dict);
		return level;
	}

	TodoReturn areCoinsVerified() = win 0x1166e0;
	TodoReturn copyLevelInfo(GJGameLevel*);
	void dataLoaded(DS_Dictionary*) = win 0x114930;
	TodoReturn demonIconForDifficulty(DemonDifficultyType);
	TodoReturn generateSettingsString();
	TodoReturn getAudioFileName() = win 0x113d10;
	TodoReturn getAverageDifficulty();
	char const* getCoinKey(int) = win 0x113af0;
	TodoReturn getLastBuildPageForTab(int);
	TodoReturn getLengthKey(int, bool);
	TodoReturn getListSnapshot();
	TodoReturn getNormalPercent();
	TodoReturn getSongName();
	gd::string getUnpackedLevelDescription() = win 0x1167F0;
	TodoReturn handleStatsConflict(GJGameLevel*);
	inline bool isPlatformer() {
		return m_levelLength == 5;
	}
	TodoReturn lengthKeyToString(int);
	TodoReturn levelWasAltered();
	TodoReturn levelWasSubmitted();
	TodoReturn parseSettingsString(gd::string);
	TodoReturn saveNewScore(int, int);
	TodoReturn savePercentage(int, bool, int, int, bool) = win 0x113640;
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

	virtual void encodeWithCoder(DS_Dictionary*) = win 0x1159B0;
	virtual bool canEncode() = win 0x1D800; //merged func (return true)
	virtual bool init() = win 0x1133d0;

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
	TodoReturn transitionToLoadingLayer(GJGameLevel*, bool) = win 0x1c9770;

	virtual void onEnter();
	virtual void onEnterTransitionDidFinish();
}

[[link(android)]]
class GJGameState {
	// ~GJGameState();
	// GJGameState();

	TodoReturn controlTweenAction(int, int, GJActionCommand);
	TodoReturn getGameObjectPhysics(GameObject*);
	TodoReturn processStateTriggers();
	TodoReturn stopTweenAction(int);
	TodoReturn tweenValue(float, float, int, float, int, float, int, int);
	TodoReturn updateTweenAction(float, int);
	TodoReturn updateTweenActions(float);

	PAD = win 0x490, android32 0x4a8, android64 0x6e8;
}

[[link(android)]]
class GJGarageLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, GameRateDelegate, ListButtonBarDelegate, DialogDelegate, CharacterColorDelegate {
	// virtual ~GJGarageLayer();

	TodoReturn achievementForUnlock(int, UnlockType);
	TodoReturn descriptionForUnlock(int, UnlockType);
	TodoReturn getItems(IconType);
	TodoReturn getItems(int, int, IconType, int);
	TodoReturn getLockFrame(int, UnlockType);
	TodoReturn node();
	void onArrow(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onNavigate(cocos2d::CCObject* sender);
	void onPaint(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender) = win 0x1f1820;
	void onSelectTab(cocos2d::CCObject* sender);
	void onShards(cocos2d::CCObject* sender);
	void onShop(cocos2d::CCObject* sender);
	void onSpecial(cocos2d::CCObject* sender);
	void onToggleItem(cocos2d::CCObject* sender) = win 0x1f1b40;
	TodoReturn playRainbowEffect();
	TodoReturn playShadowEffect();
	TodoReturn scene();
	TodoReturn selectTab(IconType);
	TodoReturn setupIconSelect();
	TodoReturn setupPage(int, IconType);
	TodoReturn setupSpecialPage();
	TodoReturn showUnlockPopupNew(int, UnlockType);
	TodoReturn titleForUnlock(int, UnlockType);
	TodoReturn toggleGlow();
	TodoReturn updatePlayerColors();
	TodoReturn updatePlayerName(char const*);

	virtual bool init() = win 0x1edd40;
	virtual void keyBackClicked();
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn listButtonBarSwitchedPage(ListButtonBar*, int);
	virtual TodoReturn showUnlockPopup(int, UnlockType) = win 0x1f1da0;
	virtual TodoReturn updateRate() = win 0x1f2370;
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

	static GJGroundLayer* create(int, int);

	TodoReturn createLine(int);
	TodoReturn deactivateGround();
	TodoReturn fadeInFinished();
	TodoReturn getGroundY();
	TodoReturn hideShadows();
	bool init(int, int);
	TodoReturn loadGroundSprites(int, bool);
	TodoReturn positionGround(float);
	TodoReturn scaleGround(float);
	TodoReturn toggleVisible01(bool);
	TodoReturn toggleVisible02(bool);
	TodoReturn updateGround01Color(cocos2d::ccColor3B);
	TodoReturn updateGround02Color(cocos2d::ccColor3B);
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

	static GJItemIcon* create(UnlockType, int, cocos2d::ccColor3B, cocos2d::ccColor3B, bool, bool, bool, cocos2d::ccColor3B) = win 0x1f3b00;

	TodoReturn changeToLockedState(float);
	inline static GJItemIcon* createBrowserItem(UnlockType unlockType, int itemID) {
		return GJItemIcon::create(unlockType, itemID, {0xAF, 0xAF, 0xAF}, {0xFF, 0xFF, 0xFF}, false, true, true, {0xFF, 0xFF, 0xFF});
	}
	TodoReturn createStoreItem(UnlockType, int, bool, cocos2d::ccColor3B);
	TodoReturn darkenStoreItem(cocos2d::ccColor3B);
	TodoReturn darkenStoreItem(ShopType);
	bool init(UnlockType, int, cocos2d::ccColor3B, cocos2d::ccColor3B, bool, bool, bool, cocos2d::ccColor3B) = win 0x1f3be0;
	TodoReturn scaleForType(UnlockType);
	TodoReturn toggleEnabledState(bool);
	TodoReturn unlockedColorForType(int);

	virtual void setOpacity(unsigned char);
}

[[link(android)]]
class GJLevelList : cocos2d::CCNode {
	// virtual ~GJLevelList();

	static GJLevelList* create();
	static GJLevelList* create(cocos2d::CCDictionary*);

	TodoReturn addLevelToList(GJGameLevel*);
	TodoReturn completedLevels();
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn duplicateListLevels(GJLevelList*);
	TodoReturn frameForListDifficulty(int, DifficultyIconType);
	TodoReturn getListLevelsArray(cocos2d::CCArray*);
	gd::string getUnpackedDescription() = win 0x11BA00;
	TodoReturn orderForLevel(int);
	TodoReturn parseListLevels(gd::string);
	TodoReturn removeLevelFromList(int);
	TodoReturn reorderLevel(int, int);
	TodoReturn reorderLevelStep(int, bool);
	TodoReturn showListInfo();
	TodoReturn totalLevels();
	TodoReturn updateLevelsString();

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();
	virtual bool init();
}

[[link(android)]]
class GJLevelScoreCell : TableViewCell {
	// virtual ~GJLevelScoreCell();
	GJLevelScoreCell(char const*, float, float);

	TodoReturn loadFromScore(GJUserScore*) = win 0x87c30;
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class GJListLayer : cocos2d::CCLayerColor {
	// virtual ~GJListLayer();

	static GJListLayer* create(BoomListView*, char const*, cocos2d::ccColor4B, float, float, int) = win 0x1f7430;

	bool init(BoomListView*, char const*, cocos2d::ccColor4B, float, float, int) = win 0x1f7520;

	BoomListView* m_listView;
}

[[link(android)]]
class GJLocalLevelScoreCell : TableViewCell {
	// virtual ~GJLocalLevelScoreCell();
	GJLocalLevelScoreCell(char const*, float, float);

	TodoReturn loadFromScore(GJLocalScore*) = win 0x87860;
	TodoReturn updateBGColor(int) = win 0x87af0;

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

	TodoReturn loadFromMessage(GJUserMessage*) = win 0x8a320;
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

	static GJMoreGamesLayer* create();

	TodoReturn getMoreGamesList();

	virtual TodoReturn customSetup();
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

	TodoReturn addComment(gd::string, int);
	TodoReturn addDLToActive(char const*, cocos2d::CCObject*);
	TodoReturn addDLToActive(char const*);
	TodoReturn createAndAddComment(gd::string, int);
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn exitLobby(int);
	TodoReturn firstSetup();
	TodoReturn getBasePostString();
	TodoReturn getDLObject(char const*);
	TodoReturn getLastCommentIDForGame(int);
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType);
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	bool isDLActive(char const*);
	TodoReturn joinLobby(int);
	TodoReturn onExitLobbyCompleted(gd::string, gd::string);
	TodoReturn onJoinLobbyCompleted(gd::string, gd::string);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onUploadCommentCompleted(gd::string, gd::string);
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn uploadComment(gd::string, int);

	virtual bool init();
}

[[link(android)]]
class GJObjectDecoder : cocos2d::CCNode, ObjectDecoderDelegate {
	// virtual ~GJObjectDecoder();

	static GJObjectDecoder* sharedDecoder();

	virtual bool init();
	virtual TodoReturn getDecodedObject(int, DS_Dictionary*) = win 0x1faf90;
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

	static GJPathPage* create(int, GJPathsLayer*);

	bool init(int, GJPathsLayer*) = win 0x1fbe70;
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

	static GJPathRewardPopup* create(int);

	TodoReturn closePopup();
	bool init(int);
	void onClaim(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
}

[[link(android)]]
class GJPathsLayer : FLAlertLayer, FLAlertLayerProtocol {
	// virtual ~GJPathsLayer();

	static GJPathsLayer* create();

	TodoReturn darkenButtons(bool);
	TodoReturn nameForPath(int);
	void onClose(cocos2d::CCObject* sender);
	void onPath(cocos2d::CCObject* sender);

	virtual bool init() = win 0x1fb6c0;
	virtual void onExit();
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void show();
}

[[link(android)]]
class GJPathSprite : CCSpriteCOpacity {
	// virtual ~GJPathSprite();

	static GJPathSprite* create(int);

	TodoReturn addRankLabel(int);
	TodoReturn addShardSprite();
	TodoReturn changeToLockedArt();
	bool init(int);
	TodoReturn updateState();
}

[[link(android)]]
class GJPFollowCommandLayer : SetupTriggerPopup {
	// virtual ~GJPFollowCommandLayer();

	static GJPFollowCommandLayer* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
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

	static GJPromoPopup* create(gd::string);

	bool init(gd::string) = win 0x215420;
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

	TodoReturn loadFromScore(GJUserScore*) = win 0x89660;
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

	TodoReturn createSpecial(GJRewardType, int, int, SpecialRewardItem, int, SpecialRewardItem, int, int, int);
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn createWithObject(GJRewardType, GJRewardObject*);
	TodoReturn createWithObjects(GJRewardType, cocos2d::CCArray*);
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn getNextShardType(SpecialRewardItem);
	TodoReturn getRandomNonMaxShardType();
	TodoReturn getRandomShardType();
	TodoReturn getRewardCount(SpecialRewardItem);
	TodoReturn getRewardObjectForType(SpecialRewardItem);
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

	static GJRewardObject* create();
	static GJRewardObject* create(SpecialRewardItem, int, int);

	TodoReturn createItemUnlock(UnlockType, int);
	TodoReturn createWithCoder(DS_Dictionary*);
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
	// GJRobotSprite();

	static GJRobotSprite* create(int) = win 0x216010;

	TodoReturn hideGlow();
	bool init(int, gd::string);
	bool init(int);
	TodoReturn showGlow();
	TodoReturn updateColor01(cocos2d::ccColor3B);
	TodoReturn updateColor02(cocos2d::ccColor3B);
	TodoReturn updateColors() = win 0x216670;
	TodoReturn updateFrame(int) = win 0x216bb0;
	TodoReturn updateGlowColor(cocos2d::ccColor3B, bool);

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

	static GJRotationControl* create();

	TodoReturn finishTouch();
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

	static GJScaleControl* create();

	TodoReturn finishTouch();
	TodoReturn loadValues(GameObject*, cocos2d::CCArray*, gd::unordered_map<int, GameObjectEditorState>&);
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

	TodoReturn loadFromScore(GJUserScore*) = win 0x86520;
	void onBan(cocos2d::CCObject* sender);
	void onCheck(cocos2d::CCObject* sender);
	void onMoreLevels(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender) = win 0x87660;
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);

	GJUserScore* m_score;
}

[[link(android)]]
class GJSearchObject : cocos2d::CCNode {
	// virtual ~GJSearchObject();

	static GJSearchObject* create(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int) = win 0x119CD0;
	static GJSearchObject* create(SearchType, gd::string) = win 0x119BD0;
	static GJSearchObject* create(SearchType) = win 0x119AE0;
	static GJSearchObject* createFromKey(char const*) = win 0x119730;

	char const* getKey() = win 0x11a020;
	TodoReturn getNextPageKey();
	TodoReturn getNextPageObject();
	TodoReturn getPageObject(int);
	TodoReturn getPrevPageObject();
	TodoReturn getSearchKey(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int) = win 0x11a450;
	bool init(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int) = win 0x119e80;
	bool isLevelSearchObject() = win 0x11a630;

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

	static GJShopLayer* create(ShopType);

	TodoReturn exitVideoAdItems();
	bool init(ShopType) = win 0x218670;
	void onBack(cocos2d::CCObject* sender);
	void onCommunityCredits(cocos2d::CCObject* sender);
	void onPlushies(cocos2d::CCObject* sender);
	void onSelectItem(cocos2d::CCObject* sender) = win 0x219dc0;
	void onVideoAd(cocos2d::CCObject* sender);
	TodoReturn scene(ShopType);
	TodoReturn showCantAffordMessage(GJStoreItem*);
	TodoReturn showReactMessage() = win 0x21a950;
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

	static GJSmartPrefab* create();

	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn dataLoaded(DS_Dictionary*);
	bool init();

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();
}

[[link(android)]]
class GJSmartTemplate : cocos2d::CCObject {
	// virtual ~GJSmartTemplate();

	static GJSmartTemplate* create();

	TodoReturn applyTransformationsForType(SmartBlockType, cocos2d::CCSprite*);
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn dataLoaded(DS_Dictionary*);
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
	bool isUnrequired(gd::string);
	TodoReturn keyFromNeighbors(cocos2d::CCPoint, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*);
	TodoReturn keyFromNeighbors(SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType);
	TodoReturn keyFromNeighborsOld(bool, bool, bool, bool, bool, bool, bool, bool);
	TodoReturn logTemplateStatus(bool);
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

	static GJSongBrowser* create() = win 0x223970;

	TodoReturn loadPage(int);
	void onDeleteAll(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn setupPageInfo(int, int, int);
	TodoReturn setupSongBrowser(cocos2d::CCArray*);

	virtual bool init();
	virtual TodoReturn customSetup() = win 0x223b70;
	virtual TodoReturn exitLayer(cocos2d::CCObject*) = win 0x223b00;
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
	bool init(int, GJSpecialColorSelectDelegate*, ColorSelectType);
	void onClose(cocos2d::CCObject* sender);
	void onSelectColor(cocos2d::CCObject* sender);
	TodoReturn textForColorIdx(int);

	virtual void keyBackClicked();
}

[[link(android)]]
class GJSpecialColorSelectDelegate {
	virtual TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
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
	cocos2d::ccHSVValue m_hsv;
	bool m_usesHSV;
	float unk_10C;
	bool unk_110;
	
}

[[link(android)]]
class GJStoreItem : cocos2d::CCNode {
	// virtual ~GJStoreItem();

	static GJStoreItem* create(int, int, int, int, ShopType);

	TodoReturn getCurrencyKey();
	bool init(int, int, int, int, ShopType);
}

[[link(android)]]
class GJTransformControl : cocos2d::CCLayer {
	// virtual ~GJTransformControl();

	static GJTransformControl* create();

	TodoReturn applyRotation(float);
	TodoReturn calculateRotationOffset();
	TodoReturn finishTouch();
	TodoReturn loadFromState(GJTransformState&);
	TodoReturn loadValues(GameObject*, cocos2d::CCArray*, gd::unordered_map<int, GameObjectEditorState>&);
	TodoReturn logCurrentZeroPos();
	void onToggleLockScale(cocos2d::CCObject* sender);
	TodoReturn refreshControl();
	TodoReturn saveToState(GJTransformState&);
	TodoReturn scaleButtons(float) = win 0xdfc20;
	TodoReturn spriteByTag(int);
	TodoReturn updateAnchorSprite(cocos2d::CCPoint);
	TodoReturn updateButtons(bool, bool);
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

	static GJUINode* create(UIButtonConfig&);

	TodoReturn activeRangeTouchTest(cocos2d::CCPoint);
	TodoReturn activeTouchTest(cocos2d::CCPoint);
	TodoReturn getButtonScale();
	TodoReturn getOpacity();
	TodoReturn highlightButton(int);
	bool init(UIButtonConfig&);
	TodoReturn loadFromConfig(UIButtonConfig&);
	TodoReturn resetState() = win 0x3bd3d0;
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

	TodoReturn loadFromScore(GJUserScore*) = win 0x886c0;
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

	static GJUserScore* create() = win 0x1186F0;
	static GJUserScore* create(cocos2d::CCDictionary*) = win 0x117750;

	bool isCurrentUser() = win 0x1187f0;
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

	static GJWriteMessagePopup* create(int, int);

	TodoReturn closeMessagePopup(bool);
	bool init(int, int);
	void onClearBody(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onSend(cocos2d::CCObject* sender);
	TodoReturn updateBody(gd::string);
	TodoReturn updateCharCountLabel(int);
	TodoReturn updateSubject(gd::string);
	TodoReturn updateText(gd::string, int);

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
	TodoReturn saveGMTo(gd::string) = win 0x47570;
	TodoReturn tryLoadData(DS_Dictionary*, gd::string const&);
	inline GManager() {}

	virtual bool init();
	virtual TodoReturn setup() = win 0x472b0;
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

	static GooglePlayManager* sharedState();

	TodoReturn googlePlaySignedIn();

	virtual bool init();
}

[[link(android)]]
class GradientTriggerObject : EffectGameObject {
	// virtual ~GradientTriggerObject();

	static GradientTriggerObject* create();

	virtual bool init();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class GraphicsReloadLayer : cocos2d::CCLayer {
	// virtual ~GraphicsReloadLayer();

	static GraphicsReloadLayer* create(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool) = win 0x2b6ac0;

	bool init(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool) = win 0x2b6b80;
	TodoReturn performReload() = win 0x2b6c00;
	TodoReturn scene(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool);
}

[[link(android)]]
class GravityEffectSprite : cocos2d::CCSprite {
	// virtual ~GravityEffectSprite();

	static GravityEffectSprite* create();

	TodoReturn updateSpritesColor(cocos2d::ccColor3B) = win 0x2e9e50;

	virtual bool init();
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

	TodoReturn addPoint(cocos2d::CCPoint) = win 0x225d40;
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
	TodoReturn updateStroke(float) = win 0x225450;

	virtual bool init();
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

	static InfoAlertButton* create(gd::string, gd::string, float) = win 0x226c00;

	bool init(gd::string, gd::string, float) = win 0x226d20;

	virtual void activate();
}

[[link(android)]]
class InfoLayer : FLAlertLayer, LevelCommentDelegate, CommentUploadDelegate, FLAlertLayerProtocol {
	// virtual ~InfoLayer();

	static InfoLayer* create(GJGameLevel*, GJUserScore*, GJLevelList*) = win 0x227220;

	TodoReturn confirmReport(cocos2d::CCObject*);
	TodoReturn getAccountID();
	TodoReturn getID();
	TodoReturn getRealID();
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint);
	bool init(GJGameLevel*, GJUserScore*, GJLevelList*) = win 0x2272e0;
	bool isCorrect(char const*);
	TodoReturn loadPage(int, bool) = win 0x229e10;
	void onClose(cocos2d::CCObject* sender) = win 0x229cd0;
	void onComment(cocos2d::CCObject* sender) = win 0x229670;
	void onCopyLevelID(cocos2d::CCObject* sender) = win 0x2293c0;
	void onGetComments(cocos2d::CCObject* sender) = win 0x229860;
	void onLevelInfo(cocos2d::CCObject* sender) = win 0x229870;
	void onMore(cocos2d::CCObject* sender) = win 0x229570;
	void onNextPage(cocos2d::CCObject* sender) = win 0x22a590;
	void onOriginal(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender) = win 0x22a5b0;
	void onRefreshComments(cocos2d::CCObject* sender) = win 0x229150;
	void onSimilar(cocos2d::CCObject* sender);
	TodoReturn reloadWindow();
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*) = win 0x22a140;
	TodoReturn setupLevelInfo();
	TodoReturn toggleCommentMode(cocos2d::CCObject*);
	TodoReturn toggleExtendedMode(cocos2d::CCObject*);
	TodoReturn toggleSmallCommentMode(cocos2d::CCObject*);
	TodoReturn updateCommentModeButtons();
	TodoReturn updateLevelsLabel();

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void show() = win 0x8ff70;
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

	static InheritanceNode* create(int, InheritanceNode*) = win 0x1d7a20;

	bool init(int, InheritanceNode*);
}

[[link(android)]]
class ItemInfoPopup : FLAlertLayer {
	// virtual ~ItemInfoPopup();

	static ItemInfoPopup* create(int, UnlockType) = win 0x1F45C0;

	bool init(int, UnlockType) = win 0x1f4670;
	bool isUnlockedByDefault(int, UnlockType);
	TodoReturn nameForUnlockType(int, UnlockType) = win 0x597f0;
	void onClose(cocos2d::CCObject* sender);
	void onCredit(cocos2d::CCObject* sender) = win 0x1f5a10;

	virtual void keyBackClicked();

	PAD = win 0x8;
	int m_accountID;
}

[[link(android)]]
class ItemTriggerGameObject : EffectGameObject {
	// virtual ~ItemTriggerGameObject();

	static ItemTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual TodoReturn customSetup();
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class KeybindingsLayer : FLAlertLayer {
	// virtual ~KeybindingsLayer();

	static KeybindingsLayer* create();

	TodoReturn addKeyPair(char const*, char const*);
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

	virtual bool init() = win 0x22ac30;
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
	TodoReturn dataLoaded(DS_Dictionary*) = win 0x22bf40;
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
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class KeyframeGameObject : EffectGameObject {
	// virtual ~KeyframeGameObject();

	static KeyframeGameObject* create();

	TodoReturn updateShadowObjects(GJBaseGameLayer*, EditorUI*);

	virtual bool init();
	virtual void setOpacity(unsigned char);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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
	virtual TodoReturn setupCustomSprites(gd::string);
	virtual TodoReturn addMainSpriteToParent(bool);
	virtual TodoReturn resetObject();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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

	static LeaderboardsLayer* create(LeaderboardState) = win 0x22C590;

	bool init(LeaderboardState) = win 0x22c630;
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

	static LevelAreaInnerLayer* create(bool);

	bool init(bool) = win 0x22fba0;
	void onBack(cocos2d::CCObject* sender);
	void onDoor(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onNextFloor(cocos2d::CCObject* sender);
	TodoReturn playStep1();
	TodoReturn scene(bool);
	TodoReturn showFloor1CompleteDialog();
	TodoReturn tryResumeTowerMusic();

	virtual void keyBackClicked();
	virtual TodoReturn dialogClosed(DialogLayer*);
}

[[link(android)]]
class LevelAreaLayer : cocos2d::CCLayer, DialogDelegate {
	// virtual ~LevelAreaLayer();

	static LevelAreaLayer* create();

	TodoReturn addGodRay(float, float, float, float, float, cocos2d::CCPoint);
	TodoReturn addTorch(cocos2d::CCNode*, cocos2d::CCPoint, int, float, int, bool);
	TodoReturn fadeInsideTower();
	void onBack(cocos2d::CCObject* sender);
	void onClickDoor(cocos2d::CCObject* sender);
	TodoReturn onEnterTower();
	TodoReturn scene();
	TodoReturn showDialog();

	virtual bool init();
	virtual void keyBackClicked();
	virtual TodoReturn dialogClosed(DialogLayer*);
}

[[link(android)]]
class LevelBrowserLayer : cocos2d::CCLayerColor, LevelManagerDelegate, FLAlertLayerProtocol, SetIDPopupDelegate, SetTextPopupDelegate, TableViewCellDelegate, ShareCommentDelegate {
	// virtual ~LevelBrowserLayer();

	static LevelBrowserLayer* create(GJSearchObject*) = win 0x231770;

	TodoReturn createNewLevel(cocos2d::CCObject*);
	TodoReturn createNewList(cocos2d::CCObject*);
	TodoReturn createNewSmartTemplate(cocos2d::CCObject*);
	TodoReturn deleteSelected();
	TodoReturn exitLayer(cocos2d::CCObject*);
	TodoReturn getItemsMatchingSearch(cocos2d::CCArray*, gd::string, GJSearchObject*);
	TodoReturn getSearchTitle();
	bool init(GJSearchObject*) = win 0x231820;
	bool isCorrect(char const*) = win 0x232d60;
	TodoReturn loadPage(GJSearchObject*) = win 0x232ea0;
	void onClearSearch(cocos2d::CCObject* sender);
	void onDeleteAll(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onFavorites(cocos2d::CCObject* sender);
	void onGoToFolder(cocos2d::CCObject* sender);
	void onGoToLastPage(cocos2d::CCObject* sender);
	void onGoToPage(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onLocalMode(cocos2d::CCObject* sender);
	void onMyOnlineLevels(cocos2d::CCObject* sender);
	void onNew(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onRefresh(cocos2d::CCObject* sender);
	void onRemoveAllFavorites(cocos2d::CCObject* sender);
	void onSaved(cocos2d::CCObject* sender);
	void onSavedMode(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);
	void onToggleAllObjects(cocos2d::CCObject* sender);
	TodoReturn reloadAllObjects();
	inline static cocos2d::CCScene* scene(GJSearchObject* search) {
        auto scene = cocos2d::CCScene::create();
        scene->addChild(LevelBrowserLayer::create(search));

        AppDelegate::get()->m_runningScene = scene;
        return scene;
    }
	void setSearchObject(GJSearchObject*);
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	TodoReturn show();
	TodoReturn updateLevelsLabel();
	TodoReturn updatePageLabel();

	virtual void onEnter();
	virtual void onEnterTransitionDidFinish();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	virtual TodoReturn loadLevelsFailed(char const*, int);
	virtual TodoReturn setupPageInfo(gd::string, char const*) = win 0x2343a0;
	virtual void onBack(cocos2d::CCObject* sender);
	virtual TodoReturn shareCommentClosed(gd::string, ShareCommentLayer*);
	virtual void setTextPopupClosed(SetTextPopup*, gd::string);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = win 0x236150;
	virtual void setIDPopupClosed(SetIDPopup*, int);
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
	LevelCell(char const*, float, float);

	static LevelCell* create(float, float);

	TodoReturn loadCustomLevelCell() = win 0x7D9D0;
	TodoReturn loadFromLevel(GJGameLevel*) = win 0x7d820;
	TodoReturn loadLocalLevelCell() = win 0x80440;
	void onClick(cocos2d::CCObject* sender) = win 0x80df0;
	void onToggle(cocos2d::CCObject* sender) = win 0x7d9b0;
	void onViewProfile(cocos2d::CCObject* sender) = win 0x80ee0;
	TodoReturn updateBGColor(int);
	TodoReturn updateCellMode(int);
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

	static LevelEditorLayer* create(GJGameLevel*, bool);

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
	TodoReturn addSpecial(GameObject*);
	TodoReturn addToRedoList(UndoObject*);
	TodoReturn addTouchPoint(cocos2d::CCPoint) = win 0x24f370;
	TodoReturn addToUndoList(UndoObject*, bool);
	TodoReturn applyAttributeState(GameObject*, GameObject*);
	TodoReturn applyGroupState(GameObject*, GameObject*);
	TodoReturn breakApartTextObject(TextGameObject*);
	TodoReturn canPasteState();
	TodoReturn clearPlayerPoints();
	TodoReturn clearTouchPoints();
	TodoReturn copyObjectState(GameObject*);
	TodoReturn copyParticleState(ParticleGameObject*);
	TodoReturn createObject(int, cocos2d::CCPoint, bool);
	TodoReturn createObjectsFromSetup(gd::string&);
	TodoReturn createObjectsFromString(gd::string const&, bool, bool);
	TodoReturn dirtifyTriggers();
	TodoReturn duplicateKeyframeAnimation(int);
	TodoReturn fastUpdateDisabledGroups();
	TodoReturn findGameObject(int);
	TodoReturn findStartPosObject();
	TodoReturn forceShowSelectedObjects(bool);
	TodoReturn fullUpdateDisabledGroups();
	TodoReturn getAllObjects();
	TodoReturn getDelayedSpawnNode();
	TodoReturn getGridPos(cocos2d::CCPoint);
	TodoReturn getLastObjectX();
	TodoReturn getLevelString();
	TodoReturn getLockedLayers();
	TodoReturn getNextColorChannel();
	TodoReturn getNextFreeAreaEffectID(cocos2d::CCArray*);
	TodoReturn getNextFreeBlockID(cocos2d::CCArray*);
	TodoReturn getNextFreeEditorLayer(cocos2d::CCArray*);
	TodoReturn getNextFreeEnterChannel(cocos2d::CCArray*);
	TodoReturn getNextFreeGradientID(cocos2d::CCArray*);
	TodoReturn getNextFreeGroupID(cocos2d::CCArray*);
	TodoReturn getNextFreeItemID(cocos2d::CCArray*);
	TodoReturn getNextFreeOrderChannel(cocos2d::CCArray*);
	TodoReturn getNextFreeSFXGroupID(cocos2d::CCArray*);
	TodoReturn getNextFreeSFXID(cocos2d::CCArray*);
	TodoReturn getObjectRect(GameObject*, bool, bool);
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
	TodoReturn handleAction(bool, cocos2d::CCArray*);
	TodoReturn hasAction(bool);
	bool init(GJGameLevel*, bool);
	bool isLayerLocked(int);
	TodoReturn objectAtPosition(cocos2d::CCPoint);
	TodoReturn objectMoved(GameObject*);
	TodoReturn objectsAtPosition(cocos2d::CCPoint);
	TodoReturn objectsInRect(cocos2d::CCRect, bool);
	TodoReturn onPausePlaytest();
	TodoReturn onPlaytest();
	TodoReturn onResumePlaytest();
	TodoReturn onStopPlaytest();
	TodoReturn pasteAttributeState(GameObject*, cocos2d::CCArray*);
	TodoReturn pasteColorState(GameObject*, cocos2d::CCArray*);
	TodoReturn pasteGroupState(GameObject*, cocos2d::CCArray*);
	TodoReturn pasteParticleState(ParticleGameObject*, cocos2d::CCArray*);
	TodoReturn processLoadedMoveActions();
	TodoReturn quickUpdateAllPositions();
	TodoReturn recreateGroups();
	TodoReturn redoLastAction();
	TodoReturn refreshSpecial(GameObject*);
	TodoReturn removeAllObjects();
	TodoReturn removeAllObjectsOfType(int);
	TodoReturn removeObject(GameObject*, bool);
	TodoReturn removePlayerCollisionBlock();
	TodoReturn removeSpecial(GameObject*);
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
	TodoReturn scene(GJGameLevel*, bool);
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
	TodoReturn toggleLockActiveLayer();
	TodoReturn transferDefaultColors(GJEffectManager*, GJEffectManager*);
	TodoReturn triggerFollowCommand(EffectGameObject*);
	TodoReturn triggerPlayerFollowCommand(EffectGameObject*);
	TodoReturn triggerRotateCommand(EffectGameObject*);
	TodoReturn tryUpdateSpeedObject(EffectGameObject*, bool);
	TodoReturn typeExistsAtPosition(int, cocos2d::CCPoint, bool, bool, float);
	TodoReturn undoLastAction();
	TodoReturn unlockAllLayers();
	TodoReturn updateAnimateOnTriggerObjects(bool);
	TodoReturn updateArt(float);
	TodoReturn updateBlendValues();
	TodoReturn updateDebugDraw();
	TodoReturn updateEditor(float);
	TodoReturn updateEditorMode();
	TodoReturn updateGameObjects();
	TodoReturn updateGridLayer();
	TodoReturn updateGridLayerParent();
	TodoReturn updateKeyframeObjects();
	TodoReturn updateKeyframeVisibility(bool);
	TodoReturn updateLevelFont(int);
	TodoReturn updateObjectColors(cocos2d::CCArray*);
	TodoReturn updateObjectLabel(GameObject*);
	TodoReturn updateOptions();
	TodoReturn updatePreviewAnim();
	TodoReturn updatePreviewParticle(ParticleGameObject*);
	TodoReturn updatePreviewParticles();
	TodoReturn updateToggledGroups();
	TodoReturn validGroup(GameObject*, bool);

	virtual void draw();
	virtual TodoReturn postUpdate(float) = win 0x245f90;
	virtual TodoReturn updateVisibility(float);
	virtual TodoReturn playerTookDamage(PlayerObject*);
	virtual TodoReturn updateColor(cocos2d::ccColor3B&, float, int, bool, float, cocos2d::ccHSVValue&, int, bool, EffectGameObject*, int, int);
	virtual TodoReturn addToGroup(GameObject*, int, bool);
	virtual TodoReturn removeFromGroup(GameObject*, int);
	virtual TodoReturn updateObjectSection(GameObject*);
	virtual TodoReturn updateDisabledObjectsLastPos(cocos2d::CCArray*);
	virtual TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, int);
	virtual TodoReturn posForTime(float);
	virtual TodoReturn resetSPTriggered();
	virtual TodoReturn didRotateGameplay() = win 0x244a70;
	virtual TodoReturn manualUpdateObjectColors(GameObject*);
	virtual TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool);
	virtual TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*);
	virtual TodoReturn activatedAudioTrigger(SFXTriggerGameObject*);
	virtual TodoReturn checkpointActivated(CheckpointGameObject*);
	virtual TodoReturn addKeyframe(KeyframeGameObject*);
	virtual TodoReturn levelSettingsUpdated();

	PAD = android32 0x64;
	
	geode::SeedValueRSV m_coinCount;
	
	PAD = android32 0x38;
	
	cocos2d::CCArray* m_undoObjects;
	cocos2d::CCArray* m_redoObjects;
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

	static LevelInfoLayer* create(GJGameLevel*, bool) = win 0x24ffa0;

	TodoReturn confirmClone(cocos2d::CCObject*) = win 0x254a90;
	TodoReturn confirmDelete(cocos2d::CCObject*);
	TodoReturn confirmMoveToBottom(cocos2d::CCObject*);
	TodoReturn confirmMoveToTop(cocos2d::CCObject*);
	TodoReturn confirmOwnerDelete(cocos2d::CCObject*);
	void downloadLevel() = win 0x252350;
	TodoReturn incrementDislikes();
	TodoReturn incrementLikes();
	bool init(GJGameLevel*, bool) = win 0x250050;
	TodoReturn loadLevelStep();
	void onAddToList(cocos2d::CCObject* sender) = win 0x251ef0;
	void onBack(cocos2d::CCObject* sender) = win 0x256610;
	void onClone(cocos2d::CCObject* sender);
	void onDelete(cocos2d::CCObject* sender);
	void onFavorite(cocos2d::CCObject* sender) = win 0x252110;
	void onFeatured(cocos2d::CCObject* sender);
	void onGarage(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onLevelInfo(cocos2d::CCObject* sender) = win 0x255410;
	void onLevelLeaderboard(cocos2d::CCObject* sender) = win 0x252180;
	void onLike(cocos2d::CCObject* sender);
	void onLowDetailMode(cocos2d::CCObject* sender);
	void onOwnerDelete(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onPlayReplay(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender);
	void onRateDemon(cocos2d::CCObject* sender) = win 0x254fc0;
	void onRateStars(cocos2d::CCObject* sender) = win 0x254e90;
	void onRateStarsMod(cocos2d::CCObject* sender) = win 0x254f70;
	void onSetFolder(cocos2d::CCObject* sender) = win 0x252030;
	void onUpdate(cocos2d::CCObject* sender) = win 0x255250;
	void onViewProfile(cocos2d::CCObject* sender) = win 0x2553b0;
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn playStep4();
	TodoReturn scene(GJGameLevel*, bool);
	TodoReturn setupLevelInfo();
	TodoReturn setupPlatformerStats();
	TodoReturn setupProgressBars();
	TodoReturn shouldDownloadLevel();
	TodoReturn showSongWarning();
	TodoReturn showUpdateAlert(UpdateResponse);
	TodoReturn tryCloneLevel(cocos2d::CCObject*) = win 0x2548b0;
	TodoReturn tryShowAd();
	TodoReturn updateLabelValues() = win 0x2556c0;
	TodoReturn updateSideButtons();

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn numberInputClosed(NumberInputLayer*);
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	virtual TodoReturn levelDownloadFinished(GJGameLevel*);
	virtual TodoReturn levelDownloadFailed(int);
	virtual TodoReturn levelUpdateFinished(GJGameLevel*, UpdateResponse);
	virtual TodoReturn levelUpdateFailed(int);
	virtual TodoReturn levelDeleteFinished(int);
	virtual TodoReturn levelDeleteFailed(int);
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

	static LevelLeaderboard* create(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = win 0x256930;

	TodoReturn deleteLocalScores();
	TodoReturn getLocalScores();
	TodoReturn getSpriteButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint, int);
	bool init(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = win 0x2569f0;
	bool isCorrect(char const*);
	TodoReturn loadScores();
	void onChangeMode(cocos2d::CCObject* sender) = win 0x257f80;
	void onChangeType(cocos2d::CCObject* sender) = win 0x257f30;
	void onClose(cocos2d::CCObject* sender) = win 0x6a6f0;
	void onDeleteLocalScores(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender) = win 0x257fc0;
	TodoReturn reloadLeaderboard(LevelLeaderboardType, LevelLeaderboardMode) = win 0x257e80;
	TodoReturn setupLeaderboard(cocos2d::CCArray*);

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void show() = win 0x5D680; //merged func
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

	TodoReturn loadFromList(GJLevelList*);
	void onClick(cocos2d::CCObject* sender);
	void onListInfo(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class LevelListDeleteDelegate {
	virtual void levelListDeleteFinished(int) {}
	virtual void levelListDeleteFailed(int) {}
}

[[link(android)]]
class LevelListLayer : LevelBrowserLayer, TextInputDelegate, SelectListIconDelegate, LikeItemDelegate, LevelListDeleteDelegate {
	// virtual ~LevelListLayer();

	static LevelListLayer* create(GJLevelList*);

	TodoReturn cloneList();
	TodoReturn confirmClone(cocos2d::CCObject*);
	TodoReturn confirmDelete(cocos2d::CCObject*);
	TodoReturn confirmOwnerDelete(cocos2d::CCObject*);
	bool init(GJLevelList*);
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
	TodoReturn updateSideButtons();
	TodoReturn updateStatsArt();
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

	static LevelPage* create(GJGameLevel*);

	TodoReturn addSecretCoin();
	TodoReturn addSecretDoor();
	bool init(GJGameLevel*);
	void onInfo(cocos2d::CCObject* sender) = win 0x26adb0;
	void onMoreGames(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onSecretDoor(cocos2d::CCObject* sender);
	void onTheTower(cocos2d::CCObject* sender);
	TodoReturn playCoinEffect();
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn updateDynamicPage(GJGameLevel*);

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

	static LevelSearchLayer* create(int);

	TodoReturn checkDiff(int);
	TodoReturn checkTime(int);
	TodoReturn clearFilters();
	TodoReturn confirmClearFilters(cocos2d::CCObject*);
	TodoReturn getDiffKey(int);
	TodoReturn getLevelLenKey();
	TodoReturn getSearchDiffKey();
	GJSearchObject* getSearchObject(SearchType, gd::string) = win 0x262560;
	TodoReturn getTimeKey(int);
	bool init(int) = win 0x25f8d0;
	void onBack(cocos2d::CCObject* sender);
	void onClearFreeSearch(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onFollowed(cocos2d::CCObject* sender);
	void onFriends(cocos2d::CCObject* sender);
	void onLatestStars(cocos2d::CCObject* sender);
	void onMagic(cocos2d::CCObject* sender);
	void onMoreOptions(cocos2d::CCObject* sender) = win 0x261390;
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
	TodoReturn scene(int);
	TodoReturn toggleDifficulty(cocos2d::CCObject*);
	TodoReturn toggleDifficultyNum(int, bool);
	TodoReturn toggleStar(cocos2d::CCObject*);
	TodoReturn toggleTime(cocos2d::CCObject*);
	TodoReturn toggleTimeNum(int, bool);
	TodoReturn updateSearchLabel(char const*) = win 0x262290;

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

	static LevelSelectLayer* create(int);

	TodoReturn colorForPage(int);
	TodoReturn getColorValue(int, int, float);
	bool init(int);
	void onBack(cocos2d::CCObject* sender);
	void onDownload(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onNext(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onPrev(cocos2d::CCObject* sender);
	TodoReturn scene(int);
	TodoReturn tryShowAd();

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn updatePageWithObject(cocos2d::CCObject*, cocos2d::CCObject*);
	virtual TodoReturn scrollLayerMoved(cocos2d::CCPoint);
}

[[link(android)]]
class LevelSettingsDelegate {
	virtual void levelSettingsUpdated() {}
}

[[link(android)]]
class LevelSettingsLayer : FLAlertLayer, ColorSelectDelegate, SelectArtDelegate, SelectSettingDelegate, FLAlertLayerProtocol, CustomSongLayerDelegate, TextInputDelegate {
	// virtual ~LevelSettingsLayer();

	static LevelSettingsLayer* create(LevelSettingsObject*, LevelEditorLayer*);

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	bool init(LevelSettingsObject*, LevelEditorLayer*);
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
	TodoReturn updateColorSprite(ColorChannelSprite*);
	TodoReturn updateColorSprites();
	TodoReturn updateGameplayModeButtons();

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*);
	virtual TodoReturn selectArtClosed(SelectArtLayer*);
	virtual TodoReturn selectSettingClosed(SelectSettingLayer*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class LevelSettingsObject : cocos2d::CCNode {
	// virtual ~LevelSettingsObject();

	static LevelSettingsObject* create();

	TodoReturn getSaveString();
	TodoReturn objectFromDict(cocos2d::CCDictionary*);
	TodoReturn objectFromString(gd::string const&);
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
	bool m_propertykA28;
	// property kA29
	bool m_propertykA29;
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
	bool m_propertykA20;
	// property kA21
	bool m_propertykA21;
	// property kA19
	int m_propertykA19;
	// property kA26
	int m_propertykA26;
	
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
	bool m_propertykA43;
	// property kA44
	int m_propertykA44;
	// property kA35
	bool m_propertykA35;
	// property kA36
	int m_propertykA36;
	// property kA27
	bool m_propertykA27;
	// property kA31
	bool m_propertykA31;
	// property kA32
	bool m_propertykA32;
	// property kA33
	bool m_propertykA33;
	// property kA34
	bool m_propertykA34;
	// property kA37
	bool m_propertykA37;
	// property kA38
	bool m_propertykA38;
	// property kA39
	bool m_propertykA39;
	// property kA40
	bool m_propertykA40;
	// property kA41
	bool m_propertykA41;
	// property kA42
	bool m_propertykA42;
}

[[link(android)]]
class LevelTools {
	TodoReturn artistForAudio(int);
	TodoReturn base64DecodeString(gd::string);
	TodoReturn base64EncodeString(gd::string);
	TodoReturn createStarPackDict();
	TodoReturn fbURLForArtist(int);
	TodoReturn getAudioBPM(int);
	TodoReturn getAudioFileName(int);
	TodoReturn getAudioString(int);
	TodoReturn getAudioTitle(int);
	TodoReturn getLastGameplayReversed();
	TodoReturn getLastGameplayRotated();
	TodoReturn getLastTimewarp();
	TodoReturn getLevel(int, bool);
	TodoReturn getLevelList();
	TodoReturn getSongObject(int);
	TodoReturn moveTriggerObjectsToArray(cocos2d::CCArray*, cocos2d::CCDictionary*, int);
	TodoReturn nameForArtist(int);
	TodoReturn ngURLForArtist(int);
	TodoReturn offsetBPMForTrack(int);
	TodoReturn posForTime(float, cocos2d::CCArray*, int, bool, int&);
	TodoReturn posForTimeInternal(float, cocos2d::CCArray*, int, bool, bool, bool, int&, int);
	TodoReturn sortChannelOrderObjects(cocos2d::CCArray*, cocos2d::CCDictionary*, bool);
	TodoReturn sortSpeedObjects(cocos2d::CCArray*, GJBaseGameLayer*);
	TodoReturn timeForPos(cocos2d::CCPoint, cocos2d::CCArray*, int, int, int, bool, bool, bool, bool, int);
	TodoReturn toggleDebugLogging(bool);
	TodoReturn urlForAudio(int);
	TodoReturn valueForSpeedMod(int);
	TodoReturn verifyLevelIntegrity(gd::string, int);
	TodoReturn ytURLForArtist(int);
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

	static LikeItemLayer* create(LikeItemType, int, int) = win 0x2746D0;

	bool init(LikeItemType, int, int) = win 0x274780;
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

	static LoadingCircle* create() = win 0x483c0;

	TodoReturn fadeAndRemove() = win 0x48660;
	TodoReturn show() = win 0x48580;

	virtual bool init() = win 0x484c0;
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

	static LoadingLayer* create(bool);

	TodoReturn getLoadingString() = win 0x275c10;
	bool init(bool) = win 0x274d20;
	TodoReturn loadAssets() = win 0x275580;
	TodoReturn loadingFinished() = win 0x275490;
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

	static LocalLevelManager* sharedState() = win 0x2760F0;
	inline static LocalLevelManager* get() {
        return LocalLevelManager::sharedState();
    }

	TodoReturn getAllLevelsInDict();
	TodoReturn getAllLevelsWithName(gd::string);
	TodoReturn getCreatedLevels(int);
	TodoReturn getCreatedLists(int);
	TodoReturn getLevelsInNameGroups();
	TodoReturn getMainLevelString(int) = win 0x276420;
	TodoReturn markLevelsAsUnmodified();
	TodoReturn moveLevelToTop(GJGameLevel*);
	TodoReturn reorderLevels();
	TodoReturn tryLoadMainLevelString(int) = win 0x276290;
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

	TodoReturn loadFromMapPack(GJMapPack*) = win 0x81210;
	void onClaimReward(cocos2d::CCObject* sender);
	void onClick(cocos2d::CCObject* sender) = win 0x81c60;
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

	TodoReturn destroyPlayer();
	TodoReturn getBGColor(int);
	TodoReturn resetPlayer();
	TodoReturn tryJump(float);
	TodoReturn updateColor(float);
	TodoReturn updateColors();

	virtual void update(float) = win 0x278600;
	virtual bool init() = win 0x277be0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
}

[[link(android)]]
class MenuLayer : cocos2d::CCLayer, FLAlertLayerProtocol, GooglePlayDelegate {
	// virtual ~MenuLayer();

	static cocos2d::CCScene* scene(bool) = win 0x279d70;

	TodoReturn endGame();
	TodoReturn firstNetworkTest();
	void onAchievements(cocos2d::CCObject* sender);
	void onCreator(cocos2d::CCObject* sender) = win 0x27b370;
	void onDaily(cocos2d::CCObject* sender);
	void onDiscord(cocos2d::CCObject* sender);
	void onEveryplay(cocos2d::CCObject* sender);
	void onFacebook(cocos2d::CCObject* sender);
	void onFreeLevels(cocos2d::CCObject* sender);
	void onFullVersion(cocos2d::CCObject* sender);
	void onGameCenter(cocos2d::CCObject* sender);
	void onGarage(cocos2d::CCObject* sender) = win 0x27b3e0;
	void onGooglePlayGames(cocos2d::CCObject* sender);
	void onMoreGames(cocos2d::CCObject* sender) = win 0x27b140;
	void onMyProfile(cocos2d::CCObject* sender);
	void onNewgrounds(cocos2d::CCObject* sender);
	void onOptions(cocos2d::CCObject* sender);
	TodoReturn onOptionsInstant();
	void onPlay(cocos2d::CCObject* sender) = win 0x27b230;
	void onQuit(cocos2d::CCObject* sender);
	void onRobTop(cocos2d::CCObject* sender);
	void onStats(cocos2d::CCObject* sender);
	void onTrailer(cocos2d::CCObject* sender);
	void onTwitch(cocos2d::CCObject* sender);
	void onTwitter(cocos2d::CCObject* sender);
	void onYouTube(cocos2d::CCObject* sender);
	TodoReturn openOptions(bool);
	TodoReturn showGCQuestion();
	TodoReturn showMeltdownPromo();
	TodoReturn showTOS() = win 0x27b000;
	TodoReturn syncPlatformAchievements(float);
	TodoReturn tryShowAd(float);
	TodoReturn updateUserProfileButton();
	TodoReturn videoOptionsClosed();
	TodoReturn videoOptionsOpened();
	TodoReturn willClose();

	virtual bool init() = win 0x279df0;
	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn googlePlaySignedIn() = win 0x27b200;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = win 0x27b590;
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

	static MessagesProfilePage* create(bool);

	TodoReturn deleteSelected();
	bool init(bool) = win 0x27bb50;
	bool isCorrect(char const*);
	TodoReturn loadPage(int);
	void onClose(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onSentMessages(cocos2d::CCObject* sender);
	void onToggleAllObjects(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*);
	TodoReturn untoggleAll();
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
	TodoReturn offsetToNextPage();
	void onClose(cocos2d::CCObject* sender);
	void onFMODDebug(cocos2d::CCObject* sender);
	void onGPSignIn(cocos2d::CCObject* sender);
	void onGPSignOut(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onKeybindings(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onParental(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onSongBrowser(cocos2d::CCObject* sender) = win 0x2b2130;
	void onToggle(cocos2d::CCObject* sender);
	TodoReturn pageKey(int);
	TodoReturn toggleGP();

	virtual bool init();
	virtual void keyBackClicked();
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual TodoReturn textInputReturn(CCTextInputNode*);
	virtual TodoReturn googlePlaySignedIn();
	virtual TodoReturn dropDownLayerWillClose(GJDropDownLayer*);
}

[[link(android)]]
class MoreSearchLayer : FLAlertLayer, TextInputDelegate {
	// virtual ~MoreSearchLayer();

	static MoreSearchLayer* create() = win 0x263FD0;

	TodoReturn audioNext(cocos2d::CCObject*);
	TodoReturn audioPrevious(cocos2d::CCObject*);
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	void onClose(cocos2d::CCObject* sender) = win 0x265b70;
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
	void onSongFilter(cocos2d::CCObject* sender) = win 0x2653a0;
	void onSongMode(cocos2d::CCObject* sender) = win 0x265650;
	void onTwoPlayer(cocos2d::CCObject* sender);
	void onUncompleted(cocos2d::CCObject* sender);
	TodoReturn selectSong(int);
	TodoReturn toggleSongNodes(bool, bool);
	TodoReturn updateAudioLabel();

	virtual bool init() = win 0x264070;
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
	TodoReturn updateFPSButtons() = win 0x2b5940;

	virtual bool init() = win 0x2b3d50;
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

	static MultiTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
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

	static MusicBrowser* create(int);

	bool init(int);
	void onArtistFilters(cocos2d::CCObject* sender);
	void onClearSearch(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	void onPlaybackControl(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);
	void onTagFilters(cocos2d::CCObject* sender);
	void onUpdateLibrary(cocos2d::CCObject* sender);
	TodoReturn setupList(MusicSearchResult*);
	TodoReturn setupSongControls();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn trySetupMusicBrowser();
	TodoReturn updatePageLabel();

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

	static MusicDownloadManager* sharedState();

	TodoReturn addDLToActive(char const*, cocos2d::CCObject*);
	TodoReturn addDLToActive(char const*);
	TodoReturn addMusicDownloadDelegate(MusicDownloadDelegate*);
	TodoReturn addSongObjectFromString(gd::string);
	TodoReturn clearSong(int);
	TodoReturn clearUnusedSongs();
	TodoReturn createSongsInfo(gd::string);
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn deleteSFX(int);
	TodoReturn deleteSong(int);
	TodoReturn downloadCustomSong(int);
	TodoReturn downloadMusicLibrary();
	TodoReturn downloadSFX(int);
	TodoReturn downloadSFXFailed(int, GJSongError);
	TodoReturn downloadSFXFinished(int);
	TodoReturn downloadSFXLibrary();
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
	TodoReturn getCustomContentURL();
	TodoReturn getDLObject(char const*);
	TodoReturn getDownloadedSongs();
	TodoReturn getDownloadProgress(int);
	TodoReturn getMusicArtistForID(int);
	TodoReturn getMusicObject(int);
	TodoReturn getSFXDownloadKey(int);
	TodoReturn getSFXDownloadProgress(int);
	TodoReturn getSFXFolderObjectForID(int);
	TodoReturn getSFXFolderPathForID(int, bool);
	TodoReturn getSFXObject(int);
	TodoReturn getSongDownloadKey(int);
	TodoReturn getSongInfo(int, bool);
	TodoReturn getSongInfoKey(int);
	TodoReturn getSongInfoObject(int);
	TodoReturn getSongPriority();
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType);
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	TodoReturn incrementPriorityForSong(int);
	bool isDLActive(char const*);
	bool isMusicLibraryLoaded();
	bool isResourceSFX(int);
	bool isResourceSong(int);
	bool isRunningActionForSongID(int);
	bool isSFXDownloaded(int);
	bool isSFXLibraryLoaded();
	bool isSongDownloaded(int);
	TodoReturn limitDownloadedSongs();
	TodoReturn loadSongInfoFailed(int, GJSongError);
	TodoReturn loadSongInfoFinished(SongInfoObject*);
	TodoReturn musicActionFailed(GJMusicAction);
	TodoReturn musicActionFinished(GJMusicAction);
	TodoReturn nameForTagID(int);
	TodoReturn onDownloadMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onDownloadSFXCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onDownloadSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onDownloadSongCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onGetCustomContentURLCompleted(gd::string, gd::string);
	TodoReturn onGetSongInfoCompleted(gd::string, gd::string);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onTryUpdateMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onTryUpdateSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn parseMusicLibrary();
	TodoReturn parseSFXLibrary();
	TodoReturn pathForSFX(int) = win 0x282d10;
	TodoReturn pathForSFXFolder(int);
	TodoReturn pathForSong(int) = win 0x2829a0;
	TodoReturn pathForSongFolder(int);
	TodoReturn ProcessHttpGetRequest(gd::string, gd::string, cocos2d::extension::SEL_HttpResponse, int, int);
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn removeMusicDownloadDelegate(MusicDownloadDelegate*);
	TodoReturn responseToDict(gd::string, char const*);
	TodoReturn showTOS(FLAlertLayerProtocol*);
	TodoReturn songStateChanged() = win 0x281420;
	TodoReturn stopDownload(int);
	TodoReturn storeMusicObject(SongInfoObject*);
	TodoReturn storeSFXInfoObject(SFXInfoObject*);
	TodoReturn tryLoadLibraries();
	TodoReturn tryUpdateMusicLibrary();
	TodoReturn tryUpdateSFXLibrary();

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

	static NumberInputLayer* create();

	TodoReturn deleteLast();
	TodoReturn inputNumber(int);
	void onClose(cocos2d::CCObject* sender);
	void onDone(cocos2d::CCObject* sender);
	void onNumber(cocos2d::CCObject* sender);
	TodoReturn updateNumberState();

	virtual bool init() = win 0x289540;
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
}

[[link(android)]]
class OBB2D : cocos2d::CCNode {
	// virtual ~OBB2D();

	static OBB2D* create(cocos2d::CCPoint, float, float, float);

	TodoReturn calculateWithCenter(cocos2d::CCPoint, float, float, float);
	TodoReturn computeAxes();
	TodoReturn getBoundingRect();
	bool init(cocos2d::CCPoint, float, float, float);
	TodoReturn orderCorners();
	TodoReturn overlaps(OBB2D*);
	TodoReturn overlaps1Way(OBB2D*);
}

[[link(android)]]
class ObjectControlGameObject : EffectGameObject {
	// virtual ~ObjectControlGameObject();

	static ObjectControlGameObject* create();

	virtual bool init();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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
	TodoReturn getDefinition(char const*) = win 0x4bad0;
	TodoReturn getGlobalAnimCopy(char const*);
	TodoReturn instance();
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

	static ObjectToolbox* sharedState();

	TodoReturn allKeys();
	TodoReturn gridNodeSizeForKey(int);
	TodoReturn intKeyToFrame(int);
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

	TodoReturn loadFromObject(OptionsObject*) = win 0x839c0;
	void onToggleOption(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);
}

[[link(android)]]
class OptionsLayer : GJDropDownLayer, FLAlertLayerProtocol {
	// virtual ~OptionsLayer();

	static OptionsLayer* create() = win 0x2aeae0;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn exitLayer();
	TodoReturn musicSliderChanged(cocos2d::CCObject*) = win 0x2af6d0;
	void onAccount(cocos2d::CCObject* sender) = win 0x2afcd0;
	void onHelp(cocos2d::CCObject* sender) = win 0x2afd50;
	void onMenuMusic(cocos2d::CCObject* sender) = win 0x2af630;
	void onOptions(cocos2d::CCObject* sender) = win 0x2af8c0;
	void onProgressBar(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender) = win 0x2afd10;
	void onRecordReplays(cocos2d::CCObject* sender);
	void onSecretVault(cocos2d::CCObject* sender) = win 0x2af8e0;
	void onSoundtracks(cocos2d::CCObject* sender) = win 0x2af880;
	void onSupport(cocos2d::CCObject* sender) = win 0x2afc90;
	void onVideo(cocos2d::CCObject* sender);
	TodoReturn sfxSliderChanged(cocos2d::CCObject*) = win 0x2af7c0;
	TodoReturn tryEnableRecord();

	virtual TodoReturn customSetup() = win 0x2aec20;
	virtual TodoReturn layerHidden() = win 0x2afd70;
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

	static ParticleGameObject* create();

	TodoReturn applyParticleSettings(cocos2d::CCParticleSystemQuad*);
	TodoReturn createAndAddCustomParticle();
	TodoReturn createParticlePreviewArt();
	void setParticleString(gd::string);
	TodoReturn updateParticle();
	TodoReturn updateParticleAngle(float, cocos2d::CCParticleSystemQuad*);
	TodoReturn updateParticlePreviewArtOpacity(float);
	TodoReturn updateParticleScale(float);
	TodoReturn updateParticleStruct();

	virtual bool init();
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setScale(float);
	virtual void setRotation(float);
	virtual void setRotationX(float);
	virtual void setRotationY(float);
	virtual void setChildColor(cocos2d::ccColor3B const&);
	virtual TodoReturn customSetup();
	virtual TodoReturn addMainSpriteToParent(bool);
	virtual TodoReturn resetObject();
	virtual TodoReturn deactivateObject(bool);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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

	char* m_particleData;
	PAD = android32 0x110;
	
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

	static PauseLayer* create(bool) = win 0x2b6f20;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn goEdit() = win 0x2b86d0;
	bool init(bool) = win 0x2b6fd0;
	TodoReturn musicSliderChanged(cocos2d::CCObject*) = win 0x2b8380;
	void onEdit(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onNormalMode(cocos2d::CCObject* sender);
	void onPracticeMode(cocos2d::CCObject* sender) = win 0x2b8440;
	void onQuit(cocos2d::CCObject* sender) = win 0x2b8800;
	void onRecordReplays(cocos2d::CCObject* sender);
	void onReplay(cocos2d::CCObject* sender);
	void onRestart(cocos2d::CCObject* sender);
	void onRestartFull(cocos2d::CCObject* sender);
	void onResume(cocos2d::CCObject* sender) = win 0x2b8510;
	void onSettings(cocos2d::CCObject* sender);
	void onTime(cocos2d::CCObject* sender);
	TodoReturn setupProgressBars();
	TodoReturn sfxSliderChanged(cocos2d::CCObject*);
	TodoReturn tryShowBanner(float);

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x2b88d0;
	virtual TodoReturn customSetup();
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
		// TODO: mat
		return false;
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

	static PlayerCheckpoint* create();

	virtual bool init();
}

[[link(android)]]
class PlayerControlGameObject : EffectGameObject {
	// virtual ~PlayerControlGameObject();

	static PlayerControlGameObject* create();

	virtual bool init();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class PlayerFireBoostSprite : cocos2d::CCSprite {
	// virtual ~PlayerFireBoostSprite();

	static PlayerFireBoostSprite* create();

	TodoReturn animateFireIn();
	TodoReturn animateFireOut();
	TodoReturn loopFireAnimation();

	virtual bool init();
}

[[link(android)]]
class PlayerObject : GameObject, AnimatedSpriteDelegate {
	// virtual ~PlayerObject();

	static PlayerObject* create(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool) = win 0x2c0980;

	TodoReturn activateStreak() = win 0x2d6bc0;
	TodoReturn addAllParticles() = win 0x2c2080;
	TodoReturn addToTouchedRings(RingObject*);
	TodoReturn addToYVelocity(double, int) = win 0x2c2690;
	TodoReturn animatePlatformerJump(float);
	TodoReturn boostPlayer(float);
	TodoReturn bumpPlayer(float, int, bool, GameObject*) = win 0x2d62f0;
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
	TodoReturn createFadeOutDartStreak();
	TodoReturn createRobot(int);
	TodoReturn createSpider(int);
	TodoReturn deactivateParticle();
	TodoReturn deactivateStreak(bool);
	TodoReturn destroyFromHitHead();
	TodoReturn didHitHead();
	TodoReturn disableCustomGlowColor();
	TodoReturn disablePlayerControls();
	TodoReturn disableSwingFire();
	TodoReturn doReversePlayer(bool) = win 0x2d0480;
	TodoReturn enableCustomGlowColor(cocos2d::ccColor3B const&);
	TodoReturn enablePlayerControls();
	TodoReturn exitPlatformerAnimateJump();
	TodoReturn fadeOutStreak2(float) = win 0x2d6cb0;
	TodoReturn flashPlayer(float, float, cocos2d::ccColor3B, cocos2d::ccColor3B);
	TodoReturn flipGravity(bool, bool) = win 0x2d1950;
	TodoReturn flipMod();
	TodoReturn gameEventTriggered(int, int);
	TodoReturn getActiveMode();
	TodoReturn getCurrentXVelocity();
	TodoReturn getModifiedSlopeYVel() = win 0x2c80c0;
	TodoReturn getOldPosition(float);
	TodoReturn getSecondColor();
	TodoReturn getYVelocity();
	TodoReturn gravityDown();
	TodoReturn gravityUp();
	TodoReturn handlePlayerCommand(int);
	TodoReturn handleRotatedCollisionInternal(float, GameObject*, cocos2d::CCRect, bool, bool, bool);
	TodoReturn handleRotatedObjectCollision(float, GameObject*, cocos2d::CCRect, bool);
	TodoReturn handleRotatedSlopeCollision(float, GameObject*, bool);
	TodoReturn hardFlipGravity();
	TodoReturn hitGround(GameObject*, bool);
	TodoReturn hitGroundNoJump(GameObject*, bool) = win 0x2d32d0;
	TodoReturn incrementJumps() = win 0x2c5cf0;
	bool init(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool);
	bool isBoostValid(float) = win 0x2c8060;
	bool isFlying() = win 0x2d1c90;
	bool isInBasicMode();
	bool isInNormalMode() = win 0x2d39b0;
	bool isSafeFlip(float);
	bool isSafeHeadTest();
	bool isSafeMode(float);
	bool isSafeSpiderFlip(float);
	TodoReturn levelFlipFinished();
	TodoReturn levelFlipping() = win 0x2d2af0;
	TodoReturn levelWillFlip();
	TodoReturn loadFromCheckpoint(PlayerCheckpoint*);
	TodoReturn lockPlayer() = win 0x2d5f80;
	TodoReturn logValues();
	TodoReturn modeDidChange();
	TodoReturn performSlideCheck();
	TodoReturn placeStreakPoint() = win 0x2d7310;
	TodoReturn playBumpEffect(int, GameObject*) = win 0x2d65c0;
	TodoReturn playBurstEffect();
	TodoReturn playCompleteEffect(bool, bool);
	TodoReturn playDeathEffect();
	TodoReturn playDynamicSpiderRun();
	TodoReturn playerDestroyed(bool) = win 0x2cfe60;
	TodoReturn playerIsFalling(float);
	TodoReturn playerIsFallingBugged();
	TodoReturn playerIsMovingUp();
	TodoReturn playerTeleported();
	TodoReturn playingEndEffect();
	TodoReturn playSpawnEffect();
	TodoReturn playSpiderDashEffect(cocos2d::CCPoint, cocos2d::CCPoint);
	TodoReturn postCollision(float);
	TodoReturn preCollision() = win 0x2c66b0;
	TodoReturn preSlopeCollision(float, GameObject*) = win 0x2c8250;
	TodoReturn propellPlayer(float, bool, int);
	TodoReturn pushButton(PlayerButton) = win 0x2d0060;
	TodoReturn pushDown();
	TodoReturn pushPlayer(float);
	TodoReturn redirectDash(float) = win 0x2cdf30;
	TodoReturn redirectPlayerForce(float, float, float, float) = win 0x2d6830;
	TodoReturn releaseAllButtons();
	TodoReturn releaseButton(PlayerButton) = win 0x2d02a0;
	TodoReturn removeAllParticles();
	TodoReturn removePendingCheckpoint() = win 0x2d83c0;
	TodoReturn removePlacedCheckpoint();
	TodoReturn resetAllParticles();
	TodoReturn resetCollisionLog(bool);
	TodoReturn resetCollisionValues();
	TodoReturn resetPlayerIcon() = win 0x2d2820;
	TodoReturn resetStateVariables();
	TodoReturn resetStreak();
	TodoReturn resetTouchedRings();
	TodoReturn reverseMod();
	TodoReturn reversePlayer(EffectGameObject*) = win 0x2d03a0;
	TodoReturn ringJump(RingObject*, bool);
	TodoReturn rotateGameplay(int, int, bool, float, float, bool, bool);
	TodoReturn rotateGameplayObject(GameObject*);
	TodoReturn rotateGameplayOnly(bool);
	TodoReturn rotatePreSlopeObjects();
	TodoReturn runBallRotation(float) = win 0x2c6330;
	TodoReturn runBallRotation2() = win 0x2c6470;
	TodoReturn runNormalRotation() = win 0x2c61f0;
	TodoReturn runNormalRotation(bool, float);
	TodoReturn runRotateAction(bool, int) = win 0x2c6190;
	TodoReturn saveToCheckpoint(PlayerCheckpoint*);
	void setSecondColor(cocos2d::ccColor3B const&) = win 0x2d47d0;
	TodoReturn setupStreak();
	void setYVelocity(double, int) = win 0x2c2620;
	TodoReturn spawnCircle();
	TodoReturn spawnCircle2();
	TodoReturn spawnDualCircle();
	TodoReturn spawnFromPlayer(PlayerObject*, bool) = win 0x2d7190;
	TodoReturn spawnPortalCircle(cocos2d::ccColor3B, float) = win 0x2cfb40;
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
	TodoReturn stopDashing() = win 0x2cec90;
	TodoReturn stopParticles();
	TodoReturn stopPlatformerJumpAnimation();
	TodoReturn stopRotation(bool, int);
	TodoReturn stopStreak2();
	TodoReturn storeCollision(PlayerCollisionDirection, int) = win 0x2c6610;
	TodoReturn switchedDirTo(PlayerButton);
	TodoReturn switchedToMode(GameObjectType) = win 0x2d3240;
	TodoReturn testForMoving(float, GameObject*);
	TodoReturn toggleBirdMode(bool, bool) = win 0x2d1fa0;
	TodoReturn toggleDartMode(bool, bool) = win 0x2d2560;
	TodoReturn toggleFlyMode(bool, bool) = win 0x2d1d10;
	TodoReturn toggleGhostEffect(GhostType);
	TodoReturn togglePlatformerMode(bool);
	TodoReturn togglePlayerScale(bool, bool) = win 0x2d7370;
	TodoReturn toggleRobotMode(bool, bool) = win 0x2d2c60;
	TodoReturn toggleRollMode(bool, bool) = win 0x2d2b30;
	TodoReturn toggleSpiderMode(bool, bool) = win 0x2d2f50;
	TodoReturn toggleSwingMode(bool, bool) = win 0x2d2220;
	TodoReturn toggleVisibility(bool);
	TodoReturn touchedObject(GameObject*);
	TodoReturn tryPlaceCheckpoint() = win 0x2d8420;
	TodoReturn unrotateGameplayObject(GameObject*);
	TodoReturn unrotatePreSlopeObjects();
	TodoReturn updateCheckpointMode(bool);
	TodoReturn updateCheckpointTest() = win 0x2c4830;
	TodoReturn updateCollide(PlayerCollisionDirection, GameObject*) = win 0x2cc8d0;
	TodoReturn updateCollideBottom(float, GameObject*);
	TodoReturn updateCollideLeft(float, GameObject*);
	TodoReturn updateCollideRight(float, GameObject*);
	TodoReturn updateCollideTop(float, GameObject*);
	TodoReturn updateDashAnimation();
	TodoReturn updateDashArt() = win 0x2ce880;
	TodoReturn updateEffects(float);
	TodoReturn updateGlowColor() = win 0x2d4840;
	TodoReturn updateInternalActions(float);
	TodoReturn updateJump(float);
	TodoReturn updateJumpVariables();
	TodoReturn updateLastGroundObject(GameObject*);
	TodoReturn updateMove(float);
	TodoReturn updatePlayerArt() = win 0x2d0650;
	TodoReturn updatePlayerBirdFrame(int) = win 0x2d5320;
	TodoReturn updatePlayerDartFrame(int);
	TodoReturn updatePlayerForce(cocos2d::CCPoint, bool);
	TodoReturn updatePlayerFrame(int) = win 0x2d4dc0;
	TodoReturn updatePlayerGlow() = win 0x2d6e50;
	TodoReturn updatePlayerJetpackFrame(int);
	TodoReturn updatePlayerRobotFrame(int);
	TodoReturn updatePlayerRollFrame(int) = win 0x2d5540;
	TodoReturn updatePlayerScale() = win 0x2d6df0;
	TodoReturn updatePlayerShipFrame(int);
	TodoReturn updatePlayerSpiderFrame(int);
	TodoReturn updatePlayerSpriteExtra(gd::string);
	TodoReturn updatePlayerSwingFrame(int);
	TodoReturn updateRobotAnimationSpeed();
	TodoReturn updateRotation(float, float) = win 0x2ca0b0;
	TodoReturn updateRotation(float);
	TodoReturn updateShipRotation(float);
	TodoReturn updateShipSpriteExtra(gd::string);
	TodoReturn updateSlopeRotation(float);
	TodoReturn updateSlopeYVelocity(float);
	TodoReturn updateSpecial(float);
	TodoReturn updateStateVariables();
	TodoReturn updateStaticForce(float, float, bool) = win 0x2d66f0;
	TodoReturn updateStreakBlend(bool);
	TodoReturn updateStreaks(float);
	TodoReturn updateSwingFire() = win 0x2d2450;
	TodoReturn updateTimeMod(float, bool) = win 0x2d77e0;
	TodoReturn usingWallLimitedMode();
	TodoReturn yStartDown();
	TodoReturn yStartUp();

	virtual void update(float) = win 0x2c2710;
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setScale(float);
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setVisible(bool);
	virtual void setRotation(float);
	virtual void setOpacity(unsigned char);
	virtual void setColor(cocos2d::ccColor3B const&);
	virtual void setFlipX(bool) = win 0x2d8870;
	virtual void setFlipY(bool);
	virtual TodoReturn resetObject();
	virtual TodoReturn getRealPosition();
	virtual TodoReturn getOrientedBox();
	virtual TodoReturn getObjectRotation();
	virtual TodoReturn animationFinished(char const*);

	PAD = win 0x13c;
	float m_rotationSpeed; //0x5d8
	PAD = win 0x5;
	bool m_isRotating; //0x5e1
	PAD = win 0x1b6;
	double m_yVelocity; //0x798
	PAD = win 0x9;
	bool m_isShip; //0x7a9
	bool m_isBird; //0x7aa
	bool m_isBall; //0x7ab
	bool m_isDart; //0x7ac
	bool m_isRobot; //0x7ad
	bool m_isSpider; //0x7ae
	bool m_isUpsideDown; //0x7af
	bool m_isDead; //0x7b0
	bool m_isOnGround; //0x7b1
	bool m_isGoingLeft; //0x7b2
	PAD = win 0x1;
	bool m_isSwing; //0x7b4
	PAD = win 0x1f;
	bool m_isDashing; //0x7d4
	PAD = win 0xf;
	float m_speed; //0x7e4
	PAD = win 0x17;
	bool m_isLocked; //0x7ff
	PAD = win 0x1c;
	cocos2d::CCPoint m_position; //0x81c
	PAD = win 0x4c;
	double m_platformerXVelocity; //0x870
	PAD = win 0x70;
	bool m_isPlatformer; //0x8e8
	PAD = win 0x13;
	float m_gravityMod; //0x8fc
	PAD = win 0x80;
}

[[link(android)]]
class PlayLayer : GJBaseGameLayer, CCCircleWaveDelegate, CurrencyRewardDelegate, DialogDelegate {
	// virtual ~PlayLayer();

	static PlayLayer* create(GJGameLevel*, bool, bool);

	TodoReturn addCircle(CCCircleWave*);
	TodoReturn addObject(GameObject*) = win 0x2dfab0;
	TodoReturn addToGroupOld(GameObject*);
	TodoReturn applyCustomEnterEffect(GameObject*, bool);
	TodoReturn applyEnterEffect(GameObject*, int, bool);
	TodoReturn canPauseGame();
	TodoReturn checkpointWithID(int);
	TodoReturn colorObject(int, cocos2d::ccColor3B);
	TodoReturn commitJumps();
	TodoReturn compareStateSnapshot();
	TodoReturn createCheckpoint() = win 0x2e57d0;
	TodoReturn createObjectsFromSetupFinished() = win 0x2df830;
	TodoReturn delayedFullReset();
	TodoReturn delayedResetLevel();
	TodoReturn fullReset();
	TodoReturn getCurrentPercent();
	TodoReturn getCurrentPercentInt() = win 0x2e4780;
	TodoReturn getEndPosition();
	TodoReturn getLastCheckpoint() = win 0x2e6e20;
	TodoReturn getRelativeMod(cocos2d::CCPoint, float, float, float);
	TodoReturn getRelativeModNew(cocos2d::CCPoint, float, float, bool, bool);
	TodoReturn getTempMilliTime();
	TodoReturn gravityEffectFinished();
	TodoReturn incrementJumps() = win 0x2e8da0;
	bool init(GJGameLevel*, bool, bool) = win 0x2da660;
	bool isGameplayActive();
	TodoReturn levelComplete() = win 0x2dbc80;
	TodoReturn loadActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&);
	TodoReturn loadDefaultColors() = win 0x2e2f80;
	TodoReturn loadDynamicSaveObjects(gd::vector<SavedObjectStateRef>&);
	TodoReturn loadFromCheckpoint(CheckpointObject*) = win 0x2e66c0;
	TodoReturn loadLastCheckpoint();
	TodoReturn markCheckpoint();
	TodoReturn onQuit() = win 0x2e9550;
	TodoReturn optimizeColorGroups();
	TodoReturn optimizeOpacityGroups();
	TodoReturn pauseGame(bool);
	TodoReturn playEndAnimationToPos(cocos2d::CCPoint) = win 0x2ddf10;
	TodoReturn playPlatformerEndAnimationToPos(cocos2d::CCPoint, bool) = win 0x2de6f0;
	TodoReturn playReplay(gd::string);
	TodoReturn prepareCreateObjectsFromSetup(gd::string&) = win 0x2ded50;
	TodoReturn prepareMusic(bool) = win 0x2e9380;
	TodoReturn processCreateObjectsFromSetup() = win 0x2defd0;
	TodoReturn processLoadedMoveActions();
	TodoReturn queueCheckpoint();
	TodoReturn removeAllObjects() = win 0x2e9660;
	TodoReturn removeCheckpoint(bool);
	TodoReturn removeFromGroupOld(GameObject*);
	TodoReturn resetLevel() = win 0x2e8200;
	TodoReturn resetLevelFromStart() = win 0x2e8160;
	TodoReturn resume();
	TodoReturn resumeAndRestart(bool);
	TodoReturn saveActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&) = win 0x2e7ce0;
	TodoReturn saveDynamicSaveObjects(gd::vector<SavedObjectStateRef>&) = win 0x2e7840;
	TodoReturn scanActiveSaveObjects();
	TodoReturn scanDynamicSaveObjects();
	TodoReturn scene(GJGameLevel*, bool, bool) = win 0x2da560;
	TodoReturn screenFlipObject(GameObject*);
	void setDamageVerifiedIdx(int);
	TodoReturn setupHasCompleted();
	TodoReturn shouldBlend(int);
	TodoReturn showCompleteEffect();
	TodoReturn showCompleteText() = win 0x2dc520;
	TodoReturn showEndLayer();
	TodoReturn showHint() = win 0x2e5080;
	TodoReturn showNewBest(bool, int, int, bool, bool, bool) = win 0x2dced0;
	TodoReturn showRetryLayer();
	TodoReturn showTwoPlayerGuide();
	TodoReturn spawnCircle();
	TodoReturn spawnFirework();
	TodoReturn startGame() = win 0x2dbbd0;
	TodoReturn startGameDelayed();
	TodoReturn startMusic() = win 0x2e9470;
	TodoReturn startRecording();
	TodoReturn startRecordingDelayed();
	TodoReturn stopRecording();
	TodoReturn storeCheckpoint(CheckpointObject*) = win 0x2e6580;
	TodoReturn takeStateSnapshot();
	TodoReturn toggleBGEffectVisibility(bool);
	TodoReturn toggleGhostEffect(int) = win 0x2d5c80;
	TodoReturn togglePracticeMode(bool);
	TodoReturn tryStartRecord();
	TodoReturn updateAttempts() = win 0x2e8c10;
	TodoReturn updateEffectPositions() = win 0x2e5220;
	TodoReturn updateInfoLabel() = win 0x2e3bd0;
	TodoReturn updateInvisibleBlock(GameObject*, float, float, float, float, cocos2d::ccColor3B const&);
	TodoReturn updateProgressbar() = win 0x2e3540;
	TodoReturn updateScreenRotation(int, bool, bool, float, int, float, int, int);
	TodoReturn updateTimeWarp(EffectGameObject*, float) = win 0x1b86b0;

	virtual void onEnterTransitionDidFinish() = win 0x2e97f0;
	virtual void onExit() = win 0x2e9820;
	virtual TodoReturn postUpdate(float) = win 0x2e5310;
	virtual TodoReturn checkForEnd() = win 0x2e55c0;
	virtual TodoReturn testTime();
	virtual TodoReturn updateVerifyDamage() = win 0x2e56a0;
	virtual TodoReturn updateAttemptTime(float) = win 0x2e5720;
	virtual TodoReturn updateVisibility(float);
	virtual TodoReturn opacityForObject(GameObject*) = win 0x2e1a20;
	virtual TodoReturn updateColor(cocos2d::ccColor3B&, float, int, bool, float, cocos2d::ccHSVValue&, int, bool, EffectGameObject*, int, int) = win 0x2e31e0;
	virtual TodoReturn activateEndTrigger(int, bool, bool);
	virtual TodoReturn activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&) = win 0x2de5e0;
	virtual TodoReturn toggleGlitter(bool) = win 0x2e4730;
	virtual TodoReturn destroyPlayer(PlayerObject*, GameObject*) = win 0x2e4840;
	virtual TodoReturn toggleGroundVisibility(bool) = win 0x2e45e0;
	virtual TodoReturn toggleMGVisibility(bool) = win 0x2e4660;
	virtual TodoReturn toggleHideAttempts(bool) = win 0x2e46b0;
	virtual TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, int) = win 0x2e44e0;
	virtual TodoReturn posForTime(float) = win 0x2e4550;
	virtual TodoReturn resetSPTriggered() = win 0x2e45a0;
	virtual TodoReturn updateTimeWarp(float);
	virtual TodoReturn playGravityEffect(bool);
	virtual TodoReturn manualUpdateObjectColors(GameObject*) = win 0x2e1a40;
	virtual TodoReturn checkpointActivated(CheckpointGameObject*) = win 0x2e57b0;
	virtual TodoReturn flipArt(bool);
	virtual TodoReturn updateTimeLabel(int, int, bool);
	virtual TodoReturn checkSnapshot();
	virtual TodoReturn toggleProgressbar();
	virtual TodoReturn toggleInfoLabel();
	virtual TodoReturn removeAllCheckpoints();
	virtual TodoReturn toggleMusicInPractice();
	virtual TodoReturn currencyWillExit(CurrencyRewardLayer*);
	virtual TodoReturn circleWaveWillBeRemoved(CCCircleWave*);
	virtual TodoReturn dialogClosed(DialogLayer*);

	PAD = win 0x12C, android32 0x12C;
	bool m_endLayerStars; // not verified on android
	PAD = win 0xBF, android32 0xBF;
}

[[link(android)]]
class PointNode : cocos2d::CCObject {
	// virtual ~PointNode();

	static PointNode* create(cocos2d::CCPoint) = win 0x225fb0;

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

	static ProfilePage* create(int, bool) = win 0x2eb060;

	TodoReturn blockUser();
	bool init(int, bool) = win 0x2eb110;
	bool isCorrect(char const*);
	bool isOnWatchlist(int);
	TodoReturn loadPage(int);
	TodoReturn loadPageFromUserInfo(GJUserScore*) = win 0x2EBE30;
	void onBlockUser(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = win 0x2ef3c0;
	void onComment(cocos2d::CCObject* sender);
	void onCommentHistory(cocos2d::CCObject* sender);
	void onFollow(cocos2d::CCObject* sender);
	void onFriend(cocos2d::CCObject* sender);
	void onFriends(cocos2d::CCObject* sender);
	void onMessages(cocos2d::CCObject* sender);
	void onMyLevels(cocos2d::CCObject* sender) = win 0x2ee460;
	void onMyLists(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onRequests(cocos2d::CCObject* sender);
	void onSendMessage(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onTwitch(cocos2d::CCObject* sender);
	void onTwitter(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender) = win 0x2ebba0;
	void onYouTube(cocos2d::CCObject* sender);
	TodoReturn setupComments();
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*) = win 0x2eff40;
	TodoReturn showNoAccountError();
	TodoReturn toggleMainPageVisibility(bool);
	TodoReturn updateLevelsLabel();
	TodoReturn updatePageArrows();

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked() = win 0x2EF420;
	virtual void show() = win 0x2ef5d0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn updateUserScoreFinished();
	virtual TodoReturn updateUserScoreFailed();
	virtual TodoReturn getUserInfoFinished(GJUserScore*) = win 0x2efb90;
	virtual TodoReturn getUserInfoFailed(int) = win 0x2efc20;
	virtual TodoReturn userInfoChanged(GJUserScore*) = win 0x2efc70;
	virtual TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*) = win 0x2f0070;
	virtual TodoReturn loadCommentsFailed(char const*) = win 0x2f00d0;
	virtual TodoReturn setupPageInfo(gd::string, char const*);
	virtual TodoReturn commentUploadFinished(int);
	virtual TodoReturn commentUploadFailed(int, CommentError);
	virtual TodoReturn commentDeleteFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
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

	static PurchaseItemPopup* create(GJStoreItem*);

	bool init(GJStoreItem*) = win 0x21b8a0;
	void onClose(cocos2d::CCObject* sender);
	void onPurchase(cocos2d::CCObject* sender) = win 0x21c320;

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
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class RateDemonLayer : FLAlertLayer, UploadPopupDelegate, UploadActionDelegate {
	// virtual ~RateDemonLayer();

	static RateDemonLayer* create(int);

	bool init(int);
	void onClose(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender) = win 0x2f0d30;
	void selectRating(cocos2d::CCObject*) = win 0x2f0bd0;

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

	static RateStarsLayer* create(int, bool, bool);

	TodoReturn getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);
	bool init(int, bool, bool) = win 0x2f1a30;
	void onClose(cocos2d::CCObject* sender) = win 0x2f24c0;
	void onFeature(cocos2d::CCObject* sender) = win 0x2f20a0;
	void onRate(cocos2d::CCObject* sender) = win 0x2f22d0;
	void onToggleCoins(cocos2d::CCObject* sender);
	TodoReturn selectRating(cocos2d::CCObject*) = win 0x2f2180;

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

	static RetryLevelLayer* create();

	TodoReturn getEndText();
	void onEveryplay(cocos2d::CCObject* sender);
	void onMenu(cocos2d::CCObject* sender);
	void onReplay(cocos2d::CCObject* sender);
	void onRewardedVideo(cocos2d::CCObject* sender);
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
class RewardedVideoDelegate {
	virtual TodoReturn rewardedVideoFinished();
	virtual TodoReturn shouldOffsetRewardCurrency();
}

[[link(android)]]
class RewardsPage : FLAlertLayer, FLAlertLayerProtocol, GJRewardDelegate {
	// virtual ~RewardsPage();

	static RewardsPage* create();

	TodoReturn getRewardFrame(int, int);
	void onClose(cocos2d::CCObject* sender);
	void onFreeStuff(cocos2d::CCObject* sender);
	void onReward(cocos2d::CCObject* sender);
	TodoReturn tryGetRewards();
	TodoReturn unlockLayerClosed(RewardUnlockLayer*);
	TodoReturn updateTimers(float);

	virtual bool init() = win 0x2f38d0;
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
	bool init(int, RewardsPage*) = win 0x2f4c80;
	TodoReturn labelEnterFinishedO(cocos2d::CCObject*);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn playDropSound();
	TodoReturn playLabelEffect(int, int, cocos2d::CCSprite*, cocos2d::CCPoint, float);
	TodoReturn playRewardEffect();
	TodoReturn readyToCollect(GJRewardItem*);
	TodoReturn showCloseButton();
	TodoReturn showCollectReward(GJRewardItem*) = win 0x2f5940;
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
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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

	static SearchButton* create(char const*, char const*, float, char const*) = win 0x263bf0;

	bool init(char const*, char const*, float, char const*) = win 0x263ce0;

	cocos2d::CCLabelBMFont* m_label;
	cocos2d::CCSprite* m_icon;
}

[[link(android)]]
class SearchSFXPopup : SetTextPopup {
	// virtual ~SearchSFXPopup();

	static SearchSFXPopup* create(gd::string);

	bool init(gd::string);
	void onSearchFolders(cocos2d::CCObject* sender);
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
	void onSubmit(cocos2d::CCObject* sender) = win 0x3042c0;
	TodoReturn playCoinEffect();
	TodoReturn scene();
	TodoReturn selectAThread();
	TodoReturn updateMessageLabel(gd::string);
	void updateSearchLabel(char const*) = win 0x3055b0;

	virtual bool init() = win 0x3027d0;
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

	TodoReturn getBasicMessage();
	TodoReturn getErrorMessage();
	TodoReturn getMessage();
	TodoReturn getThreadMessage();
	TodoReturn nodeWithTag(int);
	void onBack(cocos2d::CCObject* sender);
	void onDoor(cocos2d::CCObject* sender);
	void onSecretLevel(cocos2d::CCObject* sender) = win 0x303d30;
	void onSubmit(cocos2d::CCObject* sender) = win 0x3042c0;
	TodoReturn playCoinEffect();
	TodoReturn scene();
	TodoReturn selectAThread();
	TodoReturn showCompletedLevel();
	TodoReturn showSecretLevel();
	TodoReturn updateMessageLabel(gd::string);
	void updateSearchLabel(char const*) = win 0x3055b0;

	virtual bool init() = win 0x3027d0;
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

	static SecretLayer4* create();

	TodoReturn getBasicMessage();
	TodoReturn getErrorMessage();
	TodoReturn getMessage();
	TodoReturn getThreadMessage();
	TodoReturn nodeWithTag(int);
	void onBack(cocos2d::CCObject* sender);
	void onChest01(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);
	TodoReturn playCoinEffect();
	TodoReturn scene();
	TodoReturn selectAThread();
	TodoReturn showDialog(int);
	TodoReturn showFirstDialog();
	TodoReturn updateMessageLabel(gd::string);
	TodoReturn updateSearchLabel(char const*);

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
class SecretNumberLayer : cocos2d::CCLayer {
	// virtual ~SecretNumberLayer();

	static SecretNumberLayer* create();

	TodoReturn playNumberEffect(int);

	virtual bool init();
}

[[link(android)]]
class SecretRewardsLayer : cocos2d::CCLayer, DialogDelegate, BoomScrollLayerDelegate {
	// virtual ~SecretRewardsLayer();

	static SecretRewardsLayer* create(bool);

	TodoReturn createSecondaryLayer(int) = win 0x2fa540;
	TodoReturn generateChestItems(int) = win 0x2fa9b0;
	TodoReturn getPageColor(int);
	TodoReturn goToPage(int);
	bool init(bool);
	TodoReturn moveToMainLayer(cocos2d::CCObject*);
	TodoReturn moveToSecondaryLayer(int);
	void onBack(cocos2d::CCObject* sender);
	void onChestType(cocos2d::CCObject* sender);
	void onSelectItem(cocos2d::CCObject* sender) = win 0x2fb330;
	void onShop(cocos2d::CCObject* sender) = win 0x2fb690;
	void onSpecialItem(cocos2d::CCObject* sender) = win 0x2fb940;
	void onSwitchPage(cocos2d::CCObject* sender);
	TodoReturn scene(bool);
	TodoReturn showDialog01();
	TodoReturn showDialog03();
	TodoReturn showDialogDiamond();
	TodoReturn showDialogMechanic();
	TodoReturn showLockedChest();
	TodoReturn showShop(int);
	TodoReturn switchToOpenedState(CCMenuItemSpriteExtra*) = win 0x2fbc10;
	TodoReturn updateBackButton();
	TodoReturn updateUnlockedLabel() = win 0x2fbcc0;

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

	bool init(LevelEditorLayer*);
	void onChangeFont(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn updateFontLabel();

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

	static SelectSettingLayer* create(SelectSettingType, int);

	TodoReturn frameForItem(SelectSettingType, int);
	TodoReturn frameForValue(SelectSettingType, int);
	TodoReturn getSelectedFrame();
	TodoReturn getSelectedValue();
	TodoReturn idxToValue(SelectSettingType, int);
	bool init(SelectSettingType, int);
	void onClose(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);
	TodoReturn valueToIdx(SelectSettingType, int);

	virtual void keyBackClicked();
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
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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

	static SetFolderPopup* create(int, bool, gd::string);

	bool init(int, bool, gd::string);
	void onSetFolderName(cocos2d::CCObject* sender);

	virtual TodoReturn valueChanged();
	virtual void setTextPopupClosed(SetTextPopup*, gd::string);
}

[[link(android)]]
class SetGroupIDLayer : FLAlertLayer, TextInputDelegate {
	// virtual ~SetGroupIDLayer();

	static SetGroupIDLayer* create(GameObject*, cocos2d::CCArray*);

	TodoReturn addGroupID(int);
	TodoReturn callRemoveFromGroup(float);
	TodoReturn createTextInput(cocos2d::CCPoint, int, int, gd::string, float, int);
	TodoReturn determineStartValues();
	bool init(GameObject*, cocos2d::CCArray*);
	void onAddGroup(cocos2d::CCObject* sender);
	void onAddGroupParent(cocos2d::CCObject* sender);
	void onAnim(cocos2d::CCObject* sender);
	TodoReturn onArrow(int, int);
	void onArrowLeft(cocos2d::CCObject* sender);
	void onArrowRight(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
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

	virtual void keyBackClicked();
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetIDPopup : FLAlertLayer, TextInputDelegate {
	// virtual ~SetIDPopup();
	// SetIDPopup();

	static SetIDPopup* create(int, int, int, gd::string, gd::string, bool, int, float, bool, bool);

	bool init(int, int, int, gd::string, gd::string, bool, int, float, bool, bool);
	void onCancel(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onItemIDArrow(cocos2d::CCObject* sender);
	void onResetValue(cocos2d::CCObject* sender);
	TodoReturn updateTextInputLabel();

	virtual void keyBackClicked();
	virtual void show();
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn valueChanged();
}

[[link(android)]]
class SetIDPopupDelegate {
	virtual void setIDPopupClosed(SetIDPopup*, int);
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

	static SetTextPopup* create(gd::string, gd::string, int, gd::string, gd::string, bool, float);

	bool init(gd::string, gd::string, int, gd::string, gd::string, bool, float);
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

	static SetupAreaAnimTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*, int);

	TodoReturn createValueControlAdvancedAnim(int, gd::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float, float, int, int, GJInputStyle);
	bool init(EnterEffectObject*, cocos2d::CCArray*, int);
	void onDeactivateAnimValue(cocos2d::CCObject* sender);
	TodoReturn updateTargetIDLabel();

	virtual TodoReturn updateDefaultTriggerValues();
	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupAreaFadeTriggerPopup : SetupAreaMoveTriggerPopup {
	// virtual ~SetupAreaFadeTriggerPopup();

	static SetupAreaFadeTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
}

[[link(android)]]
class SetupAreaMoveTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupAreaMoveTriggerPopup();
	// SetupAreaMoveTriggerPopup();

	static SetupAreaMoveTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	TodoReturn addAreaDefaultControls(int);
	TodoReturn getModeValues(int, int&, bool&, bool&);
	bool init(EnterEffectObject*, cocos2d::CCArray*);
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

	static SetupAreaRotateTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
}

[[link(android)]]
class SetupAreaTintTriggerPopup : SetupAreaMoveTriggerPopup, HSVWidgetDelegate {
	// virtual ~SetupAreaTintTriggerPopup();

	static SetupAreaTintTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
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

	static SetupAreaTransformTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
}

[[link(android)]]
class SetupAreaTriggerPopup : SetupAreaMoveTriggerPopup {
	// virtual ~SetupAreaTriggerPopup();

	static SetupAreaTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
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

	static SetupCollisionStateTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
}

[[link(android)]]
class SetupCollisionTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupCollisionTriggerPopup();

	static SetupCollisionTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
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

	static SetupEnterTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
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

	static SetupGravityTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);

	virtual TodoReturn valueDidChange(int, float);
}

[[link(android)]]
class SetupInstantCollisionTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupInstantCollisionTriggerPopup();

	static SetupInstantCollisionTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
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

	static SetupItemCompareTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);

	bool init(ItemTriggerGameObject*, cocos2d::CCArray*);
	void onOpButton(cocos2d::CCObject* sender);
	TodoReturn updateFormulaLabel();
	TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int);

	virtual TodoReturn valueDidChange(int, float);
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupItemEditTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupItemEditTriggerPopup();

	static SetupItemEditTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);

	bool init(ItemTriggerGameObject*, cocos2d::CCArray*);
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

	static SetupMoveCommandPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
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

	static SetupOptionsTriggerPopup* create(GameOptionsTrigger*, cocos2d::CCArray*);

	TodoReturn addOption(int, gd::string);
	bool init(GameOptionsTrigger*, cocos2d::CCArray*);

	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupPersistentItemTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupPersistentItemTriggerPopup();

	static SetupPersistentItemTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);

	bool init(ItemTriggerGameObject*, cocos2d::CCArray*);
}

[[link(android)]]
class SetupPickupTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupPickupTriggerPopup();

	static SetupPickupTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
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

	static SetupRandAdvTriggerPopup* create(RandTriggerGameObject*, cocos2d::CCArray*);

	TodoReturn addChance(int, int);
	TodoReturn addChanceToObject(RandTriggerGameObject*, int, int);
	TodoReturn callRemoveFromGroup(float);
	bool init(RandTriggerGameObject*, cocos2d::CCArray*);
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

	static SetupRandTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
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

	static SetupResetTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
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

	static SetupRotateCommandPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
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

	static SetupSequenceTriggerPopup* create(SequenceTriggerGameObject*);

	bool init(SequenceTriggerGameObject*);
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

	static SetupSmartTemplateLayer* create(GJSmartTemplate*);

	bool init(GJSmartTemplate*);
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

	static SetupSongTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
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

	static SetupSpawnParticlePopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
}

[[link(android)]]
class SetupSpawnPopup : SetupTriggerPopup {
	// virtual ~SetupSpawnPopup();

	static SetupSpawnPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
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

	static SetupStopTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);

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

	static SetupTimerControlTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);

	bool init(TimerTriggerGameObject*, cocos2d::CCArray*);

	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
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

	static SetupTimerTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);

	bool init(TimerTriggerGameObject*, cocos2d::CCArray*);
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
	bool init(EffectGameObject*, cocos2d::CCArray*, float, float, int);
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

	static SetupZoomTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);

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
	void onCredits(cocos2d::CCObject* sender);
	void onExitFolder(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);
	void onSorting(cocos2d::CCObject* sender);
	void onToggleCompactMode(cocos2d::CCObject* sender);
	void onUpdateLibrary(cocos2d::CCObject* sender);
	TodoReturn setupList(SFXSearchResult*);
	TodoReturn trySetupSFXBrowser();
	TodoReturn updatePageLabel();

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

	static SFXSearchResult* create(int);

	TodoReturn getActiveFolder();
	TodoReturn getSelectedPage(int, int);
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
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class ShaderGameObject : EffectGameObject {
	// virtual ~ShaderGameObject();

	static ShaderGameObject* create(char const*);

	bool init(char const*);

	virtual TodoReturn customSetup();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class ShaderLayer : cocos2d::CCLayer {
	// virtual ~ShaderLayer();

	static ShaderLayer* create();

	TodoReturn objectPosToShaderPos(cocos2d::CCPoint);
	TodoReturn performCalculations() = win 0x380640;
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
	virtual void visit() = win 0x380790;
}

[[link(android)]]
class ShardsPage : FLAlertLayer {
	// virtual ~ShardsPage();

	static ShardsPage* create();

	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn goToPage(int);
	void onClose(cocos2d::CCObject* sender);
	void onIconInfo(cocos2d::CCObject* sender);
	void onSwitchPage(cocos2d::CCObject* sender);

	virtual bool init();
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

	static ShareCommentLayer* create(gd::string, int, CommentType, int, gd::string);

	bool init(gd::string, int, CommentType, int, gd::string);
	void onClear(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onPercent(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender) = win 0x384440;
	TodoReturn updateCharCountLabel();
	TodoReturn updateDescText(gd::string);
	TodoReturn updatePercentLabel();

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

	static ShareLevelLayer* create(GJGameLevel*);

	TodoReturn getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);
	bool init(GJGameLevel*);
	void onClose(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender) = win 0x385ea0;
	TodoReturn selectRating(cocos2d::CCObject*);
	TodoReturn setupStars();

	virtual void keyBackClicked();
}

[[link(android)]]
class ShareLevelSettingsLayer : FLAlertLayer, NumberInputDelegate {
	// virtual ~ShareLevelSettingsLayer();

	static ShareLevelSettingsLayer* create(GJGameLevel*);

	bool init(GJGameLevel*) = win 0x386ab0;
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

	static SimplePlayer* create(int) = win 0x1F2980;

	TodoReturn asyncLoadIcon(int, IconType);
	TodoReturn createRobotSprite(int) = win 0x1f30c0;
	TodoReturn createSpiderSprite(int) = win 0x1f3110;
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
	bool init(int) = win 0x1f2a20;
	void setColors(cocos2d::ccColor3B const&, cocos2d::ccColor3B const&);
	void setFrames(char const*, char const*, char const*, char const*, char const*) = win 0x1f38b0;
	inline void setSecondColor(cocos2d::_ccColor3B const& color) {
		m_secondLayer->setColor(color);
		updateColors();
	}
	TodoReturn updateColors() = win 0x1f31c0;
	TodoReturn updatePlayerFrame(int, IconType) = win 0x1f34b0;

	virtual void setOpacity(unsigned char) = win 0x1f3a60;
	virtual void setColor(cocos2d::ccColor3B const&) = win 0x1f3190;

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
class Slider : cocos2d::CCLayer {
	// virtual ~Slider();

	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float) = win 0x4d100;
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
	TodoReturn getValue() = win 0x4d4c0;
	TodoReturn hideGroove(bool);
	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float);
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
	TodoReturn updateBar() = win 0x4d560;

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

	static SliderThumb* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*) = win 0x4c8f0;

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
	void setValue(float) = win 0x4cbc0;

	float m_length;
	bool m_vertical;
}

[[link(android)]]
class SliderTouchLogic : cocos2d::CCMenu {
	// virtual ~SliderTouchLogic();

	static SliderTouchLogic* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float);

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
	virtual TodoReturn getSaveString(GJBaseGameLayer*);

	bool m_property157;
	PAD = android32 0x9;
}

[[link(android)]]
class SmartTemplateCell : TableViewCell {
	// virtual ~SmartTemplateCell();
	SmartTemplateCell(char const*, float, float);

	TodoReturn loadFromObject(GJSmartTemplate*) = win 0x8afa0;
	void onClick(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int) = win 0x8b2a0;

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class SongCell : TableViewCell {
	// virtual ~SongCell();
	SongCell(char const*, float, float);

	TodoReturn loadFromObject(SongObject*) = win 0x82c20;
	void onClick(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class SongInfoLayer : FLAlertLayer {
	// virtual ~SongInfoLayer();

	static SongInfoLayer* create(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string, int, gd::string);
	static SongInfoLayer* create(int);

	bool init(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string, int, gd::string);
	void onBPM(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onDownload(cocos2d::CCObject* sender);
	void onFB(cocos2d::CCObject* sender);
	void onMenuMusic(cocos2d::CCObject* sender) = win 0x388d40;
	void onNG(cocos2d::CCObject* sender);
	void onPracticeMusic(cocos2d::CCObject* sender);
	void onYT(cocos2d::CCObject* sender);
	TodoReturn showCustomMusicUnlockInfo() = win 0x388a40;

	virtual void keyBackClicked();
}

[[link(android)]]
class SongInfoObject : cocos2d::CCNode {
	// virtual ~SongInfoObject();

	static SongInfoObject* create(cocos2d::CCDictionary*);
	static SongInfoObject* create(int, gd::string, gd::string, int, float, gd::string, gd::string, gd::string, int);
	static SongInfoObject* create(int);

	TodoReturn addTags(gd::string);
	TodoReturn containsTag(int);
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn getTagsString();
	bool init(int, gd::string, gd::string, int, float, gd::string, gd::string, gd::string, int);

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();
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

	TodoReturn audioNext(cocos2d::CCObject*);
	TodoReturn audioPrevious(cocos2d::CCObject*);
	bool init(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool);
	void onOpenCustomSong(cocos2d::CCObject* sender);
	void onSongMode(cocos2d::CCObject* sender);
	TodoReturn onSongMode(int);
	TodoReturn selectSong(int);
	TodoReturn showCustomSongSelect();
	TodoReturn updateAudioLabel();
	TodoReturn updateWidgetVisibility();

	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn customSongLayerClosed();
	virtual TodoReturn songIDChanged(int);
	virtual TodoReturn getActiveSongID();
	virtual TodoReturn getSongFileName();
	virtual TodoReturn getLevelSettings();
}

[[link(android)]]
class SongsLayer : GJDropDownLayer {
	// virtual ~SongsLayer();

	static SongsLayer* create();

	virtual TodoReturn customSetup();
}

[[link(android)]]
class SongTriggerGameObject : SFXTriggerGameObject {
	// virtual ~SongTriggerGameObject();

	static SongTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class SpawnParticleGameObject : EffectGameObject {
	// virtual ~SpawnParticleGameObject();

	static SpawnParticleGameObject* create();

	virtual bool init();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class SpecialAnimGameObject : EnhancedGameObject {
	// virtual ~SpecialAnimGameObject();

	static SpecialAnimGameObject* create(char const*);

	bool init(char const*);

	virtual TodoReturn resetObject();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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
	TodoReturn executeAnimation(gd::string);
	TodoReturn finishAnimation(gd::string);
	TodoReturn getAnimType(gd::string);
	TodoReturn getPrio(gd::string);
	TodoReturn initWithOwner(CCAnimatedSprite*, gd::string);
	TodoReturn loadAnimations(gd::string);
	TodoReturn offsetCurrentAnimation(float);
	TodoReturn overridePrio() = win 0x4f7b0;
	TodoReturn playSound(gd::string);
	TodoReturn playSoundForAnimation(gd::string);
	TodoReturn queueAnimation(gd::string);
	TodoReturn resetAnimState();
	TodoReturn runAnimation(gd::string);
	TodoReturn runQueuedAnimation();
	TodoReturn stopAnimations();
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

	static StartPosObject* create() = win 0x3a4700;

	TodoReturn loadSettingsFromString(gd::string);
	void setSettings(LevelSettingsObject*);

	virtual bool init() = win 0x3a47c0;
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);

	int m_unknown;
}

[[link(android)]]
class StatsCell : TableViewCell {
	// virtual ~StatsCell();
	StatsCell(char const*, float, float);

	TodoReturn getTitleFromKey(char const*);
	TodoReturn loadFromObject(StatsObject*) = win 0x821a0;
	TodoReturn updateBGColor(int) = win 0x7d4d0;

	virtual bool init();
	virtual void draw() = win 0x7d520;
}

[[link(android)]]
class StatsLayer : GJDropDownLayer {
	// virtual ~StatsLayer();

	static StatsLayer* create();

	virtual TodoReturn customSetup();
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

	static SupportLayer* create();

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn exitLayer();
	void onCocos2d(cocos2d::CCObject* sender);
	void onEmail(cocos2d::CCObject* sender);
	void onGetReward(cocos2d::CCObject* sender);
	void onLinks(cocos2d::CCObject* sender) = win 0x3b9d60;
	void onLowDetail(cocos2d::CCObject* sender);
	void onPrivacy(cocos2d::CCObject* sender);
	void onRequestAccess(cocos2d::CCObject* sender);
	void onRobTop(cocos2d::CCObject* sender);
	void onSFX(cocos2d::CCObject* sender);
	void onTOS(cocos2d::CCObject* sender);
	TodoReturn sendSupportMail();

	virtual TodoReturn customSetup();
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
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
	TodoReturn reloadData() = win 0x50740;
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
	virtual void scrollWheel(float, float) = win 0x50fa0;
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
	TableViewCell(char const*, float, float) = win 0x51d80;

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

	static TeleportPortalObject* create(char const*, bool) = win 0x3a4900;

	TodoReturn getTeleportXOff(cocos2d::CCNode*);
	bool init(char const*, bool);
	void setPositionOverride(cocos2d::CCPoint);
	void setStartPosOverride(cocos2d::CCPoint);

	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setRotation(float);
	virtual void setStartPos(cocos2d::CCPoint);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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

	static TextAlertPopup* create(gd::string, float, float, int, gd::string);

	bool init(gd::string, float, float, int, gd::string);
	void setAlertPosition(cocos2d::CCPoint, cocos2d::CCPoint);
	void setLabelColor(cocos2d::ccColor3B);
}

[[link(android)]]
class TextArea : cocos2d::CCSprite {
	// virtual ~TextArea();

	static TextArea* create(gd::string, char const*, float, float, cocos2d::CCPoint, float, bool) = win 0x52240;

	TodoReturn colorAllCharactersTo(cocos2d::ccColor3B);
	TodoReturn colorAllLabels(cocos2d::ccColor3B);
	TodoReturn fadeIn(float, bool);
	TodoReturn fadeInCharacters(float, float);
	TodoReturn fadeOut(float);
	TodoReturn fadeOutAndRemove();
	TodoReturn finishFade();
	TodoReturn hideAll();
	bool init(gd::string, char const*, float, float, cocos2d::CCPoint, float, bool) = win 0x52340;
	void setIgnoreColorCode(bool);
	void setString(gd::string) = win 0x52450;
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

	static TextGameObject* create(cocos2d::CCTexture2D*);

	bool init(cocos2d::CCTexture2D*);
	TodoReturn updateTextObject(gd::string, bool);

	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
	virtual TodoReturn updateTextKerning(int);
	virtual TodoReturn getTextKerning();

	char* m_text;
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
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class TopArtistsLayer : FLAlertLayer, OnlineListDelegate {
	// virtual ~TopArtistsLayer();

	static TopArtistsLayer* create();

	bool isCorrect(char const*);
	TodoReturn loadPage(int);
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

	virtual bool init() = win 0x210de0;
	virtual void keyBackClicked();
}

[[link(android)]]
class TransformTriggerGameObject : EffectGameObject {
	// virtual ~TransformTriggerGameObject();

	static TransformTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class TriggerControlGameObject : EffectGameObject {
	// virtual ~TriggerControlGameObject();

	static TriggerControlGameObject* create(char const*);

	bool init(char const*);
	TodoReturn updateTriggerControlFrame();

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
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
	TodoReturn reset();
	TodoReturn resetOneBtn();

	PAD = win 0x28, android32 0x28, android64 0x28;
}

[[link(android)]]
class UILayer : cocos2d::CCLayerColor, cocos2d::CCKeyboardDelegate {
	// virtual ~UILayer();

	static UILayer* create(GJBaseGameLayer*);

	TodoReturn disableMenu();
	TodoReturn editorPlaytest(bool);
	TodoReturn enableEditorMode();
	TodoReturn enableMenu();
	TodoReturn handleKeypress(cocos2d::enumKeyCodes, bool);
	bool init(GJBaseGameLayer*);
	bool isJumpButtonPressed(bool);
	void onCheck(cocos2d::CCObject* sender);
	void onDeleteCheck(cocos2d::CCObject* sender);
	void onPause(cocos2d::CCObject* sender) = win 0x3bc870;
	TodoReturn processUINodesTouch(GJUITouchEvent, cocos2d::CCTouch*);
	TodoReturn processUINodeTouch(GJUITouchEvent, int, cocos2d::CCPoint, GJUINode*);
	TodoReturn refreshDpad();
	TodoReturn resetAllButtons() = win 0x3bc990;
	TodoReturn resetUINodeState() = win 0x3bc260;
	TodoReturn toggleCheckpointsMenu(bool);
	TodoReturn toggleMenuVisibility(bool) = win 0x3bc940;
	TodoReturn togglePlatformerMode(bool);
	TodoReturn updateDualMode(bool);
	TodoReturn updateUINodeVisibility(bool);

	virtual void draw() = win 0x3bdcc0;
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
class UIObjectSettingsPopup : SetupTriggerPopup {
	// virtual ~UIObjectSettingsPopup();

	static UIObjectSettingsPopup* create(UISettingsGameObject*, cocos2d::CCArray*);

	bool init(UISettingsGameObject*, cocos2d::CCArray*);

	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
}

[[link(android)]]
class UIOptionsLayer : SetupTriggerPopup {
	// virtual ~UIOptionsLayer();

	static UIOptionsLayer* create(bool);

	TodoReturn getNode(int);
	bool init(bool);
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

	static UISaveLoadLayer* create(UIOptionsLayer*);

	bool init(UIOptionsLayer*);
	void onLoad(cocos2d::CCObject* sender);
	void onSave(cocos2d::CCObject* sender);
}

[[link(android)]]
class UISettingsGameObject : EffectGameObject {
	// virtual ~UISettingsGameObject();

	static UISettingsGameObject* create();

	virtual bool init();
	virtual TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class UndoObject : cocos2d::CCObject {
	// virtual ~UndoObject();
	// UndoObject();

	static UndoObject* create(GameObject*, UndoCommand);

	TodoReturn createWithArray(cocos2d::CCArray*, UndoCommand);
	TodoReturn createWithTransformObjects(cocos2d::CCArray*, UndoCommand);
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

	static UploadActionPopup* create(UploadPopupDelegate*, gd::string) = win 0x209730;

	TodoReturn closePopup();
	bool init(UploadPopupDelegate*, gd::string) = win 0x209800;
	void onClose(cocos2d::CCObject* sender);
	void showFailMessage(gd::string) = win 0x209ce0;
	void showSuccessMessage(gd::string) = win 0x209be0;

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

	static UploadPopup* create(GJGameLevel*);

	bool init(GJGameLevel*);
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

	TodoReturn loadFromObject(CCURLObject*) = win 0x8c9d0;
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

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float, bool) = win 0x2b3990;
	void onAdvanced(cocos2d::CCObject* sender) = win 0x2b34c0;
	void onApply(cocos2d::CCObject* sender) = win 0x2b3790;
	void onClose(cocos2d::CCObject* sender);
	void onFullscreen(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onResolutionNext(cocos2d::CCObject* sender);
	void onResolutionPrev(cocos2d::CCObject* sender);
	void onTextureQualityNext(cocos2d::CCObject* sender);
	void onTextureQualityPrev(cocos2d::CCObject* sender);
	TodoReturn reloadMenu();
	TodoReturn toggleResolution();
	TodoReturn updateResolution(int) = win 0x2b35e0;
	TodoReturn updateTextureQuality(int) = win 0x2b3520;

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
