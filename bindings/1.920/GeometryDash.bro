// clang-format off

[[link(android)]]
class AccountHelpLayer {
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
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class AccountLayer {
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

	virtual TodoReturn customSetup();
	virtual TodoReturn layerHidden();
	virtual TodoReturn backupAccountFinished();
	virtual TodoReturn backupAccountFailed(BackupAccountError);
	virtual TodoReturn syncAccountFinished();
	virtual TodoReturn syncAccountFailed(BackupAccountError);
	virtual TodoReturn accountStatusChanged();
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class AccountLoginLayer {
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
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn loginAccountFinished(int, int);
	virtual TodoReturn loginAccountFailed(AccountError);
}

[[link(android)]]
class AccountRegisterLayer {
	// virtual ~AccountRegisterLayer();
	// AccountRegisterLayer();

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
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void textInputOpened(CCTextInputNode*);
	virtual void textInputClosed(CCTextInputNode*);
	virtual void textChanged(CCTextInputNode*);
	virtual void textInputShouldOffset(CCTextInputNode*, float);
	virtual void textInputReturn(CCTextInputNode*);
	virtual bool allowTextInput(CCTextInputNode*);
	virtual TodoReturn registerAccountFinished();
	virtual TodoReturn registerAccountFailed(AccountError);
}

[[link(android)]]
class AchievementBar {
	// virtual ~AchievementBar();

	static AchievementBar* create(char const*, char const*, char const*);

	TodoReturn getTargetScene();
	bool init(char const*, char const*, char const*);
	TodoReturn show();

	virtual void setTargetScene(cocos2d::CCNode*);
}

[[link(android)]]
class AchievementCell {
	// virtual ~AchievementCell();
	AchievementCell(char const*, float, float);

	TodoReturn loadFromDict(cocos2d::CCDictionary*);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class AchievementManager {
	// virtual ~AchievementManager();

	static AchievementManager* sharedState();

	TodoReturn areAchievementsEarned(cocos2d::CCArray*);
	TodoReturn checkAchFromUnlock(char const*);
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn getAchievementsWithID(char const*);
	TodoReturn getAllAchievements();
	TodoReturn getAllAchievementsSorted();
	TodoReturn getDontNotifyAch();
	TodoReturn getReportedAchievements();
	bool isAchievementEarned(char const*);
	TodoReturn notifyAchievementWithID(char const*);
	TodoReturn percentageForCount(int, int);
	TodoReturn percentForAchievement(char const*);
	TodoReturn reportAchievementWithID(char const*, int, bool);
	TodoReturn reportPlatformAchievementWithID(char const*, int);
	TodoReturn resetAchievement(char const*);
	TodoReturn resetAchievements();
	TodoReturn setup();

	virtual bool init();
	virtual void setReportedAchievements(cocos2d::CCDictionary*);
	virtual void setDontNotifyAch(bool);
}

[[link(android)]]
class AchievementNotifier {
	// virtual ~AchievementNotifier();

	static AchievementNotifier* sharedState();

	TodoReturn achievementDisplayFinished();
	TodoReturn notifyAchievement(char const*, char const*, char const*);
	TodoReturn showNextAchievement();
	void willSwitchToScene(cocos2d::CCScene*);

	virtual bool init();
}

[[link(android)]]
class AchievementsLayer {
	// virtual ~AchievementsLayer();
	// AchievementsLayer();

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
	TodoReturn disableBanner();
	TodoReturn enableBanner();
	TodoReturn hasCachedInterstitial();
	TodoReturn setupAds();
	TodoReturn showInterstitial();
}

class AnimatedSpriteDelegate {
}

[[link(android)]]
class AppDelegate : cocos2d::CCApplication, cocos2d::CCSceneDelegate {
	// virtual ~AppDelegate();

	static AppDelegate* get();

	float bgScale();
	TodoReturn checkSound();
	TodoReturn hideLoadingCircle();
	TodoReturn loadingIsFinished();
	TodoReturn musicTest();
	void pauseGame();
	TodoReturn platformShutdown();
	TodoReturn resumeSound();
	void setIdleTimerDisabled(bool);
	void setupGLView();
	TodoReturn showLoadingCircle(bool, bool, bool);

	virtual bool applicationDidFinishLaunching();
	virtual void applicationDidEnterBackground();
	virtual void applicationWillEnterForeground();
	virtual void applicationWillBecomeActive();
	virtual void applicationWillResignActive();
	virtual void trySaveGame();
	virtual void willSwitchToScene(cocos2d::CCScene*);
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
}

[[link(android)]]
class AudioEffectsLayer {
	// virtual ~AudioEffectsLayer();

	static AudioEffectsLayer* create(gd::string);

	TodoReturn audioStep(float);
	TodoReturn getAudioScale();
	TodoReturn getBGSquare();
	TodoReturn getRainActive();
	TodoReturn goingDown();
	bool init(gd::string);
	TodoReturn resetAudioVars();
	TodoReturn triggerEffect(float);

	virtual void draw();
	virtual void updateTweenAction(float, char const*);
	virtual void setRainActive(bool);
}

[[link(android)]]
class BitmapFontCache {
	// virtual ~BitmapFontCache();

	static BitmapFontCache* sharedFontCache();

	TodoReturn fontWithConfigFile(char const*, float);
	bool init();
	TodoReturn purgeSharedFontCache();
}

[[link(android)]]
class BonusDropdown {
	// virtual ~BonusDropdown();

	static BonusDropdown* create(gd::string, int);

	TodoReturn getTargetScene();
	bool init(gd::string, int);
	TodoReturn show();

	virtual void setTargetScene(cocos2d::CCNode*);
}

[[link(android)]]
class BoomListLayer {
	// virtual ~BoomListLayer();

	static BoomListLayer* create(BoomListView*, char const*);

	bool init(BoomListView*, char const*);
}

[[link(android)]]
class BoomListView : cocos2d::CCLayer, TableViewDelegate, TableViewDataSource {
	// virtual ~BoomListView();

	static BoomListView* create(cocos2d::CCArray*, float, float, int, BoomListType);

	bool init(cocos2d::CCArray*, float, float, int, BoomListType);

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

	TodoReturn addPage(cocos2d::CCLayer*, int);
	TodoReturn addPage(cocos2d::CCLayer*);
	TodoReturn cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn claimTouch(cocos2d::CCTouch*);
	TodoReturn getCurrentScreen();
	TodoReturn getDelegate();
	TodoReturn getInternalLayer();
	TodoReturn getMarginOffset();
	TodoReturn getMinimumTouchLengthToChangePage();
	TodoReturn getMinimumTouchLengthToSlide();
	TodoReturn getMinTouchSpeed();
	TodoReturn getMovingToPage();
	TodoReturn getPage(int);
	TodoReturn getpages();
	TodoReturn getPagesIndicatorNormalColor();
	TodoReturn getPagesIndicatorSelectedColor();
	TodoReturn getPagesWidthOffset();
	TodoReturn getRelativePageForNum(int);
	TodoReturn getRelativePosForPage(int);
	TodoReturn getScrollArea();
	TodoReturn getShowPagesIndicator();
	TodoReturn getStealTouches();
	TodoReturn getTotalPages();
	TodoReturn getTouchSpeedFast();
	TodoReturn getTouchSpeedMid();
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
	virtual void setScrollArea(cocos2d::CCRect);
	virtual void setMinTouchSpeed(float);
	virtual void setTouchSpeedFast(float);
	virtual void setTouchSpeedMid(float);
	virtual void setDelegate(BoomScrollLayerDelegate*);
	virtual void setMinimumTouchLengthToSlide(float);
	virtual void setMinimumTouchLengthToChangePage(float);
	virtual void setMarginOffset(float);
	virtual void setStealTouches(bool);
	virtual void setShowPagesIndicator(bool);
	virtual void setPagesIndicatorSelectedColor(cocos2d::ccColor4B);
	virtual void setPagesIndicatorNormalColor(cocos2d::ccColor4B);
	virtual void setPagesWidthOffset(float);
}

[[link(android)]]
class BoomScrollLayerDelegate {
	virtual TodoReturn scrollLayerScrollingStarted(BoomScrollLayer*);
	virtual TodoReturn scrollLayerScrolledToPage(BoomScrollLayer*, int);
	virtual TodoReturn scrollLayerMoved(cocos2d::CCPoint);
}

[[link(android)]]
class ButtonPage {
	// virtual ~ButtonPage();

	static ButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint);

	bool init(cocos2d::CCArray*, cocos2d::CCPoint);
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
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*, float);
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*);
	static ButtonSprite* create(char const*, int, int, float, bool);
	static ButtonSprite* create(char const*);
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool, char const*);
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool);
	static ButtonSprite* create(cocos2d::CCSprite*);

	TodoReturn getBtnSprite();
	bool init(char const*, int, int, float, bool, char const*, char const*, float);
	bool init(cocos2d::CCSprite*, int, int, float, float, bool, char const*);
	void setColor(cocos2d::ccColor3B);
	void setString(char const*);
	void updateBGImage(char const*);
	void updateSpriteBGSize();
	void updateSpriteOffset(cocos2d::CCPoint);
}

[[link(android)]]
class CCAlertCircle {
	// virtual ~CCAlertCircle();

	static CCAlertCircle* create();

	TodoReturn getCircle();

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class CCAnimatedSprite {
	// virtual ~CCAnimatedSprite();

	TodoReturn cleanupSprite();
	TodoReturn createWithType(char const*);
	TodoReturn getActiveSpriteMode();
	TodoReturn getAnimatedSprite();
	TodoReturn getAnimManager();
	TodoReturn getDefaultAnimation();
	TodoReturn getDelegate();
	TodoReturn getNormalSprite();
	TodoReturn getSprite();
	TodoReturn initWithType(char const*);
	TodoReturn loadType(char const*);
	TodoReturn switchToMode(spriteMode);

	virtual void setOpacity(unsigned char);
	virtual TodoReturn animationFinished(char const*);
	virtual TodoReturn animationFinishedO(cocos2d::CCObject*);
	virtual void setSprite(cocos2d::CCSprite*);
	virtual void setNormalSprite(cocos2d::CCSprite*);
	virtual void setAnimatedSprite(CCPartAnimSprite*);
	virtual void setDefaultAnimation(gd::string);
	virtual void setDelegate(AnimatedSpriteDelegate*);
}

[[link(android)]]
class CCAnimateFrameCache {
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
class CCBlockLayer {
	// virtual ~CCBlockLayer();

	static CCBlockLayer* create();

	TodoReturn getRemoveOnExit();

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
	virtual void setRemoveOnExit(bool);
}

[[link(android)]]
class CCCircleAlert {
	// virtual ~CCCircleAlert();

	static CCCircleAlert* create(float, float, float);

	bool init(float, float, float);
}

[[link(android)]]
class CCCircleWave {
	// virtual ~CCCircleWave();
	// CCCircleWave();

	static CCCircleWave* create(float, float, float, bool, bool);
	static CCCircleWave* create(float, float, float, bool);

	TodoReturn baseSetup(float);
	TodoReturn followObject(cocos2d::CCNode*, bool);
	TodoReturn getBlendAdditive();
	TodoReturn getCircleMode();
	TodoReturn getColor();
	TodoReturn getDelegate();
	TodoReturn getLineWidth();
	TodoReturn getOpacity();
	TodoReturn getOpacityMod();
	TodoReturn getRadius();
	TodoReturn getWidth();
	bool init(float, float, float, bool, bool);
	TodoReturn updatePosition(float);

	virtual cocos2d::CCPoint const& getPosition();
	virtual void removeMeAndCleanup();
	virtual void draw();
	virtual void updateTweenAction(float, char const*);
	virtual void setWidth(float);
	virtual void setRadius(float);
	virtual void setOpacity(float);
	virtual void setColor(cocos2d::ccColor3B);
	virtual void setPosition(cocos2d::CCPoint);
	virtual void setCircleMode(CircleMode);
	virtual void setLineWidth(int);
	virtual void setOpacityMod(float);
	virtual void setBlendAdditive(bool);
	virtual void setDelegate(CCCircleWaveDelegate*);
}

[[link(android)]]
class CCCircleWaveDelegate {
	virtual TodoReturn circleWaveWillBeRemoved(CCCircleWave*);
}

[[link(android)]]
class CCContentLayer : cocos2d::CCLayerColor {
	inline CCContentLayer() {}
	// virtual ~CCContentLayer();

	static CCContentLayer* create(cocos2d::ccColor4B const&, float, float);

	virtual void setPosition(cocos2d::CCPoint const&);
}

[[link(android)]]
class CCCountdown {
	// virtual ~CCCountdown();

	static CCCountdown* create();

	TodoReturn lapFinished();
	TodoReturn startTimerWithSeconds(float, cocos2d::SEL_CallFunc, cocos2d::CCNode*);

	virtual bool init();
	virtual void setOpacity(unsigned char);
}

[[link(android)]]
class CCCounterLabel {
	// virtual ~CCCounterLabel();

	static CCCounterLabel* create(char const*, char const*, int, FormatterType);

	TodoReturn calculateStepSize();
	TodoReturn disableCounter();
	TodoReturn enableCounter();
	TodoReturn fastUpdateCounter();
	TodoReturn getCurrentCount();
	TodoReturn getTargetCount();
	bool init(char const*, char const*, int, FormatterType);
	void setTargetCount(int);
	TodoReturn setupFormatter(FormatterType);
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
	// CCMenuItemSpriteExtra();

	static CCMenuItemSpriteExtra* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	static CCMenuItemSpriteExtra* create(cocos2d::CCNode* sprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) {
		return CCMenuItemSpriteExtra::create(sprite, nullptr, target, callback);
	}

	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	void setSizeMult(float);

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

	static CCMenuItemToggler* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	static CCMenuItemToggler* createWithStandardSprites(cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback, float scale) {
		auto sprOff = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOff_001.png");
		auto sprOn = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOn_001.png");

		sprOff->setScale(scale);
		sprOn->setScale(scale);

		return create(sprOff, sprOn, target, callback);
	}

	CCMenuItemSpriteExtra* activeItem();
	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	void normalTouch(cocos2d::CCObject*);
	void selectedTouch(cocos2d::CCObject*);
	void setSizeMult(float);
	void toggle(bool);

	virtual void activate();
	virtual void selected();
	virtual void unselected();
	virtual void setEnabled(bool);
	CCMenuItemSpriteExtra* getNormalButton() const;
	CCMenuItemSpriteExtra* getSelectedButton() const;
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
	CCScrollLayerExt(cocos2d::CCRect);

	void constraintContent();
	float getMaxY();
	float getMinY();
	void moveToTop();
	void moveToTopWithOffset(float);
	void scrollingEnd();
	void scrollLayer(float);
	void setContentLayerSize(cocos2d::CCSize);
	void setContentOffset(cocos2d::CCPoint, bool);
	void updateIndicators(float);

	virtual void visit();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void preVisitWithClippingRect(cocos2d::CCRect);
	virtual void postVisit();
	virtual bool getIsTouch() const;
	virtual void setIsTouch(bool);
	virtual bool getIsScrolling() const;
	virtual void setIsScrolling(bool);
	virtual cocos2d::CCLayerColor* getVerticalScrollIndicator() const;
	virtual void setVerticalScrollIndicator(cocos2d::CCLayerColor*);
	virtual cocos2d::CCLayerColor* getHorizontalScrollIndicator() const;
	virtual void setHorizontalScrollIndicator(cocos2d::CCLayerColor*);
	virtual CCScrollLayerExtDelegate* getScrollDelegate() const;
	virtual void setScrollDelegate(CCScrollLayerExtDelegate*);
	virtual cocos2d::CCLayerColor* getContentLayer() const;
	virtual void setContentLayer(cocos2d::CCLayerColor*);
	virtual bool getClipsToBounds() const;
	virtual void setClipsToBounds(bool);
	virtual bool getShowsHorizontalScrollIndicator() const;
	virtual void setShowsHorizontalScrollIndicator(bool);
	virtual bool getShowsVerticalScrollIndicator() const;
	virtual void setShowsVerticalScrollIndicator(bool);
	virtual bool getLockHorizontal() const;
	virtual void setLockHorizontal(bool);
	virtual bool getLockVertical() const;
	virtual void setLockVertical(bool);
	virtual bool getTouchDispatch() const;
	virtual void setTouchDispatch(bool);
	virtual float getTopPadding() const;
	virtual void setTopPadding(float);
	virtual float getBottomPadding() const;
	virtual void setBottomPadding(float);
	virtual float getMaxOffsetTop() const;
	virtual void setMaxOffsetTop(float);
	virtual float getMaxOffsetBottom() const;
	virtual void setMaxOffsetBottom(float);

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
	virtual TodoReturn scrllViewWillBeginDecelerating(CCScrollLayerExt*);
	virtual TodoReturn scrollViewDidEndDecelerating(CCScrollLayerExt*);
	virtual TodoReturn scrollViewTouchMoving(CCScrollLayerExt*);
	virtual TodoReturn scrollViewDidEndMoving(CCScrollLayerExt*);
	virtual TodoReturn scrollViewTouchBegin(CCScrollLayerExt*);
	virtual TodoReturn scrollViewTouchEnd(CCScrollLayerExt*);
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
class CCSpritePlus {
	// virtual ~CCSpritePlus();

	TodoReturn addFollower(cocos2d::CCNode*);
	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(char const*);
	TodoReturn followSprite(CCSpritePlus*);
	TodoReturn removeFollower(cocos2d::CCNode*);
	TodoReturn stopFollow();

	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setScale(float);
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setRotation(float);
	virtual bool initWithSpriteFrameName(char const*);
	virtual void setFlipX(bool);
	virtual void setFlipY(bool);
}

[[link(android)]]
class CCTextInputNode : cocos2d::CCLayer, cocos2d::CCIMEDelegate, cocos2d::CCTextFieldDelegate {
	// virtual ~CCTextInputNode();
	// CCTextInputNode();

	static CCTextInputNode* create(float, float, char const*, char const*, int, char const*);

	static CCTextInputNode* create(float width, float height, char const* placeholder, char const* fontPath) {
		return CCTextInputNode::create(width, height, placeholder, 0x18, fontPath);
	}

	static CCTextInputNode* create(float width, float height, char const* placeholder, int fontSize, char const* fontPath) {
		return CCTextInputNode::create(width, height, placeholder, "Thonburi", fontSize, fontPath);
	}

	TodoReturn forceOffset();
	TodoReturn getCharLimit();
	TodoReturn getDelegate();
	TodoReturn getIsPassword();
	TodoReturn getLabel();
	TodoReturn getProfanityFilter();
	gd::string getString();
	TodoReturn getTextField();
	bool init(float, float, char const*, char const*, int, char const*);
	void refreshLabel();
	void setAllowedChars(gd::string);
	void setLabelNormalColor(cocos2d::ccColor3B);
	void setLabelPlaceholderColor(cocos2d::ccColor3B);
	void setLabelPlaceholderScale(float);
	void setMaxLabelScale(float);
	void setMaxLabelWidth(float);
	void setString(gd::string);
	TodoReturn updateBlinkLabel();
	TodoReturn updateLabel(gd::string);

	virtual void visit();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void textChanged();
	virtual void onClickTrackNode(bool);
	virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
	virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
	virtual bool onTextFieldInsertText(cocos2d::CCTextFieldTTF*, char const*, int);
	virtual bool onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF*);
	virtual bool onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF*);
	virtual void setDelegate(TextInputDelegate*);
	virtual void setCharLimit(int);
	virtual void setProfanityFilter(bool);
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
class CheckpointObject {
	// virtual ~CheckpointObject();
	// CheckpointObject();

	static CheckpointObject* create();

	TodoReturn getActiveEnterEffect();
	TodoReturn getBgColorAction();
	TodoReturn getCameraPos();
	TodoReturn getColorAction(ColorAction*, cocos2d::ccColor3B);
	TodoReturn getCustomColor01Action();
	TodoReturn getCustomColor02Action();
	TodoReturn getCustomColor03Action();
	TodoReturn getCustomColor04Action();
	TodoReturn getDLineColorAction();
	TodoReturn getDualMode();
	TodoReturn getGColorAction();
	TodoReturn getIsFlipped();
	TodoReturn getLineColorAction();
	TodoReturn getObjColorAction();
	TodoReturn getObject();
	TodoReturn getPlayerCheck01();
	TodoReturn getPlayerCheck02();
	TodoReturn getPortalObject();
	TodoReturn getTimeStamp();
	void setObject(GameObject*);

	virtual bool init();
	virtual void setPlayerCheck01(PlayerCheckpoint*);
	virtual void setPlayerCheck02(PlayerCheckpoint*);
	virtual void setDualMode(bool);
	virtual void setIsFlipped(bool);
	virtual void setCameraPos(cocos2d::CCPoint);
	virtual void setBgColorAction(ColorAction*);
	virtual void setLineColorAction(ColorAction*);
	virtual void setObjColorAction(ColorAction*);
	virtual void setGColorAction(ColorAction*);
	virtual void setDLineColorAction(ColorAction*);
	virtual void setCustomColor01Action(ColorAction*);
	virtual void setCustomColor02Action(ColorAction*);
	virtual void setCustomColor03Action(ColorAction*);
	virtual void setCustomColor04Action(ColorAction*);
	virtual void setActiveEnterEffect(EnterEffect);
	virtual void setPortalObject(GameObject*);
	virtual void setTimeStamp(double);
}

[[link(android)]]
class ColorAction {
	// virtual ~ColorAction();

	static ColorAction* create(cocos2d::ccColor3B, cocos2d::ccColor3B, float, double, bool);

	TodoReturn getBlend();
	TodoReturn getDuration();
	TodoReturn getFromColor();
	TodoReturn getTimeStamp();
	TodoReturn getToColor();
	bool init(cocos2d::ccColor3B, cocos2d::ccColor3B, float, double, bool);

	virtual void setFromColor(cocos2d::ccColor3B);
	virtual void setToColor(cocos2d::ccColor3B);
	virtual void setDuration(float);
	virtual void setTimeStamp(double);
	virtual void setBlend(bool);
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
class ColorSelectPopup {
	// virtual ~ColorSelectPopup();
	// ColorSelectPopup();

	static ColorSelectPopup* create(GameObject*, int, int, int);
	static ColorSelectPopup* create(GameObject*);
	static ColorSelectPopup* create(int, int, int);

	TodoReturn closeColorSelect(cocos2d::CCObject*);
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn getColorValue();
	TodoReturn getCustom();
	TodoReturn getCustom2();
	TodoReturn getDelegate();
	TodoReturn getDuration();
	bool init(GameObject*, int, int, int);
	void onCopy(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onPlayerColor1(cocos2d::CCObject* sender);
	void onPlayerColor2(cocos2d::CCObject* sender);
	void onTintGround(cocos2d::CCObject* sender);
	void onToggleTintMode(cocos2d::CCObject* sender);
	void onTouchTriggered(cocos2d::CCObject* sender);
	TodoReturn selectColor(cocos2d::ccColor3B);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateDurLabel();

	virtual void keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn colorValueChanged(cocos2d::ccColor3B);
	virtual void setDelegate(ColorSelectDelegate*);
}

[[link(android)]]
class CommentCell {
	// virtual ~CommentCell();
	CommentCell(char const*, float, float);

	TodoReturn incrementDislikes();
	TodoReturn incrementLikes();
	TodoReturn loadFromComment(GJComment*);
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
	virtual TodoReturn commentUploadFinished(int);
	virtual TodoReturn commentUploadFailed(int);
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
class CreateMenuItem {
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
class CreatorLayer {
	// virtual ~CreatorLayer();

	static CreatorLayer* create();

	void onBack(cocos2d::CCObject* sender);
	void onFeaturedLevels(cocos2d::CCObject* sender);
	void onLeaderboards(cocos2d::CCObject* sender);
	void onMapPacks(cocos2d::CCObject* sender);
	void onMyLevels(cocos2d::CCObject* sender);
	void onOnlineLevels(cocos2d::CCObject* sender);
	void onSavedLevels(cocos2d::CCObject* sender);
	TodoReturn scene();

	virtual bool init();
	virtual void keyBackClicked();
}

[[link(android)]]
class CustomizeObjectLayer {
	// virtual ~CustomizeObjectLayer();
	// CustomizeObjectLayer();

	static CustomizeObjectLayer* create(GameObject*, cocos2d::CCArray*);

	TodoReturn highlightSelected(ButtonSprite*);
	bool init(GameObject*, cocos2d::CCArray*);
	void onClose(cocos2d::CCObject* sender);
	void onSelectColor(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
}

[[link(android)]]
class CustomListView : BoomListView {
	// virtual ~CustomListView();
	CustomListView();

	static CustomListView* create(cocos2d::CCArray*, float, float, int, BoomListType);

	virtual void setupList();
	virtual TableViewCell* getListCell(char const*);
	virtual void loadCell(TableViewCell*, int);
}

[[link(android)]]
class CustomSongCell {
	// virtual ~CustomSongCell();
	CustomSongCell(char const*, float, float);

	TodoReturn loadFromObject(SongInfoObject*);
	void onDelete(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class CustomSongLayer {
	// virtual ~CustomSongLayer();
	// CustomSongLayer();

	static CustomSongLayer* create(LevelSettingsObject*);

	TodoReturn getDelegate();
	bool init(LevelSettingsObject*);
	void onClose(cocos2d::CCObject* sender);
	void onCreateLines(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onNewgrounds(cocos2d::CCObject* sender);
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
	virtual void setDelegate(CustomSongLayerDelegate*);
}

[[link(android)]]
class CustomSongLayerDelegate {
	virtual TodoReturn customSongLayerClosed();
}

[[link(android)]]
class CustomSongWidget {
	// virtual ~CustomSongWidget();
	// CustomSongWidget();

	static CustomSongWidget* create(SongInfoObject*, LevelSettingsObject*, bool, bool, bool, bool, bool);

	TodoReturn downloadFailed();
	TodoReturn getReportSongSelect();
	TodoReturn getSongInfoIfUnloaded();
	TodoReturn getSongObject();
	bool init(SongInfoObject*, LevelSettingsObject*, bool, bool, bool, bool, bool);
	void onCancelDownload(cocos2d::CCObject* sender);
	void onDownload(cocos2d::CCObject* sender);
	void onGetSongInfo(cocos2d::CCObject* sender);
	void onMore(cocos2d::CCObject* sender);
	void onPlayback(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);
	TodoReturn startDownload();
	TodoReturn startMonitorDownload();
	TodoReturn toggleUpdateButton(bool);
	TodoReturn updateDownloadProgress(float);
	TodoReturn updateError(GJSongError);
	TodoReturn updatePlaybackBtn();
	TodoReturn updateProgressBar(int);
	TodoReturn updateSongInfo();
	TodoReturn updateSongObject(SongInfoObject*);
	TodoReturn verifySongID(int);

	virtual TodoReturn loadSongInfoFinished(SongInfoObject*);
	virtual TodoReturn loadSongInfoFailed(int, GJSongError);
	virtual TodoReturn downloadSongFinished(SongInfoObject*);
	virtual TodoReturn downloadSongFailed(int, GJSongError);
	virtual TodoReturn songStateChanged();
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void setSongObject(SongInfoObject*);
	virtual void setReportSongSelect(bool);
}

[[link(android)]]
class DrawGridLayer {
	// virtual ~DrawGridLayer();

	static DrawGridLayer* create(cocos2d::CCNode*, LevelEditorLayer*);

	TodoReturn addPlayer2Point(cocos2d::CCPoint, bool);
	TodoReturn addPlayerPoint(cocos2d::CCPoint);
	TodoReturn addToEffects(GameObject*);
	TodoReturn addToGuides(GameObject*);
	TodoReturn addToSpeedObjects(GameObject*);
	TodoReturn clearPlayerPoints();
	TodoReturn getActiveGridNodeSize();
	TodoReturn getPortalMinMax(GameObject*);
	TodoReturn getTimeNeedsUpdate();
	bool init(cocos2d::CCNode*, LevelEditorLayer*);
	TodoReturn loadTimeMarkers(gd::string);
	TodoReturn removeFromEffects(GameObject*);
	TodoReturn removeFromGuides(GameObject*);
	TodoReturn removeFromSpeedObjects(GameObject*);
	TodoReturn sortSpeedObjects();
	TodoReturn timeForXPos(float);
	TodoReturn updateTimeMarkers();
	TodoReturn xPosForTime(float);

	virtual void update(float);
	virtual void draw();
	virtual void setActiveGridNodeSize(float);
}

[[link(android)]]
class DynamicScrollDelegate {
	virtual void updatePageWithObject(cocos2d::CCObject*, cocos2d::CCObject*) {}
}

[[link(android)]]
class EditButtonBar {
	// virtual ~EditButtonBar();

	static EditButtonBar* create(cocos2d::CCArray*, cocos2d::CCPoint, int, bool);

	TodoReturn getPage();
	TodoReturn goToPage(int);
	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, bool);
	void onLeft(cocos2d::CCObject* sender);
	void onRight(cocos2d::CCObject* sender);
}

[[link(android)]]
class EditLevelLayer {
	// virtual ~EditLevelLayer();

	static EditLevelLayer* create(GJGameLevel*);

	TodoReturn closeTextInputs();
	TodoReturn confirmClone(cocos2d::CCObject*);
	TodoReturn confirmDelete(cocos2d::CCObject*);
	bool init(GJGameLevel*);
	void onBack(cocos2d::CCObject* sender);
	TodoReturn onClone();
	TodoReturn onDelete();
	void onEdit(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onLevelInfo(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender);
	void onTest(cocos2d::CCObject* sender);
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn scene(GJGameLevel*);
	TodoReturn setupLevelInfo();
	TodoReturn updateDescText(char const*);
	TodoReturn verifyLevelName();

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void textInputOpened(CCTextInputNode*);
	virtual void textInputClosed(CCTextInputNode*);
	virtual void textChanged(CCTextInputNode*);
}

[[link(android)]]
class EditorPauseLayer {
	// virtual ~EditorPauseLayer();
	// EditorPauseLayer();

	static EditorPauseLayer* create(LevelEditorLayer*);

	bool init(LevelEditorLayer*);
	void onExitEditor(cocos2d::CCObject* sender);
	void onExitNoSave(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onKeybindings(cocos2d::CCObject* sender);
	void onResume(cocos2d::CCObject* sender);
	void onSaveAndExit(cocos2d::CCObject* sender);
	void onSaveAndPlay(cocos2d::CCObject* sender);
	void onSaveAndTest(cocos2d::CCObject* sender);
	void onSong(cocos2d::CCObject* sender);
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn saveLevel();
	TodoReturn toggleFollowPlayer(cocos2d::CCObject*);
	TodoReturn toggleIgnoreDamage(cocos2d::CCObject*);
	TodoReturn togglePlaytestMusic(cocos2d::CCObject*);
	TodoReturn uncheckAllPortals(cocos2d::CCObject*);
	TodoReturn updateSongButton();

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn customSetup();
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class EditorUI {
	// virtual ~EditorUI();
	// EditorUI();

	static EditorUI* create(LevelEditorLayer*);

	TodoReturn activateRotationControl(cocos2d::CCObject*);
	TodoReturn applyOffset(GameObject*);
	TodoReturn applySpecialOffset(cocos2d::CCPoint, GameObject*, cocos2d::CCPoint);
	TodoReturn changeSelectedObjects(cocos2d::CCArray*);
	TodoReturn clickOnPosition(cocos2d::CCPoint);
	TodoReturn colorSelectClosed(cocos2d::ccColor3B);
	TodoReturn constrainGameLayerPosition();
	TodoReturn constrainGameLayerPosition(float, float);
	TodoReturn copyObjects(cocos2d::CCArray*);
	TodoReturn createMoveMenu();
	TodoReturn createUndoSelectObject(bool);
	TodoReturn deactivateRotationControl();
	TodoReturn deleteObject(GameObject*, bool);
	TodoReturn deselectAll();
	TodoReturn deselectObject();
	TodoReturn deselectObject(GameObject*);
	TodoReturn disableButton(CCMenuItemSpriteExtra*);
	TodoReturn editButtonUsable();
	TodoReturn editGroup(cocos2d::CCObject*);
	TodoReturn editObject(cocos2d::CCObject*);
	TodoReturn enableButton(CCMenuItemSpriteExtra*);
	TodoReturn findSnapObject(cocos2d::CCArray*, float);
	TodoReturn findSnapObject(cocos2d::CCPoint, float);
	TodoReturn flipObjectsX(cocos2d::CCArray*);
	TodoReturn flipObjectsY(cocos2d::CCArray*);
	TodoReturn getButton(char const*, int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);
	TodoReturn getCreateBtn(int, int, bool);
	TodoReturn getCreateBtn(int, int);
	TodoReturn getCycledObject(cocos2d::CCArray*, bool);
	TodoReturn getEditMode();
	TodoReturn getGridSnappedPos(cocos2d::CCPoint);
	TodoReturn getGroupCenter(cocos2d::CCArray*);
	TodoReturn getLimitedPosition(cocos2d::CCPoint);
	TodoReturn getLimitY();
	TodoReturn getModeBtn(char const*, int);
	TodoReturn getMusicGuideActive();
	TodoReturn getRelativeOffset(GameObject*);
	TodoReturn getSelectedObjects();
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);
	TodoReturn getSpriteButton(cocos2d::CCSprite*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	TodoReturn getStoredUndoObject();
	TodoReturn getTouchPoint(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn getXMin(int);
	bool init(LevelEditorLayer*);
	bool isSpecialSnapObject(int);
	TodoReturn moveForCommand(EditCommand);
	TodoReturn moveGamelayer(cocos2d::CCPoint);
	TodoReturn moveObject(GameObject*, cocos2d::CCPoint);
	TodoReturn moveObjectCall(cocos2d::CCObject*);
	TodoReturn moveObjectCall(EditCommand);
	TodoReturn offsetForKey(int);
	void onCopy(cocos2d::CCObject* sender);
	TodoReturn onCreate();
	void onCreateButton(cocos2d::CCObject* sender);
	TodoReturn onCreateObject(int);
	void onDelete(cocos2d::CCObject* sender);
	void onDeleteAll(cocos2d::CCObject* sender);
	void onDeleteInfo(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onDeleteSelectedType(cocos2d::CCObject* sender);
	void onDeleteStartPos(cocos2d::CCObject* sender);
	void onDeselectAll(cocos2d::CCObject* sender);
	void onDuplicate(cocos2d::CCObject* sender);
	void onGroupDown(cocos2d::CCObject* sender);
	void onGroupUp(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onPause(cocos2d::CCObject* sender);
	void onPlayback(cocos2d::CCObject* sender);
	void onPlaytest(cocos2d::CCObject* sender);
	void onSelectBuildTab(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onStopPlaytest(cocos2d::CCObject* sender);
	void onToggleGuide(cocos2d::CCObject* sender);
	void onUpdateDeleteFilter(cocos2d::CCObject* sender);
	TodoReturn pasteObjects(gd::string);
	TodoReturn playerTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn playerTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn playtestStopped();
	TodoReturn positionWithoutOffset(GameObject*);
	TodoReturn redoLastAction(cocos2d::CCObject*);
	TodoReturn removeOffset(GameObject*);
	TodoReturn repositionObjectsToCenter(cocos2d::CCArray*, cocos2d::CCPoint);
	TodoReturn resetUI();
	TodoReturn rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint);
	TodoReturn rotationforCommand(EditCommand);
	TodoReturn selectBuildTab(int);
	TodoReturn selectObject(GameObject*);
	TodoReturn selectObjects(cocos2d::CCArray*);
	TodoReturn selectObjectsInRect(cocos2d::CCRect);
	TodoReturn setupCreateMenu();
	TodoReturn setupDeleteMenu();
	TodoReturn setupEditMenu();
	TodoReturn shouldDeleteObject(GameObject*);
	TodoReturn shouldSnap(GameObject*);
	TodoReturn showDeleteConfirmation();
	TodoReturn showMaxError();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn toggleDuplicateButton();
	TodoReturn toggleEditObjectButton();
	TodoReturn toggleEnableRotate(cocos2d::CCObject*);
	TodoReturn toggleFreeMove(cocos2d::CCObject*);
	TodoReturn toggleGuideButton();
	TodoReturn toggleMode(cocos2d::CCObject*);
	TodoReturn toggleSnap(cocos2d::CCObject*);
	TodoReturn toggleSpecialEditButtons();
	TodoReturn toggleSwipe(cocos2d::CCObject*);
	TodoReturn transformObject(GameObject*, EditCommand, bool);
	TodoReturn transformObjectCall(cocos2d::CCObject*);
	TodoReturn transformObjectCall(EditCommand);
	TodoReturn tryDeleteObject(GameObject*, bool);
	TodoReturn tryUpdateTimeMarkers();
	TodoReturn undoLastAction(cocos2d::CCObject*);
	TodoReturn updateButtons();
	TodoReturn updateCreateMenu(bool);
	TodoReturn updateDeleteButtons();
	TodoReturn updateDeleteMenu();
	TodoReturn updateEditMenu();
	TodoReturn updateGridNodeSize();
	TodoReturn updateGridNodeSize(int);
	TodoReturn updateGroupIDLabel();
	TodoReturn updatePercentLabel();
	TodoReturn updatePlaybackBtn();
	TodoReturn updateSlider();
	TodoReturn updateZoom(float);
	TodoReturn valueFromXPos(float);
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
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn songStateChanged();
	virtual void keyUp(cocos2d::enumKeyCodes);
	virtual void scrollWheel(float, float);
	virtual TodoReturn angleChangeBegin();
	virtual TodoReturn angleChangeEnded();
	virtual TodoReturn angleChanged(float);
	virtual void setStoredUndoObject(UndoObject*);
	virtual void setEditMode(EditMode);
}

[[link(android)]]
class EndLevelLayer {
	// virtual ~EndLevelLayer();
	// EndLevelLayer();

	static EndLevelLayer* create();

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
	virtual TodoReturn customSetup();
	virtual TodoReturn showLayer(bool);
	virtual TodoReturn enterAnimFinished();
	virtual void keyUp(cocos2d::enumKeyCodes);
}

[[link(android)]]
class EndPortalObject {
	// virtual ~EndPortalObject();

	static EndPortalObject* create();

	TodoReturn updateColors(cocos2d::ccColor3B);

	virtual bool init();
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
	virtual TodoReturn firstLoad();
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
		m_joystickConnected = -1;
		m_containsBorder = false;
		m_noAction = false;
	}

	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, char const*, char const*, char const*, float, bool, float);
	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, char const*, char const*, char const*, float);
	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, char const*, char const*, char const*);

	static FLAlertLayer* create(char const* title, const char* desc, char const* btn) {
		return FLAlertLayer::create(nullptr, title, desc, btn, nullptr, 300.0);
	}

	bool init(FLAlertLayerProtocol*, char const*, char const*, char const*, char const*, float, bool, float);
	void onBtn1(cocos2d::CCObject* sender);
	void onBtn2(cocos2d::CCObject* sender);

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void show();
	virtual FLAlertLayerProtocol* getPParent() const;
	virtual void setPParent(FLAlertLayerProtocol*);
	virtual cocos2d::CCNode* getTargetScene() const;
	virtual void setTargetScene(cocos2d::CCNode*);
	virtual bool getReverseKeyBack() const;
	virtual void setReverseKeyBack(bool);
	virtual cocos2d::CCLayer* getInternalLayer() const;

	cocos2d::CCMenu* m_buttonMenu;
  int m_controlConnected;
  int m_ZOrder;
  FLAlertLayerProtocol* m_alertProtocol; // m_pParent
  cocos2d::CCNode* m_scene; // m_targetScene
  bool m_reverseKeyBack;
  CCLayer* m_mainLayer; // m_internalLayer
  ScrollingLayer* m_scrollingLayer;
  int m_joystickConnected;
  bool m_containsBorder;
  bool m_noAction;
}

[[link(android)]]
class FLAlertLayerProtocol {
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class FMODAudioEngine {
	// virtual ~FMODAudioEngine();

	static FMODAudioEngine* sharedEngine();

	TodoReturn disableMetering();
	TodoReturn enableMetering();
	TodoReturn fadeBackgroundMusic(bool, float);
	TodoReturn getBackgroundMusicTime();
	TodoReturn getBackgroundMusicVolume();
	TodoReturn getEffectsVolume();
	TodoReturn getTimeOffset();
	bool isBackgroundMusicPlaying();
	bool isBackgroundMusicPlaying(gd::string);
	TodoReturn pauseAllEffects();
	TodoReturn pauseBackgroundMusic();
	TodoReturn pauseEffect(unsigned int);
	TodoReturn playBackgroundMusic(gd::string, bool, bool);
	TodoReturn playEffect(gd::string, bool, float, float, float);
	TodoReturn preloadBackgroundMusic(gd::string);
	TodoReturn preloadEffect(gd::string);
	TodoReturn printResult(FMOD_RESULT);
	TodoReturn resumeAllEffects();
	TodoReturn resumeBackgroundMusic();
	TodoReturn resumeEffect(unsigned int);
	TodoReturn rewindBackgroundMusic();
	void setBackgroundMusicTime(float);
	void setBackgroundMusicVolume(float);
	void setEffectsVolume(float);
	TodoReturn setupAudioEngine();
	TodoReturn start();
	TodoReturn stop();
	TodoReturn stopAllEffects();
	TodoReturn stopBackgroundMusic(bool);
	TodoReturn stopEffect(unsigned int);
	TodoReturn unloadEffect(gd::string);
	TodoReturn willPlayBackgroundMusic();

	virtual void update(float);
	virtual void setTimeOffset(int);
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
class GameLevelManager {
	// virtual ~GameLevelManager();
	// GameLevelManager();

	static GameLevelManager* sharedState();

	TodoReturn accountIDForID(int);
	TodoReturn accountIDKey(int);
	TodoReturn addDLToActive(char const*);
	TodoReturn createAndGetComments(gd::string, int);
	TodoReturn createAndGetLevels(gd::string);
	TodoReturn createAndGetMapPacks(gd::string, bool);
	TodoReturn createAndGetScores(gd::string, GJScoreType);
	TodoReturn createNewLevel();
	TodoReturn createPageInfo(int, int, int);
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn deleteComment(int, long);
	TodoReturn deleteLevel(GJGameLevel*);
	TodoReturn deleteServerLevel(int);
	TodoReturn doVerifyMapPacks(cocos2d::CCArray*);
	TodoReturn downloadLevel(int);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn getBoolForKey(char const*);
	TodoReturn getCommentDelegate();
	TodoReturn getCommentKey(int, int);
	TodoReturn getCommentUpDelegate();
	TodoReturn getCompletedLevels();
	TodoReturn getCreatedNewLevel();
	TodoReturn getDelegate();
	TodoReturn getDeleteCommentKey(int, long);
	TodoReturn getDifficultyStr(bool, bool, bool, bool, bool, bool, bool, bool);
	TodoReturn getDiffKey(int);
	TodoReturn getDiffVal(int);
	TodoReturn getDlDelegate();
	TodoReturn getIntForKey(char const*);
	TodoReturn getLastLeaderboard();
	TodoReturn getLastMapPackID();
	TodoReturn getLastSearchKey();
	TodoReturn getLastSearchKey2();
	TodoReturn getLastSearchType();
	TodoReturn getLeaderboardDelegate();
	TodoReturn getLeaderboardScores(char const*);
	TodoReturn getLengthStr(bool, bool, bool, bool);
	TodoReturn getLenKey(int);
	TodoReturn getLenVal(int);
	TodoReturn getLevelComments(int, int, int);
	TodoReturn getLevelKey(int);
	TodoReturn getLikeItemKey(LikeItemType, int, bool);
	TodoReturn getLikeKey(int);
	TodoReturn getLocalLevel(int);
	TodoReturn getLvlDelDelegate();
	TodoReturn getMainLevel(int, bool);
	TodoReturn getMainLevels();
	TodoReturn getMapPackKey(int);
	TodoReturn getMapPacks(GJSearchObject*);
	TodoReturn getOnlineLevels(GJSearchObject*);
	TodoReturn getPageInfo(char const*);
	TodoReturn getPostCommentKey(int);
	TodoReturn getRateKey(int);
	TodoReturn getRateStarsKey(int);
	TodoReturn getReportKey(int);
	TodoReturn getSavedLevel(int);
	TodoReturn getSavedLevels();
	TodoReturn getSavedLevelsDict();
	TodoReturn getSavedMapPack(int);
	TodoReturn getSearchScene(char const*);
	TodoReturn getStoredLevelComments(char const*);
	TodoReturn getStoredOnlineLevels(char const*);
	TodoReturn getTempSave();
	TodoReturn getTimeLeft(char const*, float);
	TodoReturn getUpdateDelegate();
	TodoReturn getUpDelegate();
	TodoReturn getValueDict();
	TodoReturn gotoLevelPage(GJGameLevel*);
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType);
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
	TodoReturn levelIDFromCommentKey(char const*);
	TodoReturn likeFromLikeKey(char const*);
	TodoReturn likeItem(LikeItemType, int, bool);
	TodoReturn limitSavedLevels();
	TodoReturn makeTimeStamp(char const*);
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
	TodoReturn onGetOnlineLevelsCompleted(gd::string, gd::string);
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
	TodoReturn onUpdateUserScoreCompleted(gd::string, gd::string);
	TodoReturn onUploadCommentCompleted(gd::string, gd::string);
	TodoReturn onUploadLevelCompleted(gd::string, gd::string);
	TodoReturn pageFromCommentKey(char const*);
	TodoReturn parseRestoreData(gd::string);
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn rateLevel(int, int);
	TodoReturn rateStars(int, int);
	TodoReturn removeDelimiterChars(gd::string, bool);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn reportLevel(int);
	TodoReturn resetAllTimers();
	TodoReturn resetTimerForKey(char const*);
	TodoReturn responseToDict(gd::string, bool);
	TodoReturn restoreItems();
	TodoReturn saveLevel(GJGameLevel*);
	TodoReturn saveMapPack(GJMapPack*);
	void setBoolForKey(bool, char const*);
	void setDiffVal(int, bool);
	void setIntForKey(int, char const*);
	void setLenVal(int, bool);
	void setLevelFeatured(int, int);
	void setLevelStars(int, int);
	TodoReturn storeCommentsResult(cocos2d::CCArray*, gd::string, char const*);
	TodoReturn storeSearchResult(cocos2d::CCArray*, gd::string, char const*);
	TodoReturn storeUserNames(gd::string);
	TodoReturn submitUserInfo();
	TodoReturn typeFromLikeKey(char const*);
	TodoReturn updateLevel(GJGameLevel*);
	TodoReturn updateLevelRewards(GJGameLevel*);
	TodoReturn updateUserScore();
	TodoReturn uploadComment(int, gd::string);
	TodoReturn uploadLevel(GJGameLevel*);
	TodoReturn userNameForID(int);
	TodoReturn verifyMapPackUnlocks();

	virtual bool init();
	virtual void setMainLevels(cocos2d::CCDictionary*);
	virtual void setValueDict(cocos2d::CCDictionary*);
	virtual void setSavedLevelsDict(cocos2d::CCDictionary*);
	virtual void setLastSearchKey(gd::string);
	virtual void setLastSearchKey2(gd::string);
	virtual void setLastLeaderboard(int);
	virtual void setCreatedNewLevel(bool);
	virtual void setDelegate(LevelManagerDelegate*);
	virtual void setDlDelegate(LevelDownloadDelegate*);
	virtual void setCommentDelegate(LevelCommentDelegate*);
	virtual void setCommentUpDelegate(CommentUploadDelegate*);
	virtual void setUpDelegate(LevelUploadDelegate*);
	virtual void setUpdateDelegate(LevelUpdateDelegate*);
	virtual void setLeaderboardDelegate(LeaderboardManagerDelegate*);
	virtual void setLvlDelDelegate(LevelDeleteDelegate*);
	virtual void setLastSearchType(SearchType);
	virtual void setLastMapPackID(int);
	virtual void setTempSave(gd::string);
}

[[link(android)]]
class GameManager : GManager {
	// virtual ~GameManager();
	// GameManager();

	static GameManager* get() {
		return GameManager::sharedState();
	}

	static GameManager* sharedState();

	TodoReturn applicationDidEnterBackground();
	TodoReturn applicationWillEnterForeground();
	TodoReturn checkSteamAchievementUnlock();
	TodoReturn claimItemsResponse(gd::string);
	TodoReturn colorForIdx(int);
	TodoReturn colorForPos(int);
	TodoReturn colorKey(int, bool);
	TodoReturn completedAchievement(char const*);
	TodoReturn didExitPlayscene();
	TodoReturn doQuickSave();
	TodoReturn eventUnlockFeature(char const*);
	TodoReturn fadeInMusic(char const*);
	TodoReturn followTwitter();
	TodoReturn getBGTexture(int);
	TodoReturn getBootups();
	TodoReturn getClickedEditor();
	TodoReturn getClickedGarage();
	TodoReturn getClickedName();
	TodoReturn getClickedPractice();
	TodoReturn getCommentSortRecent();
	TodoReturn getDidFollowTwitter();
	TodoReturn getDidLikeFacebook();
	TodoReturn getDidPauseBGMusic();
	TodoReturn getDidPlayGame();
	TodoReturn getDidRateGame();
	TodoReturn getDidSetupEveryplay();
	TodoReturn getDidSubYouTube();
	TodoReturn getDidSyncAchievements();
	TodoReturn getEditMode();
	TodoReturn getEditorCopyString();
	TodoReturn getFirstSetup();
	bool getGameVariable(char const*);
	TodoReturn getGTexture(int);
	TodoReturn getHasRatedGame();
	int getIntGameVariable(char const*);
	TodoReturn getIsResetting();
	TodoReturn getLastLevelID();
	TodoReturn getLastScene();
	TodoReturn getLastScene2();
	TodoReturn getLevelSelectLayer();
	TodoReturn getLoadedBGIdx();
	TodoReturn getLoadedGIdx();
	TodoReturn getMainMenuActive();
	TodoReturn getPerformanceMode();
	TodoReturn getPlayerBall();
	TodoReturn getPlayerBird();
	TodoReturn getPlayerColor();
	TodoReturn getPlayerColor2();
	TodoReturn getPlayerFrame();
	TodoReturn getPlayerIconType();
	TodoReturn getPlayerName();
	TodoReturn getPlayerScoreValid();
	TodoReturn getPlayerShip();
	TodoReturn getPlayerStreak();
	TodoReturn getPlayerUDID();
	TodoReturn getPlayerUserID();
	TodoReturn getPlayLayer();
	TodoReturn getPremiumPopup();
	TodoReturn getRateDelegate();
	TodoReturn getRecordGameplay();
	TodoReturn getResolution();
	TodoReturn getReturnToSearch();
	TodoReturn getShowBPMMarkers();
	TodoReturn getShowedEditorGuide();
	TodoReturn getShowedLowDetailDialog();
	TodoReturn getShowedMenu();
	TodoReturn getShowedPirate();
	TodoReturn getShowedRateDiffDialog();
	TodoReturn getShowedRateStarDialog();
	TodoReturn getShowingPromo();
	TodoReturn getShowProgressBar();
	TodoReturn getShowSongMarkers();
	TodoReturn getStoredColor();
	TodoReturn getTestSmoothFix();
	TodoReturn getTexQuality();
	TodoReturn getTotalAttempts();
	TodoReturn getValueKeeper();
	TodoReturn getWasHigh();
	TodoReturn hasShownAdRecently();
	TodoReturn iconKey(int, IconType);
	bool isColorUnlocked(int, bool);
	bool isIconUnlocked(int, IconType);
	TodoReturn itemPurchased(char const*);
	TodoReturn levelIsPremium(int, int);
	TodoReturn likeFacebook();
	TodoReturn loadBackground(int);
	TodoReturn loadGround(int);
	TodoReturn loadVideoSettings();
	TodoReturn lockColor(int, bool);
	TodoReturn lockIcon(int, IconType);
	TodoReturn openEditorGuide();
	TodoReturn rateGame();
	void reloadAll(bool, bool, bool);
	TodoReturn reloadAllStep2();
	TodoReturn reloadAllStep3();
	TodoReturn reloadAllStep4();
	TodoReturn reloadAllStep5();
	TodoReturn reportAchievementWithID(char const*, int, bool);
	TodoReturn reportPercentageForLevel(int, int, bool);
	TodoReturn resetAchievement(char const*);
	TodoReturn resetCoinUnlocks();
	TodoReturn resolutionForKey(int);
	TodoReturn returnToLastScene(GJGameLevel*);
	void setGameVariable(char const*, bool);
	void setIntGameVariable(char const*, int);
	TodoReturn shouldShowInterstitial();
	TodoReturn shouldShowPromoInterstitial();
	TodoReturn showInterstitial();
	TodoReturn showInterstitialForced();
	TodoReturn showMainMenuAd();
	TodoReturn showPromoInterstitial();
	TodoReturn startUpdate();
	TodoReturn subYouTube();
	TodoReturn switchScreenMode(bool, bool);
	TodoReturn syncPlatformAchievements();
	TodoReturn toggleGameVariable(char const*);
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
	virtual TodoReturn encodeDataTo(DS_Dictionary*);
	virtual TodoReturn dataLoaded(DS_Dictionary*);
	virtual TodoReturn firstLoad();
	virtual void setValueKeeper(cocos2d::CCDictionary*);
	virtual void setDidSyncAchievements(bool);
	virtual void setEditorCopyString(gd::string);
	virtual void setPlayLayer(PlayLayer*);
	virtual void setLevelSelectLayer(LevelSelectLayer*);
	virtual void setMainMenuActive(bool);
	virtual void setPremiumPopup(PremiumPopup*);
	virtual void setFirstSetup(bool);
	virtual void setShowedMenu(bool);
	virtual void setPlayerUDID(gd::string);
	virtual void setPlayerName(gd::string);
	virtual void setPlayerUserID(int);
	virtual void setPlayerScoreValid(bool);
	virtual void setDidRateGame(bool);
	virtual void setDidLikeFacebook(bool);
	virtual void setDidFollowTwitter(bool);
	virtual void setDidSubYouTube(bool);
	virtual void setDidPauseBGMusic(bool);
	virtual void setWasHigh(bool);
	virtual void setEditMode(bool);
	virtual void setLastScene(LastGameScene);
	virtual void setLastScene2(LastGameScene);
	virtual void setReturnToSearch(bool);
	virtual void setPlayerFrame(int);
	virtual void setPlayerShip(int);
	virtual void setPlayerBall(int);
	virtual void setPlayerBird(int);
	virtual void setPlayerColor(int);
	virtual void setPlayerColor2(int);
	virtual void setPlayerStreak(int);
	virtual void setPlayerIconType(IconType);
	virtual void setDidSetupEveryplay(bool);
	virtual void setShowSongMarkers(bool);
	virtual void setShowBPMMarkers(bool);
	virtual void setRecordGameplay(bool);
	virtual void setShowProgressBar(bool);
	virtual void setPerformanceMode(bool);
	virtual void setCommentSortRecent(bool);
	virtual void setShowedPirate(bool);
	virtual void setClickedGarage(bool);
	virtual void setClickedEditor(bool);
	virtual void setClickedName(bool);
	virtual void setClickedPractice(bool);
	virtual void setShowedEditorGuide(bool);
	virtual void setShowedRateDiffDialog(bool);
	virtual void setShowedRateStarDialog(bool);
	virtual void setShowedLowDetailDialog(bool);
	virtual void setRateDelegate(GameRateDelegate*);
	virtual void setStoredColor(cocos2d::ccColor3B);
	virtual void setLastLevelID(int);
	virtual void setTotalAttempts(int);
	virtual void setBootups(int);
	virtual void setHasRatedGame(bool);
	virtual void setDidPlayGame(bool);
	virtual void setIsResetting(bool);
	virtual void setShowingPromo(bool);
	virtual void setTestSmoothFix(bool);
	virtual void setResolution(int);
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
	gd::string m_unknownString;
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
	LastGameScene* m_lastScene;
	LastGameScene* m_lastScene2;
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
	int m_resolution;
	int m_texQuality;
	int m_unkSize4_4;
}

[[link(android)]]
class GameObject {
	// virtual ~GameObject();
	// GameObject();

	static GameObject* create(char const*);

	TodoReturn activatedByPlayer(GameObject*);
	TodoReturn addColorSprite();
	TodoReturn addCustomChild(gd::string, cocos2d::CCPoint);
	TodoReturn addCustomColorChild(gd::string);
	TodoReturn addGlow();
	TodoReturn addToBottom();
	TodoReturn calculateOrientedBox();
	TodoReturn canChangeCustomColor();
	TodoReturn canRotateFree();
	TodoReturn createAndAddParticle(int, char const*, int, cocos2d::tCCPositionType);
	TodoReturn createObject(char const*);
	TodoReturn createRotateAction(float);
	TodoReturn customScaleMod(char const*);
	TodoReturn customSetup();
	TodoReturn deselectObject();
	TodoReturn destroyObject();
	TodoReturn determineSlopeDirection();
	TodoReturn disableObject();
	TodoReturn getBallFrame(int);
	TodoReturn getColorFrame(gd::string);
	TodoReturn getColorMode();
	TodoReturn getColorSprite();
	TodoReturn getCopyPlayerColor1();
	TodoReturn getCopyPlayerColor2();
	TodoReturn getCustomAudioScale();
	TodoReturn getCustomColorBlend();
	TodoReturn getCustomColorMode();
	TodoReturn getDamaging();
	TodoReturn getDontFade();
	TodoReturn getDontFadeTinted();
	TodoReturn getDontShow();
	TodoReturn getDontTransform();
	TodoReturn getEditorColor();
	TodoReturn getEditorSelected();
	TodoReturn getEditorSelectIdx();
	TodoReturn getEnterAngle();
	TodoReturn getEnterEffect();
	TodoReturn getFadeInPosOffset();
	TodoReturn getForceBottomLayer();
	TodoReturn getFrame();
	TodoReturn getGlowOpacityMod();
	TodoReturn getGlowUseBGColor();
	TodoReturn getGlowUseReverseColor();
	TodoReturn getGroupID();
	TodoReturn getHasColor();
	TodoReturn getHasCustomChildren();
	TodoReturn getHideObject();
	TodoReturn getIgnoreScreenCheck();
	TodoReturn getInvisibleMode();
	TodoReturn getIsActive();
	TodoReturn getIsColorObject();
	TodoReturn getIsDisabled();
	TodoReturn getIsInvisible();
	TodoReturn getIsOriented();
	TodoReturn getIsRotated();
	TodoReturn getIsSelected();
	TodoReturn getIsSleeping();
	TodoReturn getIsTintObject();
	TodoReturn getM_ID();
	TodoReturn getMaxAudioScale();
	TodoReturn getMinAudioScale();
	TodoReturn getObjectKey();
	TodoReturn getObjectParent();
	TodoReturn getObjectRectDirty();
	TodoReturn getObjectZ();
	TodoReturn getOpacityMod();
	TodoReturn getOuterObjectRect();
	TodoReturn getRadius();
	TodoReturn getScaleModX();
	TodoReturn getScaleModY();
	TodoReturn getSectionIdx();
	TodoReturn getShouldHide();
	TodoReturn getShouldSpawn();
	TodoReturn getSlopeAngle();
	TodoReturn getSlopeType();
	TodoReturn getSpawnXPos();
	TodoReturn getStartFlipX();
	TodoReturn getStartFlipY();
	TodoReturn getStartPos();
	TodoReturn getStartRotation();
	TodoReturn getStartScaleX();
	TodoReturn getStartScaleY();
	TodoReturn getStateVar();
	TodoReturn getStoredPosition();
	TodoReturn getTintColor();
	TodoReturn getTintDuration();
	TodoReturn getTintGround();
	TodoReturn getTouchTriggered();
	TodoReturn getType();
	TodoReturn getUniqueID();
	TodoReturn getUpSlope();
	TodoReturn getUseAudioScale();
	TodoReturn getUseSpecialLight();
	TodoReturn getWasSelected();
	TodoReturn hasBeenActivated();
	TodoReturn hasBeenActivatedByPlayer(GameObject*);
	bool init(char const*);
	bool isFacingDown();
	TodoReturn objectFromString(gd::string);
	TodoReturn perspectiveFrame(char const*, int);
	TodoReturn playShineEffect();
	TodoReturn removeColorSprite();
	TodoReturn removeGlow();
	TodoReturn reorderColorSprite();
	TodoReturn resetCustomColorMode();
	TodoReturn selectObject(cocos2d::ccColor3B);
	void setChildColor(cocos2d::ccColor3B);
	void setDefaultColorMode(GJCustomColorMode);
	void setGlowColor(cocos2d::ccColor3B);
	void setGlowOpacity(unsigned char);
	void setMyAction(cocos2d::CCAction*);
	void setObjectColor(cocos2d::ccColor3B);
	TodoReturn setupCoinAnimation();
	TodoReturn setupCustomSprites();
	TodoReturn shouldBlend();
	TodoReturn shouldBlendColor();
	TodoReturn slopeFloorTop();
	TodoReturn slopeWallLeft();
	TodoReturn slopeYPos(cocos2d::CCRect);
	TodoReturn slopeYPos(float);
	TodoReturn slopeYPos(GameObject*);
	TodoReturn updateCustomColorMode(GJCustomColorMode, bool);
	TodoReturn updateOrientedBox();
	TodoReturn updateState();

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
	virtual TodoReturn resetObject();
	virtual TodoReturn triggerObject();
	virtual TodoReturn activateObject();
	virtual TodoReturn deactivateObject();
	virtual TodoReturn getObjectRect();
	virtual TodoReturn getObjectRect(float, float);
	virtual TodoReturn getObjectRect2(float, float);
	virtual TodoReturn getObjectTextureRect();
	virtual TodoReturn getRealPosition();
	virtual void setStartPos(cocos2d::CCPoint);
	virtual TodoReturn updateStartValues();
	virtual TodoReturn getSaveString();
	virtual bool isFlipX();
	virtual bool isFlipY();
	virtual void setRScaleX(float);
	virtual void setRScaleY(float);
	virtual void setRScale(float);
	virtual TodoReturn getRScaleX();
	virtual TodoReturn getRScaleY();
	virtual TodoReturn calculateSpawnXPos();
	virtual TodoReturn triggerActivated();
	virtual TodoReturn powerOnObject();
	virtual TodoReturn powerOffObject();
	virtual TodoReturn getOrientedBox();
	virtual void setFadeInPosOffset(float);
	virtual void setObjectRectDirty(bool);
	virtual void setIgnoreScreenCheck(bool);
	virtual void setScaleModX(float);
	virtual void setScaleModY(float);
	virtual void setM_ID(int);
	virtual void setType(GameObjectType);
	virtual void setSectionIdx(int);
	virtual void setTouchTriggered(bool);
	virtual void setIsDisabled(bool);
	virtual void setUseAudioScale(bool);
	virtual void setStartRotation(float);
	virtual void setStartScaleX(float);
	virtual void setStartScaleY(float);
	virtual void setStartFlipX(bool);
	virtual void setStartFlipY(bool);
	virtual void setShouldHide(bool);
	virtual void setEnterAngle(float);
	virtual void setEnterEffect(int);
	virtual void setTintColor(cocos2d::ccColor3B);
	virtual void setTintDuration(float);
	virtual void setTintGround(bool);
	virtual void setObjectKey(int);
	virtual void setDontTransform(bool);
	virtual void setDontFade(bool);
	virtual void setDontFadeTinted(bool);
	virtual void setIsTintObject(bool);
	virtual void setStateVar(bool);
	virtual void setObjectZ(int);
	virtual void setObjectParent(cocos2d::CCNode*);
	virtual void setUniqueID(int);
	virtual void setOpacityMod(float);
	virtual void setGlowOpacityMod(float);
	virtual void setDontShow(bool);
	virtual void setForceBottomLayer(bool);
	virtual void setEditorSelected(bool);
	virtual void setCopyPlayerColor1(bool);
	virtual void setCopyPlayerColor2(bool);
	virtual void setCustomColorBlend(bool);
	virtual void setWasSelected(bool);
	virtual void setIsSelected(bool);
	virtual void setEditorSelectIdx(int);
	virtual void setStoredPosition(cocos2d::CCPoint);
	virtual void setGroupID(int);
}

[[link(android)]]
class GameObjectCopy {
	// virtual ~GameObjectCopy();

	static GameObjectCopy* create(GameObject*);

	TodoReturn getObject();
	bool init(GameObject*);
	TodoReturn resetObject();
}

[[link(android)]]
class GameplayDelegate {
	virtual TodoReturn flipGravity(PlayerObject*, bool, bool);
}

[[link(android)]]
class GameRateDelegate {
	virtual TodoReturn updateRate();
}

[[link(android)]]
class GameSoundManager {
	// virtual ~GameSoundManager();

	TodoReturn asynchronousSetup();
	TodoReturn disableMetering();
	TodoReturn enableMetering();
	TodoReturn fadeInMusic(bool);
	TodoReturn fadeOutMusic(bool);
	TodoReturn getActiveBGMusic();
	TodoReturn getMeteringValue();
	TodoReturn getState();
	bool isLoopedSoundPlaying(gd::string);
	TodoReturn pauseAllLoopedSounds();
	TodoReturn pauseLoopedSound(gd::string);
	TodoReturn playBackgroundMusic(gd::string, bool, bool);
	TodoReturn playEffect(gd::string, float, float, float);
	TodoReturn playLoopedSound(gd::string, gd::string, float, float, bool, bool, bool);
	TodoReturn playUniqueEffect(gd::string, float, float, float);
	TodoReturn playUniqueEffect(gd::string);
	TodoReturn preload();
	TodoReturn removeLoopedSound(gd::string);
	TodoReturn resetUniqueEffects();
	TodoReturn resumeAllLoopedSounds();
	TodoReturn resumeSound();
	TodoReturn setup();
	TodoReturn sharedManager();
	TodoReturn stopAllLoopedSounds();
	TodoReturn stopBackgroundMusic();
	TodoReturn stopLoopedSound(gd::string, bool);
	TodoReturn updateLoopedVolume(gd::string, float);
	TodoReturn updateMetering(float);

	virtual bool init();
}

[[link(android)]]
class GameStatsManager {
	// virtual ~GameStatsManager();

	static GameStatsManager* sharedState();

	TodoReturn checkAchievement(char const*);
	TodoReturn completedDemonLevel(GJGameLevel*);
	TodoReturn completedLevel(GJGameLevel*);
	TodoReturn completedMapPack(GJMapPack*);
	TodoReturn completedStarLevel(GJGameLevel*);
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn getCompletedLevels();
	TodoReturn getDemonLevelKey(int);
	TodoReturn getLevelKey(GJGameLevel*);
	TodoReturn getLevelKey(int, bool);
	TodoReturn getLiteAchievements();
	TodoReturn getMapPackKey(int);
	TodoReturn getStarLevelKey(int);
	TodoReturn getStat(char const*);
	TodoReturn getUniqueItemKey(char const*);
	TodoReturn getValueDict();
	TodoReturn hasCompletedDemonLevel(GJGameLevel*);
	TodoReturn hasCompletedLevel(GJGameLevel*);
	TodoReturn hasCompletedMapPack(int);
	TodoReturn hasCompletedOnlineLevel(int);
	TodoReturn hasCompletedStarLevel(GJGameLevel*);
	TodoReturn hasUniqueItem(char const*);
	TodoReturn incrementStat(char const*, int);
	TodoReturn incrementStat(char const*);
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
	virtual TodoReturn encodeDataTo(DS_Dictionary*);
	virtual TodoReturn dataLoaded(DS_Dictionary*);
	virtual TodoReturn firstLoad();
}

[[link(android)]]
class GameToolbox {
	static TodoReturn addBackButton(cocos2d::CCLayer*, cocos2d::CCMenuItem*);
	static TodoReturn addRThumbScrollButton(cocos2d::CCLayer*);
	static TodoReturn alignItemsHorisontally(cocos2d::CCArray*, float, cocos2d::CCPoint);
	static TodoReturn alignItemsVertically(cocos2d::CCArray*, float, cocos2d::CCPoint);
	static TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, float, float, float, cocos2d::CCPoint, char const*, bool);
	static TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*);
	static TodoReturn doWeHaveInternet();
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
class GaragePage {
	// virtual ~GaragePage();

	static GaragePage* create(IconType, GJGarageLayer*, cocos2d::SEL_MenuHandler);

	bool init(IconType, GJGarageLayer*, cocos2d::SEL_MenuHandler);
	void onSelect(cocos2d::CCObject* sender);
	TodoReturn updateSelect(cocos2d::CCNode*);

	virtual TodoReturn listButtonBarSwitchedPage(ListButtonBar*, int);
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
class GJAccountManager {
	// virtual ~GJAccountManager();

	static GJAccountManager* sharedState();

	TodoReturn addDLToActive(char const*, cocos2d::CCObject*);
	TodoReturn addDLToActive(char const*);
	TodoReturn backupAccount();
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn getAccountDelegate();
	TodoReturn getAccountID();
	TodoReturn getAccountPassword();
	TodoReturn getAccountUserName();
	TodoReturn getBackupDelegate();
	TodoReturn getDLObject(char const*);
	TodoReturn getLoginDelegate();
	TodoReturn getRegisterDelegate();
	TodoReturn getSyncDelegate();
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType);
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	bool isDLActive(char const*);
	TodoReturn linkToAccount(gd::string, gd::string, int, int);
	TodoReturn loginAccount(gd::string, gd::string);
	TodoReturn onBackupAccountCompleted(gd::string, gd::string);
	TodoReturn onLoginAccountCompleted(gd::string, gd::string);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onRegisterAccountCompleted(gd::string, gd::string);
	TodoReturn onSyncAccountCompleted(gd::string, gd::string);
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn registerAccount(gd::string, gd::string, gd::string);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn syncAccount();
	TodoReturn unlinkFromAccount();

	virtual bool init();
	virtual void setRegisterDelegate(GJAccountRegisterDelegate*);
	virtual void setLoginDelegate(GJAccountLoginDelegate*);
	virtual void setAccountDelegate(GJAccountDelegate*);
	virtual void setBackupDelegate(GJAccountBackupDelegate*);
	virtual void setSyncDelegate(GJAccountSyncDelegate*);
}

[[link(android)]]
class GJAccountRegisterDelegate {
	virtual TodoReturn registerAccountFinished();
	virtual TodoReturn registerAccountFailed(AccountError);
}

[[link(android)]]
class GJAccountSyncDelegate {
	virtual TodoReturn syncAccountFinished();
	virtual TodoReturn syncAccountFailed(BackupAccountError);
}

[[link(android)]]
class GJComment {
	// virtual ~GJComment();

	static GJComment* create();
	static GJComment* create(cocos2d::CCDictionary*);

	TodoReturn getAccountID();
	TodoReturn getComment();
	TodoReturn getCommentID();
	TodoReturn getDislikes();
	TodoReturn getIsHidden();
	TodoReturn getLevelID();
	TodoReturn getLikes();
	TodoReturn getUserID();
	TodoReturn getUserName();

	virtual bool init();
	virtual void setComment(gd::string);
	virtual void setUserName(gd::string);
	virtual void setCommentID(long);
	virtual void setUserID(int);
	virtual void setLikes(int);
	virtual void setDislikes(int);
	virtual void setLevelID(int);
	virtual void setIsHidden(bool);
	virtual void setAccountID(int);
}

[[link(android)]]
class GJCommentListLayer {
	// virtual ~GJCommentListLayer();

	static GJCommentListLayer* create(BoomListView*, char const*, cocos2d::ccColor4B, float, float);

	bool init(BoomListView*, char const*, cocos2d::ccColor4B, float, float);
}

[[link(android)]]
class GJDropDownLayer {
	// virtual ~GJDropDownLayer();
	// GJDropDownLayer();

	static GJDropDownLayer* create(char const*, float);
	static GJDropDownLayer* create(char const*);

	TodoReturn getDelegate();
	TodoReturn getHideBackButton();
	TodoReturn getInternalLayer();
	TodoReturn getRemoveOnExit();
	bool init(char const*, float);
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
	virtual TodoReturn showLayer(bool);
	virtual TodoReturn hideLayer(bool);
	virtual TodoReturn layerVisible();
	virtual TodoReturn layerHidden();
	virtual TodoReturn enterAnimFinished();
	virtual TodoReturn disableUI();
	virtual TodoReturn enableUI();
	virtual void setHideBackButton(bool);
	virtual void setRemoveOnExit(bool);
	virtual void setDelegate(GJDropDownLayerDelegate*);
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
class GJGameLevel {
	// virtual ~GJGameLevel();
	// GJGameLevel();

	static GJGameLevel* create();
	static GJGameLevel* create(cocos2d::CCDictionary*);

	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn getAttempts();
	TodoReturn getAudioFileName();
	TodoReturn getAudioTrack();
	TodoReturn getAutoLevel();
	TodoReturn getAverageDifficulty();
	TodoReturn getCapacity001();
	TodoReturn getCapacity002();
	TodoReturn getCapacity003();
	TodoReturn getCapacity004();
	TodoReturn getCoinKey(int);
	TodoReturn getCoins();
	TodoReturn getCompletes();
	TodoReturn getDemon();
	TodoReturn getDemonVotes();
	TodoReturn getDifficulty();
	TodoReturn getDislikes();
	TodoReturn getDontSave();
	TodoReturn getDownloads();
	TodoReturn getExtraString();
	TodoReturn getFailedPasswordAttempts();
	TodoReturn getFeatured();
	TodoReturn getGameVersion();
	TodoReturn getHasBeenModified();
	TodoReturn getIsEditable();
	TodoReturn getIsHidden();
	TodoReturn getIsUnlocked();
	TodoReturn getIsUploaded();
	TodoReturn getIsVerified();
	TodoReturn getJumps();
	TodoReturn getLastBuildGroupID();
	TodoReturn getLastBuildPage();
	TodoReturn getLastBuildPageForTab(int);
	TodoReturn getLastBuildSave();
	TodoReturn getLastBuildTab();
	TodoReturn getLastCameraPos();
	TodoReturn getLastEditorZoom();
	TodoReturn getLengthKey(int);
	TodoReturn getLevelDesc();
	TodoReturn getLevelID();
	TodoReturn getLevelLength();
	TodoReturn getLevelName();
	TodoReturn getLevelRev();
	TodoReturn getLevelString();
	TodoReturn getLevelType();
	TodoReturn getLevelVersion();
	TodoReturn getLikes();
	TodoReturn getM_ID();
	TodoReturn getMaxStarRatings();
	TodoReturn getMinStarRatings();
	TodoReturn getNormalPercent();
	TodoReturn getObjectCount();
	TodoReturn getOrder();
	TodoReturn getOriginalLevel();
	TodoReturn getPassword();
	TodoReturn getPracticePercent();
	TodoReturn getRateFeature();
	TodoReturn getRateStars();
	TodoReturn getRateUser();
	TodoReturn getRatings();
	TodoReturn getRatingsSum();
	TodoReturn getRecordString();
	TodoReturn getRequiredCoins();
	TodoReturn getShowedSongWarning();
	TodoReturn getSongID();
	TodoReturn getSongName();
	TodoReturn getStarRatings();
	TodoReturn getStarRatingsSum();
	TodoReturn getStars();
	TodoReturn getTempName();
	TodoReturn getTwoPlayerMode();
	TodoReturn getUpdateDate();
	TodoReturn getUploadDate();
	TodoReturn getUserID();
	TodoReturn getUserName();
	TodoReturn handleStatsConflict(GJGameLevel*);
	TodoReturn lengthKeyToString(int);
	TodoReturn levelWasAltered();
	TodoReturn levelWasSubmitted();
	TodoReturn parseExtraString(gd::string);
	TodoReturn savePercentage(int, bool);
	void setLastBuildPageForTab(int, int);

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();
	virtual bool init();
	virtual void setLastBuildSave(cocos2d::CCDictionary*);
	virtual void setLevelID(int);
	virtual void setLevelName(gd::string);
	virtual void setLevelDesc(gd::string);
	virtual void setLevelString(gd::string);
	virtual void setUserName(gd::string);
	virtual void setRecordString(gd::string);
	virtual void setUploadDate(gd::string);
	virtual void setUpdateDate(gd::string);
	virtual void setUserID(int);
	virtual void setDifficulty(int);
	virtual void setAudioTrack(int);
	virtual void setSongID(int);
	virtual void setLevelRev(int);
	virtual void setObjectCount(int);
	virtual void setOrder(int);
	virtual void setRatings(int);
	virtual void setRatingsSum(int);
	virtual void setDownloads(int);
	virtual void setCompletes(int);
	virtual void setIsEditable(bool);
	virtual void setIsVerified(bool);
	virtual void setIsUploaded(bool);
	virtual void setHasBeenModified(bool);
	virtual void setLevelVersion(int);
	virtual void setGameVersion(int);
	virtual void setAttempts(int);
	virtual void setJumps(int);
	virtual void setNormalPercent(int);
	virtual void setPracticePercent(int);
	virtual void setLikes(int);
	virtual void setDislikes(int);
	virtual void setLevelLength(int);
	virtual void setFeatured(int);
	virtual void setDemon(bool);
	virtual void setStars(int);
	virtual void setAutoLevel(bool);
	virtual void setCoins(int);
	virtual void setPassword(int);
	virtual void setOriginalLevel(int);
	virtual void setTwoPlayerMode(bool);
	virtual void setFailedPasswordAttempts(int);
	virtual void setShowedSongWarning(bool);
	virtual void setStarRatings(int);
	virtual void setStarRatingsSum(int);
	virtual void setMaxStarRatings(int);
	virtual void setMinStarRatings(int);
	virtual void setDemonVotes(int);
	virtual void setRateStars(int);
	virtual void setRateFeature(bool);
	virtual void setRateUser(gd::string);
	virtual void setDontSave(bool);
	virtual void setIsHidden(bool);
	virtual void setRequiredCoins(int);
	virtual void setIsUnlocked(bool);
	virtual void setLastCameraPos(cocos2d::CCPoint);
	virtual void setLastEditorZoom(float);
	virtual void setLastBuildTab(int);
	virtual void setLastBuildPage(int);
	virtual void setLastBuildGroupID(int);
	virtual void setLevelType(GJLevelType);
	virtual void setTempName(gd::string);
	virtual void setCapacity001(int);
	virtual void setCapacity002(int);
	virtual void setCapacity003(int);
	virtual void setCapacity004(int);
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
	TodoReturn checkSpecial(int);
	TodoReturn descriptionForUnlock(int, UnlockType);
	TodoReturn getDoSelect();
	TodoReturn getLockFrame(int, UnlockType);
	TodoReturn getRateSprite();
	TodoReturn node();
	void onBack(cocos2d::CCObject* sender);
	void onBallIcon(cocos2d::CCObject* sender);
	void onBirdIcon(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onPlayerColor1(cocos2d::CCObject* sender);
	void onPlayerColor2(cocos2d::CCObject* sender);
	void onPlayerIcon(cocos2d::CCObject* sender);
	void onSelectTab(cocos2d::CCObject* sender);
	void onShipIcon(cocos2d::CCObject* sender);
	void onSpecialIcon(cocos2d::CCObject* sender);
	TodoReturn playRainbowEffect();
	TodoReturn playShadowEffect();
	TodoReturn scene();
	TodoReturn selectPage(IconType);
	TodoReturn setupColorSelect();
	TodoReturn setupIconSelect();
	TodoReturn showUnlockPopup(int, UnlockType);
	TodoReturn updateColorSelect(cocos2d::CCNode*, bool);
	TodoReturn updatePlayerColors();
	TodoReturn updatePlayerName(char const*);
	TodoReturn updatePlayerSelect(cocos2d::CCNode*);

	virtual bool init();
	virtual void keyBackClicked();
	virtual void textInputOpened(CCTextInputNode*);
	virtual void textInputClosed(CCTextInputNode*);
	virtual void textChanged(CCTextInputNode*);
	virtual TodoReturn listButtonBarSwitchedPage(ListButtonBar*, int);
	virtual TodoReturn updateRate();
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void setRateSprite(cocos2d::CCSprite*);
}

[[link(android)]]
class GJGroundLayer {
	// virtual ~GJGroundLayer();

	static GJGroundLayer* create(int);

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

	static GJListLayer* create(BoomListView*, char const*, cocos2d::ccColor4B, float, float);

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

	TodoReturn getMoreGamesList();

	virtual TodoReturn customSetup();
}

[[link(android)]]
class GJObjectDecoder {
	// virtual ~GJObjectDecoder();

	static GJObjectDecoder* sharedDecoder();

	virtual bool init();
	virtual TodoReturn getDecodedObject(int, DS_Dictionary*);
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
class GJScoreCell {
	// virtual ~GJScoreCell();
	GJScoreCell(char const*, float, float);

	TodoReturn loadFromScore(GJUserScore*);
	void onMoreLevels(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class GJSearchObject {
	// virtual ~GJSearchObject();

	static GJSearchObject* create(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool);
	static GJSearchObject* create(SearchType, gd::string);
	static GJSearchObject* create(SearchType);

	TodoReturn createFromKey(char const*);
	TodoReturn getCustomSong();
	TodoReturn getDifficultyStr();
	TodoReturn getFeatured();
	TodoReturn getKey();
	TodoReturn getLengthStr();
	TodoReturn getNextPageKey();
	TodoReturn getNextPageObject();
	TodoReturn getNoStar();
	TodoReturn getOriginal();
	TodoReturn getPage();
	TodoReturn getPrevPageObject();
	TodoReturn getSearchKey(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool);
	TodoReturn getSong();
	TodoReturn getSongFilter();
	TodoReturn getStar();
	gd::string getString();
	TodoReturn getTotal();
	TodoReturn getTwoP();
	TodoReturn getType();
	TodoReturn getUncompleted();
	bool init(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool);

	virtual void setType(SearchType);
	virtual void setString(gd::string);
	virtual void setDifficultyStr(gd::string);
	virtual void setLengthStr(gd::string);
	virtual void setPage(int);
	virtual void setStar(bool);
	virtual void setNoStar(bool);
	virtual void setTotal(int);
	virtual void setUncompleted(bool);
	virtual void setFeatured(bool);
	virtual void setOriginal(bool);
	virtual void setTwoP(bool);
	virtual void setSong(int);
	virtual void setCustomSong(bool);
	virtual void setSongFilter(bool);
}

[[link(android)]]
class GJSongBrowser {
	// virtual ~GJSongBrowser();
	// GJSongBrowser();

	static GJSongBrowser* create(LevelSettingsObject*);

	bool init(LevelSettingsObject*);
	TodoReturn loadPage(int);
	void onDeleteAll(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn setupPageInfo(int, int, int);
	TodoReturn setupSongBrowser(cocos2d::CCArray*);

	virtual TodoReturn customSetup();
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class GJUserScore {
	// virtual ~GJUserScore();

	static GJUserScore* create();
	static GJUserScore* create(cocos2d::CCDictionary*);

	TodoReturn getAccountID();
	TodoReturn getCoins();
	TodoReturn getColor1();
	TodoReturn getColor2();
	TodoReturn getDemons();
	TodoReturn getIcon();
	TodoReturn getIconType();
	TodoReturn getLevels();
	TodoReturn getRank();
	TodoReturn getScoreType();
	TodoReturn getSpecial();
	TodoReturn getStars();
	TodoReturn getUserID();
	TodoReturn getUserName();
	TodoReturn getUserUDID();
	bool isCurrentUser();

	virtual bool init();
	virtual void setUserName(gd::string);
	virtual void setUserUDID(gd::string);
	virtual void setScoreType(GJScoreType);
	virtual void setUserID(int);
	virtual void setAccountID(int);
	virtual void setStars(int);
	virtual void setDemons(int);
	virtual void setRank(int);
	virtual void setLevels(int);
	virtual void setCoins(int);
	virtual void setIcon(int);
	virtual void setColor1(int);
	virtual void setColor2(int);
	virtual void setSpecial(int);
	virtual void setIconType(int);
}

[[link(android)]]
class GManager : cocos2d::CCNode {
	// virtual ~GManager();

	TodoReturn getCompressedSaveString();
	TodoReturn getQuickSave();
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
	virtual TodoReturn encodeDataTo(DS_Dictionary*);
	virtual TodoReturn dataLoaded(DS_Dictionary*);
	virtual TodoReturn firstLoad();
	virtual void setQuickSave(bool);

	gd::string m_fileName;
	bool m_setup;
	bool m_saved;
	bool m_quickSave;
}

[[link(android)]]
class GooglePlayDelegate {
	virtual TodoReturn googlePlaySignedIn();
}

[[link(android)]]
class GooglePlayManager {
	// virtual ~GooglePlayManager();

	static GooglePlayManager* sharedState();

	TodoReturn getDelegate();
	TodoReturn getDelegate2();
	TodoReturn googlePlaySignedIn();

	virtual bool init();
	virtual void setDelegate(GooglePlayDelegate*);
	virtual void setDelegate2(GooglePlayDelegate*);
}

[[link(android)]]
class GravityEffectSprite {
	// virtual ~GravityEffectSprite();

	static GravityEffectSprite* create();

	TodoReturn updateSpritesColor(cocos2d::ccColor3B);

	virtual bool init();
	virtual void draw();
}

[[link(android)]]
class HardStreak {
	// virtual ~HardStreak();

	static HardStreak* create();

	TodoReturn addPoint(cocos2d::CCPoint);
	TodoReturn clearBehindXPos(float);
	TodoReturn firstSetup();
	TodoReturn getDisableDual();
	TodoReturn getEndPoint();
	TodoReturn getStrokeScale();
	TodoReturn getStrokeScaleMod();
	TodoReturn normalizeAngle(double);
	TodoReturn quadCornerOffset(cocos2d::CCPoint, cocos2d::CCPoint, float);
	TodoReturn reset();
	TodoReturn resumeStroke();
	TodoReturn stopStroke();
	TodoReturn updateStroke(float);

	virtual bool init();
	virtual void setEndPoint(cocos2d::CCPoint);
	virtual void setStrokeScale(float);
	virtual void setStrokeScaleMod(float);
	virtual void setDisableDual(bool);
}

[[link(android)]]
class InfoLayer {
	// virtual ~InfoLayer();
	// InfoLayer();

	static InfoLayer* create(GJGameLevel*);

	TodoReturn confirmReport(cocos2d::CCObject*);
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);
	bool init(GJGameLevel*);
	bool isCorrect(char const*);
	TodoReturn loadPage(int);
	void onClose(cocos2d::CCObject* sender);
	void onComment(cocos2d::CCObject* sender);
	void onGetComments(cocos2d::CCObject* sender);
	void onLevelInfo(cocos2d::CCObject* sender);
	void onMore(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onOriginal(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*);
	TodoReturn setupLevelInfo();
	TodoReturn toggleCommentMode(cocos2d::CCNode*);
	TodoReturn updateCommentModeButtons();
	TodoReturn updateLevelsLabel();

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadCommentsFailed(char const*);
	virtual TodoReturn setupPageInfo(gd::string, char const*);
	virtual TodoReturn commentUploadFinished(int);
	virtual TodoReturn commentUploadFailed(int);
	virtual TodoReturn updateUserScoreFinished();
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
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
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn encodeDataTo(DS_Dictionary*);
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
class LeaderboardsLayer {
	// virtual ~LeaderboardsLayer();

	static LeaderboardsLayer* create(LeaderboardState);

	bool init(LeaderboardState);
	bool isCorrect(char const*);
	void onBack(cocos2d::CCObject* sender);
	void onCreators(cocos2d::CCObject* sender);
	void onGlobal(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onTop(cocos2d::CCObject* sender);
	void onWeek(cocos2d::CCObject* sender);
	TodoReturn scene(LeaderboardState);
	TodoReturn selectLeaderboard(LeaderboardState);
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	TodoReturn setupTabs();
	TodoReturn toggleTabButtons();

	virtual void keyBackClicked();
	virtual TodoReturn updateUserScoreFinished();
	virtual TodoReturn updateUserScoreFailed();
	virtual TodoReturn loadLeaderboardFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadLeaderboardFailed(char const*);
}

[[link(android)]]
class LevelBrowserLayer {
	// virtual ~LevelBrowserLayer();
	// LevelBrowserLayer();

	static LevelBrowserLayer* create(GJSearchObject*);

	bool init(GJSearchObject*);
	bool isCorrect(char const*);
	TodoReturn loadPage(GJSearchObject*);
	void onBack(cocos2d::CCObject* sender);
	void onDeleteAll(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onMyOnlineLevels(cocos2d::CCObject* sender);
	void onNew(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn scene(GJSearchObject*);
	void setSearchObject(GJSearchObject*);
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	TodoReturn updateLevelsLabel();

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadLevelsFailed(char const*);
	virtual TodoReturn setupPageInfo(gd::string, char const*);
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class LevelCell {
	// virtual ~LevelCell();
	LevelCell(char const*, float, float);

	TodoReturn loadCustomLevelCell();
	TodoReturn loadFromLevel(GJGameLevel*);
	TodoReturn loadLocalLevelCell();
	void onClick(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual void draw();
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
class LevelEditorLayer {
	// virtual ~LevelEditorLayer();
	// LevelEditorLayer();

	static LevelEditorLayer* create(GJGameLevel*);

	TodoReturn addObjectFromString(gd::string);
	TodoReturn addSpecial(GameObject*);
	TodoReturn addToRedoList(UndoObject*);
	TodoReturn addToSection(GameObject*);
	TodoReturn addToUndoList(UndoObject*, bool);
	TodoReturn animateInDualGround(GameObject*, float, bool);
	TodoReturn checkCollisions(PlayerObject*, float);
	TodoReturn createBackground();
	TodoReturn createObject(int, cocos2d::CCPoint);
	TodoReturn createObjectsFromSetup(gd::string);
	TodoReturn createObjectsFromString(gd::string, bool);
	TodoReturn enterDualMode(GameObject*, bool);
	TodoReturn getAllObjects();
	TodoReturn getClkTimer();
	TodoReturn getDualMode();
	TodoReturn getGameLayer();
	TodoReturn getGridLayer();
	TodoReturn getGridPos(cocos2d::CCPoint);
	TodoReturn getGroundHeightForMode(int);
	TodoReturn getGroupIDFilter();
	TodoReturn getLevel();
	TodoReturn getLevelDistance();
	TodoReturn getLevelSettings();
	TodoReturn getLevelString();
	TodoReturn getMaxPortalY();
	TodoReturn getMinPortalY();
	TodoReturn getObjectCount();
	TodoReturn getObjectRect(GameObject*, bool);
	TodoReturn getOldLevelString();
	TodoReturn getOtherPlayer(PlayerObject*);
	TodoReturn getPlayer();
	TodoReturn getPlayer2();
	TodoReturn getPlayerState();
	TodoReturn getRelativeOffset(GameObject*);
	TodoReturn getSectionCount();
	TodoReturn getUILayer();
	TodoReturn handleAction(bool, cocos2d::CCArray*);
	TodoReturn hasAction(bool);
	bool init(GJGameLevel*);
	TodoReturn objectAtPosition(cocos2d::CCPoint);
	TodoReturn objectIntersectsCircle(GameObject*, GameObject*);
	TodoReturn objectsAtPosition(cocos2d::CCPoint);
	TodoReturn objectsInRect(cocos2d::CCRect);
	TodoReturn onPausePlaytest();
	TodoReturn onPlaytest();
	TodoReturn onResumePlaytest();
	TodoReturn onStopPlaytest();
	TodoReturn playerWillSwitchMode(PlayerObject*, GameObject*);
	TodoReturn playMusic();
	TodoReturn pushButton(int, bool);
	TodoReturn redoLastAction();
	TodoReturn releaseButton(int, bool);
	TodoReturn removeAllObjects();
	TodoReturn removeAllObjectsOfType(int);
	TodoReturn removeBackground();
	TodoReturn removeObject(GameObject*, bool);
	TodoReturn removeObjectFromSection(GameObject*);
	TodoReturn removePlayer2();
	TodoReturn removeSpecial(GameObject*);
	TodoReturn reorderObjectSection(GameObject*);
	TodoReturn rotationForSlopeNearObject(GameObject*);
	TodoReturn scene(GJGameLevel*);
	TodoReturn sectionForPos(cocos2d::CCPoint);
	void setStartPosObject(StartPosObject*);
	TodoReturn setupLevelStart(LevelSettingsObject*);
	TodoReturn sortBatchnodeChildren(float);
	TodoReturn spawnPlayer2();
	TodoReturn switchToFlyMode(PlayerObject*, GameObject*, bool, int);
	TodoReturn switchToRollMode(PlayerObject*, GameObject*, bool);
	TodoReturn toggleDualMode(GameObject*, bool, PlayerObject*, bool);
	TodoReturn typeExistsAtPosition(int, cocos2d::CCPoint, bool, bool, float);
	TodoReturn undoLastAction();
	TodoReturn updateDualGround(PlayerObject*, int, bool);
	TodoReturn updateOBB2(cocos2d::CCRect);
	TodoReturn updateTimeMod(float);
	TodoReturn updateVisibility(float);
	TodoReturn validGroup(GameObject*);

	virtual void update(float);
	virtual void draw();
	virtual TodoReturn levelSettingsUpdated();
	virtual TodoReturn flipGravity(PlayerObject*, bool, bool);
	virtual void setGroupIDFilter(int);
	virtual void setObjectCount(int);
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
class LevelInfoLayer {
	// virtual ~LevelInfoLayer();
	// LevelInfoLayer();

	static LevelInfoLayer* create(GJGameLevel*);

	TodoReturn confirmClone(cocos2d::CCObject*);
	TodoReturn confirmDelete(cocos2d::CCObject*);
	TodoReturn confirmOwnerDelete(cocos2d::CCObject*);
	TodoReturn downloadLevel();
	TodoReturn incrementDislikes();
	TodoReturn incrementLikes();
	bool init(GJGameLevel*);
	void onBack(cocos2d::CCObject* sender);
	void onClone(cocos2d::CCObject* sender);
	void onDelete(cocos2d::CCObject* sender);
	void onFeatured(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onLevelInfo(cocos2d::CCObject* sender);
	void onLike(cocos2d::CCObject* sender);
	void onOwnerDelete(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onPlayReplay(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender);
	void onRateStars(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn scene(GJGameLevel*);
	TodoReturn setupLevelInfo();
	TodoReturn setupProgressBars();
	TodoReturn shouldDownloadLevel();
	TodoReturn showSongWarning();
	TodoReturn showUpdateAlert(UpdateResponse);
	TodoReturn tryCloneLevel(cocos2d::CCObject*);
	TodoReturn updateLabelValues();
	TodoReturn updateSideButtons();

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn numberInputClosed(NumberInputLayer*);
	virtual TodoReturn levelDownloadFinished(GJGameLevel*);
	virtual TodoReturn levelDownloadFailed(int);
	virtual TodoReturn levelUpdateFinished(GJGameLevel*, UpdateResponse);
	virtual TodoReturn levelUpdateFailed(int);
	virtual TodoReturn levelDeleteFinished(int);
	virtual TodoReturn levelDeleteFailed(int);
	virtual TodoReturn rateLevelClosed();
	virtual TodoReturn likedItem(LikeItemType, int, bool);
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class LevelManagerDelegate {
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadLevelsFailed(char const*);
	virtual TodoReturn setupPageInfo(gd::string, char const*);
}

[[link(android)]]
class LevelPage {
	// virtual ~LevelPage();
	// LevelPage();

	static LevelPage* create(GJGameLevel*);

	TodoReturn addSecretCoin();
	bool init(GJGameLevel*);
	void onInfo(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	TodoReturn playCoinEffect();
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn updateDynamicPage(GJGameLevel*);

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
}

[[link(android)]]
class LevelSearchLayer {
	// virtual ~LevelSearchLayer();

	static LevelSearchLayer* create();

	TodoReturn checkDiff(int);
	TodoReturn checkTime(int);
	TodoReturn clearFilters();
	TodoReturn confirmClearFilters(cocos2d::CCObject*);
	TodoReturn getDiffKey(int);
	TodoReturn getLevelLenKey();
	TodoReturn getSearchDiffKey();
	TodoReturn getSearchObject(SearchType, gd::string);
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

	virtual bool init();
	virtual void keyBackClicked();
	virtual void textInputOpened(CCTextInputNode*);
	virtual void textInputClosed(CCTextInputNode*);
	virtual void textChanged(CCTextInputNode*);
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class LevelSelectLayer {
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

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn updatePageWithObject(cocos2d::CCObject*, cocos2d::CCObject*);
	virtual TodoReturn scrollLayerMoved(cocos2d::CCPoint);
}

[[link(android)]]
class LevelSettingsDelegate {
	virtual TodoReturn levelSettingsUpdated();
}

[[link(android)]]
class LevelSettingsLayer {
	// virtual ~LevelSettingsLayer();
	// LevelSettingsLayer();

	static LevelSettingsLayer* create(LevelSettingsObject*);

	TodoReturn audioNext(cocos2d::CCObject*);
	TodoReturn audioPrevious(cocos2d::CCObject*);
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn getDelegate();
	TodoReturn getEditorLayer();
	bool init(LevelSettingsObject*);
	void on3DLine(cocos2d::CCObject* sender);
	void onBG(cocos2d::CCObject* sender);
	void onBGArt(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onCol1(cocos2d::CCObject* sender);
	void onCol2(cocos2d::CCObject* sender);
	void onCol3(cocos2d::CCObject* sender);
	void onCol4(cocos2d::CCObject* sender);
	void onDualMode(cocos2d::CCObject* sender);
	void onG(cocos2d::CCObject* sender);
	void onGArt(cocos2d::CCObject* sender);
	void onGravityFlipped(cocos2d::CCObject* sender);
	void onLine(cocos2d::CCObject* sender);
	void onMiniMode(cocos2d::CCObject* sender);
	void onObj(cocos2d::CCObject* sender);
	void onOpenCustomSong(cocos2d::CCObject* sender);
	void onSelectMode(cocos2d::CCObject* sender);
	void onSelectSpeed(cocos2d::CCObject* sender);
	void onSongMode(cocos2d::CCObject* sender);
	void onTwoPlayerMode(cocos2d::CCObject* sender);
	void onTwoPlayerModeInfo(cocos2d::CCObject* sender);
	TodoReturn selectSong(int);
	TodoReturn showCustomSongSelect();
	TodoReturn showPicker(int, SettingsColorObject*);
	TodoReturn updateAudioLabel();

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
class LevelSettingsObject {
	// virtual ~LevelSettingsObject();
	// LevelSettingsObject();

	static LevelSettingsObject* create();

	TodoReturn getBackgroundColor();
	TodoReturn getBGIdx();
	TodoReturn getCustomColor01();
	TodoReturn getCustomColor02();
	TodoReturn getCustomColor03();
	TodoReturn getCustomColor04();
	TodoReturn getDLineColor();
	TodoReturn getFadeIn();
	TodoReturn getFadeOut();
	TodoReturn getGIdx();
	TodoReturn getGravityFlipped();
	TodoReturn getGroundColor();
	TodoReturn getIsLimited();
	TodoReturn getLevel();
	TodoReturn getLineColor();
	TodoReturn getObjectColor();
	TodoReturn getSaveString();
	TodoReturn getSongChanged();
	TodoReturn getSongOffset();
	TodoReturn getSongString();
	TodoReturn getStartDualMode();
	TodoReturn getStartMiniMode();
	TodoReturn getStartMode();
	TodoReturn getStartSpeed();
	TodoReturn getTwoPlayerMode();
	TodoReturn objectFromDict(cocos2d::CCDictionary*);
	TodoReturn objectFromString(gd::string);
	TodoReturn offsetMusic();
	TodoReturn setupColorsFromLegacyMode(cocos2d::CCDictionary*);
	TodoReturn updateColors(cocos2d::ccColor3B, cocos2d::ccColor3B);

	virtual bool init();
	virtual void setBackgroundColor(SettingsColorObject*);
	virtual void setGroundColor(SettingsColorObject*);
	virtual void setLineColor(SettingsColorObject*);
	virtual void setObjectColor(SettingsColorObject*);
	virtual void setDLineColor(SettingsColorObject*);
	virtual void setCustomColor01(SettingsColorObject*);
	virtual void setCustomColor02(SettingsColorObject*);
	virtual void setCustomColor03(SettingsColorObject*);
	virtual void setCustomColor04(SettingsColorObject*);
	virtual void setStartMode(int);
	virtual void setStartSpeed(int);
	virtual void setStartMiniMode(bool);
	virtual void setStartDualMode(bool);
	virtual void setTwoPlayerMode(bool);
	virtual void setSongOffset(float);
	virtual void setFadeIn(bool);
	virtual void setFadeOut(bool);
	virtual void setBGIdx(int);
	virtual void setGIdx(int);
	virtual void setIsLimited(bool);
	virtual void setGravityFlipped(bool);
	virtual void setLevel(GJGameLevel*);
	virtual void setSongString(gd::string);
	virtual void setSongChanged(bool);
}

[[link(android)]]
class LevelTools {
	TodoReturn artistForAudio(int);
	TodoReturn fbURLForArtist(int);
	TodoReturn getAudioBPM(int);
	TodoReturn getAudioFileName(int);
	TodoReturn getAudioString(int);
	TodoReturn getAudioTitle(int);
	TodoReturn getLevel(int, bool);
	TodoReturn getSongObject(int);
	TodoReturn nameForArtist(int);
	TodoReturn ngURLForArtist(int);
	TodoReturn offsetBPMForTrack(int);
	TodoReturn timeForXPos(float, cocos2d::CCArray*, int);
	TodoReturn urlForAudio(int);
	TodoReturn ytURLForArtist(int);
}

[[link(android)]]
class LevelUpdateDelegate {
	virtual TodoReturn levelUpdateFinished(GJGameLevel*, UpdateResponse);
	virtual TodoReturn levelUpdateFailed(int);
}

[[link(android)]]
class LevelUploadDelegate {
	virtual TodoReturn levelUploadFinished(GJGameLevel*);
	virtual TodoReturn levelUploadFailed(GJGameLevel*);
}

[[link(android)]]
class LikeItemDelegate {
	virtual TodoReturn likedItem(LikeItemType, int, bool);
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
class ListButtonBar {
	// virtual ~ListButtonBar();

	static ListButtonBar* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int);

	TodoReturn getDelegate();
	TodoReturn getPage();
	TodoReturn goToPage(int);
	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int);
	void onLeft(cocos2d::CCObject* sender);
	void onRight(cocos2d::CCObject* sender);

	virtual void setDelegate(ListButtonBarDelegate*);
}

[[link(android)]]
class ListButtonBarDelegate {
	virtual TodoReturn listButtonBarSwitchedPage(ListButtonBar*, int);
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

	static LoadingCircle* create();

	void fadeAndRemove();
	cocos2d::CCSprite* getCircle();
	bool getDarkOverlay();
	cocos2d::CCNode* getTargetScene();
	void show();

	virtual bool init();
	virtual void draw();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void setTargetScene(cocos2d::CCNode*);
	virtual void setDarkOverlay(bool);

	cocos2d::CCSprite* m_sprite; // m_circle
	cocos2d::CCLayer* m_parentLayer; // m_targetScene
	bool m_fade; // m_darkOverlay
}

[[link(android)]]
class LoadingLayer : cocos2d::CCLayer {
	// virtual ~LoadingLayer();

	static LoadingLayer* create(bool);
	static cocos2d::CCScene* scene(bool);

	const char* getLoadingString();
	bool init(bool);
	void loadAssets();
	void loadingFinished();
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
class LocalLevelManager {
	// virtual ~LocalLevelManager();

	static LocalLevelManager* sharedState();

	TodoReturn getAllLevelsInDict();
	TodoReturn getAllLevelsWithName(gd::string);
	TodoReturn getLevelsInNameGroups();
	TodoReturn getLocalLevels();
	TodoReturn getMainLevelString(int);
	TodoReturn markLevelsAsUnmodified();
	TodoReturn reorderLevels();
	TodoReturn updateLevelOrder();
	TodoReturn updateLevelRevision();

	virtual bool init();
	virtual TodoReturn encodeDataTo(DS_Dictionary*);
	virtual TodoReturn dataLoaded(DS_Dictionary*);
	virtual TodoReturn firstLoad();
	virtual void setLocalLevels(cocos2d::CCArray*);
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
	// MenuGameLayer();

	static MenuGameLayer* create();

	void destroyPlayer();
	TodoReturn getBGColor(int);
	TodoReturn resetPlayer();
	TodoReturn tryJump(float);
	TodoReturn updateColor(float);

	virtual void update(float);
	virtual bool init();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
}

[[link(android)]]
class MenuLayer : cocos2d::CCLayer, FLAlertLayerProtocol, GooglePlayDelegate {
	// virtual ~MenuLayer();

	static cocos2d::CCScene* scene(bool);

	TodoReturn endGame();
	TodoReturn node();
	void onAchievements(cocos2d::CCObject* sender);
	void onCreator(cocos2d::CCObject* sender);
	void onEveryplay(cocos2d::CCObject* sender);
	void onFacebook(cocos2d::CCObject* sender);
	void onFullVersion(cocos2d::CCObject* sender);
	void onGameCenter(cocos2d::CCObject* sender);
	void onGarage(cocos2d::CCObject* sender);
	void onGooglePlayGames(cocos2d::CCObject* sender);
	void onMoreGames(cocos2d::CCObject* sender);
	void onOptions(cocos2d::CCObject* sender);
	TodoReturn onOptionsInstant();
	void onPlay(cocos2d::CCObject* sender);
	void onQuit(cocos2d::CCObject* sender);
	void onRobTop(cocos2d::CCObject* sender);
	void onStats(cocos2d::CCObject* sender);
	void onTrailer(cocos2d::CCObject* sender);
	void onTwitter(cocos2d::CCObject* sender);
	void onYouTube(cocos2d::CCObject* sender);
	TodoReturn openOptions(bool);
	TodoReturn showGCQuestion();
	TodoReturn showPirateMessage();
	TodoReturn syncPlatformAchievements(float);
	TodoReturn tryShowAd(float);
	TodoReturn willClose();

	virtual bool init();
	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn googlePlaySignedIn();
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class MoreOptionsLayer {
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

	virtual bool init();
	virtual void keyBackClicked();
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual TodoReturn textInputReturn(CCTextInputNode*);
	virtual TodoReturn googlePlaySignedIn();
}

[[link(android)]]
class MoreSearchLayer {
	// virtual ~MoreSearchLayer();
	// MoreSearchLayer();

	static MoreSearchLayer* create();

	TodoReturn audioNext(cocos2d::CCObject*);
	TodoReturn audioPrevious(cocos2d::CCObject*);
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
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

	virtual bool init();
	virtual void keyBackClicked();
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual TodoReturn textInputReturn(CCTextInputNode*);
}

[[link(android)]]
class MoreVideoOptionsLayer {
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
	virtual TodoReturn songStateChanged();
}

[[link(android)]]
class MusicDownloadManager {
	// virtual ~MusicDownloadManager();

	static MusicDownloadManager* sharedState();

	TodoReturn addDLToActive(char const*, cocos2d::CCObject*);
	TodoReturn addDLToActive(char const*);
	TodoReturn addMusicDownloadDelegate(MusicDownloadDelegate*);
	TodoReturn addSongObjectFromString(gd::string);
	TodoReturn createSongsInfo(gd::string);
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn deleteSong(int);
	TodoReturn downloadSong(int);
	TodoReturn downloadSongFailed(int, GJSongError);
	TodoReturn downloadSongFinished(SongInfoObject*);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn getDLObject(char const*);
	TodoReturn getDownloadedSongs();
	TodoReturn getDownloadedSongsDict();
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
	bool isSongDownloaded(int);
	TodoReturn limitDownloadedSongs();
	TodoReturn loadSongInfoFailed(int, GJSongError);
	TodoReturn loadSongInfoFinished(SongInfoObject*);
	TodoReturn onDownloadSongCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onGetSongInfoCompleted(gd::string, gd::string);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn pathForSong(int);
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn removeMusicDownloadDelegate(MusicDownloadDelegate*);
	TodoReturn responseToDict(gd::string, char const*);
	TodoReturn showTOS(FLAlertLayerProtocol*);
	TodoReturn songStateChanged();
	TodoReturn stopDownload(int);

	virtual bool init();
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
class NodePoint {
	// virtual ~NodePoint();

	static NodePoint* create(cocos2d::CCPoint);

	TodoReturn getPoint();
	bool init(cocos2d::CCPoint);
}

[[link(android)]]
class NumberInputDelegate {
	virtual TodoReturn numberInputClosed(NumberInputLayer*);
}

[[link(android)]]
class NumberInputLayer {
	// virtual ~NumberInputLayer();
	// NumberInputLayer();

	static NumberInputLayer* create();

	TodoReturn deleteLast();
	TodoReturn getDelegate();
	TodoReturn getMaxNumbers();
	TodoReturn getMinNumbers();
	TodoReturn getNumberString();
	TodoReturn inputNumber(int);
	void onClose(cocos2d::CCObject* sender);
	void onDone(cocos2d::CCObject* sender);
	void onNumber(cocos2d::CCObject* sender);
	TodoReturn updateNumberState();

	virtual bool init();
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void setMinNumbers(int);
	virtual void setMaxNumbers(int);
	virtual void setDelegate(NumberInputDelegate*);
}

[[link(android)]]
class OBB2D {
	// virtual ~OBB2D();
	// OBB2D();

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
class ObjectDecoder {
	// virtual ~ObjectDecoder();

	static ObjectDecoder* sharedDecoder();

	TodoReturn getDecodedObject(int, DS_Dictionary*);
	TodoReturn getDelegate();

	virtual bool init();
	virtual void setDelegate(ObjectDecoderDelegate*);
}

[[link(android)]]
class ObjectDecoderDelegate {
	virtual TodoReturn getDecodedObject(int, DS_Dictionary*);
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
class ObjectToolbox {
	// virtual ~ObjectToolbox();

	static ObjectToolbox* sharedState();

	TodoReturn allKeys();
	TodoReturn frameToKey(char const*);
	TodoReturn gridNodeSizeForKey(int);
	TodoReturn intKeyToFrame(int);
	TodoReturn keyToFrame(char const*);
	TodoReturn perspectiveBlockFrame(int);
	TodoReturn stringSetupToDict(gd::string, char const*);
	TodoReturn stringSetupToMap(gd::string, char const*);

	virtual bool init();
}

[[link(android)]]
class OptionsLayer {
	// virtual ~OptionsLayer();

	static OptionsLayer* create();

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn exitLayer();
	TodoReturn musicSliderChanged(cocos2d::CCObject*);
	void onAccount(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onOptions(cocos2d::CCObject* sender);
	void onProgressBar(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender);
	void onRecordReplays(cocos2d::CCObject* sender);
	void onSoundtracks(cocos2d::CCObject* sender);
	void onSupport(cocos2d::CCObject* sender);
	void onVideo(cocos2d::CCObject* sender);
	TodoReturn sfxSliderChanged(cocos2d::CCObject*);
	TodoReturn tryEnableRecord();

	virtual TodoReturn customSetup();
	virtual TodoReturn layerHidden();
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class PauseLayer {
	// virtual ~PauseLayer();
	// PauseLayer();

	static PauseLayer* create(bool);

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn goEdit();
	bool init(bool);
	TodoReturn musicSliderChanged(cocos2d::CCObject*);
	void onAutoCheckpoints(cocos2d::CCObject* sender);
	void onAutoRetry(cocos2d::CCObject* sender);
	void onEdit(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onNormalMode(cocos2d::CCObject* sender);
	void onPracticeMode(cocos2d::CCObject* sender);
	void onProgressBar(cocos2d::CCObject* sender);
	void onQuit(cocos2d::CCObject* sender);
	void onRecordReplays(cocos2d::CCObject* sender);
	void onRestart(cocos2d::CCObject* sender);
	void onResume(cocos2d::CCObject* sender);
	TodoReturn setupProgressBars();
	TodoReturn sfxSliderChanged(cocos2d::CCObject*);
	TodoReturn tryShowBanner(float);

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
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
	TodoReturn activateGameCenter();
	TodoReturn doesFileExist(gd::string);
	TodoReturn downloadAndSavePromoImage(gd::string, gd::string);
	TodoReturn gameDidSave();
	TodoReturn getDisplaySize();
	TodoReturn getRawPath(char const*);
	TodoReturn getUniqueUserID();
	TodoReturn getUserID();
	TodoReturn hideCursor();
	static bool isControllerConnected();
	bool isHD();
	bool isLocalPlayerAuthenticated();
	bool isLowMemoryDevice();
	bool isNetworkAvailable();
	bool isSignedInGooglePlay();
	TodoReturn loadAndDecryptFileToString(char const*, char const*);
	TodoReturn logEvent(char const*);
	TodoReturn onGameLaunch();
	TodoReturn onNativePause();
	TodoReturn onNativeResume();
	TodoReturn onToggleKeyboard();
	TodoReturn openAppPage();
	TodoReturn platformShutdown();
	TodoReturn refreshWindow();
	TodoReturn reportAchievementWithID(char const*, int);
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
class PlayerCheckpoint {
	// virtual ~PlayerCheckpoint();
	// PlayerCheckpoint();

	static PlayerCheckpoint* create();

	TodoReturn getBirdMode();
	TodoReturn getCanJump();
	TodoReturn getDartMode();
	TodoReturn getFlipGravity();
	TodoReturn getFlyMode();
	TodoReturn getGhostType();
	TodoReturn getIsScaled();
	TodoReturn getPlayerPos();
	TodoReturn getPlayerYVel();
	TodoReturn getRollMode();
	TodoReturn getTimeMod();

	virtual bool init();
	virtual void setPlayerPos(cocos2d::CCPoint);
	virtual void setPlayerYVel(float);
	virtual void setFlipGravity(bool);
	virtual void setFlyMode(bool);
	virtual void setRollMode(bool);
	virtual void setBirdMode(bool);
	virtual void setDartMode(bool);
	virtual void setCanJump(bool);
	virtual void setGhostType(int);
	virtual void setIsScaled(bool);
	virtual void setTimeMod(float);
}

[[link(android)]]
class PlayerObject {
	// virtual ~PlayerObject();
	// PlayerObject();

	static PlayerObject* create(int, int, cocos2d::CCLayer*);

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
	TodoReturn deactivateStreak();
	TodoReturn fadeOutStreak2(float);
	TodoReturn flipGravity(bool, bool);
	TodoReturn flipMod();
	TodoReturn getAllowRollJump();
	TodoReturn getAudioScale();
	TodoReturn getBirdMode();
	TodoReturn getCanJump();
	TodoReturn getClkTimer();
	TodoReturn getDartMode();
	TodoReturn getDisableEffects();
	TodoReturn getDualMode();
	TodoReturn getFlyMode();
	TodoReturn getGameDelegate();
	TodoReturn getGameLayer();
	TodoReturn getGlowColor1();
	TodoReturn getGlowColor2();
	TodoReturn getGravityFlipped();
	TodoReturn getGroundHeight();
	TodoReturn getHasJumped();
	TodoReturn getHasRingJumped();
	TodoReturn getIsDead();
	TodoReturn getIsJumping();
	TodoReturn getIsLocked();
	TodoReturn getIsSecondPlayer();
	TodoReturn getLastGroundPos();
	TodoReturn getLastP();
	TodoReturn getModifiedSlopeYVel();
	TodoReturn getOnGround();
	TodoReturn getOnSlope();
	TodoReturn getPlayerScale();
	TodoReturn getPortalObject();
	TodoReturn getPortalP();
	TodoReturn getRealPlayerPos();
	TodoReturn getRollMode();
	TodoReturn getSecondColor();
	TodoReturn getSlopeYVel();
	TodoReturn getTimeMod();
	TodoReturn getTookDamage();
	TodoReturn getTouchedRing();
	TodoReturn getUpKeyDown();
	TodoReturn getUpKeyPressed();
	TodoReturn getWasOnSlope();
	TodoReturn getYVelocity();
	TodoReturn gravityDown();
	TodoReturn gravityUp();
	TodoReturn hardFlipGravity();
	TodoReturn hitGround(bool);
	TodoReturn incrementJumps();
	bool init(int, int, cocos2d::CCLayer*);
	bool isBoostValid(float);
	bool isFlying();
	bool isSafeFlip(float);
	bool isSafeMode(float);
	TodoReturn levelFlipFinished();
	TodoReturn levelFlipping();
	TodoReturn levelWillFlip();
	TodoReturn loadFromCheckpoint(PlayerCheckpoint*);
	TodoReturn lockPlayer();
	TodoReturn logValues();
	TodoReturn placeStreakPoint();
	TodoReturn playBurstEffect();
	TodoReturn playerDestroyed(bool);
	TodoReturn playerIsFalling();
	TodoReturn postCollision();
	TodoReturn preCollision();
	TodoReturn preSlopeCollision(float, GameObject*);
	TodoReturn propellPlayer(float);
	TodoReturn pushButton(PlayerButton);
	TodoReturn pushDown();
	TodoReturn releaseButton(PlayerButton);
	TodoReturn removeAllParticles();
	TodoReturn removePendingCheckpoint();
	TodoReturn resetAllParticles();
	TodoReturn resetCollisionLog();
	TodoReturn resetPlayerIcon();
	TodoReturn resetStreak();
	TodoReturn ringJump();
	TodoReturn runBallRotation(float);
	TodoReturn runBallRotation2();
	TodoReturn runNormalRotation();
	TodoReturn runRotateAction(bool);
	TodoReturn saveToCheckpoint(PlayerCheckpoint*);
	void setSecondColor(cocos2d::ccColor3B const&);
	TodoReturn setupStreak();
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
	TodoReturn toggleBirdMode(bool);
	TodoReturn toggleDartMode(bool);
	TodoReturn toggleFlyMode(bool);
	TodoReturn toggleGhostEffect(GhostType);
	TodoReturn togglePlayerScale(bool);
	TodoReturn toggleRollMode(bool);
	TodoReturn touchedObject(GameObject*);
	TodoReturn tryPlaceCheckpoint();
	TodoReturn updateCheckpointTest();
	TodoReturn updateCollide(bool, int);
	TodoReturn updateCollideBottom(float, int);
	TodoReturn updateCollideTop(float, int);
	TodoReturn updateGlowColor();
	TodoReturn updateJump(float);
	TodoReturn updatePlayerBirdFrame(int);
	TodoReturn updatePlayerDartFrame(int);
	TodoReturn updatePlayerFrame(int);
	TodoReturn updatePlayerGlow();
	TodoReturn updatePlayerRollFrame(int);
	TodoReturn updatePlayerScale();
	TodoReturn updatePlayerShipFrame(int);
	TodoReturn updateRotation(float, float);
	TodoReturn updateRotation(float);
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
	virtual TodoReturn resetObject();
	virtual TodoReturn getRealPosition();
	virtual TodoReturn getOrientedBox();
	virtual void setTookDamage(bool);
	virtual void setOnSlope(bool);
	virtual void setWasOnSlope(bool);
	virtual void setLastP(cocos2d::CCPoint);
	virtual void setPortalP(cocos2d::CCPoint);
	virtual void setGameLayer(cocos2d::CCLayer*);
	virtual void setOnGround(bool);
	virtual void setAllowRollJump(bool);
	virtual void setTouchedRing(GameObject*);
	virtual void setPortalObject(GameObject*);
	virtual void setRealPlayerPos(cocos2d::CCPoint);
	virtual void setIsSecondPlayer(bool);
	virtual void setDualMode(bool);
	virtual void setClkTimer(double);
	virtual void setDisableEffects(bool);
	virtual void setGameDelegate(GameplayDelegate*);
	virtual void setAudioScale(float);
	virtual void setGroundHeight(float);
}

[[link(android)]]
class PlayLayer {
	// virtual ~PlayLayer();
	// PlayLayer();

	static PlayLayer* create(GJGameLevel*);

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
	TodoReturn checkCollisions(PlayerObject*, float);
	TodoReturn checkSpawnObjects();
	TodoReturn claimParticle(gd::string);
	TodoReturn clearPickedUpItems();
	TodoReturn colorObject(int, cocos2d::ccColor3B);
	TodoReturn createCheckpoint();
	TodoReturn createObjectsFromSetup(gd::string);
	TodoReturn createParticle(int, char const*, int, cocos2d::tCCPositionType);
	TodoReturn delayedResetLevel();
	TodoReturn destroyPlayer(PlayerObject*);
	TodoReturn enterDualMode(GameObject*, bool);
	TodoReturn exitAirMode();
	TodoReturn exitBirdMode(PlayerObject*);
	TodoReturn exitDartMode(PlayerObject*);
	TodoReturn exitFlyMode(PlayerObject*);
	TodoReturn exitRollMode(PlayerObject*);
	TodoReturn flipFinished();
	TodoReturn flipObjects();
	TodoReturn fullReset();
	TodoReturn get3DLineColor();
	TodoReturn getActive3DLineColorAction();
	TodoReturn getActiveBGColorAction();
	TodoReturn getActiveColor01Action();
	TodoReturn getActiveColor02Action();
	TodoReturn getActiveColor03Action();
	TodoReturn getActiveColor04Action();
	TodoReturn getActiveGColorAction();
	TodoReturn getActiveLineColorAction();
	TodoReturn getActiveObjColorAction();
	TodoReturn getAttempts();
	TodoReturn getBatchNode();
	TodoReturn getBatchNodeAdd();
	TodoReturn getBatchNodeAddBottom();
	TodoReturn getBatchNodeAddPlayer();
	TodoReturn getBatchNodeBottom();
	TodoReturn getBatchNodePlayer();
	TodoReturn getBGColor();
	TodoReturn getBigActionContainer();
	TodoReturn getCameraPortal();
	TodoReturn getCameraPos();
	TodoReturn getCleanReset();
	TodoReturn getClkTimer();
	TodoReturn getCustom01Color();
	TodoReturn getCustom02Color();
	TodoReturn getCustom03Color();
	TodoReturn getCustom04Color();
	TodoReturn getCustomColor01Blend();
	TodoReturn getCustomColor02Blend();
	TodoReturn getCustomColor03Blend();
	TodoReturn getCustomColor04Blend();
	TodoReturn getCustomColor3DBlend();
	TodoReturn getDidAwardStars();
	TodoReturn getDidJump();
	TodoReturn getDualMode();
	TodoReturn getDualModeCamera();
	TodoReturn getEndTriggered();
	TodoReturn getFlipValue();
	TodoReturn getGameLayer();
	TodoReturn getGColor();
	TodoReturn getGroundHeightForMode(int);
	TodoReturn getIsFlipped();
	TodoReturn getIsResetting();
	TodoReturn getJumps();
	TodoReturn getLastCheckpoint();
	TodoReturn getLastRunPercent();
	TodoReturn getLevel();
	TodoReturn getLightBGColor();
	TodoReturn getLineColor();
	TodoReturn getMaxPortalY();
	TodoReturn getMinPortalY();
	TodoReturn getMixedColor(cocos2d::ccColor3B, cocos2d::ccColor3B, float);
	TodoReturn getObjColor();
	TodoReturn getOtherPlayer(PlayerObject*);
	TodoReturn getParticleKey(int, char const*, int, cocos2d::tCCPositionType);
	TodoReturn getParticleKey2(gd::string);
	TodoReturn getPlaybackMode();
	TodoReturn getPlayer();
	TodoReturn getPlayer2();
	TodoReturn getPracticeMode();
	TodoReturn getRelativeMod(cocos2d::CCPoint, float, float, float);
	TodoReturn getRelativeModSpecial(cocos2d::CCPoint, float, float, float);
	TodoReturn getResetQueued();
	TodoReturn getShouldRestartAfterStopped();
	TodoReturn getShowingEndLayer();
	TodoReturn getStartPos();
	TodoReturn getTestMode();
	TodoReturn getUILayer();
	TodoReturn gravityEffectFinished();
	TodoReturn hasItem(int);
	TodoReturn hasUniqueCoin(GameObject*);
	TodoReturn incrementJumps();
	bool init(GJGameLevel*);
	bool isFlipping();
	TodoReturn levelComplete();
	TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::ccColor3B);
	TodoReturn loadLastCheckpoint();
	TodoReturn markCheckpoint();
	TodoReturn moveCameraToPos(cocos2d::CCPoint);
	TodoReturn objectIntersectsCircle(GameObject*, GameObject*);
	TodoReturn onQuit();
	TodoReturn pauseGame(bool);
	TodoReturn pickupItem(GameObject*);
	TodoReturn playEndAnimationToPos(cocos2d::CCPoint);
	TodoReturn playerWillSwitchMode(PlayerObject*, GameObject*);
	TodoReturn playExitDualEffect(PlayerObject*);
	TodoReturn playFlashEffect(float, int, float);
	TodoReturn playGravityEffect(bool);
	TodoReturn playSpeedParticle(float);
	TodoReturn processItems();
	TodoReturn pushButton(int, bool);
	TodoReturn recordAction(bool, PlayerObject*);
	TodoReturn registerActiveObject(GameObject*);
	TodoReturn registerStateObject(GameObject*);
	TodoReturn releaseButton(int, bool);
	TodoReturn removeAllObjects();
	TodoReturn removeLastCheckpoint();
	TodoReturn removeObjectFromSection(GameObject*);
	TodoReturn removePlayer2();
	TodoReturn reorderObjectSection(GameObject*);
	TodoReturn resetLevel();
	TodoReturn resume();
	TodoReturn resumeAndRestart();
	TodoReturn saveRecordAction(bool, PlayerObject*);
	TodoReturn scene(GJGameLevel*);
	TodoReturn sectionForPos(cocos2d::CCPoint);
	void setActiveEnterEffect(EnterEffect);
	void setStartPosObject(StartPosObject*);
	TodoReturn setupLevelStart(LevelSettingsObject*);
	TodoReturn setupReplay(gd::string);
	TodoReturn shakeCamera(float);
	TodoReturn showCompleteEffect();
	TodoReturn showCompleteText();
	TodoReturn showEndLayer();
	TodoReturn showHint();
	TodoReturn showNewBest();
	TodoReturn showRetryLayer();
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
	TodoReturn timeForXPos(float, bool);
	TodoReturn toggleDualMode(GameObject*, bool, PlayerObject*, bool);
	TodoReturn toggleFlipped(bool, bool);
	TodoReturn toggleGhostEffect(int);
	TodoReturn toggleGlitter(bool);
	TodoReturn togglePracticeMode(bool);
	TodoReturn toggleProgressbar();
	TodoReturn transformColor(cocos2d::ccColor3B, float, float, float);
	TodoReturn tryStartRecord();
	TodoReturn unclaimParticle(char const*, cocos2d::CCParticleSystemQuad*);
	TodoReturn unregisterActiveObject(GameObject*);
	TodoReturn unregisterStateObject(GameObject*);
	TodoReturn updateAttempts();
	TodoReturn updateCamera(float);
	TodoReturn updateColor(cocos2d::ccColor3B, float, int);
	TodoReturn updateCustomColorBlend(int, bool);
	TodoReturn updateDualGround(PlayerObject*, int, bool);
	TodoReturn updateEffectPositions();
	TodoReturn updateLevelColors();
	TodoReturn updateProgressbar();
	TodoReturn updateReplay(float);
	TodoReturn updateTimeMod(float);
	TodoReturn updateVisibility();
	TodoReturn visitWithColorFlash();

	virtual void update(float);
	virtual void onEnterTransitionDidFinish();
	virtual void onExit();
	virtual void draw();
	virtual void visit();
	virtual void updateTweenAction(float, char const*);
	virtual TodoReturn circleWaveWillBeRemoved(CCCircleWave*);
	virtual TodoReturn flipGravity(PlayerObject*, bool, bool);
	virtual void setPlaybackMode(bool);
	virtual void setIsResetting(bool);
	virtual void setCleanReset(bool);
	virtual void setStartPos(cocos2d::CCPoint);
	virtual void setShowingEndLayer(bool);
	virtual void setEndTriggered(bool);
	virtual void setResetQueued(bool);
	virtual void setLastRunPercent(int);
	virtual void setActiveBGColorAction(ColorAction*);
	virtual void setActiveGColorAction(ColorAction*);
	virtual void setActiveLineColorAction(ColorAction*);
	virtual void setActiveObjColorAction(ColorAction*);
	virtual void setActive3DLineColorAction(ColorAction*);
	virtual void setActiveColor01Action(ColorAction*);
	virtual void setActiveColor02Action(ColorAction*);
	virtual void setActiveColor03Action(ColorAction*);
	virtual void setActiveColor04Action(ColorAction*);
	virtual void setShouldRestartAfterStopped(bool);
}

[[link(android)]]
class PointNode {
	// virtual ~PointNode();

	static PointNode* create(cocos2d::CCPoint);

	TodoReturn getPoint();
	bool init(cocos2d::CCPoint);

	virtual void setPoint(cocos2d::CCPoint);
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
class RateLevelLayer {
	// virtual ~RateLevelLayer();
	// RateLevelLayer();

	static RateLevelLayer* create(int);

	TodoReturn getDelegate();
	bool init(int);
	void onClose(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender);
	TodoReturn selectRating(cocos2d::CCObject*);

	virtual void keyBackClicked();
	virtual void setDelegate(RateLevelDelegate*);
}

[[link(android)]]
class RateStarsLayer {
	// virtual ~RateStarsLayer();
	// RateStarsLayer();

	static RateStarsLayer* create(int);

	TodoReturn getDelegate();
	TodoReturn getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);
	bool init(int);
	void onClose(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender);
	TodoReturn selectRating(cocos2d::CCObject*);

	virtual void keyBackClicked();
	virtual void setDelegate(RateLevelDelegate*);
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
	virtual TodoReturn customSetup();
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
	virtual TodoReturn resetObject();
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
class SearchButton {
	// virtual ~SearchButton();

	static SearchButton* create(char const*, char const*, float, char const*);

	TodoReturn getLabel();
	TodoReturn getSprite();
	bool init(char const*, char const*, float, char const*);
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
class SettingsColorObject {
	// virtual ~SettingsColorObject();

	static SettingsColorObject* create();

	TodoReturn getBlend();
	TodoReturn getColor();
	TodoReturn getCustom();
	TodoReturn getSaveString();
	TodoReturn setupFromDict(cocos2d::CCDictionary*);
	TodoReturn setupFromString(gd::string);
	TodoReturn updateCustomColor(cocos2d::ccColor3B, cocos2d::ccColor3B);

	virtual bool init();
	virtual void setColor(cocos2d::ccColor3B);
	virtual void setBlend(bool);
	virtual void setCustom(int);
}

[[link(android)]]
class ShareCommentLayer {
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
}

[[link(android)]]
class ShareLevelLayer {
	// virtual ~ShareLevelLayer();

	static ShareLevelLayer* create(GJGameLevel*);

	bool init(GJGameLevel*);
	void onClose(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
}

[[link(android)]]
class ShareLevelSettingsLayer {
	// virtual ~ShareLevelSettingsLayer();

	static ShareLevelSettingsLayer* create(GJGameLevel*);

	bool init(GJGameLevel*);
	void onClose(cocos2d::CCObject* sender);
	void onCopyable(cocos2d::CCObject* sender);
	void onEditPassword(cocos2d::CCObject* sender);
	void onPassword(cocos2d::CCObject* sender);
	TodoReturn updateSettingsState();

	virtual void keyBackClicked();
	virtual TodoReturn numberInputClosed(NumberInputLayer*);
}

[[link(android)]]
class SimplePlayer {
	// virtual ~SimplePlayer();

	static SimplePlayer* create(int);

	TodoReturn getSpecial();
	bool init(int);
	void setFrames(char const*, char const*, char const*, char const*);
	void setSecondColor(cocos2d::ccColor3B const&);
	TodoReturn updateColors();
	TodoReturn updatePlayerFrame(int, IconType);

	virtual void setOpacity(unsigned char);
	virtual void setColor(cocos2d::ccColor3B const&);
	virtual void setSpecial(int);
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
	virtual void setDelegate(SlideInLayerDelegate*);
	virtual void setRemoveOnExit(bool);
}

class SlideInLayerDelegate {
}

[[link(android)]]
class Slider : cocos2d::CCLayer {
	// virtual ~Slider();

	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float);
	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, float);
	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler);

	TodoReturn getLiveDragging();
	TodoReturn getThumb();
	TodoReturn getValue();
	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float);
	void setBarVisibility(bool);
	void setLiveDragging(bool);
	void setValue(float);
	void updateBar();

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

	float getValue();
	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*);
	void setValue(float);
}

[[link(android)]]
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
class SongInfoObject {
	// virtual ~SongInfoObject();

	static SongInfoObject* create(cocos2d::CCDictionary*);
	static SongInfoObject* create(int, gd::string, gd::string, int, float, gd::string, gd::string, gd::string, int);
	static SongInfoObject* create(int);

	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn getArtistID();
	TodoReturn getArtistName();
	TodoReturn getArtistYT();
	TodoReturn getFileSize();
	TodoReturn getIsBlocked();
	TodoReturn getIsUnloaded();
	TodoReturn getIsVerified();
	TodoReturn getLevelSettings();
	TodoReturn getSongID();
	TodoReturn getSongName();
	TodoReturn getSongPriority();
	TodoReturn getSongURL();
	TodoReturn getSongYT();
	bool init(int, gd::string, gd::string, int, float, gd::string, gd::string, gd::string, int);

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();
	virtual void setSongID(int);
	virtual void setSongName(gd::string);
	virtual void setArtistName(gd::string);
	virtual void setSongYT(gd::string);
	virtual void setArtistYT(gd::string);
	virtual void setSongURL(gd::string);
	virtual void setArtistID(int);
	virtual void setFileSize(float);
	virtual void setIsUnloaded(bool);
	virtual void setIsVerified(bool);
	virtual void setIsBlocked(bool);
	virtual void setSongPriority(int);
	virtual void setLevelSettings(LevelSettingsObject*);
}

[[link(android)]]
class SongObject {
	// virtual ~SongObject();

	static SongObject* create(int);

	TodoReturn getAudioTrack();
	bool init(int);
}

[[link(android)]]
class SongOptionsLayer {
	// virtual ~SongOptionsLayer();
	// SongOptionsLayer();

	static SongOptionsLayer* create(LevelSettingsObject*);

	bool init(LevelSettingsObject*);
	void onClose(cocos2d::CCObject* sender);
	void onFadeIn(cocos2d::CCObject* sender);
	void onFadeOut(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onPlayback(cocos2d::CCObject* sender);
	TodoReturn updatePlaybackBtn();

	virtual void keyBackClicked();
}

[[link(android)]]
class SongsLayer {
	// virtual ~SongsLayer();

	static SongsLayer* create();

	virtual TodoReturn customSetup();
}

[[link(android)]]
class SpeedObject {
	// virtual ~SpeedObject();

	static SpeedObject* create(int, float);

	TodoReturn getSpeedMod();
	TodoReturn getXPos();
	bool init(int, float);
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
class StartPosObject {
	// virtual ~StartPosObject();

	static StartPosObject* create();

	TodoReturn getSettings();
	void setSettings(LevelSettingsObject*);

	virtual bool init();
	virtual TodoReturn getSaveString();
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

	virtual TodoReturn customSetup();
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
class SupportLayer {
	// virtual ~SupportLayer();

	static SupportLayer* create();

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn exitLayer();
	void onCocos2d(cocos2d::CCObject* sender);
	void onEmail(cocos2d::CCObject* sender);
	void onFAQ(cocos2d::CCObject* sender);
	void onLowDetail(cocos2d::CCObject* sender);
	void onRestore(cocos2d::CCObject* sender);
	void onRobTop(cocos2d::CCObject* sender);
	TodoReturn sendSupportMail();

	virtual TodoReturn customSetup();
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
	TodoReturn getBeginLocation();
	TodoReturn getBeginTouch();
	TodoReturn getCellRemovedArray();
	TodoReturn getCellVisibleArray();
	TodoReturn getCheckLocation();
	TodoReturn getClipsToBounds();
	TodoReturn getDataSource();
	TodoReturn getDelegate();
	TodoReturn getEditable();
	TodoReturn getindexPathAddedArray();
	TodoReturn getIsScheduled();
	TodoReturn getIsTouch();
	TodoReturn getLastCellPos();
	TodoReturn getScrollingToIndexPath();
	TodoReturn getStealTouches();
	TodoReturn getTouchCell();
	TodoReturn getTouchDispatch();
	TodoReturn initTableViewCells();
	bool isDuplicateIndexPath(CCIndexPath&);
	bool isDuplicateInVisibleCellArray(CCIndexPath*);
	void reloadData();
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
	virtual void setIsTouch(bool);
	virtual void setClipsToBounds(bool);
	virtual void setTouchDispatch(bool);
	virtual void setIsScheduled(bool);
	virtual void setBeginTouch(cocos2d::CCTouch*);
	virtual void setBeginLocation(cocos2d::CCPoint);
	virtual void setLastCellPos(cocos2d::CCPoint);
	virtual void setCheckLocation(cocos2d::CCPoint);
	virtual void setTouchCell(TableViewCell*);
	virtual void setEditable(bool);
	virtual void scrollWheel(float, float);
	virtual void setCellVisibleArray(cocos2d::CCArray*);
	virtual void setCellRemovedArray(cocos2d::CCArray*);
	virtual TodoReturn setindexPathAddedArray(cocos2d::CCArray*);
	virtual void setDelegate(TableViewDelegate*);
	virtual void setDataSource(TableViewDataSource*);
	virtual void setScrollingToIndexPath(CCIndexPath*);
	virtual TodoReturn scrllViewWillBeginDecelerating(CCScrollLayerExt*);
	virtual TodoReturn scrollViewDidEndDecelerating(CCScrollLayerExt*);
	virtual TodoReturn scrollViewTouchMoving(CCScrollLayerExt*);
	virtual TodoReturn scrollViewDidEndMoving(CCScrollLayerExt*);
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
	TableViewCell(char const*, float, float);

	TodoReturn deleteButtonSelector(cocos2d::CCObject*);
	bool isDeleteButtonShow();
	TodoReturn resetDeleteButtonPosition();
	TodoReturn showDeleteButton(bool);
	TodoReturn updateVisibility();

	virtual bool getEditable() const;
	virtual void setEditable(bool);
	virtual cocos2d::ccColor3B getDelBtnColor() const;
	virtual void setDelBtnColor(cocos2d::ccColor3B);
	virtual cocos2d::CCMenuItem* getDeleteButton() const;
	virtual void setDeleteButton(cocos2d::CCMenuItem*);
	virtual gd::string getCellIdentifier() const;
	virtual void setCellIdentifier(gd::string const&);

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
class TextArea {
	// virtual ~TextArea();
	// TextArea();

	static TextArea* create(char const*, char const*, float, float, cocos2d::CCPoint, float);
	static TextArea* create(char const*, float, int, cocos2d::CCPoint, char const*, float);

	TodoReturn colorAllCharactersTo(cocos2d::ccColor3B);
	TodoReturn fadeIn(float, bool);
	TodoReturn fadeOut(float);
	TodoReturn fadeOutAndRemove();
	TodoReturn finishFade();
	TodoReturn getAlign();
	TodoReturn getFadeInFinished();
	TodoReturn getFontScale();
	TodoReturn getLineSpace();
	TodoReturn getOnTimer();
	TodoReturn getSizeWidth();
	TodoReturn getTextHeight();
	TodoReturn getTextPosition();
	TodoReturn getTextWidth();
	TodoReturn hideAll();
	bool init(char const*, char const*, float, float, cocos2d::CCPoint, float);
	void setString(char const*);
	TodoReturn showAll();
	TodoReturn stopAllCharacterActions();

	virtual void draw();
	virtual void setOpacity(unsigned char);
	virtual void setLineSpace(float);
	virtual void setOnTimer(bool);
	virtual void setAlign(cocos2d::CCPoint);
	virtual void setFadeInFinished(bool);
	virtual void setFontScale(float);
}

[[link(android)]]
class TextInputDelegate {
	virtual void textChanged(CCTextInputNode*);
	virtual void textInputOpened(CCTextInputNode*);
	virtual void textInputClosed(CCTextInputNode*);
	virtual void textInputShouldOffset(CCTextInputNode*, float);
	virtual void textInputReturn(CCTextInputNode*);
	virtual bool allowTextInput(CCTextInputNode*);
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
class UILayer {
	// virtual ~UILayer();
	// UILayer();

	static UILayer* create();

	TodoReturn disableMenu();
	TodoReturn enableMenu();
	TodoReturn getClkTimer();
	void onCheck(cocos2d::CCObject* sender);
	void onDeleteCheck(cocos2d::CCObject* sender);
	void onPause(cocos2d::CCObject* sender);
	TodoReturn pCommand(cocos2d::CCNode*);
	TodoReturn toggleCheckpointsMenu(bool);

	virtual bool init();
	virtual void draw();
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
class UploadPopup {
	// virtual ~UploadPopup();

	static UploadPopup* create(GJGameLevel*);

	bool init(GJGameLevel*);
	void onBack(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onReturnToLevel(cocos2d::CCObject* sender);

	virtual void keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn levelUploadFinished(GJGameLevel*);
	virtual TodoReturn levelUploadFailed(GJGameLevel*);
}

[[link(android)]]
class VideoOptionsLayer {
	// virtual ~VideoOptionsLayer();

	static VideoOptionsLayer* create();

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
	TodoReturn toggleResolution();
	TodoReturn updateResolution(int);
	TodoReturn updateTextureQuality(int);

	virtual bool init();
	virtual void keyBackClicked();
}
