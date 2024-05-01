// clang-format off

/*
    These are hand-copied from my personal Ghidra repo and probably unusable.
    I don't think anyone plans on using Geode with 2.011 any time soon, but
    I'll try to make them work with SyncBromaScript once that works properly.

    Cheers!
    
    - acaruso
*/

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
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
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
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
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

    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn keyBackClicked();
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
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
    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn keyBackClicked();
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

    void loadFromDict(cocos2d::CCDictionary*);
    TodoReturn updateBGColor(int);

    virtual bool init();
    virtual TodoReturn draw();
}

[[link(android)]]
class AchievementManager {
    // virtual ~AchievementManager();

    static AchievementManager* sharedState();

    TodoReturn areAchievementsEarned(cocos2d::CCArray*);
    TodoReturn checkAchFromUnlock(char const*);
    TodoReturn dataLoaded(DS_Dictionary*);
    TodoReturn encodeDataTo(DS_Dictionary*);
    void firstSetup();
    TodoReturn getAchievementRewardDict();
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
    TodoReturn willSwitchToScene(cocos2d::CCScene*);

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

    virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
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

[[link(android)]]
class AnimatedGameObject {
    // virtual ~AnimatedGameObject();

    static AnimatedGameObject* create(int);

    bool init(int);
    TodoReturn setupAnimatedSize(int);
    TodoReturn setupChildSprites();
    TodoReturn updateChildSpriteColor(cocos2d::ccColor3B);

    virtual void setOpacity(unsigned char);
    virtual TodoReturn activateObject();
    virtual TodoReturn deactivateObject(bool);
    virtual void setObjectColor(cocos2d::ccColor3B const&);
    virtual TodoReturn animationFinished(char const*);
}

[[link(android)]]
class AnimatedSpriteDelegate {
    virtual TodoReturn animationFinished(char const*);
}

[[link(android)]]
class AppDelegate {
    // virtual ~AppDelegate();

    TodoReturn bgScale();
    TodoReturn checkSound();
    TodoReturn get();
    TodoReturn getEnableFPSTricks();
    TodoReturn getIsIOS();
    TodoReturn getIsLowMemoryDevice();
    TodoReturn getLoadingFinished();
    TodoReturn getManagersLoaded();
    TodoReturn getPaused();
    TodoReturn getScenePointer();
    TodoReturn hideLoadingCircle();
    TodoReturn loadingIsFinished();
    TodoReturn musicTest();
    TodoReturn pauseGame();
    TodoReturn platformShutdown();
    TodoReturn resumeSound();
    void setIdleTimerDisabled(bool);
    TodoReturn setupGLView();
    TodoReturn showLoadingCircle(bool, bool, bool);

    virtual bool applicationDidFinishLaunching();
    virtual void applicationDidEnterBackground();
    virtual void applicationWillEnterForeground();
    virtual TodoReturn applicationWillBecomeActive();
    virtual TodoReturn applicationWillResignActive();
    virtual TodoReturn trySaveGame();
    virtual TodoReturn willSwitchToScene(cocos2d::CCScene*);
    virtual void setPaused(bool);
    virtual void setScenePointer(cocos2d::CCNode*);
    virtual void setManagersLoaded(bool);
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

    virtual TodoReturn draw();
    virtual TodoReturn updateTweenAction(float, char const*);
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
class BoomListView : cocos2d::CCLayer {
    // virtual ~BoomListView();

    static BoomListView* create(cocos2d::CCArray*, float, float, int, BoomListType);

    bool init(cocos2d::CCArray*, float, float, int, BoomListType);

    virtual TodoReturn draw();
    virtual TodoReturn setupList();
    virtual TodoReturn TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
    virtual TodoReturn cellHeightForRowAtIndexPath(CCIndexPath&, TableView*);
    virtual TodoReturn didSelectRowAtIndexPath(CCIndexPath&, TableView*);
    virtual TodoReturn numberOfRowsInSection(unsigned int, TableView*);
    virtual TodoReturn numberOfSectionsInTableView(TableView*);
    virtual TodoReturn cellForRowAtIndexPath(CCIndexPath&, TableView*);
    virtual TodoReturn TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&);
    virtual TodoReturn TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
    virtual TodoReturn getListCell(char const*);
    virtual TodoReturn loadCell(TableViewCell*, int);

    TableView* m_tableView;
    cocos2d::CCArray* m_cells;
    BoomListType m_type;
    float m_height;
    float m_width;
    float _0x134;
    int _0x138;
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
    TodoReturn getOnlyShowOnePage();
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

    virtual TodoReturn visit();
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn registerWithTouchDispatcher();
    virtual void setScrollArea(cocos2d::CCRect);
    virtual void setMinTouchSpeed(float);
    virtual void setTouchSpeedFast(float);
    virtual void setTouchSpeedMid(float);
    virtual void setDelegate(BoomScrollLayerDelegate*);
    virtual void setOnlyShowOnePage(bool);
    virtual void setMinimumTouchLengthToSlide(float);
    virtual void setMinimumTouchLengthToChangePage(float);
    virtual void setMarginOffset(float);
    virtual void setStealTouches(bool);
    virtual void setShowPagesIndicator(bool);
    virtual void setPagesIndicatorSelectedColor(cocos2d::ccColor4B);
    virtual void setPagesIndicatorNormalColor(cocos2d::ccColor4B);
    virtual void setPagesWidthOffset(float);

    cocos2d::CCArray* m_pageIndicators;
    int m_lastScreen;
    float _0x120;
    float _0x124;
    bool m_looped;
    DynamicScrollDelegate* m_dynamicScrollDelegate;
    cocos2d::CCArray* m_objects;
    bool m_dynamicScrolling;
    int _0x138;
    bool _0x13c;
    cocos2d::CCTouch* m_touch;
    cocos2d::CCArray* m_pages;
    double _0x148;
    cocos2d::CCPoint _0x150;
    ExtendedLayer* m_internalLayer;
    cocos2d::CCRect m_scrollArea;
    float m_minTouchSpeed;
    float m_touchSpeedFast;
    float m_touchSpeedMid;
    BoomScrollLayerDelegate* m_delegate;
    bool m_movingToPage;
    bool m_onlyShowOnePage;
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

    static ButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint, int, float);

    bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, float);
}

[[link(android)]]
class ButtonSprite {
    // virtual ~ButtonSprite();
    // ButtonSprite();

    static ButtonSprite* create(char const*, float);
    static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*, float);
    static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*);
    static ButtonSprite* create(char const*, int, int, float, bool);
    static ButtonSprite* create(char const*);
    static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool, char const*, bool);
    static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool);
    static ButtonSprite* create(cocos2d::CCSprite*);

    TodoReturn getBGImage();
    TodoReturn getBGSprite();
    TodoReturn getBtnLabel();
    TodoReturn getBtnSprite();
    bool init(char const*, int, int, float, bool, char const*, char const*, float);
    bool init(cocos2d::CCSprite*, int, int, float, float, bool, char const*, bool);
    void setColor(cocos2d::ccColor3B);
    void setString(char const*);
    TodoReturn updateBGImage(char const*);
    TodoReturn updateSpriteBGSize();
    TodoReturn updateSpriteOffset(cocos2d::CCPoint);
}

[[link(android)]]
class CCAlertCircle : cocos2d::CCNode {
    // virtual ~CCAlertCircle();

    static CCAlertCircle* create();

    CCCircleAlert* getCircle();

    virtual bool init();
    virtual void draw();

    CCAlertCircle* m_circle;
}

[[link(android)]]
class CCAnimatedSprite : cocos2d::CCSprite {
    // virtual ~CCAnimatedSprite();

    TodoReturn cleanupSprite();
    TodoReturn createWithType(char const*);
    TodoReturn getActiveSpriteMode();
    TodoReturn getActiveTween();
    TodoReturn getAnimatedSprite();
    TodoReturn getAnimManager();
    TodoReturn getDefaultAnimation();
    TodoReturn getDelegate();
    TodoReturn getNormalSprite();
    TodoReturn getSprite();
    TodoReturn initWithType(char const*);
    TodoReturn loadType(char const*);
    TodoReturn runAnimation(gd::string);
    TodoReturn runAnimationForced(gd::string);
    void setColor(cocos2d::ccColor3B);
    TodoReturn switchToMode(spriteMode);
    TodoReturn tweenToAnimation(gd::string, float);
    TodoReturn tweenToAnimationFinished();
    TodoReturn willPlayAnimation();

    virtual void setOpacity(unsigned char);
    virtual TodoReturn animationFinished(char const*);
    virtual TodoReturn animationFinishedO(cocos2d::CCObject*);
    virtual void setSprite(cocos2d::CCSprite*);
    virtual void setNormalSprite(cocos2d::CCSprite*);
    virtual void setAnimatedSprite(CCPartAnimSprite*);
    virtual void setDefaultAnimation(gd::string);
    virtual void setDelegate(AnimatedSpriteDelegate*);

    gd::string m_type;
    gd::string m_activeTween;
    SpriteAnimationManager* m_spriteAnimationManager;
    cocos2d::CCSprite* m_sprite;
    cocos2d::CCSprite* m_normalSprite;
    CCPartAnimSprite* m_animatedSprite;
    spriteMode m_activeSpriteMode;
    gd::string m_defaultAnimation;
    AnimatedSpriteDelegate* m_delegate;
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

    cocos2d::CCDictionary* m_animationContainer;
    cocos2d::CCDictionary* _0x1c;
    cocos2d::CCDictionary* m_animDescDict;
}

[[link(android)]]
class CCBlockLayer : cocos2d::CCLayerColor {
    // virtual ~CCBlockLayer();

    static CCBlockLayer* create();

    TodoReturn getRemoveOnExit();

    virtual bool init();
    virtual TodoReturn draw();
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn keyBackClicked();
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

    bool m_removeOnExit;
    bool _0x195; // Game checks this before calling decrementForcePrio
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

    virtual TodoReturn getPosition();
    virtual TodoReturn removeMeAndCleanup();
    virtual TodoReturn draw();
    virtual TodoReturn updateTweenAction(float, char const*);
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
class CCContentLayer {
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
class CCIndexPath {
    // virtual ~CCIndexPath();

    TodoReturn CCIndexPathWithSectionRow(int, int);
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

    virtual TodoReturn draw();
    virtual TodoReturn updateTweenAction(float, char const*);
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

    TodoReturn getClickSound();
    TodoReturn getDarkenClick();
    TodoReturn getOriginalScale();
    TodoReturn getScaleVar();
    TodoReturn getShouldAnimate();
    TodoReturn getVolume();
    bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
    void setSizeMult(float);

    virtual TodoReturn activate();
    virtual TodoReturn selected();
    virtual TodoReturn unselected();
    virtual void setScaleVar(float);
    virtual void setOriginalScale(float);
    virtual void setShouldAnimate(bool);
    virtual void setDarkenClick(bool);
    virtual void setVolume(float);
    virtual void setClickSound(gd::string);

    float m_scaleVar;
    float m_originalScale;
    bool m_shouldAnimate;
    bool m_darkenClick;
    float m_volume;
    gd::string m_clickSound;
}

[[link(android)]]
class CCMenuItemToggler {
    // virtual ~CCMenuItemToggler();

    static CCMenuItemToggler* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

    TodoReturn activeItem();
    TodoReturn getDontToggle();
    TodoReturn getIsActive();
    TodoReturn getNormalButton();
    TodoReturn getSelectedButton();
    bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
    TodoReturn normalTouch(cocos2d::CCObject*);
    TodoReturn selectedTouch(cocos2d::CCObject*);
    void setSizeMult(float);
    TodoReturn toggle(bool);

    virtual TodoReturn activate();
    virtual TodoReturn selected();
    virtual TodoReturn unselected();
    virtual void setEnabled(bool);
    virtual void setDontToggle(bool);
}

[[link(android)]]
class CCMoveCNode {
    // virtual ~CCMoveCNode();

    static CCMoveCNode* create();

    virtual bool init();
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
    TodoReturn tweenSpriteTo(frameValues, float);
    TodoReturn tweenToFrame(cocos2d::CCSpriteFrame*, float);

    virtual void setScaleX(float);
    virtual void setScaleY(float);
    virtual void setScale(float);
    virtual void setOpacity(unsigned char);
    virtual void setBlendFunc(cocos2d::_ccBlendFunc);
    virtual void setDisplayFrame(cocos2d::CCSpriteFrame*);
    virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*);
    virtual TodoReturn displayFrame();
}

[[link(android)]]
class CCScrollLayerExt {
    // virtual ~CCScrollLayerExt();
    CCScrollLayerExt(cocos2d::CCRect);

    TodoReturn constraintContent();
    TodoReturn getBottomPadding();
    TodoReturn getClipsToBounds();
    TodoReturn getContentLayer();
    TodoReturn getHorizontalScrollIndicator();
    TodoReturn getIsScrolling();
    TodoReturn getIsTouch();
    TodoReturn getLockHorizontal();
    TodoReturn getLockVertical();
    TodoReturn getMaxOffsetBottom();
    TodoReturn getMaxOffsetTop();
    TodoReturn getMaxY();
    TodoReturn getMinY();
    TodoReturn getScrollDelegate();
    TodoReturn getShowsHorizontalScrollIndicator();
    TodoReturn getShowsVerticalScrollIndicator();
    TodoReturn getTopPadding();
    TodoReturn getTouchDispatch();
    TodoReturn getVerticalScrollIndicator();
    TodoReturn moveToTop();
    TodoReturn moveToTopWithOffset(float);
    TodoReturn scrollingEnd();
    TodoReturn scrollLayer(float);
    void setContentLayerSize(cocos2d::CCSize);
    void setContentOffset(cocos2d::CCPoint, bool);
    TodoReturn updateIndicators(float);

    virtual TodoReturn visit();
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn preVisitWithClippingRect(cocos2d::CCRect);
    virtual TodoReturn postVisit();
    virtual void setIsTouch(bool);
    virtual void setIsScrolling(bool);
    virtual void setVerticalScrollIndicator(cocos2d::CCLayerColor*);
    virtual void setHorizontalScrollIndicator(cocos2d::CCLayerColor*);
    virtual void setScrollDelegate(CCScrollLayerExtDelegate*);
    virtual void setContentLayer(cocos2d::CCLayerColor*);
    virtual void setClipsToBounds(bool);
    virtual void setShowsHorizontalScrollIndicator(bool);
    virtual void setShowsVerticalScrollIndicator(bool);
    virtual void setLockHorizontal(bool);
    virtual void setLockVertical(bool);
    virtual void setTouchDispatch(bool);
    virtual void setTopPadding(float);
    virtual void setBottomPadding(float);
    virtual void setMaxOffsetTop(float);
    virtual void setMaxOffsetBottom(float);
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
    TodoReturn getActiveFrame();
    TodoReturn getBeingUsed();
    TodoReturn hideInactive();
    TodoReturn resetTextureRect();
    void setBeingUsed(bool);
    TodoReturn updateDisplayFrame(char const*);

    virtual void setActiveFrame(gd::string);
}

[[link(android)]]
class CCSpritePlus : cocos2d::CCSprite {
    // virtual ~CCSpritePlus();

    TodoReturn addFollower(cocos2d::CCNode*);
    TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
    TodoReturn createWithSpriteFrameName(char const*);
    TodoReturn followSprite(CCSpritePlus*);
    TodoReturn getFollowScale();
    TodoReturn removeFollower(cocos2d::CCNode*);
    TodoReturn stopFollow();

    virtual void setScaleX(float);
    virtual void setScaleY(float);
    virtual void setScale(float);
    virtual void setPosition(cocos2d::CCPoint const&);
    virtual void setRotation(float);
    virtual TodoReturn initWithTexture(cocos2d::CCTexture2D*);
    virtual TodoReturn initWithSpriteFrameName(char const*);
    virtual void setFlipX(bool);
    virtual void setFlipY(bool);
    virtual void setFollowScale(bool);

    cocos2d::CCArray* m_followers;
    CCSpritePlus* m_target;
    bool m_hasFollowers;
    bool m_followScale;
}

[[link(android)]]
class CCTextInputNode {
    // virtual ~CCTextInputNode();
    // CCTextInputNode();

    static CCTextInputNode* create(float, float, char const*, char const*, int, char const*);

    TodoReturn forceOffset();
    TodoReturn getCharLimit();
    TodoReturn getClearAtZero();
    TodoReturn getDelegate();
    TodoReturn getForceOffset();
    TodoReturn getIsPassword();
    TodoReturn getLabel();
    TodoReturn getProfanityFilter();
    TodoReturn getString();
    TodoReturn getTextField();
    bool init(float, float, char const*, char const*, int, char const*);
    TodoReturn refreshLabel();
    void setAllowedChars(gd::string);
    void setLabelNormalColor(cocos2d::ccColor3B);
    void setLabelPlaceholderColor(cocos2d::ccColor3B);
    void setLabelPlaceholderScale(float);
    void setMaxLabelScale(float);
    void setMaxLabelWidth(float);
    void setString(gd::string);
    TodoReturn updateBlinkLabel();
    TodoReturn updateLabel(gd::string);

    virtual TodoReturn visit();
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn textChanged();
    virtual TodoReturn onClickTrackNode(bool);
    virtual TodoReturn keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
    virtual TodoReturn keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
    virtual TodoReturn onTextFieldInsertText(cocos2d::CCTextFieldTTF*, char const*, int);
    virtual TodoReturn onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF*);
    virtual TodoReturn onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF*);
    virtual void setClearAtZero(bool);
    virtual void setDelegate(TextInputDelegate*);
    virtual void setCharLimit(int);
    virtual void setProfanityFilter(bool);
    virtual void setIsPassword(bool);
    virtual void setForceOffset(bool);
}

[[link(android)]]
class CheckpointObject {
    // virtual ~CheckpointObject();
    // CheckpointObject();

    static CheckpointObject* create();

    TodoReturn getActiveEnterEffect();
    TodoReturn getCameraPos();
    TodoReturn getColorAction(ColorAction*, cocos2d::ccColor3B);
    TodoReturn getColorManagerState();
    TodoReturn getDualMode();
    TodoReturn getIsFlipped();
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
    virtual void setActiveEnterEffect(EnterEffect);
    virtual void setPortalObject(GameObject*);
    virtual void setTimeStamp(double);
    virtual void setColorManagerState(gd::string);
}

[[link(android)]]
class ColorAction {
    // virtual ~ColorAction();
    // ColorAction();

    static ColorAction* create();
    static ColorAction* create(cocos2d::ccColor3B, bool, int);
    static ColorAction* create(cocos2d::ccColor3B, cocos2d::ccColor3B, float, double, bool, int, float, float);
    static ColorAction* create(cocos2d::ccColor3B, cocos2d::ccColor3B, float, double, bool);

    TodoReturn getBlend();
    TodoReturn getCopy();
    TodoReturn getCopyOpacity();
    TodoReturn getCurrentColor();
    TodoReturn getCurrentOpacity();
    TodoReturn getCustom();
    TodoReturn getDeltaTime();
    TodoReturn getDidProcess();
    TodoReturn getDuration();
    TodoReturn getFromColor();
    TodoReturn getFromOpacity();
    TodoReturn getHSVValue();
    TodoReturn getIgnore();
    TodoReturn getIgnoreCopyColor();
    TodoReturn getIndex();
    TodoReturn getInheritColorIndex();
    TodoReturn getSaveString();
    TodoReturn getToColor();
    TodoReturn getToOpacity();
    bool init(cocos2d::ccColor3B, cocos2d::ccColor3B, float, double, bool, int, float, float);
    TodoReturn resetAction();
    TodoReturn setupFromDict(cocos2d::CCDictionary*);
    TodoReturn setupFromString(gd::string);
    TodoReturn step(float);
    TodoReturn updateCustomColor(cocos2d::ccColor3B, cocos2d::ccColor3B);

    virtual void setCurrentColor(cocos2d::ccColor3B);
    virtual void setCurrentOpacity(float);
    virtual void setDeltaTime(float);
    virtual void setFromColor(cocos2d::ccColor3B);
    virtual void setToColor(cocos2d::ccColor3B);
    virtual void setDuration(float);
    virtual void setBlend(bool);
    virtual void setCustom(int);
    virtual void setIndex(int);
    virtual void setFromOpacity(float);
    virtual void setToOpacity(float);
    virtual void setHSVValue(cocos2d::ccHSVValue);
    virtual void setInheritColorIndex(int);
    virtual void setDidProcess(bool);
    virtual void setCopyOpacity(bool);
    virtual void setIgnore(bool);
    virtual void setIgnoreCopyColor(bool);
}

[[link(android)]]
class ColorActionSprite {
    // virtual ~ColorActionSprite();

    static ColorActionSprite* create();

    TodoReturn getQueuedColorChange();

    virtual bool init();
    virtual TodoReturn getActiveColor();
    virtual void setActiveColor(cocos2d::ccColor3B const&);
    virtual void setQueuedColorChange(cocos2d::ccColor3B);
}

[[link(android)]]
class ColorChannelSprite {
    // virtual ~ColorChannelSprite();

    static ColorChannelSprite* create();

    TodoReturn updateBlending(bool);
    TodoReturn updateCopyLabel(int, bool);
    TodoReturn updateOpacity(float);
    TodoReturn updateValues(ColorAction*);

    virtual bool init();
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

    static ColorSelectPopup* create(ColorAction*);
    static ColorSelectPopup* create(EffectGameObject*, cocos2d::CCArray*, ColorAction*);
    static ColorSelectPopup* create(EffectGameObject*, cocos2d::CCArray*);

    TodoReturn closeColorSelect(cocos2d::CCObject*);
    TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
    TodoReturn determineStartValues();
    TodoReturn getAction();
    TodoReturn getColorValue();
    TodoReturn getCustom();
    TodoReturn getCustom2();
    TodoReturn getDelegate();
    TodoReturn getDuration();
    TodoReturn getTargetOpacity();
    bool init(EffectGameObject*, cocos2d::CCArray*, ColorAction*);
    void onCopy(cocos2d::CCObject* sender);
    void onCopyOpacity(cocos2d::CCObject* sender);
    void onPaste(cocos2d::CCObject* sender);
    void onPlayerColor1(cocos2d::CCObject* sender);
    void onPlayerColor2(cocos2d::CCObject* sender);
    void onSelectSpecialColor(cocos2d::CCObject* sender);
    void onSpawnedByTrigger(cocos2d::CCObject* sender);
    void onTintGround(cocos2d::CCObject* sender);
    void onToggleHSVMode(cocos2d::CCObject* sender);
    void onToggleTintMode(cocos2d::CCObject* sender);
    void onTouchTriggered(cocos2d::CCObject* sender);
    void onUpdateCopyColor(cocos2d::CCObject* sender);
    void onUpdateCustomColor(cocos2d::CCObject* sender);
    TodoReturn selectColor(cocos2d::ccColor3B);
    TodoReturn sliderChanged(cocos2d::CCObject*);
    TodoReturn updateColorValue();
    TodoReturn updateCopyColor();
    TodoReturn updateCopyColorTextInputLabel();
    TodoReturn updateCustomColorIdx();
    TodoReturn updateDuration();
    TodoReturn updateDurLabel();
    TodoReturn updateEditorLabel();
    TodoReturn updateHSVMode();
    TodoReturn updateHSVValue();
    TodoReturn updateOpacity();
    TodoReturn updateOpacityLabel();
    TodoReturn updateSpawnedByTrigger();
    TodoReturn updateTextInputLabel();
    TodoReturn updateTouchTriggered();

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn show();
    virtual TodoReturn colorValueChanged(cocos2d::ccColor3B);
    virtual TodoReturn textInputClosed(CCTextInputNode*);
    virtual TodoReturn textChanged(CCTextInputNode*);
    virtual TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
    virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
    virtual TodoReturn textInputReturn(CCTextInputNode*);
    virtual void setDelegate(ColorSelectDelegate*);
}

[[link(android)]]
class ColorSetupDelegate {
    virtual TodoReturn colorSetupClosed(int);
}

[[link(android)]]
class CommentCell {
    // virtual ~CommentCell();
    CommentCell(char const*, float, float);

    TodoReturn incrementDislikes();
    TodoReturn incrementLikes();
    void loadFromComment(GJComment*);
    void onConfirmDelete(cocos2d::CCObject* sender);
    TodoReturn onDelete();
    void onLike(cocos2d::CCObject* sender);
    TodoReturn onUndelete();
    void onUnhide(cocos2d::CCObject* sender);
    void onViewProfile(cocos2d::CCObject* sender);
    TodoReturn updateBGColor(int);
    TodoReturn updateLabelValues();

    virtual bool init();
    virtual TodoReturn draw();
    virtual TodoReturn likedItem(LikeItemType, int, bool);
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class CommentUploadDelegate {
    virtual TodoReturn commentUploadFinished(int);
    virtual TodoReturn commentUploadFailed(int);
    virtual TodoReturn commentDeleteFailed(int, int);
}

[[link(android)]]
class ConfigureHSVWidget {
    // virtual ~ConfigureHSVWidget();

    static ConfigureHSVWidget* create(cocos2d::ccHSVValue, bool);

    TodoReturn getHSVVal();
    TodoReturn getIsMixed();
    bool init(cocos2d::ccHSVValue, bool);
    void onResetHSV(cocos2d::CCObject* sender);
    void onToggleSConst(cocos2d::CCObject* sender);
    void onToggleVConst(cocos2d::CCObject* sender);
    TodoReturn sliderChanged(cocos2d::CCObject*);
    TodoReturn updateLabels();
}

[[link(android)]]
class CreateGuidelinesLayer {
    // virtual ~CreateGuidelinesLayer();

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

    virtual TodoReturn update(float);
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn keyBackClicked();
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
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
    virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class CustomizeObjectLayer {
    // virtual ~CustomizeObjectLayer();
    // CustomizeObjectLayer();

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
    void onNextColorChannel(cocos2d::CCObject* sender);
    void onPaste(cocos2d::CCObject* sender);
    void onSelectColor(cocos2d::CCObject* sender);
    void onSelectMode(cocos2d::CCObject* sender);
    void onUpdateCustomColor(cocos2d::CCObject* sender);
    void toggleVisible();
    TodoReturn updateChannelLabel(int);
    TodoReturn updateColorSprite();
    TodoReturn updateCurrentSelection();
    TodoReturn updateCustomColorLabels();
    TodoReturn updateHSVButtons();
    TodoReturn updateSelected(int);

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn textInputOpened(CCTextInputNode*);
    virtual TodoReturn textInputClosed(CCTextInputNode*);
    virtual TodoReturn textChanged(CCTextInputNode*);
    virtual TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue);
    virtual TodoReturn colorSelectClosed(ColorSelectPopup*);
    virtual TodoReturn colorSetupClosed(int);
}

[[link(android)]]
class CustomListView {
    // virtual ~CustomListView();
    // CustomListView();

    static CustomListView* create(cocos2d::CCArray*, float, float, int, BoomListType);

    TodoReturn reloadAll();

    virtual TodoReturn setupList();
    virtual TodoReturn getListCell(char const*);
    virtual TodoReturn loadCell(TableViewCell*, int);
}

[[link(android)]]
class CustomSongCell {
    // virtual ~CustomSongCell();
    CustomSongCell(char const*, float, float);

    void loadFromObject(SongInfoObject*);
    void onDelete(cocos2d::CCObject* sender);
    TodoReturn updateBGColor(int);

    virtual bool init();
    virtual TodoReturn draw();
}

[[link(android)]]
class CustomSongLayer {
    // virtual ~CustomSongLayer();

    static CustomSongLayer* create(LevelSettingsObject*);

    TodoReturn getDelegate();
    bool init(LevelSettingsObject*);
    void onClose(cocos2d::CCObject* sender);
    void onCreateLines(cocos2d::CCObject* sender);
    void onGuidelines(cocos2d::CCObject* sender);
    void onInfo(cocos2d::CCObject* sender);
    void onNewgrounds(cocos2d::CCObject* sender);
    void onOptions(cocos2d::CCObject* sender);
    void onSearch(cocos2d::CCObject* sender);
    void onSongBrowser(cocos2d::CCObject* sender);
    TodoReturn showNewgroundsMessage();

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn show();
    virtual TodoReturn textChanged(CCTextInputNode*);
    virtual TodoReturn textInputOpened(CCTextInputNode*);
    virtual TodoReturn textInputClosed(CCTextInputNode*);
    virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
    virtual TodoReturn textInputReturn(CCTextInputNode*);
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
    void updateSongInfo();
    TodoReturn updateSongObject(SongInfoObject*);
    TodoReturn verifySongID(int);

    virtual TodoReturn loadSongInfoFinished(SongInfoObject*);
    virtual TodoReturn loadSongInfoFailed(int, GJSongError);
    virtual TodoReturn downloadSongFinished(SongInfoObject*);
    virtual TodoReturn downloadSongFailed(int, GJSongError);
    virtual TodoReturn songStateChanged();
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
    virtual void setSongObject(SongInfoObject*);
    virtual void setReportSongSelect(bool);
}

[[link(android)]]
class DownloadMessageDelegate {
    virtual TodoReturn downloadMessageFinished(GJUserMessage*);
    virtual TodoReturn downloadMessageFailed(int);
}

[[link(android)]]
class DrawGridLayer {
    // virtual ~DrawGridLayer();
    // DrawGridLayer();

    static DrawGridLayer* create(cocos2d::CCNode*, LevelEditorLayer*);

    TodoReturn addPlayer2Point(cocos2d::CCPoint, bool);
    TodoReturn addPlayerPoint(cocos2d::CCPoint);
    TodoReturn addToEffects(EffectGameObject*);
    TodoReturn addToGuides(GameObject*);
    TodoReturn addToSpeedObjects(GameObject*);
    TodoReturn clearPlayerPoints();
    TodoReturn getActiveGridNodeSize();
    TodoReturn getEffectSortDirty();
    TodoReturn getLastMusicX();
    TodoReturn getPortalMinMax(GameObject*);
    TodoReturn getTimeNeedsUpdate();
    bool init(cocos2d::CCNode*, LevelEditorLayer*);
    TodoReturn loadTimeMarkers(gd::string);
    TodoReturn removeFromEffects(EffectGameObject*);
    TodoReturn removeFromGuides(GameObject*);
    TodoReturn removeFromSpeedObjects(GameObject*);
    TodoReturn sortSpeedObjects();
    TodoReturn timeForXPos(float);
    TodoReturn updateTimeMarkers();
    TodoReturn xPosForTime(float);

    virtual TodoReturn update(float);
    virtual TodoReturn draw();
    virtual void setEffectSortDirty(bool);
    virtual void setActiveGridNodeSize(float);
}

[[link(android)]]
class DynamicScrollDelegate {
    virtual TodoReturn pure_virtual_005f04f0() {} // TODO: figure out what function this is
}

[[link(android)]]
class EditButtonBar {
    // virtual ~EditButtonBar();

    static EditButtonBar* create(cocos2d::CCArray*, cocos2d::CCPoint, int, bool, int, int);

    TodoReturn getPage();
    TodoReturn goToPage(int);
    bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, bool, int, int);
    void loadFromItems(cocos2d::CCArray*, int, int, bool);
    void onLeft(cocos2d::CCObject* sender);
    void onRight(cocos2d::CCObject* sender);
    TodoReturn reloadItems(int, int);
}

[[link(android)]]
class EditLevelLayer {
    // virtual ~EditLevelLayer();
    // EditLevelLayer();

    static EditLevelLayer* create(GJGameLevel*);

    TodoReturn closeTextInputs();
    TodoReturn confirmClone(cocos2d::CCObject*);
    TodoReturn confirmDelete(cocos2d::CCObject*);
    TodoReturn confirmMoveToTop(cocos2d::CCObject*);
    bool init(GJGameLevel*);
    void onBack(cocos2d::CCObject* sender);
    TodoReturn onClone();
    TodoReturn onDelete();
    void onEdit(cocos2d::CCObject* sender);
    void onHelp(cocos2d::CCObject* sender);
    void onLevelInfo(cocos2d::CCObject* sender);
    TodoReturn onMoveToTop();
    void onPlay(cocos2d::CCObject* sender);
    void onShare(cocos2d::CCObject* sender);
    void onTest(cocos2d::CCObject* sender);
    void onUpdateDescription(cocos2d::CCObject* sender);
    TodoReturn playStep2();
    TodoReturn playStep3();
    TodoReturn scene(GJGameLevel*);
    void setupLevelInfo();
    TodoReturn updateDescText(char const*);
    TodoReturn verifyLevelName();

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
    virtual TodoReturn textInputOpened(CCTextInputNode*);
    virtual TodoReturn textInputClosed(CCTextInputNode*);
    virtual TodoReturn textChanged(CCTextInputNode*);
    virtual TodoReturn uploadActionFinished(int, int);
    virtual TodoReturn uploadActionFailed(int, int);
    virtual TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class EditorOptionsLayer {
    // virtual ~EditorOptionsLayer();
    // EditorOptionsLayer();

    static EditorOptionsLayer* create();

    void onButtonRows(cocos2d::CCObject* sender);
    void onButtonsPerRow(cocos2d::CCObject* sender);

    virtual bool init();
    virtual TodoReturn setupOptions();
    virtual void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class EditorPauseLayer {
    // virtual ~EditorPauseLayer();
    // EditorPauseLayer();

    static EditorPauseLayer* create(LevelEditorLayer*);

    TodoReturn doResetUnused();
    bool init(LevelEditorLayer*);
    void onExitEditor(cocos2d::CCObject* sender);
    void onExitNoSave(cocos2d::CCObject* sender);
    void onHelp(cocos2d::CCObject* sender);
    void onKeybindings(cocos2d::CCObject* sender);
    void onOptions(cocos2d::CCObject* sender);
    void onResetUnusedColors(cocos2d::CCObject* sender);
    void onResume(cocos2d::CCObject* sender);
    void onSave(cocos2d::CCObject* sender);
    void onSaveAndExit(cocos2d::CCObject* sender);
    void onSaveAndPlay(cocos2d::CCObject* sender);
    void onSaveAndTest(cocos2d::CCObject* sender);
    void onSong(cocos2d::CCObject* sender);
    TodoReturn playStep2();
    TodoReturn playStep3();
    void saveLevel();
    TodoReturn toggleDebugDraw(cocos2d::CCObject*);
    TodoReturn toggleEditorColorMode(cocos2d::CCObject*);
    TodoReturn toggleEditorGrid(cocos2d::CCObject*);
    TodoReturn toggleEditorGround(cocos2d::CCObject*);
    TodoReturn toggleEffectLines(cocos2d::CCObject*);
    TodoReturn toggleFollowPlayer(cocos2d::CCObject*);
    TodoReturn toggleGridOnTop(cocos2d::CCObject*);
    TodoReturn toggleIgnoreDamage(cocos2d::CCObject*);
    TodoReturn togglePlaytestMusic(cocos2d::CCObject*);
    TodoReturn toggleShowObjectInfo(cocos2d::CCObject*);
    TodoReturn uncheckAllPortals(cocos2d::CCObject*);
    TodoReturn updateSongButton();

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
    virtual TodoReturn customSetup();
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class EditorUI {
    // virtual ~EditorUI();
    // EditorUI();

    static EditorUI* create(LevelEditorLayer*);

    TodoReturn activateRotationControl(cocos2d::CCObject*);
    TodoReturn activateScaleControl(cocos2d::CCObject*);
    TodoReturn addSnapPosition(cocos2d::CCPoint);
    TodoReturn applyOffset(GameObject*);
    TodoReturn applySpecialOffset(cocos2d::CCPoint, GameObject*, cocos2d::CCPoint);
    TodoReturn changeSelectedObjects(cocos2d::CCArray*);
    TodoReturn clickOnPosition(cocos2d::CCPoint);
    TodoReturn colorSelectClosed(cocos2d::ccColor3B);
    TodoReturn constrainGameLayerPosition();
    TodoReturn constrainGameLayerPosition(float, float);
    TodoReturn copyObjects(cocos2d::CCArray*);
    TodoReturn createCustomItems();
    TodoReturn createMoveMenu();
    TodoReturn createUndoSelectObject(bool);
    TodoReturn deactivateRotationControl();
    TodoReturn deactivateScaleControl();
    TodoReturn deleteObject(GameObject*, bool);
    TodoReturn deselectAll();
    TodoReturn deselectObject();
    TodoReturn deselectObject(GameObject*);
    TodoReturn deselectTargetPortals();
    TodoReturn disableButton(CreateMenuItem*);
    TodoReturn editButtonUsable();
    TodoReturn editGroup(cocos2d::CCObject*);
    TodoReturn editObject(cocos2d::CCObject*);
    TodoReturn enableButton(CreateMenuItem*);
    TodoReturn findSnapObject(cocos2d::CCArray*, float);
    TodoReturn findSnapObject(cocos2d::CCPoint, float);
    TodoReturn flipObjectsX(cocos2d::CCArray*);
    TodoReturn flipObjectsY(cocos2d::CCArray*);
    TodoReturn getButton(char const*, int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);
    TodoReturn getCreateBtn(int, int);
    TodoReturn getCreateMenuItemButton(cocos2d::CCSprite*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
    TodoReturn getCycledObject(cocos2d::CCArray*, bool);
    TodoReturn getEditMode();
    TodoReturn getGridSnappedPos(cocos2d::CCPoint);
    TodoReturn getGroupCenter(cocos2d::CCArray*, bool);
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
    TodoReturn menuItemFromObjectString(gd::string, int);
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
    void onDeleteCustomItem(cocos2d::CCObject* sender);
    void onDeleteInfo(cocos2d::CCObject* sender);
    void onDeleteSelected(cocos2d::CCObject* sender);
    void onDeleteSelectedType(cocos2d::CCObject* sender);
    void onDeleteStartPos(cocos2d::CCObject* sender);
    void onDeselectAll(cocos2d::CCObject* sender);
    void onDuplicate(cocos2d::CCObject* sender);
    void onGroupDown(cocos2d::CCObject* sender);
    void onGroupUp(cocos2d::CCObject* sender);
    void onNewCustomItem(cocos2d::CCObject* sender);
    void onPaste(cocos2d::CCObject* sender);
    void onPause(cocos2d::CCObject* sender);
    void onPlayback(cocos2d::CCObject* sender);
    void onPlaytest(cocos2d::CCObject* sender);
    void onSelectBuildTab(cocos2d::CCObject* sender);
    void onSettings(cocos2d::CCObject* sender);
    void onStopPlaytest(cocos2d::CCObject* sender);
    void onToggleGuide(cocos2d::CCObject* sender);
    void onUpdateDeleteFilter(cocos2d::CCObject* sender);
    TodoReturn orderDownCustomItem(cocos2d::CCObject*);
    TodoReturn orderUpCustomItem(cocos2d::CCObject*);
    TodoReturn pasteObjects(gd::string);
    TodoReturn playerTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn playerTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn playtestStopped();
    TodoReturn positionIsInSnapped(cocos2d::CCPoint);
    TodoReturn positionWithoutOffset(GameObject*);
    TodoReturn recreateButtonTabs();
    TodoReturn redoLastAction(cocos2d::CCObject*);
    TodoReturn reloadCustomItems();
    TodoReturn removeOffset(GameObject*);
    TodoReturn repositionObjectsToCenter(cocos2d::CCArray*, cocos2d::CCPoint, bool);
    TodoReturn resetUI();
    TodoReturn rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint);
    TodoReturn rotationforCommand(EditCommand);
    TodoReturn scaleObjects(cocos2d::CCArray*, float, cocos2d::CCPoint);
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
    TodoReturn showMaxCoinError();
    TodoReturn showMaxError();
    TodoReturn showUI(bool);
    TodoReturn sliderChanged(cocos2d::CCObject*);
    TodoReturn toggleDuplicateButton();
    TodoReturn toggleEditObjectButton();
    TodoReturn toggleEnableRotate(cocos2d::CCObject*);
    TodoReturn toggleFreeMove(cocos2d::CCObject*);
    TodoReturn toggleGuideButton();
    TodoReturn toggleMode(cocos2d::CCObject*);
    TodoReturn toggleObjectInfoLabel();
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
    TodoReturn updateObjectInfoLabel();
    TodoReturn updatePercentLabel();
    TodoReturn updatePlaybackBtn();
    TodoReturn updateScaleControl();
    TodoReturn updateSlider();
    TodoReturn updateZoom(float);
    TodoReturn valueFromXPos(float);
    TodoReturn xPosFromValue(float);
    TodoReturn zoomGameLayer(bool);
    TodoReturn zoomIn(cocos2d::CCObject*);
    TodoReturn zoomOut(cocos2d::CCObject*);

    virtual TodoReturn draw();
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn keyBackClicked();
    virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
    virtual TodoReturn songStateChanged();
    virtual TodoReturn keyUp(cocos2d::enumKeyCodes);
    virtual TodoReturn scrollWheel(float, float);
    virtual TodoReturn angleChangeBegin();
    virtual TodoReturn angleChangeEnded();
    virtual TodoReturn angleChanged(float);
    virtual TodoReturn scaleChangeBegin();
    virtual TodoReturn scaleChangeEnded();
    virtual TodoReturn scaleChanged(float);
    virtual void setStoredUndoObject(UndoObject*);
    virtual void setEditMode(EditMode);
}

[[link(android)]]
class EditTriggersPopup {
    // virtual ~EditTriggersPopup();

    static EditTriggersPopup* create(EffectGameObject*, cocos2d::CCArray*);

    TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
    TodoReturn determineStartValues();
    bool init(EffectGameObject*, cocos2d::CCArray*);
    void onClose(cocos2d::CCObject* sender);
    void onSpawnedByTrigger(cocos2d::CCObject* sender);
    void onTouchTriggered(cocos2d::CCObject* sender);
    TodoReturn updateSpawnedByTrigger();
    TodoReturn updateTouchTriggered();

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn show();
}

[[link(android)]]
class EffectGameObject {
    // virtual ~EffectGameObject();
    // EffectGameObject();

    static EffectGameObject* create(char const*);

    TodoReturn getCopyColorIdx();
    TodoReturn getCopyOpacity();
    TodoReturn getCopyPlayerColor1();
    TodoReturn getCopyPlayerColor2();
    TodoReturn getCustomColorBlend();
    TodoReturn getEffectDuration();
    TodoReturn getEffectOrder();
    TodoReturn getEffectSpawnPos();
    TodoReturn getEnableGroup();
    TodoReturn getFadeInTime();
    TodoReturn getFadeOutTime();
    TodoReturn getFromColor();
    TodoReturn getFromOpacity();
    TodoReturn getGroupMainOnly();
    TodoReturn getGroupSecondaryOnly();
    TodoReturn getHoldTime();
    TodoReturn getHSVValue();
    TodoReturn getMoveCommandEasing();
    TodoReturn getMoveCommandPos();
    TodoReturn getMoveLockX();
    TodoReturn getMoveLockY();
    TodoReturn getNextObject();
    TodoReturn getPulseMode();
    TodoReturn getPulseTargetType();
    TodoReturn getSpawnDelay();
    TodoReturn getStartTime();
    TodoReturn getTargetColorIndex();
    TodoReturn getTargetID();
    TodoReturn getTargetOpacity();
    TodoReturn getTintColor();
    TodoReturn getTintGround();
    TodoReturn getToColor();
    TodoReturn getToOpacity();
    TodoReturn getWasProcessed();
    bool init(char const*);
    TodoReturn updateSpecialColor();

    virtual TodoReturn customSetup();
    virtual TodoReturn triggerObject();
    virtual TodoReturn customObjectSetup(gd::map<gd::string, gd::string>*);
    virtual TodoReturn getSaveString();
    virtual TodoReturn spawnXPosition();
    virtual void setTintColor(cocos2d::ccColor3B);
    virtual void setEffectDuration(float);
    virtual void setTargetOpacity(float);
    virtual void setTargetID(int);
    virtual void setTintGround(bool);
    virtual void setCopyPlayerColor1(bool);
    virtual void setCopyPlayerColor2(bool);
    virtual void setCustomColorBlend(bool);
    virtual void setMoveCommandPos(cocos2d::CCPoint);
    virtual void setMoveCommandEasing(int);
    virtual void setMoveLockX(bool);
    virtual void setMoveLockY(bool);
    virtual void setFadeInTime(float);
    virtual void setHoldTime(float);
    virtual void setFadeOutTime(float);
    virtual void setPulseMode(int);
    virtual void setPulseTargetType(int);
    virtual void setHSVValue(cocos2d::ccHSVValue);
    virtual void setCopyColorIdx(int);
    virtual void setCopyOpacity(bool);
    virtual void setGroupMainOnly(bool);
    virtual void setGroupSecondaryOnly(bool);
    virtual void setEnableGroup(bool);
    virtual void setSpawnDelay(float);
    virtual void setEffectSpawnPos(float);
    virtual void setEffectOrder(int);
    virtual void setNextObject(EffectGameObject*);
    virtual void setFromColor(cocos2d::ccColor3B);
    virtual void setToColor(cocos2d::ccColor3B);
    virtual void setFromOpacity(float);
    virtual void setToOpacity(float);
    virtual void setStartTime(float);
    virtual void setWasProcessed(bool);
}

[[link(android)]]
class EndLevelLayer {
    // virtual ~EndLevelLayer();
    // EndLevelLayer();

    static EndLevelLayer* create();

    TodoReturn coinEnterFinished(cocos2d::CCPoint);
    TodoReturn coinEnterFinishedO(cocos2d::CCObject*);
    TodoReturn getCoinString();
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

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
    virtual TodoReturn customSetup();
    virtual TodoReturn showLayer(bool);
    virtual TodoReturn enterAnimFinished();
    virtual TodoReturn keyUp(cocos2d::enumKeyCodes);
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
    void firstSetup();
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
    TodoReturn getFilePath();
    TodoReturn readFile();
    TodoReturn saveFile();
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

    static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float, bool, float);
    static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float);
    static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*);

    TodoReturn getBtn1();
    TodoReturn getBtn2();
    TodoReturn getInternalLayer();
    TodoReturn getPParent();
    TodoReturn getReverseKeyBack();
    TodoReturn getShowInstant();
    TodoReturn getTargetScene();
    TodoReturn getZValue();
    bool init(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float, bool, float);
    void onBtn1(cocos2d::CCObject* sender);
    void onBtn2(cocos2d::CCObject* sender);

    virtual TodoReturn onEnter();
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn keyBackClicked();
    virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
    virtual TodoReturn show();
    virtual void setPParent(FLAlertLayerProtocol*);
    virtual void setTargetScene(cocos2d::CCNode*);
    virtual void setReverseKeyBack(bool);
    virtual void setZValue(int);
    virtual void setShowInstant(bool);
    virtual void setBtn1(ButtonSprite*);
    virtual void setBtn2(ButtonSprite*);

    CCMenu* m_menu;
    PAD = android 0x4;
    FLAlertLayerProtocol* m_pParent;
    cocos2d::CCNode* m_targetScene;
    bool m_reverseKeyBack;
    cocos2d::CCLayer* m_internalLayer;
    int m_zValue;
    bool m_showInstant;
    ButtonSprite* m_btn1;
    ButtonSprite* m_btn2;
    ScrollingLayer* m_scrollingLayer;
    PAD = android 0x4;
    bool _0x1c4;
    bool _0x1c5;
}

[[link(android)]]
class FLAlertLayerProtocol {
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
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
    void stopAllEffects();
    TodoReturn stopBackgroundMusic(bool);
    TodoReturn stopEffect(unsigned int);
    TodoReturn unloadEffect(gd::string);
    TodoReturn willPlayBackgroundMusic();

    virtual TodoReturn update(float);
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
class FRequestProfilePage {
    // virtual ~FRequestProfilePage();
    // FRequestProfilePage();

    static FRequestProfilePage* create(bool);

    TodoReturn deleteSelected();
    bool init(bool);
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

    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn keyBackClicked();
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
class FriendRequestPopup {
    // virtual ~FriendRequestPopup();

    static FriendRequestPopup* create(GJFriendRequest*);

    void blockUser();
    bool init(GJFriendRequest*);
    void loadFromGJFriendRequest(GJFriendRequest*);
    void onAccept(cocos2d::CCObject* sender);
    void onBlock(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    void onRemove(cocos2d::CCObject* sender);

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn uploadActionFinished(int, int);
    virtual TodoReturn uploadActionFailed(int, int);
    virtual TodoReturn onClosePopup(UploadActionPopup*);
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class FriendsProfilePage {
    // virtual ~FriendsProfilePage();
    // FriendsProfilePage();

    static FriendsProfilePage* create(UserListType);

    bool init(UserListType);
    void onBlocked(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    void onUpdate(cocos2d::CCObject* sender);
    TodoReturn setupUsersBrowser(cocos2d::CCArray*, UserListType);

    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn keyBackClicked();
    virtual TodoReturn getUserListFinished(cocos2d::CCArray*, UserListType);
    virtual TodoReturn getUserListFailed(UserListType, GJErrorCode);
    virtual TodoReturn userListChanged(cocos2d::CCArray*, UserListType);
    virtual TodoReturn forceReloadList(UserListType);
}

[[link(android)]]
class GameCell {
    // virtual ~GameCell();
    GameCell(char const*, float, float);

    void loadFromString(gd::string);
    void onTouch(cocos2d::CCObject* sender);
    TodoReturn updateBGColor(int);

    virtual bool init();
    virtual TodoReturn draw();
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

    void acceptFriendRequest(int, int);
    int accountIDForUserID(int);
    void addDLToActive(char const*);
    void banUser(int);
    void blockUser(int);
    bool createAndGetAccountComments(gd::string, int);
    bool createAndGetCommentsFull(gd::string, int, bool);
    bool createAndGetLevelComments(gd::string, int);
    cocos2d::CCArray* createAndGetLevels(gd::string);
    cocos2d::CCArray* createAndGetMapPacks(gd::string);
    cocos2d::CCArray* createAndGetScores(gd::string, GJScoreType);
    TodoReturn createNewLevel();
    TodoReturn createPageInfo(int, int, int);
    TodoReturn dataLoaded(DS_Dictionary*);
    void deleteAccountComment(int);
    void deleteComment(int, CommentType, int);
    void deleteFriendRequests(int, cocos2d::CCArray*, bool);
    void deleteLevel(GJGameLevel*);
    void deleteLevelComment(int, int);
    void deleteSentFriendRequest(int);
    void deleteServerLevel(int);
    void deleteUserMessages(GJUserMessage*, cocos2d::CCArray*, bool);
    void downloadLevel(int);
    void downloadUserMessage(int, bool);
    TodoReturn encodeDataTo(DS_Dictionary*);
    void firstSetup();
    void followUser(int);
    GJFriendRequest* friendRequestFromAccountID(int);
    void friendRequestWasRemoved(int, bool);
    char const* getAccountCommentKey(int, int);
    void getAccountComments(int, int, int);
    cocos2d::CCDictionary* getAllUsedSongIDs();
    TodoReturn getBasePostString(bool);
    TodoReturn getBoolForKey(char const*);
    TodoReturn getCommentDelegate();
    TodoReturn getCommentKey(int, int);
    TodoReturn getCommentUpDelegate();
    TodoReturn getCompletedLevels();
    TodoReturn getCreatedNewLevel();
    TodoReturn getDelegate();
    char const* getDeleteCommentKey(int, int, int);
    char const* getDeleteMessageKey(int, bool);
    char const* getDescKey(int);
    gd::string getActiveDailyID(bool, bool, bool, bool, bool, bool, bool, bool);
    char const* getDiffKey(int);
    bool getDiffVal(int);
    TodoReturn getDlDelegate();
    TodoReturn getDLMessageDelegate();
    TodoReturn getFollowedUsersDict();
    TodoReturn getFRequestDelegate();
    char const* getFriendRequestKey(bool, int);
    void getFriendRequests(bool, int, int);
    void getGJUserInfo(int);
    int getIntForKey(char const*);
    TodoReturn getLastLeaderboard();
    TodoReturn getLastMapPackID();
    TodoReturn getLastSearchKey();
    TodoReturn getLastSearchKey2();
    TodoReturn getLastSearchType();
    TodoReturn getLeaderboardDelegate();
    void getLeaderboardScores(char const*);
    TodoReturn getLengthStr(bool, bool, bool, bool, bool);
    char const* getLenKey(int);
    bool getLenVal(int);
    void getLevelComments(int, int, int);
    char const* getLevelKey(int);
    void getLevelSaveData();
    char const* getLikeAccountItemKey(LikeItemType, int, bool, int);
    char const* getLikeItemKey(LikeItemType, int, bool);
    TodoReturn getLikeKey(int);
    GJGameLevel* getLocalLevel(int);
    TodoReturn getLvlDelDelegate();
    TodoReturn getMainLevel(int, bool);
    TodoReturn getMainLevels();
    char const* getMapPackKey(int);
    void getMapPacks(GJSearchObject*);
    char const* getMessageKey(int);
    char const* getMessagesKey(bool, int);
    TodoReturn getMListDelegate();
    TodoReturn getMsgUDelegate();
    void getOnlineLevels(GJSearchObject*);
    char const* getPageInfo(char const*);
    char const* getPostCommentKey(int);
    TodoReturn getRateKey(int);
    char const* getRateStarsKey(int);
    char const* getReportKey(int);
    TodoReturn getSavedLevel(int);
    TodoReturn getSavedLevels();
    TodoReturn getSavedLevelsDict();
    TodoReturn getSavedMapPack(int);
    cocos2d::CCScene* getSearchScene(char const*);
    int getSplitIntFromKey(char const*, int);
    TodoReturn getStoredLevelComments(char const*);
    TodoReturn getStoredLevelDataDict();
    TodoReturn getStoredOnlineLevels(char const*);
    cocos2d::CCArray* getStoredUserList(UserListType);
    GJUserMessage* getStoredUserMessage(int);
    GJUserMessage* getStoredUserMessageReply(int);
    TodoReturn getTempSave();
    double getTimeLeft(char const*, float);
    TodoReturn getUActionDelegate();
    TodoReturn getULDelegate();
    TodoReturn getUpdateDelegate();
    TodoReturn getUpDelegate();
    char const* getUploadMessageKey(int);
    TodoReturn getUserDelegate();
    char const* getUserInfoKey(int);
    void getUserList(UserListType);
    void getUserMessages(bool, int, int);
    void getUsers(GJSearchObject*);
    TodoReturn getValueDict();
    void gotoLevelPage(GJGameLevel*);
    void handleIt(bool, gd::string, gd::string, GJHttpType);
    void handleItDelayed(bool, gd::string, gd::string, GJHttpType);
    void handleItND(cocos2d::CCNode*, void*);
    bool hasDownloadedLevel(int);
    bool hasLikedAccountItem(LikeItemType, int, bool, int);
    bool hasLikedItem(LikeItemType, int, bool);
    TodoReturn hasLikedItemFullCheck(LikeItemType, int, int);
    TodoReturn hasLikedLevel(int);
    TodoReturn hasRatedLevel(int);
    bool hasRatedLevelStars(int);
    bool hasReportedLevel(int);
    void invalidateMessages(bool, bool);
    void invalidateRequests(bool, bool);
    void invalidateUserList(UserListType, bool);
    bool isDLActive(char const*);
    bool isFollowingUser(int);
    bool isTimeValid(char const*, float);
    bool isUpdateValid(int);
    int itemIDFromLikeKey(char const*);
    int levelIDFromCommentKey(char const*);
    int levelIDFromPostCommentKey(char const*);
    int likeFromLikeKey(char const*);
    void likeItem(LikeItemType, int, bool, int);
    TodoReturn limitSavedLevels();
    void makeTimeStamp(char const*);
    void markItemAsLiked(LikeItemType, int, bool, int);
    void markLevelAsDownloaded(int);
    TodoReturn markLevelAsLiked(int);
    TodoReturn markLevelAsRated(int);
    void markLevelAsRatedStars(int);
    void markLevelAsReported(int);
    void messageWasRemoved(int, bool);
    TodoReturn onAcceptFriendRequestCompleted(gd::string, gd::string);
    TodoReturn onBanUserCompleted(gd::string, gd::string);
    TodoReturn onBlockUserCompleted(gd::string, gd::string);
    TodoReturn onDeleteCommentCompleted(gd::string, gd::string);
    TodoReturn onDeleteFriendRequestCompleted(gd::string, gd::string);
    TodoReturn onDeleteServerLevelCompleted(gd::string, gd::string);
    TodoReturn onDeleteUserMessagesCompleted(gd::string, gd::string);
    TodoReturn onDownloadLevelCompleted(gd::string, gd::string);
    TodoReturn onDownloadUserMessageCompleted(gd::string, gd::string);
    TodoReturn onGetAccountCommentsCompleted(gd::string, gd::string);
    TodoReturn onGetFriendRequestsCompleted(gd::string, gd::string);
    TodoReturn onGetGJUserInfoCompleted(gd::string, gd::string);
    TodoReturn onGetLeaderboardScoresCompleted(gd::string, gd::string);
    TodoReturn onGetLevelCommentsCompleted(gd::string, gd::string);
    TodoReturn onGetLevelSaveDataCompleted(gd::string, gd::string);
    TodoReturn onGetMapPacksCompleted(gd::string, gd::string);
    TodoReturn onGetOnlineLevelsCompleted(gd::string, gd::string);
    TodoReturn onGetUserListCompleted(gd::string, gd::string);
    TodoReturn onGetUserMessagesCompleted(gd::string, gd::string);
    TodoReturn onGetUsersCompleted(gd::string, gd::string);
    TodoReturn onLikeItemCompleted(gd::string, gd::string);
    TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
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
    TodoReturn onUploadCommentCompleted(gd::string, gd::string);
    TodoReturn onUploadFriendRequestCompleted(gd::string, gd::string);
    TodoReturn onUploadLevelCompleted(gd::string, gd::string);
    TodoReturn onUploadUserMessageCompleted(gd::string, gd::string);
    int pageFromCommentKey(char const*);
    void parseRestoreData(gd::string);
    TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
    void purgeUnusedLevels();
    void rateStars(int, int);
    void readFriendRequest(int);
    TodoReturn removeDelimiterChars(gd::string, bool);
    TodoReturn removeDLFromActive(char const*);
    void removeFriend(int);
    void removeUserFromList(int, UserListType);
    void reportLevel(int);
    void requestUserAccess();
    TodoReturn resetAccountComments(int);
    void resetAllTimers();
    TodoReturn resetStoredUserInfo(int);
    void resetStoredUserList(UserListType);
    void resetTimerForKey(char const*);
    static cocos2d::CCDictionary* responseToDict(gd::string, bool);
    void restoreItems();
    TodoReturn saveFetchedLevels(cocos2d::CCArray*);
    void saveFetchedMapPacks(cocos2d::CCArray*);
    void saveLevel(GJGameLevel*);
    void saveMapPack(GJMapPack*);
    void setBoolForKey(bool, char const*);
    void setDiffVal(int, bool);
    void setIntForKey(int, char const*);
    void setLenVal(int, bool);
    void setLevelFeatured(int, int);
    void setLevelStars(int, int, bool);
    void storeCommentsResult(cocos2d::CCArray*, gd::string, char const*);
    void storeFriendRequest(GJFriendRequest*);
    TodoReturn storeSearchResult(cocos2d::CCArray*, gd::string, char const*);
    void storeUserInfo(GJUserScore*);
    void storeUserMessage(GJUserMessage*);
    void storeUserMessageReply(int, GJUserMessage*);
    TodoReturn storeUserName(int, int, gd::string);
    void storeUserNames(gd::string);
    void submitUserInfo();
    void suggestLevelStars(int, int, bool);
    CommentType typeFromCommentKey(char const*);
    LikeItemType typeFromLikeKey(char const*);
    void unblockUser(int);
    void unfollowUser(int);
    void updateDescription(int, gd::string);
    void updateLevel(GJGameLevel*);
    void updateLevelRewards(GJGameLevel*);
    void updateUsernames();
    void updateUserScore();
    void uploadAccountComment(gd::string);
    void uploadComment(gd::string, CommentType, int);
    void uploadFriendRequest(int, gd::string);
    TodoReturn uploadLevel(GJGameLevel*);
    void uploadLevelComment(int, gd::string);
    void uploadUserMessage(int, gd::string, gd::string);
    int userIDForAccountID(int);
    GJUserScore* userInfoForAccountID(int);
    TodoReturn userNameForUserID(int);
    void verifyLevelState(GJGameLevel*);

    virtual bool init();
    virtual void setMainLevels(cocos2d::CCDictionary*);
    virtual void setValueDict(cocos2d::CCDictionary*);
    virtual void setSavedLevelsDict(cocos2d::CCDictionary*);
    virtual void setStoredLevelDataDict(cocos2d::CCDictionary*);
    virtual void setFollowedUsersDict(cocos2d::CCDictionary*);
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
    virtual void setUserDelegate(UserInfoDelegate*);
    virtual void setUActionDelegate(UploadActionDelegate*);
    virtual void setULDelegate(UserListDelegate*);
    virtual void setFRequestDelegate(FriendRequestDelegate*);
    virtual void setMListDelegate(MessageListDelegate*);
    virtual void setDLMessageDelegate(DownloadMessageDelegate*);
    virtual void setMsgUDelegate(UploadMessageDelegate*);
    virtual void setLastSearchType(SearchType);
    virtual void setLastMapPackID(int);
    virtual void setTempSave(gd::string);
}

[[link(android)]]
class GameManager {
    // virtual ~GameManager();
    // GameManager();

    static GameManager* sharedState();

    TodoReturn accountStatusChanged();
    TodoReturn addNewCustomObject(gd::string);
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
    TodoReturn getCustomObjectDict();
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
    TodoReturn getEditorLayer();
    TodoReturn getFetchNewLevelsQueued();
    TodoReturn getFirstSetup();
    TodoReturn getFontFile(int);
    TodoReturn getFontTexture(int);
    TodoReturn getGameVariable(char const*);
    TodoReturn getGTexture(int);
    TodoReturn getHasRatedGame();
    TodoReturn getHasRatingPower();
    TodoReturn getIntGameVariable(char const*);
    TodoReturn getIsResetting();
    TodoReturn getLastCustomColorIdx();
    TodoReturn getLastGroupID();
    TodoReturn getLastLevelID();
    TodoReturn getLastScene();
    TodoReturn getLastScene2();
    TodoReturn getLevelSelectLayer();
    TodoReturn getLoadedBGIdx();
    TodoReturn getLoadedFontIdx();
    TodoReturn getLoadedGIdx();
    TodoReturn getMainMenuActive();
    TodoReturn getMenulayer();
    TodoReturn getNextUniqueObjectKey();
    TodoReturn getNextUsedKey(int, bool);
    TodoReturn getOrderedCustomObjectKeys();
    TodoReturn getPerformanceMode();
    TodoReturn getPlayerBall();
    TodoReturn getPlayerBird();
    TodoReturn getPlayerColor();
    TodoReturn getPlayerColor2();
    TodoReturn getPlayerDart();
    TodoReturn getPlayerFrame();
    TodoReturn getPlayerGlow();
    TodoReturn getPlayerIconType();
    TodoReturn getPlayerName();
    TodoReturn getPlayerRobot();
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
    TodoReturn loadFont(int);
    TodoReturn loadGround(int);
    TodoReturn loadVideoSettings();
    TodoReturn lockColor(int, bool);
    TodoReturn lockIcon(int, IconType);
    TodoReturn openEditorGuide();
    TodoReturn rateGame();
    TodoReturn recountUserStats(gd::string);
    TodoReturn reloadAll(bool, bool, bool);
    TodoReturn reloadAllStep2();
    TodoReturn reloadAllStep3();
    TodoReturn reloadAllStep4();
    TodoReturn reloadAllStep5();
    TodoReturn removeCustomObject(int);
    TodoReturn reorderKey(int, bool);
    TodoReturn reportAchievementWithID(char const*, int, bool);
    TodoReturn reportPercentageForLevel(int, int, bool);
    TodoReturn resetAchievement(char const*);
    TodoReturn resetAllIcons();
    TodoReturn resetCoinUnlocks();
    TodoReturn resolutionForKey(int);
    TodoReturn returnToLastScene(GJGameLevel*);
    TodoReturn safePopScene();
    void setGameVariable(char const*, bool);
    void setIntGameVariable(char const*, int);
    TodoReturn shouldShowInterstitial();
    TodoReturn shouldShowPromoInterstitial();
    TodoReturn showInterstitial();
    TodoReturn showInterstitialForced();
    TodoReturn showMainMenuAd();
    TodoReturn showPromoInterstitial();
    TodoReturn startUpdate();
    TodoReturn stringForCustomObject(int);
    TodoReturn subYouTube();
    TodoReturn switchCustomObjects(int, int);
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

    virtual TodoReturn update(float);
    virtual bool init();
    virtual TodoReturn encodeDataTo(DS_Dictionary*);
    virtual TodoReturn dataLoaded(DS_Dictionary*);
    virtual TodoReturn firstLoad();
    virtual void setValueKeeper(cocos2d::CCDictionary*);
    virtual void setCustomObjectDict(cocos2d::CCDictionary*);
    virtual void setDidSyncAchievements(bool);
    virtual void setEditorCopyString(gd::string);
    virtual void setPlayLayer(PlayLayer*);
    virtual void setEditorLayer(LevelEditorLayer*);
    virtual void setLevelSelectLayer(LevelSelectLayer*);
    virtual void setMenulayer(MenuLayer*);
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
    virtual void setPlayerDart(int);
    virtual void setPlayerRobot(int);
    virtual void setPlayerColor(int);
    virtual void setPlayerColor2(int);
    virtual void setPlayerStreak(int);
    virtual void setPlayerGlow(bool);
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
    virtual void setLastCustomColorIdx(int);
    virtual void setLastGroupID(int);
    virtual void setTotalAttempts(int);
    virtual void setBootups(int);
    virtual void setHasRatedGame(bool);
    virtual void setDidPlayGame(bool);
    virtual void setIsResetting(bool);
    virtual void setShowingPromo(bool);
    virtual void setTestSmoothFix(bool);
    virtual void setHasRatingPower(bool);
    virtual void setFetchNewLevelsQueued(bool);
    virtual void setResolution(int);
    virtual void setTexQuality(cocos2d::TextureQuality);
}

[[link(android)]]
class GameObject : cocos2d::CCSpritePlus {
    // virtual ~GameObject();
    // GameObject();

    TodoReturn activatedByPlayer(GameObject*);
    TodoReturn addColorSprite();
    TodoReturn addColorSpriteToParent(bool);
    TodoReturn addCustomBlackChild(gd::string, float, bool);
    TodoReturn addCustomChild(gd::string, cocos2d::CCPoint, int);
    TodoReturn addCustomColorChild(gd::string);
    TodoReturn addGlow();
    TodoReturn addInternalChild(cocos2d::CCSprite*, gd::string, cocos2d::CCPoint);
    TodoReturn addInternalCustomColorChild(gd::string, cocos2d::CCPoint);
    TodoReturn addInternalGlowChild(gd::string, cocos2d::CCPoint);
    TodoReturn addMainSpriteToParent(bool);
    TodoReturn addToTempOffset(float, float);
    TodoReturn calculateOrientedBox();
    TodoReturn canChangeCustomColor();
    TodoReturn canChangeMainColor();
    TodoReturn canChangeSecondaryColor();
    TodoReturn canRotateFree();
    TodoReturn colorForMode(int, bool);
    TodoReturn commonSetup();
    TodoReturn copyGroups(GameObject*);
    TodoReturn createAndAddParticle(int, char const*, int, cocos2d::tCCPositionType);
    TodoReturn createGlow(gd::string);
    TodoReturn createGroupContainer(int);
    TodoReturn createRotateAction(float, int);
    TodoReturn createSpriteColor(int);
    TodoReturn createWithFrame(char const*);
    TodoReturn createWithKey(int);
    TodoReturn createWithTexture(cocos2d::CCTexture2D*);
    TodoReturn customScaleMod(char const*);
    TodoReturn deselectObject();
    TodoReturn destroyObject();
    TodoReturn determineSlopeDirection();
    TodoReturn dontCountTowardsLimit();
    TodoReturn duplicateAttributes(GameObject*);
    TodoReturn duplicateColorMode(GameObject*);
    TodoReturn duplicateValues(GameObject*);
    TodoReturn editorColorForCustomMode(int);
    TodoReturn editorColorForMode(int);
    TodoReturn getActiveColorForMode(int, bool);
    TodoReturn getAddedToBlend();
    TodoReturn getAddToBatch2();
    TodoReturn getBallFrame(int);
    TodoReturn getBoxOffset();
    TodoReturn getColorFrame(gd::string);
    TodoReturn getColorIndex();
    TodoReturn getColorManager();
    TodoReturn getColorOnTop();
    TodoReturn getColorSprite();
    TodoReturn getCustomAudioScale();
    TodoReturn getCustomColorIdx();
    TodoReturn getCustomDontFade();
    TodoReturn getCustomHitBox();
    TodoReturn getCustomObjectZ();
    TodoReturn getCustomScale();
    TodoReturn getCustomZLayer();
    TodoReturn getDamaging();
    TodoReturn getDidUpdateLastPosition();
    TodoReturn getDontApplyEffect();
    TodoReturn getDontApplyFade();
    TodoReturn getDontFade();
    TodoReturn getDontFadeTinted();
    TodoReturn getDontTransform();
    TodoReturn getEditorCustomScale();
    TodoReturn getEditorLayerID();
    TodoReturn getEditorLayerID2();
    TodoReturn getEditorSelected();
    TodoReturn getEditorSelectIdx();
    TodoReturn getEnterAngle();
    TodoReturn getEnterEffect();
    TodoReturn getFadeInPosOffset();
    TodoReturn getFrame();
    TodoReturn getGlowFrame(gd::string);
    TodoReturn getGlowOpacityMod();
    TodoReturn getGlowUseBGColor();
    TodoReturn getGroupCount();
    TodoReturn getGroupDisabled();
    TodoReturn getGroupDisabledCount();
    TodoReturn getGroupID(int);
    TodoReturn getGroupString();
    TodoReturn getGroupUpdated();
    TodoReturn getHasCustomChildren();
    TodoReturn getHasSyncedAnimation();
    TodoReturn getIgnoreScreenCheck();
    TodoReturn getInvisibleMode();
    TodoReturn getIsAnimated();
    TodoReturn getIsDetailColorObject();
    TodoReturn getIsGroupParent();
    TodoReturn getIsInvisible();
    TodoReturn getIsOriented();
    TodoReturn getIsRotated();
    TodoReturn getIsSelected();
    TodoReturn getIsTintObject();
    TodoReturn getIsTriggerSaved();
    TodoReturn getLastPosition();
    TodoReturn getLockColorAsChild();
    TodoReturn getM_ID();
    TodoReturn getMainBlend();
    TodoReturn getMainColor();
    TodoReturn getMainColorBlack();
    TodoReturn getMainColorMode();
    TodoReturn getMaxAudioScale();
    TodoReturn getMinAudioScale();
    TodoReturn getNeedsReorder();
    TodoReturn getNeedsUpdateColor();
    TodoReturn getObjectClass();
    TodoReturn getObjectID();
    TodoReturn getObjectKey();
    TodoReturn getObjectRadius();
    TodoReturn getObjectRectDirty();
    TodoReturn getObjectZ();
    TodoReturn getObjectZLayer();
    TodoReturn getObjectZOrder();
    TodoReturn getOrientedRectDirty();
    TodoReturn getOuterObjectRect();
    TodoReturn getParentMode();
    TodoReturn getRadius();
    TodoReturn getRectOffset();
    TodoReturn getRelativeSpriteColor(int);
    TodoReturn getSavedMainColorMode();
    TodoReturn getSavedSecondaryColorMode();
    TodoReturn getScaleModX();
    TodoReturn getScaleModY();
    TodoReturn getSecondaryBlend();
    TodoReturn getSecondaryColor();
    TodoReturn getSecondaryColorBlack();
    TodoReturn getSecondaryColorMode();
    TodoReturn getSectionIdx();
    TodoReturn getShouldHide();
    TodoReturn getSlopeAngle();
    TodoReturn getSlopeType();
    TodoReturn getSpawnedByTrigger();
    TodoReturn getSpawnXPos();
    TodoReturn getSpriteColor01();
    TodoReturn getSpriteColor02();
    TodoReturn getStartFlipX();
    TodoReturn getStartFlipY();
    TodoReturn getStartPos();
    TodoReturn getStartRotation();
    TodoReturn getStartScaleX();
    TodoReturn getStartScaleY();
    TodoReturn getStateVar();
    TodoReturn getStoredPosition();
    TodoReturn getTextBlockString();
    TodoReturn getTouchTriggered();
    TodoReturn getType();
    TodoReturn getUniqueID();
    TodoReturn getUpdateLastPos();
    TodoReturn getUpSlope();
    TodoReturn getUseAudioScale();
    TodoReturn getUseCustomContentSize();
    TodoReturn getUseCustomEditorHitbox();
    TodoReturn getUseSpecialLight();
    TodoReturn getWasSelected();
    TodoReturn getZLayer();
    TodoReturn groupColor(cocos2d::ccColor3B const&, bool);
    TodoReturn groupOpacityMod();
    TodoReturn groupWasDisabled();
    TodoReturn groupWasEnabled();
    TodoReturn hasBeenActivated();
    TodoReturn hasBeenActivatedByPlayer(GameObject*);
    TodoReturn hasSecondaryColor();
    TodoReturn ignoreFade();
    bool init(char const*);
    bool isColorObject();
    bool isColorTrigger();
    bool isFacingDown();
    bool isSpawnableTrigger();
    bool isSpecialObject();
    bool isTrigger();
    TodoReturn loadGroupsFromString(gd::string);
    TodoReturn objectFromString(gd::string);
    TodoReturn opacityModForMode(int, bool);
    TodoReturn parentForZLayer(int, bool, int);
    TodoReturn perspectiveColorFrame(char const*, int);
    TodoReturn perspectiveFrame(char const*, int);
    TodoReturn playShineEffect();
    TodoReturn quickUpdatePosition();
    TodoReturn removeColorSprite();
    TodoReturn removeGlow();
    TodoReturn reorderColorSprite();
    TodoReturn resetGroupDisabled();
    TodoReturn resetMainColorMode();
    TodoReturn resetSecondaryColorMode();
    TodoReturn saveActiveColors();
    TodoReturn selectObject(cocos2d::ccColor3B);
    void setDefaultMainColorMode(int);
    void setDefaultSecondaryColorMode(int);
    void setDidUpdateLastPosition(bool const&);
    void setGlowColor(cocos2d::ccColor3B const&);
    void setGlowOpacity(unsigned char);
    void setLastPosition(cocos2d::CCPoint const&);
    void setMainColorMode(int);
    void setMyAction(cocos2d::CCAction*);
    void setSecondaryColorMode(int);
    void setSectionIdx(int const&);
    void setTempOffset(float, float);
    TodoReturn setupCoinAnimation();
    TodoReturn setupCoinArt();
    TodoReturn setupColorSprite(int, bool);
    TodoReturn setupCustomSprites();
    void setUpdateLastPos(bool const&);
    TodoReturn shouldBlendColor(GJSpriteColor*, bool);
    TodoReturn shouldNotSave();
    TodoReturn slopeFloorTop();
    TodoReturn slopeWallLeft();
    TodoReturn slopeYPos(cocos2d::CCRect);
    TodoReturn slopeYPos(float);
    TodoReturn slopeYPos(GameObject*);
    TodoReturn updateCustomScale(float);
    TodoReturn updateMainColor();
    TodoReturn updateMainColor(cocos2d::ccColor3B const&);
    TodoReturn updateObjectEditorColor();
    TodoReturn updateOrientedBox();
    TodoReturn updateParticleColor(cocos2d::ccColor3B const&);
    TodoReturn updateSecondaryColor();
    TodoReturn updateSecondaryColor(cocos2d::ccColor3B const&);
    TodoReturn updateStartPos();
    TodoReturn updateState();
    TodoReturn updateSyncedAnimation(float);
    TodoReturn updateTextObject(gd::string, bool);
    TodoReturn waitingForActivation();

    virtual TodoReturn update(float);
    virtual void setScaleX(float);
    virtual void setScaleY(float);
    virtual void setScale(float);
    virtual void setPosition(cocos2d::CCPoint const&);
    virtual void setVisible(bool);
    virtual void setRotation(float);
    virtual void setOpacity(unsigned char);
    virtual TodoReturn initWithTexture(cocos2d::CCTexture2D*);
    virtual void setChildColor(cocos2d::ccColor3B const&);
    virtual void setFlipX(bool);
    virtual void setFlipY(bool);
    virtual TodoReturn customSetup();
    virtual TodoReturn resetObject();
    virtual TodoReturn triggerObject();
    virtual TodoReturn activateObject();
    virtual TodoReturn deactivateObject(bool);
    virtual TodoReturn getObjectRect();
    virtual TodoReturn getObjectRect(float, float);
    virtual TodoReturn getObjectRect2(float, float);
    virtual TodoReturn getObjectTextureRect();
    virtual TodoReturn getRealPosition();
    virtual void setStartPos(cocos2d::CCPoint);
    virtual TodoReturn updateStartValues();
    virtual TodoReturn customObjectSetup(gd::map<gd::string, gd::string>*);
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
    virtual void setObjectColor(cocos2d::ccColor3B const&);
    virtual TodoReturn getOrientedBox();
    virtual TodoReturn addToGroup(int);
    virtual TodoReturn removeFromGroup(int);
    virtual TodoReturn spawnXPosition();
    virtual void setLockColorAsChild(bool);
    virtual void setFadeInPosOffset(float);
    virtual void setObjectRectDirty(bool);
    virtual void setOrientedRectDirty(bool);
    virtual void setHasCustomChildren(bool);
    virtual void setIgnoreScreenCheck(bool);
    virtual void setScaleModX(float);
    virtual void setScaleModY(float);
    virtual void setM_ID(int);
    virtual void setType(GameObjectType);
    virtual void setTouchTriggered(bool);
    virtual void setSpawnedByTrigger(bool);
    virtual void setUseAudioScale(bool);
    virtual void setStartRotation(float);
    virtual void setStartScaleX(float);
    virtual void setStartScaleY(float);
    virtual void setStartFlipX(bool);
    virtual void setStartFlipY(bool);
    virtual void setShouldHide(bool);
    virtual void setEnterAngle(float);
    virtual void setEnterEffect(int);
    virtual void setCustomColorIdx(int);
    virtual void setCustomScale(float);
    virtual void setObjectKey(int);
    virtual void setDontTransform(bool);
    virtual void setDontFade(bool);
    virtual void setDontApplyEffect(bool);
    virtual void setDontApplyFade(bool);
    virtual void setDontFadeTinted(bool);
    virtual void setIsTintObject(bool);
    virtual void setCustomDontFade(bool);
    virtual void setStateVar(bool);
    virtual void setObjectZ(int);
    virtual void setAddToBatch2(bool);
    virtual void setColorOnTop(bool);
    virtual void setUniqueID(int);
    virtual void setObjectID(int);
    virtual void setGlowOpacityMod(float);
    virtual void setZLayer(int);
    virtual void setCustomZLayer(int);
    virtual void setCustomObjectZ(int);
    virtual void setTextBlockString(gd::string);
    virtual void setEditorSelected(bool);
    virtual void setWasSelected(bool);
    virtual void setIsSelected(bool);
    virtual void setEditorSelectIdx(int);
    virtual void setStoredPosition(cocos2d::CCPoint);
    virtual void setNeedsReorder(bool);
    virtual void setNeedsUpdateColor(bool);
    virtual void setEditorCustomScale(float);
    virtual void setIsGroupParent(bool);
    virtual void setEditorLayerID(int);
    virtual void setEditorLayerID2(int);
    virtual void setGroupUpdated(bool);
    virtual void setUseCustomContentSize(bool);
    virtual void setUseCustomEditorHitbox(bool);
    virtual void setCustomHitBox(cocos2d::CCSize);
    virtual void setObjectClass(GameObjectClass);
    virtual void setHasSyncedAnimation(bool);
    virtual void setColorManager(GJEffectManager*);

    cocos2d::ccColor3B _0x1c2; // Default color?
    float _0x1c8; // updateSyncedAnimation
    float _0x1cc; // updateSyncedAnimation
    float _0x1d0; // updateSyncedAnimation
    float _0x1d4; // updateSyncedAnimation
    bool _0x1d8; // resetObject
    float _0x1dc; // updateSyncedAnimation
    bool _0x1e0; // addCustomBlackChild
    bool _0x1e1; // Unused
    float _0x1e4; // addCustomBlackChild
    bool m_editMode;
    bool m_groupDisabled;
    bool m_lockColorAsChild;
    int m_savedMainColorMode;
    int m_savedSecondaryColorMode;
    bool _0x1f4; // Main color enable HSV?
    bool _0x1f5; // Secondary color enable HSV?
    float m_tempOffsetX;
    float m_tempOffsetY;
    bool _0x200; // Related to temp offset
    bool m_flipX;
    bool m_flipY;
    cocos2d::CCPoint m_rectOffset;
    bool _0x20c; // Rect offset related
    cocos2d::CCPoint _0x210; // Rect offset related
    OBB2D* m_orientedBox;
    bool m_isOriented;
    cocos2d::CCSprite* m_glowSprite;
    bool _0x224;
    cocos2d::CCAction* m_myAction;
    bool _0x22c;
    bool _0x22d;
    bool _0x22e;
    float _0x230; // Width?
    float _0x234; // Height?
    bool _0x238;
    bool _0x239;
    bool _0x23a;
    cocos2d::CCParticleSystemQuad* m_particle;
    gd::string m_particleKey;
    bool m_hasParticle;
    cocos2d::CCPoint _0x248;
    cocos2d::CCRect _0x250;
    bool _0x260;
    float m_fadeInPosOffset;
    cocos2d::CCRect _0x268;
    bool m_objectRectDirty;
    bool m_orientedRectDirty;
    bool _0x27a;
    bool _0x27b;
    bool _0x27c;
    bool _0x27d;
    bool _0x27e;
    bool m_mainColorBlack;
    bool m_secondaryColorBlack;
    bool m_mainBlend;
    bool m_secondaryBlend;
    bool m_hasCustomChildren;
    bool m_isAnimated;
    cocos2d::CCSprite* m_colorSprite;
    bool m_ignoreScreenCheck;
    float m_radius;
    bool m_isRotated;
    float m_scaleModX;
    float m_scaleModY;
    int m_M_ID;
    GameObjectType m_type;
    int m_sectionIdx;
    bool m_touchTriggered;
    bool m_spawnedByTrigger;
    cocos2d::CCPoint m_startPos;
    gd::string m_frame;
    bool m_useAudioScale;
    bool _0x2bd;
    float m_startRotation;
    float m_startScaleX;
    float m_startScaleY;
    bool m_startFlipX;
    bool m_startFilpY;
    bool m_shouldHide;
    float m_spawnXPos;
    bool m_isInvisible;
    float m_enterAngle;
    int m_enterEffect;
    int m_customColorIdx;
    float m_customScale;
    int m_objectKey;
    bool m_dontTransform;
    bool m_dontFade;
    bool m_dontApplyEnter;
    bool m_dontApplyFade;
    bool m_dontFadeTinted;
    bool m_isTintObject;
    bool m_isDetailColorObject;
    bool m_customDontEnter;
    bool m_customDontFade;
    bool m_stateVar;
    int m_objectZ;
    bool m_addToBatch2;
    bool m_colorOnTop;
    bool m_customAudioScale;
    float m_minAudioScale;
    float m_maxAudioScale;
    int m_uniqueID;
    int m_objectID;
    bool m_invisibleMode;
    bool m_glowUseBGColor;
    bool m_useSpecialLight;
    float m_glowOpacityMod;
    bool m_upSlope;
    int m_slopeType;
    float m_slopeAngle;
    bool m_damaging;
    GJSpriteColor* m_mainColor;
    GJSpriteColor* m_secondaryColor;
    bool m_addedToBlend;
    int m_zLayer;
    int m_customZLayer;
    int m_customObjectZ;
    gd::string m_textBlockString;
    bool m_editorSelected;
    bool m_wasSelected;
    bool m_isSelected;
    int m_editorSelectIdx;
    cocos2d::CCPoint m_storedPosition;
    bool m_needsReorder;
    bool m_needsUpdateColor;
    float m_editorCustomScale;
    int* m_groups;
    int m_groupCount;
    int m_editorLayerID;
    int m_editorLayerID2;
    int m_groupDisabledCount;
    bool m_groupUpdated;
    bool m_useCustomContentSize;
    bool m_useCustomEditorHitbox;
    cocos2d::CCSize m_customHitBox;
    cocos2d::CCPoint m_lastPosition;
    bool m_didUpdateLastPosition;
    bool m_updateLastPos;
    GameObjectClass m_objectClass;
    bool m_hasSyncedAnimation;
    bool m_isTriggerSaved;
    int _0x394; // Animation related
    ColorActionSprite* _0x398;
    ColorActionSprite* _0x39c;
    GJEffectManager* m_effectManager;
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
    TodoReturn checkCoinAchievement(GJGameLevel*);
    TodoReturn checkCoinsForLevel(GJGameLevel*);
    TodoReturn completedDemonLevel(GJGameLevel*);
    TodoReturn completedLevel(GJGameLevel*);
    TodoReturn completedMapPack(GJMapPack*);
    TodoReturn completedStarLevel(GJGameLevel*);
    TodoReturn dataLoaded(DS_Dictionary*);
    TodoReturn encodeDataTo(DS_Dictionary*);
    void firstSetup();
    TodoReturn getCollectedCoinsForLevel(GJGameLevel*);
    TodoReturn getCompletedLevels();
    TodoReturn getCompletedMapPacks();
    TodoReturn getDemonLevelKey(int);
    TodoReturn getLevelKey(GJGameLevel*);
    TodoReturn getLevelKey(int, bool);
    TodoReturn getLiteAchievements();
    char const* getMapPackKey(int);
    TodoReturn getPendingUserCoinsDict();
    TodoReturn getRandomContainer();
    TodoReturn getStarLevelKey(int);
    TodoReturn getStat(char const*);
    TodoReturn getUniqueItemKey(char const*);
    TodoReturn getUserCoinsDict();
    TodoReturn getValueDict();
    TodoReturn hasCompletedDemonLevel(GJGameLevel*);
    TodoReturn hasCompletedLevel(GJGameLevel*);
    TodoReturn hasCompletedMapPack(int);
    TodoReturn hasCompletedOnlineLevel(int);
    TodoReturn hasCompletedStarLevel(GJGameLevel*);
    TodoReturn hasPendingUserCoin(char const*);
    TodoReturn hasUniqueItem(char const*);
    TodoReturn hasUserCoin(char const*);
    TodoReturn incrementStat(char const*, int);
    TodoReturn incrementStat(char const*);
    bool isLiteUnlockable(gd::string);
    bool isUniqueItem(gd::string);
    bool isUniqueValid(gd::string);
    TodoReturn logCoins();
    TodoReturn markLevelAsCompletedAndClaimed(int);
    TodoReturn recountUserCoins(bool);
    TodoReturn resetPreSync();
    TodoReturn resetUserCoins();
    TodoReturn restorePostSync();
    void setStarsForMapPack(int, int);
    void setStat(char const*, int);
    void setStatIfHigher(char const*, int);
    TodoReturn starsForMapPack(int);
    TodoReturn storePendingUserCoin(char const*);
    TodoReturn storeUniqueItem(char const*);
    TodoReturn storeUserCoin(char const*);
    TodoReturn tempClear();
    TodoReturn uncompleteLevel(int);
    TodoReturn verifyUserCoins();

    virtual bool init();
    virtual void setValueDict(cocos2d::CCDictionary*);
    virtual void setCompletedLevels(cocos2d::CCDictionary*);
    virtual void setUserCoinsDict(cocos2d::CCDictionary*);
    virtual void setPendingUserCoinsDict(cocos2d::CCDictionary*);
    virtual void setRandomContainer(cocos2d::CCDictionary*);
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
    static TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, float, float, float, cocos2d::CCPoint, char const*, bool, int);
    static TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*);
    static TodoReturn doWeHaveInternet();
    static TodoReturn getDropActionWDelay(float, float, float, cocos2d::CCNode*, cocos2d::SEL_CallFunc);
    static TodoReturn getDropActionWEnd(float, float, float, cocos2d::CCAction*, float);
    static TodoReturn getRelativeOffset(GameObject*, cocos2d::CCPoint);
    static TodoReturn getResponse(cocos2d::extension::CCHttpResponse*);
    static TodoReturn hsvFromString(gd::string, char const*);
    static bool isIOS();
    static TodoReturn mergeDictsSaveLargestInt(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
    static TodoReturn multipliedColorValue(cocos2d::ccColor3B, cocos2d::ccColor3B, float);
    static TodoReturn openAppPage();
    static TodoReturn openRateURL(gd::string, gd::string);
    static TodoReturn postClipVisit();
    static TodoReturn preVisitWithClippingRect(cocos2d::CCNode*, cocos2d::CCRect, cocos2d::CCNode*);
    static TodoReturn stringFromHSV(cocos2d::ccHSVValue, char const*);
    static TodoReturn stringSetupToDict(gd::string, char const*);
    static TodoReturn stringSetupToMap(gd::string, char const*);
    static TodoReturn transformColor(cocos2d::ccColor3B const&, cocos2d::ccHSVValue);
    static TodoReturn transformColor(cocos2d::ccColor3B const&, float, float, float);
}

[[link(android)]]
class GaragePage {
    // virtual ~GaragePage();

    static GaragePage* create(IconType, GJGarageLayer*, cocos2d::SEL_MenuHandler);

    bool init(IconType, GJGarageLayer*, cocos2d::SEL_MenuHandler);
    void onGlow(cocos2d::CCObject* sender);
    void onSelect(cocos2d::CCObject* sender);
    TodoReturn updateSelect(cocos2d::CCNode*);

    virtual TodoReturn listButtonBarSwitchedPage(ListButtonBar*, int);
}

[[link(android)]]
class GhostTrailEffect {
    // virtual ~GhostTrailEffect();
    // GhostTrailEffect();

    static GhostTrailEffect* create();

    TodoReturn doBlendAdditive();
    TodoReturn getBlendFunc();
    TodoReturn getDelegate();
    TodoReturn getGhostColor();
    TodoReturn getInternalOffset();
    TodoReturn getPosTarget();
    TodoReturn getPTarget();
    TodoReturn getScaleMod();
    TodoReturn getStartAlpha();
    TodoReturn getTarget();
    TodoReturn getUsePosScale();
    TodoReturn runWithTarget(cocos2d::CCSprite*, float, float, float, float, bool);
    TodoReturn stopTrail();
    TodoReturn trailSnapshot(float);

    virtual bool init();
    virtual TodoReturn draw();
    virtual void setScaleMod(float);
    virtual void setBlendFunc(cocos2d::_ccBlendFunc);
    virtual void setTarget(cocos2d::CCSprite*);
    virtual void setPosTarget(cocos2d::CCSprite*);
    virtual void setPTarget(cocos2d::CCNode*);
    virtual void setStartAlpha(float);
    virtual void setDelegate(GhostTrailDelegate*);
    virtual void setGhostColor(cocos2d::ccColor3B);
    virtual void setInternalOffset(cocos2d::CCPoint);
    virtual void setUsePosScale(bool);
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

    void addDLToActive(char const*, cocos2d::CCObject*);
    void addDLToActive(char const*);
    bool backupAccount();
    TodoReturn dataLoaded(DS_Dictionary*);
    TodoReturn encodeDataTo(DS_Dictionary*);
    void firstSetup();
    TodoReturn getAccountDelegate();
    TodoReturn getAccountID();
    TodoReturn getAccountPassword();
    TodoReturn getAccountUserName();
    TodoReturn getBackupDelegate();
    cocos2d::CCObject* getDLObject(char const*);
    TodoReturn getGJP();
    TodoReturn getLoginDelegate();
    TodoReturn getRegisterDelegate();
    TodoReturn getSettingsDelegate();
    TodoReturn getSyncDelegate();
    void handleIt(bool, gd::string, gd::string, GJHttpType);
    void handleItDelayed(bool, gd::string, gd::string, GJHttpType);
    void handleItND(cocos2d::CCNode*, void*);
    bool isDLActive(char const*);
    void linkToAccount(gd::string, gd::string, int, int);
    void loginAccount(gd::string, gd::string);
    TodoReturn onBackupAccountCompleted(gd::string, gd::string);
    TodoReturn onLoginAccountCompleted(gd::string, gd::string);
    TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
    TodoReturn onRegisterAccountCompleted(gd::string, gd::string);
    TodoReturn onSyncAccountCompleted(gd::string, gd::string);
    TodoReturn onUpdateAccountSettingsCompleted(gd::string, gd::string);
    TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
    void registerAccount(gd::string, gd::string, gd::string);
    TodoReturn removeDLFromActive(char const*);
    bool syncAccount();
    void unlinkFromAccount();
    void updateAccountSettings(int, int, gd::string);

    virtual bool init();
    virtual void setRegisterDelegate(GJAccountRegisterDelegate*);
    virtual void setLoginDelegate(GJAccountLoginDelegate*);
    virtual void setAccountDelegate(GJAccountDelegate*);
    virtual void setBackupDelegate(GJAccountBackupDelegate*);
    virtual void setSyncDelegate(GJAccountSyncDelegate*);
    virtual void setSettingsDelegate(GJAccountSettingsDelegate*);
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
class GJAccountSettingsLayer {
    // virtual ~GJAccountSettingsLayer();

    static GJAccountSettingsLayer* create(int);

    TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float);
    bool init(int);
    void onClose(cocos2d::CCObject* sender);
    void onFriendRequests(cocos2d::CCObject* sender);
    void onMessageSetting(cocos2d::CCObject* sender);
    void onUpdate(cocos2d::CCObject* sender);
    TodoReturn updateScoreValues();

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
    virtual TodoReturn textInputReturn(CCTextInputNode*);
}

[[link(android)]]
class GJAccountSyncDelegate {
    virtual TodoReturn syncAccountFinished();
    virtual TodoReturn syncAccountFailed(BackupAccountError);
}

[[link(android)]]
class GJBaseGameLayer {
    // virtual ~GJBaseGameLayer();
    // GJBaseGameLayer();

    TodoReturn calculateOpacityValues(EffectGameObject*, EffectGameObject*, float, GJEffectManager*);
    TodoReturn createTextLayers();
    TodoReturn generateToggleData(cocos2d::CCArray*);
    TodoReturn getBatchNode();
    TodoReturn getBatchNodeAdd();
    TodoReturn getBatchNodeAddBottom();
    TodoReturn getBatchNodeAddBottom2();
    TodoReturn getBatchNodeAddBottom2Glow();
    TodoReturn getBatchNodeAddBottomGlow();
    TodoReturn getBatchNodeAddGlow();
    TodoReturn getBatchNodeAddMid();
    TodoReturn getBatchNodeAddMidGlow();
    TodoReturn getBatchNodeAddPlayer();
    TodoReturn getBatchNodeAddText();
    TodoReturn getBatchNodeAddTop();
    TodoReturn getBatchNodeBottom();
    TodoReturn getBatchNodeBottom2();
    TodoReturn getBatchNodePlayer();
    TodoReturn getBatchNodeText();
    TodoReturn getCapacityString();
    TodoReturn getEffectBatchNode();
    TodoReturn getEffectBatchNodeAdd();
    TodoReturn getGameLayer();
    TodoReturn getLevelSettings();
    TodoReturn getPlayer();
    TodoReturn getPlayer2();
    TodoReturn getToggleDataDirty();
    bool isGroupDisabledForObject(GameObject*);
    bool isGroupDisabledForObjectFull(GameObject*, cocos2d::CCArray*);
    TodoReturn parentForZLayer(int, bool, int);
    TodoReturn processColorObject(EffectGameObject*, int, cocos2d::CCDictionary*, float, GJEffectManager*);
    TodoReturn processOpacityObject(EffectGameObject*, cocos2d::CCDictionary*, float, GJEffectManager*);
    TodoReturn setupLayers();
    TodoReturn updateLayerCapacity(gd::string);
    TodoReturn updateLegacyLayerCapacity(int, int, int, int);

    virtual TodoReturn flipGravity(PlayerObject*, bool, bool);
    virtual TodoReturn timeForXPos(float);
    virtual TodoReturn calculateColorValues(EffectGameObject*, EffectGameObject*, int, float, ColorActionSprite*, GJEffectManager*);
    virtual void setToggleDataDirty(bool);
}

[[link(android)]]
class GJColorSetupLayer {
    // virtual ~GJColorSetupLayer();
    // GJColorSetupLayer();

    static GJColorSetupLayer* create(LevelSettingsObject*);

    TodoReturn getCloseOnSelect();
    TodoReturn getDelegate();
    bool init(LevelSettingsObject*);
    void onClose(cocos2d::CCObject* sender);
    void onColor(cocos2d::CCObject* sender);
    void onPage(cocos2d::CCObject* sender);
    TodoReturn showPage(int);
    TodoReturn updateSpriteColor(ColorChannelSprite*, cocos2d::CCLabelBMFont*, int);
    TodoReturn updateSpriteColors();

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn colorSelectClosed(ColorSelectPopup*);
    virtual void setCloseOnSelect(bool);
    virtual void setDelegate(ColorSetupDelegate*);
}

[[link(android)]]
class GJComment {
    // virtual ~GJComment();

    static GJComment* create();
    static GJComment* create(cocos2d::CCDictionary*);

    TodoReturn getAccountID();
    TodoReturn getComment();
    TodoReturn getCommentDate();
    TodoReturn getCommentID();
    TodoReturn getDeleted();
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
    virtual void setCommentDate(gd::string);
    virtual void setDeleted(bool);
}

[[link(android)]]
class GJCommentListLayer {
    // virtual ~GJCommentListLayer();

    static GJCommentListLayer* create(BoomListView*, char const*, cocos2d::ccColor4B, float, float);

    TodoReturn getListView();
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

    virtual TodoReturn draw();
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn keyBackClicked();
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
class GJEffectManager {
    // virtual ~GJEffectManager();

    static GJEffectManager* create();

    TodoReturn activeColorForIndex(int);
    TodoReturn activeOpacityForIndex(int);
    TodoReturn addAllInheritedColorActions(cocos2d::CCArray*);
    TodoReturn addGroupPulseEffect(PulseEffectAction*);
    TodoReturn calculateBaseActiveColors();
    TodoReturn calculateInheritedColor(int);
    TodoReturn calculateLightBGColor(cocos2d::ccColor3B);
    TodoReturn colorExists(int);
    TodoReturn colorForEffect(cocos2d::ccColor3B, cocos2d::ccHSVValue);
    TodoReturn colorForGroupID(int, cocos2d::ccColor3B const&, bool);
    TodoReturn colorForIndex(int);
    TodoReturn colorForPulseEffect(cocos2d::ccColor3B const&, PulseEffectAction*);
    TodoReturn createMoveCommand(cocos2d::CCPoint, int, float, int, bool, bool);
    TodoReturn getAllColorActions();
    TodoReturn getAllColorSprites();
    TodoReturn getAllDisabledGroups();
    TodoReturn getClkTimer();
    TodoReturn getColorAction(int);
    TodoReturn getColorSprite(int);
    TodoReturn getCurrentStateString();
    TodoReturn getDeltaMoveActionsDict();
    TodoReturn getLoadedMoveOffset();
    TodoReturn getMixedColor(cocos2d::ccColor3B, cocos2d::ccColor3B, float);
    TodoReturn getPlayerXVelocity();
    TodoReturn getPlayerYVelocity();
    TodoReturn getSaveString();
    TodoReturn getSpawnDelegate();
    TodoReturn hasBeenTriggered(int);
    TodoReturn hasPulseEffectForGroupID(int);
    bool isGroupEnabled(int);
    TodoReturn keyForGroupIDColor(int, cocos2d::ccColor3B const&, bool);
    TodoReturn loadState(gd::string);
    TodoReturn opacityForIndex(int);
    TodoReturn opacityModForGroup(int);
    TodoReturn prepareMoveActions(float);
    TodoReturn processColors();
    TodoReturn processCopyColorPulseActions();
    TodoReturn processInheritedColors();
    TodoReturn processPulseActions();
    TodoReturn removeAllPulseActions();
    TodoReturn removeColorAction(int);
    TodoReturn reset();
    TodoReturn resetColorCache();
    TodoReturn resetEffects();
    TodoReturn resetMoveActions();
    TodoReturn resetToggledGroups();
    TodoReturn resetTriggeredIDs();
    TodoReturn runOpacityActionOnGroup(int, float, float);
    TodoReturn runPulseEffect(int, bool, float, float, float, PulseEffectType, cocos2d::ccColor3B, cocos2d::ccHSVValue, int, bool, bool);
    void setColorAction(ColorAction*, int);
    TodoReturn setupFromString(gd::string);
    TodoReturn shouldBlend(int);
    TodoReturn spawnGroup(int, float);
    TodoReturn storeTriggeredID(int);
    TodoReturn toggleGroup(int, bool);
    TodoReturn traverseInheritanceChain(InheritanceNode*);
    TodoReturn updateActiveOpacityEffects();
    TodoReturn updateColorEffects(float);
    TodoReturn updateColors(cocos2d::ccColor3B, cocos2d::ccColor3B);
    TodoReturn updateEffects(float);
    TodoReturn updateOpacityEffects(float);
    TodoReturn updatePulseEffects(float);
    TodoReturn updateSpawnTriggers(float);
    TodoReturn wouldCreateLoop(InheritanceNode*, int);

    virtual bool init();
    virtual void setSpawnDelegate(SpawnTriggerDelegate*);
    virtual void setClkTimer(float);
    virtual void setPlayerXVelocity(float);
    virtual void setPlayerYVelocity(float);
}

[[link(android)]]
class GJFlyGroundLayer {
    // virtual ~GJFlyGroundLayer();

    static GJFlyGroundLayer* create();

    virtual bool init();
}

[[link(android)]]
class GJFriendRequest {
    // virtual ~GJFriendRequest();

    static GJFriendRequest* create();
    static GJFriendRequest* create(cocos2d::CCDictionary*);

    TodoReturn getComment();
    TodoReturn getDate();
    TodoReturn getFromAccountID();
    TodoReturn getIsRead();
    TodoReturn getRequestID();
    TodoReturn getToAccountID();

    virtual bool init();
    virtual void setRequestID(int);
    virtual void setFromAccountID(int);
    virtual void setToAccountID(int);
    virtual void setComment(gd::string);
    virtual void setDate(gd::string);
    virtual void setIsRead(bool);
}

[[link(android)]]
class GJGameLevel {
    // virtual ~GJGameLevel();
    // GJGameLevel();

    static GJGameLevel* create();
    static GJGameLevel* create(cocos2d::CCDictionary*, bool);

    TodoReturn areCoinsVerified();
    TodoReturn createWithCoder(DS_Dictionary*);
    TodoReturn dataLoaded(DS_Dictionary*);
    TodoReturn getAccountID();
    TodoReturn getAttempts();
    TodoReturn getAudioFileName();
    TodoReturn getAudioTrack();
    TodoReturn getAutoLevel();
    TodoReturn getAverageDifficulty();
    TodoReturn getCapacityString();
    TodoReturn getCoin1Verified();
    TodoReturn getCoin2Verified();
    TodoReturn getCoin3Verified();
    TodoReturn getCoinKey(int);
    TodoReturn getCoins();
    TodoReturn getCoinsVerified();
    TodoReturn getCompletes();
    TodoReturn getDemon();
    TodoReturn getDemonVotes();
    TodoReturn getDifficulty();
    TodoReturn getDislikes();
    TodoReturn getDontSave();
    TodoReturn getDownloads();
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
    TodoReturn getRequestedStars();
    TodoReturn getRequiredCoins();
    TodoReturn getShowedSongWarning();
    TodoReturn getSongID();
    TodoReturn getSongName();
    TodoReturn getStarRatings();
    TodoReturn getStarRatingsSum();
    TodoReturn getStars();
    TodoReturn getTempName();
    TodoReturn getTwoPlayerMode();
    TodoReturn getUnpackedLevelDescription();
    TodoReturn getUpdateDate();
    TodoReturn getUploadDate();
    TodoReturn getUserID();
    TodoReturn getUserName();
    TodoReturn getWasCheatReset();
    TodoReturn handleStatsConflict(GJGameLevel*);
    TodoReturn lengthKeyToString(int);
    TodoReturn levelWasAltered();
    TodoReturn levelWasSubmitted();
    TodoReturn savePercentage(int, bool);
    void setLastBuildPageForTab(int, int);
    void setNormalPercent(int);
    TodoReturn unverifyCoins();

    virtual TodoReturn encodeWithCoder(DS_Dictionary*);
    virtual TodoReturn canEncode();
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
    virtual void setAccountID(int);
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
    virtual void setWasCheatReset(bool);
    virtual void setPracticePercent(int);
    virtual void setLikes(int);
    virtual void setDislikes(int);
    virtual void setLevelLength(int);
    virtual void setFeatured(int);
    virtual void setDemon(bool);
    virtual void setStars(int);
    virtual void setAutoLevel(bool);
    virtual void setCoins(int);
    virtual void setCoinsVerified(int);
    virtual void setPassword(int);
    virtual void setOriginalLevel(int);
    virtual void setTwoPlayerMode(bool);
    virtual void setFailedPasswordAttempts(int);
    virtual void setCoin1Verified(int);
    virtual void setCoin2Verified(int);
    virtual void setCoin3Verified(int);
    virtual void setRequestedStars(int);
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
    virtual void setCapacityString(gd::string);
}

[[link(android)]]
class GJGarageLayer {
    // virtual ~GJGarageLayer();
    // GJGarageLayer();

    TodoReturn achievementForUnlock(int, UnlockType);
    TodoReturn checkBall(int);
    TodoReturn checkBird(int);
    TodoReturn checkColor(int, bool);
    TodoReturn checkDart(int);
    TodoReturn checkIcon(int);
    TodoReturn checkRobot(int);
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
    void onDartIcon(cocos2d::CCObject* sender);
    void onInfo(cocos2d::CCObject* sender);
    void onPlayerColor1(cocos2d::CCObject* sender);
    void onPlayerColor2(cocos2d::CCObject* sender);
    void onPlayerIcon(cocos2d::CCObject* sender);
    void onRobotIcon(cocos2d::CCObject* sender);
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
    TodoReturn toggleGlow();
    TodoReturn updateColorSelect(cocos2d::CCNode*, bool);
    TodoReturn updatePlayerColors();
    TodoReturn updatePlayerName(char const*);
    TodoReturn updatePlayerSelect(cocos2d::CCNode*);

    virtual bool init();
    virtual TodoReturn keyBackClicked();
    virtual TodoReturn textInputOpened(CCTextInputNode*);
    virtual TodoReturn textInputClosed(CCTextInputNode*);
    virtual TodoReturn textChanged(CCTextInputNode*);
    virtual TodoReturn listButtonBarSwitchedPage(ListButtonBar*, int);
    virtual TodoReturn updateRate();
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
    virtual void setRateSprite(cocos2d::CCSprite*);
}

[[link(android)]]
class GJGroundLayer {
    // virtual ~GJGroundLayer();

    static GJGroundLayer* create(int, int);

    TodoReturn createLine(int);
    TodoReturn deactivateGround();
    TodoReturn fadeInFinished();
    TodoReturn getGroundSprite3();
    TodoReturn getGroundSprite4();
    TodoReturn getGroundWidth();
    TodoReturn getGroundY();
    TodoReturn getIsActive();
    TodoReturn getLine();
    TodoReturn hideShadows();
    bool init(int, int);
    TodoReturn loadGroundSprites(int, bool);
    TodoReturn positionGround(float);
    TodoReturn updateGround01Color(cocos2d::ccColor3B);
    TodoReturn updateGround02Color(cocos2d::ccColor3B);
    TodoReturn updateGroundPos(cocos2d::CCPoint);
    TodoReturn updateGroundWidth();
    TodoReturn updateLineBlend(bool);

    virtual TodoReturn draw();
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
class GJListLayer {
    // virtual ~GJListLayer();

    static GJListLayer* create(BoomListView*, char const*, cocos2d::ccColor4B, float, float);

    TodoReturn getListView();
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
class GJMessageCell {
    // virtual ~GJMessageCell();
    GJMessageCell(char const*, float, float);

    void loadFromMessage(GJUserMessage*);
    TodoReturn markAsRead();
    void onDeleteMessage(cocos2d::CCObject* sender);
    void onToggle(cocos2d::CCObject* sender);
    void onViewMessage(cocos2d::CCObject* sender);
    void onViewProfile(cocos2d::CCObject* sender);
    TodoReturn updateBGColor(int);
    TodoReturn updateToggle();

    virtual bool init();
    virtual TodoReturn draw();
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
    virtual TodoReturn uploadActionFinished(int, int);
    virtual TodoReturn uploadActionFailed(int, int);
    virtual TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class GJMessagePopup {
    // virtual ~GJMessagePopup();
    // GJMessagePopup();

    static GJMessagePopup* create(GJUserMessage*);

    void blockUser();
    bool init(GJUserMessage*);
    void loadFromGJMessage(GJUserMessage*);
    void onBlock(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    void onRemove(cocos2d::CCObject* sender);
    void onReply(cocos2d::CCObject* sender);

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn downloadMessageFinished(GJUserMessage*);
    virtual TodoReturn downloadMessageFailed(int);
    virtual TodoReturn uploadActionFinished(int, int);
    virtual TodoReturn uploadActionFailed(int, int);
    virtual TodoReturn onClosePopup(UploadActionPopup*);
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class GJMoreGamesLayer {
    // virtual ~GJMoreGamesLayer();

    static GJMoreGamesLayer* create();

    TodoReturn getMoreGamesList();

    virtual TodoReturn customSetup();
}

[[link(android)]]
class GJMoveCommandLayer {
    // virtual ~GJMoveCommandLayer();

    static GJMoveCommandLayer* create(EffectGameObject*, cocos2d::CCArray*);

    TodoReturn determineStartValues();
    bool init(EffectGameObject*, cocos2d::CCArray*);
    void onClose(cocos2d::CCObject* sender);
    void onEasing(cocos2d::CCObject* sender);
    void onLockPlayerX(cocos2d::CCObject* sender);
    void onLockPlayerY(cocos2d::CCObject* sender);
    void onSpawnedByTrigger(cocos2d::CCObject* sender);
    void onTouchTriggered(cocos2d::CCObject* sender);
    void onUpdateGroupID(cocos2d::CCObject* sender);
    TodoReturn posFromSliderValue(float);
    TodoReturn sliderChanged(cocos2d::CCObject*);
    TodoReturn sliderValueFromPos(int);
    TodoReturn sliderXChanged(cocos2d::CCObject*);
    TodoReturn sliderYChanged(cocos2d::CCObject*);
    TodoReturn updateDuration();
    TodoReturn updateDurLabel(bool);
    TodoReturn updateEasingLabel();
    TodoReturn updateEditorLabel();
    TodoReturn updateMoveCommandEasing();
    TodoReturn updateMoveCommandPosX();
    TodoReturn updateMoveCommandPosY();
    TodoReturn updateSpawnedByTrigger();
    TodoReturn updateTargetGroupID();
    TodoReturn updateTextInputLabel();
    TodoReturn updateTouchTriggered();
    TodoReturn updateValueXLabel();
    TodoReturn updateValueYLabel();

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn textInputClosed(CCTextInputNode*);
    virtual TodoReturn textChanged(CCTextInputNode*);
    virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
    virtual TodoReturn textInputReturn(CCTextInputNode*);
}

[[link(android)]]
class GJObjectDecoder {
    // virtual ~GJObjectDecoder();

    static GJObjectDecoder* sharedDecoder();

    virtual bool init();
    virtual TodoReturn getDecodedObject(int, DS_Dictionary*);
}

[[link(android)]]
class GJOptionsLayer {
    // virtual ~GJOptionsLayer();

    static GJOptionsLayer* create();

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
    void onInfo(cocos2d::CCObject* sender);
    void onNextPage(cocos2d::CCObject* sender);
    void onPrevPage(cocos2d::CCObject* sender);
    void onToggle(cocos2d::CCObject* sender);
    TodoReturn pageKey(int);

    virtual bool init();
    virtual TodoReturn keyBackClicked();
    virtual TodoReturn setupOptions();
    virtual void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class GJRequestCell {
    // virtual ~GJRequestCell();
    GJRequestCell(char const*, float, float);

    void loadFromScore(GJUserScore*);
    TodoReturn markAsRead();
    void onDeleteRequest(cocos2d::CCObject* sender);
    void onToggle(cocos2d::CCObject* sender);
    void onViewFriendRequest(cocos2d::CCObject* sender);
    void onViewProfile(cocos2d::CCObject* sender);
    TodoReturn updateBGColor(int);
    TodoReturn updateToggle();

    virtual bool init();
    virtual TodoReturn draw();
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
    virtual TodoReturn uploadActionFinished(int, int);
    virtual TodoReturn uploadActionFailed(int, int);
    virtual TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class GJRobotSprite {
    // virtual ~GJRobotSprite();
    // GJRobotSprite();

    static GJRobotSprite* create();

    TodoReturn getFireBoostSprite();
    TodoReturn getHeadSprite();
    TodoReturn hideGlow();
    TodoReturn showGlow();
    TodoReturn updateColor01(cocos2d::ccColor3B);
    TodoReturn updateColor02(cocos2d::ccColor3B);
    TodoReturn updateColors();
    TodoReturn updateFrame(int);
    TodoReturn updateGlowColor(cocos2d::ccColor3B, bool);

    virtual bool init();
    virtual void setOpacity(unsigned char);
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
    virtual TodoReturn draw();
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void setDelegate(GJRotationControlDelegate*);
}

[[link(android)]]
class GJRotationControlDelegate {
    virtual TodoReturn angleChanged(float);
    virtual TodoReturn angleChangeBegin();
    virtual TodoReturn angleChangeEnded();
}

[[link(android)]]
class GJScaleControl {
    // virtual ~GJScaleControl();

    static GJScaleControl* create();

    TodoReturn finishTouch();
    TodoReturn getDelegate();
    TodoReturn loadValues(GameObject*, cocos2d::CCArray*);
    TodoReturn scaleFromValue(float);
    TodoReturn sliderChanged(cocos2d::CCObject*);
    TodoReturn updateLabel(float);
    TodoReturn valueFromScale(float);

    virtual bool init();
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void setDelegate(GJScaleControlDelegate*);
}

[[link(android)]]
class GJScaleControlDelegate {
    virtual TodoReturn scaleChanged(float);
    virtual TodoReturn scaleChangeBegin();
    virtual TodoReturn scaleChangeEnded();
}

[[link(android)]]
class GJScoreCell {
    // virtual ~GJScoreCell();
    GJScoreCell(char const*, float, float);

    void loadFromScore(GJUserScore*);
    void onBan(cocos2d::CCObject* sender);
    void onMoreLevels(cocos2d::CCObject* sender);
    void onViewProfile(cocos2d::CCObject* sender);
    TodoReturn updateBGColor(int);

    virtual bool init();
    virtual TodoReturn draw();
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class GJSearchObject {
    // virtual ~GJSearchObject();

    static GJSearchObject* create(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool);
    static GJSearchObject* create(SearchType, gd::string);
    static GJSearchObject* create(SearchType);

    TodoReturn createFromKey(char const*);
    TodoReturn getCoins();
    TodoReturn getCustomSong();
    TodoReturn getDifficultyStr();
    TodoReturn getFeatured();
    TodoReturn getKey();
    TodoReturn getLengthStr();
    char const* getNextPageKey();
    GJSearchObject* getNextPageObject();
    TodoReturn getNoStar();
    TodoReturn getOriginal();
    TodoReturn getPage();
    GJSearchObject* getPrevPageObject();
    TodoReturn getSearchKey(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool);
    TodoReturn getSong();
    TodoReturn getSongFilter();
    TodoReturn getStar();
    TodoReturn getString();
    TodoReturn getTotal();
    TodoReturn getTwoP();
    TodoReturn getType();
    TodoReturn getUncompleted();
    bool init(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool);

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
    virtual void setCoins(bool);
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
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class GJSpecialColorSelect {
    // virtual ~GJSpecialColorSelect();

    static GJSpecialColorSelect* create(int, GJSpecialColorSelectDelegate*);

    TodoReturn getButtonByTag(int);
    TodoReturn highlightSelected(ButtonSprite*);
    bool init(int, GJSpecialColorSelectDelegate*);
    void onClose(cocos2d::CCObject* sender);
    void onSelectColor(cocos2d::CCObject* sender);
    TodoReturn textForColorIdx(int);

    virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class GJSpecialColorSelectDelegate {
    virtual TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
}

[[link(android)]]
class GJSpriteColor {
    // virtual ~GJSpriteColor();

    static GJSpriteColor* create();

    TodoReturn getBaseOpacityMod();
    TodoReturn getColorMode();
    TodoReturn getCustomBlend();
    TodoReturn getCustomColor();
    TodoReturn getCustomColorMode();
    TodoReturn getCustomOpacityMod();
    TodoReturn getDefaultColorMode();
    TodoReturn getEnableHSV();
    TodoReturn getHSVValue();
    TodoReturn resetCustomColorMode();
    void setCustomColorMode(int);
    void setDefaultColorMode(int);

    virtual bool init();
    virtual void setCustomOpacityMod(float);
    virtual void setHSVValue(cocos2d::ccHSVValue);
    virtual void setEnableHSV(bool);
    virtual void setBaseOpacityMod(float);
    virtual void setCustomBlend(bool);
    virtual void setCustomColor(cocos2d::ccColor3B);
}

[[link(android)]]
class GJUserCell {
    // virtual ~GJUserCell();
    GJUserCell(char const*, float, float);

    void loadFromScore(GJUserScore*);
    void onCancelFriendRequest(cocos2d::CCObject* sender);
    void onRemoveFriend(cocos2d::CCObject* sender);
    void onSendMessage(cocos2d::CCObject* sender);
    void onUnblockUser(cocos2d::CCObject* sender);
    void onViewFriendRequest(cocos2d::CCObject* sender);
    void onViewProfile(cocos2d::CCObject* sender);
    TodoReturn updateBGColor(int);

    virtual bool init();
    virtual TodoReturn draw();
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
    virtual TodoReturn uploadActionFinished(int, int);
    virtual TodoReturn uploadActionFailed(int, int);
    virtual TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class GJUserMessage {
    // virtual ~GJUserMessage();

    static GJUserMessage* create();
    static GJUserMessage* create(cocos2d::CCDictionary*);

    TodoReturn getAccountID();
    TodoReturn getBody();
    TodoReturn getDate();
    TodoReturn getIsRead();
    TodoReturn getIsSender();
    TodoReturn getIsToggled();
    TodoReturn getMessageID();
    TodoReturn getSubject();
    TodoReturn getUserID();
    TodoReturn getUserName();

    virtual bool init();
    virtual void setMessageID(int);
    virtual void setAccountID(int);
    virtual void setUserID(int);
    virtual void setSubject(gd::string);
    virtual void setBody(gd::string);
    virtual void setUserName(gd::string);
    virtual void setDate(gd::string);
    virtual void setIsRead(bool);
    virtual void setIsSender(bool);
    virtual void setIsToggled(bool);
}

[[link(android)]]
class GJUserScore {
    // virtual ~GJUserScore();
    // GJUserScore();

    static GJUserScore* create();
    static GJUserScore* create(cocos2d::CCDictionary*);

    TodoReturn getAccIcon();
    TodoReturn getAccountID();
    TodoReturn getBall();
    TodoReturn getBird();
    TodoReturn getCoins();
    TodoReturn getColor1();
    TodoReturn getColor2();
    TodoReturn getDart();
    TodoReturn getDateString();
    TodoReturn getDemons();
    TodoReturn getFriendReqSetting();
    TodoReturn getFriendStatus();
    TodoReturn getGlobalRank();
    TodoReturn getGlow();
    TodoReturn getIcon();
    TodoReturn getIconType();
    TodoReturn getIsNewRelation();
    TodoReturn getIsToggled();
    TodoReturn getLevels();
    TodoReturn getMessageSetting();
    TodoReturn getNewFriends();
    TodoReturn getNewMessages();
    TodoReturn getNewRequests();
    TodoReturn getRank();
    TodoReturn getRobot();
    TodoReturn getScoreType();
    TodoReturn getShip();
    TodoReturn getSpecial();
    TodoReturn getStars();
    TodoReturn getStreak();
    TodoReturn getUserCoins();
    TodoReturn getUserID();
    TodoReturn getUserName();
    TodoReturn getUserUDID();
    TodoReturn getYtUsername();
    bool isCurrentUser();
    TodoReturn mergeWithScore(GJUserScore*);

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
    virtual void setUserCoins(int);
    virtual void setIcon(int);
    virtual void setColor1(int);
    virtual void setColor2(int);
    virtual void setSpecial(int);
    virtual void setIconType(int);
    virtual void setMessageSetting(int);
    virtual void setFriendReqSetting(int);
    virtual void setYtUsername(gd::string);
    virtual void setAccIcon(int);
    virtual void setShip(int);
    virtual void setBall(int);
    virtual void setBird(int);
    virtual void setDart(int);
    virtual void setRobot(int);
    virtual void setStreak(int);
    virtual void setGlow(bool);
    virtual void setGlobalRank(int);
    virtual void setFriendStatus(GJFriendStatus);
    virtual void setNewMessages(int);
    virtual void setNewRequests(int);
    virtual void setNewFriends(int);
    virtual void setIsNewRelation(bool);
    virtual void setIsToggled(bool);
    virtual void setDateString(gd::string);
}

[[link(android)]]
class GJWriteMessagePopup {
    // virtual ~GJWriteMessagePopup();
    // GJWriteMessagePopup();

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

    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn keyBackClicked();
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
class GManager {
    // virtual ~GManager();

    TodoReturn getCompressedSaveString();
    TodoReturn getQuickSave();
    TodoReturn getSaveString();
    TodoReturn load();
    TodoReturn loadDataFromFile(gd::string);
    void loadFromCompressedString(gd::string);
    void loadFromString(gd::string);
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
    virtual TodoReturn draw();
}

[[link(android)]]
class GroupCommandObject {
    // virtual ~GroupCommandObject();
    // GroupCommandObject();

    static GroupCommandObject* create();

    TodoReturn createFromString(gd::string);
    TodoReturn easeToText(int);
    TodoReturn getDeltaTime();
    TodoReturn getDeltaValue();
    TodoReturn getDuration();
    TodoReturn getEasedAction(cocos2d::CCActionInterval*, int);
    TodoReturn getEasing();
    TodoReturn getIsFinished();
    TodoReturn getLastRound();
    TodoReturn getLockX();
    TodoReturn getLockY();
    TodoReturn getSaveString();
    TodoReturn getTarget();
    TodoReturn getTargetGroupID();
    TodoReturn getTotalValue();
    TodoReturn getValue();
    TodoReturn resetDelta();
    TodoReturn runMoveCommand(cocos2d::CCPoint, float, int, bool, bool);
    TodoReturn step(float);

    virtual bool init();
    virtual TodoReturn updateTweenAction(float, char const*);
    virtual void setTarget(cocos2d::CCPoint);
    virtual void setEasing(int);
    virtual void setDuration(float);
    virtual void setDeltaTime(float);
    virtual void setTargetGroupID(int);
    virtual void setValue(cocos2d::CCPoint);
    virtual void setDeltaValue(cocos2d::CCPoint);
    virtual void setTotalValue(cocos2d::CCPoint);
    virtual void setIsFinished(bool);
    virtual void setLastRound(bool);
    virtual void setLockX(bool);
    virtual void setLockY(bool);
}

[[link(android)]]
class HardStreak {
    // virtual ~HardStreak();

    static HardStreak* create();

    TodoReturn addPoint(cocos2d::CCPoint);
    TodoReturn clearBehindXPos(float);
    void firstSetup();
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
class HSVWidgetPopup {
    // virtual ~HSVWidgetPopup();

    static HSVWidgetPopup* create(cocos2d::ccHSVValue, HSVWidgetPopupDelegate*, gd::string);

    bool init(cocos2d::ccHSVValue, HSVWidgetPopupDelegate*, gd::string);
    void onClose(cocos2d::CCObject* sender);

    virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class HSVWidgetPopupDelegate {
    virtual TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue);
}

[[link(android)]]
class InfoAlertButton {
    // virtual ~InfoAlertButton();

    static InfoAlertButton* create(gd::string, gd::string, float);

    bool init(gd::string, gd::string, float);

    virtual TodoReturn activate();
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
    void setupLevelInfo();
    TodoReturn toggleCommentMode(cocos2d::CCNode*);
    TodoReturn updateCommentModeButtons();
    TodoReturn updateLevelsLabel();

    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn keyBackClicked();
    virtual TodoReturn show();
    virtual TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*);
    virtual TodoReturn loadCommentsFailed(char const*);
    virtual TodoReturn setupPageInfo(gd::string, char const*);
    virtual TodoReturn commentUploadFinished(int);
    virtual TodoReturn commentUploadFailed(int);
    virtual TodoReturn updateUserScoreFinished();
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class InheritanceNode {
    // virtual ~InheritanceNode();

    static InheritanceNode* create(int, InheritanceNode*);

    TodoReturn getIndex();
    TodoReturn getIsStart();
    TodoReturn getTarget();
    bool init(int, InheritanceNode*);

    virtual void setIndex(int);
    virtual void setTarget(InheritanceNode*);
    virtual void setIsStart(bool);
}

[[link(android)]]
class KeybindingsLayer {
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

    virtual bool init();
    virtual TodoReturn keyBackClicked();
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
    void firstSetup();
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
    TodoReturn refreshTabs();
    TodoReturn scene(LeaderboardState);
    TodoReturn selectLeaderboard(LeaderboardState);
    TodoReturn setupLevelBrowser(cocos2d::CCArray*);
    TodoReturn setupTabs();
    TodoReturn toggleTabButtons();

    virtual TodoReturn keyBackClicked();
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
    void onRefresh(cocos2d::CCObject* sender);
    TodoReturn scene(GJSearchObject*);
    void setSearchObject(GJSearchObject*);
    TodoReturn setupLevelBrowser(cocos2d::CCArray*);
    TodoReturn updateLevelsLabel();

    virtual TodoReturn onEnter();
    virtual TodoReturn onEnterTransitionDidFinish();
    virtual TodoReturn keyBackClicked();
    virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
    virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*);
    virtual TodoReturn loadLevelsFailed(char const*);
    virtual TodoReturn setupPageInfo(gd::string, char const*);
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class LevelCell {
    // virtual ~LevelCell();
    LevelCell(char const*, float, float);

    TodoReturn loadCustomLevelCell();
    void loadFromLevel(GJGameLevel*);
    TodoReturn loadLocalLevelCell();
    void onClick(cocos2d::CCObject* sender);
    void onViewProfile(cocos2d::CCObject* sender);
    TodoReturn updateBGColor(int);

    virtual bool init();
    virtual TodoReturn draw();
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
    TodoReturn addObjectsRecursiveFromArray(cocos2d::CCArray*, int);
    TodoReturn addSpecial(GameObject*);
    TodoReturn addToGroup(GameObject*, int);
    TodoReturn addToGroup(GameObject*);
    TodoReturn addToRedoList(UndoObject*);
    TodoReturn addToSection(GameObject*);
    TodoReturn addToUndoList(UndoObject*, bool);
    TodoReturn animateInDualGround(GameObject*, float, bool);
    TodoReturn breakApartTextObject(GameObject*);
    TodoReturn canPasteState();
    TodoReturn checkCollisions(PlayerObject*, float);
    TodoReturn checkSpawnObjects();
    TodoReturn copyObjectState(GameObject*);
    TodoReturn createBackground();
    TodoReturn createGroundLayer();
    TodoReturn createObject(int, cocos2d::CCPoint, bool);
    TodoReturn createObjectsFromSetup(gd::string);
    TodoReturn createObjectsFromString(gd::string, bool);
    TodoReturn dirtifyTriggers();
    TodoReturn enterDualMode(GameObject*, bool);
    TodoReturn fastUpdateDisabledGroups();
    TodoReturn fullUpdateDisabledGroups();
    TodoReturn getAllObjects();
    TodoReturn getClkTimer();
    TodoReturn getCoinCount();
    TodoReturn getDontApplyLayerFilter();
    TodoReturn getDualMode();
    TodoReturn getGridLayer();
    TodoReturn getGridPos(cocos2d::CCPoint);
    TodoReturn getGroundHeightForMode(int);
    TodoReturn getGroup(int);
    TodoReturn getGroupIDFilter();
    TodoReturn getLastObjectX();
    TodoReturn getLevel();
    TodoReturn getLevelDistance();
    TodoReturn getLevelString();
    TodoReturn getMaxPortalY();
    TodoReturn getMinPortalY();
    TodoReturn getNextColorChannel();
    TodoReturn getNextFreeGroupID();
    TodoReturn getObjectCount();
    TodoReturn getObjectRect(GameObject*, bool);
    TodoReturn getOldLevelString();
    TodoReturn getOtherPlayer(PlayerObject*);
    TodoReturn getPlayerState();
    TodoReturn getRelativeOffset(GameObject*);
    TodoReturn getSectionCount();
    TodoReturn getUILayer();
    TodoReturn handleAction(bool, cocos2d::CCArray*);
    TodoReturn hasAction(bool);
    bool init(GJGameLevel*);
    TodoReturn objectAtPosition(cocos2d::CCPoint);
    TodoReturn objectIntersectsCircle(GameObject*, GameObject*);
    TodoReturn objectMoved(GameObject*);
    TodoReturn objectsAtPosition(cocos2d::CCPoint);
    TodoReturn objectsInRect(cocos2d::CCRect, bool);
    TodoReturn onPausePlaytest();
    TodoReturn onPlaytest();
    TodoReturn onResumePlaytest();
    TodoReturn onStopPlaytest();
    TodoReturn pasteAtributeState(GameObject*, cocos2d::CCArray*);
    TodoReturn pasteColorState(GameObject*, cocos2d::CCArray*);
    TodoReturn playerWillSwitchMode(PlayerObject*, GameObject*);
    TodoReturn playMusic();
    TodoReturn preloadMoveActions();
    TodoReturn processLoadedMoveActions();
    TodoReturn processMoveActionsStep();
    TodoReturn pushButton(int, bool);
    TodoReturn recreateGroups();
    TodoReturn redoLastAction();
    TodoReturn releaseButton(int, bool);
    TodoReturn removeAllObjects();
    TodoReturn removeAllObjectsOfType(int);
    TodoReturn removeBackground();
    TodoReturn removeFromGroup(GameObject*, int);
    TodoReturn removeFromGroup(GameObject*);
    TodoReturn removeGroundLayer();
    TodoReturn removeObject(GameObject*, bool);
    TodoReturn removeObjectFromSection(GameObject*);
    TodoReturn removePlayer2();
    TodoReturn removeSpecial(GameObject*);
    TodoReturn reorderObjectSection(GameObject*);
    TodoReturn resetMovingObjects();
    TodoReturn resetObjectVector();
    TodoReturn resetUnusedColorChannels();
    TodoReturn rotationForSlopeNearObject(GameObject*);
    TodoReturn scene(GJGameLevel*);
    TodoReturn sectionForPos(float);
    void setStartPosObject(StartPosObject*);
    TodoReturn setupLevelStart(LevelSettingsObject*);
    TodoReturn shouldBlend(int);
    TodoReturn sortBatchnodeChildren(float);
    TodoReturn spawnGroup(int, float);
    TodoReturn spawnPlayer2();
    TodoReturn switchToFlyMode(PlayerObject*, GameObject*, bool, int);
    TodoReturn switchToRobotMode(PlayerObject*, GameObject*, bool);
    TodoReturn switchToRollMode(PlayerObject*, GameObject*, bool);
    TodoReturn toggleDualMode(GameObject*, bool, PlayerObject*, bool);
    TodoReturn toggleGrid(bool);
    TodoReturn toggleGround(bool);
    TodoReturn triggerMoveCommand(EffectGameObject*);
    TodoReturn typeExistsAtPosition(int, cocos2d::CCPoint, bool, bool, float);
    TodoReturn undoLastAction();
    TodoReturn updateDualGround(PlayerObject*, int, bool);
    TodoReturn updateEditorMode();
    TodoReturn updateGameObjects();
    TodoReturn updateGround(float);
    TodoReturn updateGroundWidth();
    TodoReturn updateLevelColors();
    TodoReturn updateLevelFont(int);
    TodoReturn updateOBB2(cocos2d::CCRect);
    TodoReturn updateTimeMod(float, bool);
    TodoReturn updateVisibility(float);
    TodoReturn validGroup(GameObject*);
    TodoReturn willSwitchToMode(int, PlayerObject*);

    virtual TodoReturn update(float);
    virtual TodoReturn draw();
    virtual TodoReturn flipGravity(PlayerObject*, bool, bool);
    virtual TodoReturn timeForXPos(float);
    virtual TodoReturn calculateColorValues(EffectGameObject*, EffectGameObject*, int, float, ColorActionSprite*, GJEffectManager*);
    virtual TodoReturn levelSettingsUpdated();
    virtual void setDontApplyLayerFilter(bool);
    virtual void setGroupIDFilter(int);
    virtual void setObjectCount(int);
}

[[link(android)]]
class LevelFeatureLayer {
    // virtual ~LevelFeatureLayer();

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

    virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class LevelInfoLayer {
    // virtual ~LevelInfoLayer();
    // LevelInfoLayer();

    static LevelInfoLayer* create(GJGameLevel*);

    TodoReturn confirmClone(cocos2d::CCObject*);
    TodoReturn confirmDelete(cocos2d::CCObject*);
    TodoReturn confirmOwnerDelete(cocos2d::CCObject*);
    void downloadLevel();
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
    void onRateStarsMod(cocos2d::CCObject* sender);
    void onUpdate(cocos2d::CCObject* sender);
    void onViewProfile(cocos2d::CCObject* sender);
    TodoReturn playStep2();
    TodoReturn playStep3();
    TodoReturn scene(GJGameLevel*);
    void setupLevelInfo();
    void setupProgressBars();
    TodoReturn shouldDownloadLevel();
    TodoReturn showSongWarning();
    TodoReturn showUpdateAlert(UpdateResponse);
    TodoReturn tryCloneLevel(cocos2d::CCObject*);
    TodoReturn updateLabelValues();
    TodoReturn updateSideButtons();

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
    virtual TodoReturn numberInputClosed(NumberInputLayer*);
    virtual TodoReturn levelDownloadFinished(GJGameLevel*);
    virtual TodoReturn levelDownloadFailed(int);
    virtual TodoReturn levelUpdateFinished(GJGameLevel*, UpdateResponse);
    virtual TodoReturn levelUpdateFailed(int);
    virtual TodoReturn levelDeleteFinished(int);
    virtual TodoReturn levelDeleteFailed(int);
    virtual TodoReturn rateLevelClosed();
    virtual TodoReturn likedItem(LikeItemType, int, bool);
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
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

    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn registerWithTouchDispatcher();
}

[[link(android)]]
class LevelSearchLayer {
    // virtual ~LevelSearchLayer();

    static LevelSearchLayer* create();

    TodoReturn checkDiff(int);
    TodoReturn checkTime(int);
    TodoReturn clearFilters();
    TodoReturn confirmClearFilters(cocos2d::CCObject*);
    char const* getDiffKey(int);
    TodoReturn getLevelLenKey();
    TodoReturn getSearchDiffKey();
    TodoReturn getSearchObject(SearchType, gd::string);
    TodoReturn getTimeKey(int);
    void onBack(cocos2d::CCObject* sender);
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
    void onSearchUser(cocos2d::CCObject* sender);
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
    virtual TodoReturn keyBackClicked();
    virtual TodoReturn textInputOpened(CCTextInputNode*);
    virtual TodoReturn textInputClosed(CCTextInputNode*);
    virtual TodoReturn textChanged(CCTextInputNode*);
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
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

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
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

    static LevelSettingsLayer* create(LevelSettingsObject*, LevelEditorLayer*);

    TodoReturn audioNext(cocos2d::CCObject*);
    TodoReturn audioPrevious(cocos2d::CCObject*);
    TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
    TodoReturn getDelegate();
    bool init(LevelSettingsObject*, LevelEditorLayer*);
    void on3DLine(cocos2d::CCObject* sender);
    void onBG(cocos2d::CCObject* sender);
    void onBGArt(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    void onCol(cocos2d::CCObject* sender);
    void onDualMode(cocos2d::CCObject* sender);
    void onG(cocos2d::CCObject* sender);
    void onG2(cocos2d::CCObject* sender);
    void onGArt(cocos2d::CCObject* sender);
    void onGravityFlipped(cocos2d::CCObject* sender);
    void onLine(cocos2d::CCObject* sender);
    void onMiniMode(cocos2d::CCObject* sender);
    void onObj(cocos2d::CCObject* sender);
    void onOpenCustomSong(cocos2d::CCObject* sender);
    void onSelectFont(cocos2d::CCObject* sender);
    void onSelectMode(cocos2d::CCObject* sender);
    void onSelectSpeed(cocos2d::CCObject* sender);
    void onSongMode(cocos2d::CCObject* sender);
    void onTwoPlayerMode(cocos2d::CCObject* sender);
    void onTwoPlayerModeInfo(cocos2d::CCObject* sender);
    TodoReturn selectSong(int);
    TodoReturn showCustomSongSelect();
    TodoReturn showPicker(int, ColorAction*);
    TodoReturn updateAudioLabel();
    TodoReturn updateColorSprite(ColorChannelSprite*);
    TodoReturn updateColorSprites();

    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn keyBackClicked();
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
    virtual TodoReturn colorSelectClosed(ColorSelectPopup*);
    virtual TodoReturn customSongLayerClosed();
    virtual TodoReturn selectArtClosed(SelectArtLayer*);
    virtual void setDelegate(LevelSettingsDelegate*);
}

[[link(android)]]
class LevelSettingsObject {
    // virtual ~LevelSettingsObject();

    static LevelSettingsObject* create();

    TodoReturn getBGIdx();
    TodoReturn getColorManager();
    TodoReturn getFadeIn();
    TodoReturn getFadeOut();
    TodoReturn getFontIdx();
    TodoReturn getGIdx();
    TodoReturn getGLineIdx();
    TodoReturn getGravityFlipped();
    TodoReturn getIsLimited();
    TodoReturn getLastColorPage();
    TodoReturn getLevel();
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

    virtual bool init();
    virtual void setColorManager(GJEffectManager*);
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
    virtual void setFontIdx(int);
    virtual void setIsLimited(bool);
    virtual void setGravityFlipped(bool);
    virtual void setLevel(GJGameLevel*);
    virtual void setSongString(gd::string);
    virtual void setSongChanged(bool);
    virtual void setLastColorPage(int);
    virtual void setGLineIdx(int);
}

[[link(android)]]
class LevelTools {
    TodoReturn artistForAudio(int);
    TodoReturn base64DecodeString(gd::string);
    TodoReturn base64EncodeString(gd::string);
    TodoReturn createOldStarLevelDict();
    TodoReturn createStarLevelDict();
    TodoReturn createStarPackDict();
    TodoReturn distanceFromXPosForDuration(float, float, float, cocos2d::CCArray*, int);
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
    TodoReturn verifyLevelIntegrity(gd::string, int);
    TodoReturn xPosForTime(float, cocos2d::CCArray*, int);
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

    static LikeItemLayer* create(LikeItemType, int, int);

    TodoReturn getDelegate();
    bool init(LikeItemType, int, int);
    void onClose(cocos2d::CCObject* sender);
    void onDislike(cocos2d::CCObject* sender);
    void onLike(cocos2d::CCObject* sender);
    TodoReturn triggerLike(bool);

    virtual TodoReturn keyBackClicked();
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

    void loadFromObject(cocos2d::CCObject*, int, int, int);
    TodoReturn updateBGColor(int);

    virtual bool init();
    virtual TodoReturn draw();
}

[[link(android)]]
class LoadingCircle {
    // virtual ~LoadingCircle();

    static LoadingCircle* create();

    TodoReturn fadeAndRemove();
    TodoReturn getCircle();
    TodoReturn getDarkOverlay();
    TodoReturn getTargetScene();
    TodoReturn show();

    virtual bool init();
    virtual TodoReturn draw();
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn registerWithTouchDispatcher();
    virtual void setTargetScene(cocos2d::CCNode*);
    virtual void setDarkOverlay(bool);
}

[[link(android)]]
class LoadingLayer {
    // virtual ~LoadingLayer();

    static LoadingLayer* create(bool);

    TodoReturn getLoadingString();
    bool init(bool);
    TodoReturn loadAssets();
    TodoReturn loadingFinished();
    TodoReturn scene(bool);
    TodoReturn updateProgress(int);
}

[[link(android)]]
class LocalLevelManager {
    // virtual ~LocalLevelManager();

    static LocalLevelManager* sharedState();

    TodoReturn getAllLevelsInDict();
    TodoReturn getAllLevelsWithName(gd::string);
    TodoReturn getLevelsInNameGroups();
    TodoReturn getLoadString(int);
    TodoReturn getLocalLevels();
    TodoReturn getMainLevelString(int);
    TodoReturn markLevelsAsUnmodified();
    TodoReturn moveLevelToTop(GJGameLevel*);
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

    void loadFromMapPack(GJMapPack*);
    void onClaimReward(cocos2d::CCObject* sender);
    void onClick(cocos2d::CCObject* sender);
    TodoReturn playCompleteEffect();
    TodoReturn reloadCell();
    TodoReturn updateBGColor(int);

    virtual bool init();
    virtual TodoReturn draw();
}

[[link(android)]]
class MenuGameLayer {
    // virtual ~MenuGameLayer();
    // MenuGameLayer();

    static MenuGameLayer* create();

    TodoReturn destroyPlayer();
    TodoReturn getBGColor(int);
    TodoReturn resetPlayer();
    TodoReturn tryJump(float);
    TodoReturn updateColor(float);
    TodoReturn updateColors();

    virtual TodoReturn update(float);
    virtual bool init();
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn registerWithTouchDispatcher();
}

[[link(android)]]
class MenuLayer {
    // virtual ~MenuLayer();

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
    void onMyProfile(cocos2d::CCObject* sender);
    void onNewgrounds(cocos2d::CCObject* sender);
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
    TodoReturn scene(bool);
    TodoReturn showGCQuestion();
    TodoReturn showPirateMessage();
    TodoReturn syncPlatformAchievements(float);
    TodoReturn tryShowAd(float);
    TodoReturn updateUserProfileButton();
    TodoReturn willClose();

    virtual bool init();
    virtual TodoReturn keyBackClicked();
    virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
    virtual TodoReturn googlePlaySignedIn();
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class MessageListDelegate {
    virtual TodoReturn loadMessagesFinished(cocos2d::CCArray*, char const*);
    virtual TodoReturn loadMessagesFailed(char const*, GJErrorCode);
    virtual TodoReturn forceReloadMessages(bool);
    virtual TodoReturn setupPageInfo(gd::string, char const*);
}

[[link(android)]]
class MessagesProfilePage {
    // virtual ~MessagesProfilePage();
    // MessagesProfilePage();

    static MessagesProfilePage* create(bool);

    TodoReturn deleteSelected();
    bool init(bool);
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

    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn keyBackClicked();
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
    virtual TodoReturn keyBackClicked();
    virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
    virtual TodoReturn textInputReturn(CCTextInputNode*);
    virtual TodoReturn googlePlaySignedIn();
}

[[link(android)]]
class MoreSearchLayer {
    // virtual ~MoreSearchLayer();

    static MoreSearchLayer* create();

    TodoReturn audioNext(cocos2d::CCObject*);
    TodoReturn audioPrevious(cocos2d::CCObject*);
    TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
    void onClose(cocos2d::CCObject* sender);
    void onCoins(cocos2d::CCObject* sender);
    void onFeatured(cocos2d::CCObject* sender);
    void onFollowed(cocos2d::CCObject* sender);
    void onFriends(cocos2d::CCObject* sender);
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
    virtual TodoReturn keyBackClicked();
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
    virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class MultilineBitmapFont {
    // virtual ~MultilineBitmapFont();
    // MultilineBitmapFont();

    TodoReturn createWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int, bool);
    TodoReturn getIgnoreColorCode();
    TodoReturn getSizeWidth();
    TodoReturn getTextHeight();
    TodoReturn getTextPos();
    TodoReturn getTextWidth();
    TodoReturn initWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int, bool);
    TodoReturn readColorInfo(gd::string);
    TodoReturn stringWithMaxWidth(gd::string, float, float);

    virtual void setOpacity(unsigned char);
    virtual void setIgnoreColorCode(bool);
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

    void addDLToActive(char const*, cocos2d::CCObject*);
    void addDLToActive(char const*);
    TodoReturn addMusicDownloadDelegate(MusicDownloadDelegate*);
    TodoReturn addSongObjectFromString(gd::string);
    TodoReturn clearSong(int);
    TodoReturn clearUnusedSongs();
    TodoReturn createSongsInfo(gd::string);
    TodoReturn dataLoaded(DS_Dictionary*);
    void deleteSong(int);
    TodoReturn downloadSong(int);
    TodoReturn downloadSongFailed(int, GJSongError);
    TodoReturn downloadSongFinished(SongInfoObject*);
    TodoReturn encodeDataTo(DS_Dictionary*);
    void firstSetup();
    TodoReturn getAllSongs();
    cocos2d::CCObject* getDLObject(char const*);
    TodoReturn getDownloadedSongs();
    TodoReturn getDownloadedSongsDict();
    TodoReturn getDownloadProgress(int);
    TodoReturn getSongDownloadKey(int);
    void getSongInfo(int, bool);
    TodoReturn getSongInfoKey(int);
    TodoReturn getSongInfoObject(int);
    TodoReturn getSongPriority();
    void handleIt(bool, gd::string, gd::string, GJHttpType);
    void handleItDelayed(bool, gd::string, gd::string, GJHttpType);
    void handleItND(cocos2d::CCNode*, void*);
    TodoReturn incrementPriorityForSong(int);
    bool isDLActive(char const*);
    bool isRunningActionForSongID(int);
    bool isSongDownloaded(int);
    void limitDownloadedSongs();
    TodoReturn loadSongInfoFailed(int, GJSongError);
    TodoReturn loadSongInfoFinished(SongInfoObject*);
    TodoReturn onDownloadSongCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
    TodoReturn onGetSongInfoCompleted(gd::string, gd::string);
    TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
    TodoReturn pathForSong(int);
    TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
    TodoReturn removeDLFromActive(char const*);
    TodoReturn removeMusicDownloadDelegate(MusicDownloadDelegate*);
    static cocos2d::CCDictionary* responseToDict(gd::string, char const*);
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
    virtual TodoReturn keyBackClicked();
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
    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn keyBackClicked();
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
    TodoReturn purgeObjectManager();
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

    virtual bool init();
}

[[link(android)]]
class OpacityEffectAction {
    // virtual ~OpacityEffectAction();

    static OpacityEffectAction* create(float, float, float, int);

    TodoReturn createFromString(gd::string);
    TodoReturn getDeltaTime();
    TodoReturn getOpacity();
    TodoReturn getSaveString();
    TodoReturn getTargetID();
    bool init(float, float, float, int);
    TodoReturn step(float);

    virtual void setDeltaTime(float);
    virtual void setTargetID(int);
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
    void onSecretVault(cocos2d::CCObject* sender);
    void onSoundtracks(cocos2d::CCObject* sender);
    void onSupport(cocos2d::CCObject* sender);
    void onVideo(cocos2d::CCObject* sender);
    TodoReturn sfxSliderChanged(cocos2d::CCObject*);
    TodoReturn tryEnableRecord();

    virtual TodoReturn customSetup();
    virtual TodoReturn layerHidden();
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
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
    void onTime(cocos2d::CCObject* sender);
    void setupProgressBars();
    TodoReturn sfxSliderChanged(cocos2d::CCObject*);
    TodoReturn tryShowBanner(float);

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
    virtual TodoReturn customSetup();
    virtual TodoReturn keyUp(cocos2d::enumKeyCodes);
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
    bool isControllerConnected();
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
    TodoReturn getRobotMode();
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
    virtual void setRobotMode(bool);
    virtual void setCanJump(bool);
    virtual void setGhostType(int);
    virtual void setIsScaled(bool);
    virtual void setTimeMod(float);
}

[[link(android)]]
class PlayerObject : GameObject {
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
    TodoReturn collidedWithSlope(float, GameObject*, bool);
    TodoReturn convertToClosestRotation(float);
    TodoReturn copyAttributes(PlayerObject*);
    TodoReturn deactivateParticle();
    TodoReturn deactivateStreak();
    TodoReturn fadeOutStreak2(float);
    TodoReturn flipGravity(bool, bool);
    TodoReturn flipMod();
    TodoReturn getAudioScale();
    TodoReturn getBirdMode();
    TodoReturn getCanJump();
    TodoReturn getClkTimer();
    TodoReturn getCurrentIcon();
    TodoReturn getDartMode();
    TodoReturn getDidStick();
    TodoReturn getDisableEffects();
    TodoReturn getDualMode();
    TodoReturn getFlyMode();
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
    TodoReturn getLastGroundObject();
    TodoReturn getLastGroundPos();
    TodoReturn getLastP();
    TodoReturn getLastYVel();
    TodoReturn getModifiedSlopeYVel();
    TodoReturn getOnGround();
    TodoReturn getOnSlope();
    TodoReturn getPlayerScale();
    TodoReturn getPlayerXVelocity();
    TodoReturn getPortalObject();
    TodoReturn getPortalP();
    TodoReturn getRealPlayerPos();
    TodoReturn getRobotMode();
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
    void loadFromCheckpoint(PlayerCheckpoint*);
    TodoReturn lockPlayer();
    TodoReturn logValues();
    TodoReturn placeStreakPoint();
    TodoReturn playBurstEffect();
    TodoReturn playerDestroyed(bool);
    TodoReturn playerIsFalling();
    TodoReturn playerTeleported();
    TodoReturn postCollision(float);
    TodoReturn preCollision();
    TodoReturn preSlopeCollision(float, GameObject*);
    TodoReturn propellPlayer(float);
    TodoReturn pushButton(PlayerButton);
    TodoReturn pushDown();
    TodoReturn pushPlayer(float);
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
    TodoReturn testForMoving(float, GameObject*);
    TodoReturn toggleBirdMode(bool);
    TodoReturn toggleDartMode(bool);
    TodoReturn toggleFlyMode(bool);
    TodoReturn toggleGhostEffect(GhostType);
    TodoReturn togglePlayerScale(bool);
    TodoReturn toggleRobotMode(bool);
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
    TodoReturn updatePlayerRobotFrame(int);
    TodoReturn updatePlayerRollFrame(int);
    TodoReturn updatePlayerScale();
    TodoReturn updatePlayerShipFrame(int);
    TodoReturn updateRobotAnimationSpeed();
    TodoReturn updateRotation(float, float);
    TodoReturn updateRotation(float);
    TodoReturn updateShipRotation(float);
    TodoReturn updateSlopeRotation(float);
    TodoReturn updateSlopeYVelocity(float);
    TodoReturn updateTimeMod(float);
    TodoReturn yStartDown();
    TodoReturn yStartUp();

    virtual TodoReturn update(float);
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
    virtual TodoReturn animationFinished(char const*);
    virtual void setTookDamage(bool);
    virtual void setOnSlope(bool);
    virtual void setWasOnSlope(bool);
    virtual void setLastP(cocos2d::CCPoint);
    virtual void setPortalP(cocos2d::CCPoint);
    virtual void setGameLayer(cocos2d::CCLayer*);
    virtual void setOnGround(bool);
    virtual void setLastGroundPos(cocos2d::CCPoint);
    virtual void setTouchedRing(GameObject*);
    virtual void setPortalObject(GameObject*);
    virtual void setRealPlayerPos(cocos2d::CCPoint);
    virtual void setIsSecondPlayer(bool);
    virtual void setDualMode(bool);
    virtual void setClkTimer(double);
    virtual void setDisableEffects(bool);
    virtual void setAudioScale(float);
    virtual void setGroundHeight(float);

    double _0x3a8; // getModifiedSlopeYVel
    bool _0x3b0; // hitGround, placeStreakPoint
    cocos2d::CCNode* _0x3b4;
    cocos2d::CCDictionary* m_topBlockIDs;
    cocos2d::CCDictionary* m_bottomBlockIDs;
    GameObject* m_lastSlopeObject;
    GameObject* m_backupGroundObject;
    GameObject* m_lastGroundObject;
    int m_currentIcon;
    float _0x3d0; // postCollision
    float _0x3d4; // postCollision
    bool m_didStick;
    int m_bottomBlockID;
    int m_topBlockID;
    bool _0x3e4; // hitGround
    bool m_shouldDisconnectSlope;
    GameObject* m_preSlopeObject;
    GameObject* m_slopeObject;
    float _0x3f0;
    int m_lastSlopeID;
    bool _0x3f8; // isBoostValid
    cocos2d::CCArray* _0x3fc;
    PAD = android 0x8;
    GhostType m_ghostType;
    GhostTrailEffect* m_ghostTrail;
    cocos2d::CCSprite* _0x410;
    cocos2d::CCSprite* _0x414;
    cocos2d::CCSprite* _0x418;
    cocos2d::CCSprite* _0x41c;
    cocos2d::CCSprite* _0x420;
    cocos2d::CCSprite* _0x424;
    cocos2d::CCSprite* _0x428;
    cocos2d::CCSprite* _0x42c;
    cocos2d::CCMotionStreak* _0x430;
    HardStreak* m_hardStreak;
    double m_playerXVelocity;
    double m_jumpHeight;
    double m_gravity;
    float _0x450;
    float _0x454; // isSafeMode
    bool _0x458; // flipGravity, placeStreakPoint
    bool _0x459;
    bool _0x45a; // m_isRising
    bool _0x45b; // inPlayLayer
    bool _0x45c;
    bool _0x45d;
    bool _0x45e;
    bool _0x45f; // hitGround
    bool m_placedCheckpoint
    PAD = android 0x8;
    double _0x468;
    double _0x470;
    double _0x478; // isSafeFlip
    PAD = android 0x4;
    float _0x484;
    PAD = android 0x8;
    double _0x490;
    GameObject* _0x498;
    CheckpointObject* _0x49c;
    int _0x4a0; // Timer for checkpoints
    GJRobotSprite* m_robotSprite;
    bool _0x4a8; // specialGroundHit
    cocos2d::CCParticleSystemQuad* _0x4ac;
    cocos2d::CCParticleSystemQuad* _0x4b0;
    cocos2d::CCParticleSystemQuad* _0x4b4;
    cocos2d::CCParticleSystemQuad* _0x4b8;
    cocos2d::CCParticleSystemQuad* _0x4bc;
    cocos2d::CCParticleSystemQuad* _0x4c0;
    bool _0x4c4;
    cocos2d::CCParticleSystemQuad* _0x4c8; // hitGround
    cocos2d::CCParticleSystemQuad* _0x4cc; // hitGround
    PAD = android 0xc;
    float m_targetSlopeAngle;
    float m_lastSlopeYVelocity;
    float _0x4e4;
    PAD = android 0x2;
    bool _0x4ea;
    bool m_lastSlopeFloorTop;
    float m_collideTop;
    float m_collideBottom;
    bool m_enableStreak;
    bool m_checkpointQueued;
    bool m_tookDamage;
    bool m_upKeyDown;
    bool m_upKeyPressed;
    bool _0x4f9;
    bool _0x4fa;
    PAD = android 0x5;
    double m_yVelocity;
    bool m_onSlope;
    bool m_wasOnSlope;
    float m_slopeYVel;
    bool m_flyMode;
    bool m_birdMode;
    bool m_rollMode;
    bool m_dartMode;
    bool m_robotMode;
    bool m_gravityFlipped;
    bool m_isDead;
    bool m_canJump;
    float m_playerScale;
    float m_timeMod;
    cocos2d::CCPoint m_lastP;
    cocos2d::CCPoint m_portalP;
    cocos2d::CCLayer* m_gameLayer;
    bool m_onGround;
    bool m_isJumping;
    bool m_isLocked;
    cocos2d::CCPoint m_lastGroundPos;
    RingObject* m_touchedRing;
    GameObject* m_portalObject;
    bool m_hasJumped;
    bool m_hasRingJumped;
    cocos2d::ccColor3B m_glowColor1;
    cocos2d::ccColor3B m_glowColor2;
    cocos2d::CCPoint m_realPlayerPos;
    bool m_isSecondPlayer;
    bool m_dualMode;
    PAD = android 0x6;
    doule m_clkTimer;
    bool m_disableEffects;
    float m_audioScale;
    float m_groundHeight;
    float m_lastYVel;
}

[[link(android)]]
class PlayLayer {
    // virtual ~PlayLayer();
    // PlayLayer();

    static PlayLayer* create(GJGameLevel*);

    TodoReturn addCircle(CCCircleWave*);
    TodoReturn addObject(GameObject*);
    TodoReturn addToGroup(GameObject*);
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
    TodoReturn exitRobotMode(PlayerObject*);
    TodoReturn exitRollMode(PlayerObject*);
    TodoReturn flipFinished();
    TodoReturn flipObjects();
    TodoReturn fullReset();
    TodoReturn getAttempts();
    TodoReturn getBigActionContainer();
    TodoReturn getCameraPortal();
    TodoReturn getCameraPos();
    TodoReturn getCleanReset();
    TodoReturn getClkTimer();
    TodoReturn getColorManager();
    TodoReturn getDidAwardStars();
    TodoReturn getDidJump();
    TodoReturn getDualMode();
    TodoReturn getDualModeCamera();
    TodoReturn getEndTriggered();
    TodoReturn getFlipValue();
    TodoReturn getForcePlaybackControl();
    TodoReturn getGroundHeightForMode(int);
    TodoReturn getGroup(int);
    TodoReturn getIsFlipped();
    TodoReturn getIsResetting();
    TodoReturn getJumps();
    TodoReturn getLastCheckpoint();
    TodoReturn getLastRunPercent();
    TodoReturn getLevel();
    TodoReturn getMaxPortalY();
    TodoReturn getMinPortalY();
    TodoReturn getOtherPlayer(PlayerObject*);
    TodoReturn getParticleKey(int, char const*, int, cocos2d::tCCPositionType);
    TodoReturn getParticleKey2(gd::string);
    TodoReturn getPlaybackMode();
    TodoReturn getPracticeMode();
    TodoReturn getRelativeMod(cocos2d::CCPoint, float, float, float);
    TodoReturn getResetFlipObjects();
    TodoReturn getResetQueued();
    TodoReturn getResetTriggered();
    TodoReturn getShouldRestartAfterStopped();
    TodoReturn getShowingEndLayer();
    TodoReturn getStartPos();
    TodoReturn getTempMilliTime();
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
    TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::ccColor3B, float, float, int);
    TodoReturn loadDefaultColors();
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
    TodoReturn preloadActions();
    TodoReturn preloadMoveActions();
    TodoReturn processItems();
    TodoReturn processLoadedMoveActions();
    TodoReturn processMoveActionsStep();
    TodoReturn pushButton(int, bool);
    TodoReturn recordAction(bool, PlayerObject*);
    TodoReturn registerActiveObject(GameObject*);
    TodoReturn registerStateObject(GameObject*);
    TodoReturn releaseButton(int, bool);
    TodoReturn removeAllObjects();
    TodoReturn removeFromGroup(GameObject*);
    TodoReturn removeLastCheckpoint();
    TodoReturn removeObjectFromSection(GameObject*);
    TodoReturn removePlayer2();
    TodoReturn reorderObjectSection(GameObject*);
    TodoReturn resetLevel();
    TodoReturn resume();
    TodoReturn resumeAndRestart();
    TodoReturn saveRecordAction(bool, PlayerObject*);
    TodoReturn scene(GJGameLevel*);
    TodoReturn sectionForPos(float);
    void setActiveEnterEffect(EnterEffect);
    void setStartPosObject(StartPosObject*);
    TodoReturn setupLevelStart(LevelSettingsObject*);
    TodoReturn setupReplay(gd::string);
    TodoReturn shakeCamera(float);
    TodoReturn shouldBlend(int);
    TodoReturn showCompleteEffect();
    TodoReturn showCompleteText();
    TodoReturn showEndLayer();
    TodoReturn showHint();
    TodoReturn showNewBest();
    TodoReturn showRetryLayer();
    TodoReturn showTwoPlayerGuide();
    TodoReturn sortGroups();
    TodoReturn spawnCircle();
    TodoReturn spawnFirework();
    TodoReturn spawnGroup(int, float);
    TodoReturn spawnParticle(char const*, int, cocos2d::tCCPositionType, cocos2d::CCPoint);
    TodoReturn spawnPlayer2();
    TodoReturn startGame();
    TodoReturn startMusic();
    TodoReturn startRecording();
    TodoReturn startRecordingDelayed();
    TodoReturn stopCameraShake();
    TodoReturn stopRecording();
    TodoReturn storeCheckpoint(CheckpointObject*);
    TodoReturn switchToFlyMode(PlayerObject*, GameObject*, bool, int);
    TodoReturn switchToRobotMode(PlayerObject*, GameObject*, bool);
    TodoReturn switchToRollMode(PlayerObject*, GameObject*, bool);
    TodoReturn timeForXPos2(float, bool);
    TodoReturn toggleDualMode(GameObject*, bool, PlayerObject*, bool);
    TodoReturn toggleFlipped(bool, bool);
    TodoReturn toggleGhostEffect(int);
    TodoReturn toggleGlitter(bool);
    TodoReturn toggleGroup(int, bool);
    TodoReturn togglePracticeMode(bool);
    TodoReturn toggleProgressbar();
    TodoReturn tryStartRecord();
    TodoReturn unclaimParticle(char const*, cocos2d::CCParticleSystemQuad*);
    TodoReturn unregisterActiveObject(GameObject*);
    TodoReturn unregisterStateObject(GameObject*);
    TodoReturn updateAttempts();
    TodoReturn updateCamera(float);
    TodoReturn updateColor(cocos2d::ccColor3B, float, int, bool, float, cocos2d::ccHSVValue, int, bool);
    TodoReturn updateDualGround(PlayerObject*, int, bool);
    TodoReturn updateEffectPositions();
    TodoReturn updateLevelColors();
    TodoReturn updateProgressbar();
    TodoReturn updateReplay(float);
    TodoReturn updateTimeMod(float, bool);
    TodoReturn updateVisibility();
    TodoReturn visitWithColorFlash();
    TodoReturn willSwitchToMode(int, PlayerObject*);

    virtual TodoReturn update(float);
    virtual TodoReturn onEnterTransitionDidFinish();
    virtual TodoReturn onExit();
    virtual TodoReturn draw();
    virtual TodoReturn visit();
    virtual TodoReturn updateTweenAction(float, char const*);
    virtual TodoReturn flipGravity(PlayerObject*, bool, bool);
    virtual TodoReturn timeForXPos(float);
    virtual TodoReturn calculateColorValues(EffectGameObject*, EffectGameObject*, int, float, ColorActionSprite*, GJEffectManager*);
    virtual TodoReturn spawnGroup(int);
    virtual TodoReturn circleWaveWillBeRemoved(CCCircleWave*);
    virtual void setPlaybackMode(bool);
    virtual void setForcePlaybackControl(bool);
    virtual void setIsResetting(bool);
    virtual void setCleanReset(bool);
    virtual void setStartPos(cocos2d::CCPoint);
    virtual void setShowingEndLayer(bool);
    virtual void setEndTriggered(bool);
    virtual void setResetQueued(bool);
    virtual void setLastRunPercent(int);
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
class ProfilePage {
    // virtual ~ProfilePage();
    // ProfilePage();

    static ProfilePage* create(int, bool);

    void blockUser();
    bool init(int, bool);
    bool isCorrect(char const*);
    TodoReturn loadPage(int);
    TodoReturn loadPageFromUserInfo(GJUserScore*);
    void onBlockUser(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    void onComment(cocos2d::CCObject* sender);
    void onFollow(cocos2d::CCObject* sender);
    void onFriend(cocos2d::CCObject* sender);
    void onFriends(cocos2d::CCObject* sender);
    void onMessages(cocos2d::CCObject* sender);
    void onMyLevels(cocos2d::CCObject* sender);
    void onNextPage(cocos2d::CCObject* sender);
    void onPrevPage(cocos2d::CCObject* sender);
    void onRequests(cocos2d::CCObject* sender);
    void onSendMessage(cocos2d::CCObject* sender);
    void onSettings(cocos2d::CCObject* sender);
    void onUpdate(cocos2d::CCObject* sender);
    void onYouTube(cocos2d::CCObject* sender);
    TodoReturn setupComments();
    TodoReturn setupCommentsBrowser(cocos2d::CCArray*);
    TodoReturn showNoAccountError();
    TodoReturn toggleMainPageVisibility(bool);
    TodoReturn updateLevelsLabel();
    TodoReturn updatePageArrows();

    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn keyBackClicked();
    virtual TodoReturn show();
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
    virtual TodoReturn updateUserScoreFinished();
    virtual TodoReturn updateUserScoreFailed();
    virtual TodoReturn getUserInfoFinished(GJUserScore*);
    virtual TodoReturn getUserInfoFailed(int);
    virtual TodoReturn userInfoChanged(GJUserScore*);
    virtual TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*);
    virtual TodoReturn loadCommentsFailed(char const*);
    virtual TodoReturn setupPageInfo(gd::string, char const*);
    virtual TodoReturn commentUploadFinished(int);
    virtual TodoReturn commentUploadFailed(int);
    virtual TodoReturn commentDeleteFailed(int, int);
    virtual TodoReturn onClosePopup(UploadActionPopup*);
    virtual TodoReturn uploadActionFinished(int, int);
    virtual TodoReturn uploadActionFailed(int, int);
}

[[link(android)]]
class PromoInterstitial {
    // virtual ~PromoInterstitial();

    static PromoInterstitial* create();

    TodoReturn getEnableBannerOnClose();
    void onClick(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    TodoReturn setup();

    virtual bool init();
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn keyBackClicked();
    virtual TodoReturn show();
    virtual void setEnableBannerOnClose(bool);
}

[[link(android)]]
class PulseEffectAction {
    // virtual ~PulseEffectAction();

    static PulseEffectAction* create(float, float, float, PulseEffectType, int, cocos2d::ccColor3B, cocos2d::ccHSVValue, int, bool, bool);

    TodoReturn createFromString(gd::string);
    TodoReturn getCopyColorIdx();
    TodoReturn getDeltaTime();
    TodoReturn getGroupMainOnly();
    TodoReturn getGroupSecondaryOnly();
    TodoReturn getHSVValue();
    TodoReturn getSaveString();
    TodoReturn getTargetColor();
    TodoReturn getTargetID();
    TodoReturn getType();
    TodoReturn getValue();
    bool init(float, float, float, PulseEffectType, int, cocos2d::ccColor3B, cocos2d::ccHSVValue, int, bool, bool);
    bool isFinished();
    TodoReturn step(float);
    TodoReturn valueForDelta(float, float, float, float);

    virtual void setDeltaTime(float);
}

[[link(android)]]
class RateLevelDelegate {
    virtual TodoReturn rateLevelClosed();
}

[[link(android)]]
class RateLevelLayer {
    // virtual ~RateLevelLayer();

    static RateLevelLayer* create(int);

    TodoReturn getDelegate();
    bool init(int);
    void onClose(cocos2d::CCObject* sender);
    void onRate(cocos2d::CCObject* sender);
    TodoReturn selectRating(cocos2d::CCObject*);

    virtual TodoReturn keyBackClicked();
    virtual void setDelegate(RateLevelDelegate*);
}

[[link(android)]]
class RateStarsLayer {
    // virtual ~RateStarsLayer();
    // RateStarsLayer();

    static RateStarsLayer* create(int, bool);

    TodoReturn getDelegate();
    TodoReturn getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);
    bool init(int, bool);
    void onClose(cocos2d::CCObject* sender);
    void onRate(cocos2d::CCObject* sender);
    void onToggleCoins(cocos2d::CCObject* sender);
    void onToggleFeature(cocos2d::CCObject* sender);
    TodoReturn selectRating(cocos2d::CCObject*);

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn uploadActionFinished(int, int);
    virtual TodoReturn uploadActionFailed(int, int);
    virtual TodoReturn onClosePopup(UploadActionPopup*);
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

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
    virtual TodoReturn customSetup();
    virtual TodoReturn showLayer(bool);
    virtual TodoReturn enterAnimFinished();
    virtual TodoReturn keyUp(cocos2d::enumKeyCodes);
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
    virtual TodoReturn keyBackClicked();
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

    virtual TodoReturn draw();
    virtual TodoReturn visit();
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
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
class SecretLayer {
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
    TodoReturn updateSearchLabel(char const*);

    virtual bool init();
    virtual TodoReturn keyBackClicked();
    virtual TodoReturn textInputOpened(CCTextInputNode*);
    virtual TodoReturn textInputClosed(CCTextInputNode*);
    virtual TodoReturn textChanged(CCTextInputNode*);
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class SelectArtDelegate {
    virtual TodoReturn selectArtClosed(SelectArtLayer*);
}

[[link(android)]]
class SelectArtLayer {
    // virtual ~SelectArtLayer();

    static SelectArtLayer* create(SelectArtType);

    TodoReturn getDelegate();
    TodoReturn getSelected();
    TodoReturn getSelectedCustom();
    TodoReturn getType();
    bool init(SelectArtType);
    void onClose(cocos2d::CCObject* sender);
    void onSelectCustom(cocos2d::CCObject* sender);
    TodoReturn selectArt(cocos2d::CCObject*);
    TodoReturn updateSelectedCustom(int);

    virtual TodoReturn keyBackClicked();
    virtual void setDelegate(SelectArtDelegate*);
}

[[link(android)]]
class SelectFontLayer {
    // virtual ~SelectFontLayer();

    static SelectFontLayer* create(LevelEditorLayer*);

    bool init(LevelEditorLayer*);
    void onChangeFont(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    TodoReturn updateFontLabel();

    virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class SetGroupIDLayer {
    // virtual ~SetGroupIDLayer();
    // SetGroupIDLayer();

    static SetGroupIDLayer* create(GameObject*, cocos2d::CCArray*);

    TodoReturn addGroupID(int);
    TodoReturn callRemoveFromGroup(float);
    TodoReturn determineStartValues();
    TodoReturn getNextFreeGroupID();
    bool init(GameObject*, cocos2d::CCArray*);
    void onAddGroup(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    void onCopy(cocos2d::CCObject* sender);
    void onDontFade(cocos2d::CCObject* sender);
    void onEditorLayer(cocos2d::CCObject* sender);
    void onEditorLayer2(cocos2d::CCObject* sender);
    void onGroupID(cocos2d::CCObject* sender);
    void onNextGroupID1(cocos2d::CCObject* sender);
    void onPaste(cocos2d::CCObject* sender);
    void onRemoveFromGroup(cocos2d::CCObject* sender);
    void onSmoothEase(cocos2d::CCObject* sender);
    void onToggleGroupParent(cocos2d::CCObject* sender);
    void onZLayer(cocos2d::CCObject* sender);
    void onZOrder(cocos2d::CCObject* sender);
    TodoReturn removeGroupID(int);
    TodoReturn updateEditorLabel();
    TodoReturn updateEditorLabel2();
    TodoReturn updateEditorLayerID();
    TodoReturn updateEditorLayerID2();
    TodoReturn updateGroupIDButtons();
    TodoReturn updateGroupIDLabel();
    TodoReturn updateZLayerButtons();
    TodoReturn updateZOrder();
    TodoReturn updateZOrderLabel();

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn textInputClosed(CCTextInputNode*);
    virtual TodoReturn textChanged(CCTextInputNode*);
    virtual void setNextFreeGroupID(int);
}

[[link(android)]]
class SetIDLayer {
    // virtual ~SetIDLayer();

    static SetIDLayer* create(GameObject*);

    bool init(GameObject*);
    void onClose(cocos2d::CCObject* sender);
    void onDown(cocos2d::CCObject* sender);
    void onUp(cocos2d::CCObject* sender);
    TodoReturn updateID();

    virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class SetupObjectTogglePopup {
    // virtual ~SetupObjectTogglePopup();

    static SetupObjectTogglePopup* create(EffectGameObject*, cocos2d::CCArray*);

    TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
    TodoReturn determineStartValues();
    bool init(EffectGameObject*, cocos2d::CCArray*);
    void onClose(cocos2d::CCObject* sender);
    void onEnableGroup(cocos2d::CCObject* sender);
    void onSpawnedByTrigger(cocos2d::CCObject* sender);
    void onTargetIDArrow(cocos2d::CCObject* sender);
    void onTouchTriggered(cocos2d::CCObject* sender);
    TodoReturn updateEditorLabel();
    TodoReturn updateSpawnedByTrigger();
    TodoReturn updateTargetID();
    TodoReturn updateTextInputLabel();
    TodoReturn updateTouchTriggered();

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn show();
    virtual TodoReturn textInputClosed(CCTextInputNode*);
    virtual TodoReturn textChanged(CCTextInputNode*);
    virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
    virtual TodoReturn textInputReturn(CCTextInputNode*);
}

[[link(android)]]
class SetupOpacityPopup {
    // virtual ~SetupOpacityPopup();
    // SetupOpacityPopup();

    static SetupOpacityPopup* create(EffectGameObject*, cocos2d::CCArray*);

    TodoReturn determineStartValues();
    bool init(EffectGameObject*, cocos2d::CCArray*);
    void onClose(cocos2d::CCObject* sender);
    void onSpawnedByTrigger(cocos2d::CCObject* sender);
    void onTargetIDArrow(cocos2d::CCObject* sender);
    void onTouchTriggered(cocos2d::CCObject* sender);
    TodoReturn sliderChanged(cocos2d::CCObject*);
    TodoReturn updateDuration();
    TodoReturn updateDurLabel();
    TodoReturn updateEditorLabel();
    TodoReturn updateOpacity();
    TodoReturn updateOpacityLabel();
    TodoReturn updateSpawnedByTrigger();
    TodoReturn updateTargetID();
    TodoReturn updateTextInputLabel();
    TodoReturn updateTouchTriggered();

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn show();
    virtual TodoReturn textInputClosed(CCTextInputNode*);
    virtual TodoReturn textChanged(CCTextInputNode*);
    virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
    virtual TodoReturn textInputReturn(CCTextInputNode*);
}

[[link(android)]]
class SetupPulsePopup {
    // virtual ~SetupPulsePopup();
    // SetupPulsePopup();

    static SetupPulsePopup* create(EffectGameObject*, cocos2d::CCArray*);

    TodoReturn closeColorSelect(cocos2d::CCObject*);
    TodoReturn determineStartValues();
    TodoReturn getColorValue();
    bool init(EffectGameObject*, cocos2d::CCArray*);
    void onCopy(cocos2d::CCObject* sender);
    void onGroupMainOnly(cocos2d::CCObject* sender);
    void onGroupSecondaryOnly(cocos2d::CCObject* sender);
    void onPaste(cocos2d::CCObject* sender);
    void onSelectPulseMode(cocos2d::CCObject* sender);
    void onSelectSpecialColor(cocos2d::CCObject* sender);
    void onSelectSpecialTargetID(cocos2d::CCObject* sender);
    void onSelectTargetMode(cocos2d::CCObject* sender);
    void onSpawnedByTrigger(cocos2d::CCObject* sender);
    void onTouchTriggered(cocos2d::CCObject* sender);
    void onUpdateCopyColor(cocos2d::CCObject* sender);
    void onUpdateCustomColor(cocos2d::CCObject* sender);
    TodoReturn selectColor(cocos2d::ccColor3B);
    TodoReturn sliderChanged(cocos2d::CCObject*);
    TodoReturn updateColorValue();
    TodoReturn updateCopyColor();
    TodoReturn updateCopyColorTextInputLabel();
    TodoReturn updateEditorLabel();
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
    TodoReturn updateSpawnedByTrigger();
    TodoReturn updateTargetID();
    TodoReturn updateTextInputLabel();
    TodoReturn updateTouchTriggered();

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn show();
    virtual TodoReturn colorValueChanged(cocos2d::ccColor3B);
    virtual TodoReturn textInputOpened(CCTextInputNode*);
    virtual TodoReturn textInputClosed(CCTextInputNode*);
    virtual TodoReturn textChanged(CCTextInputNode*);
    virtual TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
    virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
    virtual TodoReturn textInputReturn(CCTextInputNode*);
}

[[link(android)]]
class SetupSpawnPopup {
    // virtual ~SetupSpawnPopup();

    static SetupSpawnPopup* create(EffectGameObject*, cocos2d::CCArray*);

    TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
    TodoReturn determineStartValues();
    bool init(EffectGameObject*, cocos2d::CCArray*);
    void onClose(cocos2d::CCObject* sender);
    void onTargetIDArrow(cocos2d::CCObject* sender);
    void onTouchTriggered(cocos2d::CCObject* sender);
    TodoReturn updateEditorLabel();
    TodoReturn updateTargetID();
    TodoReturn updateTextInputLabel();

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn show();
    virtual TodoReturn textInputClosed(CCTextInputNode*);
    virtual TodoReturn textChanged(CCTextInputNode*);
    virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
    virtual TodoReturn textInputReturn(CCTextInputNode*);
}

[[link(android)]]
class sha1 {
    TodoReturn calc(void const*, int, unsigned char*);
    TodoReturn toHexString(unsigned char const*, char*);
}

[[link(android)]]
class ShareCommentLayer {
    // virtual ~ShareCommentLayer();
    // ShareCommentLayer();

    static ShareCommentLayer* create(gd::string, int, CommentType, int);

    bool init(gd::string, int, CommentType, int);
    void onClose(cocos2d::CCObject* sender);
    void onShare(cocos2d::CCObject* sender);
    TodoReturn updateCharCountLabel();
    TodoReturn updateDescText(char const*);

    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn keyBackClicked();
    virtual TodoReturn textInputOpened(CCTextInputNode*);
    virtual TodoReturn textInputClosed(CCTextInputNode*);
    virtual TodoReturn textChanged(CCTextInputNode*);
    virtual TodoReturn uploadActionFinished(int, int);
    virtual TodoReturn uploadActionFailed(int, int);
    virtual TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class ShareLevelLayer {
    // virtual ~ShareLevelLayer();

    static ShareLevelLayer* create(GJGameLevel*);

    TodoReturn getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);
    bool init(GJGameLevel*);
    void onClose(cocos2d::CCObject* sender);
    void onSettings(cocos2d::CCObject* sender);
    void onShare(cocos2d::CCObject* sender);
    TodoReturn selectRating(cocos2d::CCObject*);
    TodoReturn setupStars();

    virtual TodoReturn keyBackClicked();
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

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn numberInputClosed(NumberInputLayer*);
}

[[link(android)]]
class SimpleObject {
    // virtual ~SimpleObject();

    static SimpleObject* create();

    TodoReturn getColor();
    bool init();

    virtual void setColor(cocos2d::ccColor3B);
}

[[link(android)]]
class SimplePlayer {
    // virtual ~SimplePlayer();

    static SimplePlayer* create(int);

    TodoReturn getSpecial();
    TodoReturn getUseGlow();
    bool init(int);
    void setFrames(char const*, char const*, char const*, char const*);
    void setSecondColor(cocos2d::ccColor3B const&);
    TodoReturn updateColors();
    TodoReturn updatePlayerFrame(int, IconType);

    virtual void setOpacity(unsigned char);
    virtual void setColor(cocos2d::ccColor3B const&);
    virtual void setSpecial(int);
    virtual void setUseGlow(bool);
}

[[link(android)]]
class SlideInLayer {
    // virtual ~SlideInLayer();
    // SlideInLayer();

    static SlideInLayer* create();

    TodoReturn getDelegate();
    TodoReturn getRemoveOnExit();

    virtual bool init();
    virtual TodoReturn draw();
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn keyBackClicked();
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

[[link(android)]]
class Slider {
    // virtual ~Slider();

    static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float);
    static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, float);
    static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler);

    TodoReturn disableTouch();
    TodoReturn getLiveDragging();
    TodoReturn getThumb();
    TodoReturn getValue();
    bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float);
    void setBarVisibility(bool);
    void setLiveDragging(bool);
    void setValue(float);
    TodoReturn updateBar();

    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
}

[[link(android)]]
class SliderThumb {
    // virtual ~SliderThumb();

    static SliderThumb* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*);

    TodoReturn getValue();
    bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*);
    void setValue(float);
}

[[link(android)]]
class SliderTouchLogic {
    // virtual ~SliderTouchLogic();
    // SliderTouchLogic();

    static SliderTouchLogic* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float);

    TodoReturn getLiveDragging();
    TodoReturn getSliderDelegate();
    TodoReturn getThumb();
    TodoReturn getTouchOffset();
    bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float);

    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn registerWithTouchDispatcher();
    virtual void setSliderDelegate(Slider*);
    virtual void setLiveDragging(bool);
}

[[link(android)]]
class SongCell {
    // virtual ~SongCell();
    SongCell(char const*, float, float);

    void loadFromObject(SongObject*);
    void onClick(cocos2d::CCObject* sender);
    TodoReturn updateBGColor(int);

    virtual bool init();
    virtual TodoReturn draw();
}

[[link(android)]]
class SongInfoLayer {
    // virtual ~SongInfoLayer();

    static SongInfoLayer* create(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string);
    static SongInfoLayer* create(int);

    bool init(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string);
    void onClose(cocos2d::CCObject* sender);
    void onDownload(cocos2d::CCObject* sender);
    void onFB(cocos2d::CCObject* sender);
    void onNG(cocos2d::CCObject* sender);
    void onYT(cocos2d::CCObject* sender);

    virtual TodoReturn keyBackClicked();
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

    virtual TodoReturn encodeWithCoder(DS_Dictionary*);
    virtual TodoReturn canEncode();
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

    static SongOptionsLayer* create(LevelSettingsObject*);

    bool init(LevelSettingsObject*);
    void onClose(cocos2d::CCObject* sender);
    void onFadeIn(cocos2d::CCObject* sender);
    void onFadeOut(cocos2d::CCObject* sender);
    void onInfo(cocos2d::CCObject* sender);
    void onPlayback(cocos2d::CCObject* sender);
    TodoReturn updatePlaybackBtn();

    virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class SongsLayer {
    // virtual ~SongsLayer();

    static SongsLayer* create();

    virtual TodoReturn customSetup();
}

[[link(android)]]
class SpawnTriggerAction {
    // virtual ~SpawnTriggerAction();

    static SpawnTriggerAction* create(float, int);

    TodoReturn createFromString(gd::string);
    TodoReturn getDelayTime();
    TodoReturn getDeltaTime();
    TodoReturn getSaveString();
    TodoReturn getTargetID();
    bool init(float, int);
    bool isFinished();
    TodoReturn step(float);

    virtual void setDelayTime(float);
    virtual void setDeltaTime(float);
}

[[link(android)]]
class SpawnTriggerDelegate {
    virtual TodoReturn spawnGroup(int);
}

[[link(android)]]
class SpeedObject {
    // virtual ~SpeedObject();

    static SpeedObject* create(int, float);

    TodoReturn getSpeedMod();
    TodoReturn getXPos();
    bool init(int, float);
    void setSource(GameObject*);
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
    TodoReturn offsetCurrentAnimation(float);
    TodoReturn overridePrio();
    TodoReturn playSound(gd::string);
    TodoReturn playSoundForAnimation(gd::string);
    TodoReturn queueAnimation(gd::string);
    TodoReturn resetAnimState();
    TodoReturn runAnimation(gd::string);
    TodoReturn runQueuedAnimation();
    TodoReturn stopAnimations();
    TodoReturn storeAnimation(cocos2d::CCAnimate*, cocos2d::CCAnimate*, gd::string, int, spriteMode, cocos2d::CCSpriteFrame*);
    TodoReturn storeSoundForAnimation(cocos2d::CCString*, gd::string, float);
    TodoReturn updateAnimationSpeed(float);

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
    void loadFromObject(StatsObject*);
    TodoReturn updateBGColor(int);

    virtual bool init();
    virtual TodoReturn draw();
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
    void onRequestAccess(cocos2d::CCObject* sender);
    void onRestore(cocos2d::CCObject* sender);
    void onRobTop(cocos2d::CCObject* sender);
    TodoReturn sendSupportMail();

    virtual TodoReturn customSetup();
    virtual TodoReturn uploadActionFinished(int, int);
    virtual TodoReturn uploadActionFailed(int, int);
    virtual TodoReturn onClosePopup(UploadActionPopup*);
    virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class TableView {
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
    TodoReturn reloadData();
    TodoReturn removeIndexPathFromPathAddedArray(CCIndexPath&);
    TodoReturn scrollToIndexPath(CCIndexPath&);
    TodoReturn touchFinish(cocos2d::CCTouch*);

    virtual TodoReturn onEnter();
    virtual TodoReturn onExit();
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn registerWithTouchDispatcher();
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
    virtual TodoReturn scrollWheel(float, float);
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
}

[[link(android)]]
class TableViewCell {
    // virtual ~TableViewCell();
    TableViewCell(char const*, float, float);

    TodoReturn deleteButtonSelector(cocos2d::CCObject*);
    TodoReturn getCellIdentifier();
    TodoReturn getDelBtnColor();
    TodoReturn getDeleteButton();
    TodoReturn getEditable();
    bool isDeleteButtonShow();
    TodoReturn resetDeleteButtonPosition();
    TodoReturn showDeleteButton(bool);
    TodoReturn updateVisibility();

    virtual void setEditable(bool);
    virtual void setDelBtnColor(cocos2d::ccColor3B);
    virtual void setDeleteButton(cocos2d::CCMenuItem*);
    virtual void setCellIdentifier(gd::string const&);
}

[[link(android)]]
class TableViewDataSource {
    virtual TodoReturn pure_virtual_005d7ae0() {} // TODO: figure out what function this is
    virtual TodoReturn numberOfSectionsInTableView(TableView*);
    virtual TodoReturn TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&);
    virtual TodoReturn pure_virtual_005d7aec() {} // TODO: figure out what function this is
}

[[link(android)]]
class TableViewDelegate {
    virtual TodoReturn willTweenToIndexPath(CCIndexPath&, TableViewCell*, TableView*);
    virtual TodoReturn didEndTweenToIndexPath(CCIndexPath&, TableView*);
    virtual TodoReturn TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
    virtual TodoReturn TableViewDidDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
    virtual TodoReturn TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
    virtual TodoReturn pure_virtual_005d7acc() {} // TODO: figure out what function this is
    virtual TodoReturn pure_virtual_005d7ad0() {} // TODO: figure out what function this is
}

[[link(android)]]
class TeleportPortalObject {
    // virtual ~TeleportPortalObject();

    static TeleportPortalObject* create(char const*);

    TodoReturn getLockX();
    TodoReturn getPortalTargetY();
    TodoReturn getSmoothEase();
    TodoReturn getTargetPortal();
    TodoReturn getTeleportXOff(cocos2d::CCNode*);
    bool init(char const*);
    void setPositionOverride(cocos2d::CCPoint);
    void setStartPosOverride(cocos2d::CCPoint);

    virtual void setPosition(cocos2d::CCPoint const&);
    virtual void setRotation(float);
    virtual void setStartPos(cocos2d::CCPoint);
    virtual TodoReturn customObjectSetup(gd::map<gd::string, gd::string>*);
    virtual TodoReturn getSaveString();
    virtual TodoReturn addToGroup(int);
    virtual TodoReturn removeFromGroup(int);
    virtual void setRotation2(float);
    virtual TodoReturn addToGroup2(int);
    virtual TodoReturn removeFromGroup2(int);
    virtual void setTargetPortal(TeleportPortalObject*);
    virtual void setLockX(bool);
    virtual void setPortalTargetY(float);
    virtual void setSmoothEase(bool);
}

[[link(android)]]
class TextArea {
    // virtual ~TextArea();
    // TextArea();

    static TextArea* create(gd::string, char const*, float, float, cocos2d::CCPoint, float, bool);

    TodoReturn colorAllCharactersTo(cocos2d::ccColor3B);
    TodoReturn fadeIn(float, bool);
    TodoReturn fadeOut(float);
    TodoReturn fadeOutAndRemove();
    TodoReturn finishFade();
    TodoReturn getAlign();
    TodoReturn getFadeInFinished();
    TodoReturn getFontScale();
    TodoReturn getLineSpace();
    TodoReturn getMaxWidth();
    TodoReturn getOnTimer();
    TodoReturn getSizeWidth();
    TodoReturn getTextHeight();
    TodoReturn getTextPosition();
    TodoReturn getTextWidth();
    TodoReturn hideAll();
    bool init(gd::string, char const*, float, float, cocos2d::CCPoint, float, bool);
    void setIgnoreColorCode(bool);
    void setString(gd::string);
    TodoReturn showAll();
    TodoReturn stopAllCharacterActions();

    virtual TodoReturn draw();
    virtual void setOpacity(unsigned char);
    virtual void setMaxWidth(float);
    virtual void setLineSpace(float);
    virtual void setOnTimer(bool);
    virtual void setAlign(cocos2d::CCPoint);
    virtual void setFadeInFinished(bool);
    virtual void setFontScale(float);
}

[[link(android)]]
class TextInputDelegate {
    virtual TodoReturn textChanged(CCTextInputNode*);
    virtual TodoReturn textInputOpened(CCTextInputNode*);
    virtual TodoReturn textInputClosed(CCTextInputNode*);
    virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
    virtual TodoReturn textInputReturn(CCTextInputNode*);
    virtual TodoReturn allowTextInput(CCTextInputNode*);
}

[[link(android)]]
class TutorialLayer {
    // virtual ~TutorialLayer();

    static TutorialLayer* create();

    TodoReturn loadPage(int);
    void onClose(cocos2d::CCObject* sender);
    void onNext(cocos2d::CCObject* sender);
    TodoReturn removeTutorialTexture();

    virtual bool init();
    virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class TutorialPopup {
    // virtual ~TutorialPopup();

    static TutorialPopup* create(gd::string);

    TodoReturn animateMenu();
    TodoReturn closeTutorial(cocos2d::CCObject*);
    bool init(gd::string);
    TodoReturn registerForCallback(cocos2d::SEL_MenuHandler, cocos2d::CCNode*);

    virtual TodoReturn keyBackClicked();
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
    virtual TodoReturn draw();
    virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual TodoReturn registerWithTouchDispatcher();
    virtual TodoReturn keyBackClicked();
    virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
    virtual TodoReturn keyUp(cocos2d::enumKeyCodes);
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
class UpdateAccountSettingsPopup {
    // virtual ~UpdateAccountSettingsPopup();

    static UpdateAccountSettingsPopup* create(GJAccountSettingsLayer*, int, int, gd::string);

    bool init(GJAccountSettingsLayer*, int, int, gd::string);
    void onClose(cocos2d::CCObject* sender);

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn updateSettingsFinished();
    virtual TodoReturn updateSettingsFailed();
}

[[link(android)]]
class UploadActionDelegate {
    virtual TodoReturn uploadActionFinished(int, int);
    virtual TodoReturn uploadActionFailed(int, int);
}

[[link(android)]]
class UploadActionPopup {
    // virtual ~UploadActionPopup();

    static UploadActionPopup* create(UploadPopupDelegate*, gd::string);

    TodoReturn closePopup();
    TodoReturn getDelegate();
    bool init(UploadPopupDelegate*, gd::string);
    void onClose(cocos2d::CCObject* sender);
    TodoReturn showFailMessage(gd::string);
    TodoReturn showSuccessMessage(gd::string);

    virtual TodoReturn keyBackClicked();
    virtual void setDelegate(UploadPopupDelegate*);
}

[[link(android)]]
class UploadMessageDelegate {
    virtual TodoReturn uploadMessageFinished(int);
    virtual TodoReturn uploadMessageFailed(int);
}

[[link(android)]]
class UploadPopup {
    // virtual ~UploadPopup();

    static UploadPopup* create(GJGameLevel*);

    bool init(GJGameLevel*);
    void onBack(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    void onReturnToLevel(cocos2d::CCObject* sender);

    virtual TodoReturn keyBackClicked();
    virtual TodoReturn show();
    virtual TodoReturn levelUploadFinished(GJGameLevel*);
    virtual TodoReturn levelUploadFailed(GJGameLevel*);
}

[[link(android)]]
class UploadPopupDelegate {
    virtual TodoReturn onClosePopup(UploadActionPopup*);
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
    virtual TodoReturn keyBackClicked();
}
