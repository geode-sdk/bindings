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
	TodoReturn updatePage(bool);

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

	TodoReturn loadFromDict(cocos2d::CCDictionary*);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual TodoReturn draw();
}

[[link(android)]]
class AchievementManager : cocos2d::CCNode {
	// virtual ~AchievementManager();

	TodoReturn achievementForUnlock(int, UnlockType);
	TodoReturn addAchievement(gd::string, gd::string, gd::string, gd::string, gd::string, int);
	TodoReturn addManualAchievements();
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
	TodoReturn sharedState();
	TodoReturn storeAchievementUnlocks();

	virtual bool init();
}

[[link(android)]]
class AchievementNotifier : cocos2d::CCNode {
	// virtual ~AchievementNotifier();

	TodoReturn achievementDisplayFinished();
	TodoReturn notifyAchievement(char const*, char const*, char const*, bool);
	TodoReturn sharedState();
	TodoReturn showNextAchievement();
	TodoReturn willSwitchToScene(cocos2d::CCScene*);

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

	virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
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

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class AdvancedFollowTriggerObject : EffectGameObject {
	// virtual ~AdvancedFollowTriggerObject();
	// AdvancedFollowTriggerObject();

	static AdvancedFollowTriggerObject* create(char const*);

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn getAdvancedFollowID();
	bool init(char const*);

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

	TodoReturn bgScale();
	TodoReturn checkSound();
	TodoReturn get();
	TodoReturn hideLoadingCircle();
	TodoReturn loadingIsFinished();
	TodoReturn musicTest();
	TodoReturn pauseGame();
	TodoReturn pauseSound();
	TodoReturn platformShutdown();
	TodoReturn resumeSound();
	void setIdleTimerDisabled(bool);
	TodoReturn setupGLView();
	TodoReturn showLoadingCircle(bool, bool, bool);

	virtual TodoReturn applicationDidFinishLaunching();
	virtual TodoReturn applicationDidEnterBackground();
	virtual TodoReturn applicationWillEnterForeground();
	virtual TodoReturn applicationWillBecomeActive();
	virtual TodoReturn applicationWillResignActive();
	virtual TodoReturn trySaveGame(bool);
	virtual TodoReturn willSwitchToScene(cocos2d::CCScene*);
}

[[link(android)]]
class ArtistCell : TableViewCell {
	// virtual ~ArtistCell();
	ArtistCell(char const*, float, float);

	TodoReturn loadFromObject(SongInfoObject*);
	void onNewgrounds(cocos2d::CCObject* sender);
	void onYouTube(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual TodoReturn draw();
}

[[link(android)]]
class ArtTriggerGameObject : EffectGameObject {
	// virtual ~ArtTriggerGameObject();

	static ArtTriggerGameObject* create(char const*);

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class AudioEffectsLayer : cocos2d::CCLayerColor {
	// virtual ~AudioEffectsLayer();

	static AudioEffectsLayer* create(gd::string);

	TodoReturn audioStep(float);
	TodoReturn getBGSquare();
	TodoReturn goingDown();
	bool init(gd::string);
	TodoReturn resetAudioVars();
	TodoReturn triggerEffect(float);

	virtual TodoReturn draw();
	virtual TodoReturn updateTweenAction(float, char const*);
}

[[link(android)]]
class AudioLineGuideGameObject : EffectGameObject {
	// virtual ~AudioLineGuideGameObject();

	static AudioLineGuideGameObject* create();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual bool init();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class BitmapFontCache : cocos2d::CCObject {
	// virtual ~BitmapFontCache();

	TodoReturn fontWithConfigFile(char const*, float);
	bool init();
	TodoReturn purgeSharedFontCache();
	TodoReturn sharedFontCache();
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
	// virtual ~BoomListView();

	static BoomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float);

	TodoReturn addObjectToList(cocos2d::CCNode*);
	bool init(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float);
	TodoReturn lockList(bool);

	virtual TodoReturn draw();
	virtual TodoReturn setupList(float);
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

	virtual TodoReturn visit();
	virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn registerWithTouchDispatcher();
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

	virtual TodoReturn keyBackClicked();
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

	static ButtonSprite* create(char const*, float);
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*, float);
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*);
	static ButtonSprite* create(char const*, int, int, float, bool);
	static ButtonSprite* create(char const*);
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool, char const*, bool);
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool);
	static ButtonSprite* create(cocos2d::CCSprite*);

	bool init(char const*, int, int, float, bool, char const*, char const*, float);
	bool init(cocos2d::CCSprite*, int, int, float, float, bool, char const*, bool);
	void setColor(cocos2d::ccColor3B);
	void setString(char const*);
	TodoReturn updateBGImage(char const*);
	TodoReturn updateSpriteBGSize();
	TodoReturn updateSpriteOffset(cocos2d::CCPoint);
}

[[link(android)]]
class CameraTriggerGameObject : EffectGameObject {
	// virtual ~CameraTriggerGameObject();

	static CameraTriggerGameObject* create(char const*);

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class CCAlertCircle : cocos2d::CCNode {
	// virtual ~CCAlertCircle();

	static CCAlertCircle* create();

	virtual bool init();
	virtual TodoReturn draw();
}

[[link(android)]]
class CCAnimatedSprite : cocos2d::CCSprite {
	// virtual ~CCAnimatedSprite();

	TodoReturn cleanupSprite();
	TodoReturn createWithType(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn initWithType(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn loadType(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn runAnimation(gd::string);
	TodoReturn runAnimationForced(gd::string);
	TodoReturn stopTween();
	TodoReturn switchToMode(spriteMode);
	TodoReturn tweenToAnimation(gd::string, float);
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

	TodoReturn addCustomSpriteFramesWithFile(char const*);
	TodoReturn addDict(cocos2d::CCDictionary*, char const*);
	TodoReturn addDict(DS_Dictionary*, char const*);
	TodoReturn addSpriteFramesWithFile(char const*);
	bool init();
	TodoReturn purgeSharedSpriteFrameCache();
	TodoReturn removeSpriteFrames();
	TodoReturn sharedSpriteFrameCache();
	TodoReturn spriteFrameByName(char const*);
}

[[link(android)]]
class CCBlockLayer : cocos2d::CCLayerColor {
	// virtual ~CCBlockLayer();

	static CCBlockLayer* create();

	TodoReturn decrementForcePrio();
	TodoReturn incrementForcePrio();

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

	static CCCircleWave* create(float, float, float, bool, bool);
	static CCCircleWave* create(float, float, float, bool);

	TodoReturn baseSetup(float);
	TodoReturn followObject(cocos2d::CCNode*, bool);
	bool init(float, float, float, bool, bool);
	TodoReturn updatePosition(float);

	virtual void setPosition(cocos2d::CCPoint const&);
	virtual TodoReturn removeMeAndCleanup();
	virtual TodoReturn draw();
	virtual TodoReturn updateTweenAction(float, char const*);
}

[[link(android)]]
class CCCircleWaveDelegate {
	virtual TodoReturn circleWaveWillBeRemoved(CCCircleWave*);
}

[[link(android)]]
class CCContentLayer : cocos2d::CCLayerColor {
	// virtual ~CCContentLayer();

	static CCContentLayer* create(cocos2d::ccColor4B const&, float, float);

	virtual void setPosition(cocos2d::CCPoint const&);
}

[[link(android)]]
class CCContentManager {
	// virtual ~CCContentManager();

	TodoReturn addDict(char const*, bool);
	TodoReturn addDictDS(char const*);
	TodoReturn clearCache();
	bool init();
	TodoReturn sharedManager();
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
	void setTargetCount(int);
	TodoReturn updateCounter(float);
	TodoReturn updateString();
}

[[link(android)]]
class CCExtenderNode {
	void setOpacity(unsigned int);
}

[[link(android)]]
class CCIndexPath : cocos2d::CCObject {
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

	virtual TodoReturn draw();
	virtual TodoReturn updateTweenAction(float, char const*);
}

[[link(android)]]
class CCMenuItemSpriteExtra : cocos2d::CCMenuItemSprite {
	// virtual ~CCMenuItemSpriteExtra();

	static CCMenuItemSpriteExtra* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	void setSizeMult(float);
	TodoReturn useAnimationType(MenuAnimationType);

	virtual TodoReturn activate();
	virtual TodoReturn selected();
	virtual TodoReturn unselected();
}

[[link(android)]]
class CCMenuItemToggler : cocos2d::CCMenuItem {
	// virtual ~CCMenuItemToggler();

	static CCMenuItemToggler* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	TodoReturn activeItem();
	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	TodoReturn normalTouch(cocos2d::CCObject*);
	TodoReturn selectedTouch(cocos2d::CCObject*);
	void setSizeMult(float);
	TodoReturn toggle(bool);

	virtual TodoReturn activate();
	virtual TodoReturn selected();
	virtual TodoReturn unselected();
	virtual void setEnabled(bool);
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
	virtual TodoReturn visit();
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
	void setColor(cocos2d::ccColor3B);
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
	virtual TodoReturn displayFrame();
}

[[link(android)]]
class CCScrollLayerExt : cocos2d::CCLayer {
	// virtual ~CCScrollLayerExt();
	CCScrollLayerExt(cocos2d::CCRect);

	TodoReturn constraintContent();
	TodoReturn doConstraintContent(bool);
	TodoReturn getMaxY();
	TodoReturn getMinY();
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
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setRotation(float);
	virtual void setRotationX(float);
	virtual void setRotationY(float);
	virtual TodoReturn initWithTexture(cocos2d::CCTexture2D*);
	virtual TodoReturn initWithSpriteFrameName(char const*);
	virtual void setFlipX(bool);
	virtual void setFlipY(bool);
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

	virtual TodoReturn draw();
	virtual TodoReturn initWithTexture(cocos2d::CCTexture2D*);
	virtual TodoReturn initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
	virtual TodoReturn initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
	virtual TodoReturn initWithSpriteFrame(cocos2d::CCSpriteFrame*);
	virtual TodoReturn getShaderName();
	virtual TodoReturn shaderBody();
	virtual TodoReturn updateColor();
}

[[link(android)]]
class CCTextInputNode : cocos2d::CCLayer, cocos2d::CCIMEDelegate, cocos2d::CCTextFieldDelegate {
	// virtual ~CCTextInputNode();

	static CCTextInputNode* create(float, float, char const*, char const*, int, char const*);

	TodoReturn addTextArea(TextArea*);
	TodoReturn forceOffset();
	TodoReturn getString();
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
	TodoReturn updateBlinkLabelToChar(int);
	TodoReturn updateCursorPosition(cocos2d::CCPoint, cocos2d::CCRect);
	TodoReturn updateDefaultFontValues(gd::string);
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
	virtual TodoReturn onTextFieldInsertText(cocos2d::CCTextFieldTTF*, char const*, int, cocos2d::enumKeyCodes);
	virtual TodoReturn onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF*);
	virtual TodoReturn onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF*);
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
	TodoReturn updateTimers(float);

	virtual bool init();
	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
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

	virtual bool init();
	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
}

[[link(android)]]
class CheckpointGameObject : EffectGameObject {
	// virtual ~CheckpointGameObject();

	static CheckpointGameObject* create();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn resetCheckpoint();
	TodoReturn updateCheckpointSpriteVisibility();

	virtual bool init();
	virtual TodoReturn setupCustomSprites(gd::string);
	virtual TodoReturn resetObject();
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
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

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
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

	static ColorChannelSprite* create();

	TodoReturn updateBlending(bool);
	TodoReturn updateCopyLabel(int, bool);
	TodoReturn updateOpacity(float);
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

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
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

	virtual TodoReturn show();
	virtual TodoReturn determineStartValues();
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn colorValueChanged(cocos2d::ccColor3B);
	virtual TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
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
	TodoReturn loadFromComment(GJComment*);
	void onConfirmDelete(cocos2d::CCObject* sender);
	TodoReturn onDelete();
	void onGoToLevel(cocos2d::CCObject* sender);
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
	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
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

	virtual TodoReturn keyBackClicked();
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

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
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

	virtual TodoReturn update(float);
	virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void onClose(cocos2d::CCObject* sender);
	virtual TodoReturn keyUp(cocos2d::enumKeyCodes);
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

	virtual TodoReturn update(float);
	virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn keyBackClicked();
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
	TodoReturn checkQuestsStatus();
	void onAdventureMap(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onChallenge(cocos2d::CCObject* sender);
	void onDailyLevel(cocos2d::CCObject* sender);
	void onEventLevel(cocos2d::CCObject* sender);
	void onFameLevels(cocos2d::CCObject* sender);
	void onFeaturedLevels(cocos2d::CCObject* sender);
	void onGauntlets(cocos2d::CCObject* sender);
	void onLeaderboards(cocos2d::CCObject* sender);
	void onMapPacks(cocos2d::CCObject* sender);
	void onMultiplayer(cocos2d::CCObject* sender);
	void onMyLevels(cocos2d::CCObject* sender);
	void onOnlineLevels(cocos2d::CCObject* sender);
	void onOnlyFullVersion(cocos2d::CCObject* sender);
	void onPaths(cocos2d::CCObject* sender);
	void onSavedLevels(cocos2d::CCObject* sender);
	void onSecretVault(cocos2d::CCObject* sender);
	void onTopLists(cocos2d::CCObject* sender);
	void onTreasureRoom(cocos2d::CCObject* sender);
	void onWeeklyLevel(cocos2d::CCObject* sender);
	TodoReturn scene();

	virtual bool init();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn sceneWillResume();
	virtual TodoReturn dialogClosed(DialogLayer*);
}

[[link(android)]]
class CurrencyRewardDelegate {
	virtual TodoReturn currencyWillExit(CurrencyRewardLayer*);
}

[[link(android)]]
class CurrencyRewardLayer : cocos2d::CCLayer {
	// virtual ~CurrencyRewardLayer();

	static CurrencyRewardLayer* create(int, int, int, int, CurrencySpriteType, int, CurrencySpriteType, int, cocos2d::CCPoint, CurrencyRewardType, float, float);

	TodoReturn createObjects(CurrencySpriteType, int, cocos2d::CCPoint, float);
	TodoReturn createObjectsFull(CurrencySpriteType, int, cocos2d::CCSprite*, cocos2d::CCPoint, float);
	TodoReturn createUnlockObject(cocos2d::CCSprite*, cocos2d::CCPoint, float);
	TodoReturn incrementCount(int);
	TodoReturn incrementDiamondsCount(int);
	TodoReturn incrementMoonsCount(int);
	TodoReturn incrementSpecialCount1(int);
	TodoReturn incrementSpecialCount2(int);
	TodoReturn incrementStarsCount(int);
	bool init(int, int, int, int, CurrencySpriteType, int, CurrencySpriteType, int, cocos2d::CCPoint, CurrencyRewardType, float, float);
	TodoReturn pulseSprite(cocos2d::CCSprite*);

	virtual TodoReturn update(float);
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

	virtual TodoReturn keyBackClicked();
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
	// virtual ~CustomListView();

	static CustomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float);

	TodoReturn getCellHeight(BoomListType);
	TodoReturn reloadAll();

	virtual TodoReturn setupList(float);
	virtual TodoReturn getListCell(char const*);
	virtual TodoReturn loadCell(TableViewCell*, int);
}

[[link(android)]]
class CustomMusicCell : CustomSongCell {
	// virtual ~CustomMusicCell();
	CustomMusicCell(char const*, float, float);

	TodoReturn loadFromObject(SongInfoObject*);
	TodoReturn updateBGColor(int);
}

[[link(android)]]
class CustomSFXCell : TableViewCell, CustomSFXDelegate {
	// virtual ~CustomSFXCell();
	CustomSFXCell(char const*, float, float);

	TodoReturn loadFromObject(SFXInfoObject*);
	TodoReturn shouldReload();
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual TodoReturn draw();
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

	TodoReturn loadFromObject(SongInfoObject*);
	void onDelete(cocos2d::CCObject* sender);
	TodoReturn shouldReload();
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual TodoReturn draw();
	virtual TodoReturn songIDChanged(int);
	virtual TodoReturn getActiveSongID();
	virtual TodoReturn getSongFileName();
	virtual TodoReturn getLevelSettings();
}

[[link(android)]]
class CustomSongDelegate {
	virtual TodoReturn songIDChanged(int);
	virtual TodoReturn getActiveSongID();
	virtual TodoReturn pure_virtual_00a1cde0() {} // TODO: figure out what function this is
	virtual TodoReturn pure_virtual_00a1cde4() {} // TODO: figure out what function this is
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

	virtual TodoReturn keyBackClicked();
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
class CustomSongLayerDelegate {
	virtual TodoReturn customSongLayerClosed();
}

[[link(android)]]
class CustomSongWidget : cocos2d::CCNode, MusicDownloadDelegate, FLAlertLayerProtocol {
	// virtual ~CustomSongWidget();

	static CustomSongWidget* create(SongInfoObject*, CustomSongDelegate*, bool, bool, bool, bool, bool, bool);

	TodoReturn deleteSong();
	TodoReturn downloadAssetFailed(int, GJAssetType, GJSongError);
	TodoReturn downloadAssetFinished(int, GJAssetType);
	TodoReturn downloadFailed();
	TodoReturn getSongInfoIfUnloaded();
	bool init(SongInfoObject*, CustomSongDelegate*, bool, bool, bool, bool, bool, bool);
	void onCancelDownload(cocos2d::CCObject* sender);
	void onDelete(cocos2d::CCObject* sender);
	void onDownload(cocos2d::CCObject* sender);
	void onGetSongInfo(cocos2d::CCObject* sender);
	void onMore(cocos2d::CCObject* sender);
	void onPlayback(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);
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

	bool init(GJGameLevel*, DailyLevelPage*, bool);
	void onClaimReward(cocos2d::CCObject* sender);
	void onSkipLevel(cocos2d::CCObject* sender);
	TodoReturn showSkipButton();
	TodoReturn updateTimeLabel(gd::string);

	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class DailyLevelPage : FLAlertLayer, FLAlertLayerProtocol, GJDailyLevelDelegate, LevelDownloadDelegate {
	// virtual ~DailyLevelPage();

	static DailyLevelPage* create(GJTimedLevelType);

	TodoReturn claimLevelReward(DailyLevelNode*, GJGameLevel*, cocos2d::CCPoint);
	TodoReturn createDailyNode(GJGameLevel*, bool, float, bool);
	TodoReturn createNodeIfLoaded();
	TodoReturn downloadAndCreateNode();
	TodoReturn exitDailyNode(DailyLevelNode*, float);
	TodoReturn getDailyTime();
	TodoReturn getDailyTimeString(int);
	bool init(GJTimedLevelType);
	void onClose(cocos2d::CCObject* sender);
	void onTheSafe(cocos2d::CCObject* sender);
	TodoReturn refreshDailyPage();
	TodoReturn skipDailyLevel(DailyLevelNode*, GJGameLevel*);
	TodoReturn tryGetDailyStatus();
	TodoReturn updateTimers(float);

	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn dailyStatusFinished(GJTimedLevelType);
	virtual TodoReturn dailyStatusFailed(GJTimedLevelType, GJErrorCode);
	virtual TodoReturn levelDownloadFinished(GJGameLevel*);
	virtual TodoReturn levelDownloadFailed(int);
}

[[link(android)]]
class DashRingObject : RingObject {
	// virtual ~DashRingObject();

	static DashRingObject* create(char const*);

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);

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
	virtual TodoReturn keyBackClicked();
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
	TodoReturn animateIn(DialogAnimationType);
	TodoReturn animateInDialog();
	TodoReturn animateInRandomSide();
	TodoReturn createDialogLayer(DialogObject*, cocos2d::CCArray*, int);
	TodoReturn createWithObjects(cocos2d::CCArray*, int);
	TodoReturn displayDialogObject(DialogObject*);
	TodoReturn displayNextObject();
	TodoReturn finishCurrentAnimation();
	TodoReturn handleDialogTap();
	bool init(DialogObject*, cocos2d::CCArray*, int);
	TodoReturn onClose();
	TodoReturn updateChatPlacement(DialogChatPlacement);
	TodoReturn updateNavButtonFrame();

	virtual TodoReturn onEnter();
	virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn fadeInTextFinished(TextArea*);
}

[[link(android)]]
class DialogObject : cocos2d::CCObject {
	// virtual ~DialogObject();

	static DialogObject* create(gd::string, gd::string, int, float, bool, cocos2d::ccColor3B);

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

	virtual TodoReturn update(float);
	virtual TodoReturn draw();
}

[[link(android)]]
class DungeonBarsSprite : cocos2d::CCNode {
	// virtual ~DungeonBarsSprite();

	static DungeonBarsSprite* create();

	TodoReturn animateOutBars();

	virtual bool init();
	virtual TodoReturn visit();
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
	bool init(GJGameLevel*);
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

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
	virtual void setIDPopupClosed(SetIDPopup*, int);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
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
	bool init(LevelEditorLayer*);
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

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn customSetup();
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
	TodoReturn deselectAll();
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
	TodoReturn editButton2Usable();
	TodoReturn editButtonUsable();
	TodoReturn editColor();
	TodoReturn editColorButtonUsable();
	TodoReturn editGroup(cocos2d::CCObject*);
	TodoReturn editHSV();
	TodoReturn editObject(cocos2d::CCObject*);
	TodoReturn editObject2(cocos2d::CCObject*);
	TodoReturn editObject3(cocos2d::CCObject*);
	TodoReturn editObjectSpecial(int);
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
	TodoReturn getEditColorTargets(ColorAction*&, ColorAction*&, EffectGameObject*&);
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
	TodoReturn getXMin(int);
	bool init(LevelEditorLayer*);
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
	void onEditColor(cocos2d::CCObject* sender);
	void onFindObject(cocos2d::CCObject* sender);
	void onGoToBaseLayer(cocos2d::CCObject* sender);
	void onGoToLayer(cocos2d::CCObject* sender);
	void onGroupDown(cocos2d::CCObject* sender);
	void onGroupIDFilter(cocos2d::CCObject* sender);
	void onGroupSticky(cocos2d::CCObject* sender);
	void onGroupUp(cocos2d::CCObject* sender);
	void onLockLayer(cocos2d::CCObject* sender);
	void onNewCustomItem(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onPasteColor(cocos2d::CCObject* sender);
	void onPasteInPlace(cocos2d::CCObject* sender);
	void onPasteState(cocos2d::CCObject* sender);
	void onPause(cocos2d::CCObject* sender);
	void onPlayback(cocos2d::CCObject* sender);
	void onPlaytest(cocos2d::CCObject* sender);
	void onResetSpecialFilter(cocos2d::CCObject* sender);
	void onSelectBuildTab(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onStopPlaytest(cocos2d::CCObject* sender);
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
	TodoReturn playtestStopped();
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
	TodoReturn scaleObjects(cocos2d::CCArray*, float, float, cocos2d::CCPoint, ObjectScaleType);
	TodoReturn selectAll();
	TodoReturn selectAllWithDirection(bool);
	TodoReturn selectBuildTab(int);
	TodoReturn selectObject(GameObject*, bool);
	TodoReturn selectObjects(cocos2d::CCArray*, bool);
	TodoReturn selectObjectsInRect(cocos2d::CCRect);
	TodoReturn setupCreateMenu();
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
	TodoReturn toggleEditObjectButton();
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
	TodoReturn updateButtons();
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
	TodoReturn updatePlaybackBtn();
	TodoReturn updateSlider();
	TodoReturn updateSpecialUIElements();
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
	virtual TodoReturn keyUp(cocos2d::enumKeyCodes);
	virtual TodoReturn scrollWheel(float, float);
	virtual TodoReturn angleChangeBegin();
	virtual TodoReturn angleChangeEnded();
	virtual TodoReturn angleChanged(float);
	virtual TodoReturn updateScaleControl();
	virtual TodoReturn anchorPointMoved(cocos2d::CCPoint);
	virtual TodoReturn scaleChangeBegin();
	virtual TodoReturn scaleChangeEnded();
	virtual TodoReturn scaleXChanged(float);
	virtual TodoReturn scaleYChanged(float);
	virtual TodoReturn scaleXYChanged(float, float);
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

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn getTargetColorIndex();
	bool init(char const*);
	TodoReturn playTriggerEffect();
	TodoReturn resetSpawnTrigger();
	void setTargetID(int);
	void setTargetID2(int);
	TodoReturn triggerEffectFinished();
	TodoReturn updateInteractiveHover(float);
	TodoReturn updateSpecialColor();
	TodoReturn updateSpeedModType();

	virtual void setOpacity(unsigned char);
	virtual TodoReturn firstSetup();
	virtual TodoReturn customSetup();
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
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
	TodoReturn getCoinString();
	TodoReturn getEndText();
	TodoReturn goEdit();
	void onEdit(cocos2d::CCObject* sender);
	void onEveryplay(cocos2d::CCObject* sender);
	void onLevelLeaderboard(cocos2d::CCObject* sender);
	void onMenu(cocos2d::CCObject* sender);
	void onReplay(cocos2d::CCObject* sender);
	TodoReturn playCoinEffect(float);
	TodoReturn playCurrencyEffect(float);
	TodoReturn playDiamondEffect(float);
	TodoReturn playEndEffect();
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
class EndPortalObject : GameObject {
	// virtual ~EndPortalObject();

	static EndPortalObject* create();

	TodoReturn getSpawnPos();
	TodoReturn triggerObject(GJBaseGameLayer*);
	TodoReturn updateColors(cocos2d::ccColor3B);
	TodoReturn updateEndPos(bool);

	virtual bool init();
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setVisible(bool);
}

[[link(android)]]
class EndTriggerGameObject : EffectGameObject {
	// virtual ~EndTriggerGameObject();

	static EndTriggerGameObject* create();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual bool init();
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class EnhancedGameObject : GameObject {
	// virtual ~EnhancedGameObject();
	// EnhancedGameObject();

	static EnhancedGameObject* create(char const*);

	TodoReturn createRotateAction(float, int);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);
	TodoReturn previewAnimateOnTrigger();
	TodoReturn refreshRotateAction();
	TodoReturn resetSyncedAnimation();
	TodoReturn setupAnimationVariables();
	TodoReturn triggerAnimation();
	TodoReturn updateRotateAction(float);
	TodoReturn updateState(int);
	TodoReturn updateUserCoin();
	TodoReturn waitForAnimationTrigger();

	virtual TodoReturn customSetup();
	virtual TodoReturn resetObject();
	virtual TodoReturn deactivateObject(bool);
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
}

[[link(android)]]
class EnhancedTriggerObject : EffectGameObject {
	// virtual ~EnhancedTriggerObject();

	static EnhancedTriggerObject* create(char const*);

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);

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

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);
	TodoReturn resetEnterAnimValues();

	virtual TodoReturn customSetup();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class EventLinkTrigger : EffectGameObject {
	// virtual ~EventLinkTrigger();

	static EventLinkTrigger* create();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual bool init();
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class ExplodeItemNode : cocos2d::CCNode {
	// virtual ~ExplodeItemNode();

	static ExplodeItemNode* create(cocos2d::CCRenderTexture*);

	TodoReturn createSprites(int, int, float, float, float, float, float, float, cocos2d::ccColor4F, cocos2d::ccColor4F, bool);
	bool init(cocos2d::CCRenderTexture*);

	virtual TodoReturn update(float);
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

	TodoReturn getStoreData();
	TodoReturn loadDataFromFile(char const*);
	TodoReturn sharedState();

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
	// FLAlertLayer();

	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float, bool, float, float);
	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float);
	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*);

	TodoReturn incrementForcePrio();
	bool init(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float, bool, float, float);
	bool init(int);
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
}

[[link(android)]]
class FLAlertLayerProtocol {
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class FMODAudioEngine : cocos2d::CCNode {
	// virtual ~FMODAudioEngine();
	// FMODAudioEngine();

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
	TodoReturn createStream(gd::string);
	TodoReturn disableMetering();
	TodoReturn enableMetering();
	TodoReturn fadeInBackgroundMusic(float);
	TodoReturn fadeInMusic(float, int);
	TodoReturn fadeOutMusic(float, int);
	TodoReturn getActiveMusic(int);
	TodoReturn getActiveMusicChannel(int);
	TodoReturn getBackgroundMusicVolume();
	TodoReturn getChannelGroup(int, bool);
	TodoReturn getEffectsVolume();
	TodoReturn getFMODStatus(int);
	TodoReturn getMeteringValue();
	TodoReturn getMusicChannelID(int);
	TodoReturn getMusicLengthMS(int);
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
	TodoReturn loadAudioState(FMODAudioState&);
	TodoReturn loadMusic(gd::string, float, float, float, bool, int, int);
	TodoReturn loadMusic(gd::string);
	TodoReturn pauseAllAudio();
	TodoReturn pauseAllEffects();
	TodoReturn pauseAllMusic();
	TodoReturn pauseEffect(unsigned int);
	TodoReturn pauseMusic(int);
	TodoReturn pitchForIdx(int);
	TodoReturn playEffect(gd::string, float, float, float);
	TodoReturn playEffect(gd::string);
	TodoReturn playEffectAdvanced(gd::string, float, float, float, float, bool, bool, int, int, int, int, bool, int, bool, bool, int, int, float, int);
	TodoReturn playEffectAsync(gd::string);
	TodoReturn playMusic(gd::string, bool, float, int);
	TodoReturn preloadEffect(gd::string);
	TodoReturn preloadEffectAsync(gd::string);
	TodoReturn preloadMusic(gd::string, bool, int);
	TodoReturn printResult(FMOD_RESULT);
	TodoReturn queuedEffectFinishedLoading(gd::string);
	TodoReturn queuePlayEffect(gd::string, float, float, float, float, bool, bool, int, int, int, int, bool, int, bool, int, float, int);
	TodoReturn queueStartMusic(gd::string, float, float, float, bool, int, int, int, int, int, bool, int, bool);
	TodoReturn registerChannel(FMOD::Channel*, int, int);
	TodoReturn releaseRemovedSounds();
	TodoReturn resumeAllAudio();
	TodoReturn resumeAllEffects();
	TodoReturn resumeAllMusic();
	TodoReturn resumeAudio();
	TodoReturn resumeEffect(unsigned int);
	TodoReturn resumeMusic(int);
	TodoReturn reverbToString(FMODReverbPreset);
	TodoReturn saveAudioState(FMODAudioState&);
	void setBackgroundMusicVolume(float);
	void setChannelPitch(int, AudioTargetType, float);
	void setChannelVolume(int, AudioTargetType, float);
	void setChannelVolumeMod(int, AudioTargetType, float);
	void setEffectsVolume(float);
	void setMusicTimeMS(unsigned int, bool, int);
	TodoReturn setup();
	TodoReturn setupAudioEngine();
	TodoReturn sharedEngine();
	TodoReturn start();
	TodoReturn startMusic(int, int, int, int, bool, int);
	TodoReturn stop();
	TodoReturn stopAllEffects();
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
	TodoReturn storeEffect(FMOD::Sound*, gd::string);
	TodoReturn swapMusicIndex(int, int);
	TodoReturn testFunction(int);
	TodoReturn triggerQueuedMusic(FMODQueuedMusic);
	TodoReturn unloadAllEffects();
	TodoReturn unloadEffect(gd::string);
	TodoReturn unregisterChannel(int);
	TodoReturn updateBackgroundFade();
	TodoReturn updateChannel(int, AudioTargetType, AudioModType, float, float);
	TodoReturn updateChannelTweens(float);
	TodoReturn updateMetering();
	TodoReturn updateQueuedEffects();
	TodoReturn updateQueuedMusic();
	TodoReturn updateReverb(FMODReverbPreset, bool);
	TodoReturn updateTemporaryEffects();
	TodoReturn waitUntilSoundReady(FMOD::Sound*);

	virtual TodoReturn update(float);
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
class FMODQueuedMusic {
	// FMODQueuedMusic(FMODQueuedMusic const&);
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
	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
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
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class FRequestProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, FriendRequestDelegate {
	// virtual ~FRequestProfilePage();

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

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class FriendsProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, UserListDelegate {
	// virtual ~FriendsProfilePage();

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
class GameCell : TableViewCell {
	// virtual ~GameCell();
	GameCell(char const*, float, float);

	TodoReturn loadFromString(gd::string);
	void onTouch(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual TodoReturn draw();
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

	TodoReturn acceptFriendRequest(int, int);
	TodoReturn accountIDForUserID(int);
	TodoReturn addDLToActive(char const*);
	TodoReturn areGauntletsLoaded();
	TodoReturn banUser(int);
	TodoReturn blockUser(int);
	TodoReturn cleanupDailyLevels();
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
	TodoReturn deleteComment(int, CommentType, int);
	TodoReturn deleteFriendRequests(int, cocos2d::CCArray*, bool);
	TodoReturn deleteLevel(GJGameLevel*);
	TodoReturn deleteLevelComment(int, int);
	TodoReturn deleteLevelList(GJLevelList*);
	TodoReturn deleteSentFriendRequest(int);
	TodoReturn deleteServerLevel(int);
	TodoReturn deleteServerLevelList(int);
	TodoReturn deleteSmartTemplate(GJSmartTemplate*);
	TodoReturn deleteUserMessages(GJUserMessage*, cocos2d::CCArray*, bool);
	TodoReturn downloadLevel(int, bool);
	TodoReturn downloadUserMessage(int, bool);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn followUser(int);
	TodoReturn friendRequestFromAccountID(int);
	TodoReturn friendRequestWasRemoved(int, bool);
	TodoReturn getAccountCommentKey(int, int);
	TodoReturn getAccountComments(int, int, int);
	TodoReturn getActiveDailyID(GJTimedLevelType);
	TodoReturn getActiveSmartTemplate();
	TodoReturn getAllSmartTemplates();
	TodoReturn getAllUsedSongIDs();
	TodoReturn getBasePostString();
	TodoReturn getBoolForKey(char const*);
	TodoReturn getCommentKey(int, int, int, CommentKeyType);
	TodoReturn getCompletedLevels(bool);
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
	TodoReturn getGauntletLevels(int);
	TodoReturn getGauntlets();
	TodoReturn getGauntletSearchKey(int);
	TodoReturn getGJChallenges();
	TodoReturn getGJDailyLevelState(GJTimedLevelType);
	TodoReturn getGJRewards(int);
	TodoReturn getGJUserInfo(int);
	TodoReturn getHighestLevelOrder();
	TodoReturn getIntForKey(char const*);
	TodoReturn getLeaderboardScores(char const*);
	TodoReturn getLengthStr(bool, bool, bool, bool, bool, bool);
	TodoReturn getLenKey(int);
	TodoReturn getLenVal(int);
	TodoReturn getLevelComments(int, int, int, int, CommentKeyType);
	TodoReturn getLevelDownloadKey(int, bool);
	TodoReturn getLevelKey(int);
	TodoReturn getLevelLeaderboard(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode);
	TodoReturn getLevelLeaderboardKey(int, LevelLeaderboardType, LevelLeaderboardMode);
	TodoReturn getLevelListKey(int);
	TodoReturn getLevelLists(GJSearchObject*);
	TodoReturn getLevelSaveData();
	TodoReturn getLikeAccountItemKey(LikeItemType, int, bool, int);
	TodoReturn getLikeItemKey(LikeItemType, int, bool, int);
	TodoReturn getLocalLevel(int);
	TodoReturn getLocalLevelByName(gd::string);
	TodoReturn getLocalLevelList(int);
	TodoReturn getLowestLevelOrder();
	TodoReturn getMainLevel(int, bool);
	TodoReturn getMapPackKey(int);
	TodoReturn getMapPacks(GJSearchObject*);
	TodoReturn getMessageKey(int);
	TodoReturn getMessagesKey(bool, int);
	TodoReturn getNews();
	TodoReturn getNextFreeTemplateID();
	TodoReturn getNextLevelName(gd::string);
	TodoReturn getOnlineLevels(GJSearchObject*);
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
	TodoReturn getSavedLevelLists(int);
	TodoReturn getSavedLevels(bool, int);
	TodoReturn getSavedMapPack(int);
	TodoReturn getSearchScene(char const*);
	TodoReturn getSplitIntFromKey(char const*, int);
	TodoReturn getStoredLevelComments(char const*);
	TodoReturn getStoredOnlineLevels(char const*);
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
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType);
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	TodoReturn hasDailyStateBeenLoaded(GJTimedLevelType);
	TodoReturn hasDownloadedLevel(int);
	TodoReturn hasDownloadedList(int);
	TodoReturn hasLikedAccountItem(LikeItemType, int, bool, int);
	TodoReturn hasLikedItem(LikeItemType, int, bool, int);
	TodoReturn hasLikedItemFullCheck(LikeItemType, int, int);
	TodoReturn hasRatedDemon(int);
	TodoReturn hasRatedLevelStars(int);
	TodoReturn hasReportedLevel(int);
	TodoReturn invalidateMessages(bool, bool);
	TodoReturn invalidateRequests(bool, bool);
	TodoReturn invalidateUserList(UserListType, bool);
	bool isDLActive(char const*);
	bool isFollowingUser(int);
	bool isTimeValid(char const*, float);
	bool isUpdateValid(int);
	TodoReturn itemIDFromLikeKey(char const*);
	TodoReturn keyHasTimer(char const*);
	TodoReturn levelIDFromCommentKey(char const*);
	TodoReturn levelIDFromPostCommentKey(char const*);
	TodoReturn likeFromLikeKey(char const*);
	TodoReturn likeItem(LikeItemType, int, bool, int);
	TodoReturn limitSavedLevels();
	TodoReturn makeTimeStamp(char const*);
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
	TodoReturn onDeleteCommentCompleted(gd::string, gd::string);
	TodoReturn onDeleteFriendRequestCompleted(gd::string, gd::string);
	TodoReturn onDeleteServerLevelCompleted(gd::string, gd::string);
	TodoReturn onDeleteServerLevelListCompleted(gd::string, gd::string);
	TodoReturn onDeleteUserMessagesCompleted(gd::string, gd::string);
	TodoReturn onDownloadLevelCompleted(gd::string, gd::string);
	TodoReturn onDownloadUserMessageCompleted(gd::string, gd::string);
	TodoReturn onGetAccountCommentsCompleted(gd::string, gd::string);
	TodoReturn onGetFriendRequestsCompleted(gd::string, gd::string);
	TodoReturn onGetGauntletsCompleted(gd::string, gd::string);
	TodoReturn onGetGJChallengesCompleted(gd::string, gd::string);
	TodoReturn onGetGJDailyLevelStateCompleted(gd::string, gd::string);
	TodoReturn onGetGJRewardsCompleted(gd::string, gd::string);
	TodoReturn onGetGJUserInfoCompleted(gd::string, gd::string);
	TodoReturn onGetLeaderboardScoresCompleted(gd::string, gd::string);
	TodoReturn onGetLevelCommentsCompleted(gd::string, gd::string);
	TodoReturn onGetLevelLeaderboardCompleted(gd::string, gd::string);
	TodoReturn onGetLevelListsCompleted(gd::string, gd::string);
	TodoReturn onGetLevelSaveDataCompleted(gd::string, gd::string);
	TodoReturn onGetMapPacksCompleted(gd::string, gd::string);
	TodoReturn onGetNewsCompleted(gd::string, gd::string);
	TodoReturn onGetOnlineLevelsCompleted(gd::string, gd::string);
	TodoReturn onGetTopArtistsCompleted(gd::string, gd::string);
	TodoReturn onGetUserListCompleted(gd::string, gd::string);
	TodoReturn onGetUserMessagesCompleted(gd::string, gd::string);
	TodoReturn onGetUsersCompleted(gd::string, gd::string);
	TodoReturn onLikeItemCompleted(gd::string, gd::string);
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
	TodoReturn onUploadCommentCompleted(gd::string, gd::string);
	TodoReturn onUploadFriendRequestCompleted(gd::string, gd::string);
	TodoReturn onUploadLevelCompleted(gd::string, gd::string);
	TodoReturn onUploadLevelListCompleted(gd::string, gd::string);
	TodoReturn onUploadUserMessageCompleted(gd::string, gd::string);
	TodoReturn pageFromCommentKey(char const*);
	TodoReturn parseRestoreData(gd::string);
	TodoReturn performNetworkTest();
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn processOnDownloadLevelCompleted(gd::string, gd::string, bool);
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
	TodoReturn resetAccountComments(int);
	TodoReturn resetAllTimers();
	TodoReturn resetCommentTimersForLevelID(int, CommentKeyType);
	TodoReturn resetDailyLevelState(GJTimedLevelType);
	TodoReturn resetGauntlets();
	TodoReturn resetStoredUserInfo(int);
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
	void setBoolForKey(bool, char const*);
	void setDiffVal(int, bool);
	void setFolderName(int, gd::string, bool);
	void setIntForKey(int, char const*);
	void setLenVal(int, bool);
	void setLevelFeatured(int, int, bool);
	void setLevelStars(int, int, bool);
	TodoReturn sharedState();
	TodoReturn specialFromLikeKey(char const*);
	TodoReturn storeCommentsResult(cocos2d::CCArray*, gd::string, char const*);
	TodoReturn storeDailyLevelState(int, int, GJTimedLevelType);
	TodoReturn storeFriendRequest(GJFriendRequest*);
	TodoReturn storeSearchResult(cocos2d::CCArray*, gd::string, char const*);
	TodoReturn storeUserInfo(GJUserScore*);
	TodoReturn storeUserMessage(GJUserMessage*);
	TodoReturn storeUserMessageReply(int, GJUserMessage*);
	TodoReturn storeUserName(int, int, gd::string);
	TodoReturn storeUserNames(gd::string);
	TodoReturn submitUserInfo();
	TodoReturn suggestLevelStars(int, int, int);
	TodoReturn tryGetUsername(int);
	TodoReturn typeFromCommentKey(char const*);
	TodoReturn typeFromLikeKey(char const*);
	TodoReturn unblockUser(int);
	TodoReturn unfollowUser(int);
	TodoReturn updateDescription(int, gd::string);
	TodoReturn updateLevel(GJGameLevel*);
	TodoReturn updateLevelOrders();
	TodoReturn updateLevelRewards(GJGameLevel*);
	TodoReturn updateSavedLevelList(GJLevelList*);
	TodoReturn updateUsernames();
	TodoReturn updateUserScore();
	TodoReturn uploadAccountComment(gd::string);
	TodoReturn uploadComment(gd::string, CommentType, int, int);
	TodoReturn uploadFriendRequest(int, gd::string);
	TodoReturn uploadLevel(GJGameLevel*);
	TodoReturn uploadLevelComment(int, gd::string, int);
	TodoReturn uploadLevelList(GJLevelList*);
	TodoReturn uploadUserMessage(int, gd::string, gd::string);
	TodoReturn userIDForAccountID(int);
	TodoReturn userInfoForAccountID(int);
	TodoReturn userNameForUserID(int);
	TodoReturn verifyLevelState(GJGameLevel*);
	TodoReturn writeSpecialFilters(GJSearchObject*);

	virtual bool init();
}

[[link(android)]]
class GameManager : GManager {
	// virtual ~GameManager();

	TodoReturn accountStatusChanged();
	TodoReturn activeIconForType(IconType);
	TodoReturn addCustomAnimationFrame(int, int, gd::string, gd::string);
	TodoReturn addDuplicateLastFrame(int);
	TodoReturn addGameAnimation(int, int, float, gd::string, gd::string, int);
	TodoReturn addIconDelegate(cocos2d::CCObject*, int);
	TodoReturn addNewCustomObject(gd::string);
	TodoReturn addToGJLog(cocos2d::CCString*);
	TodoReturn applicationDidEnterBackground();
	TodoReturn applicationWillEnterForeground();
	TodoReturn calculateBaseKeyForIcons();
	TodoReturn canShowRewardedVideo();
	TodoReturn checkSteamAchievementUnlock();
	TodoReturn checkUsedIcons();
	TodoReturn claimItemsResponse(gd::string);
	TodoReturn clearGJLog();
	TodoReturn colorForIdx(int);
	TodoReturn colorForPos(int);
	TodoReturn colorKey(int, UnlockType);
	TodoReturn completedAchievement(gd::string);
	TodoReturn countForType(IconType);
	TodoReturn defaultFrameForAnimation(int);
	TodoReturn defaultYOffsetForBG2(int);
	TodoReturn didExitPlayscene();
	TodoReturn doQuickSave();
	TodoReturn dpadConfigToString(UIButtonConfig&);
	TodoReturn eventUnlockFeature(char const*);
	TodoReturn fadeInMenuMusic();
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
	TodoReturn getGameVariable(char const*);
	TodoReturn getGTexture(int);
	TodoReturn getIconRequestID();
	TodoReturn getIntGameVariable(char const*);
	TodoReturn getMenuMusicFile();
	TodoReturn getMGTexture(int);
	TodoReturn getNextUniqueObjectKey();
	TodoReturn getNextUsedKey(int, bool);
	TodoReturn getOrderedCustomObjectKeys();
	TodoReturn getPracticeMusicFile();
	TodoReturn getUGV(char const*);
	TodoReturn getUnlockForAchievement(gd::string, int&, UnlockType&);
	TodoReturn groundHasSecondaryColor(int);
	TodoReturn iconAndTypeForKey(int, int&, int&);
	TodoReturn iconKey(int, IconType);
	TodoReturn iconTypeToUnlockType(IconType);
	bool isColorUnlocked(int, UnlockType);
	bool isIconLoaded(int, int);
	bool isIconUnlocked(int, IconType);
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
	TodoReturn loadIcon(int, int, int);
	TodoReturn loadIconAsync(int, int, int, cocos2d::CCObject*);
	TodoReturn loadMiddleground(int);
	TodoReturn loadMiddlegroundAsync(int);
	TodoReturn loadVideoSettings();
	TodoReturn lockColor(int, UnlockType);
	TodoReturn lockIcon(int, IconType);
	TodoReturn logLoadedIconInfo();
	TodoReturn openEditorGuide();
	TodoReturn playMenuMusic();
	TodoReturn playSFXTrigger(SFXTriggerGameObject*);
	TodoReturn prepareDPadSettings();
	TodoReturn printGJLog();
	TodoReturn queueReloadMenu();
	TodoReturn rateGame();
	TodoReturn recountUserStats(gd::string);
	TodoReturn reloadAll(bool, bool, bool);
	TodoReturn reloadAllStep2();
	TodoReturn reloadAllStep3();
	TodoReturn reloadAllStep4();
	TodoReturn reloadAllStep5();
	TodoReturn reloadMenu();
	TodoReturn removeCustomObject(int);
	TodoReturn removeIconDelegate(int);
	TodoReturn reorderKey(int, bool);
	TodoReturn reportAchievementWithID(char const*, int, bool);
	TodoReturn reportPercentageForLevel(int, int, bool);
	TodoReturn resetAchievement(gd::string);
	TodoReturn resetAdTimer();
	TodoReturn resetAllIcons();
	TodoReturn resetCoinUnlocks();
	TodoReturn resetDPadSettings(bool);
	TodoReturn resolutionForKey(int);
	TodoReturn returnToLastScene(GJGameLevel*);
	TodoReturn rewardedVideoAdFinished(int);
	TodoReturn rewardedVideoHidden();
	TodoReturn rewardedVideoHiddenDelayed();
	TodoReturn safePopScene();
	TodoReturn saveAdTimer();
	TodoReturn saveDPadLayout(int, bool);
	void setGameVariable(char const*, bool);
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
	void setUGV(char const*, bool);
	TodoReturn setupGameAnimations();
	TodoReturn sharedState();
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
	TodoReturn unloadIcons(int);
	TodoReturn unlockColor(int, UnlockType);
	TodoReturn unlockedPremium();
	TodoReturn unlockIcon(int, IconType);
	TodoReturn unlockTypeToIconType(int);
	TodoReturn updateCustomFPS();
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
	TodoReturn colorForMode(int, bool);
	TodoReturn commonInteractiveSetup();
	TodoReturn commonSetup();
	TodoReturn copyGroups(GameObject*);
	TodoReturn createAndAddParticle(int, char const*, int, cocos2d::tCCPositionType);
	TodoReturn createColorGroupContainer(int);
	TodoReturn createGlow(gd::string);
	TodoReturn createGroupContainer(int);
	TodoReturn createOpacityGroupContainer(int);
	TodoReturn createSpriteColor(int);
	TodoReturn createWithFrame(char const*);
	TodoReturn createWithKey(int);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn deselectObject();
	TodoReturn destroyObject();
	TodoReturn determineSlopeDirection();
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
	TodoReturn getActiveColorForMode(int, bool);
	TodoReturn getBallFrame(int);
	TodoReturn getBoundingRect();
	TodoReturn getBoxOffset();
	TodoReturn getColorFrame(gd::string);
	TodoReturn getColorIndex();
	TodoReturn getColorKey(bool, bool);
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
	TodoReturn groupOpacityMod();
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
	bool isFacingDown();
	bool isFacingLeft();
	bool isSettingsObject();
	bool isSpawnableTrigger();
	bool isSpecialObject();
	bool isSpeedObject();
	bool isStoppableTrigger();
	bool isTrigger();
	TodoReturn loadGroupsFromString(gd::string);
	TodoReturn makeInvisible();
	TodoReturn objectFromVector(gd::vector<gd::string>&, gd::vector<void*>&, GJBaseGameLayer*, bool);
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
	TodoReturn shouldBlendColor(GJSpriteColor*, bool);
	TodoReturn shouldLockX();
	TodoReturn shouldNotHideAnimFreeze();
	TodoReturn shouldShowPickupEffects();
	TodoReturn slopeFloorTop();
	TodoReturn slopeWallLeft();
	TodoReturn slopeYPos(cocos2d::CCRect);
	TodoReturn slopeYPos(float);
	TodoReturn slopeYPos(GameObject*);
	TodoReturn spawnDefaultPickupParticle(GJBaseGameLayer*);
	TodoReturn updateBlendMode();
	TodoReturn updateCustomColorType(short);
	TodoReturn updateCustomScaleX(float);
	TodoReturn updateCustomScaleY(float);
	TodoReturn updateHSVState();
	TodoReturn updateIsOriented();
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

	virtual TodoReturn update(float);
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setScale(float);
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setVisible(bool);
	virtual void setRotation(float);
	virtual void setRotationX(float);
	virtual void setRotationY(float);
	virtual void setOpacity(unsigned char);
	virtual TodoReturn initWithTexture(cocos2d::CCTexture2D*);
	virtual void setChildColor(cocos2d::ccColor3B const&);
	virtual void setFlipX(bool);
	virtual void setFlipY(bool);
	virtual TodoReturn firstSetup();
	virtual TodoReturn customSetup();
	virtual TodoReturn setupCustomSprites(gd::string);
	virtual TodoReturn addMainSpriteToParent(bool);
	virtual TodoReturn resetObject();
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn activateObject();
	virtual TodoReturn deactivateObject(bool);
	virtual TodoReturn transferObjectRect(cocos2d::CCRect&);
	virtual TodoReturn getObjectRect();
	virtual TodoReturn getObjectRect(float, float);
	virtual TodoReturn getObjectRect2(float, float);
	virtual TodoReturn getObjectTextureRect();
	virtual TodoReturn getRealPosition();
	virtual void setStartPos(cocos2d::CCPoint);
	virtual TodoReturn updateStartValues();
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
}

[[link(android)]]
class GameObjectCopy : cocos2d::CCObject {
	// virtual ~GameObjectCopy();

	static GameObjectCopy* create(GameObject*);

	bool init(GameObject*);
	TodoReturn resetObject();
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
	TodoReturn showPracticeMusicSyncUnlockInfo();

	virtual TodoReturn setupOptions();
	virtual TodoReturn didToggle(int);
}

[[link(android)]]
class GameOptionsTrigger : EffectGameObject {
	// virtual ~GameOptionsTrigger();

	static GameOptionsTrigger* create(char const*);

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class GameRateDelegate {
	virtual TodoReturn updateRate();
}

[[link(android)]]
class GameStatsManager : cocos2d::CCNode {
	// virtual ~GameStatsManager();

	TodoReturn accountIDForIcon(int, UnlockType);
	TodoReturn addSimpleSpecialChestReward(gd::string, UnlockType, int, bool);
	TodoReturn addSpecialRewardDescription(gd::string, gd::string);
	TodoReturn addStoreItem(int, int, int, int, ShopType);
	TodoReturn areChallengesLoaded();
	TodoReturn areRewardsLoaded();
	TodoReturn awardCurrencyForLevel(GJGameLevel*);
	TodoReturn awardDiamondsForLevel(GJGameLevel*);
	TodoReturn awardSecretKey();
	TodoReturn checkAchievement(char const*);
	TodoReturn checkCoinAchievement(GJGameLevel*);
	TodoReturn checkCoinsForLevel(GJGameLevel*);
	TodoReturn claimListReward(GJLevelList*);
	TodoReturn collectReward(GJRewardType, GJRewardItem*);
	TodoReturn collectVideoReward(int);
	TodoReturn completedChallenge(GJChallengeItem*);
	TodoReturn completedDailyLevel(GJGameLevel*);
	TodoReturn completedDemonLevel(GJGameLevel*);
	TodoReturn completedLevel(GJGameLevel*);
	TodoReturn completedMapPack(GJMapPack*);
	TodoReturn completedStarLevel(GJGameLevel*);
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
	TodoReturn getAwardedCurrencyForLevel(GJGameLevel*);
	TodoReturn getAwardedDiamondsForLevel(GJGameLevel*);
	TodoReturn getBaseCurrency(int, bool, int);
	TodoReturn getBaseCurrencyForLevel(GJGameLevel*);
	TodoReturn getBaseDiamonds(int);
	TodoReturn getBonusDiamonds(int);
	TodoReturn getChallenge(int);
	TodoReturn getChallengeKey(GJChallengeItem*);
	TodoReturn getCollectedCoinsForLevel(GJGameLevel*);
	TodoReturn getCompletedMapPacks();
	TodoReturn getCurrencyKey(GJGameLevel*);
	TodoReturn getDailyLevelKey(int);
	TodoReturn getDemonLevelKey(GJGameLevel*);
	TodoReturn getGauntletRewardKey(int);
	TodoReturn getItemKey(int, int);
	TodoReturn getItemUnlockState(int, UnlockType);
	TodoReturn getItemUnlockStateLite(int, UnlockType);
	TodoReturn getLevelKey(GJGameLevel*);
	TodoReturn getLevelKey(int, bool, bool, bool);
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
	TodoReturn getStat(char const*);
	TodoReturn getStatFromKey(StatKey);
	TodoReturn getStoreItem(int, int);
	TodoReturn getStoreItem(int);
	TodoReturn getTotalCollectedCurrency();
	TodoReturn getTotalCollectedDiamonds();
	TodoReturn hasClaimedListReward(GJLevelList*);
	TodoReturn hasCompletedChallenge(GJChallengeItem*);
	TodoReturn hasCompletedDailyLevel(int);
	TodoReturn hasCompletedDemonLevel(GJGameLevel*);
	TodoReturn hasCompletedGauntletLevel(int);
	TodoReturn hasCompletedLevel(GJGameLevel*);
	TodoReturn hasCompletedMainLevel(int);
	TodoReturn hasCompletedMapPack(int);
	TodoReturn hasCompletedOnlineLevel(int);
	TodoReturn hasCompletedStarLevel(GJGameLevel*);
	TodoReturn hasPendingUserCoin(char const*);
	TodoReturn hasRewardBeenCollected(GJRewardType, int);
	TodoReturn hasSecretCoin(char const*);
	TodoReturn hasUserCoin(char const*);
	TodoReturn incrementActivePath(int);
	TodoReturn incrementChallenge(GJChallengeType, int);
	TodoReturn incrementStat(char const*, int);
	TodoReturn incrementStat(char const*);
	bool isGauntletChestUnlocked(int);
	bool isItemEnabled(UnlockType, int);
	bool isItemUnlocked(UnlockType, int);
	bool isPathChestUnlocked(int);
	bool isPathUnlocked(StatKey);
	bool isSecretChestUnlocked(int);
	bool isSecretCoin(gd::string);
	bool isSecretCoinValid(gd::string);
	bool isSpecialChestLiteUnlockable(gd::string);
	bool isSpecialChestUnlocked(gd::string);
	bool isStoreItemUnlocked(int);
	TodoReturn keyCostForSecretChest(int);
	TodoReturn logCoins();
	TodoReturn markLevelAsCompletedAndClaimed(GJGameLevel*);
	TodoReturn postLoadGameStats();
	TodoReturn preProcessReward(GJRewardItem*);
	TodoReturn preSaveGameStats();
	TodoReturn processChallengeQueue(int);
	TodoReturn purchaseItem(int);
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
	void setStat(char const*, int);
	void setStatIfHigher(char const*, int);
	TodoReturn setupIconCredits();
	TodoReturn sharedState();
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
	TodoReturn toggleEnableItem(UnlockType, int, bool);
	TodoReturn trySelectActivePath();
	TodoReturn uncompleteLevel(GJGameLevel*);
	TodoReturn unlockGauntletChest(int);
	TodoReturn unlockPathChest(int);
	TodoReturn unlockSecretChest(int);
	TodoReturn unlockSpecialChest(gd::string);
	TodoReturn updateActivePath(StatKey);
	TodoReturn usernameForAccountID(int);
	TodoReturn verifyUserCoins();

	virtual bool init();
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
	static TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCArray*);
	static TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, float, float, float, cocos2d::CCPoint, char const*, bool, int, cocos2d::CCArray*);
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

	bool init(GauntletType);
	void onBack(cocos2d::CCObject* sender);
	void onLevel(cocos2d::CCObject* sender);
	TodoReturn scene(GauntletType);
	TodoReturn setupGauntlet(cocos2d::CCArray*);
	TodoReturn unlockActiveItem();

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	virtual TodoReturn loadLevelsFailed(char const*, int);
}

[[link(android)]]
class GauntletNode : cocos2d::CCNode {
	// virtual ~GauntletNode();

	static GauntletNode* create(GJMapPack*);

	TodoReturn frameForType(GauntletType);
	bool init(GJMapPack*);
	TodoReturn nameForType(GauntletType);
	TodoReturn onClaimReward();
}

[[link(android)]]
class GauntletSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate, LevelManagerDelegate {
	// virtual ~GauntletSelectLayer();

	static GauntletSelectLayer* create(int);

	TodoReturn goToPage(int, bool);
	bool init(int);
	void onBack(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onNext(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onPrev(cocos2d::CCObject* sender);
	void onRefresh(cocos2d::CCObject* sender);
	TodoReturn scene(int);
	TodoReturn setupGauntlets();
	TodoReturn unblockPlay();
	TodoReturn updateArrows();

	virtual TodoReturn onExit();
	virtual TodoReturn keyBackClicked();
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

	static GhostTrailEffect* create();

	TodoReturn doBlendAdditive();
	TodoReturn runWithTarget(cocos2d::CCSprite*, float, float, float, float, bool);
	TodoReturn stopTrail();
	TodoReturn trailSnapshot(float);

	virtual bool init();
	virtual TodoReturn draw();
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

	TodoReturn addDLToActive(char const*, cocos2d::CCObject*);
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
	TodoReturn sharedState();
	TodoReturn syncAccount(gd::string);
	TodoReturn unlinkFromAccount();
	TodoReturn updateAccountSettings(int, int, int, gd::string, gd::string, gd::string);

	virtual bool init();
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
	bool init(int);
	void onClose(cocos2d::CCObject* sender);
	void onCommentSetting(cocos2d::CCObject* sender);
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
	TodoReturn addObjectCounter(LabelGameObject*);
	TodoReturn addPickupTrigger(CountTriggerGameObject*);
	TodoReturn addPoints(int);
	TodoReturn addProximityVolumeEffect(int, int, SFXTriggerGameObject*);
	TodoReturn addRemapTargets(gd::set<int>&);
	TodoReturn addToGroupParents(GameObject*);
	TodoReturn addToGroups(GameObject*, bool);
	TodoReturn addToObjectsToShow(GameObject*);
	TodoReturn addUIObject(GameObject*);
	TodoReturn animateInDualGroundNew(GameObject*, float, bool, float);
	TodoReturn animateInGroundNew(bool, float, bool);
	TodoReturn animateOutGroundNew(bool);
	TodoReturn animatePortalY(float, float, float, float);
	TodoReturn applyLevelSettings(GameObject*);
	TodoReturn applyRemap(EffectGameObject*, gd::vector<int> const&, gd::unordered_map<int, int>&);
	TodoReturn applySFXEditTrigger(int, int, SFXTriggerGameObject*);
	TodoReturn applyShake(cocos2d::CCPoint&);
	TodoReturn assignNewStickyGroups(cocos2d::CCArray*);
	TodoReturn asyncBGLoaded(int);
	TodoReturn asyncGLoaded(int);
	TodoReturn asyncMGLoaded(int);
	TodoReturn atlasValue(int);
	TodoReturn bumpPlayer(PlayerObject*, EffectGameObject*);
	TodoReturn buttonIDToButton(int);
	TodoReturn calculateColorGroups();
	TodoReturn cameraMoveX(float, float, float, bool);
	TodoReturn cameraMoveY(float, float, float, bool);
	TodoReturn canBeActivatedByPlayer(PlayerObject*, EffectGameObject*);
	TodoReturn canProcessSFX(SFXTriggerState&, gd::unordered_map<int, int>&, gd::unordered_map<int, float>&, gd::vector<SFXTriggerState>&);
	TodoReturn canTouchObject(GameObject*);
	TodoReturn checkCameraLimitAfterTeleport(PlayerObject*, float);
	TodoReturn checkCollision(int, int);
	TodoReturn checkCollisionBlocks(EffectGameObject*, gd::vector<EffectGameObject*>*, int);
	TodoReturn checkCollisions(PlayerObject*, float, bool);
	TodoReturn checkRepellPlayer();
	TodoReturn checkSpawnObjects();
	TodoReturn claimMoveAction(int, bool);
	TodoReturn claimParticle(gd::string, int);
	TodoReturn claimRotationAction(int, int, float&, float&, bool, bool);
	TodoReturn clearActivatedAudioTriggers();
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
	TodoReturn convertToClosestDirection(float, float);
	TodoReturn createBackground(int);
	TodoReturn createGroundLayer(int, int);
	TodoReturn createMiddleground(int);
	TodoReturn createNewKeyframeAnim();
	TodoReturn createParticle(int, char const*, int, cocos2d::tCCPositionType);
	TodoReturn createPlayer();
	TodoReturn createPlayerCollisionBlock();
	TodoReturn createTextLayers();
	TodoReturn damagingObjectsInRect(cocos2d::CCRect, bool);
	TodoReturn destroyObject(GameObject*);
	TodoReturn enterDualMode(GameObject*, bool);
	TodoReturn exitStaticCamera(bool, bool, float, int, float, bool, float, bool);
	TodoReturn flipFinished();
	TodoReturn flipGravity(PlayerObject*, bool, bool);
	TodoReturn flipObjects();
	TodoReturn gameEventToString(GJGameEvent);
	TodoReturn gameEventTriggered(GJGameEvent, int, int);
	TodoReturn generateEnterEasingBuffer(int, float);
	TodoReturn generateEnterEasingBuffers(EnterEffectObject*);
	TodoReturn generatePickupAnimRandVal(GameObject*, float&, float&);
	TodoReturn generateSpawnRemap();
	TodoReturn generateTargetGroups();
	TodoReturn generateVisibilityGroups();
	TodoReturn getActiveOrderSpawnObjects();
	TodoReturn getAreaObjectValue(EnterEffectInstance*, GameObject*, cocos2d::CCPoint&, bool&);
	TodoReturn getBumpMod(PlayerObject*, int);
	TodoReturn getCameraEdgeValue(int);
	TodoReturn getCapacityString();
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
	TodoReturn getMinDistance(cocos2d::CCPoint, cocos2d::CCArray*, float, int);
	TodoReturn getMinPortalY();
	TodoReturn getModifiedDelta(float);
	TodoReturn getMoveTargetDelta(EffectGameObject*, bool);
	TodoReturn getOptimizedGroup(int);
	TodoReturn getOtherPlayer(PlayerObject*);
	TodoReturn getParticleKey(int, char const*, int, cocos2d::tCCPositionType);
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
	TodoReturn getSingleGroupObject(int);
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
	TodoReturn hasUniqueCoin(EffectGameObject*);
	TodoReturn increaseBatchNodeCapacity();
	bool isFlipping();
	bool isPlayer2Button(int);
	TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::ccColor3B);
	TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::ccColor3B, float, float, int, bool, float);
	TodoReturn loadGroupParentsFromString(GameObject*, gd::string);
	TodoReturn loadLevelSettings();
	TodoReturn loadStartPosObject();
	TodoReturn loadUpToPosition(float, int, int);
	TodoReturn maxZOrderForShaderZ(int);
	TodoReturn minZOrderForShaderZ(int);
	TodoReturn modifyGroupPhysics(AdvancedFollowEditObject*, cocos2d::CCArray*);
	TodoReturn modifyObjectPhysics(AdvancedFollowEditObject*, GameObjectPhysics&);
	TodoReturn moveAreaObject(GameObject*, float, float);
	TodoReturn moveCameraToPos(cocos2d::CCPoint);
	TodoReturn moveObject(GameObject*, double, double, bool);
	TodoReturn moveObjects(cocos2d::CCArray*, double, double, bool);
	TodoReturn moveObjectsSilent(int, double, double);
	TodoReturn objectIntersectsCircle(GameObject*, GameObject*);
	TodoReturn objectTypeToGameEvent(int);
	TodoReturn optimizeMoveGroups();
	TodoReturn orderSpawnObjects();
	TodoReturn parentForZLayer(int, bool, int, int);
	TodoReturn pauseAudio();
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
	TodoReturn playerWillSwitchMode(PlayerObject*, GameObject*);
	TodoReturn playExitDualEffect(PlayerObject*);
	TodoReturn playFlashEffect(float, int, float);
	TodoReturn playKeyframeAnimation(KeyframeAnimTriggerObject*, gd::vector<int> const&);
	TodoReturn playSpeedParticle(float);
	TodoReturn positionForShaderTarget(int);
	TodoReturn positionUIObjects();
	TodoReturn prepareSavePositionObjects();
	TodoReturn prepareTransformParent(bool);
	TodoReturn preResumeGame();
	TodoReturn preUpdateVisibility(float);
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
	TodoReturn processDynamicObjectActions(int, float);
	TodoReturn processFollowActions();
	TodoReturn processItems();
	TodoReturn processMoveActions();
	TodoReturn processMoveActionsStep(float, bool);
	TodoReturn processOptionsTrigger(GameOptionsTrigger*);
	TodoReturn processPlayerFollowActions(float);
	TodoReturn processQueuedAudioTriggers();
	TodoReturn processQueuedButtons();
	TodoReturn processRotationActions();
	TodoReturn processSFXObjects();
	TodoReturn processSFXState(SFXTriggerState*, SFXTriggerState*, int, float);
	TodoReturn processSongState(int, float, float, int, float, float, gd::vector<SongTriggerState>*);
	TodoReturn processStateObjects();
	TodoReturn processTransformActions(bool);
	TodoReturn queueButton(int, bool, bool);
	TodoReturn reAddToStickyGroup(GameObject*);
	TodoReturn recordAction(int, bool, bool);
	TodoReturn rectIntersectsCircle(cocos2d::CCRect, cocos2d::CCPoint, float);
	TodoReturn refreshCounterLabels();
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
	TodoReturn removeGroupParent(int);
	TodoReturn removeKeyframe(KeyframeGameObject*);
	TodoReturn removeMiddleground();
	TodoReturn removeObjectFromSection(GameObject*);
	TodoReturn removePlayer2();
	TodoReturn removeTemporaryParticles();
	TodoReturn reorderObjectSection(GameObject*);
	TodoReturn reparentObject(cocos2d::CCNode*, cocos2d::CCNode*);
	TodoReturn resetActiveEnterEffects();
	TodoReturn resetAreaObjectValues(GameObject*, bool);
	TodoReturn resetAudio();
	TodoReturn resetCamera();
	TodoReturn resetGradientLayers();
	TodoReturn resetGroupCounters(bool);
	TodoReturn resetLevelVariables();
	TodoReturn resetMoveOptimizedValue();
	TodoReturn resetPlayer();
	TodoReturn resetSongTriggerValues();
	TodoReturn resetSpawnChannelIndex();
	TodoReturn resetStaticCamera(bool, bool);
	TodoReturn resetStoppedAreaObjects();
	TodoReturn restoreAllUIObjects();
	TodoReturn restoreDefaultGameplayOffsetX();
	TodoReturn restoreDefaultGameplayOffsetY();
	TodoReturn restoreRemap(EffectGameObject*, gd::unordered_map<int, int>&);
	TodoReturn resumeAudio();
	TodoReturn rotateAreaObjects(GameObject*, cocos2d::CCArray*, float, bool);
	TodoReturn rotateObject(GameObject*, float);
	TodoReturn rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint, cocos2d::CCPoint, bool, bool);
	void setGroupParent(GameObject*, int);
	void setStartPosObject(StartPosObject*);
	TodoReturn setupLayers();
	TodoReturn setupLevelStart(LevelSettingsObject*);
	TodoReturn setupReplay(gd::string);
	TodoReturn shakeCamera(float, float, float);
	TodoReturn shouldExitHackedLevel();
	TodoReturn sortAllGroupsX();
	TodoReturn sortGroups();
	TodoReturn sortSectionVector();
	TodoReturn sortStickyGroups();
	TodoReturn spawnGroupTriggered(int, float, bool, gd::vector<int> const&, int, int);
	TodoReturn spawnObjectsInOrder(cocos2d::CCArray*, double, gd::vector<int> const&, int, int);
	TodoReturn spawnParticle(char const*, int, cocos2d::tCCPositionType, cocos2d::CCPoint);
	TodoReturn spawnParticleTrigger(int, cocos2d::CCPoint, float, float);
	TodoReturn spawnParticleTrigger(SpawnParticleGameObject*);
	TodoReturn spawnPlayer2();
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
	TodoReturn syncBGTextures();
	TodoReturn teleportPlayer(TeleportPortalObject*, PlayerObject*);
	TodoReturn testInstantCountTrigger(int, int, int, bool, int, gd::vector<int> const&, int, int);
	TodoReturn toggleAudioVisualizer(bool);
	TodoReturn toggleDualMode(GameObject*, bool, PlayerObject*, bool);
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
	TodoReturn updateCamera(float);
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
	TodoReturn updateGradientLayers();
	TodoReturn updateGroundShadows();
	TodoReturn updateGuideArt();
	TodoReturn updateInternalCamOffsetX(float, float, float);
	TodoReturn updateInternalCamOffsetY(float, float, float);
	TodoReturn updateKeyframeOrder(int);
	TodoReturn updateLayerCapacity(gd::string);
	TodoReturn updateLegacyLayerCapacity(int, int, int, int);
	TodoReturn updateLevelColors();
	TodoReturn updateMaxGameplayY();
	TodoReturn updateMGArtSpeed(float, float);
	TodoReturn updateMGOffsetY(float, float, int, float, int, int);
	TodoReturn updateOBB2(cocos2d::CCRect);
	TodoReturn updateParticles(float);
	TodoReturn updatePlatformerTime();
	TodoReturn updatePlayerCollisionBlocks();
	TodoReturn updateProximityVolumeEffects();
	TodoReturn updateQueuedLabels();
	TodoReturn updateReplay();
	TodoReturn updateSavePositionObjects();
	TodoReturn updateShaderLayer(float);
	TodoReturn updateSpecialGroupData();
	TodoReturn updateSpecialLabels();
	TodoReturn updateStaticCameraPos(cocos2d::CCPoint, bool, bool, bool, float, int, float);
	TodoReturn updateStaticCameraPosToGroup(int, bool, bool, bool, float, float, int, float, bool, float);
	TodoReturn updateTimeMod(float, bool, bool);
	TodoReturn updateTimerLabels();
	TodoReturn updateZoom(float, float, int, float, int, int);
	TodoReturn visitWithColorFlash();
	TodoReturn volumeForProximityEffect(SFXTriggerInstance&);

	virtual TodoReturn update(float);
	virtual bool init();
	virtual TodoReturn visit();
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
	virtual TodoReturn updateColor(cocos2d::ccColor3B&, float, int, bool, float, cocos2d::ccHSVValue&, int, bool, EffectGameObject*, int, int);
	virtual TodoReturn toggleGroupTriggered(int, bool, gd::vector<int> const&, int, int);
	virtual TodoReturn spawnGroup(int, bool, double, gd::vector<int> const&, int, int);
	virtual TodoReturn spawnObject(GameObject*, double, gd::vector<int> const&);
	virtual TodoReturn activateEndTrigger(int, bool, bool);
	virtual TodoReturn activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&);
	virtual TodoReturn toggleGlitter(bool);
	virtual TodoReturn destroyPlayer(PlayerObject*, GameObject*);
	virtual TodoReturn addToSection(GameObject*);
	virtual TodoReturn addToGroup(GameObject*, int, bool);
	virtual TodoReturn removeFromGroup(GameObject*, int);
	virtual TodoReturn updateObjectSection(GameObject*);
	virtual TodoReturn updateDisabledObjectsLastPos(cocos2d::CCArray*);
	virtual TodoReturn toggleGroundVisibility(bool);
	virtual TodoReturn toggleMGVisibility(bool);
	virtual TodoReturn toggleHideAttempts(bool);
	virtual TodoReturn pure_virtual_00a3f570() {} // TODO: figure out what function this is
	virtual TodoReturn pure_virtual_00a3f574() {} // TODO: figure out what function this is
	virtual TodoReturn pure_virtual_00a3f578() {} // TODO: figure out what function this is
	virtual TodoReturn updateScreenRotation(float, bool, bool, float, int, float, int, int);
	virtual TodoReturn reverseDirection(EffectGameObject*);
	virtual TodoReturn rotateGameplay(RotateGameplayGameObject*);
	virtual TodoReturn didRotateGameplay();
	virtual TodoReturn updateTimeWarp(float);
	virtual TodoReturn updateTimeWarp(GameObject*, float);
	virtual TodoReturn applyTimeWarp(float);
	virtual TodoReturn playGravityEffect(bool);
	virtual TodoReturn manualUpdateObjectColors(GameObject*);
	virtual TodoReturn createCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, bool);
	virtual TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool);
	virtual TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*);
	virtual TodoReturn activatedAudioTrigger(SFXTriggerGameObject*);
	virtual TodoReturn checkpointActivated(CheckpointGameObject*);
	virtual TodoReturn flipArt(bool);
	virtual TodoReturn addKeyframe(KeyframeGameObject*);
	virtual TodoReturn updateTimeLabel(int, int, bool);
	virtual TodoReturn checkSnapshot();
	virtual TodoReturn toggleProgressbar();
	virtual TodoReturn toggleInfoLabel();
	virtual TodoReturn removeAllCheckpoints();
	virtual TodoReturn toggleMusicInPractice();
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

	virtual TodoReturn encodeWithCoder(DS_Dictionary*);
	virtual TodoReturn canEncode();
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

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*);
}

[[link(android)]]
class GJComment : cocos2d::CCNode {
	// virtual ~GJComment();

	static GJComment* create();
	static GJComment* create(cocos2d::CCDictionary*);

	virtual bool init();
}

[[link(android)]]
class GJCommentListLayer : cocos2d::CCLayerColor {
	// virtual ~GJCommentListLayer();

	static GJCommentListLayer* create(BoomListView*, char const*, cocos2d::ccColor4B, float, float, bool);

	bool init(BoomListView*, char const*, cocos2d::ccColor4B, float, float, bool);
}

[[link(android)]]
class GJDailyLevelDelegate {
	virtual TodoReturn dailyStatusFinished(GJTimedLevelType);
	virtual TodoReturn dailyStatusFailed(GJTimedLevelType, GJErrorCode);
}

[[link(android)]]
class GJDifficultySprite : cocos2d::CCSprite {
	// virtual ~GJDifficultySprite();

	static GJDifficultySprite* create(int, GJDifficultyName);

	TodoReturn getDifficultyFrame(int, GJDifficultyName);
	bool init(int, GJDifficultyName);
	TodoReturn updateDifficultyFrame(int, GJDifficultyName);
	TodoReturn updateFeatureState(GJFeatureState);
	TodoReturn updateFeatureStateFromLevel(GJGameLevel*);
}

[[link(android)]]
class GJDropDownLayer : cocos2d::CCLayerColor {
	// virtual ~GJDropDownLayer();
	// GJDropDownLayer();

	static GJDropDownLayer* create(char const*, float);
	static GJDropDownLayer* create(char const*);

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

	TodoReturn activeColorForIndex(int);
	TodoReturn activeOpacityForIndex(int);
	TodoReturn addAllInheritedColorActions(cocos2d::CCArray*);
	TodoReturn addCountToItem(int, int);
	TodoReturn addMoveCalculation(CCMoveCNode*, cocos2d::CCPoint, GameObject*);
	TodoReturn calculateBaseActiveColors();
	TodoReturn calculateInheritedColor(int, ColorAction*);
	TodoReturn calculateLightBGColor(cocos2d::ccColor3B);
	TodoReturn checkCollision(int const&, int const&);
	TodoReturn colorActionChanged(ColorAction*);
	TodoReturn colorExists(int);
	TodoReturn colorForEffect(cocos2d::ccColor3B, cocos2d::ccHSVValue);
	TodoReturn colorForGroupID(int, cocos2d::ccColor3B const&, bool);
	TodoReturn colorForIndex(int);
	TodoReturn colorForPulseEffect(cocos2d::ccColor3B const&, PulseEffectAction*);
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
	TodoReturn getColorAction(int);
	TodoReturn getColorSprite(int);
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
	TodoReturn objectsCollided(int, int);
	TodoReturn opacityForIndex(int);
	TodoReturn opacityModForGroup(int);
	TodoReturn pauseTimer(int);
	TodoReturn playerButton(bool, bool);
	TodoReturn playerDied();
	TodoReturn postCollisionCheck();
	TodoReturn postMoveActions();
	TodoReturn preCollisionCheck();
	TodoReturn prepareMoveActions(float, bool);
	TodoReturn processColors();
	TodoReturn processCopyColorPulseActions();
	TodoReturn processInheritedColors();
	TodoReturn processMoveCalculations();
	TodoReturn processPulseActions();
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
	TodoReturn saveToState(EffectManagerState&);
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
	TodoReturn traverseInheritanceChain(InheritanceNode*);
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
	TodoReturn wouldCreateLoop(InheritanceNode*, int);

	virtual bool init();
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

	static GJFriendRequest* create();
	static GJFriendRequest* create(cocos2d::CCDictionary*);

	virtual bool init();
}

[[link(android)]]
class GJGameLevel : cocos2d::CCNode {
	// virtual ~GJGameLevel();

	static GJGameLevel* create();
	static GJGameLevel* create(cocos2d::CCDictionary*, bool);

	TodoReturn areCoinsVerified();
	TodoReturn copyLevelInfo(GJGameLevel*);
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn demonIconForDifficulty(DemonDifficultyType);
	TodoReturn generateSettingsString();
	TodoReturn getAudioFileName();
	TodoReturn getAverageDifficulty();
	TodoReturn getCoinKey(int);
	TodoReturn getLastBuildPageForTab(int);
	TodoReturn getLengthKey(int, bool);
	TodoReturn getListSnapshot();
	TodoReturn getNormalPercent();
	TodoReturn getSongName();
	TodoReturn getUnpackedLevelDescription();
	TodoReturn handleStatsConflict(GJGameLevel*);
	bool isPlatformer();
	TodoReturn lengthKeyToString(int);
	TodoReturn levelWasAltered();
	TodoReturn levelWasSubmitted();
	TodoReturn parseSettingsString(gd::string);
	TodoReturn saveNewScore(int, int);
	TodoReturn savePercentage(int, bool, int, int, bool);
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

	virtual TodoReturn encodeWithCoder(DS_Dictionary*);
	virtual TodoReturn canEncode();
	virtual bool init();
}

[[link(android)]]
class GJGameLoadingLayer : cocos2d::CCLayer {
	// virtual ~GJGameLoadingLayer();

	static GJGameLoadingLayer* create(GJGameLevel*, bool);

	TodoReturn gameLayerDidUnload();
	bool init(GJGameLevel*, bool);
	TodoReturn loadLevel();
	TodoReturn transitionToLoadingLayer(GJGameLevel*, bool);

	virtual TodoReturn onEnter();
	virtual TodoReturn onEnterTransitionDidFinish();
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
	void onSelect(cocos2d::CCObject* sender);
	void onSelectTab(cocos2d::CCObject* sender);
	void onShards(cocos2d::CCObject* sender);
	void onShop(cocos2d::CCObject* sender);
	void onSpecial(cocos2d::CCObject* sender);
	void onToggleItem(cocos2d::CCObject* sender);
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

	virtual bool init();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn listButtonBarSwitchedPage(ListButtonBar*, int);
	virtual TodoReturn showUnlockPopup(int, UnlockType);
	virtual TodoReturn updateRate();
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

	virtual TodoReturn draw();
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

	static GJItemIcon* create(UnlockType, int, cocos2d::ccColor3B, cocos2d::ccColor3B, bool, bool, bool, cocos2d::ccColor3B);

	TodoReturn changeToLockedState(float);
	TodoReturn createBrowserItem(UnlockType, int);
	TodoReturn createStoreItem(UnlockType, int, bool, cocos2d::ccColor3B);
	TodoReturn darkenStoreItem(cocos2d::ccColor3B);
	TodoReturn darkenStoreItem(ShopType);
	bool init(UnlockType, int, cocos2d::ccColor3B, cocos2d::ccColor3B, bool, bool, bool, cocos2d::ccColor3B);
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
	TodoReturn getUnpackedDescription();
	TodoReturn orderForLevel(int);
	TodoReturn parseListLevels(gd::string);
	TodoReturn removeLevelFromList(int);
	TodoReturn reorderLevel(int, int);
	TodoReturn reorderLevelStep(int, bool);
	TodoReturn showListInfo();
	TodoReturn totalLevels();
	TodoReturn updateLevelsString();

	virtual TodoReturn encodeWithCoder(DS_Dictionary*);
	virtual TodoReturn canEncode();
	virtual bool init();
}

[[link(android)]]
class GJLevelScoreCell : TableViewCell {
	// virtual ~GJLevelScoreCell();
	GJLevelScoreCell(char const*, float, float);

	TodoReturn loadFromScore(GJUserScore*);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual TodoReturn draw();
}

[[link(android)]]
class GJListLayer : cocos2d::CCLayerColor {
	// virtual ~GJListLayer();

	static GJListLayer* create(BoomListView*, char const*, cocos2d::ccColor4B, float, float, int);

	bool init(BoomListView*, char const*, cocos2d::ccColor4B, float, float, int);
}

[[link(android)]]
class GJLocalLevelScoreCell : TableViewCell {
	// virtual ~GJLocalLevelScoreCell();
	GJLocalLevelScoreCell(char const*, float, float);

	TodoReturn loadFromScore(GJLocalScore*);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual TodoReturn draw();
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
}

[[link(android)]]
class GJMessageCell : TableViewCell, FLAlertLayerProtocol, UploadPopupDelegate, UploadActionDelegate {
	// virtual ~GJMessageCell();
	GJMessageCell(char const*, float, float);

	TodoReturn loadFromMessage(GJUserMessage*);
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

	virtual TodoReturn keyBackClicked();
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

	virtual TodoReturn draw();
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
	TodoReturn sharedState();
	TodoReturn uploadComment(gd::string, int);

	virtual bool init();
}

[[link(android)]]
class GJObjectDecoder : cocos2d::CCNode, ObjectDecoderDelegate {
	// virtual ~GJObjectDecoder();

	TodoReturn sharedDecoder();

	virtual bool init();
	virtual TodoReturn getDecodedObject(int, DS_Dictionary*);
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

	bool init(int, GJPathsLayer*);
	void onActivatePath(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onIconInfo(cocos2d::CCObject* sender);
	void onUnlock(cocos2d::CCObject* sender);
	TodoReturn playUnlockAnimation();
	TodoReturn showCantAffordMessage(GJStoreItem*);
	TodoReturn unlockAnimationFinished();
	TodoReturn unlockAnimationStep2();
	TodoReturn unlockAnimationStep3();

	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn didPurchaseItem(GJStoreItem*);
}

[[link(android)]]
class GJPathRewardPopup : FLAlertLayer {
	// virtual ~GJPathRewardPopup();

	static GJPathRewardPopup* create(int);

	TodoReturn closePopup();
	bool init(int);
	void onClaim(cocos2d::CCObject* sender);

	virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class GJPathsLayer : FLAlertLayer, FLAlertLayerProtocol {
	// virtual ~GJPathsLayer();

	static GJPathsLayer* create();

	TodoReturn darkenButtons(bool);
	TodoReturn nameForPath(int);
	void onClose(cocos2d::CCObject* sender);
	void onPath(cocos2d::CCObject* sender);

	virtual bool init();
	virtual TodoReturn onExit();
	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
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

	bool init(gd::string);
	void onClose(cocos2d::CCObject* sender);

	virtual TodoReturn onExit();
	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
}

[[link(android)]]
class GJPurchaseDelegate {
	virtual TodoReturn didPurchaseItem(GJStoreItem*);
}

[[link(android)]]
class GJRequestCell : TableViewCell, FLAlertLayerProtocol, UploadPopupDelegate, UploadActionDelegate {
	// virtual ~GJRequestCell();
	GJRequestCell(char const*, float, float);

	TodoReturn loadFromScore(GJUserScore*);
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

	virtual TodoReturn encodeWithCoder(DS_Dictionary*);
	virtual TodoReturn canEncode();
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

	virtual TodoReturn encodeWithCoder(DS_Dictionary*);
	virtual TodoReturn canEncode();
}

[[link(android)]]
class GJRobotSprite : CCAnimatedSprite {
	// virtual ~GJRobotSprite();
	// GJRobotSprite();

	static GJRobotSprite* create(int);

	TodoReturn hideGlow();
	bool init(int, gd::string);
	bool init(int);
	TodoReturn showGlow();
	TodoReturn updateColor01(cocos2d::ccColor3B);
	TodoReturn updateColor02(cocos2d::ccColor3B);
	TodoReturn updateColors();
	TodoReturn updateFrame(int);
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
	virtual TodoReturn draw();
	virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
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
	virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
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

	TodoReturn loadFromScore(GJUserScore*);
	void onBan(cocos2d::CCObject* sender);
	void onCheck(cocos2d::CCObject* sender);
	void onMoreLevels(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual TodoReturn draw();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class GJSearchObject : cocos2d::CCNode {
	// virtual ~GJSearchObject();

	static GJSearchObject* create(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int);
	static GJSearchObject* create(SearchType, gd::string);
	static GJSearchObject* create(SearchType);

	TodoReturn createFromKey(char const*);
	TodoReturn getKey();
	TodoReturn getNextPageKey();
	TodoReturn getNextPageObject();
	TodoReturn getPageObject(int);
	TodoReturn getPrevPageObject();
	TodoReturn getSearchKey(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int);
	bool init(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int);
	bool isLevelSearchObject();
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
	bool init(ShopType);
	void onBack(cocos2d::CCObject* sender);
	void onCommunityCredits(cocos2d::CCObject* sender);
	void onPlushies(cocos2d::CCObject* sender);
	void onSelectItem(cocos2d::CCObject* sender);
	void onVideoAd(cocos2d::CCObject* sender);
	TodoReturn scene(ShopType);
	TodoReturn showCantAffordMessage(GJStoreItem*);
	TodoReturn showReactMessage();
	TodoReturn updateCurrencyCounter();

	virtual TodoReturn onExit();
	virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
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
	virtual TodoReturn visit();
}

[[link(android)]]
class GJSmartPrefab : cocos2d::CCObject {
	// virtual ~GJSmartPrefab();

	static GJSmartPrefab* create();

	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn dataLoaded(DS_Dictionary*);
	bool init();

	virtual TodoReturn encodeWithCoder(DS_Dictionary*);
	virtual TodoReturn canEncode();
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

	virtual TodoReturn encodeWithCoder(DS_Dictionary*);
	virtual TodoReturn canEncode();
}

[[link(android)]]
class GJSongBrowser : GJDropDownLayer, FLAlertLayerProtocol, TableViewCellDelegate {
	// virtual ~GJSongBrowser();

	static GJSongBrowser* create();

	TodoReturn loadPage(int);
	void onDeleteAll(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	TodoReturn setupPageInfo(int, int, int);
	TodoReturn setupSongBrowser(cocos2d::CCArray*);

	virtual bool init();
	virtual TodoReturn customSetup();
	virtual TodoReturn exitLayer(cocos2d::CCObject*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	virtual TodoReturn getSelectedCellIdx();
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

	virtual TodoReturn keyBackClicked();
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
	TodoReturn scaleButtons(float);
	TodoReturn spriteByTag(int);
	TodoReturn updateAnchorSprite(cocos2d::CCPoint);
	TodoReturn updateButtons(bool, bool);
	TodoReturn updateMinMaxPositions();

	virtual bool init();
	virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
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
	TodoReturn resetState();
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

	virtual TodoReturn draw();
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

	TodoReturn loadFromScore(GJUserScore*);
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
class GJUserMessage : cocos2d::CCNode {
	// virtual ~GJUserMessage();

	static GJUserMessage* create();
	static GJUserMessage* create(cocos2d::CCDictionary*);

	virtual bool init();
}

[[link(android)]]
class GJUserScore : cocos2d::CCNode {
	// virtual ~GJUserScore();

	static GJUserScore* create();
	static GJUserScore* create(cocos2d::CCDictionary*);

	bool isCurrentUser();
	TodoReturn mergeWithScore(GJUserScore*);

	virtual bool init();
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
class GManager : cocos2d::CCNode {
	// virtual ~GManager();

	TodoReturn getCompressedSaveString();
	TodoReturn getSaveString();
	TodoReturn load();
	TodoReturn loadDataFromFile(gd::string const&);
	TodoReturn loadFromCompressedString(gd::string&);
	TodoReturn loadFromString(gd::string&);
	TodoReturn save();
	TodoReturn saveData(DS_Dictionary*, gd::string);
	TodoReturn saveGMTo(gd::string);
	TodoReturn tryLoadData(DS_Dictionary*, gd::string const&);

	virtual bool init();
	virtual TodoReturn setup();
	virtual TodoReturn encodeDataTo(DS_Dictionary*);
	virtual TodoReturn dataLoaded(DS_Dictionary*);
	virtual TodoReturn firstLoad();
}

[[link(android)]]
class GooglePlayDelegate {
	virtual TodoReturn googlePlaySignedIn();
}

[[link(android)]]
class GooglePlayManager : cocos2d::CCNode {
	// virtual ~GooglePlayManager();

	TodoReturn googlePlaySignedIn();
	TodoReturn sharedState();

	virtual bool init();
}

[[link(android)]]
class GradientTriggerObject : EffectGameObject {
	// virtual ~GradientTriggerObject();

	static GradientTriggerObject* create();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual bool init();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class GraphicsReloadLayer : cocos2d::CCLayer {
	// virtual ~GraphicsReloadLayer();

	static GraphicsReloadLayer* create(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool);

	bool init(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool);
	TodoReturn performReload();
	TodoReturn scene(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool);
}

[[link(android)]]
class GravityEffectSprite : cocos2d::CCSprite {
	// virtual ~GravityEffectSprite();

	static GravityEffectSprite* create();

	TodoReturn updateSpritesColor(cocos2d::ccColor3B);

	virtual bool init();
	virtual TodoReturn draw();
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

	TodoReturn addPoint(cocos2d::CCPoint);
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
	TodoReturn updateStroke(float);

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

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn hsvChanged(ConfigureHSVWidget*);
}

[[link(android)]]
class HSVWidgetDelegate {
	virtual TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue);
	virtual TodoReturn hsvChanged(ConfigureHSVWidget*);
}

[[link(android)]]
class HSVWidgetPopup : FLAlertLayer {
	// virtual ~HSVWidgetPopup();

	static HSVWidgetPopup* create(cocos2d::ccHSVValue, HSVWidgetDelegate*, gd::string);

	bool init(cocos2d::ccHSVValue, HSVWidgetDelegate*, gd::string);
	void onClose(cocos2d::CCObject* sender);

	virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class InfoAlertButton : CCMenuItemSpriteExtra {
	// virtual ~InfoAlertButton();

	static InfoAlertButton* create(gd::string, gd::string, float);

	bool init(gd::string, gd::string, float);

	virtual TodoReturn activate();
}

[[link(android)]]
class InfoLayer : FLAlertLayer, LevelCommentDelegate, CommentUploadDelegate, FLAlertLayerProtocol {
	// virtual ~InfoLayer();

	static InfoLayer* create(GJGameLevel*, GJUserScore*, GJLevelList*);

	TodoReturn confirmReport(cocos2d::CCObject*);
	TodoReturn getAccountID();
	TodoReturn getID();
	TodoReturn getRealID();
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint);
	bool init(GJGameLevel*, GJUserScore*, GJLevelList*);
	bool isCorrect(char const*);
	TodoReturn loadPage(int, bool);
	void onClose(cocos2d::CCObject* sender);
	void onComment(cocos2d::CCObject* sender);
	void onCopyLevelID(cocos2d::CCObject* sender);
	void onGetComments(cocos2d::CCObject* sender);
	void onLevelInfo(cocos2d::CCObject* sender);
	void onMore(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onOriginal(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onRefreshComments(cocos2d::CCObject* sender);
	void onSimilar(cocos2d::CCObject* sender);
	TodoReturn reloadWindow();
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*);
	TodoReturn setupLevelInfo();
	TodoReturn toggleCommentMode(cocos2d::CCObject*);
	TodoReturn toggleExtendedMode(cocos2d::CCObject*);
	TodoReturn toggleSmallCommentMode(cocos2d::CCObject*);
	TodoReturn updateCommentModeButtons();
	TodoReturn updateLevelsLabel();

	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadCommentsFailed(char const*);
	virtual TodoReturn setupPageInfo(gd::string, char const*);
	virtual TodoReturn commentUploadFinished(int);
	virtual TodoReturn commentUploadFailed(int, CommentError);
	virtual TodoReturn updateUserScoreFinished();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
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

	static ItemInfoPopup* create(int, UnlockType);

	bool init(int, UnlockType);
	bool isUnlockedByDefault(int, UnlockType);
	TodoReturn nameForUnlockType(int, UnlockType);
	void onClose(cocos2d::CCObject* sender);
	void onCredit(cocos2d::CCObject* sender);

	virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class ItemTriggerGameObject : EffectGameObject {
	// virtual ~ItemTriggerGameObject();

	static ItemTriggerGameObject* create(char const*);

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);

	virtual TodoReturn customSetup();
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
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

	virtual bool init();
	virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class KeybindingsManager : cocos2d::CCNode {
	// virtual ~KeybindingsManager();

	TodoReturn commandForKey(cocos2d::enumKeyCodes, GJKeyGroup, bool, bool, bool);
	TodoReturn commandForKeyMods(cocos2d::enumKeyCodes, GJKeyGroup);
	TodoReturn commandForKeyNoMods(cocos2d::enumKeyCodes, GJKeyGroup);
	TodoReturn commandToKeyForGroup(GJKeyGroup);
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn groupForCommand(GJKeyCommand);
	TodoReturn keyForCommand(GJKeyCommand);
	TodoReturn keyToCommandForGroup(GJKeyGroup);
	TodoReturn sharedState();

	virtual bool init();
}

[[link(android)]]
class KeyframeAnimTriggerObject : EffectGameObject {
	// virtual ~KeyframeAnimTriggerObject();

	static KeyframeAnimTriggerObject* create();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual bool init();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class KeyframeGameObject : EffectGameObject {
	// virtual ~KeyframeGameObject();

	static KeyframeGameObject* create();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn updateShadowObjects(GJBaseGameLayer*, EditorUI*);

	virtual bool init();
	virtual void setOpacity(unsigned char);
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
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
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
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
	virtual void setObjectColor(cocos2d::ccColor3B const&);
	virtual TodoReturn updateTextKerning(int);
	virtual TodoReturn getTextKerning();
}

[[link(android)]]
class LeaderboardManagerDelegate {
	virtual TodoReturn updateUserScoreFinished();
	virtual TodoReturn updateUserScoreFailed();
	virtual TodoReturn loadLeaderboardFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadLeaderboardFailed(char const*);
}

[[link(android)]]
class LeaderboardsLayer : cocos2d::CCLayer, LeaderboardManagerDelegate, FLAlertLayerProtocol {
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
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn updateUserScoreFinished();
	virtual TodoReturn updateUserScoreFailed();
	virtual TodoReturn loadLeaderboardFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadLeaderboardFailed(char const*);
}

[[link(android)]]
class LevelAreaInnerLayer : cocos2d::CCLayer, DialogDelegate {
	// virtual ~LevelAreaInnerLayer();

	static LevelAreaInnerLayer* create(bool);

	bool init(bool);
	void onBack(cocos2d::CCObject* sender);
	void onDoor(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onNextFloor(cocos2d::CCObject* sender);
	TodoReturn playStep1();
	TodoReturn scene(bool);
	TodoReturn showFloor1CompleteDialog();
	TodoReturn tryResumeTowerMusic();

	virtual TodoReturn keyBackClicked();
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
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn dialogClosed(DialogLayer*);
}

[[link(android)]]
class LevelBrowserLayer : cocos2d::CCLayerColor, LevelManagerDelegate, FLAlertLayerProtocol, SetIDPopupDelegate, SetTextPopupDelegate, TableViewCellDelegate, ShareCommentDelegate {
	// virtual ~LevelBrowserLayer();

	static LevelBrowserLayer* create(GJSearchObject*);

	TodoReturn createNewLevel(cocos2d::CCObject*);
	TodoReturn createNewList(cocos2d::CCObject*);
	TodoReturn createNewSmartTemplate(cocos2d::CCObject*);
	TodoReturn deleteSelected();
	TodoReturn exitLayer(cocos2d::CCObject*);
	TodoReturn getItemsMatchingSearch(cocos2d::CCArray*, gd::string, GJSearchObject*);
	TodoReturn getSearchTitle();
	bool init(GJSearchObject*);
	bool isCorrect(char const*);
	TodoReturn loadPage(GJSearchObject*);
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
	TodoReturn scene(GJSearchObject*);
	void setSearchObject(GJSearchObject*);
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	TodoReturn show();
	TodoReturn updateLevelsLabel();
	TodoReturn updatePageLabel();

	virtual TodoReturn onEnter();
	virtual TodoReturn onEnterTransitionDidFinish();
	virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	virtual TodoReturn loadLevelsFailed(char const*, int);
	virtual TodoReturn setupPageInfo(gd::string, char const*);
	virtual void onBack(cocos2d::CCObject* sender);
	virtual TodoReturn shareCommentClosed(gd::string, ShareCommentLayer*);
	virtual void setTextPopupClosed(SetTextPopup*, gd::string);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void setIDPopupClosed(SetIDPopup*, int);
	virtual TodoReturn updateResultArray(cocos2d::CCArray*);
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
}

[[link(android)]]
class LevelCell : TableViewCell {
	// virtual ~LevelCell();
	LevelCell(char const*, float, float);

	static LevelCell* create(float, float);

	TodoReturn loadCustomLevelCell();
	TodoReturn loadFromLevel(GJGameLevel*);
	TodoReturn loadLocalLevelCell();
	void onClick(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);
	TodoReturn updateCellMode(int);
	TodoReturn updateToggle();

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
	TodoReturn addTouchPoint(cocos2d::CCPoint);
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

	virtual TodoReturn draw();
	virtual TodoReturn postUpdate(float);
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
	virtual TodoReturn didRotateGameplay();
	virtual TodoReturn manualUpdateObjectColors(GameObject*);
	virtual TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool);
	virtual TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*);
	virtual TodoReturn activatedAudioTrigger(SFXTriggerGameObject*);
	virtual TodoReturn checkpointActivated(CheckpointGameObject*);
	virtual TodoReturn addKeyframe(KeyframeGameObject*);
	virtual TodoReturn levelSettingsUpdated();
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

	virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class LevelInfoLayer : cocos2d::CCLayer, LevelDownloadDelegate, LevelUpdateDelegate, RateLevelDelegate, LikeItemDelegate, FLAlertLayerProtocol, LevelDeleteDelegate, NumberInputDelegate, SetIDPopupDelegate, TableViewCellDelegate {
	// virtual ~LevelInfoLayer();

	static LevelInfoLayer* create(GJGameLevel*, bool);

	TodoReturn confirmClone(cocos2d::CCObject*);
	TodoReturn confirmDelete(cocos2d::CCObject*);
	TodoReturn confirmMoveToBottom(cocos2d::CCObject*);
	TodoReturn confirmMoveToTop(cocos2d::CCObject*);
	TodoReturn confirmOwnerDelete(cocos2d::CCObject*);
	TodoReturn downloadLevel();
	TodoReturn incrementDislikes();
	TodoReturn incrementLikes();
	bool init(GJGameLevel*, bool);
	TodoReturn loadLevelStep();
	void onAddToList(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onClone(cocos2d::CCObject* sender);
	void onDelete(cocos2d::CCObject* sender);
	void onFavorite(cocos2d::CCObject* sender);
	void onFeatured(cocos2d::CCObject* sender);
	void onGarage(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onLevelInfo(cocos2d::CCObject* sender);
	void onLevelLeaderboard(cocos2d::CCObject* sender);
	void onLike(cocos2d::CCObject* sender);
	void onLowDetailMode(cocos2d::CCObject* sender);
	void onOwnerDelete(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onPlayReplay(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender);
	void onRateDemon(cocos2d::CCObject* sender);
	void onRateStars(cocos2d::CCObject* sender);
	void onRateStarsMod(cocos2d::CCObject* sender);
	void onSetFolder(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
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
	TodoReturn tryCloneLevel(cocos2d::CCObject*);
	TodoReturn tryShowAd();
	TodoReturn updateLabelValues();
	TodoReturn updateSideButtons();

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
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
}

[[link(android)]]
class LevelLeaderboard : FLAlertLayer, LeaderboardManagerDelegate, FLAlertLayerProtocol {
	// virtual ~LevelLeaderboard();

	static LevelLeaderboard* create(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode);

	TodoReturn deleteLocalScores();
	TodoReturn getLocalScores();
	TodoReturn getSpriteButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint, int);
	bool init(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode);
	bool isCorrect(char const*);
	TodoReturn loadScores();
	void onChangeMode(cocos2d::CCObject* sender);
	void onChangeType(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onDeleteLocalScores(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	TodoReturn reloadLeaderboard(LevelLeaderboardType, LevelLeaderboardMode);
	TodoReturn setupLeaderboard(cocos2d::CCArray*);

	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn loadLeaderboardFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadLeaderboardFailed(char const*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn updateUserScoreFinished();
	virtual TodoReturn updateUserScoreFailed();
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
	virtual TodoReturn draw();
}

[[link(android)]]
class LevelListDeleteDelegate {
	virtual TodoReturn levelListDeleteFinished(int);
	virtual TodoReturn levelListDeleteFailed(int);
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

	virtual TodoReturn onEnter();
	virtual TodoReturn onExit();
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
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadLevelsFailed(char const*);
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	virtual TodoReturn loadLevelsFailed(char const*, int);
	virtual TodoReturn setupPageInfo(gd::string, char const*);
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
	void onInfo(cocos2d::CCObject* sender);
	void onMoreGames(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onSecretDoor(cocos2d::CCObject* sender);
	void onTheTower(cocos2d::CCObject* sender);
	TodoReturn playCoinEffect();
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn updateDynamicPage(GJGameLevel*);

	virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn dialogClosed(DialogLayer*);
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
	TodoReturn getSearchObject(SearchType, gd::string);
	TodoReturn getTimeKey(int);
	bool init(int);
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
	TodoReturn scene(int);
	TodoReturn toggleDifficulty(cocos2d::CCObject*);
	TodoReturn toggleDifficultyNum(int, bool);
	TodoReturn toggleStar(cocos2d::CCObject*);
	TodoReturn toggleTime(cocos2d::CCObject*);
	TodoReturn toggleTimeNum(int, bool);
	TodoReturn updateSearchLabel(char const*);

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn demonFilterSelectClosed(int);
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

	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
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
class LikeItemLayer : FLAlertLayer {
	// virtual ~LikeItemLayer();

	static LikeItemLayer* create(LikeItemType, int, int);

	bool init(LikeItemType, int, int);
	void onClose(cocos2d::CCObject* sender);
	void onDislike(cocos2d::CCObject* sender);
	void onLike(cocos2d::CCObject* sender);
	TodoReturn triggerLike(bool);

	virtual TodoReturn keyBackClicked();
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
	virtual TodoReturn draw();
}

[[link(android)]]
class ListUploadDelegate {
	virtual TodoReturn listUploadFinished(GJLevelList*);
	virtual TodoReturn listUploadFailed(GJLevelList*, int);
}

[[link(android)]]
class LoadingCircle : cocos2d::CCLayerColor {
	// virtual ~LoadingCircle();

	static LoadingCircle* create();

	TodoReturn fadeAndRemove();
	TodoReturn show();

	virtual bool init();
	virtual TodoReturn draw();
	virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn registerWithTouchDispatcher();
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

	TodoReturn getLoadingString();
	bool init(bool);
	TodoReturn loadAssets();
	TodoReturn loadingFinished();
	TodoReturn scene(bool);
	TodoReturn updateProgress(int);
}

[[link(android)]]
class LocalLevelManager : GManager {
	// virtual ~LocalLevelManager();

	TodoReturn getAllLevelsInDict();
	TodoReturn getAllLevelsWithName(gd::string);
	TodoReturn getCreatedLevels(int);
	TodoReturn getCreatedLists(int);
	TodoReturn getLevelsInNameGroups();
	TodoReturn getMainLevelString(int);
	TodoReturn markLevelsAsUnmodified();
	TodoReturn moveLevelToTop(GJGameLevel*);
	TodoReturn reorderLevels();
	TodoReturn sharedState();
	TodoReturn tryLoadMainLevelString(int);
	TodoReturn updateLevelOrder();
	TodoReturn updateLevelRevision();

	virtual bool init();
	virtual TodoReturn encodeDataTo(DS_Dictionary*);
	virtual TodoReturn dataLoaded(DS_Dictionary*);
	virtual TodoReturn firstLoad();
}

[[link(android)]]
class MapPackCell : TableViewCell {
	// virtual ~MapPackCell();
	MapPackCell(char const*, float, float);

	TodoReturn loadFromMapPack(GJMapPack*);
	void onClaimReward(cocos2d::CCObject* sender);
	void onClick(cocos2d::CCObject* sender);
	TodoReturn playCompleteEffect();
	TodoReturn reloadCell();
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual TodoReturn draw();
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

	virtual TodoReturn update(float);
	virtual bool init();
	virtual TodoReturn onExit();
	virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn scrollWheel(float, float);
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

	virtual TodoReturn update(float);
	virtual bool init();
	virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn registerWithTouchDispatcher();
}

[[link(android)]]
class MenuLayer : cocos2d::CCLayer, FLAlertLayerProtocol, GooglePlayDelegate {
	// virtual ~MenuLayer();

	TodoReturn endGame();
	TodoReturn firstNetworkTest();
	void onAchievements(cocos2d::CCObject* sender);
	void onCreator(cocos2d::CCObject* sender);
	void onDaily(cocos2d::CCObject* sender);
	void onDiscord(cocos2d::CCObject* sender);
	void onEveryplay(cocos2d::CCObject* sender);
	void onFacebook(cocos2d::CCObject* sender);
	void onFreeLevels(cocos2d::CCObject* sender);
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
	void onTwitch(cocos2d::CCObject* sender);
	void onTwitter(cocos2d::CCObject* sender);
	void onYouTube(cocos2d::CCObject* sender);
	TodoReturn openOptions(bool);
	TodoReturn scene(bool);
	TodoReturn showGCQuestion();
	TodoReturn showMeltdownPromo();
	TodoReturn showTOS();
	TodoReturn syncPlatformAchievements(float);
	TodoReturn tryShowAd(float);
	TodoReturn updateUserProfileButton();
	TodoReturn videoOptionsClosed();
	TodoReturn videoOptionsOpened();
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
class MessagesProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, MessageListDelegate {
	// virtual ~MessagesProfilePage();

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
	void onSongBrowser(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);
	TodoReturn pageKey(int);
	TodoReturn toggleGP();

	virtual bool init();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual TodoReturn textInputReturn(CCTextInputNode*);
	virtual TodoReturn googlePlaySignedIn();
	virtual TodoReturn dropDownLayerWillClose(GJDropDownLayer*);
}

[[link(android)]]
class MoreSearchLayer : FLAlertLayer, TextInputDelegate {
	// virtual ~MoreSearchLayer();

	static MoreSearchLayer* create();

	TodoReturn audioNext(cocos2d::CCObject*);
	TodoReturn audioPrevious(cocos2d::CCObject*);
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	void onClose(cocos2d::CCObject* sender);
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
	TodoReturn updateFPSButtons();

	virtual bool init();
	virtual TodoReturn keyBackClicked();
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

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn joinLobbyFinished(int);
	virtual TodoReturn joinLobbyFailed(int, GJMPErrorCode);
	virtual TodoReturn updateComments();
	virtual TodoReturn didUploadMPComment(int);
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn keyUp(cocos2d::enumKeyCodes);
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
	virtual TodoReturn keyBackClicked();
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

	virtual TodoReturn update(float);
	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
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
	virtual TodoReturn musicBrowserClosed(MusicBrowser*);
}

[[link(android)]]
class MusicDelegateHandler : cocos2d::CCNode {
	// virtual ~MusicDelegateHandler();

	static MusicDelegateHandler* create(MusicDownloadDelegate*);

	bool init(MusicDownloadDelegate*);
}

[[link(android)]]
class MusicDownloadDelegate {
	virtual TodoReturn loadSongInfoFinished(SongInfoObject*);
	virtual TodoReturn loadSongInfoFailed(int, GJSongError);
	virtual TodoReturn downloadSongFinished(int);
	virtual TodoReturn downloadSongFailed(int, GJSongError);
	virtual TodoReturn songStateChanged();
	virtual TodoReturn downloadSFXFinished(int);
	virtual TodoReturn downloadSFXFailed(int, GJSongError);
	virtual TodoReturn musicActionFinished(GJMusicAction);
	virtual TodoReturn musicActionFailed(GJMusicAction);
}

[[link(android)]]
class MusicDownloadManager : cocos2d::CCNode, PlatformDownloadDelegate {
	// virtual ~MusicDownloadManager();

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
	TodoReturn pathForSFX(int);
	TodoReturn pathForSFXFolder(int);
	TodoReturn pathForSong(int);
	TodoReturn pathForSongFolder(int);
	TodoReturn ProcessHttpGetRequest(gd::string, gd::string, cocos2d::SEL_HttpResponse, int, int);
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn removeMusicDownloadDelegate(MusicDownloadDelegate*);
	TodoReturn responseToDict(gd::string, char const*);
	TodoReturn sharedState();
	TodoReturn showTOS(FLAlertLayerProtocol*);
	TodoReturn songStateChanged();
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
	virtual TodoReturn keyBackClicked();
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
	virtual TodoReturn numberInputClosed(NumberInputLayer*);
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

	virtual bool init();
	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
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

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual bool init();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class ObjectDecoder {
	// virtual ~ObjectDecoder();

	TodoReturn getDecodedObject(int, DS_Dictionary*);
	TodoReturn sharedDecoder();

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

	TodoReturn allKeys();
	TodoReturn gridNodeSizeForKey(int);
	TodoReturn intKeyToFrame(int);
	TodoReturn perspectiveBlockFrame(int);
	TodoReturn sharedState();

	virtual bool init();
}

[[link(android)]]
class OnlineListDelegate {
	virtual TodoReturn loadListFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadListFailed(char const*);
	virtual TodoReturn setupPageInfo(gd::string, char const*);
}

[[link(android)]]
class OpacityEffectAction {
	TodoReturn step(float);
}

[[link(android)]]
class OptionsCell : TableViewCell {
	// virtual ~OptionsCell();
	OptionsCell(char const*, float, float);

	TodoReturn loadFromObject(OptionsObject*);
	void onToggleOption(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);
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

	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
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
	virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class ParticleGameObject : EnhancedGameObject {
	// virtual ~ParticleGameObject();

	static ParticleGameObject* create();

	TodoReturn applyParticleSettings(cocos2d::CCParticleSystemQuad*);
	TodoReturn createAndAddCustomParticle();
	TodoReturn createParticlePreviewArt();
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
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
}

[[link(android)]]
class ParticlePreviewLayer : cocos2d::CCLayerColor {
	// virtual ~ParticlePreviewLayer();

	static ParticlePreviewLayer* create(cocos2d::CCParticleSystemQuad*);

	bool init(cocos2d::CCParticleSystemQuad*);
	TodoReturn postVisit();
	TodoReturn preVisitWithClippingRect(cocos2d::CCRect);

	virtual TodoReturn draw();
	virtual TodoReturn visit();
}

[[link(android)]]
class PauseLayer : CCBlockLayer {
	// virtual ~PauseLayer();

	static PauseLayer* create(bool);

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn goEdit();
	bool init(bool);
	TodoReturn musicSliderChanged(cocos2d::CCObject*);
	void onEdit(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onNormalMode(cocos2d::CCObject* sender);
	void onPracticeMode(cocos2d::CCObject* sender);
	void onQuit(cocos2d::CCObject* sender);
	void onRecordReplays(cocos2d::CCObject* sender);
	void onReplay(cocos2d::CCObject* sender);
	void onRestart(cocos2d::CCObject* sender);
	void onRestartFull(cocos2d::CCObject* sender);
	void onResume(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onTime(cocos2d::CCObject* sender);
	TodoReturn setupProgressBars();
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
	TodoReturn copyToClipboard(gd::string);
	TodoReturn doesFileExist(gd::string);
	TodoReturn downloadAndSavePromoImage(gd::string, gd::string);
	TodoReturn gameDidSave();
	TodoReturn getDeviceRefreshRate();
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
	TodoReturn toggleLockCursor(bool);
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

	static PlayerCheckpoint* create();

	virtual bool init();
}

[[link(android)]]
class PlayerControlGameObject : EffectGameObject {
	// virtual ~PlayerControlGameObject();

	static PlayerControlGameObject* create();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual bool init();
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

	static PlayerObject* create(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool);

	TodoReturn activateStreak();
	TodoReturn addAllParticles();
	TodoReturn addToTouchedRings(RingObject*);
	TodoReturn addToYVelocity(double, int);
	TodoReturn animatePlatformerJump(float);
	TodoReturn boostPlayer(float);
	TodoReturn bumpPlayer(float, int, bool, GameObject*);
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
	TodoReturn doReversePlayer(bool);
	TodoReturn enableCustomGlowColor(cocos2d::ccColor3B const&);
	TodoReturn enablePlayerControls();
	TodoReturn exitPlatformerAnimateJump();
	TodoReturn fadeOutStreak2(float);
	TodoReturn flashPlayer(float, float, cocos2d::ccColor3B, cocos2d::ccColor3B);
	TodoReturn flipGravity(bool, bool);
	TodoReturn flipMod();
	TodoReturn gameEventTriggered(int, int);
	TodoReturn getActiveMode();
	TodoReturn getCurrentXVelocity();
	TodoReturn getModifiedSlopeYVel();
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
	TodoReturn hitGroundNoJump(GameObject*, bool);
	TodoReturn incrementJumps();
	bool init(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool);
	bool isBoostValid(float);
	bool isFlying();
	bool isInBasicMode();
	bool isInNormalMode();
	bool isSafeFlip(float);
	bool isSafeHeadTest();
	bool isSafeMode(float);
	bool isSafeSpiderFlip(float);
	TodoReturn levelFlipFinished();
	TodoReturn levelFlipping();
	TodoReturn levelWillFlip();
	TodoReturn loadFromCheckpoint(PlayerCheckpoint*);
	TodoReturn lockPlayer();
	TodoReturn logValues();
	TodoReturn modeDidChange();
	TodoReturn performSlideCheck();
	TodoReturn placeStreakPoint();
	TodoReturn playBumpEffect(int, GameObject*);
	TodoReturn playBurstEffect();
	TodoReturn playCompleteEffect(bool, bool);
	TodoReturn playDeathEffect();
	TodoReturn playDynamicSpiderRun();
	TodoReturn playerDestroyed(bool);
	TodoReturn playerIsFalling(float);
	TodoReturn playerIsFallingBugged();
	TodoReturn playerIsMovingUp();
	TodoReturn playerTeleported();
	TodoReturn playingEndEffect();
	TodoReturn playSpawnEffect();
	TodoReturn playSpiderDashEffect(cocos2d::CCPoint, cocos2d::CCPoint);
	TodoReturn postCollision(float);
	TodoReturn preCollision();
	TodoReturn preSlopeCollision(float, GameObject*);
	TodoReturn propellPlayer(float, bool, int);
	TodoReturn pushButton(PlayerButton);
	TodoReturn pushDown();
	TodoReturn pushPlayer(float);
	TodoReturn redirectDash(float);
	TodoReturn redirectPlayerForce(float, float, float, float);
	TodoReturn releaseAllButtons();
	TodoReturn releaseButton(PlayerButton);
	TodoReturn removeAllParticles();
	TodoReturn removePendingCheckpoint();
	TodoReturn removePlacedCheckpoint();
	TodoReturn resetAllParticles();
	TodoReturn resetCollisionLog(bool);
	TodoReturn resetCollisionValues();
	TodoReturn resetPlayerIcon();
	TodoReturn resetStateVariables();
	TodoReturn resetStreak();
	TodoReturn resetTouchedRings();
	TodoReturn reverseMod();
	TodoReturn reversePlayer(EffectGameObject*);
	TodoReturn ringJump(RingObject*, bool);
	TodoReturn rotateGameplay(int, int, bool, float, float, bool, bool);
	TodoReturn rotateGameplayObject(GameObject*);
	TodoReturn rotateGameplayOnly(bool);
	TodoReturn rotatePreSlopeObjects();
	TodoReturn runBallRotation(float);
	TodoReturn runBallRotation2();
	TodoReturn runNormalRotation();
	TodoReturn runNormalRotation(bool, float);
	TodoReturn runRotateAction(bool, int);
	TodoReturn saveToCheckpoint(PlayerCheckpoint*);
	void setSecondColor(cocos2d::ccColor3B const&);
	TodoReturn setupStreak();
	void setYVelocity(double, int);
	TodoReturn spawnCircle();
	TodoReturn spawnCircle2();
	TodoReturn spawnDualCircle();
	TodoReturn spawnFromPlayer(PlayerObject*, bool);
	TodoReturn spawnPortalCircle(cocos2d::ccColor3B, float);
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
	TodoReturn stopDashing();
	TodoReturn stopParticles();
	TodoReturn stopPlatformerJumpAnimation();
	TodoReturn stopRotation(bool, int);
	TodoReturn stopStreak2();
	TodoReturn storeCollision(PlayerCollisionDirection, int);
	TodoReturn switchedDirTo(PlayerButton);
	TodoReturn switchedToMode(GameObjectType);
	TodoReturn testForMoving(float, GameObject*);
	TodoReturn toggleBirdMode(bool, bool);
	TodoReturn toggleDartMode(bool, bool);
	TodoReturn toggleFlyMode(bool, bool);
	TodoReturn toggleGhostEffect(GhostType);
	TodoReturn togglePlatformerMode(bool);
	TodoReturn togglePlayerScale(bool, bool);
	TodoReturn toggleRobotMode(bool, bool);
	TodoReturn toggleRollMode(bool, bool);
	TodoReturn toggleSpiderMode(bool, bool);
	TodoReturn toggleSwingMode(bool, bool);
	TodoReturn toggleVisibility(bool);
	TodoReturn touchedObject(GameObject*);
	TodoReturn tryPlaceCheckpoint();
	TodoReturn unrotateGameplayObject(GameObject*);
	TodoReturn unrotatePreSlopeObjects();
	TodoReturn updateCheckpointMode(bool);
	TodoReturn updateCheckpointTest();
	TodoReturn updateCollide(PlayerCollisionDirection, GameObject*);
	TodoReturn updateCollideBottom(float, GameObject*);
	TodoReturn updateCollideLeft(float, GameObject*);
	TodoReturn updateCollideRight(float, GameObject*);
	TodoReturn updateCollideTop(float, GameObject*);
	TodoReturn updateDashAnimation();
	TodoReturn updateDashArt();
	TodoReturn updateEffects(float);
	TodoReturn updateGlowColor();
	TodoReturn updateInternalActions(float);
	TodoReturn updateJump(float);
	TodoReturn updateJumpVariables();
	TodoReturn updateLastGroundObject(GameObject*);
	TodoReturn updateMove(float);
	TodoReturn updatePlayerArt();
	TodoReturn updatePlayerBirdFrame(int);
	TodoReturn updatePlayerDartFrame(int);
	TodoReturn updatePlayerForce(cocos2d::CCPoint, bool);
	TodoReturn updatePlayerFrame(int);
	TodoReturn updatePlayerGlow();
	TodoReturn updatePlayerJetpackFrame(int);
	TodoReturn updatePlayerRobotFrame(int);
	TodoReturn updatePlayerRollFrame(int);
	TodoReturn updatePlayerScale();
	TodoReturn updatePlayerShipFrame(int);
	TodoReturn updatePlayerSpiderFrame(int);
	TodoReturn updatePlayerSpriteExtra(gd::string);
	TodoReturn updatePlayerSwingFrame(int);
	TodoReturn updateRobotAnimationSpeed();
	TodoReturn updateRotation(float, float);
	TodoReturn updateRotation(float);
	TodoReturn updateShipRotation(float);
	TodoReturn updateShipSpriteExtra(gd::string);
	TodoReturn updateSlopeRotation(float);
	TodoReturn updateSlopeYVelocity(float);
	TodoReturn updateSpecial(float);
	TodoReturn updateStateVariables();
	TodoReturn updateStaticForce(float, float, bool);
	TodoReturn updateStreakBlend(bool);
	TodoReturn updateStreaks(float);
	TodoReturn updateSwingFire();
	TodoReturn updateTimeMod(float, bool);
	TodoReturn usingWallLimitedMode();
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
	virtual TodoReturn getObjectRotation();
	virtual TodoReturn animationFinished(char const*);
}

[[link(android)]]
class PlayLayer : GJBaseGameLayer, CCCircleWaveDelegate, CurrencyRewardDelegate, DialogDelegate {
	// virtual ~PlayLayer();

	static PlayLayer* create(GJGameLevel*, bool, bool);

	TodoReturn addCircle(CCCircleWave*);
	TodoReturn addObject(GameObject*);
	TodoReturn addToGroupOld(GameObject*);
	TodoReturn applyCustomEnterEffect(GameObject*, bool);
	TodoReturn applyEnterEffect(GameObject*, int, bool);
	TodoReturn canPauseGame();
	TodoReturn checkpointWithID(int);
	TodoReturn colorObject(int, cocos2d::ccColor3B);
	TodoReturn commitJumps();
	TodoReturn compareStateSnapshot();
	TodoReturn createCheckpoint();
	TodoReturn createObjectsFromSetupFinished();
	TodoReturn delayedFullReset();
	TodoReturn delayedResetLevel();
	TodoReturn fullReset();
	TodoReturn getCurrentPercent();
	TodoReturn getCurrentPercentInt();
	TodoReturn getEndPosition();
	TodoReturn getLastCheckpoint();
	TodoReturn getRelativeMod(cocos2d::CCPoint, float, float, float);
	TodoReturn getRelativeModNew(cocos2d::CCPoint, float, float, bool, bool);
	TodoReturn getTempMilliTime();
	TodoReturn gravityEffectFinished();
	TodoReturn incrementJumps();
	bool init(GJGameLevel*, bool, bool);
	bool isGameplayActive();
	TodoReturn levelComplete();
	TodoReturn loadActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&);
	TodoReturn loadDefaultColors();
	TodoReturn loadDynamicSaveObjects(gd::vector<SavedObjectStateRef>&);
	TodoReturn loadFromCheckpoint(CheckpointObject*);
	TodoReturn loadLastCheckpoint();
	TodoReturn markCheckpoint();
	TodoReturn onQuit();
	TodoReturn optimizeColorGroups();
	TodoReturn optimizeOpacityGroups();
	TodoReturn pauseGame(bool);
	TodoReturn playEndAnimationToPos(cocos2d::CCPoint);
	TodoReturn playPlatformerEndAnimationToPos(cocos2d::CCPoint, bool);
	TodoReturn playReplay(gd::string);
	TodoReturn prepareCreateObjectsFromSetup(gd::string&);
	TodoReturn prepareMusic(bool);
	TodoReturn processCreateObjectsFromSetup();
	TodoReturn processLoadedMoveActions();
	TodoReturn queueCheckpoint();
	TodoReturn removeAllObjects();
	TodoReturn removeCheckpoint(bool);
	TodoReturn removeFromGroupOld(GameObject*);
	TodoReturn resetLevel();
	TodoReturn resetLevelFromStart();
	TodoReturn resume();
	TodoReturn resumeAndRestart(bool);
	TodoReturn saveActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&);
	TodoReturn saveDynamicSaveObjects(gd::vector<SavedObjectStateRef>&);
	TodoReturn scanActiveSaveObjects();
	TodoReturn scanDynamicSaveObjects();
	TodoReturn scene(GJGameLevel*, bool, bool);
	TodoReturn screenFlipObject(GameObject*);
	void setDamageVerifiedIdx(int);
	TodoReturn setupHasCompleted();
	TodoReturn shouldBlend(int);
	TodoReturn showCompleteEffect();
	TodoReturn showCompleteText();
	TodoReturn showEndLayer();
	TodoReturn showHint();
	TodoReturn showNewBest(bool, int, int, bool, bool, bool);
	TodoReturn showRetryLayer();
	TodoReturn showTwoPlayerGuide();
	TodoReturn spawnCircle();
	TodoReturn spawnFirework();
	TodoReturn startGame();
	TodoReturn startGameDelayed();
	TodoReturn startMusic();
	TodoReturn startRecording();
	TodoReturn startRecordingDelayed();
	TodoReturn stopRecording();
	TodoReturn storeCheckpoint(CheckpointObject*);
	TodoReturn takeStateSnapshot();
	TodoReturn toggleBGEffectVisibility(bool);
	TodoReturn toggleGhostEffect(int);
	TodoReturn togglePracticeMode(bool);
	TodoReturn tryStartRecord();
	TodoReturn updateAttempts();
	TodoReturn updateEffectPositions();
	TodoReturn updateInfoLabel();
	TodoReturn updateInvisibleBlock(GameObject*, float, float, float, float, cocos2d::ccColor3B const&);
	TodoReturn updateProgressbar();
	TodoReturn updateScreenRotation(int, bool, bool, float, int, float, int, int);
	TodoReturn updateTimeWarp(EffectGameObject*, float);

	virtual TodoReturn onEnterTransitionDidFinish();
	virtual TodoReturn onExit();
	virtual TodoReturn postUpdate(float);
	virtual TodoReturn checkForEnd();
	virtual TodoReturn testTime();
	virtual TodoReturn updateVerifyDamage();
	virtual TodoReturn updateAttemptTime(float);
	virtual TodoReturn updateVisibility(float);
	virtual TodoReturn opacityForObject(GameObject*);
	virtual TodoReturn updateColor(cocos2d::ccColor3B&, float, int, bool, float, cocos2d::ccHSVValue&, int, bool, EffectGameObject*, int, int);
	virtual TodoReturn activateEndTrigger(int, bool, bool);
	virtual TodoReturn activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&);
	virtual TodoReturn toggleGlitter(bool);
	virtual TodoReturn destroyPlayer(PlayerObject*, GameObject*);
	virtual TodoReturn toggleGroundVisibility(bool);
	virtual TodoReturn toggleMGVisibility(bool);
	virtual TodoReturn toggleHideAttempts(bool);
	virtual TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, int);
	virtual TodoReturn posForTime(float);
	virtual TodoReturn resetSPTriggered();
	virtual TodoReturn updateTimeWarp(float);
	virtual TodoReturn playGravityEffect(bool);
	virtual TodoReturn manualUpdateObjectColors(GameObject*);
	virtual TodoReturn checkpointActivated(CheckpointGameObject*);
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
}

[[link(android)]]
class PointNode : cocos2d::CCObject {
	// virtual ~PointNode();

	static PointNode* create(cocos2d::CCPoint);

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

	static ProfilePage* create(int, bool);

	TodoReturn blockUser();
	bool init(int, bool);
	bool isCorrect(char const*);
	bool isOnWatchlist(int);
	TodoReturn loadPage(int);
	TodoReturn loadPageFromUserInfo(GJUserScore*);
	void onBlockUser(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onComment(cocos2d::CCObject* sender);
	void onCommentHistory(cocos2d::CCObject* sender);
	void onFollow(cocos2d::CCObject* sender);
	void onFriend(cocos2d::CCObject* sender);
	void onFriends(cocos2d::CCObject* sender);
	void onMessages(cocos2d::CCObject* sender);
	void onMyLevels(cocos2d::CCObject* sender);
	void onMyLists(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onRequests(cocos2d::CCObject* sender);
	void onSendMessage(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onTwitch(cocos2d::CCObject* sender);
	void onTwitter(cocos2d::CCObject* sender);
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
	virtual TodoReturn commentUploadFailed(int, CommentError);
	virtual TodoReturn commentDeleteFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
}

[[link(android)]]
class PromoInterstitial : FLAlertLayer {
	// virtual ~PromoInterstitial();

	static PromoInterstitial* create(bool);

	bool init(bool);
	void onClick(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn setup();

	virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
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

	bool init(GJStoreItem*);
	void onClose(cocos2d::CCObject* sender);
	void onPurchase(cocos2d::CCObject* sender);

	virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class RandTriggerGameObject : ChanceTriggerGameObject {
	// virtual ~RandTriggerGameObject();

	static RandTriggerGameObject* create();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn getRandomGroupID();
	TodoReturn getTotalChance();

	virtual bool init();
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class RateDemonLayer : FLAlertLayer, UploadPopupDelegate, UploadActionDelegate {
	// virtual ~RateDemonLayer();

	static RateDemonLayer* create(int);

	bool init(int);
	void onClose(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender);
	TodoReturn selectRating(cocos2d::CCObject*);

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class RateLevelDelegate {
	virtual TodoReturn rateLevelClosed();
}

[[link(android)]]
class RateLevelLayer : FLAlertLayer {
	// virtual ~RateLevelLayer();

	static RateLevelLayer* create(int);

	bool init(int);
	void onClose(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender);
	TodoReturn selectRating(cocos2d::CCObject*);

	virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class RateStarsLayer : FLAlertLayer, UploadPopupDelegate, UploadActionDelegate {
	// virtual ~RateStarsLayer();

	static RateStarsLayer* create(int, bool, bool);

	TodoReturn getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);
	bool init(int, bool, bool);
	void onClose(cocos2d::CCObject* sender);
	void onFeature(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender);
	void onToggleCoins(cocos2d::CCObject* sender);
	TodoReturn selectRating(cocos2d::CCObject*);

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
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

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn customSetup();
	virtual TodoReturn showLayer(bool);
	virtual TodoReturn enterAnimFinished();
	virtual TodoReturn rewardedVideoFinished();
	virtual TodoReturn shouldOffsetRewardCurrency();
	virtual TodoReturn keyUp(cocos2d::enumKeyCodes);
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

	virtual bool init();
	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn rewardsStatusFinished(int);
	virtual TodoReturn rewardsStatusFailed();
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
	TodoReturn showCollectReward(GJRewardItem*);
	TodoReturn step2();
	TodoReturn step3();

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn currencyWillExit(CurrencyRewardLayer*);
}

[[link(android)]]
class RingObject : EffectGameObject {
	// virtual ~RingObject();

	static RingObject* create(char const*);

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);
	TodoReturn spawnCircle();

	virtual void setScale(float);
	virtual void setRotation(float);
	virtual TodoReturn resetObject();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
	virtual void setRScale(float);
	virtual TodoReturn triggerActivated(float);
	virtual TodoReturn shouldDrawEditorHitbox();
	virtual TodoReturn powerOnObject(int);
}

[[link(android)]]
class RotateGameplayGameObject : EffectGameObject {
	// virtual ~RotateGameplayGameObject();

	static RotateGameplayGameObject* create();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn updateGameplayRotation();

	virtual bool init();
	virtual TodoReturn updateStartValues();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class rtsha1 {
	TodoReturn calc(void const*, int, unsigned char*);
	TodoReturn toHexString(unsigned char const*, char*);
}

[[link(android)]]
class ScrollingLayer : cocos2d::CCLayerColor {
	// virtual ~ScrollingLayer();

	static ScrollingLayer* create(cocos2d::CCSize, cocos2d::CCPoint, float);

	TodoReturn getViewRect();
	bool init(cocos2d::CCSize, cocos2d::CCPoint, float);
	void setStartOffset(cocos2d::CCPoint);

	virtual TodoReturn draw();
	virtual TodoReturn visit();
	virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
}

[[link(android)]]
class SearchButton : cocos2d::CCSprite {
	// virtual ~SearchButton();

	static SearchButton* create(char const*, char const*, float, char const*);

	bool init(char const*, char const*, float, char const*);
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
	void onSecretLevel(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);
	TodoReturn playCoinEffect();
	TodoReturn scene();
	TodoReturn selectAThread();
	TodoReturn showCompletedLevel();
	TodoReturn showSecretLevel();
	TodoReturn updateMessageLabel(gd::string);
	TodoReturn updateSearchLabel(char const*);

	virtual bool init();
	virtual TodoReturn onExit();
	virtual TodoReturn keyBackClicked();
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
	virtual TodoReturn onExit();
	virtual TodoReturn keyBackClicked();
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
	virtual TodoReturn onExit();
	virtual TodoReturn keyBackClicked();
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

	TodoReturn createSecondaryLayer(int);
	TodoReturn generateChestItems(int);
	TodoReturn getPageColor(int);
	TodoReturn goToPage(int);
	bool init(bool);
	TodoReturn moveToMainLayer(cocos2d::CCObject*);
	TodoReturn moveToSecondaryLayer(int);
	void onBack(cocos2d::CCObject* sender);
	void onChestType(cocos2d::CCObject* sender);
	void onSelectItem(cocos2d::CCObject* sender);
	void onShop(cocos2d::CCObject* sender);
	void onSpecialItem(cocos2d::CCObject* sender);
	void onSwitchPage(cocos2d::CCObject* sender);
	TodoReturn scene(bool);
	TodoReturn showDialog01();
	TodoReturn showDialog03();
	TodoReturn showDialogDiamond();
	TodoReturn showDialogMechanic();
	TodoReturn showLockedChest();
	TodoReturn showShop(int);
	TodoReturn switchToOpenedState(CCMenuItemSpriteExtra*);
	TodoReturn updateBackButton();
	TodoReturn updateUnlockedLabel();

	virtual TodoReturn onExit();
	virtual TodoReturn keyBackClicked();
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

	virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class SelectEventLayer : SetupTriggerPopup {
	// virtual ~SelectEventLayer();

	static SelectEventLayer* create(SetupEventLinkPopup*, gd::set<int>&);

	TodoReturn addToggle(int, gd::string);
	bool init(SetupEventLinkPopup*, gd::set<int>&);
	TodoReturn nextPosition();
	void onInfo(cocos2d::CCObject* sender);

	virtual TodoReturn keyBackClicked();
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

	virtual TodoReturn keyBackClicked();
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

	virtual TodoReturn keyBackClicked();
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
	virtual TodoReturn keyBackClicked();
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

	virtual TodoReturn keyBackClicked();
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

	virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class SequenceTriggerGameObject : ChanceTriggerGameObject {
	// virtual ~SequenceTriggerGameObject();

	static SequenceTriggerGameObject* create();

	TodoReturn addCount(int, int);
	TodoReturn addTarget(int, int);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn deleteTarget(int);
	TodoReturn reorderTarget(int, bool);
	TodoReturn updateSequenceTotalCount();

	virtual bool init();
	virtual TodoReturn resetObject();
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
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

	virtual TodoReturn keyBackClicked();
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

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
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

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SetTextPopupDelegate {
	virtual void setTextPopupClosed(SetTextPopup*, gd::string);
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

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
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

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
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

	virtual TodoReturn keyBackClicked();
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

	virtual TodoReturn show();
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

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
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

	virtual TodoReturn keyBackClicked();
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

	virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
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

	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
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

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn getSFXRefID();
	TodoReturn getUniqueSFXID();
	bool init(char const*);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class ShaderGameObject : EffectGameObject {
	// virtual ~ShaderGameObject();

	static ShaderGameObject* create(char const*);

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);

	virtual TodoReturn customSetup();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class ShaderLayer : cocos2d::CCLayer {
	// virtual ~ShaderLayer();

	static ShaderLayer* create();

	TodoReturn objectPosToShaderPos(cocos2d::CCPoint);
	TodoReturn performCalculations();
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

	virtual TodoReturn update(float);
	virtual bool init();
	virtual TodoReturn visit();
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
	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
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
	void onShare(cocos2d::CCObject* sender);
	TodoReturn updateCharCountLabel();
	TodoReturn updateDescText(gd::string);
	TodoReturn updatePercentLabel();

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
class ShareLevelLayer : FLAlertLayer {
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
class ShareLevelSettingsLayer : FLAlertLayer, NumberInputDelegate {
	// virtual ~ShareLevelSettingsLayer();

	static ShareLevelSettingsLayer* create(GJGameLevel*);

	bool init(GJGameLevel*);
	void onClose(cocos2d::CCObject* sender);
	void onCopyable(cocos2d::CCObject* sender);
	void onEditPassword(cocos2d::CCObject* sender);
	void onPassword(cocos2d::CCObject* sender);
	void onUnlisted(cocos2d::CCObject* sender);
	void onUnlistedFriendsOnly(cocos2d::CCObject* sender);
	TodoReturn updateSettingsState();

	virtual TodoReturn keyBackClicked();
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

	virtual TodoReturn keyBackClicked();
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

	static SimplePlayer* create(int);

	TodoReturn asyncLoadIcon(int, IconType);
	TodoReturn createRobotSprite(int);
	TodoReturn createSpiderSprite(int);
	TodoReturn disableCustomGlowColor();
	TodoReturn enableCustomGlowColor(cocos2d::ccColor3B const&);
	TodoReturn hideAll();
	TodoReturn hideSecondary();
	TodoReturn iconFinishedLoading(int, IconType);
	bool init(int);
	void setColors(cocos2d::ccColor3B const&, cocos2d::ccColor3B const&);
	void setFrames(char const*, char const*, char const*, char const*, char const*);
	void setSecondColor(cocos2d::ccColor3B const&);
	TodoReturn updateColors();
	TodoReturn updatePlayerFrame(int, IconType);

	virtual void setOpacity(unsigned char);
	virtual void setColor(cocos2d::ccColor3B const&);
}

[[link(android)]]
class SlideInLayer : cocos2d::CCLayerColor {
	// virtual ~SlideInLayer();

	static SlideInLayer* create();

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
}

[[link(android)]]
class Slider : cocos2d::CCLayer {
	// virtual ~Slider();

	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float);
	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, float);
	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler);

	TodoReturn disableSlider();
	TodoReturn disableTouch();
	TodoReturn enableSlider();
	TodoReturn getLiveDragging();
	TodoReturn getThumb();
	TodoReturn getValue();
	TodoReturn hideGroove(bool);
	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float);
	void setBarVisibility(bool);
	void setLiveDragging(bool);
	void setMaxOffset(float);
	void setRotated(bool);
	void setValue(float);
	TodoReturn sliderBegan();
	TodoReturn sliderEnded();
	TodoReturn updateBar();

	virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
}

[[link(android)]]
class SliderDelegate {
	virtual TodoReturn sliderBegan(Slider*);
	virtual TodoReturn sliderEnded(Slider*);
}

[[link(android)]]
class SliderThumb : cocos2d::CCMenuItemImage {
	// virtual ~SliderThumb();

	static SliderThumb* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*);

	TodoReturn getValue();
	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*);
	void setMaxOffset(float);
	void setRotated(bool);
	void setValue(float);
}

[[link(android)]]
class SliderTouchLogic : cocos2d::CCMenu {
	// virtual ~SliderTouchLogic();

	static SliderTouchLogic* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float);

	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float);
	void setMaxOffset(float);
	void setRotated(bool);

	virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn registerWithTouchDispatcher();
}

[[link(android)]]
class SmartGameObject : GameObject {
	// virtual ~SmartGameObject();

	static SmartGameObject* create(char const*);

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);
	TodoReturn updateSmartFrame();

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class SmartPrefabResult {
	// ~SmartPrefabResult();
	// SmartPrefabResult();
	// SmartPrefabResult(SmartPrefabResult const&);
}

[[link(android)]]
class SmartTemplateCell : TableViewCell {
	// virtual ~SmartTemplateCell();
	SmartTemplateCell(char const*, float, float);

	TodoReturn loadFromObject(GJSmartTemplate*);
	void onClick(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual TodoReturn draw();
}

[[link(android)]]
class SongCell : TableViewCell {
	// virtual ~SongCell();
	SongCell(char const*, float, float);

	TodoReturn loadFromObject(SongObject*);
	void onClick(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual TodoReturn draw();
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
	void onMenuMusic(cocos2d::CCObject* sender);
	void onNG(cocos2d::CCObject* sender);
	void onPracticeMusic(cocos2d::CCObject* sender);
	void onYT(cocos2d::CCObject* sender);
	TodoReturn showCustomMusicUnlockInfo();

	virtual TodoReturn keyBackClicked();
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

	virtual TodoReturn encodeWithCoder(DS_Dictionary*);
	virtual TodoReturn canEncode();
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

	virtual TodoReturn keyBackClicked();
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

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class SpawnParticleGameObject : EffectGameObject {
	// virtual ~SpawnParticleGameObject();

	static SpawnParticleGameObject* create();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual bool init();
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
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn removeRemap(int, int);
	TodoReturn updateRemapKeys(gd::vector<int> const&);

	virtual bool init();
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class SpecialAnimGameObject : EnhancedGameObject {
	// virtual ~SpecialAnimGameObject();

	static SpecialAnimGameObject* create(char const*);

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);

	virtual TodoReturn resetObject();
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

	static StartPosObject* create();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn loadSettingsFromString(gd::string);
	void setSettings(LevelSettingsObject*);

	virtual bool init();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class StatsCell : TableViewCell {
	// virtual ~StatsCell();
	StatsCell(char const*, float, float);

	TodoReturn getTitleFromKey(char const*);
	TodoReturn loadFromObject(StatsObject*);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual TodoReturn draw();
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
	void onLinks(cocos2d::CCObject* sender);
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

[[link(android)]]
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
	virtual TodoReturn scrollWheel(float, float);
	virtual TodoReturn scrllViewWillBeginDecelerating(CCScrollLayerExt*);
	virtual TodoReturn scrollViewDidEndDecelerating(CCScrollLayerExt*);
	virtual TodoReturn scrollViewTouchMoving(CCScrollLayerExt*);
	virtual TodoReturn scrollViewDidEndMoving(CCScrollLayerExt*);
}

[[link(android)]]
class TableViewCell : cocos2d::CCLayer {
	// virtual ~TableViewCell();
	TableViewCell(char const*, float, float);

	TodoReturn updateVisibility();
}

[[link(android)]]
class TableViewCellDelegate {
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	virtual TodoReturn getSelectedCellIdx();
	virtual TodoReturn shouldSnapToSelected();
}

[[link(android)]]
class TableViewDataSource {
	virtual TodoReturn pure_virtual_00a11890() {} // TODO: figure out what function this is
	virtual TodoReturn numberOfSectionsInTableView(TableView*);
	virtual TodoReturn TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&);
	virtual TodoReturn pure_virtual_00a1189c() {} // TODO: figure out what function this is
}

[[link(android)]]
class TableViewDelegate {
	virtual TodoReturn willTweenToIndexPath(CCIndexPath&, TableViewCell*, TableView*);
	virtual TodoReturn didEndTweenToIndexPath(CCIndexPath&, TableView*);
	virtual TodoReturn TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
	virtual TodoReturn TableViewDidDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
	virtual TodoReturn TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
	virtual TodoReturn pure_virtual_00a1187c() {} // TODO: figure out what function this is
	virtual TodoReturn pure_virtual_00a11880() {} // TODO: figure out what function this is
}

[[link(android)]]
class TeleportPortalObject : RingObject {
	// virtual ~TeleportPortalObject();

	static TeleportPortalObject* create(char const*, bool);

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn getTeleportXOff(cocos2d::CCNode*);
	bool init(char const*, bool);
	void setPositionOverride(cocos2d::CCPoint);
	void setStartPosOverride(cocos2d::CCPoint);

	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setRotation(float);
	virtual void setStartPos(cocos2d::CCPoint);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
	virtual TodoReturn addToGroup(int);
	virtual TodoReturn removeFromGroup(int);
	virtual void setRotation2(float);
	virtual TodoReturn addToGroup2(int);
	virtual TodoReturn removeFromGroup2(int);
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

	static TextArea* create(gd::string, char const*, float, float, cocos2d::CCPoint, float, bool);

	TodoReturn colorAllCharactersTo(cocos2d::ccColor3B);
	TodoReturn colorAllLabels(cocos2d::ccColor3B);
	TodoReturn fadeIn(float, bool);
	TodoReturn fadeInCharacters(float, float);
	TodoReturn fadeOut(float);
	TodoReturn fadeOutAndRemove();
	TodoReturn finishFade();
	TodoReturn hideAll();
	bool init(gd::string, char const*, float, float, cocos2d::CCPoint, float, bool);
	void setIgnoreColorCode(bool);
	void setString(gd::string);
	TodoReturn showAll();
	TodoReturn stopAllCharacterActions();

	virtual TodoReturn update(float);
	virtual TodoReturn draw();
	virtual void setOpacity(unsigned char);
}

[[link(android)]]
class TextAreaDelegate {
	virtual TodoReturn fadeInTextFinished(TextArea*);
}

[[link(android)]]
class TextGameObject : GameObject {
	// virtual ~TextGameObject();

	static TextGameObject* create(cocos2d::CCTexture2D*);

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(cocos2d::CCTexture2D*);
	TodoReturn updateTextObject(gd::string, bool);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
	virtual TodoReturn updateTextKerning(int);
	virtual TodoReturn getTextKerning();
}

[[link(android)]]
class TextInputDelegate {
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual TodoReturn textInputReturn(CCTextInputNode*);
	virtual TodoReturn allowTextInput(CCTextInputNode*);
	virtual TodoReturn enterPressed(CCTextInputNode*);
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

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
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
	virtual TodoReturn registerWithTouchDispatcher();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
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

	virtual bool init();
	virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class TransformTriggerGameObject : EffectGameObject {
	// virtual ~TransformTriggerGameObject();

	static TransformTriggerGameObject* create(char const*);

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class TriggerControlGameObject : EffectGameObject {
	// virtual ~TriggerControlGameObject();

	static TriggerControlGameObject* create(char const*);

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	bool init(char const*);
	TodoReturn updateTriggerControlFrame();

	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
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
	virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class TutorialPopup : FLAlertLayer {
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
class UIButtonConfig {
	TodoReturn reset();
	TodoReturn resetOneBtn();
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
	void onPause(cocos2d::CCObject* sender);
	TodoReturn processUINodesTouch(GJUITouchEvent, cocos2d::CCTouch*);
	TodoReturn processUINodeTouch(GJUITouchEvent, int, cocos2d::CCPoint, GJUINode*);
	TodoReturn refreshDpad();
	TodoReturn resetAllButtons();
	TodoReturn resetUINodeState();
	TodoReturn toggleCheckpointsMenu(bool);
	TodoReturn toggleMenuVisibility(bool);
	TodoReturn togglePlatformerMode(bool);
	TodoReturn updateDualMode(bool);
	TodoReturn updateUINodeVisibility(bool);

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

	virtual TodoReturn ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual TodoReturn registerWithTouchDispatcher();
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

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual bool init();
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
}

[[link(android)]]
class UpdateAccountSettingsPopup : FLAlertLayer, GJAccountSettingsDelegate {
	// virtual ~UpdateAccountSettingsPopup();

	static UpdateAccountSettingsPopup* create(GJAccountSettingsLayer*, int, int, int, gd::string, gd::string, gd::string);

	bool init(GJAccountSettingsLayer*, int, int, int, gd::string, gd::string, gd::string);
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
class UploadActionPopup : FLAlertLayer {
	// virtual ~UploadActionPopup();

	static UploadActionPopup* create(UploadPopupDelegate*, gd::string);

	TodoReturn closePopup();
	bool init(UploadPopupDelegate*, gd::string);
	void onClose(cocos2d::CCObject* sender);
	TodoReturn showFailMessage(gd::string);
	TodoReturn showSuccessMessage(gd::string);

	virtual TodoReturn keyBackClicked();
}

[[link(android)]]
class UploadListPopup : FLAlertLayer, ListUploadDelegate {
	// virtual ~UploadListPopup();

	static UploadListPopup* create(GJLevelList*);

	bool init(GJLevelList*);
	void onBack(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onReturnToList(cocos2d::CCObject* sender);

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
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
class URLCell : TableViewCell {
	// virtual ~URLCell();
	URLCell(char const*, float, float);

	TodoReturn loadFromObject(CCURLObject*);
	void onURL(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init();
	virtual TodoReturn draw();
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
	void onApply(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onFullscreen(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onResolutionNext(cocos2d::CCObject* sender);
	void onResolutionPrev(cocos2d::CCObject* sender);
	void onTextureQualityNext(cocos2d::CCObject* sender);
	void onTextureQualityPrev(cocos2d::CCObject* sender);
	TodoReturn reloadMenu();
	TodoReturn toggleResolution();
	TodoReturn updateResolution(int);
	TodoReturn updateTextureQuality(int);

	virtual bool init();
	virtual TodoReturn keyBackClicked();
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

	virtual TodoReturn keyBackClicked();
	virtual TodoReturn show();
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

	virtual TodoReturn onExit();
	virtual TodoReturn keyBackClicked();
	virtual TodoReturn scrollLayerWillScrollToPage(BoomScrollLayer*, int);
	virtual TodoReturn scrollLayerScrolledToPage(BoomScrollLayer*, int);
	virtual TodoReturn scrollLayerMoved(cocos2d::CCPoint);
}
