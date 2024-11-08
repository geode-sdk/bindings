// clang-format off

[[link(android)]]
class AccountHelpLayer : GJDropDownLayer, GJAccountDelegate, FLAlertLayerProtocol {
	// virtual ~AccountHelpLayer();

	static AccountHelpLayer* create() = win 0x26550;

	TodoReturn doUnlink();
	TodoReturn exitLayer();
	void onAccountManagement(cocos2d::CCObject* sender) = win 0x26b70;
	void onReLogin(cocos2d::CCObject* sender) = win 0x26b30;
	void onUnlink(cocos2d::CCObject* sender) = win 0x26bd0;
	void updatePage() = win 0x26e60;
	TodoReturn verifyUnlink();

	virtual void customSetup() = win 0x26720;
	virtual void layerHidden();
	virtual TodoReturn accountStatusChanged();
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class AccountLayer : GJDropDownLayer, GJAccountDelegate, GJAccountBackupDelegate, GJAccountSyncDelegate, FLAlertLayerProtocol {
	// virtual ~AccountLayer();
	// AccountLayer();

	static AccountLayer* create();

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn doBackup();
	TodoReturn doSync();
	TodoReturn exitLayer();
	TodoReturn hideLoadingUI();
	void onBackup(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onLogin(cocos2d::CCObject* sender);
	void onMore(cocos2d::CCObject* sender);
	void onRegister(cocos2d::CCObject* sender);
	void onSync(cocos2d::CCObject* sender);
	TodoReturn showLoadingUI();
	TodoReturn toggleUI(bool);
	TodoReturn updatePage();

	virtual void customSetup();
	virtual void layerHidden();
	virtual TodoReturn backupAccountFinished();
	virtual TodoReturn backupAccountFailed(BackupAccountError);
	virtual TodoReturn syncAccountFinished();
	virtual TodoReturn syncAccountFailed(BackupAccountError);
	virtual TodoReturn accountStatusChanged();
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class AccountLoginLayer : FLAlertLayer, TextInputDelegate, GJAccountLoginDelegate, FLAlertLayerProtocol {
	// virtual ~AccountLoginLayer();
	// AccountLoginLayer();

	static AccountLoginLayer* create(gd::string);

	TodoReturn createTextBackground(cocos2d::CCPoint, char const*, cocos2d::CCSize);
	TodoReturn createTextInput(cocos2d::CCPoint, cocos2d::CCSize, char const*, int);
	TodoReturn createTextLabel(cocos2d::CCPoint, char const*, cocos2d::CCSize);
	TodoReturn disableNodes();
	TodoReturn hideLoadingUI();
	bool init(gd::string);
	void onClose(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);
	TodoReturn resetLabel(int);
	TodoReturn resetLabels();
	TodoReturn showLoadingUI();
	TodoReturn toggleUI(bool);
	TodoReturn updateLabel(AccountError);

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void textInputOpened(CCTextInputNode*);
	virtual void textInputClosed(CCTextInputNode*);
	virtual void textChanged(CCTextInputNode*);
	virtual TodoReturn loginAccountFinished(int, int);
	virtual TodoReturn loginAccountFailed(AccountError);
}

[[link(android)]]
class AccountRegisterLayer : FLAlertLayer, TextInputDelegate, GJAccountRegisterDelegate, FLAlertLayerProtocol {
	// virtual ~AccountRegisterLayer();
	// AccountRegisterLayer();

	static AccountRegisterLayer* create();

	TodoReturn createTextBackground(cocos2d::CCPoint, cocos2d::CCSize);
	TodoReturn createTextInput(cocos2d::CCPoint, cocos2d::CCSize, gd::string, int);
	TodoReturn createTextLabel(cocos2d::CCPoint, gd::string, cocos2d::CCSize);
	TodoReturn disableNodes();
	void hideLoadingUI();
	void onClose(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);
	TodoReturn resetLabel(int);
	TodoReturn resetLabels();
	TodoReturn showLoadingUI();
	TodoReturn toggleUI(bool);
	TodoReturn updateLabel(AccountError);
	bool validEmail(gd::string);
	bool validPassword(gd::string);
	bool validUser(gd::string);

	virtual bool init();
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void textInputOpened(CCTextInputNode*);
	virtual void textInputClosed(CCTextInputNode*);
	virtual void textChanged(CCTextInputNode*);
	virtual void textInputShouldOffset(CCTextInputNode*, float);
	virtual void textInputReturn(CCTextInputNode*);
	virtual bool allowTextInput(CCTextInputNode*);
	virtual void registerAccountFinished() = win 0x22560;
	virtual void registerAccountFailed(AccountError);

	CCTextInputNode* m_usernameInput;
	CCTextInputNode* m_passwordInput;
	CCTextInputNode* m_confirmPasswordInput;
	CCTextInputNode* m_emailInput;
	CCTextInputNode* m_verifyEmailInput;
	cocos2d::CCLabelBMFont* m_usernameLabel;
	cocos2d::CCLabelBMFont* m_passwordLabel;
	cocos2d::CCLabelBMFont* m_confirmPasswordLabel;
	cocos2d::CCLabelBMFont* m_emailLabel;
	cocos2d::CCLabelBMFont* m_verifyEmailLabel;
	LoadingCircle* m_loadingCircle;
	bool m_bUnknown;
}

[[link(android)]]
class AchievementBar : cocos2d::CCNode {
	// virtual ~AchievementBar();

	static AchievementBar* create(char const*, char const*, char const*);

	bool init(char const*, char const*, char const*);
	TodoReturn show();

	virtual cocos2d::CCNode* getTargetScene() const;
	virtual void setTargetScene(cocos2d::CCNode*);
}

[[link(android)]]
class AchievementCell : TableViewCell {
	// virtual ~AchievementCell();
	AchievementCell(char const*, float, float);

	TodoReturn loadFromDict(cocos2d::CCDictionary*);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class AchievementManager : cocos2d::CCNode {
	// virtual ~AchievementManager();

	static AchievementManager* sharedState() = win 0x4e80;

	TodoReturn areAchievementsEarned(cocos2d::CCArray*);
	TodoReturn checkAchFromUnlock(char const*);
	void dataLoaded(DS_Dictionary*);
	void encodeDataTo(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn getAchievementsWithID(char const*);
	TodoReturn getAllAchievements();
	cocos2d::CCArray* getAllAchievementsSorted() = win 0x5010;
	bool isAchievementEarned(char const*);
	TodoReturn notifyAchievementWithID(char const*);
	TodoReturn percentageForCount(int, int);
	TodoReturn percentForAchievement(char const*);
	void reportAchievementWithID(char const*, int, bool);
	TodoReturn reportPlatformAchievementWithID(char const*, int);
	TodoReturn resetAchievement(char const*);
	TodoReturn resetAchievements();
	TodoReturn setup();

	virtual bool init() = win 0x4f00;
	virtual cocos2d::CCDictionary* getReportedAchievements() const;
	virtual void setReportedAchievements(cocos2d::CCDictionary*);
	virtual bool getDontNotifyAch() const;
	virtual void setDontNotifyAch(bool);

	cocos2d::CCArray* m_allAchievementsSorted;
	cocos2d::CCDictionary* m_allAchievements;
	void* m_pUnused;
	cocos2d::CCDictionary* m_reportedAchievements;
	bool m_dontNotify; // m_dontNotifyAch
}

[[link(android)]]
class AchievementNotifier : cocos2d::CCNode {
	// virtual ~AchievementNotifier();

	static AchievementNotifier* sharedState() = win 0x5bc0;

	TodoReturn achievementDisplayFinished();
	void notifyAchievement(char const*, char const*, char const*) = win 0x273d0;
	TodoReturn showNextAchievement();
	void willSwitchToScene(cocos2d::CCScene*) = win 0x5dd0;

	virtual bool init();
}

[[link(android)]]
class AchievementsLayer : GJDropDownLayer {
	// virtual ~AchievementsLayer();
	// AchievementsLayer();

	static AchievementsLayer* create();

	TodoReturn loadPage(int);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	TodoReturn setupPageInfo(int, int, int);

	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void customSetup();
}

[[link(android)]]
class AdToolbox {
	static void cacheInterstitial();
	static void disableBanner();
	static void enableBanner();
	static bool hasCachedInterstitial();
	static void setupAds();
	static void showInterstitial();
}

class AnimatedSpriteDelegate {
}

[[link(android)]]
class AppDelegate : cocos2d::CCApplication, cocos2d::CCSceneDelegate {
	// virtual ~AppDelegate();

	static AppDelegate* get() = win inline {
		return static_cast<AppDelegate*>(cocos2d::CCApplication::sharedApplication());
	}

	float bgScale() = win inline {
		auto ssfMax = cocos2d::CCDirector::sharedDirector()->getScreenScaleFactorMax();
		if (!this->m_enableFPSTricks && !GameManager::sharedState()->m_performanceMode) {
			return ssfMax;
		}

		return ssfMax * cocos2d::CCDirector::sharedDirector()->getContentScaleFactor();
	}
	TodoReturn checkSound();
	TodoReturn hideLoadingCircle();
	TodoReturn loadingIsFinished();
	TodoReturn musicTest();
	void pauseGame();
	void platformShutdown();
	TodoReturn resumeSound();
	void setIdleTimerDisabled(bool);
	void setupGLView() = win 0x28770;
	TodoReturn showLoadingCircle(bool, bool, bool);

	virtual bool applicationDidFinishLaunching() = win 0x289c0;
	virtual void applicationDidEnterBackground();
	virtual void applicationWillEnterForeground() = win 0x28f00;
	virtual void applicationWillBecomeActive() = win 0x28c70;
	virtual void applicationWillResignActive();
	virtual void trySaveGame() = win 0x293f0;
	virtual void willSwitchToScene(cocos2d::CCScene*) = win 0x294a0;
	virtual bool getPaused() const;
	virtual void setPaused(bool);
	virtual cocos2d::CCNode* getScenePointer() const;
	virtual void setScenePointer(cocos2d::CCNode*);
	virtual bool getLoadingFinished() const;
	virtual bool getManagersLoaded() const;
	virtual void setManagersLoaded(bool);
	virtual bool getIsIOS() const;
	virtual bool getIsLowMemoryDevice() const;
	virtual bool getEnableFPSTricks() const;

	bool m_isGLViewSetup;
	bool m_paused;
	cocos2d::CCNode* m_scenePointer;
	bool m_loadingFinished;
	bool m_managersLoaded;
	bool m_isIOS;
	bool m_isLowMemoryDevice;
	bool m_enableFPSTricks;
}

[[link(android)]]
class AudioEffectsLayer : cocos2d::CCLayerColor {
	// virtual ~AudioEffectsLayer();

	static AudioEffectsLayer* create(gd::string);

	void audioStep(float);
	TodoReturn getBGSquare();
	TodoReturn goingDown();
	bool init(gd::string);
	TodoReturn resetAudioVars();
	TodoReturn triggerEffect(float);

	virtual void draw();
	virtual void updateTweenAction(float, char const*);
	virtual TodoReturn getAudioScale() const;
	virtual bool getRainActive() const;
	virtual void setRainActive(bool);
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

	virtual cocos2d::CCNode* getTargetScene() const;
	virtual void setTargetScene(cocos2d::CCNode*);
}

[[link(android)]]
class BoomListLayer : cocos2d::CCLayerColor {
	// virtual ~BoomListLayer();

	static BoomListLayer* create(BoomListView*, char const*);

	bool init(BoomListView*, char const*);
}

[[link(android)]]
class BoomListView : cocos2d::CCLayer, TableViewDelegate, TableViewDataSource {
	// virtual ~BoomListView();

	static BoomListView* create(cocos2d::CCArray*, float, float, int, BoomListType);

	bool init(cocos2d::CCArray*, float, float, int, BoomListType) = win 0x6bf0;

	bool init(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
		return this->init(entries, height, width, 0, type);
	}

	virtual void draw();
	virtual void setupList();
	virtual void TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
	virtual float cellHeightForRowAtIndexPath(CCIndexPath&, TableView*);
	virtual void didSelectRowAtIndexPath(CCIndexPath&, TableView*);
	virtual int numberOfRowsInSection(unsigned int, TableView*);
	virtual unsigned int numberOfSectionsInTableView(TableView*);
	virtual TableViewCell* cellForRowAtIndexPath(CCIndexPath&, TableView*);
	virtual void TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&);
	virtual void TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
	virtual TableViewCell* getListCell(char const*);
	virtual void loadCell(TableViewCell*, int);

	TableView* m_tableView;
	cocos2d::CCArray* m_entries;
	BoomListType m_type;
	float m_height;
	float m_width;
	float m_itemSeparation;
	int m_currentPage;
}

[[link(android)]]
class BoomScrollLayer : cocos2d::CCLayer {
	// virtual ~BoomScrollLayer();
	// BoomScrollLayer();

	static BoomScrollLayer* create(cocos2d::CCArray*, int, bool, cocos2d::CCArray*, DynamicScrollDelegate*);
	static BoomScrollLayer* create(cocos2d::CCArray*, int, bool);

	void addPage(cocos2d::CCLayer* obj, int page) = win inline {
		if (page < static_cast<std::int32_t>(this->m_pages->count())) {
			page = this->m_pages->count();
		}
		this->m_pages->insertObject(obj, page);
		this->updatePages();
		this->moveToPage(this->m_currentScreen);
	}
	void addPage(cocos2d::CCLayer*);
	TodoReturn cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn claimTouch(cocos2d::CCTouch*);
	TodoReturn getMovingToPage();
	TodoReturn getPage(int);
	TodoReturn getRelativePageForNum(int);
	TodoReturn getRelativePosForPage(int);
	bool init(cocos2d::CCArray*, int, bool, cocos2d::CCArray*, DynamicScrollDelegate*) = win 0x79b0;
	void instantMoveToPage(int) = win 0x8430;
	void moveToPage(int) = win 0x8500;
	void moveToPageEnded() = win 0x82b0;
	TodoReturn pageNumberForPosition(cocos2d::CCPoint);
	TodoReturn positionForPageWithNumber(int);
	void quickUpdate() = win 0x82b0;
	TodoReturn removePage(cocos2d::CCLayer*);
	TodoReturn removePageWithNumber(int);
	TodoReturn repositionPagesLooped();
	TodoReturn selectPage(int);
	TodoReturn setupDynamicScrolling(cocos2d::CCArray*, DynamicScrollDelegate*);
	TodoReturn togglePageIndicators(bool);
	callback void updateDots(float) = win 0x8110;
	void updatePages() = win 0x7ff0;

	void setDotScale(float scale) = win inline {
		for (auto i = 0u; i < this->m_dotsArray->count(); i++) {
			static_cast<CCNode*>(this->m_dotsArray->objectAtIndex(i))->setScale(scale);
		}
	}

	void setPagesIndicatorPosition(cocos2d::CCPoint pos) = win inline {
		this->m_pagesIndicatorPosition = pos;
		this->updateDots(0.0f);
	}

	int getTotalPages() = win inline {
		return m_dynamic ? m_dynamicScrollPages->count() : m_pages->count();
	}

	virtual void visit();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x8d20;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x8e10;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x9050;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x8cf0;
	virtual void registerWithTouchDispatcher() = win 0x8b70;
	virtual ExtendedLayer* getInternalLayer();
	virtual cocos2d::CCRect getScrollArea() const;
	virtual void setScrollArea(cocos2d::CCRect);
	virtual float getMinTouchSpeed() const;
	virtual void setMinTouchSpeed(float);
	virtual float getTouchSpeedFast() const;
	virtual void setTouchSpeedFast(float);
	virtual float getTouchSpeedMid() const;
	virtual void setTouchSpeedMid(float);
	virtual BoomScrollLayerDelegate* getDelegate() const;
	virtual void setDelegate(BoomScrollLayerDelegate*);
	virtual float getMinimumTouchLengthToSlide() const;
	virtual void setMinimumTouchLengthToSlide(float);
	virtual float getMinimumTouchLengthToChangePage() const;
	virtual void setMinimumTouchLengthToChangePage(float);
	virtual float getMarginOffset() const;
	virtual void setMarginOffset(float);
	virtual bool getStealTouches() const;
	virtual void setStealTouches(bool);
	virtual bool getShowPagesIndicator() const;
	virtual void setShowPagesIndicator(bool);
	virtual cocos2d::ccColor4B getPagesIndicatorSelectedColor() const;
	virtual void setPagesIndicatorSelectedColor(cocos2d::ccColor4B);
	virtual cocos2d::ccColor4B getPagesIndicatorNormalColor() const;
	virtual void setPagesIndicatorNormalColor(cocos2d::ccColor4B);
	virtual int getCurrentScreen() const;
	virtual float getPagesWidthOffset() const;
	virtual void setPagesWidthOffset(float);
	virtual void* getpages() const;

	cocos2d::CCArray* m_dotsArray;
	int m_animatingToPage;
	float m_touchX;
	float m_animateSpeed;
	bool m_bUnknown1;
	DynamicScrollDelegate* m_dynamicScrollDelegate;
	cocos2d::CCArray* m_dynamicScrollPages;
	bool m_dynamic;
	int m_touchHasMoved;
	bool m_bUnknown3;
	cocos2d::CCTouch* m_currentTouch;
	cocos2d::CCArray* m_pages;
	double m_touchTimer;
	cocos2d::CCPoint m_pUnknown4;
	ExtendedLayer* m_mainLayer;
	cocos2d::CCRect m_scrollArea;
	float m_minTouchSpeed;
	float m_touchSpeedFast;
	float m_touchSpeedMid;
	BoomScrollLayerDelegate* m_delegate;
	bool m_movingToPage;
	float m_minimumTouchLengthToSlide;
	float m_minimumTouchLengthToChangePage;
	float m_marginOffset;
	bool m_stealTouches;
	bool m_showPagesIndicator;
	cocos2d::CCPoint m_pagesIndicatorPosition;
	cocos2d::ccColor4B m_pagesIndicatorSelectedColor;
	cocos2d::ccColor4B m_pagesIndicatorNormalColor;
	int m_currentScreen;
	float m_pagesWidthOffset;
	void* m_unusedPages;
	PAD = android32 0x4;
}

[[link(android)]]
class BoomScrollLayerDelegate {
	virtual void scrollLayerScrollingStarted(BoomScrollLayer*);
	virtual void scrollLayerScrolledToPage(BoomScrollLayer*, int);
	virtual void scrollLayerMoved(cocos2d::CCPoint);
}

[[link(android)]]
class ButtonPage : cocos2d::CCLayer {
	// virtual ~ButtonPage();

	static ButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint) = win 0x3b060;

	bool init(cocos2d::CCArray*, cocos2d::CCPoint) = win 0x3b150;
}

[[link(android)]]
class ButtonSprite : cocos2d::CCSprite {
	// virtual ~ButtonSprite();
	// ButtonSprite();

	static ButtonSprite* create(
		cocos2d::CCSprite* topSprite,
		int width,
		bool absolute,
		float height,
		const char* texture,
		float scale
	) {
		return create(topSprite, width, 0, height, scale, absolute, texture);
	}

	static ButtonSprite* create(const char* caption, int width, bool absolute, const char* font, const char* texture, float height, float scale) {
		return create(caption, width, 0, scale, absolute, font, texture, height);
	}

	static ButtonSprite* create(char const* caption, const char* font, const char* texture) {
		return ButtonSprite::create(caption, 0, 0, font, texture, .0f, 1.f);
	}

	static ButtonSprite* create(char const* caption, const char* font, const char* texture, float scale) {
		return ButtonSprite::create(caption, 0, 0, font, texture, .0f, scale);
	}

	static ButtonSprite* create(char const*, float);
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*, float) = win 0x9800;
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*);
	static ButtonSprite* create(char const* caption, int width, int unused, float scale, bool absolute) = win inline {
		return ButtonSprite::create(caption, width, unused, scale, absolute, "goldFont.fnt", "GJ_button_01.png", 0.0f);
	}

	static ButtonSprite* create(char const* caption) = win inline {
		return ButtonSprite::create(caption, 0, 0, "goldFont.fnt", "GJ_button_01.png", 0.0f, 1.0f);
	}

	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool, char const*) = win 0x9510;
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool);
	static ButtonSprite* create(cocos2d::CCSprite*);

	void setColor(cocos2d::ccColor3B color) = win inline {
		if (m_label) {
			m_label->setColor(color);
		}

		if (m_btnSprite) {
			m_btnSprite->setColor(color);
		}

		m_bgSprite->setColor(color);
	}

	bool init(char const*, int, int, float, bool, char const*, char const*, float);
	bool init(cocos2d::CCSprite*, int, int, float, float, bool, char const*);
	void setString(char const*) = win 0x9f80;
	void updateBGImage(char const*) = win 0x9b20;
	void updateSpriteBGSize();
	void updateSpriteOffset(cocos2d::CCPoint);

	virtual cocos2d::CCSprite* getBtnSprite() const;

	int m_mode;
	float m_width;
	float m_fUnknown1;
	float m_scale;
	float m_height;
	bool m_absolute;
	cocos2d::CCLabelBMFont* m_label;
	cocos2d::CCSprite* m_btnSprite;
	cocos2d::extension::CCScale9Sprite* m_bgSprite;
	cocos2d::CCPoint m_textOffset;
	cocos2d::CCPoint m_spritePosition;
	gd::string m_caption;
}

[[link(android)]]
class CCAlertCircle : cocos2d::CCNode {
	// virtual ~CCAlertCircle();

	static CCAlertCircle* create();

	virtual bool init();
	virtual void draw();

	virtual TodoReturn getCircle() const;
}

[[link(android)]]
class CCAnimatedSprite : cocos2d::CCSprite {
	// virtual ~CCAnimatedSprite();

	TodoReturn cleanupSprite();
	TodoReturn createWithType(char const*);
	TodoReturn initWithType(char const*);
	TodoReturn loadType(char const*);
	TodoReturn switchToMode(spriteMode);

	virtual void setOpacity(unsigned char);
	virtual TodoReturn animationFinished(char const*);
	virtual TodoReturn animationFinishedO(cocos2d::CCObject*);
	virtual TodoReturn getAnimManager() const;
	virtual cocos2d::CCSprite* getSprite() const;
	virtual void setSprite(cocos2d::CCSprite*);
	virtual cocos2d::CCSprite* getNormalSprite() const;
	virtual void setNormalSprite(cocos2d::CCSprite*);
	virtual CCPartAnimSprite* getAnimatedSprite() const;
	virtual void setAnimatedSprite(CCPartAnimSprite*);
	virtual TodoReturn getActiveSpriteMode() const;
	virtual gd::string getDefaultAnimation() const;
	virtual void setDefaultAnimation(gd::string);
	virtual AnimatedSpriteDelegate* getDelegate() const;
	virtual void setDelegate(AnimatedSpriteDelegate*);
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

	virtual bool init() = win 0xaab0;
	virtual void draw();
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
	virtual void layerHidden();
	virtual TodoReturn enterAnimFinished();
	virtual TodoReturn disableUI();
	virtual TodoReturn enableUI();
	virtual bool getRemoveOnExit() const;
	virtual void setRemoveOnExit(bool);

	bool m_removeOnExit;
	bool m_incrementedTouchPriority;
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

	static CCCircleWave* create(float, float, float, bool, bool) = win 0xaca0;
	static CCCircleWave* create(float, float, float, bool);

	TodoReturn baseSetup(float);
	void followObject(cocos2d::CCNode*, bool) = win 0xb2b0;
	bool init(float, float, float, bool, bool) = win 0xb070;
	TodoReturn updatePosition(float);

	virtual cocos2d::CCPoint const& getPosition();
	virtual void removeMeAndCleanup();
	virtual void draw();
	virtual void updateTweenAction(float, char const*);
	virtual float getWidth() const;
	virtual void setWidth(float);
	virtual float getRadius() const;
	virtual void setRadius(float);
	virtual float getOpacity() const;
	virtual void setOpacity(float);
	virtual cocos2d::ccColor3B getColor() const;
	virtual void setColor(cocos2d::ccColor3B);
	virtual cocos2d::CCPoint getPosition() const;
	virtual void setPosition(cocos2d::CCPoint);
	virtual CircleMode getCircleMode() const;
	virtual void setCircleMode(CircleMode);
	virtual int getLineWidth() const;
	virtual void setLineWidth(int);
	virtual float getOpacityMod() const;
	virtual void setOpacityMod(float);
	virtual bool getBlendAdditive() const;
	virtual void setBlendAdditive(bool);
	virtual CCCircleWaveDelegate* getDelegate() const;
	virtual void setDelegate(CCCircleWaveDelegate*);

	cocos2d::CCNode* m_target;
	float m_width;
	float m_radius;
	float m_opacity;
	cocos2d::ccColor3B m_color;
	cocos2d::CCPoint m_position;
	CircleMode m_circleMode;
	int m_lineWidth;
	float m_opacityMod;
	bool m_blendAdditive;
	CCCircleWaveDelegate* m_delegate;
}

[[link(android)]]
class CCCircleWaveDelegate {
	virtual void circleWaveWillBeRemoved(CCCircleWave*);
}

[[link(android)]]
class CCContentLayer : cocos2d::CCLayerColor {
	inline CCContentLayer() {}
	// virtual ~CCContentLayer();

	static CCContentLayer* create(cocos2d::ccColor4B const&, float, float);

	virtual void setPosition(cocos2d::CCPoint const&);
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

	static CCCounterLabel* create(char const*, char const*, int, FormatterType);

	TodoReturn calculateStepSize();
	TodoReturn disableCounter();
	TodoReturn enableCounter();
	TodoReturn fastUpdateCounter();
	TodoReturn getTargetCount();
	bool init(char const*, char const*, int, FormatterType);
	void setTargetCount(int);
	TodoReturn setupFormatter(FormatterType);
	TodoReturn updateCounter(float);
	TodoReturn updateString();

	virtual TodoReturn getCurrentCount() const;
}

[[link(android)]]
class CCExtenderNode {
	void setOpacity(unsigned int);
}

[[link(android)]]
class CCIndexPath : cocos2d::CCObject {
	CCIndexPath() {}
	// virtual ~CCIndexPath();

	CCIndexPath* CCIndexPathWithSectionRow(int, int);

	int m_iUnknown1;
	int m_iUnknown2;
}

[[link(android)]]
class CCLightFlash {
	// virtual ~CCLightFlash();

	static CCLightFlash* create();

	TodoReturn cleanupFlash();
	TodoReturn fadeAndRemove();
	TodoReturn getFlashP();
	TodoReturn getFlashZ();
	TodoReturn playEffect(cocos2d::CCPoint, cocos2d::ccColor3B, float, float, float, float, float, float, float, float, float, float, float, float, float, float, int, bool, bool, float);
	TodoReturn removeLights();
	TodoReturn showFlash();

	virtual bool init();
	virtual void setFlashP(cocos2d::CCNode*);
	virtual void setFlashZ(int);
}

[[link(android)]]
class CCLightStrip {
	// virtual ~CCLightStrip();

	static CCLightStrip* create(float, float, float, float, float);

	TodoReturn getColor();
	TodoReturn getHeight();
	TodoReturn getOpacity();
	TodoReturn getWidth();
	bool init(float, float, float, float, float);

	virtual void draw();
	virtual void updateTweenAction(float, char const*);
	virtual void setColor(cocos2d::ccColor3B);
	virtual void setOpacity(float);
	virtual void setWidth(float);
	virtual void setHeight(float);
}

[[link(android)]]
class CCMenuItemSpriteExtra : cocos2d::CCMenuItemSprite {
	// virtual ~CCMenuItemSpriteExtra();
	CCMenuItemSpriteExtra() {
		m_scaleMultiplier = 1.0f;
		m_baseScale = 0.0f;
		m_animationEnabled = false;
		m_colorEnabled = false;
		m_volume = 1.0f;
		m_clickSound = "";
	}

	static CCMenuItemSpriteExtra* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = win 0xd1e0;

	static CCMenuItemSpriteExtra* create(cocos2d::CCNode* sprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) {
		return CCMenuItemSpriteExtra::create(sprite, nullptr, target, callback);
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

	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	void setSizeMult(float) = win 0xd3b0;

	virtual void activate();
	virtual void selected();
	virtual void unselected();
	virtual float getScaleVar() const;
	virtual void setScaleVar(float);
	virtual float getOriginalScale() const;
	virtual void setOriginalScale(float);
	virtual bool getShouldAnimate() const;
	virtual void setShouldAnimate(bool);
	virtual bool getDarkenClick() const;
	virtual void setDarkenClick(bool);
	virtual float getVolume() const;
	virtual void setVolume(float);
	virtual gd::string getClickSound() const;
	virtual void setClickSound(gd::string);

	float m_scaleMultiplier; // m_scaleVar
	float m_baseScale; // m_originalScale
	bool m_animationEnabled; // m_shouldAnimate
	bool m_colorEnabled; // m_darkenClick
	float m_volume;
	gd::string m_clickSound;
}

[[link(android)]]
class CCMenuItemToggler : cocos2d::CCMenuItem {
	CCMenuItemToggler() {}
	// virtual ~CCMenuItemToggler();

	static CCMenuItemToggler* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = win 0xd720;

	static CCMenuItemToggler* createWithStandardSprites(cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback, float scale) {
		auto sprOff = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOff_001.png");
		auto sprOn = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOn_001.png");

		sprOff->setScale(scale);
		sprOn->setScale(scale);

		return create(sprOff, sprOn, target, callback);
	}

	bool init(cocos2d::CCNode* off, cocos2d::CCNode* on, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) = win inline {
		if (!CCMenuItem::initWithTarget(target, callback)) return false;

		m_offButton = CCMenuItemSpriteExtra::create(off, nullptr, this, menu_selector(CCMenuItemToggler::normalTouch));
		m_onButton = CCMenuItemSpriteExtra::create(on, nullptr, this, menu_selector(CCMenuItemToggler::selectedTouch));

		this->addChild(m_offButton);
		this->addChild(m_onButton);

		m_offButton->getNormalImage()->setAnchorPoint({0.5f, 0.5f});
		m_onButton->getNormalImage()->setAnchorPoint({0.5f, 0.5f});

		m_offButton->getNormalImage()
			->setPosition(m_offButton->convertToNodeSpace({0.0f, 0.0f}));
		m_onButton->getNormalImage()
			->setPosition(m_onButton->convertToNodeSpace({0.0f, 0.0f}));

		m_notClickable = false;
		this->toggle(false);

		return true;
	}

	CCMenuItemSpriteExtra* activeItem();
	void normalTouch(cocos2d::CCObject*) = win 0xda30;
	void selectedTouch(cocos2d::CCObject*) = win 0xda50;
	void setSizeMult(float mult) = win inline {
		this->m_offButton->setSizeMult(mult);
		this->m_onButton->setSizeMult(mult);
		this->toggle(this->m_toggled);
	}

	void toggle(bool) = win 0xda70;

	virtual void activate();
	virtual void selected();
	virtual void unselected();
	virtual void setEnabled(bool) = win 0xd9f0;
	virtual CCMenuItemSpriteExtra* getNormalButton() const;
	virtual CCMenuItemSpriteExtra* getSelectedButton() const;
	virtual bool getIsActive() const;
	virtual bool getDontToggle() const;
	virtual void setDontToggle(bool);

	void setClickable(bool on) {
		m_notClickable = !on;
	}

	CCMenuItemSpriteExtra* m_offButton; // m_normalButton
	CCMenuItemSpriteExtra* m_onButton; // m_selectedButton
	bool m_toggled; // m_isActive
	bool m_notClickable; // m_dontToggle
}

[[link(android)]]
class CCPartAnimSprite {
	// virtual ~CCPartAnimSprite();

	TodoReturn changeTextureOfID(char const*, char const*);
	TodoReturn countParts();
	TodoReturn createWithAnimDesc(char const*, cocos2d::CCTexture2D*);
	TodoReturn dirtify();
	TodoReturn getSpriteContainer();
	TodoReturn getSpriteForKey(char const*);
	TodoReturn initWithAnimDesc(char const*, cocos2d::CCTexture2D*);
	void setColor(cocos2d::ccColor3B);
	void setFlipX(bool);
	void setFlipY(bool);
	TodoReturn transformSprite(frameValues);

	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setScale(float);
	virtual void setBlendFunc(cocos2d::_ccBlendFunc);
	virtual void setDisplayFrame(cocos2d::CCSpriteFrame*);
	virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*);
	virtual cocos2d::CCSpriteFrame* displayFrame();
}

[[link(android)]]
class CCScrollLayerExt : cocos2d::CCLayer {
	// virtual ~CCScrollLayerExt();
	CCScrollLayerExt(cocos2d::CCRect) = win 0xdd70;

	void constraintContent();
	float getMaxY();
	float getMinY();
	void moveToTop() = win 0xe1f0;
	void moveToTopWithOffset(float) = win 0xe170;
	void scrollingEnd();
	void scrollLayer(float) = win 0xebe0;
	void setContentLayerSize(cocos2d::CCSize);
	void setContentOffset(cocos2d::CCPoint, bool);
	void updateIndicators(float);

	virtual void visit() = win 0xec90;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0xe720;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0xea80;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0xe820;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0xea60;
	virtual void registerWithTouchDispatcher() = win 0xe6f0;
	virtual void preVisitWithClippingRect(cocos2d::CCRect) = win 0xedc0;
	virtual void postVisit() = win 0xee50;
	virtual bool getIsTouch() const = win 0xdb40;
	virtual void setIsTouch(bool) = win 0xdb50;
	virtual bool getIsScrolling() const = win 0xdb60;
	virtual void setIsScrolling(bool) = win 0xdb70;
	virtual cocos2d::CCLayerColor* getVerticalScrollIndicator() const = win 0xdb80;
	virtual void setVerticalScrollIndicator(cocos2d::CCLayerColor*) = win 0xdb90;
	virtual cocos2d::CCLayerColor* getHorizontalScrollIndicator() const = win 0xdba0;
	virtual void setHorizontalScrollIndicator(cocos2d::CCLayerColor*) = win 0xdbb0;
	virtual CCScrollLayerExtDelegate* getScrollDelegate() const = win 0xdbc0;
	virtual void setScrollDelegate(CCScrollLayerExtDelegate*) = win 0xdbd0;
	virtual cocos2d::CCLayerColor* getContentLayer() const = win 0x69f0;
	virtual void setContentLayer(cocos2d::CCLayerColor*) = win 0x6a00;
	virtual bool getClipsToBounds() const = win 0xdbe0;
	virtual void setClipsToBounds(bool) = win 0xdbf0;
	virtual bool getShowsHorizontalScrollIndicator() const = win 0xdc00;
	virtual void setShowsHorizontalScrollIndicator(bool) = win 0xdc10;
	virtual bool getShowsVerticalScrollIndicator() const = win 0xdc20;
	virtual void setShowsVerticalScrollIndicator(bool) = win 0xdc30;
	virtual bool getLockHorizontal() const = win 0xdc40;
	virtual void setLockHorizontal(bool) = win 0xdc50;
	virtual bool getLockVertical() const = win 0xdc60;
	virtual void setLockVertical(bool) = win 0xdc70;
	virtual bool getTouchDispatch() const = win 0xdc80;
	virtual void setTouchDispatch(bool) = win 0xdc90;
	virtual float getTopPadding() const = win 0xdca0;
	virtual void setTopPadding(float) = win 0xdcb0;
	virtual float getBottomPadding() const = win 0xdcd0;
	virtual void setBottomPadding(float) = win 0xdce0;
	virtual float getMaxOffsetTop() const = win 0xdd00;
	virtual void setMaxOffsetTop(float) = win 0xdd10;
	virtual float getMaxOffsetBottom() const = win 0xdd30;
	virtual void setMaxOffsetBottom(float) = win 0xdd40;

	cocos2d::CCTouch* m_touch;
	cocos2d::CCPoint m_touchPosition;
	cocos2d::CCPoint m_touchStartPosition;
	cocos2d::cc_timeval m_timeValue;
	bool m_touchDown; // m_isTouch
	bool m_notAtEndOfScroll; // m_isScrolling
	cocos2d::CCLayerColor* m_verticalScrollbar; // m_verticalScrollIndicator
	cocos2d::CCLayerColor* m_horizontalScrollbar; // m_horizontalScrollIndicator
	CCScrollLayerExtDelegate* m_delegate; // m_scrollDelegate
	cocos2d::CCLayerColor* m_contentLayer; // m_contentLayer
	bool m_cutContent; // m_clipsToBounds
	bool m_hScrollbarVisible; // m_showsHorizontalScrollIndicator
	bool m_vScrollbarVisible; // m_showsVerticalScrollIndicator
	bool m_disableHorizontal; // m_lockHorizontal
	bool m_disableVertical; // m_lockVertical
	bool m_disableMovement; // m_touchDispatch
	float m_scrollLimitTop; // m_topPadding
	float m_scrollLimitBottom; // m_bottomPadding
	float m_peekLimitTop; // m_maxOffsetTop
	float m_peekLimitBottom; // m_maxOffsetBottom
}

[[link(android)]]
class CCScrollLayerExtDelegate {
	virtual void scrllViewWillBeginDecelerating(CCScrollLayerExt*);
	virtual void scrollViewDidEndDecelerating(CCScrollLayerExt*);
	virtual void scrollViewTouchMoving(CCScrollLayerExt*);
	virtual void scrollViewDidEndMoving(CCScrollLayerExt*);
	virtual void scrollViewTouchBegin(CCScrollLayerExt*);
	virtual void scrollViewTouchEnd(CCScrollLayerExt*);
}

[[link(android)]]
class CCSpritePart {
	// virtual ~CCSpritePart();

	static CCSpritePart* create(cocos2d::CCTexture2D*);

	TodoReturn createWithSpriteFrameName(char const*);
	TodoReturn getBeingUsed();
	TodoReturn getUseColorMode();
	TodoReturn hideInactive();
	TodoReturn resetTextureRect();
	void setBeingUsed(bool);
	TodoReturn updateAllColors(cocos2d::ccColor3B, cocos2d::ccColor3B, cocos2d::ccColor3B);
	TodoReturn updateColorFrames(char const*);
	TodoReturn updateDisplayFrame(char const*);
	TodoReturn useColorModeWithFrame(char const*);

	virtual void setUseColorMode(bool);
}

[[link(android)]]
class CCSpritePlus : cocos2d::CCSprite {
	// virtual ~CCSpritePlus();

	static CCSpritePlus* createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	static CCSpritePlus* createWithSpriteFrameName(char const*);

	void addFollower(cocos2d::CCNode*);
	void followSprite(CCSpritePlus*);
	void removeFollower(cocos2d::CCNode*);
	void stopFollow();

	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setScale(float);
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setRotation(float);
	virtual bool initWithSpriteFrameName(char const*);
	virtual void setFlipX(bool);
	virtual void setFlipY(bool);

	cocos2d::CCArray* m_followers;
	CCSpritePlus* m_followingSprite;
	bool m_hasFollower;
}

[[link(android)]]
class CCTextInputNode : cocos2d::CCLayer, cocos2d::CCIMEDelegate, cocos2d::CCTextFieldDelegate {
	// virtual ~CCTextInputNode();
	// CCTextInputNode();

	static CCTextInputNode* create(float, float, char const*, char const*, int, char const*) = win 0x13a90;

	static CCTextInputNode* create(float width, float height, char const* placeholder, char const* fontPath) {
		return CCTextInputNode::create(width, height, placeholder, 0x18, fontPath);
	}

	static CCTextInputNode* create(float width, float height, char const* placeholder, int fontSize, char const* fontPath) {
		return CCTextInputNode::create(width, height, placeholder, "Thonburi", fontSize, fontPath);
	}

	TodoReturn forceOffset();
	bool init(float, float, char const*, char const*, int, char const*) = win 0x13b50;
	void setLabelNormalColor(cocos2d::ccColor3B);
	gd::string getString() = win inline {
		return m_textField->getString();
	}

	void setAllowedChars(gd::string filter) = win inline {
		m_allowedChars = filter;
	}

	void setLabelPlaceholderColor(cocos2d::ccColor3B color) = win inline {
		m_placeholderColor = color;
		this->refreshLabel();
	}

	void setLabelPlaceholderScale(float scale) = win inline {
		m_placeholderScale = scale;
		this->refreshLabel();
	}

	void setMaxLabelScale(float scale) = win inline {
		m_maxLabelScale = scale;
		this->refreshLabel();
	}

	void setMaxLabelWidth(float width) = win inline {
		m_maxLabelWidth = width;
		this->refreshLabel();
	}

	void setString(gd::string) = win 0x13d70;
	void refreshLabel() = win 0x14030;
	TodoReturn updateBlinkLabel();
	TodoReturn updateLabel(gd::string);

	virtual void visit();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x14c00;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void textChanged();
	virtual void onClickTrackNode(bool) = win 0x143b0;
	virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
	virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
	virtual bool onTextFieldInsertText(cocos2d::CCTextFieldTTF*, char const*, int);
	virtual bool onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF*);
	virtual bool onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF*);
	virtual cocos2d::CCTextFieldTTF* getTextField() const;
	virtual TextInputDelegate* getDelegate() const;
	virtual void setDelegate(TextInputDelegate*);
	virtual int getCharLimit() const;
	virtual void setCharLimit(int);
	virtual cocos2d::CCLabelBMFont* getLabel() const;
	virtual bool getProfanityFilter() const;
	virtual void setProfanityFilter(bool);
	virtual bool getIsPassword() const;
	virtual void setIsPassword(bool);

	gd::string m_caption;
	int m_unknown1;
	bool m_selected;
	bool m_keyboardPresent;
	gd::string m_allowedChars;
	float m_maxLabelWidth;
	float m_maxLabelScale;
	float m_placeholderScale; // m_labelPlaceholderScale
	cocos2d::ccColor3B m_placeholderColor; // m_labelPlaceholderColor
	cocos2d::ccColor3B m_textColor; // m_labelNormalColor
	cocos2d::CCLabelBMFont* m_cursor;
	cocos2d::CCTextFieldTTF* m_textField;
	TextInputDelegate* m_delegate;
	int m_maxLabelLength; // m_charLimit
	cocos2d::CCLabelBMFont* m_placeholderLabel;
	bool m_filterSwearWords; // m_profanityFilter
	bool m_usePasswordChar; // m_isPassword
	bool m_forceOffset;
}

[[link(android)]]
class CheckpointObject : cocos2d::CCNode {
	// virtual ~CheckpointObject();
	// CheckpointObject();

	static CheckpointObject* create() = win 0xf4150;

	ColorAction* getColorAction(ColorAction*, cocos2d::ccColor3B) = win 0xf41f0;
	GameObject* getObject();
	void setObject(GameObject*);

	virtual bool init();
	virtual PlayerCheckpoint* getPlayerCheck01() const;
	virtual void setPlayerCheck01(PlayerCheckpoint*);
	virtual PlayerCheckpoint* getPlayerCheck02() const;
	virtual void setPlayerCheck02(PlayerCheckpoint*);
	virtual bool getDualMode() const;
	virtual void setDualMode(bool);
	virtual bool getIsFlipped() const;
	virtual void setIsFlipped(bool);
	virtual cocos2d::CCPoint getCameraPos() const;
	virtual void setCameraPos(cocos2d::CCPoint);
	virtual ColorAction* getBgColorAction() const;
	virtual void setBgColorAction(ColorAction*);
	virtual ColorAction* getLineColorAction() const;
	virtual void setLineColorAction(ColorAction*);
	virtual ColorAction* getObjColorAction() const;
	virtual void setObjColorAction(ColorAction*);
	virtual ColorAction* getGColorAction() const;
	virtual void setGColorAction(ColorAction*);
	virtual ColorAction* getDLineColorAction() const;
	virtual void setDLineColorAction(ColorAction*);
	virtual ColorAction* getCustomColor01Action() const;
	virtual void setCustomColor01Action(ColorAction*);
	virtual ColorAction* getCustomColor02Action() const;
	virtual void setCustomColor02Action(ColorAction*);
	virtual ColorAction* getCustomColor03Action() const;
	virtual void setCustomColor03Action(ColorAction*);
	virtual ColorAction* getCustomColor04Action() const;
	virtual void setCustomColor04Action(ColorAction*);
	virtual EnterEffect getActiveEnterEffect() const;
	virtual void setActiveEnterEffect(EnterEffect);
	virtual GameObject* getPortalObject() const;
	virtual void setPortalObject(GameObject*);
	virtual double getTimeStamp() const;
	virtual void setTimeStamp(double);

	GameObject* m_object;
	PlayerCheckpoint* m_playerCheck01;
	PlayerCheckpoint* m_playerCheck02;
	bool m_dualMode;
	bool m_isFlipped;
	cocos2d::CCPoint m_cameraPos;
	ColorAction* m_bgColorAction;
	ColorAction* m_lineColorAction;
	ColorAction* m_objColorAction;
	ColorAction* m_gColorAction;
	ColorAction* m_dLineColorAction;
	ColorAction* m_customColor01Action;
	ColorAction* m_customColor02Action;
	ColorAction* m_customColor03Action;
	ColorAction* m_customColor04Action;
	EnterEffect m_activeEnterEffect;
	GameObject* m_portalObject;
	double m_timeStamp;
}

[[link(android)]]
class ColorAction : cocos2d::CCNode {
	// virtual ~ColorAction();

	static ColorAction* create(cocos2d::ccColor3B, cocos2d::ccColor3B, float, double, bool);

	bool init(cocos2d::ccColor3B, cocos2d::ccColor3B, float, double, bool);

	virtual cocos2d::ccColor3B getFromColor() const;
	virtual void setFromColor(cocos2d::ccColor3B);
	virtual cocos2d::ccColor3B getToColor() const;
	virtual void setToColor(cocos2d::ccColor3B);
	virtual float getDuration() const;
	virtual void setDuration(float);
	virtual double getTimeStamp() const;
	virtual void setTimeStamp(double);
	virtual bool getBlend() const;
	virtual void setBlend(bool);

	cocos2d::ccColor3B m_fromColor;
	cocos2d::ccColor3B m_toColor;
	float m_duration;
	double m_timeStamp;
	bool m_blend;
}

[[link(android)]]
class ColoredSection {
	// virtual ~ColoredSection();

	static ColoredSection* create(cocos2d::ccColor3B, int, int);

	TodoReturn getCol();
	TodoReturn getEndPos();
	TodoReturn getStartPos();
	bool init(cocos2d::ccColor3B, int, int);

	virtual void setCol(cocos2d::ccColor3B);
	virtual void setStartPos(int);
	virtual void setEndPos(int);
}

[[link(android)]]
class ColorSelectDelegate {
	virtual TodoReturn colorSelectClosed(ColorSelectPopup*);
}

[[link(android)]]
class ColorSelectPopup : FLAlertLayer, cocos2d::extension::ColorPickerDelegate {
	// virtual ~ColorSelectPopup();
	ColorSelectPopup() {}

	static ColorSelectPopup* create(GameObject*, int, int, int) = win 0x29cf0;
	static ColorSelectPopup* create(GameObject*);
	static ColorSelectPopup* create(int, int, int);

	void closeColorSelect(cocos2d::CCObject*) = win 0x2aec0;
	void createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = win 0x2a8d0;
	cocos2d::ccColor3B getColorValue() = win inline {
		return this->m_colorPicker->getColorValue();
	}
	bool init(GameObject*, int, int, int) = win 0x29db0;
	void onCopy(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onPlayerColor1(cocos2d::CCObject* sender);
	void onPlayerColor2(cocos2d::CCObject* sender);
	void onTintGround(cocos2d::CCObject* sender);
	void onToggleTintMode(cocos2d::CCObject* sender);
	void onTouchTriggered(cocos2d::CCObject* sender);
	void selectColor(cocos2d::ccColor3B color) = win inline {
		this->m_colorPicker->setColorValue(color);
	}
	void sliderChanged(cocos2d::CCObject*) = win 0x2ae00;
	void updateDurLabel();

	virtual void keyBackClicked();
	virtual void show();
	virtual void colorValueChanged(cocos2d::ccColor3B) = win 0x2af60;
	virtual ColorSelectDelegate* getDelegate() const;
	virtual void setDelegate(ColorSelectDelegate*);
	virtual float getDuration() const;
	virtual int getCustom() const;
	virtual int getCustom2() const;

	cocos2d::extension::CCControlColourPicker* m_colorPicker;
	bool m_bUnknown1;
	cocos2d::CCLabelBMFont* m_durationLabel;
	Slider* m_durationSlider;
	GameObject* m_targetObject;
	CCMenuItemToggler* m_playerColorToggle;
	CCMenuItemToggler* m_playerColor2Toggle;
	cocos2d::ccColor3B m_loadedColor;
	cocos2d::CCSprite* m_colorOldRef;
	cocos2d::CCSprite* m_colorNewRef;
	ColorSelectDelegate* m_delegate;
	float m_duration;
	int m_playerColorStatus; // m_custom
	int m_blendingStatus; // m_custom2
}

[[link(android)]]
class CommentCell : TableViewCell, LikeItemDelegate, FLAlertLayerProtocol {
	// virtual ~CommentCell();
	CommentCell(char const*, float, float);

	TodoReturn incrementDislikes();
	TodoReturn incrementLikes();
	void loadFromComment(GJComment*) = win 0x342e0;
	void onConfirmDelete(cocos2d::CCObject* sender);
	void onConfirmMore(cocos2d::CCObject* sender);
	TodoReturn onDelete();
	void onLike(cocos2d::CCObject* sender);
	TodoReturn onMore();
	void onUnhide(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);
	TodoReturn updateLabelValues();

	virtual bool init();
	virtual void draw();
	virtual void likedItem(LikeItemType, int, bool);
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class CommentUploadDelegate {
	virtual void commentUploadFinished(int) {}
	virtual void commentUploadFailed(int) {}
}

[[link(android)]]
class CreateGuidelinesLayer {
	// virtual ~CreateGuidelinesLayer();
	// CreateGuidelinesLayer();

	static CreateGuidelinesLayer* create(LevelSettingsObject*);

	TodoReturn doClearGuidelines();
	TodoReturn getMergedRecordString(gd::string, gd::string);
	bool init(LevelSettingsObject*);
	void onClearGuidelines(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onRecord(cocos2d::CCObject* sender);
	void onStop(cocos2d::CCObject* sender);
	TodoReturn toggleItems(bool);

	virtual void update(float);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class CreateMenuItem : CCMenuItemSpriteExtra {
	// virtual ~CreateMenuItem();

	static CreateMenuItem* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	TodoReturn getObjectFrame();
	TodoReturn getObjectKey();
	TodoReturn getPage();
	TodoReturn getTab();
	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	virtual void setObjectFrame(gd::string);
	virtual void setObjectKey(int);
	virtual void setPage(int);
	virtual void setTab(int);
}

[[link(android)]]
class CreatorLayer : cocos2d::CCLayer {
	// virtual ~CreatorLayer();

	static CreatorLayer* create() = win 0x2cdb0;
	static cocos2d::CCScene* scene();

	void onBack(cocos2d::CCObject* sender) = win 0x2d970;
	void onFeaturedLevels(cocos2d::CCObject* sender) = win 0x2d710;
	void onLeaderboards(cocos2d::CCObject* sender) = win 0x2d630;
	void onMapPacks(cocos2d::CCObject* sender) = win 0x2d870;
	void onMyLevels(cocos2d::CCObject* sender) = win 0x2d550;
	void onOnlineLevels(cocos2d::CCObject* sender) = win 0x2d810;
	void onSavedLevels(cocos2d::CCObject* sender) = win 0x2d5c0;

	virtual bool init() = win 0x2cea0;
	virtual void keyBackClicked();
}

[[link(android)]]
class CustomizeObjectLayer : FLAlertLayer {
	// virtual ~CustomizeObjectLayer();
	// CustomizeObjectLayer() = win 0x2da40;

	static CustomizeObjectLayer* create(GameObject*, cocos2d::CCArray*) = win 0x2dbc0;

	void highlightSelected(ButtonSprite*) = win 0x2e730;
	bool init(GameObject*, cocos2d::CCArray*) = win 0x2dc70;
	void onClose(cocos2d::CCObject* sender) = win 0x2cb70;
	void onSelectColor(cocos2d::CCObject* sender) = win 0x2e600;

	virtual void keyBackClicked();
}

[[link(android)]]
class CustomListView : BoomListView {
	// virtual ~CustomListView();
	CustomListView() = win 0x2e890;

	static CustomListView* create(cocos2d::CCArray*, float, float, int, BoomListType) = win 0x2e970;

	virtual void setupList() = win 0x2ef30;
	virtual TableViewCell* getListCell(char const*) = win 0x2ea30;
	virtual void loadCell(TableViewCell*, int) = win 0x2ed70;
}

[[link(android)]]
class CustomSongCell {
	// virtual ~CustomSongCell();
	CustomSongCell(char const*, float, float);

	void loadFromObject(SongInfoObject*) = win 0x33e00;
	void onDelete(cocos2d::CCObject* sender) = win 0x33fd0;
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class CustomSongLayer : FLAlertLayer, FLAlertLayerProtocol, TextInputDelegate, GJDropDownLayerDelegate {
	// virtual ~CustomSongLayer();
	// CustomSongLayer();

	static CustomSongLayer* create(LevelSettingsObject*);

	bool init(LevelSettingsObject*) = win 0x36540;
	void onClose(cocos2d::CCObject* sender);
	void onCreateLines(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onNewgrounds(cocos2d::CCObject* sender) = win 0x377b0;
	void onOptions(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);
	void onSongBrowser(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
	virtual void show();
	virtual void textChanged(CCTextInputNode*);
	virtual void textInputOpened(CCTextInputNode*);
	virtual void textInputClosed(CCTextInputNode*);
	virtual void textInputShouldOffset(CCTextInputNode*, float);
	virtual void textInputReturn(CCTextInputNode*);
	virtual TodoReturn dropDownLayerWillClose(GJDropDownLayer*);
	virtual CustomSongLayerDelegate* getDelegate() const;
	virtual void setDelegate(CustomSongLayerDelegate*);

	LevelSettingsObject* m_levelSettings;
	CCTextInputNode* m_songIDInput;
	CustomSongWidget* m_songWidget;
	CustomSongLayerDelegate* m_delegate;
}

[[link(android)]]
class CustomSongLayerDelegate {
	virtual TodoReturn customSongLayerClosed();
}

[[link(android)]]
class CustomSongWidget : cocos2d::CCNode, MusicDownloadDelegate, FLAlertLayerProtocol {
	// virtual ~CustomSongWidget();
	// CustomSongWidget() = win 0x388e0;

	static CustomSongWidget* create(SongInfoObject*, LevelSettingsObject*, bool, bool, bool, bool, bool) = win 0x38b10;

	TodoReturn downloadFailed();
	TodoReturn getSongInfoIfUnloaded();
	bool init(SongInfoObject*, LevelSettingsObject*, bool, bool, bool, bool, bool) = win 0x38bd0;
	void onCancelDownload(cocos2d::CCObject* sender);
	void onDownload(cocos2d::CCObject* sender) = win 0x39a80;
	void onGetSongInfo(cocos2d::CCObject* sender) = win 0x399d0;
	void onMore(cocos2d::CCObject* sender);
	void onPlayback(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);
	TodoReturn startDownload();
	TodoReturn startMonitorDownload();
	TodoReturn toggleUpdateButton(bool);
	TodoReturn updateDownloadProgress(float);
	void updateError(GJSongError) = win 0x3a910;
	void updatePlaybackBtn() = win 0x39ed0;
	void updateProgressBar(int);
	void updateSongInfo() = win 0x3a150;
	void updateSongObject(SongInfoObject*);
	TodoReturn verifySongID(int);

	virtual TodoReturn loadSongInfoFinished(SongInfoObject*);
	virtual TodoReturn loadSongInfoFailed(int, GJSongError);
	virtual TodoReturn downloadSongFinished(SongInfoObject*);
	virtual TodoReturn downloadSongFailed(int, GJSongError);
	virtual void songStateChanged() = win 0x3a130;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
	virtual SongInfoObject* getSongObject() const;
	virtual void setSongObject(SongInfoObject*);
	virtual bool getReportSongSelect() const;
	virtual void setReportSongSelect(bool);

	SongInfoObject*	m_songObject;
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
	cocos2d::CCSprite* m_sliderGroove;
	cocos2d::CCSprite* m_sliderBar;
	LevelSettingsObject* m_levelSettings;
	bool m_showSelectSongBtn;
	bool m_showPlayMusicBtn;
	bool m_showDownloadBtn;
	bool m_isNotDownloading;
	bool m_isRobtopSong;
	int m_songID;
	bool m_reportSongSelect;
}

[[link(android)]]
class DrawGridLayer {
	// virtual ~DrawGridLayer();

	static DrawGridLayer* create(cocos2d::CCNode*, LevelEditorLayer*) = win 0x92db0;

	void addPlayer2Point(cocos2d::CCPoint, bool) = win 0x92fa0;
	void addPlayerPoint(cocos2d::CCPoint) = win 0x94770;
	TodoReturn addToEffects(GameObject*);
	TodoReturn addToGuides(GameObject*);
	TodoReturn addToSpeedObjects(GameObject*);
	TodoReturn clearPlayerPoints();
	TodoReturn getActiveGridNodeSize();
	TodoReturn getPortalMinMax(GameObject*);
	TodoReturn getTimeNeedsUpdate();
	bool init(cocos2d::CCNode*, LevelEditorLayer*) = win 0x92e60;
	TodoReturn loadTimeMarkers(gd::string);
	TodoReturn removeFromEffects(GameObject*);
	TodoReturn removeFromGuides(GameObject*);
	TodoReturn removeFromSpeedObjects(GameObject*);
	TodoReturn sortSpeedObjects();
	float timeForXPos(float);
	TodoReturn updateTimeMarkers();
	float xPosForTime(float);

	virtual void update(float);
	virtual void draw() = win 0x93710;
	virtual void setActiveGridNodeSize(float);
}

[[link(android)]]
class DynamicScrollDelegate {
	virtual void updatePageWithObject(cocos2d::CCObject*, cocos2d::CCObject*) {}
}

[[link(android)]]
class EditButtonBar : cocos2d::CCNode {
	// virtual ~EditButtonBar();

	static EditButtonBar* create(cocos2d::CCArray*, cocos2d::CCPoint, int, bool) = win 0x3aa80;

	TodoReturn getPage();
	TodoReturn goToPage(int);
	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, bool) = win 0x3ab60;
	void onLeft(cocos2d::CCObject* sender) = win 0x3aff0;
	void onRight(cocos2d::CCObject* sender) = win 0x3af80;

	BoomScrollLayer* m_scrollLayer;
	cocos2d::CCArray* m_pagesArray;
}

[[link(android)]]
class EditLevelLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol {
	// virtual ~EditLevelLayer();

	static EditLevelLayer* create(GJGameLevel*) = win 0x3b500;
	static cocos2d::CCScene* scene(GJGameLevel*) = win 0x3b4c0;

	TodoReturn closeTextInputs();
	TodoReturn confirmClone(cocos2d::CCObject*);
	TodoReturn confirmDelete(cocos2d::CCObject*);
	bool init(GJGameLevel*) = win 0x3b5a0;
	void onBack(cocos2d::CCObject* sender);
	void onClone() = win 0x3da30;
	TodoReturn onDelete();
	void onEdit(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender) = win 0x3d910;
	void onLevelInfo(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender) = win 0x3d620;
	void onTest(cocos2d::CCObject* sender);
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn setupLevelInfo();
	TodoReturn updateDescText(char const*);
	TodoReturn verifyLevelName();

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void textInputOpened(CCTextInputNode*);
	virtual void textInputClosed(CCTextInputNode*);
	virtual void textChanged(CCTextInputNode*);

	cocos2d::CCMenu* m_buttonMenu;
	GJGameLevel* m_level;
	TextArea* m_descriptionInput;
	cocos2d::CCArray* m_textInputs;
	bool m_isLoadingLevel;
	GJLevelType m_levelType;
	gd::string m_levelName;
}

[[link(android)]]
class EditorPauseLayer : CCBlockLayer, FLAlertLayerProtocol {
	// virtual ~EditorPauseLayer();
	// EditorPauseLayer();

	static EditorPauseLayer* create(LevelEditorLayer*);

	bool init(LevelEditorLayer*) = win 0x3e2e0;
	void onExitEditor(cocos2d::CCObject* sender) = win 0x3f380;
	void onExitNoSave(cocos2d::CCObject* sender) = win 0x3f420;
	void onHelp(cocos2d::CCObject* sender);
	void onKeybindings(cocos2d::CCObject* sender);
	void onResume(cocos2d::CCObject* sender) = win 0x3eea0;
	void onSaveAndExit(cocos2d::CCObject* sender) = win 0x3f340;
	void onSaveAndPlay(cocos2d::CCObject* sender) = win 0x3f170;
	void onSaveAndTest(cocos2d::CCObject* sender);
	void onSong(cocos2d::CCObject* sender) = win 0x3ecc0;
	TodoReturn playStep2();
	TodoReturn playStep3();
	void saveLevel() = win 0x3eec0;
	TodoReturn toggleFollowPlayer(cocos2d::CCObject*);
	TodoReturn toggleIgnoreDamage(cocos2d::CCObject*);
	TodoReturn togglePlaytestMusic(cocos2d::CCObject*);
	void uncheckAllPortals(cocos2d::CCObject*) = win 0x3ea30;
	TodoReturn updateSongButton();

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x3f570;
	virtual void customSetup() = win 0x3e3d0;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class EditorUI : cocos2d::CCLayer, FLAlertLayerProtocol, ColorSelectDelegate, GJRotationControlDelegate, MusicDownloadDelegate {
	// virtual ~EditorUI();
	// EditorUI();

	static EditorUI* create(LevelEditorLayer*) = win 0x3fd20;

	void activateRotationControl(cocos2d::CCObject*) = win 0x4cdd0;
	TodoReturn applyOffset(GameObject*);
	TodoReturn applySpecialOffset(cocos2d::CCPoint, GameObject*, cocos2d::CCPoint);
	TodoReturn changeSelectedObjects(cocos2d::CCArray*);
	TodoReturn clickOnPosition(cocos2d::CCPoint);
	TodoReturn colorSelectClosed(cocos2d::ccColor3B);
	void constrainGameLayerPosition() = win 0x4c8c0;
	TodoReturn constrainGameLayerPosition(float, float);
	void copyObjects(cocos2d::CCArray*) = win 0x48fc0;
	void createMoveMenu() = win 0x49d20;
	void createUndoSelectObject(bool) = win 0x48240;
	TodoReturn deactivateRotationControl();
	TodoReturn deleteObject(GameObject*, bool);
	void deselectAll() = win 0x48380;
	void deselectObject() = win 0x75780;
	TodoReturn deselectObject(GameObject*);
	TodoReturn disableButton(CCMenuItemSpriteExtra*);
	void editButtonUsable() = win 0x49680;
	TodoReturn editGroup(cocos2d::CCObject*);
	void editObject(cocos2d::CCObject*) = win 0x4ae20;
	TodoReturn enableButton(CCMenuItemSpriteExtra*);
	TodoReturn findSnapObject(cocos2d::CCArray*, float);
	TodoReturn findSnapObject(cocos2d::CCPoint, float);
	void flipObjectsX(cocos2d::CCArray*) = win 0x4bab0;
	void flipObjectsY(cocos2d::CCArray*) = win 0x4bea0;
	TodoReturn getButton(char const*, int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);
	CreateMenuItem* getCreateBtn(int, int, bool) = win 0x47200;
	CreateMenuItem* getCreateBtn(int id, int bg) = win inline {
		return this->getCreateBtn(id, bg, false);
	}

	TodoReturn getCycledObject(cocos2d::CCArray*, bool);
	void getGridSnappedPos(cocos2d::CCPoint) = win 0x4d370;
	void getGroupCenter(cocos2d::CCArray*) = win 0x4cc00;
	TodoReturn getLimitedPosition(cocos2d::CCPoint);
	TodoReturn getModeBtn(char const*, int);
	TodoReturn getRelativeOffset(GameObject*);
	cocos2d::CCArray* getSelectedObjects();
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);
	TodoReturn getSpriteButton(cocos2d::CCSprite*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	void getTouchPoint(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x4d450;
	TodoReturn getXMin(int);
	bool init(LevelEditorLayer*) = win 0x3fdc0;
	bool isSpecialSnapObject(int);
	cocos2d::CCPoint* moveForCommand(EditCommand) = win 0x4b040;
	TodoReturn moveGamelayer(cocos2d::CCPoint);
	void moveObject(GameObject*, cocos2d::CCPoint) = win 0x4b410;
	void moveObjectCall(cocos2d::CCObject*) = win 0x4b2a0;
	void moveObjectCall(EditCommand) = win 0x4b2c0;
	void offsetForKey(int) = win 0x4efe0;
	void onCopy(cocos2d::CCObject* sender) = win 0x490c0;
	void onCreate() = win 0x47690;
	void onCreateButton(cocos2d::CCObject* sender) = win 0x47400;
	void onCreateObject(int) = win 0x47730;
	void onDelete(cocos2d::CCObject* sender);
	void onDeleteAll(cocos2d::CCObject* sender) = win 0x48340;
	void onDeleteInfo(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender) = win 0x42bc0;
	void onDeleteSelectedType(cocos2d::CCObject* sender);
	void onDeleteStartPos(cocos2d::CCObject* sender);
	void onDeselectAll(cocos2d::CCObject* sender);
	void onDuplicate(cocos2d::CCObject* sender) = win 0x48e70;
	void onGroupDown(cocos2d::CCObject* sender) = win 0x4afc0;
	void onGroupUp(cocos2d::CCObject* sender) = win 0x4af50;
	void onPaste(cocos2d::CCObject* sender) = win 0x491a0;
	void onPause(cocos2d::CCObject* sender) = win 0x411f0;
	void onPlayback(cocos2d::CCObject* sender) = win 0x48610;
	void onPlaytest(cocos2d::CCObject* sender) = win 0x489c0;
	void onSelectBuildTab(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender) = win 0x41190;
	void onStopPlaytest(cocos2d::CCObject* sender);
	void onToggleGuide(cocos2d::CCObject* sender);
	void onUpdateDeleteFilter(cocos2d::CCObject* sender) = win 0x42f20;
	cocos2d::CCArray* pasteObjects(gd::string) = win 0x492a0;
	TodoReturn playerTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn playerTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn playtestStopped();
	TodoReturn positionWithoutOffset(GameObject*);
	void redoLastAction(cocos2d::CCObject*) = win 0x48580;
	TodoReturn removeOffset(GameObject*);
	TodoReturn repositionObjectsToCenter(cocos2d::CCArray*, cocos2d::CCPoint);
	void resetUI() = win 0x41ed0;
	void rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint) = win 0x4c280;
	TodoReturn rotationforCommand(EditCommand);
	TodoReturn selectBuildTab(int);
	void selectObject(GameObject*) = win 0x47f10;
	TodoReturn selectObjects(cocos2d::CCArray*);
	TodoReturn selectObjectsInRect(cocos2d::CCRect);
	void setupCreateMenu() = win 0x43590;
	void setupDeleteMenu() = win 0x42080;
	TodoReturn setupEditMenu();
	TodoReturn shouldDeleteObject(GameObject*);
	bool shouldSnap(GameObject*) = win 0x4fb10;
	TodoReturn showDeleteConfirmation();
	TodoReturn showMaxError();
	void sliderChanged(cocos2d::CCObject*) = win 0x41850;
	TodoReturn toggleDuplicateButton();
	TodoReturn toggleEditObjectButton();
	void toggleEnableRotate(cocos2d::CCObject*) = win 0x47dc0;
	void toggleFreeMove(cocos2d::CCObject*) = win 0x47bb0;
	TodoReturn toggleGuideButton();
	void toggleMode(cocos2d::CCObject*) = win 0x41fe0;
	void toggleSnap(cocos2d::CCObject*) = win 0x47c90;
	void toggleSpecialEditButtons() = win 0x499e0;
	void toggleSwipe(cocos2d::CCObject*) = win 0x47ad0;
	TodoReturn transformObject(GameObject*, EditCommand, bool);
	void transformObjectCall(cocos2d::CCObject*) = win 0x4b580;
	void transformObjectCall(EditCommand) = win 0x4b5a0;
	TodoReturn tryDeleteObject(GameObject*, bool);
	void tryUpdateTimeMarkers() = win 0x932e0;
	void undoLastAction(cocos2d::CCObject*) = win 0x48500;
	void updateButtons() = win 0x41450;
	void updateCreateMenu(bool) = win 0x47440;
	TodoReturn updateDeleteButtons();
	void updateDeleteMenu() = win 0x42fa0;
	TodoReturn updateEditMenu();
	TodoReturn updateGridNodeSize();
	void updateGridNodeSize(int) = win 0x41ae0;
	TodoReturn updateGroupIDLabel();
	TodoReturn updatePercentLabel();
	void updatePlaybackBtn() = win 0x487c0;
	TodoReturn updateSlider();
	void updateZoom(float) = win 0x48c30;
	TodoReturn valueFromXPos(float);
	TodoReturn xPosFromValue(float);
	TodoReturn zoomGameLayer(bool);
	void zoomIn(cocos2d::CCObject*) = win 0x48b70;
	void zoomOut(cocos2d::CCObject*) = win 0x48bd0;

	virtual void draw();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x4da20;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x4e550;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void songStateChanged();
	virtual void keyUp(cocos2d::enumKeyCodes) = win 0x4ee40;
	virtual void scrollWheel(float, float) = win 0x4ee90;
	virtual TodoReturn angleChangeBegin();
	virtual TodoReturn angleChangeEnded();
	virtual TodoReturn angleChanged(float);
	virtual TodoReturn getMusicGuideActive() const;
	virtual UndoObject* getStoredUndoObject() const;
	virtual void setStoredUndoObject(UndoObject*);
	virtual TodoReturn getLimitY() const;
	virtual EditMode getEditMode() const;
	virtual void setEditMode(EditMode);

	float m_gridSize;
	int m_playerTouchID;
	int m_player2TouchID;
	bool m_musicGuideActive;
	UndoObject* m_storedUndoObject;
	bool m_swipeModifier;
	bool m_inSwipeAction;
	int m_rotationTouchID;
	int m_touchID;
	GJRotationControl* m_rotationControl;
	cocos2d::CCPoint m_scalePos;
	bool m_touchDown;
	cocos2d::CCDictionary* m_editButtonDict;
	EditButtonBar* m_selectedBuildTab;
	EditButtonBar* m_editButtonBar;
	Slider* m_positionSlider;
	float m_fUnknown;
	float	m_limitY;
	float	m_fUnknown2;
	bool m_swipeEnabled;
	bool m_bUnknown;
	bool m_bUnknown2;
	bool m_freeMoveEnabled;
	bool m_bUnknown3;
	bool m_bUnknown4;
	bool m_bUnknown5;
	cocos2d::CCPoint m_pUnknown1;
	cocos2d::CCPoint m_pUnknown2;
	cocos2d::CCArray* m_selectedObjects;
	cocos2d::CCMenu* m_deleteMenu;
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
	CCMenuItemSpriteExtra* m_undoBtn;
	CCMenuItemSpriteExtra* m_redoBtn;
	CCMenuItemSpriteExtra* m_editObjectBtn;
	CCMenuItemSpriteExtra* m_editGroupBtn;
	CCMenuItemSpriteExtra* m_copyPasteBtn;
	CCMenuItemSpriteExtra* m_copyBtn;
	CCMenuItemSpriteExtra* m_pastBtn;
	CCMenuItemToggler* m_guideToggle;
	cocos2d::CCArray* m_createButtonBars;
	cocos2d::CCMenu* m_tabsMenu;
	cocos2d::CCArray* m_tabsArray;
	void* m_unused;
	cocos2d::CCSprite* m_deleteFilterSprite;
	CCMenuItemSpriteExtra* m_deleteBtn;
	CCMenuItemSpriteExtra* m_deleteFilterBtn;
	CCMenuItemSpriteExtra* m_deleteFilterNone;
	CCMenuItemSpriteExtra* m_deleteFilterStatic;
	CCMenuItemSpriteExtra* m_deleteFilterDetails;
	CCMenuItemSpriteExtra* m_deleteFilterCustom;
	cocos2d::CCLabelBMFont* m_currentLayerLabel;
	CCMenuItemSpriteExtra* m_layerNextBtn;
	CCMenuItemSpriteExtra* m_layerPrevBtn;
	void* m_unused1;
	void* m_unused2;
	int m_selectedCreateObjectID;
	cocos2d::CCArray* m_createButtonArray;
	EditMode m_editMode;
	LevelEditorLayer* m_editorLayer;
	cocos2d::CCPoint m_pUnknown3;
	cocos2d::CCPoint m_pUnknown4;
	cocos2d::CCPoint m_pUnknown5;
	cocos2d::CCPoint m_pUnknown6;
	cocos2d::CCPoint m_pUnknown7;
	GameObject* m_selectedObject;
	GameObject* m_movingObject;
	bool m_bUnknown6;
	bool m_bUnknown7;
	gd::string m_clipboard;
	cocos2d::CCLabelBMFont* m_percentLabel;
	int m_selectedTab;
	int m_timesSelected;
}

[[link(android)]]
class EndLevelLayer : GJDropDownLayer {
	// virtual ~EndLevelLayer();
	// EndLevelLayer();

	static EndLevelLayer* create() = win 0x502c0;

	TodoReturn coinEnterFinished(cocos2d::CCPoint);
	TodoReturn coinEnterFinishedO(cocos2d::CCObject*);
	TodoReturn getEndText();
	TodoReturn goEdit();
	void onEdit(cocos2d::CCObject* sender);
	void onEveryplay(cocos2d::CCObject* sender);
	void onMenu(cocos2d::CCObject* sender);
	void onReplay(cocos2d::CCObject* sender);
	TodoReturn playCoinEffect(float);
	TodoReturn playStarEffect(float);
	TodoReturn starEnterFinished();
	TodoReturn tryShowBanner(float);

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void customSetup() = win 0x50430;
	virtual void showLayer(bool);
	virtual void enterAnimFinished();
	virtual void keyUp(cocos2d::enumKeyCodes);

	bool m_isExiting;
	bool m_shouldSave;
	cocos2d::CCMenu* m_actionsMenu;
	cocos2d::CCArray* m_coinEffects;
	cocos2d::CCPoint m_starPosition;
}

[[link(android)]]
class EndPortalObject {
	// virtual ~EndPortalObject();

	static EndPortalObject* create() = win 0x53110;

	TodoReturn updateColors(cocos2d::ccColor3B);

	virtual bool init() = win 0x531d0;
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setVisible(bool);
	virtual TodoReturn triggerObject();
	virtual TodoReturn calculateSpawnXPos();
}

[[link(android)]]
class EveryplayToolbox {
	TodoReturn firstSetup();
	bool isEveryplaySupported();
	bool isLowEndDevice();
	bool isPaused();
	bool isRecording();
	bool isRecordingSupported();
	TodoReturn pauseRecording();
	TodoReturn playLastRecording();
	TodoReturn resumeRecording();
	void setMetadataFromLevel(GJGameLevel*);
	TodoReturn showEveryplay();
	TodoReturn startRecording();
	TodoReturn stopRecording();
}

[[link(android)]]
class ExtendedLayer {
	// virtual ~ExtendedLayer();

	static ExtendedLayer* create();

	TodoReturn getDelegate();

	virtual bool init();
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setDelegate(BoomScrollLayerDelegate*);
}

[[link(android)]]
class FileOperation {
	static gd::string getFilePath();
	static void readFile();
	static void saveFile();
}

[[link(android)]]
class FileSaveManager {
	// virtual ~FileSaveManager();

	static FileSaveManager* sharedState();

	TodoReturn getShopItems();
	TodoReturn getStoreData();
	TodoReturn loadDataFromFile(char const*);

	virtual bool init();
	virtual void firstLoad();
}

[[link(android)]]
class FLAlertLayer : cocos2d::CCLayerColor {
	// virtual ~FLAlertLayer();
	// FLAlertLayer();

	FLAlertLayer() {
		m_buttonMenu = nullptr;
		m_controlConnected = -1;
		m_ZOrder = 0;
		m_alertProtocol = nullptr;
		m_scene = nullptr;
		m_reverseKeyBack = false;
		m_mainLayer = nullptr;
		m_scrollingLayer = nullptr;
		m_scrollAction = -1;
		m_containsBorder = false;
		m_noAction = false;
	}

	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, char const*, char const*, char const*, float, bool, float) = win 0x15360;
	static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, char const* desc, char const* btn1, char const* btn2, float width) = win inline {
		return FLAlertLayer::create(delegate, title, desc, btn1, btn2, width, false, 0.0f);
	}

	static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, char const* desc, char const* btn1, char const* btn2) = win inline {
		return FLAlertLayer::create(delegate, title, desc, btn1, btn2, 300.0f);
	}

	static FLAlertLayer* create(char const* title, const char* desc, char const* btn) {
		return FLAlertLayer::create(nullptr, title, desc, btn, nullptr, 300.0f);
	}

	bool init(FLAlertLayerProtocol*, char const*, char const*, char const*, char const*, float, bool, float) = win 0x15430;
	void onBtn1(cocos2d::CCObject* sender);
	void onBtn2(cocos2d::CCObject* sender);

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x15f00;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x16050;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x15f90;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x16000;
	virtual void registerWithTouchDispatcher() = win 0x161c0;
	virtual void keyBackClicked() = win 0x15de0;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x15d70;
	virtual void show() = win 0x160a0;
	virtual FLAlertLayerProtocol* getPParent() const = win 0x7890;
	virtual void setPParent(FLAlertLayerProtocol*) = win 0x15220;
	virtual cocos2d::CCNode* getTargetScene() const = win 0x15230;
	virtual void setTargetScene(cocos2d::CCNode*) = win 0x15240;
	virtual bool getReverseKeyBack() const = win 0x15250;
	virtual void setReverseKeyBack(bool) = win 0x15260;
	virtual cocos2d::CCLayer* getInternalLayer() const = win 0x15270;

	cocos2d::CCMenu* m_buttonMenu;
	int m_controlConnected;
	int m_ZOrder;
	FLAlertLayerProtocol* m_alertProtocol; // m_pParent
	cocos2d::CCNode* m_scene; // m_targetScene
	bool m_reverseKeyBack;
	CCLayer* m_mainLayer; // m_internalLayer
	ScrollingLayer* m_scrollingLayer;
	int m_scrollAction;
	bool m_containsBorder;
	bool m_noAction;
}

[[link(android)]]
class FLAlertLayerProtocol {
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class FMODAudioEngine : cocos2d::CCNode {
	// virtual ~FMODAudioEngine();

	static FMODAudioEngine* sharedEngine() = win 0x164c0;

	TodoReturn disableMetering();
	TodoReturn enableMetering();
	TodoReturn fadeBackgroundMusic(bool, float);
	TodoReturn getBackgroundMusicTime();
	TodoReturn getBackgroundMusicVolume();
	TodoReturn getEffectsVolume();
	bool isBackgroundMusicPlaying();
	bool isBackgroundMusicPlaying(gd::string);
	TodoReturn pauseAllEffects();
	void pauseBackgroundMusic();
	TodoReturn pauseEffect(unsigned int);
	void playBackgroundMusic(gd::string, bool, bool);
	TodoReturn playEffect(gd::string, bool, float, float, float);
	TodoReturn preloadBackgroundMusic(gd::string);
	TodoReturn preloadEffect(gd::string);
	TodoReturn printResult(FMOD_RESULT);
	TodoReturn resumeAllEffects();
	TodoReturn resumeBackgroundMusic();
	TodoReturn resumeEffect(unsigned int);
	TodoReturn rewindBackgroundMusic();
	void setBackgroundMusicTime(float) = win 0x16a80;
	void setBackgroundMusicVolume(float);
	void setEffectsVolume(float);
	TodoReturn setupAudioEngine();
	TodoReturn start();
	TodoReturn stop();
	TodoReturn stopAllEffects();
	void stopBackgroundMusic(bool);
	TodoReturn stopEffect(unsigned int);
	TodoReturn unloadEffect(gd::string);
	TodoReturn willPlayBackgroundMusic();

	virtual void update(float) = win 0x165f0;
	virtual int getTimeOffset() const;
	virtual void setTimeOffset(int);

	cocos2d::CCDictionary* m_dictionary;
	gd::string m_filePath;
	float m_backgroundMusicVolume;
	float m_effectsVolume;
	float m_pulse1;
	float m_pulse2;
	float m_pulse3;
	int m_pulseCounter;
	bool m_metering;
	bool m_fading;
	bool m_fadeIn;
	float m_fadeInDuration;
	FMOD::System* m_system;
	FMOD::Sound* m_sound;
	FMOD::Channel* m_currentSoundChannel;
	FMOD::Channel* m_globalChannel;
	FMOD::DSP* m_DSP;
	FMOD_RESULT m_lastResult;
	int m_version;
	void* m_extraDriverData;
	int m_musicOffset; // m_timeOffset
}

[[link(android)]]
class FMODSound {
	// virtual ~FMODSound();

	static FMODSound* create(FMOD::Sound*);

	TodoReturn getSound();
	bool init(FMOD::Sound*);

	virtual void setSound(FMOD::Sound*);
}

[[link(android)]]
class FontObject {
	// virtual ~FontObject();

	TodoReturn createWithConfigFile(char const*, float);
	TodoReturn getFontWidth(int);
	TodoReturn initWithConfigFile(char const*, float);
	TodoReturn parseConfigFile(char const*, float);
}

[[link(android)]]
class frameValues {
	// frameValues(frameValues const&);
}

[[link(android)]]
class GameCell {
	// virtual ~GameCell();
	GameCell(char const*, float, float);

	TodoReturn loadFromString(gd::string);
	void onTouch(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class GameEffectsManager {
	// virtual ~GameEffectsManager();

	static GameEffectsManager* create(PlayLayer*);

	TodoReturn addParticleEffect(cocos2d::CCParticleSystemQuad*, int);
	bool init(PlayLayer*);
	TodoReturn scaleParticle(cocos2d::CCParticleSystemQuad*, float);
}

[[link(android)]]
class GameLevelManager : cocos2d::CCNode {
	// virtual ~GameLevelManager();
	// GameLevelManager();

	static GameLevelManager* sharedState() = win 0x55850;
	static cocos2d::CCDictionary* responseToDict(gd::string, bool commentsSeparator);

	TodoReturn accountIDForID(int) = win 0x56e10;
	TodoReturn accountIDKey(int);
	TodoReturn addDLToActive(char const*);
	TodoReturn createAndGetComments(gd::string, int);
	TodoReturn createAndGetLevels(gd::string);
	TodoReturn createAndGetMapPacks(gd::string, bool);
	TodoReturn createAndGetScores(gd::string, GJScoreType);
	GJGameLevel* createNewLevel() = win 0x56590;
	TodoReturn createPageInfo(int, int, int);
	void dataLoaded(DS_Dictionary*);
	TodoReturn deleteComment(int, long);
	TodoReturn deleteLevel(GJGameLevel*);
	TodoReturn deleteServerLevel(int);
	TodoReturn doVerifyMapPacks(cocos2d::CCArray*);
	TodoReturn downloadLevel(int);
	void encodeDataTo(DS_Dictionary*);
	TodoReturn firstSetup();
	bool getBoolForKey(char const*) = win 0x60da0;
	const char* getCommentKey(int level, int page) = win inline {
		return cocos2d::CCString::createWithFormat("comment_%i_%i", level, page)->getCString();
	}
	TodoReturn getCompletedLevels();
	TodoReturn getDeleteCommentKey(int, long);
	TodoReturn getDifficultyStr(bool, bool, bool, bool, bool, bool, bool, bool);
	TodoReturn getDiffKey(int);
	TodoReturn getDiffVal(int);
	int getIntForKey(char const*) = win 0x60c10;
	TodoReturn getLeaderboardScores(char const*) = win 0x5ce50;
	TodoReturn getLengthStr(bool, bool, bool, bool);
	TodoReturn getLenKey(int);
	TodoReturn getLenVal(int);
	TodoReturn getLevelComments(int, int, int);
	TodoReturn getLevelKey(int);
	TodoReturn getLikeItemKey(LikeItemType, int, bool);
	TodoReturn getLikeKey(int);
	TodoReturn getLocalLevel(int);
	GJGameLevel* getMainLevel(int, bool) = win 0x561f0;
	TodoReturn getMapPackKey(int);
	TodoReturn getMapPacks(GJSearchObject*);
	void getOnlineLevels(GJSearchObject*) = win 0x59cb0;
	TodoReturn getPageInfo(char const*);
	const char* getPostCommentKey(int level) = win inline {
		return cocos2d::CCString::createWithFormat("comment_%i", level)->getCString();
	}
	TodoReturn getRateKey(int);
	TodoReturn getRateStarsKey(int);
	TodoReturn getReportKey(int);
	GJGameLevel* getSavedLevel(int) = win 0x57900;
	TodoReturn getSavedLevels();
	TodoReturn getSavedMapPack(int);
	TodoReturn getSearchScene(char const*);
	TodoReturn getStoredLevelComments(char const*);
	void getStoredOnlineLevels(char const*) = win 0x57ef0;
	int getTimeLeft(char const*, float) = win 0x585d0;
	void gotoLevelPage(GJGameLevel*) = win 0x57bb0;
	void handleIt(bool, gd::string, gd::string, GJHttpType) = win 0x55b50;
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	TodoReturn hasDownloadedLevel(int);
	TodoReturn hasLikedItem(LikeItemType, int, bool);
	TodoReturn hasLikedItem(LikeItemType, int);
	TodoReturn hasLikedLevel(int);
	TodoReturn hasRatedLevel(int);
	TodoReturn hasRatedLevelStars(int);
	TodoReturn hasReportedLevel(int);
	bool isDLActive(char const*);
	bool isTimeValid(char const*, float);
	bool isUpdateValid(int);
	TodoReturn itemIDFromLikeKey(char const*);
	int levelIDFromCommentKey(char const*) = win 0x5d980;
	TodoReturn likeFromLikeKey(char const*);
	TodoReturn likeItem(LikeItemType, int, bool);
	TodoReturn limitSavedLevels();
	void makeTimeStamp(char const*) = win 0x58350;
	TodoReturn markItemAsLiked(LikeItemType, int, bool);
	TodoReturn markLevelAsDownloaded(int);
	TodoReturn markLevelAsLiked(int);
	TodoReturn markLevelAsRated(int);
	TodoReturn markLevelAsRatedStars(int);
	TodoReturn markLevelAsReported(int);
	TodoReturn onDeleteCommentCompleted(gd::string, gd::string);
	TodoReturn onDeleteServerLevelCompleted(gd::string, gd::string);
	TodoReturn onDownloadLevelCompleted(gd::string, gd::string);
	TodoReturn onGetLeaderboardScoresCompleted(gd::string, gd::string);
	TodoReturn onGetLevelCommentsCompleted(gd::string, gd::string);
	TodoReturn onGetMapPacksCompleted(gd::string, gd::string);
	void onGetOnlineLevelsCompleted(gd::string, gd::string) = win 0x5a260;
	TodoReturn onLikeItemCompleted(gd::string, gd::string);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onRateLevelCompleted(gd::string, gd::string);
	TodoReturn onRateStarsCompleted(gd::string, gd::string);
	TodoReturn onReportLevelCompleted(gd::string, gd::string);
	TodoReturn onRestoreItemsCompleted(gd::string, gd::string);
	TodoReturn onSetLevelFeaturedCompleted(gd::string, gd::string);
	TodoReturn onSetLevelStarsCompleted(gd::string, gd::string);
	TodoReturn onSubmitUserInfoCompleted(gd::string, gd::string);
	TodoReturn onUpdateLevelCompleted(gd::string, gd::string);
	void onUpdateUserScoreCompleted(gd::string, gd::string);
	void onUploadCommentCompleted(gd::string, gd::string) = win 0x5de60;
	TodoReturn onUploadLevelCompleted(gd::string, gd::string);
	TodoReturn pageFromCommentKey(char const*);
	TodoReturn parseRestoreData(gd::string);
	void ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn rateLevel(int, int) = win 0x5b920;
	TodoReturn rateStars(int, int) = win 0x5beb0;
	TodoReturn removeDelimiterChars(gd::string, bool);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn reportLevel(int);
	TodoReturn resetAllTimers();
	void resetTimerForKey(char const*) = win 0x5440;
	TodoReturn restoreItems();
	TodoReturn saveLevel(GJGameLevel*);
	TodoReturn saveMapPack(GJMapPack*);
	void setBoolForKey(bool, char const*) = win 0x60ce0;
	void setDiffVal(int, bool);
	void setIntForKey(int, char const*);
	void setLenVal(int, bool);
	void setLevelFeatured(int, int);
	void setLevelStars(int, int);
	TodoReturn storeCommentsResult(cocos2d::CCArray*, gd::string, char const*);
	TodoReturn storeSearchResult(cocos2d::CCArray*, gd::string, char const*);
	void storeUserNames(gd::string) = win 0x569e0;
	TodoReturn submitUserInfo();
	TodoReturn typeFromLikeKey(char const*);
	void updateLevel(GJGameLevel*) = win 0x5b530;
	TodoReturn updateLevelRewards(GJGameLevel*);
	void updateUserScore() = win 0x5c950;
	TodoReturn uploadComment(int, gd::string) = win 0x5dae0;
	void uploadLevel(GJGameLevel*) = win 0x58d90;
	gd::string userNameForID(int) = win 0x56cc0;
	TodoReturn verifyMapPackUnlocks();

	virtual bool init();
	virtual cocos2d::CCDictionary* getMainLevels() const;
	virtual void setMainLevels(cocos2d::CCDictionary*);
	virtual cocos2d::CCDictionary* getValueDict() const;
	virtual void setValueDict(cocos2d::CCDictionary*);
	virtual cocos2d::CCDictionary* getSavedLevelsDict() const;
	virtual void setSavedLevelsDict(cocos2d::CCDictionary*);
	virtual gd::string getLastSearchKey() const;
	virtual void setLastSearchKey(gd::string);
	virtual gd::string getLastSearchKey2() const;
	virtual void setLastSearchKey2(gd::string);
	virtual int getLastLeaderboard() const;
	virtual void setLastLeaderboard(int);
	virtual bool getCreatedNewLevel() const;
	virtual void setCreatedNewLevel(bool);
	virtual LevelManagerDelegate* getDelegate() const;
	virtual void setDelegate(LevelManagerDelegate*);
	virtual LevelDownloadDelegate* getDlDelegate() const;
	virtual void setDlDelegate(LevelDownloadDelegate*);
	virtual LevelCommentDelegate* getCommentDelegate() const;
	virtual void setCommentDelegate(LevelCommentDelegate*);
	virtual CommentUploadDelegate* getCommentUpDelegate() const;
	virtual void setCommentUpDelegate(CommentUploadDelegate*);
	virtual LevelUploadDelegate* getUpDelegate();
	virtual void setUpDelegate(LevelUploadDelegate*);
	virtual LevelUpdateDelegate* getUpdateDelegate() const;
	virtual void setUpdateDelegate(LevelUpdateDelegate*);
	virtual LeaderboardManagerDelegate* getLeaderboardDelegate() const;
	virtual void setLeaderboardDelegate(LeaderboardManagerDelegate*);
	virtual LevelDeleteDelegate* getLvlDelDelegate() const;
	virtual void setLvlDelDelegate(LevelDeleteDelegate*);
	virtual SearchType getLastSearchType() const;
	virtual void setLastSearchType(SearchType);
	virtual int getLastMapPackID() const;
	virtual void setLastMapPackID(int);
	virtual gd::string getTempSave() const;
	virtual void setTempSave(gd::string);

	cocos2d::CCDictionary* m_mainLevels;
	cocos2d::CCDictionary* m_valueDict;
	cocos2d::CCDictionary* m_savedLevelsDict;
	cocos2d::CCDictionary* m_timerDict;
	cocos2d::CCDictionary* m_userValues;
	cocos2d::CCDictionary* m_storedLevels;
	cocos2d::CCDictionary* m_pageInfo;
	cocos2d::CCDictionary* m_unknownDict;
	cocos2d::CCDictionary* m_savedPacks;
	cocos2d::CCDictionary* m_activeDownloads;
	cocos2d::CCDictionary* m_activeUploads;
	gd::string m_lastSearchKey;
	gd::string m_lastSearchKey2;
	int m_lastLeaderboard;
	bool m_createdNewLevel;
	LevelManagerDelegate* m_levelManagerDelegate; // m_delegate
	LevelDownloadDelegate* m_levelDownloadDelegate; // m_dlDelegate
	LevelCommentDelegate* m_levelCommentDelegate; // m_commentDelegate
	CommentUploadDelegate* m_commentUploadDelegate; // m_commentUpDelegate
	LevelUploadDelegate* m_levelUploadDelegate; // m_upDelegate
	LevelUpdateDelegate* m_levelUpdateDelegate; // m_updateDelegate
	LeaderboardManagerDelegate* m_leaderboardDelegate;
	LevelDeleteDelegate* m_levelDeleteDelegate; // m_lvlDelDelegate
	SearchType m_lastSearchType;
	int m_lastMapPackID;
	gd::string m_tempSave;
}

[[link(android)]]
class GameManager : GManager {
	// virtual ~GameManager();
	// GameManager();

	static GameManager* get() {
		return GameManager::sharedState();
	}

	static GameManager* sharedState() = win 0x667d0;

	TodoReturn applicationDidEnterBackground();
	void applicationWillEnterForeground() = win 0x6c690;
	TodoReturn checkSteamAchievementUnlock();
	TodoReturn claimItemsResponse(gd::string);
	cocos2d::ccColor3B colorForIdx(int) = win 0x6a410;
	int colorForPos(int) = win 0x6a780;
	const char* colorKey(int id, bool second) = win inline {
		return cocos2d::CCString::createWithFormat("c%i_%i", second, id)->getCString();
	}
	void completedAchievement(char const*) = win 0x670b0;
	TodoReturn didExitPlayscene();
	TodoReturn doQuickSave();
	TodoReturn eventUnlockFeature(char const*);
	void fadeInMusic(char const*) = win 0x66890;
	TodoReturn followTwitter();
	const char* getBGTexture(int id) = win inline {
		id = std::clamp(id, 1, 7);
		this->loadBackground(id);
		return cocos2d::CCString::createWithFormat("game_bg_%02d_001.png", id)->getCString();
	}
	bool getGameVariable(char const*) = win 0x6ace0;
	void getGTexture(int) = win 0x6ab50;
	int getIntGameVariable(char const*) = win 0x6afb0;
	TodoReturn hasShownAdRecently();
	const char* iconKey(int id, IconType type) = win inline {
		switch (type) {
			case IconType::Cube:
			default:
				return cocos2d::CCString::createWithFormat("i_%i", id)->getCString();
			case IconType::Ship:
				return cocos2d::CCString::createWithFormat("ship_%i", id)->getCString();
			case IconType::Ball:
				return cocos2d::CCString::createWithFormat("ball_%i", id)->getCString();
			case IconType::Ufo:
				return cocos2d::CCString::createWithFormat("bird_%i", id)->getCString();
			case IconType::Special:
				return cocos2d::CCString::createWithFormat("special_%i", id)->getCString();
		}
	}
	bool isColorUnlocked(int, bool) = win 0x66df0;
	bool isIconUnlocked(int, IconType) = win 0x66b10;
	TodoReturn itemPurchased(char const*);
	TodoReturn levelIsPremium(int, int);
	TodoReturn likeFacebook();
	void loadBackground(int) = win 0x6aa90;
	TodoReturn loadGround(int);
	void loadVideoSettings() = win 0x6b090;
	TodoReturn lockColor(int, bool);
	TodoReturn lockIcon(int, IconType);
	void openEditorGuide() = win 0x3f4b0;
	TodoReturn rateGame();
	void reloadAll(bool, bool, bool) = win 0x6c990;
	void reloadAllStep2() = win 0x6ca20;
	void reloadAllStep3() = win 0x6cb10;
	void reloadAllStep4() = win 0x6cb80;
	void reloadAllStep5() = win 0x6cbf0;
	void reportAchievementWithID(char const*, int, bool) = win 0x67c70;
	void reportPercentageForLevel(int, int, bool) = win 0x67920;
	TodoReturn resetAchievement(char const*);
	TodoReturn resetCoinUnlocks();
	TodoReturn resolutionForKey(int);
	TodoReturn returnToLastScene(GJGameLevel*);
	void setGameVariable(char const*, bool) = win 0x6abe0;
	void setIntGameVariable(char const*, int) = win 0x6aed0;
	TodoReturn shouldShowInterstitial();
	TodoReturn shouldShowPromoInterstitial();
	TodoReturn showInterstitial();
	TodoReturn showInterstitialForced();
	TodoReturn showMainMenuAd();
	TodoReturn showPromoInterstitial();
	void startUpdate();
	TodoReturn subYouTube();
	TodoReturn switchScreenMode(bool, bool);
	TodoReturn syncPlatformAchievements();
	void toggleGameVariable(char const*) = win 0x6add0;
	TodoReturn tryCacheAd();
	TodoReturn unloadBackground();
	TodoReturn unlockColor(int, bool);
	TodoReturn unlockedPremium();
	TodoReturn unlockIcon(int, IconType);
	TodoReturn updateMusic();
	TodoReturn verifyAchievementUnlocks();
	TodoReturn verifyCoinUnlocks();
	TodoReturn verifyStarUnlocks();
	TodoReturn verifySyncedCoins();
	TodoReturn videoAdHidden();
	TodoReturn videoAdShowed();

	virtual void update(float);
	virtual bool init();
	virtual void encodeDataTo(DS_Dictionary*) = win 0x6bf10;
	virtual void dataLoaded(DS_Dictionary*) = win 0x6b260;
	virtual void firstLoad() = win 0x6ba40;
	virtual cocos2d::CCDictionary* getValueKeeper() const;
	virtual void setValueKeeper(cocos2d::CCDictionary*);
	virtual bool getDidSyncAchievements() const;
	virtual void setDidSyncAchievements(bool);
	virtual gd::string getEditorCopyString() const;
	virtual void setEditorCopyString(gd::string);
	virtual PlayLayer* getPlayLayer() const;
	virtual void setPlayLayer(PlayLayer*);
	virtual LevelSelectLayer* getLevelSelectLayer() const;
	virtual void setLevelSelectLayer(LevelSelectLayer*);
	virtual bool getMainMenuActive() const;
	virtual void setMainMenuActive(bool);
	virtual PremiumPopup* getPremiumPopup() const;
	virtual void setPremiumPopup(PremiumPopup*);
	virtual bool getFirstSetup() const;
	virtual void setFirstSetup(bool);
	virtual bool getShowedMenu() const;
	virtual void setShowedMenu(bool);
	virtual gd::string getPlayerUDID() const;
	virtual void setPlayerUDID(gd::string);
	virtual gd::string getPlayerName() const;
	virtual void setPlayerName(gd::string);
	virtual int getPlayerUserID() const;
	virtual void setPlayerUserID(int);
	virtual bool getPlayerScoreValid() const;
	virtual void setPlayerScoreValid(bool);
	virtual bool getDidRateGame() const;
	virtual void setDidRateGame(bool);
	virtual bool getDidLikeFacebook() const;
	virtual void setDidLikeFacebook(bool);
	virtual bool getDidFollowTwitter() const;
	virtual void setDidFollowTwitter(bool);
	virtual bool getDidSubYouTube() const;
	virtual void setDidSubYouTube(bool);
	virtual bool getDidPauseBGMusic() const;
	virtual void setDidPauseBGMusic(bool);
	virtual bool getWasHigh() const;
	virtual void setWasHigh(bool);
	virtual bool getEditMode() const;
	virtual void setEditMode(bool);
	virtual LastGameScene getLastScene() const;
	virtual void setLastScene(LastGameScene);
	virtual LastGameScene getLastScene2() const;
	virtual void setLastScene2(LastGameScene);
	virtual bool getReturnToSearch() const;
	virtual void setReturnToSearch(bool);
	virtual int getPlayerFrame() const;
	virtual void setPlayerFrame(int);
	virtual int getPlayerShip() const;
	virtual void setPlayerShip(int);
	virtual int getPlayerBall() const;
	virtual void setPlayerBall(int);
	virtual int getPlayerBird() const;
	virtual void setPlayerBird(int);
	virtual int getPlayerColor() const;
	virtual void setPlayerColor(int);
	virtual int getPlayerColor2() const;
	virtual void setPlayerColor2(int);
	virtual int getPlayerStreak() const;
	virtual void setPlayerStreak(int);
	virtual IconType getPlayerIconType() const;
	virtual void setPlayerIconType(IconType);
	virtual bool getDidSetupEveryplay() const;
	virtual void setDidSetupEveryplay(bool);
	virtual bool getShowSongMarkers() const;
	virtual void setShowSongMarkers(bool);
	virtual bool getShowBPMMarkers() const;
	virtual void setShowBPMMarkers(bool);
	virtual bool getRecordGameplay() const;
	virtual void setRecordGameplay(bool);
	virtual bool getShowProgressBar() const;
	virtual void setShowProgressBar(bool);
	virtual bool getPerformanceMode() const;
	virtual void setPerformanceMode(bool);
	virtual bool getCommentSortRecent() const;
	virtual void setCommentSortRecent(bool);
	virtual bool getShowedPirate() const;
	virtual void setShowedPirate(bool);
	virtual bool getClickedGarage() const;
	virtual void setClickedGarage(bool);
	virtual bool getClickedEditor() const;
	virtual void setClickedEditor(bool);
	virtual bool getClickedName() const;
	virtual void setClickedName(bool);
	virtual bool getClickedPractice() const;
	virtual void setClickedPractice(bool);
	virtual bool getShowedEditorGuide() const;
	virtual void setShowedEditorGuide(bool);
	virtual bool getShowedRateDiffDialog() const;
	virtual void setShowedRateDiffDialog(bool);
	virtual bool getShowedRateStarDialog() const;
	virtual void setShowedRateStarDialog(bool);
	virtual bool getShowedLowDetailDialog() const;
	virtual void setShowedLowDetailDialog(bool);
	virtual GameRateDelegate* getRateDelegate() const;
	virtual void setRateDelegate(GameRateDelegate*);
	virtual cocos2d::ccColor3B getStoredColor() const;
	virtual void setStoredColor(cocos2d::ccColor3B);
	virtual int getLastLevelID() const;
	virtual void setLastLevelID(int);
	virtual int getLoadedBGIdx() const;
	virtual int getLoadedGIdx() const;
	virtual int getTotalAttempts() const;
	virtual void setTotalAttempts(int);
	virtual int getBootups() const;
	virtual void setBootups(int);
	virtual bool getHasRatedGame() const;
	virtual void setHasRatedGame(bool);
	virtual bool getDidPlayGame() const;
	virtual void setDidPlayGame(bool);
	virtual bool getIsResetting() const;
	virtual void setIsResetting(bool);
	[[missing(win)]]
	virtual bool getShowingPromo() const;
	[[missing(win)]]
	virtual void setShowingPromo(bool);
	[[missing(win)]]
	virtual bool getTestSmoothFix() const;
	[[missing(win)]]
	virtual void setTestSmoothFix(bool);
	virtual int getResolution() const;
	virtual void setResolution(int);
	virtual cocos2d::TextureQuality getTexQuality() const;
	virtual void setTexQuality(cocos2d::TextureQuality);

	bool m_switchModes;
	bool m_toFullScreen;
	bool m_reloading;
	bool m_unkBool1;
	bool m_unkBool2;
	cocos2d::CCDictionary* m_valueKeeper;
	double m_adTimer;
	double m_adCache;
	int m_unkSize4_1;
	int m_unkSize4_2;
	bool m_loaded;
	bool m_didSyncAchievements;
	gd::string m_editorCopyString;
	PlayLayer* m_playLayer;
	LevelSelectLayer* m_levelSelectLayer;
	bool m_inMenuLayer;
	PremiumPopup* m_premiumPopup;
	bool m_firstSetup;
	bool m_showedMenu;
	gd::string m_playerUDID;
	gd::string m_playerName;
	int m_playerUserID;
	bool m_playerScoreValid;
	float m_bgVolume;
	float m_sfxVolume;
	int m_timeOffset;
	bool m_ratedGame;
	bool m_clickedFacebook;
	bool m_clickedTwitter;
	bool m_clickedYouTube;
	bool m_didPauseBGMusic;
	bool m_wasHigh;
	bool m_editorEnabled;
	LastGameScene m_lastScene;
	LastGameScene m_lastScene2;
	bool m_searchObjectBool;
	int m_playerFrame;
	int	m_playerShip;
	int m_playerBall;
	int	m_playerBird;
	int	m_playerColor;
	int	m_playerColor2;
	int m_playerStreak;
	IconType m_playerIconType;
	bool m_everyPlaySetup;
	bool m_showSongMarkers;
	bool m_showBPMMarkers;
	bool m_recordGameplay;
	bool m_showProgressBar;
	bool m_performanceMode;
	bool m_commentSortRecent;
	bool m_showedPirateMessage;
	bool m_clickedGarage;
	bool m_clickedEditor;
	bool m_clickedName;
	bool m_clickedPractice;
	bool m_showedEditorGuide;
	bool m_showedRateDiffDialog;
	bool m_showedRateStarDialog;
	bool m_showedLowDetailDialog;
	GameRateDelegate* m_rateDelegate;
	int m_unkSize4_3;
	int m_lastLevelID;
	int m_loadedBgID;
	int m_loadedGroundID;
	int m_totalAttempts;
	int m_bootups;
	bool m_hasRatedGame;
	bool m_didPlayGame;
	bool m_isResetting;
	PAD = android32 0x2, win 0x0;
	// 1.93 only
	// bool m_showingPromo;
	// bool m_testSmoothFix;
	int m_resolution;
	cocos2d::TextureQuality m_texQuality;
	win {
		// this doesn't exist on 1.93 and is unused on 1.92
		int m_unkSize4_4;
	}
}

[[link(android)]]
class GameObject : CCSpritePlus {
	// virtual ~GameObject();
	// GameObject();

	static GameObject* create(char const*) = win 0x6d5c0;

	TodoReturn activatedByPlayer(GameObject*);
	TodoReturn addColorSprite();
	TodoReturn addCustomChild(gd::string, cocos2d::CCPoint);
	TodoReturn addCustomColorChild(gd::string);
	TodoReturn addGlow();
	TodoReturn addToBottom();
	TodoReturn calculateOrientedBox();
	void canChangeCustomColor() = win 0x710a0;
	TodoReturn canRotateFree();
	void createAndAddParticle(int, char const*, int, cocos2d::tCCPositionType) = win 0x72bd0;
	void createObject(char const*) = win 0x6d420;
	void createRotateAction(float) = win 0x72230;
	TodoReturn customScaleMod(char const*);
	void customSetup() = win 0x6ee50;
	TodoReturn deselectObject();
	void destroyObject() = win 0x72f90;
	void determineSlopeDirection() = win 0x73db0;
	TodoReturn disableObject();
	TodoReturn getBallFrame(int);
	TodoReturn getColorFrame(gd::string);
	TodoReturn getColorMode();
	void getEditorColor() = win 0x756b0;
	TodoReturn getOuterObjectRect();
	TodoReturn hasBeenActivated();
	TodoReturn hasBeenActivatedByPlayer(GameObject*);
	bool init(char const*) = win 0x6d660;
	bool isFacingDown();
	TodoReturn objectFromString(gd::string);
	TodoReturn perspectiveFrame(char const*, int);
	TodoReturn playShineEffect();
	TodoReturn removeColorSprite();
	TodoReturn removeGlow();
	TodoReturn reorderColorSprite();
	TodoReturn resetCustomColorMode();
	void selectObject(cocos2d::ccColor3B) = win 0x75660;
	void setChildColor(cocos2d::ccColor3B);
	void setDefaultColorMode(GJCustomColorMode);
	void setGlowColor(cocos2d::ccColor3B);
	void setGlowOpacity(unsigned char);
	void setMyAction(cocos2d::CCAction*);
	void setObjectColor(cocos2d::ccColor3B);
	TodoReturn setupCoinAnimation();
	TodoReturn setupCustomSprites();
	bool shouldBlend();
	bool shouldBlendColor() = win 0x6ece0;
	bool slopeFloorTop() = win inline {
		return this->m_slopeType == 1 || this->m_slopeType == 3 || this->m_slopeType == 5 || this->m_slopeType == 6;
	}
	bool slopeWallLeft() = win inline {
		return this->m_slopeType == 2 || this->m_slopeType == 3 || this->m_slopeType == 4 || this->m_slopeType == 6;
	}
	TodoReturn slopeYPos(cocos2d::CCRect);
	TodoReturn slopeYPos(float);
	TodoReturn slopeYPos(GameObject*);
	TodoReturn updateCustomColorMode(GJCustomColorMode, bool);
	void updateOrientedBox() = win 0x75a50;
	void updateState();

	virtual void update(float);
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setScale(float);
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setVisible(bool);
	virtual void setRotation(float);
	virtual void setOpacity(unsigned char);
	virtual void setFlipX(bool);
	virtual void setFlipY(bool);
	virtual void resetObject();
	virtual void triggerObject();
	virtual void activateObject() = win 0x6e970;
	virtual void deactivateObject();
	virtual cocos2d::CCRect getObjectRect() = win 0x722a0;
	virtual cocos2d::CCRect getObjectRect(float, float) = win 0x722e0;
	virtual cocos2d::CCRect getObjectRect2(float, float);
	virtual cocos2d::CCRect getObjectTextureRect();
	virtual cocos2d::CCPoint getRealPosition();
	virtual void setStartPos(cocos2d::CCPoint);
	virtual void updateStartValues();
	virtual gd::string getSaveString();
	virtual bool isFlipX();
	virtual bool isFlipY();
	virtual void setRScaleX(float);
	virtual void setRScaleY(float);
	virtual void setRScale(float);
	virtual float getRScaleX();
	virtual float getRScaleY();
	virtual void calculateSpawnXPos();
	virtual bool triggerActivated();
	virtual void powerOnObject();
	virtual void powerOffObject();
	virtual OBB2D* getOrientedBox() = win 0x759e0;
	virtual bool getIsOriented() const;
	virtual bool getHideObject() const;
	virtual bool getIsActive() const;
	virtual float getFadeInPosOffset() const;
	virtual void setFadeInPosOffset(float);
	virtual bool getObjectRectDirty() const;
	virtual void setObjectRectDirty(bool);
	virtual bool getHasCustomChildren() const;
	virtual bool getHasColor() const;
	virtual cocos2d::CCSprite* getColorSprite() const;
	virtual bool getIgnoreScreenCheck() const;
	virtual void setIgnoreScreenCheck(bool);
	virtual float getRadius() const;
	virtual bool getIsRotated() const;
	virtual float getScaleModX() const;
	virtual void setScaleModX(float);
	virtual float getScaleModY() const;
	virtual void setScaleModY(float);
	virtual int getM_ID() const;
	virtual void setM_ID(int);
	virtual GameObjectType getType() const;
	virtual void setType(GameObjectType);
	virtual int getSectionIdx() const;
	virtual void setSectionIdx(int);
	virtual bool getShouldSpawn() const;
	virtual bool getTouchTriggered() const;
	virtual void setTouchTriggered(bool);
	virtual cocos2d::CCPoint getStartPos() const;
	virtual gd::string getFrame() const;
	virtual bool getIsDisabled() const;
	virtual void setIsDisabled(bool);
	virtual bool getUseAudioScale() const;
	virtual void setUseAudioScale(bool);
	virtual bool getIsSleeping() const;
	virtual float getStartRotation() const;
	virtual void setStartRotation(float);
	virtual float getStartScaleX() const;
	virtual void setStartScaleX(float);
	virtual float getStartScaleY() const;
	virtual void setStartScaleY(float);
	virtual bool getStartFlipX() const;
	virtual void setStartFlipX(bool);
	virtual bool getStartFlipY() const;
	virtual void setStartFlipY(bool);
	virtual bool getShouldHide() const;
	virtual void setShouldHide(bool);
	virtual float getSpawnXPos() const;
	virtual bool getIsInvisible() const;
	virtual float getEnterAngle() const;
	virtual void setEnterAngle(float);
	virtual int getEnterEffect() const;
	virtual void setEnterEffect(int);
	virtual cocos2d::ccColor3B getTintColor() const;
	virtual void setTintColor(cocos2d::ccColor3B);
	virtual float getTintDuration() const;
	virtual void setTintDuration(float);
	virtual bool getTintGround() const;
	virtual void setTintGround(bool);
	virtual int getObjectKey() const;
	virtual void setObjectKey(int);
	virtual bool getDontTransform() const;
	virtual void setDontTransform(bool);
	virtual bool getDontFade() const;
	virtual void setDontFade(bool);
	virtual bool getDontFadeTinted() const;
	virtual void setDontFadeTinted(bool);
	virtual bool getIsTintObject() const;
	virtual void setIsTintObject(bool);
	virtual bool getStateVar() const;
	virtual void setStateVar(bool);
	virtual int getObjectZ() const;
	virtual void setObjectZ(int);
	virtual cocos2d::CCNode* getObjectParent() const;
	virtual void setObjectParent(cocos2d::CCNode*);
	virtual bool getCustomAudioScale() const;
	virtual float getMinAudioScale() const;
	virtual float getMaxAudioScale() const;
	virtual int getUniqueID() const;
	virtual void setUniqueID(int);
	virtual bool getInvisibleMode() const;
	virtual bool getGlowUseBGColor() const;
	virtual bool getUseSpecialLight() const;
	virtual bool getGlowUseReverseColor() const;
	virtual bool getIsColorObject() const;
	virtual float getOpacityMod() const;
	virtual void setOpacityMod(float);
	virtual float getGlowOpacityMod() const;
	virtual void setGlowOpacityMod(float);
	virtual bool getDontShow() const;
	virtual void setDontShow(bool);
	virtual bool getUpSlope() const;
	virtual int getSlopeType() const;
	virtual float getSlopeAngle() const;
	virtual bool getDamaging() const;
	virtual GJCustomColorMode getCustomColorMode() const;
	virtual bool getForceBottomLayer() const;
	virtual void setForceBottomLayer(bool);
	virtual bool getEditorSelected() const;
	virtual void setEditorSelected(bool);
	virtual bool getCopyPlayerColor1() const;
	virtual void setCopyPlayerColor1(bool);
	virtual bool getCopyPlayerColor2() const;
	virtual void setCopyPlayerColor2(bool);
	virtual bool getCustomColorBlend() const;
	virtual void setCustomColorBlend(bool);
	virtual bool getWasSelected() const;
	virtual void setWasSelected(bool);
	virtual bool getIsSelected() const;
	virtual void setIsSelected(bool);
	virtual int getEditorSelectIdx() const;
	virtual void setEditorSelectIdx(int);
	virtual cocos2d::CCPoint getStoredPosition() const;
	virtual void setStoredPosition(cocos2d::CCPoint);
	virtual int getGroupID() const;
	virtual void setGroupID(int);

	// i don't feel like fully mapping these to geode's member names
	bool m_isFlippedX; // m_flipX
	bool m_isFlippedY; // m_flipY
	cocos2d::CCPoint m_boxOffset;
	OBB2D* m_objectOBB2D;
	bool m_oriented; // m_isOriented
	cocos2d::CCObject* m_glowSprite;
	bool m_isSpeedPortal;
	bool m_isRingObject;
	cocos2d::CCAction* m_myAction;
	bool m_isRotatingObject;
	bool m_objectPoweredOn;
	bool m_hideObject;
	float m_orientedBoxWidth;
	float m_orientedBoxHeight;
	bool m_active; // m_isActive
	bool m_hasGlow;
	bool m_isDestroyed;
	cocos2d::CCParticleSystemQuad* m_particleSystem;
	gd::string m_particleString;
	bool m_particleAdded;
	cocos2d::CCPoint m_portalPosition;
	cocos2d::CCRect m_objectTextureRect;
	bool m_textureRectDirty;
	float m_fadeInPosOffset;
	cocos2d::CCRect m_objectRect2;
	bool m_isObjectRectDirty; // m_objectRectDirty
	bool m_isOrientedRectDirty;
	bool m_hasBeenActivated;
	bool m_activated;
	bool m_canChangeCustomColor;
	bool m_hasCustomChildren;
	bool m_hasColor;
	cocos2d::CCSprite* m_colorSprite;
	bool m_ignoreScreenCheck;
	float m_objectRadius; // m_radius
	bool m_isRotatedSide; // m_isRotated
	float m_scaleModX;
	float m_scaleModY;
	int m_ID;
	GameObjectType m_objectType;
	int m_section; // m_sectionIdx
	bool m_shouldSpawn;
	bool m_touchTriggered;
	cocos2d::CCPoint m_startPosition;
	gd::string m_textureName; // m_frame
	bool m_isDisabled;
	bool m_useAudioScale;
	bool m_sleeping; // m_isSleeping
	float m_startRotation;
	float m_startScaleX;
	float m_startScaleY;
	bool m_startFlipX;
	bool m_startFlipY;
	bool m_shouldHide;
	float m_spawnXPosition; // m_spawnXPos
	bool m_invisible; // m_isInvisible
	float m_enterAngle;
	int m_activeEnterEffect; // m_enterEffect
	cocos2d::ccColor3B m_tintColor;
	float m_tintDuration;
	bool m_tintGround;
	int m_objectID; // m_objectKey
	bool m_isDontEnter; // m_dontTransform
	bool m_isDontFade; // m_dontFade
	bool m_dontFadeTinted;
	bool m_isTintObject;
	bool m_stateVar;
	int m_defaultZOrder; // m_objectZ
	cocos2d::CCNode* m_objectParent;
	bool m_customAudioScale;
	float m_minAudioScale;
	float m_maxAudioScale;
	int m_secretCoinID; // m_uniqueID
	bool m_invisibleMode;
	bool m_glowUseBGColor;
	bool m_useSpecialLight;
	bool m_glowUseReverseColor;
	bool m_isColorObject;
	float m_opacityMod;
	float m_glowOpacityMod;
	bool m_dontShow;
	bool m_upSlope;
	int m_slopeType;
	float m_slopeAngle;
	bool m_hazardousSlope; // m_damaging
	GJCustomColorMode m_customColorMode;
	GJCustomColorMode m_defaultColorMode;
	bool m_forceBottomLayer;
	bool m_editorSelected;
	bool m_copyPlayerColor1;
	bool m_copyPlayerColor2;
	bool m_customColorBlend;
	bool m_wasSelected;
	bool m_isSelected;
	int m_editorSelectIdx;
	cocos2d::CCPoint m_storedPosition;
	int m_editorLayer; // m_groupID
}

[[link(android)]]
class GameObjectCopy {
	// virtual ~GameObjectCopy();

	static GameObjectCopy* create(GameObject*);

	TodoReturn getObject();
	bool init(GameObject*);
	void resetObject();
}

[[link(android)]]
class GameplayDelegate {
	virtual void flipGravity(PlayerObject*, bool, bool);
}

[[link(android)]]
class GameRateDelegate {
	virtual TodoReturn updateRate();
}

[[link(android)]]
class GameSoundManager {
	// virtual ~GameSoundManager();

	TodoReturn asynchronousSetup();
	void disableMetering();
	void enableMetering() = win 0x17c90;
	TodoReturn fadeInMusic(bool);
	TodoReturn fadeOutMusic(bool);
	TodoReturn getActiveBGMusic();
	void getMeteringValue() = win 0x17e90;
	TodoReturn getState();
	bool isLoopedSoundPlaying(gd::string);
	TodoReturn pauseAllLoopedSounds();
	TodoReturn pauseLoopedSound(gd::string);
	void playBackgroundMusic(gd::string, bool, bool) = win 0x17850;
	void playEffect(gd::string, float, float, float) = win 0x179f0;
	TodoReturn playLoopedSound(gd::string, gd::string, float, float, bool, bool, bool);
	TodoReturn playUniqueEffect(gd::string, float, float, float);
	TodoReturn playUniqueEffect(gd::string);
	TodoReturn preload();
	TodoReturn removeLoopedSound(gd::string);
	TodoReturn resetUniqueEffects();
	TodoReturn resumeAllLoopedSounds();
	TodoReturn resumeSound();
	TodoReturn setup();
	TodoReturn stopAllLoopedSounds();
	void stopBackgroundMusic() = win 0x17940;
	TodoReturn stopLoopedSound(gd::string, bool);
	TodoReturn updateLoopedVolume(gd::string, float);
	TodoReturn updateMetering(float);

	static GameSoundManager* sharedManager() = win 0x172d0;

	virtual bool init();
}

[[link(android)]]
class GameStatsManager {
	// virtual ~GameStatsManager();

	static GameStatsManager* sharedState() = win 0x76ec0;

	void checkAchievement(char const*) = win 0x77280;
	TodoReturn completedDemonLevel(GJGameLevel*);
	void completedLevel(GJGameLevel*);
	TodoReturn completedMapPack(GJMapPack*);
	TodoReturn completedStarLevel(GJGameLevel*);
	void dataLoaded(DS_Dictionary*);
	void encodeDataTo(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn getCompletedLevels();
	TodoReturn getDemonLevelKey(int);
	TodoReturn getLevelKey(GJGameLevel*);
	TodoReturn getLevelKey(int, bool);
	TodoReturn getLiteAchievements();
	TodoReturn getMapPackKey(int);
	TodoReturn getStarLevelKey(int);
	int getStat(char const*) = win 0x770c0;
	TodoReturn getUniqueItemKey(char const*);
	TodoReturn getValueDict();
	TodoReturn hasCompletedDemonLevel(GJGameLevel*);
	TodoReturn hasCompletedLevel(GJGameLevel*);
	TodoReturn hasCompletedMapPack(int);
	TodoReturn hasCompletedOnlineLevel(int);
	TodoReturn hasCompletedStarLevel(GJGameLevel*);
	bool hasUniqueItem(char const*) = win 0x78d60;
	void incrementStat(char const*, int) = win 0x76f60;
	void incrementStat(char const* stat) = win inline {
		return this->incrementStat(stat, 1);
	}
	bool isLiteUnlockable(gd::string);
	bool isUniqueItem(gd::string);
	bool isUniqueValid(gd::string);
	TodoReturn markLevelAsCompletedAndClaimed(int);
	TodoReturn resetPreSync();
	TodoReturn restorePostSync();
	void setStat(char const*, int);
	void setStatIfHigher(char const*, int);
	TodoReturn storeUniqueItem(char const*);
	TodoReturn tempClear();

	virtual bool init();
	virtual void setValueDict(cocos2d::CCDictionary*);
	virtual void setCompletedLevels(cocos2d::CCDictionary*);
}

[[link(android)]]
class GameStoreManager {
	// virtual ~GameStoreManager();

	static GameStoreManager* sharedState();

	TodoReturn addCount(int, char const*);
	TodoReturn boughtGold(int);
	TodoReturn claimItems(char const*);
	TodoReturn consumeItem(char const*);
	TodoReturn countForItem(char const*);
	TodoReturn dictForFeatureID(char const*);
	TodoReturn displayGoldError();
	TodoReturn displayItemRestore(bool, bool);
	TodoReturn eventUnlockFeature(char const*);
	TodoReturn getAllItemsForCategory(char const*);
	TodoReturn getCategory(char const*);
	TodoReturn getShopCategories();
	TodoReturn getShopItems();
	bool isBillingSupported();
	bool isFeatureUnlocked(char const*);
	TodoReturn itemPurchased(char const*);
	TodoReturn itemPurchaseFailed(char const*);
	TodoReturn itemRefunded(char const*);
	TodoReturn onClaimItemsCompleted(cocos2d::CCNode*, void*);
	TodoReturn playBuySound();
	TodoReturn purchaseConsumable(char const*, int, int);
	TodoReturn purchaseFeature(char const*, int);
	TodoReturn purchaseItem(char const*);
	TodoReturn restorePurchases();
	void setCount(int, char const*);
	TodoReturn sortCategories();
	TodoReturn unlockFeature(char const*);

	virtual bool init();
	virtual TodoReturn setup();
	virtual void encodeDataTo(DS_Dictionary*);
	virtual void dataLoaded(DS_Dictionary*);
	virtual void firstLoad();
}

[[link(android)]]
class GameToolbox {
	static TodoReturn addBackButton(cocos2d::CCLayer*, cocos2d::CCMenuItem*) = win 0x18b10;
	static TodoReturn addRThumbScrollButton(cocos2d::CCLayer*);
	static TodoReturn alignItemsHorisontally(cocos2d::CCArray*, float, cocos2d::CCPoint);
	static TodoReturn alignItemsVertically(cocos2d::CCArray*, float, cocos2d::CCPoint);
	static CCMenuItemToggler* createToggleButton(gd::string label, cocos2d::SEL_MenuHandler callback, bool isActive, cocos2d::CCMenu* targetMenu, cocos2d::CCPoint position, cocos2d::CCNode* callbackObject, cocos2d::CCNode* targetNode, float toggleScale, float labelMaxScale, float labelMaxWidth, cocos2d::CCPoint labelOffset, char const* font, bool verticalLayout) = win 0x184c0;
	static CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*) = win 0x183c0;
	static bool doWeHaveInternet() = win inline {
		return true;
	}
	static TodoReturn getDropActionWDelay(float, float, float, cocos2d::CCNode*, cocos2d::SEL_CallFunc);
	static TodoReturn getDropActionWEnd(float, float, float, cocos2d::CCAction*, float);
	static TodoReturn getRelativeOffset(GameObject*, cocos2d::CCPoint);
	static TodoReturn getResponse(cocos2d::extension::CCHttpResponse*);
	static bool isIOS();
	static TodoReturn mergeDictsSaveLargestInt(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
	static TodoReturn openAppPage();
	static TodoReturn openRateURL(gd::string, gd::string);
	static TodoReturn postClipVisit();
	static TodoReturn preVisitWithClippingRect(cocos2d::CCNode*, cocos2d::CCRect, cocos2d::CCNode*);
}

[[link(android)]]
class GaragePage : cocos2d::CCLayer, ListButtonBarDelegate {
	// virtual ~GaragePage();

	static GaragePage* create(IconType, GJGarageLayer*, cocos2d::SEL_MenuHandler) = win 0x7fc90;

	bool init(IconType, GJGarageLayer*, cocos2d::SEL_MenuHandler) = win 0x7fd40;
	void onSelect(cocos2d::CCObject* sender) = win 0x80730;
	void updateSelect(cocos2d::CCNode*);

	virtual void listButtonBarSwitchedPage(ListButtonBar*, int);

	GJGarageLayer* m_garageLayer;
	cocos2d::SEL_MenuHandler m_callback;
	cocos2d::CCSprite* m_selectSprite;
	cocos2d::CCNode* m_selectedSprite;
	IconType m_iconType;
	int m_perPage;
}

class GhostTrailDelegate {
}

[[link(android)]]
class GhostTrailEffect {
	// virtual ~GhostTrailEffect();

	static GhostTrailEffect* create();

	TodoReturn doBlendAdditive();
	TodoReturn getBlendFunc();
	TodoReturn getDelegate();
	TodoReturn getGhostColor();
	TodoReturn getPosTarget();
	TodoReturn getPTarget();
	TodoReturn getScaleMod();
	TodoReturn getStartAlpha();
	TodoReturn getTarget();
	TodoReturn runWithTarget(cocos2d::CCSprite*, float, float, float, float, bool);
	TodoReturn stopTrail();
	TodoReturn trailSnapshot(float);

	virtual bool init();
	virtual void draw();
	virtual void setScaleMod(float);
	virtual void setBlendFunc(cocos2d::_ccBlendFunc);
	virtual void setTarget(cocos2d::CCSprite*);
	virtual void setPosTarget(cocos2d::CCSprite*);
	virtual void setPTarget(cocos2d::CCNode*);
	virtual void setStartAlpha(float);
	virtual void setDelegate(GhostTrailDelegate*);
	virtual void setGhostColor(cocos2d::ccColor3B);
}

[[link(android)]]
class GJAccountBackupDelegate {
	virtual TodoReturn backupAccountFinished();
	virtual TodoReturn backupAccountFailed(BackupAccountError);
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

	static GJAccountManager* sharedState() = win 0x79a80;

	TodoReturn addDLToActive(char const*, cocos2d::CCObject*);
	TodoReturn addDLToActive(char const*);
	TodoReturn backupAccount();
	void dataLoaded(DS_Dictionary*) = win 0x7b880;
	void encodeDataTo(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn getDLObject(char const*);
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType);
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	bool isDLActive(char const*);
	TodoReturn linkToAccount(gd::string, gd::string, int, int);
	TodoReturn loginAccount(gd::string, gd::string);
	TodoReturn onBackupAccountCompleted(gd::string, gd::string);
	void onLoginAccountCompleted(gd::string, gd::string) = win 0x7a910;
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onRegisterAccountCompleted(gd::string, gd::string);
	TodoReturn onSyncAccountCompleted(gd::string, gd::string);
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn registerAccount(gd::string, gd::string, gd::string);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn syncAccount();
	void unlinkFromAccount() = win 0x7b6c0;

	virtual bool init() = win 0x7a080;
	virtual gd::string getAccountPassword() const;
	virtual gd::string getAccountUserName() const;
	virtual int getAccountID() const;
	virtual GJAccountRegisterDelegate* getRegisterDelegate() const;
	virtual void setRegisterDelegate(GJAccountRegisterDelegate*);
	virtual GJAccountLoginDelegate* getLoginDelegate() const;
	virtual void setLoginDelegate(GJAccountLoginDelegate*);
	virtual GJAccountDelegate* getAccountDelegate() const;
	virtual void setAccountDelegate(GJAccountDelegate*);
	virtual GJAccountBackupDelegate* getBackupDelegate() const;
	virtual void setBackupDelegate(GJAccountBackupDelegate*);
	virtual GJAccountSyncDelegate* getSyncDelegate() const;
	virtual void setSyncDelegate(GJAccountSyncDelegate*);

	cocos2d::CCDictionary* m_activeDownloads;
	gd::string m_password;
	gd::string m_username;
	int m_accountID;
	GJAccountRegisterDelegate* m_accountRegisterDelegate;
	GJAccountLoginDelegate* m_accountLoginDelegate;
	GJAccountDelegate* m_accountDelegate;
	GJAccountBackupDelegate* m_backupDelegate;
	GJAccountSyncDelegate* m_syncDelegate;
}

[[link(android)]]
class GJAccountRegisterDelegate {
	virtual void registerAccountFinished();
	virtual void registerAccountFailed(AccountError);
}

[[link(android)]]
class GJAccountSyncDelegate {
	virtual TodoReturn syncAccountFinished();
	virtual TodoReturn syncAccountFailed(BackupAccountError);
}

[[link(android)]]
class GJComment : cocos2d::CCNode {
	// virtual ~GJComment();

	static GJComment* create() = win 0x65f40;
	static GJComment* create(cocos2d::CCDictionary*) = win 0x65c00;

	virtual bool init();
	virtual gd::string getComment() const;
	virtual void setComment(gd::string);
	virtual gd::string getUserName();
	virtual void setUserName(gd::string);
	virtual long getCommentID() const;
	virtual void setCommentID(long);
	virtual int getUserID() const;
	virtual void setUserID(int);
	virtual int getLikes() const;
	virtual void setLikes(int);
	virtual int getDislikes() const;
	virtual void setDislikes(int);
	virtual int getLevelID() const;
	virtual void setLevelID(int);
	virtual bool getIsHidden() const;
	virtual void setIsHidden(bool);
	virtual int getAccountID() const;
	virtual void setAccountID(int);

	gd::string m_comment;
	gd::string m_userName;
	long m_commentID;
	int m_userID;
	int m_likeCount; // m_likes
	int m_dislikes;
	int m_levelID;
	bool m_isSpam; // m_isHidden
	int m_accountID;
}

[[link(android)]]
class GJCommentListLayer {
	// virtual ~GJCommentListLayer();

	static GJCommentListLayer* create(BoomListView*, char const*, cocos2d::ccColor4B, float, float);

	bool init(BoomListView*, char const*, cocos2d::ccColor4B, float, float);
}

[[link(android)]]
class GJDropDownLayer : cocos2d::CCLayerColor {
	// virtual ~GJDropDownLayer();
	// GJDropDownLayer();

	static GJDropDownLayer* create(char const*, float);
	static GJDropDownLayer* create(char const*);

	bool init(char const*, float);
	bool init(char const*) = win 0x7ba30;

	virtual void draw();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void customSetup();
	virtual void enterLayer();
	virtual void exitLayer(cocos2d::CCObject*) = win 0x7bee0;
	virtual void showLayer(bool) = win 0x7bf20;
	virtual void hideLayer(bool) = win 0x7bff0;
	virtual void layerVisible();
	virtual void layerHidden();
	virtual void enterAnimFinished();
	virtual void disableUI();
	virtual void enableUI();
	virtual bool getHideBackButton() const;
	virtual void setHideBackButton(bool);

	virtual bool getRemoveOnExit() const;
	virtual void setRemoveOnExit(bool);
	cocos2d::CCLayer* getInternalLayer() const;
	virtual GJDropDownLayerDelegate* getDelegate();
	virtual void setDelegate(GJDropDownLayerDelegate*);

	cocos2d::CCPoint m_endPosition;
	cocos2d::CCPoint m_startPosition;
	cocos2d::CCMenu* m_buttonMenu;
	GJListLayer* m_listLayer;
	bool m_hideBackButton;
	cocos2d::CCLayer* m_mainLayer; // m_internalLayer
	bool m_removeOnExit;
	GJDropDownLayerDelegate* m_delegate;
}

[[link(android)]]
class GJDropDownLayerDelegate {
	virtual TodoReturn dropDownLayerWillClose(GJDropDownLayer*);
}

[[link(android)]]
class GJFlyGroundLayer {
	// virtual ~GJFlyGroundLayer();

	static GJFlyGroundLayer* create();

	virtual bool init();
}

[[link(android)]]
class GJGameLevel : cocos2d::CCNode {
	// virtual ~GJGameLevel();
	// GJGameLevel();

	static GJGameLevel* create() = win 0x621c0;
	static GJGameLevel* create(cocos2d::CCDictionary*) = win 0x613f0;

	TodoReturn createWithCoder(DS_Dictionary*);
	void dataLoaded(DS_Dictionary*);
	void getAudioFileName() = win 0x62710;
	TodoReturn getAverageDifficulty();
	const char* getCoinKey(int coin) = win inline {
		return cocos2d::CCString::createWithFormat("%i_%i", this->m_levelID, coin)->getCString();
	}
	TodoReturn getExtraString();
	TodoReturn getLastBuildPageForTab(int);
	TodoReturn getLengthKey(int);
	TodoReturn getSongName();
	TodoReturn handleStatsConflict(GJGameLevel*);
	void lengthKeyToString(int) = win 0x62420;
	TodoReturn levelWasAltered();
	TodoReturn levelWasSubmitted();
	TodoReturn parseExtraString(gd::string);
	void savePercentage(int percentage, bool isPractice) = win 0x62310;
	void setLastBuildPageForTab(int, int);

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();
	virtual bool init();
	virtual cocos2d::CCDictionary* getLastBuildSave() const;
	virtual void setLastBuildSave(cocos2d::CCDictionary*);
	virtual int getLevelID() const;
	virtual void setLevelID(int);
	virtual gd::string getLevelName() const;
	virtual void setLevelName(gd::string);
	virtual gd::string getLevelDesc() const;
	virtual void setLevelDesc(gd::string);
	virtual gd::string getLevelString() const;
	virtual void setLevelString(gd::string);
	virtual gd::string getUserName() const;
	virtual void setUserName(gd::string);
	virtual gd::string getRecordString() const;
	virtual void setRecordString(gd::string);
	virtual gd::string getUploadDate() const;
	virtual void setUploadDate(gd::string);
	virtual gd::string getUpdateDate() const;
	virtual void setUpdateDate(gd::string);
	virtual int getUserID() const;
	virtual void setUserID(int);
	virtual int getDifficulty() const;
	virtual void setDifficulty(int);
	virtual int getAudioTrack() const;
	virtual void setAudioTrack(int);
	virtual int getSongID() const;
	virtual void setSongID(int);
	virtual int getLevelRev() const;
	virtual void setLevelRev(int);
	virtual int getObjectCount() const;
	virtual void setObjectCount(int);
	virtual int getOrder() const;
	virtual void setOrder(int);
	virtual int getRatings() const;
	virtual void setRatings(int);
	virtual int getRatingsSum() const;
	virtual void setRatingsSum(int);
	virtual int getDownloads() const;
	virtual void setDownloads(int);
	virtual int getCompletes() const;
	virtual void setCompletes(int);
	virtual bool getIsEditable() const;
	virtual void setIsEditable(bool);
	virtual bool getIsVerified() const;
	virtual void setIsVerified(bool);
	virtual bool getIsUploaded() const;
	virtual void setIsUploaded(bool);
	virtual bool getHasBeenModified() const;
	virtual void setHasBeenModified(bool);
	virtual int getLevelVersion() const;
	virtual void setLevelVersion(int);
	virtual int getGameVersion() const;
	virtual void setGameVersion(int);
	virtual int getAttempts() const;
	virtual void setAttempts(int);
	virtual int getJumps() const;
	virtual void setJumps(int);
	virtual int getNormalPercent() const;
	virtual void setNormalPercent(int);
	virtual int getPracticePercent() const;
	virtual void setPracticePercent(int);
	virtual int getLikes() const;
	virtual void setLikes(int);
	virtual int getDislikes() const;
	virtual void setDislikes(int);
	virtual int getLevelLength() const;
	virtual void setLevelLength(int);
	virtual int getFeatured() const;
	virtual void setFeatured(int);
	virtual bool getDemon() const;
	virtual void setDemon(bool);
	virtual int getStars() const;
	virtual void setStars(int);
	virtual bool getAutoLevel() const;
	virtual void setAutoLevel(bool);
	virtual int getCoins() const;
	virtual void setCoins(int);
	virtual int getPassword() const;
	virtual void setPassword(int);
	virtual int getOriginalLevel() const;
	virtual void setOriginalLevel(int);
	virtual bool getTwoPlayerMode() const;
	virtual void setTwoPlayerMode(bool);
	virtual int getFailedPasswordAttempts() const;
	virtual void setFailedPasswordAttempts(int);
	virtual bool getShowedSongWarning() const;
	virtual void setShowedSongWarning(bool);
	virtual int getStarRatings() const;
	virtual void setStarRatings(int);
	virtual int getStarRatingsSum() const;
	virtual void setStarRatingsSum(int);
	virtual int getMaxStarRatings() const;
	virtual void setMaxStarRatings(int);
	virtual int getMinStarRatings() const;
	virtual void setMinStarRatings(int);
	virtual int getDemonVotes() const;
	virtual void setDemonVotes(int);
	virtual int getRateStars() const;
	virtual void setRateStars(int);
	virtual bool getRateFeature() const;
	virtual void setRateFeature(bool);
	virtual gd::string getRateUser() const;
	virtual void setRateUser(gd::string);
	virtual bool getDontSave() const;
	virtual void setDontSave(bool);
	virtual bool getIsHidden() const;
	virtual void setIsHidden(bool);
	virtual int getRequiredCoins() const;
	virtual void setRequiredCoins(int);
	virtual bool getIsUnlocked() const;
	virtual void setIsUnlocked(bool);
	virtual cocos2d::CCPoint getLastCameraPos() const;
	virtual void setLastCameraPos(cocos2d::CCPoint);
	virtual float getLastEditorZoom() const;
	virtual void setLastEditorZoom(float);
	virtual int getLastBuildTab() const;
	virtual void setLastBuildTab(int);
	virtual int getLastBuildPage() const;
	virtual void setLastBuildPage(int);
	virtual int getLastBuildGroupID() const;
	virtual void setLastBuildGroupID(int);
	virtual GJLevelType getLevelType() const;
	virtual void setLevelType(GJLevelType);
	virtual int getM_ID() const;
	virtual gd::string getTempName() const;
	virtual void setTempName(gd::string);
	virtual int getCapacity001() const;
	virtual void setCapacity001(int);
	virtual int getCapacity002() const;
	virtual void setCapacity002(int);
	virtual int getCapacity003() const;
	virtual void setCapacity003(int);
	virtual int getCapacity004() const;
	virtual void setCapacity004(int);

	cocos2d::CCDictionary* m_lastBuildSave;
	int m_levelID;
	gd::string m_levelName;
	gd::string m_levelDesc;
	gd::string m_levelString;
	gd::string m_userName;
	gd::string m_recordString;
	gd::string m_uploadDate;
	gd::string m_updateDate;
	int m_userID;
	int m_difficulty;
	int m_audioTrack;
	int m_songID;
	int m_levelRev;
	int m_objectCount;
	int m_order;
	int m_ratings;
	int m_ratingsSum;
	int m_downloads;
	int m_completes;
	bool m_isEditable;
	bool m_isVerified;
	bool m_isUploaded;
	bool m_hasBeenModified;
	int m_levelVersion;
	int m_gameVersion;
	int m_attempts;
	int m_jumps;
	int m_normalPercent;
	int m_practicePercent;
	int m_likes;
	int m_dislikes;
	int m_levelLength;
	int m_featured;
	bool m_demon;
	int m_stars;
	bool m_autoLevel;
	int m_coins;
	int m_password;
	int m_originalLevel;
	bool m_twoPlayerMode;
	int m_failedPasswordAttempts;
	bool m_showedSongWarning;
	int m_starRatings;
	int m_starRatingsSum;
	int m_maxStarRatings;
	int m_minStarRatings;
	int m_demonVotes;
	int m_rateStars;
	bool m_rateFeature;
	gd::string m_rateUser;
	bool m_dontSave;
	bool m_isHidden;
	int m_requiredCoins;
	bool m_isUnlocked;
	cocos2d::CCPoint m_lastCameraPos;
	float m_lastEditorZoom;
	int m_lastBuildTab;
	int m_lastBuildPage;
	int m_lastBuildGroupID;
	GJLevelType m_levelType;
	int m_m_ID;
	gd::string m_tempName;
	int m_capacity001;
	int m_capacity002;
	int m_capacity003;
	int m_capacity004;
}

[[link(android)]]
class GJGarageLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, GameRateDelegate, ListButtonBarDelegate {
	// virtual ~GJGarageLayer();
	// GJGarageLayer();

	TodoReturn achievementForUnlock(int, UnlockType);
	TodoReturn checkBall(int);
	TodoReturn checkBird(int);
	TodoReturn checkColor(int, bool);
	TodoReturn checkIcon(int);
	TodoReturn checkShip(int);
	TodoReturn descriptionForUnlock(int, UnlockType);
	TodoReturn getLockFrame(int, UnlockType);
	TodoReturn node();
	void onBack(cocos2d::CCObject* sender);
	void onBallIcon(cocos2d::CCObject* sender);
	void onBirdIcon(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onPlayerColor1(cocos2d::CCObject* sender) = win 0x7e990;
	void onPlayerColor2(cocos2d::CCObject* sender) = win 0x7ea80;
	void onPlayerIcon(cocos2d::CCObject* sender) = win 0x7e070;
	void onSelectTab(cocos2d::CCObject* sender) = win 0x7de50;
	void onShipIcon(cocos2d::CCObject* sender);
	void onSpecialIcon(cocos2d::CCObject* sender) = win 0x7e2b0;
	void playRainbowEffect() = win 0x7f970;
	void playShadowEffect();
	TodoReturn scene();
	void selectPage(IconType) = win 0x7de70;
	void setupColorSelect() = win 0x7e360;
	void setupIconSelect() = win 0x7d790;
	void showUnlockPopup(int, UnlockType) = win 0x7ee70;
	TodoReturn updateColorSelect(cocos2d::CCNode*, bool);
	void updatePlayerColors() = win 0x7eb50;
	TodoReturn updatePlayerName(char const*);
	TodoReturn updatePlayerSelect(cocos2d::CCNode*);

	bool checkSpecial(int id) = win inline {
		if (!GameManager::sharedState()->isIconUnlocked(id, IconType::Special)) {
			this->showUnlockPopup(id, UnlockType::Streak);
			return false;
		}

		return true;
	}

	virtual bool init() = win 0x7c5c0;
	virtual void keyBackClicked();
	virtual void textInputOpened(CCTextInputNode*);
	virtual void textInputClosed(CCTextInputNode*);
	virtual void textChanged(CCTextInputNode*);
	virtual void listButtonBarSwitchedPage(ListButtonBar*, int);
	virtual TodoReturn updateRate();
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
	virtual cocos2d::CCSprite* getRateSprite() const;
	virtual void setRateSprite(cocos2d::CCSprite*);
	virtual bool getDoSelect() const;

	CCTextInputNode* m_nameInput;
	SimplePlayer* m_playerPreview;
	cocos2d::CCNode* m_pUnknown1;
	cocos2d::CCNode* m_pUnknown2;
	cocos2d::CCSprite* m_colorSelector1;
	cocos2d::CCSprite* m_colorSelector2;
	CCMenuItemSpriteExtra* m_selectedColor;
	CCMenuItemSpriteExtra* m_selectedColor2;
	void* m_pUnused1;
	void* m_pUnused2;
	cocos2d::CCArray* m_pagesArray;
	float m_colorMinX;
	float m_colorMaxX;
	CCMenuItemToggler* m_tabToggleCube;
	CCMenuItemToggler* m_tabToggleShip;
	CCMenuItemToggler* m_tabToggleBall;
	CCMenuItemToggler* m_tabToggleUfo;
	CCMenuItemToggler* m_tabToggleSpecial;
	cocos2d::CCSprite* m_rateSprite;
	bool m_doSelect;
}

[[link(android)]]
class GJGroundLayer {
	// virtual ~GJGroundLayer();

	static GJGroundLayer* create(int) = win 0x81140;

	TodoReturn deactivateGround();
	TodoReturn fadeInFinished();
	TodoReturn getGroundSprite();
	TodoReturn getGroundWidth();
	TodoReturn getIsActive();
	TodoReturn getLine();
	bool init(int);

	virtual void draw();
	virtual TodoReturn showGround();
	virtual TodoReturn fadeInGround(float);
	virtual TodoReturn fadeOutGround(float);
}

[[link(android)]]
class GJHttpResult {
	// virtual ~GJHttpResult();

	static GJHttpResult* create(bool, gd::string, gd::string, GJHttpType);

	TodoReturn getRequestTag();
	TodoReturn getResult();
	TodoReturn getSuccess();
	TodoReturn getType();
	bool init(bool, gd::string, gd::string, GJHttpType);

	virtual void setSuccess(bool);
	virtual void setResult(gd::string);
	virtual void setRequestTag(gd::string);
	virtual void setType(GJHttpType);
}

[[link(android)]]
class GJListLayer : cocos2d::CCLayerColor {
	// virtual ~GJListLayer();

	static GJListLayer* create(BoomListView*, char const*, cocos2d::ccColor4B, float, float) = win 0x81720;

	bool init(BoomListView*, char const*, cocos2d::ccColor4B, float, float);
}

[[link(android)]]
class GJMapPack {
	// virtual ~GJMapPack();
	// GJMapPack();

	static GJMapPack* create();
	static GJMapPack* create(cocos2d::CCDictionary*);

	TodoReturn completedMaps();
	TodoReturn getColor1();
	TodoReturn getColor2();
	TodoReturn getM_ID();
	TodoReturn getPackCoins();
	TodoReturn getPackDifficulty();
	TodoReturn getPackID();
	TodoReturn getPackLevels();
	TodoReturn getPackName();
	TodoReturn getPackStars();
	TodoReturn hasCompletedMapPack();
	TodoReturn parsePackColors(gd::string, gd::string);
	TodoReturn parsePackLevels(gd::string);
	TodoReturn totalMaps();

	virtual bool init();
	virtual void setPackID(int);
	virtual void setPackDifficulty(int);
	virtual void setPackStars(int);
	virtual void setPackCoins(int);
	virtual void setPackName(gd::string);
	virtual void setPackLevels(gd::string);
	virtual void setColor1(cocos2d::ccColor3B);
	virtual void setColor2(cocos2d::ccColor3B);
}

[[link(android)]]
class GJMoreGamesLayer {
	// virtual ~GJMoreGamesLayer();

	static GJMoreGamesLayer* create();

	cocos2d::CCArray* getMoreGamesList() = win 0x81de0;

	virtual void customSetup();
}

[[link(android)]]
class GJObjectDecoder : cocos2d::CCNode, ObjectDecoderDelegate {
	// virtual ~GJObjectDecoder();

	static GJObjectDecoder* sharedDecoder() = win 0x82330;

	virtual bool init();
	virtual cocos2d::CCObject* getDecodedObject(int, DS_Dictionary*);
}

[[link(android)]]
class GJRotationControl {
	// virtual ~GJRotationControl();
	// GJRotationControl();

	static GJRotationControl* create();

	TodoReturn finishTouch();
	TodoReturn getDelegate();
	void setAngle(float);
	TodoReturn updateSliderPosition(cocos2d::CCPoint);

	virtual bool init();
	virtual void draw();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void setDelegate(GJRotationControlDelegate*);
}

[[link(android)]]
class GJRotationControlDelegate {
	virtual TodoReturn angleChanged(float);
	virtual TodoReturn angleChangeBegin();
	virtual TodoReturn angleChangeEnded();
}

[[link(android)]]
class GJScoreCell : TableViewCell {
	// virtual ~GJScoreCell();
	GJScoreCell(char const*, float, float);

	void loadFromScore(GJUserScore*) = win 0x355f0;
	void onMoreLevels(cocos2d::CCObject* sender) = win 0x36070;
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class GJSearchObject : cocos2d::CCNode {
	// virtual ~GJSearchObject();

	static GJSearchObject* create(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool);
	static GJSearchObject* create(SearchType, gd::string) = win 0x651b0;
	static GJSearchObject* create(SearchType type) = win inline {
		return GJSearchObject::create(type, "");
	}

	TodoReturn createFromKey(char const*);
	const char* getKey() = win 0x65570;
	const char* getNextPageKey() = win 0x65690;
	GJSearchObject* getNextPageObject() = win 0x657c0;
	GJSearchObject* getPrevPageObject() = win 0x65900;
	TodoReturn getSearchKey(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool);
	bool init(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool);

	virtual SearchType getType() const;
	virtual void setType(SearchType);
	virtual gd::string getString() const;
	virtual void setString(gd::string);
	virtual gd::string getDifficultyStr() const;
	virtual void setDifficultyStr(gd::string);
	virtual gd::string getLengthStr() const;
	virtual void setLengthStr(gd::string);
	virtual int getPage() const;
	virtual void setPage(int);
	virtual bool getStar() const;
	virtual void setStar(bool);
	virtual bool getNoStar() const;
	virtual void setNoStar(bool);
	virtual int getTotal() const;
	virtual void setTotal(int);
	virtual bool getUncompleted() const;
	virtual void setUncompleted(bool);
	virtual bool getFeatured() const;
	virtual void setFeatured(bool);
	virtual bool getOriginal() const;
	virtual void setOriginal(bool);
	virtual bool getTwoP() const;
	virtual void setTwoP(bool);
	virtual int getSong() const;
	virtual void setSong(int);
	virtual bool getCustomSong() const;
	virtual void setCustomSong(bool);
	virtual bool getSongFilter() const;
	virtual void setSongFilter(bool);

	SearchType m_searchType; // m_type
	gd::string m_searchQuery; // m_string
	gd::string m_difficulty; // m_difficultyStr
	gd::string m_length; // m_lengthStr
	int m_page;
	bool m_starFilter; // m_star
	bool m_noStarFilter; // m_noStar
	int m_total;
	bool m_uncompletedFilter; // m_uncompleted
	bool m_featuredFilter; // m_featured
	bool m_originalFilter; // m_original
	bool m_twoPlayerFilter; // m_twoP
	int m_songID; // m_song
	bool m_customSongFilter; // m_customSong
	bool m_songFilter;
}

[[link(android)]]
class GJSongBrowser : GJDropDownLayer, FLAlertLayerProtocol {
	// virtual ~GJSongBrowser();
	// GJSongBrowser();

	static GJSongBrowser* create(LevelSettingsObject*) = win 0x82540;

	bool init(LevelSettingsObject*);
	TodoReturn loadPage(int);
	void onDeleteAll(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn setupPageInfo(int, int, int);
	TodoReturn setupSongBrowser(cocos2d::CCArray*);

	virtual void customSetup();
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);

	int m_page;
	CCMenuItemSpriteExtra* m_rightArrow;
	CCMenuItemSpriteExtra* m_leftArrow;
	cocos2d::CCLabelBMFont* m_countText;
	cocos2d::CCPoint m_unknown;
	cocos2d::CCArray* m_downloadedSongs;
	LevelSettingsObject* m_levelSettings;
}

[[link(android)]]
class GJUserScore : cocos2d::CCNode {
	// virtual ~GJUserScore();

	static GJUserScore* create();
	static GJUserScore* create(cocos2d::CCDictionary*) = win 0x64450;

	bool isCurrentUser();

	virtual bool init();
	virtual gd::string getUserName() const;
	virtual void setUserName(gd::string);
	virtual gd::string getUserUDID() const;
	virtual void setUserUDID(gd::string);
	virtual GJScoreType getScoreType() const;
	virtual void setScoreType(GJScoreType);
	virtual int getUserID() const;
	virtual void setUserID(int);
	virtual int getAccountID() const;
	virtual void setAccountID(int);
	virtual int getStars() const;
	virtual void setStars(int);
	virtual int getDemons() const;
	virtual void setDemons(int);
	virtual int getRank() const;
	virtual void setRank(int);
	virtual int getLevels() const;
	virtual void setLevels(int);
	virtual int getCoins() const;
	virtual void setCoins(int);
	virtual int getIcon() const;
	virtual void setIcon(int);
	virtual int getColor1() const;
	virtual void setColor1(int);
	virtual int getColor2() const;
	virtual void setColor2(int);
	virtual int getSpecial() const;
	virtual void setSpecial(int);
	virtual int getIconType() const;
	virtual void setIconType(int);

	gd::string m_userName;
	gd::string m_userUDID;
	GJScoreType m_scoreType;
	int m_userID;
	int m_accountID;
	int m_stars;
	int m_demons;
	int m_playerRank; // m_rank
	int m_creatorPoints; // m_levels
	int m_secretCoins; // m_coins
	int m_iconID; // m_icon
	int m_color1;
	int m_color2;
	int m_special;
	int m_iconType;
}

[[link(android)]]
class GManager : cocos2d::CCNode {
	// virtual ~GManager();

	TodoReturn getCompressedSaveString();
	TodoReturn getSaveString();
	TodoReturn load();
	TodoReturn loadDataFromFile(gd::string);
	TodoReturn loadFromCompressedString(gd::string);
	TodoReturn loadFromString(gd::string);
	TodoReturn save();
	TodoReturn saveData(DS_Dictionary*, gd::string);
	TodoReturn saveGMTo(gd::string);
	TodoReturn tryLoadData(DS_Dictionary*, gd::string);

	virtual bool init();
	virtual TodoReturn setup();
	virtual void encodeDataTo(DS_Dictionary*);
	virtual void dataLoaded(DS_Dictionary*);
	virtual void firstLoad();
	virtual bool getQuickSave() const;
	virtual void setQuickSave(bool);

	gd::string m_fileName;
	bool m_setup;
	bool m_saved;
	bool m_quickSave;
}

[[link(android)]]
class GooglePlayDelegate {
	virtual void googlePlaySignedIn();
}

[[link(android)]]
class GooglePlayManager {
	// virtual ~GooglePlayManager();

	static GooglePlayManager* sharedState();

	TodoReturn getDelegate();
	TodoReturn getDelegate2();
	void googlePlaySignedIn();

	virtual bool init();
	virtual void setDelegate(GooglePlayDelegate*);
	virtual void setDelegate2(GooglePlayDelegate*);
}

[[link(android)]]
class GravityEffectSprite {
	// virtual ~GravityEffectSprite();

	static GravityEffectSprite* create() = win 0xf44b0;

	TodoReturn updateSpritesColor(cocos2d::ccColor3B);

	virtual bool init() = win 0xf4570;
	virtual void draw();
}

[[link(android)]]
class HardStreak : cocos2d::CCDrawNode {
	// virtual ~HardStreak();

	static HardStreak* create() = win 0x83200;

	void addPoint(cocos2d::CCPoint) = win 0x83a60;
	TodoReturn clearBehindXPos(float);
	TodoReturn firstSetup();
	TodoReturn normalizeAngle(double);
	TodoReturn quadCornerOffset(cocos2d::CCPoint, cocos2d::CCPoint, float);
	TodoReturn reset();
	TodoReturn resumeStroke();
	TodoReturn stopStroke();
	void updateStroke(float) = win 0x833e0;

	virtual bool init() = win 0x83000;
	virtual cocos2d::CCPoint getEndPoint() const;
	virtual void setEndPoint(cocos2d::CCPoint);
	virtual float getStrokeScale() const;
	virtual void setStrokeScale(float);
	virtual float getStrokeScaleMod() const;
	virtual void setStrokeScaleMod(float);
	virtual bool getDisableDual() const;
	virtual void setDisableDual(bool);

	cocos2d::CCArray* m_pointArray;
	cocos2d::CCPoint m_currentPoint; // m_endPoint
	float m_waveSize; // m_strokeScale
	float m_pulseSize; // m_strokeScaleMod
	bool m_disableDual;
}

[[link(android)]]
class InfoLayer : FLAlertLayer, LevelCommentDelegate, CommentUploadDelegate, FLAlertLayerProtocol {
	// virtual ~InfoLayer();
	// InfoLayer();

	static InfoLayer* create(GJGameLevel*);

	void confirmReport(cocos2d::CCObject*) = win 0x85490;
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);
	bool init(GJGameLevel*) = win 0x84080;
	bool isCorrect(char const*);
	void loadPage(int) = win 0x85e30;
	void onClose(cocos2d::CCObject* sender) = win 0x85ce0;
	void onComment(cocos2d::CCObject* sender) = win 0x85810;
	void onGetComments(cocos2d::CCObject* sender);
	void onLevelInfo(cocos2d::CCObject* sender) = win 0x859c0;
	void onMore(cocos2d::CCObject* sender) = win 0x85650;
	void onNextPage(cocos2d::CCObject* sender);
	void onOriginal(cocos2d::CCObject* sender) = win 0x85730;
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*);
	void setupLevelInfo() = win 0x85300;
	TodoReturn toggleCommentMode(cocos2d::CCNode*);
	TodoReturn updateCommentModeButtons();
	void updateLevelsLabel();

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void show();
	virtual TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadCommentsFailed(char const*);
	virtual TodoReturn setupPageInfo(gd::string, char const*);
	virtual void commentUploadFinished(int);
	virtual void commentUploadFailed(int);
	virtual TodoReturn updateUserScoreFinished();
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);

	GJGameLevel* m_level;
	gd::string m_commentsKey;
	LoadingCircle* m_loadingCircle;
	cocos2d::CCLabelBMFont* m_noComments;
	GJCommentListLayer* m_list;
	CCMenuItemSpriteExtra* m_rightArrow;
	CCMenuItemSpriteExtra* m_leftArrow;
	ButtonSprite* m_likeBtn;
	ButtonSprite* m_timeBtn;
	CCMenuItemSpriteExtra* m_reportBtn;
	CCMenuItemSpriteExtra* m_loadCommentsBtn;
	int m_itemCount;
	int m_pageStartIdx;
	int m_pageEndIdx;
	int m_page;
	bool m_canUpdateUserScore;
}

[[link(android)]]
class KeybindingsLayer {
	// virtual ~KeybindingsLayer();
	// KeybindingsLayer();

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

	virtual bool init();
	virtual void keyBackClicked();
}

[[link(android)]]
class KeybindingsManager {
	// virtual ~KeybindingsManager();

	static KeybindingsManager* sharedState();

	TodoReturn commandForKey(cocos2d::enumKeyCodes, GJKeyGroup, bool, bool, bool);
	TodoReturn commandForKeyMods(cocos2d::enumKeyCodes, GJKeyGroup);
	TodoReturn commandForKeyNoMods(cocos2d::enumKeyCodes, GJKeyGroup);
	TodoReturn commandToKeyForGroup(GJKeyGroup);
	void dataLoaded(DS_Dictionary*);
	void encodeDataTo(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn getCommandToKeyDict();
	TodoReturn getKeyToCommandDict();
	TodoReturn groupForCommand(GJKeyCommand);
	TodoReturn keyForCommand(GJKeyCommand);
	TodoReturn keyToCommandForGroup(GJKeyGroup);

	virtual bool init();
	virtual void setKeyToCommandDict(cocos2d::CCDictionary*);
	virtual void setCommandToKeyDict(cocos2d::CCDictionary*);
}

[[link(android)]]
class LeaderboardManagerDelegate {
	virtual TodoReturn updateUserScoreFinished();
	virtual TodoReturn updateUserScoreFailed();
	virtual TodoReturn loadLeaderboardFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadLeaderboardFailed(char const*);
}

[[link(android)]]
class LeaderboardsLayer : cocos2d::CCLayer, LeaderboardManagerDelegate {
	// virtual ~LeaderboardsLayer();

	static LeaderboardsLayer* create(LeaderboardState);
	static cocos2d::CCScene* scene(LeaderboardState);

	bool init(LeaderboardState);
	bool isCorrect(char const*);
	void onBack(cocos2d::CCObject* sender);
	void onCreators(cocos2d::CCObject* sender);
	void onGlobal(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onTop(cocos2d::CCObject* sender);
	void onWeek(cocos2d::CCObject* sender);
	void selectLeaderboard(LeaderboardState) = win 0x88b70;
	void setupLevelBrowser(cocos2d::CCArray*) = win 0x889e0;
	void setupTabs() = win 0x884f0;
	void toggleTabButtons() = win 0x88ca0;

	virtual void keyBackClicked();
	virtual TodoReturn updateUserScoreFinished();
	virtual TodoReturn updateUserScoreFailed();
	virtual TodoReturn loadLeaderboardFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadLeaderboardFailed(char const*);
}

[[link(android)]]
class LevelBrowserLayer : cocos2d::CCLayer, LevelManagerDelegate, FLAlertLayerProtocol {
	// virtual ~LevelBrowserLayer();
	// LevelBrowserLayer();

	static LevelBrowserLayer* create(GJSearchObject*) = win 0x894f0;
	static cocos2d::CCScene* scene(GJSearchObject*) = win 0x894b0;

	bool init(GJSearchObject*) = win 0x89590;
	bool isCorrect(char const*);
	void loadPage(GJSearchObject*) = win 0x8a000;
	void onBack(cocos2d::CCObject* sender);
	void onDeleteAll(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onMyOnlineLevels(cocos2d::CCObject* sender);
	void onNew(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender) = win 0x8ac70;
	void onPrevPage(cocos2d::CCObject* sender) = win 0x8ad10;
	void setSearchObject(GJSearchObject*);
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	void updateLevelsLabel() = win 0x8ac10;

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadLevelsFailed(char const*);
	virtual TodoReturn setupPageInfo(gd::string, char const*) = win 0x8aab0;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);

	TextArea* m_noInternet;
	GJListLayer* m_list;
	CCMenuItemSpriteExtra* m_rightArrow;
	CCMenuItemSpriteExtra* m_leftArrow;
	cocos2d::CCArray* m_array;
	GJSearchObject* m_searchObject;
	cocos2d::CCLabelBMFont* m_countText;
	int m_itemCount;
	int m_pageStartIdx;
	int m_pageEndIdx;
	LoadingCircle* m_circle;
}

[[link(android)]]
class LevelCell : TableViewCell {
	// virtual ~LevelCell();
	LevelCell(char const*, float, float);

	void loadCustomLevelCell() = win 0x30360;
	void loadFromLevel(GJGameLevel*);
	void loadLocalLevelCell();
	void onClick(cocos2d::CCObject* sender) = win 0x31cd0;
	void updateBGColor(int) = win 0x31c60;

	virtual bool init();
	virtual void draw();

	GJGameLevel* m_level;
}

[[link(android)]]
class LevelCommentDelegate {
	virtual TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadCommentsFailed(char const*);
	virtual TodoReturn updateUserScoreFinished();
	virtual TodoReturn setupPageInfo(gd::string, char const*);
}

[[link(android)]]
class LevelDeleteDelegate {
	virtual TodoReturn levelDeleteFinished(int);
	virtual TodoReturn levelDeleteFailed(int);
}

[[link(android)]]
class LevelDownloadDelegate {
	virtual TodoReturn levelDownloadFinished(GJGameLevel*);
	virtual TodoReturn levelDownloadFailed(int);
}

[[link(android)]]
class LevelEditorLayer : cocos2d::CCLayer, LevelSettingsDelegate, GameplayDelegate {
	// virtual ~LevelEditorLayer();
	// LevelEditorLayer() = win 0x8c080;

	static LevelEditorLayer* create(GJGameLevel*) = win 0x8c220;

	TodoReturn addObjectFromString(gd::string);
	void addSpecial(GameObject*) = win 0x8ed10;
	TodoReturn addToRedoList(UndoObject*);
	TodoReturn addToSection(GameObject*);
	void addToUndoList(UndoObject*, bool) = win 0x8ea60;
	TodoReturn animateInDualGround(GameObject*, float, bool);
	void checkCollisions(PlayerObject*, float) = win 0x8f4b0;
	TodoReturn createBackground();
	TodoReturn createObject(int, cocos2d::CCPoint);
	TodoReturn createObjectsFromSetup(gd::string);
	void createObjectsFromString(gd::string, bool) = win 0x8ce20;
	TodoReturn enterDualMode(GameObject*, bool);
	TodoReturn getAllObjects();
	TodoReturn getGridPos(cocos2d::CCPoint);
	TodoReturn getGroundHeightForMode(int);
	TodoReturn getLevelString();
	TodoReturn getObjectRect(GameObject*, bool);
	TodoReturn getOtherPlayer(PlayerObject*);
	TodoReturn getRelativeOffset(GameObject*);
	TodoReturn getSectionCount();
	TodoReturn handleAction(bool, cocos2d::CCArray*);
	TodoReturn hasAction(bool);
	bool init(GJGameLevel*) = win 0x8c2c0;
	TodoReturn objectAtPosition(cocos2d::CCPoint);
	TodoReturn objectIntersectsCircle(GameObject*, GameObject*);
	TodoReturn objectsAtPosition(cocos2d::CCPoint);
	void objectsInRect(cocos2d::CCRect) = win 0x8de90;
	void onPausePlaytest() = win 0x90f10;
	void onPlaytest() = win 0x909f0;
	void onResumePlaytest() = win 0x90fc0;
	TodoReturn onStopPlaytest();
	TodoReturn playerWillSwitchMode(PlayerObject*, GameObject*);
	void playMusic() = win 0x90d70;
	void pushButton(int, bool) = win 0x90800;
	TodoReturn redoLastAction();
	void releaseButton(int, bool) = win 0x908f0;
	TodoReturn removeAllObjects();
	TodoReturn removeAllObjectsOfType(int);
	TodoReturn removeBackground();
	TodoReturn removeObject(GameObject*, bool);
	TodoReturn removeObjectFromSection(GameObject*);
	TodoReturn removePlayer2();
	void removeSpecial(GameObject*) = win 0x8ee30;
	TodoReturn reorderObjectSection(GameObject*);
	void rotationForSlopeNearObject(GameObject*) = win 0x8d5c0;
	TodoReturn scene(GJGameLevel*);
	TodoReturn sectionForPos(cocos2d::CCPoint);
	void setStartPosObject(StartPosObject*);
	TodoReturn setupLevelStart(LevelSettingsObject*);
	void sortBatchnodeChildren(float);
	TodoReturn spawnPlayer2();
	TodoReturn switchToFlyMode(PlayerObject*, GameObject*, bool, int);
	TodoReturn switchToRollMode(PlayerObject*, GameObject*, bool);
	TodoReturn toggleDualMode(GameObject*, bool, PlayerObject*, bool);
	TodoReturn typeExistsAtPosition(int, cocos2d::CCPoint, bool, bool, float);
	TodoReturn undoLastAction();
	TodoReturn updateDualGround(PlayerObject*, int, bool);
	TodoReturn updateOBB2(cocos2d::CCRect);
	TodoReturn updateTimeMod(float);
	callback void updateVisibility(float) = win 0x8ef20;
	TodoReturn validGroup(GameObject*);

	virtual void update(float) = win 0x91620;
	virtual void draw();
	virtual void levelSettingsUpdated();
	virtual void flipGravity(PlayerObject*, bool, bool) = win 0x905b0;
	virtual int getGroupIDFilter() const;
	virtual void setGroupIDFilter(int);
	virtual EditorUI* getUILayer() const;
	virtual int getObjectCount() const;
	virtual void setObjectCount(int);
	virtual TodoReturn getGridLayer() const;
	virtual cocos2d::CCLayer* getGameLayer() const;
	virtual GJGameLevel* getLevel() const;
	virtual LevelSettingsObject* getLevelSettings() const;
	virtual int getLevelDistance() const;
	virtual int getPlayerState() const;
	virtual PlayerObject* getPlayer() const;
	virtual PlayerObject* getPlayer2() const;
	virtual bool getDualMode() const;
	virtual float getMinPortalY() const;
	virtual float getMaxPortalY() const;
	virtual float getClkTimer() const;
	virtual gd::string getOldLevelString() const;

	bool m_bUnknown1;
	int m_iUnknown1;
	int m_iUnknown2;
	int m_groupIDFilter;
	StartPosObject* m_startPosObject;
	float m_gameLayerScale;
	OBB2D* m_pUnknown1;
	OBB2D* m_pUnknown2;
	cocos2d::CCSprite* m_deathSprite;
	float m_fUnknown1;
	float m_fUnknown2;
	float m_fUnknown3;
	bool m_needsAddP2Point;
	bool m_bUnknown2;
	GameObject* m_lastVehicle;
	GameObject* m_dualPortal;
	EditorUI* m_uiLayer;
	cocos2d::CCSprite* m_bgSprite;
	cocos2d::CCSpriteBatchNode* m_batchNode;
	cocos2d::CCSpriteBatchNode* m_playerBatchNode;
	cocos2d::CCArray* m_levelSections;
	cocos2d::CCArray* m_undoList;
	cocos2d::CCArray* m_redoList;
	cocos2d::CCPoint m_cameraPos;
	int m_objectCount;
	DrawGridLayer* m_gridLayer;
	cocos2d::CCLayer* m_gameLayer;
	GJGameLevel* m_level;
	LevelSettingsObject* m_levelSettings;
	int m_levelDistance;
	int m_playerState;
	PlayerObject* m_player;
	PlayerObject* m_player2;
	bool m_dualMode;
	float m_minPortalY;
	float m_maxPortalY;
	float m_clkTimer;
	gd::string m_oldLevelString;
}

[[link(android)]]
class LevelFeatureLayer {
	// virtual ~LevelFeatureLayer();
	// LevelFeatureLayer();

	static LevelFeatureLayer* create(int);

	bool init(int);
	void onClose(cocos2d::CCObject* sender);
	void onDown(cocos2d::CCObject* sender);
	void onDown2(cocos2d::CCObject* sender);
	void onRemoveValues(cocos2d::CCObject* sender);
	void onSetFeatured(cocos2d::CCObject* sender);
	void onUp(cocos2d::CCObject* sender);
	void onUp2(cocos2d::CCObject* sender);
	TodoReturn updateStars();

	virtual void keyBackClicked();
}

[[link(android)]]
class LevelInfoLayer : cocos2d::CCLayer, LevelDownloadDelegate, LevelUpdateDelegate, RateLevelDelegate, LikeItemDelegate, FLAlertLayerProtocol, LevelDeleteDelegate, NumberInputDelegate {
	// virtual ~LevelInfoLayer();
	// LevelInfoLayer();

	static LevelInfoLayer* create(GJGameLevel*) = win 0x9bb70;

	TodoReturn confirmClone(cocos2d::CCObject*);
	void confirmDelete(cocos2d::CCObject*) = win 0x9e4c0;
	TodoReturn confirmOwnerDelete(cocos2d::CCObject*);
	TodoReturn downloadLevel();
	TodoReturn incrementDislikes();
	TodoReturn incrementLikes();
	bool init(GJGameLevel*) = win 0x9bc10;
	void onBack(cocos2d::CCObject* sender);
	void onClone(cocos2d::CCObject* sender) = win 0x9e2c0;
	void onDelete(cocos2d::CCObject* sender);
	void onFeatured(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onLevelInfo(cocos2d::CCObject* sender) = win 0x9ed10;
	void onLike(cocos2d::CCObject* sender);
	void onOwnerDelete(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender) = win 0x9dca0;
	void onPlayReplay(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender);
	void onRateStars(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn scene(GJGameLevel*);
	void setupLevelInfo() = win 0x9d3f0;
	void setupProgressBars() = win 0x9ce60;
	bool shouldDownloadLevel() = win 0x9cc40;
	void showSongWarning() = win 0x9dc40;
	TodoReturn showUpdateAlert(UpdateResponse);
	void tryCloneLevel(cocos2d::CCObject*) = win 0x9dfd0;
	TodoReturn updateLabelValues();
	TodoReturn updateSideButtons();

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void numberInputClosed(NumberInputLayer*);
	virtual TodoReturn levelDownloadFinished(GJGameLevel*);
	virtual TodoReturn levelDownloadFailed(int);
	virtual TodoReturn levelUpdateFinished(GJGameLevel*, UpdateResponse);
	virtual TodoReturn levelUpdateFailed(int);
	virtual TodoReturn levelDeleteFinished(int);
	virtual TodoReturn levelDeleteFailed(int);
	virtual TodoReturn rateLevelClosed();
	virtual void likedItem(LikeItemType, int, bool);
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x9f2d0;

	bool m_willExitScene;
	cocos2d::CCMenu* m_playBtnMenu;
	GJGameLevel* m_level;
	CCMenuItemSpriteExtra* m_diffRateBtn;
	CCMenuItemSpriteExtra* m_likeBtn;
	CCMenuItemSpriteExtra* m_starRateBtn;
	void* m_unknown1;
	cocos2d::CCLabelBMFont* m_lengthLabel;
	cocos2d::CCLabelBMFont* m_downloadsLabel;
	cocos2d::CCLabelBMFont* m_likesLabel;
	void* m_unknown2;
	cocos2d::CCSprite* m_likesIcon;
	GJLevelType m_levelType;
	bool m_levelNeedsDownload;
	LoadingCircle* m_loadingCircle;
	cocos2d::CCSprite* m_difficultyIcon;
	cocos2d::CCSprite* m_starIcon;
	cocos2d::CCLabelBMFont* m_starsLabel;
	cocos2d::CCSprite* m_featuredCoin;
}

[[link(android)]]
class LevelManagerDelegate {
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadLevelsFailed(char const*);
	virtual TodoReturn setupPageInfo(gd::string, char const*);
}

[[link(android)]]
class LevelPage : cocos2d::CCLayer {
	// virtual ~LevelPage();
	// LevelPage();

	static LevelPage* create(GJGameLevel*);

	TodoReturn addSecretCoin();
	bool init(GJGameLevel*);
	void onInfo(cocos2d::CCObject* sender) = win 0xa8fb0;
	void onPlay(cocos2d::CCObject* sender) = win 0xa8bb0;
	TodoReturn playCoinEffect();
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn updateDynamicPage(GJGameLevel*);

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();

	bool m_unknown1;
	GJGameLevel* m_level;
	cocos2d::CCMenu* m_unknown2;
	cocos2d::extension::CCScale9Sprite m_unknown3;
	cocos2d::CCLabelBMFont* m_unknown4;
	cocos2d::CCLabelBMFont* m_unknown5;
	cocos2d::CCLabelBMFont* m_unknown6;
	cocos2d::CCLabelBMFont* m_unknown7;
	float m_unknown8;
	cocos2d::CCSprite* m_unknown9;
	cocos2d::CCSprite* m_unknown10;
	cocos2d::CCSprite* m_unknown11;
	cocos2d::CCSprite* m_unknown12;
	cocos2d::CCSize m_unknown13;
	cocos2d::CCArray* m_unknown14;
	cocos2d::CCArray* m_unknown15;
	cocos2d::CCArray* m_unknown16;
	cocos2d::CCArray* m_unknown17;
	GameObject* m_unknown18;
}

[[link(android)]]
class LevelSearchLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol {
	// virtual ~LevelSearchLayer();

	static LevelSearchLayer* create();

	TodoReturn checkDiff(int);
	TodoReturn checkTime(int);
	void clearFilters() = win 0xa1000;
	TodoReturn confirmClearFilters(cocos2d::CCObject*);
	TodoReturn getDiffKey(int);
	TodoReturn getLevelLenKey();
	TodoReturn getSearchDiffKey();
	GJSearchObject* getSearchObject(SearchType, gd::string) = win 0xa1b30;
	TodoReturn getTimeKey(int);
	void onBack(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onMagic(cocos2d::CCObject* sender);
	void onMoreOptions(cocos2d::CCObject* sender);
	void onMostDownloaded(cocos2d::CCObject* sender);
	void onMostLikes(cocos2d::CCObject* sender);
	void onMostRecent(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);
	void onStarAward(cocos2d::CCObject* sender);
	void onTrending(cocos2d::CCObject* sender);
	TodoReturn scene();
	TodoReturn toggleDifficulty(cocos2d::CCObject*);
	TodoReturn toggleDifficultyNum(int, bool);
	TodoReturn toggleStar(cocos2d::CCObject*);
	TodoReturn toggleTime(cocos2d::CCObject*);
	TodoReturn toggleTimeNum(int, bool);
	TodoReturn updateSearchLabel(char const*);

	virtual bool init() = win 0x9f830;
	virtual void keyBackClicked();
	virtual void textInputOpened(CCTextInputNode*);
	virtual void textInputClosed(CCTextInputNode*);
	virtual void textChanged(CCTextInputNode*);
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xa1700;
}

[[link(android)]]
class LevelSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate, DynamicScrollDelegate {
	// virtual ~LevelSelectLayer();

	static LevelSelectLayer* create(int) = win 0xa5930;
	static cocos2d::CCScene* scene(int);

	cocos2d::ccColor3B colorForPage(int);
	cocos2d::ccColor3B getColorValue(int, int, float);
	bool init(int) = win 0xa59d0;
	void onBack(cocos2d::CCObject* sender);
	void onDownload(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onNext(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onPrev(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void updatePageWithObject(cocos2d::CCObject*, cocos2d::CCObject*);
	virtual void scrollLayerMoved(cocos2d::CCPoint);

	float m_width;
	cocos2d::CCSprite* m_backgroundSprite;
	cocos2d::CCSprite* m_groundSprite;
	BoomScrollLayer* m_scrollLayer;
	int m_unknown;
	int m_scrolls;
	bool m_masterDetectiveUnlocked;
}

[[link(android)]]
class LevelSettingsDelegate {
	virtual void levelSettingsUpdated();
}

[[link(android)]]
class LevelSettingsLayer {
	// virtual ~LevelSettingsLayer();
	// LevelSettingsLayer();

	static LevelSettingsLayer* create(LevelSettingsObject*) = win 0x96fb0;

	void audioNext(cocos2d::CCObject*) = win 0x9a360;
	void audioPrevious(cocos2d::CCObject*) = win 0x9a3e0;
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = win 0x99830;
	TodoReturn getDelegate();
	TodoReturn getEditorLayer();
	bool init(LevelSettingsObject*) = win 0x97050;
	void on3DLine(cocos2d::CCObject* sender) = win 0x9a090;
	void onBG(cocos2d::CCObject* sender) = win 0x99f10;
	void onBGArt(cocos2d::CCObject* sender) = win 0x9a810;
	void onClose(cocos2d::CCObject* sender) = win 0x99dc0;
	void onCol1(cocos2d::CCObject* sender) = win 0x99fd0;
	void onCol2(cocos2d::CCObject* sender) = win 0x9a000;
	void onCol3(cocos2d::CCObject* sender) = win 0x9a030;
	void onCol4(cocos2d::CCObject* sender) = win 0x9a060;
	void onDualMode(cocos2d::CCObject* sender) = win 0x99ab0;
	void onG(cocos2d::CCObject* sender) = win 0x99f40;
	void onGArt(cocos2d::CCObject* sender) = win 0x9a850;
	void onGravityFlipped(cocos2d::CCObject* sender) = win 0x99b10;
	void onLine(cocos2d::CCObject* sender) = win 0x99f70;
	void onMiniMode(cocos2d::CCObject* sender) = win 0x99a80;
	void onObj(cocos2d::CCObject* sender) = win 0x99fa0;
	void onOpenCustomSong(cocos2d::CCObject* sender) = win 0x9a690;
	void onSelectMode(cocos2d::CCObject* sender) = win 0x99b40;
	void onSelectSpeed(cocos2d::CCObject* sender) = win 0x99cd0;
	void onSongMode(cocos2d::CCObject* sender) = win 0x9a460;
	void onTwoPlayerMode(cocos2d::CCObject* sender) = win 0x99ae0;
	void onTwoPlayerModeInfo(cocos2d::CCObject* sender) = win 0x996e0;
	TodoReturn selectSong(int);
	TodoReturn showCustomSongSelect();
	void showPicker(int, SettingsColorObject*) = win 0x99e60;
	void updateAudioLabel() = win 0x9a230;

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn colorSelectClosed(ColorSelectPopup*);
	virtual TodoReturn customSongLayerClosed();
	virtual TodoReturn selectArtClosed(SelectArtLayer*);
	virtual void setDelegate(LevelSettingsDelegate*);
	virtual void setEditorLayer(LevelEditorLayer*);
}

[[link(android)]]
class LevelSettingsObject : cocos2d::CCNode {
	// virtual ~LevelSettingsObject();
	// LevelSettingsObject();

	static LevelSettingsObject* create();

	TodoReturn getSaveString();
	TodoReturn objectFromDict(cocos2d::CCDictionary*);
	TodoReturn objectFromString(gd::string);
	TodoReturn offsetMusic();
	TodoReturn setupColorsFromLegacyMode(cocos2d::CCDictionary*);
	TodoReturn updateColors(cocos2d::ccColor3B, cocos2d::ccColor3B);

	virtual bool init();
	virtual SettingsColorObject* getBackgroundColor() const;
	virtual void setBackgroundColor(SettingsColorObject*);
	virtual SettingsColorObject* getGroundColor() const;
	virtual void setGroundColor(SettingsColorObject*);
	virtual SettingsColorObject* getLineColor() const;
	virtual void setLineColor(SettingsColorObject*);
	virtual SettingsColorObject* getObjectColor() const;
	virtual void setObjectColor(SettingsColorObject*);
	virtual SettingsColorObject* getDLineColor() const;
	virtual void setDLineColor(SettingsColorObject*);
	virtual SettingsColorObject* getCustomColor01() const;
	virtual void setCustomColor01(SettingsColorObject*);
	virtual SettingsColorObject* getCustomColor02() const;
	virtual void setCustomColor02(SettingsColorObject*);
	virtual SettingsColorObject* getCustomColor03() const;
	virtual void setCustomColor03(SettingsColorObject*);
	virtual SettingsColorObject* getCustomColor04() const;
	virtual void setCustomColor04(SettingsColorObject*);
	virtual int getStartMode() const;
	virtual void setStartMode(int);
	virtual int getStartSpeed() const;
	virtual void setStartSpeed(int);
	virtual bool getStartMiniMode() const;
	virtual void setStartMiniMode(bool);
	virtual bool getStartDualMode() const;
	virtual void setStartDualMode(bool);
	virtual bool getTwoPlayerMode() const;
	virtual void setTwoPlayerMode(bool);
	virtual float getSongOffset() const;
	virtual void setSongOffset(float);
	virtual bool getFadeIn() const;
	virtual void setFadeIn(bool);
	virtual bool getFadeOut() const;
	virtual void setFadeOut(bool);
	virtual int getBGIdx() const;
	virtual void setBGIdx(int);
	virtual int getGIdx() const;
	virtual void setGIdx(int);
	virtual bool getIsLimited() const;
	virtual void setIsLimited(bool);
	virtual bool getGravityFlipped() const;
	virtual void setGravityFlipped(bool);
	virtual GJGameLevel* getLevel() const;
	virtual void setLevel(GJGameLevel*);
	virtual gd::string getSongString() const;
	virtual void setSongString(gd::string);
	virtual bool getSongChanged() const;
	virtual void setSongChanged(bool);

	SettingsColorObject* m_backgroundColor;
	SettingsColorObject* m_groundColor;
	SettingsColorObject* m_lineColor;
	SettingsColorObject* m_objectColor;
	SettingsColorObject* m_3DLineColor;
	SettingsColorObject* m_customColor01;
	SettingsColorObject* m_customColor02;
	SettingsColorObject* m_customColor03;
	SettingsColorObject* m_customColor04;
	int m_startMode;
	int m_startSpeed;
	bool m_startMini; // m_startMiniMode
	bool m_startDual; // m_startDualMode
	bool m_twoPlayerMode;
	float m_songOffset;
	bool m_fadeIn;
	bool m_fadeOut;
	int m_backgroundIndex; // m_BGIdx
	int m_groundIndex; // m_GIdx
	bool m_startsWithStartPos; // m_isLimited
	bool m_isFlipped; // m_isGravityFlipped
	GJGameLevel* m_level;
	gd::string m_guidelineString; // m_songString
	bool m_songChanged;
}

[[link(android)]]
class LevelTools {
	static int artistForAudio(int) = win 0xa9ea0;
	static gd::string fbURLForArtist(int);
	TodoReturn getAudioBPM(int);
	static gd::string getAudioFileName(int) = win 0xa9cc0;
	TodoReturn getAudioString(int);
	static gd::string getAudioTitle(int) = win 0xa9ad0;
	static GJGameLevel* getLevel(int, bool) = win 0xa9280;
	TodoReturn getSongObject(int);
	static gd::string nameForArtist(int) = win 0xa9f20;
	static gd::string ngURLForArtist(int) = win 0xaa1c0;
	TodoReturn offsetBPMForTrack(int);
	float timeForXPos(float, cocos2d::CCArray*, int) = win 0xaa5c0;
	static gd::string urlForAudio(int) = win 0xa9fe0;
	static gd::string ytURLForArtist(int) = win 0xaa280;
}

[[link(android)]]
class LevelUpdateDelegate {
	virtual TodoReturn levelUpdateFinished(GJGameLevel*, UpdateResponse);
	virtual TodoReturn levelUpdateFailed(int);
}

[[link(android)]]
class LevelUploadDelegate {
	virtual void levelUploadFinished(GJGameLevel*);
	virtual void levelUploadFailed(GJGameLevel*);
}

[[link(android)]]
class LikeItemDelegate {
	virtual void likedItem(LikeItemType, int, bool);
}

[[link(android)]]
class LikeItemLayer {
	// virtual ~LikeItemLayer();
	// LikeItemLayer();

	static LikeItemLayer* create(LikeItemType, int);

	TodoReturn getDelegate();
	bool init(LikeItemType, int);
	void onClose(cocos2d::CCObject* sender);
	void onDislike(cocos2d::CCObject* sender);
	void onLike(cocos2d::CCObject* sender);
	TodoReturn triggerLike(bool);

	virtual void keyBackClicked();
	virtual void setDelegate(LikeItemDelegate*);
}

[[link(android)]]
class ListButtonBar : cocos2d::CCNode {
	// virtual ~ListButtonBar();

	static ListButtonBar* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int) = win 0x19ae0;

	TodoReturn getPage();
	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int);
	void onLeft(cocos2d::CCObject* sender);
	void onRight(cocos2d::CCObject* sender);

	void goToPage(int page) = win inline {
		this->m_scrollLayer->getTotalPages();
		this->m_scrollLayer->instantMoveToPage(page - 1);
		this->m_scrollLayer->instantMoveToPage(page);
		if (this->m_delegate) {
			this->m_delegate->listButtonBarSwitchedPage(this, page);
		}
	}

	virtual ListButtonBarDelegate* getDelegate() const;
	virtual void setDelegate(ListButtonBarDelegate*);

	BoomScrollLayer* m_scrollLayer;
	cocos2d::CCArray* m_pages;
	ListButtonBarDelegate* m_delegate;
}

[[link(android)]]
class ListButtonBarDelegate {
	virtual void listButtonBarSwitchedPage(ListButtonBar*, int) {}
}

[[link(android)]]
class ListButtonPage {
	// virtual ~ListButtonPage();

	static ListButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float);

	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float);
}

[[link(android)]]
class ListCell {
	// virtual ~ListCell();
	ListCell(char const*, float, float);

	TodoReturn loadFromObject(cocos2d::CCObject*, int, int, int);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class LoadingCircle : cocos2d::CCLayerColor {
	// virtual ~LoadingCircle();

	static LoadingCircle* create() = win 0x1a4f0;

	void fadeAndRemove() = win 0x1a780;
	void show() = win 0x1a6b0;

	virtual bool init();
	virtual void draw();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual cocos2d::CCSprite* getCircle() const;
	virtual cocos2d::CCNode* getTargetScene() const;
	virtual void setTargetScene(cocos2d::CCNode*);
	virtual bool getDarkOverlay() const;
	virtual void setDarkOverlay(bool);

	cocos2d::CCSprite* m_sprite; // m_circle
	cocos2d::CCLayer* m_parentLayer; // m_targetScene
	bool m_fade; // m_darkOverlay
}

[[link(android)]]
class LoadingLayer : cocos2d::CCLayer {
	// virtual ~LoadingLayer();

	static LoadingLayer* create(bool) = win 0xab0b0;
	static cocos2d::CCScene* scene(bool reload) = win inline {
		auto scene = cocos2d::CCScene::create();
		scene->addChild(LoadingLayer::create(reload));
		return scene;
	}

	const char* getLoadingString() = win 0xabef0;
	bool init(bool) = win 0xab150;
	void loadAssets() = win 0xab9a0;
	void loadingFinished() = win 0xad850;
	void updateProgress(int);

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

	static LocalLevelManager* sharedState() = win 0xac180;

	TodoReturn getAllLevelsInDict();
	TodoReturn getAllLevelsWithName(gd::string);
	TodoReturn getLevelsInNameGroups();
	gd::string getMainLevelString(int) = win 0xac310;
	TodoReturn markLevelsAsUnmodified();
	TodoReturn reorderLevels();
	TodoReturn updateLevelOrder();
	TodoReturn updateLevelRevision();

	virtual bool init() = win 0xac2c0;
	virtual void encodeDataTo(DS_Dictionary*) = win 0xacd50;
	virtual void dataLoaded(DS_Dictionary*) = win 0xacd80;
	virtual void firstLoad() = win 0xacd30;
	virtual cocos2d::CCArray* getLocalLevels() const = win 0xae90;
	virtual void setLocalLevels(cocos2d::CCArray*) = win 0x8bc10;

	cocos2d::CCDictionary* m_mainLevels;
	cocos2d::CCArray* m_localLevels;
}

[[link(android)]]
class MapPackCell {
	// virtual ~MapPackCell();
	MapPackCell(char const*, float, float);

	TodoReturn loadFromMapPack(GJMapPack*);
	void onClaimReward(cocos2d::CCObject* sender);
	void onClick(cocos2d::CCObject* sender);
	TodoReturn playCompleteEffect();
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class MenuGameLayer : cocos2d::CCLayer {
	// virtual ~MenuGameLayer();
	// MenuGameLayer() = win 0xad2f0;

	static MenuGameLayer* create() = win 0xad430;

	void destroyPlayer() = win 0xaec50;
	TodoReturn getBGColor(int) = win 0xadea0;
	TodoReturn resetPlayer() = win 0xae4f0;
	TodoReturn tryJump(float) = win 0xadff0;
	TodoReturn updateColor(float) = win 0xaddc0;

	virtual void update(float) = win 0xae210;
	virtual bool init() = win 0xad4d0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0xaef10;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
}

[[link(android)]]
class MenuLayer : cocos2d::CCLayer, FLAlertLayerProtocol, GooglePlayDelegate {
	// virtual ~MenuLayer();

	static cocos2d::CCScene* scene(bool) = win 0xaf1a0;

	TodoReturn endGame();
	TodoReturn node() = win 0xaf100;
	void onAchievements(cocos2d::CCObject* sender) = win 0xb01a0;
	void onCreator(cocos2d::CCObject* sender) = win 0xb0380;
	void onEveryplay(cocos2d::CCObject* sender);
	void onFacebook(cocos2d::CCObject* sender) = win 0xafe90;
	void onFullVersion(cocos2d::CCObject* sender);
	void onGameCenter(cocos2d::CCObject* sender);
	void onGarage(cocos2d::CCObject* sender) = win 0xb0460;
	void onGooglePlayGames(cocos2d::CCObject* sender);
	void onMoreGames(cocos2d::CCObject* sender) = win 0xb0070;
	void onOptions(cocos2d::CCObject* sender) = win 0xb02e0;
	void onOptionsInstant() = win 0xb0310;
	void onPlay(cocos2d::CCObject* sender) = win 0xb0200;
	void onQuit(cocos2d::CCObject* sender) = win 0xb05a0;
	void onRobTop(cocos2d::CCObject* sender) = win 0xafe70;
	void onStats(cocos2d::CCObject* sender) = win 0xb0350;
	void onTrailer(cocos2d::CCObject* sender);
	void onTwitter(cocos2d::CCObject* sender) = win 0xaff30;
	void onYouTube(cocos2d::CCObject* sender) = win 0xaffd0;
	void openOptions(bool);
	TodoReturn showGCQuestion();
	TodoReturn showPirateMessage();
	TodoReturn syncPlatformAchievements(float);
	TodoReturn tryShowAd(float);
	void willClose();

	virtual bool init() = win 0xaf210;
	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void googlePlaySignedIn();
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class MoreOptionsLayer : FLAlertLayer, TextInputDelegate, GooglePlayDelegate {
	// virtual ~MoreOptionsLayer();

	static MoreOptionsLayer* create() = win 0xd1220;

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
	void onGPSignIn(cocos2d::CCObject* sender);
	void onGPSignOut(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onKeybindings(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onSongBrowser(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);
	TodoReturn pageKey(int);
	TodoReturn toggleGP();

	virtual bool init() = win 0xd12c0;
	virtual void keyBackClicked();
	virtual void textInputShouldOffset(CCTextInputNode*, float);
	virtual void textInputReturn(CCTextInputNode*);
	virtual void googlePlaySignedIn();
}

[[link(android)]]
class MoreSearchLayer : FLAlertLayer, TextInputDelegate {
	// virtual ~MoreSearchLayer();
	// MoreSearchLayer();

	static MoreSearchLayer* create();

	TodoReturn audioNext(cocos2d::CCObject*);
	TodoReturn audioPrevious(cocos2d::CCObject*);
	CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = win 0xa52a0;
	void onClose(cocos2d::CCObject* sender);
	void onFeatured(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onNoStar(cocos2d::CCObject* sender);
	void onOriginal(cocos2d::CCObject* sender);
	void onSongFilter(cocos2d::CCObject* sender);
	void onSongMode(cocos2d::CCObject* sender);
	void onTwoPlayer(cocos2d::CCObject* sender);
	void onUncompleted(cocos2d::CCObject* sender);
	TodoReturn selectSong(int);
	TodoReturn toggleSongNodes(bool, bool);
	TodoReturn updateAudioLabel();

	virtual bool init() = win 0xa3620;
	virtual void keyBackClicked();
	virtual void textInputShouldOffset(CCTextInputNode*, float);
	virtual void textInputReturn(CCTextInputNode*);

	cocos2d::CCLabelBMFont* m_audioTrackName;
	CCMenuItemSpriteExtra* m_songLeftBtn;
	CCMenuItemSpriteExtra* m_songRightBtn;
	CCMenuItemSpriteExtra* m_normalBtn;
	CCMenuItemSpriteExtra* m_customBtn;
	CCTextInputNode* m_enterSongID;
	cocos2d::CCArray* m_songTabNodes;
	cocos2d::CCArray* m_originalSongNodes;
	cocos2d::CCArray* m_customSongNodes;
}

[[link(android)]]
class MoreVideoOptionsLayer : FLAlertLayer {
	// virtual ~MoreVideoOptionsLayer();

	static MoreVideoOptionsLayer* create();

	void addToggle(char const*, char const*, char const*) = win 0xd5000;
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
	void onToggle(cocos2d::CCObject* sender) = win 0xd5930;
	TodoReturn pageKey(int);

	virtual bool init() = win 0xd4bd0;
	virtual void keyBackClicked();

	int m_lastPage;
	int m_optionsCount;
	int m_page;
	cocos2d::CCDictionary* m_layers;
	cocos2d::CCDictionary* m_toggles;
	CCMenuItemSpriteExtra* m_prevPageBtn;
	CCMenuItemSpriteExtra* m_nextPageBtn;
}

[[link(android)]]
class MultilineBitmapFont {
	// virtual ~MultilineBitmapFont();
	// MultilineBitmapFont();

	TodoReturn createWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int);
	TodoReturn getSizeWidth();
	TodoReturn getTextHeight();
	TodoReturn getTextPos();
	TodoReturn getTextWidth();
	TodoReturn initWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int);
	TodoReturn readColorInfo(gd::string);
	TodoReturn stringWithMaxWidth(gd::string, float, float);

	virtual void setOpacity(unsigned char);
}

[[link(android)]]
class MusicDelegateHandler {
	// virtual ~MusicDelegateHandler();

	static MusicDelegateHandler* create(MusicDownloadDelegate*);

	TodoReturn getDelegate();
	bool init(MusicDownloadDelegate*);
}

[[link(android)]]
class MusicDownloadDelegate {
	virtual TodoReturn loadSongInfoFinished(SongInfoObject*);
	virtual TodoReturn loadSongInfoFailed(int, GJSongError);
	virtual TodoReturn downloadSongFinished(SongInfoObject*);
	virtual TodoReturn downloadSongFailed(int, GJSongError);
	virtual void songStateChanged();
}

[[link(android)]]
class MusicDownloadManager : cocos2d::CCNode, PlatformDownloadDelegate {
	// virtual ~MusicDownloadManager();

	static MusicDownloadManager* sharedState() = win 0xb0e60;

	TodoReturn addDLToActive(char const*, cocos2d::CCObject*);
	TodoReturn addDLToActive(char const*);
	TodoReturn addMusicDownloadDelegate(MusicDownloadDelegate*);
	TodoReturn addSongObjectFromString(gd::string);
	TodoReturn createSongsInfo(gd::string);
	void dataLoaded(DS_Dictionary*);
	void deleteSong(int id) {
		auto songPath = pathForSong(id);
		remove(songPath.c_str());
	}
	TodoReturn downloadSong(int);
	TodoReturn downloadSongFailed(int, GJSongError);
	TodoReturn downloadSongFinished(SongInfoObject*);
	void encodeDataTo(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn getDLObject(char const*);
	TodoReturn getDownloadedSongs();
	TodoReturn getDownloadProgress(int);
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
	bool isRunningActionForSongID(int);
	bool isSongDownloaded(int) = win 0xb26c0;
	TodoReturn limitDownloadedSongs();
	TodoReturn loadSongInfoFailed(int, GJSongError);
	TodoReturn loadSongInfoFinished(SongInfoObject*);
	TodoReturn onDownloadSongCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onGetSongInfoCompleted(gd::string, gd::string);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	gd::string pathForSong(int) = win 0xb27d0;
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn removeMusicDownloadDelegate(MusicDownloadDelegate*);
	TodoReturn responseToDict(gd::string, char const*);
	TodoReturn showTOS(FLAlertLayerProtocol*);
	void songStateChanged();
	TodoReturn stopDownload(int);

	virtual bool init();
	virtual cocos2d::CCDictionary* getDownloadedSongsDict() const;
	virtual void setDownloadedSongsDict(cocos2d::CCDictionary*);
}

[[link(android)]]
class MyLevelsLayer {
	// virtual ~MyLevelsLayer();

	static MyLevelsLayer* create();

	void onBack(cocos2d::CCObject* sender);
	void onNew(cocos2d::CCObject* sender);
	TodoReturn scene();
	TodoReturn setupLevelBrowser();

	virtual bool init();
	virtual void keyBackClicked();
}

[[link(android)]]
class NodePoint : cocos2d::CCObject {
	// virtual ~NodePoint();

	static NodePoint* create(cocos2d::CCPoint);

	bool init(cocos2d::CCPoint);

	virtual cocos2d::CCPoint getPoint() const;

	cocos2d::CCPoint m_point;
}

[[link(android)]]
class NumberInputDelegate {
	virtual void numberInputClosed(NumberInputLayer*);
}

[[link(android)]]
class NumberInputLayer : FLAlertLayer {
	// virtual ~NumberInputLayer();
	// NumberInputLayer();

	static NumberInputLayer* create();

	TodoReturn deleteLast();
	TodoReturn inputNumber(int);
	void onClose(cocos2d::CCObject* sender);
	void onDone(cocos2d::CCObject* sender);
	void onNumber(cocos2d::CCObject* sender);
	TodoReturn updateNumberState();

	virtual bool init();
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual int getMinNumbers() const;
	virtual void setMinNumbers(int);
	virtual int getMaxNumbers() const;
	virtual void setMaxNumbers(int);
	virtual gd::string getNumberString() const;
	virtual NumberInputDelegate* getDelegate() const;
	virtual void setDelegate(NumberInputDelegate*);

	cocos2d::CCLabelBMFont* m_numberLabel;
	CCMenuItemSpriteExtra* m_submitBtn;
	int m_minNumbers;
	int m_maxNumbers;
	gd::string m_numberString;
	NumberInputDelegate* m_delegate;
}

[[link(android)]]
class OBB2D : cocos2d::CCNode {
	// virtual ~OBB2D();
	// OBB2D();

	static OBB2D* create(cocos2d::CCPoint, float, float, float);

	TodoReturn calculateWithCenter(cocos2d::CCPoint, float, float, float);
	TodoReturn computeAxes();
	cocos2d::CCRect getBoundingRect();
	bool init(cocos2d::CCPoint, float, float, float);
	TodoReturn orderCorners();
	TodoReturn overlaps(OBB2D*);
	TodoReturn overlaps1Way(OBB2D*);

	cocos2d::CCPoint m_obVertexBottomLeft;
	cocos2d::CCPoint m_obVertexBottomRight;
	cocos2d::CCPoint m_obVertexTopRight;
	cocos2d::CCPoint m_obVertexTopLeft;
	cocos2d::CCPoint m_p2_1;
	cocos2d::CCPoint m_p2_2;
	cocos2d::CCPoint m_p2_3;
	cocos2d::CCPoint m_p2_4;
	cocos2d::CCPoint m_p3_1;
	cocos2d::CCPoint m_p3_2;
	cocos2d::CCPoint m_p3_3;
	cocos2d::CCPoint m_p3_4;
	double m_rot1;
	double m_rot2;
	cocos2d::CCPoint m_center;
}

[[link(android)]]
class ObjectManager {
	// virtual ~ObjectManager();

	TodoReturn animLoaded(char const*);
	TodoReturn getDefinition(char const*);
	TodoReturn getGlobalAnimCopy(char const*);
	TodoReturn instance();
	TodoReturn loadCopiedAnimations();
	TodoReturn loadCopiedSets();
	TodoReturn replaceAllOccurencesOfString(cocos2d::CCString*, cocos2d::CCString*, cocos2d::CCDictionary*);
	void setLoaded(char const*);
	TodoReturn setup();

	virtual bool init();
}

[[link(android)]]
class ObjectToolbox : cocos2d::CCNode {
	// virtual ~ObjectToolbox();

	static ObjectToolbox* sharedState() = win 0xb5140;
	static cocos2d::CCDictionary* stringSetupToDict(gd::string, char const*);
	static gd::map<gd::string, gd::string> stringSetupToMap(gd::string, char const*);

	cocos2d::CCArray* allKeys();
	const char* frameToKey(char const*);
	float gridNodeSizeForKey(int) = win 0xcfc90;
	const char* intKeyToFrame(int);
	const char* keyToFrame(char const*);
	const char* perspectiveBlockFrame(int);

	virtual bool init() = win 0xb51f0;

	cocos2d::CCDictionary* m_frameToKeyDict;
	cocos2d::CCDictionary* m_keyToFrameDict;
}

[[link(android)]]
class OptionsLayer : GJDropDownLayer, FLAlertLayerProtocol {
	// virtual ~OptionsLayer();

	static OptionsLayer* create() = win 0xd0360;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn exitLayer();
	TodoReturn musicSliderChanged(cocos2d::CCObject*);
	void onAccount(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onOptions(cocos2d::CCObject* sender) = win 0xd0ef0;
	void onProgressBar(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender);
	void onRecordReplays(cocos2d::CCObject* sender);
	void onSoundtracks(cocos2d::CCObject* sender);
	void onSupport(cocos2d::CCObject* sender);
	void onVideo(cocos2d::CCObject* sender);
	TodoReturn sfxSliderChanged(cocos2d::CCObject*);
	TodoReturn tryEnableRecord();

	virtual void customSetup() = win 0xd0470;
	virtual void layerHidden();
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);

	cocos2d::CCMenu* m_optionsMenu;
	CCMenuItemToggler* m_replayToggle;
	int m_layerChoice;
	bool m_inReplayCheck;
	Slider* m_musicSlider;
	Slider* m_sfxSlider;
}

[[link(android)]]
class PauseLayer : CCBlockLayer {
	// virtual ~PauseLayer();
	// PauseLayer();

	static PauseLayer* create(bool);

	void createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = win 0xd6eb0;
	TodoReturn goEdit();
	bool init(bool);
	TodoReturn musicSliderChanged(cocos2d::CCObject*);
	void onAutoCheckpoints(cocos2d::CCObject* sender);
	void onAutoRetry(cocos2d::CCObject* sender);
	void onEdit(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onNormalMode(cocos2d::CCObject* sender);
	void onPracticeMode(cocos2d::CCObject* sender);
	void onProgressBar(cocos2d::CCObject* sender) = win 0xd8010;
	void onQuit(cocos2d::CCObject* sender);
	void onRecordReplays(cocos2d::CCObject* sender);
	void onRestart(cocos2d::CCObject* sender) = win 0xd7b20;
	void onResume(cocos2d::CCObject* sender) = win 0xd7a80;
	TodoReturn setupProgressBars();
	TodoReturn sfxSliderChanged(cocos2d::CCObject*);
	TodoReturn tryShowBanner(float);

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void customSetup() = win 0xd5f50;
	virtual void keyUp(cocos2d::enumKeyCodes);
}

[[link(android)]]
class PlatformDownloadDelegate {
	virtual TodoReturn downloadFinished(char const*);
	virtual TodoReturn downloadFailed(char const*);
}

[[link(android)]]
class PlatformToolbox {
	TodoReturn activateGameCenter();
	TodoReturn doesFileExist(gd::string);
	TodoReturn downloadAndSavePromoImage(gd::string, gd::string);
	TodoReturn gameDidSave();
	TodoReturn getDisplaySize();
	TodoReturn getRawPath(char const*);
	TodoReturn getUniqueUserID();
	TodoReturn getUserID();
	TodoReturn hideCursor();
	static bool isControllerConnected() = win inline {
		return cocos2d::CCApplication::sharedApplication()->getControllerConnected();
	}
	bool isHD();
	bool isLocalPlayerAuthenticated();
	bool isLowMemoryDevice();
	static bool isNetworkAvailable() = win inline {
		return true;
	}
	bool isSignedInGooglePlay();
	TodoReturn loadAndDecryptFileToString(char const*, char const*);
	TodoReturn logEvent(char const*);
	TodoReturn onGameLaunch();
	TodoReturn onNativePause();
	TodoReturn onNativeResume();
	TodoReturn onToggleKeyboard();
	TodoReturn openAppPage();
	void platformShutdown();
	TodoReturn refreshWindow();
	void reportAchievementWithID(char const*, int);
	TodoReturn reportLoadingFinished();
	TodoReturn resizeWindow(float, float);
	TodoReturn saveAndEncryptStringToFile(gd::string, char const*, char const*);
	TodoReturn sendMail(char const*, char const*, char const*);
	void setBlockBackButton(bool);
	void setKeyboardState(bool);
	TodoReturn shouldResumeSound();
	TodoReturn showAchievements();
	TodoReturn showCursor();
	TodoReturn signInGooglePlay();
	TodoReturn signOutGooglePlay();
	TodoReturn spriteFromSavedFile(gd::string);
	TodoReturn toggleCallGLFinish(bool);
	TodoReturn toggleCPUSleepMode(bool);
	TodoReturn toggleForceTimer(bool);
	TodoReturn toggleFullScreen(bool);
	TodoReturn toggleMouseControl(bool);
	TodoReturn toggleSmoothFix(bool);
	TodoReturn toggleVerticalSync(bool);
	TodoReturn tryShowRateDialog(gd::string);
	TodoReturn updateMouseControl();
	TodoReturn updateWindowedSize(float, float);
}

[[link(android)]]
class PlayerCheckpoint : cocos2d::CCNode {
	// virtual ~PlayerCheckpoint();
	// PlayerCheckpoint();

	static PlayerCheckpoint* create();

	virtual bool init();
	virtual cocos2d::CCPoint getPlayerPos() const;
	virtual void setPlayerPos(cocos2d::CCPoint);
	virtual float getPlayerYVel() const;
	virtual void setPlayerYVel(float);
	virtual bool getFlipGravity() const;
	virtual void setFlipGravity(bool);
	virtual bool getFlyMode() const;
	virtual void setFlyMode(bool);
	virtual bool getRollMode() const;
	virtual void setRollMode(bool);
	virtual bool getBirdMode() const;
	virtual void setBirdMode(bool);
	virtual bool getDartMode() const;
	virtual void setDartMode(bool);
	virtual bool getCanJump() const;
	virtual void setCanJump(bool);
	virtual int getGhostType() const;
	virtual void setGhostType(int);
	virtual bool getIsScaled() const;
	virtual void setIsScaled(bool);
	virtual float getTimeMod() const;
	virtual void setTimeMod(float);

	cocos2d::CCPoint m_playerPos;
	float m_playerYVel;
	bool m_flipGravity;
	bool m_flyMode;
	bool m_rollMode;
	bool m_birdMode;
	bool m_dartMode;
	bool m_canJump;
	int m_ghostType;
	bool m_isScaled;
	float m_timeMod;
}

[[link(android)]]
class PlayerObject : GameObject {
	// virtual ~PlayerObject();
	// PlayerObject();

	static PlayerObject* create(int, int, cocos2d::CCLayer*) = win 0xd8bf0;

	TodoReturn activateStreak();
	TodoReturn addAllParticles();
	TodoReturn boostPlayer(float);
	TodoReturn buttonDown(PlayerButton);
	TodoReturn checkSnapJumpToObject(GameObject*);
	TodoReturn collidedWithObject(float, GameObject*, cocos2d::CCRect);
	TodoReturn collidedWithObject(float, GameObject*);
	TodoReturn collidedWithSlope(float, GameObject*);
	TodoReturn convertToClosestRotation(float);
	TodoReturn copyAttributes(PlayerObject*);
	TodoReturn deactivateParticle();
	void deactivateStreak() = win inline {
		this->m_playerStreak->stopStroke();
		if (!this->m_hardStreakActive) {
			return;
		}
		this->m_hardStreakActive = true;
		auto fadeInterval = this->m_hasPlayLayer ? 0.6f : 0.2f;
		this->fadeOutStreak2(fadeInterval);
	}
	void fadeOutStreak2(float) = win 0xe0de0;
	void flipGravity(bool, bool) = win 0xde660;
	TodoReturn flipMod();
	TodoReturn getModifiedSlopeYVel();
	TodoReturn getSecondColor();
	TodoReturn gravityDown();
	TodoReturn gravityUp();
	void hardFlipGravity();
	TodoReturn hitGround(bool);
	TodoReturn incrementJumps();
	bool init(int, int, cocos2d::CCLayer*) = win 0xd8ca0;
	bool isBoostValid(float);
	bool isFlying();
	bool isSafeFlip(float);
	bool isSafeMode(float);
	TodoReturn levelFlipFinished();
	TodoReturn levelFlipping();
	TodoReturn levelWillFlip();
	void loadFromCheckpoint(PlayerCheckpoint*);
	TodoReturn lockPlayer();
	TodoReturn logValues();
	TodoReturn placeStreakPoint();
	TodoReturn playBurstEffect();
	TodoReturn playerDestroyed(bool) = win 0xddda0;
	bool playerIsFalling();
	TodoReturn postCollision();
	TodoReturn preCollision();
	TodoReturn preSlopeCollision(float, GameObject*);
	TodoReturn propellPlayer(float);
	TodoReturn pushButton(PlayerButton);
	TodoReturn pushDown();
	TodoReturn releaseButton(PlayerButton);
	TodoReturn removeAllParticles();
	TodoReturn removePendingCheckpoint();
	TodoReturn resetAllParticles() = win 0xda110;
	void resetCollisionLog();
	TodoReturn resetPlayerIcon();
	TodoReturn resetStreak();
	TodoReturn ringJump();
	TodoReturn runBallRotation(float);
	TodoReturn runBallRotation2();
	TodoReturn runNormalRotation();
	TodoReturn runRotateAction(bool);
	void saveToCheckpoint(PlayerCheckpoint*);
	void setSecondColor(cocos2d::ccColor3B const&);
	void setupStreak() = win 0xd98f0;
	TodoReturn spawnCircle();
	TodoReturn spawnDualCircle();
	TodoReturn spawnFromPlayer(PlayerObject*);
	TodoReturn spawnPortalCircle(cocos2d::ccColor3B, float);
	TodoReturn spawnScaleCircle();
	TodoReturn specialGroundHit();
	TodoReturn speedDown();
	TodoReturn speedUp();
	TodoReturn stopBurstEffect();
	TodoReturn stopRotation(bool);
	TodoReturn storeCollision(bool, int);
	TodoReturn switchedToMode(GameObjectType);
	TodoReturn toggleBirdMode(bool) = win 0xdec10;
	TodoReturn toggleDartMode(bool) = win 0xdee80;
	TodoReturn toggleFlyMode(bool) = win 0xdea20;
	TodoReturn toggleGhostEffect(GhostType) = win 0xe06b0;
	TodoReturn togglePlayerScale(bool) = win 0xe12e0;
	TodoReturn toggleRollMode(bool) = win 0xdf490;
	TodoReturn touchedObject(GameObject*);
	TodoReturn tryPlaceCheckpoint();
	void updateCheckpointTest();
	TodoReturn updateCollide(bool, int);
	TodoReturn updateCollideBottom(float, int);
	TodoReturn updateCollideTop(float, int);
	void updateGlowColor() = win 0xdfc80;
	TodoReturn updateJump(float);
	void updatePlayerBirdFrame(int) = win 0xe0290;
	void updatePlayerDartFrame(int) = win 0xe0580;
	void updatePlayerFrame(int) = win 0xdfff0;
	void updatePlayerGlow() = win 0xe0f40;
	void updatePlayerRollFrame(int) = win 0xe0430;
	TodoReturn updatePlayerScale();
	void updatePlayerShipFrame(int) = win 0xe0140;
	void updateRotation(float, float);
	void updateRotation(float);
	TodoReturn updateShipRotation(float);
	TodoReturn updateSlopeRotation(float);
	TodoReturn updateSlopeYVelocity(float);
	TodoReturn updateTimeMod(float);
	TodoReturn yStartDown();
	TodoReturn yStartUp();

	virtual void update(float);
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setScale(float);
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setVisible(bool);
	virtual void setRotation(float);
	virtual void setOpacity(unsigned char);
	virtual void setColor(cocos2d::ccColor3B const&);
	virtual void setFlipX(bool);
	virtual void setFlipY(bool);
	virtual void resetObject();
	virtual cocos2d::CCPoint getRealPosition();
	virtual OBB2D* getOrientedBox() = win 0xe1260;
	virtual bool getTookDamage() const;
	virtual void setTookDamage(bool);
	virtual TodoReturn getUpKeyDown() const;
	virtual TodoReturn getUpKeyPressed() const;
	virtual TodoReturn getYVelocity() const;
	virtual bool getOnSlope() const;
	virtual void setOnSlope(bool);
	virtual bool getWasOnSlope() const;
	virtual void setWasOnSlope(bool);
	virtual TodoReturn getSlopeYVel() const;
	virtual bool getFlyMode() const;
	virtual bool getBirdMode() const;
	virtual bool getRollMode() const;
	virtual bool getDartMode() const;
	virtual bool getGravityFlipped() const;
	virtual TodoReturn getIsDead() const;
	virtual bool getCanJump() const;
	virtual TodoReturn getPlayerScale() const;
	virtual TodoReturn getTimeMod() const;
	virtual cocos2d::CCPoint getLastP() const;
	virtual void setLastP(cocos2d::CCPoint);
	virtual cocos2d::CCPoint getPortalP() const;
	virtual void setPortalP(cocos2d::CCPoint);
	virtual cocos2d::CCLayer* getGameLayer();
	virtual void setGameLayer(cocos2d::CCLayer*);
	virtual bool getOnGround() const;
	virtual void setOnGround(bool);
	virtual TodoReturn getIsJumping() const;
	virtual bool getIsLocked() const;
	virtual bool getAllowRollJump() const;
	virtual void setAllowRollJump(bool);
	virtual TodoReturn getLastGroundPos() const;
	virtual GameObject* getTouchedRing() const;
	virtual void setTouchedRing(GameObject*);
	virtual GameObject* getPortalObject() const;
	virtual void setPortalObject(GameObject*);
	virtual TodoReturn getHasJumped() const;
	virtual TodoReturn getHasRingJumped() const;
	virtual cocos2d::ccColor3B getGlowColor1() const;
	virtual TodoReturn getGlowColor2() const;
	virtual cocos2d::CCPoint getRealPlayerPos() const;
	virtual void setRealPlayerPos(cocos2d::CCPoint);
	virtual bool getIsSecondPlayer() const;
	virtual void setIsSecondPlayer(bool);
	virtual bool getDualMode() const;
	virtual void setDualMode(bool);
	virtual double getClkTimer() const;
	virtual void setClkTimer(double);
	virtual bool getDisableEffects() const;
	virtual void setDisableEffects(bool);
	virtual GameplayDelegate* getGameDelegate() const;
	virtual void setGameDelegate(GameplayDelegate*);
	virtual float getAudioScale() const;
	virtual void setAudioScale(float);
	virtual float getGroundHeight() const;
	virtual void setGroundHeight(float);

	double m_slopeTime;
	bool m_bUnknown1;
	cocos2d::CCNode* m_pUnknown1;
	cocos2d::CCDictionary* m_pUnknown2;
	cocos2d::CCDictionary* m_pUnknown3;
	int m_iUnknown1;
	int m_iUnknown2;
	bool m_isRotating;
	bool m_bUnknown2;
	GameObject* m_pUnknown4;
	GameObject* m_pUnknown5;
	float m_fUnknown1;
	int m_iUnknown3;
	bool m_bUnknown3;
	cocos2d::CCArray* m_particleSystems;
	int m_iUnused1;
	GhostType m_ghostEffect;
	GhostTrailEffect* m_ghostTrailEffect;
	cocos2d::CCSprite* m_playerFrame;
	cocos2d::CCSprite* m_playerFrameSecondary;
	cocos2d::CCSprite* m_playerFrameGlow;
	cocos2d::CCSprite* m_vehicleFrame;
	cocos2d::CCSprite* m_vehicleFrameSecondary;
	cocos2d::CCSprite* m_vehicleFrameThird;
	cocos2d::CCSprite* m_vehicleFrameGlow;
	cocos2d::CCSprite* m_pUnknown6;
	cocos2d::CCMotionStreak* m_playerStreak;
	HardStreak* m_hardStreak;
	double m_speed;
	double m_yStart;
	double m_gravity;
	float m_fUnknown2;
	float m_fUnknown3;
	bool m_bUnknown4;
	bool m_bUnknown5;
	bool m_placedJumpCheckpoint;
	bool m_hasPlayLayer;
	bool m_bUnknown6;
	bool m_particlesActive;
	bool m_flyFallParticlesActive;
	bool m_inBallFall;
	bool m_bUnknown8;
	double m_dUnknown1;
	double m_lastJumpTime;
	double m_dUnknown2;
	bool m_bUnknown9;
	bool m_bUnknown10;
	double m_dUnknown3;
	double m_dUnknown4;
	GameObject* m_snapToObject;
	CheckpointObject* m_pendingCheckpoint;
	int m_iUnknown4;
	cocos2d::CCPoint m_lastUpdatePos;
	cocos2d::CCParticleSystemQuad* m_dragParticle;
	cocos2d::CCParticleSystemQuad* m_birdDragParticle;
	cocos2d::CCParticleSystemQuad* m_dragParticle2;
	cocos2d::CCParticleSystemQuad* m_shipDragParticle;
	cocos2d::CCParticleSystemQuad* m_burstParticle;
	bool m_bUnknown11;
	cocos2d::CCParticleSystemQuad* m_landParticle;
	cocos2d::CCParticleSystemQuad* m_landParticle2;
	float m_fUnknown4;
	float m_fUnknown5;
	int m_streakType;
	float m_fUnknown6;
	float m_fUnknown7;
	float m_fUnknown8;
	bool m_inBoost;
	bool m_bUnknown12;
	float m_fUnknown9;
	float m_fUnknown10;
	bool m_hardStreakActive;
	bool m_bUnknown14;
	bool m_tookDamage;
	bool m_upKeyDown;
	bool m_upKeyPressed;
	double m_yVelocity;
	bool m_onSlope;
	bool m_wasOnSlope;
	float m_slopeYVel;
	bool m_flyMode;
	bool m_birdMode;
	bool m_rollMode;
	bool m_dartMode;
	bool m_gravityFlipped;
	bool m_isDead;
	bool m_canJump;
	float m_playerScale;
	float m_timeMod;
	cocos2d::CCPoint m_lastPos; // m_lastP
	cocos2d::CCPoint m_portalPos; // m_portalP
	cocos2d::CCLayer* m_gameLayer;
	bool m_onGround;
	bool m_isJumping;
	bool m_isLocked;
	bool m_allowRollJump;
	cocos2d::CCPoint m_lastGroundPos;
	GameObject* m_touchedRing;
	GameObject* m_portalObject;
	bool m_hasJumped;
	bool m_hasRingJumped;
	cocos2d::ccColor3B m_glowColor1;
	cocos2d::ccColor3B m_glowColor2;
	cocos2d::CCPoint m_realPlayerPos;
	bool m_isSecondPlayer;
	bool m_dualMode;
	double m_clkTimer;
	bool m_disableEffects;
	GameplayDelegate* m_gameDelegate;
	float m_audioScale;
	float m_groundHeight;
}

[[link(android)]]
class PlayLayer : cocos2d::CCLayer, CCCircleWaveDelegate, GameplayDelegate {
	// virtual ~PlayLayer();
	// PlayLayer();

	static PlayLayer* create(GJGameLevel*) = win 0xe3530;

	TodoReturn addCircle(CCCircleWave*);
	TodoReturn addToSection(GameObject*);
	TodoReturn addToSpeedObjects(GameObject*);
	TodoReturn animateInDualGround(GameObject*, float, bool);
	TodoReturn animateInGround(bool);
	TodoReturn animateOutGround(bool);
	TodoReturn animateOutGroundFinished();
	TodoReturn applyEnterEffect(GameObject*);
	TodoReturn cameraMoveX(float, float, float);
	TodoReturn cameraMoveY(float, float, float);
	void checkCollisions(PlayerObject*, float);
	void checkSpawnObjects();
	TodoReturn claimParticle(gd::string);
	TodoReturn clearPickedUpItems();
	TodoReturn colorObject(int, cocos2d::ccColor3B);
	CheckpointObject* createCheckpoint();
	TodoReturn createObjectsFromSetup(gd::string);
	TodoReturn createParticle(int, char const*, int, cocos2d::tCCPositionType);
	void delayedResetLevel() = win 0xf1f10;
	void destroyPlayer(PlayerObject*) = win 0xf04a0;
	TodoReturn enterDualMode(GameObject*, bool);
	TodoReturn exitAirMode();
	TodoReturn exitBirdMode(PlayerObject*);
	TodoReturn exitDartMode(PlayerObject*);
	TodoReturn exitFlyMode(PlayerObject*);
	TodoReturn exitRollMode(PlayerObject*);
	TodoReturn flipFinished();
	TodoReturn flipObjects();
	void fullReset() = win 0xf1e00;
	TodoReturn get3DLineColor();
	TodoReturn getBGColor();
	TodoReturn getCustom01Color();
	TodoReturn getCustom02Color();
	TodoReturn getCustom03Color();
	TodoReturn getCustom04Color();
	TodoReturn getGColor();
	TodoReturn getGroundHeightForMode(int);
	TodoReturn getLastCheckpoint();
	TodoReturn getLightBGColor();
	TodoReturn getLineColor();
	TodoReturn getMaxPortalY();
	TodoReturn getMinPortalY();
	TodoReturn getMixedColor(cocos2d::ccColor3B, cocos2d::ccColor3B, float);
	TodoReturn getObjColor();
	TodoReturn getOtherPlayer(PlayerObject*);
	TodoReturn getParticleKey(int, char const*, int, cocos2d::tCCPositionType);
	TodoReturn getParticleKey2(gd::string);
	TodoReturn getRelativeMod(cocos2d::CCPoint, float, float, float);
	TodoReturn getRelativeModSpecial(cocos2d::CCPoint, float, float, float);
	TodoReturn gravityEffectFinished();
	TodoReturn hasItem(int);
	TodoReturn hasUniqueCoin(GameObject*);
	TodoReturn incrementJumps();
	bool init(GJGameLevel*) = win 0xe35d0;
	bool isFlipping();
	void levelComplete() = win 0xe52e0;
	TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::ccColor3B);
	void loadLastCheckpoint();
	TodoReturn markCheckpoint();
	TodoReturn moveCameraToPos(cocos2d::CCPoint);
	TodoReturn objectIntersectsCircle(GameObject*, GameObject*);
	void onQuit();
	void pauseGame(bool) = win 0xf38c0;
	TodoReturn pickupItem(GameObject*);
	TodoReturn playEndAnimationToPos(cocos2d::CCPoint);
	TodoReturn playerWillSwitchMode(PlayerObject*, GameObject*);
	TodoReturn playExitDualEffect(PlayerObject*);
	TodoReturn playFlashEffect(float, int, float);
	TodoReturn playGravityEffect(bool);
	TodoReturn playSpeedParticle(float);
	TodoReturn processItems();
	void pushButton(int, bool) = win 0xf0a00;
	TodoReturn recordAction(bool, PlayerObject*);
	TodoReturn registerActiveObject(GameObject*);
	TodoReturn registerStateObject(GameObject*);
	void releaseButton(int, bool) = win 0xf0af0;
	TodoReturn removeAllObjects();
	void removeLastCheckpoint() = win 0xf1d70;
	TodoReturn removeObjectFromSection(GameObject*);
	TodoReturn removePlayer2();
	TodoReturn reorderObjectSection(GameObject*);
	void resetLevel() = win 0xf1f20;
	void resume();
	void resumeAndRestart();
	void saveRecordAction(bool, PlayerObject*);
	TodoReturn scene(GJGameLevel*);
	TodoReturn sectionForPos(cocos2d::CCPoint);
	void setActiveEnterEffect(EnterEffect);
	void setStartPosObject(StartPosObject*);
	TodoReturn setupLevelStart(LevelSettingsObject*);
	void setupReplay(gd::string);
	TodoReturn shakeCamera(float) = win 0xe61c0;
	TodoReturn showCompleteEffect();
	TodoReturn showCompleteText();
	void showEndLayer();
	TodoReturn showHint() = win 0xf0800;
	void showNewBest() = win 0xe5ff0;
	void showRetryLayer();
	TodoReturn showTwoPlayerGuide();
	TodoReturn spawnCircle();
	TodoReturn spawnFirework();
	TodoReturn spawnParticle(char const*, int, cocos2d::tCCPositionType, cocos2d::CCPoint);
	TodoReturn spawnPlayer2();
	TodoReturn startGame();
	TodoReturn startRecording();
	TodoReturn startRecordingDelayed();
	TodoReturn stopCameraShake();
	TodoReturn stopRecording();
	TodoReturn storeCheckpoint(CheckpointObject*);
	TodoReturn switchToFlyMode(PlayerObject*, GameObject*, bool, int);
	TodoReturn switchToRollMode(PlayerObject*, GameObject*, bool);
	float timeForXPos(float, bool) = win 0xee590;
	TodoReturn toggleDualMode(GameObject*, bool, PlayerObject*, bool);
	TodoReturn toggleFlipped(bool, bool);
	TodoReturn toggleGhostEffect(int);
	TodoReturn toggleGlitter(bool);
	void togglePracticeMode(bool) = win 0xf3610;
	TodoReturn toggleProgressbar();
	TodoReturn transformColor(cocos2d::ccColor3B, float, float, float);
	TodoReturn tryStartRecord();
	TodoReturn unclaimParticle(char const*, cocos2d::CCParticleSystemQuad*);
	TodoReturn unregisterActiveObject(GameObject*);
	TodoReturn unregisterStateObject(GameObject*);
	TodoReturn updateAttempts();
	void updateCamera(float);
	TodoReturn updateColor(cocos2d::ccColor3B, float, int);
	TodoReturn updateCustomColorBlend(int, bool);
	TodoReturn updateDualGround(PlayerObject*, int, bool);
	void updateEffectPositions();
	void updateLevelColors();
	void updateProgressbar() = win 0xedf00;
	void updateReplay(float);
	TodoReturn updateTimeMod(float);
	void updateVisibility() = win 0xeb3f0;
	TodoReturn visitWithColorFlash();

	virtual void update(float) = win 0xe9360;
	virtual void onEnterTransitionDidFinish() = win 0xf3f50;
	virtual void onExit() = win 0xf3f70;
	virtual void draw() = win 0xee5e0;
	virtual void visit() = win 0xe6d00;
	virtual void updateTweenAction(float, char const*);
	virtual void circleWaveWillBeRemoved(CCCircleWave*);
	virtual void flipGravity(PlayerObject*, bool, bool);
	virtual bool getPlaybackMode() const;
	virtual void setPlaybackMode(bool);
	virtual TodoReturn getCameraPortal() const;
	virtual TodoReturn getDualModeCamera() const;
	virtual TodoReturn getIsFlipped() const;
	virtual TodoReturn getFlipValue() const;
	virtual bool getDualMode() const;
	virtual TodoReturn getUILayer() const;
	virtual PlayerObject* getPlayer() const;
	virtual PlayerObject* getPlayer2() const;
	virtual GJGameLevel* getLevel() const;
	virtual TodoReturn getCameraPos() const;
	virtual bool getTestMode() const;
	virtual bool getPracticeMode() const;
	virtual bool getIsResetting() const;
	virtual void setIsResetting(bool);
	virtual TodoReturn getBatchNode() const;
	virtual TodoReturn getBatchNodeBottom() const;
	virtual TodoReturn getBatchNodeAdd() const;
	virtual TodoReturn getBatchNodeAddBottom() const;
	virtual TodoReturn getBatchNodePlayer() const;
	virtual TodoReturn getBatchNodeAddPlayer() const;
	virtual cocos2d::CCLayer* getGameLayer() const;
	virtual TodoReturn getBigActionContainer() const;
	virtual bool getCleanReset() const;
	virtual void setCleanReset(bool);
	virtual cocos2d::CCPoint getStartPos() const;
	virtual void setStartPos(cocos2d::CCPoint);
	virtual TodoReturn getAttempts() const;
	virtual TodoReturn getJumps() const;
	virtual TodoReturn getDidJump() const;
	virtual TodoReturn getClkTimer() const;
	virtual bool getShowingEndLayer() const;
	virtual void setShowingEndLayer(bool);
	virtual bool getEndTriggered() const;
	virtual void setEndTriggered(bool);
	virtual bool getResetQueued() const;
	virtual void setResetQueued(bool);
	virtual int getLastRunPercent() const;
	virtual void setLastRunPercent(int);
	virtual TodoReturn getDidAwardStars();
	virtual ColorAction* getActiveBGColorAction() const;
	virtual void setActiveBGColorAction(ColorAction*);
	virtual ColorAction* getActiveGColorAction() const;
	virtual void setActiveGColorAction(ColorAction*);
	virtual ColorAction* getActiveLineColorAction() const;
	virtual void setActiveLineColorAction(ColorAction*);
	virtual ColorAction* getActiveObjColorAction() const;
	virtual void setActiveObjColorAction(ColorAction*);
	virtual ColorAction* getActive3DLineColorAction() const;
	virtual void setActive3DLineColorAction(ColorAction*);
	virtual ColorAction* getActiveColor01Action() const;
	virtual void setActiveColor01Action(ColorAction*);
	virtual ColorAction* getActiveColor02Action() const;
	virtual void setActiveColor02Action(ColorAction*);
	virtual ColorAction* getActiveColor03Action() const;
	virtual void setActiveColor03Action(ColorAction*);
	virtual ColorAction* getActiveColor04Action() const;
	virtual void setActiveColor04Action(ColorAction*);
	virtual bool getShouldRestartAfterStopped() const;
	virtual void setShouldRestartAfterStopped(bool);
	virtual TodoReturn getCustomColor01Blend() const;
	virtual TodoReturn getCustomColor02Blend() const;
	virtual TodoReturn getCustomColor03Blend() const;
	virtual TodoReturn getCustomColor04Blend() const;
	virtual TodoReturn getCustomColor3DBlend() const;

	bool m_bUnknown1;
	cocos2d::CCDrawNode* m_drawNode;
	float m_cameraMoveToY;
	float m_fUnknown1;
	float m_fUnknown2;
	float m_fUnknown3;
	float m_fUnknown4;
	bool m_bUnknown2;
	bool m_bUnknown3;
	int m_iUnused1;
	int m_iUnused4;
	StartPosObject* m_startPosObject;
	LevelSettingsObject* m_levelSettings;
	EndPortalObject* m_endPortalObject;
	cocos2d::CCArray* m_checkpoints;
	cocos2d::CCArray* m_activatedSpeedObjects;
	cocos2d::CCArray* m_levelSpeedObjects;
	EnterEffect m_activeEnterEffect;
	cocos2d::CCSprite* m_bgSprite;
	float m_fUnknown5;
	bool m_bUnknown4;
	cocos2d::CCArray* m_levelSections;
	cocos2d::CCArray* m_pUnknown1;
	cocos2d::CCArray* m_activeObjects;
	cocos2d::CCArray* m_pUnknown2;
	cocos2d::CCArray* m_pUnknown3;
	cocos2d::CCArray* m_pUnknown4;
	cocos2d::CCArray* m_stateObjects;
	cocos2d::CCParticleSystemQuad* m_glitterParticleSystem;
	cocos2d::CCDictionary* m_pUnknown5;
	cocos2d::CCArray* m_effectObjects;
	AudioEffectsLayer* m_audioEffectsLayer;
	float m_fUnknown6;
	float m_fUnknown7;
	GJGroundLayer* m_groundBottomLayer;
	GJGroundLayer* m_groundTopLayer;
	int m_iUnused2;
	int m_iUnused5;
	bool m_isDead;
	bool m_bUnknown6;
	bool m_cameraMovingX;
	bool m_cameraMovingY;
	bool m_bUnknown7;
	int m_iUnknown1;
	int m_iUnknown2;
	int m_iUnknown3;
	float m_fUnknown8;
	bool m_groundMoving;
	float m_levelLength;
	float m_fUnknown9;
	cocos2d::CCLabelBMFont* m_attemptsLabel;
	bool m_bUnknown9;
	float m_fUnknown10;
	bool m_bUnknown10;
	float m_fUnknown11;
	float m_cameraFlip;
	int m_iUnknown4;
	cocos2d::CCDictionary* m_particlesDictionary;
	cocos2d::CCDictionary* m_pUnknown6;
	cocos2d::CCArray* m_particles;
	cocos2d::CCNode* m_pUnknown7;
	cocos2d::CCSprite* m_lineColorRef;
	cocos2d::CCSprite* m_objColorRef;
	cocos2d::CCSprite* m_gColorRef;
	cocos2d::CCSprite* m_3DLineColorRef;
	cocos2d::CCSprite* m_custom01ColorRef;
	cocos2d::CCSprite* m_custom02ColorRef;
	cocos2d::CCSprite* m_custom03ColorRef;
	cocos2d::CCSprite* m_custom04ColorRef;
	cocos2d::CCSprite* m_sliderGroove;
	cocos2d::CCSprite* m_sliderBar;
	float m_fUnknown13;
	float m_fUnknown14;
	float m_fUnknown15;
	int m_iUnknown5;
	int m_iUnknown6;
	int m_iUnknown7;
	cocos2d::CCArray* m_pUnknown8;
	bool m_recordActions;
	bool m_player1PushSaved;
	bool m_player1ReleaseSaved;
	bool m_player2PushSaved;
	bool m_player2ReleaseSaved;
	gd::string m_replayString;
	cocos2d::CCArray* m_replayActions;
	double m_levelTime;
	bool m_needsReorderColor01;
	bool m_needsReorderColor02;
	bool m_needsReorderColor03;
	bool m_needsReorderColor04;
	bool m_needsReorderColor3D;
	float m_fUnknown16;
	int m_iUnused3;
	bool m_inCameraFlip;
	bool m_meteringEnabled;
	bool m_playbackMode;
	GameObject* m_cameraPortal;
	GameObject* m_dualModeCamera;
	bool m_isFlipped;
	float m_flipValue;
	bool m_dualMode;
	UILayer* m_uiLayer;
	PlayerObject* m_player;
	PlayerObject* m_player2;
	GJGameLevel* m_level;
	cocos2d::CCPoint m_cameraPos;
	bool m_testMode;
	bool m_practiceMode;
	bool m_isResetting;
	cocos2d::CCSpriteBatchNode* m_batchNode;
	cocos2d::CCSpriteBatchNode* m_batchNodeBottom;
	cocos2d::CCSpriteBatchNode* m_batchNodeAdd;
	cocos2d::CCSpriteBatchNode* m_batchNodeAddBottom;
	cocos2d::CCSpriteBatchNode* m_batchNodePlayer;
	cocos2d::CCSpriteBatchNode* m_batchNodeAddPlayer;
	cocos2d::CCLayer* m_gameLayer;
	cocos2d::CCArray* m_bigActionContainer;
	bool m_cleanReset;
	cocos2d::CCPoint m_startPos;
	int m_attempts;
	int m_jumps;
	bool m_didJump;
	float m_clkTimer;
	bool m_showingEndLayer;
	bool m_endTriggered;
	bool m_resetQueued;
	int m_lastRunPercent;
	bool m_didAwardStars;
	ColorAction* m_activeBGColorAction;
	ColorAction* m_activeGColorAction;
	ColorAction* m_activeLineColorAction;
	ColorAction* m_activeObjColorAction;
	ColorAction* m_active3DLineColorAction;
	ColorAction* m_activeColor01ColorAction;
	ColorAction* m_activeColor02ColorAction;
	ColorAction* m_activeColor03ColorAction;
	ColorAction* m_activeColor04ColorAction;
	bool m_shouldRestartAfterStopping;
	bool m_customColor01Blend;
	bool m_customColor02Blend;
	bool m_customColor03Blend;
	bool m_customColor04Blend;
}

[[link(android)]]
class PointNode : cocos2d::CCObject {
	// virtual ~PointNode();

	static PointNode* create(cocos2d::CCPoint);

	bool init(cocos2d::CCPoint);

	virtual cocos2d::CCPoint getPoint() const;
	virtual void setPoint(cocos2d::CCPoint);

	cocos2d::CCPoint m_point;
}

class PremiumPopup {
	// class is removed on Android, but is for some reason referenced by symbols
}

[[link(android)]]
class PriceLabel {
	// virtual ~PriceLabel();

	static PriceLabel* create(int);

	bool init(int);
	void setColor(cocos2d::ccColor3B);
	void setOpacity(float);
	void setPrice(int);
}

[[link(android)]]
class PromoInterstitial {
	// virtual ~PromoInterstitial();
	// PromoInterstitial();

	static PromoInterstitial* create();

	TodoReturn getEnableBannerOnClose();
	void onClick(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn setup();

	virtual bool init();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn show();
	virtual void setEnableBannerOnClose(bool);
}

[[link(android)]]
class RateLevelDelegate {
	virtual TodoReturn rateLevelClosed();
}

[[link(android)]]
class RateLevelLayer : FLAlertLayer {
	// virtual ~RateLevelLayer();
	// RateLevelLayer();

	static RateLevelLayer* create(int) = win 0xf49c0;

	bool init(int) = win 0xf4a60;
	void onClose(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender) = win 0xf5070;
	TodoReturn selectRating(cocos2d::CCObject*);

	virtual void keyBackClicked();
	virtual RateLevelDelegate* getDelegate() const;
	virtual void setDelegate(RateLevelDelegate*);

	CCMenuItemSpriteExtra* m_submitBtn;
	cocos2d::CCArray* m_difficultySprites;
	int m_levelId;
	int m_selectedDifficulty;
	RateLevelDelegate* m_delegate;
}

[[link(android)]]
class RateStarsLayer : FLAlertLayer {
	// virtual ~RateStarsLayer();
	// RateStarsLayer();

	static RateStarsLayer* create(int);

	CCMenuItemSpriteExtra* getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);
	bool init(int);
	void onClose(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender);
	void selectRating(cocos2d::CCObject*);

	virtual void keyBackClicked();
	virtual RateLevelDelegate* getDelegate() const;
	virtual void setDelegate(RateLevelDelegate*);

	CCMenuItemSpriteExtra* m_submitBtn;
	cocos2d::CCArray* m_starBtns;
	int m_levelId;
	int m_selectedRating;
	RateLevelDelegate* m_delegate;
}

[[link(android)]]
class RetryLevelLayer {
	// virtual ~RetryLevelLayer();

	static RetryLevelLayer* create();

	TodoReturn getEndText();
	void onEveryplay(cocos2d::CCObject* sender);
	void onMenu(cocos2d::CCObject* sender);
	void onReplay(cocos2d::CCObject* sender);
	TodoReturn setupLastProgress();

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void customSetup();
	virtual TodoReturn showLayer(bool);
	virtual TodoReturn enterAnimFinished();
	virtual void keyUp(cocos2d::enumKeyCodes);
}

[[link(android)]]
class RingObject {
	// virtual ~RingObject();

	static RingObject* create(char const*);

	bool init(char const*);
	TodoReturn spawnCircle();
	TodoReturn updateColors(cocos2d::ccColor3B);

	virtual void setScale(float);
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setVisible(bool);
	virtual void resetObject();
	virtual void setRScale(float);
	virtual TodoReturn triggerActivated();
	virtual TodoReturn powerOnObject();
	virtual TodoReturn powerOffObject();
}

[[link(android)]]
class SavedLevelsLayer {
	// virtual ~SavedLevelsLayer();

	static SavedLevelsLayer* create();

	void onBack(cocos2d::CCObject* sender);
	TodoReturn scene();
	TodoReturn setupLevelBrowser();

	virtual bool init();
	virtual void keyBackClicked();
}

[[link(android)]]
class ScrollingLayer {
	// virtual ~ScrollingLayer();
	// ScrollingLayer();

	static ScrollingLayer* create(cocos2d::CCSize, cocos2d::CCPoint, float);

	TodoReturn getInternalLayer();
	TodoReturn getScaleParent();
	TodoReturn getViewRect();
	bool init(cocos2d::CCSize, cocos2d::CCPoint, float);
	void setStartOffset(cocos2d::CCPoint);

	virtual void draw();
	virtual void visit();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void setScaleParent(cocos2d::CCNode*);
}

[[link(android)]]
class SearchButton : cocos2d::CCSprite {
	// virtual ~SearchButton();

	static SearchButton* create(char const*, char const*, float, char const*) = win 0xa3180;

	bool init(char const*, char const*, float, char const*);

	virtual cocos2d::CCLabelBMFont* getLabel() const;
	virtual cocos2d::CCSprite* getSprite() const;

	cocos2d::CCLabelBMFont* m_label;
	cocos2d::CCSprite* m_sprite;
}

[[link(android)]]
class SelectArtDelegate {
	virtual TodoReturn selectArtClosed(SelectArtLayer*);
}

[[link(android)]]
class SelectArtLayer {
	// virtual ~SelectArtLayer();
	// SelectArtLayer();

	static SelectArtLayer* create(SelectArtType);

	TodoReturn getDelegate();
	TodoReturn getSelected();
	TodoReturn getType();
	bool init(SelectArtType);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn selectArt(cocos2d::CCObject*);

	virtual void keyBackClicked();
	virtual void setDelegate(SelectArtDelegate*);
}

[[link(android)]]
class SetGroupIDLayer {
	// virtual ~SetGroupIDLayer();
	// SetGroupIDLayer();

	static SetGroupIDLayer* create(GameObject*, cocos2d::CCArray*);

	bool init(GameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	void onDown(cocos2d::CCObject* sender);
	void onUp(cocos2d::CCObject* sender);
	TodoReturn updateGroupID();
	TodoReturn updateLabel();

	virtual void keyBackClicked();
}

[[link(android)]]
class SetIDLayer {
	// virtual ~SetIDLayer();
	// SetIDLayer();

	static SetIDLayer* create(GameObject*);

	bool init(GameObject*);
	void onClose(cocos2d::CCObject* sender);
	void onDown(cocos2d::CCObject* sender);
	void onUp(cocos2d::CCObject* sender);
	TodoReturn updateID();

	virtual void keyBackClicked();
}

[[link(android)]]
class SettingsColorObject : cocos2d::CCNode {
	// virtual ~SettingsColorObject();

	static SettingsColorObject* create();

	TodoReturn getSaveString();
	TodoReturn setupFromDict(cocos2d::CCDictionary*);
	TodoReturn setupFromString(gd::string);
	TodoReturn updateCustomColor(cocos2d::ccColor3B, cocos2d::ccColor3B);

	virtual bool init();
	virtual cocos2d::ccColor3B getColor() const;
	virtual void setColor(cocos2d::ccColor3B);
	virtual bool getBlend() const;
	virtual void setBlend(bool);
	virtual int getCustom() const;
	virtual void setCustom(int);

	cocos2d::ccColor3B m_color;
	bool m_blend;
	int m_playerColor; // m_custom
}

[[link(android)]]
class ShareCommentLayer : FLAlertLayer, TextInputDelegate {
	// virtual ~ShareCommentLayer();
	// ShareCommentLayer();

	static ShareCommentLayer* create(GJGameLevel*);

	bool init(GJGameLevel*);
	void onClose(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender);
	TodoReturn updateDescText(char const*);

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void textInputOpened(CCTextInputNode*);
	virtual void textInputClosed(CCTextInputNode*);
	virtual void textChanged(CCTextInputNode*);

	GJGameLevel* m_level;
	TextArea* m_textArea;
	CCTextInputNode* m_textInput;
	gd::string m_comment;
}

[[link(android)]]
class ShareLevelLayer : FLAlertLayer {
	// virtual ~ShareLevelLayer();

	static ShareLevelLayer* create(GJGameLevel*);

	bool init(GJGameLevel*) = win 0xf9630;
	void onClose(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender);

	virtual void keyBackClicked();

	GJGameLevel* m_level;
}

[[link(android)]]
class ShareLevelSettingsLayer : FLAlertLayer, NumberInputDelegate {
	// virtual ~ShareLevelSettingsLayer();

	static ShareLevelSettingsLayer* create(GJGameLevel*);

	bool init(GJGameLevel*) = win 0xfaa30;
	void onClose(cocos2d::CCObject* sender);
	void onCopyable(cocos2d::CCObject* sender);
	void onEditPassword(cocos2d::CCObject* sender);
	void onPassword(cocos2d::CCObject* sender);
	TodoReturn updateSettingsState();

	virtual void keyBackClicked();
	virtual void numberInputClosed(NumberInputLayer*);

	cocos2d::CCLabelBMFont* m_passwordLabel;
	GJGameLevel* m_level;
	CCMenuItemToggler* m_passwordToggle;
	cocos2d::CCLabelBMFont* m_passwordToggleLabel;
	CCMenuItemSpriteExtra* m_editPasswordButton;
}

[[link(android)]]
class SimplePlayer : cocos2d::CCSprite {
	// virtual ~SimplePlayer();

	static SimplePlayer* create(int) = win 0x80770;

	bool init(int) = win 0x80810;
	void setFrames(char const*, char const*, char const*, char const*) = win 0x80ef0;
	void setSecondColor(cocos2d::ccColor3B const&);
	void updateColors() = win 0x80b80;
	void updatePlayerFrame(int, IconType) = win 0x80c70;

	virtual void setOpacity(unsigned char);
	virtual void setColor(cocos2d::ccColor3B const&);
	virtual int getSpecial() const;
	virtual void setSpecial(int);

	cocos2d::CCSprite* m_firstLayer;
	cocos2d::CCSprite* m_secondLayer;
	cocos2d::CCSprite* m_birdDome;
	cocos2d::CCSprite* m_outlineSprite;
	int m_special;
}

[[link(android)]]
class SlideInLayer {
	// virtual ~SlideInLayer();
	// SlideInLayer();

	static SlideInLayer* create();

	TodoReturn getDelegate();
	TodoReturn getRemoveOnExit();

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
	virtual void layerHidden();
	virtual TodoReturn enterAnimFinished();
	virtual TodoReturn disableUI();
	virtual TodoReturn enableUI();
	virtual void setDelegate(SlideInLayerDelegate*);
	virtual void setRemoveOnExit(bool);
}

class SlideInLayerDelegate {
}

[[link(android), depends(SliderTouchLogic)]]
class Slider : cocos2d::CCLayer {
	// virtual ~Slider();

	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float) = win 0x1cff0;

	static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler, float scale) = win inline {
		return Slider::create(target, handler, "sliderBar.png", "slidergroove.png", "sliderthumb.png", "sliderthumbsel.png", scale);
	}

	static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler) = win inline {
		return Slider::create(target, handler, 1.0f);
	}

	TodoReturn getLiveDragging();
	TodoReturn getThumb();
	TodoReturn getValue();
	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float);
	void setBarVisibility(bool);
	void setLiveDragging(bool);
	void setValue(float) = win 0x1d270;
	void updateBar() = win 0x1d310;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);

	SliderTouchLogic* m_touchLogic;
	cocos2d::CCSprite* m_groove;
	float m_width;
	float m_height;
}

[[link(android)]]
class SliderThumb : cocos2d::CCMenuItemImage {
	// virtual ~SliderThumb();

	static SliderThumb* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*);

	float getValue() = win inline {
		return (this->getPosition().x + this->getScale() * 200.0 * 0.5) / (this->getScale() * 200.0);
	}

	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*);
	void setValue(float);
}

[[link(android), depends(SliderThumb)]]
class SliderTouchLogic : cocos2d::CCMenu {
	// virtual ~SliderTouchLogic();
	// SliderTouchLogic();

	static SliderTouchLogic* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float);

	bool getLiveDragging();
	Slider* getSliderDelegate();
	SliderThumb* getThumb();
	cocos2d::CCPoint getTouchOffset();
	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float);

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void setSliderDelegate(Slider*);
	virtual void setLiveDragging(bool);

	float m_unknownUnused;
	float m_length;
	SliderThumb* m_thumb;
	Slider* m_slider; // m_sliderDelegate
	bool m_activateThumb; // m_liveDragging
	cocos2d::CCPoint m_position; // m_touchOffset
}

[[link(android)]]
class SongCell {
	// virtual ~SongCell();
	SongCell(char const*, float, float);

	TodoReturn loadFromObject(SongObject*);
	void onClick(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class SongInfoLayer {
	// virtual ~SongInfoLayer();
	// SongInfoLayer();

	static SongInfoLayer* create(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string);
	static SongInfoLayer* create(int);

	bool init(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string);
	void onClose(cocos2d::CCObject* sender);
	void onDownload(cocos2d::CCObject* sender);
	void onFB(cocos2d::CCObject* sender);
	void onNG(cocos2d::CCObject* sender);
	void onYT(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
}

[[link(android)]]
class SongInfoObject : cocos2d::CCNode {
	// virtual ~SongInfoObject();

	static SongInfoObject* create(cocos2d::CCDictionary*);
	static SongInfoObject* create(int, gd::string, gd::string, int, float, gd::string, gd::string, gd::string, int);
	static SongInfoObject* create(int);

	TodoReturn createWithCoder(DS_Dictionary*);
	bool init(int, gd::string, gd::string, int, float, gd::string, gd::string, gd::string, int);

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();
	virtual int getSongID() const;
	virtual void setSongID(int);
	virtual gd::string getSongName() const;
	virtual void setSongName(gd::string);
	virtual gd::string getArtistName() const;
	virtual void setArtistName(gd::string);
	virtual gd::string getSongYT() const;
	virtual void setSongYT(gd::string);
	virtual gd::string getArtistYT() const;
	virtual void setArtistYT(gd::string);
	virtual gd::string getSongURL() const;
	virtual void setSongURL(gd::string);
	virtual int getArtistID() const;
	virtual void setArtistID(int);
	virtual float getFileSize() const;
	virtual void setFileSize(float);
	virtual bool getIsUnloaded() const;
	virtual void setIsUnloaded(bool);
	virtual bool getIsVerified() const;
	virtual void setIsVerified(bool);
	virtual bool getIsBlocked() const;
	virtual void setIsBlocked(bool);
	virtual int getSongPriority() const;
	virtual void setSongPriority(int);
	virtual LevelSettingsObject* getLevelSettings() const;
	virtual void setLevelSettings(LevelSettingsObject*);

	int m_songID;
	gd::string m_songName;
	gd::string m_artistName;
	gd::string m_youtubeVideo; // m_songYT
	gd::string m_youtubeChannel; // m_artistYT
	gd::string m_songUrl;
	gd::string m_artistID;
	float m_fileSize;
	bool m_isUnloaded;
	bool m_isVerified;
	bool m_isBlocked;
	int m_priority;
	LevelSettingsObject* m_levelSettings;
}

[[link(android)]]
class SongObject {
	// virtual ~SongObject();

	static SongObject* create(int);

	TodoReturn getAudioTrack();
	bool init(int);
}

[[link(android)]]
class SongOptionsLayer : FLAlertLayer {
	// virtual ~SongOptionsLayer();
	// SongOptionsLayer();

	static SongOptionsLayer* create(LevelSettingsObject*);

	bool init(LevelSettingsObject*) = win 0x37b00;
	void onClose(cocos2d::CCObject* sender);
	void onFadeIn(cocos2d::CCObject* sender);
	void onFadeOut(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onPlayback(cocos2d::CCObject* sender);
	TodoReturn updatePlaybackBtn();

	virtual void keyBackClicked();

	LevelSettingsObject* m_levelSettings;
	CCTextInputNode* m_offsetInput;
	CCMenuItemSpriteExtra* m_playbackBtn;
}

[[link(android)]]
class SongsLayer {
	// virtual ~SongsLayer();

	static SongsLayer* create();

	virtual void customSetup();
}

[[link(android)]]
class SpeedObject : cocos2d::CCNode {
	// virtual ~SpeedObject();

	static SpeedObject* create(int, float);

	bool init(int, float);

	virtual int getSpeedMod() const;
	virtual float getXPos() const;

	int m_speedMod;
	float m_xPos;
}

[[link(android)]]
class Spinor {
	TodoReturn slerp(Spinor const&, Spinor const&, float);
}

[[link(android)]]
class SpriteAnimationManager {
	// virtual ~SpriteAnimationManager();

	TodoReturn animationFinished();
	TodoReturn createAnimations(gd::string);
	TodoReturn createWithOwner(CCAnimatedSprite*, gd::string);
	TodoReturn doCleanup();
	TodoReturn executeAnimation(gd::string);
	TodoReturn finishAnimation(gd::string);
	TodoReturn getActiveAnimation();
	TodoReturn getAnimationContainer();
	TodoReturn getAnimType(gd::string);
	TodoReturn getPrio(gd::string);
	TodoReturn initWithOwner(CCAnimatedSprite*, gd::string);
	TodoReturn loadAnimations(gd::string);
	TodoReturn overridePrio();
	TodoReturn playSound(gd::string);
	TodoReturn playSoundForAnimation(gd::string);
	TodoReturn queueAnimation(gd::string);
	TodoReturn resetAnimState();
	TodoReturn runAnimation(gd::string);
	TodoReturn runQueuedAnimation();
	TodoReturn storeAnimation(cocos2d::CCAnimate*, gd::string, int, spriteMode, cocos2d::CCSpriteFrame*);
	TodoReturn storeSoundForAnimation(cocos2d::CCString*, gd::string, float);

	virtual void setAnimationContainer(cocos2d::CCDictionary*);
	virtual void setActiveAnimation(gd::string);
}

[[link(android)]]
class SpriteDescription {
	// virtual ~SpriteDescription();
	// SpriteDescription();

	TodoReturn createDescription(cocos2d::CCDictionary*);
	TodoReturn createDescription(DS_Dictionary*);
	TodoReturn getTransformValues(frameValues*);
	TodoReturn initDescription(cocos2d::CCDictionary*);
	TodoReturn initDescription(DS_Dictionary*);
}

[[link(android)]]
class StartPosObject : GameObject {
	// virtual ~StartPosObject();

	static StartPosObject* create();

	void setSettings(LevelSettingsObject*);

	virtual bool init();
	virtual gd::string getSaveString();
	virtual LevelSettingsObject* getSettings() const;

	LevelSettingsObject* m_settings;
}

[[link(android)]]
class StatsCell {
	// virtual ~StatsCell();
	StatsCell(char const*, float, float);

	TodoReturn getTitleFromKey(char const*);
	TodoReturn loadFromObject(StatsObject*);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class StatsLayer {
	// virtual ~StatsLayer();

	static StatsLayer* create();

	virtual void customSetup();
}

[[link(android)]]
class StatsObject {
	// virtual ~StatsObject();

	static StatsObject* create(char const*, int);

	TodoReturn getKey();
	TodoReturn getValue();
	bool init(char const*, int);
}

[[link(android)]]
class StoreToolbox {
	TodoReturn doICheck();
	bool isBillingSupported();
	TodoReturn purchaseItem(char const*);
	TodoReturn restorePurchases();
	TodoReturn setupStore();
}

[[link(android)]]
class SupportLayer : GJDropDownLayer, FLAlertLayerProtocol {
	// virtual ~SupportLayer();

	static SupportLayer* create();

	CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = win 0xfd9c0;
	TodoReturn exitLayer();
	void onCocos2d(cocos2d::CCObject* sender);
	void onEmail(cocos2d::CCObject* sender);
	void onFAQ(cocos2d::CCObject* sender);
	void onLowDetail(cocos2d::CCObject* sender);
	void onRestore(cocos2d::CCObject* sender);
	void onRobTop(cocos2d::CCObject* sender);
	TodoReturn sendSupportMail();

	virtual void customSetup() = win 0xfd420;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class TableView : CCScrollLayerExt, CCScrollLayerExtDelegate {
	// virtual ~TableView();
	TableView(cocos2d::CCRect);

	static TableView* create(TableViewDelegate*, TableViewDataSource*, cocos2d::CCRect);

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
	void reloadData() = win 0x1e1e0;
	TodoReturn removeIndexPathFromPathAddedArray(CCIndexPath&);
	TodoReturn scrollToIndexPath(CCIndexPath&);
	TodoReturn touchFinish(cocos2d::CCTouch*);

	virtual void onEnter();
	virtual void onExit();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x1e800;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x1e990;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x1e8c0;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x1e920;
	virtual void registerWithTouchDispatcher();
	virtual bool getIsTouch() const;
	virtual void setIsTouch(bool);
	virtual bool getClipsToBounds() const;
	virtual void setClipsToBounds(bool);
	virtual bool getTouchDispatch() const;
	virtual void setTouchDispatch(bool);
	virtual bool getIsScheduled() const;
	virtual void setIsScheduled(bool);
	virtual cocos2d::CCTouch* getBeginTouch() const;
	virtual void setBeginTouch(cocos2d::CCTouch*);
	virtual cocos2d::CCPoint getBeginLocation() const;
	virtual void setBeginLocation(cocos2d::CCPoint);
	virtual cocos2d::CCPoint getLastCellPos() const;
	virtual void setLastCellPos(cocos2d::CCPoint);
	virtual cocos2d::CCPoint getCheckLocation() const;
	virtual void setCheckLocation(cocos2d::CCPoint);
	virtual TableViewCell* getTouchCell() const;
	virtual void setTouchCell(TableViewCell*);
	virtual bool getEditable() const;
	virtual void setEditable(bool);
	virtual void scrollWheel(float, float) = win 0x1ebb0;
	virtual cocos2d::CCArray* getCellVisibleArray() const;
	virtual void setCellVisibleArray(cocos2d::CCArray*);
	virtual cocos2d::CCArray* getCellRemovedArray() const;
	virtual void setCellRemovedArray(cocos2d::CCArray*);
	virtual cocos2d::CCArray* getindexPathAddedArray() const;
	virtual void setindexPathAddedArray(cocos2d::CCArray*);
	virtual TableViewDelegate* getDelegate() const;
	virtual void setDelegate(TableViewDelegate*);
	virtual TableViewDataSource* getDataSource() const;
	virtual void setDataSource(TableViewDataSource*);
	virtual CCIndexPath* getScrollingToIndexPath() const;
	virtual void setScrollingToIndexPath(CCIndexPath*);
	virtual void scrllViewWillBeginDecelerating(CCScrollLayerExt*);
	virtual void scrollViewDidEndDecelerating(CCScrollLayerExt*);
	virtual void scrollViewTouchMoving(CCScrollLayerExt*);
	virtual void scrollViewDidEndMoving(CCScrollLayerExt*);
	virtual bool getStealTouches() const;
	virtual void setStealTouches(bool);

	bool m_touchOutOfBoundary; // m_isScheduled
	cocos2d::CCTouch* m_touchStart; // m_beginTouch
	cocos2d::CCPoint m_touchStartPosition2; // m_beginLocation
	cocos2d::CCPoint m_lastCellPos;
	cocos2d::CCPoint m_touchPosition2; // m_checkLocation
	TableViewCell* m_touchCell;
	bool m_editable;
	bool m_touchMoved; // m_isTouch
	cocos2d::CCArray* m_cellArray; // m_cellVisibleArray
	cocos2d::CCArray* m_cellRemovedArray;
	cocos2d::CCArray* m_indexPathAddedArray;
	TableViewDelegate* m_tableDelegate; // m_delegate
	TableViewDataSource* m_dataSource;
	bool m_clipsToBounds;
	CCIndexPath* m_scrollingToIndexPath;
	bool m_touchDispatch;
	float m_touchLastY;
	bool m_inStealingTouch;
	bool m_cancellingTouches; // m_stealTouches
}

[[link(android), depends(CCIndexPath)]]
class TableViewCell : cocos2d::CCLayer {
	// virtual ~TableViewCell();
	TableViewCell(char const*, float, float) = win 0x1f9e0;

	TodoReturn deleteButtonSelector(cocos2d::CCObject*);
	bool isDeleteButtonShow();
	TodoReturn resetDeleteButtonPosition();
	TodoReturn showDeleteButton(bool);
	TodoReturn updateVisibility();

	virtual bool getEditable() const = win 0x6990;
	virtual void setEditable(bool) = win 0x69a0;
	virtual cocos2d::ccColor3B getDelBtnColor() const = win 0x69b0;
	virtual void setDelBtnColor(cocos2d::ccColor3B) = win 0x69d0;
	virtual cocos2d::CCMenuItem* getDeleteButton() const = win 0x69f0;
	virtual void setDeleteButton(cocos2d::CCMenuItem*) = win 0x6a00;
	virtual gd::string getCellIdentifier() const = win 0x6a10;
	virtual void setCellIdentifier(gd::string const&) = win 0x6a20;

	cocos2d::CCMenu* m_buttonMenu;
	TableView* m_tableView;
	CCIndexPath m_indexPath;
	bool m_editable;
	cocos2d::ccColor3B m_delBtnColor;
	cocos2d::CCMenuItem* m_deleteButton;
	gd::string m_cellIdentifier;
	float m_width;
	float m_height;
	cocos2d::CCLayerColor* m_backgroundLayer;
	cocos2d::CCLayer* m_mainLayer;
}

[[link(android)]]
class TableViewDataSource {
	virtual int numberOfRowsInSection(unsigned int, TableView*);
	virtual unsigned int numberOfSectionsInTableView(TableView*);
	virtual void TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&);
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
class TextArea : cocos2d::CCSprite {
	// virtual ~TextArea();
	// TextArea();

	static TextArea* create(char const* str, char const* font, float scale, float width, cocos2d::CCPoint anchor, float lineHeight) = win 0x200a0;
	static TextArea* create(char const* str, float width, int, cocos2d::CCPoint anchor, char const* font, float lineHeight) = win inline {
		return TextArea::create(str, font, 1.0f, width, anchor, lineHeight);
	}

	void colorAllCharactersTo(cocos2d::ccColor3B) = win 0x20770;
	TodoReturn fadeIn(float, bool);
	TodoReturn fadeOut(float);
	TodoReturn fadeOutAndRemove();
	TodoReturn finishFade();
	TodoReturn hideAll();
	bool init(char const*, char const*, float, float, cocos2d::CCPoint, float);
	void setString(char const*) = win 0x20220;
	TodoReturn showAll();
	TodoReturn stopAllCharacterActions();

	virtual void draw();
	virtual void setOpacity(unsigned char);
	virtual float getLineSpace() const;
	virtual void setLineSpace(float);
	virtual bool getOnTimer() const;
	virtual void setOnTimer(bool);
	virtual cocos2d::CCPoint getAlign() const;
	virtual void setAlign(cocos2d::CCPoint);
	virtual bool getFadeInFinished() const;
	virtual void setFadeInFinished(bool);
	virtual float getFontScale() const;
	virtual void setFontScale(float);
	virtual TodoReturn getTextHeight() const;
	virtual TodoReturn getTextWidth() const;
	virtual TodoReturn getSizeWidth() const;
	virtual TodoReturn getTextPosition() const;

	MultilineBitmapFont* m_label;
	float m_width;
	int m_iUnused1;
	gd::string m_fontFile;
	float m_height; // m_lineSpace
	bool m_onTimer;
	cocos2d::CCPoint m_anchorPoint; // m_align
	bool m_allShown; // m_fadeInFinished
	float m_scale; // m_fontScale
	int m_rectHeight; // m_textHeight
	int m_rectWidth; // m_textWidth
	float m_maxWidth; // m_sizeWidth
	cocos2d::CCPoint m_textPosition;
}

[[link(android)]]
class TextInputDelegate {
	virtual void textChanged(CCTextInputNode*) {}
	virtual void textInputOpened(CCTextInputNode*) {}
	virtual void textInputClosed(CCTextInputNode*) {}
	virtual void textInputShouldOffset(CCTextInputNode*, float) {}
	virtual void textInputReturn(CCTextInputNode*) {}
	virtual bool allowTextInput(CCTextInputNode*) { return true; }
}

[[link(android)]]
class TutorialLayer {
	// virtual ~TutorialLayer();
	// TutorialLayer();

	static TutorialLayer* create();

	TodoReturn loadPage(int);
	void onClose(cocos2d::CCObject* sender);
	void onNext(cocos2d::CCObject* sender);
	TodoReturn removeTutorialTexture();

	virtual bool init();
	virtual void keyBackClicked();
}

[[link(android)]]
class TutorialPopup {
	// virtual ~TutorialPopup();
	// TutorialPopup();

	static TutorialPopup* create(gd::string);

	TodoReturn animateMenu();
	TodoReturn closeTutorial(cocos2d::CCObject*);
	bool init(gd::string);
	TodoReturn registerForCallback(cocos2d::SEL_MenuHandler, cocos2d::CCNode*);

	virtual void keyBackClicked();
	virtual TodoReturn show();
}

[[link(android)]]
class UILayer : cocos2d::CCLayerColor {
	// virtual ~UILayer();
	// UILayer();

	static UILayer* create() = win 0xfebc0;

	TodoReturn disableMenu();
	TodoReturn enableMenu();
	void onCheck(cocos2d::CCObject* sender);
	void onDeleteCheck(cocos2d::CCObject* sender);
	void onPause(cocos2d::CCObject* sender);
	TodoReturn pCommand(cocos2d::CCNode*);
	void toggleCheckpointsMenu(bool enabled) = win inline {
		this->m_checkpointMenu->setVisible(enabled);
	}

	virtual bool init() = win 0xfec60;
	virtual void draw();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0xff130;
	virtual void keyUp(cocos2d::enumKeyCodes);
	virtual float getClkTimer() const;

	void* m_stupidDelegate;
	void* m_pUnknown1;
	cocos2d::CCMenu* m_checkpointMenu;
	CCMenuItemSpriteExtra* m_pauseBtn;
	bool m_bUnknown2;
	bool m_bUnknown3;
	bool m_p1Jumping;
	bool m_p2Jumping;
	bool m_checkpointBtnDown;
	int m_p1TouchId;
	int m_p2TouchId;
	float m_clkTimer;
}

[[link(android)]]
class UndoObject {
	// virtual ~UndoObject();

	static UndoObject* create(GameObject*, UndoCommand);

	TodoReturn createWithArray(cocos2d::CCArray*, UndoCommand);
	TodoReturn createWithTransformObjects(cocos2d::CCArray*, UndoCommand);
	TodoReturn getCommand();
	TodoReturn getIsLinked();
	TodoReturn getObject();
	TodoReturn getObjects();
	bool init(cocos2d::CCArray*, UndoCommand);
	bool init(GameObject*, UndoCommand);
	TodoReturn initWithTransformObjects(cocos2d::CCArray*, UndoCommand);
	void setObjects(cocos2d::CCArray*);

	virtual void setIsLinked(bool);
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
	virtual void levelUploadFinished(GJGameLevel*);
	virtual void levelUploadFailed(GJGameLevel*) = win 0xfa600;

	GJGameLevel* m_level;
	TextArea* m_textArea;
	LoadingCircle* m_loadingCircle;
	CCMenuItemSpriteExtra* m_backBtn;
}

[[link(android)]]
class VideoOptionsLayer : FLAlertLayer {
	// virtual ~VideoOptionsLayer();

	static VideoOptionsLayer* create() = win 0xd32c0;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float, bool);
	void onAdvanced(cocos2d::CCObject* sender);
	void onApply(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onFullscreen(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onResolutionNext(cocos2d::CCObject* sender);
	void onResolutionPrev(cocos2d::CCObject* sender);
	void onTextureQualityNext(cocos2d::CCObject* sender);
	void onTextureQualityPrev(cocos2d::CCObject* sender);
	void toggleResolution();
	void updateResolution(int);
	void updateTextureQuality(int);

	virtual bool init();
	virtual void keyBackClicked();

	CCMenuItemSpriteExtra* m_prevResolution;
	CCMenuItemSpriteExtra* m_nextResolution;
	cocos2d::CCLabelBMFont* m_resolutionLabel;
	cocos2d::CCLabelBMFont* m_resolutionText;
	cocos2d::CCLabelBMFont* m_qualityLabel;
	cocos2d::TextureQuality m_quality;
	cocos2d::CCArray* m_resolutions;
	bool m_isFullscreen;
	int m_currentResolution;
}
