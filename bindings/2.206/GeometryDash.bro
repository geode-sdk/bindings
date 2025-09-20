// clang-format off

[[link(android)]]
class AccountHelpLayer : GJDropDownLayer, GJAccountDelegate, FLAlertLayerProtocol {
	// virtual ~AccountHelpLayer();

	static AccountHelpLayer* create();

	void doUnlink();
	void exitLayer();
	void onAccountManagement(cocos2d::CCObject* sender);
	void onReLogin(cocos2d::CCObject* sender);
	void onUnlink(cocos2d::CCObject* sender);
	void updatePage();
	void verifyUnlink();

	virtual void customSetup() = win 0x7df90, m1 0xb9358, imac 0xd1910, ios 0x172bc8;
	virtual void layerHidden() = m1 0xba0e4, imac 0xd2740, ios 0x173650;
	virtual TodoReturn accountStatusChanged() = win 0x7e690, m1 0xb9f98, imac 0xd2600, ios 0x17359c;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x7e970, m1 0xb9fa4, imac 0xd2630, ios 0x1735a8;

	cocos2d::CCLabelBMFont* m_loginStatusLabel;
	TextArea* m_textArea;
	CCMenuItemSpriteExtra* m_refreshLoginButton;
	CCMenuItemSpriteExtra* m_unlinkAccountButton;
	bool m_unk290;
}

[[link(android)]]
class AccountLayer : GJDropDownLayer, GJAccountDelegate, GJAccountBackupDelegate, GJAccountSyncDelegate, FLAlertLayerProtocol {
	// virtual ~AccountLayer();
	// AccountLayer();

	static AccountLayer* create() = win 0x7bf70;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	void doBackup() = win inline, m1 0xb82c4, imac 0xd06a0 {
		this->updatePage(false);
		if (!GJAccountManager::sharedState()->getAccountBackupURL()) this->backupAccountFailed((BackupAccountError)-1, 0);
		else this->showLoadingUI();
	}
	void doSync() = win inline, m1 0xb83a0, imac 0xd0770 {
		this->updatePage(false);
		if (!GJAccountManager::sharedState()->getAccountSyncURL()) this->syncAccountFailed((BackupAccountError)-1, 0);
		else this->showLoadingUI();
	}
	void exitLayer() {
		this->setKeypadEnabled(false);
		this->disableUI();
		this->hideLayer(m_fastMenu);
	}
	void hideLoadingUI() {
		this->toggleUI(true);
		m_loadingCircle->setVisible(false);
	}
	void onBackup(cocos2d::CCObject* sender) = win 0x7c9e0;
	void onHelp(cocos2d::CCObject* sender) = win 0x7cfb0;
	void onLogin(cocos2d::CCObject* sender) = win 0x7c820;
	void onMore(cocos2d::CCObject* sender) = win 0x7d0d0;
	void onRegister(cocos2d::CCObject* sender) = win 0x7c860;
	void onSync(cocos2d::CCObject* sender) = win 0x7cd30;
	void showLoadingUI() {
		this->toggleUI(false);
		m_loadingCircle->setVisible(true);
	}
	void toggleUI(bool enable) {
		m_buttonMenu->setEnabled(enable);
		this->setKeypadEnabled(enable);
	}
	void updatePage(bool) = win 0x7d130;

	virtual void customSetup() = win 0x7c0d0, m1 0xb6d88, imac 0xcf0e0, ios 0x1712b8;
	virtual void layerHidden() = win 0x7de20, m1 0xb8e88, imac 0xd12e0, ios 0x1729d4;
	virtual void backupAccountFinished() = win 0x7d500, m1 0xb8444, imac 0xd0830, ios 0x1722e0;
	virtual void backupAccountFailed(BackupAccountError, int) = win 0x7d6b0, m1 0xb8604, imac 0xd09f0, ios 0x172414;
	virtual void syncAccountFinished() = win 0x7d9c0, m1 0xb8974, imac 0xd0da0, ios 0x172684;
	virtual void syncAccountFailed(BackupAccountError, int) = win 0x7db80, m1 0xb8adc, imac 0xd0f20, ios 0x1727b8;
	virtual TodoReturn accountStatusChanged() = win 0x7d120, m1 0xb8430, imac 0xd0800, ios 0x1722cc;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x7dd10, m1 0xb8d58, imac 0xd11c0, ios 0x172938;

	cocos2d::CCLabelBMFont* m_linkedAccountTitle;
	TextArea* m_textArea;
	CCMenuItemSpriteExtra* m_loginButton;
	CCMenuItemSpriteExtra* m_registerButton;
	CCMenuItemSpriteExtra* m_backupButton;
	CCMenuItemSpriteExtra* m_syncButton;
	CCMenuItemSpriteExtra* m_helpButton;
	CCMenuItemSpriteExtra* m_moreButton;
	LoadingCircle* m_loadingCircle;
	int m_accountHelpRelated;
	bool m_isLoggedIn;
}

[[link(android)]]
class AccountLoginLayer : FLAlertLayer, TextInputDelegate, GJAccountLoginDelegate, FLAlertLayerProtocol {
	// virtual ~AccountLoginLayer();

	static AccountLoginLayer* create(gd::string) = win 0x7a140;

	TodoReturn createTextBackground(cocos2d::CCPoint, char const*, cocos2d::CCSize);
	TodoReturn createTextInput(cocos2d::CCPoint, cocos2d::CCSize, char const*, int);
	TodoReturn createTextLabel(cocos2d::CCPoint, char const*, cocos2d::CCSize);
	void disableNodes();
	void hideLoadingUI();
	bool init(gd::string) = win 0x7a2e0;
	void onClose(cocos2d::CCObject* sender);
	void onForgotPassword(cocos2d::CCObject* sender);
	void onForgotUser(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender) = win 0x7B5D0;
	void resetLabel(int);
	void resetLabels();
	void showLoadingUI();
	void toggleUI(bool);
	void updateLabel(AccountError);

	virtual void registerWithTouchDispatcher() = m1 0x407e04, imac 0x4a46b0, ios 0x87f6c;
	virtual void keyBackClicked() = win 0x7b9b0, m1 0x407cb4, imac 0x4a4570, ios 0x87e80;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x7b560, m1 0x407aa0, imac 0x4a43b0, ios 0x87d88;
	virtual void textInputOpened(CCTextInputNode*) = ios 0x880d4 {}
	virtual void textInputClosed(CCTextInputNode*) = win 0x7ba80, m1 0x407e3c, imac 0x4a46f0, ios 0x87fa4;
	virtual void textChanged(CCTextInputNode*) = ios 0x880dc {}
	virtual TodoReturn loginAccountFinished(int, int) = win 0x7b150, m1 0x407330, imac 0x4a3c10, ios 0x878d4;
	virtual TodoReturn loginAccountFailed(AccountError) = win 0x7b3a0, m1 0x40774c, imac 0x4a4080, ios 0x87ae4;

	CCTextInputNode* m_usernameInput;
	CCTextInputNode* m_passwordInput;
	cocos2d::CCLabelBMFont* m_usernameLabel;
	cocos2d::CCLabelBMFont* m_passwordLabel;
	LoadingCircle* m_loadingCircle;
	gd::string m_username;
	gd::string m_password;
}

[[link(android)]]
class AccountRegisterLayer : FLAlertLayer, TextInputDelegate, GJAccountRegisterDelegate, FLAlertLayerProtocol {
	// virtual ~AccountRegisterLayer();

	static AccountRegisterLayer* create();

	cocos2d::extension::CCScale9Sprite* createTextBackground(cocos2d::CCPoint, cocos2d::CCSize);
	CCTextInputNode* createTextInput(cocos2d::CCPoint, cocos2d::CCSize, gd::string, int);
	cocos2d::CCLabelBMFont* createTextLabel(cocos2d::CCPoint, gd::string, cocos2d::CCSize);
	void disableNodes();
	void hideLoadingUI();
	void onClose(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);
	void resetLabel(int) = imac 0x4a0f20, m1 0x404a94;
	void resetLabels() = imac 0x4a0e00, m1 0x404964;
	void showLoadingUI();
	void toggleUI(bool);
	void updateLabel(AccountError);
	bool validEmail(gd::string);
	bool validPassword(gd::string);
	bool validUser(gd::string);

	virtual bool init() = m1 0x40293c, imac 0x49e910, ios 0x84958;
	virtual void registerWithTouchDispatcher() = m1 0x4051d4, imac 0x4a1690, ios 0x862b4;
	virtual void keyBackClicked() = win 0x79600, m1 0x404fd0, imac 0x4a14c0, ios 0x86170;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x78c10, m1 0x404b8c, imac 0x4a1010, ios 0x85fdc;
	virtual void textInputOpened(CCTextInputNode*) = ios 0x86860 {}
	virtual void textInputClosed(CCTextInputNode*) = win 0x79760, m1 0x40520c, imac 0x4a16d0, ios 0x862ec;
	virtual void textChanged(CCTextInputNode*) = ios 0x86868 {}
	virtual void textInputShouldOffset(CCTextInputNode*, float) = win 0x79fd0, m1 0x405ab4, imac 0x4a21d0, ios 0x86870;
	virtual void textInputReturn(CCTextInputNode*) = win 0x7a030, m1 0x405b84, imac 0x4a2290, ios 0x868dc;
	virtual bool allowTextInput(CCTextInputNode*) = win 0x7a080, m1 0x405c3c, imac 0x4a2340, ios 0x8693c;
	virtual TodoReturn registerAccountFinished() = win 0x786a0, m1 0x4043e8, imac 0x4a0870, ios 0x85ae8;
	virtual TodoReturn registerAccountFailed(AccountError) = win 0x788c0, m1 0x404580, imac 0x4a0a10, ios 0x85c18;

	CCTextInputNode* m_usernameField;
	CCTextInputNode* m_passwordField;
	CCTextInputNode* m_confirmPasswordField;
	CCTextInputNode* m_emailField;
	CCTextInputNode* m_verifyEmailField;
	cocos2d::CCLabelBMFont* m_usernameLabel;
	cocos2d::CCLabelBMFont* m_passwordLabel;
	cocos2d::CCLabelBMFont* m_confirmPasswordLabel;
	cocos2d::CCLabelBMFont* m_emailLabel;
	cocos2d::CCLabelBMFont* m_verifyEmailLabel;
	LoadingCircle* m_loadingCircle;
	bool m_lockInput;
}

[[link(android)]]
class AchievementBar : cocos2d::CCNodeRGBA {
	// virtual ~AchievementBar();

	AchievementBar(unsigned int idk) = win 0x7eff0;

	static AchievementBar* create(char const* title, char const* desc, char const* icon, bool quest);

	bool init(char const* title, char const* desc, char const* icon, bool quest) = win 0x7f040, ios 0x27a350;
	void show() = win 0x805f0;

	virtual void setOpacity(unsigned char) = win 0x80870, m1 0x5474bc, imac 0x6258a0, ios 0x27b624;

	cocos2d::CCLayerColor* m_layerColor;
	int m_unkUnused;
	cocos2d::CCScene* m_nextScene;
	cocos2d::extension::CCScale9Sprite* m_bg;
	cocos2d::extension::CCScale9Sprite* m_bg2;
	cocos2d::CCSprite* m_achievementGlowSprite;
	cocos2d::CCSprite* m_achievementSprite;
	cocos2d::CCLabelBMFont* m_titleLabel;
	TextArea* m_achievementDescription;
}

[[link(android)]]
class AchievementCell : TableViewCell {
	// virtual ~AchievementCell();
	AchievementCell(char const*, float, float);

	void loadFromDict(cocos2d::CCDictionary*) = win 0xaa740, ios 0x102be4;
	void updateBGColor(int) = ios 0x103ac0;

	virtual bool init() = m1 0x1f47b0, imac 0x24a370, ios 0x10d548;
	virtual void draw() = m1 0x1f481c, imac 0x24a3e0, ios 0x10d5b4;
}

[[link(android)]]
class AchievementManager : cocos2d::CCNode {
	// virtual ~AchievementManager();

	static AchievementManager* sharedState() = win 0x7d50, ios 0xb9340, imac 0x738f50, m1 0x64a8e4;

	gd::string achievementForUnlock(int, UnlockType) = win 0x39390, m1 0x6979a0, imac 0x790e10;
	void addAchievement(gd::string, gd::string, gd::string, gd::string, gd::string, int) = win 0x7ea0;
	void addManualAchievements() = win 0x83c0;
	TodoReturn areAchievementsEarned(cocos2d::CCArray*);
	TodoReturn checkAchFromUnlock(char const*);
	void dataLoaded(DS_Dictionary*) = imac 0x7908f0, m1 0x697460;
	void encodeDataTo(DS_Dictionary*) = imac 0x790960, m1 0x6974cc;
	void firstSetup();
	TodoReturn getAchievementRewardDict();
	cocos2d::CCDictionary* getAchievementsWithID(char const*) = win 0x38f40, m1 0x697738, imac 0x790c10;
	TodoReturn getAllAchievements();
	cocos2d::CCArray* getAllAchievementsSorted(bool) = win 0x38d20;
	bool isAchievementAvailable(gd::string);
	bool isAchievementEarned(char const* ach) = win 0x38c40, ios 0xe9c90, imac 0x790ad0, m1 0x697604;
	int limitForAchievement(gd::string id) = win inline, m1 0x6978d8, imac 0x790d70 {
		if (auto achievements = getAchievementsWithID(id.c_str())) {
			if (auto limits = static_cast<cocos2d::CCString*>(achievements->objectForKey("limits"))) return limits->intValue();
		}
		return 0;
	}
	TodoReturn notifyAchievement(char const*, char const*, char const*);
	TodoReturn notifyAchievementWithID(char const*);
	TodoReturn percentageForCount(int, int);
	int percentForAchievement(char const*) = imac 0x790af0, m1 0x697620, win 0x38c60;
	void reportAchievementWithID(char const*, int, bool); //win: inlined
	void reportPlatformAchievementWithID(char const*, int);
	void resetAchievement(char const*);
	TodoReturn resetAchievements();
	TodoReturn setup();
	void storeAchievementUnlocks();

	virtual bool init() = win 0x7e10, m1 0x64a9d4, imac 0x739060, ios 0xb93c0;

	cocos2d::CCArray* m_allAchievements;
	cocos2d::CCDictionary* m_platformAchievements;
	cocos2d::CCDictionary* m_achievementUnlocks;
	void* m_unkPtrUnused;
	cocos2d::CCDictionary* m_reportedAchievements;
	bool m_dontNotify;
	cocos2d::CCArray* m_allAchievementsSorted;
	int m_order;
	cocos2d::CCDictionary* m_unAchieved;
}

[[link(android)]]
class AchievementNotifier : cocos2d::CCNode {
	// virtual ~AchievementNotifier();

	static AchievementNotifier* sharedState() = win 0x39cd0, imac 0x7cf810, m1 0x6d44fc, ios 0x226bb8;

	void achievementDisplayFinished();
	void notifyAchievement(char const* title, char const* desc, char const* icon, bool quest) = win 0x39db0, imac 0x7cf8d0, m1 0x6d45a4;
	void showNextAchievement() = win 0x39e90;
	void willSwitchToScene(cocos2d::CCScene* scene) = win inline, m1 0x6d4754, imac 0x7cfa80, ios 0x226dec {
		this->m_nextScene = scene;

		if (this->m_activeAchievementBar && this->m_activeAchievementBar->getParent() != this->m_nextScene)
		{
			this->m_activeAchievementBar->retain();
			this->m_activeAchievementBar->removeFromParentAndCleanup(false);
			this->m_nextScene->addChild(this->m_activeAchievementBar, 105);
			this->m_activeAchievementBar->release();
			this->m_activeAchievementBar->resumeSchedulerAndActions();
		}
	}

	virtual bool init() = m1 0x6d4578, imac 0x7cf8a0, ios 0x226c28;

	cocos2d::CCScene* m_nextScene;
	cocos2d::CCArray* m_achievementBarArray;
	AchievementBar* m_activeAchievementBar;
}

[[link(android)]]
class AchievementsLayer : GJDropDownLayer {
	// virtual ~AchievementsLayer();
	AchievementsLayer() = win inline {
		m_currentPage = 0;
		m_nextPageButton = nullptr;
		m_prevPageButton = nullptr;
		m_pageLabel = nullptr;
		m_unkPoint = cocos2d::CCPoint { 0.f, 0.f };
	}

	static AchievementsLayer* create() = win inline {
		auto ret = new AchievementsLayer();
		if (ret->init("Achievements")) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	void loadPage(int) = win 0x80cd0;
	void onNextPage(cocos2d::CCObject* sender) = win 0x80eb0;
	void onPrevPage(cocos2d::CCObject* sender) = win 0x80ec0;
	void setupLevelBrowser(cocos2d::CCArray* arr) = win inline {
		m_listLayer->removeChildByTag(9, true);
		auto* listView = CustomListView::create(arr, BoomListType::Default, 220.f, 356.f);
		listView->setTag(9);
		m_listLayer->addChild(listView, 6);
	}
	void setupPageInfo(int, int, int); //win: inlined

	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x80c30, m1 0x3009d0, imac 0x375020, ios 0x42b434;
	virtual void customSetup() = m1 0x300570, imac 0x374b60, win 0x80980, ios 0x42ae30;

	int m_currentPage;
	CCMenuItemSpriteExtra* m_nextPageButton;
	CCMenuItemSpriteExtra* m_prevPageButton;
	cocos2d::CCLabelBMFont* m_pageLabel;
	cocos2d::CCPoint m_unkPoint;
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
	void queueRefreshBanner();
	void setupAds() = ios 0x309394;
	void showDebug();
	void showInterstitial();
	void showRewardedVideo();
}

[[link(android)]]
class AdvancedFollowEditObject : AdvancedFollowTriggerObject {
	// virtual ~AdvancedFollowEditObject();

	static AdvancedFollowEditObject* create(char const*);

	bool init(char const*);

	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x168dc8, imac 0x1a9880, ios 0x388f24;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x168150, imac 0x1a88b0, ios 0x388b64;
}

[[link(android)]]
class AdvancedFollowTriggerObject : EffectGameObject {
	// virtual ~AdvancedFollowTriggerObject();
	// AdvancedFollowTriggerObject();

	static AdvancedFollowTriggerObject* create(char const*);

	int getAdvancedFollowID();
	bool init(char const*);

	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x167078, imac 0x1a75e0, ios 0x387b98;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x160060, imac 0x19e340, ios 0x385d58;
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

	virtual void setOpacity(unsigned char) = win 0x477be0, m1 0x1709b8, imac 0x1b2620, ios 0x38d318;
	virtual void setChildColor(cocos2d::ccColor3B const&) = m1 0x1723f0, imac 0x1b4260, ios 0x38e368;
	virtual void resetObject() = m1 0x172390, imac 0x1b41f0, ios 0x38e310;
	virtual void activateObject() = m1 0x170860, imac 0x1b24a0, ios 0x38d238;
	virtual void deactivateObject(bool) = m1 0x1708a4, imac 0x1b24e0, ios 0x38d27c;
	virtual void setObjectColor(cocos2d::ccColor3B const&) = m1 0x170a84, imac 0x1b2700, ios 0x38d3e4;
	virtual void animationFinished(char const*) = win 0x477cf0, m1 0x170ab8, imac 0x1b2730, ios 0x38d418;
	virtual TodoReturn displayFrameChanged(cocos2d::CCObject*, gd::string) = win 0x478fd0, m1 0x171b5c, imac 0x1b3a30, ios 0x38de7c;
}

[[link(android)]]
class AnimatedShopKeeper : CCAnimatedSprite {
	// virtual ~AnimatedShopKeeper();
	AnimatedShopKeeper() {
		m_type = ShopType::Normal;
		m_idleInt1 = 0;
		m_idleInt2 = 0;
		m_looking = false;
		m_reacting = false;
		m_reactCount = 0;
		m_gruntIndex = 0;
	}

	static AnimatedShopKeeper* create(ShopType type) = win inline, m1 0x2b3750, imac 0x323160 {
		auto ret = new AnimatedShopKeeper();
		if (ret->init(type)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	bool init(ShopType type) = win inline, m1 0x2b7188, imac 0x327320 {
		m_type = type;
		auto shopkeeper = "GJShopKeeper";
		switch (type) {
			case ShopType::Secret: shopkeeper = "GJShopKeeper2"; break;
			case ShopType::Community: shopkeeper = "GJShopKeeper3"; break;
			case ShopType::Mechanic: shopkeeper = "GJShopKeeper4"; break;
			case ShopType::Diamond: shopkeeper = "GJShopKeeper5"; break;
			default: shopkeeper = "GJShopKeeper"; break;
		}
		if (!CCAnimatedSprite::initWithType(shopkeeper, nullptr, false)) return false;
		m_idleInt2 = (rand() / 32767.f) * 5.f + 10.f;
		m_idleInt1 = (rand() / 32767.f) * 2.f + 1.f;
		m_animationManager->stopAnimations();
		return true;
	}
	void playReactAnimation() = win 0x29d5f0, m1 0x2b6030, imac 0x325f10;
	void startAnimating() = win 0x29d880, m1 0x2b38b0, imac 0x3232d0;

	virtual void animationFinished(char const*) = win 0x29d910, m1 0x2b7254, imac 0x3273d0, ios 0x1592f0;

	ShopType m_type;
	int m_idleInt1;
	int m_idleInt2;
	bool m_looking;
	bool m_reacting;
	int m_reactCount;
	int m_gruntIndex;
}

[[link(android)]]
class AnimatedSpriteDelegate {
	virtual void animationFinished(char const*);
}

[[link(android)]]
class AppDelegate : cocos2d::CCApplication, cocos2d::CCSceneDelegate {
	// virtual ~AppDelegate() = ios 0x1b7c90;
	static AppDelegate* get() = win inline, ios inline, imac 0x669430, m1 0x585208 {
        	return static_cast<AppDelegate*>(cocos2d::CCApplication::sharedApplication());
    	}

	float bgScale() = ios 0x278f80;
	TodoReturn checkSound();
	TodoReturn hideLoadingCircle();
	TodoReturn loadingIsFinished();
	bool musicTest() = win 0x81cf0;
	void pauseGame() = win 0x81970;
	void pauseSound() = win 0x81a50;
	void platformShutdown() = win 0x80f30;
	void resumeSound() = win 0x81bf0, imac 0x669780, m1 0x585520;
	void setIdleTimerDisabled(bool);
	void setupGLView() = win 0x80f50;
	void showLoadingCircle(bool, bool, bool) = ios 0x2793c0;

	virtual bool applicationDidFinishLaunching() = win 0x81370, m1 0x585084, imac 0x6692b0, ios 0x278e40;
	virtual void applicationDidEnterBackground() = win 0x81720, m1 0x5852fc, imac 0x669550, ios 0x279024;
	virtual void applicationWillEnterForeground() = win 0x817a0, m1 0x585434, imac 0x669690, ios 0x2790dc;
	virtual void applicationWillBecomeActive() = win 0x816c0, m1 0x585218, imac 0x669450, ios 0x278fa4;
	virtual void applicationWillResignActive() = win 0x81710, m1 0x58522c, imac 0x669470, ios 0x278fb8;
	virtual void trySaveGame(bool) = win 0x81e30, m1 0x5856b4, imac 0x669920, ios 0x2792a8;
	virtual void willSwitchToScene(cocos2d::CCScene*) = win 0x81f10, m1 0x58578c, imac 0x669a00, ios 0x279284;

	PAD = win 0x4, android32 0xC, android64 0x18;
	cocos2d::CCScene* m_runningScene;
}

[[link(android)]]
class ArtistCell : TableViewCell {
	// virtual ~ArtistCell();
	ArtistCell(char const*, float, float);

	void loadFromObject(SongInfoObject*) = win 0xb31a0;
	void onNewgrounds(cocos2d::CCObject* sender);
	void onYouTube(cocos2d::CCObject* sender);
	void updateBGColor(int);

	virtual bool init() = m1 0x1f9e28, imac 0x250270, ios 0x111e0c;
	virtual void draw() = m1 0x1fa094, imac 0x2504f0, ios 0x111fb0;

	SongInfoObject* m_songInfo;
}

[[link(android)]]
class AudioAssetsBrowser : FLAlertLayer, TableViewCellDelegate, MusicDownloadDelegate {
	// virtual ~AudioAssetsBrowser();

	static AudioAssetsBrowser* create(gd::vector<int>& songIds, gd::vector<int>& sfxIds);

	bool init(gd::vector<int>& songIds, gd::vector<int>& sfxIds);
	void onClose(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	TodoReturn setupList();
	TodoReturn trySetupAudioBrowser();
	TodoReturn updatePageLabel();

	virtual void registerWithTouchDispatcher() = m1 0x6c7140, imac 0x7c14e0, ios 0x1dbd58;
	virtual void keyBackClicked() = m1 0x6c70c4, imac 0x7c1470, ios 0x1dbcdc;
	virtual void musicActionFinished(GJMusicAction) = m1 0x6c7070, imac 0x7c1390, ios 0x1dbc90;
	virtual void musicActionFailed(GJMusicAction) = m1 0x6c707c, imac 0x7c13c0, ios 0x1dbc9c;
	virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = m1 0x6c7090, imac 0x7c1400, ios 0x1dbcac;
	virtual int getSelectedCellIdx() = m1 0x6c70a0, imac 0x7c1420, ios 0x1dbcbc;
	virtual TodoReturn getCellDelegateType() = m1 0x6c70b0, imac 0x7c1440, ios 0x1dbccc;

	cocos2d::CCArray* m_songInfoObjects;
	GJCommentListLayer* m_songList;
	cocos2d::CCLabelBMFont* m_pageIndicatorLabel;
	gd::vector<int> m_songsIds;
	gd::vector<int> m_sfxIds;
	LoadingCircleSprite* m_loadingCircle;
}

[[link(android)]]
class ArtTriggerGameObject : EffectGameObject {
	// virtual ~ArtTriggerGameObject();

	static ArtTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = m1 0x19c10c, imac 0x1e6ed0, ios 0x3a0320;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x19c094, imac 0x1e6e70, ios 0x3a02b8;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x19bc34, imac 0x1e6960, ios 0x3a0128;
}

[[link(android)]]
class AudioEffectsLayer : cocos2d::CCLayerColor {
	// virtual ~AudioEffectsLayer();

	static AudioEffectsLayer* create(gd::string);

	void audioStep(float) = win 0x83720, imac 0x4b9920;
	TodoReturn getBGSquare();
	TodoReturn goingDown();
	bool init(gd::string);
	void resetAudioVars() = m1 0x41ab8c, imac 0x4b98c0;
	TodoReturn triggerEffect(float) = imac 0x4b99f0;

	virtual void draw() = ios 0x3cd5fc {}
	virtual void updateTweenAction(float, char const*) = m1 0x41ae04, imac 0x4b9b30, ios 0x3cd508;

	cocos2d::CCSpriteBatchNode* m_batchNode;
	cocos2d::CCArray* m_unk1bc;
	cocos2d::CCArray* m_unk1c0;
	float m_unk1c4;
	float m_unk1c8;
	bool m_goingDown;
	float m_notAudioScale;
	bool m_unk1d4;
}

[[link(android)]]
class AudioLineGuideGameObject : EffectGameObject {
	// virtual ~AudioLineGuideGameObject();

	static AudioLineGuideGameObject* create();

	virtual bool init() = m1 0x199d18, imac 0x1e4460, ios 0x39f388;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x19a800, imac 0x1e51c0, ios 0x39f6f4;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x199d68, imac 0x1e44b0, ios 0x39f3d8;
}

[[link(android)]]
class BitmapFontCache : cocos2d::CCObject {
	// virtual ~BitmapFontCache();
	BitmapFontCache() {}

	static BitmapFontCache* sharedFontCache() = win inline, imac 0x21a640, m1 0x1cad50, ios 0x303f5c {
		auto** instancePtr = reinterpret_cast<BitmapFontCache**>(geode::base::get() + 0x687db0);
		if (!*instancePtr) {
			*instancePtr = new BitmapFontCache();
			(*instancePtr)->init();
		}
		return *instancePtr;
	}

	FontObject* fontWithConfigFile(char const*, float) = win 0x3a530, ios 0x304048, imac 0x21a7e0, m1 0x1caed8;
	bool init() = win inline, imac 0x21a6c0, m1 0x1cadc8 {
		m_cache = cocos2d::CCDictionary::create();
		m_cache->retain();
		return true;
	}
	static void purgeSharedFontCache() = win inline, imac 0x21a6f0, m1 0x1cadf4, ios 0x303fc8 {
		auto** instancePtr = reinterpret_cast<BitmapFontCache**>(geode::base::get() + 0x687db0);
		if (*instancePtr) {
			(*instancePtr)->release();
			*instancePtr = nullptr;
		}
	}

	cocos2d::CCDictionary* m_cache;
}

[[link(android)]]
class BonusDropdown : cocos2d::CCNode {
	// virtual ~BonusDropdown();

	static BonusDropdown* create(gd::string, int);

	bool init(gd::string, int);
	void show();

	cocos2d::CCLayerColor* m_layerColor;
	float m_unk10c;
	cocos2d::CCScene* m_scene;
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

	static BoomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = m1 0x29dce8, imac 0x30ba20;

	TodoReturn addObjectToList(cocos2d::CCNode*);
	bool init(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = win 0x3b190, imac 0x30bb50, m1 0x29ddf4, ios 0x1d978c;
	void lockList(bool) = imac 0x30bd00, m1 0x29df8c;

	bool init(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
		return this->init(entries, nullptr, height, width, 0, type, 0.0f);
	}

	virtual void draw() = ios 0x1d9f24 {}
	virtual void setupList(float) = win 0x3b500, m1 0x29dff8, ios 0x1d9980, imac 0x30bd80;
	virtual void TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) = ios 0x1d9a00 {}
	virtual float cellHeightForRowAtIndexPath(CCIndexPath&, TableView*) = win 0x3b590, m1 0x29e088, imac 0x30be60, ios 0x1d9a10;
	virtual void didSelectRowAtIndexPath(CCIndexPath&, TableView*) = ios 0x1d9a20 {}
	virtual int numberOfRowsInSection(unsigned int, TableView*) = win 0x3b5a0, m1 0x29e0a0, imac 0x30bea0, ios 0x1d9a28;
	virtual unsigned int numberOfSectionsInTableView(TableView*) = ios 0x1d9a38 { return 1; }
	virtual TableViewCell* cellForRowAtIndexPath(CCIndexPath&, TableView*) = win 0x3b5c0, m1 0x29e0c0, imac 0x30bef0, ios 0x1d9a48;
	virtual void TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&) = ios 0x1d9f1c {}
	virtual void TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) = ios 0x1d9a08 {}
	virtual TableViewCell* getListCell(char const*) = win 0x3b650, m1 0x29e1dc, imac 0x30c000, ios 0x1d9adc;
	virtual void loadCell(TableViewCell*, int) = win 0x3b7c0, m1 0x29e370, imac 0x30c240, ios 0x1d9bd4;

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
	BoomScrollLayer();

	static BoomScrollLayer* create(cocos2d::CCArray* pages, int unk1, bool unk2, cocos2d::CCArray* unk3, DynamicScrollDelegate* delegate) = win 0x3c1e0, m1 0x32e06c, imac 0x3a7d30, ios 0x1316d8;
	static BoomScrollLayer* create(cocos2d::CCArray* pages, int unk1, bool unk2) = win inline, m1 0x32e43c, imac 0x3a8120 {
		return BoomScrollLayer::create(pages, unk1, unk2, nullptr, nullptr);
	}

	void addPage(cocos2d::CCLayer*, int) = m1 0x32fc38, imac 0x3a9b10;
	void addPage(cocos2d::CCLayer*) = m1 0x32fcac, imac 0x3a9b90;
	void cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x32ff10, imac 0x3a9e00, ios 0x132b48;
	void claimTouch(cocos2d::CCTouch*) = m1 0x32feac, imac 0x3a9d90, ios 0x132ae4;
	cocos2d::CCLayer* getPage(int) = win inline, m1 0x32f280, imac 0x3a9040 {
		auto index = m_page;
		if (m_dynamic) index = index % m_pages->count();
		return static_cast<cocos2d::CCLayer*>(m_pages->objectAtIndex(index));
	}
	int getRelativePageForNum(int page) = win inline, m1 0x32f5d4, imac 0x3a9490 {
		return page < 1 ? page : page % getTotalPages();
	}
	cocos2d::CCPoint getRelativePosForPage(int page) = win inline, m1 0x32f230, imac 0x3a8ff0 {
		return { this->getContentSize().width - m_pageOffset * page, 0.f };
	}
	int getTotalPages() = win inline, m1 0x32ef28, imac 0x3a8ca0, ios 0x132154 {
		return m_dynamic ? m_dynamicObjects->count() : m_pages->count();
	}
	bool init(cocos2d::CCArray*, int, bool, cocos2d::CCArray*, DynamicScrollDelegate*) = win 0x3c3b0, m1 0x32e124, imac 0x3a7dc0;
	void instantMoveToPage(int) = win 0x3cf40, m1 0x32f894, imac 0x3a9760, ios 0x132724;
	void moveToPage(int) = win 0x3d020, m1 0x32f96c, imac 0x3a9840, ios 0x1327fc;
	void moveToPageEnded() = win 0x3cdb0, m1 0x32f700, imac 0x3a95d0;
	int pageNumberForPosition(cocos2d::CCPoint) = win 0x3ce40, m1 0x32f4e4, imac 0x3a93b0;
	cocos2d::CCPoint positionForPageWithNumber(int page) = win inline, m1 0x32f840, imac 0x3a9710 {
		return { this->getContentSize().width + m_pageOffset * page, 0.f };
	}
	void quickUpdate() = win inline, m1 0x32fbe0, imac 0x3a9ab0 {
		if (m_pageMoving) {
			m_pageMoving = false;
			m_extendedLayer->stopActionByTag(2);
			m_extendedLayer->setPosition(m_position);
			this->moveToPageEnded();
		}
	}
	void removePage(cocos2d::CCLayer*) = m1 0x32fd18, imac 0x3a9c00;
	void removePageWithNumber(int) = m1 0x32fdac, imac 0x3a9c90;
	void repositionPagesLooped() = win 0x3d1e0, m1 0x32e6d0, imac 0x3a83b0;
	void selectPage(int) = m1 0x32fb28, imac 0x3a9a00;
	void setDotScale(float scale) = win inline, m1 0x32f1c8, imac 0x3a8f80 {
		for (int i = 0; i < m_dots->count(); i++) {
			static_cast<cocos2d::CCSprite*>(m_dots->objectAtIndex(i))->setScale(scale);
		}
	}
	void setPagesIndicatorPosition(cocos2d::CCPoint pos) = win inline, m1 0x32e588, imac 0x3a8260, ios 0x131abc {
		m_dotPosition = pos;
		this->updateDots(0.f);
	}
	void setupDynamicScrolling(cocos2d::CCArray*, DynamicScrollDelegate*) = win 0x3c720, m1 0x32ece0, imac 0x3a8a50;
	void togglePageIndicators(bool) = win 0x3cce0, m1 0x32f63c, imac 0x3a9500;
	void updateDots(float) = win 0x3cae0, m1 0x32ef44, imac 0x3a8cd0, ios 0x132170;
	void updatePages() = win 0x3c9c0, m1 0x32e5b0, imac 0x3a8290;

	virtual void visit() = win 0x3cd50, m1 0x32f6a8, imac 0x3a9570, ios 0x132640;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x3d890, m1 0x3301bc, imac 0x3aa0a0, ios 0x132c34;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x3d940, m1 0x330288, ios 0x132cf0, imac 0x3aa190;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x3dc70, m1 0x330548, imac 0x3aa4b0, ios 0x132f08;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x3d7b0, m1 0x32ffec, imac 0x3a9ee0, ios 0x132be4;
	virtual void registerWithTouchDispatcher() = win 0x3d720, m1 0x32fe74, imac 0x3a9d50, ios 0x132aac;

	cocos2d::CCArray* m_dots;
	int m_slowPage;
	float m_touchX;
	float m_touchQuotient;
	bool m_looped;
	DynamicScrollDelegate* m_dynamicDelegate;
	cocos2d::CCArray* m_dynamicObjects;
	bool m_dynamic;
	int m_touchType;
	bool m_ignoreTouchCancel;
	cocos2d::CCTouch* m_touch;
	cocos2d::CCArray* m_pages;
	double m_touchTime;
	cocos2d::CCPoint m_position;
	ExtendedLayer* m_extendedLayer;
	cocos2d::CCRect m_rect;
	float m_unkFloat1;
	float m_maxSpeed;
	float m_minSpeed;
	float m_unkFloat2;
	BoomScrollLayerDelegate* m_delegate;
	bool m_pageMoving;
	bool m_pagesInvisible;
	float m_unkFloat3;
	float m_unkFloat4;
	float m_width;
	bool m_cancelAndStealTouch;
	bool m_dotsVisible;
	cocos2d::CCPoint m_dotPosition;
	cocos2d::ccColor4B m_unkColor1;
	cocos2d::ccColor4B m_unkColor2;
	int m_page;
	float m_pageOffset;
	void* m_unkPtr;
	bool m_doVisit;
	cocos2d::CCRect m_clippingRect;
}


[[link(android)]]
class BoomScrollLayerDelegate {
	virtual void scrollLayerScrollingStarted(BoomScrollLayer*);
	virtual void scrollLayerScrolledToPage(BoomScrollLayer*, int);
	virtual void scrollLayerMoved(cocos2d::CCPoint);
	virtual void scrollLayerWillScrollToPage(BoomScrollLayer*, int);
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

	virtual void onBack(cocos2d::CCObject* sender) = m1 0x450094, imac 0x4f6c90, ios 0x7aa48;
}

[[link(android), depends(SmartPrefabResult)]]
class BrowseSmartTemplateLayer : FLAlertLayer {
	// virtual ~BrowseSmartTemplateLayer();

	static BrowseSmartTemplateLayer* create(GJSmartTemplate*, SmartBrowseFilter);

	TodoReturn addObjectToPage(cocos2d::CCObject*, int);
	TodoReturn addPrefabMenuItem(SmartPrefabResult, int);
	TodoReturn baseSetup();
	TodoReturn createDots();
	TodoReturn createPrefab(gd::string, int);
	void goToPage(int);
	bool init(GJSmartTemplate*, SmartBrowseFilter);
	void onClick(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onTemplateObject(cocos2d::CCObject* sender);
	TodoReturn updateDots();

	virtual void keyBackClicked() = win 0x42f860, m1 0x44e984, imac 0x4f5220, ios 0x798ec;
	virtual void onBack(cocos2d::CCObject* sender) = win 0x42f880, m1 0x44e9a8, imac 0x4f5260, ios 0x79910;

	GJSmartTemplate* m_template;
	cocos2d::CCArray* m_pages;
	int m_page;
	cocos2d::CCNode* m_nextPageBtn;
	cocos2d::CCNode* m_prevPageBtn;
	cocos2d::CCArray* m_dotsArray;
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
	ButtonSprite() = win 0x3dea0, ios 0x665ac;

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

	static ButtonSprite* create(char const* caption) = imac 0x920c0, m1 0x828f8, ios 0x65cf0 {
		return ButtonSprite::create(caption, 0, false, "goldFont.fnt", "GJ_button_01.png", .0f, 1.f);
	}
	static ButtonSprite* create(char const* caption, const char* font, const char* texture) {
		return ButtonSprite::create(caption, 0, false, font, texture, .0f, 1.f);
	}
	static ButtonSprite* create(char const* caption, const char* font, const char* texture, float scale) {
		return ButtonSprite::create(caption, 0, false, font, texture, .0f, scale);
	}

	static ButtonSprite* create(char const* caption, float scale) = imac 0x92110, m1 0x82938 {
		return ButtonSprite::create(caption, 0, false, "goldFont.fnt", "GJ_button_01.png", .0f, scale);
	}
	static ButtonSprite* create(char const* caption, int width, int p2, float scale, bool absolute, char const* font, char const* bg, float height) = win 0x3e2d0, imac 0x92140, m1 0x8295c, ios 0x65d30;
	static ButtonSprite* create(char const* caption, int width, int p2, float scale, bool absolute, char const* font, char const* bg) = imac 0x92280, m1 0x82a88 {
		return ButtonSprite::create(caption, width, p2, scale, absolute, font, bg, .0f);
	}
	static ButtonSprite* create(char const* caption, int width, int p2, float scale, bool absolute) = imac 0x920f0, m1 0x82920 {
		return ButtonSprite::create(caption, width, p2, scale, absolute, "goldFont.fnt", "GJ_button_01.png", .0f);
	}
	static ButtonSprite* create(cocos2d::CCSprite* topSprite, int width, int unused, float height, float scale, bool absolute, char const* bgSprite, bool noScaleSpriteForBG) = win 0x3dfc0, imac 0x918c0, m1 0x82188, ios 0x655fc;
	static ButtonSprite* create(cocos2d::CCSprite* topSprite, int width, int unused, float height, float scale, bool absolute) = imac 0x918a0, m1 0x82178 {
		return ButtonSprite::create(topSprite, width, unused, height, scale, absolute, "GJ_button_01.png", false);
	}
	static ButtonSprite* create(cocos2d::CCSprite* topSprite) = imac 0x91870, m1 0x82154 {
		return ButtonSprite::create(topSprite, 0, 0, .0f, 1.f, false, "GJ_button_01.png", false);
	}

	bool init(char const*, int, int, float, bool, char const*, char const*, float) = win 0x3e3a0, imac 0x92290, m1 0x82a90, ios 0x65e04;
	bool init(cocos2d::CCSprite* topSprite, int width, int unused, float height, float scale, bool absolute, char const* bgSprite, bool noScaleSpriteForBG) = win 0x3e070, imac 0x91a00, m1 0x822b4, ios 0x656c8;
	void setColor(cocos2d::_ccColor3B const& color) = win inline, imac 0x92a70, m1 0x831f0, ios 0x6652c {
		// i love inlined funcs
		if (m_label) m_label->setColor(color);
  		if (m_subSprite) m_subSprite->setColor(color);
  		if (m_subBGSprite) m_subBGSprite->setColor(color);
  		if (m_BGSprite) m_BGSprite->setColor(color);
	}
	void setString(char const*) = win 0x3ec60, m1 0x82d08, imac 0x92530, ios 0x66050;
	void updateBGImage(char const*) = win 0x3e6a0, imac 0x92920, m1 0x830ac, ios 0x663f4;
	void updateSpriteBGSize() = win 0x3e7e0, imac 0x91c90, m1 0x82508;
	void updateSpriteOffset(cocos2d::CCPoint offset) = win inline, imac 0x92a40, m1 0x831c8 {
		m_spritePosition = offset;
		this->updateSpriteBGSize();
	}

	int m_mode;
	float m_width;
	float m_unkFloat;
	float m_scale;
	float m_height;
	bool m_absolute;
	cocos2d::CCLabelBMFont* m_label;
	cocos2d::CCSprite* m_subSprite;
	cocos2d::CCSprite* m_subBGSprite;
	cocos2d::extension::CCScale9Sprite* m_BGSprite;
	cocos2d::CCPoint m_textOffset;
	cocos2d::CCPoint m_spritePosition;
	gd::string m_caption;
}

[[link(android)]]
class CameraTriggerGameObject : EffectGameObject {
	// virtual ~CameraTriggerGameObject();

	static CameraTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = m1 0x18fd50, win 0x491060, imac 0x1d7b20, ios 0x39bbc0;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x193104, imac 0x1dbe80, ios 0x39caf8;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x18ff0c, imac 0x1d7d80, ios 0x39bd7c;
}

[[link(android)]]
class CCAlertCircle : cocos2d::CCNode {
	// virtual ~CCAlertCircle();

	static CCAlertCircle* create();

	virtual bool init() = m1 0x13da28, imac 0x1742b0;
	virtual void draw() = m1 0x13dad4, imac 0x174340;

	CCCircleAlert* m_circleAlert;
}

[[link(android)]]
class CCAnimatedSprite : cocos2d::CCSprite {
	// virtual ~CCAnimatedSprite();
	CCAnimatedSprite() = win 0x3f030, m1 0x2e0478, imac 0x351390;

	void cleanupSprite() = m1 0x2dfaf8, imac 0x3509d0;
	static CCAnimatedSprite* createWithType(char const*, cocos2d::CCTexture2D*, bool) = m1 0x2df14c, imac 0x34ffe0;
	bool initWithType(char const*, cocos2d::CCTexture2D*, bool) = win 0x3f140, m1 0x2df220, imac 0x3500c0;
	void loadType(char const*, cocos2d::CCTexture2D*, bool) = win 0x3f360, m1 0x2df40c, imac 0x3502a0;
	void runAnimation(gd::string) = win 0x3fe00, m1 0x2dfc94, imac 0x350b90;
	void runAnimationForced(gd::string) = m1 0x2dfd7c, imac 0x350c60;
	void stopTween() = m1 0x2e0290, imac 0x351190;
	void switchToMode(spriteMode) = win 0x3fc90, m1 0x2dfb88, imac 0x350a70;
	void tweenToAnimation(gd::string, float) = win 0x3fe70, m1 0x2dfea4, imac 0x350d70;
	void tweenToAnimationFinished() = win 0x40140, m1 0x2e01a0, imac 0x3510a0;
	void willPlayAnimation() = m1 0x2dfe74, imac 0x350d40;

	virtual void setOpacity(unsigned char) = win 0x401f0, m1 0x2e0318, imac 0x351220, ios 0x30eb1c;
	virtual void setColor(cocos2d::ccColor3B const&) = win 0x40250, m1 0x2e03c8, imac 0x3512d0, ios 0x30eb7c;
	virtual void animationFinished(char const*) = win 0x401d0, m1 0x2e0300, imac 0x351200, ios 0x30eb04;
	virtual void animationFinishedO(cocos2d::CCObject*) = win 0x40190, m1 0x2e02cc, imac 0x3511d0, ios 0x30ead0;

	gd::string m_unkString1;
	gd::string m_unkString2;
	SpriteAnimationManager* m_animationManager;
	cocos2d::CCSprite* m_sprite;
	cocos2d::CCSprite* m_fbfSprite;
	CCPartAnimSprite* m_paSprite;
	spriteMode m_spriteMode;
	gd::string m_currentAnim;
	AnimatedSpriteDelegate* m_delegate;
}

[[link(android)]]
class CCAnimateFrameCache : cocos2d::CCObject {
	// virtual ~CCAnimateFrameCache();

	static CCAnimateFrameCache* sharedSpriteFrameCache() = win 0x405d0, ios 0x1bd0ac;

	void addCustomSpriteFramesWithFile(char const*);
	TodoReturn addDict(cocos2d::CCDictionary*, char const*);
	TodoReturn addDict(DS_Dictionary*, char const*);
	void addSpriteFramesWithFile(char const*) = win 0x40660, ios 0x1bd3c0;
	bool init();
	TodoReturn purgeSharedSpriteFrameCache();
	void removeSpriteFrames() = ios 0x1bd4f0;
	TodoReturn spriteFrameByName(char const*);
}

[[link(android)]]
class CCBlockLayer : cocos2d::CCLayerColor {
	// virtual ~CCBlockLayer();

	CCBlockLayer() {
		m_unknown = nullptr;
	}
	static CCBlockLayer* create();

	void decrementForcePrio() = m1 0x475db4, imac 0x520c30;
	void incrementForcePrio() = m1 0x475ba0, imac 0x520990;

	virtual bool init() = win 0x41660, m1 0x475acc, imac 0x5208d0, ios 0x89cc4;
	virtual void draw() = win 0x41870, m1 0x475d50, imac 0x520b80, ios 0x89f24;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x475d8c, imac 0x520bb0, ios 0x89f60;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x89f80 {}
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x89f70 {}
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x89f78 {}
	virtual void registerWithTouchDispatcher() = win 0x41750, m1 0x475c34, imac 0x520a40, ios 0x89e08;
	virtual void keyBackClicked() = win 0x417a0, m1 0x475c6c, imac 0x520a80, ios 0x89e40;
	virtual void customSetup() = ios 0x89dc4 {}
	virtual TodoReturn enterLayer() = win 0x41720, m1 0x475bfc, imac 0x520a10, ios 0x89dd0;
	virtual TodoReturn exitLayer() = win 0x417c0, m1 0x475c88, imac 0x520ab0, ios 0x89e5c;
	virtual void showLayer(bool) = win 0x41800, m1 0x475cd4, imac 0x520af0, ios 0x89ea8;
	virtual TodoReturn hideLayer(bool) = win 0x41810, m1 0x475ce0, imac 0x520b00, ios 0x89eb4;
	virtual TodoReturn layerVisible() = win 0x41820, m1 0x475cf0, imac 0x520b20, ios 0x89ec4;
	virtual void layerHidden() = win 0x41830, m1 0x475d00, imac 0x520b40, ios 0x89ed4;
	virtual void enterAnimFinished() = ios 0x89ec0 {}
	virtual void disableUI() = ios 0x89dc8 {}
	virtual void enableUI() = ios 0x89dcc {}

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
	// CCCircleWave() = win 0x418b0;

	static CCCircleWave* create(float startRadius, float endRadius, float duration, bool fadeIn, bool easeOut) = win 0x41980, imac 0x173740, m1 0x13cef4;
	static CCCircleWave* create(float startRadius, float endRadius, float duration, bool fadeIn) = imac 0x173730, m1 0x13ceec, ios 0x177c18, win inline {
		return CCCircleWave::create(startRadius, endRadius, duration, fadeIn, true);
	}

	TodoReturn baseSetup(float);
	TodoReturn followObject(cocos2d::CCNode*, bool) = imac 0x173af0, m1 0x13d244;
	bool init(float startRadius, float endRadius, float duration, bool fadeIn, bool easeOut) = win 0x41a30, imac 0x173820, m1 0x13cfc0;
	TodoReturn updatePosition(float) = win 0x41cb0, imac 0x173ab0, m1 0x13d1f8;

	virtual void setPosition(cocos2d::CCPoint const&) = win 0x41c70, m1 0x13d1c4, imac 0x173a80, ios 0x177e78;
	virtual void removeMeAndCleanup() = win 0x42080, m1 0x13d660, imac 0x173f10, ios 0x17824c;
	virtual void draw() = win 0x41f50, m1 0x13d528, imac 0x173dd0, ios 0x178124;
	virtual void updateTweenAction(float, char const*) = win 0x41cf0, m1 0x13d2d4, imac 0x173b80, ios 0x177f88;

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
	virtual void circleWaveWillBeRemoved(CCCircleWave*) {}
}

[[link(android)]]
class CCContentLayer : cocos2d::CCLayerColor {
	inline CCContentLayer() {}
	~CCContentLayer() = m1 0x6d4460, imac 0x4bc530;

	static CCContentLayer* create(cocos2d::ccColor4B const&, float, float) = ios 0x19a780;

	virtual void setPosition(cocos2d::CCPoint const&) = win 0x420f0, m1 0x6d43f8, imac 0x7cf6c0, ios 0x19a854;
}

[[link(android)]]
class CCCountdown : cocos2d::CCSprite {
	// virtual ~CCCountdown();

	static CCCountdown* create();

	TodoReturn lapFinished();
	void startTimerWithSeconds(float, cocos2d::SEL_CallFunc, cocos2d::CCNode*);

	virtual bool init() = m1 0x6d7a88, imac 0x7d32c0;
	virtual void setOpacity(unsigned char) = m1 0x6d7e38, imac 0x7d3690;
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
	CCIndexPath() {}
	// virtual ~CCIndexPath();

	TodoReturn CCIndexPathWithSectionRow(int, int);

	int m_row;
	int m_section;
}

[[link(android)]]
class CCLightFlash : cocos2d::CCNode {
	CCLightFlash() = win inline {
		m_lightStripArray = nullptr;
		m_layerColor = nullptr;
		m_dontFadeOut = false;
		m_mainLayer = nullptr;
		m_layerColorZOrder = 0;
	}
	// virtual ~CCLightFlash();

	static CCLightFlash* create() = win inline, imac 0x50e4e0, m1 0x46510c {
		auto ret = new CCLightFlash();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		CC_SAFE_DELETE(ret);
		return nullptr;
	}

	void cleanupFlash() = win 0x42e00, imac 0x50edd0, m1 0x50edd0;
	void fadeAndRemove() = imac 0x50ebf0, m1 0x465718;
	void playEffect(cocos2d::CCPoint, cocos2d::ccColor3B, float, float, float, float, float, float, float, float, float, float, float, float, float, float, int, bool, bool, float) = win 0x42520, imac 0x50e560, m1 0x465178;
	void removeLights() = win 0x42da0, imac 0x50ed70, m1 0x465894;
	void showFlash() = win 0x42a60, imac 0x50eab0, m1 0x4655ec;

	virtual bool init() = win inline, m1 0x465170, imac 0x50e550, ios 0x377e8 {
		return true;
	}

	cocos2d::CCArray* m_lightStripArray;
	cocos2d::CCLayerColor* m_layerColor;
	bool m_dontFadeOut;
	cocos2d::CCNode* m_mainLayer;
	int m_layerColorZOrder;
}

[[link(android)]]
class CCLightStrip : cocos2d::CCNode {
	CCLightStrip() = win inline {
		m_objectWidth = .0f;
		m_toWidth = .0f;
		m_toHeight = .0f;
		m_duration = .0f;
		m_opacity = .0f;
		m_width = .0f;
		m_height = .0f;
	}
	// virtual ~CCLightStrip();

	static CCLightStrip* create(float width, float toWidth, float toHeight, float duration, float delay) = win inline, imac 0x50ea00, m1 0x465538 {
		auto ret = new CCLightStrip();
		if (ret->init(width, toWidth, toHeight, duration, delay)) {
			ret->autorelease();
			return ret;
		}
		CC_SAFE_DELETE(ret);
		return nullptr;
	}

	bool init(float width, float toWidth, float toHeight, float duration, float delay) = win inline, imac 0x50eee0, m1 0x4659e8 {
		this->m_toWidth = toWidth;
		this->m_toHeight = toHeight;
		this->m_objectWidth = width;
		this->m_duration = duration;
		this->m_width = width;
		this->m_opacity = 255.f;
		this->m_height = 1.f;

		this->setVisible(false);

		auto* delayAction = cocos2d::CCDelayTime::create(delay);
		auto* heightActionTween = cocos2d::CCActionTween::create(this->m_duration, "height", this->m_height, this->m_toHeight);
		auto* widthActionTween = cocos2d::CCActionTween::create(this->m_duration, "width", this->m_width, this->m_toWidth);
		auto* heightEaseOutAction = cocos2d::CCEaseOut::create(heightActionTween, 2.f);
		auto* widthEaseOutAction = cocos2d::CCEaseOut::create(widthActionTween, 2.f);
		auto* spawnEaseOutActions = cocos2d::CCSpawn::create(heightEaseOutAction, widthEaseOutAction, nullptr);
		auto* lightStripSequence = cocos2d::CCSequence::create(delayAction, cocos2d::CCShow::create(), spawnEaseOutActions, nullptr);

		cocos2d::CCDirector::sharedDirector()->getActionManager()->addAction(lightStripSequence, this, false);

		return true;
	}

	virtual void draw() = win 0x42e30, imac 0x50f020, m1 0x465b00, ios 0x38070;
	virtual void updateTweenAction(float value, char const* keyword) = win 0x42ff0, imac 0x50f1b0, m1 0x465c58, ios 0x381c8;

	float m_objectWidth;
	float m_toWidth;
	float m_toHeight;
	float m_duration;
	cocos2d::ccColor4B m_color;
	float m_opacity;
	float m_width;
	float m_height;
}

[[link(android)]]
class CCMenuItemSpriteExtra : cocos2d::CCMenuItemSprite {
	~CCMenuItemSpriteExtra() {}
	CCMenuItemSpriteExtra() = ios 0x177268 {
		m_animationEnabled = false; //this is changed to true in init
		m_colorEnabled = false;
		m_colorDip = 0.784314f;
		m_scaleMultiplier = 1.f; //this is changed to 1.26f in init
		m_volume = 1.f;
		m_duration = 0.3f;
		m_unselectedDuration = 0.4f;
		m_animationType = MenuAnimationType::Scale;
		m_unknown4 = 0;
		//m_baseScale is initialized in init
	}

	static CCMenuItemSpriteExtra* create(cocos2d::CCNode* sprite, cocos2d::CCNode* disabledSprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) = win 0x43cc0, imac 0x272d00, m1 0x218bd0, ios 0x223cdc;

	static CCMenuItemSpriteExtra* create(cocos2d::CCNode* sprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) {
		return CCMenuItemSpriteExtra::create(sprite, nullptr, target, callback);
	}

	bool init(cocos2d::CCNode* sprite, cocos2d::CCNode* disabledSprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) = win 0x43d60, imac 0x272d90, m1 0x218c88, ios 0x223d80;
	void setSizeMult(float mult) = win inline, imac 0x272f10, m1 0x218e0c, ios 0x223f04 {
		//inlined on windows, member is in CCMenuItemSprite
		m_fSizeMult = mult;
	}
	void useAnimationType(MenuAnimationType) = ios 0x223ebc;

	virtual void activate() = win 0x43ec0, imac 0x272f20, m1 0x218e14, ios 0x223f0c;
	virtual void selected() = win 0x43fd0, m1 0x218f64, imac 0x273090, ios 0x223fec;
	virtual void unselected() = win 0x441f0, m1 0x2191a4, imac 0x273300, ios 0x2241c4;

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
	float m_volume;
	gd::string m_activateSound; //canonical name most likely: clickSound_
	gd::string m_selectSound;
	float m_colorDip;
	cocos2d::CCPoint m_offset;
	float m_duration;
	float m_unselectedDuration;
	MenuAnimationType m_animationType;
	cocos2d::CCPoint m_startPosition;
	int m_unknown4;
}

[[link(android)]]
class CCMenuItemToggler : cocos2d::CCMenuItem {
	CCMenuItemToggler() {}
	// virtual ~CCMenuItemToggler();

	static CCMenuItemToggler* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = win 0x44360, m1 0x50d28, imac 0x5a6b0, ios 0x19cbf4;
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

		float maxWidth = (std::max)(sprOff->getContentSize().width, sprOn->getContentSize().width);
		float maxHeight = (std::max)(sprOff->getContentSize().height, sprOn->getContentSize().height);

		sprOff->setScale(scale);
		sprOn->setScale(scale);

		auto ret = create(sprOff, sprOn, target, callback);

		ret->setContentSize({maxWidth, maxHeight});

		ret->m_offButton->setContentSize({maxWidth, maxHeight});
		ret->m_onButton->setContentSize({maxWidth, maxHeight});

 		ret->m_offButton->setPosition({maxWidth/2, maxHeight/2});
		ret->m_onButton->setPosition({maxWidth/2, maxHeight/2});

		sprOff->setPosition({maxWidth/2, maxHeight/2});
		sprOn->setPosition({maxWidth/2, maxHeight/2});

		return ret;
	}

	TodoReturn activeItem();
	bool init(cocos2d::CCNode* off, cocos2d::CCNode* on, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) = win inline, imac 0x5a780, m1 0x50e0c, ios 0x19ccc4 {
		if (!CCMenuItem::initWithTarget(target, callback)) return false;

		m_offButton = CCMenuItemSpriteExtra::create(off, nullptr, this, menu_selector(CCMenuItemToggler::normalTouch));
		m_onButton = CCMenuItemSpriteExtra::create(on, nullptr, this, menu_selector(CCMenuItemToggler::selectedTouch));

		this->addChild(m_offButton);
		this->addChild(m_onButton);

		m_offButton->getNormalImage()->setAnchorPoint({0.5f, 0.5f});
		m_onButton->getNormalImage()->setAnchorPoint({0.5f, 0.5f});

		auto imgoff = m_offButton->getNormalImage();
		auto imgon = m_onButton->getNormalImage();

		imgoff->setPosition(m_offButton->convertToNodeSpace({0.f, 0.f}));
		imgon->setPosition(m_onButton->convertToNodeSpace({0.f, 0.f}));
		m_notClickable = false;
		this->toggle(false);

		return true;
	}
	void normalTouch(cocos2d::CCObject*) = win 0x44700, ios 0x19ce74;
	void selectedTouch(cocos2d::CCObject*) = win 0x44720, ios 0x19ce88;
	void setSizeMult(float mult) = win inline, imac 0x5ac30, m1 0x51318 {
		m_offButton->setSizeMult(mult);
		m_onButton->setSizeMult(mult);

		this->toggle(this->m_toggled);
	}
	void toggle(bool) = win 0x44740, imac 0x5ab60, m1 0x51240, ios 0x19ce9c;

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

	virtual void activate() = win 0x44610, m1 0x5146c, imac 0x5ad70, ios 0x19d014;
	virtual void selected() = win 0x445c0, m1 0x5142c, imac 0x5ad40, ios 0x19cfd4;
	virtual void unselected() = win 0x44660, m1 0x514ac, imac 0x5ada0, ios 0x19d054;
	virtual void setEnabled(bool) = win 0x446b0, m1 0x514ec, imac 0x5add0, ios 0x19d094;

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

	virtual bool init() = m1 0x1293ec, imac 0x159cb0, ios 0x213d00;
	virtual void visit() = m1 0x1293f0, imac 0x159cc0, ios 0x213d04;
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
	void setColor(cocos2d::ccColor3B) = win 0x45940;
	void setFlipX(bool);
	void setFlipY(bool);
	TodoReturn transformSprite(SpriteDescription*);
	TodoReturn tweenSpriteTo(SpriteDescription*, float);
	TodoReturn tweenToFrame(cocos2d::CCSpriteFrame*, float);

	virtual void setScaleX(float) = win 0x45830, m1 0x302588, imac 0x376d90, ios 0x82d6c;
	virtual void setScaleY(float) = win 0x45850, m1 0x3025b0, imac 0x376db0, ios 0x82d94;
	virtual void setScale(float) = win 0x45810, m1 0x302560, imac 0x376d70, ios 0x82d44;
	virtual void setOpacity(unsigned char) = win 0x45a20, m1 0x302874, imac 0x377020, ios 0x82f80;
	virtual void setBlendFunc(cocos2d::_ccBlendFunc) = win 0x45870, m1 0x3025d8, imac 0x376dd0, ios 0x82dbc;
	virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = m1 0x30212c, imac 0x376940, ios 0x82a00;
	virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = m1 0x30228c, imac 0x376ab0, ios 0x82b34;
	virtual cocos2d::CCSpriteFrame* displayFrame() = m1 0x3022a4, imac 0x376ad0, ios 0x82b4c;

	cocos2d::CCDictionary* m_spritePartIDs;
	cocos2d::CCSpriteFrame* m_spriteFrame;
	bool m_hasChanged;
	cocos2d::CCSize m_unkSize;
	cocos2d::CCArray* m_spriteParts;
}

[[link(android), depends(CCContentLayer)]]
class CCScrollLayerExt : cocos2d::CCLayer {
	// virtual ~CCScrollLayerExt() = win 0x46210, ios 0x311ab8;
	CCScrollLayerExt(cocos2d::CCRect) = win 0x45bd0, imac 0x437b20, m1 0x3aa6c8, ios 0x3113dc;

	TodoReturn constraintContent();
	TodoReturn doConstraintContent(bool);
	inline float getMaxY() {
		return m_scrollLimitBottom;
	}
	inline float getMinY() {
		return this->getContentSize().height - m_contentLayer->getContentSize().height - m_scrollLimitTop;
	}
	void moveToTop() = win 0x46180, imac 0x438240, m1 0x3aacbc, ios 0x311a20;
	void moveToTopWithOffset(float) = win 0x460e0, imac 0x4381a0, m1 0x3aad64, ios 0x311978;
	TodoReturn scrollingEnd();
	void scrollLayer(float offset) = win inline, imac 0x438e00, m1 0x3ab7bc, ios 0x3122f0 {
		float y = m_contentLayer->getPositionY() + offset;
		float minY = getMinY();
		float maxY = getMaxY();
		m_contentLayer->setPositionY(y < minY ? minY : y > maxY ? maxY : y);
	}
	void setContentLayerSize(cocos2d::CCSize);
	void setContentOffset(cocos2d::CCPoint, bool);
	TodoReturn updateIndicators(float);

	virtual void visit() = win 0x46c50, m1 0x3ab884, imac 0x438ec0, ios 0x3123b8;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x46700, m1 0x3ab28c, imac 0x438850, ios 0x311df4;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x46ad0, m1 0x3ab648, imac 0x438c80, ios 0x312190;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x46820, m1 0x3ab3a8, imac 0x438980, ios 0x311f00;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x46aa0, m1 0x3ab5e4, imac 0x438c20, ios 0x31212c;
	virtual void registerWithTouchDispatcher() = win 0x466b0, m1 0x3ab254, imac 0x438810, ios 0x311dbc;
	virtual void preVisitWithClippingRect(cocos2d::CCRect) = win 0x46d80, m1 0x3ab978, imac 0x438fc0, ios 0x3124ac;
	virtual void postVisit() = win 0x46e20, m1 0x3aba0c, imac 0x439040, ios 0x312540;

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

	virtual void setOpacity(unsigned char) = win 0x47540, m1 0x3f0cc0, imac 0x48b250;
}

[[link(android)]]
class CCSpriteGrayscale : CCSpriteWithHue {
	// virtual ~CCSpriteGrayscale();
	CCSpriteGrayscale() {}

	static CCSpriteGrayscale* create(gd::string const& file, cocos2d::CCRect const& rect) = win inline, m1 0x522d90, imac 0x5fb690 {
		auto ret = new CCSpriteGrayscale();
		if (ret->initWithFile(file.c_str(), rect)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}
	static CCSpriteGrayscale* create(gd::string const& file) = win inline, m1 0x522cc4, imac 0x5fb5d0 {
		auto ret = new CCSpriteGrayscale();
		if (ret->initWithFile(file.c_str())) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}
	static CCSpriteGrayscale* createWithSpriteFrame(cocos2d::CCSpriteFrame* frame) = win inline, m1 0x52307c, imac 0x5fb930 {
		auto ret = new CCSpriteGrayscale();
		if (ret->initWithSpriteFrame(frame)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}
	static CCSpriteGrayscale* createWithSpriteFrameName(gd::string const& frameName) = win 0x481a0, m1 0x523178, imac 0x5fba10;
	static CCSpriteGrayscale* createWithTexture(cocos2d::CCTexture2D* texture, cocos2d::CCRect const& rect, bool rotated) = win inline, m1 0x522f88, imac 0x5fb860 {
		auto ret = new CCSpriteGrayscale();
		if (ret->initWithTexture(texture, rect, rotated)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}
	static CCSpriteGrayscale* createWithTexture(cocos2d::CCTexture2D* texture) = win inline, m1 0x522e70, imac 0x5fb760 {
		auto ret = new CCSpriteGrayscale();
		if (ret->initWithTexture(texture)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	virtual gd::string getShaderName() = win 0x48140, m1 0x522ca0, imac 0x5fb5b0, ios 0x1af7d8;
	virtual const char* shaderBody() = win 0x47f80, m1 0x522b78, imac 0x5fb3b0, ios 0x1af704;
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

	virtual void setVisible(bool) = win 0x45bb0, m1 0x302c48, imac 0x377410, ios 0x830d8;

	bool m_isBeingUsed;
	gd::string m_spriteFrameName;
	SpritePartDelegate* m_delegate;
}

[[link(android)]]
class CCSpritePlus : cocos2d::CCSprite {
	// virtual ~CCSpritePlus();

	/// Adds a follower to the sprite
    /// @param follower Something that will follow this sprite
	void addFollower(cocos2d::CCNode* follower) = imac 0x48afc0;

	/// Creates a sprite by a given sprite frame
    /// @param frame the frame to give to the specific sprite
    /// @return CCSpritePlus object and returns null if initialization fails
	static CCSpritePlus* createWithSpriteFrame(cocos2d::CCSpriteFrame* frame);

	/// Creates a sprite by a given sprite's frame name
    /// @param frame the frame or filename to give to the specific sprite
    /// @return CCSpritePlus object and returns null if initialization fails
	static CCSpritePlus* createWithSpriteFrameName(char const* frame);

	/// Attaches a sprite to the sprite. and other way around
    /// you can think of this as attaching 2 lego blocks together and letting
	/// it drag along.
    /// @param sprite the sprite to attach to the main sprite and vice versa
	void followSprite(CCSpritePlus* sprite);

	/// Obtains the first following sprite if it has a follower on hand
    /// @return nullptr if there is no follower avalible
	CCSpritePlus* getFollower();

	/// Removes a specific following sprite from this sprite.
    /// @param sprite follower sprite that will be removed.
	void removeFollower(cocos2d::CCNode* sprite) = win 0x474f0;

	/// Stops this child sprite from following it's given parent
	void stopFollow();

	/// Sets X's scale on itself and it's followers
    /// @param fScaleX the scale of X to set
	virtual void setScaleX(float fScaleX) = win 0x47350, m1 0x3f089c, imac 0x48ae40, ios 0x1c2c34;

	/// Sets Y's scale on itself and it's followers
    /// @param fScaleY the scale of Y to set
	virtual void setScaleY(float fScaleY) = win 0x473d0, m1 0x3f0918, imac 0x48aec0, ios 0x1c2cb0;

	/// Sets the Scale of itself and it's followers
    /// @param fScale the scale value to set
	virtual void setScale(float fScale) = win 0x47460, imac 0x48af40, m1 0x3f0994, ios 0x1c2d2c;

	/// Sets the position where the sprite will be at and it's followers
    /// @param pos the position to place to the sprite and it's followers
	virtual void setPosition(cocos2d::CCPoint const& pos) = win 0x46f50, imac 0x48aaa0, m1 0x3f056c, ios 0x1c2904;

	/// Sets the sprite's given rotation and it's followers
    /// @param fRotation the rotation value to set
	virtual void setRotation(float fRotation) = win 0x46fe0, imac 0x48ab20, m1 0x3f05e0, ios 0x1c2978;

	/// Sets the sprite's given rotation of X and it's followers
    /// @param fRotationX the rotation of X to set.
	virtual void setRotationX(float fRotationX) = win 0x47070, m1 0x3f0654, imac 0x48aba0, ios 0x1c29ec;

	/// Sets the sprite's given rotation of Y and it's followers
    /// @param fRotationY the roation of Y to set
	virtual void setRotationY(float) = win 0x47100, m1 0x3f06c8, imac 0x48ac20, ios 0x1c2a60;

	/// Initalizes the sprite using a texture
    /// @param texture the texture to initalize the sprite with
    /// @return true if initalization succeeded.
	virtual bool initWithTexture(cocos2d::CCTexture2D* texture) = win 0x46f30, m1 0x3f0558, imac 0x48aa80, ios 0x1c28f0;

	/// Initalizes the sprite with a frame name
    /// @param frame the frame to initalize the sprite with
    /// @return true if initalization succeeded
	virtual bool initWithSpriteFrameName(char const*) = win 0x46f20, m1 0x3f054c, imac 0x48aa60, ios 0x1c28e4;

	/// Sets flipX to itself and it's followers
    /// @param flipX the direction that the sprite should be flipped to
	virtual void setFlipX(bool flipX) = win 0x47190, m1 0x3f073c, imac 0x48aca0, ios 0x1c2ad4;

	/// Sets flipY to itself and it's followers
    /// @param flipY the direction that the sprite should be flipped to
	virtual void setFlipY(bool flipY) = win 0x47270, m1 0x3f07ec, imac 0x48ad70, ios 0x1c2b84;

	cocos2d::CCArray* m_followers;
	CCSpritePlus* m_followingSprite;
	bool m_hasFollower;
	bool m_propagateScaleChanges;
	bool m_propagateFlipChanges;
	PAD = win 0x1;
}

[[link(android)]]
class CCSpriteWithHue : cocos2d::CCSprite {
	// virtual ~CCSpriteWithHue();
	CCSpriteWithHue() {}

	static CCSpriteWithHue* create(gd::string const& file, cocos2d::CCRect const& rect) = win inline, m1 0x521d50, imac 0x5fa4d0 {
		auto ret = new CCSpriteWithHue();
		if (ret->initWithFile(file.c_str(), rect)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}
	static CCSpriteWithHue* create(gd::string const& file) = win inline, m1 0x521c84, imac 0x5fa410 {
		auto ret = new CCSpriteWithHue();
		if (ret->initWithFile(file.c_str())) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}
	static CCSpriteWithHue* createWithSpriteFrame(cocos2d::CCSpriteFrame* frame) = win inline, m1 0x52203c, imac 0x5fa770 {
		auto ret = new CCSpriteWithHue();
		if (ret->initWithSpriteFrame(frame)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}
	static CCSpriteWithHue* createWithSpriteFrameName(gd::string const&) = win 0x47610, m1 0x522138, imac 0x5fa850;
	static CCSpriteWithHue* createWithTexture(cocos2d::CCTexture2D* texture, cocos2d::CCRect const& rect, bool rotated) = win inline, m1 0x521f48, imac 0x5fa6a0 {
		auto ret = new CCSpriteWithHue();
		if (ret->initWithTexture(texture, rect, rotated)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}
	static CCSpriteWithHue* createWithTexture(cocos2d::CCTexture2D* texture) = win inline, m1 0x521e30, imac 0x5fa5a0 {
		auto ret = new CCSpriteWithHue();
		if (ret->initWithTexture(texture)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	float getAlpha() = win inline, m1 0x522950, imac 0x5fb130 {
		return _displayedOpacity / 255.f;
	}
	float getHue() = win inline, m1 0x522968, imac 0x5fb150 {
		return m_hue;
	}
	void getUniformLocations() = win inline, m1 0x52252c, imac 0x5fac30 {
		m_uHueLoc = glGetUniformLocation(m_pShaderProgram->getProgram(), "u_hue");
		m_uAlphaLoc = glGetUniformLocation(m_pShaderProgram->getProgram(), "u_alpha");
		m_uLumLoc = glGetUniformLocation(m_pShaderProgram->getProgram(), "u_lum");
	}
	void initShader() = win 0x47850, m1 0x5221c4, imac 0x5fa8f0;
	void setCustomLuminance(float r, float g, float b) = win inline, m1 0x5229e0, imac 0x5fb1e0 {
		m_luminance[0] = r;
		m_luminance[1] = g;
		m_luminance[2] = b;
	}
	void setEvenLuminance(float luminance) = win inline, m1 0x5229c0, imac 0x5fb1b0 {
		m_luminance[0] = luminance * 0.33f;
		m_luminance[1] = luminance * 0.33f;
		m_luminance[2] = luminance * 0.33f;
	}
	void setHue(float hue) = win inline, m1 0x5224fc, imac 0x5fabe0 {
		m_hue = hue;
		this->updateColorMatrix();
	}
	void setHueDegrees(float degrees) = win inline, m1 0x522970, imac 0x5fb160 {
		auto deg = degrees;
		while (deg < 0.f) deg += 360.f;
		this->setHue(deg / 360.f * 6.28318548f);
	}
	void setLuminance(float luminance) = win inline, m1 0x522504, imac 0x5fac00 {
		m_luminance[0] = luminance * 0.21f;
		m_luminance[1] = luminance * 0.72f;
		m_luminance[2] = luminance * 0.07f;
	}
	void setupDefaultSettings() = win inline, m1 0x5221b0, imac 0x5fa8d0 {
		m_hue = 0.f;
		this->setLuminance(1.f);
	}
	void updateColorMatrix() = win 0x47ab0, m1 0x5225ec, imac 0x5face0;
	void updateHue(float) = win inline, m1 0x5224d0, imac 0x5fabb0 {
		this->setHue(m_hue + 0.05235988f);
	}

	virtual void draw() = win 0x47da0, m1 0x5229f0, imac 0x5fb200, ios 0x1af588;
	virtual bool initWithTexture(cocos2d::CCTexture2D*) = win 0x47770, m1 0x52245c, imac 0x5faad0, ios 0x1af19c;
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = win 0x477d0, m1 0x5223e0, imac 0x5fab40, ios 0x1af218;
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = win 0x47710, m1 0x52216c, imac 0x5fa890, ios 0x1aefa0;
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = win 0x477e0, m1 0x52246c, imac 0x5fab60, ios 0x1af228;
	virtual gd::string getShaderName() = win 0x47580, m1 0x521c58, imac 0x5fa3e0, ios 0x1aee70;
	virtual const char* shaderBody() = win 0x47a80, m1 0x5225b0, imac 0x5faca0, ios 0x1af334;
	virtual void updateColor() = win 0x47a90, m1 0x5225c8, imac 0x5facc0, ios 0x1af340;

	float m_hue;
	std::array<float, 3> m_luminance;
	std::array<std::array<float, 3>, 3> m_colorMatrix;
	int m_uHueLoc;
	int m_uAlphaLoc;
	int m_uLumLoc;
}

[[link(android)]]
class CCTextInputNode : cocos2d::CCLayer, cocos2d::CCIMEDelegate, cocos2d::CCTextFieldDelegate {
	// virtual ~CCTextInputNode() = win 0x48500, ios 0x17834c;
	CCTextInputNode() = ios 0x17a66c {
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
		m_valueType = (InputValueType)0;
		m_decimalPlaces = 0;
		m_kerningAmount = 0;
	}

	static CCTextInputNode* create(float, float, char const*, char const*, int, char const*) = win 0x4e270, imac 0x9d950, m1 0x8da20, ios 0x178444;

	static CCTextInputNode* create(float width, float height, char const* placeholder, char const* fontPath) {
		return CCTextInputNode::create(width, height, placeholder, 0x18, fontPath);
	}
	static CCTextInputNode* create(float width, float height, char const* placeholder, int fontSize, char const* fontPath) {
		return CCTextInputNode::create(width, height, placeholder, "Thonburi", fontSize, fontPath);
	}

	void setDelegate(TextInputDelegate* delegate) {
		m_delegate = delegate;
	}
	void setMaxLabelScale(float v) = win inline, m1 0x8e824, imac 0x9e840, ios 0x178e10 {
		m_maxLabelScale = v;
		this->refreshLabel();
	}
	void setMaxLabelWidth(float v) = win inline, m1 0x8e82c, imac 0x9e860, ios 0x178e18 {
		m_maxLabelWidth = v;
		this->refreshLabel();
	}
	void setMaxLabelLength(int v) {
		m_maxLabelLength = v;
		this->refreshLabel();
	}
	void setLabelPlaceholderScale(float v) = win inline, m1 0x8e834, imac 0x9e880, ios 0x178e20 {
		m_placeholderScale = v;
		this->refreshLabel();
	}
	void setLabelPlaceholderColor(cocos2d::ccColor3B color) = win inline, m1 0x8e83c, imac 0x9e8a0, ios 0x178e28 {
		m_placeholderColor = color;
		this->refreshLabel();
	}
	void setAllowedChars(gd::string filter) = win inline, m1 0x8e3f8, imac 0x9e3d0, ios 0x178b2c {
		m_allowedChars = filter;
	}
	cocos2d::CCLabelBMFont* getPlaceholderLabel() {
		return m_placeholderLabel;
	}

	void addTextArea(TextArea*) = win 0x4e6c0, imac 0x9de60, m1 0x8dec4, ios 0x178760;
	void forceOffset() = imac 0xa02c0, m1 0x8ff44;
	gd::string getString() = win inline, m1 0x8e57c, imac 0x9e560, ios 0x178c4c {
		return m_textField->getString();
	}
	bool init(float, float, char const*, char const*, int, char const*) = win 0x4e480, imac 0x9db00, m1 0x8db78, ios 0x1784f8;
	void refreshLabel() = win 0x4ecc0, imac 0x9e600, m1 0x8e628, ios 0x178c80;
	void setLabelNormalColor(cocos2d::ccColor3B color) = win inline, m1 0x8e84c, imac 0x9e8c0 {
		m_textColor = color;
		this->refreshLabel();
	}
	void setString(gd::string) = win 0x4e920, imac 0x9e450, m1 0x8e45c, ios 0x178b90;
	void updateBlinkLabel() = win inline, m1 0x8e818, imac 0x9e820 {
		this->updateBlinkLabelToChar(this->m_textField->m_uCursorPos);
	}
	void updateBlinkLabelToChar(int) = win 0x4efa0, imac 0x9e8e0, m1 0x8e860;
	void updateCursorPosition(cocos2d::CCPoint, cocos2d::CCRect) = win 0x4fee0, m1 0x8ff48, imac 0xa02d0, ios 0x179ffc;
	void updateDefaultFontValues(gd::string) = win 0x4e7b0, m1 0x8de1c, imac 0x9ddc0;
	void updateLabel(gd::string) = win 0x4e9c0, imac 0x9e0c0, m1 0x8e134, ios 0x178894;

	virtual void visit() = win 0x4e8b0, m1 0x8e400, imac 0x9e3f0, ios 0x178b34;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x50440, m1 0x903d8, imac 0xa0840, ios 0x17a440;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x17a5e8 {}
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x17a5d8 {}
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x17a5e0 {}
	virtual void registerWithTouchDispatcher() = win 0x50650, m1 0x905dc, imac 0xa0a90, ios 0x17a5f0;
	virtual void textChanged() = win 0x4f590, m1 0x8eea4, imac 0x9efb0, ios 0x1793e4;
	virtual void onClickTrackNode(bool) = win 0x4f570, m1 0x8ee84, imac 0x9ef90, ios 0x1793c4;
	virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&) = win 0x4f390, m1 0x8ec40, imac 0x9ed30, ios 0x1791e0;
	virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&) = win 0x4f4f0, m1 0x8ed78, imac 0x9ef10, ios 0x179334;
	virtual bool onTextFieldInsertText(cocos2d::CCTextFieldTTF* pSender, char const* text, int nLen, cocos2d::enumKeyCodes keyCodes) = win 0x4f620, m1 0x8efac, imac 0x9f0c0, ios 0x17947c;
	virtual bool onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF* tField) = win 0x4fa00, m1 0x8f5c0, imac 0x9f820, ios 0x17987c;
	virtual bool onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF* tField) = win 0x4fd30, m1 0x8f8ac, imac 0x9fb50, ios 0x179ae8;

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
	InputValueType m_valueType;
	int m_decimalPlaces;
	int m_kerningAmount;
}

[[link(android)]]
class CCURLObject : cocos2d::CCObject {
	// virtual ~CCURLObject();

	static CCURLObject* create(gd::string, gd::string);

	bool init(gd::string, gd::string);
}

[[link(android), depends(ChallengesPage), depends(GJChallengeItem)]]
class ChallengeNode : cocos2d::CCNode {
	// virtual ~ChallengeNode();
	inline ChallengeNode() {} //  = ios 0x3a618

	static ChallengeNode* create(GJChallengeItem* challengeItem, ChallengesPage* challengesPage, bool isNew) = win inline, m1 0x328294, imac 0x3a1490, ios 0x394e4 {
		auto ret = new ChallengeNode();
		if (ret->init(challengeItem, challengesPage, isNew)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	bool init(GJChallengeItem* challengeItem, ChallengesPage* challengesPage, bool isNew) = win 0x85490, m1 0x328808, imac 0x3a1a50, ios 0x398e4;
	void onClaimReward(cocos2d::CCObject* sender) = imac 0x3a2660;
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
	inline ChallengesPage() {}

	static ChallengesPage* create() = win inline, ios 0x38560, imac 0x39ff20, m1 0x326e74 {
		auto ret = new ChallengesPage();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	void claimItem(ChallengeNode*, GJChallengeItem*, cocos2d::CCPoint) = win 0x851e0, imac 0x3a1800, m1 0x3285f0;
	ChallengeNode* createChallengeNode(int number, bool skipAnimation, float animLength, bool isNew) = win 0x849f0, imac 0x3a0dd0, m1 0x327c74, ios 0x38fc0;
	TodoReturn exitNodeAtSlot(int, float) = win 0x84c80, imac 0x3a12a0, m1 0x3280c8;
	void onClose(cocos2d::CCObject* sender) = win 0x85150, m1 0x327968, imac 0x3a0ac0;
	TodoReturn tryGetChallenges();
	TodoReturn updateDots() = imac 0x3a0fc0, m1 0x327e50;
	callback void updateTimers(float) = win 0x84d70, imac 0x3a0b00, m1 0x3279b4;

	virtual bool init() = win 0x83ca0, imac 0x3a0090, m1 0x326f90, ios 0x38638;
	virtual void registerWithTouchDispatcher() = win 0x41750, m1 0x3285b8, imac 0x3a17c0, ios 0x396f8;
	virtual void keyBackClicked() = win 0x85190, m1 0x32851c, imac 0x3a1730, ios 0x396ec;
	virtual void show() = win 0x84fb0, m1 0x328390, imac 0x3a1590, ios 0x39570;

	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x396e4 {}

	virtual void challengeStatusFinished() = win 0x84690, m1 0x327ef8, imac 0x3a1090, ios 0x391fc;
	virtual void challengeStatusFailed() = win 0x848d0, m1 0x3281b0, imac 0x3a13a0, ios 0x39400;
	virtual void currencyWillExit(CurrencyRewardLayer*) = win 0x85470, m1 0x328720, imac 0x3a1930, ios 0x39860;

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
	CharacterColorPage() {
		m_colorMode = 0;
		m_playerObjects = nullptr;
		m_modeButtons = nullptr;
		m_colorButtons = nullptr;
		m_cursors = nullptr;
		m_delegate = nullptr;
		m_glowToggler = nullptr;
		m_glowLabel = nullptr;
	}

	static CharacterColorPage* create() = win inline, ios 0x12f2cc, m1 0x585908, imac 0x669c10 {
		auto ret = new CharacterColorPage();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	int activeColorForMode(int mode);
	TodoReturn checkColor(int, UnlockType);
	int colorForIndex(int) = imac 0x66b7a0;
	void createColorMenu() = win 0x87600, ios 0x1300e8, m1 0x586a8c, imac 0x66ae50;
	void FLAlert_Clicked(FLAlertLayer*, bool);
	cocos2d::CCPoint offsetForIndex(int) = imac 0x66ba10;
	void onClose(cocos2d::CCObject* sender) = win 0x88f50, m1 0x586624, imac 0x66aa00;
	void onMode(cocos2d::CCObject* sender) = win 0x87d00, m1 0x586740, imac 0x66ab00;
	void onPlayerColor(cocos2d::CCObject* sender) = win 0x88550, m1 0x5873e4, imac 0x66b7c0;
	void toggleGlow(cocos2d::CCObject*) = win 0x87550, m1 0x586e64, imac 0x66b220;
	TodoReturn toggleGlowItems(bool);
	void toggleShip(cocos2d::CCObject*) = win 0x87430, m1 0x586678, imac 0x66aa50;
	void updateColorMode(int) = imac 0x66b260;
	void updateIconColors() = win 0x88d30;

	virtual bool init() = win 0x866e0, m1 0x585a10, imac 0x669d70, ios 0x12f38c;
	virtual void registerWithTouchDispatcher() = m1 0x587994, imac 0x66bd60, win 0x41750, ios 0x130ca4;
	virtual void keyBackClicked() = win 0x88f90, m1 0x5878e8, imac 0x66bcc0, ios 0x130c48;
	virtual void show() = m1 0x587760, imac 0x66bb30, ios 0x130ad4;

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
	TodoReturn updateCheckpointSpriteVisibility();

	virtual bool init() = m1 0x1889c0, imac 0x1cee10, ios 0x3988c4;
	virtual void setupCustomSprites(gd::string) = m1 0x188e00, imac 0x1cf260, ios 0x398c98;
	virtual void resetObject() = m1 0x18a13c, imac 0x1d0870, ios 0x3997e0;
	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x48d630, m1 0x188a1c, imac 0x1cee70, ios 0x398920;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x18a010, imac 0x1d0730, ios 0x3996d0;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x18971c, imac 0x1cfc50, ios 0x39942c;
	virtual void triggerActivated(float) = m1 0x188a34, imac 0x1cee90, win 0x48d650, ios 0x398938;
	virtual void restoreObject() = m1 0x18a194, imac 0x1d08e0, ios 0x399830;
	virtual void updateSyncedAnimation(float, int) = m1 0x189380, imac 0x1cf840, ios 0x39909c;
}

[[link(android), depends(GJGameState), depends(GJShaderState), depends(FMODAudioState), depends(EffectManagerState)]]
class CheckpointObject : cocos2d::CCNode {
	// virtual ~CheckpointObject();
	CheckpointObject() = win 0x381f50;

	static CheckpointObject* create() = win inline {
		auto ret = new CheckpointObject();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	TodoReturn getObject();
	void setObject(GameObject*);

	virtual bool init() = win 0x767c0, imac 0xbfd90, m1 0xab33c, ios 0x125188;

	GJGameState m_gameState;
	GJShaderState m_shaderState;
	FMODAudioState m_audioState;
	GameObject* m_physicalCheckpointObject;
	PlayerCheckpoint* m_player1Checkpoint;
	PlayerCheckpoint* m_player2Checkpoint;
	void* m_maybeAPointer1;
	int m_unkInt1;
	short m_unkShort1;
	PAD = win 0x2;
	void* m_maybeAPointer2;
	gd::vector<SavedObjectStateRef> m_vectorDynamicSaveObjects;
	gd::vector<SavedActiveObjectState> m_vectorActiveSaveObjects1;
	gd::vector<SavedSpecialObjectState> m_vectorActiveSaveObjects2;
	EffectManagerState m_effectManagerState;
	cocos2d::CCArray* m_gradientTriggerObjectArray;
	bool m_unkBool1;
	PAD = win 0x7;
	gd::unordered_map<int,SequenceTriggerState> m_sequenceTriggerStateUnorderedMap;
	void* m_maybeAPointer3;
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

	virtual void keyBackClicked() = win 0x8a310, m1 0x227f98, imac 0x283350, ios 0x89464;
	virtual void show() = m1 0x227f4c, imac 0x2832f0, ios 0x89418;
	virtual void textInputClosed(CCTextInputNode*) = m1 0x227de8, imac 0x283130, ios 0x8937c;
	virtual void textChanged(CCTextInputNode*) = win 0x89f90, m1 0x227e04, imac 0x283170, ios 0x89398;
	virtual void textInputShouldOffset(CCTextInputNode*, float) = m1 0x227fa4, imac 0x283380, ios 0x89470;
	virtual void textInputReturn(CCTextInputNode*) = m1 0x228074, imac 0x283440, ios 0x894dc;
}

[[link(android)]]
class CollisionTriggerAction {
	PAD = win 0x20;
	gd::vector<int> m_unkVecInt;
}

[[link(android)]]
class ColorAction : cocos2d::CCObject {
	// virtual ~ColorAction();

	static ColorAction* create() = win 0x247180, imac 0x2d4e30;
	static ColorAction* create(cocos2d::ccColor3B, bool, int);
	static ColorAction* create(cocos2d::ccColor3B, cocos2d::ccColor3B, float, double, bool, int, float, float);
	static ColorAction* create(cocos2d::ccColor3B, cocos2d::ccColor3B, float, double, bool);

	TodoReturn getCopy();
	bool init(cocos2d::ccColor3B, cocos2d::ccColor3B, float, double, bool, int, float, float);
	bool isInUse();
	void loadFromState(CAState& state) {
		m_fromColor = state.m_fromColor;
		m_toColor = state.m_toColor;
		m_color = state.m_color;
		m_property19 = state.m_property19;
		m_blending = state.m_blending;
		m_copyOpacity = state.m_copyOpacity;
		m_unknown = state.m_unknown;
		m_playerColor = state.m_playerColor;
		m_colorID = state.m_colorID;
		m_copyID = state.m_copyID;
		m_unknown2 = state.m_unknown2;
		m_duration = state.m_duration;
		m_fromOpacity = state.m_fromOpacity;
		m_toOpacity = state.m_toOpacity;
		m_deltaTime = state.m_deltaTime;
		m_copyHSV = state.m_copyHSV;
	}
	TodoReturn resetAction();
	void saveToState(CAState& state) {
		state.m_fromColor = m_fromColor;
		state.m_toColor = m_toColor;
		state.m_color = m_color;
		state.m_property19 = m_property19;
		state.m_blending = m_blending;
		state.m_copyOpacity = m_copyOpacity;
		state.m_unknown = m_unknown;
		state.m_playerColor = m_playerColor;
		state.m_colorID = m_colorID;
		state.m_copyID = m_copyID;
		state.m_unknown2 = m_unknown2;
		state.m_duration = m_duration;
		state.m_fromOpacity = m_fromOpacity;
		state.m_toOpacity = m_toOpacity;
		state.m_deltaTime = m_deltaTime;
		state.m_copyHSV = m_copyHSV;
	}
	void setupFromMap(gd::map<gd::string, gd::string>&) = win 0x247e40;
	void setupFromString(gd::string) = win 0x247d60, imac 0x2d7190;
	void step(float) = win 0x247270;
	void updateCustomColor(cocos2d::ccColor3B, cocos2d::ccColor3B); //inline on windows
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
	bool m_unknown2;
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

	virtual bool init() = m1 0x271d4c, imac 0x2d4c30, ios 0xcdf4;

	float m_opacity;
	cocos2d::ccColor3B m_color;
	cocos2d::ccColor3B m_copyColor;
}

[[link(android)]]
class ColorChannelSprite : cocos2d::CCSprite {
	// virtual ~ColorChannelSprite();

	static ColorChannelSprite* create() = win 0x246c10, imac 0x2d44d0, m1 0x2715f4, ios 0xc730;

	void updateBlending(bool enabled) = win 0x247000, imac 0x2d48a0, m1 0x2719b0;
	void updateCopyLabel(int channelID, bool copyOpacity) = win 0x246cf0, imac 0x2d4590, m1 0x2716a8;
	void updateOpacity(float alpha) = win 0x246eb0, imac 0x2d4750, m1 0x271850, ios 0xc978;
	void updateValues(ColorAction* action) = win inline, imac 0x2d49b0, m1 0x271ab8, ios 0xcbdc {
		if (!action) {
			this->setColor(cocos2d::ccWHITE);
			this->updateCopyLabel(0, false);
			this->updateOpacity(1.f);
			this->updateBlending(false);
			return;
		}
		this->updateCopyLabel(action->m_copyID, action->m_copyOpacity);
		this->updateOpacity(action->m_fromOpacity);
		this->updateBlending(action->m_blending);
		if (action->m_copyID != 0 && !action->m_copyOpacity) {
			this->setColor(cocos2d::ccGRAY);
		}
		else {
			this->setColor(action->m_fromColor);
		}
	}

	virtual bool init() = win 0x246cd0, m1 0x27169c, imac 0x2d4570, ios 0xc7cc;

	cocos2d::CCLabelBMFont* m_copyLabel;
	cocos2d::CCLabelBMFont* m_opacityLabel;
	cocos2d::CCLabelBMFont* m_blendingLabel;
}

[[link(android)]]
class ColorSelectDelegate {
	virtual void colorSelectClosed(cocos2d::CCNode*);
}

[[link(android)]]
class ColorSelectLiveOverlay : FLAlertLayer {
	// virtual ~ColorSelectLiveOverlay();

	static ColorSelectLiveOverlay* create(ColorAction*, ColorAction*, EffectGameObject*) = win 0x8a440, imac 0x56fe90;

	void closeColorSelect(cocos2d::CCObject*);
	void colorValueChanged(cocos2d::ccColor3B);
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn createWithActions(ColorAction*, ColorAction*);
	TodoReturn createWithObject(EffectGameObject*);
	TodoReturn determineStartValues();
	TodoReturn getColorValue();
	bool init(ColorAction*, ColorAction*, EffectGameObject*) = win 0x8a590;
	void onSelectTab(cocos2d::CCObject* sender);
	TodoReturn selectColor(cocos2d::ccColor3B);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn textChanged(CCTextInputNode*);
	void textInputClosed(CCTextInputNode*);
	TodoReturn toggleControls(bool);
	TodoReturn updateColorLabel();
	TodoReturn updateColorValue();
	void updateOpacity();

	virtual void keyBackClicked() = win 0x8b9a0, m1 0x4be7b0, imac 0x571bd0, ios 0xf7cac;
	virtual void show() = m1 0x4be868, imac 0x571c80, ios 0xf7cc0;

	EffectGameObject* m_effectGameObject;
	cocos2d::CCArray* m_barSprites;
	cocos2d::CCArray* m_12buttons;
	ColorAction* m_baseColorAction;
	ColorAction* m_detailColorAction;
}

[[link(android)]]
class ColorSelectPopup : SetupTriggerPopup, cocos2d::extension::ColorPickerDelegate, GJSpecialColorSelectDelegate {
	// virtual ~ColorSelectPopup();

	static ColorSelectPopup* create(cocos2d::ccColor3B color) = win inline, m1 0x644514, imac 0x7323f0 {
		auto action = ColorAction::create();
		action->m_color = color;
		return ColorSelectPopup::create(action);
	}
	static ColorSelectPopup* create(ColorAction* action) = win inline, m1 0x644504, imac 0x7323d0 {
		return ColorSelectPopup::create(nullptr, nullptr, action);
	}
	static ColorSelectPopup* create(EffectGameObject* effect, cocos2d::CCArray* array, ColorAction* action) = win 0x8c220, m1 0x64430c, imac 0x7320f0;
	static ColorSelectPopup* create(EffectGameObject* effect, cocos2d::CCArray* array) = win inline, m1 0x64430c, imac 0x7320e0 {
		return ColorSelectPopup::create(effect, array, nullptr);
	}

	void closeColorSelect(cocos2d::CCObject*) = win 0x8fc90, imac 0x734ba0;
	static gd::string colorToHex(cocos2d::ccColor3B) = win 0x90ec0;
	cocos2d::ccColor3B const& getColorValue();
	static cocos2d::ccColor3B hexToColor(gd::string) = win 0x90250;
	bool init(EffectGameObject*, cocos2d::CCArray*, ColorAction*) = win 0x8c410, m1 0x644550, imac 0x732420;
	void onCopy(cocos2d::CCObject* sender) = win 0x8f550;
	void onCopyOpacity(cocos2d::CCObject* sender) = win 0x8f2f0;
	void onDefault(cocos2d::CCObject* sender) = win 0x8f650;
	void onHSVLegacyMode(cocos2d::CCObject* sender) = win 0x8f260;
	void onPaste(cocos2d::CCObject* sender) = win 0x8f5d0;
	void onPlayerColor1(cocos2d::CCObject* sender) = win 0x8f390;
	void onPlayerColor2(cocos2d::CCObject* sender) = win 0x8f470;
	void onSelectSpecialColor(cocos2d::CCObject* sender) = win 0x91c80;
	void onTintGround(cocos2d::CCObject* sender) = win 0x8f110;
	void onToggleHSVMode(cocos2d::CCObject* sender) = win 0x91cf0;
	void onToggleTintMode(cocos2d::CCObject* sender) = win 0x8f1a0;
	void onUpdateCopyColor(cocos2d::CCObject* sender) = win 0x91c10;
	void onUpdateCustomColor(cocos2d::CCObject* sender) = win 0x91440;
	void selectColor(cocos2d::ccColor3B);
	void sliderChanged(cocos2d::CCObject* sender) = win 0x8f920;
	void updateColorLabels() = win 0x90070;
	void updateColorValue();
	void updateCopyColor() = win 0x92020;
	void updateCopyColorTextInputLabel() = win 0x92290;
	void updateCustomColorIdx() = win 0x91a60;
	void updateDuration() = win 0x8fa10;
	void updateDurLabel() = win 0x8fb50, imac 0x734fd0, m1 0x646c84;
	void updateHSVMode() = win 0x91d30;
	void updateHSVValue();
	void updateOpacity() = win 0x8faa0;
	void updateOpacityLabel() = win 0x8fc20;
	void updateTextInputLabel() = win 0x91b00;

	virtual void show() = win 0x91390, m1 0x649d8c, imac 0x738340, ios 0x4292e4;
	virtual void determineStartValues() = win 0x8eb80, m1 0x647c48, imac 0x7360c0, ios 0x4282d0;
	virtual void textChanged(CCTextInputNode*) = win 0x914c0, m1 0x649e58, imac 0x738430, ios 0x4293b0;
	virtual void colorValueChanged(cocos2d::ccColor3B) = win 0x8ff40, m1 0x6482e8, imac 0x7368b0, ios 0x4288e0;
	virtual void colorSelectClosed(GJSpecialColorSelect*, int) = win 0x91e80, m1 0x64a358, imac 0x7389d0, ios 0x4297c0;

	cocos2d::extension::CCControlColourPicker* m_colorPicker;
	bool m_unk3c0;
	cocos2d::CCLabelBMFont* m_opacityLabel;
	Slider* m_fadeTimeSlider;
	Slider* m_opacitySlider;
	CCMenuItemToggler* m_playerColor1Toggle;
	CCMenuItemToggler* m_playerColor2Toggle;
	cocos2d::ccColor3B m_originalColor;
	cocos2d::CCSprite* m_currentColorSprite;
	cocos2d::CCSprite* m_originalColorSprite;
	cocos2d::ccColor3B m_currentColor;
	ColorSelectDelegate* m_delegate;
	float m_fadeTime;
	int m_playerColor;
	int m_blending;
	float m_opacity;
	ColorAction* m_colorAction;
	CCTextInputNode* m_colorInput;
	bool m_backgroundTrigger;
	bool m_tintGround;
	bool m_legacyHSV;
	bool m_colorTrigger;
	bool m_noChannel;
	bool m_newColorTrigger;
	int m_colorID;
	bool m_initalizing;
	int m_copyColorID;
	bool m_copyOpacity;
	ConfigureHSVWidget* m_hsvWidget;
	cocos2d::ccHSVValue m_hsv;
	cocos2d::CCArray* m_colorObjects;
	cocos2d::CCArray* m_copyObjects;
	CCTextInputNode* m_copyColorInput;
	CCTextInputNode* m_fadeTimeInput;
	void* m_unk488;
	void* m_unk490;
	bool m_showCopyObjects;
	CCTextInputNode* m_rInput;
	CCTextInputNode* m_gInput;
	CCTextInputNode* m_bInput;
	CCTextInputNode* m_hexInput;
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
	void loadFromComment(GJComment*) = win 0xb3790, imac 0x242fa0, m1 0x1edab0, ios 0x1075b0;
	void onConfirmDelete(cocos2d::CCObject* sender) = win 0xb5be0, imac 0x250bc0, m1 0x1fa59c;
	TodoReturn onDelete();
	void onGoToLevel(cocos2d::CCObject* sender) = win 0xb5eb0, imac 0x2509f0, m1 0x1fa408;
	void onLike(cocos2d::CCObject* sender) = win 0xb5980, imac 0x250ac0, m1 0x1fa4bc;
	TodoReturn onUndelete();

	void onUnhide(cocos2d::CCObject* sender) = win 0xb5e90, imac 0x250aa0, m1 0x1fa4b0;
	void onViewProfile(cocos2d::CCObject* sender) = imac 0x2509c0, m1 0x1fa3d4;
	void updateBGColor(int) = ios 0x108fdc;
	void updateLabelValues();

	virtual bool init() = win 0xb3770, m1 0x1fa3bc, imac 0x250990, ios 0x112100;
	virtual void draw() = m1 0x1fa684, imac 0x250CB0, ios 0x11239c;
	virtual void likedItem(LikeItemType, int, bool) = win 0xb5ae0, m1 0x1fa730, imac 0x250d80, ios 0x112448;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xb5d50, m1 0x1faaac, imac 0x251120, ios 0x1125c0;

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

	static CommunityCreditNode* create(int, int, int, gd::string) = win 0x926b0, m1 0x2adbac, imac 0x31cd40;

	bool init(int unlockType, int iconID, int unknown, gd::string author) = win inline, m1 0x2add1c, imac 0x31cec0 {
		if (!CCNode::init()) return false;
		m_unlockType = unlockType;
		m_iconID = iconID;
		m_unknown = unknown;
		m_author = author;
		return true;
	}

	int m_unlockType;
	int m_iconID;
	int m_unknown;
	gd::string m_author;
}

[[link(android)]]
class CommunityCreditsPage : FLAlertLayer {
	// virtual ~CommunityCreditsPage();
	CommunityCreditsPage() {
		m_pageObjects = nullptr;
		m_prevButton = nullptr;
		m_nextButton = nullptr;
		m_page = -1;
	}

	static CommunityCreditsPage* create() = win inline, m1 0x2adfa4, imac 0x31d260 {
		auto ret = new CommunityCreditsPage();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	void FLAlert_Clicked(FLAlertLayer*, bool);
	void goToPage(int) = win 0x94830, m1 0x2b00a0, imac 0x31f610;
	void onClose(cocos2d::CCObject* sender) = win 0x82fc0, m1 0x2b0024, imac 0x31f5a0;
	void onSwitchPage(cocos2d::CCObject* sender) = win 0x947f0, m1 0x2b0060, imac 0x31f5d0;

	virtual bool init() = win 0x927f0, m1 0x2ae0a8, imac 0x31d3b0, ios 0x1abe54;
	virtual void registerWithTouchDispatcher() = win 0x41750, m1 0x2b03c8, imac 0x31f930, ios 0x1ae43c;
	virtual void keyBackClicked() = win 0x82ff0, m1 0x2b034c, imac 0x31f8c0, ios 0x1ae3c0;
	virtual void show() = win 0x94950, m1 0x2b01c4, imac 0x31f730, ios 0x1ae24c;

	cocos2d::CCDictionary* m_pageObjects;
	CCMenuItemSpriteExtra* m_prevButton;
	CCMenuItemSpriteExtra* m_nextButton;
	int m_page;
}

[[link(android)]]
class ConfigureHSVWidget : cocos2d::CCNode, TextInputDelegate {
	// virtual ~ConfigureHSVWidget();

	static ConfigureHSVWidget* create(cocos2d::ccHSVValue, bool, bool) = win 0x95140, m1 0x3ac04c, imac 0x439770;

	void createTextInputNode(cocos2d::CCPoint, int) = win 0x95af0, m1 0x3acccc, imac 0x43a4c0;
	static cocos2d::ccHSVValue getHSV(GameObject*, cocos2d::CCArray*, int) = win 0x96890, m1 0x3ada2c, imac 0x43b280;
	bool init(cocos2d::ccHSVValue, bool, bool) = win 0x95210, m1 0x3ac39c, imac 0x439b20;
	void onClose() = m1 0x3ac120, imac 0x439840;
	void onResetHSV(cocos2d::CCObject* sender) = win 0x96300, m1 0x3ad158, imac 0x43a8e0;
	void onToggleSConst(cocos2d::CCObject* sender) = win 0x96200, m1 0x3ad070, imac 0x43a800;
	void onToggleVConst(cocos2d::CCObject* sender) = win 0x96280, m1 0x3ad0e4, imac 0x43a870;
	void sliderChanged(cocos2d::CCObject* sender) = win 0x960e0, m1 0x3acf28, imac 0x43a6f0;
	void updateLabels() = win 0x96380, m1 0x3ad1d0, imac 0x43a960;
	void updateSliders() = win 0x96010, m1 0x3ad704, imac 0x43af00;

	virtual void textInputOpened(CCTextInputNode*) = ios 0x101b34 {}
	virtual void textInputClosed(CCTextInputNode*) = win 0x89f80, m1 0x3ad7c8, imac 0x43afe0, ios 0x101b3c;
	virtual void textChanged(CCTextInputNode*) = win 0x95d50, m1 0x3ad7e4, imac 0x43b020, ios 0x101b58;

	cocos2d::CCLabelBMFont* m_hueLabel;
	cocos2d::CCLabelBMFont* m_saturationLabel;
	cocos2d::CCLabelBMFont* m_brightnessLabel;
	Slider* m_hueSlider;
	Slider* m_saturationSlider;
	Slider* m_brightnessSlider;
	cocos2d::ccHSVValue m_hsv;
	bool m_mixed;
	HSVWidgetDelegate* m_delegate;
	bool m_addInputs;
	bool m_updating;
	cocos2d::CCDictionary* m_inputs;
}

[[link(android)]]
class ConfigureValuePopup : FLAlertLayer, TextInputDelegate {
	// virtual ~ConfigureValuePopup();

	static ConfigureValuePopup* create(ConfigureValuePopupDelegate*, float, float, float, gd::string, gd::string) = win 0x96b90, m1 0x550944, imac 0x62fca0;

	bool init(ConfigureValuePopupDelegate*, float, float, float, gd::string, gd::string) = win 0x96d40, m1 0x550c04, imac 0x62ff90;
	void onClose(cocos2d::CCObject* sender) = win 0x97720, m1 0x5513a4, imac 0x630800;
	void sliderChanged(cocos2d::CCObject* sender) = win 0x974f0, m1 0x551420, imac 0x630880;
	void updateTextInputLabel() = win 0x97540, m1 0x551464, imac 0x6308d0;

	virtual void keyBackClicked() = win 0x977a0, m1 0x551684, imac 0x630b30, ios 0x15be88;
	virtual void textInputClosed(CCTextInputNode*) = win 0x89f80, m1 0x551568, imac 0x6309e0, ios 0x15bd80;
	virtual void textChanged(CCTextInputNode*) = win 0x975d0, m1 0x551584, imac 0x630a20, ios 0x15bd9c;

	float m_value;
	float m_minimum;
	float m_maximum;
	bool m_enableDelegate;
	bool m_disableTextDelegate;
	ConfigureValuePopupDelegate* m_delegate;
	CCTextInputNode* m_input;
	Slider* m_slider;
}

[[link(android)]]
class ConfigureValuePopupDelegate {
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float);
}

[[link(android)]]
class CountTriggerAction {
	// CountTriggerAction(CountTriggerAction&&);

	bool m_unk0;
	int m_previousCount;
	int m_targetCount;
	int m_targetGroup;
	bool m_unk10;
	int m_unk14;
	int m_unk18;
	int m_itemID;
	bool m_multiActivate;
	gd::vector<int> m_unkVecInt;
}

[[link(android)]]
class CountTriggerGameObject : EffectGameObject {
	// virtual ~CountTriggerGameObject();

	static CountTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x48ea30, m1 0x18a2e8, imac 0x1d0a40, ios 0x399930;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x18a520, imac 0x1d0cc0, ios 0x399ad8;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x18a89c, imac 0x1d10f0, ios 0x399dd8;

	int m_pickupCount;
	int m_pickupTriggerMode; // 1 = multiply, 2 = divide
	bool m_unkPickupBool1;
	bool m_isOverride;
	float m_pickupTriggerMultiplier;
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

	virtual void update(float) = win 0x995e0, m1 0x46b4d8, imac 0x5151d0, ios 0x81548;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x998b0, m1 0x46b730, imac 0x515440, ios 0x81748;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x817f4 {}
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x99930, m1 0x46b860, imac 0x515550, ios 0x817fc;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x46b930, imac 0x5155f0, ios 0x818c4;
	virtual void registerWithTouchDispatcher() = m1 0x46b94c, imac 0x515630, ios 0x818e0;
	virtual void keyBackClicked() = win 0x99830, m1 0x46b6ac, imac 0x5153a0, ios 0x816c4;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x999e0, m1 0x46b984, imac 0x515670, ios 0x81918;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x99750, m1 0x46b5a0, imac 0x5152a0, ios 0x815f0;
	virtual void onClose(cocos2d::CCObject* sender) = win 0x82fc0, m1 0x46b670, imac 0x515370, ios 0x81688;
	virtual void keyUp(cocos2d::enumKeyCodes) = ios 0x8195c {}
	virtual TodoReturn playMusic() = win 0x98e90, m1 0x46a9bc, imac 0x514600, ios 0x80df0;
	virtual TodoReturn registerTouch() = win 0x99850, m1 0x46b6e8, imac 0x5153f0, ios 0x81700;
	virtual void onInfo(cocos2d::CCObject* sender) = win 0x99600, m1 0x46b4e8, imac 0x5151f0, ios 0x81558;
	virtual void onRecord(cocos2d::CCObject* sender) = win 0x98d00, m1 0x46a8a8, imac 0x5144f0, ios 0x80ce0;
	virtual TodoReturn recordingDidStop() = win 0x98ff0, m1 0x46aa5c, imac 0x514690, ios 0x80e80;
}

[[link(android)]]
class CreateMenuItem : CCMenuItemSpriteExtra {
	// virtual ~CreateMenuItem();

	static CreateMenuItem* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = win 0x125290, m1 0x2f724, imac 0x2f0f0;

	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	gd::string m_spriteFileName;
	int m_objectID;
}

[[link(android)]]
class CreateParticlePopup : FLAlertLayer, TextInputDelegate, ColorSelectDelegate, SliderDelegate {
	// virtual ~CreateParticlePopup();

	static CreateParticlePopup* create(gd::string);
	static CreateParticlePopup* create(ParticleGameObject*, cocos2d::CCArray*, gd::string);
	static CreateParticlePopup* create(ParticleGameObject*, cocos2d::CCArray*) = win 0x400d80, m1 0x3dfefc, imac 0x4787c0;

	TodoReturn centerAlignParticle(cocos2d::CCObject*);
	TodoReturn createParticleSlider(gjParticleValue, int, bool, cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn getPage(int);
	TodoReturn getPageButton(int);
	TodoReturn getPageContainer(int);
	TodoReturn getPageInputNodes(int);
	TodoReturn getPageMenu(int);
	TodoReturn getPageSliders(int);
	bool init(ParticleGameObject*, cocos2d::CCArray*, gd::string) = win 0x400f70, m1 0x3e0240, imac 0x4787e0;
	TodoReturn maxSliderValueForType(gjParticleValue);
	TodoReturn minSliderValueForType(gjParticleValue);
	void onAnimateActiveOnly(cocos2d::CCObject* sender);
	void onAnimateOnTrigger(cocos2d::CCObject* sender);
	void onCalcEmission(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = win 0x409b20, m1 0x3e3e40, imac 0x47d110;
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
	void willClose();

	virtual void update(float) = m1 0x3e6e08, imac 0x480650, ios 0x2e1c84;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x409c70, m1 0x3e7814, imac 0x4811d0, ios 0x2e24ec;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x409d70, m1 0x3e7908, imac 0x4812e0, ios 0x2e25e0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x40a1a0, m1 0x3e7ca4, imac 0x4816b0, ios 0x2e2978;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x3e7ce0, imac 0x481700, ios 0x2e29b4;
	virtual void keyBackClicked() = win 0x409c60, m1 0x3e7680, imac 0x481030, ios 0x2e2414;
	virtual void sliderBegan(Slider*) = win 0x4093a0, m1 0x3e7530, imac 0x480ef0, ios 0x2e22e4;
	virtual void sliderEnded(Slider*) = win 0x409460, m1 0x3e7648, imac 0x480fd0, ios 0x2e23fc;
	virtual void colorSelectClosed(cocos2d::CCNode*) = win 0x406a10, m1 0x3e6b94, imac 0x4803c0, ios 0x2e1a20;
	virtual void textInputShouldOffset(CCTextInputNode*, float) = m1 0x3e768c, imac 0x481060, ios 0x2e2420;
	virtual void textInputReturn(CCTextInputNode*) = m1 0x3e775c, imac 0x481120, ios 0x2e248c;
	virtual void textInputClosed(CCTextInputNode*) = m1 0x3e6f4c, imac 0x4807c0, ios 0x2e1db8;
	virtual void textChanged(CCTextInputNode*) = win 0x4072b0, m1 0x3e6f68, imac 0x480800, ios 0x2e1dd4;

	ParticleGameObject* m_targetObject;
	cocos2d::CCArray* m_targetObjects;
	cocos2d::CCArray* m_particles;
	bool m_unkBool;
	cocos2d::CCParticleSystemQuad* m_particle;
	// there's more but idc about them
}

[[link(android)]]
class CreatorLayer : cocos2d::CCLayer, cocos2d::CCSceneTransitionDelegate, DialogDelegate {
	// virtual ~CreatorLayer();
	CreatorLayer() {
		m_secretDoorSprite = nullptr;
		m_questsSprite = nullptr;
		m_vaultDialogIndex = -1;
		m_versusDialogIndex = 0;
	}

	static CreatorLayer* create() = win inline, imac 0x2933e0, m1 0x236598, ios 0xb7504 {
		auto ret = new CreatorLayer();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}
	static cocos2d::CCScene* scene() = win 0x9a190, imac 0x2932c0, m1 0x2364b4, ios 0xb74ac;

	bool canPlayOnlineLevels() = imac 0x295a00, m1 0x2389d8;
	void checkQuestsStatus() = win 0x9d810, imac 0x294fc0, m1 0x237fec, ios 0xb8a08;
	void onAdventureMap(cocos2d::CCObject* sender) = win 0x9c3a0, imac 0x294840, m1 0x237864;
	void onBack(cocos2d::CCObject* sender) = win 0x9d9c0, imac 0x2959a0, m1 0x238978, ios 0xb90d0;
	void onChallenge(cocos2d::CCObject* sender) = win 0x9c770, imac 0x2948b0, m1 0x2378f4;
	void onDailyLevel(cocos2d::CCObject* sender) = win 0x9c510, imac 0x2948e0, m1 0x23792c;
	void onEventLevel(cocos2d::CCObject* sender) = win 0x9c550, imac 0x294920, m1 0x23796c;
	void onFameLevels(cocos2d::CCObject* sender) = imac 0x295a10, m1 0x2389e0;
	void onFeaturedLevels(cocos2d::CCObject* sender) = win 0x9ba60, imac 0x294b10, m1 0x237b5c;
	void onGauntlets(cocos2d::CCObject* sender) = win 0x9bd50, imac 0x294ac0, m1 0x237b14;
	void onLeaderboards(cocos2d::CCObject* sender) = win 0x9b8b0, imac 0x2943c0, m1 0x2373bc;
	void onMapPacks(cocos2d::CCObject* sender) = win 0x9bc90, imac 0x294bf0, m1 0x237c24;
	void onMultiplayer(cocos2d::CCObject* sender) = win 0x9bdd0, imac 0x294400, m1 0x2373f8;
	void onMyLevels(cocos2d::CCObject* sender) = win 0x9b4a0, imac 0x294c90, m1 0x237cac;
	void onOnlineLevels(cocos2d::CCObject* sender) = win 0x9bc10, imac 0x294c50, m1 0x237c70;
	void onOnlyFullVersion(cocos2d::CCObject* sender) = imac 0x294d70, m1 0x237d74;
	void onPaths(cocos2d::CCObject* sender) = win 0x9bb20, imac 0x294b70, m1 0x237ba8;
	void onSavedLevels(cocos2d::CCObject* sender) = win 0x9b6b0, imac 0x2942f0, m1 0x2372fc;
	void onSecretVault(cocos2d::CCObject* sender) = win 0x9c8e0, imac 0x2950c0, m1 0x2380e8;
	void onTopLists(cocos2d::CCObject* sender) = win 0x9bb40, imac 0x294b90, m1 0x237bc4;
	void onTreasureRoom(cocos2d::CCObject* sender) = win 0x9cfc0, imac 0x295340, m1 0x238398, ios 0xb8cbc;
	void onWeeklyLevel(cocos2d::CCObject* sender) = win 0x9c530, imac 0x294900, m1 0x23794c;

	virtual bool init() = win 0x9a300, imac 0x2934c0, m1 0x236654, ios 0xb75b4;
	virtual void keyBackClicked() = win 0x9dae0, m1 0x238b9c, imac 0x295bf0, ios 0xb9200;
	virtual void sceneWillResume() = win 0x9da20, m1 0x238b2c, imac 0x295b70, ios 0xb91c0;
	virtual void dialogClosed(DialogLayer*) = win 0x9d900, m1 0x238a2c, imac 0x295a70, ios 0xb9130;

	cocos2d::CCSprite* m_secretDoorSprite;
	cocos2d::CCSprite* m_questsSprite;
	int m_vaultDialogIndex;
	int m_versusDialogIndex;
}

[[link(android)]]
class CurrencyRewardDelegate {
	virtual void currencyWillExit(CurrencyRewardLayer*) {}
}

[[link(android)]]
class CurrencyRewardLayer : cocos2d::CCLayer {
	// virtual ~CurrencyRewardLayer();
	// CurrencyRewardLayer();

	static CurrencyRewardLayer* create(int orbs, int stars, int moons, int diamonds, CurrencySpriteType demonKey, int keyCount, CurrencySpriteType shardType, int shardsCount, cocos2d::CCPoint position, CurrencyRewardType, float, float time) = win 0x9dd30, m1 0x6b865c, imac 0x7b1a90;

	void createObjects(CurrencySpriteType type, int count, cocos2d::CCPoint position, float time) = win inline, m1 0x6ba6d4, imac 0x7b3ca0 {
		this->createObjectsFull(type, count, nullptr, position, time);
	}
	void createObjectsFull(CurrencySpriteType, int, cocos2d::CCSprite*, cocos2d::CCPoint, float) = win 0x9fc00, m1 0x6ba798, imac 0x7b3d40;
	void createUnlockObject(cocos2d::CCSprite* sprite, cocos2d::CCPoint position, float time) = win inline, m1 0x6ba73c, imac 0x7b3cf0 {
		this->createObjectsFull(CurrencySpriteType::Icon, 1, sprite, position, time);
	}
	void incrementCount(int count) = win inline, m1 0x6bba28, imac 0x7b51f0 {
		if (m_orbsLabel == nullptr) return;
		m_orbs += count;
		this->pulseSprite(m_orbsSprite);
		m_orbsLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
	}
	void incrementDiamondsCount(int count) = win inline, m1 0x6bbcc8, imac 0x7b5640 {
		if (m_diamondsLabel == nullptr) return;
		m_diamonds += count;
		this->pulseSprite(m_diamondsSprite);
		m_diamondsLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
	}
	void incrementMoonsCount(int count) = win inline, m1 0x6bbe18, imac 0x7b54d0 {
		if (m_moonsLabel == nullptr) return;
		m_moons += count;
		this->pulseSprite(m_moonsSprite);
		m_moonsLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
	}
	void incrementSpecialCount1(int count) = win inline, m1 0x6bc0b8, imac 0x7b5920 {
		if (m_keysLabel == nullptr) return;
		m_keys += count;
		this->pulseSprite(m_keysSprite);
		m_keysLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
	}
	void incrementSpecialCount2(int count) = win inline, m1 0x6bbf68, imac 0x7b57b0 {
		if (m_shardsLabel == nullptr) return;
		m_shards += count;
		this->pulseSprite(m_shardsSprite);
		m_shardsLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
	}
	void incrementStarsCount(int count) = win inline, m1 0x6bbb78, imac 0x7b5360 {
		if (m_starsLabel == nullptr) return;
		m_stars += count;
		this->pulseSprite(m_starsSprite);
		m_starsLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
	}
	bool init(int, int, int, int, CurrencySpriteType, int, CurrencySpriteType, int, cocos2d::CCPoint, CurrencyRewardType, float, float) = win 0x9df80, m1 0x6b8764, imac 0x7b1b70;
	void pulseSprite(cocos2d::CCSprite*) = win 0xa12c0, m1 0x6bc208, imac 0x7b5a90;

	virtual void update(float) = win 0xa08f0, m1 0x6bb3b8, imac 0x7b4aa0, ios 0x331a78;

	CurrencyRewardDelegate* m_delegate;
	cocos2d::CCArray* m_objects;
	cocos2d::CCLabelBMFont* m_orbsLabel;
	cocos2d::CCLabelBMFont* m_starsLabel;
	cocos2d::CCLabelBMFont* m_moonsLabel;
	cocos2d::CCLabelBMFont* m_diamondsLabel;
	cocos2d::CCLabelBMFont* m_keysLabel;
	cocos2d::CCLabelBMFont* m_shardsLabel;
	cocos2d::CCSprite* m_orbsSprite;
	cocos2d::CCSprite* m_starsSprite;
	cocos2d::CCSprite* m_moonsSprite;
	cocos2d::CCSprite* m_diamondsSprite;
	CurrencySprite* m_keysSprite;
	CurrencySprite* m_shardsSprite;
	cocos2d::CCSpriteBatchNode* m_currencyBatchNode;
	cocos2d::CCSpriteBatchNode* m_orbBatchNode;
	int m_orbs;
	int m_stars;
	int m_moons;
	int m_diamonds;
	int m_keys;
	int m_shards;
	float m_elapsed;
	int m_unknown;
	float m_time;
	cocos2d::CCPoint m_orbsPosition;
	cocos2d::CCPoint m_starsPosition;
	cocos2d::CCPoint m_moonsPosition;
	cocos2d::CCPoint m_diamondsPosition;
	cocos2d::CCPoint m_keysPosition;
	cocos2d::CCPoint m_shardsPosition;
	bool m_particlesAdded;
	bool m_objectsAdded;
	cocos2d::CCNode* m_mainNode;
	int m_rewardCount;
	CurrencyRewardType m_rewardType;
}

[[link(android)]]
class CurrencySprite : CCSpritePlus {
	// virtual ~CurrencySprite();
	CurrencySprite() = win 0x9dbf0;

	static CurrencySprite* create(CurrencySpriteType type, bool burst) = win inline, m1 0x6ba5e0, imac 0x7b3ba0 {
		auto ret = new CurrencySprite();
		if (ret->init(type, burst)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	static CurrencySprite* createWithSprite(cocos2d::CCSprite*) = win 0xa2ae0, m1 0x6bb2d8, imac 0x7b49b0;
	bool init(CurrencySpriteType, bool) = win 0xa1390, m1 0x6bc3d0, imac 0x7b5c70;
	bool initWithSprite(cocos2d::CCSprite*) = m1 0x6bcc84, imac 0x7b6560;
	static CurrencySpriteType rewardToSpriteType(int) = win 0xa2d00, m1 0x6bce3c, imac 0x7b6710;
	static gd::string spriteTypeToStat(CurrencySpriteType) = win 0xa2da0, m1 0x6ba4a8, imac 0x7b3ac0;

	float m_unkFloat1;
	float m_unkFloat2;
	float m_unkFloat3;
	float m_remaining;
	int m_count;
	cocos2d::CCParticleSystemQuad* m_particleSystem;
	CurrencySpriteType m_spriteType;
	cocos2d::CCPoint m_position;
	cocos2d::CCSprite* m_burstSprite;
}

[[link(android)]]
class CustomizeObjectLayer : FLAlertLayer, TextInputDelegate, HSVWidgetDelegate, ColorSelectDelegate, ColorSetupDelegate {
	// virtual ~CustomizeObjectLayer();
	//CustomizeObjectLayer() = ios 0x577b8;

	static CustomizeObjectLayer* create(GameObject*, cocos2d::CCArray*) = win 0xa3150, ios 0x53b08;

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn determineStartValues();
	int getActiveMode(bool) = win 0xa72a0, m1 0x1a57a4, imac 0x1f22e0;
	TodoReturn getButtonByTag(int) = win 0xa7b10;
	TodoReturn getHSV();
	void highlightSelected(ButtonSprite*) = win 0xa7dc0, m1 0x1a5fac, imac 0x1f2c00;
	bool init(GameObject*, cocos2d::CCArray*) = win 0xa32f0, imac 0x1eef50, m1 0x1a2700, ios 0x53b8c;
	void onBreakApart(cocos2d::CCObject* sender);
	void onBrowse(cocos2d::CCObject* sender);
	void onClear(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = win 0xa7ef0, m1 0x1a46ec, imac 0x1f11d0;
	void onCopy(cocos2d::CCObject* sender);
	void onEditColor(cocos2d::CCObject* sender);
	void onHSV(cocos2d::CCObject* sender) = win 0xa6a60;
	void onLiveEdit(cocos2d::CCObject* sender);
	void onNextColorChannel(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onSelectColor(cocos2d::CCObject* sender) = win 0xa7b90, m1 0x1a4e80, imac 0x1f19a0;
	void onSelectMode(cocos2d::CCObject* sender) = win 0xa6ed0, imac 0x1f13b0, m1 0x1a4888, ios 0x55b84;
	void onSettings(cocos2d::CCObject* sender);
	void onUpdateCustomColor(cocos2d::CCObject* sender) = win 0xa7490, m1 0x1a4f48, imac 0x1f1a50;
	TodoReturn recreateLayer();
	void sliderChanged(cocos2d::CCObject*);
	void toggleVisible() = win 0xa70e0, imac 0x1f3120, m1 0x1a645c, ios 0x56ee8;
	void updateChannelLabel(int channel) = win inline, m1 0x1a5a24, imac 0x1f2580 {
		if (channel > 999) {
			m_selectedColorLabel->setString(GJSpecialColorSelect::textForColorIdx(channel));
		}
		else if (channel > 0) {
			// Technically not identical to RobTop impl which uses `CCString::createWithFormat`
			m_selectedColorLabel->setString(std::to_string(channel).c_str());
		}
		else {
			m_selectedColorLabel->setString(" ");
		}
	}
	void updateColorSprite() = win 0xa6410, m1 0x1a5954, imac 0x1f24b0;
	void updateCurrentSelection();
	void updateCustomColorLabels() = win 0xa7a80, m1 0x1a501c, imac 0x1f1b20;
	void updateHSVButtons() = win 0xa6860;
	void updateKerningLabel();
	void updateSelected(int) = win 0xa7c50, m1 0x1a5e54, imac 0x1f2a70;

	virtual void keyBackClicked() = win 0xa7fd0, m1 0x1a693c, imac 0x1f3620, ios 0x57308;
	virtual void textInputOpened(CCTextInputNode*) = win 0xa7560, m1 0x1a6590, imac 0x1f3280, ios 0x5701c;
	virtual void textInputClosed(CCTextInputNode*) = m1 0x1a66b8, imac 0x1f3390, ios 0x57178;
	virtual void textChanged(CCTextInputNode*) = win 0xa76f0, m1 0x1a66d4, imac 0x1f33d0, ios 0x57194;
	virtual void hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue) = win 0xa6c90, m1 0x1a639c, imac 0x1f3030, ios 0x56e30;
	virtual void colorSelectClosed(cocos2d::CCNode*) = win 0xa6620, m1 0x1a6160, imac 0x1f2dd0, ios 0x56e24;
	virtual void colorSetupClosed(int) = win 0xa6280, m1 0x1a5d40, imac 0x1f2960, ios 0x56af0;

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

	static CustomizeObjectSettingsPopup* create(GameObject*, cocos2d::CCArray*, CustomizeObjectLayer*);

	bool init(GameObject*, cocos2d::CCArray*, CustomizeObjectLayer*);

	virtual void onClose(cocos2d::CCObject* sender) = win 0xa8440, m1 0x1a6eb8, imac 0x1f3c00, ios 0x576e0;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = win 0xa8390, m1 0x1a6e38, imac 0x1f3b90, ios 0x57660;
}

[[link(android)]]
class CustomListView : BoomListView {
	inline CustomListView() {}
	~CustomListView() {}

	static CustomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = win 0xa8600, m1 0x1e7194, imac 0x23bc80, ios 0x101f44;

	static CustomListView* create(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
		return CustomListView::create(entries, nullptr, width, height, 0, type, 0.0f);
	}

	float getCellHeight(BoomListType) = ios 0x102794, imac 0x23ce80;
	void reloadAll() = win 0xaa280, imac 0x249a00, m1 0x1f3f7c;

	virtual void setupList(float) = win 0xa9bb0, m1 0x1f3900, imac 0x2491d0, ios 0x10cb54;
	virtual TableViewCell* getListCell(char const*) = m1 0x1e72a4, imac 0x23bdc0, win 0xa8730, ios 0x102054;
	virtual void loadCell(TableViewCell*, int) = win 0xa94f0, m1 0x1e82d8, imac 0x23d950, ios 0x1027bc;

	int m_unknown;
}

[[link(android)]]
class CustomMusicCell : CustomSongCell {
	// virtual ~CustomMusicCell();
	CustomMusicCell(char const*, float, float);

	void loadFromObject(SongInfoObject*) = win 0xb2a00, imac 0x23f630, m1 0x1e9f44;
	void updateBGColor(int);
}

[[link(android)]]
class CustomSFXCell : TableViewCell, CustomSFXDelegate {
	// virtual ~CustomSFXCell();
	CustomSFXCell(char const*, float, float);

	void loadFromObject(SFXInfoObject*) = win 0xb2740, imac 0x23fca0, m1 0x1ea61c;
	TodoReturn shouldReload();
	void updateBGColor(int) = win 0xb2870;

	virtual bool init() = win 0xb2720, m1 0x1f9ad0, imac 0x24fd10, ios 0x111b50;
	virtual void draw() = m1 0x1f9b74, imac 0x24fe10, ios 0x111bf4;
	virtual void sfxObjectSelected(SFXInfoObject*) = win 0xb2830, m1 0x1f9ae0, imac 0x24fd30, ios 0x111b60;
	virtual TodoReturn getActiveSFXID() = win 0xb2420, m1 0x1f9b3c, imac 0x24fdb0, ios 0x111bbc;
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

	static CustomSFXWidget* create(SFXInfoObject*, CustomSFXDelegate*, bool, bool, bool, bool, bool);

	TodoReturn deleteSFX();
	void downloadFailed();
	TodoReturn hideLoadingArt();
	bool init(SFXInfoObject*, CustomSFXDelegate*, bool, bool, bool, bool, bool) = imac 0x5ec1c0;
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
	TodoReturn updateProgressBar(int);
	TodoReturn updateSFXInfo() = imac 0x5ed6d0;
	TodoReturn updateSFXObject(SFXInfoObject*);
	TodoReturn verifySFXID(int);

	virtual void downloadSFXFinished(int) = win 0xbfc20, m1 0x516eb8, imac 0x5ee330, ios 0x301c5c;
	virtual void downloadSFXFailed(int, GJSongError) = win 0xbfca0, m1 0x516f58, imac 0x5ee3d0, ios 0x301cb4;
	virtual void songStateChanged() = win 0xbf570, m1 0x516e90, imac 0x5ee2c0, ios 0x301c48;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xbfda0, m1 0x517168, imac 0x5ee5b0, ios 0x301df4;
}

[[link(android)]]
class CustomSongCell : TableViewCell, CustomSongDelegate {
	// virtual ~CustomSongCell();
	CustomSongCell(char const*, float, float);

	void loadFromObject(SongInfoObject*) = win 0xb2220, imac 0x23f420, m1 0x1e9d1c;
	void onDelete(cocos2d::CCObject* sender) = imac 0x24f930;
	TodoReturn shouldReload();
	void updateBGColor(int);

	virtual bool init() = m1 0x1f9818, imac 0x24f910, ios 0x1118e4;
	virtual void draw() = m1 0x1f9998, imac 0x24fb20, ios 0x111a6c;
	virtual TodoReturn songIDChanged(int) = win 0xb23e0, m1 0x1f98dc, imac 0x24fa00, ios 0x1119a8;
	virtual TodoReturn getActiveSongID() = m1 0x1f9938, imac 0x24fa80, ios 0x111a04;
	virtual TodoReturn getSongFileName() = win 0xb2440, m1 0x1f9970, imac 0x24fae0, ios 0x111a3c;
	virtual LevelSettingsObject* getLevelSettings() = win 0x81fb0, m1 0x1f9988, imac 0x24fb00, ios 0x111a5c;

	SongInfoObject* m_songInfoObject;
	bool m_unkBool;
}

[[link(android)]]
class CustomSongDelegate {
	virtual TodoReturn songIDChanged(int);
	virtual TodoReturn getActiveSongID();
	virtual TodoReturn getSongFileName();
	virtual LevelSettingsObject* getLevelSettings();
}

[[link(android)]]
class CustomSongLayer : FLAlertLayer, TextInputDelegate, GJDropDownLayerDelegate, MusicBrowserDelegate {
	// virtual ~CustomSongLayer();
	CustomSongLayer() {
		m_songDelegate = nullptr;
		m_songIDInput = nullptr;
		m_delegate = nullptr;
	}

	static CustomSongLayer* create(CustomSongDelegate* delegate) = win inline, m1 0x1c0908, imac 0x20f620 {
		auto ret = new CustomSongLayer();
		if (ret->init(delegate)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	bool init(CustomSongDelegate*) = win 0xc0240, m1 0x1c0a24, imac 0x20f790;
	void onClose(cocos2d::CCObject* sender) = win 0xc19d0, m1 0x1c159c, imac 0x2103f0;
	void onCreateLines(cocos2d::CCObject* sender) = win 0xc1740, m1 0x1c16f0, imac 0x210550;
	void onMusicBrowser(cocos2d::CCObject* sender) = win 0xc14e0, m1 0x1c168c, imac 0x2104e0;
	void onNCSBrowser(cocos2d::CCObject* sender) = win 0xc1540, m1 0x1c1670, imac 0x2104c0;
	void onNewgroundsBrowser(cocos2d::CCObject* sender) = win 0xc1640, m1 0x1c16d4, imac 0x210530;
	void onOptions(cocos2d::CCObject* sender) = win 0xc0ec0, m1 0x1c1728, imac 0x210590;
	void onSearch(cocos2d::CCObject* sender) = win 0xc0fc0, m1 0x1c1748, imac 0x2105b0;
	void onSongBrowser(cocos2d::CCObject* sender) = win 0xc1460, m1 0x1c160c, imac 0x210460;
	void showNewgroundsMessage() = m1 0x1c18bc, imac 0x210720;

	virtual void keyBackClicked() = win 0xc1aa0, m1 0x1c20a0, imac 0x210f40, ios 0x14f9fc;
	virtual void show() = win 0xc1ab0, m1 0x1c2184, imac 0x211020, ios 0x14fa08;
	virtual void textChanged(CCTextInputNode*) = win 0xc1450, m1 0x1c1b70, imac 0x2109d0, ios 0x14f6d0;
	virtual void textInputOpened(CCTextInputNode*) = win 0xc13a0, m1 0x1c1af0, imac 0x210970, ios 0x14f698;
	virtual void textInputClosed(CCTextInputNode*) = win 0xc13a0, m1 0x1c1a70, imac 0x210910, ios 0x14f660;
	virtual void textInputShouldOffset(CCTextInputNode*, float) = win 0x79fd0, m1 0x1c1b90, imac 0x2109f0, ios 0x14f6f0;
	virtual void textInputReturn(CCTextInputNode*) = win 0x7a030, m1 0x1c1c60, imac 0x210ab0, ios 0x14f75c;
	virtual void dropDownLayerWillClose(GJDropDownLayer*) = win 0xc1830, m1 0x1c1f10, imac 0x210de0, ios 0x14f924;
	virtual void musicBrowserClosed(MusicBrowser*) = win 0xc1900, m1 0x1c1fd8, imac 0x210e90, ios 0x14f990;

	CustomSongDelegate* m_songDelegate;
	CCTextInputNode* m_songIDInput;
	CustomSongWidget* m_songWidget;
	CustomSongLayerDelegate* m_delegate;
}

[[link(android)]]
class CustomSongLayerDelegate {
	virtual void customSongLayerClosed() {}
}

[[link(android), depends(GJAssetDownloadAction)]]
class CustomSongWidget : cocos2d::CCNode, MusicDownloadDelegate, FLAlertLayerProtocol {
	// virtual ~CustomSongWidget();
	CustomSongWidget() = win inline, ios 0xfff38 {
		m_songInfoObject = nullptr;
		m_buttonMenu = nullptr;
		m_songLabel = nullptr;
		m_artistLabel = nullptr;
		m_songIDLabel = nullptr;
		m_errorLabel = nullptr;
		m_downloadBtn = nullptr;
		m_cancelDownloadBtn = nullptr;
		m_selectSongBtn = nullptr;
		m_getSongInfoBtn = nullptr;
		m_playbackBtn = nullptr;
		m_moreBtn = nullptr;
		m_deleteBtn = nullptr;
		m_infoBtn = nullptr;
		m_sliderGroove = nullptr;
		m_sliderBar = nullptr;
		m_ncsLogo = nullptr;
		m_bgSpr = nullptr;
		m_songDelegate = nullptr;
		m_showSelectSongBtn = false;
		m_showPlayMusicBtn = false;
		m_showDownloadBtn = false;
		m_isNotDownloading = false;
		m_isRobtopSong = false;
		m_isMusicLibrary = false;
		m_customSongID = 0;
		m_lengthMod = 0.f;
		m_unkPtr = nullptr;
		m_unkPtr2 = nullptr;
		m_hasLibrarySongs = false;
		m_hasSFX = false;
		m_unkBool2 = false;
		m_songs = {};
		m_sfx = {};
		m_undownloadedAssets = {};
	}

	static CustomSongWidget* create(SongInfoObject* songInfo, CustomSongDelegate* songDelegate, bool showSongSelect, bool showPlayMusic, bool showDownload, bool isRobtopSong, bool unkBool, bool isMusicLibrary, int unk) = win 0xc56f0, imac 0x625a90, m1 0x547684, ios 0xfb090;

	void deleteSong() = win 0xc7360, imac 0x62a2b0, m1 0x54b7d4;
	void downloadAssetFailed(int, GJAssetType, GJSongError) = win 0xca6a0;
	void downloadAssetFinished(int, GJAssetType) = win 0xca5e0, imac 0x62c250, m1 0x54d454;
	void downloadFailed() = imac 0x62c100, m1 0x54d2ec;
	void getSongInfoIfUnloaded() = win 0xc7cf0, imac 0x62a630, m1 0x54bb14;
	bool init(SongInfoObject* songInfo, CustomSongDelegate* songDelegate, bool showSongSelect, bool showPlayMusic, bool showDownload, bool isRobtopSong, bool unkBool, bool isMusicLibrary, int unk) = win 0xc5900, imac 0x625c40, m1 0x5477dc, ios 0xfb16c;
	void onCancelDownload(cocos2d::CCObject* sender) = win 0xc7db0, imac 0x6270a0, m1 0x548acc;
	void onDelete(cocos2d::CCObject* sender) = win 0xc7240, imac 0x6270e0, m1 0x548b08;
	void onDownload(cocos2d::CCObject* sender) = win 0xc7ed0, imac 0x626e10, m1 0x548874;
	void onGetSongInfo(cocos2d::CCObject* sender) = win 0xc7e40, imac 0x627220, m1 0x548c44;
	void onInfo(cocos2d::CCObject* sender) = win 0xc6f50, imac 0x628350, m1 0x549aec;
	void onMore(cocos2d::CCObject* sender) = win 0xc7560, imac 0x627580, m1 0x548fb0;
	void onPlayback(cocos2d::CCObject* sender) = win 0xc81d0, imac 0x6272b0, m1 0x548cd8;
	void onSelect(cocos2d::CCObject* sender) = win 0xc8170, imac 0x6271c0, m1 0x548be8;
	void processNextMultiAsset() = win 0xca440, imac 0x62c780, m1 0x54d898;
	void showError(bool) = win 0xca910, imac 0x62a3f0, m1 0x54b908;
	void startDownload() = win 0xc80b0;
	TodoReturn startMonitorDownload();
	void startMultiAssetDownload() = win 0xca2a0, imac 0x62a780, m1 0x54bc74;
	TodoReturn toggleUpdateButton(bool);
	void updateDownloadProgress(float) = win 0xc86a0, imac 0x62ac40, m1 0x54c044;
	void updateError(GJSongError) = win 0xca840, imac 0x62bfd0, m1 0x54d1b4;
	void updateLengthMod(float lengthMod) = win inline, imac 0x62adb0, m1 0x54c1a4 {
		this->m_lengthMod = lengthMod;
		this->updateSongInfo();
	}
	void updateMultiAssetInfo(bool) = win 0xc9960, imac 0x62b6e0, m1 0x54c98c;
	void updatePlaybackBtn() = win 0xc85b0, imac 0x62a0c0, m1 0x54b5b8;
	void updateProgressBar(int) = win 0xc8750;
	void updateSongInfo() = win 0xc8800, imac 0x628f30, m1 0x54a50c;
	void updateSongObject(SongInfoObject*) = imac 0x628ea0;
	void updateWithMultiAssets(gd::string, gd::string, int) = win 0xc9610, imac 0x62add0, m1 0x54c1ac;
	TodoReturn verifySongID(int);
	void positionInfoObjects() = win 0xc6ac0, imac 0x628970, m1 0x549fac;

	virtual void loadSongInfoFinished(SongInfoObject*) = win 0xc9f40, m1 0x54cf6c, imac 0x62bd50, ios 0xff740;
	virtual void loadSongInfoFailed(int, GJSongError) = win 0xca090, m1 0x54d118, imac 0x62bf40, ios 0xff80c;
	virtual void downloadSongFinished(int) = win 0xca120, m1 0x54d38c, imac 0x62c190, ios 0xff98c;
	virtual void downloadSongFailed(int, GJSongError) = win 0xca1e0, m1 0x54d64c, imac 0x62c470, ios 0xffb50;
	virtual void downloadSFXFinished(int) = win 0xca260, m1 0x54d798, imac 0x62c600, ios 0xffc3c;
	virtual void downloadSFXFailed(int, GJSongError) = win 0xca280, m1 0x54d7ac, imac 0x62c630, ios 0xffc50;
	virtual void musicActionFinished(GJMusicAction) = win 0xca7c0, m1 0x54da5c, imac 0x62c930, ios 0xffe20;
	virtual void musicActionFailed(GJMusicAction) = win 0xca7f0, m1 0x54da9c, imac 0x62c990, ios 0xffe60;
	virtual void songStateChanged() = win 0xc87d0, m1 0x54c158, imac 0x62ad60, ios 0xfed30;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xcab60, m1 0x54db38, imac 0x62ca30, ios 0xffeb4;

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
	CCMenuItemSpriteExtra* m_infoBtn;
	cocos2d::CCSprite* m_sliderGroove;
	cocos2d::CCSprite* m_sliderBar;
	cocos2d::CCSprite* m_ncsLogo;
	cocos2d::extension::CCScale9Sprite* m_bgSpr;
	CustomSongDelegate* m_songDelegate;
	bool m_showSelectSongBtn;
	bool m_showPlayMusicBtn;
	bool m_showDownloadBtn;
	bool m_isNotDownloading;
	bool m_isRobtopSong;
	bool m_isMusicLibrary;
	int m_customSongID;
	float m_lengthMod;
	void* m_unkPtr;
	void* m_unkPtr2;
	bool m_hasLibrarySongs;
	bool m_hasSFX;
	bool m_unkBool2;
	gd::map<int, bool> m_songs;
	gd::map<int, bool> m_sfx;
	gd::vector<CCObject*> m_undownloadedAssets;
}

[[link(android)]]
class DailyLevelNode : cocos2d::CCNode, FLAlertLayerProtocol {
	// virtual ~DailyLevelNode();

	static DailyLevelNode* create(GJGameLevel*, DailyLevelPage*, bool) = imac 0x22d8f0;

	bool init(GJGameLevel*, DailyLevelPage*, bool) = win 0xcea30, imac 0x22e0c0, m1 0x1dba2c, ios 0x1c59c0;
	void onClaimReward(cocos2d::CCObject* sender) = win 0xcf660, imac 0x22eb10, m1 0x1dc504;
	void onSkipLevel(cocos2d::CCObject* sender) = win 0xcf780;
	void showSkipButton() = win 0xcf600;
	void updateTimeLabel(gd::string);

	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xcf9a0, m1 0x1dc7fc, imac 0x22edd0, ios 0x1c6680;

	GJGameLevel* m_level;
	DailyLevelPage* m_page;
	cocos2d::CCLabelBMFont* m_timeLabel;
	cocos2d::CCPoint m_unkPoint;
	CCMenuItemSpriteExtra* m_skipButton;
	bool m_unkBool;
	bool m_needsDownloading;
}

[[link(android)]]
class DailyLevelPage : FLAlertLayer, FLAlertLayerProtocol, GJDailyLevelDelegate, LevelDownloadDelegate {
	// virtual ~DailyLevelPage();
	//DailyLevelPage() = ios 0x1c66c0;

	static DailyLevelPage* create(GJTimedLevelType) = win 0xcb380, imac 0x22ba40, m1 0x1d91d8, ios 0x1c3b7c;

	void claimLevelReward(DailyLevelNode*, GJGameLevel*, cocos2d::CCPoint) = win 0xce4c0, m1 0x1db618, imac 0x22dca0;
	void createDailyNode(GJGameLevel*, bool, float, bool) = win 0xcd130, m1 0x1da8ac, imac 0x22cee0;
	void createNodeIfLoaded();
	void downloadAndCreateNode();
	void exitDailyNode(DailyLevelNode*, float) = m1 0x1dace0, imac 0x22d350;
	int getDailyTime();
	gd::string getDailyTimeString(int timeLeft) = win 0xcd4f0, m1 0x1da2b0, imac 0x22c8a0;
	bool init(GJTimedLevelType) = win 0xcb4c0, imac 0x22bbd0, m1 0x1d930c, ios 0x1c3bf0;
	void onClose(cocos2d::CCObject* sender) = win 0x85150, m1 0x1da208, imac 0x22c800;
	void onTheSafe(cocos2d::CCObject* sender) = win 0xce960, m1 0x1da254, imac 0x22c840;
	void refreshDailyPage();
	void skipDailyLevel(DailyLevelNode*, GJGameLevel*);
	void tryGetDailyStatus() = win 0xccf00;
	callback void updateTimers(float) = win 0xce170, imac 0x22cc30, m1 0x1da604;

	virtual void registerWithTouchDispatcher() = m1 0x1db5e0, imac 0x22dc60, ios 0x1c5674;
	virtual void keyBackClicked() = m1 0x1db544, imac 0x22dbd0, ios 0x1c5668;
	virtual void show() = win 0x84fb0, m1 0x1db3b8, imac 0x22da30, ios 0x1c54ec;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x1c5660 {}
	virtual void dailyStatusFinished(GJTimedLevelType) = win 0xcc8d0, m1 0x1daa90, imac 0x22d0d0, ios 0x1c4d84;
	virtual void dailyStatusFailed(GJTimedLevelType, GJErrorCode) = win 0xccb90, m1 0x1dae7c, imac 0x22d510, ios 0x1c50c8;
	virtual void levelDownloadFinished(GJGameLevel*) = win 0xcce80, m1 0x1db0b8, imac 0x22d760, ios 0x1c529c;
	virtual void levelDownloadFailed(int) = win 0xccee0, m1 0x1db198, imac 0x22d820, ios 0x1c5314;

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

	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x16eaac, imac 0x1b0340, ios 0x38c038;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x16ec04, imac 0x1b04b0, ios 0x38c17c;

	float m_dashSpeed;
	float m_endBoost;
	float m_maxDuration;
	bool m_allowCollide;
	bool m_stopSlide;
}

[[link(android)]]
class DemonFilterDelegate {
	virtual void demonFilterSelectClosed(int) {}
}

[[link(android)]]
class DemonFilterSelectLayer : FLAlertLayer {
	// virtual ~DemonFilterSelectLayer();
	DemonFilterSelectLayer() {}

	static DemonFilterSelectLayer* create() = win inline, m1 0x5584ec, imac 0x638730 {
		auto ret = new DemonFilterSelectLayer();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	void onClose(cocos2d::CCObject* sender) = win 0x2f79c0, m1 0x55c2f4, imac 0x63ca00;
	void selectRating(cocos2d::CCObject* sender) = win 0x2f7900, m1 0x55c22c, imac 0x63c940;

	virtual bool init() = win 0x2f72c0, m1 0x55bd74, imac 0x63c460, ios 0x5d628;
	virtual void keyBackClicked() = win 0x2f7a10, m1 0x55c354, imac 0x63ca50, ios 0x5db7c;

	cocos2d::CCArray* m_demons;
	void* m_unkPtr;
	int m_currentDemon;
	DemonFilterDelegate* m_delegate;
}

[[link(android)]]
class DemonInfoPopup : FLAlertLayer {
	// ~DemonInfoPopup();

	static DemonInfoPopup* create(int easyClassic, int mediumClassic, int hardClassic, int insaneClassic, int extremeClassic, int easyPlatformer, int mediumPlatformer, int hardPlatformer, int insanePlatformer, int extremePlatformer, int weekly, int gauntlet) = win 0x3a3280, m1 0x6d2c7c, imac 0x7cde90, ios 0x1a87a0;
	static DemonInfoPopup* createFromString(gd::string) = win 0x3a2eb0, m1 0x6d0a5c, imac 0x7cbb30, ios 0x1a721c;

	bool init(int easyClassic, int mediumClassic, int hardClassic, int insaneClassic, int extremeClassic, int easyPlatformer, int mediumPlatformer, int hardPlatformer, int insanePlatformer, int extremePlatformer, int weekly, int gauntlet) = win 0x3a33e0, m1 0x6d2dd8, imac 0x7ce020, ios 0x1a88c0;
	void onClose(cocos2d::CCObject* sender) = m1 0x6d371c, imac 0x7ce980;

	virtual void keyBackClicked() = m1 0x6d3758, imac 0x7ce9b0, ios 0x1a91b4;
}

[[link(android)]]
class DialogDelegate {
	virtual void dialogClosed(DialogLayer*) {}
}

[[link(android)]]
class DialogLayer : cocos2d::CCLayerColor, TextAreaDelegate {
	// virtual ~DialogLayer();

	static DialogLayer* create(DialogObject* object, int background) = win inline, m1 0x34d8a4, imac 0x3cac60, ios 0x8a280 {
		return DialogLayer::createDialogLayer(object, nullptr, background);
	}

	void addToMainScene() = win 0xd07e0, m1 0x34e734, imac 0x3cbbb0;
	void animateIn(DialogAnimationType) = m1 0x34eb38, imac 0x3cbfd0, ios 0x8aff8;
	void animateInDialog() = m1 0x34ed54, imac 0x3cc210; // win inline {
	// 	this->animateIn(m_animationType);
	// }
	void animateInRandomSide() = win 0xd09b0, m1 0x34ead8, imac 0x3cbf80;
	static DialogLayer* createDialogLayer(DialogObject* object, cocos2d::CCArray* objects, int background) = win 0xcfcd0, ios 0x8a28c, m1 0x34d8b0, imac 0x3cac70;
	static DialogLayer* createWithObjects(cocos2d::CCArray* objects, int background) = win inline, ios 0x8a318, m1 0x34d9c0, imac 0x3cadb0 {
		return DialogLayer::createDialogLayer(nullptr, objects, background);
	}
	void displayDialogObject(DialogObject*) = win 0xd02e0, m1 0x34df40, imac 0x3cb360;
	void displayNextObject() = win 0xd0280, m1 0x34dea0, imac 0x3cb2b0;
	void finishCurrentAnimation() = m1 0x34e60c, imac 0x3cba60;
	void handleDialogTap() = win 0xd06b0, m1 0x34e4b0, imac 0x3cb920;
	bool init(DialogObject*, cocos2d::CCArray*, int) = win 0xcfe20, m1 0x34d9d0, imac 0x3cadd0;
	void onClose() = win 0xd0850, m1 0x34e6a4, imac 0x3cbb20;
	void updateChatPlacement(DialogChatPlacement placement) = win inline, m1 0x34e3f4, imac 0x3cb850, ios 0x8ab34 {
		auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    		switch (placement) {
        		case DialogChatPlacement::Center:
            			m_mainLayer->setPosition({winSize.width * 0.5F, winSize.height * 0.5F});
            			break;
        		case DialogChatPlacement::Top:
            			m_mainLayer->setPosition({winSize.width * 0.5F, (winSize.height - 50.F) - 20.F});
            			break;
        		case DialogChatPlacement::Bottom:
            			m_mainLayer->setPosition({winSize.width * 0.5F, 70.F});
            			break;
    		}
	}
	void updateNavButtonFrame() = win 0xd0630, m1 0x34e394, imac 0x3cb7e0;

	virtual void onEnter() = imac 0x3cbe80, ios 0x8af20;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0xd08d0, m1 0x34e8b0, imac 0x3cbd30, ios 0x8ae04;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x8ae9c {}
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0xd0900, m1 0x34e928, imac 0x3cbd90, ios 0x8ae64;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0xd0920, m1 0x34e968, imac 0x3cbdf0, ios 0x8aea4;
	virtual void registerWithTouchDispatcher() = win 0x51ee0, m1 0x34e9ac, imac 0x3cbe40, ios 0x8aee8;
	virtual void keyBackClicked() = win 0xd0840, m1 0x34e78c, imac 0x3cbc00, ios 0x8adf8;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0xd0bf0, m1 0x34ed5c, imac 0x3cc220, ios 0x8b200;
	virtual TodoReturn fadeInTextFinished(TextArea*) = win 0xd0940, m1 0x34e9e8, imac 0x3cbe90, ios 0x8af24;

	float m_animateTime;
	cocos2d::CCLayer* m_mainLayer;
	cocos2d::CCLabelBMFont* m_characterLabel;
	TextArea* m_textArea;
	cocos2d::CCSprite* m_characterSprite;
	cocos2d::CCArray* m_dialogObjects;
	int m_touchID;
	cocos2d::CCSprite* m_navButtonSprite;
	bool m_animating;
	bool m_skippable;
	DialogDelegate* m_delegate;
	bool m_handleTap;
	DialogAnimationType m_animationType;
	bool m_noRemove;
}

[[link(android)]]
class DialogObject : cocos2d::CCObject {
	// virtual ~DialogObject();

	static DialogObject* create(gd::string character, gd::string text, int characterFrame, float textScale, bool skippable, cocos2d::ccColor3B color) = win 0xcfb10, m1 0x34d384, imac 0x3ca660, ios 0x8a034;

	bool init(gd::string character, gd::string text, int characterFrame, float textScale, bool skippable, cocos2d::ccColor3B color) = win inline, m1 0x34d5ec, imac 0x3ca8a0 {
		m_character = character;
		m_text = text;
		m_characterFrame = characterFrame;
		m_textScale = textScale;
		m_color = color;
		m_skippable = skippable;
		return true;
	}

	gd::string m_text;
	gd::string m_character;
	int m_characterFrame;
	cocos2d::ccColor3B m_color;
	float m_textScale;
	bool m_skippable;
}

[[link(android)]]
class DownloadMessageDelegate {
	virtual TodoReturn downloadMessageFinished(GJUserMessage*);
	virtual TodoReturn downloadMessageFailed(int);
}

[[link(android)]]
class DrawGridLayer : cocos2d::CCLayer {
	// virtual ~DrawGridLayer();

	static DrawGridLayer* create(cocos2d::CCNode*, LevelEditorLayer*) = win 0x2cfe50;

	void addAudioLineObject(AudioLineGuideGameObject*);
	TodoReturn addToEffects(EffectGameObject*);
	TodoReturn addToGuides(GameObject*);
	TodoReturn addToSpeedObjects(EffectGameObject*);
	TodoReturn getPortalMinMax(GameObject*);
	bool init(cocos2d::CCNode*, LevelEditorLayer*);
	void loadTimeMarkers(gd::string) = win 0x2d0030, imac 0xe32b0;
	float posForTime(float);
	void postUpdate();
	TodoReturn removeAudioLineObject(AudioLineGuideGameObject*);
	TodoReturn removeFromEffects(EffectGameObject*);
	TodoReturn removeFromGuides(GameObject*);
	TodoReturn removeFromSpeedObjects(EffectGameObject*) = ios 0x36CE70;
	TodoReturn sortSpeedObjects();
	float timeForPos(cocos2d::CCPoint, int, int, bool, bool, bool, int);
	TodoReturn updateMusicGuideTime(float);
	void updateTimeMarkers();

	virtual void update(float) = win 0x2d0350, m1 0xdbf54, imac 0xf9a00, ios 0x3747f0;
	virtual void draw() = win 0x2d0550, m1 0xdc064, imac 0xf9b90, ios 0x374900;

	PAD = win 0x70, android32 0x40, android64 0x68, mac 0x58;
	LevelEditorLayer* m_editorLayer;
	PAD = win 0x6c, android32 0x3c, android64 0x54, mac 0x64;
	float m_gridSize;
}

[[link(android)]]
class DungeonBarsSprite : cocos2d::CCNode {
	// virtual ~DungeonBarsSprite();
	DungeonBarsSprite() {
		m_barsSprite = nullptr;
	}

	static DungeonBarsSprite* create() = win inline {
		auto ret = new DungeonBarsSprite();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	void animateOutBars() = win inline {
		auto a1 = cocos2d::CCMoveBy::create(0.08, { -1.5f, 0.0f });
		auto a2 = cocos2d::CCMoveBy::create(0.08, { 1.5f, 0.0f });
		auto a3 = cocos2d::CCMoveBy::create(0.08, { -1.5f, 0.0f });
		auto a4 = cocos2d::CCMoveBy::create(0.08, { 1.5f, 0.0f });
		auto a5 = cocos2d::CCMoveBy::create(0.08, { -1.5f, 0.0f });
		auto a6 = cocos2d::CCMoveBy::create(0.08, { 1.5f, 0.0f });
		auto a7 = cocos2d::CCMoveBy::create(2.5, { 0.0f, -130.0f });
		
		auto seq = cocos2d::CCSequence::create(
			a1, a2, a3, a4, a5, a6,
			cocos2d::CCEaseElasticIn::create(a7, 1.6f),
			nullptr
		);
		this->m_barsSprite->runAction(seq);
	}

	virtual bool init() = win 0x3c9cd0, m1 0x414e48, imac 0x4b2440, ios 0x32257c;
	virtual void visit() = win 0x3c9d50, m1 0x414ec8, imac 0x4b24c0, ios 0x3225fc;

	cocos2d::CCSprite* m_barsSprite;
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

	static EditButtonBar* create(cocos2d::CCArray* objects, cocos2d::CCPoint size, int unk, bool unkBool, int columns, int rows) = win 0xd0cb0, imac 0x5eb350, m1 0x5141a0;

	int getPage();
	void goToPage(int); // inlined on win
	bool init(cocos2d::CCArray* objects, cocos2d::CCPoint size, int unk, bool unkBool, int columns, int rows) = imac 0x5eb440, m1 0x514294;
	void loadFromItems(cocos2d::CCArray*, int, int, bool) = win 0xd0e10, imac 0x5eb4f0, m1 0x514340;
	void onLeft(cocos2d::CCObject* sender) = win 0xd1800;
	void onRight(cocos2d::CCObject* sender) = win 0xd1790;
	void reloadItems(int rowCount, int columnCount) = win inline, m1 0x514870, imac 0x5ebab0 {
		if (m_buttonArray) this->loadFromItems(m_buttonArray, rowCount, columnCount, false);
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

	bool init(EffectGameObject*, cocos2d::CCArray*, bool);
}

[[link(android)]]
class EditLevelLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, SetIDPopupDelegate {
	EditLevelLayer() {}
	virtual ~EditLevelLayer() = win 0xd1980, imac 0x1f42c0, m1 0x1a7544;

	static EditLevelLayer* create(GJGameLevel* level) = win inline, imac 0x1f45e0, m1 0x1a7680, ios 0xea554 {
		auto ret = new EditLevelLayer();
		if (ret && ret->init(level)) {
			ret->autorelease();
			return ret;
		}
		CC_SAFE_DELETE(ret);
		return nullptr;
	}

	void closeTextInputs() = win 0xd3cd0, imac 0x1f7980, m1 0x1aa858;
	void confirmClone(cocos2d::CCObject*) = win 0xd5ad0, imac 0x1f7150, m1 0x1aa014;
	void confirmDelete(cocos2d::CCObject*) = win 0xd5330, imac 0x1f6f90, m1 0x1a9e54;
	void confirmMoveToTop(cocos2d::CCObject*) = win 0xd5bf0, imac 0x1f7220, m1 0x1aa0ec;
	bool init(GJGameLevel*) = win 0xd1c80, imac 0x1f4710, m1 0x1a7764, ios 0xea62c;
	void onBack(cocos2d::CCObject* sender) = win 0xd5e40, imac 0x1f73f0, m1 0x1aa2b8;
	void onClone() = imac 0x1f8a70, m1 0x1ab8d8;
	void onDelete() = imac 0x1f87c0, m1 0x1ab60c;
	void onEdit(cocos2d::CCObject* sender) = win 0xd4af0, imac 0x1f5f30, m1 0x1a8e3c;
	void onGuidelines(cocos2d::CCObject* sender) = win 0xd3050, imac 0x1f78a0, m1 0x1aa77c;
	void onHelp(cocos2d::CCObject* sender) = win 0xd59b0, imac 0x1f7080, m1 0x1a9f3c;
	void onLevelInfo(cocos2d::CCObject* sender) = win 0xd3270, imac 0x1f75c0, m1 0x1aa488;
	void onLevelLeaderboard(cocos2d::CCObject* sender) = win 0xd31c0, imac 0x1f73a0, m1 0x1aa274;
	void onLevelOptions(cocos2d::CCObject* sender) = win 0xd3240, imac 0x1f7960, m1 0x1aa838;
	void onMoveToTop() = imac 0x1f8b60, m1 0x1ab9b8;
	void onPlay(cocos2d::CCObject* sender) = win 0xd4690, imac 0x1f6080, m1 0x1a8f80;
	void onSetFolder(cocos2d::CCObject* sender) = win 0xd5d20, imac 0x1f7300, m1 0x1aa1cc;
	void onShare(cocos2d::CCObject* sender) = win 0xd4c80, imac 0x1f61c0, m1 0x1a90d4, ios 0xebd04;
	void onTest(cocos2d::CCObject* sender) = imac 0x1f8720, m1 0x1ab57c;
	void onUpdateDescription(cocos2d::CCObject* sender) = win 0xd49c0, imac 0x1f6eb0, m1 0x1a9d74;
	void playStep2() = win 0xd4850, imac 0x1f8610, m1 0x1ab46c;
	void playStep3() = win 0xd4930, imac 0x1f86d0, m1 0x1ab52c;
	static cocos2d::CCScene* scene(GJGameLevel*) = win 0xd1af0, imac 0x1f4480, m1 0x1a757c;
	void setupLevelInfo() = win 0xd3490, imac 0x1f66e0, m1 0x1a9554;
	void updateDescText(char const*) = imac 0x1f5f20, m1 0x1a8e38;
	void verifyLevelName() = win 0xd5ff0, imac 0x1f80c0, m1 0x1aaf90;

	virtual void keyBackClicked() = win 0xd62d0, m1 0x1abb90, imac 0x1f8d50, ios 0xedd54;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0xd62e0, m1 0x1abb9c, imac 0x1f8d80, ios 0xedd60;
	virtual void setIDPopupClosed(SetIDPopup*, int) = win 0xd5db0, m1 0x1aba88, imac 0x1f8c50, ios 0xedccc;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xd5470, m1 0x1ab64c, imac 0x1f8800, ios 0xed954;
	virtual void textInputOpened(CCTextInputNode*) = win 0xd4330, m1 0x1aacdc, imac 0x1f7e60, ios 0xed350;
	virtual void textInputClosed(CCTextInputNode*) = win 0xd3d30, m1 0x1aa8b4, imac 0x1f79e0, ios 0xed0c0;
	virtual void textChanged(CCTextInputNode*) = win 0xd44a0, m1 0x1aadec, imac 0x1f7f40, ios 0xed460;
	virtual void uploadActionFinished(int, int) = win 0xd6350, m1 0x1abc20, imac 0x1f8e20, ios 0xeddd0;
	virtual void uploadActionFailed(int, int) = win 0xd6490, m1 0x1abdc8, imac 0x1f8fc0, ios 0xedec4;
	virtual void onClosePopup(UploadActionPopup*) = win 0xd6310, m1 0x1abbd0, imac 0x1f8dd0, ios 0xedd80;

	cocos2d::CCMenu* m_buttonMenu;
	GJGameLevel* m_level;
	cocos2d::CCArray* m_textInputs;
	cocos2d::CCLabelBMFont* m_folderLabel;
	bool m_exiting;
	GJLevelType m_levelType;
	gd::string m_levelName;
	UploadActionPopup* m_descriptionPopup;
}

[[link(android)]]
class EditorOptionsLayer : GJOptionsLayer {
	// virtual ~EditorOptionsLayer();

	static EditorOptionsLayer* create() = m1 0x23c3b4, imac 0x299c00;

	void onButtonRows(cocos2d::CCObject* sender) = win 0x27f4f0, m1 0x23ced0, imac 0x29a7d0;
	void onButtonsPerRow(cocos2d::CCObject* sender) = win 0x27f460, m1 0x23ce48, imac 0x29a750;

	virtual bool init() = win 0x27eb50, m1 0x23c554, imac 0x299e60, ios 0x2e562c;
	virtual void onClose(cocos2d::CCObject* sender) = win 0x27f580, m1 0x23cf50, imac 0x29a840, ios 0x2e6024;
	virtual void setupOptions() = win 0x27eb80, m1 0x23c570, imac 0x299e90, ios 0x2e5648;

	int m_buttonsPerRow;
	int m_buttonRows;
	cocos2d::CCLabelBMFont* m_buttonsPerRowLabel;
	cocos2d::CCLabelBMFont* m_buttonRowsLabel;
}

[[link(android)]]
class EditorPauseLayer : CCBlockLayer, FLAlertLayerProtocol {
	// virtual ~EditorPauseLayer();
	EditorPauseLayer() {
		m_saved = false;
		m_guidelinesOffButton = nullptr;
		m_guidelinesOnButton = nullptr;
		m_editorLayer = nullptr;
	}

	static EditorPauseLayer* create(LevelEditorLayer*) = win inline, imac 0x28ce10, m1 0x230728, ios 0x3a4eac {
		auto ret = new EditorPauseLayer();
		if (ret && ret->init(LevelEditorLayer::get())) {
			ret->autorelease();
			return ret;
		}
		CC_SAFE_DELETE(ret);
		return nullptr;
	}

	TodoReturn doResetUnused() = win 0x2c7800;
	bool init(LevelEditorLayer*) = win 0xd66f0, imac 0x28cf10, m1 0x230800, ios 0x3a4f78;
	void onAlignX(cocos2d::CCObject* sender) = win 0xd95e0;
	void onAlignY(cocos2d::CCObject* sender) = win 0xd9610;
	void onBuildHelper(cocos2d::CCObject* sender) = win 0xd93b0;
	void onCopyWColor(cocos2d::CCObject* sender);
	void onCreateExtras(cocos2d::CCObject* sender) = win 0xD9360;
	void onCreateLoop(cocos2d::CCObject* sender);
	void onCreateTemplate(cocos2d::CCObject* sender);
	void onExitEditor(cocos2d::CCObject* sender) = win 0xda950, m1 0x23417c, imac 0x290c90; // inlined on macos (both m1 and imac)
	void onExitNoSave(cocos2d::CCObject* sender) = win 0xdaa20, m1 0x232ed4, imac 0x28f810;
	void onHelp(cocos2d::CCObject* sender);
	void onKeybindings(cocos2d::CCObject* sender);
	void onNewGroupX(cocos2d::CCObject* sender);
	void onNewGroupY(cocos2d::CCObject* sender);
	void onOptions(cocos2d::CCObject* sender);
	void onPasteWColor(cocos2d::CCObject* sender);
	void onReGroup(cocos2d::CCObject* sender);
	void onResetUnusedColors(cocos2d::CCObject* sender) = imac 0x28fb20;
	void onResume(cocos2d::CCObject* sender) = win 0xd9d40, imac 0x28f5e0, m1 0x232c7c;
	void onSave(cocos2d::CCObject* sender) = win 0xda7e0, imac 0x28f730;
	void onSaveAndExit(cocos2d::CCObject* sender) = win 0xda910, imac 0x28f6c0, m1 0x232d78;
	void onSaveAndPlay(cocos2d::CCObject* sender) = win 0xda5a0, imac 0x28f650, m1 0x232ce8;
	void onSelectAll(cocos2d::CCObject* sender) = win 0xd9470;
	void onSelectAllLeft(cocos2d::CCObject* sender) = win 0xd95a0;
	void onSelectAllRight(cocos2d::CCObject* sender) = win 0xd95c0;
	void onSong(cocos2d::CCObject* sender);
	void onUnlockAllLayers(cocos2d::CCObject* sender);
	TodoReturn playStep2() = win 0xda620;
	TodoReturn playStep3() = win 0xda740;
	void saveLevel() = win 0xd9f10, m1 0x233bac, imac 0x290670;
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
	void togglePreviewAnim(cocos2d::CCObject*) = win 0xd9810, m1 0x233518, imac 0x28ff60;
	TodoReturn togglePreviewParticles(cocos2d::CCObject*);
	TodoReturn togglePreviewShaders(cocos2d::CCObject*);
	TodoReturn toggleRecordOrder(cocos2d::CCObject*);
	TodoReturn toggleSelectFilter(cocos2d::CCObject*);
	void toggleShowObjectInfo(cocos2d::CCObject* sender) = win 0xd9b30, imac 0x28fe80, m1 0x233450;
	TodoReturn uncheckAllPortals(cocos2d::CCObject*) = imac 0x28fa50;
	TodoReturn updateSongButton();

	virtual void keyBackClicked() = win 0xdac80, m1 0x234290, imac 0x290db0, ios 0x3a7bcc;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0xdac90, m1 0x234370, imac 0x290ea0, ios 0x3a7bd8;
	virtual void customSetup() = win 0xd6d50, m1 0x23116c, imac 0x28d840, ios 0x3a5500;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xdab60, m1 0x2341b4, imac 0x290cd0, ios 0x3a7b08;

	bool m_saved;
    CCMenuItemSpriteExtra* m_guidelinesOffButton;
    CCMenuItemSpriteExtra* m_guidelinesOnButton;
    LevelEditorLayer* m_editorLayer;
	PAD = win 0x20;

}

[[link(android), depends(GJTransformState)]]
class EditorUI : cocos2d::CCLayer, FLAlertLayerProtocol, ColorSelectDelegate, GJRotationControlDelegate, GJScaleControlDelegate, GJTransformControlDelegate, MusicDownloadDelegate, SetIDPopupDelegate {
	// virtual ~EditorUI();
	EditorUI() = win 0x0db070, ios 0x404c78;

	static EditorUI* create(LevelEditorLayer*) = imac 0x9460, m1 0xb710, ios 0x3cd9ec;
	static EditorUI* get() {
		auto lel = LevelEditorLayer::get();
		if (!lel) return nullptr;
		return lel->m_editorUI;
	}

	void activateRotationControl(cocos2d::CCObject*) = win 0x11efb0;
	void activateScaleControl(cocos2d::CCObject*) = win 0x110e10;
	void activateTransformControl(cocos2d::CCObject*) = win 0x111460;
	TodoReturn addObjectsToSmartTemplate(GJSmartTemplate*, cocos2d::CCArray*);
	TodoReturn addSnapPosition(cocos2d::CCPoint);
	TodoReturn alignObjects(cocos2d::CCArray*, bool) = imac 0x4e220;
	void applyOffset(GameObject*) = win 0x11e8d0;
	TodoReturn applySpecialOffset(cocos2d::CCPoint, GameObject*, cocos2d::CCPoint);
	TodoReturn arrayContainsClass(cocos2d::CCArray*, int);
	TodoReturn assignNewGroups(bool) = imac 0x45d40;
	TodoReturn canAllowMultiActivate(GameObject*, cocos2d::CCArray*);
	TodoReturn canSelectObject(GameObject*);
	TodoReturn centerCameraOnObject(GameObject*);
	TodoReturn changeSelectedObjects(cocos2d::CCArray*, bool);
	TodoReturn checkDiffAfterTransformAnchor(cocos2d::CCPoint, cocos2d::CCArray*) = win 0x111c70;
	TodoReturn checkLiveColorSelect();
	void clickOnPosition(cocos2d::CCPoint) = win 0xdebe0, m1 0x2e3e0, imac 0x2dda0;
	TodoReturn closeLiveColorSelect();
	TodoReturn closeLiveHSVSelect();
	void colorSelectClosed(cocos2d::ccColor3B);
	void constrainGameLayerPosition();
	void constrainGameLayerPosition(float, float) = win 0x11e960, imac 0x2ae30, m1 0x2bc50;
	TodoReturn convertKeyBasedOnNeighbors(int, int, cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn convertToBaseKey(int);
	gd::string copyObjects(cocos2d::CCArray* objects, bool copyColors, bool sort) = win 0x10f0f0, imac 0x31080, m1 0x3143c, ios 0x3f1078;
	TodoReturn copyObjectsDetailed(cocos2d::CCArray*);
	cocos2d::CCArray* createCustomItems() = win 0xe0c80, imac 0x31990, m1 0x31cb4;
	TodoReturn createEdgeForObject(GameObject*, int);
	TodoReturn createExtraObject(int, cocos2d::CCPoint, GameObject*, cocos2d::CCArray*, int, int);
	TodoReturn createExtras(cocos2d::CCArray*);
	TodoReturn createExtrasForObject(int, GameObject*, cocos2d::CCArray*);
	TodoReturn createGlow();
	void createLoop();
	void createMoveMenu() = win 0x116ee0, m1 0x40df0, imac 0x468a0;
	TodoReturn createNewKeyframeAnim();
	TodoReturn createObject(int, cocos2d::CCPoint) = win 0x10c3e0;
	TodoReturn createOutlines(cocos2d::CCArray*);
	TodoReturn createPrefab(GJSmartTemplate*, gd::string, int);
	TodoReturn createRockBases(cocos2d::CCArray*) = win 0x12B590, imac 0x620050;
	TodoReturn createRockEdges(cocos2d::CCArray*);
	TodoReturn createSmartObjectsFromTemplate(GJSmartTemplate*, cocos2d::CCArray*, bool, bool, bool, bool);
	TodoReturn createSmartObjectsFromType(int, cocos2d::CCArray*, bool, bool);
	UndoObject* createUndoObject(UndoCommand, bool) = win 0x10d3d0, imac 0x3d350;
	TodoReturn createUndoSelectObject(bool) = win 0x10d6f0;
	TodoReturn deactivateRotationControl() = ios 0x3CFABC;
	TodoReturn deactivateScaleControl() = win 0x111010, ios 0x3CFB8C;
	TodoReturn deactivateTransformControl() = win 0x111660, ios 0x3CFCA0;
	void deleteObject(GameObject*, bool) = imac 0x32d80;
	TodoReturn deleteSmartBlocksFromObjects(cocos2d::CCArray*);
	TodoReturn deleteTypeFromObjects(int, cocos2d::CCArray*);
	void deselectAll() = win 0x10d920, imac 0x33050, m1 0x33340;
	void deselectObject() = imac 0x33260;
	void deselectObject(GameObject*) = win 0x10d800, imac 0x32fb0;
	void deselectObjectsColor();
	TodoReturn deselectTargetPortals() = imac 0x32c20;
	TodoReturn disableButton(CreateMenuItem*);
	void doCopyObjects(bool) = win 0x10f490, imac 0x3e6d0;
	TodoReturn doPasteInPlace(bool);
	void doPasteObjects(bool) = win 0x10f620;
	void dynamicGroupUpdate(bool) = win 0x114b90, imac 0x451e0;
	TodoReturn edgeForObject(int, int);
	TodoReturn editButton2Usable() = imac 0x49680;
	TodoReturn editButtonUsable() = imac 0x48910;
	TodoReturn editColor();
	TodoReturn editColorButtonUsable();
	void editGroup(cocos2d::CCObject*) = win 0x11b410, m1 0x2cf3c, imac 0x2c790;
	TodoReturn editHSV();
	void editObject(cocos2d::CCObject*) = win 0x1180a0;
	void editObject2(cocos2d::CCObject*) = win 0x11a030;
	void editObject3(cocos2d::CCObject*);
	TodoReturn editObjectSpecial(int);
	TodoReturn editorLayerForArray(cocos2d::CCArray*, bool);
	TodoReturn enableButton(CreateMenuItem*);
	TodoReturn findAndSelectObject(int, bool);
	void findSnapObject(cocos2d::CCArray*, float) = win 0x11f220;
	void findSnapObject(cocos2d::CCPoint, float) = win 0x11f320;
	TodoReturn findTriggerTest();
	void flipObjectsX(cocos2d::CCArray*) = win 0x11cc80;
	void flipObjectsY(cocos2d::CCArray*) = win 0x11ce60;
	TodoReturn getButton(char const*, int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);
	CreateMenuItem* getCreateBtn(int id, int bg) = win 0x10ae40, m1 0x33d6c, imac 0x33a60;
	TodoReturn getCreateMenuItemButton(cocos2d::CCSprite*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint) = imac 0x2ef80;
	TodoReturn getCycledObject(cocos2d::CCArray*, bool);
	TodoReturn getEditColorTargets(ColorAction*&, ColorAction*&, EffectGameObject*&) = imac 0x4a4a0;
	cocos2d::CCPoint getGridSnappedPos(cocos2d::CCPoint pos) = win inline {
		auto size = m_editorLayer->m_drawGridLayer->m_gridSize;
		auto xVal = std::floorf(pos.x / size);
		auto yVal = std::floorf(pos.y / size);
		return this->getLimitedPosition(ccp((xVal + 0.5) * size, (yVal + 0.5) * size));
	}
	cocos2d::CCPoint getGroupCenter(cocos2d::CCArray* objs, bool) = win 0x11ed20, imac 0x3c130;
	TodoReturn getGroupInfo(GameObject*, cocos2d::CCArray*, int&, int&, int&);
	cocos2d::CCPoint getLimitedPosition(cocos2d::CCPoint) = win 0x11c280;
	CCMenuItemSpriteExtra* getModeBtn(char const*, int);
	TodoReturn getNeighbor(int, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*);
	TodoReturn getRandomStartKey(int);
	TodoReturn getRelativeOffset(GameObject*) = imac 0x4f9df0;
	cocos2d::CCArray* getSelectedObjects() = win 0x10D320, imac 0x3d2a0, m1 0x3889c;
	TodoReturn getSimpleButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);
	TodoReturn getSmartNeighbor(SmartGameObject*, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*);
	TodoReturn getSmartObjectKey(int, GJSmartDirection);
	TodoReturn getSnapAngle(GameObject*, cocos2d::CCArray*) = imac 0x4b0f0;
	CCMenuItemSpriteExtra* getSpriteButton(char const* spriteFrameName, cocos2d::SEL_MenuHandler selector, cocos2d::CCMenu* menu, float scale, int buttonKind, cocos2d::CCPoint offset) = win 0xded70;
	CCMenuItemSpriteExtra* getSpriteButton(char const* spriteFrameName, cocos2d::SEL_MenuHandler selector, cocos2d::CCMenu* menu, float scale) = win inline, m1 0xe104, imac 0xc140 {
		return this->getSpriteButton(spriteFrameName, selector, menu, scale, 1, {0, 0});
	}
	CCMenuItemSpriteExtra* getSpriteButton(cocos2d::CCSprite* sprite, cocos2d::SEL_MenuHandler selector, cocos2d::CCMenu* menu, float scale, int buttonKind, cocos2d::CCPoint offset) = win 0xdee00;
	TodoReturn getTouchPoint(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn getTransformState();
	TodoReturn getXMin(int) = imac 0x2f260;
	bool init(LevelEditorLayer* editorLayer) = win 0xdba20, m1 0xb790, imac 0x94c0, ios 0x3cda60;
	bool isLiveColorSelectTrigger(GameObject*);
	bool isSpecialSnapObject(int) = win 0x124e40, imac 0x4c6c0;
	TodoReturn liveEditColorUsable();
	CreateMenuItem* menuItemFromObjectString(gd::string, int) = win 0x10ac30, imac 0x31d10, m1 0x3201c;
	cocos2d::CCPoint moveForCommand(EditCommand command) = win 0x11b9b0, m1 0x44338, imac 0x4ab70;
	void moveGamelayer(cocos2d::CCPoint) = win 0xdf250, imac 0x2f5f0, m1 0x2fba8;
	void moveObject(GameObject*, cocos2d::CCPoint) = win 0x11be20, imac 0x3f0a0;
	void moveObjectCall(cocos2d::CCObject*) = win 0x11bb60, m1 0x43740, imac 0x49d10;
	void moveObjectCall(EditCommand) = win 0x11bb90, m1 0x444f4, imac 0x4ad70;
	cocos2d::CCPoint offsetForKey(int) = win 0x122780;
	TodoReturn onAssignNewGroupID();
	void onColorFilter(cocos2d::CCObject* sender);
	void onCopy(cocos2d::CCObject* sender) = win 0x10f480;
	void onCopyState(cocos2d::CCObject* sender) = win 0x110650;
	bool onCreate() = win 0x10b8b0, imac 0x2e3f0;
	void onCreateButton(cocos2d::CCObject* sender) = win 0x10b420;
	void onCreateObject(int) = win 0x10bab0, imac 0x35000;
	void onDelete(cocos2d::CCObject* sender) = win 0xe2300, imac 0x2df40;
	void onDeleteAll(cocos2d::CCObject* sender);
	void onDeleteCustomItem(cocos2d::CCObject* sender) = win 0xe0a20;
	void onDeleteInfo(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender) = win 0xe2920;
	void onDeleteSelectedType(cocos2d::CCObject* sender) = win 0xe2eb0, imac 0x32090;
	void onDeleteStartPos(cocos2d::CCObject* sender) = win 0xe2f00;
	void onDeselectAll(cocos2d::CCObject* sender) = win 0x10d8e0, m1 0x2cee4, imac 0x2c730;
	void onDuplicate(cocos2d::CCObject* sender) = win 0x10ef70, m1 0x2bf10, imac 0x2b140;
	void onEditColor(cocos2d::CCObject* sender) = win 0x11ac40;
	void onFindObject(cocos2d::CCObject* sender);
	void onGoToBaseLayer(cocos2d::CCObject* sender) = win 0x110ad0;
	void onGoToLayer(cocos2d::CCObject* sender) = win 0x110970;
	void onGroupDown(cocos2d::CCObject* sender) = win 0x11b620;
	void onGroupIDFilter(cocos2d::CCObject* sender) = win 0xe3620;
	void onGroupSticky(cocos2d::CCObject* sender) = win 0x10ec80;
	void onGroupUp(cocos2d::CCObject* sender) = win 0x11b600;
	void onLockLayer(cocos2d::CCObject* sender) = win 0x11b790, m1 0x2d26c, imac 0x2cb20;
	void onNewCustomItem(cocos2d::CCObject* sender) = win 0xe0530, imac 0x30b10, m1 0x30f28, ios 0x3f0dac;
	void onPaste(cocos2d::CCObject* sender) = win 0x10f610;
	void onPasteColor(cocos2d::CCObject* sender) = win 0x110860;
	void onPasteInPlace(cocos2d::CCObject* sender);
	void onPasteState(cocos2d::CCObject* sender) = win 0x1106d0;
	void onPause(cocos2d::CCObject* sender) = win 0xddf70, imac 0x2abd0, m1 0x2ba08;
	void onPlayback(cocos2d::CCObject* sender) = win 0x10df30, m1 0xe734, imac 0xc7a0;
	void onPlaytest(cocos2d::CCObject* sender) = win 0x10e540, m1 0xe948, imac 0xca00;
	void onResetSpecialFilter(cocos2d::CCObject* sender);
	void onSelectBuildTab(cocos2d::CCObject* sender) = win 0x110af0, imac 0x341c0, m1 0x3442c;
	void onSettings(cocos2d::CCObject* sender) = win 0xddf10;
	void onStopPlaytest(cocos2d::CCObject* sender) = win 0x10e8d0, m1 0xeb88, imac 0xcc40;
	TodoReturn onTargetIDChange(int);
	void onToggleGuide(EffectGameObject*);
	TodoReturn onToggleSelectedOrder(EffectGameObject*);
	void onUngroupSticky(cocos2d::CCObject* sender) = win 0x10ecc0;
	void onUpdateDeleteFilter(cocos2d::CCObject* sender);
	void orderDownCustomItem(cocos2d::CCObject*) = win 0xe0bf0;
	void orderUpCustomItem(cocos2d::CCObject*) = win 0xe0b60;
	cocos2d::CCArray* pasteObjects(gd::string, bool, bool) = win 0x10f8a0;
	TodoReturn playCircleAnim(cocos2d::CCPoint, float, float);
	TodoReturn playerTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn playerTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	void playtestStopped() = win 0x10e910, imac 0x3def0;
	TodoReturn positionIsInSnapped(cocos2d::CCPoint);
	TodoReturn positionWithoutOffset(GameObject*);
	TodoReturn processSelectObjects(cocos2d::CCArray*) = imac 0x3d7f0;
	TodoReturn processSmartObjectsFromType(int, cocos2d::CCArray*, cocos2d::CCArray*, cocos2d::CCArray*, cocos2d::CCArray*);
	void recreateButtonTabs() = m1 0x322b8, imac 0x31fb0;
	void redoLastAction(cocos2d::CCObject*) = win 0x10dd30;
	void reloadCustomItems() = win 0xe1190, ios 0x3f13c8, mac inline {
		GameManager* gm = GameManager::sharedState();
		int buttonsPerRow = gm->getIntGameVariable("0049");
		int buttonRows = gm->getIntGameVariable("0050");
		cocos2d::CCArray* customItems = createCustomItems();
		m_buttonBar->loadFromItems(customItems,buttonsPerRow,buttonRows,true);
	}
	void removeOffset(GameObject*) = win 0x11e840;
	TodoReturn replaceGroupID(GameObject*, int, int);
	void repositionObjectsToCenter(cocos2d::CCArray*, cocos2d::CCPoint, bool) = win 0x1105b0;
	void resetObjectEditorValues(cocos2d::CCArray*);
	TodoReturn resetSelectedObjectsColor();
	void resetUI() = win 0xe1270, imac 0x2aac0, m1 0x2b8f4;
	void rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint) = win 0x11d040, imac 0x3c340;
	TodoReturn rotationforCommand(EditCommand);
	void scaleObjects(cocos2d::CCArray*, float, float, cocos2d::CCPoint, ObjectScaleType, bool) = win 0x11d460;
	void selectAll();
	void selectAllWithDirection(bool) = imac 0x3d8d0;
	void selectBuildTab(int) = win 0x110b20, imac 0x341f0, m1 0x34460;
	void selectObject(GameObject*, bool) = win 0x10c9f0, m1 0x2efdc, imac 0x2ea20;
	void selectObjects(cocos2d::CCArray*, bool) = win 0x10cce0, m1 0x37e74, imac 0x3c7a0;
	void selectObjectsInRect(cocos2d::CCRect);
	void setupCreateMenu() = win 0xe44b0, m1 0xfbc4, imac 0xdda0;
	void setupDeleteMenu() = win 0xe1470, m1 0xeda0, imac 0xce80;
	void setupEditMenu() = win inline, m1 0x2b8bc, imac 0x2aa80 {
		this->createMoveMenu();
		this->updateEditMenu();
	}
	TodoReturn setupTransformControl();
	bool shouldDeleteObject(GameObject*) = win 0xe27f0, imac 0x32b50;
	TodoReturn shouldSnap(GameObject*);
	void showDeleteConfirmation();
	void showLiveColorSelectForMode(int);
	void showLiveColorSelectForModeSpecial(int);
	void showMaxBasicError() = imac 0x34c50;
	void showMaxCoinError();
	void showMaxError() = win 0x10ED00;
	void showUI(bool) = imac 0x3dd70, m1 0x392e4, win 0x10dda0;
	void sliderChanged(cocos2d::CCObject*) = win 0xdef40, ios 0x3CF9B4, imac 0xbbd0;
	TodoReturn smartTypeForKey(int);
	cocos2d::CCSprite* spriteFromObjectString(gd::string str, bool, bool, int objLimit, cocos2d::CCArray*, cocos2d::CCArray*, GameObject*) = win 0x10a330, imac 0x34350, m1 0x3459c;
	TodoReturn toggleDuplicateButton();
	void toggleEditObjectButton() = win 0x116aa0;
	void toggleEnableRotate(cocos2d::CCObject*) = win 0x10c6a0;
	void toggleFreeMove(cocos2d::CCObject*) = win 0x10c520;
	TodoReturn toggleLockUI(bool) = imac 0x2d5a0, m1 0x2dc08;
	void toggleMode(cocos2d::CCObject*) = win 0xe1390, imac 0x2ad80, m1 0x2bb88;
	TodoReturn toggleObjectInfoLabel() = win 0xdf2d0;
	void toggleSnap(cocos2d::CCObject*) = win 0x10c5c0;
	TodoReturn toggleSpecialEditButtons();
	void toggleStickyControls(bool enable) = win inline, imac 0x2d430, m1 0x2da98 {
		m_stickyControlsEnabled = enable;
		m_linkBtn->setEnabled(enable);
  		m_linkBtn->setVisible(enable);
  		m_unlinkBtn->setEnabled(enable);
  		m_unlinkBtn->setVisible(enable);
	}
	void toggleSwipe(cocos2d::CCObject*) = win 0x10c480;
	void transformObject(GameObject*, EditCommand, bool) = win 0x11c890, imac 0x4c1f0;
	void transformObjectCall(cocos2d::CCObject*) = m1 0x43774;
	void transformObjectCall(EditCommand) = win 0x11c340, m1 0x44914, imac 0x4b1a0;
	void transformObjects(cocos2d::CCArray* objs, cocos2d::CCPoint anchor, float scaleX, float scaleY, float rotateX, float rotateY, float warpX, float warpY) = win 0x11da50;
	TodoReturn transformObjectsActive();
	TodoReturn transformObjectsReset();
	TodoReturn triggerSwipeMode();
	TodoReturn tryUpdateTimeMarkers();
	void undoLastAction(cocos2d::CCObject*) = win 0x10dcc0;
	void updateButtons() = win 0xde380;
	void updateCreateMenu(bool) = win 0x10b460, imac 0x2e500, m1 0x2eaf8;
	void updateDeleteButtons() = win 0xe3b50, imac 0x32420, m1 0x32754;
	void updateDeleteMenu() {
		m_deleteMenu->setVisible(m_selectedMode == 1);
	}
	TodoReturn updateEditButtonColor(int, cocos2d::ccColor3B) = imac 0x3f230;
	TodoReturn updateEditColorButton() = imac 0x49b90;
	void updateEditMenu() {
		m_editButtonBar->setVisible(m_selectedMode == 3);
	}
	void updateGridNodeSize() = win 0xdf100, imac 0x2f410, m1 0x2fa1c;
	TodoReturn updateGridNodeSize(int);
	TodoReturn updateGroupIDBtn2();
	void updateGroupIDLabel() = imac 0x2cb70;
	void updateObjectInfoLabel() = win 0xdf360, m1 0x2fc24, imac 0x2f660;
	TodoReturn updatePlaybackBtn() = imac 0x2d490;
	TodoReturn updateSlider() = win 0xdf040;
	TodoReturn updateSpecialUIElements();
	void updateZoom(float) = m1 0x39504, win 0x10ea80, imac 0x3dfc0;
	float valueFromXPos(float);
	float xPosFromValue(float);
	void zoomGameLayer(bool);
	void zoomIn(cocos2d::CCObject*) = win 0x10e9e0, m1 0xec6c, imac 0xcd40;
	void zoomOut(cocos2d::CCObject*) = win 0x10ea30, m1 0xecbc, imac 0xcd90;

	virtual void draw() = win 0x11ecb0, m1 0x47170, imac 0x4eba0, ios 0x400804;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x11f7f0, m1 0x47b58, imac 0x4f660, ios 0x400e80;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x11fe70, m1 0x48138, imac 0x4fc80, ios 0x401410;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x1205c0, m1 0x48650, imac 0x50240, ios 0x4018f4;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x48e14, imac 0x50b70, ios 0x40207c;
	virtual void registerWithTouchDispatcher() = win 0x99990, m1 0x48e30, imac 0x50bb0, ios 0x402098;
	virtual void keyBackClicked() = win 0x110c70, m1 0x3a68c, imac 0x3f200, ios 0x3f79f4;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x121300, m1 0x48e68, imac 0x50bf0, ios 0x4020d0;
	virtual TodoReturn getUI() = win 0xdb4b0, m1 0x4c3cc, imac 0x54b00, ios 0x404bec;
	virtual void setIDPopupClosed(SetIDPopup*, int) = win 0xe3120, m1 0x338c4, imac 0x335e0, ios 0x3f27b4;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xe2f30, m1 0x336f4, imac 0x33450, ios 0x3f26d8;
	virtual void updateTransformControl() = win 0x1116f0, m1 0x3bda4, imac 0x40c50, ios 0x3f88b0;
	virtual void transformChangeBegin() = win 0x111be0, m1 0x3c65c, imac 0x41600, ios 0x3f9050;
	virtual void transformChangeEnded() = ios 0x3f90fc {}
	virtual TodoReturn getTransformNode() = win 0xdb4c0, m1 0x4c3d0, imac 0x54b10, ios 0x404bf0;
	virtual void transformScaleXChanged(float) = win 0x11d830, m1 0x45c34, imac 0x4d3d0, ios 0x3ffe9c;
	virtual void transformScaleYChanged(float) = win 0x11d850, m1 0x45dfc, imac 0x4d5e0, ios 0x3fff3c;
	virtual void transformScaleXYChanged(float, float) = win 0x11d870, m1 0x45f30, imac 0x4d740, ios 0x3fff54;
	virtual void transformSkewXChanged(float) = win 0x11d890, m1 0x46068, imac 0x4d8b0, ios 0x3fff70;
	virtual void transformSkewYChanged(float) = win 0x11d8b0, m1 0x4619c, imac 0x4da10, ios 0x3fff88;
	virtual void transformRotationXChanged(float) = win 0x11d8d0, m1 0x462d0, imac 0x4db70, ios 0x3fffa0;
	virtual void transformRotationYChanged(float) = win 0x11d8f0, m1 0x46404, imac 0x4dcd0, ios 0x3fffb8;
	virtual void transformRotationChanged(float) = win 0x11d910, m1 0x46538, imac 0x4de30, ios 0x3fffd0;
	virtual void transformResetRotation() = win 0x11d930, m1 0x46670, imac 0x4dfa0, ios 0x3fffec;
	virtual void transformRestoreRotation() = win 0x11d960, m1 0x46728, imac 0x4e090, ios 0x400030;
	virtual void songStateChanged() = win 0x10e530, m1 0x39438, imac 0x3dec0, ios 0x3f6f44;
	virtual void colorSelectClosed(cocos2d::CCNode*) = win 0x11b860, m1 0x44150, imac 0x4a930, ios 0x3fe5cc;
	virtual void keyUp(cocos2d::enumKeyCodes) = win 0x122590, m1 0x49b30, imac 0x51cf0, ios 0x402d78;
	virtual void scrollWheel(float, float) = win 0x1225d0, m1 0x49ba8, imac 0x51d90, ios 0x402df0;
	virtual void angleChangeBegin() = win 0x11f0f0, m1 0x47248, imac 0x4ec80, ios 0x4008dc;
	virtual void angleChangeEnded() = ios 0x4008f8 {}
	virtual void angleChanged(float) = win 0x11f100, m1 0x4726c, imac 0x4ece0, ios 0x400900;
	virtual void updateScaleControl() = win 0x1110e0, m1 0x3aa7c, imac 0x3f640, ios 0x3f7c60;
	virtual void anchorPointMoved(cocos2d::CCPoint) = win 0x111bf0, m1 0x3c710, imac 0x41700, ios 0x3f9104;
	virtual void scaleChangeBegin() = win 0x111240, m1 0x3b070, imac 0x3fd70, ios 0x3f8148;
	virtual void scaleChangeEnded() = ios 0x3f8164 {}
	virtual void scaleXChanged(float, bool) = win 0x111250, m1 0x3b094, imac 0x3fdd0, ios 0x3f816c;
	virtual void scaleYChanged(float, bool) = win 0x111300, m1 0x3b6cc, imac 0x40540, ios 0x3f8560;
	virtual void scaleXYChanged(float, float, bool) = win 0x1113b0, m1 0x3b810, imac 0x40690, ios 0x3f8608;


	PAD = win 0x40, android32 0x1c, android64 0x38, mac 0x28, ios 0x28;

	GJTransformState m_transformState;
	bool m_isPlayingMusic;
	EditButtonBar* m_buttonBar;
	PAD = win 0x8, android32 0x4, android64 0x8, mac 0x8, ios 0x8;
	cocos2d::CCArray* m_unk1cc;
	float m_gridSize;
	PAD = win 0x34, android32 0x30, android64 0x34, mac 0x34, ios 0x34;
	cocos2d::CCLabelBMFont* m_objectInfoLabel;
	GJRotationControl* m_rotationControl;
	cocos2d::CCPoint m_pivotPoint;
	PAD = win 0x8, android32 0x4, android64 0x8, mac 0x8, ios 0x8;
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
	float m_toolbarHeight;
	float m_unk244;
	bool m_updatedSpeedObjects;
	bool m_unkBool1;
	bool m_unkBool2;
	bool m_stickyControlsEnabled;

	PAD = win 0xc, android32 0xc, android64 0xc, mac 0xc, ios 0xc;
	cocos2d::CCArray* m_unk258;
	PAD = win 0x8, android32 0x8, android64 0x8, mac 0x8, ios 0x8;

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
	cocos2d::CCObject* m_unk3F0;
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
	void* m_unk324;
	int m_selectedObjectIndex;
	cocos2d::CCArray* m_createButtonArray;
	cocos2d::CCArray* m_customObjectButtonArray;
	cocos2d::CCArray* m_unknownArray9;
	int m_selectedMode; // win 0x33c
	LevelEditorLayer* m_editorLayer; // win 0x340
	cocos2d::CCPoint m_swipeStart;
	cocos2d::CCPoint m_swipeEnd;
	cocos2d::CCPoint m_unk508;
	cocos2d::CCPoint m_lastTouchPoint;
	cocos2d::CCPoint m_cameraTest;
	cocos2d::CCPoint m_clickAtPosition;
	GameObject* m_selectedObject;
	GameObject* m_snapObject;
	bool m_isDraggingCamera;
	void* m_unk540;
	int m_selectedTab;
	PAD = win 0x3c;
	bool m_unk3b4;

	PAD = win 0x8;
}

[[link(android)]]
class EditTriggersPopup : SetupTriggerPopup {
	// virtual ~EditTriggersPopup();

	static EditTriggersPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x27c920, m1 0x239848, imac 0x296a30;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x27ca30, m1 0x2399d0, imac 0x296c60;

	virtual void determineStartValues() = imac 0x296f20, ios 0x2e3db4;
	virtual void onClose(cocos2d::CCObject* sender) = imac 0x296f30, ios 0x2e3db8;
}

[[link(android)]]
class EffectGameObject : EnhancedGameObject {
	// virtual ~EffectGameObject();
	// EffectGameObject() = imac 0x1edce0;

	static EffectGameObject* create(char const*) = imac 0x1b42e0, m1 0x172460; // inlined on windows

	TodoReturn getTargetColorIndex();
	bool init(char const*); // inlined on windows :(
	TodoReturn playTriggerEffect() = win 0x4798b0;
	TodoReturn resetSpawnTrigger();
	void setTargetID(int);
	void setTargetID2(int);
	TodoReturn triggerEffectFinished();
	TodoReturn updateInteractiveHover(float);
	TodoReturn updateSpecialColor();
	TodoReturn updateSpeedModType() = win 0x47f6c0;

	virtual void setOpacity(unsigned char) = win 0x479d90, m1 0x1727fc, imac 0x1b46e0, ios 0x38e688;
	virtual void firstSetup() = win 0x47c680, m1 0x173c70, imac 0x1b6480, ios 0x38faec;
	virtual void customSetup() = win 0x47c6a0, m1 0x1562b4, imac 0x192590, ios 0x3804fc;
	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x479DD0, m1 0x172880, imac 0x1b4760, ios 0x38e70c;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = win 0x47c900, m1 0x157800, imac 0x193820, ios 0x381524;
	virtual gd::string getSaveString(GJBaseGameLayer*) = win 0x47f960, m1 0x14e5e8, imac 0x188160, ios 0x37b94c;
	virtual void setRScaleX(float) = m1 0x172504, imac 0x1b4370, ios 0x38e470;
	virtual void setRScaleY(float) = m1 0x172514, imac 0x1b4390, ios 0x38e480;
	virtual void triggerActivated(float) = m1 0x173be8, imac 0x1b6410, ios 0x38fa78;
	virtual void restoreObject() = m1 0x173998, imac 0x1b61d0, ios 0x38f844;
	virtual float spawnXPosition() = m1 0x173ba8, imac 0x1b63d0, ios 0x38fa40;
	virtual bool canReverse() = m1 0x173df0, imac 0x1b6570, ios 0x38fbd8;
	virtual bool isSpecialSpawnObject() = m1 0x173e7c, imac 0x1b65e0, ios 0x38fc64;
	virtual bool canBeOrdered() = m1 0x173e84, imac 0x1b65f0, ios 0x38fc6c;
	virtual cocos2d::CCLabelBMFont* getObjectLabel() = m1 0x1a1550, imac 0x1ed550, ios 0x3a25e0;
	virtual void setObjectLabel(cocos2d::CCLabelBMFont*) = m1 0x1a1558, imac 0x1ed560, ios 0x3a25e8;
	virtual TodoReturn stateSensitiveOff(GJBaseGameLayer*) = m1 0x173908, imac 0x1b6130, ios 0x38f7b8;

	// this is probably pretty wrong :D

	bool m_unknownBool;
	cocos2d::ccColor3B m_triggerTargetColor;
	// property 10
	float m_duration;
	// property 35
	float m_opacity;
	PAD = android32 0x4, android64 0x4, win 0x4, mac 0x4;
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
	PAD = android 0x6, win 0x6, mac 0x6;
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
	TouchTriggerType m_touchToggleMode;
	// property 198
	int m_touchPlayerMode; // TODO: add enum
	// property 89
	bool m_isDualMode;
	// property 76
	int m_animationID;
	PAD = android 0x8, win 0x8, mac 0x8;
	// property 87
	bool m_isMultiTriggered;
	PAD = android 0x2, win 0x2, mac 0x2;
	// property 93
	bool m_triggerOnExit;
	// property 95
	int m_itemID2;
	// property 534
	int m_property534;
	PAD = android 0x1, win 0x1, mac 0x1;
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
	PAD = android32 0x1f, android64 0x23, win 0x23, mac 0x23;
	// property 148
	float m_gravityValue;
	// property 284
	bool m_isSinglePTouch;
	PAD = android 0x3, win 0x3, mac 0x3;
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
	PAD = android 0xb, win 0xb, mac 0xb;
	// property 12
	int m_secretCoinID;
	PAD = android32 0x1c, android64 0x24, win 0x24, mac 0x24;
	// property 280
	bool m_ignoreGroupParent;
	// property 281
	bool m_ignoreLinkedObjects;
	PAD = android 0x1, win 0x1, mac 0x1;
}

[[link(android), depends(CAState), depends(PulseEffectAction), depends(CountTriggerAction), depends(OpacityEffectAction), depends(TouchToggleAction), depends(CollisionTriggerAction), depends(ToggleTriggerAction), depends(SpawnTriggerAction), depends(GroupCommandObject2), depends(TimerItem), depends(TimerTriggerAction)]]
class EffectManagerState {
	// ~EffectManagerState();
	// EffectManagerState();

	gd::vector<CAState> m_unkVecCAState;
	gd::vector<PulseEffectAction> m_unkVecPulseEffectAction;
	gd::unordered_map<int,gd::vector<PulseEffectAction>> m_unorderedMapInt_vectorPulseEffectAction;
	gd::unordered_map<int,gd::vector<CountTriggerAction>> m_unorderedMapInt_vectorCountTriggerAction;
	gd::unordered_set<int> m_unorderedSet_int1;
	gd::map<int,int> m_mapInt_Int;
	gd::unordered_map<int,OpacityEffectAction> m_unorderedMapInt_OpacityEffectAction;
	gd::vector<TouchToggleAction> m_vectorTouchToggleAction;
	gd::vector<CollisionTriggerAction> m_vectorCollisionTriggerAction;
	gd::vector<ToggleTriggerAction> m_vectorToggleTriggerAction;
	gd::vector<SpawnTriggerAction> m_vectorSpawnTriggerAction;
	gd::unordered_map<int,int> m_itemCountMap;
	gd::unordered_map<int,bool> m_unorderedMapInt_bool;
	gd::vector<GroupCommandObject2> m_vectorGroupCommandObject2;
	gd::unordered_map<int,std::pair<double,double>> m_unorderedMapInt_pair_double_double;
	gd::unordered_set<int> m_unorderedSet_int2;
	gd::unordered_map<int,TimerItem> m_timerItemMap;
	gd::unordered_map<int,gd::vector<TimerTriggerAction>> m_unorderedMapInt_vectorTimerTriggerAction;
}

[[link(android)]]
class EndLevelLayer : GJDropDownLayer {
	// virtual ~EndLevelLayer();
	// EndLevelLayer();

	static EndLevelLayer* create(PlayLayer* playLayer);

	TodoReturn coinEnterFinished(cocos2d::CCPoint) = win 0x131d20;
	TodoReturn coinEnterFinishedO(cocos2d::CCObject*) = win 0x131ce0;
	TodoReturn currencyEnterFinished() = win 0x1323d0;
	TodoReturn diamondEnterFinished() = win 0x132860;
	TodoReturn getCoinString() = win 0x130820;
	const char* getEndText() = win 0x132c80;
	void goEdit() = win 0x1311d0;
	bool init(PlayLayer* playLayer);
	void onEdit(cocos2d::CCObject* sender) = win 0x1310d0;
	void onEveryplay(cocos2d::CCObject* sender);
	void onHideLayer(cocos2d::CCObject* sender) = win 0x1312a0, m1 0x42aef0, imac 0x4cbff0;
	void onLevelLeaderboard(cocos2d::CCObject* sender) = win 0x130720;
	void onMenu(cocos2d::CCObject* sender) = win 0x130f50;
	void onReplay(cocos2d::CCObject* sender) = win 0x130d40;
	void onRestartCheckpoint(cocos2d::CCObject* sender) = win 0x131380;
	void playCoinEffect(float) = win 0x131aa0, imac 0x4cc5e0;
	void playCurrencyEffect(float) = win 0x132050;
	void playDiamondEffect(float) = win 0x1324e0;
	void playEndEffect() = win 0x132970, imac 0x4cd060;
	void playStarEffect(float) = win 0x1315a0;
	TodoReturn starEnterFinished() = win 0x131940;
	TodoReturn tryShowBanner(float);

	virtual void keyBackClicked() = win 0x131590, m1 0x42bd68, imac 0x4ccf00, ios 0x308aec;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x132c30, m1 0x42c500, imac 0x4cd6b0, ios 0x309234;
	virtual void customSetup() = win 0x12edf0, imac 0x4c9d40, m1 0x428e80, ios 0x305f20;
	virtual void showLayer(bool) = win 0x130b60, imac 0x4cc0e0, m1 0x42afd8, ios 0x307dd0;
	virtual void enterAnimFinished() = ios 0x308a6c {}
	virtual void keyUp(cocos2d::enumKeyCodes) = ios 0x309278 {}

	PlayLayer* m_playLayer;
	bool m_notLocal;
	bool m_coinsVerified;
	bool m_unknown3;
	bool m_exiting;
	bool m_animateCoins;
	bool m_endEffectPlayed;
	cocos2d::CCMenu* m_sideMenu;
	cocos2d::CCArray* m_coinsToAnimate;
	cocos2d::CCPoint m_starsPosition;
	cocos2d::CCPoint m_orbsPosition;
	cocos2d::CCPoint m_diamondsPosition;
	int m_orbs;
	int m_stars;
	int m_moons;
	int m_diamonds;
	bool m_secretKey;
	bool m_hidden;
}

[[link(android)]]
class EndPortalObject : GameObject {
	// virtual ~EndPortalObject();

	static EndPortalObject* create() = imac 0x39f2f0;

	cocos2d::CCPoint getSpawnPos() = win 0x134050, imac 0x39f810, m1 0x3268cc;
	void triggerObject(GJBaseGameLayer*) = imac 0x39f780, m1 0x326838;
	TodoReturn updateColors(cocos2d::ccColor3B);
	void updateEndPos(bool) = win 0x1342c0, imac 0x39fa00, m1 0x326a8c;

	virtual bool init() = m1 0x326498, imac 0x39f390, ios 0x407108;
	virtual void setPosition(cocos2d::CCPoint const&) = m1 0x326930, imac 0x39f890, ios 0x407590;
	virtual void setVisible(bool) = m1 0x326a28, imac 0x39f9a0, ios 0x407688;

	cocos2d::CCSprite* m_gradientBar;
	bool m_flippedX;
	bool m_startPosHeightRelated;
}

[[link(android)]]
class EndTriggerGameObject : EffectGameObject {
	// virtual ~EndTriggerGameObject();

	static EndTriggerGameObject* create();

	virtual bool init() = m1 0x18e074, imac 0x1d5880, ios 0x39afd8;
	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x490510, m1 0x18e0c4, imac 0x1d58d0, ios 0x39b028;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x18ec20, imac 0x1d6690, ios 0x39b3b4;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x18e1a0, imac 0x1d59b0, ios 0x39b0b4;

	bool m_noEffects;
	bool m_noSFX;
	bool m_instant;
}

[[link(android)]]
class EnhancedGameObject : GameObject {
	// virtual ~EnhancedGameObject();
	// EnhancedGameObject();

	static EnhancedGameObject* create(char const*);

	TodoReturn createRotateAction(float, int);
	bool init(char const*) = win 0x19a7c0;
	TodoReturn previewAnimateOnTrigger();
	TodoReturn refreshRotateAction();
	TodoReturn resetSyncedAnimation();
	TodoReturn setupAnimationVariables();
	TodoReturn triggerAnimation();
	TodoReturn updateRotateAction(float);
	TodoReturn updateState(int);
	void updateUserCoin() = win 0x19c930, imac 0x5ca6b0;
	TodoReturn waitForAnimationTrigger();

	virtual void customSetup() = win 0x19afb0, m1 0x502290, imac 0x5d5220, ios 0x273080;
	virtual void resetObject() = win 0x19A970, m1 0x501c24, imac 0x5d4a60, ios 0x272abc;
	virtual void deactivateObject(bool) = m1 0x5033f4, imac 0x5d80e0, ios 0x27428c;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x501ed8, imac 0x5d4d40, ios 0x272d4c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x50345c, imac 0x5d8140, ios 0x2742f4;
	virtual void triggerActivated(float) = m1 0x501d50, imac 0x5d4bd0, ios 0x272be8;
	virtual void restoreObject() = m1 0x501ca0, imac 0x5d4b00, ios 0x272b38;
	virtual void animationTriggered() = m1 0x501e50, imac 0x5d4ca0, ios 0x272cc8;
	virtual void activatedByPlayer(PlayerObject*) = m1 0x501d5c, imac 0x5d4be0, ios 0x272bf4;
	virtual bool hasBeenActivatedByPlayer(PlayerObject*) = m1 0x501dbc, imac 0x5d4c30, ios 0x272c4c;
	TodoReturn resumeAudio();
	TodoReturn resumeAudioDelayed();
	virtual bool hasBeenActivated() = m1 0x501e30, imac 0x5d4c80, ios 0x272ca8;
	virtual void saveActiveColors() = m1 0x501e60, imac 0x5d4cc0, ios 0x272cd8;
	virtual bool canAllowMultiActivate() = m1 0x501b2c, imac 0x5d4760, ios 0x272988;
	virtual bool getHasSyncedAnimation() = m1 0x1a1528, imac 0x1ed500, ios 0x275058;
	virtual bool getHasRotateAction() = m1 0x1a1530, imac 0x1ed510, ios 0x275060;
	virtual bool canMultiActivate(bool) = m1 0x501d2c, imac 0x5d4bb0, ios 0x272bc4;
	virtual TodoReturn powerOnObject(int) = m1 0x501cd8, imac 0x5d4b40, ios 0x272b70;
	virtual TodoReturn powerOffObject() = m1 0x501cec, imac 0x5d4b60, ios 0x272b84;
	virtual TodoReturn stateSensitiveOff(GJBaseGameLayer*) = m1 0x173994, imac 0x1b61c0, ios 0x275068;
	virtual void updateSyncedAnimation(float, int) = win 0x19ddf0, imac 0x2577a0, m1 0x2000b0, ios 0x356548;
	virtual TodoReturn updateAnimateOnTrigger(bool) = m1 0x201478, imac 0x2596c0, ios 0x3578f0;

	PAD = android32 0x25, win 0x2a, android64 0x22, mac 0x22;

	bool m_hasCustomAnimation;
	bool m_hasCustomRotation;
	// property 98
	bool m_disableRotation;
	PAD = android32 0x3, win 0x3, android64 0x3, mac 0x3;

	// property 97
	float m_rotationSpeed;
	PAD = android32 0xc, win 0xc, android64 0xc, mac 0xc;

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
	PAD = android32 0xf, win 0xf, android64 0xf, mac 0xf;

	// property 214
	bool m_animateOnlyWhenActive;
	// property 444
	bool m_isNoMultiActivate; // used in platformer stuff
	// property 99
	bool m_isMultiActivate; // 0x592
	PAD = android32 0x4, win 0x4, android64 0x8, mac 0x8;
}

[[link(android)]]
class EnhancedTriggerObject : EffectGameObject {
	// virtual ~EnhancedTriggerObject();

	static EnhancedTriggerObject* create(char const*);

	bool init(char const*);

	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x17587c, imac 0x1b8570, ios 0x3906d4;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x174f80, imac 0x1b7a80, ios 0x390430;
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
	void updateTransitions(float, GJBaseGameLayer*) = imac 0x5dc680, m1 0x506dcc;

	gd::map<int,EnterEffectAnimValue> m_enterEffectAnimMap;
	PAD = win 0x8c;
	GameObject* m_gameObject;
	PAD = win 0x1c;
	gd::vector<int> m_unkVecInt;
	PAD = win 0x4;
}

[[link(android)]]
class EnterEffectObject : EffectGameObject {
	// virtual ~EnterEffectObject();

	static EnterEffectObject* create(char const*);

	bool init(char const*);
	TodoReturn resetEnterAnimValues();

	virtual void customSetup() = m1 0x15624c, imac 0x192500, ios 0x3804bc;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x156584, imac 0x192840, ios 0x380750;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x14882c, imac 0x180850, ios 0x37a130;
}

[[link(android)]]
class EventLinkTrigger : EffectGameObject {
	// virtual ~EventLinkTrigger();

	static EventLinkTrigger* create();

	virtual bool init() = m1 0x1857dc, imac 0x1cb4a0, ios 0x3970dc;
	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = m1 0x18582c, imac 0x1cb4f0, ios 0x39712c;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x186458, imac 0x1cc3b0, ios 0x397528;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x185900, imac 0x1cb5d0, ios 0x3971b0;
}

[[link(android)]]
class ExplodeItemNode : cocos2d::CCNode {
	// virtual ~ExplodeItemNode();

	static ExplodeItemNode* create(cocos2d::CCRenderTexture*);

	TodoReturn createSprites(int, int, float, float, float, float, float, float, cocos2d::ccColor4F, cocos2d::ccColor4F, bool);
	bool init(cocos2d::CCRenderTexture*);

	virtual void update(float) = m1 0x1c0560, imac 0x20f170, ios 0x63d54;

	cocos2d::CCRenderTexture* m_renderTexture;
	cocos2d::CCArray* m_sprites;
	float m_unk1;
	float m_unk2;
	bool m_unk3;
}

[[link(android)]]
class ExplodeItemSprite : cocos2d::CCSprite {
	// virtual ~ExplodeItemSprite();

	static ExplodeItemSprite* create();

	virtual bool init() = imac 0x20f4f0, ios 0x64024;
	
	float m_unk1;
	float m_unk2;
	float m_unk3;
	float m_unk4;
	float m_unk5;
	cocos2d::CCParticleSystemQuad* m_unk6;
}

[[link(android)]]
class ExtendedLayer : cocos2d::CCLayer {
	// virtual ~ExtendedLayer();
	ExtendedLayer() {}

	static ExtendedLayer* create() = win inline, m1 0x32e4e0, imac 0x3a81a0 {
		auto ret = new ExtendedLayer();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	virtual bool init() = win 0x3de10, imac 0x3aa760, ios 0x1330a8;
	virtual void setPosition(cocos2d::CCPoint const&) = win 0x3de30, m1 0x3307bc, imac 0x3aa770, ios 0x1330ac;

	BoomScrollLayerDelegate* m_delegate;
}

[[link(android)]]
class FileOperation {
	static gd::string getFilePath();
	static void readFile();
	static void saveFile();
}

[[link(android)]]
class FileSaveManager : GManager {
	// virtual ~FileSaveManager();

	static FileSaveManager* sharedState();

	TodoReturn getStoreData();
	TodoReturn loadDataFromFile(char const*);

	virtual bool init();
	virtual void firstLoad();
}

[[link(android)]]
class FindBPMLayer : CreateGuidelinesLayer {
	// virtual ~FindBPMLayer();

	static FindBPMLayer* create(int);

	TodoReturn calculateBPM();
	bool init(int);

	virtual void onClose(cocos2d::CCObject* sender) = win 0x9a060, m1 0x46be80, imac 0x515c40, ios 0x81d08;
	virtual TodoReturn playMusic() = win 0x99ed0, m1 0x46bcec, imac 0x515ab0, ios 0x81b94;
	virtual TodoReturn registerTouch() = win 0x99f70, m1 0x46bd88, imac 0x515b40, ios 0x81c20;
	virtual void onInfo(cocos2d::CCObject* sender) = ios 0x81d04 {}
	virtual void onRecord(cocos2d::CCObject* sender) = win 0x99c90, m1 0x46bc0c, imac 0x5159a0, ios 0x81af0;
	virtual TodoReturn recordingDidStop() = win 0x99e50, m1 0x46bc44, imac 0x5159e0, ios 0x81b28;
}

[[link(android)]]
class FindObjectPopup : SetIDPopup {
	// virtual ~FindObjectPopup();

	static FindObjectPopup* create();

	void onFindObjectID(cocos2d::CCObject* sender) = win inline {
		m_unknownBool = !m_unknownBool;
	}

	virtual bool init() = m1 0x24a3c8, imac 0x2a8eb0, ios 0x2ef960;

	bool m_unknownBool; // found in FindObjectPopup::onFindObjectID
}

[[link(android)]]
class FLAlertLayer : cocos2d::CCLayerColor {
	~FLAlertLayer() = ios 0x2bbd80, imac 0x4a49c0, win 0x50960, m1 0x4080c8;
	FLAlertLayer() { // ios 0xa7ec : this seems too small?
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

	static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, gd::string desc, char const* btn1, char const* btn2, float width, bool scroll, float height, float textScale) = win 0x50ac0, m1 0x4083e8, imac 0x4a4da0, ios 0x2bbef8;
	static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, gd::string desc, char const* btn1, char const* btn2, float width) = win 0x50a10, m1 0x4085d8, imac 0x4a4fd0, ios 0x2bc020;
	static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, gd::string desc, char const* btn1, char const* btn2) = win inline, imac 0x4a4c90, ios 0x2bbe38, m1 0x4082d0 {
		return FLAlertLayer::create(delegate, title, desc, btn1, btn2, 300.0);
	}

	static FLAlertLayer* create(char const* title, const gd::string& desc, char const* btn) {
		return FLAlertLayer::create(nullptr, title, desc, btn, nullptr, 300.0);
	}

	void incrementForcePrio() = ios 0x2bcb0c, m1 0x409224, imac 0x4a5d10;
	bool init(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float, bool, float, float) = win 0x50ce0, imac 0x4a50e0, m1 0x4086f8, ios 0x2bc0e8;
	bool init(int) = win 0x50bd0, imac 0x4a5c40, m1 0x409150, ios 0x2bca5c;
	void onBtn1(cocos2d::CCObject* sender) = win 0x51ac0, imac 0x4a5d60, ios 0x2bcb5c, m1 0x409274;
	void onBtn2(cocos2d::CCObject* sender) = win 0x51b20, imac 0x4a5dc0, ios 0x2bcbbc, m1 0x4092d4;

	// virtual void onEnter() = ios 0x2bd0d8; // only exists on armv7...
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x51b80, m1 0x4094f8, imac 0x4a5ff0, ios 0x2bccb0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x51cd0, m1 0x4097a8, imac 0x4a6230, ios 0x2bcea0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x51c20, m1 0x409658, imac 0x4a6110, ios 0x2bcd68;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x51c90, m1 0x409718, imac 0x4a61b0, ios 0x2bce28;
	virtual void registerWithTouchDispatcher() = win 0x51ee0, m1 0x4099dc, imac 0x4a6460, ios 0x2bd0a0;
	virtual void keyBackClicked() = win 0x51a00, m1 0x4093d0, imac 0x4a5ed0, ios 0x2bcc4c;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x51980, m1 0x409334, imac 0x4a5e20, ios 0x2bcc1c;
	virtual void show() = win 0x51d10, m1 0x409838, imac 0x4a62b0, ios 0x2bcf18;

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
class FMODQueuedEffect {
	PAD = win 0x70, android32 0x48, android64 0x58;
}

[[link(android), depends(FMODAudioState), depends(FMODSoundState), depends(FMODMusic), depends(FMODSound), depends(FMODQueuedEffect), depends(FMODQueuedMusic), depends(FMODSoundTween)]]
class FMODAudioEngine : cocos2d::CCNode {
	// virtual ~FMODAudioEngine();
	FMODAudioEngine() = win 0x52250, ios 0x145344;

	static FMODAudioEngine* sharedEngine() = win inline, imac 0x3e0a80, m1 0x360e54, ios 0x13e590 {
		auto** instancePtr = reinterpret_cast<FMODAudioEngine**>(geode::base::get() + 0x687dc0);
		if (!*instancePtr) {
			*instancePtr = new FMODAudioEngine();
			(*instancePtr)->init();
		}
		return *instancePtr;
	}
	static FMODAudioEngine* get() {
		return FMODAudioEngine::sharedEngine();
	}

	TodoReturn activateQueuedMusic(int);
	FMOD::Channel* channelForChannelID(int) = win 0x575d0, m1 0x3638d8, imac 0x3e4320;
	TodoReturn channelForUniqueID(int);
	TodoReturn channelIDForUniqueID(int);
	TodoReturn channelLinkSound(int, FMODSound*);
	TodoReturn channelStopped(FMOD::Channel*, bool);
	TodoReturn channelUnlinkSound(int);
	void clearAllAudio() = win 0x54460, imac 0x3e1f70, m1 0x3620ac;
	TodoReturn countActiveEffects();
	TodoReturn countActiveMusic();
	TodoReturn createStream(gd::string);
	void disableMetering() {
		this->m_metering = false;
	}
	void enableMetering() {
		this->m_metering = true;
		this->m_pulse1 = 0.1f;
		this->m_pulse2 = 0.1f;
		this->m_pulse3 = 0.0f;
	}
	TodoReturn fadeInBackgroundMusic(float) = imac 0x3eb9f0;
	void fadeInMusic(float, int) = win 0x5b170;
	void fadeOutMusic(float, int) = win 0x5b2b0, m1 0x36bec0, imac 0x3ef250;
	TodoReturn getActiveMusic(int);
	FMOD::Channel* getActiveMusicChannel(int musicChannel) = m1 0x364ca8, imac 0x3e5fd0, win inline {
		// TODO: this might do other checks or whatever but i cant be bothered
		return m_channelIDToChannel[m_musicChannels[musicChannel].m_channelID];
	}
	float getBackgroundMusicVolume() = win inline, imac 0x3eba30, m1 0x36927c, ios 0x14341c {
		return m_musicVolume;
	}
	FMOD::ChannelGroup* getChannelGroup(int, bool) = win 0x55c70;
	float getEffectsVolume() = ios 0x14343c, imac 0x3eba70, m1 0x36929c {
		return m_sfxVolume;
	}
	gd::string getFMODStatus(int) = win 0x5ba00, m1 0x36c1ac, imac 0x3ef5e0, ios 0x1450f8;
	float getMeteringValue() = imac 0x3e7ec0, m1 0x366518;
	TodoReturn getMusicChannelID(int);
	unsigned int getMusicLengthMS(int channel) = win 0x5b0e0;
	TodoReturn getMusicTime(int);
	unsigned int getMusicTimeMS(int channel) = win 0x5b080;
	TodoReturn getNextChannelID();
	TodoReturn getTweenContainer(AudioTargetType);
	bool isChannelStopping(int);
	bool isEffectLoaded(gd::string path);
	bool isMusicPlaying(gd::string path, int p1) = win 0x58f20, imac 0x3ebb90, m1 0x369394;
	bool isMusicPlaying(int channel) = win 0x58e50, imac 0x3ebaa0, m1 0x3692b8;
	bool isSoundReady(FMOD::Sound* sound);
	TodoReturn lengthForSound(gd::string path);
	TodoReturn loadAndPlayMusic(gd::string path, unsigned int p1, int p2);
	TodoReturn loadAudioState(FMODAudioState&);
	void loadMusic(gd::string path, float speed, float p2, float volume, bool shouldLoop, int p5, int p6) = win 0x592b0, imac 0x3e5890, m1 0x364748;
	void loadMusic(gd::string path) {
		this->loadMusic(path, 1.f, 0.f, 1.f, false, 0, 0);
	}
	void pauseAllAudio() = imac 0x3e1ed0, m1 0x362018;
	void pauseAllEffects() {
		m_globalChannel->setPaused(true);
	}
	void pauseAllMusic() = win inline, imac 0x3ebae0, m1 0x3692f4, ios 0x143494 {
		for (auto& [id, channel] : m_musicChannels) {
			auto ch = this->channelForChannelID(channel.m_channelID);
			if (ch)
				ch->setPaused(true);
		}
	}
	TodoReturn pauseEffect(unsigned int);
	void pauseMusic(int musicChannel) = win inline {
		auto* channel = this->getActiveMusicChannel(musicChannel);
		if (channel)
			channel->setPaused(true);
	}
	TodoReturn pitchForIdx(int);
	void playEffect(gd::string path, float speed, float p2, float volume) = win 0x55f60, m1 0x366d7c, imac 0x3e8a40, ios 0x141c24;
	void playEffect(gd::string path) = win 0x55ee0, m1 0x366c7c, imac 0x3e8960;
	void playEffectAdvanced(gd::string path, float speed, float p2, float volume, float pitch, bool fastFourierTransform, bool reverb, int startMillis, int endMillis, int fadeIn, int fadeOut, bool loopEnabled, int p12, bool override, bool p14, int p15, int uniqueID, float minInterval, int sfxGroup) = win 0x56050, m1 0x364de4, imac 0x3e6190;
	TodoReturn playEffectAsync(gd::string path);
	void playMusic(gd::string path, bool shouldLoop, float fadeInTime, int channel) = win 0x59140, imac 0x3ebff0, m1 0x3697a8;
	FMODSound& preloadEffect(gd::string path) = win 0x583b0, imac 0x3e1580, m1 0x3616a4;
	void preloadEffectAsync(gd::string path);
	TodoReturn preloadMusic(gd::string path, bool p1, int p2);
	TodoReturn printResult(FMOD_RESULT);
	TodoReturn queuedEffectFinishedLoading(gd::string);
	TodoReturn queuePlayEffect(gd::string, float, float, float, float, bool, bool, int, int, int, int, bool, int, bool, int, float, int) = win 0x56a70;
	void queueStartMusic(gd::string audioFilename, float, float, float, bool, int ms, int, int, int, int, bool, int, bool) = win 0x59a40, m1 0x36a304, imac 0x3ecd20;
	TodoReturn registerChannel(FMOD::Channel*, int, int);
	void releaseRemovedSounds();
	void resumeAllAudio() = imac 0x3e1f20, m1 0x362064;
	void resumeAllEffects() = win inline, imac 0x3eb610, m1 0x368fcc {
		m_globalChannel->setPaused(false);
	}
	void resumeAllMusic() = win 0x58ec0, imac 0x3ebb30, m1 0x369340;
	void resumeAudio() = win inline, imac 0x3e1d90, m1 0x361edc {
		this->start();
	}
	void resumeEffect(unsigned int) {}
	void resumeMusic(int musicChannel) = win inline {
		auto* channel = this->getActiveMusicChannel(musicChannel);
		if (channel)
			channel->setPaused(false);
	}
	TodoReturn reverbToString(FMODReverbPreset);
	TodoReturn saveAudioState(FMODAudioState&) = win 0x54a70;
	void setBackgroundMusicVolume(float volume) = win inline, imac 0x3eba40, m1 0x369284, ios 0x143424 {
		m_musicVolume = volume;
		if (m_backgroundMusicChannel) m_backgroundMusicChannel->setVolume(volume);
	}
	void setChannelPitch(int, AudioTargetType, float);
	void setChannelVolume(int, AudioTargetType, float) = imac 0x3e7d60;
	void setChannelVolumeMod(int, AudioTargetType, float) = win 0x580d0;
	void setEffectsVolume(float volume) = win inline, imac 0x3eba80, m1 0x3692a4 {
		m_sfxVolume = volume;
		if (m_globalChannel) m_globalChannel->setVolume(volume);
	}
	void setMusicTimeMS(unsigned int ms, bool, int channel) = win 0x5af40, m1 0x365984, imac 0x3e7130;
	void setup() = win 0x52d40, m1 0x36103c, imac 0x3e0e30, ios 0x13e5f0;
	void setupAudioEngine() = win 0x53220, imac 0x3e1270;
	void start() = win 0x54400;
	TodoReturn startMusic(int, int, int, int, bool, int);
	void stop();
	void stopAllEffects() = win 0x58a00, imac 0x3e2040, m1 0x362154, ios 0x13f128;
	void stopAllMusic() = win inline, m1 0x362440, imac 0x3e2820, ios 0x13f1d4 {
		if (m_backgroundMusicChannel) m_backgroundMusicChannel->stop();
		m_audioState.m_unkMapIntFloat7.clear();
		m_audioState.m_unkMapIntFloat8.clear();
		m_audioState.m_unkMapIntFloat9.clear();
	}
	TodoReturn stopAndGetFade(FMOD::Channel*);
	TodoReturn stopAndRemoveMusic(int);
	void stopChannel(FMOD::Channel*, bool, float) = win 0x57960;
	TodoReturn stopChannel(int, AudioTargetType, bool, float);
	TodoReturn stopChannel(int);
	TodoReturn stopChannelTween(int, AudioTargetType, AudioModType);
	TodoReturn stopChannelTweens(int, AudioTargetType);
	TodoReturn stopMusic(int);
	TodoReturn stopMusicNotInSet(std::unordered_set<int, std::hash<int>, std::equal_to<int>, std::allocator<int> >&);
	TodoReturn storeEffect(FMOD::Sound* sound, gd::string path) = win 0x58660;
	TodoReturn swapMusicIndex(int, int);
	TodoReturn testFunction(int);
	TodoReturn triggerQueuedMusic(FMODQueuedMusic);
	TodoReturn unloadAllEffects() = win 0x58bf0;
	TodoReturn unloadEffect(gd::string path);
	TodoReturn unregisterChannel(int);
	void updateBackgroundFade();
	TodoReturn updateChannel(int, AudioTargetType, AudioModType, float, float);
	TodoReturn updateChannelTweens(float) = imac 0x3e3cb0;
	void updateMetering();
	void updateQueuedEffects() = win 0x59cd0;
	void updateQueuedMusic();
	void updateReverb(FMODReverbPreset, bool) = win 0x53580, imac 0x3e1890;
	void updateTemporaryEffects() = win 0x5a220, imac 0x3e3210;
	TodoReturn waitUntilSoundReady(FMOD::Sound*);

	virtual void update(float) = win 0x54510, m1 0x362540, imac 0x3e2ac0, ios 0x13f210;

	// not sure on the name, the system is quite confusing
	gd::unordered_map<int, FMODMusic> m_musicChannels;
	gd::unordered_map<gd::string, FMODMusic> m_unkMap180;
	gd::unordered_set<gd::string> m_unkMap1c0;
	float m_musicVolume;
	float m_sfxVolume;
	int m_unusedInt164;
	int m_unusedInt168;
	float m_pulse1;
	float m_pulse2;
	float m_pulse3;
	int m_pulseCounter;
	bool m_metering;
	FMOD::ChannelGroup* m_backgroundMusicChannel;
	FMOD::System* m_system;
	FMOD::DSP* m_mainDSP;
	FMOD::DSP* m_globalChannelDSP;
	FMOD::ChannelGroup* m_globalChannel;
	FMOD::ChannelGroup* m_channelGroup2;
	FMOD_RESULT m_lastResult;
	int m_sampleRate;
	bool m_reducedQuality;
	bool m_unkBool1a1;
	int m_musicOffset;
	bool m_unkBool1a8;
	int m_unkInt1ac;
	FMODAudioState m_audioState;
	gd::vector<FMOD::Sound*> m_unkSoundVector;
	gd::unordered_map<int, FMOD::DSP*> m_unkDSPMap384;
	gd::unordered_map<int, FMOD::Channel*> m_channelIDToChannel;
	gd::unordered_set<int> m_unkIntSet3bc;
	FMODReverbPreset m_reverbPreset;
	gd::unordered_map<int, int> m_unkMapIntInt3dc;
	gd::unordered_map<int, int> m_unkMapIntInt3f8;
	gd::unordered_map<int, gd::string> m_unkMapIntString414;
	gd::vector<FMODQueuedEffect> m_queuedEffects;
	gd::unordered_map<gd::string, FMOD::Sound*> m_unkMapStringSound43c;
	gd::unordered_map<int, FMOD::ChannelGroup*> m_unkMapIntChannelGroup458;
	gd::unordered_map<int, FMOD::ChannelGroup*> m_unkMapIntChannelGroup474;
	int m_unkInt490;
	int m_unkInt494;
	int m_unkInt498;
	int m_unkInt49c;
	int m_unkInt4a0;
	int m_unkInt4a4;
	int m_unkInt4a8;
	int m_unkInt4ac;
}

[[link(android)]]
class FMODAudioState {
	// ~FMODAudioState();
	// FMODAudioState();

	float m_unkFloat1;
	float m_unkFloat2;
	gd::map<std::pair<int,int>,FMODSoundTween> m_unkMapPairIntIntFMODSoundTween1;
	gd::map<std::pair<int,int>,FMODSoundTween> m_unkMapPairIntIntFMODSoundTween2;
	gd::map<std::pair<int,int>,FMODSoundTween> m_unkMapPairIntIntFMODSoundTween3;
	gd::unordered_map<int,float> m_unkMapIntFloat1;
	gd::unordered_map<int,float> m_unkMapIntFloat2;
	gd::unordered_map<int,float> m_unkMapIntFloat3;
	gd::unordered_map<int,float> m_unkMapIntFloat4;
	gd::unordered_map<int,float> m_unkMapIntFloat5;
	gd::unordered_map<int,float> m_unkMapIntFloat6;
	gd::unordered_map<int,float> m_unkMapIntFloat7;
	gd::unordered_map<int,float> m_unkMapIntFloat8;
	gd::unordered_map<int,float> m_unkMapIntFloat9;
	gd::unordered_map<int,float> m_unkMapIntFloat10;
	gd::unordered_map<int,FMODQueuedMusic> m_unkMapIntFMODQueuedMusic1;
	gd::unordered_map<int,FMODQueuedMusic> m_unkMapIntFMODQueuedMusic2;
	gd::unordered_map<int,FMODSoundState> m_unkMapIntFMODSoundState;
	int64_t m_unkInt1;
}

[[link(android)]]
class FMODLevelVisualizer : cocos2d::CCNode {
	// virtual ~FMODLevelVisualizer();

	static FMODLevelVisualizer* create() = win 0x28c5d0, imac 0x2ac1c0, m1 0x24d2e4;

	void updateVisualizer(float, float, float) = win 0x28cb10, imac 0x2ac670, m1 0x24d7dc;

	virtual bool init() = imac 0x2ac230, m1 0x24d36c, ios 0x2f1ba0;

	float m_width;
}

class FMODMusic {
	int m_channelID;
	void* m_unk; // something allocated in fmod, dont know which class though
	gd::string m_filePath;
	// there might be other things, hard to know the size
}

[[link(android)]]
class FollowRewardPage : FLAlertLayer, FLAlertLayerProtocol, GameRateDelegate, RewardedVideoDelegate {
	// virtual ~FollowRewardPage();

	static FollowRewardPage* create() = win 0x135ab0, m1 0x39bfcc, imac 0x4283d0;

	void onClose(cocos2d::CCObject* sender) = win 0x82fc0, m1 0x39cfd8, imac 0x429630;
	void onRewardedVideo(cocos2d::CCObject* sender) = m1 0x39da94, imac 0x42a170;
	void onSpecialItem(cocos2d::CCObject* sender) = win 0x137a40, m1 0x39d014, imac 0x429660;
	void switchToOpenedState(CCMenuItemSpriteExtra*) = win 0x138be0, m1 0x39d668, imac 0x429d50;

	virtual bool init() = win 0x135bd0, m1 0x39c0dc, imac 0x428540, ios 0x42d67c;
	virtual void registerWithTouchDispatcher() = win 0x41750, m1 0x39e0c0, imac 0x42a7f0, ios 0x42efe0;
	virtual void keyBackClicked() = win 0x82ff0, m1 0x39e044, imac 0x42a780, ios 0x42ef64;
	virtual void show() = win 0x84fb0, m1 0x39de2c, imac 0x42a550, ios 0x42ed5c;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x138cc0, m1 0x39dfb0, imac 0x42a6d0, ios 0x42eed0;
	virtual void rewardedVideoFinished() = win 0x137a30, m1 0x39de1c, imac 0x42a530, ios 0x42ed4c;
	virtual void updateRate() = win 0x137640, m1 0x39d754, imac 0x429e20, ios 0x42e9f8;

	cocos2d::CCArray* m_chests;
	bool m_videoPlaying;
}

[[link(android)]]
class FontObject : cocos2d::CCObject {
	// virtual ~FontObject();
	FontObject() {}

	static FontObject* createWithConfigFile(char const* p0, float p1) = win inline, m1 0x1cb140, imac 0x21aa40 {
		auto ret = new FontObject();
		if (ret->initWithConfigFile(p0, p1)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}
	int getFontWidth(int p0) = win inline, m1 0x1cba44, imac 0x21b480, ios 0x30470c {
		return m_hugeIntArray[p0];
	}
	bool initWithConfigFile(char const* p0, float p1) = win inline, m1 0x1cb1b4, imac 0x21aab0 {
		this->parseConfigFile(p0, p1);
		return true;
	}
	void parseConfigFile(char const*, float) = win 0x3a7d0, m1 0x1cb1cc, imac 0x21aac0;

	std::array<int, 300> m_hugeIntArray;
}

[[link(android)]]
class ForceBlockGameObject : EffectGameObject {
	// virtual ~ForceBlockGameObject();

	static ForceBlockGameObject* create(char const*);

	TodoReturn calculateForceToTarget(GameObject*);
	bool init(char const*);

	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x19b710, imac 0x1e63c0, ios 0x39fc94;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x19aa80, imac 0x1e5440, ios 0x39f8ec;
}

[[link(android)]]
class FRequestProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, FriendRequestDelegate {
	// virtual ~FRequestProfilePage();

	static FRequestProfilePage* create(bool) = imac 0x79b710;

	TodoReturn deleteSelected();
	bool init(bool) = win 0x139500, imac 0x79b8c0;
	bool isCorrect(char const*);
	void loadPage(int);
	void onClose(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onSentRequests(cocos2d::CCObject* sender);
	void onToggleAllObjects(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	void setupCommentsBrowser(cocos2d::CCArray*) = win 0x13b100;
	TodoReturn untoggleAll();
	TodoReturn updateLevelsLabel();
	TodoReturn updatePageArrows();

	virtual void registerWithTouchDispatcher() = m1 0x6a53c0, imac 0x79d050, ios 0x1c1e10;
	virtual void keyBackClicked() = win 0x13a960, m1 0x6a53b4, imac 0x79d020, ios 0x1c1e04;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x13a740, m1 0x6a52a8, imac 0x79cf30, ios 0x1c1d08;
	virtual void onClosePopup(UploadActionPopup*) = win 0x13a970, m1 0x6a53f8, imac 0x79d090, ios 0x1c1e48;
	virtual void uploadActionFinished(int, int) = win 0x13a9c0, m1 0x6a5480, imac 0x79d100, ios 0x1c1eb8;
	virtual void uploadActionFailed(int, int) = win 0x13ab30, m1 0x6a563c, imac 0x79d2a0, ios 0x1c1fa0;
	virtual TodoReturn loadFRequestsFinished(cocos2d::CCArray*, char const*) = win 0x13b2a0, m1 0x6a5a00, imac 0x79d660, ios 0x1c2240;
	virtual TodoReturn loadFRequestsFailed(char const*, GJErrorCode) = win 0x13b320, m1 0x6a5b0c, imac 0x79d750, ios 0x1c22c4;
	virtual void setupPageInfo(gd::string, char const*) = win 0x13b3c0, m1 0x6a5c6c, imac 0x79d8a0, ios 0x1c2394;
	virtual TodoReturn forceReloadRequests(bool) = win 0x13b3a0, m1 0x6a5c38, imac 0x79d860, ios 0x1c2360;
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
	bool init(GJFriendRequest*) = imac 0x29fdd0;
	void loadFromGJFriendRequest(GJFriendRequest*);
	void onAccept(cocos2d::CCObject* sender);
	void onBlock(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onRemove(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = win 0x284dd0, m1 0x243134, imac 0x2a1410, ios 0x2ea9fc;
	virtual void uploadActionFinished(int, int) = win 0x284de0, m1 0x243210, imac 0x2a1500, ios 0x2eaa08;
	virtual void uploadActionFailed(int, int) = win 0x284f90, m1 0x243404, imac 0x2a16d0, ios 0x2eab3c;
	virtual void onClosePopup(UploadActionPopup*) = win 0x285050, m1 0x24356c, imac 0x2a1820, ios 0x2eabd4;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2850b0, m1 0x2436e8, imac 0x2a1990, ios 0x2eac4c;
}

[[link(android)]]
class FriendsProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, UserListDelegate {
	// virtual ~FriendsProfilePage();

	static FriendsProfilePage* create(UserListType) = win 0x13b6e0, imac 0x6644e0, m1 0x580834, ios 0x1e2744;

	bool init(UserListType type) = win 0x13b830, imac 0x664670, m1 0x58095c, ios 0x1e2824;
	void onBlocked(cocos2d::CCObject* sender) = win 0x13c620, imac 0x664e20, m1 0x58107c;
	void onClose(cocos2d::CCObject* sender) = win 0x13c6b0, imac 0x664d60, m1 0x580fc4;
	void onUpdate(cocos2d::CCObject* sender) = win 0x13c500, imac 0x664eb0, m1 0x581108;
	void setupUsersBrowser(cocos2d::CCArray* users, UserListType type) = win 0x13bf40, imac 0x664f20, m1 0x58116c;

	virtual void registerWithTouchDispatcher() = win 0x41750, m1 0x581780, imac 0x665540, ios 0x1e34dc;
	virtual void keyBackClicked() = win 0x13c770, m1 0x581774, imac 0x665510, ios 0x1e34d0;
	virtual void getUserListFinished(cocos2d::CCArray*, UserListType) = win 0x13c2a0, m1 0x5813f0, imac 0x665190, ios 0x1e3274;
	virtual void getUserListFailed(UserListType, GJErrorCode) = win 0x13c3f0, m1 0x581514, imac 0x6652d0, ios 0x1e3384;
	virtual void userListChanged(cocos2d::CCArray*, UserListType) = win 0x89f80, m1 0x581644, imac 0x6653e0, ios 0x1e3424;
	virtual void forceReloadList(UserListType) = win 0x13c460, m1 0x581660, imac 0x665420, ios 0x1e3440;

	UserListType m_type;
	cocos2d::CCLabelBMFont* m_noInternet;
	cocos2d::CCLabelBMFont* m_totalFriends;
	GJCommentListLayer* m_listLayer;
	LoadingCircle* m_circle;
	void* m_unk532;
	cocos2d::CCArray* m_users;
	CCMenuItemSpriteExtra* m_refreshBtn;
}

[[link(android)]]
class GameCell : TableViewCell {
	// virtual ~GameCell();
	GameCell(char const*, float, float);

	void loadFromString(gd::string);
	void onTouch(cocos2d::CCObject* sender);
	void updateBGColor(int);

	virtual bool init() = m1 0x29e8cc, imac 0x30c840, ios 0x1d9fb0;
	virtual void draw() = win 0x3bda0, m1 0x29e9a0, imac 0x30c900, ios 0x1da058;
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

	static GameLevelManager* sharedState() = win 0x13e1e0, m1 0x478590, imac 0x5233f0, ios 0x8b5b8;
	static GameLevelManager* get() {
		return GameLevelManager::sharedState();
	}

	void acceptFriendRequest(int, int) = imac 0x55c610;
	int accountIDForUserID(int userID) = imac 0x5359a0, m1 0x488ce0;
	void addDLToActive(char const*) = win 0x1445c0, m1 0x4919e4, imac 0x53f890;
	bool areGauntletsLoaded();
	void banUser(int);
	void blockUser(int);
	void cleanupDailyLevels() = win 0x1450c0, m1 0x492c64, imac 0x540c30;
	bool createAndGetAccountComments(gd::string, int);
	bool createAndGetCommentsFull(gd::string, int, bool);
	bool createAndGetLevelComments(gd::string, int);
	cocos2d::CCArray* createAndGetLevelLists(gd::string) = imac 0x538900, m1 0x48b39c, win 0x1420d0;
	cocos2d::CCArray* createAndGetLevels(gd::string) = imac 0x535c60, m1 0x488f5c;
	cocos2d::CCArray* createAndGetMapPacks(gd::string) = win 0x142370;
	cocos2d::CCArray* createAndGetScores(gd::string, GJScoreType);
	GJGameLevel* createNewLevel() = win 0x13fe60, m1 0x486b68, imac 0x5334d0;
	GJLevelList* createNewLevelList() = win 0x140910, m1 0x4877e8, imac 0x534200;
	TodoReturn createPageInfo(int, int, int);
	GJSmartTemplate* createSmartTemplate();
	void dataLoaded(DS_Dictionary*) = win 0x145db0, imac 0x542370, m1 0x4941e4;
	void deleteAccountComment(int, int);
	void deleteComment(int, CommentType, int);
	bool deleteFriendRequests(int, cocos2d::CCArray*, bool);
	void deleteLevel(GJGameLevel*) = win 0x140640, imac 0x533f10, m1 0x4874e4;
	void deleteLevelComment(int, int);
	void deleteLevelList(GJLevelList*) = win 0x140ef0, m1 0x487d30, imac 0x534810;
	bool deleteSentFriendRequest(int) = imac 0x55bc60, m1 0x4aa8d0;
	void deleteServerLevel(int) = win 0x14eb70, imac 0x54e760, m1 0x49e9a0;
	void deleteServerLevelList(int);
	void deleteSmartTemplate(GJSmartTemplate*);
	void deleteUserMessages(GJUserMessage* message, cocos2d::CCArray* messages, bool isSender) = win 0x155680, m1 0x4a5858, imac 0x5566e0;
	void downloadLevel(int, bool) = win 0x14c650, imac 0x54b6c0, m1 0x49bed4;
	void downloadUserMessage(int, bool);
	void encodeDataTo(DS_Dictionary*) = win 0x1458b0, imac 0x541e10, m1 0x493d1c;
	void firstSetup();
	void followUser(int);
	GJFriendRequest* friendRequestFromAccountID(int);
	void friendRequestWasRemoved(int, bool);
	char const* getAccountCommentKey(int p0, int p1) {
		return cocos2d::CCString::createWithFormat("%i_%i", p0, p1)->getCString();
	}
	void getAccountComments(int accountID, int page, int total) = imac 0x5577e0;
	int getActiveDailyID(GJTimedLevelType) = imac 0x560ec0, m1 0x4af82c;
	GJSmartTemplate* getActiveSmartTemplate();
	cocos2d::CCArray* getAllSmartTemplates();
	cocos2d::CCDictionary* getAllUsedSongIDs();
	gd::string getBasePostString() = win 0x146db0, imac 0x543ce0, m1 0x495830;
	bool getBoolForKey(char const* key) = win inline, imac 0x561e50, m1 0x4b0870 {
		return m_searchFilters->valueForKey(key)->boolValue();
	}
	gd::string getCommentKey(int ID, int page, int mode, CommentKeyType keytype) {
		return cocos2d::CCString::createWithFormat("comment_%i_%i_%i_%i", ID, page, mode, (int) keytype)->getCString();
	}
	cocos2d::CCArray* getCompletedLevels(bool) = win 0x142d40, imac 0x53c430, m1 0x48e9e0;
	int getDailyID(GJTimedLevelType) = imac 0x560e90, m1 0x4af7f8;
	double getDailyTimer(GJTimedLevelType) = imac 0x560ef0, m1 0x4af860;
	char const* getDeleteCommentKey(int, int, int);
	char const* getDeleteMessageKey(int, bool);
	char const* getDescKey(int);
	gd::string getActiveDailyID(bool, bool, bool, bool, bool, bool, bool, bool);
	char const* getDiffKey(int);
	bool getDiffVal(int);
	gd::string getFolderName(int, bool)
	 = win 0x1453c0, m1 0x4935bc, imac 0x541610;
	char const* getFriendRequestKey(bool, int);
	void getFriendRequests(bool, int, int);
	char const* getGauntletKey(int);
	void getGauntletLevels(int);
	void getGauntlets();
	void getGauntletsearchKey(int);
	void getGJChallenges() = win 0x15fee0, m1 0x4aee38, imac 0x560470;
	void getGJDailyLevelState(GJTimedLevelType) = win 0x161140, imac 0x560910, m1 0x4af28c;
	void getGJRewards(int) = win 0x15eaa0, m1 0x4ae6d4, imac 0x55fc50;
	void getGJUserInfo(int) = win 0x153fe0, m1 0x4a36d8, imac 0x5542e0;
	int getHighestLevelOrder() = imac 0x53c1a0, m1 0x48e784;
	int getIntForKey(char const* key) = win inline, imac 0x561c80, m1 0x4b0678 {
		return m_searchFilters->valueForKey(key)->intValue();
	}
	void getLeaderboardScores(char const*) = win 0x151ca0, imac 0x552110, m1 0x4a1918;
	gd::string getLengthStr(bool, bool, bool, bool, bool, bool) = imac 0x545f70, m1 0x497484;
	const char *getLenKey(int len);
	bool getLenVal(int);
	void getLevelComments(int ID, int page, int total, int mode, CommentKeyType keytype) = win 0x155fd0, imac 0x557010, m1 0x4a60f0;
	const char* getLevelDownloadKey(int levelID, bool isGauntlet){
		return cocos2d::CCString::createWithFormat("%i_%i", levelID, isGauntlet)->getCString();
	}
	const char* getLevelKey(int levelID) {
		return cocos2d::CCString::createWithFormat("%i", levelID)->getCString();
	}
	void getLevelLeaderboard(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = win 0x1527e0, imac 0x5529f0, m1 0x4a2140;
	char const* getLevelLeaderboardKey(int, LevelLeaderboardType, LevelLeaderboardMode);
	char const* getLevelListKey(int);
	void getLevelLists(GJSearchObject*) = win 0x14af50, imac 0x549df0, m1 0x49a918;
	void getLevelSaveData() = win 0x149640, m1 0x498ffc, imac 0x548020, ios 0xa04b0;
	char const* getLikeAccountItemKey(LikeItemType, int, bool, int);
	char const* getLikeItemKey(LikeItemType, int, bool, int);
	GJGameLevel* getLocalLevel(int);
	GJGameLevel* getLocalLevelByName(gd::string);
	GJLevelList* getAllUsedSongIDs(int);
	int getLowestLevelOrder() = imac 0x53c1e0, m1 0x48e7c0;
	GJGameLevel* getMainLevel(int levelID, bool dontGetLevelString) = win 0x13fa40, ios 0x94cbc, m1 0x486454, imac 0x532cb0;
	const char* getMapPackKey(int pack);
	void getMapPacks(GJSearchObject*) = win 0x149ce0, imac 0x5482b0;
	char const* getMessageKey(int);
	char const* getMessagesKey(bool, int);
	void getNews();
	int getNextFreeTemplateID();
	gd::string getNextLevelName(gd::string);
	void getOnlineLevels(GJSearchObject*) = win 0x148470, m1 0x497fc0, imac 0x546bd0;
	char const* getPageInfo(char const*);
	char const* getPostCommentKey(int);
	const char *getRateStarsKey(int key);
	char const* getReportKey(int);
	GJGameLevel* getSavedDailyLevel(int) = win 0x143740, m1 0x490530, imac 0x53e2d0, ios 0x9b21c;
	GJGameLevel* getSavedDailyLevelFromLevelID(int) = imac 0x53e5a0, m1 0x49080c;
	GJMapPack* getSavedGauntlet(int);
	GJGameLevel* getSavedGauntletLevel(int) = imac 0x53e3c0, m1 0x490624;
	GJGameLevel* getSavedLevel(GJGameLevel*);
	GJGameLevel* getSavedLevel(int) = win 0x143670, imac 0x53e4b0, m1 0x490718, ios 0x9b324;
	GJLevelList* getSavedLevelList(int) = m1 0x49af28, imac 0x54a550, win 0x14b6d0;
	cocos2d::CCArray* getSavedLevelLists(int);
	cocos2d::CCArray* getSavedLevels(bool, int) = win 0x1428f0, imac 0x53bed0, m1 0x48e4e0;
	GJMapPack* getSavedMapPack(int) = imac 0x5485f0, m1 0x4995e4;
	cocos2d::CCScene* getSearchScene(char const*) = imac 0x53fd70, m1 0x491f18;
	int getSplitIntFromKey(char const*, int);
	cocos2d::CCArray* getStoredLevelComments(char const*) = win 0x157b80, m1 0x4a8244, imac 0x559340;
	cocos2d::CCArray* getStoredOnlineLevels(char const*) = win 0x144320, m1 0x4914d8, imac 0x53f3e0;
	cocos2d::CCArray* getStoredUserList(UserListType) = m1 0x4abfa8, imac 0x55d490;
	GJUserMessage* getStoredUserMessage(int);
	GJUserMessage* getStoredUserMessageReply(int);
	double getTimeLeft(char const*, float) = win 0x144970, imac 0x53fa50, m1 0x491bd8;
	void getTopArtists(int page, int total);
	const char* getTopArtistsKey(int page){
		return cocos2d::CCString::createWithFormat("topArtists_%i", page)->getCString();
	}
	char const* getUploadMessageKey(int);
	char const* getUserInfoKey(int);
	void getUserList(UserListType) = win 0x15c5e0, m1 0x4aca14, imac 0x55df10;
	void getUserMessages(bool, int, int);
	void getUsers(GJSearchObject*) = win 0x153920, m1 0x4a32f0, imac 0x553eb0;
	void gotoLevelPage(GJGameLevel*) = win 0x143f60, m1 0x490f94, imac 0x53eee0;
	void handleIt(bool, gd::string, gd::string, GJHttpType) = win 0x13e4c0, imac 0x523b00, m1 0x478b88;
	void handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	void handleItND(cocos2d::CCNode*, void*);
	bool hasDailyStateBeenLoaded(GJTimedLevelType) = imac 0x560e50, m1 0x4af7ac;
	bool hasDownloadedLevel(int);
	bool hasDownloadedList(int);
	bool hasLikedAccountItem(LikeItemType, int, bool, int) = imac 0x55fa60, m1 0x4ae4b0;
	bool hasLikedItem(LikeItemType, int, bool, int) = win 0x15e9c0, imac 0x55f970, m1 0x4ae3b0;
	bool hasLikedItemFullCheck(LikeItemType, int, int) = win 0x15e930, imac 0x55f170, m1 0x4adaf4;
	bool hasRatedDemon(int) = win 0x14eaa0, imac 0x54e670, m1 0x49e8a8;
	bool hasRatedLevelStars(int) = win 0x14e9d0, imac 0x54e2c0, m1 0x49e4e8;
	bool hasReportedLevel(int) = win 0x1623f0, m1 0x4afe74, imac 0x561500;
	void invalidateMessages(bool, bool) = win 0x155e80, imac 0x556c70, m1 0x4a5da8;
	void invalidateRequests(bool, bool) = win 0x15d1b0, imac 0x55c290, m1 0x4aae8c;
	void invalidateUserList(UserListType, bool) = win 0x15ce80, imac 0x55e1d0, m1 0x4acce8;
	bool isDLActive(char const* tag) = win 0x144500, m1 0x4918fc, imac 0x53f7b0;
	bool isFollowingUser(int) = win 0x1452f0, imac 0x541020, m1 0x492fc8, ios 0x9cb54;
	bool isTimeValid(char const*, float) = win 0x144830, imac 0x53f4d0, m1 0x4915d8;
	bool isUpdateValid(int id) = win inline, imac 0x54d630, m1 0x49d9dc {
		const char* str = cocos2d::CCString::createWithFormat("%i", id)->getCString();

		return this->isTimeValid(str, 3600.f);
	}
	int itemIDFromLikeKey(char const*);
	bool keyHasTimer(char const*);
	int levelIDFromCommentKey(char const*);
	int levelIDFromPostCommentKey(char const*);
	int likeFromLikeKey(char const*);
	void likeItem(LikeItemType, int, bool, int) = win 0x15d8b0;
	void limitSavedLevels() = win 0x144b70, imac 0x540710, m1 0x4927c8;
	void makeTimeStamp(char const*) = win 0x144730, imac 0x53f2c0, m1 0x49139c;
	void markItemAsLiked(LikeItemType, int, bool, int);
	void markLevelAsDownloaded(int) = win 0x14dd80;
	void markLevelAsRatedDemon(int);
	void markLevelAsRatedStars(int);
	void markLevelAsReported(int);
	void markListAsDownloaded(int id) = win inline {
		this->markLevelAsDownloaded(-id);
	}
	void messageWasRemoved(int, bool);
	void onAcceptFriendRequestCompleted(gd::string response, gd::string tag);
	void onBanUserCompleted(gd::string response, gd::string tag);
	void onBlockUserCompleted(gd::string response, gd::string tag);
	void onDeleteCommentCompleted(gd::string response, gd::string tag) = imac 0x52a5d0;
	void onDeleteFriendRequestCompleted(gd::string response, gd::string tag);
	void onDeleteServerLevelCompleted(gd::string response, gd::string tag) = imac 0x528090;
	void onDeleteServerLevelListCompleted(gd::string response, gd::string tag) = imac 0x532780;
	void onDeleteUserMessagesCompleted(gd::string response, gd::string tag);
	void onDownloadLevelCompleted(gd::string response, gd::string tag) = imac 0x527c00, m1 0x47c25c;
	void onDownloadUserMessageCompleted(gd::string response, gd::string tag);
	void onGetAccountCommentsCompleted(gd::string response, gd::string tag);
	void onGetFriendRequestsCompleted(gd::string response, gd::string tag) = win 0x159b50;
	void onGetGauntletsCompleted(gd::string response, gd::string tag);
	void onGetGJChallengesCompleted(gd::string response, gd::string tag) = win 0x160330, imac 0x52f7e0, m1 0x4835e0;
	void onGetGJDailyLevelStateCompleted(gd::string response, gd::string tag) = win 0x1614b0, imac 0x5305e0, m1 0x4841cc;
	void onGetGJRewardsCompleted(gd::string response, gd::string tag);
	void onGetGJUserInfoCompleted(gd::string response, gd::string tag);
	void onGetLeaderboardScoresCompleted(gd::string response, gd::string tag) = win 0x152370, imac 0x528670, m1 0x47cce0;
	void onGetLevelCommentsCompleted(gd::string response, gd::string tag) = imac 0x528a70;
	void onGetLevelLeaderboardCompleted(gd::string response, gd::string tag);
	void onGetLevelListsCompleted(gd::string response, gd::string tag) = imac 0x531cd0, m1 0x48574c, win 0x14b1e0;
	void onGetLevelSaveDataCompleted(gd::string response, gd::string tag);
	void onGetMapPacksCompleted(gd::string response, gd::string tag) = win 0x149ef0;
	void onGetNewsCompleted(gd::string response, gd::string tag);
	void onGetOnlineLevelsCompleted(gd::string response, gd::string tag) = win 0x148cd0, imac 0x526020, m1 0x47aaec;
	void onGetTopArtistsCompleted(gd::string response, gd::string tag);
	void onGetUserListCompleted(gd::string response, gd::string tag);
	void onGetUserMessagesCompleted(gd::string response, gd::string tag);
	void onGetUsersCompleted(gd::string response, gd::string tag);
	void onLikeItemCompleted(gd::string response, gd::string tag) = imac 0x52a760;
	void onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = win 0x13e3d0, imac 0x523730, m1 0x478800;
	void onRateDemonCompleted(gd::string response, gd::string tag);
	void onRateStarsCompleted(gd::string response, gd::string tag) = imac 0x527f20;
	void onReadFriendRequestCompleted(gd::string response, gd::string tag);
	void onRemoveFriendCompleted(gd::string response, gd::string tag);
	void onReportLevelCompleted(gd::string response, gd::string tag);
	void onRequestUserAccessCompleted(gd::string response, gd::string tag);
	void onRestoreItemsCompleted(gd::string response, gd::string tag) = imac 0x52a910;
	void onSetLevelFeaturedCompleted(gd::string response, gd::string tag);
	void onSetLevelStarsCompleted(gd::string response, gd::string tag) = imac 0x5281f0;
	void onSubmitUserInfoCompleted(gd::string response, gd::string tag);
	void onSuggestLevelStarsCompleted(gd::string response, gd::string tag);
	void onUnblockUserCompleted(gd::string response, gd::string tag);
	void onUpdateDescriptionCompleted(gd::string response, gd::string tag);
	void onUpdateLevelCompleted(gd::string response, gd::string tag) = imac 0x527d90;
	void onUpdateUserScoreCompleted(gd::string response, gd::string tag) = imac 0x528370;
	void onUploadCommentCompleted(gd::string response, gd::string tag) = win 0x158540, imac 0x529610;
	void onUploadFriendRequestCompleted(gd::string response, gd::string tag);
	void onUploadLevelCompleted(gd::string response, gd::string tag) = win 0x147aa0, imac 0x525da0, m1 0x47a880;
	void onUploadLevelListCompleted(gd::string response, gd::string tag) = imac 0x532590;
	void onUploadUserMessageCompleted(gd::string response, gd::string tag);
	int pageFromCommentKey(char const*);
	void parseRestoreData(gd::string);
	void performNetworkTest() = ios 0x8b694;
	void ProcessHttpRequest(gd::string endpoint, gd::string params, gd::string tag, GJHttpType httpType) = win 0x13e230, imac 0x523940, m1 0x478a20;
	void processOnDownloadLevelCompleted(gd::string response, gd::string tag, bool) = win 0x14cbc0, imac 0x54c040, m1 0x49c744;
	void purgeUnusedLevels() = win 0x144e10, imac 0x540940, m1 0x4929cc;
	void rateDemon(int, int, bool);
	void rateStars(int, int);
	void readFriendRequest(int);
	TodoReturn removeDelimiterChars(gd::string, bool) = win 0x1626a0;
	void removeDLFromActive(char const*) = win 0x144680, imac 0x53f980, m1 0x491ae4;
	void removeFriend(int);
	void removeLevelDownloadedKeysFromDict(cocos2d::CCDictionary*);
	void removeUserFromList(int, UserListType);
	void reportLevel(int);
	void requestUserAccess();
	void resetAccountComments(int accountID) {
		for(int i = 0; i <= 1; i++) {
			auto key = getAccountCommentKey(accountID, i);
			if(getStoredOnlineLevels(key)) {
				m_storedLevels->removeObjectForKey(key);
			}
		}
	}
	void resetAllTimers();
	void resetCommentTimersForLevelID(int, CommentKeyType) = win 0x158ed0, imac 0x55a6d0, m1 0x4a9328;
	void resetDailyLevelState(GJTimedLevelType) = imac 0x560e10, m1 0x4af77c;
	void resetGauntlets();
    void resetStoredUserInfo(int id) = win inline, imac 0x554c00, m1 0x4a3f74 {
        m_storedUserInfo->removeObjectForKey(id);
    }
	void resetStoredUserList(UserListType);
	void resetTimerForKey(char const*) = win 0x144ac0;
	static cocos2d::CCDictionary* responseToDict(gd::string, bool) = win 0x1628d0, imac 0x538380, m1 0x48aeb8;
	void restoreItems();
	void saveFetchedLevelLists(cocos2d::CCArray* lists) = win inline, m1 0x48bca4, imac 0x539210 {
		for (int i = 0; i < lists->count(); i++) {
			this->saveLevelList(static_cast<GJLevelList*>(lists->objectAtIndex(i)));
		}
	}
	void saveFetchedLevels(cocos2d::CCArray*) = win 0x141e70, imac 0x538600, m1 0x48b144;
	void saveFetchedMapPacks(cocos2d::CCArray*);
	void saveGauntlet(GJMapPack*);
	void saveLevel(GJGameLevel*) = win 0x1438e0, imac 0x53E5F0, m1 0x490844;
	void saveLevelList(GJLevelList*) = win 0x14b7a0, m1 0x48bd08, imac 0x539270;
	void saveLocalScore(int, int, int);
	void saveMapPack(GJMapPack*);
	void setActiveSmartTemplate(GJSmartTemplate*);
	void setBoolForKey(bool value, char const* key) = win inline, m1 0x4b0760, imac 0x561d60 {
		m_searchFilters->setObject(cocos2d::CCString::createWithFormat("%i", (int)value), key);
	}
	void setDiffVal(int, bool) = win 0x1624c0;
	void setFolderName(int, gd::string, bool) = m1 0x493740, imac 0x541790;
	void setIntForKey(int value, char const* key) = win inline, m1 0x4b056c, imac 0x561b90 {
		m_searchFilters->setObject(cocos2d::CCString::createWithFormat("%i", value), key);
	}
	void setLenVal(int, bool) = win 0x1625b0;
	void setLevelFeatured(int, int, bool);
	void setLevelStars(int, int, bool);
	int specialFromLikeKey(char const*);
	void storeCommentsResult(cocos2d::CCArray*, gd::string, char const*);
	void storeDailyLevelState(int, int, GJTimedLevelType) = imac 0x560cf0;
	void storeFriendRequest(GJFriendRequest*);
	void storeSearchResult(cocos2d::CCArray* levels, gd::string pageInfo, char const* searchKey) = win 0x144110, imac 0x53f050, m1 0x491100;
	void storeUserInfo(GJUserScore*);
	void storeUserMessage(GJUserMessage*);
	void storeUserMessageReply(int, GJUserMessage*);
	void storeUserName(int userID, int accountID, gd::string userName) = win 0x141300, imac 0x5350e0, m1 0x4885f4;
	void storeUserNames(gd::string usernameString) = imac 0x534950, m1 0x487e98;
	void submitUserInfo();
	void suggestLevelStars(int, int, int);
	gd::string tryGetUsername(int) = win 0x141660, imac 0x5354a0, m1 0x4889e0;
	CommentType typeFromCommentKey(char const*);
	LikeItemType typeFromLikeKey(char const*);
	void unblockUser(int);
	void unfollowUser(int) = imac 0x541110;
	void updateDescription(int, gd::string);
	void updateLevel(GJGameLevel*) = imac 0x54d670;
	void updateLevelOrders() = m1 0x48e7fc, imac 0x53c220;
	void updateLevelRewards(GJGameLevel*) = win 0x1419b0, m1 0x488e90, imac 0x535b80;
	void updateSavedLevelList(GJLevelList*) = imac 0x54a230, m1 0x49ad18, win 0x14b880;
	void updateUsernames() = imac 0x540eb0, m1 0x492e9c;
	void updateUserScore() = win 0x14ffb0, imac 0x54f880, m1 0x49f9d0, ios 0xa4158;
	void uploadAccountComment(gd::string);
	void uploadComment(gd::string, CommentType, int, int);
	void uploadFriendRequest(int, gd::string);
	void uploadLevel(GJGameLevel*);
	void uploadLevelComment(int, gd::string, int);
	void uploadLevelList(GJLevelList*);
	void uploadUserMessage(int, gd::string, gd::string) = win 0x155010, imac 0x556070, m1 0x4a5270;
	int userIDForAccountID(int);
	GJUserScore* userInfoForAccountID(int) = imac 0x535980, m1 0x488cd4;
	gd::string userNameForUserID(int) = win 0x1414e0, imac 0x535320, m1 0x488848;
	void verifyLevelState(GJGameLevel*);
	gd::string writeSpecialFilters(GJSearchObject*) = win 0x1481b0, imac 0x5466e0, m1 0x497b60;

	virtual bool init() = win 0x13f890, m1 0x486344, imac 0x532b20, ios 0x94bac;

	gd::set<gd::string> m_queuedLists;
	cocos2d::CCDictionary* m_mainLevels;
	cocos2d::CCDictionary* m_searchFilters;
	cocos2d::CCDictionary* m_onlineLevels;
	cocos2d::CCDictionary* m_unkDict;
	cocos2d::CCDictionary* m_followedCreators;
	cocos2d::CCDictionary* m_favoriteLists;
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
	UploadPopupDelegate* m_uploadPopupDelegate;
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
	int m_mapPack;
	gd::string m_unkStr3;
	cocos2d::CCString* m_unkStr4;
	cocos2d::CCArray* m_smartTemplates;
	GJSmartTemplate* m_smartTemplate;
	bool m_testedNetwork;
}

[[link(android)]]
class GameLevelOptionsLayer : GJOptionsLayer{
    // virtual ~GameLevelOptionsLayer();

    static GameLevelOptionsLayer* create(GJGameLevel*) = win 0x28e750, m1 0x24edd8, imac 0x2ade70;

    bool init(GJGameLevel*) = m1 0x24ef94, imac 0x2ae0f0;

    virtual void setupOptions() = win 0x28e8b0, m1 0x24effc, imac 0x2ae150, ios 0x2f3180;
    virtual void didToggle(int) = win 0x28e930, m1 0x24f068, imac 0x2ae1c0, ios 0x2f31ec;

	GJGameLevel* m_level;
}

[[link(android), depends(UIButtonConfig)]]
class GameManager : GManager {
	virtual ~GameManager() = win 0x172770, imac 0x38ddc0, m1 0x316d38;
	// GameManager() = win 0x1721e0, ios 0x32eafc;

	static GameManager* get() {
		return GameManager::sharedState();
	}

	static GameManager* sharedState() = win 0x172b30, imac 0x3785a0, m1 0x303c64, ios 0x3229d4;

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
	int activeIconForType(IconType) = win 0x178bf0, m1 0x30c588, imac 0x382430;
	TodoReturn addCustomAnimationFrame(int, int, gd::string, gd::string);
	TodoReturn addDuplicateLastFrame(int);
	TodoReturn addGameAnimation(int, int, float, gd::string, gd::string, int);
	TodoReturn addIconDelegate(cocos2d::CCObject*, int);
	void addNewCustomObject(gd::string str) = win 0x17a7c0, imac 0x385ed0, m1 0x30fc34, ios 0x329f58;
	TodoReturn addToGJLog(cocos2d::CCString*);
	void applicationDidEnterBackground() = ios 0x32de70;
	TodoReturn applicationWillEnterForeground() = win 0x17fff0;
	TodoReturn calculateBaseKeyForIcons();
	TodoReturn canShowRewardedVideo();
	TodoReturn checkSteamAchievementUnlock() = imac 0x37b8f0, m1 0x306d78;
	TodoReturn checkUsedIcons() = win 0x17b1a0, imac 0x3807d0;
	TodoReturn claimItemsResponse(gd::string);
	TodoReturn clearGJLog();
	cocos2d::ccColor3B colorForIdx(int) = win 0x1784b0, m1 0x30b4e0, imac 0x381490, ios 0x327988;
	TodoReturn colorForPos(int);
	TodoReturn colorKey(int, UnlockType);
	bool completedAchievement(gd::string) = win 0x174480, imac 0x37aa20, m1 0x305f20;
	int countForType(IconType) = win 0x178d60, m1 0x30c648, imac 0x3826a0;
	TodoReturn defaultFrameForAnimation(int);
	TodoReturn defaultYOffsetForBG2(int);
	TodoReturn didExitPlayscene() = imac 0x38ccf0, m1 0x315cb0;
	void doQuickSave();
	TodoReturn dpadConfigToString(UIButtonConfig&) = win 0x17cde0, imac 0x388940, m1 0x311f0c;
	TodoReturn eventUnlockFeature(char const*);
	void fadeInMenuMusic() = win 0x173140, imac 0x378e90, m1 0x3045f8, ios 0x323038;
	void fadeInMusic(gd::string) = win 0x173230, ios 0x3230c4, imac 0x378f60, m1 0x3046f0;
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

	const char* getBGTexture(int id) = imac 0x3853b0, m1 0x30f070, ios 0x329838, win inline {
		return cocos2d::CCString::createWithFormat(
			"game_bg_%02d_001.png",
			std::clamp(id, 1, 59)
		)->getCString();
	}

	void getFontFile(int) = imac 0x384950, m1 0x30e59c;
	TodoReturn getFontTexture(int);
	bool getGameVariable(char const*) = win 0x17a0e0, imac 0x378d40, m1 0x304480, ios 0x322f5c;
	TodoReturn getGTexture(int) = ios 0x3298d0, imac 0x385450;
	int getIconRequestID() = ios 0x328cb8 {
		return m_iconRequestID++;
	}
	int getIntGameVariable(char const*) = win 0x17a6e0, imac 0x385ba0, m1 0x30f8f0, ios 0x329d2c;
	gd::string getMenuMusicFile() = win 0x172db0, ios 0x322c64, imac 0x378890, m1 0x303f34;
	TodoReturn getMGTexture(int);
	TodoReturn getNextUniqueObjectKey();
	TodoReturn getNextUsedKey(int, bool);
	TodoReturn getOrderedCustomObjectKeys() = imac 0x385d40;
	TodoReturn getPracticeMusicFile();
	bool getUGV(char const*) = win 0x17a470, imac 0x385930, m1 0x30f644, ios 0x329ba0;
	TodoReturn getUnlockForAchievement(gd::string, int&, UnlockType&);
	TodoReturn groundHasSecondaryColor(int);
	TodoReturn iconAndTypeForKey(int, int&, int&);
	gd::string iconKey(int, IconType) = win 0x1735d0;
	UnlockType iconTypeToUnlockType(IconType) = win 0x1738a0, m1 0x304f3c, imac 0x379930;
	bool isColorUnlocked(int, UnlockType) = win 0x173ba0, m1 0x30533c, imac 0x379ed0, ios 0x3239A4;
	bool isIconLoaded(int, int) = imac 0x3828a0;
	bool isIconUnlocked(int, IconType) = win 0x173800, m1 0x304e2c, imac 0x379870, ios 0x3235D4;
	TodoReturn itemPurchased(char const*);
	TodoReturn joinDiscord();
	void joinReddit();
	int keyForIcon(int iconIdx, int iconEnum) {
		return m_keyStartForIcon.at(iconEnum) + iconIdx - 1;
	}
	TodoReturn levelIsPremium(int, int);
	TodoReturn likeFacebook();
	void loadBackground(int) = win 0x179870, imac 0x384b90, m1 0x30e7ec;
	void loadBackgroundAsync(int);

	void loadDeathEffect(int id) = imac 0x384a10, m1 0x30e674, win inline {
		if (id < 1) id = 1;
		if (id > 19) id = 20;
		if (id != m_loadedDeathEffect) {
			if (1 < m_loadedDeathEffect) {
				cocos2d::CCTextureCache::sharedTextureCache()->removeTextureForKey(
					cocos2d::CCString::createWithFormat("PlayerExplosion_%02d.png", m_loadedDeathEffect-1)->getCString()
				);
			}
			if (1 < id) {
				cocos2d::CCTextureCache::sharedTextureCache()->addImage(
					cocos2d::CCString::createWithFormat("PlayerExplosion_%02d.png", id-1)->getCString(),
					false
				);
				cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()->addSpriteFramesWithFile(
					cocos2d::CCString::createWithFormat("PlayerExplosion_%02d.plist", id-1)->getCString()
				);
			}
			m_loadedDeathEffect = id;
		}
	}

	TodoReturn loadDpadFromString(UIButtonConfig&, gd::string) = imac 0x3897c0, m1 0x312b6c;
	TodoReturn loadDPadLayout(int, bool);
	TodoReturn loadFont(int) = imac 0x3848b0;
	void loadGround(int) = win 0x179c20, imac 0x385070;
	void loadGroundAsync(int);
	cocos2d::CCTexture2D* loadIcon(int, int, int) = win 0x178e70, imac 0x383830, m1 0x30d514;
	TodoReturn loadIconAsync(int, int, int, cocos2d::CCObject*);
	void loadMiddleground(int) = win 0x1799d0, imac 0x384d60;
	void loadMiddlegroundAsync(int);
	void loadVideoSettings() = ios 0x32bcec, imac 0x38a250;
	TodoReturn lockColor(int, UnlockType);
	TodoReturn lockIcon(int, IconType);
	TodoReturn logLoadedIconInfo();
	void openEditorGuide();
	void playMenuMusic() = win 0x172ec0, imac 0x378b00, m1 0x304208, ios 0x322df4;
	TodoReturn playSFXTrigger(SFXTriggerGameObject*);
	TodoReturn prepareDPadSettings() = imac 0x389af0, m1 0x312eb0;
	TodoReturn printGJLog();
	void queueReloadMenu() = ios 0x32e304, imac 0x38d620;
	TodoReturn rateGame();
	void recountUserStats(gd::string) = win 0x17ba50, imac 0x3869d0, m1 0x310600;
	void reloadAll(bool switchingModes, bool toFullscreen, bool borderless, bool unused) = win 0x1807b0, imac 0x38d750, m1 0x3166d4, ios 0x32e3a4;
	void reloadAll(bool switchingModes, bool toFullscreen, bool unused) {
		return this->reloadAll(switchingModes, toFullscreen, false, unused);
	}
	void reloadAllStep2() = win 0x180850, ios 0x32e444, imac 0x38d7f0, m1 0x316774;
	void reloadAllStep3() = win 0x180a10, ios 0x32e52c;
	void reloadAllStep4() = win 0x180b10, ios 0x32e5ac;
	void reloadAllStep5() = win 0x180ba0, ios 0x32e618, m1 0x316948, imac 0x38d9e0;
	TodoReturn reloadMenu();
	TodoReturn removeCustomObject(int);
	TodoReturn removeIconDelegate(int);
	TodoReturn reorderKey(int, bool);
	void reportAchievementWithID(char const*, int, bool) = win 0x175280, m1 0x306c60, imac 0x37b7e0;
	void reportPercentageForLevel(int levelID, int percentage, bool isPlatformer) = win 0x1748a0, ios 0x324494;
	TodoReturn resetAchievement(gd::string);
	TodoReturn resetAdTimer();
	TodoReturn resetAllIcons();
	TodoReturn resetCoinUnlocks();
	TodoReturn resetDPadSettings(bool);
	cocos2d::CCSize resolutionForKey(int) = win 0x180be0, ios 0x32e658, m1 0x316998, imac 0x38da20;
	void returnToLastScene(GJGameLevel*) = win 0x180350, imac 0x38d180, m1 0x316184;
	TodoReturn rewardedVideoAdFinished(int);
	TodoReturn rewardedVideoHidden();
	TodoReturn rewardedVideoHiddenDelayed();
	// partially inlined on windows
	void safePopScene() = win 0x180700, m1 0x31652c, imac 0x38d5b0;
	TodoReturn saveAdTimer();
	TodoReturn saveDPadLayout(int, bool);
	void setGameVariable(char const*, bool) = win 0x179e80, imac 0x3854a0, m1 0x30f154, ios 0x32991c;
	void setHasRatingPower(int);
	void setIntGameVariable(char const*, int) = win 0x17a5e0, imac 0x385a80, m1 0x30f7c0;
	void setPlayerUserID(int);
	void setUGV(char const*, bool) = win 0x17a310, m1 0x30f4a0, imac 0x3857c0, ios 0x329ab0;
	void setupGameAnimations() = win 0x1a1830;
	gd::string sheetNameForIcon(int, int) = win 0x179460, m1 0x30cad8, imac 0x382cb0;
	TodoReturn shortenAdTimer(float);
	TodoReturn shouldShowInterstitial(int, int, int);
	void showInterstitial();
	void showInterstitialForced();
	void showMainMenuAd();
	void startUpdate() = ios 0x322c1c;
	gd::string stringForCustomObject(int customObjectID) = win 0x17a940, imac 0x386070, m1 0x30fdcc;
	TodoReturn subYouTube();
	TodoReturn switchCustomObjects(int, int);
	TodoReturn switchScreenMode(bool, bool);
	TodoReturn syncPlatformAchievements();
	void toggleGameVariable(char const*) = win 0x17a260, ios 0x329a70, imac 0x385700, m1 0x30f3c8;
	TodoReturn tryCacheAd();
	TodoReturn tryShowInterstitial(int, int, int);
	TodoReturn unloadBackground();
	void unloadIcon(int, int, int) = win 0x1791d0, imac 0x383f80, m1 0x30dc24;
	void unloadIcons(int);
	TodoReturn unlockColor(int, UnlockType);
	TodoReturn unlockedPremium();
	void unlockIcon(int, IconType);
	IconType unlockTypeToIconType(int) = win 0x1739c0, m1 0x304fcc, imac 0x379b40;
	void updateCustomFPS() = win 0x181010, imac 0x38dce0;
	TodoReturn updateMusic();
	void verifyAchievementUnlocks() = imac 0x37ba10, m1 0x306e90;
	TodoReturn verifyCoinUnlocks() = imac 0x37bc10, m1 0x307098;
	TodoReturn verifyStarUnlocks();
	TodoReturn verifySyncedCoins();
	TodoReturn videoAdHidden();
	TodoReturn videoAdShowed();
	virtual void update(float) = win 0x17ff60, m1 0x315d5c, imac 0x38cd80, ios 0x32de44;
	virtual bool init() = win 0x172b80, m1 0x303cd0, imac 0x378600, ios 0x322a34;
	virtual void encodeDataTo(DS_Dictionary*) = win 0x17f3a0, m1 0x3151c4, imac 0x38c1d0, ios 0x32d610;
	virtual void dataLoaded(DS_Dictionary*) = win 0x17d3e0, m1 0x3135bc, imac 0x38a360, ios 0x32bd34;
	virtual void firstLoad() = win 0x17eae0, m1 0x3149bc, imac 0x38b8c0, ios 0x32d0f0;

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
	gd::string m_editorClipboard;
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
	geode::SeedValueRS m_chk;
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
	bool m_ropeGarageEnter;
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
    gd::vector<int> m_keyStartForIcon;
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
	bool m_shouldResetShader;
	float m_practicePosX;
	float m_practicePosY;
	float m_practiceOpacity;
}

[[link(android)]]
class GameObject : CCSpritePlus {
	// virtual ~GameObject();
	GameObject() = win 0x133690;

	void addColorSprite(gd::string) = win 0x1847f0, imac 0x5ad230, m1 0x4edac4;
	void addColorSpriteToParent(bool) = imac 0x5b28e0;
	void addColorSpriteToSelf() = imac 0x5c69d0;
	cocos2d::CCSprite* addCustomBlackChild(gd::string, float, bool);
	cocos2d::CCSprite* addCustomChild(gd::string, cocos2d::CCPoint, int);
	cocos2d::CCSprite* addCustomColorChild(gd::string);
	void addEmptyGlow();
	void addGlow(gd::string);
	cocos2d::CCSprite* addInternalChild(cocos2d::CCSprite*, gd::string, cocos2d::CCPoint, int);
	cocos2d::CCSprite* addInternalCustomColorChild(gd::string, cocos2d::CCPoint, int);
	cocos2d::CCSprite* addInternalGlowChild(gd::string, cocos2d::CCPoint);
	void addNewSlope01(bool);
	void addNewSlope01Glow(bool);
	void addNewSlope02(bool);
	void addNewSlope02Glow(bool);
	void addRotation(float, float);
	void addRotation(float);
	void addToColorGroup(int);
	void addToCustomScaleX(float) = imac 0x5c4cb0, m1 0x4f4054;
	void addToCustomScaleY(float) = imac 0x5c4cf0, m1 0x4f407c;
	void addToOpacityGroup(int);
	void addToTempOffset(double, double);
	void assignUniqueID() = imac 0x5aabb0;
	bool belongsToGroup(int);
	void calculateOrientedBox();
	bool canChangeCustomColor();
	bool canChangeMainColor();
	bool canChangeSecondaryColor();
	bool canRotateFree();
	cocos2d::ccColor3B colorForMode(int, bool); // could be a ptr
	void commonInteractiveSetup();
	void commonSetup() = win 0x183d30, imac 0x5aa930, m1 0x4ed04c;
	void copyGroups(GameObject*) = win 0x192980, imac 0x5c70a0, m1 0x4f6300;
	cocos2d::CCParticleSystemQuad* createAndAddParticle(int p0, char const* plistName, int p2, cocos2d::tCCPositionType positionType) = win 0x18eb60, imac 0x5bdd50, m1 0x4f1e1c;
	void createColorGroupContainer(int);
	void createGlow(gd::string);
	void createGroupContainer(int size) = win inline {
		if (!m_groups) {
			auto groups = new short[size];
			memset(groups, 0, size * sizeof(short));
			m_groups = reinterpret_cast<decltype(m_groups)>(groups);
		}
	}
	void createOpacityGroupContainer(int);
	void createSpriteColor(int) = m1 0x4ed1f8, imac 0x5aaaf0;
	static GameObject* createWithFrame(char const* name) = win 0x183c60, imac 0x5aa890, m1 0x4ecf80;
	static GameObject* createWithKey(int) = win 0x181810, imac 0x5a5d30, m1 0x4ecab8;
	void deselectObject(); // = win 0x141b70; actually updateObjectEditorColor, source: LevelEditorLayer::updateVisibility
	inline void destroyObject() {
		m_isDisabled = true;
		m_isDisabled2 = true;
		setOpacity(0);
	}
	void determineSlopeDirection() = win 0x192300, imac 0x5c6ad0, m1 0x4f5cf0;
	bool didScaleXChange();
	bool didScaleYChange();
	void dirtifyObjectPos();
	void dirtifyObjectRect();
	void disableObject() = imac 0x5c5a50;
	bool dontCountTowardsLimit();
	void duplicateAttributes(GameObject*);
	void duplicateColorMode(GameObject*);
	void duplicateValues(GameObject*) = win 0x197e00;
	cocos2d::ccColor3B editorColorForCustomMode(int);
	cocos2d::ccColor3B editorColorForMode(int) = win 0x197060;
	void fastRotateObject(float);
	cocos2d::ccColor3B getActiveColorForMode(int, bool) = imac 0x5d3820;
	char* getBallFrame(int); //inlined on windows
	cocos2d::CCRect getBoundingRect();
	cocos2d::CCPoint getBoxOffset();
	gd::string getColorFrame(gd::string);
	int getColorIndex();
	gd::string getColorKey(bool, bool) = imac 0x42e5d0;
	ZLayer getCustomZLayer();
	gd::string getGlowFrame(gd::string);
	bool getGroupDisabled() = m1 0x4f660c, imac 0x5c73e0;
	int getGroupID(int) = imac 0x5c7080, m1 0x4f62e0;
	gd::string getGroupString();
	cocos2d::CCPoint const& getLastPosition() = imac 0x5d3a00, m1 0x501170;
	GJSpriteColor* getMainColor();
	int getMainColorMode();
	int getObjectDirection(); // probably a enum
	float getObjectRadius() = imac 0x5d40e0;
	cocos2d::CCRect* getObjectRectPointer();
	ZLayer getObjectZLayer();
	int getObjectZOrder();
	cocos2d::CCRect getOuterObjectRect();
	int getParentMode();
	GJSpriteColor* getRelativeSpriteColor(int);
	cocos2d::CCPoint getScalePosDelta() = m1 0x4f5fc0;
	GJSpriteColor* getSecondaryColor();
	int getSecondaryColorMode();
	float getSlopeAngle();
	cocos2d::CCPoint getUnmodifiedPosition();
	cocos2d::ccColor3B groupColor(cocos2d::ccColor3B const&, bool);
	float groupOpacityMod() = imac 0x5c7ab0, win 0x192cf0, m1 0x4f6c58;
	void groupWasDisabled() = imac 0x5c7410;
	void groupWasEnabled();
	bool hasSecondaryColor();
	bool ignoreEditorDuration();
	bool ignoreEnter();
	bool ignoreFade();
	bool init(char const*) = imac 0x5aa900, m1 0x4ed010;
	bool isBasicEnterEffect(int);
	bool isBasicTrigger();
	bool isColorObject();
	bool isColorTrigger() = imac 0x5d3f90;
	bool isConfigurablePortal();
	bool isEditorSpawnableTrigger();
	bool isFacingDown() = win 0x197950, imac 0x5d2840, m1 0x50012c;
	bool isFacingLeft() = win 0x197a10, imac 0x5d28e0, m1 0x5001d8;
	bool isSettingsObject() = imac 0x5d45e0, m1 0x5019a0;
	bool isSpawnableTrigger();
	bool isSpecialObject();
	bool isSpeedObject() = imac 0x5d4060;
	bool isStoppableTrigger();
	bool isTrigger();
	void loadGroupsFromString(gd::string);
	TodoReturn makeInvisible() = imac 0x5c59f0, m1 0x4f4c30;
	static GameObject* objectFromVector(gd::vector<gd::string>&, gd::vector<void*>&, GJBaseGameLayer*, bool) = win 0x193220, m1 0x4f775c, imac 0x5c8800;
	float opacityModForMode(int, bool);
	cocos2d::CCSpriteBatchNode* parentForZLayer(int, bool, int);
	gd::string perspectiveColorFrame(char const*, int);
	gd::string perspectiveFrame(char const*, int);
	void playDestroyObjectAnim(GJBaseGameLayer*) = win 0x1a04e0, imac 0x25a310, m1 0x201d4c;
	void playPickupAnimation(cocos2d::CCSprite*, float, float, float, float, float, float, float, float, bool, float, float) = win 0x1a0000;
	void playPickupAnimation(cocos2d::CCSprite*, float, float, float, float) = win 0x19ff10;
	void playShineEffect() = win 0x18f3f0, imac 0x5c5a90, m1 0x4f4cac;
	void quickUpdatePosition();
	void quickUpdatePosition2();
	void removeColorSprite();
	void removeGlow() = imac 0x5ad1c0;
	void reorderColorSprite();
	void resetColorGroups();
	void resetGroupDisabled();
	void resetGroups();
	void resetMainColorMode();
	void resetMID();
	void resetMoveOffset();
	void resetRScaleForced();
	void resetSecondaryColorMode();
	void setAreaOpacity(float, float, int);
	void setCustomZLayer(int);
	void setDefaultMainColorMode(int);
	void setDefaultSecondaryColorMode(int);
	void setGlowOpacity(unsigned char);
	void setLastPosition(cocos2d::CCPoint const&) = imac 0x5d3a10, m1 0x501178;
	void setMainColorMode(int);
	void setSecondaryColorMode(int);
	void setupColorSprite(int, bool);
	void setupPixelScale();
	void setupSpriteSize();
	bool shouldBlendColor(GJSpriteColor*, bool);
	bool shouldLockX();
	bool shouldNotHideAnimFreeze();
	bool shouldShowPickupEffects();
	bool slopeFloorTop() = m1 0x4ffb30;
	bool slopeWallLeft();
	double slopeYPos(cocos2d::CCRect) = m1 0x4ffbec;
	double slopeYPos(float) = win 0x1973f0;
	double slopeYPos(GameObject*);
	void spawnDefaultPickupParticle(GJBaseGameLayer*);
	void updateBlendMode();
	void updateCustomColorType(short);
	void updateCustomScaleX(float) = win 0x18e690, imac 0x5b24b0, m1 0x4ee91c;
	void updateCustomScaleY(float) = win 0x18e720, imac 0x5b2530, m1 0x4ee97c;
	void updateHSVState();
	void updateIsOriented() = win 0x197770, imac 0x5d2660, m1 0x4fff78;
	void updateMainColorOnly();
	void updateMainOpacity();
	void updateObjectEditorColor() = win 0x197330, imac 0x5d1e50;
	void updateSecondaryColorOnly();
	void updateSecondaryOpacity();
	void updateStartPos() = imac 0x5b20d0;
	void updateUnmodifiedPositions();
	void usesFreezeAnimation();
	void usesSpecialAnimation();

	// MSVC changed virtual table ordering somewhere between what Rob uses
	// and now, and now virtual functions that have non virtual overloads
	// are added to the first of the vtable regardless of the order
	// defined in the header. This is why we simply can not use these
	// two functions since defining them would break the vtable layout.
	// void updateMainColor();
	// void updateSecondaryColor();

	virtual void update(float) = m1 0x4ef094, imac 0x5b2ca0, ios 0x2663e4;
	virtual void setScaleX(float) = win 0x18e290, m1 0x4f3d18, imac 0x5c4970, ios 0x26b0a4;
	virtual void setScaleY(float) = win 0x18e370, m1 0x4f3db8, imac 0x5c4a10, ios 0x26b13c;
	virtual void setScale(float) = win 0x18e460, imac 0x5c4ab0, m1 0x4f3e58, ios 0x26b1d4;
	virtual void setPosition(cocos2d::CCPoint const&) = win 0x18dba0, imac 0x5c43f0, m1 0x4f3740, ios 0x26ab8c;
	virtual void setVisible(bool) = win 0x18ec90, imac 0x5c51b0, m1 0x4f44a8, ios 0x26b73c;
	virtual void setRotation(float) = win 0x18de40, imac 0x5c4660, m1 0x4f39e0, ios 0x26ad98;
	virtual void setRotationX(float) = m1 0x4f3ac8, win 0x18df90, imac 0x5c4730, ios 0x26ae70;
	virtual void setRotationY(float) = m1 0x4f3ba4, win 0x18e0e0, imac 0x5c47f0, ios 0x26af3c;
	virtual void setOpacity(unsigned char) = win 0x18e840, m1 0x4f417c, imac 0x5c4e10, ios 0x26b450;
	virtual bool initWithTexture(cocos2d::CCTexture2D*) = m1 0x4ed1c4, win 0x183cf0, imac 0x5aaac0, ios 0x2649ac;
	virtual void setChildColor(cocos2d::ccColor3B const&) = m1 0x4ff270, win 0x196e00, imac 0x5d19c0, ios 0x270d48;
	virtual void setFlipX(bool) = m1 0x4f3c70, win 0x18e200, imac 0x5c48d0, ios 0x26affc;
	virtual void setFlipY(bool) = m1 0x4f3cc4, win 0x18e240, imac 0x5c4920, ios 0x26b050;
	virtual void firstSetup() = m1 0x173c88, imac 0x1b64a0, ios 0x23e3e4;
	virtual void customSetup() = m1 0x4ef098, win 0x186e60, imac 0x5b2cb0, ios 0x2663e8;
	virtual void setupCustomSprites(gd::string) = m1 0x3bef18, win 0x1a4f40, imac 0x44d950, ios 0x2be700;
	virtual void addMainSpriteToParent(bool) = m1 0x4f5a14, win 0x191d90, imac 0x5c67e0, ios 0x26c7e8;
	virtual void resetObject() = m1 0x4ee694, win 0x186710, imac 0x5b2160, ios 0x265a80;
	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = m1 0x173904, imac 0x1b6120, ios 0x23e3e8;
	virtual void activateObject() = m1 0x4eeb4c, win 0x186b20, imac 0x5b2780, ios 0x265eb0;
	virtual void deactivateObject(bool) = m1 0x4eeed0, win 0x186bd0, imac 0x5b2af0, ios 0x266234;
	virtual void transferObjectRect(cocos2d::CCRect&) = m1 0x4f3114, win 0x18d690, imac 0x5c3ce0, ios 0x26a644;
	virtual cocos2d::CCRect const& getObjectRect() = win 0x18d6e0, m1 0x4f31ec, imac 0x5c3d50, ios 0x26a6bc;
	virtual cocos2d::CCRect getObjectRect(float, float) = win 0x18d700, m1 0x4f31a0, imac 0x5c3d80, ios 0x26a6d0;
	virtual cocos2d::CCRect getObjectRect2(float, float) = m1 0x4f3384, win 0x18d890, imac 0x5c3fc0, ios 0x26a8a4;
	virtual cocos2d::CCRect getObjectTextureRect() = m1 0x4f3448, win 0x18d930, imac 0x5c4090, ios 0x26a928;
	virtual cocos2d::CCPoint getRealPosition() = m1 0x4f36a0, win 0x18db60, imac 0x5c4330, ios 0x26ab0c;
	virtual void setStartPos(cocos2d::CCPoint) = m1 0x4ee578, win 0x186590, imac 0x5b2050, ios 0x265964;
	virtual void updateStartValues() = m1 0x4ee9dc, win 0x186960, imac 0x5b25b0, ios 0x265dc0;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x326d1c, imac 0x39fd10, ios 0x23e3ec;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x4f96a0, win 0x194d10, imac 0x5ca7c0, ios 0x26f1d8;
	virtual void claimParticle() = m1 0x4f45f0, win 0x18edb0, imac 0x5c5310, ios 0x26b884;
	virtual void unclaimParticle() = m1 0x4f4b90, win 0x18f2e0, imac 0x5c5910, ios 0x26bd24;
	virtual void particleWasActivated() = m1 0x4f4bf8, imac 0x5c5980, ios 0x26bd78;
	virtual bool isFlipX() = m1 0x4f3c60, win 0x18e1e0, imac 0x5c48b0, ios 0x26afec;
	virtual bool isFlipY() = m1 0x4f3c68, win 0x18e1f0, imac 0x5c48c0, ios 0x26aff4;
	virtual void setRScaleX(float) = m1 0x4f3ef8, win 0x18e550, imac 0x5c4b50, ios 0x26b26c;
	virtual void setRScaleY(float) = m1 0x4f3f2c, win 0x18e590, imac 0x5c4b90, ios 0x26b2a0;
	virtual void setRScale(float) = m1 0x4f3f60, win 0x18e5d0, imac 0x5c4bd0, ios 0x26b2d4;
	virtual float getRScaleX() = m1 0x4f3fe4, win 0x18e610, imac 0x5c4c50, ios 0x26b318;
	virtual float getRScaleY() = m1 0x4f401c, win 0x18e650, imac 0x5c4c80, ios 0x26b350;
	virtual void setRRotation(float) = m1 0x4f3948, win 0x18ddb0, imac 0x5c45e0, ios 0x26ad14;
	virtual void triggerActivated(float) = m1 0x1a135c, imac 0x1ed230, ios 0x23e3f0;
	virtual void setObjectColor(cocos2d::ccColor3B const&) = m1 0x4fef58, win 0x196ac0, imac 0x5d16e0, ios 0x270a48;
	virtual void setGlowColor(cocos2d::ccColor3B const&) = m1 0x4ff218, win 0x196db0, imac 0x5d1970, ios 0x270cf0;
	virtual void restoreObject() = m1 0x4f4c18, win 0x18f3d0, imac 0x5c59c0, ios 0x26bd98;
	virtual void animationTriggered() = m1 0x1a1360, imac 0x1ed240, ios 0x23e3f4;
	virtual void selectObject(cocos2d::ccColor3B) = m1 0x4ff2fc, win 0x196e80, imac 0x5d1a30, ios 0x270dd4;
	virtual void activatedByPlayer(PlayerObject*) = m1 0x1a1364, imac 0x1ed250, ios 0x23e3f8;
	virtual bool hasBeenActivatedByPlayer(PlayerObject*) = m1 0x1a1368, imac 0x1ed260, ios 0x23e3fc;
	virtual bool hasBeenActivated() = m1 0x1a1370, imac 0x1ed270, ios 0x23e404;
	virtual OBB2D* getOrientedBox() = m1 0x4ffd60, win 0x197550, imac 0x5d2440, ios 0x27139c;
	virtual void updateOrientedBox() = m1 0x4ffdf4, win 0x1975b0, imac 0x5d24c0, ios 0x271430;
	virtual float getObjectRotation() = m1 0x5058b0, win 0x197530, imac 0x5dac70, ios 0x275030;
	virtual void updateMainColor(cocos2d::ccColor3B const&) = m1 0x500864, win 0x197fb0, imac 0x5d30c0, ios 0x271cd0;
	virtual void updateSecondaryColor(cocos2d::ccColor3B const&) = m1 0x500d6c, win 0x197fc0, imac 0x5d35d0, ios 0x271ea4;
	virtual void addToGroup(int) = m1 0x4f6170, win 0x1927d0, imac 0x5c6f40, ios 0x26cebc;
	virtual void removeFromGroup(int) = m1 0x4f624c, win 0x1928f0, imac 0x5c6ff0, ios 0x26cf70;
	virtual void saveActiveColors() = m1 0x4feda0, win 0x196910, imac 0x5d1520, ios 0x2708ec;
	virtual float spawnXPosition() = m1 0x1a1378, win 0x133ad0, imac 0x1ed280, ios 0x23e40c;
	virtual bool canAllowMultiActivate() = m1 0x1a1398, imac 0x1ed2a0, ios 0x23e42c;
	virtual void blendModeChanged() = m1 0x1a13a0, imac 0x1ed2b0, ios 0x23e434;
	virtual void updateParticleColor(cocos2d::ccColor3B const&) = m1 0x4ff150, win 0x196ca0, imac 0x5d18b0, ios 0x270c28;
	virtual void updateParticleOpacity(unsigned char) = m1 0x4f4420, win 0x18eae0, imac 0x5c5130, ios 0x26b6b4;
	virtual void updateMainParticleOpacity(unsigned char) = m1 0x1a13a4, imac 0x1ed2c0, ios 0x23e438;
	virtual void updateSecondaryParticleOpacity(unsigned char) = m1 0x1a13a8, imac 0x1ed2d0, ios 0x23e43c;
	virtual bool canReverse() = m1 0x1a13ac, imac 0x1ed2e0, ios 0x23e440;
	virtual bool isSpecialSpawnObject() = m1 0x1a13b4, imac 0x1ed2f0, ios 0x23e448;
	virtual bool canBeOrdered() = m1 0x1a13bc, imac 0x1ed300, ios 0x23e450;
	virtual cocos2d::CCLabelBMFont* getObjectLabel() = m1 0x1a13c4, imac 0x1ed310, ios 0x23e458;
	virtual void setObjectLabel(cocos2d::CCLabelBMFont*) = m1 0x1a13cc, imac 0x1ed320, ios 0x23e460;
	virtual bool shouldDrawEditorHitbox() = m1 0x501ae4, imac 0x5d4710, ios 0x272940;
	virtual bool getHasSyncedAnimation() = m1 0x1a13d0, imac 0x1ed330, ios 0x23e464;
	virtual bool getHasRotateAction() = m1 0x1a13d8, imac 0x1ed340, ios 0x23e46c;
	virtual bool canMultiActivate(bool) = m1 0x1a13e0, imac 0x1ed350, ios 0x23e474;
	virtual void updateTextKerning(int) = m1 0x1a13e8, imac 0x1ed360, ios 0x23e47c;
	virtual int getTextKerning() = m1 0x1a13ec, imac 0x1ed370, ios 0x23e480;
	virtual bool getObjectRectDirty() = m1 0x1a13f4, win 0x133af0, imac 0x1ed380, ios 0x23e488;
	virtual void setObjectRectDirty(bool) = m1 0x1a13fc, win 0x133b00, imac 0x1ed390, ios 0x23e490;
	virtual bool getOrientedRectDirty() = m1 0x1a1404, win 0x133b10, imac 0x1ed3a0, ios 0x23e498;
	virtual void setOrientedRectDirty(bool) = m1 0x1a140c, win 0x133b20, imac 0x1ed3b0, ios 0x23e4a0;
	virtual GameObjectType getType() = m1 0x1a1414, imac 0x1ed3c0, ios 0x23e4a8;
	virtual void setType(GameObjectType) = m1 0x1a141c, win 0x133b40, imac 0x1ed3d0, ios 0x23e4b0;
	virtual cocos2d::CCPoint getStartPos() = m1 0x1a1424, win 0x133b50, imac 0x1ed3e0, ios 0x23e4b8;

	int m_someOtherIndex;
	int m_innerSectionIndex;
	int m_outerSectionIndex;
	int m_middleSectionIndex;

	// property 511
	bool m_hasExtendedCollision;
	cocos2d::ccColor3B m_maybeGroupColor;
	bool m_useBlackOpacity;
	bool m_useObjectGlowColor;
	float m_blackChildOpacity;
	bool m_maybeBlackChildIsBlendable;
	bool m_editorEnabled;
	bool m_isGroupDisabled;
	bool m_unk28B;
	bool m_notLinked;

	// somehow related to property 155 and 156 if anyone wants to reverse engineer
	int m_activeMainColorID;
	int m_activeDetailColorID;
	bool m_baseUsesHSV;
	bool m_detailUsesHSV;
	float m_positionXOffset;
	float m_positionYOffset;
	
	
	float m_rotationXOffset;
	float m_unk2A8;
	float m_rotationYOffset;
	float m_unk2B0;
	float m_scaleXOffset;
	float m_scaleYOffset;
	float m_realPositionX;
	float m_realPositionY;
	bool m_tempOffsetXRelated; // m_lockXPos or m_lockRoation might be a better name? 
	bool m_isFlipX;
	bool m_isFlipY;
	cocos2d::CCPoint m_customBoxOffset;
	bool m_boxOffsetCalculated;
	cocos2d::CCPoint m_boxOffset;
	OBB2D* m_orientedBox;
	bool m_shouldUseOuterOb;
	cocos2d::CCSprite* m_glowSprite;
	int m_maybeGlowSpriteDetail;
	float m_width;
	float m_height;
	bool m_hasSpecialChild;
	bool m_isActivated;
	bool m_isDisabled2;
	cocos2d::CCParticleSystemQuad* m_particle;
	gd::string m_particleString;
	bool m_hasParticles;
    
	// property 146
	bool m_particleUseObjectColor;
	bool m_hasColorSprite;
	cocos2d::CCPoint m_particlePostion;
	bool m_isSomeSpriteScalable; // Maybe ParticleIsScaled?
	cocos2d::CCRect m_textureRect;
	bool m_isDirty;
	bool m_isObjectPosDirty;
	bool m_isUnmodifiedPosDirty;
	float m_unk33C; // has some behaviors with objectrect's height
	cocos2d::CCRect m_objectRect;
	bool m_isObjectRectDirty;
	bool m_isOrientedBoxDirty;
	bool m_colorSpriteLocked;
	bool m_isBlendable;
	bool m_canRotateFree;
	bool m_isMirroredByScale;

	// property 108
	int m_linkedGroup;
	int m_unk35C;
	short m_colorType;
	short m_childColorType;
	bool m_shouldBlendBase;
	bool m_shouldBlendDetail;
	bool m_hasCustomChild;
    // Object is a creature or Monster Object
	bool m_isAnimated; 
	cocos2d::CCSprite* m_colorSprite;
	bool m_unk370;
	float m_objectRadius;
	bool m_isRotationAligned;
	float m_spriteWidthScale;
	float m_spriteHeightScale;
	int m_uniqueID;
	GameObjectType m_objectType;

	// used in PlayerObject::gameEventTriggered
	GameObjectType m_savedObjectType;
    // unk390 is Possibly Another Unknown Object type  
	int m_unk390;
	float m_unmodifiedPositionX;
	float m_unmodifiedPositionY;
	double m_positionX;
	double m_positionY;
	cocos2d::CCPoint m_startPosition;
	bool m_unk3b8;

	// property 372
	bool m_hasNoAudioScale;
	bool m_isDisabled;
	float m_startRotationX;
	float m_startRotationY;
	float m_startScaleX;
	float m_startScaleY;
	float m_customScaleX;
	float m_customScaleY;
	bool m_startFlipX;
	bool m_startFlipY;

    	// m_unk3ee Also has Invisable Behaviors 
    	bool m_unk3ee; 
	bool m_isInvisible;
    	// NOTE: m_unk3D8 might be unused
	int m_unk3D8;
	short m_unk3DC;
	bool m_unk3DE;
	short m_unk3E0;
	short m_unk3E2;

	// property 343
	short m_enterChannel;
	// property 446
	short m_objectMaterial;
	bool m_unk3E8;
	short m_parentMode;

	// property 96
	bool m_hasNoGlow;

	// property 23
	int m_targetColor;

	// property 1
	int m_objectID;
	bool m_dontTransform;
	bool m_isSolid;
	bool m_ignoreEnter;
	bool m_ignoreFade;
    	// Maybe m_dontFadeTinted ?
	bool m_unk3FC;
	bool m_isTintObject;
	bool m_customSpriteColor;

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
	int m_defaultZOrder;
	bool m_isPortalObject;
	bool m_colorZLayerRelated;
	bool m_isAudioScale; 
	float m_minAudioScale;
	float m_maxAudioScale;
	bool m_particleLocked;

	// property 53
	int m_property53;
	bool m_gmUnkBool4Related; // m_doesntFade Maybe?
	bool m_useGlowBGColor; 
	bool m_useGlowColor;
	bool m_cantColorGlow;
	float m_opacityMod;
	bool m_slopeBugged; // m_upSlope might be a better name?
	int m_slopeDirection; //
	bool m_maybeShouldFixSlopes;
	float m_opacityMod2;

	// property 21, also used with 41 and 43
	GJSpriteColor* m_baseColor;
	// property 22, also used with 42 and 44
	GJSpriteColor* m_detailColor;
	bool m_isBlendingBatchNode;
	ZLayer m_defaultZLayer;
	bool m_zFixedZLayer;

	// property 24
	ZLayer m_zLayer;
	// property 25
	int m_zOrder;
	bool m_unk45c;
	bool m_isSelected;
	float m_unk460;
	cocos2d::CCPoint m_unk464;
	bool m_shouldUpdateColorSprite;
	bool m_unk46d;

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
	int m_enabledGroupsCounter;
	bool m_updateCustomContentSize;
	bool m_hasContentSize;

	// property 121
	bool m_isNoTouch;
	cocos2d::CCSize m_lastSize;
	cocos2d::CCPoint m_lastPosition;
	int m_unk4C0;
	int m_unk4C4;
	int m_unk4C8;
	int m_unk4CC;
	int m_unk4D0;
	bool m_unk4D4;
	bool m_unk4D5;
	bool m_unk4D6;
	bool m_unk4D7;
	bool m_unk4D8;
	bool m_unk4D9;
	bool m_unk4DA;

	// property 103
	bool m_isHighDetail;
	ColorActionSprite* m_unk4E0;
	ColorActionSprite* m_unk4E8;
	GJEffectManager* m_goEffectManager;
	bool m_maybeIsGoEffectObject;
	bool m_isMainDecoration;
	bool m_isDetailDecoration;
	bool m_maybeIsNotDamaging;
	bool m_maybeNotColorable;

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
    // has Something to do with the ID Number 749
	bool m_unk507;
	bool m_unk508;
	float m_unk50C;
	float m_pixelScaleX;
	float m_pixelScaleY;

	// property 155
	int m_property155;
	// property 156
	int m_property156;
	GLubyte m_areaOpacityRelated;
	float m_areaOpacityRelated2;
	int m_areaOpacityRelated3;
	int m_unk52C;
	bool m_unk530;
	bool m_maybeIsUiObject;
	bool m_unk532;
}

[[link(android)]]
class GameObjectCopy : cocos2d::CCObject {
	// virtual ~GameObjectCopy();

	static GameObjectCopy* create(GameObject*) = imac 0xe7430;

	bool init(GameObject*);
	void resetObject() = win 0x2cfda0, imac 0xe7540;

	GameObject* m_object;
	cocos2d::CCPoint m_position;
	float m_rotationX;
	float m_rotationY;
	bool m_isFlipX;
	bool m_isFlipY;
	float m_customScaleX;
	float m_customScaleY;
}

[[link(android)]]
class GameObjectEditorState {
	TodoReturn loadValues(GameObject*);
}

[[link(android)]]
class GameOptionsLayer : GJOptionsLayer {
	// virtual ~GameOptionsLayer();
	GameOptionsLayer() = win inline {
		m_practiceDialogIndex = 0;
	}

	static GameOptionsLayer* create(GJBaseGameLayer* baseGameLayer) = win inline, m1 0x24db08, imac 0x2ac900 {
		auto ret = new GameOptionsLayer();
		if (ret->init(baseGameLayer)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	bool init(GJBaseGameLayer* baseGameLayer) = win inline, m1 0x24dcb8, imac 0x2acb70 {
		m_baseGameLayer = baseGameLayer;
		m_gap = 40.f;
		m_maxLabelScale = .4f;
		if (!GJOptionsLayer::init(2)) return false;
		this->preSetup();
		this->postSetup();
		return true;
	}
	void onPracticeMusicSync(cocos2d::CCObject* sender) = win 0x28e010, m1 0x24e468, imac 0x2ad370;
	void onUIOptions(cocos2d::CCObject* sender) = win 0x28e0f0, m1 0x24e3dc, imac 0x2ad2e0;
	void onUIPOptions(cocos2d::CCObject* sender) = win 0x28e110, m1 0x24e3fc, imac 0x2ad300;
	void showPracticeMusicSyncUnlockInfo() = win 0x28d7b0, m1 0x24e4dc, imac 0x2ad3f0;

	virtual void setupOptions() = win 0x28cd60, m1 0x24dd10, imac 0x2acbc0, ios 0x2f22d0;
	virtual void didToggle(int) = win 0x28e260, m1 0x24eaf0, imac 0x2ada80, ios 0x2f2dec;

	GJBaseGameLayer* m_baseGameLayer;
	int m_practiceDialogIndex;
}

[[link(android)]]
class GameOptionsTrigger : EffectGameObject {
	// virtual ~GameOptionsTrigger();

	static GameOptionsTrigger* create(char const*);

	bool init(char const*);

	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x16a8a0, imac 0x1aba30, ios 0x3897b8;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x169058, imac 0x1a9b50, ios 0x389160;

	GameOptionsSetting m_streakAdditive;
	GameOptionsSetting m_unlinkDualGravity;
	GameOptionsSetting m_hideGround;
	GameOptionsSetting m_hideP1;
	GameOptionsSetting m_hideP2;
	GameOptionsSetting m_disableP1Controls;
	GameOptionsSetting m_disableP2Controls;
	GameOptionsSetting m_hideMG;
	GameOptionsSetting m_hideAttempts;
	GameOptionsSetting m_editRespawnTime;
	float m_respawnTime;
	GameOptionsSetting m_audioOnDeath;
	GameOptionsSetting m_noDeathSFX;
	GameOptionsSetting m_boostSlide;
}

[[link(android)]]
class GameRateDelegate {
	virtual void updateRate();
}

[[link(android)]]
class GameStatsManager : cocos2d::CCNode {
	// virtual ~GameStatsManager();
	// GameStatsManager();

	static GameStatsManager* sharedState() = win 0x1c6e60, m1 0x515b0, imac 0x5aea0, ios 0x33601c;
	static GameStatsManager* get() {
		return GameStatsManager::sharedState();
	}

	int accountIDForIcon(int, UnlockType) = imac 0x32a490;
	TodoReturn addSimpleSpecialChestReward(gd::string, UnlockType, int, bool);
	void addSpecialRewardDescription(gd::string, gd::string);
	void addStoreItem(int, int, int, int, ShopType) = win 0x1ca0b0, m1 0x5a4f0, imac 0x65280;
	bool areChallengesLoaded() = m1 0x66768, imac 0x736e0;
	TodoReturn areRewardsLoaded();
	void awardCurrencyForLevel(GJGameLevel*) = win 0x1d6500, m1 0x64400, imac 0x70480, ios 0x3429d4;
	void awardDiamondsForLevel(GJGameLevel*) = ios 0x342e8c;
	TodoReturn awardSecretKey() = ios 0x34d288;
	TodoReturn checkAchievement(char const*) = win 0x1cb460;
	void checkCoinAchievement(GJGameLevel*) = win 0x1d3430, imac 0x6c870, m1 0x60780, ios 0x34076c;
	void checkCoinsForLevel(GJGameLevel*) = m1 0x63188, imac 0x6f2a0;
	TodoReturn claimListReward(GJLevelList*);
	TodoReturn collectReward(GJRewardType, GJRewardItem*);
	TodoReturn collectVideoReward(int);
	void completedChallenge(GJChallengeItem*) = imac 0x74180, m1 0x672e4;
	GJRewardItem* completedDailyLevel(GJGameLevel*) = win 0x1d8680, imac 0x74840, m1 0x679d0;
	void completedDemonLevel(GJGameLevel*) = imac 0x6d6f0, m1 0x616dc, ios 0x34106c;
	TodoReturn completedLevel(GJGameLevel*) = imac 0x6d5d0, m1 0x61598, ios 0x340f6c;
	void completedMapPack(GJMapPack*) = win 0x1d49a0;
	void completedStarLevel(GJGameLevel*) = imac 0x6d880, m1 0x6186c;
	int countSecretChests(GJRewardType) = ios 0x34d200;
	int countUnlockedSecretChests(GJRewardType) = ios 0x34d244;
	void createSecretChestItems() = m1 0x538c4, imac 0x5da90;
	TodoReturn createSecretChestRewards();
	void createSpecialChestItems() = win 0x1dae20, m1 0x53a08, imac 0x5dbe0;
	void createStoreItems() = win 0x1c78e0, m1 0x51980, imac 0x5b400;
	void dataLoaded(DS_Dictionary*) = win 0x1e5c00, imac 0x8c990, m1 0x7da1c;
	void encodeDataTo(DS_Dictionary*) = win 0x1e5950, imac 0x8c4b0, m1 0x7d59c;
	void firstSetup();
	void generateItemUnlockableData() = m1 0x598fc, imac 0x64410;
	int getAwardedCurrencyForLevel(GJGameLevel*) = win 0x1d62c0, imac 0x702b0, m1 0x6421c;
	TodoReturn getAwardedDiamondsForLevel(GJGameLevel*) = imac 0x70a40;
	int getBaseCurrency(int stars, bool featured, int levelID);
	int getBaseCurrencyForLevel(GJGameLevel*) = win 0x1d6020, imac 0x700e0, m1 0x63fe4;
	void getBaseDiamonds(int) = imac 0x709e0, m1 0x64924;
	int getBonusDiamonds(int) = m1 0x64938, imac 0x70a00;
	GJChallengeItem* getChallenge(int) = win 0x1d76f0, ios 0x343c80, imac 0x73ca0, m1 0x66dbc;
	TodoReturn getChallengeKey(GJChallengeItem*);
	int getCollectedCoinsForLevel(GJGameLevel*) = win 0x1d37d0;
	cocos2d::CCArray* getCompletedMapPacks() = win 0x1d4cf0, imac 0x6e4a0, m1 0x62524;
	TodoReturn getCurrencyKey(GJGameLevel*);
	TodoReturn getDailyLevelKey(int);
	TodoReturn getDemonLevelKey(GJGameLevel*);
	gd::string getGauntletRewardKey(int) = win 0x1de640, imac 0x78b30, m1 0x6b494, ios 0x345fec;
	gd::string getItemKey(int, int) = win 0x1d7230, m1 0x5a2d4, imac 0x65010;
	int getItemUnlockState(int itemID, UnlockType unlockType) = win inline, m1 0x6ad24, imac 0x78400, ios 0x345CF8 {
		auto key = getItemKey(itemID, (int) unlockType);
		if(auto object = m_unlockedItems->objectForKey(key))
			return object->getTag();

		return 0;
	}
	int getItemUnlockStateLite(int, UnlockType);
	gd::string getLevelKey(GJGameLevel* level) = win inline {
		return getLevelKey(level->m_levelID, level->m_levelType != GJLevelType::Main, level->m_dailyID > 0, level->m_gauntletLevel);
	}
	gd::string getLevelKey(int, bool, bool, bool) = win 0x1d3950, m1 0x60dcc, imac 0x6ceb0;
	TodoReturn getListRewardKey(GJLevelList*);
	char const* getMapPackKey(int);
	TodoReturn getNextVideoAdReward();
	TodoReturn getPathRewardKey(int);
	GJChallengeItem* getQueuedChallenge(int) = win 0x1d77c0, imac 0x73d90, m1 0x66eb0;
	TodoReturn getRewardForSecretChest(int);
	TodoReturn getRewardForSpecialChest(gd::string);
	TodoReturn getRewardItem(GJRewardType);
	TodoReturn getRewardKey(GJRewardType, int);
	GJChallengeItem* getSecondaryQueuedChallenge(int);
	TodoReturn getSecretChestForItem(int, UnlockType);
	TodoReturn getSecretCoinKey(char const*);
	TodoReturn getSpecialChestKeyForItem(int, UnlockType);
	TodoReturn getSpecialRewardDescription(gd::string, bool);
	gd::string getSpecialUnlockDescription(int, UnlockType, bool) = win 0x1de7b0, m1 0x6b8bc, imac 0x78f50;
	TodoReturn getStarLevelKey(GJGameLevel*); // inlined
	int getStat(char const*) = win 0x1cb1d0, imac 0x657a0, ios 0x33c328, m1 0x5aa1c;
	TodoReturn getStatFromKey(StatKey);
	TodoReturn getStoreItem(int, int);
	TodoReturn getStoreItem(int);
	int getTotalCollectedCurrency() = win 0x1d8e50, imac 0x750a0, m1 0x68130;
	int getTotalCollectedDiamonds() = win 0x1d9720, m1 0x68cf4, imac 0x75d50;
	bool hasClaimedListReward(GJLevelList*) = win 0x1d84b0, m1 0x67584, imac 0x74400, ios 0x3440e0;
	bool hasCompletedChallenge(GJChallengeItem*);
	bool hasCompletedDailyLevel(int) = win 0x1d8590, m1 0x678bc, imac 0x74730;
	bool hasCompletedDemonLevel(GJGameLevel*);
	bool hasCompletedGauntletLevel(int) = win 0x1d3d70, imac 0x6d2f0;
	bool hasCompletedLevel(GJGameLevel* level) = win inline, m1 0x61134, imac 0x6d1d0, ios 0x340d14 {
		return m_completedLevels->objectForKey(this->getLevelKey(level)) != nullptr;
	} // = win 0x1d3ba0
	bool hasCompletedMainLevel(int levelID) = win inline, m1 0x610a0, imac 0x6d160, ios 0x340c98 {
		return m_completedLevels->objectForKey(this->getLevelKey(levelID, false, false, false)) != nullptr;
	}
	bool hasCompletedMapPack(int);
	bool hasCompletedOnlineLevel(int) = win 0x1d3c40, m1 0x611f0, imac 0x6d270;
	bool hasCompletedStarLevel(GJGameLevel*) = ios 0x340ef4;
	bool hasPendingUserCoin(char const*) = win 0x1d5a00, m1 0x63484, imac 0x6f5b0;
	bool hasRewardBeenCollected(GJRewardType, int);
	bool hasSecretCoin(char const*) = win 0x1d5ac0, imac 0x6cd60, m1 0x60c9c;
	bool hasUserCoin(char const*) = win 0x1d5880, m1 0x6356c, imac 0x6f690;
	TodoReturn incrementActivePath(int);
	TodoReturn incrementChallenge(GJChallengeType, int) = win 0x1d7970;
	void incrementStat(char const*, int) = win 0x1ca5b0, m1 0x5ad38, imac 0x65ad0, ios 0x33c544;
	TodoReturn incrementStat(char const*) = m1 0x5ad30;
	bool isGauntletChestUnlocked(int) = ios 0x345b38;
	bool isItemEnabled(UnlockType type, int id) = win inline, ios 0x345D80, imac 0x787e0, m1 0x6b108 {
		return this->isItemUnlocked(type, id) && m_enabledItems->valueForKey(this->getItemKey(id, (int)type))->boolValue();
	}
	bool isItemUnlocked(UnlockType, int) = win 0x1dabe0, ios 0x33fda8, m1 0x5ead0, imac 0x6a450;
	bool isPathChestUnlocked(int);
	bool isPathUnlocked(StatKey);
	bool isSecretChestUnlocked(int);
	bool isSecretCoin(gd::string);
	bool isSecretCoinValid(gd::string);
	bool isSpecialChestLiteUnlockable(gd::string);
	bool isSpecialChestUnlocked(gd::string) = win 0x1de960, imac 0x78310, m1 0x6ac30, ios 0x345c7c;
	bool isStoreItemUnlocked(int) = win 0x1dec10;
	TodoReturn keyCostForSecretChest(int);
	TodoReturn logCoins();
	TodoReturn markLevelAsCompletedAndClaimed(GJGameLevel*);
	void postLoadGameStats() = win 0x1e6d40;
	TodoReturn preProcessReward(GJRewardItem*);
	void preSaveGameStats() = win 0x1e6f10;
	TodoReturn processChallengeQueue(int) = win 0x1d81d0, imac 0x742d0, m1 0x6742c;
	TodoReturn purchaseItem(int);
	TodoReturn recountSpecialStats() = win 0x1d9a20, imac 0x762a0, m1 0x691e4;
	TodoReturn recountUserCoins(bool);
	TodoReturn registerRewardsFromItem(GJRewardItem*);
	TodoReturn removeChallenge(int);
	void removeErrorFromSpecialChests() = win 0x1e6c00, m1 0x6a548, imac 0x77c50;
	TodoReturn removeQueuedChallenge(int);
	TodoReturn removeQueuedSecondaryChallenge(int);
	void resetChallengeTimer() = m1 0x66760, imac 0x736c0;
	TodoReturn resetPreSync();
	TodoReturn resetSpecialStatAchievements() = imac 0x77e60;
	TodoReturn resetUserCoins();
	TodoReturn restorePostSync();
	void setAwardedBonusKeys(int);
	void setStarsForMapPack(int, int) = win 0x1d4c00;
	void setStat(char const*, int) = win 0x1cb2f0, imac 0x658f0, m1 0x5ab70;
	void setStatIfHigher(char const*, int);
	void setupIconCredits() = win 0x1ba150, m1 0x2b9bf4, imac 0x32a5e0;
	TodoReturn shopTypeForItemID(int);
	TodoReturn shouldAwardSecretKey();
	TodoReturn starsForMapPack(int);
	TodoReturn storeChallenge(int, GJChallengeItem*);
	TodoReturn storeChallengeTime(int) = imac 0x73660;
	TodoReturn storePendingUserCoin(char const*);
	TodoReturn storeQueuedChallenge(int, GJChallengeItem*);
	TodoReturn storeRewardState(GJRewardType, int, int, gd::string);
	TodoReturn storeSecondaryQueuedChallenge(int, GJChallengeItem*);
	TodoReturn storeSecretCoin(char const*);
	void storeUserCoin(char const*);
	TodoReturn tempClear();
	void toggleEnableItem(UnlockType, int, bool) = win 0x1dad90, m1 0x6b1cc, imac 0x78870;
	void tryFixPathBug() = win 0x1ca870;
	TodoReturn trySelectActivePath() = win 0x1ca740, imac 0x6b120;
	void uncompleteLevel(GJGameLevel*) = win 0x1d4740;
	void unlockGauntletChest(int) = ios 0x346404;
	TodoReturn unlockPathChest(int);
	TodoReturn unlockSecretChest(int);
	TodoReturn unlockSpecialChest(gd::string);
	TodoReturn updateActivePath(StatKey);
	gd::string usernameForAccountID(int);
	void verifyPathAchievements() = win 0x1caf70;
	void verifyUserCoins() = win 0x1d57a0, imac 0x6f1d0, m1 0x630a4;

	virtual bool init() = m1 0x518d8, win 0x1c7280, imac 0x5b350, ios 0x3361ac;

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
	gd::map<std::pair<int, UnlockType>, int> m_accountIDForIcon;
	gd::map<int, gd::string> m_usernameForAccountID;
	bool m_GS29;
	int m_activePath;
}

[[link(android)]]
class GameToolbox {
	static void addBackButton(cocos2d::CCLayer*, cocos2d::CCMenuItem*) = win 0x63a20, imac 0x4fa520, ios 0x4abd0, m1 0x45326c;
	static void addRThumbScrollButton(cocos2d::CCLayer*) = win 0x63b00, imac 0x4fa5f0, m1 0x453354, ios 0x4acb4;
	static void alignItemsHorisontally(cocos2d::CCArray*, float, cocos2d::CCPoint, bool) = win 0x62b20, ios 0x49d30, imac 0x4f8ea0;
	static void alignItemsVertically(cocos2d::CCArray*, float, cocos2d::CCPoint);
	static TodoReturn bounceTime(float);
	static TodoReturn colorToSepia(cocos2d::ccColor3B, float);
	static TodoReturn contentScaleClipRect(cocos2d::CCRect&);
	static TodoReturn createHashString(gd::string const&, int);
	static CCMenuItemToggler* createToggleButton(gd::string label, cocos2d::SEL_MenuHandler selector, bool state, cocos2d::CCMenu* menu, cocos2d::CCPoint position, cocos2d::CCNode* parent, cocos2d::CCNode* labelParent, cocos2d::CCArray* container) = imac 0x231920;
	static CCMenuItemToggler* createToggleButton(gd::string label, cocos2d::SEL_MenuHandler selector, bool state, cocos2d::CCMenu* menu, cocos2d::CCPoint position, cocos2d::CCNode* parent, cocos2d::CCNode* labelParent, float buttonScale, float maxLabelScale, float maxLabelWidth, cocos2d::CCPoint labelOffset, char const* font, bool labelTop, int labelTag, cocos2d::CCArray* container) = win 0x63080, imac 0x4f9b80, m1 0x4528d0, ios 0x4a4f8;
	static bool doWeHaveInternet();
	static TodoReturn easeToText(int);
	static float fast_rand_0_1() = imac 0x4fc6c0, m1 0x4551ac;
	static TodoReturn fast_rand_minus1_1();
	static TodoReturn fast_rand();
	static void fast_srand(uint64_t) = m1 0x45516c, imac 0x4fc670;
	static TodoReturn gen_random(int);
	static TodoReturn getDropActionWDelay(float, float, float, cocos2d::CCNode*, cocos2d::SEL_CallFunc);
	static TodoReturn getDropActionWEnd(float, float, float, cocos2d::CCAction*, float);
	static cocos2d::CCActionEase* getEasedAction(cocos2d::CCActionInterval*, int, float) = imac 0x4fc400, m1 0x454f34; // has almost all easing funcs
	static TodoReturn getEasedValue(float, int, float) = win 0x67550;
	static uint64_t getfast_srand();
	static TodoReturn getInvertedEasing(int);
	static TodoReturn getLargestMergedIntDicts(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
	static TodoReturn getMultipliedHSV(cocos2d::ccHSVValue const&, float);
	static TodoReturn getRelativeOffset(GameObject*, cocos2d::CCPoint) = win 0x63380;
	static gd::string getResponse(cocos2d::extension::CCHttpResponse*) = win 0x62d20, imac 0x4f9610, m1 0x452480;
	static gd::string getTimeString(int, bool) = win 0x64830, imac 0x4fc280, m1 0x454db4;
	static TodoReturn hsvFromString(gd::string const&, char const*) = imac 0x4facc0;
	static gd::string intToShortString(int) = win 0x67b30, imac 0x501e80, m1 0x459ec8;
	static TodoReturn intToString(int) = win 0x67a70, imac 0x501b70, m1 0x459ba0, ios 0x4e558;
	static bool isIOS();
	static bool isRateEasing(int);
	static TodoReturn mergeDictsSaveLargestInt(cocos2d::CCDictionary*, cocos2d::CCDictionary*) = imac 0x4fa060, m1 0x452dc8;
	static TodoReturn mergeDictsSkipConflict(cocos2d::CCDictionary*, cocos2d::CCDictionary*) = imac 0x4fa2d0, m1 0x453028;
	static TodoReturn msToTimeString(int, int);
	static TodoReturn multipliedColorValue(cocos2d::ccColor3B, cocos2d::ccColor3B, float);
	static TodoReturn openAppPage();
	static TodoReturn openRateURL(gd::string, gd::string);
	static cocos2d::CCParticleSystemQuad* particleFromString(gd::string const& str, cocos2d::CCParticleSystemQuad* system, bool p2) = win inline, imac 0x500b10, m1 0x458ac0 {
		cocos2d::ParticleStruct ret;
		GameToolbox::particleStringToStruct(str, ret);
		return GameToolbox::particleFromStruct(ret, system, p2);
	}
	static cocos2d::CCParticleSystemQuad* particleFromStruct(cocos2d::ParticleStruct const&, cocos2d::CCParticleSystemQuad*, bool) = win 0x66a10, imac 0x500c20, m1 0x458bac;
	static void particleStringToStruct(gd::string const&, cocos2d::ParticleStruct&) = win 0x65f50, imac 0x4ffbb0, m1 0x457c80;
	static gd::string pointsToString(int) = win 0x68170, imac 0x502610, m1 0x45a650;
	static void postClipVisit() = ios 0x4a3bc, m1 0x452740, imac 0x4f99e0;
	static void preVisitWithClippingRect(cocos2d::CCNode*, cocos2d::CCRect) = win 0x62fd0, ios 0x4a2d8, m1 0x452658, imac 0x4f98e0;
	static TodoReturn preVisitWithClipRect(cocos2d::CCRect);
	static gd::string saveParticleToString(cocos2d::CCParticleSystemQuad*) = win 0x64ce0, imac 0x4fc740, m1 0x455230;
	static TodoReturn saveStringToFile(gd::string const&, gd::string const&);
	static TodoReturn stringFromHSV(cocos2d::ccHSVValue, char const*);
	static cocos2d::CCDictionary* stringSetupToDict(gd::string const&, char const*) = win 0x64640, imac 0x4fbb70, m1 0x4546ec;
	static gd::map<gd::string,gd::string> stringSetupToMap(gd::string const&, char const*, gd::map<gd::string, gd::string>&) = win 0x642a0;
	static TodoReturn strongColor(cocos2d::ccColor3B) = ios 0x4bbd8;
	static gd::string timestampToHumanReadable(time_t, time_t) = win 0x67cd0;
	static cocos2d::ccColor3B transformColor(cocos2d::ccColor3B const&, cocos2d::ccHSVValue) = win 0x63ca0;
	static TodoReturn transformColor(cocos2d::ccColor3B const&, float, float, float);
}

[[link(android)]]
class GauntletLayer : cocos2d::CCLayer, LevelManagerDelegate {
	// virtual ~GauntletLayer();
	GauntletLayer() {}

	static GauntletLayer* create(GauntletType gauntletType) = win inline, imac 0x3955f0, m1 0x31d55c {
		auto ret = new GauntletLayer();
		if (ret->init(gauntletType)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	bool init(GauntletType) = win 0x1e93d0, imac 0x3956d0, m1 0x31d624;
	void onBack(cocos2d::CCObject* sender) = win 0x1eb5e0, imac 0x395d40, m1 0x31dc80;
	void onLevel(cocos2d::CCObject* sender) = win 0x1eaf60, imac 0x397270, m1 0x31f034;
	static cocos2d::CCScene* scene(GauntletType) = win 0x1e90b0, imac 0x3954e0, m1 0x31d474;
	void setupGauntlet(cocos2d::CCArray*) = win 0x1e9fd0, imac 0x395d90, m1 0x31dcc8;
	void unlockActiveItem() = win 0x1eafd0, imac 0x3972b0, m1 0x31f078;

	virtual void keyBackClicked() = win 0x1eb630, m1 0x31f6f8, imac 0x3978b0, ios 0x244464;
	virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) = win 0x1e9bc0, m1 0x31ebdc, imac 0x396e80, ios 0x243d60;
	virtual void loadLevelsFailed(char const*, int) = win 0x1e9dd0, m1 0x31ed74, imac 0x397010, ios 0x243e98;

	cocos2d::CCArray* m_levels;
	LoadingCircle* m_loadingCircle;
	GauntletType m_gauntletType;
	cocos2d::CCSprite* m_backgroundSprite;
	void* m_unkPtr;
	CCMenuItemSpriteExtra* m_activeItemButton;
	cocos2d::CCArray* m_activeObjects;
	TextArea* m_tryAgainText;
}

[[link(android)]]
class GauntletNode : cocos2d::CCNode {
	// virtual ~GauntletNode();
	GauntletNode() {}

	static GauntletNode* create(GJMapPack* gauntlet) = win inline, imac 0x57a2f0, m1 0x4c64d0, ios 0x1ca380 {
		auto ret = new GauntletNode();
		if (ret->init(gauntlet)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	static gd::string frameForType(GauntletType) = win 0x1ef420, imac 0x57c810, m1 0x4c8adc;
	bool init(GJMapPack*) = win 0x1edf90, imac 0x57abf0, m1 0x4c6d84, ios 0x1caa9c;
	static gd::string nameForType(GauntletType) = win 0x1f0590, imac 0x57c320, m1 0x4c84a0;
	void onClaimReward() = win 0x1ef3e0, imac 0x57ab20, m1 0x4c6cd8, ios 0x1ca9f4;

	cocos2d::CCNode* m_gauntletInfoNode;
	cocos2d::CCNode* m_rewardNode;
}

[[link(android)]]
class GauntletSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate, LevelManagerDelegate {
	// virtual ~GauntletSelectLayer();
	GauntletSelectLayer() {}

	static GauntletSelectLayer* create(int p0) = win inline, imac 0x578c50, m1 0x4c5010, ios 0x1c907c {
		auto ret = new GauntletSelectLayer();
		if (ret->init(p0)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	void goToPage(int, bool) = win 0x1ed600, imac 0x57a7f0, m1 0x4c69b0;
	bool init(int) = win 0x1ebd80, imac 0x578d40, m1 0x4c50d8, ios 0x1c9138;
	void onBack(cocos2d::CCObject* sender) = win 0x1ed7b0, imac 0x579880, m1 0x4c5b24;
	void onInfo(cocos2d::CCObject* sender) = win 0x1ec8f0, imac 0x5798f0, m1 0x4c5b98;
	void onNext(cocos2d::CCObject* sender) = win 0x1ed5c0, imac 0x579860, m1 0x4c5b10;
	void onPlay(cocos2d::CCObject* sender) = win 0x1ed870, imac 0x57a370, m1 0x4c6560;
	void onPrev(cocos2d::CCObject* sender) = win 0x1ed5e0, imac 0x579840, m1 0x4c5afc;
	void onRefresh(cocos2d::CCObject* sender) = win 0x1eca30, imac 0x5799a0, m1 0x4c5c50;
	static cocos2d::CCScene* scene(int) = win 0x1ebc50, imac 0x578b30, m1 0x4c4f30;
	void setupGauntlets() = win 0x1ece70, imac 0x579a60, m1 0x4c5cf8, ios 0x1c9d18;
	void unblockPlay() = win 0x1ed760, imac 0x57a8e0, m1 0x4c6aa4;
	void updateArrows() = imac 0x579f80, m1 0x4c618c;

	virtual void onExit() = win 0x1edf40, m1 0x4c6d18, imac 0x57ab60, ios 0x1caa34;
	virtual void keyBackClicked() = win 0x1ed860, m1 0x4c6bec, imac 0x57aa30, ios 0x1ca9e8;
	virtual void scrollLayerWillScrollToPage(BoomScrollLayer*, int) = win 0x1ed770, m1 0x4c6b4c, imac 0x57a990, ios 0x1ca948;
	virtual void scrollLayerScrolledToPage(BoomScrollLayer*, int) = win 0x1ed770, m1 0x4c6aac, imac 0x57a8f0, ios 0x1ca8a8;
	virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) = win 0x1ecb50, m1 0x4c61dc, imac 0x579fd0, ios 0x1ca154;
	virtual void loadLevelsFailed(char const*, int) = win 0x1ecd00, m1 0x4c6374, imac 0x57a180, ios 0x1ca2bc;

	cocos2d::CCSprite* m_backgroundSprite;
	BoomScrollLayer* m_scrollLayer;
	CCMenuItemSpriteExtra* m_leftButton;
	CCMenuItemSpriteExtra* m_rightButton;
	CCMenuItemSpriteExtra* m_refreshButton;
	bool m_exiting;
	bool m_playing;
	TextArea* m_tryAgainText;
	LoadingCircle* m_loadingCircle;
	cocos2d::CCDictionary* m_gauntlets;
	bool m_playBlocked;
}

[[link(android)]]
class GauntletSprite : cocos2d::CCNode {
	// virtual ~GauntletSprite();
	GauntletSprite() {}

	static GauntletSprite* create(GauntletType gauntletType, bool locked) = win inline, imac 0x3971a0, m1 0x31ef10 {
		auto ret = new GauntletSprite();
		if (ret->init(gauntletType, locked)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	void addLockedSprite() = win 0x1eb6c0, imac 0x397aa0, m1 0x31f930;
	void addNormalSprite() = imac 0x3979d0, m1 0x31f834;
	cocos2d::ccColor3B colorForType(GauntletType) = imac 0x397da0, m1 0x31fc4c;
	bool init(GauntletType gauntletType, bool locked) = win inline, imac 0x397950, m1 0x31f78c {
		if (!CCNode::init()) return false;

		m_gauntletType = gauntletType;
		this->setContentSize({ 60.0f, 60.0f });
		this->toggleLockedSprite(locked);

		return true;
	}
	float luminanceForType(GauntletType) = imac 0x397d70, m1 0x31fc2c;
	void toggleLockedSprite(bool) = win 0x1eb9f0, imac 0x397880, m1 0x31f6b8;

	GauntletType m_gauntletType;
}

[[link(android)]]
class GhostTrailEffect : cocos2d::CCNode {
	// virtual ~GhostTrailEffect();
	//GhostTrailEffect() = ios 0x305d20;

	static GhostTrailEffect* create() = win 0x68b50, ios 0x305740;

	TodoReturn doBlendAdditive();
	void runWithTarget(cocos2d::CCSprite*, float, float, float, float, bool) = ios 0x305810;
	void stopTrail() = ios 0x305cbc;
	void trailSnapshot(float) = win 0x68c90;

	virtual bool init() = m1 0x52af9c, win 0x68c30, imac 0x604890, ios 0x3057b4;
	virtual void draw() = ios 0x305d1c {}

	PAD = win 0x30;
	cocos2d::ccColor3B m_color;
	PAD = win 0xc;
}

[[link(android)]]
class GJAccountBackupDelegate {
	virtual void backupAccountFinished();
	virtual void backupAccountFailed(BackupAccountError, int);
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
	// GJAccountManager();

	static GJAccountManager* get() {
		return GJAccountManager::sharedState();
	}

	static GJAccountManager* sharedState() = win 0x1f1220, m1 0xba1b0, imac 0xd2800, ios 0x3a7cd4;

	void addDLToActive(char const* tag, cocos2d::CCObject*);
	void addDLToActive(char const* tag);
	bool backupAccount(gd::string) = win 0x1f2bc0;
	void dataLoaded(DS_Dictionary*) = imac 0xd7f90, m1 0xbf188;
	void encodeDataTo(DS_Dictionary*) = imac 0xd7f30, m1 0xbf130;
	void firstSetup();
	bool getAccountBackupURL() = win 0x1f25a0;
	bool getAccountSyncURL() = win 0x1f3500;
	cocos2d::CCObject* getDLObject(char const*);
	gd::string getShaPassword(gd::string) = win 0x1F4FF0;
	void handleIt(bool, gd::string, gd::string, GJHttpType) = win 0x1f1590, imac 0xd2c80, m1 0xba5d4;
	void handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	void handleItND(cocos2d::CCNode*, void*);
	bool isDLActive(char const* tag);
	void linkToAccount(gd::string, gd::string, int, int);
	void loginAccount(gd::string, gd::string);
	void onBackupAccountCompleted(gd::string, gd::string) = win 0x1f30f0;
	void onGetAccountBackupURLCompleted(gd::string, gd::string) = win 0x1f28f0;
	void onGetAccountSyncURLCompleted(gd::string, gd::string) = win 0x1f3840;
	void onLoginAccountCompleted(gd::string, gd::string) = win 0x1f21b0;
	void onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = win 0x1f1490;
	void onRegisterAccountCompleted(gd::string, gd::string) = win 0x1f1bc0;
	void onSyncAccountCompleted(gd::string, gd::string) = win 0x1f3d80, imac 0xd44b0, m1 0xbbb7c;
	void onUpdateAccountSettingsCompleted(gd::string, gd::string) = win 0x1f4e90;
	void ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType) = win 0x1f1340;
	void registerAccount(gd::string, gd::string, gd::string);
	void removeDLFromActive(char const*);
	bool syncAccount(gd::string);
	void unlinkFromAccount();
	void updateAccountSettings(int, int, int, gd::string, gd::string, gd::string);

	virtual bool init() = win 0x1f17e0, m1 0xbcec8, imac 0xd5a90, ios 0x3a953c;

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

	inline GJAccountSettingsLayer() {
		m_accountID = 0;
		m_messageStatus = 0;
		m_friendStatus = 0;
		m_commentHistoryStatus = 0;
		m_youtubeURL = "";
		m_twitterURL = "";
		m_twitchURL = "";
		m_youtubeInput = nullptr;
		m_twitterInput = nullptr;
		m_twitchInput = nullptr;
		m_messageSettings = nullptr;
		m_friendRequestSettings = nullptr;
		m_commentSettings = nullptr;
	}

	static GJAccountSettingsLayer* create(int a1) = win inline, m1 0x23d89c, imac 0x29b2f0 {
		GJAccountSettingsLayer* pRet = new GJAccountSettingsLayer();
		if (pRet && pRet->init(a1)) {
			pRet->autorelease();
			return pRet;
		}

		CC_SAFE_DELETE(pRet);

		return nullptr;
	}

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float) = imac 0x29ce50;
	bool init(int) = win 0x27FCD0, m1 0x23d9b4, imac 0x29b470;
	void onClose(cocos2d::CCObject* sender) = imac 0x29d1c0;
	void onCommentSetting(cocos2d::CCObject* sender);
	void onFriendRequests(cocos2d::CCObject* sender);
	void onMessageSetting(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	TodoReturn updateScoreValues();

	virtual void keyBackClicked() = win 0x282670, m1 0x240128, imac 0x29df40, ios 0x2e8708;
	virtual void textInputShouldOffset(CCTextInputNode*, float) = m1 0x23f964, imac 0x29d710, ios 0x2e82b4;
	virtual void textInputReturn(CCTextInputNode*) = m1 0x23fa34, imac 0x29d7d0, ios 0x2e8320;

	int m_accountID;
	int m_messageStatus;
	int m_friendStatus;
	int m_commentHistoryStatus;
	gd::string m_youtubeURL;
	gd::string m_twitterURL;
	gd::string m_twitchURL;
	CCTextInputNode* m_youtubeInput;
	CCTextInputNode* m_twitterInput;
	CCTextInputNode* m_twitchInput;
	cocos2d::CCArray* m_messageSettings;
	cocos2d::CCArray* m_friendRequestSettings;
	cocos2d::CCArray* m_commentSettings;
}

[[link(android)]]
class GJAccountSyncDelegate {
	virtual void syncAccountFinished();
	virtual void syncAccountFailed(BackupAccountError, int);
}

[[link(android)]]
class GJActionManager : cocos2d::CCNode {
	// virtual ~GJActionManager();

	static GJActionManager* create();

	TodoReturn getInternalAction(int);
	TodoReturn runInternalAction(cocos2d::CCAction*, cocos2d::CCNode*) = imac 0x6148c0;
	TodoReturn stopAllInternalActions();
	TodoReturn stopInternalAction(int) = imac 0x614910;
	TodoReturn updateInternalActions(float, bool);

	virtual bool init() = m1 0x538674, imac 0x614890, ios 0x30f004;
}

[[link(android)]]
class GJAssetDownloadAction {
	int m_id;
	GJAssetType m_assetType;
	int m_status;
}

[[link(android), depends(GJGameState), depends(PlayerButtonCommand)]]
class GJBaseGameLayer : cocos2d::CCLayer, TriggerEffectDelegate {
	~GJBaseGameLayer() = win 0x1f6650;
	// GJBaseGameLayer() = ios 0x1256b4;

	static GJBaseGameLayer* get() {
		return GameManager::get()->m_gameLayer;
	}

	void activateCustomRing(RingObject*);
	TodoReturn activatedAudioTrigger(SFXTriggerGameObject*, float);
	TodoReturn activateEventTrigger(EventLinkTrigger*, gd::vector<int> const&);
	TodoReturn activateItemCompareTrigger(ItemTriggerGameObject*, gd::vector<int> const&);
	void activateItemEditTrigger(ItemTriggerGameObject*) = win 0x224200;
	void activateObjectControlTrigger(ObjectControlGameObject*);
	TodoReturn activatePersistentItemTrigger(ItemTriggerGameObject*);
	void activatePlayerControlTrigger(PlayerControlGameObject*);
	TodoReturn activateResetTrigger(EffectGameObject*);
	void activateSFXEditTrigger(SFXTriggerGameObject*);
	void activateSFXTrigger(SFXTriggerGameObject*) = win 0x230d50, imac 0x14ece0;
	void activateSongEditTrigger(SongTriggerGameObject*) = win 0x230f50, imac 0x14ea40;
	void activateSongTrigger(SongTriggerGameObject*) = win 0x2306d0;
	TodoReturn activateTimerTrigger(TimerTriggerGameObject*, gd::vector<int> const&);
	TodoReturn addAreaEffect(EnterEffectObject*, gd::vector<EnterEffectInstance>*, GJAreaActionType);
	void addCustomEnterEffect(EnterEffectObject*, bool);
	TodoReturn addGuideArt(GameObject*) = imac 0x156f50;
	void addObjectCounter(LabelGameObject*) = imac 0x141020, m1 0x115fe4;
	TodoReturn addPickupTrigger(CountTriggerGameObject*);
	TodoReturn addPoints(int);
	void addProximityVolumeEffect(int, int, SFXTriggerGameObject*);
	TodoReturn addRemapTargets(gd::set<int>&) = imac 0x109e20;
	void addToGroupParents(GameObject*) = imac 0x132340;
	void addToGroups(GameObject*, bool) = win 0x214730, imac 0x1319f0, m1 0x1099ec;
	TodoReturn addToObjectsToShow(GameObject*);
	TodoReturn addUIObject(GameObject*);
	void animateInDualGroundNew(GameObject*, float, bool, float) = win 0x203ed0;
	TodoReturn animateInGroundNew(bool, float, bool) = imac 0x118d20;
	void animateOutGroundNew(bool) = imac 0x119010;
	TodoReturn animatePortalY(float, float, float, float);
	TodoReturn applyLevelSettings(GameObject*) = imac 0x14ce80;
	void applyRemap(EffectGameObject*, gd::vector<int> const&, gd::unordered_map<int, int>&) = win 0x20b960;
	void applySFXEditTrigger(int, int, SFXTriggerGameObject*);
	void applyShake(cocos2d::CCPoint&);
	void assignNewStickyGroups(cocos2d::CCArray*) = win 0x215530;
	TodoReturn asyncBGLoaded(int);
	TodoReturn asyncGLoaded(int);
	TodoReturn asyncMGLoaded(int);
	TodoReturn atlasValue(int);
	void bumpPlayer(PlayerObject*, EffectGameObject*) = win 0x208260, imac 0x11c6d0, m1 0xf8a24;
	TodoReturn buttonIDToButton(int);
	TodoReturn calculateColorGroups();
	TodoReturn cameraMoveX(float, float, float, bool);
	TodoReturn cameraMoveY(float, float, float, bool);
	bool canBeActivatedByPlayer(PlayerObject*, EffectGameObject*) = win 0x208150, imac 0x11c270, m1 0xf8624;
	TodoReturn canProcessSFX(SFXTriggerState&, gd::unordered_map<int, int>&, gd::unordered_map<int, float>&, gd::vector<SFXTriggerState>&);
	TodoReturn canTouchObject(GameObject*);
	TodoReturn checkCameraLimitAfterTeleport(PlayerObject*, float) = win 0x229770, imac 0x115690, m1 0xf2bcc;
	TodoReturn checkCollision(int, int);
	void checkCollisionBlocks(EffectGameObject*, gd::vector<EffectGameObject*>*, int) = win 0x209650;
	int checkCollisions(PlayerObject*, float, bool) = win 0x204350, imac 0x119810, m1 0xf661c;
	void checkRepellPlayer() = win 0x2294a0;
	void checkSpawnObjects() = win 0x20b080, imac 0x120da0;
	TodoReturn claimMoveAction(int, bool);
	TodoReturn claimParticle(gd::string, int);
	TodoReturn claimRotationAction(int, int, float&, float&, bool, bool);
	TodoReturn clearActivatedAudioTriggers();
	TodoReturn clearPickedUpItems();
	TodoReturn collectedObject(EffectGameObject*);
	void collisionCheckObjects(PlayerObject*, gd::vector<GameObject*>*, int, float) = win 0x205420, imac 0x11a8f0, m1 0xf7500;
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
	TodoReturn convertToClosestDirection(float, float) = win 0x21f0b0;
	void createBackground(int) = win 0x1fc5d0, imac 0x107650, m1 0xe7620;
	void createGroundLayer(int, int) = win 0x1fca10, imac 0x107bd0, m1 0xe7b5c;
	void createMiddleground(int) = win 0x1fc890, imac 0x107de0, m1 0xe7d40;
	TodoReturn createNewKeyframeAnim();
	TodoReturn createParticle(int, char const*, int, cocos2d::tCCPositionType);
	void createPlayer() = win 0x1fc0c0, imac 0x1072f0, m1 0xe72e0, ios 0x1e73b8;
	TodoReturn createPlayerCollisionBlock() = win 0x208c00, imac 0x11ee60;
	void createTextLayers() = win 0x1ffa50, m1 0xf09d4, imac 0x113b80;
	TodoReturn damagingObjectsInRect(cocos2d::CCRect, bool);
	void destroyObject(GameObject*) = win 0x206b50, imac 0x11cd80, m1 0xf9108;
	void enterDualMode(GameObject*, bool) = imac 0x11e160, m1 0xfa400;
	void exitStaticCamera(bool exitX, bool exitY, float time, int easingType, float easingRate, bool smoothVelocity, float smoothVelocityMod, bool exitInstant) = win 0x22e7a0;
	TodoReturn flipFinished();
	void flipGravity(PlayerObject*, bool, bool) = win 0x203660, imac 0x118870, m1 0xf58a4;
	TodoReturn flipObjects();
	TodoReturn gameEventToString(GJGameEvent);
	void gameEventTriggered(GJGameEvent, int, int) = win 0x221fb0, imac 0x115740, m1 0xf2c98;
	TodoReturn generateEnterEasingBuffer(int, float) = imac 0x113260;
	TodoReturn generateEnterEasingBuffers(EnterEffectObject*);
	TodoReturn generatePickupAnimRandVal(GameObject*, float&, float&);
	TodoReturn generateSpawnRemap() = imac 0x10aa90;
	TodoReturn generateTargetGroups() = imac 0x10e3e0;
	TodoReturn generateVisibilityGroups() = imac 0x1108a0;
	TodoReturn getActiveOrderSpawnObjects();
	float getAreaObjectValue(EnterEffectInstance*, GameObject*, cocos2d::CCPoint&, bool&) = win 0x2188d0;
	TodoReturn getBumpMod(PlayerObject*, int);
	TodoReturn getCameraEdgeValue(int) = imac 0x1444c0;
	TodoReturn getCapacityString();
	TodoReturn getCenterGroupObject(int, int);
	TodoReturn getCustomEnterEffects(int, bool);
	float getEasedAreaValue(GameObject*, EnterEffectInstance*, float, bool, int) = win 0x218ac0;
	TodoReturn getEnterEasingKey(int, float);
	TodoReturn getEnterEasingValue(float, int, float, int);
	TodoReturn getFollowSpeedVal(GameObject*, int, int, float, float);
	float getGroundHeight(PlayerObject*, int);
	TodoReturn getGroundHeightForMode(int) = win 0x2028b0;
	TodoReturn getGroup(int) = win 0x214a70;
	TodoReturn getGroupParent(int);
	TodoReturn getGroupParentsString(GameObject*);
	TodoReturn getItemValue(int, int);
	float getMaxPortalY() = win 0x2042d0;
	TodoReturn getMinDistance(cocos2d::CCPoint, cocos2d::CCArray*, float, int) = win 0x231ac0;
	float getMinPortalY() = win 0x2041f0;
	float getModifiedDelta(float) = win 0x227730, imac 0x147090, m1 0x11a488;
	TodoReturn getMoveTargetDelta(EffectGameObject*, bool);
	TodoReturn getOptimizedGroup(int);
	PlayerObject* getOtherPlayer(PlayerObject*) = ios 0x1efb58, imac 0x1170b0;
	TodoReturn getParticleKey(int, char const*, int, cocos2d::tCCPositionType);
	TodoReturn getParticleKey2(gd::string);
	TodoReturn getPlayerButtonID(int, bool);
	TodoReturn getPlayTimerFullSeconds();
	TodoReturn getPlayTimerMilli() = ios 0x20bfe0;
	TeleportPortalObject* getPortalTarget(TeleportPortalObject*);
	cocos2d::CCPoint getPortalTargetPos(TeleportPortalObject*, GameObject*, PlayerObject*);
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
	TodoReturn gravBumpPlayer(PlayerObject*, EffectGameObject*) = imac 0x11c8e0, m1 0xf8c48;
	void groupStickyObjects(cocos2d::CCArray*) = imac 0x132930, win 0x215350;
	void handleButton(bool down, int button, bool isPlayer1) = win 0x2238a0, imac 0x13fc40, m1 0x114ea0;
	bool hasItem(int) = m1 0xf9bac, imac 0x11d8a0;
	bool hasUniqueCoin(EffectGameObject*) = win 0x207020, imac 0x11ce50, m1 0xf91ec;
	void increaseBatchNodeCapacity() = win 0x1fd9d0;
	bool isFlipping() {
		return m_gameState.m_levelFlipping != 0.f && m_gameState.m_levelFlipping != 1.f;
	}
	bool isPlayer2Button(int);
	void lightningFlash(cocos2d::CCPoint to, cocos2d::ccColor3B color);
	void lightningFlash(cocos2d::CCPoint from, cocos2d::CCPoint to, cocos2d::ccColor3B color, float lineWidth, float duration, int displacement, bool flash, float opacity) = win 0x235db0, imac 0x1154f0, m1 0xf2a4c;
	TodoReturn loadGroupParentsFromString(GameObject*, gd::string);
	void loadLevelSettings() = win 0x229e30, imac 0x14cce0, m1 0x11edfc;
	void loadStartPosObject() = win 0x225710;
	void loadUpToPosition(float, int, int) = win 0x2258b0;
	TodoReturn maxZOrderForShaderZ(int);
	TodoReturn minZOrderForShaderZ(int);
	TodoReturn modifyGroupPhysics(AdvancedFollowEditObject*, cocos2d::CCArray*);
	TodoReturn modifyObjectPhysics(AdvancedFollowEditObject*, GameObjectPhysics&);
	void moveAreaObject(GameObject*, float, float) = win 0x21b2c0;
	TodoReturn moveCameraToPos(cocos2d::CCPoint);
	void moveObject(GameObject*, double, double, bool);
	void moveObjects(cocos2d::CCArray*, double, double, bool) = win 0x21e550;
	void moveObjectsSilent(int, double, double);
	TodoReturn objectIntersectsCircle(GameObject*, GameObject*);
	GJGameEvent objectTypeToGameEvent(int) = win 0x222520, imac 0x118d00, m1 0xf5ca0;
	TodoReturn optimizeMoveGroups() = imac 0x10b310;
	TodoReturn orderSpawnObjects();
	TodoReturn parentForZLayer(int, bool, int, int) = imac 0x113fc0;
	void pauseAudio() = win 0x227430, imac 0x146fa0, m1 0x11a3b8;
	TodoReturn performMathOperation(double, double, int);
	TodoReturn performMathRounding(double, int);
	void pickupItem(EffectGameObject*) = win 0x206c70, imac 0x11cf50, m1 0xf9320;
	TodoReturn playAnimationCommand(int, int);
	bool playerCircleCollision(PlayerObject*, GameObject*) = win 0x202950;
	TodoReturn playerIntersectsCircle(PlayerObject*, GameObject*);
	void playerTouchedObject(PlayerObject*, GameObject*);
	void playerTouchedRing(PlayerObject*, RingObject*) = win 0x2086d0, imac 0x11ca30, m1 0xf8dd0;
	void playerTouchedTrigger(PlayerObject*, EffectGameObject*) = win 0x2087e0, imac 0x11cae0;
	TodoReturn playerWasTouchingObject(PlayerObject*, GameObject*);
	void playerWillSwitchMode(PlayerObject*, GameObject*) = win 0x203a50, m1 0xf5a6c, imac 0x118a30;
	void playExitDualEffect(PlayerObject*) = win 0x207710, ios 0x1f44b0;
	TodoReturn playFlashEffect(float, int, float);
	TodoReturn playKeyframeAnimation(KeyframeAnimTriggerObject*, gd::vector<int> const&);
	TodoReturn playSpeedParticle(float);
	TodoReturn positionForShaderTarget(int) = win 0x213d40;
	TodoReturn positionUIObjects();
	TodoReturn prepareSavePositionObjects();
	TodoReturn prepareTransformParent(bool);
	void preResumeGame() = m1 0x11a3ac, imac 0x146f90;
	TodoReturn preUpdateVisibility(float);
	void processActivatedAudioTriggers(float) = win 0x232a70;
	void processAdvancedFollowAction(AdvancedFollowInstance&, bool, float);
	void processAdvancedFollowActions(float) = win 0x21f8e0;
	void processAreaActions(float, bool) = win 0x2197d0;
	void processAreaEffects(gd::vector<EnterEffectInstance>*, GJAreaActionType, float, bool) = imac 0x1358e0, m1 0x10ca98, win 0x218c40;
	void processAreaFadeGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, bool);
	void processAreaMoveGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool) = win 0x21ace0;
	void processAreaRotateGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool) = win 0x21a5a0;
	void processAreaTintGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, bool) = win 0x21b3b0;
	void processAreaTransformGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool) = win 0x219a30;
	void processAreaVisualActions(float) = imac 0x1389e0, m1 0x10f310;
	GameObject* processCameraObject(GameObject* object, PlayerObject* player) = win inline, m1 0xf45bc, imac 0x1173a0, ios 0x1efd94 {
		if (object) {
			player->m_lastPortalPos = object->getPosition();
			player->m_lastActivatedPortal = object;
		}
		auto ret = object;
		if (m_gameState.m_isDualMode && m_gameState.m_unkGameObjPtr2) ret = m_gameState.m_unkGameObjPtr2;
		if (object) m_gameState.m_unkGameObjPtr1 = object;
		return ret;
	}
	void processCommands(float) = win 0x229830, imac 0x148740, m1 0x11b6d8;
	void processDynamicObjectActions(int, float) = win 0x21ea80;
	void processFollowActions() = win 0x220d80;
	TodoReturn processItems() = ios 0x1f42a4;
	void processMoveActions() = win 0x21ddb0;
	void processMoveActionsStep(float, bool) = win 0x21bde0;
	void processOptionsTrigger(GameOptionsTrigger*) = win 0x214540, imac 0x1316f0, m1 0x10976c;
	void processPlayerFollowActions(float) = win 0x21e6d0;
	void processQueuedAudioTriggers() = win 0x22ac10, imac 0x14e610;
	void processQueuedButtons() = win 0x221f00, imac 0x13fbc0, m1 0x114e04;
	void processRotationActions() = win 0x21c000;
	TodoReturn processSFXObjects() = imac 0x542030;
	TodoReturn processSFXState(SFXTriggerState*, SFXTriggerState*, int, float);
	TodoReturn processSongState(int, float, float, int, float, float, gd::vector<SongTriggerState>*);
	TodoReturn processStateObjects();
	void processTransformActions(bool) = win 0x21ce90;
	void queueButton(int button, bool push, bool isPlayer2) = win inline, m1 0x114c98, imac 0x13fa20 {
		if (button <= 0 || button > 3) {
			return;
		}
		PlayerButtonCommand command = {};
		command.m_button = (PlayerButton) button;
		command.m_isPush = push;
		command.m_isPlayer2 = isPlayer2;
		m_queuedButtons.push_back(command);
	}
	TodoReturn reAddToStickyGroup(GameObject*) = imac 0x132cb0;
	TodoReturn recordAction(int, bool, bool);
	TodoReturn rectIntersectsCircle(cocos2d::CCRect, cocos2d::CCPoint, float);
	void refreshCounterLabels() = win 0x225560, m1 0x117998, imac 0x143350;
	void refreshKeyframeAnims() = imac 0x111860, m1 0xeecfc;
	TodoReturn regenerateEnterEasingBuffers() = imac 0x10aca0;
	TodoReturn registerSpawnRemap(gd::vector<ChanceObject>&);
	TodoReturn registerStateObject(EffectGameObject*);
	TodoReturn removeBackground();
	TodoReturn removeCustomEnterEffects(int, bool);
	void removeFromGroupParents(GameObject*) = imac 0x132280;
	void removeFromGroups(GameObject*) = win 0x2148b0, imac 0x131c30;
	TodoReturn removeFromStickyGroup(GameObject*) = imac 0x132c20;
	TodoReturn removeGroundLayer() = imac 0x107f40;
	TodoReturn removeGroupParent(int);
	TodoReturn removeKeyframe(KeyframeGameObject*) = imac 0x140750;
	TodoReturn removeMiddleground();
	void removeObjectFromSection(GameObject*) = win 0x2175f0, m1 0x10b00c, imac 0x1332c0;
	TodoReturn removePlayer2();
	TodoReturn removeTemporaryParticles();
	void reorderObjectSection(GameObject*) = imac 0x11f2d0, m1 0xfb364;
	TodoReturn reparentObject(cocos2d::CCNode*, cocos2d::CCNode*); //this was set to m1 0x63fd70 - that is incorrect
	void resetActiveEnterEffects() = win 0x1ff150, m1 0xef414, imac 0x111fd0;
	int resetAreaObjectValues(GameObject*, bool) = win 0x2184c0;
	void resetAudio() = win 0x227690, imac 0x147000, m1 0x11a408;
	void resetCamera() = win 0x22ec30, imac 0x14e1b0, m1 0x11fd2c;
	void resetGradientLayers() = win 0x211790;
	TodoReturn resetGroupCounters(bool);
	void resetLevelVariables() = win 0x22a170, imac 0x14d150, m1 0x11f244, ios 0x20c9c8;
	TodoReturn resetMoveOptimizedValue();
	void resetPlayer() = win 0x202c10, imac 0x117430;
	void resetSongTriggerValues() = win 0x5ceb0;
	TodoReturn resetSpawnChannelIndex() = win 0x234ed0, imac 0x14e520;
	void resetStaticCamera(bool, bool) = win 0x22eef0;
	TodoReturn resetStoppedAreaObjects();
	TodoReturn restoreAllUIObjects();
	TodoReturn restoreDefaultGameplayOffsetX();
	TodoReturn restoreDefaultGameplayOffsetY();
	TodoReturn restoreRemap(EffectGameObject*, gd::unordered_map<int, int>&);
	void resumeAudio() = win 0x227580, imac inline {
		FMODAudioEngine::sharedEngine()->resumeAllAudio();
		FMODAudioEngine::sharedEngine()->resumeAllMusic();
		FMODAudioEngine::sharedEngine()->m_system->update();
	}
	TodoReturn rotateAreaObjects(GameObject*, cocos2d::CCArray*, float, bool);
	TodoReturn rotateObject(GameObject*, float);
	void rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint, cocos2d::CCPoint, bool, bool);
	void setGroupParent(GameObject*, int) = imac 0x132130;
	void setStartPosObject(StartPosObject* startPos) = win inline, imac 0x1176d0, m1 0xf48a8 {
		if (startPos != m_startPosObject) {
			if (startPos) {
				startPos->retain();
			}
			if (m_startPosObject) {
				m_startPosObject->release();
			}
			m_startPosObject = startPos;
		}
	}
	void setupLayers() = win 0x1f9870, m1 0xe4c84, imac 0x104950;
	void setupLevelStart(LevelSettingsObject*) = win 0x202d80, m1 0xf48f0, imac 0x117720;
	void setupReplay(gd::string) = win 0x229a20, imac 0x14c060, m1 0x11e2c8;
	void shakeCamera(float duration, float strength, float interval) = win 0x22ad80, imac 0x14f790, m1 0x120cf8, ios 0x20df2c;
	TodoReturn shouldExitHackedLevel() = imac 0x107120;
	TodoReturn sortAllGroupsX();
	TodoReturn sortGroups() = imac 0x10ae60;
	void sortSectionVector() = win 0x217830, m1 0x10bec0, imac 0x134a00;
	TodoReturn sortStickyGroups();
	void spawnGroupTriggered(int groupID, float, bool, gd::vector<int> const&, int, int);
	TodoReturn spawnObjectsInOrder(cocos2d::CCArray*, double, gd::vector<int> const&, int, int);
	cocos2d::CCParticleSystemQuad* spawnParticle(char const* plist, int zOrder, cocos2d::tCCPositionType positionType, cocos2d::CCPoint position) = win 0x22f3f0, imac 0x151480, m1 0x1222ec;
	TodoReturn spawnParticleTrigger(int, cocos2d::CCPoint, float, float);
	TodoReturn spawnParticleTrigger(SpawnParticleGameObject*);
	TodoReturn spawnPlayer2();
	TodoReturn speedForShaderTarget(int) = win 0x213df0;
	cocos2d::CCArray* staticObjectsInRect(cocos2d::CCRect, bool) = win 0x201e90;
	TodoReturn stopAllGroundActions();
	TodoReturn stopCameraShake();
	TodoReturn stopCustomEnterEffect(EnterEffectObject*, bool);
	TodoReturn stopCustomEnterEffect(EnterEffectObject*);
	TodoReturn stopSFXTrigger(SFXTriggerGameObject*);
	TodoReturn swapBackground(int);
	TodoReturn swapGround(int);
	TodoReturn swapMiddleground(int);
	void switchToFlyMode(PlayerObject* player, GameObject* object, bool unused, int type) = win inline, m1 0xf5330, imac 0x118300, ios 0x1f0570 {
		player->switchedToMode((GameObjectType)type);
		auto cameraObject = this->processCameraObject(object, player);
		auto noEffects = cameraObject && cameraObject->m_hasNoEffects;
		switch (type) {
			case 5:
				player->toggleFlyMode(true, noEffects);
				break;
			case 19:
				player->toggleBirdMode(true, noEffects);
				break;
			case 26:
				player->toggleDartMode(true, noEffects);
				break;
			case 41:
				player->toggleSwingMode(true, noEffects);
				break;
		}
		this->toggleGlitter(true);
	}
	void switchToRobotMode(PlayerObject*, GameObject*, bool) = win 0x203780, m1 0xf5534, imac 0x118500, ios 0x1f06e8;
	void switchToRollMode(PlayerObject*, GameObject*, bool) = win 0x203960, m1 0xf5488, imac 0x118450, ios 0x1f0680;
	void switchToSpiderMode(PlayerObject*, GameObject*, bool) = win 0x203870, m1 0xf55e0, imac 0x1185b0, ios 0x1f0750;
	void syncBGTextures() = win 0x22a0d0, m1 0x11f12c, imac 0x14d040;
	void teleportPlayer(TeleportPortalObject*, PlayerObject*) = win 0x200b70, m1 0xf2288, imac 0x114ca0;
	TodoReturn testInstantCountTrigger(int, int, int, bool, int, gd::vector<int> const&, int, int);
	void toggleAudioVisualizer(bool) = win 0x237b90, imac 0x1047d0, m1 0xe4b14;
	void toggleDualMode(GameObject*, bool, PlayerObject*, bool) = win 0x207160, m1 0xf5020, imac 0x117fa0;
	void toggleFlipped(bool, bool) = win 0x235880, imac 0x11c4e0, m1 0xf8868;
	void toggleGroup(int, bool) = imac 0x131520, m1 0x1095c0;
	void toggleLockPlayer(bool disable, bool p2) = win inline, m1 0x1099c0, imac 0x1319a0 {
		auto player = p2 ? m_player2 : m_player1;
		if (disable) player->disablePlayerControls();
		else player->enablePlayerControls();
	}
	void togglePlayerStreakBlend(bool) = imac 0x131910, m1 0x10994c;
	void togglePlayerVisibility(bool visible, bool player1) = win inline {
		if (player1)
			this->m_player1->toggleVisibility(visible);
		else
			this->m_player2->toggleVisibility(visible);
	}
	void togglePlayerVisibility(bool visible) = win inline {
		this->togglePlayerVisibility(visible, true);
		this->togglePlayerVisibility(visible, false);
	}
	TodoReturn transformAreaObjects(GameObject*, cocos2d::CCArray*, float, float, bool);
	TodoReturn triggerAdvancedFollowCommand(AdvancedFollowTriggerObject*);
	TodoReturn triggerAdvancedFollowEditCommand(AdvancedFollowEditObject*);
	TodoReturn triggerAreaEffect(EnterEffectObject*);
	TodoReturn triggerAreaEffectAnimation(EnterEffectObject*);
	TodoReturn triggerDynamicMoveCommand(EffectGameObject*);
	TodoReturn triggerDynamicRotateCommand(EnhancedTriggerObject*);
	TodoReturn triggerGradientCommand(GradientTriggerObject*) = win 0x210020, imac 0x12d9e0, m1 0x106014;
	TodoReturn triggerGravityChange(EffectGameObject*, int);
	TodoReturn triggerMoveCommand(EffectGameObject*);
	TodoReturn triggerRotateCommand(EnhancedTriggerObject*);
	bool triggerShaderCommand(ShaderGameObject*);
	TodoReturn triggerTransformCommand(TransformTriggerGameObject*);
	TodoReturn tryGetGroupParent(int);
	GameObject* tryGetMainObject(int) = win 0x214d10, imac 0x11ea90, m1 0xfabe4;
	TodoReturn tryGetObject(int) = win 0x214d80;
	TodoReturn tryResumeAudio() = imac 0x147030;
	TodoReturn unclaimParticle(char const*, cocos2d::CCParticleSystemQuad*);
	void ungroupStickyObjects(cocos2d::CCArray*) = imac 0x132a50, win 0x215470;
	TodoReturn unlinkAllEvents();
	TodoReturn updateActiveEnterEffect(EnterEffectObject*);
	TodoReturn updateAllObjectSection() = imac 0x14cfd0;
	TodoReturn updateAreaObjectLastValues(GameObject*);
	void updateAudioVisualizer() = win 0x237930, imac 0x1485d0, m1 0x11b5b8;
	void updateBGArtSpeed(float, float) = imac 0x14de70, m1 0x11fb38;
	void updateCamera(float) = win 0x22ae20, imac 0x148c00, m1 0x11bb40;
	TodoReturn updateCameraBGArt(cocos2d::CCPoint, float) = imac 0x14fae0;
	TodoReturn updateCameraEdge(int, int);
	void updateCameraMode(EffectGameObject* obj, bool updateDual) = win inline, m1 0xf5a04, imac 0x1189b0, ios 0x1f0a34 {
		auto cameraFree = obj->m_cameraIsFreeMode;
		auto freeMode = m_gameState.m_unkBool8;
		m_gameState.m_unkBool8 = cameraFree;
		m_gameState.m_unkBool9 = obj->m_cameraDisableGridSnap;
		if (obj->m_cameraEditCameraSettings) {
			m_gameState.m_unkFloat3 = std::clamp(obj->m_cameraEasingValue, 1.f, 40.f);
			m_gameState.m_unkFloat2 = std::clamp(obj->m_cameraPaddingValue, 0.f, 1.f);
		}
		if (cameraFree != freeMode && updateDual) this->updateDualGround(m_player1, m_gameState.dualRelated, false, 0.f);
	}
	void updateCameraOffsetX(float, float, int, float, int, int) = win 0x225f20, imac 0x144270, m1 0x118618;
	void updateCameraOffsetY(float, float, int, float, int, int) = win 0x225fc0, imac 0x144370, m1 0x1186ec;
	void updateCollisionBlocks() = win 0x209060;
	void updateCounters(int, int) = win 0x223e70;
	void updateDualGround(PlayerObject*, int, bool, float) = win 0x203ce0, imac 0x118660, m1 0xf568c;
	void updateEnterEffects(float) = imac 0x113110, m1 0xf01b0;
	TodoReturn updateExtendedCollision(GameObject*, bool);
	TodoReturn updateExtraGameLayers() = imac 0x1311b0;
	TodoReturn updateGameplayOffsetX(int, bool);
	TodoReturn updateGameplayOffsetY(int, bool);
	TodoReturn updateGradientLayers() = win 0x2104b0, imac 0x12e160, m1 0x1066a4;
	TodoReturn updateGroundShadows();
	TodoReturn updateGuideArt() = win 0x235770;
	TodoReturn updateInternalCamOffsetX(float, float, float);
	TodoReturn updateInternalCamOffsetY(float, float, float);
	void updateKeyframeOrder(int) = m1 0x115808, imac 0x140640;
	TodoReturn updateLayerCapacity(gd::string);
	TodoReturn updateLegacyLayerCapacity(int, int, int, int);
	void updateLevelColors() = win 0x1fd240, imac 0x1078c0, m1 0xe7890;
	void updateMaxGameplayY() = win 0x229ff0, imac 0x14cee0;
	TodoReturn updateMGArtSpeed(float, float);
	void updateMGOffsetY(float, float, int, float, int, int) = win 0x226060;
	TodoReturn updateOBB2(cocos2d::CCRect);
	void updateParticles(float) = imac 0x152c60, m1 0x123b20;
	TodoReturn updatePlatformerTime();
	TodoReturn updatePlayerCollisionBlocks();
	void updateProximityVolumeEffects() = win 0x231420, m1 0x11dcb4, imac 0x14b990;
	TodoReturn updateQueuedLabels();
	TodoReturn updateReplay();
	TodoReturn updateSavePositionObjects();
	void updateShaderLayer(float) = win 0x212aa0, imac 0x12fdd0, m1 0x107d80;
	void updateSpecialGroupData() = win 0x1fecf0, imac 0x10aa20, m1 0xea268;
	void updateSpecialLabels() = win 0x228fb0;
	void updateStaticCameraPos(cocos2d::CCPoint pos, bool staticX, bool staticY, bool followOrSmoothEase, float time, int easingType, float easingRate) = win 0x22e360, imac 0x1191c0, m1 0xf60ec;
	TodoReturn updateStaticCameraPosToGroup(int, bool, bool, bool, float, float, int, float, bool, float) = win 0x22df70;
	TodoReturn updateTimeMod(float, bool, bool);
	TodoReturn updateTimerLabels() = win 0x2251f0;
	void updateZoom(float, float, int, float, int, int) = win 0x225ca0;
	TodoReturn visitWithColorFlash();
	TodoReturn volumeForProximityEffect(SFXTriggerInstance&) = win 0x2316f0;

	virtual void update(float) = win 0x2277d0, imac 0x147140, m1 0x11a52c, ios 0x209388;
	virtual bool init() = win 0x1f7dd0, m1 0xe38c8, imac 0x102b70, ios 0x1e4484;
	virtual void visit() = win 0x235f90, m1 0x127d48, imac 0x1581b0, ios 0x212c80;
	virtual void postUpdate(float) = ios 0x2140e8;
	virtual TodoReturn checkForEnd() = m1 0xdf6c8, imac 0xfd990, ios 0x2140ec;
	virtual TodoReturn testTime() = m1 0xdf6cc, imac 0xfd9a0, ios 0x2140f0;
	virtual void updateVerifyDamage() = m1 0xdf6d0, imac 0xfd9b0, ios 0x2140f4;
	virtual void updateAttemptTime(float) = m1 0xdf6d4, imac 0xfd9c0, ios 0x2140f8;
	virtual void updateVisibility(float) = ios 0x2140fc;
	virtual TodoReturn playerTookDamage(PlayerObject*) = imac 0xc0020, m1 0xab56c, ios 0x1253b8;
	virtual TodoReturn opacityForObject(GameObject*) = m1 0x11a318, win 0x2273b0, imac 0x146f00, ios 0x2091b8;
	virtual TodoReturn addToSpeedObjects(EffectGameObject*) = imac 0xc0030, m1 0xab570, ios 0x1253bc;
	virtual void objectsCollided(int, int) = imac 0x11faa0, m1 0xfbafc, win 0x209900, ios 0x1f59f8;
	virtual void updateColor(cocos2d::ccColor3B& color, float fadeTime, int colorID, bool blending, float opacity, cocos2d::ccHSVValue& copyHSV, int colorIDToCopy, bool copyOpacity, EffectGameObject* callerObject, int unk1, int unk2) = win 0x214160, imac 0x131310, m1 0x1093d4, ios 0x1fc33c;
	virtual void toggleGroupTriggered(int, bool, gd::vector<int> const&, int, int) = win 0x214340, imac 0x1314b0, m1 0x109540, ios 0x1fc4a8;
	virtual void spawnGroup(int, bool, double, gd::vector<int> const&, int, int) = win 0x20b310, imac 0x1210c0, m1 0xfcb44, ios 0x1f65fc;
	virtual void spawnObject(GameObject*, double, gd::vector<int> const&) = win 0x20b7d0, imac 0x121460, m1 0xfcf18, ios 0x1f6888;
	virtual TodoReturn activateEndTrigger(int, bool, bool) = m1 0xdf6d8, imac 0xfd9d0, ios 0x214100;
	virtual void activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&) = m1 0xdf6dc, imac 0xfd9e0, ios 0x214104;
	virtual void toggleGlitter(bool) = m1 0xdf6e0, imac 0xfd9f0, ios 0x214108 {}
	virtual void destroyPlayer(PlayerObject*, GameObject*) = m1 0xdf6e4, imac 0xfda00, ios 0x21410c;
	virtual void updateDebugDraw() = win 0x2015c0, imac 0x115b10, m1 0xf2fe4, ios 0x1eeb1c;
	virtual void addToSection(GameObject*) = win 0x216dc0, imac 0x1336e0, m1 0x10b35c, ios 0x1fda48;
	virtual void addToGroup(GameObject*, int, bool) = win 0x2147c0, m1 0x109a60, imac 0x131a60, ios 0x1fc8f0;
	virtual void removeFromGroup(GameObject*, int) = win 0x214940, m1 0x109cb4, imac 0x131c90, ios 0x1fcaa0;
	virtual void updateObjectSection(GameObject*) = m1 0x10c98c, win 0x2187e0, imac 0x1357e0, ios 0x1feabc;
	virtual TodoReturn updateDisabledObjectsLastPos(cocos2d::CCArray*) = m1 0xab574, imac 0xc0040, ios 0x1253c0;
	virtual TodoReturn toggleGroundVisibility(bool) = m1 0x1182dc, imac 0x143e70, ios 0x207814;
	virtual void toggleMGVisibility(bool) = m1 0x1182e0, imac 0x143e80, ios 0x207818;
	virtual void toggleHideAttempts(bool) = m1 0x1182e4, imac 0x143e90, win 0x3aff0, ios 0x20781c;
	virtual float timeForPos(cocos2d::CCPoint, int, int, bool, int) { return 0.f; }
	virtual float posForTime(float) { return 0.f; }
	virtual void resetSPTriggered() {}
	virtual void updateScreenRotation(float, bool, bool, float, int, float, int, int) = win 0x225e30, m1 0x118430, imac 0x144030, ios 0x207900;
	virtual TodoReturn reverseDirection(EffectGameObject*) = m1 0xfad8c, win 0x2089f0, imac 0x11ec40, ios 0x1f4edc;
	virtual void rotateGameplay(RotateGameplayGameObject*) = m1 0xfadd0, win 0x208a50, imac 0x11ec80, ios 0x1f4f20;
	virtual TodoReturn didRotateGameplay() = m1 0xab578, imac 0xc0050, ios 0x1253c4;
	virtual void updateTimeWarp(float) = win 0x226110, m1 0x118a98, imac 0x1447d0, ios 0x207d58;
	virtual void updateTimeWarp(GameObject*, float) = win 0x226100, m1 0x118aa4, imac 0x1447b0, ios 0x207d4c;
	virtual TodoReturn applyTimeWarp(float) = win 0x226160, m1 0x118ae0, imac 0x144820, ios 0x207d90;
	virtual void playGravityEffect(bool) = m1 0xdf6e8, imac 0xfda10, ios 0x214110;
	virtual TodoReturn manualUpdateObjectColors(GameObject*) = ios 0x214114;
	virtual TodoReturn createCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, bool) = win 0x22fe90, m1 0x1234a8, imac 0x152660, ios 0x20f7d4;
	virtual TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool) = win 0x230190, m1 0x123828, imac 0x1529b0, ios 0x20fa04;
	virtual TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*) = win 0x230390, m1 0x123a68, imac 0x152bb0, ios 0x20fc44;
	virtual TodoReturn activatedAudioTrigger(SFXTriggerGameObject*) = win 0x231f30, m1 0x1247e0, imac 0x153b30, ios 0x210750;
	virtual void checkpointActivated(CheckpointGameObject*) = win 0x235b70, m1 0x127a8c, imac 0x157ed0, ios 0x212a7c;
	virtual TodoReturn flipArt(bool) = m1 0x127a88, imac 0x157ec0, ios 0x212a78;
	virtual void addKeyframe(KeyframeGameObject*) = win 0x223b30, m1 0x115768, imac 0x1405b0, ios 0x205a9c;
	virtual void updateTimeLabel(int, int, bool) = m1 0xdf6ec, imac 0xfda20, ios 0x214118;
	virtual TodoReturn checkSnapshot() = m1 0xdf6f0, imac 0xfda30, ios 0x21411c;
	virtual void toggleProgressbar() = m1 0xdf6f4, imac 0xfda40, ios 0x214120;
	virtual TodoReturn toggleInfoLabel() = m1 0xdf6f8, imac 0xfda50, ios 0x214124;
	virtual void removeAllCheckpoints() = m1 0xdf6fc, imac 0xfda60, ios 0x214128;
	virtual TodoReturn toggleMusicInPractice() = m1 0xdf700, imac 0xfda70, ios 0x21412c;

	PAD = win 0x8, android 0x8, mac 0x8, ios 0x8;
	GJGameState m_gameState;
	GJGameLevel* m_level;
	PlaybackMode m_playbackMode;
	bool m_decimalPercentage;
	bool m_extraLDM;
	bool m_0173;
	bool m_enable22Changes;
	bool m_allowStaticRotate;
	bool m_fixNegativeScale;
	bool m_startingFromBeginning;
	gd::vector<gd::vector<int>*> m_field_8B0;
	gd::vector<int> m_unkVectorTypeIsWrong;
	cocos2d::CCNode* m_field_8E0;
	cocos2d::CCNode* m_field_8E8;
	cocos2d::CCNode* m_field_8F0;
	cocos2d::CCNode* m_field_8F8;
	cocos2d::CCNode* m_field_900;
	cocos2d::CCNode* m_field_908;
	OBB2D* m_obb2;
	gd::vector<gd::unordered_map<int,int>> m_spawnRemapTriggers;
	gd::unordered_map<int, cocos2d::CCPoint> m_umapIntCCPoint;
	GJEffectManager* m_effectManager;
	cocos2d::CCSpriteBatchNode* m_unk950;
	cocos2d::CCSpriteBatchNode* m_unk958;
	cocos2d::CCSpriteBatchNode* m_unk960;
	cocos2d::CCSpriteBatchNode* m_unk968;
	cocos2d::CCSpriteBatchNode* m_unk970;
	cocos2d::CCSpriteBatchNode* m_unk978;
	cocos2d::CCSpriteBatchNode* m_unk980;
	cocos2d::CCSpriteBatchNode* m_unk988;
	CCNodeContainer* m_unk990;
	cocos2d::CCSpriteBatchNode* m_unk998;
	cocos2d::CCSpriteBatchNode* m_unk9a0;
	cocos2d::CCSpriteBatchNode* m_unk9a8;
	cocos2d::CCSpriteBatchNode* m_unk9b0;
	cocos2d::CCSpriteBatchNode* m_unk9b8;
	cocos2d::CCSpriteBatchNode* m_unk9c0;
	cocos2d::CCSpriteBatchNode* m_unk9c8;
	cocos2d::CCSpriteBatchNode* m_unk9d0;
	cocos2d::CCSpriteBatchNode* m_unk9d8;
	cocos2d::CCSpriteBatchNode* m_unk9e0;
	cocos2d::CCSpriteBatchNode* m_unk9e8;
	cocos2d::CCSpriteBatchNode* m_unk9f0;
	cocos2d::CCSpriteBatchNode* m_unk9f8;
	CCNodeContainer* m_unka00;
	cocos2d::CCSpriteBatchNode* m_unka08;
	cocos2d::CCSpriteBatchNode* m_unka10;
	cocos2d::CCSpriteBatchNode* m_unka18;
	cocos2d::CCSpriteBatchNode* m_unka20;
	cocos2d::CCSpriteBatchNode* m_unka28;
	cocos2d::CCSpriteBatchNode* m_unka30;
	cocos2d::CCSpriteBatchNode* m_unka38;
	cocos2d::CCSpriteBatchNode* m_unka40;
	cocos2d::CCSpriteBatchNode* m_unka48;
	cocos2d::CCSpriteBatchNode* m_unka50;
	cocos2d::CCSpriteBatchNode* m_unka58;
	cocos2d::CCSpriteBatchNode* m_unka60;
	cocos2d::CCSpriteBatchNode* m_unka68;
	CCNodeContainer* m_unka70;
	cocos2d::CCSpriteBatchNode* m_unka78;
	cocos2d::CCSpriteBatchNode* m_unka80;
	cocos2d::CCSpriteBatchNode* m_unka88;
	cocos2d::CCSpriteBatchNode* m_unka90;
	cocos2d::CCSpriteBatchNode* m_unka98;
	cocos2d::CCSpriteBatchNode* m_unkaa0;
	cocos2d::CCSpriteBatchNode* m_unkaa8;
	cocos2d::CCSpriteBatchNode* m_unkab0;
	cocos2d::CCSpriteBatchNode* m_unkab8;
	cocos2d::CCSpriteBatchNode* m_unkac0;
	cocos2d::CCSpriteBatchNode* m_unkac8;
	cocos2d::CCSpriteBatchNode* m_unkad0;
	cocos2d::CCSpriteBatchNode* m_unkad8;
	CCNodeContainer* m_unkae0;
	cocos2d::CCSpriteBatchNode* m_unkae8;
	cocos2d::CCSpriteBatchNode* m_unkaf0;
	cocos2d::CCSpriteBatchNode* m_unkaf8;
	cocos2d::CCSpriteBatchNode* m_unkb00;
	cocos2d::CCSpriteBatchNode* m_unkb08;
	cocos2d::CCSpriteBatchNode* m_unkb10;
	cocos2d::CCSpriteBatchNode* m_unkb18;
	cocos2d::CCSpriteBatchNode* m_unkb20;
	cocos2d::CCSpriteBatchNode* m_unkb28;
	cocos2d::CCSpriteBatchNode* m_unkb30;
	cocos2d::CCSpriteBatchNode* m_unkb38;
	cocos2d::CCSpriteBatchNode* m_unkb40;
	cocos2d::CCSpriteBatchNode* m_unkb48;
	cocos2d::CCSpriteBatchNode* m_unkb50;
	void* m_unkb5c; // prolly also a batch node
	cocos2d::CCSpriteBatchNode* m_unkb60;
	cocos2d::CCSpriteBatchNode* m_unkb68;
	cocos2d::CCSpriteBatchNode* m_unkb70;
	cocos2d::CCSpriteBatchNode* m_unkb78;
	CCNodeContainer* m_unkb80;
	cocos2d::CCSpriteBatchNode* m_unkb88;
	cocos2d::CCSpriteBatchNode* m_unkb90;
	cocos2d::CCSpriteBatchNode* m_unkb98;
	cocos2d::CCSpriteBatchNode* m_unkba0;
	cocos2d::CCSpriteBatchNode* m_unkba8;
	cocos2d::CCSpriteBatchNode* m_unkbb0;
	cocos2d::CCSpriteBatchNode* m_unkbb8;
	cocos2d::CCSpriteBatchNode* m_unkbc0;
	cocos2d::CCSpriteBatchNode* m_unkbc8;
	cocos2d::CCSpriteBatchNode* m_unkbd0;
	cocos2d::CCSpriteBatchNode* m_unkbd8;
	cocos2d::CCSpriteBatchNode* m_unkbe0;
	cocos2d::CCSpriteBatchNode* m_unkbe8;
	CCNodeContainer* m_unkbf0;
	cocos2d::CCSpriteBatchNode* m_unkbf8;
	cocos2d::CCSpriteBatchNode* m_unkc00;
	cocos2d::CCSpriteBatchNode* m_unkc08;
	cocos2d::CCSpriteBatchNode* m_unkc10;
	cocos2d::CCSpriteBatchNode* m_unkc18;
	cocos2d::CCSpriteBatchNode* m_unkc20;
	cocos2d::CCSpriteBatchNode* m_unkc28;
	cocos2d::CCSpriteBatchNode* m_unkc30;
	cocos2d::CCSpriteBatchNode* m_unkc38;
	cocos2d::CCSpriteBatchNode* m_unkc40;
	cocos2d::CCSpriteBatchNode* m_unkc48;
	cocos2d::CCSpriteBatchNode* m_unkc50;
	cocos2d::CCSpriteBatchNode* m_unkc58;
	CCNodeContainer* m_unkc60;
	cocos2d::CCSpriteBatchNode* m_unkc68;
	cocos2d::CCSpriteBatchNode* m_unkc70;
	cocos2d::CCSpriteBatchNode* m_unkc78;
	cocos2d::CCSpriteBatchNode* m_unkc80;
	cocos2d::CCSpriteBatchNode* m_unkc88;
	cocos2d::CCSpriteBatchNode* m_unkc90;
	cocos2d::CCSpriteBatchNode* m_unkc98;
	cocos2d::CCSpriteBatchNode* m_unkca0;
	cocos2d::CCSpriteBatchNode* m_unkca8;
	cocos2d::CCSpriteBatchNode* m_unkcb0;
	cocos2d::CCSpriteBatchNode* m_unkcb8;
	cocos2d::CCSpriteBatchNode* m_unkcc0;
	cocos2d::CCSpriteBatchNode* m_unkcc8;
	CCNodeContainer* m_unkcd0;
	cocos2d::CCSpriteBatchNode* m_unkcd8;
	cocos2d::CCSpriteBatchNode* m_unkce0;
	cocos2d::CCSpriteBatchNode* m_unkce8;
	cocos2d::CCSpriteBatchNode* m_unkcf0;
	cocos2d::CCSpriteBatchNode* m_unkcf8;
	cocos2d::CCSpriteBatchNode* m_unkd00;
	cocos2d::CCSpriteBatchNode* m_unkd08;
	cocos2d::CCSpriteBatchNode* m_unkd10;
	cocos2d::CCSpriteBatchNode* m_unkd18;
	cocos2d::CCSpriteBatchNode* m_unkd20;
	cocos2d::CCSpriteBatchNode* m_unkd28;
	cocos2d::CCSpriteBatchNode* m_unkd30;
	cocos2d::CCSpriteBatchNode* m_unkd38;
	CCNodeContainer* m_unkd40;
	cocos2d::CCSpriteBatchNode* m_unkd48;
	cocos2d::CCSpriteBatchNode* m_unkd50;
	cocos2d::CCSpriteBatchNode* m_unkd58;
	cocos2d::CCSpriteBatchNode* m_unkd60;
	cocos2d::CCSpriteBatchNode* m_unkd68;
	cocos2d::CCSpriteBatchNode* m_unkd70;
	cocos2d::CCSpriteBatchNode* m_unkd78;
	cocos2d::CCSpriteBatchNode* m_unkd80;
	cocos2d::CCSpriteBatchNode* m_unkd88;
	cocos2d::CCSpriteBatchNode* m_unkd90;
	PlayerObject* m_player1;
	PlayerObject* m_player2;
	LevelSettingsObject* m_levelSettings;
	cocos2d::CCArray* m_objects;
	cocos2d::CCArray* m_unknownCB0;
	cocos2d::CCArray* m_unknownCB8;
	cocos2d::CCDictionary* m_unknownCC0;
	cocos2d::CCNode* m_unknownCC8;
	gd::vector<GameObject*> m_unkdd8;
	gd::vector<GameObject*> m_unkdf0;
	gd::vector<GameObject*> m_unke08;
	gd::vector<GameObject*> m_unke20;
	gd::vector<GameObject*> m_unke38;
	gd::unordered_map<int, gd::vector<GameObject*>> m_unke50;
	gd::vector<GameObject*> m_unke90;
	int m_unkea8;
	int m_unkeac;
	gd::vector<GameObject*> m_unkeb0;
	int m_unkec8;
	int m_unkecc;
	int m_unked0;
	int m_unked4;
	int m_unked8;
	int m_unkedc;
	int m_unkee0;
	int m_unkee4;
	int m_unkee8;
	int m_unkeec;
	int m_unkef0;
	int m_unkef4;
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
	cocos2d::CCLayer* m_unkff8;
	cocos2d::CCLayer* m_unk1000;
	cocos2d::CCSprite* m_unk1008;
	void* m_unk1010;
	GJGroundLayer* m_groundLayer;
	GJGroundLayer* m_groundLayer2;
	GJMGLayer* m_middleground;
	cocos2d::CCArray* m_batchNodes;
	cocos2d::CCDictionary* m_unk1038;

	gd::unordered_map<int, gd::vector<LabelGameObject*>> m_umapIntVectorLabelGameObjectPtr;
	gd::unordered_map<int, gd::vector<LabelGameObject*>> m_umapIntVectorLabelGameObjectPtr2;
	gd::map<std::pair<int, int>, int> m_mapTupleIntIntIntTupleIntIntInt;
	bool m_increasedLayerCapacity;
	std::array<float, 2000> m_massiveFloatArray;

	gd::map<std::pair<int, int>, int> m_mapPairIntIntPairFloatFloat;
	gd::vector<float> field_3058;
	gd::unordered_map<int, int> m_umapIntInt3;
	int m_easingRelated;
	bool field_30AC;
	int m_clicks;

	int m_attempts; // found in EndLevelLayer::customSetup
	bool m_bUnk30b8;
	int m_leftSectionIndex; // these 4 ints can be found in GJBaseGameLayer::updateDebugDraw or GJBaseGameLayer::updateObjectSection (easier)
	int m_rightSectionIndex;
	int m_bottomSectionIndex;
	int m_topSectionIndex;
	bool m_superHighGraphics;
	bool m_blending;
	bool m_isPlatformer;
	GameObject* m_player1CollisionBlock;
	GameObject* m_player2CollisionBlock;
	int m_particleCount;
	int m_customParticleCount;
	int m_particleSystemLimit; // limit per key in m_particlesDict
	cocos2d::CCDictionary* m_particlesDict; // CCDictionary<gd::string, CCArray<CCParticleSystemQuad*>>
	cocos2d::CCDictionary* m_customParticles; // same type as m_particlesDict
	cocos2d::CCArray* m_unclaimedParticles;  // CCArray<CCParticleSystemQuad*>
	gd::unordered_map<int, gd::string> m_particleCountToParticleString;
	cocos2d::CCDictionary* m_claimedParticles; // same type as m_particlesDict
	cocos2d::CCArray* m_temporaryParticles;  // same type as m_unclaimedParticles
	gd::unordered_set<int> m_customParticlesUIDs;
	cocos2d::CCDictionary* m_gradientLayers; // CCDictionary<int, CCLayerGradient>
	void* m_unk2a54;
	ShaderLayer* m_shaderLayer;
	bool m_bUnk31a0;
	bool m_bUnk31a1;
	StartPosObject* m_startPosObject; // 3180 win, 2a60 android32, 31a8 android64
	bool m_unk3188;
	int m_unk318c;
	int m_unk3190;
	gd::vector<GameObject*> m_unk3198;
	int m_unk31b0;
	int m_unk31b4;
	gd::vector<GameObject*> m_unk31b8;
	gd::vector<GameObject*> m_unk31d0;
	bool m_isPracticeMode;
	bool m_practiceMusicSync;
	float m_loadingProgress;
	cocos2d::CCNode* m_unk2a84;
	int m_unk2a88;
	float m_unk2a8c;
	int m_unk2a90;
	int m_unk2a94;
	int m_unk2a98;
	cocos2d::CCDictionary* m_collectedItems; // can be found in GJBaseGameLayer::pickupItem/hasItem
	float m_levelLength;
	int m_unk2aa4;
	EndPortalObject* m_endPortal;
	bool m_isTestMode;
	bool m_unk3089;
	bool m_unk308a;
	int m_unk322c;
	int m_unk3230;
	bool m_unk3234;
	cocos2d::CCParticleSystemQuad* m_unk3238;
	bool m_unk3240;
	bool m_unk3241;
	bool m_unk3242;
	double m_extraDelta;
	bool m_started;
	bool m_unk3251;
	float m_unk3254;
	float m_unk3258;
    float m_unk325c;
    float m_unk3260;
    AudioEffectsLayer* m_audioEffectsLayer;
    OBB2D* m_unk3270;
    gd::vector<GameObject*> m_unk3278;
    int m_unk3290;
    int m_unk3294;
    cocos2d::ccColor3B m_unk3298;
    int m_resumeTimer;
    bool m_unk32a0;
	int m_unk32a4;
    gd::string m_unk32a8;
    cocos2d::CCObject* m_unk32c8;
    int m_unk32d0;
    double m_unk32d8;
    int m_coinsCollected;
    int m_unk32e4;
    int m_replayRandSeed;
    int m_unk32ec;
    int m_unk32f0;
	gd::vector<PlayerButtonCommand> m_queuedButtons;
	gd::vector<PlayerButtonCommand> m_queuedButtons2;
	gd::vector<PlayerButtonCommand> m_queuedButtons3;
	gd::vector<PlayerButtonCommand> m_queuedButtons4;
	gd::vector<PlayerButtonCommand> m_queuedButtons5;
	int m_someQueuedButtonSize;
	bool m_unk3374;
	bool m_unk3375;
	cocos2d::CCArray* m_unk3378;
	float m_unk3380;
	gd::vector<int> m_unk3388;
	gd::vector<int> m_unk33a0;
	bool m_unk33b8;
	cocos2d::CCArray* m_unk33c0;
	cocos2d::CCArray* m_unk33c8;
	gd::unordered_map<int, int> m_unk33d0;
	gd::unordered_map<int, int> m_unk3410;
	bool m_unk3450;
	cocos2d::CCDictionary* m_unk3458;
	int m_unk3460;
	UILayer* m_uiLayer;
	cocos2d::CCArray* m_unk3470;
	cocos2d::CCDictionary* m_unk3478;
	cocos2d::CCNode* m_unk3480;
	double m_timePlayed;
	bool m_levelEndAnimationStarted;
	int m_unknown3494; // used in updateSpecialLabels
	gd::string m_pointsString;
	gd::vector<gd::vector<gd::vector<GameObject*>*>*> m_sections;
	gd::vector<gd::vector<gd::vector<GameObject*>*>*> m_nonEffectObjects;
	gd::vector<gd::vector<GameObject*>*> m_collisionBlockSections;
	gd::vector<GameObject*> m_calcNonEffectObjects;
	int m_calcNonEffectObjectsSize;
	gd::vector<GameObject*> m_calcCollisionBlockObjects;
	int m_calcCollisionBlockObjectsSize;
	gd::vector<GameObject*> m_calcCollisionBlockObjects2;
	int m_calcCollisionBlockObjects2Size;
	gd::vector<gd::vector<int>*> m_sectionSizes;
	gd::vector<gd::vector<int>*> m_nonEffectObjectsSizes;
	gd::vector<gd::vector<int>*> m_collisionBlockSectionSizes;
	gd::vector<gd::vector<bool>*> m_nonEffectObjectsFlags;
	float m_unknown35c0;
	float m_unknown35c4;
	float m_unknown35c8;
	float m_unknown35cc;
	gd::unordered_map<int, int> m_stickyGroups;
	FMODLevelVisualizer* m_audioVisualizerBG;
	FMODLevelVisualizer* m_audioVisualizerSFX;
	bool m_showAudioVisualizer;

	int m_areaMovedCount;
	int m_areaScaledCount;
	int m_areaRotatedCount;
	int m_areaColorCount;
	int m_areaMovedCountTotal;
	int m_areaScaledCountTotal;
	int m_areaRotatedCountTotal;
	int m_areaColorCountTotal;
	int m_movedCount;
	int m_scaledCount;
	int m_rotatedCount;
	int m_followedCount;
	int m_areaMovedCountDisplay;
	int m_areaScaledCountDisplay;
	int m_areaRotatedCountDisplay;
	int m_areaColorCountDisplay;
	int m_areaMovedCountTotalDisplay;
	int m_areaScaledCountTotalDisplay;
	int m_areaRotatedCountTotalDisplay;
	int m_areaColorCountTotalDisplay;
	int m_movedCountDisplay;
	int m_scaledCountDisplay;
	int m_rotatedCountDisplay;
	int m_followedCountDisplay;

	int m_unknown3684;
	GJGameLoadingLayer* m_loadingLayer;
	cocos2d::CCDrawNode* m_debugDrawNode;
	void* m_unk3678;
	bool m_isDebugDrawEnabled;
	bool m_unk3501;
	GameObject* m_anticheatSpike;
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

	virtual bool init() = m1 0x20d050, imac 0x265f20;
}

[[link(android)]]
class GJBigSpriteNode : cocos2d::CCNode {
	// virtual ~GJBigSpriteNode();

	static GJBigSpriteNode* create();

	virtual bool init() = imac 0x265f10;
}

[[link(android)]]
class GJChallengeDelegate {
	virtual void challengeStatusFinished();
	virtual void challengeStatusFailed();
}

[[link(android)]]
class GJChallengeItem : cocos2d::CCObject {
	// virtual ~GJChallengeItem();

	static GJChallengeItem* create();
	static GJChallengeItem* create(GJChallengeType challengeType, int goal, int reward, int timeLeft, gd::string questName);

	static GJChallengeItem* createFromString(gd::string string) = imac 0x8e5f0;
	static GJChallengeItem* createWithCoder(DS_Dictionary* dsdict ) = imac 0x8eaa0;
	void dataLoaded(DS_Dictionary* dsdict) = imac 0x8eae0;
	void incrementCount(int add);
	bool init(GJChallengeType challengeType, int goal, int reward, int timeLeft, gd::string questName);
	void setCount(int value);

	virtual void encodeWithCoder(DS_Dictionary* dsdict) = win 0x1e7f50, m1 0x7fb2c, imac 0x8ec40, ios 0x34f5ac;
	virtual bool canEncode() = m1 0x7fc08, imac 0x8ed10, ios 0x34f688;

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

	static GJChestSprite* create(int) = win 0x3ad250, m1 0x1c80d4, imac 0x217690, ios 0x1cf3c0;

	bool init(int chestType) = win inline, m1 0x1ca814, imac 0x21a030, ios 0x1d17e4 {
		if (!cocos2d::CCSprite::init()) return false;
		m_chestType = chestType;
		this->setContentSize({ 0, 0 });
		this->switchToState(ChestSpriteState::Closed, false);
		return true;
	}
	void switchToState(ChestSpriteState, bool) = win 0x3ad450, m1 0x1c92f8, imac 0x218b10;

	virtual void setOpacity(unsigned char) = win 0x3ad3e0, m1 0x1ca94c, imac 0x21a180, ios 0x1d1918;
	virtual void setColor(cocos2d::ccColor3B const&) = win 0x3ad320, m1 0x1ca878, imac 0x21a090, ios 0x1d1848;

	int m_chestType;
	ChestSpriteState m_spriteState;
	bool m_dark;
}

[[link(android)]]
class GJColorSetupLayer : FLAlertLayer, ColorSelectDelegate, FLAlertLayerProtocol {
	// virtual ~GJColorSetupLayer();

	static GJColorSetupLayer* create(LevelSettingsObject*) = win 0x2445c0, m1 0x1b7184, imac 0x205b50;

	bool init(LevelSettingsObject*) = win 0x244700, m1 0x1b72b0, imac 0x205ce0;
	void onClose(cocos2d::CCObject* sender) = win 0x245390, m1 0x1b7c50, imac 0x2066e0;
	void onColor(cocos2d::CCObject* sender) = win 0x245240, m1 0x1b7958, imac 0x2063f0;
	void onPage(cocos2d::CCObject* sender) = win 0x2451f0, m1 0x1b7bb4, imac 0x206640;
	void showPage(int) = win 0x245320, m1 0x1b7cb0, imac 0x206730;
	void updateSpriteColor(ColorChannelSprite*, cocos2d::CCLabelBMFont*, int) = win 0x245080, m1 0x1b7d14, imac 0x2067a0, ios 0x19a2e8;
	void updateSpriteColors() = win 0x244f60, m1 0x1b7a1c, imac 0x2064b0;

	virtual void keyBackClicked() = win 0x2453e0, m1 0x1b7dc8, imac 0x206870, ios 0x19a388;
	virtual void colorSelectClosed(cocos2d::CCNode*) = win 0x245310, m1 0x1b7dbc, imac 0x206840, ios 0x19a37c;

	LevelSettingsObject* m_settingsObject;
	cocos2d::CCDictionary* m_unk290;
	cocos2d::CCDictionary* m_unk298;
	cocos2d::CCArray* m_colorLabels;
	cocos2d::CCArray* m_colorSprites;
	int m_page;
	int m_colorsPerPage;
	int m_totalPages;
	CCMenuItemSpriteExtra* m_prevButton;
	CCMenuItemSpriteExtra* m_nextButton;
	bool m_closeOnSelect;
	ColorSetupDelegate* m_delegate;
	int m_colorID;
}

[[link(android)]]
class GJComment : cocos2d::CCNode {
	// virtual ~GJComment();

	static GJComment* create();
	static GJComment* create(cocos2d::CCDictionary*);

	virtual bool init() = m1 0x4b69ec, imac 0x568dc0, ios 0xb2738;

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

	static GJCommentListLayer* create(BoomListView* listView, char const* title, cocos2d::ccColor4B color, float width, float height, bool blueBorder) = win 0x27f7a0, imac 0x29a930, m1 0x23d01c, ios 0x2e60f0;

	bool init(BoomListView* listView, char const* title, cocos2d::ccColor4B color, float width, float height, bool blueBorder) = win 0x27f8c0, imac 0x29aa40, m1 0x23d114, ios 0x2e61d4;

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

	static GJDifficultySprite* create(int, GJDifficultyName) = win 0x292c60, m1 0x253070, imac 0x2b2920, ios 0x2f62c8;

	static gd::string getDifficultyFrame(int, GJDifficultyName) = win 0x292d40, m1 0x253214, imac 0x2b2a70, ios 0x2f63f4;
	bool init(int, GJDifficultyName) = m1 0x25317c, imac 0x2b2a00, ios 0x2f6370;
	void updateDifficultyFrame(int, GJDifficultyName) = win 0x292e20, m1 0x253350, imac 0x2b2ba0, ios 0x2f64b4;
	void updateFeatureState(GJFeatureState) = win 0x292f40, m1 0x2534c8, imac 0x2b2d20, ios 0x2f662c;
	void updateFeatureStateFromLevel(GJGameLevel*) = m1 0x253490, imac 0x2b2cd0, ios 0x2f65f4;

	GJFeatureState m_featureState;
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
		m_closeOnHide = false;
		m_delegate = nullptr;
		m_fastMenu = false;
	}

	bool init(char const*, float, bool) = win 0x2454f0, m1 0x519eac, imac 0x5f18a0, ios 0x3baf08;
	bool init(char const* title) = win inline, m1 0x51a2bc, imac 0x5f1cd0, ios 0x3bb304 {
		return init(title, 220.0f, false);
	}

	static GJDropDownLayer* create(const char* title, float height, bool p2) = win inline, m1 0x519d90, imac 0x5f1770 {
		GJDropDownLayer* pRet = new GJDropDownLayer();
		if (pRet && pRet->init(title, height, p2)) {
			pRet->autorelease();
			return pRet;
		}
		CC_SAFE_DELETE(pRet);
		return nullptr;
	}
	static GJDropDownLayer* create(const char* title) = win inline, m1 0x51a2ac, imac 0x5f1cb0 {
		GJDropDownLayer* pRet = new GJDropDownLayer();
		if (pRet && pRet->init(title)) {
			pRet->autorelease();
			return pRet;
		}
		CC_SAFE_DELETE(pRet);
		return nullptr;
	}

	virtual void draw() = win 0x41870, m1 0x51a640, imac 0x5f20b0, ios 0x3bb688;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x3B850, m1 0x51a67c, imac 0x5f20e0, ios 0x3bb6c4;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3bb6e4 {}
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3bb6d4 {}
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3bb6dc {}
	virtual void registerWithTouchDispatcher() = win 0x41750, m1 0x51a330, imac 0x5f1d70, ios 0x3bb378;
	virtual void keyBackClicked() = win 0x245970, m1 0x51a368, imac 0x5f1db0, ios 0x3bb3b0;
	virtual void customSetup() = ios 0x3bb314 {}
	virtual void enterLayer() = win 0x41720, m1 0x51a2f8, imac 0x5f1d40, ios 0x3bb340;
	virtual void exitLayer(cocos2d::CCObject*) = win 0x245990, m1 0x51a38c, ios 0x3bb3d4, imac 0x5f1df0;
	virtual void showLayer(bool) = win 0x2459d0, m1 0x51a3d8, imac 0x5f1e30, ios 0x3bb420;
	virtual void hideLayer(bool) = win 0x245b20, m1 0x51a4dc, imac 0x5f1f40, ios 0x3bb524;
	virtual void layerVisible() = win 0x41820, m1 0x51a5e0, imac 0x5f2050, ios 0x3bb628;
	virtual void layerHidden() = win 0x245c70, m1 0x51a5f0, imac 0x5f2070, ios 0x3bb638;
	virtual void enterAnimFinished() = ios 0x3bb624 {}
	virtual void disableUI() = win 0x245930, m1 0x51a2d0, imac 0x5f1d00, ios 0x3bb318;
	virtual void enableUI() = win 0x245950, m1 0x51a2e4, imac 0x5f1d20, ios 0x3bb32c;

	cocos2d::CCPoint m_endPosition;
	cocos2d::CCPoint m_startPosition;
	cocos2d::CCMenu* m_buttonMenu;
	GJListLayer* m_listLayer;
	cocos2d::CCLayer* m_mainLayer;
	bool m_closeOnHide;
	GJDropDownLayerDelegate* m_delegate;
	bool m_fastMenu;
}

[[link(android)]]
class GJDropDownLayerDelegate {
	virtual void dropDownLayerWillClose(GJDropDownLayer*) {}
}

[[link(android), depends(DynamicMoveCalculation)]]
class GJEffectManager : cocos2d::CCNode {
	// virtual ~GJEffectManager();
	// GJEffectManager();

	static GJEffectManager* create() = win 0x248f30;

	TodoReturn activeColorForIndex(int) = imac 0x2da1c0, m1 0x276598;
	TodoReturn activeOpacityForIndex(int) = imac 0x2da320;
	TodoReturn addAllInheritedColorActions(cocos2d::CCArray*);
	void addCountToItem(int, int);
	TodoReturn addMoveCalculation(CCMoveCNode*, cocos2d::CCPoint, GameObject*);
	TodoReturn calculateBaseActiveColors();
	TodoReturn calculateInheritedColor(int, ColorAction*);
	TodoReturn calculateLightBGColor(cocos2d::ccColor3B);
	TodoReturn checkCollision(int const&, int const&);
	void colorActionChanged(ColorAction*) = imac 0x2db560, m1 0x277584;
	bool colorExists(int) = imac 0x2db530, m1 0x27755c;
	TodoReturn colorForEffect(cocos2d::ccColor3B, cocos2d::ccHSVValue);
	TodoReturn colorForGroupID(int, cocos2d::ccColor3B const&, bool);
	TodoReturn colorForIndex(int);
	TodoReturn colorForPulseEffect(cocos2d::ccColor3B const&, PulseEffectAction*);
	TodoReturn controlActionsForControlID(int, GJActionCommand);
	TodoReturn controlActionsForTrigger(EffectGameObject*, GJActionCommand);
	int countForItem(int) = win 0x2506d0;
	TodoReturn createFollowCommand(float, float, float, int, int, int, int);
	TodoReturn createKeyframeCommand(int, cocos2d::CCArray*, GameObject*, int, int, bool, float, float, float, float, float, float, gd::vector<int> const&);
	TodoReturn createMoveCommand(cocos2d::CCPoint, int, float, int, float, bool, bool, bool, bool, float, float, int, int);
	TodoReturn createPlayerFollowCommand(float, float, int, float, float, int, int, int);
	TodoReturn createRotateCommand(float, float, int, int, int, float, bool, bool, bool, int, int);
	TodoReturn createTransformCommand(double, double, double, double, bool, float, int, int, int, float, bool, bool, int, int);
	TodoReturn getAllColorActions();
	TodoReturn getAllColorSprites();
	ColorAction* getColorAction(int) = win 0x249eb0, imac 0x2da050, m1 0x276444;
	ColorActionSprite* getColorSprite(int) = win 0x249f70, imac 0x2da210, m1 0x2765f8;
	TodoReturn getLoadedMoveOffset(gd::unordered_map<int, std::pair<double, double>>&);
	TodoReturn getMixedColor(cocos2d::ccColor3B, cocos2d::ccColor3B, float);
	TodoReturn getMoveCommandNode(GroupCommandObject2*);
	TodoReturn getMoveCommandObject();
	TodoReturn getOpacityActionForGroup(int);
	TodoReturn getSaveString() = imac 0x2e9870;
	TodoReturn getTempGroupCommand();
	TodoReturn handleObjectCollision(bool, int, int);
	TodoReturn hasActiveDualTouch();
	TodoReturn hasBeenTriggered(int, int) = imac 0x2e6470;
	TodoReturn hasPulseEffectForGroupID(int);
	bool isGroupEnabled(int) = imac 0x2e64b0, m1 0x27f38c;
	TodoReturn keyForGroupIDColor(int, cocos2d::ccColor3B const&, bool);
	void loadFromState(EffectManagerState&) = win 0x2521c0, imac 0x2ea7b0, m1 0x2827a8;
	void objectsCollided(int, int) = imac 0x2dc570, m1 0x2782f8;
	TodoReturn opacityForIndex(int);
	TodoReturn opacityModForGroup(int);
	TodoReturn pauseTimer(int);
	TodoReturn playerButton(bool, bool) = win 0x250470;
	void playerDied() = ios 0x155ac;
	TodoReturn postCollisionCheck() = win 0x24a580;
	TodoReturn postMoveActions() = win 0x24eac0;
	TodoReturn preCollisionCheck();
	TodoReturn prepareMoveActions(float, bool) = win 0x24d6b0;
	TodoReturn processColors() = win 0x2495f0, imac 0x2da390;
	TodoReturn processCopyColorPulseActions() = imac 0x2daa60;
	TodoReturn processInheritedColors() = imac 0x2da6b0;
	TodoReturn processMoveCalculations();
	TodoReturn processPulseActions();
	TodoReturn registerCollisionTrigger(int, int, int, bool, bool, gd::vector<int> const&, int, int);
	TodoReturn registerRotationCommand(GroupCommandObject2*, bool);
	TodoReturn removeAllPulseActions();
	TodoReturn removeColorAction(int);
	TodoReturn removePersistentFromAllItems();
	TodoReturn removePersistentFromAllTimers();
	TodoReturn removeTriggeredID(int, int);
	void reset() = win 0x249350, imac 0x2d8fd0;
	TodoReturn resetEffects() = win 0x24a2d0;
	TodoReturn resetMoveActions();
	TodoReturn resetTempGroupCommands(bool);
	TodoReturn resetToggledGroups();
	TodoReturn resetTriggeredIDs();
	void onRewardedVideo(cocos2d::CCObject* sender);
	TodoReturn resumeTimer(int);
	TodoReturn runCountTrigger(int, int, bool, int, bool, gd::vector<int> const&, int, int);
	TodoReturn runDeathTrigger(int, bool, gd::vector<int> const&, int, int);
	TodoReturn runOpacityActionOnGroup(int, float, float, int, int);
	TodoReturn runPulseEffect(int, bool, float, float, float, PulseEffectType, cocos2d::ccColor3B, cocos2d::ccHSVValue, int, bool, bool, bool, bool, int, int);
	TodoReturn runTimerTrigger(int, double, bool, int, gd::vector<int> const&, int, int);
	TodoReturn runTouchTriggerCommand(int, bool, TouchTriggerType, TouchTriggerControl, bool, gd::vector<int> const&, int, int);
	TodoReturn saveCompletedMove(int, double, double);
	void saveToState(EffectManagerState&) = win 0x251ba0;
	void setColorAction(ColorAction*, int);
	void setFollowing(int, int, bool);
	void setupFromString(gd::string);
	bool shouldBlend(int) = imac 0x2da350, m1 0x27672c;
	TodoReturn spawnGroup(int, float, bool, gd::vector<int> const&, int, int);
	TodoReturn spawnObject(GameObject*, float, gd::vector<int> const&, int, int);
	TodoReturn startTimer(int, double, double, bool, bool, bool, float, bool, int, gd::vector<int> const&, int, int);
	TodoReturn storeTriggeredID(int, int) = win 0x2502d0, imac 0x2e62c0;
	TodoReturn timeForItem(int);
	TodoReturn timerExists(int);
	TodoReturn toggleGroup(int, bool);
	void toggleItemPersistent(int, bool);
	void toggleTimerPersistent(int, bool);
	TodoReturn transferPersistentItems();
	TodoReturn traverseInheritanceChain(InheritanceNode*);
	TodoReturn tryGetMoveCommandNode(int);
	TodoReturn updateActiveOpacityEffects();
	TodoReturn updateColorAction(ColorAction*);
	void updateColorEffects(float) = imac 0x2db6c0, m1 0x2776a8; //inline on windows
	void updateColors(cocos2d::ccColor3B, cocos2d::ccColor3B); //inline on windows
	void updateCountForItem(int, int) = win 0x250790;
	virtual void rewardedVideoFinished();
	void updateEffects(float) = win 0x24a150, imac 0x2db590, m1 0x2775a4;
	void updateOpacityAction(OpacityEffectAction*);
	void updateOpacityEffects(float);
	void updatePulseEffects(float) = win 0x24f480, imac 0x2db890, m1 0x277838;
	TodoReturn updateSpawnTriggers(float) = win 0x250080;
	TodoReturn updateTimer(int, double);
	TodoReturn updateTimers(float, float) = win 0x251060;
	TodoReturn wasFollowing(int, int);
	TodoReturn wouldCreateLoop(InheritanceNode*, int);

	virtual bool init() = m1 0x275984, imac 0x2d8d70, ios 0xe698;

	TriggerEffectDelegate* m_triggerEffectDelegate;
	cocos2d::CCDictionary* m_unkObject148;
	cocos2d::CCDictionary* m_unkDict150;
	gd::vector<PulseEffectAction> m_pulseEffectVector; // 0x158
	gd::unordered_map<int, gd::vector<PulseEffectAction>> m_pulseEffectMap; // 0x170
	gd::unordered_map<int, OpacityEffectAction> m_opacityEffectMap; // 0x1a8
	gd::vector<TouchToggleAction> m_unkVector1e0;
	gd::unordered_map<int, gd::vector<CountTriggerAction>> m_countTriggerActions;
	gd::vector<CollisionTriggerAction> m_unkVector230;
	gd::vector<ToggleTriggerAction> m_unkVector248;
	cocos2d::CCDictionary* m_colorActionDict;
	cocos2d::CCDictionary* m_unkDict268;
	gd::vector<InheritanceNode*> m_unkVector270;
	gd::unordered_map<int, bool> m_unkMap288;
	gd::vector<ColorAction*> m_unkVector2c0;
	gd::vector<ColorActionSprite*> m_unkVector2d8;
	gd::vector<bool> m_unkVector2f0;
	gd::unordered_map<int, int> m_itemCountMap;
	gd::unordered_map<int, int> m_persistentItemCountMap;
	gd::unordered_set<int> m_persistentTimerItemSet;
	gd::unordered_map<int, TimerItem> m_timerItemMap;
	gd::unordered_map<int, std::vector<TimerTriggerAction>> m_unkMap3f8;
	cocos2d::CCArray* m_unkArray430;
	gd::vector<bool> m_unkVector438;
	gd::unordered_set<int> m_unkMap460;
	gd::map<int, int> m_unkMap498;
	gd::unordered_set<int> m_unkMap4c8;
	gd::vector<SpawnTriggerAction> m_nukVector500;
	gd::vector<GroupCommandObject2*> m_unkVector518;
	gd::vector<GroupCommandObject2*> m_unkVector530;
	gd::vector<CCObject*> m_unkVector548; // idk the type
	gd::vector<GroupCommandObject2> m_unkVector560;
	gd::unordered_map<int, std::pair<double, double>> m_unkMap578;
	gd::vector<GroupCommandObject2*> m_unkVector5b0;
	gd::unordered_map<int, gd::vector<GroupCommandObject2*>> m_unkMap5c8;
	gd::vector<GroupCommandObject2*> m_unkVector600;
	gd::unordered_map<int, CCMoveCNode*> m_unkMap618;
	gd::unordered_map<int, CCMoveCNode*> m_unkMap650;
	gd::unordered_map<int, CCMoveCNode*> m_unkMap688;
	gd::vector<CCMoveCNode*> m_unkVector6c0;
	gd::vector<CCMoveCNode*> m_unkVector6d8;
	gd::vector<CCMoveCNode*> m_unkVector6f0;
	gd::vector<DynamicMoveCalculation> m_unkVector708;
    gd::map<std::pair<int, int>, gd::vector<GroupCommandObject2*>> m_unkMap770;
    float m_unk780;
    float m_unk784;
    float m_unk788;
    float m_unk78C;
    float m_unk790;
    float m_unk794;
    bool m_unk798;
}

[[link(android)]]
class GJFlyGroundLayer : GJGroundLayer {
	// virtual ~GJFlyGroundLayer();

	static GJFlyGroundLayer* create();

	virtual bool init() = m1 0x51d4e4, imac 0x5f54c0;
}

[[link(android)]]
class GJFollowCommandLayer : SetupTriggerPopup {
	// virtual ~GJFollowCommandLayer();

	static GJFollowCommandLayer* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x25e810;
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

	virtual void determineStartValues() = m1 0x270af8, imac 0x2d37d0, ios 0x13dbe4;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x2714c8, imac 0x2d43a0, ios 0x13e39c;
	virtual void textChanged(CCTextInputNode*) = win 0x260230, m1 0x271070, imac 0x2d3de0, ios 0x13e0dc;
}

[[link(android)]]
class GJFriendRequest : cocos2d::CCNode {
	// virtual ~GJFriendRequest();

	static GJFriendRequest* create();
	static GJFriendRequest* create(cocos2d::CCDictionary*);

	virtual bool init() = imac 0x567640, ios 0xb19f8;
}

[[link(android)]]
class GJGameLevel : cocos2d::CCNode {
	// virtual ~GJGameLevel();
	//GJGameLevel() = ios 0xb40a8;

	static GJGameLevel* create() = win 0x1642d0, imac 0x533810, m1 0x486e78, ios 0x95224;
	static GJGameLevel* create(cocos2d::CCDictionary*, bool) = win 0x162b70, m1 0x4891fc, imac 0x535f20;
	/*inline static GJGameLevel* createWithCoder(DS_Dictionary* dict) {
		//inlined on windows
		auto level = GJGameLevel::create();
		level->dataLoaded(dict);
		return level;
	}*/

	bool areCoinsVerified() = ios 0xb10f8;
	void copyLevelInfo(GJGameLevel*) = win 0x165230;
	void dataLoaded(DS_Dictionary*) = win 0x1658e0, m1 0x4b2db0, imac 0x564a60;
	int demonIconForDifficulty(DemonDifficultyType) = imac 0x566800, m1 0x4b48dc;
	TodoReturn generateSettingsString();
	gd::string getAudioFileName() = win 0x164b80, m1 0x4b1710, imac 0x562f90;
	int getAverageDifficulty() = win 0x1649c0, m1 0x4b14cc, imac 0x562d50;
	char const* getCoinKey(int coinNumber) = win 0x164a30, m1 0x4a2e48, imac 0x5539f0, ios 0xa60d4;
	TodoReturn getLastBuildPageForTab(int);
	const char* getLengthKey(int length, bool platformer) = imac 0x562c70, m1 0x4b13b8;
	TodoReturn getListSnapshot();
	TodoReturn getNormalPercent() = ios 0x95830;
	TodoReturn getSongName();
	gd::string getUnpackedLevelDescription() = win 0x1678e0, imac 0x566710, m1 0x4b47dc;
	void handleStatsConflict(GJGameLevel*) = win 0x167410, imac 0x543750, m1 0x495334;
	inline bool isPlatformer() {
		return m_levelLength == 5;
	}
	static gd::string lengthKeyToString(int key) = win 0x164860, imac 0x562cb0, m1 0x4b13f4;
	TodoReturn levelWasAltered() = imac 0x562560;
	TodoReturn levelWasSubmitted();
	TodoReturn parseSettingsString(gd::string);
	void saveNewScore(int, int) = ios 0xae84c;
	void savePercentage(int percent, bool isPracticeMode, int clicks, int attempts, bool isChkValid) = win 0x164540, m1 0x4b0f44, imac 0x562730, ios 0xae180;
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

	virtual void encodeWithCoder(DS_Dictionary*) = win 0x166820, m1 0x4b3c80, imac 0x565af0, ios 0xb0658;
	virtual bool canEncode() = m1 0x4b4778, imac 0x5666a0, ios 0xb10f0; //merged func (return true)
	virtual bool init() = win 0x164330, m1 0x4b0c4c, imac 0x562340, ios 0xadec0;

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
	bool m_disableShakeToggled;
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
	int m_listPosition;
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

	static GJGameLoadingLayer* create(GJGameLevel* level, bool editor) = imac 0x159e80;

	void gameLayerDidUnload();
	bool init(GJGameLevel* level, bool editor) = imac 0x15a1e0;
	void loadLevel() = win 0x2380c0, m1 0x129940, imac 0x15a2e0;
	static GJGameLoadingLayer* transitionToLoadingLayer(GJGameLevel* level, bool editor) = win 0x237ed0;

	virtual void onEnter() = imac 0x15a350, ios 0x2140e4;
	virtual void onEnterTransitionDidFinish() = imac 0x15a340, ios 0x2140e0;

	GJGameLevel* m_level;
	bool m_editor;
}

[[link(android), depends(EventTriggerInstance), depends(SongChannelState), depends(DynamicObjectAction), depends(AdvancedFollowInstance), depends(EnterEffectInstance), depends(GameObjectPhysics), depends(GJValueTween), depends(SFXTriggerInstance), depends(SFXTriggerState), depends(SongTriggerState), depends(EnterEffectAnimValue)]]
class GJGameState {
	// ~GJGameState();
	// GJGameState();

	TodoReturn controlTweenAction(int, int, GJActionCommand);
	TodoReturn getGameObjectPhysics(GameObject*);
	TodoReturn processStateTriggers() = win 0x1f63a0;
	void stopTweenAction(int) = win 0x239b20;
	TodoReturn tweenValue(float, float, int, float, int, float, int, int) = win 0x1f6250;
	TodoReturn updateTweenAction(float, int);
	TodoReturn updateTweenActions(float);

	float m_cameraZoom;
	float m_targetCameraZoom;
	cocos2d::CCPoint m_cameraOffset;
	cocos2d::CCPoint m_unkPoint1;
	cocos2d::CCPoint m_unkPoint2;
	cocos2d::CCPoint m_unkPoint3;
	cocos2d::CCPoint m_unkPoint4;
	cocos2d::CCPoint m_unkPoint5;
	cocos2d::CCPoint m_unkPoint6;
	cocos2d::CCPoint m_unkPoint7;
	cocos2d::CCPoint m_unkPoint8;
	cocos2d::CCPoint m_unkPoint9;
	cocos2d::CCPoint m_unkPoint10;
	cocos2d::CCPoint m_unkPoint11;
	cocos2d::CCPoint m_unkPoint12;
	cocos2d::CCPoint m_unkPoint13;
	cocos2d::CCPoint m_unkPoint14;
	cocos2d::CCPoint m_unkPoint15;
	cocos2d::CCPoint m_unkPoint16;
	cocos2d::CCPoint m_unkPoint17;
	cocos2d::CCPoint m_unkPoint18;
	cocos2d::CCPoint m_unkPoint19;
	cocos2d::CCPoint m_unkPoint20;
	cocos2d::CCPoint m_unkPoint21;
	cocos2d::CCPoint m_unkPoint22;
	cocos2d::CCPoint m_unkPoint23;
	cocos2d::CCPoint m_unkPoint24;
	cocos2d::CCPoint m_unkPoint25;
	cocos2d::CCPoint m_unkPoint26;
	cocos2d::CCPoint m_unkPoint27;
	cocos2d::CCPoint m_unkPoint28;
	cocos2d::CCPoint m_unkPoint29;
	bool m_unkBool1;
	int m_unkInt1;
	bool m_unkBool2;
	int m_unkInt2;
	bool m_unkBool3;
	cocos2d::CCPoint m_unkPoint30;
	float m_middleGroundOffsetY;
	int m_unkInt3;
	int m_unkInt4;
	bool m_unkBool4;
	bool m_unkBool5;
	float m_unkFloat2;
	float m_unkFloat3;
	int m_unkInt5;
	int m_unkInt6;
	int m_unkInt7;
	int m_unkInt8;
	int m_unkInt9;
	int m_unkInt10;
	int m_unkInt11;
	float m_unkFloat4;
	unsigned int m_unkUint1;
	float m_portalY;
	bool m_unkBool6;
	bool m_gravityRelated;
	int m_unkInt12;
	int m_unkInt13;
	int m_unkInt14;
	int m_unkInt15;
	bool m_unkBool7;
	bool m_unkBool8;
	bool m_unkBool9;
	float m_unkFloat5;
	float m_unkFloat6;
	float m_unkFloat7;
	float m_unkFloat8;
	float m_cameraAngle;
	float m_targetCameraAngle;
	bool m_unk184;
	float m_timeWarp;
	float m_timeWarpRelated;
	int m_currentChannel;
	int m_unkInt17;
	gd::unordered_map<int, int> m_spawnChannelRelated0;
	gd::unordered_map<int, bool> m_spawnChannelRelated1;
	double m_totalTime; // time since entering the level
	double m_levelTime; // time since attempt started
	double m_unkDouble3; // always equal to m_totalTime?
	unsigned int m_unkUint2;
	unsigned int m_unkUint3;
	int m_currentProgress;
	unsigned int m_unkUint4;
	unsigned int m_unkUint5;
	unsigned int m_unkUint6;
	unsigned int m_unkUint7;
	GameObject* m_unkGameObjPtr1;
	GameObject* m_unkGameObjPtr2;
	cocos2d::CCPoint m_cameraPosition;
	bool m_unkBool10;
	float m_levelFlipping;
	bool m_unkBool11;
	bool m_unkBool12;
	bool m_isDualMode;
	float m_unkFloat9;
	gd::unordered_map<int, GJValueTween> m_tweenActions;
	int m_cameraEdgeValue0;
	int m_cameraEdgeValue1;
	int m_cameraEdgeValue2;
	int m_cameraEdgeValue3;
	gd::unordered_map<int, GameObjectPhysics> m_gameObjectPhysics;
	gd::vector<float> m_unkVecFloat1; // Assumed template param
	unsigned int m_unkUint10;
	unsigned int m_unkUint11;
	unsigned int m_unkUint12;
	cocos2d::CCPoint m_unkPoint31;
	float m_unkFloat10;
	unsigned int m_timeModRelated;
	bool m_timeModRelated2;
	gd::map<std::pair<int, int>, int> m_unkMapPairIntIntInt;
	unsigned int m_unkUint13;
	cocos2d::CCPoint m_unkPoint32;
	cocos2d::CCPoint m_unkPoint33;
	bool m_unkBool20;
	bool m_unkBool21;
	bool m_unkBool22;
	unsigned int m_unkUint14;
	bool m_unkBool26;
	bool m_cameraShakeEnabled;
	float m_cameraShakeFactor;
	unsigned int m_unkUint15;
	unsigned int m_unkUint16;
	uint64_t m_unkUint64_1;
	cocos2d::CCPoint m_unkPoint34;
	unsigned int dualRelated;
	gd::unordered_map<int, EnhancedGameObject*> m_stateObjects;
	gd::map<std::pair<GJGameEvent, int>, gd::vector<EventTriggerInstance>> m_unkMapPairGJGameEventIntVectorEventTriggerInstance;
	gd::map<std::pair<GJGameEvent, int>, int> m_unkMapPairGJGameEventIntInt;
	gd::unordered_map<int, std::vector<EnterEffectInstance>> m_unorderedMapEnterEffectInstanceVectors1;
	gd::unordered_map<int, std::vector<EnterEffectInstance>> m_unorderedMapEnterEffectInstanceVectors2;
	gd::vector<int> m_unkVecInt1;
	gd::vector<int> m_unkVecInt2;
	gd::vector<EnterEffectInstance> m_enterEffectInstances1;
	gd::vector<EnterEffectInstance> m_enterEffectInstances2;
	gd::vector<EnterEffectInstance> m_enterEffectInstances3;
	gd::vector<EnterEffectInstance> m_enterEffectInstances4;
	gd::vector<EnterEffectInstance> m_enterEffectInstances5;
	gd::unordered_set<int> m_unkUnorderedSet1;
	bool m_unkBool27;
	gd::vector<AdvancedFollowInstance> m_advanceFollowInstances;
	gd::vector<DynamicObjectAction> m_dynamicObjActions1;
	gd::vector<DynamicObjectAction> m_dynamicObjActions2;
	bool m_unkBool28;
	bool m_unkBool29;
	unsigned int m_unkUint17;
	gd::unordered_map<int, std::vector<int>> m_unkUMap8;
	gd::map<std::pair<int,int>, SFXTriggerInstance> m_proximityVolumeRelated;
	gd::unordered_map<int, SongChannelState> m_songChannelStates;
	gd::unordered_map<int, std::vector<SongTriggerState>> m_songTriggerStateVectors;
	gd::vector<SFXTriggerState> m_sfxTriggerStates;
	bool m_unkBool30;
	unsigned int m_unkUint18;
	int m_ground;
	unsigned int m_unkUint19;
	bool m_unkBool31;
	unsigned int m_unkUint20;
	bool m_unkBool32;
	unsigned int m_pauseCounter;
	unsigned int m_pauseBufferTimer;
}

[[link(android)]]
class GJGarageLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, GameRateDelegate, ListButtonBarDelegate, DialogDelegate, CharacterColorDelegate, RewardedVideoDelegate {
	// virtual ~GJGarageLayer();
	GJGarageLayer() = ios 0x31a060, win inline, android64 inline {
		m_usernameInput = nullptr;
		m_playerObject = nullptr;
		m_tabButtons = nullptr;
		m_pageButtons = nullptr;
		m_unknown = nullptr;
		m_supporter = nullptr;
		bool m_hasClosed = false;
		m_iconType = IconType::Cube;
		m_iconPages = {};
		m_cursor1 = nullptr;
		m_cursor2 = nullptr;
		m_currentIcon = nullptr;
		m_iconSelection = nullptr;
		m_leftArrow = nullptr;
		m_rightArrow = nullptr;
		m_navDotMenu = nullptr;
		m_iconID = 0;
		m_selectedIconType = IconType::Cube;
		m_videoPlaying = false;
	}

	gd::string achievementForUnlock(int, UnlockType);
	gd::string descriptionForUnlock(int, UnlockType) = win 0x266240;
	cocos2d::CCArray* getItems(IconType) = win 0x264710, m1 0x2fb2e8, imac 0x36f1c0;
	cocos2d::CCArray* getItems(int, int, IconType, int) = win 0x2647d0, imac 0x36f1c0;
	gd::string getLockFrame(int, UnlockType);
	static GJGarageLayer* node() = win inline, ios 0x312750, imac 0x36a6a0, m1 0x2f6a6c {
		auto ret = new GJGarageLayer();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}
	void onArrow(cocos2d::CCObject* sender) = win 0x263e50, m1 0x2fa3b8, imac 0x36e1e0;
	void onBack(cocos2d::CCObject* sender) = win 0x266f60, imac 0x36d620;
	void onInfo(cocos2d::CCObject* sender) = win 0x262a50;
	void onNavigate(cocos2d::CCObject* sender) = win 0x263f50, m1 0x2fac48, imac 0x36ead0;
	void onPaint(cocos2d::CCObject* sender) = win 0x266d80, ios 0x31520c;
	void onSelect(cocos2d::CCObject* sender) = win 0x265100, m1 0x2fb710, imac 0x36f5e0;
	void onSelectTab(cocos2d::CCObject* sender) = win 0x263f80, imac 0x36e1b0, m1 0x2fa384;
	void onShards(cocos2d::CCObject* sender) = win 0x266c30;
	void onShop(cocos2d::CCObject* sender) = win 0x266f00;
	void onSpecial(cocos2d::CCObject* sender) = win 0x265930, imac 0x36f510, m1 0x2fb65c;
	void onToggleItem(cocos2d::CCObject* sender) = win 0x2657a0, ios 0x316C4C, imac 0x36fe40;
	void playRainbowEffect() = win 0x266a40, imac 0x370230, m1 0x2fc130;
	void playShadowEffect();
	static cocos2d::CCScene* scene() = win 0x260f90, ios 0x31270c;
	void selectTab(IconType) = win 0x263fb0, m1 0x2fa4f4, imac 0x36e340;
	void setupIconSelect() = win 0x2631f0;
	void setupPage(int, IconType) = win 0x264070, m1 0x2fa624, imac 0x36e480, ios 0x315810;
	void setupSpecialPage() = win 0x264a90, imac 0x36eb00, m1 0x2fac80, ios 0x315DE0;
	void showUnlockPopupNew(int, UnlockType);
	gd::string titleForUnlock(int, UnlockType);
	void toggleGlow();
	void updatePlayerColors() = win 0x2659b0, m1 0x2f8658, imac 0x36c500;
	void updatePlayerName(char const*);

	virtual bool init() = win 0x261150, m1 0x2f6b6c, imac 0x36a810, ios 0x3127c4;
	virtual void keyBackClicked() = win 0x267100, m1 0x2fd42c, imac 0x3715d0, ios 0x317c30;
	virtual void textInputOpened(CCTextInputNode*) = win 0x262c50, m1 0x2f9f8c, imac 0x36de20, ios 0x315370;
	virtual void textInputClosed(CCTextInputNode*) = win 0x262e40, m1 0x2fa0e4, imac 0x36df50, ios 0x3154a0;
	virtual void textChanged(CCTextInputNode*) = win 0xc13a0, m1 0x2fa304, imac 0x36e150, ios 0x315608;
	virtual void listButtonBarSwitchedPage(ListButtonBar*, int) = win 0xc1450, m1 0x2fc440, imac 0x370570, ios 0x31716c;
	virtual void showUnlockPopup(int, UnlockType) = win 0x265b30, m1 0x2fc598, imac 0x370700, ios 0x317254;
	virtual void updateRate() = win 0x266800, m1 0x2fd218, imac 0x371380, ios 0x317aa8;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2663d0, m1 0x2fcfe0, imac 0x371110, ios 0x317870;
	virtual void dialogClosed(DialogLayer*) = win 0x266630, m1 0x2fd0dc, imac 0x371220, ios 0x31796c;
	virtual void playerColorChanged() = win 0x265980, m1 0x2fc360, imac 0x370470, ios 0x3170d4;
	virtual void rewardedVideoFinished() = win 0x262c40, m1 0x2f9f7c, imac 0x36de00, ios 0x315360;

	CCTextInputNode* m_usernameInput;
	SimplePlayer* m_playerObject;
	cocos2d::CCArray* m_tabButtons;
	cocos2d::CCArray* m_pageButtons;
	cocos2d::CCNode* m_unknown;
	cocos2d::CCSprite* m_supporter;
	bool m_hasClosed;
	IconType m_iconType;
	gd::map<IconType, int> m_iconPages;
	cocos2d::CCSprite* m_cursor1;
	cocos2d::CCSprite* m_cursor2;
	CCMenuItemSpriteExtra* m_currentIcon;
	ListButtonBar* m_iconSelection;
	CCMenuItemSpriteExtra* m_leftArrow;
	CCMenuItemSpriteExtra* m_rightArrow;
	cocos2d::CCMenu* m_navDotMenu;
	int m_iconID;
	IconType m_selectedIconType;
	bool m_videoPlaying;
}

[[link(android)]]
class GJGradientLayer : cocos2d::CCLayerGradient {
	// virtual ~GJGradientLayer();

	static GJGradientLayer* create();

	virtual bool init() = m1 0x12942c, imac 0x159cf0, ios 0x213d40;
}

[[link(android)]]
class GJGroundLayer : cocos2d::CCLayer {
	// virtual ~GJGroundLayer();

	static GJGroundLayer* create(int, int) = win 0x26bfe0, imac 0x5f4210, m1 0x51c2d0, ios 0x32198;

	void createLine(int) = win 0x26c890, ios 0x3267c;
	TodoReturn deactivateGround();
	TodoReturn fadeInFinished();
	TodoReturn getGroundY();
	TodoReturn hideShadows();
	bool init(int, int) = win 0x26c060, imac 0x5f4320, m1 0x51c3b4, ios 0x3221c;
	void loadGroundSprites(int, bool) = win 0x26c5d0;
	void positionGround(float) = ios 0x32fcc, imac 0x5f5370;
	TodoReturn scaleGround(float) = win 0x26ca80, imac 0x5f4e10;
	void toggleVisible01(bool);
	void toggleVisible02(bool);
	void updateGround01Color(cocos2d::ccColor3B);
	void updateGround02Color(cocos2d::ccColor3B);
	TodoReturn updateGroundPos(cocos2d::CCPoint);
	TodoReturn updateGroundWidth(bool);
	void updateLineBlend(bool) = imac 0x5f5130, m1 0x51d17c;
	TodoReturn updateShadows() = win 0x26ccc0, imac 0x5f50a0;
	TodoReturn updateShadowXPos(float, float) = win 0x26cd60, imac 0x5f5270;

	virtual void draw() = ios 0x32fc8 {}
	virtual void showGround() = win 0x26cc30, m1 0x51d1b8, imac 0x5f5180, ios 0x32e60;
	virtual TodoReturn fadeInGround(float) = win 0x26cc40, m1 0x51d1c4, imac 0x5f5190, ios 0x32e6c;
	virtual TodoReturn fadeOutGround(float) = win 0x26ce30, m1 0x51d398, imac 0x5f5330, ios 0x32fc0;
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
	GJItemIcon() {}

	static GJItemIcon* create(UnlockType p0, int p1, cocos2d::ccColor3B p2, cocos2d::ccColor3B p3, bool p4, bool p5, bool p6, cocos2d::ccColor3B p7) = win inline, m1 0x2fe438, imac 0x3727b0 {
		auto ret = new GJItemIcon();
		if (ret->init(p0, p1, p2, p3, p4, p5, p6, p7)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
 	}
	void changeToLockedState(float) = win 0x2694c0, m1 0x2fbbf4, imac 0x36fcd0, ios 0x316AB8;
	static GJItemIcon* createBrowserItem(UnlockType unlockType, int itemID) = win 0x268880, m1 0x2fb6d0, imac 0x36f580;
	static GJItemIcon* createStoreItem(UnlockType, int, bool, cocos2d::ccColor3B) = win 0x268750, m1 0x2fe41c, imac 0x372780;
	void darkenStoreItem(cocos2d::ccColor3B) = win 0x2691d0, m1 0x2fec04, imac 0x372fc0;
	void darkenStoreItem(ShopType) = win 0x269150, m1 0x2fbbcc, imac 0x36fc60;
	bool init(UnlockType, int, cocos2d::ccColor3B, cocos2d::ccColor3B, bool, bool, bool, cocos2d::ccColor3B) = win 0x2689a0, m1 0x2fe540, imac 0x3728c0, ios 0x3186D4;
	static float scaleForType(UnlockType) = win 0x2695a0, m1 0x2fb6f0, imac 0x36f5b0;
	void toggleEnabledState(bool) = win 0x269400, ios 0x316B94;
	static cocos2d::ccColor3B unlockedColorForType(int) = m1 0x2feb9c, imac 0x372f60;

	virtual void setOpacity(unsigned char) = win 0x2690b0, m1 0x2fea70, imac 0x372e20, ios 0x318b84;

	SimplePlayer* m_player;
	int m_iconRequestID;
	cocos2d::CCSize m_playerSize;
	bool m_isIcon;
	int m_unlockID;
	UnlockType m_unlockType;
}

[[link(android)]]
class GJLevelList : cocos2d::CCNode {
	// virtual ~GJLevelList();

	static GJLevelList* create() = win 0x16de90, m1 0x487c24, imac 0x5346e0;
	static GJLevelList* create(cocos2d::CCDictionary*) = win 0x16d5a0, m1 0x48b638, imac 0x538bb0;

	void addLevelToList(GJGameLevel* level) = win 0x16E610;
	TodoReturn completedLevels() = win 0x16ef90, imac 0x56a800, m1 0x4b7fc4;
	TodoReturn createWithCoder(DS_Dictionary*);
	void dataLoaded(DS_Dictionary*) = win 0x16f3c0, m1 0x4b8464, imac 0x56ac60;
	TodoReturn duplicateListLevels(GJLevelList*);
	TodoReturn frameForListDifficulty(int, DifficultyIconType) = imac 0x56b220, m1 0x4b89d4;
	cocos2d::CCArray* getListLevelsArray(cocos2d::CCArray*) = win 0x16E890;
	gd::string getUnpackedDescription() = win 0x16e2b0, imac 0x5692c0, m1 0x4b6ecc;
	void handleStatsConflict(GJLevelList*) = m1 0x4b6d14, imac 0x569100;
	bool hasMatchingLevels(GJLevelList*) = m1 0x4b6d2c, win 0x16e0a0, imac 0x569120;
	TodoReturn orderForLevel(int);
	TodoReturn parseListLevels(gd::string) = imac 0x54a640, win 0x16e370;
	TodoReturn removeLevelFromList(int);
	void reorderLevel(int levelID, int newPosition) = win 0x16E7A0;
	TodoReturn reorderLevelStep(int, bool);
	void showListInfo() = win 0x16eff0, imac 0x56a850, m1 0x4b8028;
	TodoReturn totalLevels() = imac 0x56a7e0, m1 0x4b7fb4;
	TodoReturn updateLevelsString();

	virtual void encodeWithCoder(DS_Dictionary*) = win 0x16f6e0, m1 0x4b8794, imac 0x56afa0, ios 0xb3ba8;
	virtual bool canEncode() = m1 0x4b89cc, imac 0x56b210, ios 0xb3de0;
	virtual bool init() = m1 0x4b6c9c, imac 0x569080, ios 0xb281c;

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
	bool m_isEditable;
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
	cocos2d::CCDictionary* m_levelsDict;
	GJLevelType m_listType;
	int m_M_ID;
}

[[link(android)]]
class GJLevelScoreCell : TableViewCell {
	// virtual ~GJLevelScoreCell();
	GJLevelScoreCell(char const*, float, float);

	void loadFromScore(GJUserScore*) = win 0xb7760, imac 0x246330;
	void onViewProfile(cocos2d::CCObject* sender);
	void updateBGColor(int);

	virtual bool init() = m1 0x1fb1a4, imac 0x251a10, ios 0x112a40;
	virtual void draw() = m1 0x1fb1ec, imac 0x251a60, ios 0x112a88;
}

[[link(android)]]
class GJListLayer : cocos2d::CCLayerColor {
	// virtual ~GJListLayer();

	static GJListLayer* create(BoomListView*, char const*, cocos2d::ccColor4B, float, float, int) = win 0x26d5e0, m1 0x505a04, imac 0x5dadf0, ios 0x8325c;

	bool init(BoomListView*, char const*, cocos2d::ccColor4B, float, float, int) = win 0x26d710, imac 0x5daf00, m1 0x505af8, ios 0x83350;

	BoomListView* m_listView;
}

[[link(android)]]
class GJLocalLevelScoreCell : TableViewCell {
	// virtual ~GJLocalLevelScoreCell();
	GJLocalLevelScoreCell(char const*, float, float);

	void loadFromScore(GJLocalScore*) = win 0xb7360, imac 0x246db0;
	void updateBGColor(int);

	virtual bool init() = win 0x3b9a0, m1 0x1fb06c, imac 0x251820, ios 0x112950;
	virtual void draw() = win 0xabd00, m1 0x1fb078, imac 0x251840, ios 0x11295c;
}

[[link(android)]]
class GJLocalScore : cocos2d::CCObject {
	// virtual ~GJLocalScore();

	static GJLocalScore* create(int, int) = imac 0x566f50;

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
	GJMapPack() {
		m_levels = nullptr;
		m_packID = 0;
		m_difficulty = GJDifficulty::Auto;
		m_stars = 0;
		m_coins = 0;
		m_packName = "";
		m_levelStrings = "";
		m_MId = 0;
		m_isGauntlet = false;
	}

	static GJMapPack* create() = win inline, m1 0x4b4a58, imac 0x566970 {
		auto ret = new GJMapPack();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}
	static GJMapPack* create(cocos2d::CCDictionary*) = win 0x1679a0, m1 0x48c0a8, imac 0x539620;

	int completedMaps() = win 0x168810, m1 0x4b4ec4, imac 0x566e40;
	bool hasCompletedMapPack() = win inline, imac 0x566ef0, m1 0x4b4f88, ios 0xb1614 {
		auto total = this->totalMaps();
		if (total > 0) return this->completedMaps() >= total;
		else return 0;
	}
	void parsePackColors(gd::string, gd::string) = win 0x168560, m1 0x4b4c00, imac 0x566b40;
	void parsePackLevels(gd::string) = m1 0x4b4afc, imac 0x566a30;
	int totalMaps() = win inline, m1 0x48c988, imac 0x53a080 {
		if (this->m_levels) {
			return this->m_levels->count();
		}

		return 0;
	}

	virtual bool init() = win 0x168500, m1 0x4b4e64, imac 0x566dc0, ios 0xb151c;

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

	void loadFromMessage(GJUserMessage*) = win 0xbab70;
	TodoReturn markAsRead();
	void onDeleteMessage(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);
	void onViewMessage(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	void updateBGColor(int);
	TodoReturn updateToggle();

	virtual bool init() = win 0xb99b0, m1 0x1fd228, imac 0x254100, ios 0x113cf4;
	virtual void draw() = m1 0x1fd510, imac 0x254410, ios 0x113f20;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xbb7d0, m1 0x1fd5bc, imac 0x2544e0, ios 0x113fcc;
	virtual void uploadActionFinished(int, int) = win 0xbb970, m1 0x1fd720, imac 0x254670, ios 0x1140b4;
	virtual void uploadActionFailed(int, int) = win 0xbbaf0, m1 0x1fd904, imac 0x254850, ios 0x1141b8;
	virtual void onClosePopup(UploadActionPopup*) = m1 0x1fda6c, imac 0x2549c0, ios 0x114250;
}

[[link(android)]]
class GJMessagePopup : FLAlertLayer, UploadActionDelegate, UploadPopupDelegate, FLAlertLayerProtocol, DownloadMessageDelegate {
	// virtual ~GJMessagePopup();

	static GJMessagePopup* create(GJUserMessage*);

	void blockUser();
	bool init(GJUserMessage*);
	void loadFromGJMessage(GJUserMessage*) = win 0x285be0, imac 0x2a2980, m1 0x2445b4, ios 0x2eb808;
	void onBlock(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onRemove(cocos2d::CCObject* sender);
	void onReply(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = m1 0x2454a8, imac 0x2a3920, ios 0x2ec2e8;
	virtual TodoReturn downloadMessageFinished(GJUserMessage*) = win 0x286930, m1 0x245524, imac 0x2a3990, ios 0x2ec364;
	virtual TodoReturn downloadMessageFailed(int) = win 0x286980, m1 0x2455fc, imac 0x2a3a50, ios 0x2ec3d8;
	virtual void uploadActionFinished(int, int) = win 0x2869c0, m1 0x2456b4, imac 0x2a3af0, ios 0x2ec490;
	virtual void uploadActionFailed(int, int) = win 0x286b50, m1 0x24589c, imac 0x2a3cb0, ios 0x2ec5b8;
	virtual void onClosePopup(UploadActionPopup*) = win 0x286c20, m1 0x245a0c, imac 0x2a3e00, ios 0x2ec654;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x286ca0, m1 0x245b30, imac 0x2a3f00, ios 0x2ec6ec;
}

[[link(android)]]
class GJMGLayer : cocos2d::CCLayer {
	// virtual ~GJMGLayer();

	static GJMGLayer* create(int) = imac 0x5f5500;

	TodoReturn deactivateGround();
	bool init(int);
	void loadGroundSprites(int, bool);
	TodoReturn scaleGround(float);
	TodoReturn toggleVisible01(bool);
	TodoReturn toggleVisible02(bool);
	TodoReturn updateGroundColor(cocos2d::ccColor3B, bool);
	TodoReturn updateGroundOpacity(unsigned char, bool) = imac 0x5f5da0;
	TodoReturn updateGroundPos(cocos2d::CCPoint);
	TodoReturn updateGroundWidth(bool);
	void updateMG01Blend(bool) = imac 0x5f5fd0, m1 0x51df98;
	void updateMG02Blend(bool) = imac 0x5f6020, m1 0x51dfd4;

	virtual void draw() = ios 0x3390c {}
	virtual void showGround() = m1 0x51df64, imac 0x5f5f90, ios 0x33900;
}

[[link(android)]]
class GJMoreGamesLayer : GJDropDownLayer {
	// virtual ~GJMoreGamesLayer();
	// GJMoreGamesLayer();

	static GJMoreGamesLayer* create() = win 0x26dd80;

	TodoReturn getMoreGamesList();

	virtual void customSetup() = m1 0x6a9344, ios 0x6bedc, imac 0x7a1510;
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

	static GJMultiplayerManager* sharedState() = win 0x270430, imac 0x665610, m1 0x581828;

	void addComment(gd::string, int);
	void addDLToActive(char const* tag, cocos2d::CCObject* obj);
	void addDLToActive(char const* tag);
	TodoReturn createAndAddComment(gd::string, int);
	void dataLoaded(DS_Dictionary*) = imac 0x669130, m1 0x584f3c;
	void encodeDataTo(DS_Dictionary*) = imac 0x669120, m1 0x584f38;
	TodoReturn exitLobby(int);
	void firstSetup();
	TodoReturn getBasePostString();
	cocos2d::CCObject* getDLObject(char const*);
	TodoReturn getLastCommentIDForGame(int);
	void handleIt(bool, gd::string, gd::string, GJHttpType);
	void handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	void handleItND(cocos2d::CCNode*, void*);
	bool isDLActive(char const* tag);
	TodoReturn joinLobby(int);
	void onExitLobbyCompleted(gd::string, gd::string);
	void onJoinLobbyCompleted(gd::string, gd::string);
	void onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	void onUploadCommentCompleted(gd::string, gd::string);
	void ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	void removeDLFromActive(char const*);
	void uploadComment(gd::string, int);

	virtual bool init() = m1 0x583214, imac 0x6671e0, ios 0x1d89dc;
}

// TODO: add back ObjectDecoderDelegate after cocos-headers update
[[link(android)]]
class GJObjectDecoder : cocos2d::CCNode {
	// virtual ~GJObjectDecoder();

	static GJObjectDecoder* sharedDecoder() = ios 0x227094, m1 0x644080, imac 0x731d90;

	virtual bool init() = imac 0x731e10, ios 0x227130;
	virtual cocos2d::CCObject* getDecodedObject(int, DS_Dictionary*) = win 0x271ea0, m1 0x64412c, imac 0x731e20, ios 0x227134;
}

[[link(android)]]
class GJOptionsLayer : SetupTriggerPopup {
	// virtual ~GJOptionsLayer();
	GJOptionsLayer() = win 0x27adc0;

	static GJOptionsLayer* create(int) = m1 0x23a7ec, imac 0x297d60;

	void addGVToggle(char const*, char const*, char const*) = win 0x27d8f0, m1 0x23b080, imac 0x298780;
	void addToggle(char const* p0, int p1, bool p2, char const* p3) = win inline, m1 0x23b644, imac 0x298d70 {
		addToggleInternal(p0, p1, p2, p3);
	}
	void addToggleInternal(char const*, int, bool, char const*) = win 0x27da30, m1 0x23b1bc, imac 0x2988a0;
	int countForPage(int) = win 0x27df30, m1 0x23bf6c, imac 0x299660;
	void goToPage(int) = win 0x27e450, m1 0x23ac6c, imac 0x298310;
	void incrementCountForPage(int) = win 0x27e000, m1 0x23ba8c, imac 0x2991a0;
	const char* infoKey(int) = m1 0x23bd70, imac 0x299480;
	bool init(int) = win 0x27d5b0, m1 0x23a984, imac 0x297fb0;
	cocos2d::CCLayer* layerForPage(int) = win 0x27e290, m1 0x23b740, imac 0x298e80;
	const char* layerKey(int) = m1 0x23c0b4, imac 0x299790;
	cocos2d::CCPoint nextPosition(int) = m1 0x23b648, imac 0x298d80;
	const char* objectKey(int) = m1 0x23c08c, imac 0x299770;
	cocos2d::CCArray* objectsForPage(int) = win 0x27e100, m1 0x23bbb8, imac 0x2992b0;
	void offsetToNextPage() = win inline, m1 0x23b058, imac 0x298740 {
		m_toggleCount += m_togglesPerPage - m_toggleCount % m_togglesPerPage;
	}
	void onInfo(cocos2d::CCObject* sender) = win 0x27e970, m1 0x23bd98, imac 0x2994a0;
	void onNextPage(cocos2d::CCObject* sender) = win 0x27e430, m1 0x23ac54, imac 0x2982d0;
	void onPrevPage(cocos2d::CCObject* sender) = win 0x27e440, m1 0x23ac60, imac 0x2982f0;
	void onToggle(cocos2d::CCObject* sender) = win 0x27e860, m1 0x23b90c, imac 0x299060;
	const char* pageKey(int) = m1 0x23c064, imac 0x299750;

	virtual void setupOptions() = ios 0x2e4ad4 {}
	virtual void didToggleGV(gd::string) = win 0x1e8fa0, m1 0x21472c, imac 0x26e1d0, ios 0x189e3c;
	virtual void didToggle(int) = ios 0x2f7158 {}

	float m_gap;
	int m_page;
	int m_togglesPerPage;
	int m_toggleCount;
	int m_maxPage;
	float m_maxLabelScale;
	float m_maxLabelWidth;
	cocos2d::CCDictionary* m_values;
	cocos2d::CCDictionary* m_variables;
	CCMenuItemSpriteExtra* m_prevButton;
	CCMenuItemSpriteExtra* m_nextButton;
	float m_offset;
}

[[link(android)]]
class GJPathPage : FLAlertLayer, FLAlertLayerProtocol, GJPurchaseDelegate {
	// virtual ~GJPathPage();

	static GJPathPage* create(int, GJPathsLayer*) = win 0x273250, m1 0x2916fc, imac 0x2fd710;

	bool init(int, GJPathsLayer*) = win 0x273380, m1 0x291bec, imac 0x2fdcf0;
	void onActivatePath(cocos2d::CCObject* sender) = win 0x274ed0, m1 0x29392c, imac 0x2ffb30;
	void onBack(cocos2d::CCObject* sender) = win 0x276b80, m1 0x293564, imac 0x2ff7c0;
	void onIconInfo(cocos2d::CCObject* sender) = win 0x274f00, m1 0x293614, imac 0x2ff850;
	void onUnlock(cocos2d::CCObject* sender) = win 0x275100, m1 0x293820, imac 0x2ffa40;
	void playUnlockAnimation() = win 0x275950, m1 0x293958, imac 0x2ffb70; // inlined on m1
	void showCantAffordMessage(GJStoreItem*) = win 0x275280, m1 0x293f08, imac 0x300220;
	void unlockAnimationFinished() = win 0x276a90, m1 0x294854, imac 0x300c00;
	void unlockAnimationStep2() = win 0x275fa0, m1 0x29460c, imac 0x300920;
	void unlockAnimationStep3() = win 0x276220, m1 0x2949b0, imac 0x300d60;

	virtual void registerWithTouchDispatcher() = m1 0x2953bc, imac 0x3018a0, ios 0x3c42dc;
	virtual void keyBackClicked() = win 0x276c20, m1 0x295258, imac 0x301760, ios 0x3c42d0;
	virtual void show() = m1 0x2953f4, imac 0x3018e0, ios 0x3c4314;
	virtual void didPurchaseItem(GJStoreItem*) = win 0x2750f0, m1 0x293954, imac 0x2ffb60, ios 0x3c31a4;

	GJPathsLayer* m_pathsLayer;
	int m_pathNumber;
	bool m_animationPlaying;
	int m_dialogIndex;
}

[[link(android)]]
class GJPathRewardPopup : FLAlertLayer {
	// virtual ~GJPathRewardPopup();

	static GJPathRewardPopup* create(int) = m1 0x291828, imac 0x2fd890;

	void closePopup() = m1 0x295d7c, imac 0x302230; // merged with GJPathsLayer::onClose on win
	bool init(int) = win 0x277aa0, m1 0x295784, imac 0x301c60;
	void onClaim(cocos2d::CCObject* sender) = win 0x277f80, m1 0x295c20, imac 0x302100;

	virtual void keyBackClicked() = ios 0x3c4c34 {}

	int m_pathNumber;
}

[[link(android)]]
class GJPathsLayer : FLAlertLayer, FLAlertLayerProtocol {
	// virtual ~GJPathsLayer();

	static GJPathsLayer* create() = win 0x272940, m1 0x290e38, imac 0x2fce10;

	void darkenButtons(bool) = m1 0x2916b0, imac 0x2fd6d0;
	static gd::string nameForPath(int) = win 0x2726d0, m1 0x290c88, imac 0x2fcc70;
	void onClose(cocos2d::CCObject* sender) = win 0x273190, m1 0x291438, imac 0x2fd480;
	void onPath(cocos2d::CCObject* sender) = win 0x272fc0, m1 0x2915d0, imac 0x2fd600;

	virtual bool init() = win 0x272a40, m1 0x290f38, imac 0x2fcf60, ios 0x3c0e1c;
	virtual void onExit() = win 0x272f70, m1 0x291660, imac 0x2fd680, ios 0x3c14a4;
	virtual void registerWithTouchDispatcher() = m1 0x2919f4, imac 0x2fdaa0, ios 0x3c1694;
	virtual void keyBackClicked() = win 0x2731f0, m1 0x291924, imac 0x2fd9d0, ios 0x3c1688;
	virtual void show() = m1 0x291a2c, imac 0x2fdae0, ios 0x3c16cc;

	cocos2d::CCSprite* m_closeSprite;
	bool m_running;
}

[[link(android)]]
class GJPathSprite : CCSpriteCOpacity {
	// virtual ~GJPathSprite();

	static GJPathSprite* create(int) = win 0x276c30, m1 0x2914a0, imac 0x2fd4e0; // inlined on mac

	void addRankLabel(int) = m1 0x295688, imac 0x301b70;
	void addShardSprite() = win 0x277240, m1 0x29512c, imac 0x301650;
	void changeToLockedArt() = win 0x276f80, m1 0x2942e4, imac 0x300640;
	bool init(int) = m1 0x295578, imac 0x301a60;
	void updateState() = win 0x276e00, m1 0x29154c, imac 0x2fd580;

	int m_pathNumber;
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

	virtual void determineStartValues() = m1 0x2f4998, imac 0x367ea0, ios 0x16bba0;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x2f5504, imac 0x368c30, ios 0x16c488;
	virtual void textChanged(CCTextInputNode*) = win 0x27a1a0, m1 0x2f4f38, imac 0x3684c0, ios 0x16c0a0;
}

[[link(android)]]
class GJPromoPopup : FLAlertLayer {
	// virtual ~GJPromoPopup();

	static GJPromoPopup* create(gd::string);

	bool init(gd::string) = win 0x292920, imac 0x2b2370;
	void onClose(cocos2d::CCObject* sender);

	virtual void onExit() = win 0x292c20, m1 0x252da4, imac 0x2b2650, ios 0x2f60dc;
	virtual void registerWithTouchDispatcher() = m1 0x252eb4, imac 0x2b2760, ios 0x2f611c;
	virtual void keyBackClicked() = m1 0x252de4, imac 0x2b2690, ios 0x2f6110;
	virtual void show() = m1 0x252eec, imac 0x2b27a0, ios 0x2f6154;
}

[[link(android)]]
class GJPurchaseDelegate {
	virtual void didPurchaseItem(GJStoreItem*);
}

[[link(android)]]
class GJRequestCell : TableViewCell, FLAlertLayerProtocol, UploadPopupDelegate, UploadActionDelegate {
	// virtual ~GJRequestCell();
	GJRequestCell(char const*, float, float);

	void loadFromScore(GJUserScore*) = win 0xb99d0;
	TodoReturn markAsRead();
	void onDeleteRequest(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);
	void onViewFriendRequest(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);
	TodoReturn updateToggle();

	virtual bool init() = m1 0x1fc704, imac 0x253360, ios 0x113618;
	virtual void draw() = m1 0x1fc9e0, imac 0x253670, ios 0x11385c;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xba580, m1 0x1fca8c, imac 0x253740, ios 0x113908;
	virtual void uploadActionFinished(int, int) = win 0xba730, m1 0x1fcc18, imac 0x253910, ios 0x1139fc;
	virtual void uploadActionFailed(int, int) = win 0xba910, m1 0x1fce18, imac 0x253b10, ios 0x113b1c;
	virtual void onClosePopup(UploadActionPopup*) = m1 0x1fcef0, imac 0x253c20, ios 0x113bd0;
}

[[link(android)]]
class GJRewardDelegate {
	virtual void rewardsStatusFinished(int);
	virtual void rewardsStatusFailed();
}

[[link(android)]]
class GJRewardItem : cocos2d::CCObject {
	// virtual ~GJRewardItem();

	static GJRewardItem* create() = win 0x1e7260, m1 0x7f040, imac 0x8e150;
	static GJRewardItem* create(int chestID, int timeRemaining, gd::string) = win 0x1e75a0, m1 0x6514c, imac 0x711d0;
	static GJRewardItem* createSpecial(GJRewardType, int, int, SpecialRewardItem, int, SpecialRewardItem, int, int, int) = win 0x1e73b0, m1 0x6b280, imac 0x78900;
	static GJRewardItem* createWithCoder(DS_Dictionary* dict) = win inline, m1 0x7f31c, imac 0x8e470 {
		auto ret = create();
		ret->dataLoaded(dict);
		return ret;
	}
	static GJRewardItem* createWithObject(GJRewardType, GJRewardObject*) = win 0x1e72a0, m1 0x7cce8, imac 0x8ba00;
	static GJRewardItem* createWithObjects(GJRewardType, cocos2d::CCArray*) = win 0x1e7330, m1 0x680b4, imac 0x75030;

	void dataLoaded(DS_Dictionary* dict) = win inline, m1 0x7f3c8, imac 0x8e500 {
		m_chestID = dict->getIntegerForKey("1");
		m_rewardType = (GJRewardType)dict->getIntegerForKey("2");
		auto rewardObjects = dict->getArrayForKey("3", false);
		CC_SAFE_RETAIN(rewardObjects);
		CC_SAFE_RELEASE(m_rewardObjects);
		m_rewardObjects = rewardObjects;
	}
	static SpecialRewardItem getNextShardType(SpecialRewardItem type) = win inline, m1 0x7f298, imac 0x8e400 {
		switch (type) {
			case SpecialRewardItem::FireShard: return SpecialRewardItem::IceShard;
			case SpecialRewardItem::IceShard: return SpecialRewardItem::PoisonShard;
			case SpecialRewardItem::PoisonShard: return SpecialRewardItem::ShadowShard;
			case SpecialRewardItem::ShadowShard: return SpecialRewardItem::LavaShard;
			case SpecialRewardItem::LavaShard: return SpecialRewardItem::EarthShard;
			case SpecialRewardItem::EarthShard: return SpecialRewardItem::BloodShard;
			case SpecialRewardItem::BloodShard: return SpecialRewardItem::MetalShard;
			case SpecialRewardItem::MetalShard: return SpecialRewardItem::LightShard;
			case SpecialRewardItem::LightShard: return SpecialRewardItem::SoulShard;
			case SpecialRewardItem::SoulShard: return SpecialRewardItem::FireShard;
			default: return (SpecialRewardItem)0;
		}
	}
	static SpecialRewardItem getRandomNonMaxShardType() = win inline, m1 0x67e14, imac 0x74c90 {
		auto type = getRandomShardType();
		for (int i = 10; i > 0; i--) {
			if (GameStatsManager::sharedState()->getStat(rewardItemToStat(type).c_str()) < 100) return type;
			type = getNextShardType(type);
		}
		return (SpecialRewardItem)0;
	}
	static SpecialRewardItem getRandomShardType() = win inline, m1 0x7f2bc, imac 0x8e420 {
		int randomValue = floorf((rand() / (float)RAND_MAX) * 10.f) + 1.f;
		switch (randomValue) {
			case 2: return SpecialRewardItem::IceShard;
			case 3: return SpecialRewardItem::PoisonShard;
			case 4: return SpecialRewardItem::ShadowShard;
			case 5: return SpecialRewardItem::LavaShard;
			case 6: return SpecialRewardItem::EarthShard;
			case 7: return SpecialRewardItem::BloodShard;
			case 8: return SpecialRewardItem::MetalShard;
			case 9: return SpecialRewardItem::LightShard;
			case 10: return SpecialRewardItem::SoulShard;
			default: return SpecialRewardItem::FireShard;
		}
	}
	int getRewardCount(SpecialRewardItem type) = win inline, m1 0x6a67c, imac 0x77da0 {
		if (!m_rewardObjects) return 0;

		int count = 0;
		for (int i = 0; i < m_rewardObjects->count(); i++) {
			auto obj = static_cast<GJRewardObject*>(m_rewardObjects->objectAtIndex(i));
			if (obj->m_specialRewardItem == type) count += obj->m_total;
		}

		return count;
	}
	GJRewardObject* getRewardObjectForType(SpecialRewardItem type) = win inline, m1 0x66600, imac 0x73570 {
		if (!m_rewardObjects) {
			auto rewardObjects = cocos2d::CCArray::create();
			CC_SAFE_RETAIN(rewardObjects);
			CC_SAFE_RELEASE(m_rewardObjects);
			m_rewardObjects = rewardObjects;
		}

		for (int i = 0; i < m_rewardObjects->count(); i++) {
			auto obj = static_cast<GJRewardObject*>(m_rewardObjects->objectAtIndex(i));
			if (obj->m_specialRewardItem == type) return obj;
		}

		auto obj = GJRewardObject::create(type, 0, 0);
		m_rewardObjects->addObject(obj);
		return obj;
	}
	bool init(int chestID, int timeRemaining, gd::string) = win 0x1e7670, m1 0x7f070, imac 0x8e180;
	static bool isShardType(SpecialRewardItem type) = win inline, m1 0x664b0, imac 0x73460 {
		return type == SpecialRewardItem::FireShard || type == SpecialRewardItem::IceShard || type == SpecialRewardItem::PoisonShard
			|| type == SpecialRewardItem::ShadowShard || type == SpecialRewardItem::LavaShard || type == SpecialRewardItem::EarthShard
			|| type == SpecialRewardItem::BloodShard || type == SpecialRewardItem::MetalShard || type == SpecialRewardItem::LightShard
			|| type == SpecialRewardItem::SoulShard;
	}
	static gd::string rewardItemToStat(SpecialRewardItem) = win 0x1e78d0, m1 0x664c8, imac 0x73480;

	virtual void encodeWithCoder(DS_Dictionary*) = win 0x1e7b00, m1 0x7f450, imac 0x8e580, ios 0x34f02c;
	virtual bool canEncode() = win inline, m1 0x7f4bc, imac 0x8e5e0, ios 0x34f098 {
		return true;
	}

	int m_chestID;
	int m_timeRemaining;
	GJRewardType m_rewardType;
	cocos2d::CCArray* m_rewardObjects;
	bool m_unk;
}

[[link(android)]]
class GJRewardObject : cocos2d::CCObject {
	// virtual ~GJRewardObject();

	static GJRewardObject* create() = win inline, m1 0x7ed58, imac 0x8de50 {
		auto ret = create(SpecialRewardItem::FireShard, 0, 0); // the first param is meant to be 0
		return ret;
	}
	static GJRewardObject* create(SpecialRewardItem, int, int) = win 0x1e7160, m1 0x67da4, imac 0x74c20;
	static GJRewardObject* createItemUnlock(UnlockType, int) = win 0x1e70f0, m1 0x6b634, imac 0x78d00;

	static GJRewardObject* createWithCoder(DS_Dictionary* dict) = win inline, m1 0x7ede0, imac 0x8def0 {
		auto ret = create();
		ret->dataLoaded(dict);
		return ret;
	}
	void dataLoaded(DS_Dictionary* dict) = win inline, m1 0x7ee90, imac 0x8dfa0 {
		m_specialRewardItem = (SpecialRewardItem)dict->getIntegerForKey("1");
		m_itemID = dict->getIntegerForKey("2");
		m_total = dict->getIntegerForKey("3");
		m_unlockType = (UnlockType)dict->getIntegerForKey("4");
	}
	bool init(SpecialRewardItem specialRewardItem, int total, int itemID) = win inline, m1 0x7edb4, imac 0x8deb0 {
		this->m_specialRewardItem = specialRewardItem;
		this->m_total = total;
		this->m_itemID = itemID;
		return true;
	}
	bool isSpecialType() = win inline, m1 0x7edc4, imac 0x8ded0 {
		auto type = m_specialRewardItem;
		return type == SpecialRewardItem::FireShard || type == SpecialRewardItem::IceShard || type == SpecialRewardItem::PoisonShard
			|| type == SpecialRewardItem::ShadowShard || type == SpecialRewardItem::LavaShard || type == SpecialRewardItem::BonusKey
			|| type == SpecialRewardItem::EarthShard || type == SpecialRewardItem::BloodShard || type == SpecialRewardItem::MetalShard
			|| type == SpecialRewardItem::LightShard || type == SpecialRewardItem::SoulShard;
	}

	virtual void encodeWithCoder(DS_Dictionary*) = win 0x1e71d0, m1 0x7ef00, imac 0x8e000, ios 0x34ec04;
	virtual bool canEncode() = win inline, m1 0x7ef80, imac 0x8e080, ios 0x34ec84 {
		return true;
	}

	SpecialRewardItem m_specialRewardItem;
	UnlockType m_unlockType;
	int m_itemID;
	int m_total;
}

[[link(android)]]
class GJRobotSprite : CCAnimatedSprite {
	// virtual ~GJRobotSprite();
	// GJRobotSprite();

	static GJRobotSprite* create(int) = win 0x294360, m1 0x50e80c, imac 0x5e4f50;

	void hideGlow() = m1 0x50f694, imac 0x5e5f80, ios 0x250244;
	bool init(int, gd::string) = win 0x294410, m1 0x50e9cc, imac 0x5e5100;
	bool init(int) = m1 0x50e93c, imac 0x5e5090;
	void showGlow() = m1 0x50f680, imac 0x5e5f60, ios 0x250230;
	void updateColor01(cocos2d::ccColor3B) = m1 0x50f6a8, imac 0x5e5fa0, ios 0x250258;
	void updateColor02(cocos2d::ccColor3B) = m1 0x50f954, imac 0x5e62e0, ios 0x250500;
	void updateColors() = win 0x294ba0, m1 0x50f6bc, imac 0x5e5fc0;
	void updateFrame(int) = win 0x295150, m1 0x50ef7c, imac 0x5e5720;
	void updateGlowColor(cocos2d::ccColor3B, bool) = m1 0x50f964, imac 0x5e6300, ios 0x250510;

	virtual void setOpacity(unsigned char) = win 0x295050, m1 0x50f9e0, imac 0x5e6380, ios 0x25058c;
	virtual void hideSecondary() = win 0x295740, m1 0x50fac4, imac 0x5e6490, ios 0x250670;

	cocos2d::CCArray* m_unkArray;
	bool m_hasExtra;
	cocos2d::ccColor3B m_color;
	cocos2d::ccColor3B m_secondColor;
	cocos2d::CCArray* m_secondArray;
	cocos2d::CCSprite* m_glowSprite;
	cocos2d::CCSprite* m_extraSprite;
	IconType m_iconType;
	int m_iconRequestID;
	CCSpritePart* m_headSprite;
	CCSpritePart* m_lastSprite;
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

	virtual void determineStartValues() = m1 0x7778, imac 0x43f0;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x8444, imac 0x5340;
	virtual void textChanged(CCTextInputNode*) = m1 0x7fe8, imac 0x4da0;
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = m1 0x7c2c, imac 0x4910;
}

[[link(android)]]
class GJRotationControl : cocos2d::CCLayer {
	// virtual ~GJRotationControl();
	GJRotationControl() {
		m_cursorDifference = cocos2d::CCPointMake(0.0f, 0.0f);
		m_controlPosition = cocos2d::CCPointMake(0.0f, 0.0f);
		m_controlSprite = nullptr;
		m_startingRotation = 0.0f;
		m_currentRotation = 0.0f;
		m_touchID = -1;
		m_delegate = nullptr;
	}

	static GJRotationControl* create() = win inline, m1 0xdca8, imac 0xbcc0, ios 0x3CFA48 {
		auto ret = new GJRotationControl();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	void finishTouch() = win 0x125490, m1 0xdd84, imac 0xbdb0;
	void setAngle(float) = m1 0x49ea4, imac 0x520d0;
	void updateSliderPosition(cocos2d::CCPoint) = m1 0x49f24, imac 0x52150;

	virtual bool init() = win 0x125370, m1 0x49db0, imac 0x51fe0, ios 0x402f10;
	virtual void draw() = win 0x1257d0, m1 0x4a378, imac 0x525e0, ios 0x4032e4;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x125510, m1 0x4a014, imac 0x52250, ios 0x403118;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x125610, m1 0x4a128, imac 0x52370, ios 0x403218;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x1257b0, m1 0x4a264, imac 0x524d0, ios 0x403294;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x6fd20, m1 0x4a35c, imac 0x525a0, ios 0x4032c8;

	cocos2d::CCPoint m_cursorDifference;
	cocos2d::CCPoint m_controlPosition;
	cocos2d::CCSprite* m_controlSprite;
	float m_startingRotation;
	float m_currentRotation;
	int m_touchID;
	GJRotationControlDelegate* m_delegate;
}

[[link(android)]]
class GJRotationControlDelegate {
	virtual void angleChanged(float angle) {}
	virtual void angleChangeBegin() {}
	virtual void angleChangeEnded() {}
}

[[link(android)]]
class GJScaleControl : cocos2d::CCLayer {
	// virtual ~GJScaleControl();
	GJScaleControl() {
		m_sliderX = nullptr;
		m_sliderY = nullptr;
		m_sliderXY = nullptr;
		m_touchID = -1;
		m_valueX = 0.0f;
		m_valueY = 0.0f;
		m_unkSize4 = 0;
		m_changedValueX = 0.0f;
		m_changedValueY = 0.0f;
		m_scale1Lock = false;
		m_scaleButtonType = 0;
		m_delegate = nullptr;
		m_upperBound = 2.0f;
		m_lowerBound = 0.5f;
		m_senderTag = 0;
		m_scaleLockButton = nullptr;
		m_scaleLocked = false;
	}

	static GJScaleControl* create() = win inline, m1 0xde2c, imac 0xbe50, ios 0x3CFB18 {
		auto ret = new GJScaleControl();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	void finishTouch();
	void loadValues(GameObject*, cocos2d::CCArray*, gd::unordered_map<int, GameObjectEditorState>&) = win 0x125d20, m1 0x3abb0, imac 0x3f770;
	void onToggleLockScale(cocos2d::CCObject* sender) = win 0x125c90, m1 0x4a7c4, imac 0x52a60;
	float scaleFromValue(float value) = win inline, m1 0x4a99c, imac 0x52c30 {
		return (m_upperBound - m_lowerBound) * value + m_lowerBound;
	}
	float skewFromValue(float) = m1 0x4a9d8, imac 0x52c70;
	void sliderChanged(cocos2d::CCObject* sender) = win 0x126330, m1 0x4a834, imac 0x52ac0;
	void updateLabelX(float) = win 0x126ab0, m1 0x4a864, imac 0x52b10;
	void updateLabelXY(float) = win 0x126bb0, m1 0x4a934, imac 0x52bd0;
	void updateLabelY(float) = win 0x126b30, m1 0x4a8cc, imac 0x52b70;
	float valueFromScale(float scale) = win inline, m1 0x4a83c, imac 0x52ad0 {
		auto value = (scale - m_lowerBound) / (m_upperBound - m_lowerBound);
		return value < 0 ? 0 : (value > 1 ? 1 : value);
	}
	float valueFromSkew(float) = m1 0x4a9f0, imac 0x52cc0;

	virtual bool init() = win 0x125850, m1 0x4a3e0, imac 0x52650, ios 0x40334c;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x126340, m1 0x4aa18, imac 0x52d00, ios 0x4038e0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x126550, m1 0x4abb4, imac 0x52ef0, ios 0x403a6c;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x126970, m1 0x4affc, imac 0x533c0, ios 0x403dc4;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x6fd20, m1 0x4b124, imac 0x53520, ios 0x403eec;

	Slider* m_sliderX;
	Slider* m_sliderY;
	Slider* m_sliderXY;
	int m_touchID;
	float m_valueX;
	float m_valueY;
	int m_unkSize4;
	float m_changedValueX;
	float m_changedValueY;
	bool m_scale1Lock;
	short m_scaleButtonType;
	cocos2d::CCLabelBMFont* m_scaleXLabel;
	cocos2d::CCLabelBMFont* m_scaleYLabel;
	cocos2d::CCLabelBMFont* m_scaleLabel;
	GJScaleControlDelegate* m_delegate;
	float m_upperBound;
	float m_lowerBound;
	int m_senderTag;
	CCMenuItemSpriteExtra* m_scaleLockButton;
	bool m_scaleLocked;
}

[[link(android)]]
class GJScaleControlDelegate {
	virtual void scaleXChanged(float scaleX, bool lock) {}
	virtual void scaleYChanged(float scaleY, bool lock) {}
	virtual void scaleXYChanged(float scaleX, float scaleY, bool lock) {}
	virtual void scaleChangeBegin() {}
	virtual void scaleChangeEnded() {}
	virtual void updateScaleControl() {}
	virtual void anchorPointMoved(cocos2d::CCPoint newAnchor) {}
}

[[link(android)]]
class GJScoreCell : TableViewCell, FLAlertLayerProtocol {
	// virtual ~GJScoreCell();
	GJScoreCell(char const*, float, float);

	void loadFromScore(GJUserScore*) = win 0xb6010, imac 0x245130, m1 0x1ef8c0, ios 0x109108;
	void onBan(cocos2d::CCObject* sender);
	void onCheck(cocos2d::CCObject* sender);
	void onMoreLevels(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender) = win 0xb70f0, imac 0x2513b0, m1 0x1facac;
	TodoReturn updateBGColor(int) = ios 0x109088;

	virtual bool init() = win 0xb2210, m1 0x1faca0, imac 0x251390, ios 0x1126c8;
	virtual void draw() = m1 0x1faf40, imac 0x251650, ios 0x11286c;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xb7270, m1 0x1fae78, imac 0x251590, ios 0x112814;

	GJUserScore* m_score;
}

[[link(android)]]
class GJSearchObject : cocos2d::CCNode {
	// virtual ~GJSearchObject();

	static GJSearchObject* create(SearchType searchType, gd::string searchQuery, gd::string difficulty, gd::string length, int page, bool star, bool uncompleted, bool featured, int songID, bool original, bool twoPlayer, bool customSong, bool songFilter, bool noStar, bool coins, bool epic, bool legendary, bool mythic, bool onlyCompleted, int demonFilter, int folder, int searchMode) = win 0x16c030, m1 0x4b59c8, imac 0x567a60, ios 0xb1b88;
	static GJSearchObject* create(SearchType searchType, gd::string searchQuery) = win 0x16bf00, m1 0x4b5e00, imac 0x567f10, ios 0xb1ee4;
	static GJSearchObject* create(SearchType searchType) = win 0x16be20, m1 0x4b5d94, imac 0x567ea0, ios 0xb1dd4;
	static GJSearchObject* createFromKey(char const* key) = win 0x16b720, imac 0x53fd90, m1 0x491f3c;

	char const* getKey() = win 0x16c370, m1 0x498c5c, imac 0x547b90;
	char const* getNextPageKey();
	GJSearchObject* getNextPageObject() = imac 0x5687d0, m1 0x4b651c;
	GJSearchObject* getPageObject(int page) = win 0x16c4c0, imac 0x5687f0, m1 0x4b6528;
	GJSearchObject* getPrevPageObject() = imac 0x568bc0;
	char const* getSearchKey(SearchType searchType, gd::string searchQuery, gd::string difficulty, gd::string length, int page, bool star, bool uncompleted, bool featured, int songID, bool original, bool twoPlayer, bool customSong, bool songFilter, bool noStar, bool coins, bool epic, bool legendary, bool mythic, bool onlyCompleted, int demonFilter, int folder, int searchMode) = win 0x16c630;
	bool init(SearchType searchType, gd::string searchQuery, gd::string difficulty, gd::string length, int page, bool star, bool uncompleted, bool featured, int songID, bool original, bool twoPlayer, bool customSong, bool songFilter, bool noStar, bool coins, bool epic, bool legendary, bool mythic, bool onlyCompleted, int demonFilter, int folder, int searchMode);
	bool isLevelSearchObject() = win 0x16c910, m1 0x4b684c, imac 0x568be0, ios 0xb25b8;

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

[[link(android),  depends(GJValueTween)]]
class GJShaderState {
	TodoReturn reset();
	TodoReturn stopTweenAction(int);
	TodoReturn timesyncShaderAction(int);
	TodoReturn timesyncShaderActions();
	TodoReturn tweenValue(float, float, int, float, int, float);
	TodoReturn updateTweenAction(float, int);
	TodoReturn updateTweenActions(float);

	gd::unordered_map<int, GJValueTween> m_someIntToValueTweenMap;
	gd::unordered_map<int, double> m_someIntToDoubleMap;
	double m_time;
	double m_prevTime;
	double m_startTime;
	float m_textureScaleX;
	float m_textureScaleY;
	cocos2d::ccColor3B m_blurRefColor;
	float m_blurIntensity;
	int m_blurUnk60;
	bool m_blurOnlyEmpty;
	float m_shockWaveUnk68;
	float m_shockWaveUnk6c;
	float m_shockWaveUnk70;
	float m_shockWaveUnk74;
	float m_shockWaveUnk78;
	float m_shockWaveUnk7c;
	float m_shockWaveUnk80;
	float m_shockWaveUnk84;
	float m_shockWaveUnk88;
	bool m_shockWaveInvert;
	float m_shockWaveUnk90;
	float m_shockWaveUnk94;
	int m_shockWaveUnk98;
	bool m_shockWaveUnk9c;
	bool m_shockWaveCenterMoving;
	bool m_shockWaveUnk9e;
	float m_shockWaveUnka0;
	cocos2d::CCPoint m_shockWaveUnka4;
	bool m_shockWaveCenterDirty;
	cocos2d::CCPoint m_shockWaveCenter;
	double m_shockLineUnkb8;
	float m_shockLineUnkc0;
	float m_shockLineUnkc4;
	float m_shockLineUnkc8;
	bool m_shockLineAxis;
	bool m_shockLineDirection;
	bool m_shockLineDual;
	bool m_shockLineUnkcf;
	float m_shockLineUnkd0;
	float m_shockLineUnkd4;
	float m_shockLineUnkd8;
	float m_shockLineUnkdc;
	float m_shockLineUnke0;
	float m_shockLineUnke4;
	int m_shockLineUnke8;
	bool m_shockLineUnkec;
	bool m_shockLineCenterMoving;
	bool m_shockLineUnkee;
	float m_shockLineUnkf0;
	cocos2d::CCPoint m_shockLineUnkf4;
	bool m_shockLineCenterDirty;
	cocos2d::CCPoint m_shockLineCenter;
	float m_glitchUnk108;
	float m_glitchUnk10c;
	float m_glitchUnk110;
	float m_glitchUnk114;
	float m_glitchUnk118;
	float m_glitchUnk11c;
	bool m_glitchUnk120;
	float m_chromaticUnk124;
	float m_chromaticUnk128;
	bool m_chromaticUnk12c;
	float m_cGUnk130;
	float m_cGUnk134;
	float m_cGUnk138;
	float m_cGUnk13c;
	float m_cGUnk140;
	float m_cGUnk144;
	float m_cGUnk148;
	float m_cGUnk14c;
	bool m_cGUnk150;
	bool m_cGUnk151;
	bool m_cGUnk152;
	bool m_cGUnk153;
	float m_pixelateTargetX;
	float m_pixelateTargetY;
	bool m_pixelateSnapGrid;
	bool m_pixelatePixelating;
	bool m_pixelateRelative;
	bool m_pixelateHardEdges;
	float m_lensCircleUnk160;
	float m_lensCircleUnk164;
	float m_lensCircleStrength;
	int m_lensCircleUnk16c;
	int m_lensCircleUnk170;
	bool m_lensCircleUnk174;
	bool m_lensCircleAdditive;
	char m_lensCircleTintR;
	char m_lensCircleTintG;
	char m_lensCircleTintB;
	cocos2d::CCPoint m_lensCircleUnk17c;
	cocos2d::CCPoint m_lensCircleUnk184;
	float m_radialBlurUnk18c;
	float m_radialBlurUnk190;
	bool m_radialBlurUnk194;
	int m_radialBlurUnk198;
	cocos2d::CCPoint m_radialBlurUnk19c;
	cocos2d::CCPoint m_radialBlurUnk1a4;
	float m_motionBlurUnk1ac;
	float m_motionBlurUnk1b0;
	float m_motionBlurSpeedX;
	float m_motionBlurSpeedY;
	float m_motionBlurUnk1bc;
	float m_motionBlurUnk1c0;
	int m_motionBlurUnk1c4;
	int m_motionBlurUnk1c8;
	bool m_motionBlurDual;
	bool m_motionBlurUnk1cd;
	float m_bulgeValue;
	bool m_bulgeUnk1d4;
	int m_bulgeUnk1d8;
	float m_bulgeRadius;
	cocos2d::CCPoint m_bulgeUnk1e0;
	cocos2d::CCPoint m_bulgeUnk1e8;
	float m_pinchUnk1f0;
	float m_pinchUnk1f4;
	bool m_pinchUnk1f8;
	bool m_pinchUnk1f9;
	int m_pinchUnk1fc;
	int m_pinchUnk200;
	cocos2d::CCPoint m_pinchUnk204;
	cocos2d::CCPoint m_pinchUnk20c;
	bool m_pinchUnk214;
	float m_pinchUnk218;
	cocos2d::CCPoint m_pinchUnk21c;
	float m_grayscaleValue;
	bool m_grayscaleUseLum;
	int m_grayscaleUnk22c;
	cocos2d::ccColor3B m_grayscaleTint;
	float m_sepiaValue;
	float m_invertColorEditRGB;
	float m_invertColorR;
	float m_invertColorG;
	float m_invertColorB;
	bool m_invertColorClampRGB;
	float m_hueShiftDegrees;
	float m_colorChangeCR;
	float m_colorChangeCG;
	float m_colorChangeCB;
	float m_colorChangeBR;
	float m_colorChangeBG;
	float m_colorChangeBB;
	float m_splitUnk268;
	float m_splitUnk26c;
	bool m_splitUnk260;
	int m_blurRefChannel;
	int m_somethingZLayerUnk278;
	bool m_zLayerDirty;
	bool m_somethingZLayerUnk27d;
	bool m_usesShaders;
}

[[link(android)]]
class GJShopLayer : cocos2d::CCLayer, GJPurchaseDelegate, DialogDelegate, RewardedVideoDelegate {
	// virtual ~GJShopLayer();
	GJShopLayer() {
		m_closing = false;
		m_currencyLabel = nullptr;
		m_shopItems = nullptr;
		m_type = ShopType::Normal;
		m_sheetName = "";
		m_unkNode1 = nullptr;
		m_unkNode2 = nullptr;
		m_videoPlaying = false;
		m_unkBool = false;
		m_shopKeeper = nullptr;
		m_zolgurothDialogIndex = 0;
		m_affordDialogIndex = 0;
	}

	static GJShopLayer* create(ShopType type) = win inline, m1 0x2b1fb0, imac 0x3218f0 {
		auto ret = new GJShopLayer();
		if (ret->init(type)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	void exitVideoAdItems() = m1 0x2b3eb4, imac 0x3238a0;
	bool init(ShopType) = win 0x297400, m1 0x2b2094, imac 0x321a00;
	void onBack(cocos2d::CCObject* sender) = win 0x29a840, m1 0x2b39b0, imac 0x3233c0;
	void onCommunityCredits(cocos2d::CCObject* sender) = win 0x299680, m1 0x2b3938, imac 0x323340;
	void onPlushies(cocos2d::CCObject* sender) = m1 0x2b3934, imac 0x323330;
	void onSelectItem(cocos2d::CCObject* sender) = win 0x299850, m1 0x2b3b6c, imac 0x323570;
	void onVideoAd(cocos2d::CCObject* sender) = m1 0x2b3964, imac 0x323370;
	static cocos2d::CCScene* scene(ShopType) = win 0x297280, m1 0x2b1eac, imac 0x3217b0;
	void showCantAffordMessage(GJStoreItem*) = win 0x2999d0, m1 0x2b4068, imac 0x323a60;
	void showReactMessage() = win 0x29aa70, m1 0x2b4bc0, imac 0x3246f0;
	void updateCurrencyCounter() = win 0x299820, m1 0x2b3fd8, imac 0x3239c0;

	virtual void onExit() = win 0x299400, m1 0x2b3cb0, imac 0x323680, ios 0x156ab8;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x29c3c0, m1 0x2b5e94, imac 0x325d60, ios 0x1583c0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x1586b8 {}
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x1586c0 {}
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x6fd20, m1 0x2b6290, imac 0x326190, ios 0x1586c8;
	virtual void registerWithTouchDispatcher() = win 0x41750, m1 0x2b62ac, imac 0x3261d0, ios 0x1586e4;
	virtual void keyBackClicked() = win 0x29aa60, m1 0x2b4bb4, imac 0x3246c0, ios 0x1575d8;
	virtual void didPurchaseItem(GJStoreItem*) = win 0x29a0a0, m1 0x2b4548, imac 0x323fc0, ios 0x1570d8;
	virtual void rewardedVideoFinished() = win 0x2997c0, m1 0x2b3f7c, imac 0x323970, ios 0x156c54;
	virtual void dialogClosed(DialogLayer*) = win 0x29c0c0, m1 0x2b5cb4, ios 0x158204, imac 0x325ba0;

	bool m_closing;
	CCCounterLabel* m_currencyLabel;
	cocos2d::CCDictionary* m_shopItems;
	ShopType m_type;
	gd::string m_sheetName;
	cocos2d::CCNode* m_unkNode1;
	cocos2d::CCNode* m_unkNode2;
	bool m_videoPlaying;
	bool m_unkBool;
	AnimatedShopKeeper* m_shopKeeper;
	int m_zolgurothDialogIndex;
	int m_affordDialogIndex;
}

[[link(android), depends(SmartPrefabResult)]]
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

	virtual bool init() = imac 0x433380, ios 0x94a8;
	virtual void visit() = m1 0x3a5ef8, imac 0x433390, ios 0x94ac;
}

[[link(android)]]
class GJSmartPrefab : cocos2d::CCObject {
	// virtual ~GJSmartPrefab();

	static GJSmartPrefab* create();

	TodoReturn createWithCoder(DS_Dictionary*) = imac 0x432120;
	void dataLoaded(DS_Dictionary*);
	bool init();

	virtual void encodeWithCoder(DS_Dictionary*) = win 0x2a3380, m1 0x3a4d64, imac 0x432260, ios 0x8640;
	virtual bool canEncode() = m1 0x3a4c04, imac 0x432110, ios 0x858c;
}

[[link(android), depends(SmartPrefabResult)]]
class GJSmartTemplate : cocos2d::CCObject {
	// virtual ~GJSmartTemplate();

	static GJSmartTemplate* create() = win 0x29e3b0;

	TodoReturn applyTransformationsForType(SmartBlockType, cocos2d::CCSprite*);
	TodoReturn createWithCoder(DS_Dictionary*) = imac 0x431b60;
	void dataLoaded(DS_Dictionary*) = win 0x2a2f50, imac 0x431c10;
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
	TodoReturn getSimplifiedKey(gd::string) = imac 0x42c310;
	TodoReturn getSimplifiedType(SmartBlockType, bool&);
	TodoReturn getTemplateState(gd::vector<SmartPrefabResult>&);
	TodoReturn getTotalChanceForPrefab(gd::string);
	TodoReturn getVerySimplifiedKey(gd::string) = imac 0x42cc70;
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
	TodoReturn saveRemapToDict(gd::string, gd::string, cocos2d::CCDictionary*) = imac 0x42c940;
	TodoReturn scanForPrefab(gd::string);
	TodoReturn shouldDiscardObject(SmartBlockType, GJSmartDirection);
	TodoReturn smartObjectToType(SmartGameObject*, cocos2d::CCPoint);
	TodoReturn smartTypeToObjectKey(SmartBlockType);

	virtual void encodeWithCoder(DS_Dictionary*) = win 0x2a3220, m1 0x3a49f8, imac 0x431f60, ios 0x846c;
	virtual bool canEncode() = m1 0x3a4604, imac 0x431b50, ios 0x81fc;
}

[[link(android)]]
class GJSongBrowser : GJDropDownLayer, FLAlertLayerProtocol, TableViewCellDelegate {
	// virtual ~GJSongBrowser();

	static GJSongBrowser* create() = win 0x2a4b80, imac 0x6095f0, m1 0x52f558;

	void loadPage(int) = win 0x2a5180;
	void onDeleteAll(cocos2d::CCObject* sender) = win 0x2a5430;
	void onNextPage(cocos2d::CCObject* sender) = win 0x2a5410;
	void onPrevPage(cocos2d::CCObject* sender) = win 0x2a5420;
	void setupPageInfo(int, int, int);
	TodoReturn setupSongBrowser(cocos2d::CCArray*);

	virtual bool init() = m1 0x52f844, win 0x2a4d00, imac 0x609a00, ios 0x2754c4;
	virtual void customSetup() = m1 0x52faec, win 0x2a4e00, imac 0x609cd0, ios 0x2756a0;
	virtual void exitLayer(cocos2d::CCObject*) = m1 0x52fabc, imac 0x609ca0, ios 0x275670;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2a5540, m1 0x530014, imac 0x60a260, ios 0x275bd4;
	virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = m1 0x5300d0, imac 0x60a340, ios 0x275c90;
	virtual int getSelectedCellIdx() = m1 0x530130, imac 0x60a3a0, ios 0x275cf0;

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

	static GJSpecialColorSelect* create(int, GJSpecialColorSelectDelegate*, ColorSelectType) = win 0x2a5740, m1 0x551bcc, imac 0x631150;

	ButtonSprite* getButtonByTag(int) = m1 0x553a84, imac 0x633ab0;
	void highlightSelected(ButtonSprite*) = m1 0x553b14, imac 0x633b30;
	bool init(int, GJSpecialColorSelectDelegate*, ColorSelectType) = win 0x2a5850, m1 0x551cec, imac 0x6312c0;
	void onClose(cocos2d::CCObject* sender) = win 0x2a63f0, m1 0x553924, imac 0x633950;
	void onSelectColor(cocos2d::CCObject* sender) = win 0x2a6310, m1 0x5539a8, imac 0x6339d0;
	static const char* textForColorIdx(int) = win 0x2a6490, m1 0x553980, imac 0x6339a0;

	virtual void keyBackClicked() = win 0x2a6440, m1 0x553bc8, imac 0x633bf0, ios 0x1bc45c;

	GJSpecialColorSelectDelegate* m_delegate;
	int m_colorID;
	cocos2d::CCArray* m_buttonSprites;
}

[[link(android)]]
class GJSpecialColorSelectDelegate {
	virtual void colorSelectClosed(GJSpecialColorSelect*, int);
}

[[link(android)]]
class GJSpiderSprite : GJRobotSprite {
	// virtual ~GJSpiderSprite();

	static GJSpiderSprite* create(int) = win 0x2957b0, m1 0x50fc60, imac 0x5e6690;

	bool init(int) = m1 0x50fd94, imac 0x5e67e0;
}

[[link(android)]]
class GJSpriteColor {
	// GJSpriteColor();

	int getColorMode();

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
	GJStoreItem() {
		m_index = 0;
		m_typeID = 0;
		m_unlockType = 0;
		m_price = 0;
		m_shopType = ShopType::Normal;
	}

	static GJStoreItem* create(int index, int typeID, int unlockType, int price, ShopType shopType) = win inline, m1 0x5a628, imac 0x653b0 {
		auto ret = new GJStoreItem();
		if (ret->init(index, typeID, unlockType, price, shopType)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	gd::string getCurrencyKey() = win inline, m1 0x5a9f4, imac 0x65770 {
		return m_shopType == ShopType::Diamond ? "29" : "14";
	}
	bool init(int index, int typeID, int unlockType, int price, ShopType shopType) = win inline, m1 0x7fc10, imac 0x8ed20 {
		if (!CCNode::init()) return false;
		m_index = index;
		m_typeID = typeID;
		m_unlockType = unlockType;
		m_price = price;
		m_shopType = shopType;
		return true;
	}

	geode::SeedValueRSV m_index;
	geode::SeedValueRSV m_typeID;
	geode::SeedValueRSV m_unlockType;
	geode::SeedValueRSV m_price;
	ShopType m_shopType;
}

[[link(android)]]
class GJTransformControl : cocos2d::CCLayer {
	// virtual ~GJTransformControl();

	static GJTransformControl* create() = ios 0x3CFC2C;

	TodoReturn applyRotation(float);
	TodoReturn calculateRotationOffset();
	void finishTouch();
	void loadFromState(GJTransformState&);
	TodoReturn loadValues(GameObject*, cocos2d::CCArray*, gd::unordered_map<int, GameObjectEditorState>&);
	TodoReturn logCurrentZeroPos();
	void onToggleLockScale(cocos2d::CCObject* sender) = win 0x127310;
	void refreshControl() = win 0x127180;
	void saveToState(GJTransformState&);
	void scaleButtons(float) = win 0x1273a0;
	cocos2d::CCSprite* spriteByTag(int tag) {
		return static_cast<cocos2d::CCSprite*>(m_warpSprites->objectAtIndex(tag - 1));
	}
	TodoReturn updateAnchorSprite(cocos2d::CCPoint);
	void updateButtons(bool, bool) = win 0x127460, imac 0x4b540;
	TodoReturn updateMinMaxPositions();

	virtual bool init() = win 0x126c30, m1 0x4b358, imac 0x53870, ios 0x403fa8;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x1282c0, m1 0x4b7dc, imac 0x53d20, ios 0x404348;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x128490, m1 0x4bbd0, imac 0x541f0, ios 0x4044ec;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x1289f0, m1 0x4c0e8, imac 0x547a0, ios 0x4049f8;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x6fd20, m1 0x4c2c0, imac 0x549b0, ios 0x404bd0;

	// 2lazy
	cocos2d::CCNode* m_mainNodeParent;
	cocos2d::CCNode* m_mainNode;
	cocos2d::CCArray* m_unk1;
	int m_touchID;
	short m_transformButtonType;
	GJTransformControlDelegate* m_delegate;
	cocos2d::CCPoint m_cursorDifference;
	cocos2d::CCPoint m_touchStart;
	cocos2d::CCPoint m_unk3;
	cocos2d::CCPoint m_unk4;
	cocos2d::CCPoint m_unk5;
	cocos2d::CCPoint m_unk6;
	cocos2d::CCPoint m_unk7;
	cocos2d::CCArray* m_warpSprites;
	cocos2d::CCPoint m_rotatePosition;
	CCMenuItemSpriteExtra* m_warpLockButton;
	float m_scaleX;
	float m_scaleY;
	bool m_warpLocked;
	float m_unk10;
	float m_unk11;
	float m_unk12;
	float m_buttonScale;
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

	static GJUINode* create(UIButtonConfig&) = imac 0x4d21c0;

	TodoReturn activeRangeTouchTest(cocos2d::CCPoint);
	TodoReturn activeTouchTest(cocos2d::CCPoint);
	TodoReturn getButtonScale();
	TodoReturn getOpacity();
	TodoReturn highlightButton(int);
	bool init(UIButtonConfig&);
	void loadFromConfig(UIButtonConfig&);
	TodoReturn resetState();
	TodoReturn saveToConfig(UIButtonConfig&);
	void setOpacity(unsigned char);
	TodoReturn toggleHighlight(int, bool);
	void toggleModeB(bool);
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

	virtual void draw() = m1 0x4332cc, imac 0x4d5370, ios 0x516e8;
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

	void loadFromScore(GJUserScore*) = win 0xb8300, ios 0x10ae98, imac 0x2470d0, m1 0x1f1898;
	void onCancelFriendRequest(cocos2d::CCObject* sender);
	void onRemoveFriend(cocos2d::CCObject* sender);
	void onSendMessage(cocos2d::CCObject* sender);
	void onUnblockUser(cocos2d::CCObject* sender) = ios 0x112c38;
	void onViewFriendRequest(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int) = ios 0x10ae18;

	virtual bool init() = win 0xb82e0, m1 0x1fb578, imac 0x251fd0, ios 0x112bec;
	virtual void draw() = m1 0x1fbd64, imac 0x2527a0, ios 0x113080;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xb9200, m1 0x1fbe10, imac 0x252870, ios 0x11312c;
	virtual void uploadActionFinished(int, int) = win 0xb95c0, m1 0x1fc05c, imac 0x252b20, ios 0x113334;
	virtual void uploadActionFailed(int, int) = win 0xb9770, m1 0x1fc264, imac 0x252d10, ios 0x11345c;
	virtual void onClosePopup(UploadActionPopup*) = win 0xb9840, m1 0x1fc3cc, imac 0x252e80, ios 0x1134f4;
}

[[link(android)]]
class GJUserMessage : cocos2d::CCNode {
	// virtual ~GJUserMessage();

	static GJUserMessage* create() = win 0x16b5f0, m1 0x4b57ac, imac 0x567830, ios 0xb1a80;
	static GJUserMessage* create(cocos2d::CCDictionary*) = win 0x16aab0, m1 0x4a4340, imac 0x555020, ios 0xa6d3c;

	virtual bool init() = win 0x767c0, m1 0x4b5848, imac 0x5678d0, ios 0xb1b10;

	int m_messageID;
	int m_accountID;
	int m_userID;
	gd::string m_title;
	gd::string m_content;
	gd::string m_username;
	gd::string m_uploadDate;
	bool m_read;
	bool m_outgoing;
	bool m_toggled;
}

[[link(android)]]
class GJUserScore : cocos2d::CCNode {
	// virtual ~GJUserScore();

	static GJUserScore* create() = win inline, imac 0x567170, m1 0x4b5174 {
		auto ret = new GJUserScore();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}

		delete ret;
		return nullptr;
	}
	static GJUserScore* create(cocos2d::CCDictionary*) = win 0x1688d0, imac 0x53a5f0, m1 0x48ce74;
	GJUserScore() = win 0x13d890;

	bool isCurrentUser() = win 0x16a2c0, m1 0x4b52d0, imac 0x567360;
	TodoReturn mergeWithScore(GJUserScore*);

	virtual bool init() = win 0x16a270, m1 0x4b525c, imac 0x5672d0, ios 0xb1818;

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
	gd::string m_unkString;
	int m_unkInt;
	int m_unkInt2;
	void* m_unkSizeT;
	gd::string m_demonInfo;
	gd::string m_starsInfo;
	gd::string m_platformerInfo;
}

[[link(android)]]
class GJValueTween {
	void step(float delta) = win 0x1f61c0;

	float m_fromValue;
	float m_toValue;
	float m_duration;
	float m_deltaTime;
	float m_currentValue;
	int m_easingType;
	float m_easingRate;
	bool m_finished;
	bool m_disabled;
	PAD = win 0xa;
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

	static GJWriteMessagePopup* create(int, int) = imac 0x2a3700;

	TodoReturn closeMessagePopup(bool);
	bool init(int, int);
	void onClearBody(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onSend(cocos2d::CCObject* sender);
	TodoReturn updateBody(gd::string);
	TodoReturn updateCharCountLabel(int);
	TodoReturn updateSubject(gd::string);
	TodoReturn updateText(gd::string, int);

	virtual void registerWithTouchDispatcher() = m1 0x247474, imac 0x2a5ab0, ios 0x2edc48;
	virtual void keyBackClicked() = win 0x288550, m1 0x247460, imac 0x2a5a80, ios 0x2edc34;
	virtual void textInputOpened(CCTextInputNode*) = ios 0x2edc9c {}
	virtual void textInputClosed(CCTextInputNode*) = m1 0x2474ac, imac 0x2a5af0, ios 0x2edc80;
	virtual void textChanged(CCTextInputNode*) = win 0x288560, m1 0x2474d0, imac 0x2a5b50, ios 0x2edca4;
	virtual void uploadMessageFinished(int) = win 0x288b40, m1 0x247adc, imac 0x2a6150, ios 0x2ee0e0;
	virtual void uploadMessageFailed(int) = win 0x288bc0, m1 0x247bb4, imac 0x2a6210, ios 0x2ee170;
	virtual void onClosePopup(UploadActionPopup*) = win 0x288c70, m1 0x247cf4, imac 0x2a6340, ios 0x2ee1f4;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x288d10, m1 0x247e78, imac 0x2a6490, ios 0x2ee270;
	virtual void textInputShouldOffset(CCTextInputNode*, float) = m1 0x247f98, imac 0x2a6570, ios 0x2ee304;
	virtual void textInputReturn(CCTextInputNode*) = m1 0x248068, imac 0x2a6630, ios 0x2ee370;
}

[[link(android)]]
class GManager : cocos2d::CCNode {
	// virtual ~GManager();

	TodoReturn getCompressedSaveString();
	TodoReturn getSaveString();
	TodoReturn load();
	void loadDataFromFile(gd::string const&) = win 0x69610, imac 0x4b64e0;
	void loadFromCompressedString(gd::string&);
	void loadFromString(gd::string&);
	void save() = win 0x69520, imac 0x4b61b0, m1 0x4181c4;
	TodoReturn saveData(DS_Dictionary*, gd::string);
	void saveGMTo(gd::string) = m1 0x4182bc, imac 0x4b62b0;
	TodoReturn tryLoadData(DS_Dictionary*, gd::string const&);
	inline GManager() {}

	virtual bool init() = win 0x69340, m1 0x417f4c, imac 0x4b5f20, ios 0x259f50;
	virtual void setup() = win 0x69350, m1 0x417f5c, imac 0x4b5f40, ios 0x259f60;
	virtual void encodeDataTo(DS_Dictionary*) = m1 0x4184f4, imac 0x4b64d0, ios 0x25a394;
	virtual void dataLoaded(DS_Dictionary*) = m1 0x418b10, imac 0x4b6b50, ios 0x25a7d8;
	virtual void firstLoad() = m1 0x418b14, imac 0x4b6b60, ios 0x25a7dc;

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

	static GooglePlayManager* sharedState() = ios 0x4819c;

	void googlePlaySignedIn();

	virtual bool init() = m1 0x3e8524, imac 0x481fd0, ios 0x481fc;
}

[[link(android)]]
class GradientTriggerObject : EffectGameObject {
	// virtual ~GradientTriggerObject();

	static GradientTriggerObject* create();

	virtual bool init() = m1 0x15a214, imac 0x196bd0, ios 0x383b58;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x15b624, imac 0x198500, ios 0x3840f0;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x15a268, imac 0x196c30, ios 0x383bac;
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

	static GravityEffectSprite* create();

	TodoReturn updateSpritesColor(cocos2d::ccColor3B);

	virtual bool init() = m1 0xab340, imac 0xbfda0, ios 0x12518c;
	virtual void draw() = m1 0xab564, imac 0xc0000, ios 0x1253b0;
}

[[link(android), depends(KeyframeObject)]]
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

	PAD = win 0x1b8; // there may be a pointer in there somewhere since it changed from 0x1b4
	gd::vector<KeyframeObject> m_unkVecKeyframeObject;
	PAD = win 0x8;
	GameObject* m_gameObject;
	PAD = win 0x8;
	gd::vector<int> m_unkVecInt;
	PAD = win 0x8;
}

[[link(android)]]
class HardStreak : cocos2d::CCDrawNode {
	// virtual ~HardStreak();

	static HardStreak* create() = win 0x2a6750;

	void addPoint(cocos2d::CCPoint p0) = win 0x2a7200, imac 0x9d260, m1 0x8d3d4;
	TodoReturn clearAboveXPos(float);
	TodoReturn clearBehindXPos(float);
	HardStreak* createDuplicate() = win inline {
		auto ret = HardStreak::create();
		ret->setBlendFunc(this->getBlendFunc());
		ret->m_currentPoint = m_currentPoint;
		ret->m_isSolid = m_isSolid;
		ret->m_waveSize = m_waveSize;
		ret->m_isSolid = m_isSolid;
		ret->m_isFlipped = m_isFlipped;
		ret->m_pulseSize = m_pulseSize;
		ret->setOpacity(this->getOpacity());
		ret->setColor(this->getColor());

		CCObject* obj;
		CCARRAY_FOREACH(m_pointArray, obj){
			auto nodePoint = static_cast<PointNode*>(obj);
			ret->addPoint(nodePoint->m_point);
		}

		return ret;
	}
	void firstSetup();
	TodoReturn normalizeAngle(double);
	TodoReturn quadCornerOffset(cocos2d::CCPoint, cocos2d::CCPoint, float);
	void reset() = win inline, imac 0x9d240, m1 0x8d3b0 {
		this->clear();
		m_pointArray->removeAllObjects();
	}
	void resumeStroke() = m1 0x8d368, imac 0x9d1e0;
	TodoReturn scheduleAutoUpdate();
	void stopStroke() = win 0x2a68c0, imac 0x9d200, m1 0x8d374;
	callback void updateStroke(float) = win 0x2a6900, imac 0x9c970, m1 0x8cc2c;

	virtual bool init() = m1 0x8cac0, imac 0x9c7c0, ios 0x64228;

	cocos2d::CCArray* m_pointArray;
	cocos2d::CCPoint m_currentPoint;
	float m_waveSize;
	float m_pulseSize; // win = 0x5c (0x168)
	bool m_isSolid;
	bool m_isFlipped;
	bool m_drawStreak;
}

[[link(android)]]
class HSVLiveOverlay : FLAlertLayer, HSVWidgetDelegate {
	// virtual ~HSVLiveOverlay();
	HSVLiveOverlay() {
		m_object = nullptr;
		m_objects = nullptr;
		m_controls = nullptr;
		m_unkArray = nullptr;
		m_delegate = nullptr;
		m_activeTab = -1;
		m_widget = nullptr;
		m_unkBool1 = false;
		m_unkBool2 = false;
		m_unkBool3 = false;
	}

	static HSVLiveOverlay* create(GameObject* object, cocos2d::CCArray* objects) = win inline, m1 0x20d8cc, imac 0x2668a0 {
		auto ret = new HSVLiveOverlay();
		if (ret->init(object, objects)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	void closeColorSelect(cocos2d::CCObject* sender) = win 0x2a7a60, m1 0x20ddf0, imac 0x266e20;
	void createHSVWidget(int) = win 0x2a7ae0, m1 0x20df7c, imac 0x266fa0;
	void determineStartValues() = win 0x2a7860, m1 0x20de50, imac 0x266e70;
	bool init(GameObject*, cocos2d::CCArray*) = win 0x2a73c0, m1 0x20da00, imac 0x266a20;
	void onSelectTab(cocos2d::CCObject* sender) = win 0x2a7ab0, m1 0x20df30, imac 0x266f60;
	void toggleControls(bool) = m1 0x20e1e0, imac 0x267230;

	virtual void keyBackClicked() = win 0x2a7c80, m1 0x20e0dc, imac 0x267120, ios 0x1ab9cc;
	virtual void show() = win 0x8a220, m1 0x20e194, imac 0x2671d0, ios 0x1ab9e0;
	virtual void hsvChanged(ConfigureHSVWidget*) = win 0x2a7cd0, m1 0x20e248, imac 0x2672a0, ios 0x1aba2c;

	GameObject* m_object;
	cocos2d::CCArray* m_objects;
	cocos2d::CCArray* m_controls;
	cocos2d::CCArray* m_unkArray;
	ColorSelectDelegate* m_delegate;
	int m_activeTab;
	ConfigureHSVWidget* m_widget;
	bool m_unkBool1;
	bool m_unkBool2;
	bool m_unkBool3;
}

[[link(android)]]
class HSVWidgetDelegate {
	virtual void hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue) {}
	virtual void hsvChanged(ConfigureHSVWidget*) {}
}

[[link(android)]]
class HSVWidgetPopup : FLAlertLayer {
	// virtual ~HSVWidgetPopup();

	static HSVWidgetPopup* create(cocos2d::ccHSVValue, HSVWidgetDelegate*, gd::string) = win 0x94c00, m1 0x3abab4, imac 0x439140;

	bool init(cocos2d::ccHSVValue, HSVWidgetDelegate*, gd::string) = win 0x94d20, m1 0x3abc74, imac 0x439340;
	void onClose(cocos2d::CCObject* sender) = win 0x95050, m1 0x3abfa0, imac 0x4396b0;

	virtual void keyBackClicked() = win 0x95130, m1 0x3ac170, imac 0x4398a0, ios 0x100998;

	ConfigureHSVWidget* m_widget;
	HSVWidgetDelegate* m_delegate;
}

[[link(android)]]
class InfoAlertButton : CCMenuItemSpriteExtra {
	// virtual ~InfoAlertButton();

	static InfoAlertButton* create(gd::string title, gd::string desc, float spriteScale) = win 0x2a7e50, m1 0x4c9214, imac 0x57cca0;

	bool init(gd::string title, gd::string desc, float spriteScale) = m1 0x4c94b0, imac 0x57cf20;

	virtual void activate() = win 0x2a8050, m1 0x4c9554, imac 0x57cfc0, ios 0x1770f8;

	gd::string m_title;
	gd::string m_description;
	float m_textScale;
	bool m_scroll;
}

[[link(android)]]
class InfoLayer : FLAlertLayer, LevelCommentDelegate, CommentUploadDelegate, FLAlertLayerProtocol {
	// virtual ~InfoLayer();

	static InfoLayer* create(GJGameLevel*, GJUserScore*, GJLevelList*) = win 0x2a82d0, imac 0x7ba500, m1 0x6c0924, ios 0x35e1e0;

	TodoReturn confirmReport(cocos2d::CCObject*) = win 0x2aa850, imac 0x7bd0d0, m1 0x6c3034;
	int getAccountID();
	int getID() {
		if(m_score) return m_score->m_userID;
		if(m_levelList) return - m_levelList->m_listID;
		if(m_level) return m_level->m_levelID;
		return 0;
	}
	int getRealID();
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint) = win 0x2aa3b0;
	bool init(GJGameLevel*, GJUserScore*, GJLevelList*) = win 0x2a8470, m1 0x6C0A74, imac 0x7BA6B0, ios 0x35e2e4;
	bool isCorrect(char const*);
	void loadPage(int, bool) = win 0x2abd50, imac 0x7bd7a0, m1 0x6c3704;
	void onClose(cocos2d::CCObject* sender) = win 0x2abb90, imac 0x7bd3a0, m1 0x6c3314;
	void onComment(cocos2d::CCObject* sender) = win 0x2aaff0, imac 0x7bcc90, m1 0x6c2c44;
	void onCopyLevelID(cocos2d::CCObject* sender) = win 0x2aac70, imac 0x7be480;
	void onGetComments(cocos2d::CCObject* sender) = imac 0x7bd790, m1 0x6c36f8;
	void onLevelInfo(cocos2d::CCObject* sender) = win 0x2ab5b0, imac 0x7bdcf0, m1 0x6c3bd0;
	void onMore(cocos2d::CCObject* sender) = win 0x2aaed0, imac 0x7bc900, m1 0x6c28bc;
	void onNextPage(cocos2d::CCObject* sender) = win 0x2ac8c0, imac 0x7bd440, m1 0x6c3398;
	void onOriginal(cocos2d::CCObject* sender) = win 0x2aaf30, imac 0x7bcb50, m1 0x6c2b14;
	void onPrevPage(cocos2d::CCObject* sender) = win 0x2ac8d0, imac 0x7bd420, m1 0x6c3388;
	void onRefreshComments(cocos2d::CCObject* sender) = imac 0x7be330, m1 0x6c41e4;
	void onSimilar(cocos2d::CCObject* sender);
	TodoReturn reloadWindow() = win 0x2acc50;
	void setupCommentsBrowser(cocos2d::CCArray*) = win 0x2ac2c0, m1 0x6C3A5C, imac 0x7BDB50, ios 0x360b8c;
	void setupLevelInfo() = win 0x2aa4f0, imac 0x7bc950, m1 0x6c2918;
	void toggleCommentMode(cocos2d::CCObject* sender) = win 0x2ace70, imac 0x7bd540, m1 0x6c348c;
	void toggleExtendedMode(cocos2d::CCObject* sender) = win 0x2acb00, imac 0x7bd620, m1 0x6c356c;
	void toggleSmallCommentMode(cocos2d::CCObject* sender) = win 0x2acb60, imac 0x7bd650, m1 0x6c359c;
	TodoReturn updateCommentModeButtons() = win 0x2acf30;
	TodoReturn updateLevelsLabel();

	virtual void registerWithTouchDispatcher() = m1 0x6c4794, imac 0x7be910, ios 0x361474;
	virtual void keyBackClicked() = win 0x2abc10, m1 0x6c46a8, imac 0x7be800, ios 0x361468;
	virtual void show() = win 0x2ad030, m1 0x6c5538, imac 0x7bf760, ios 0x361c9c;
	virtual void loadCommentsFinished(cocos2d::CCArray*, char const*) = win 0x2ac4e0, m1 0x6c48d4, imac 0x7bea70, ios 0x3614fc;
	virtual void loadCommentsFailed(char const*) = win 0x2ac550, m1 0x6c49b8, imac 0x7beb40, ios 0x36156c;
	virtual void setupPageInfo(gd::string, char const*) = win 0x2ac5a0, m1 0x6c4a64, imac 0x7bebe0, ios 0x3615c8;
	virtual void commentUploadFinished(int) = win 0x2ac8e0, m1 0x6c5158, imac 0x7bf310, ios 0x3619cc;
	virtual void commentUploadFailed(int, CommentError) = win 0x2ac9b0, m1 0x6c5270, imac 0x7bf460, ios 0x361a5c;
	virtual void updateUserScoreFinished() = win 0x2ac790, m1 0x6c4fd0, imac 0x7bf170, ios 0x361900;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2aadb0, m1 0x6c4474, imac 0x7be5c0, ios 0x361374;

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

	static ItemInfoPopup* create(int, UnlockType) = win 0x269640, m1 0x2fc484, imac 0x3705b0;

	bool init(int, UnlockType) = win 0x269730, imac 0x3731a0, m1 0x2fed78;
	bool isUnlockedByDefault(int, UnlockType) = m1 0x300334, imac 0x374900;
	static gd::string nameForUnlockType(int, UnlockType) = win 0x26b660, m1 0x2fffe4, imac 0x374620;
	void onClose(cocos2d::CCObject* sender) = m1 0x3002f8, imac 0x3748d0;
	void onCredit(cocos2d::CCObject* sender) = win 0x26b630, m1 0x300360, imac 0x374930;

	virtual void keyBackClicked() = m1 0x300394, imac 0x374960, ios 0x319fe4;

	int m_itemID;
	UnlockType m_unlockType;
	int m_accountID;
}

[[link(android)]]
class ItemTriggerGameObject : EffectGameObject {
	// virtual ~ItemTriggerGameObject();

	static ItemTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual void customSetup() = m1 0x195664, imac 0x1ded80, ios 0x39dcc8;
	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = m1 0x19569c, imac 0x1dedc0, ios 0x39dd00;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x1991d8, imac 0x1e3ab0, ios 0x39ec3c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x1957ec, imac 0x1def10, ios 0x39dde8;
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

	virtual bool init() = m1 0x538ce8, imac 0x615040;
	virtual void keyBackClicked() = m1 0x53a5f0, imac 0x616950;
}

[[link(android)]]
class KeybindingsManager : cocos2d::CCNode {
	// virtual ~KeybindingsManager();

	static KeybindingsManager* sharedState() = win 0x2ae710, imac 0x4ef660, m1 0x449860;

	TodoReturn commandForKey(cocos2d::enumKeyCodes, GJKeyGroup, bool, bool, bool);
	TodoReturn commandForKeyMods(cocos2d::enumKeyCodes, GJKeyGroup);
	TodoReturn commandForKeyNoMods(cocos2d::enumKeyCodes, GJKeyGroup);
	TodoReturn commandToKeyForGroup(GJKeyGroup);
	void dataLoaded(DS_Dictionary*) = imac 0x4efcc0, m1 0x449e60;
	void encodeDataTo(DS_Dictionary*) = imac 0x4efc80, m1 0x449e1c;
	void firstSetup();
	TodoReturn groupForCommand(GJKeyCommand);
	TodoReturn keyForCommand(GJKeyCommand);
	TodoReturn keyToCommandForGroup(GJKeyGroup);

	virtual bool init() = m1 0x4499c4, imac 0x4ef7e0, ios 0x355c34;
}

[[link(android)]]
class KeyframeAnimTriggerObject : EffectGameObject {
	// virtual ~KeyframeAnimTriggerObject();

	static KeyframeAnimTriggerObject* create();

	virtual bool init() = m1 0x173fc8, imac 0x1b6710, ios 0x38fd9c;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x174cd8, imac 0x1b7780, ios 0x3901dc;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x174018, imac 0x1b6760, ios 0x38fdec;
}

[[link(android)]]
class KeyframeGameObject : EffectGameObject {
	// virtual ~KeyframeGameObject();

	static KeyframeGameObject* create();

	TodoReturn updateShadowObjects(GJBaseGameLayer*, EditorUI*);

	virtual bool init() = m1 0x17d53c, imac 0x1c16a0, ios 0x39417c;
	virtual void setOpacity(unsigned char) = win 0x489250, m1 0x17d874, imac 0x1c19e0, ios 0x394440;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x17d9d0, imac 0x1c1b40, ios 0x3944f0;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x17de78, imac 0x1c20b0, ios 0x3948f8;
}

[[link(android)]]
class KeyframeObject {
	// KeyframeObject();
	// KeyframeObject(KeyframeObject const&);

	TodoReturn setupSpline(gd::vector<KeyframeObject*>&);

	PAD = win 0x20;
	gd::vector<double> m_unkVecDouble1;
	gd::vector<double> m_unkVecDouble2;
	gd::vector<double> m_unkVecDouble3;
	gd::vector<double> m_unkVecDouble4;
	gd::vector<double> m_unkVecDouble5;
	PAD = win 0x29;
	gd::vector<double> m_unkVecDouble6;
	gd::vector<double> m_unkVecDouble7;
	gd::vector<double> m_unkVecDouble8;
	gd::vector<double> m_unkVecDouble9;
	gd::vector<double> m_unkVecDouble10;
	PAD = win 0x80;
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
	TodoReturn updateLabel(gd::string) = imac 0x1bc6a0;
	TodoReturn updateLabelAlign(int);
	TodoReturn updateLabelIfDirty();
	TodoReturn updatePreviewLabel();

	virtual bool init() = m1 0x1786d4, imac 0x1bbd40, ios 0x391bc4;
	virtual void setOpacity(unsigned char) = win 0x487310, m1 0x178b30, imac 0x1bc1b0, ios 0x391ee4;
	virtual void setupCustomSprites(gd::string) = m1 0x178704, imac 0x1bbd70, ios 0x391bf4;
	virtual void addMainSpriteToParent(bool) = m1 0x1793fc, imac 0x1bcb50, ios 0x39253c;
	virtual void resetObject() = m1 0x17a074, imac 0x1bdab0, ios 0x3928f0;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x1791b8, imac 0x1bc8e0, ios 0x392374;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x179454, imac 0x1bcbb0, ios 0x392594;
	virtual void setObjectColor(cocos2d::ccColor3B const&) = m1 0x1793b4, imac 0x1bcb00, ios 0x3924f4;
	virtual void updateTextKerning(int) = m1 0x178bb4, imac 0x1bc230, ios 0x391f68;
	virtual int getTextKerning() = m1 0x1a1638, imac 0x1ed720, ios 0x3a26c8;

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
	inline LeaderboardsLayer() {
		m_list = nullptr;
		m_userScores = nullptr;
		m_state = LeaderboardState::Default;
		m_topBtn = nullptr;
		m_globalBtn = nullptr;
		m_creatorsBtn = nullptr;
		m_friendsBtn = nullptr;
		m_circle = nullptr;
		m_noInternet = nullptr;
		m_tabs = nullptr;
	}

	static LeaderboardsLayer* create(LeaderboardState state) = win inline, m1 0x46fc3c, imac 0x51a6d0, ios 0x3b96ac {
		auto ret = new LeaderboardsLayer();
		if (ret->init(state)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	bool init(LeaderboardState) = win 0x2aed30, m1 0x46fd08, imac 0x51a7d0, ios 0x3b976c;
	bool isCorrect(char const*);
	void onBack(cocos2d::CCObject* sender) = win 0x2b0f30, m1 0x470a18, imac 0x51b560;
	void onCreators(cocos2d::CCObject* sender);
	void onGlobal(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onTop(cocos2d::CCObject* sender);
	void onWeek(cocos2d::CCObject* sender);
	void refreshTabs() = win 0x2afce0;
	static cocos2d::CCScene* scene(LeaderboardState state) = win inline, m1 0x46fb50, imac 0x51a5a0 {
		auto scene = cocos2d::CCScene::create();
		auto layer = LeaderboardsLayer::create(state);
		scene->addChild(layer);
		return scene;
	}
	void selectLeaderboard(LeaderboardState) = win 0x2afe10, imac 0x51b440, m1 0x4708ec;
	void setupLevelBrowser(cocos2d::CCArray*) = win 0x2afb80;
	TodoReturn setupTabs();
	void toggleTabButtons() = win 0x2b0060;

	virtual void keyBackClicked() = win 0x2b0fb0, m1 0x471864, imac 0x51c490, ios 0x3bade8;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2b0f00, m1 0x47180c, imac 0x51c430, ios 0x3bad90;
	virtual void updateUserScoreFinished() = win 0x2b0250, m1 0x470e7c, imac 0x51ba00, ios 0x3ba7f0;
	virtual void updateUserScoreFailed() = win 0x2b0270, m1 0x470eb4, imac 0x51ba60, ios 0x3ba828;
	virtual void loadLeaderboardFinished(cocos2d::CCArray*, char const*) = win 0x2b0280, m1 0x470f5c, imac 0x51bb00, ios 0x3ba884;
	virtual void loadLeaderboardFailed(char const*) = win 0x2b0310, m1 0x4715ac, imac 0x51c1b0, ios 0x3babbc;

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

	static LevelAreaInnerLayer* create(bool) = ios 0x354118;

	bool init(bool) = win 0x2b3200, imac 0x275da0, m1 0x21ba74, ios 0x3541c8;
	void onBack(cocos2d::CCObject* sender) = win 0x2b5260, imac 0x276ac0, m1 0x21c738;
	void onDoor(cocos2d::CCObject* sender) = win 0x2b4f70, imac 0x276b10, m1 0x21c790;
	void onInfo(cocos2d::CCObject* sender);
	void onNextFloor(cocos2d::CCObject* sender);
	bool playStep1();
	static cocos2d::CCScene* scene(bool) = win 0x2b30f0;
	cocos2d::CCAction* showFloor1CompleteDialog();
	TodoReturn tryResumeTowerMusic();

	virtual void keyBackClicked() = win 0x2b52c0, m1 0x21d698, imac 0x277aa0, ios 0x355720;
	virtual void dialogClosed(DialogLayer*) = win 0x2b4940, m1 0x21d4c8, imac 0x2778c0, ios 0x3555d4;

	PAD = win 0x8;
	bool m_isBusy;
	int m_unk1ac;
}

[[link(android)]]
class LevelAreaLayer : cocos2d::CCLayer, DialogDelegate {
	// virtual ~LevelAreaLayer();

	static LevelAreaLayer* create();

	cocos2d::CCAction* addGodRay(float, float, float, float, float, cocos2d::CCPoint);
	void addTorch(cocos2d::CCNode*, cocos2d::CCPoint, int, float, int, bool);
	cocos2d::CCAction* fadeInsideTower();
	void onBack(cocos2d::CCObject* sender);
	void onClickDoor(cocos2d::CCObject* sender);
	bool onEnterTower();
	static cocos2d::CCScene* scene();
	cocos2d::CCAction* showDialog();

	virtual bool init() = imac 0x273a40, m1 0x2197d8, ios 0x352768;
	virtual void keyBackClicked() = win 0x2b30e0, m1 0x21b8b0, imac 0x275b50, ios 0x3540d4;
	virtual void dialogClosed(DialogLayer*) = win 0x2b2420, m1 0x21b680, imac 0x275900, ios 0x353f44;
}

[[link(android)]]
class LevelBrowserLayer : cocos2d::CCLayerColor, LevelManagerDelegate, FLAlertLayerProtocol, SetIDPopupDelegate, SetTextPopupDelegate, TableViewCellDelegate, ShareCommentDelegate {
	~LevelBrowserLayer() = m1 0x3f8e04, win 0x2b5530, imac 0x493f50;
	LevelBrowserLayer() = win 0x2b5340, ios 0x259734 {}

	static LevelBrowserLayer* create(GJSearchObject*) = win 0x2b5760, imac 0x494190, m1 0x3f8e88, ios 0x41d1c4;
	static cocos2d::CCScene* scene(GJSearchObject* search) = win 0x2b5710, m1 0x3f8e3c, imac 0x494150, ios 0x41d178;

	TodoReturn createNewLevel(cocos2d::CCObject*);
	TodoReturn createNewList(cocos2d::CCObject*) = imac 0x49a8e0;
	TodoReturn createNewSmartTemplate(cocos2d::CCObject*);
	TodoReturn deleteSelected();
	TodoReturn exitLayer(cocos2d::CCObject*);
	cocos2d::CCArray* getItemsMatchingSearch(cocos2d::CCArray*, gd::string, GJSearchObject*) = win 0x2bb8f0;
	gd::string getSearchTitle() = win 0x2b8750, imac 0x4993a0, m1 0x3fdccc;
	bool init(GJSearchObject*) = win 0x2b57d0, m1 0x3f8fc4, imac 0x494360, ios 0x41d238;
	bool isCorrect(char const*) = win 0x2b70e0;
	void loadPage(GJSearchObject*) = win 0x2b72b0, m1 0x3fc3cc, imac 0x497710;
	void onClearSearch(cocos2d::CCObject* sender) = win 0x2bb510, imac 0x497690;
	void onDeleteAll(cocos2d::CCObject* sender) = win 0x2baf60, imac 0x496980;
	void onDeleteSelected(cocos2d::CCObject* sender) = win 0x2bbc80, m1 0x3fabe0, imac 0x496030;
	void onFavorites(cocos2d::CCObject* sender) = win 0x2bada0;
	void onGoToFolder(cocos2d::CCObject* sender) = win 0x2b9530, imac 0x497290;
	void onGoToLastPage(cocos2d::CCObject* sender) = win 0x2b93b0;
	void onGoToPage(cocos2d::CCObject* sender) = win 0x2b9420, m1 0x3faab0, imac 0x495f20;
	void onHelp(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender) = win 0x2b9b60, imac 0x496f30;
	void onLocalMode(cocos2d::CCObject* sender) = win 0x2ba9e0;
	void onMyOnlineLevels(cocos2d::CCObject* sender) = win 0x2babd0, imac 0x496480;
	void onNew(cocos2d::CCObject* sender) = win 0x2ba530, imac 0x496390;
	void onNextPage(cocos2d::CCObject* sender) = win 0x2b9910, m1 0x3fa970, imac 0x495dc0;
	void onPrevPage(cocos2d::CCObject* sender) = win 0x2b9990, m1 0x3fa93c, imac 0x495d80;
	void onRefresh(cocos2d::CCObject* sender) = win 0x2bb3d0, imac 0x496e10, m1 0x3fba5c;
	void onRemoveAllFavorites(cocos2d::CCObject* sender) = win 0x2bb100;
	void onSaved(cocos2d::CCObject* sender) = win 0x2bae80;
	void onSavedMode(cocos2d::CCObject* sender) = win 0x2ba900;
	void onSearch(cocos2d::CCObject* sender) = win 0x2bb5b0;
	void onToggleAllObjects(cocos2d::CCObject* sender) = win 0x2bbfc0, imac 0x496300;
	void reloadAllObjects() = m1 0x3ff3d0 {
		static_cast<CustomListView*>(m_list->m_listView)->reloadAll();
	}
	void setSearchObject(GJSearchObject*) = imac 0x495d30, m1 0x3fa8f4;
	void setupLevelBrowser(cocos2d::CCArray*) = win 0x2b8440, m1 0x3fda3c, imac 0x4990a0;
	void show() = win 0x2bc7d0, m1 0x3ffc14, imac 0x49b600;
	void updateLevelsLabel();
	void updatePageLabel() = win 0x2b97e0, imac 0x495e00;

	virtual void onEnter() = win 0x2bc620, m1 0x3ff9cc, imac 0x49b3f0, ios 0x422708;
	virtual void onEnterTransitionDidFinish() = imac 0x49b590, ios 0x422838;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x3b850, m1 0x3ffc98, imac 0x49b680, ios 0x422908;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x422928 {}
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x422918 {}
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x422920 {}
	virtual void registerWithTouchDispatcher() = win 0x2bc760, m1 0x3ffbc4, imac 0x49b5a0, ios 0x42283c;
	virtual void keyBackClicked() = win 0x2b9aa0, m1 0x3fedb8, imac 0x49a740, ios 0x421df0;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x2b9ac0, m1 0x3feddc, imac 0x49a780, ios 0x421e14;
	virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) = win 0x2b8fb0, m1 0x3fe3d0, imac 0x499c80, ios 0x421718;
	virtual void loadLevelsFailed(char const*, int) = win 0x2b90e0, m1 0x3fe500, imac 0x499de0, ios 0x42183c;
	virtual void setupPageInfo(gd::string, char const*) = win 0x2b9130, m1 0x3fe5ec, imac 0x499ec0, ios 0x4218b8;
	virtual void onBack(cocos2d::CCObject* sender) = win 0x2b9a10, m1 0x3fed04, imac 0x49a690, ios 0x421d78;
	virtual void shareCommentClosed(gd::string, ShareCommentLayer*) = win 0x2baac0, m1 0x3ff0f8, imac 0x49aa70, ios 0x4220e8;
	virtual void setTextPopupClosed(SetTextPopup*, gd::string) = win 0x2bb830, m1 0x3ff1dc, imac 0x49ab50, ios 0x422160;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2bc060, m1 0x3ff3dc, imac 0x49ada0, ios 0x4222f4;
	virtual void setIDPopupClosed(SetIDPopup*, int) = win 0x2b95e0, m1 0x3febf0, imac 0x49a560, ios 0x421c70;
	virtual cocos2d::CCArray* updateResultArray(cocos2d::CCArray*) = win 0x2b54e0, m1 0x3ffcc0, imac 0x49b700, ios 0x422930;
	virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = win 0x2bc6c0, m1 0x3ffa78, imac 0x49b470, ios 0x422794;

	bool m_unk;
	bool m_allSelected;
	TextArea* m_noInternet;
	GJListLayer* m_list;
	CCMenuItemSpriteExtra* m_rightArrow;
	CCMenuItemSpriteExtra* m_leftArrow;
	CCMenuItemSpriteExtra* m_lastBtn;
	CCMenuItemSpriteExtra* m_cancelSearchBtn;
	CCMenuItemSpriteExtra* m_refreshBtn;
	cocos2d::CCArray* m_levels;
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
	cocos2d::CCScene* m_scene;
	int m_zOffset;
	bool m_unk2;
	int m_listHeight;
	float m_unkFloat;
	float m_unkFloat2;
	TableViewCellDelegate* m_delegate;
	bool m_cached;
}

[[link(android)]]
class LevelCell : TableViewCell {
	// virtual ~LevelCell();
	LevelCell(char const*, float, float) = win 0xabe60, m1 0x1f4a04, imac 0x24a640, ios 0x10d72c;

	static LevelCell* create(float, float) = m1 0x1f4904, imac 0x24a540, ios 0x10d698;

	void loadCustomLevelCell() = win 0xac110, m1 0x1f5430, imac 0x24b030, ios 0x10e0dc;
	void loadFromLevel(GJGameLevel*) = win 0xabf30, m1 0x1ea748, imac 0x23fd90, ios 0x104524;
	void loadLocalLevelCell() = win 0xaea50, m1 0x1f4aa4, imac 0x24a710, ios 0x10d7cc;
	void onClick(cocos2d::CCObject* sender) = win 0xaf4e0, m1 0x1f7d40, imac 0x24dca0, ios 0x1106a4;
	void onToggle(cocos2d::CCObject* sender) = win 0xac0f0, m1 0x1f7d28, imac 0x24dc80, ios 0x11068c;
	void onViewProfile(cocos2d::CCObject* sender) = win 0xaf700, m1 0x1f7ea4, imac 0x24de00, ios 0x1107dc;
	void updateBGColor(int) = ios 0x1046b8;
	void updateCellMode(int) = win 0xaf250, imac 0x24a0e0, m1 0x1f4538, ios 0x10d484;
	void updateToggle() = imac 0x24a0b0, m1 0x1f451c;

	virtual bool init() = win 0xabf10, m1 0x1f4a88, imac 0x24a6e0, ios 0x10d7b0;
	virtual void draw() = win 0xaf740, m1 0x1f7ee4, imac 0x24de30, ios 0x11081c;

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
	LevelEditorLayer() = win 0x2bd440, ios 0x377530;

    static LevelEditorLayer* get() {
        return GameManager::sharedState()->m_levelEditorLayer;
    }

	static LevelEditorLayer* create(GJGameLevel*, bool) = win 0x2be3b0, m1 0xc5550, imac 0xdeb30, ios 0x3653b0;

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
	void addSpecial(GameObject*) = win 0x2c4120, m1 0xc9bc4, imac 0xe3fe0;
	TodoReturn addToRedoList(UndoObject*);
	TodoReturn addTouchPoint(cocos2d::CCPoint);
	TodoReturn addToUndoList(UndoObject*, bool) = imac 0xe3e70;
	TodoReturn applyAttributeState(GameObject*, GameObject*);
	TodoReturn applyGroupState(GameObject*, GameObject*);
	TodoReturn breakApartTextObject(TextGameObject*);
	bool canPasteState();
	TodoReturn clearPlayerPoints();
	TodoReturn clearTouchPoints();
	TodoReturn copyObjectState(GameObject*);
	TodoReturn copyParticleState(ParticleGameObject*);
	GameObject* createObject(int, cocos2d::CCPoint, bool) = win 0x2c0d10, imac 0xe4590, m1 0xca138;
	void createObjectsFromSetup(gd::string&) = imac 0x51bb80;
	cocos2d::CCArray* createObjectsFromString(gd::string const&, bool, bool) = win 0x2C0690;
	TodoReturn dirtifyTriggers();
	TodoReturn duplicateKeyframeAnimation(int);
	TodoReturn fastUpdateDisabledGroups();
	int findGameObject(int);
	TodoReturn findStartPosObject();
	TodoReturn forceShowSelectedObjects(bool);
	TodoReturn fullUpdateDisabledGroups();
	TodoReturn getAllObjects();
	TodoReturn getDelayedSpawnNode();
	TodoReturn getGridPos(cocos2d::CCPoint);
	TodoReturn getLastObjectX() = imac 0xf0f90;
	gd::string getLevelString() = win 0x2c31b0, imac 0xe7660;
	TodoReturn getLockedLayers();
	TodoReturn getNextColorChannel();
	int getNextFreeAreaEffectID(cocos2d::CCArray*) = win 0x2c7350;
	TodoReturn getNextFreeBlockID(cocos2d::CCArray*);
	int getNextFreeEditorLayer(cocos2d::CCArray*);
	TodoReturn getNextFreeEnterChannel(cocos2d::CCArray*);
	int getNextFreeGradientID(cocos2d::CCArray*) = win 0x2c7430;
	int getNextFreeGroupID(cocos2d::CCArray*) = win 0x2c6cb0, m1 0xd37e0, imac 0xef5f0;
	int getNextFreeItemID(cocos2d::CCArray*) = win 0x2c6f30;
	TodoReturn getNextFreeOrderChannel(cocos2d::CCArray*);
	TodoReturn getNextFreeSFXGroupID(cocos2d::CCArray*);
	TodoReturn getNextFreeSFXID(cocos2d::CCArray*);
	TodoReturn getObjectRect(GameObject*, bool, bool) = win 0x2c1df0;
	TodoReturn getRelativeOffset(GameObject*);
	TodoReturn getSavedEditorPosition(int) = imac 0xed160;
	TodoReturn getSavedEditorPositions() = imac 0xed1a0;
	TodoReturn getSectionCount() = imac 0xed5b0;
	TodoReturn getSelectedEditorOrder();
	TodoReturn getSelectedEffectPos();
	TodoReturn getSelectedOrderChannel();
	TodoReturn getSFXIDs();
	TodoReturn getSongIDs(bool&) = imac 0xec770;
	TodoReturn getTriggerGroup(int);
	void handleAction(bool, cocos2d::CCArray*) = win 0x2c2ab0, m1 0xcc634, imac 0xe6d50;
	bool hasAction(bool);
	bool init(GJGameLevel*, bool) = win 0x2be440, imac 0xdeba0, m1 0xc55e4, ios 0x365434;
	bool isLayerLocked(int layer) {
		if (layer < 10000 && m_layerLockingEnabled) {
			return m_lockedLayers.at(layer);
		}
		return false;
	}
	GameObject* objectAtPosition(cocos2d::CCPoint) = win 0x2c16a0;
	TodoReturn objectMoved(GameObject*) = imac 0xedcf0;
	TodoReturn objectsAtPosition(cocos2d::CCPoint) = imac 0xe5c40;
	cocos2d::CCArray* objectsInRect(cocos2d::CCRect, bool);
	void onPausePlaytest();
	void onPlaytest() = win 0x2cbf90, m1 0xd7e60, imac 0xf4c80;
	void onResumePlaytest() = win 0x2cc9c0;
	void onStopPlaytest() = win 0x2ccbb0, imac 0xf5870, m1 0xd8930;
	TodoReturn pasteAttributeState(GameObject*, cocos2d::CCArray*);
	TodoReturn pasteColorState(GameObject*, cocos2d::CCArray*);
	TodoReturn pasteGroupState(GameObject*, cocos2d::CCArray*);
	TodoReturn pasteParticleState(ParticleGameObject*, cocos2d::CCArray*);
	void processLoadedMoveActions() = imac 0xb7be0, m1 0xa44a4;
	TodoReturn quickUpdateAllPositions() = win 0x2cbd20;
	TodoReturn recreateGroups();
	void redoLastAction() = win inline {
		return this->handleAction(false, m_redoObjects);
	}
	TodoReturn refreshSpecial(GameObject*);
	TodoReturn removeAllObjects();
	TodoReturn removeAllObjectsOfType(int) = win 0x2c2830, imac 0xe69d0;
	TodoReturn removeObject(GameObject*, bool) = imac 0xe6400;
	TodoReturn removePlayerCollisionBlock();
	void removeSpecial(GameObject*) = win 0x2c4830, m1 0xcbe28, imac 0xe64c0;
	TodoReturn resetDelayedSpawnNodes();
	TodoReturn resetEffectTriggerOptim(GameObject*, cocos2d::CCArray*);
	void resetMovingObjects();
	void resetObjectVector();
	TodoReturn resetPlayback();
	TodoReturn resetToggledGroups();
	TodoReturn resetToggledGroupsAndObjects();
	TodoReturn resetUnusedColorChannels();
	TodoReturn reverseKeyframeAnimationOrder(int);
	TodoReturn reverseObjectChanged(EffectGameObject*);
	TodoReturn rotationForSlopeNearObject(GameObject*) = imac 0xe4e30;
	TodoReturn runColorEffect(EffectGameObject*, int, float, float, bool);
	TodoReturn saveEditorPosition(cocos2d::CCPoint&, int) = imac 0xed140;
	static cocos2d::CCScene* scene(GJGameLevel* level, bool p1) = win inline {
		auto scene = cocos2d::CCScene::create();
		auto layer = LevelEditorLayer::create(level, p1);
		scene->addChild(layer);
		return scene;
	}
	void setObjectCount(int);
	TodoReturn shouldBlend(int);
	TodoReturn sortBatchnodeChildren(float);
	TodoReturn spawnGroupPreview(int, float, float, float, float, float, bool, bool);
	TodoReturn stopPlayback();
	TodoReturn stopTriggersInGroup(int, float);
	TodoReturn timeObjectChanged();
	TodoReturn toggleBackground(bool);
	TodoReturn toggleGrid(bool);
	TodoReturn toggleGround(bool) = imac 0xe2ed0;
	TodoReturn toggleGroupPreview(int, bool);
	TodoReturn toggleLockActiveLayer();
	TodoReturn transferDefaultColors(GJEffectManager*, GJEffectManager*);
	TodoReturn triggerFollowCommand(EffectGameObject*);
	TodoReturn triggerPlayerFollowCommand(EffectGameObject*);
	TodoReturn triggerRotateCommand(EffectGameObject*);
	bool tryUpdateSpeedObject(EffectGameObject*, bool) = win 0x2c4e10, imac 0xedb60;
	bool typeExistsAtPosition(int, cocos2d::CCPoint, bool, bool, float) = win 0x2c10c0;
	void undoLastAction() = win inline {
		return this->handleAction(true, m_undoObjects);
	}
	TodoReturn unlockAllLayers() = imac 0xed660;
	TodoReturn updateAnimateOnTriggerObjects(bool);
	TodoReturn updateArt(float);
	TodoReturn updateBlendValues();
	void updateEditor(float) = win 0x2c4fb0, imac 0xe1720, m1 0xc79d0;
	void updateEditorMode() = imac 0xe2af0, m1 0xc88a4, win 0x2c7a90;
	void updateGameObjects() = imac 0xe1b20, m1 0xc7dd8;
	TodoReturn updateGridLayer();
	TodoReturn updateGridLayerParent();
	TodoReturn updateKeyframeObjects() = imac 0xef050;
	TodoReturn updateKeyframeVisibility(bool);
	void updateLevelFont(int) = win 0x2cb350, m1 0xd6eb8, imac 0xf3a60;
	void updateObjectColors(cocos2d::CCArray* gameObjects) = win 0x2c6410, imac 0xef100, m1 0xd32f8;
	static void updateObjectLabel(GameObject*) = win 0x2c3bc0, imac 0xed6b0;
	void updateOptions() = win 0x2bf650, imac 0xe03a0, m1 0xc694c;
	void updatePreviewAnim();
	void updatePreviewParticle(ParticleGameObject*) = imac 0x1ad850, m1 0x16c540;
	void updatePreviewParticles() = win 0x2cdb20, m1 0xd4b04, imac 0xf09e0;
	TodoReturn updateToggledGroups();
	TodoReturn validGroup(GameObject*, bool);

	virtual void draw() = imac 0xf90a0, ios 0x374250;
	virtual void postUpdate(float) = m1 0xd8f24, imac 0xf5f20, win 0x2cd530, ios 0x372060;
	virtual void updateVisibility(float) = win 0x2c5380, imac 0xee540, m1 0xd2794, ios 0x36d0b8;
	virtual TodoReturn playerTookDamage(PlayerObject*) = m1 0xd8f10, win 0x2cd520, imac 0xf5f00, ios 0x37204c;
	virtual void updateColor(cocos2d::ccColor3B& color, float fadeTime, int colorID, bool blending, float opacity, cocos2d::ccHSVValue& copyHSV, int colorIDToCopy, bool copyOpacity, EffectGameObject* callerObject, int unk1, int unk2) = m1 0xd62b4, win 0x2c9d00, imac 0xf2a70, ios 0x370190;
	virtual void updateDebugDraw() = win 0x2ce170, m1 0xda0d4, imac 0xf7130, ios 0x372e18;
	virtual void addToGroup(GameObject*, int, bool) = win 0x2cacf0, m1 0xd6a70, imac 0xf34c0, ios 0x37057c;
	virtual void removeFromGroup(GameObject*, int) = win 0x2cae40, m1 0xd6b28, imac 0xf3570, ios 0x370600;
	virtual void updateObjectSection(GameObject*) = win 0x2cbc10, m1 0xd7b7c, imac 0xf4830, ios 0x371208;
	virtual TodoReturn updateDisabledObjectsLastPos(cocos2d::CCArray*) = m1 0xd7c84, win 0x2cbea0, imac 0xf4970, ios 0x371304;
	virtual float timeForPos(cocos2d::CCPoint, int, int, bool, int) = win 0x2cab90, m1 0xd6574, imac 0xf2dd0, ios 0x37039c;
	virtual float posForTime(float) = win 0x2cac00, m1 0xd6600, imac 0xf2e60, ios 0x37040c;
	virtual void resetSPTriggered() = m1 0xd6640, imac 0xf2f00, ios 0x37042c;
	virtual TodoReturn didRotateGameplay() = m1 0xd798c, win 0x2cbba0, imac 0xf4640, ios 0x37105c;
	virtual TodoReturn manualUpdateObjectColors(GameObject*) = m1 0xd32c0, win 0x2c6380, imac 0xef0d0, ios 0x36d9fc;
	virtual TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool) = win 0x2cdcc0, m1 0xd9e84, imac 0xf6ee0, ios 0x372bdc;
	virtual TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*) = win 0x2cdd80, m1 0xd9f60, imac 0xf6fa0, ios 0x372ca8;
	virtual TodoReturn activatedAudioTrigger(SFXTriggerGameObject*) = m1 0xd8e4c, imac 0xf5e20, ios 0x371f88; // win inline
	virtual void checkpointActivated(CheckpointGameObject*) = win 0x2cd450, m1 0xd8e64, imac 0xf5e50, ios 0x371fa0;
	virtual void addKeyframe(KeyframeGameObject*) = win 0x2cddc0, m1 0xd9fa0, imac 0xf6fe0, ios 0x372ce8;
	virtual void levelSettingsUpdated() = win 0x2bfd90, m1 0xc8edc, imac 0xe3140, ios 0x367d10;

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

	// haven't verified the mac and ios paddings
	PAD = win 0xf, android32 0xf, android64 0xf, mac 0xf, ios 0xf;

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

	// haven't verified the mac and ios paddings
	PAD = win 0x10, android32 0x8, android64 0x10, mac 0x10, ios 0x10;

	cocos2d::CCDictionary* m_unkDict4;
	cocos2d::CCArray* m_unkArr7;
	bool m_unkBool3;
	bool m_unkBool2;
	geode::SeedValueRSV m_coinCount;

	// haven't verified the mac and ios paddings
	PAD = win 0x8, android32 0x8, android64 0x8, mac 0x8, ios 0x8;

	cocos2d::CCArray* m_unkArr6;

	// haven't verified the mac and ios paddings
	PAD = win 0x8, android32 0x4, android64 0x8, mac 0x8, ios 0x8;

	cocos2d::CCDictionary* m_unkDict1;
	cocos2d::CCDictionary* m_unkDict2;
	bool m_unkBool0;
	bool m_unkBool1;
    short m_currentLayer;

	// haven't verified the mac and ios paddings
	PAD = win 0x1c, android32 0x10, android64 0x1c, mac 0x1c, ios 0x1c;
	float m_trailTimer;
	PAD = win 0x4, android32 0x4, android64 0x4, mac 0x4, ios 0x4;

	EditorUI* m_editorUI;
	cocos2d::CCArray* m_undoObjects;
	cocos2d::CCArray* m_redoObjects;
	geode::SeedValueRSV m_objectCount;
	DrawGridLayer* m_drawGridLayer;
	bool m_unkBool;
	bool m_previewMode;

	// 2.206 win pad unknown
	PAD = win 0xfa, android32 0x7a, android64 0xf4;

	gd::vector<bool> m_lockedLayers;

	PAD = win 0xe8, android32 0x90, android64 0xf8;
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

	virtual void keyBackClicked() = m1 0x466b98, imac 0x5101e0;
}

[[link(android)]]
class LevelInfoLayer : cocos2d::CCLayer, LevelDownloadDelegate, LevelUpdateDelegate, RateLevelDelegate, LikeItemDelegate, FLAlertLayerProtocol, LevelDeleteDelegate, NumberInputDelegate, SetIDPopupDelegate, TableViewCellDelegate {
	// virtual ~LevelInfoLayer();
	// LevelInfoLayer() = ios 0x31658;

	static LevelInfoLayer* create(GJGameLevel* level, bool challenge) = win 0x2d73f0, imac 0x2b8e60, m1 0x258874, ios 0x2abc0;

	void confirmClone(cocos2d::CCObject*) = win 0x2dd950, imac 0x2bddb0, m1 0x25d43c;
	void confirmDelete(cocos2d::CCObject*) = win 0x2ddac0, imac 0x2bd590, m1 0x25cc14;
	void confirmMoveToBottom(cocos2d::CCObject*) = win 0x2def30, imac 0x2be5a0, m1 0x25dc1c;
	void confirmMoveToTop(cocos2d::CCObject*) = win 0x2dedf0, imac 0x2be4c0, m1 0x25db2c;
	void confirmOwnerDelete(cocos2d::CCObject*) = win 0x2ddc00, imac 0x2bdcd0, m1 0x25d334;
	void downloadLevel() = win 0x2da130, imac 0x2bbdc0, m1 0x25b4e0;
	void incrementDislikes();
	void incrementLikes();
	bool init(GJGameLevel* level, bool challenge) = win 0x2d7620, imac 0x2b9040, m1 0x2589c8, ios 0x2ac44;
	void loadLevelStep() = win 0x2dd350, imac 0x2c0300, m1 0x25f890;
	void onAddToList(cocos2d::CCObject* sender) = win 0x2d9b20, imac 0x2be840, m1 0x25dee8;
	void onBack(cocos2d::CCObject* sender) = win 0x2e0280, imac 0x2be000, m1 0x25d6c4;
	void onClone(cocos2d::CCObject* sender);
	void onDelete(cocos2d::CCObject* sender);
	void onFavorite(cocos2d::CCObject* sender) = win 0x2d9df0, imac 0x2be440, m1 0x25daac;
	void onFeatured(cocos2d::CCObject* sender);
	void onGarage(cocos2d::CCObject* sender) = win 0x2d9f70, imac 0x2be3e0, m1 0x25da54;
	void onInfo(cocos2d::CCObject* sender) = win 0x2dd4b0, imac 0x2bd800, m1 0x25ce78;
	void onLevelInfo(cocos2d::CCObject* sender) = win 0x2deba0, imac 0x2be080, m1 0x25d744;
	void onLevelOptions(cocos2d::CCObject* sender) = win 0x2dea50, imac 0x2be680, m1 0x25dd10;
	void onLevelLeaderboard(cocos2d::CCObject* sender) = win 0x2d9e90, imac 0x2bd830, m1 0x25ceb0;
	void onLike(cocos2d::CCObject* sender) = win 0x2de4f0, imac 0x2bd8a0, m1 0x25cf1c;
	void onLowDetailMode(cocos2d::CCObject* sender);
	void onOwnerDelete(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender) = win 0x2dc520, imac 0x2bb5c0, m1 0x25acc8;
	void onPlayReplay(cocos2d::CCObject* sender) = imac 0x2c0430, m1 0x25f9b0;
	void onRate(cocos2d::CCObject* sender) = win 0x2ddd70, imac 0x2c0a80, m1 0x25fff4;
	void onRateDemon(cocos2d::CCObject* sender) = win 0x2de370, imac 0x2bda80, m1 0x25d0f8;
	void onRateStars(cocos2d::CCObject* sender) = win 0x2de050, imac 0x2bd920, m1 0x25cf94;
	void onRateStarsMod(cocos2d::CCObject* sender) = win 0x2de310, imac 0x2bdc80, m1 0x25d2dc;
	void onSetFolder(cocos2d::CCObject* sender) = win 0x2d9cc0, imac 0x2be7a0, m1 0x25de28;
	void onUpdate(cocos2d::CCObject* sender) = win 0x2de910, imac 0x2bd680, m1 0x25cd10;
	void onViewProfile(cocos2d::CCObject* sender) = win 0x2deaf0, imac 0x2bb540, m1 0x25ac50;
	void playStep2() = win 0x2dd1a0, imac 0x2c01b0, m1 0x25f744;
	void playStep3() = win 0x2dd280, imac 0x2c0270, m1 0x25f804;
	void playStep4() = win 0x2dd400, imac 0x2c03b0, m1 0x25f940;
	static cocos2d::CCScene* scene(GJGameLevel* level, bool challenge) = win 0x2d73a0, imac 0x2b8e10, m1 0x258818;
	void setupLevelInfo() = win 0x2daf80, imac 0x2bbeb0, m1 0x25b5b8;
	void setupPlatformerStats() = win 0x2da440, imac 0x2bcb10, m1 0x25c0f8, ios 0x2e0cc;
	void setupProgressBars() = win 0x2da870, imac 0x2bce50, m1 0x25c4a0, ios 0x2e428;
	bool shouldDownloadLevel();
	void showSongWarning() = imac 0x2c00c0, m1 0x25f624;
	void showUpdateAlert(UpdateResponse) = win 0x2dc060, imac 0x2bfc20, m1 0x25f1c4;
	void tryCloneLevel(cocos2d::CCObject*) = win 0x2dd4f0, imac 0x2bdee0, m1 0x25d588;
	TodoReturn tryShowAd();
	void updateLabelValues() = win 0x2df060, imac 0x2bebc0, m1 0x25e294, ios 0x2fc38;
	void updateSideButtons() = win 0x2de650, imac 0x2bdae0, m1 0x25d14c;

	virtual void keyBackClicked() = win 0x2e0370, imac 0x2c0ec0, m1 0x26042c, ios 0x315c4;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x2e0380, imac 0x2c0ef0, m1 0x260438, ios 0x315d0;
	virtual void numberInputClosed(NumberInputLayer*) = win 0x2dd780, imac 0x2c05f0, m1 0x25fb78, ios 0x30ffc;
	virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = imac 0x2be8a0, m1 0x25df40, ios 0x2f9c4;
	virtual void levelDownloadFinished(GJGameLevel*) = win 0x2dbb60, imac 0x2bf730, m1 0x25ecf0, ios 0x305f0;
	virtual void levelDownloadFailed(int) = win 0x2dbec0, imac 0x2bfac0, m1 0x25f070, ios 0x30870;
	virtual void levelUpdateFinished(GJGameLevel*, UpdateResponse) = win 0x2dbff0, imac 0x2bfbb0, m1 0x25f154, ios 0x30930;
	virtual void levelUpdateFailed(int) = win 0x2dc150, imac 0x2bfda0, m1 0x25f354, ios 0x30a50;
	virtual void levelDeleteFinished(int) = win 0x2dc280, imac 0x2bfea0, m1 0x25f43c, ios 0x30b14;
	virtual void levelDeleteFailed(int) = win 0x2dc3c0, imac 0x2bffb0, m1 0x25f530, ios 0x30be4;
	virtual void rateLevelClosed() = win 0x2de360, imac 0x2c0bb0, m1 0x260148, ios 0x3141c;
	virtual void likedItem(LikeItemType, int, bool) = win 0x2de5e0, imac 0x2c0be0, m1 0x260154, ios 0x31428;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2dfdb0, imac 0x2c0cf0, m1 0x26028c, ios 0x314a0;
	virtual void setIDPopupClosed(SetIDPopup*, int) = win 0x2d9d60, imac 0x2be9d0, m1 0x25e098, ios 0x2faec;

	bool m_isBusy;
	cocos2d::CCMenu* m_playBtnMenu;
	GJGameLevel* m_level;
	cocos2d::CCArray* m_coins;
	CCMenuItemSpriteExtra* m_likeBtn;
	CCMenuItemSpriteExtra* m_starRateBtn;
	CCMenuItemSpriteExtra* m_demonRateBtn;
	void* m_unk2;
	cocos2d::CCLabelBMFont* m_lengthLabel; //win 0x220
	cocos2d::CCLabelBMFont* m_exactLengthLabel;
	cocos2d::CCLabelBMFont* m_downloadsLabel;
	cocos2d::CCLabelBMFont* m_likesLabel;
	cocos2d::CCLabelBMFont* m_orbsLabel; //win 0x240
	cocos2d::CCLabelBMFont* m_folderLabel;
	CCMenuItemSpriteExtra* m_cloneBtn;
	void* m_unk3;
	cocos2d::CCSprite* m_likesIcon; //win 0x260
	cocos2d::CCSprite* m_orbsIcon;
	int m_unk6; // always 3, maybe level type?
	int m_unk7;
	LoadingCircle* m_circle; //win 0x278
	GJDifficultySprite* m_difficultySprite; //win 0x280
	cocos2d::CCSprite* m_starsIcon;
	cocos2d::CCLabelBMFont* m_starsLabel; //win 0x290
	cocos2d::CCArray* m_icons; //0x298
	PAD = win 0x10, android32 0x10, android64 0x10, mac 0x10, ios 0x10;
	bool m_challenge;
	PAD = win 0x8, android32 0x4, android64 0x8, mac 0x8, ios 0x8;
	cocos2d::CCSprite* m_playSprite;
	cocos2d::CCProgressTimer* m_progressTimer;
	CustomSongWidget* m_songWidget; //0x2d0
}

[[link(android)]]
class LevelLeaderboard : FLAlertLayer, LeaderboardManagerDelegate, FLAlertLayerProtocol {
	// virtual ~LevelLeaderboard();

	static LevelLeaderboard* create(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = win 0x2e0520, imac 0x3ddef0, m1 0x35e5e4, ios 0x25ed78;

	TodoReturn deleteLocalScores();
	TodoReturn getLocalScores();
	TodoReturn getSpriteButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint, int) = imac 0x3df150, m1 0x35f688;
	bool init(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = win 0x2e0660, imac 0x3de080, m1 0x35e720, ios 0x25ee68;
	bool isCorrect(char const*);
	void loadScores() = imac 0x3df5a0, m1 0x35fb00;
	void onChangeMode(cocos2d::CCObject* sender) = win 0x2e22e0, imac 0x3df310, m1 0x35f858;
	void onChangeType(cocos2d::CCObject* sender) = win 0x2e2240;
	void onClose(cocos2d::CCObject* sender) = win 0x82fc0, imac 0x3df430, m1 0x35f980;
	void onDeleteLocalScores(cocos2d::CCObject* sender) = win 0x2e19d0, imac 0x3df360, m1 0x35f8a8;
	void onUpdate(cocos2d::CCObject* sender) = win 0x2e2360, imac 0x3df460, m1 0x35f9bc;
	TodoReturn reloadLeaderboard(LevelLeaderboardType, LevelLeaderboardMode);
	TodoReturn setupLeaderboard(cocos2d::CCArray*) = imac 0x3df790, m1 0x35fd04;

	virtual void registerWithTouchDispatcher() = m1 0x360434, imac 0x3dfeb0, ios 0x260858;
	virtual void keyBackClicked() = m1 0x3603b8, imac 0x3dfe40, ios 0x2607dc;
	virtual void show() = win 0x84fb0, m1 0x360908, imac 0x3e03d0, ios 0x260b6c;
	virtual void loadLeaderboardFinished(cocos2d::CCArray*, char const*) = win 0x2e26e0, m1 0x360638, imac 0x3e00d0, ios 0x260994;
	virtual void loadLeaderboardFailed(char const*) = win 0x2e2780, m1 0x360784, imac 0x3e0210, ios 0x260a38;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2e1b10, m1 0x360030, imac 0x3dfa90, ios 0x2604b4;
	virtual void updateUserScoreFinished() = win 0x2e2130, m1 0x360228, imac 0x3dfc90, ios 0x260698;
	virtual void updateUserScoreFailed() = win 0x2e2140, m1 0x360234, imac 0x3dfcc0, ios 0x2606a4;

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

	void loadFromList(GJLevelList*) = win 0xbc320, imac 0x240be0, m1 0x1eb538, ios 0x105284;
	void onClick(cocos2d::CCObject* sender) = win 0xbd700, imac 0x2550b0, m1 0x1fdf64;
	void onListInfo(cocos2d::CCObject* sender) = imac 0x2551c0, m1 0x1fe064;
	void onViewProfile(cocos2d::CCObject* sender) = imac 0x255190, m1 0x1fe02c;
	TodoReturn updateBGColor(int);

	virtual bool init() = m1 0x1fdf5c, imac 0x2550a0, ios 0x1144c8;
	virtual void draw() = m1 0x1fe074, imac 0x2551e0, ios 0x1145e0;

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
	LevelListLayer() = ios 0x259620 {
		m_buttonMenu = nullptr;
		m_searchKey1 = "";
		m_levelList = nullptr;
		m_searchKey2 = "";
		m_likeButton = nullptr;
		m_exiting = false;
		m_titleInput = nullptr;
		m_editMode = 0;
		m_objects = nullptr;
		m_diffSprite = nullptr;
		m_featureSprite = nullptr;
		m_rewardPosition = cocos2d::CCPointMake(0.f, 0.f);
		m_exited = false;
	}

	static LevelListLayer* create(GJLevelList* list) = win inline, m1 0x2e9ff4, imac 0x35c7c0, ios 0x2528f4 {
		auto ret = new LevelListLayer();
		if (ret->init(list)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	void cloneList() = win 0x2e7cb0;
	void confirmClone(cocos2d::CCObject*) = win 0x2e7bc0, imac 0x35e990, m1 0x2ebf08;
	void confirmDelete(cocos2d::CCObject*) = win 0x2e7f40, imac 0x35ec40, m1 0x2ec1b0;
	void confirmOwnerDelete(cocos2d::CCObject*) = win 0x2e8070, imac 0x35eb20, m1 0x2ec0a8;
	bool init(GJLevelList*) = win 0x2e3190, m1 0x2ea074, imac 0x35c820, ios 0x252968;
	void onClaimReward(cocos2d::CCObject* sender) = win 0x2e5bb0, imac 0x35ffa0, m1 0x2ed49c;
	void onDelete();
	void onDescription(cocos2d::CCObject* sender) = win 0x2e7330, imac 0x35ed30, m1 0x2ec2a8;
	void onFavorite(cocos2d::CCObject* sender) = win 0x2e7200, imac 0x35ea70, m1 0x2ebff8;
	void onInfo(cocos2d::CCObject* sender) = win 0x2e7500, imac 0x35e8e0, m1 0x2ebe60;
	void onLike(cocos2d::CCObject* sender) = win 0x2e7540, imac 0x35e910, m1 0x2ebe98;
	void onListInfo(cocos2d::CCObject* sender) = win 0x2e4c10, imac 0x35eff0, m1 0x2ec570;
	void onRefreshLevelList(cocos2d::CCObject* sender) = win 0x2e61e0, imac 0x35e7c0, m1 0x2ebd58;
	void onSelectIcon(cocos2d::CCObject* sender) = win 0x2e7780, m1 0x2ec3f0, imac 0x35ee60;
	void onShare(cocos2d::CCObject* sender) = win 0x2e78f0, imac 0x35eeb0, m1 0x2ec43c;
	void onToggleEditMode(cocos2d::CCObject* sender) = win 0x2e7b80, imac 0x35ee20, m1 0x2ec3c8;
	void onViewProfile(cocos2d::CCObject* sender) = win 0x2e71c0, m1 0x2ebd20, imac 0x35e790;
	void ownerDelete();
	static cocos2d::CCScene* scene(GJLevelList*) = win 0x2e2f60, m1 0x2e9f54, imac 0x35c730;
	void updateEditMode();
	void updateSideButtons() = win 0x2e7680, m1 0x2ec578, imac 0x35f010;
	void updateStatsArt() = win 0x2e4c70, m1 0x2ec60c, imac 0x35f0a0, ios 0x254a3c;
	void verifyListName();

	virtual void onEnter() = win 0x2e4c20, m1 0x2ed43c, imac 0x35ff50, ios 0x255824;
	virtual void onExit() = win 0x2e4c50, m1 0x2ed474, imac 0x35ff80, ios 0x25585c;
	virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) = win 0x2e63a0, m1 0x2ed888, imac 0x360390, ios 0x255b2c;
	virtual void loadLevelsFailed(char const*, int) = win 0x2b90e0, m1 0x2edb20, imac 0x360630, ios 0x255cf8;
	virtual void onBack(cocos2d::CCObject* sender) = win 0x2e6c00, m1 0x2edf8c, imac 0x360b70, ios 0x255fc4;
	virtual void shareCommentClosed(gd::string, ShareCommentLayer*) = win 0x2e7400, m1 0x2ee934, imac 0x361580, ios 0x256610;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2e7020, m1 0x2ee4d4, imac 0x3610c0, ios 0x2562f0;
	virtual void setIDPopupClosed(SetIDPopup*, int) = win 0x2e6b50, m1 0x2ede40, imac 0x360a10, ios 0x255f14;
	virtual cocos2d::CCArray* updateResultArray(cocos2d::CCArray*) = win 0x2e6bf0, m1 0x2edf84, imac 0x360b50, ios 0x255fbc;
	virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = win 0x2e6700, m1 0x2edb2c, imac 0x360660, ios 0x255d04;
	virtual void likedItem(LikeItemType, int, bool) = win 0x2e7620, m1 0x2eea78, imac 0x3616c0, ios 0x2566d4;
	virtual void iconSelectClosed(SelectListIconLayer*) = win 0x2e78d0, m1 0x2eec58, imac 0x361900, ios 0x2567f4;
	virtual void levelListDeleteFinished(int) = win 0x2e81f0, m1 0x2eed88, imac 0x361a90, ios 0x2568d8;
	virtual void levelListDeleteFailed(int) = win 0x2e8320, m1 0x2eee74, imac 0x361b90, ios 0x2569a0;
	virtual void textInputOpened(CCTextInputNode*) = win 0x2e86e0, m1 0x2ef1b4, imac 0x361ee0, ios 0x256bcc;
	virtual void textInputClosed(CCTextInputNode*) = win 0x2e8450, m1 0x2eef60, imac 0x361c90, ios 0x256a68;
	virtual void textChanged(CCTextInputNode*) = win 0x2e8840, m1 0x2ef2b8, imac 0x361fb0, ios 0x256cc8;

	cocos2d::CCMenu* m_buttonMenu;
	gd::string m_searchKey1;
	GJLevelList* m_levelList;
	gd::string m_searchKey2;
	CCMenuItemSpriteExtra* m_likeButton;
	bool m_exiting;
	CCTextInputNode* m_titleInput;
	int m_editMode;
	cocos2d::CCArray* m_objects;
	cocos2d::CCSprite* m_diffSprite;
	cocos2d::CCSprite* m_featureSprite;
	cocos2d::CCPoint m_rewardPosition;
	bool m_exited;
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

	static LevelOptionsLayer* create(LevelSettingsObject*) = m1 0x211390, imac 0x26a870;

	bool init(LevelSettingsObject*) = win 0x3039d0, m1 0x213bdc, imac 0x26d520;
	void onSettings(cocos2d::CCObject* sender) = win 0x303f00, m1 0x2140a4, imac 0x26da20;

	virtual void valueDidChange(int, float) = win 0x3040e0, m1 0x214280, imac 0x26dcc0, ios 0x1899c0;
	virtual float getValue(int) = win 0x304100, m1 0x214298, imac 0x26dce0, ios 0x1899d8;
	virtual void setupOptions() = win 0x303a40, m1 0x213c34, imac 0x26d570, ios 0x1894e0;
	virtual void didToggle(int) = win 0x304120, m1 0x2142b4, imac 0x26dd00, ios 0x1899f4;

	LevelSettingsObject* m_settingsObject;
}

[[link(android)]]
class LevelOptionsLayer2 : LevelOptionsLayer {
	// virtual ~LevelOptionsLayer2();

	static LevelOptionsLayer2* create(LevelSettingsObject*) = m1 0x2140e4, imac 0x26da60;

	bool init(LevelSettingsObject*) = m1 0x214468, imac 0x26dec0;

	virtual void setupOptions() = win 0x304380, m1 0x214564, imac 0x26dfc0, ios 0x189c74;
}

[[link(android)]]
class LevelPage : cocos2d::CCLayer, DialogDelegate {
	// virtual ~LevelPage();
	LevelPage() {}

	static LevelPage* create(GJGameLevel* level) = win inline, imac 0x43c580, m1 0x3aea48, ios 0x40ac08 {
		auto ret = new LevelPage();
		if (ret->init(level)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	void addSecretCoin() = win 0x2fbe20, imac 0x43dde0, m1 0x3b0314;
	void addSecretDoor() = win 0x2fc530, imac 0x440360, m1 0x3b2564;
	bool init(GJGameLevel*) = win 0x2f9570, imac 0x43f130, m1 0x3b145c, ios 0x40c8e4;
	void onInfo(cocos2d::CCObject* sender) = win 0x2fd820, imac 0x43ea10, m1 0x3b0e74;
	void onMoreGames(cocos2d::CCObject* sender) = imac 0x4404d0, m1 0x3b26d0;
	void onPlay(cocos2d::CCObject* sender) = win 0x2fd2e0, imac 0x43e730, m1 0x3b0b5c, ios 0x40c32c;
	void onSecretDoor(cocos2d::CCObject* sender) = win 0x2fc740, imac 0x440980, m1 0x3b2b7c;
	void onTheTower(cocos2d::CCObject* sender) = win 0x2fb760, imac 0x43fdc0, m1 0x3b2018;
	void playCoinEffect() = win 0x2fc060, imac 0x440530, m1 0x3b2734;
	void playStep2() = win 0x2fd640, imac 0x4412a0, m1 0x3b33a4;
	void playStep3() = win 0x2fd720, imac 0x441360, m1 0x3b3464;
	void updateDynamicPage(GJGameLevel*) = win 0x2fa200, imac 0x43c820, m1 0x3aecd4, ios 0x40ae0c;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x2fdcc0, m1 0x3b3518, imac 0x441430, ios 0x40e51c;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x40e618 {}
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x40e620 {}
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x6fd20, m1 0x3b3630, imac 0x441590, ios 0x40e628;
	virtual void registerWithTouchDispatcher() = win 0x99990, m1 0x3b364c, imac 0x4415d0, ios 0x40e644;
	virtual void dialogClosed(DialogLayer*) = win 0x2fd200, m1 0x3b3254, imac 0x441180, ios 0x40e2f8;

	bool m_isBusy;
	GJGameLevel* m_level;
	cocos2d::CCMenu* m_levelMenu;
	cocos2d::extension::CCScale9Sprite* m_levelDisplay;
	cocos2d::CCLabelBMFont* m_normalProgressLabel;
	cocos2d::CCLabelBMFont* m_practiceProgressLabel;
	cocos2d::CCLabelBMFont* m_nameLabel;
	cocos2d::CCLabelBMFont* m_starsLabel;
	float m_progressWidth;
	cocos2d::CCSprite* m_normalProgressBar;
	cocos2d::CCSprite* m_practiceProgressBar;
	cocos2d::CCSprite* m_difficultySprite;
	cocos2d::CCSprite* m_starsSprite;
	cocos2d::CCSize m_levelDisplaySize;
	cocos2d::CCArray* m_coins;
	cocos2d::CCArray* m_dynamicObjects;
	cocos2d::CCArray* m_levelObjects;
	cocos2d::CCArray* m_progressObjects;
	GameObject* m_coinObject;
	cocos2d::CCSprite* m_secretDoor;
}

[[link(android)]]
class LevelSearchLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DemonFilterDelegate {
	// virtual ~LevelSearchLayer();

	static LevelSearchLayer* create(int) = ios 0x579d4, imac 0x634850;
	static cocos2d::CCScene* scene(int) = win 0x2ebb10, m1 0x5544e0, imac 0x634710;

	bool checkDiff(int) = win 0x2f1800, imac 0x6396b0, m1 0x559410;
	bool checkTime(int) = win 0x2f1dc0, imac 0x6397a0, m1 0x559508;
	void clearFilters();
	void confirmClearFilters(cocos2d::CCObject*) = m1 0x556cc4, imac 0x636f50;
	inline char const* getDiffKey(int diff) {
		return cocos2d::CCString::createWithFormat("D%i", diff)->getCString();
	}
	gd::string getLevelLenKey() = win 0x147f60;
	gd::string getSearchDiffKey() = imac 0x639490, m1 0x5591f0;
	GJSearchObject* getSearchObject(SearchType, gd::string) = win 0x2ef7b0, imac 0x639090, m1 0x558e54;
	inline char const* getTimeKey(int time) {
		return cocos2d::CCString::createWithFormat("T%i", time)->getCString();
	}
	bool init(int) = win 0x2ebc60, m1 0x5546b0, imac 0x634960, ios 0x57aa0;
	void onBack(cocos2d::CCObject* sender) = win 0x2f1560, imac 0x6383d0, m1 0x558158;
	void onClearFreeSearch(cocos2d::CCObject* sender) = win 0x2f1520, m1 0x5574e8, imac 0x6377c0;
	void onClose(cocos2d::CCObject* sender) = win inline {
		m_searchInput->onClickTrackNode(false);
	}
	void onFollowed(cocos2d::CCObject* sender) = win 0x2f0fe0;
	void onFriends(cocos2d::CCObject* sender) = win 0x2f0f20;
	void onLatestStars(cocos2d::CCObject* sender) = win 0x2f0e60;
	void onMagic(cocos2d::CCObject* sender) = win 0x2f0ce0;
	void onMoreOptions(cocos2d::CCObject* sender) = win 0x2edfa0, m1 0x556da4, imac 0x637030;
	void onMostDownloaded(cocos2d::CCObject* sender) = win 0x2f09e0, imac 0x6378d0, m1 0x557634;
	void onMostLikes(cocos2d::CCObject* sender) = win 0x2f0aa0;
	void onMostRecent(cocos2d::CCObject* sender) = win 0x2f0da0;
	void onSearch(cocos2d::CCObject* sender) = win 0x2f10a0, m1 0x557178, imac 0x637460;
	void onSearchMode(cocos2d::CCObject* sender) = win 0x2edf50, m1 0x556dc0, imac 0x637050;
	void onSearchUser(cocos2d::CCObject* sender) = win 0x2f12e0, m1 0x557358, imac 0x637630;
	void onSpecialDemon(cocos2d::CCObject* sender) = win 0x2edbb0, m1 0x557ee4, imac 0x638190;
	void onStarAward(cocos2d::CCObject* sender);
	void onSuggested(cocos2d::CCObject* sender) = win 0x2f0b60;
	void onTrending(cocos2d::CCObject* sender) = win 0x2f0c20;
	void toggleDifficulty(cocos2d::CCObject*) = win 0x2f18e0, m1 0x557a00, imac 0x637cc0;
	void toggleDifficultyNum(int, bool) = win 0x2f1c40, m1 0x5581b0, imac 0x638420;
	void toggleStar(cocos2d::CCObject*) = win 0x2f15d0, m1 0x5580c0, imac 0x638350;
	void toggleTime(cocos2d::CCObject*);
	void toggleTimeNum(int, bool) = win 0x2f2050, m1 0x558334, imac 0x638590;
	void updateSearchLabel(char const*) = win 0x2ef440;

	virtual void keyBackClicked() = win 0x2f21e0, m1 0x559628, imac 0x6398b0, ios 0x5b5a4;
	virtual void textInputOpened(CCTextInputNode*) = win 0x2ef220, m1 0x558b40, imac 0x638e00, ios 0x5adf4;
	virtual void textInputClosed(CCTextInputNode*) = win 0x2ef370, m1 0x558c20, imac 0x638ed0, ios 0x5af44;
	virtual void textChanged(CCTextInputNode*) = m1 0x558d30, imac 0x638fa0, ios 0x5afc4;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2ef1e0, m1 0x558aa8, imac 0x638d90, ios 0x5ad5c;
	virtual void demonFilterSelectClosed(int) = win 0x2edd10, m1 0x5585f0, imac 0x638880, ios 0x5aa14;

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
	~LevelSelectLayer() = m1 0x3add30, imac 0x4ba220;
	LevelSelectLayer() {}

	static LevelSelectLayer* create(int page) = win inline, imac 0x43b830, m1 0x3ade50, ios 0x40a26c {
		auto ret = new LevelSelectLayer();
		if (ret->init(page)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	cocos2d::ccColor3B colorForPage(int page) = win 0x2f8ee0, imac 0x43e410, m1 0x3b0928;
	cocos2d::ccColor3B getColorValue(int, int, float) = imac 0x43e170, m1 0x3b0680;
	bool init(int page) = win 0x2f7d60, ios 0x40a328, imac 0x43b920, m1 0x3adf18;
	void onBack(cocos2d::CCObject* sender) = win 0x2f9380, ios 0x40ad2c, imac 0x43c720, m1 0x3aebd4;
	void onDownload(cocos2d::CCObject* sender) = win 0x2f8b00, ios 0x40ac74, imac 0x43c670, m1 0x3aeb1c;
	void onInfo(cocos2d::CCObject* sender) = win 0x2f9500, ios 0x40ad74, imac 0x43c770, m1 0x3aec1c;
	void onNext(cocos2d::CCObject* sender) = win 0x2f9280, ios 0x40acfc, imac 0x43c6f0, m1 0x3aeba4;
	void onPlay(cocos2d::CCObject* sender) = imac 0x43e6e0, m1 0x3b0b24;
	void onPrev(cocos2d::CCObject* sender) = win 0x2f9300, ios 0x40accc, imac 0x43c6c0, m1 0x3aeb74;
	static cocos2d::CCScene* scene(int) = win 0x2f7c30, ios 0x40a220, imac 0x43b710, m1 0x3add68;
	void tryShowAd() = imac 0x43c790, m1 0x3aec38;

	virtual void keyBackClicked() = win 0x2f93d0, m1 0x3b09b8, imac 0x43e490, ios 0x40c220;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x2f9420, m1 0x3b0a4c, imac 0x43e530, ios 0x40c22c;
	virtual void updatePageWithObject(cocos2d::CCObject*, cocos2d::CCObject*) = win 0x2f8b50, m1 0x3aec58, imac 0x43c7b0, ios 0x40ad90;
	virtual void scrollLayerMoved(cocos2d::CCPoint) = win 0x2f8bc0, m1 0x3b052c, imac 0x43e000, ios 0x40bf10;

	float m_width;
	cocos2d::CCSprite* m_backgroundSprite;
	GJGroundLayer* m_groundLayer;
	BoomScrollLayer* m_scrollLayer;
	int m_unknown;
	int m_scrolls;
	bool m_masterDetectiveUnlocked;
}

[[link(android)]]
class LevelSettingsDelegate {
	virtual void levelSettingsUpdated() {}
}

[[link(android)]]
class LevelSettingsLayer : FLAlertLayer, ColorSelectDelegate, SelectArtDelegate, SelectSettingDelegate, FLAlertLayerProtocol, CustomSongLayerDelegate, TextInputDelegate {
	// virtual ~LevelSettingsLayer();

	static LevelSettingsLayer* create(LevelSettingsObject*, LevelEditorLayer*) = win 0x2fe200, m1 0x20e4dc, imac 0x267640;

	void createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = win 0x300d30, m1 0x211020, imac 0x26a520;
	bool init(LevelSettingsObject*, LevelEditorLayer*) = win 0x2fe3f0, m1 0x20e644, imac 0x267840;
	void onBGArt(cocos2d::CCObject* sender) = win 0x3015c0, m1 0x210dd0, imac 0x26a280;
	void onClose(cocos2d::CCObject* sender) = win 0x3011b0, m1 0x210f30, imac 0x26a410;
	void onCol(cocos2d::CCObject* sender) = win 0x3013b0, m1 0x2108d0, imac 0x269d30;
	void onDisable(cocos2d::CCObject* sender) = win 0x300f80, m1 0x211278, imac 0x26a730;
	void onFGArt(cocos2d::CCObject* sender) = win 0x301690, m1 0x210ed4, imac 0x26a3b0;
	void onGameplayMode(cocos2d::CCObject* sender) = win 0x300900, m1 0x210c48, imac 0x26a100;
	void onGArt(cocos2d::CCObject* sender) = win 0x301610, m1 0x210e0c, imac 0x26a2c0;
	void onLiveEdit(cocos2d::CCObject* sender) = win 0x3012f0, m1 0x210c04, imac 0x26a0c0;
	void onMode(cocos2d::CCObject* sender) = win 0x300ad0, m1 0x211334, imac 0x26a800;
	void onOptionToggle(cocos2d::CCObject* sender) = win 0x300fa0, m1 0x21128c, imac 0x26a750;
	void onSelectFont(cocos2d::CCObject* sender) = win 0x3016e0, m1 0x210f10, imac 0x26a3f0;
	void onSelectMode(cocos2d::CCObject* sender) = m1 0x2119a4, imac 0x26afa0;
	void onSelectSpeed(cocos2d::CCObject* sender) = m1 0x211a64, imac 0x26b060;
	void onSettings(cocos2d::CCObject* sender) = win 0x300a10, m1 0x211370, imac 0x26a850;
	void onShowPicker(cocos2d::CCObject* sender) = win 0x301340, m1 0x21087c, imac 0x269cd0;
	void onSpeed(cocos2d::CCObject* sender) = win 0x300a80, m1 0x2112f8, imac 0x26a7c0;
	void showPicker(ColorAction*) = m1 0x211b94, imac 0x26b180;
	void updateColorSprite(ColorChannelSprite*) = win 0x301460, m1 0x211bd4, imac 0x26b1f0;
	void updateColorSprites() = win 0x3013f0, m1 0x2108f0, imac 0x269d50;
	void updateGameplayModeButtons() = win 0x300940, m1 0x210d1c, imac 0x26a1d0;

	virtual void registerWithTouchDispatcher() = win 0x300cb0, m1 0x211810, imac 0x26ae10, ios 0x187c20;
	virtual void keyBackClicked() = win 0x301b50, m1 0x212060, imac 0x26b740, ios 0x188164;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xc1450, m1 0x211c80, imac 0x26b2a0, ios 0x187e48;
	virtual void colorSelectClosed(cocos2d::CCNode*) = win 0x3013e0, m1 0x211bc8, imac 0x26b1c0, ios 0x187d90;
	virtual void selectArtClosed(SelectArtLayer*) = win 0x301800, m1 0x211e60, imac 0x26b4d0, ios 0x187f64;
	virtual void selectSettingClosed(SelectSettingLayer*) = win 0x300b30, m1 0x211654, imac 0x26ac40, ios 0x187a78;
	virtual void textInputClosed(CCTextInputNode*) = win 0x89f80, m1 0x211868, imac 0x26ae60, ios 0x187c78;
	virtual void textChanged(CCTextInputNode*) = win 0x300fe0, m1 0x211884, imac 0x26aea0, ios 0x187c94;

	SongSelectNode* m_songSelectNode;
	Speed m_speed;
	ColorChannelSprite* m_bgColorSprite;
	ColorChannelSprite* m_gColorSprite;
	ColorChannelSprite* m_g2ColorSprite;
	ColorChannelSprite* m_lineColorSprite;
	ColorChannelSprite* m_mgColorSprite;
	ColorChannelSprite* m_mg2ColorSprite;
	cocos2d::CCSprite* m_moreColorsSprite;
	cocos2d::CCSprite* m_backgroundSprite;
	cocos2d::CCSprite* m_groundSprite;
	cocos2d::CCSprite* m_middlegroundSprite;
	cocos2d::CCSprite* m_speedSprite;
	cocos2d::CCSprite* m_modeSprite;
	LevelSettingsObject* m_settingsObject;
	void* m_unkPtr;
	cocos2d::CCArray* m_modeToggles;
	cocos2d::CCArray* m_speedButtons;
	LevelSettingsDelegate* m_delegate;
	LevelEditorLayer* m_editorLayer;
	CCTextInputNode* m_orderInput;
	CCTextInputNode* m_channelInput;
	CCMenuItemSpriteExtra* m_classicButton;
	CCMenuItemSpriteExtra* m_platformerButton;
	bool m_disableInput;
}

[[link(android)]]
class LevelSettingsObject : cocos2d::CCNode {
	// virtual ~LevelSettingsObject();

	static LevelSettingsObject* create() = win 0x2d1e50, imac 0xe1630, m1 0xc7908;

	gd::string getSaveString() = win 0x2d2280, imac 0xe7a00, m1 0xcd150;
	static LevelSettingsObject* objectFromDict(cocos2d::CCDictionary*) = win 0x2d3bb0, imac 0xfb9f0, m1 0xdd7ac;
	static LevelSettingsObject* objectFromString(gd::string const& str) = win inline, imac 0xe35f0, m1 0xc9300 {
		return objectFromDict(GameToolbox::stringSetupToDict(str, ","));
	}
	void setupColorsFromLegacyMode(cocos2d::CCDictionary*) = win 0x2d53d0, imac 0xfd0b0, m1 0xded64;
	bool shouldUseYSection() = win inline, imac 0xfb9d0, m1 0xdd78c {
		return m_platformerMode || m_dynamicLevelHeight;
	}

	virtual bool init() = m1 0xdd638, win 0x2d1f80, imac 0xfb840, ios 0x375b8c;

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

	bool m_unkBool;
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
	// property kA45
	bool m_propertykA45;
}

[[link(android)]]
class LevelTools {
	static int artistForAudio(int) = win 0x308880;
	static gd::string base64DecodeString(gd::string);
	static gd::string base64EncodeString(gd::string);
	static cocos2d::CCDictionary* createStarPackDict();
	static gd::string fbURLForArtist(int) = win 0x30a990;
	static int getAudioBPM(int);
	static gd::string getAudioFileName(int) = win 0x307cb0, m1 0x4605c4, imac 0x508fb0;
	static gd::string getAudioString(int) = imac 0x50aba0;
	static gd::string getAudioTitle(int) = win 0x307130, m1 0x45fe8c, imac 0x508a10;
	static TodoReturn getLastGameplayReversed();
	static TodoReturn getLastGameplayRotated();
	static TodoReturn getLastTimewarp();
	static GJGameLevel* getLevel(int, bool) = win 0x304880, imac 0x5064b0;
	static TodoReturn getLevelList();
	static SongInfoObject* getSongObject(int id) = win inline, m1 0x463120, imac 0x50c1e0 {
		auto artistID = artistForAudio(id);
		return SongInfoObject::create(id, getAudioTitle(id), nameForArtist(artistID), artistID, 0.f, "", "", "", 0, "", false, 0, -1);
	}
	static TodoReturn moveTriggerObjectsToArray(cocos2d::CCArray*, cocos2d::CCDictionary*, int);
	static gd::string nameForArtist(int) = win 0x308950;
	static gd::string ngURLForArtist(int) = win 0x309f70;
	static TodoReturn offsetBPMForTrack(int);
	static float posForTime(float time, cocos2d::CCArray* p1, int p2, bool p3, int& p4);
	static float posForTimeInternal(float time, cocos2d::CCArray* gameObjects, int speedmodValue, bool disabledSpeedmod, bool, bool, int&, int) = win 0x30c400;
	static TodoReturn sortChannelOrderObjects(cocos2d::CCArray*, cocos2d::CCDictionary*, bool);
	static TodoReturn sortSpeedObjects(cocos2d::CCArray*, GJBaseGameLayer*) = imac 0x50d060;
	static float timeForPos(cocos2d::CCPoint, cocos2d::CCArray*, int, int, int, bool, bool, bool, bool, int);
	static TodoReturn toggleDebugLogging(bool);
	static gd::string urlForAudio(int) = win 0x308c50;
	static TodoReturn valueForSpeedMod(int);
	static bool verifyLevelIntegrity(gd::string, int) = win 0x30ca60, imac 0x50c670, m1 0x46365c;
	static gd::string ytURLForArtist(int) = win 0x30a410;
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

	static LikeItemLayer* create(LikeItemType, int, int) = win 0x30d400, imac 0x603930, m1 0x52a0d0;

	bool init(LikeItemType, int, int) = win 0x30d500, imac 0x603aa0, m1 0x52a1f4;
	void onClose(cocos2d::CCObject* sender) = imac 0x603e70, m1 0x52a5a8;
	void onDislike(cocos2d::CCObject* sender) = win 0x30d8e0, imac 0x603f20, m1 0x52a65c;
	void onLike(cocos2d::CCObject* sender) = win 0x30d8d0, imac 0x603ea0, m1 0x52a5e4;
	void triggerLike(bool isLiked) = win 0x30d8f0;

	virtual void keyBackClicked() = m1 0x52a750, imac 0x604020, ios 0x25c8c8;

	LikeItemType m_itemType;
	int m_itemID;
	int m_commentSourceID;
	LikeItemDelegate* m_likeDelegate;
}

[[link(android)]]
class ListButtonBar : cocos2d::CCNode {
	// virtual ~ListButtonBar();

	static ListButtonBar* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int) = win 0x698f0, m1 0x372be8, imac 0x3f8aa0;

	int getPage() = m1 0x3732ec, imac 0x3f9200;
	void goToPage(int) = win 0x69f00, m1 0x3732f8, imac 0x3f9220;
	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int) = win 0x69a00, m1 0x372ccc, imac 0x3f8b70;
	void onLeft(cocos2d::CCObject* sender) = win 0x69fb0, m1 0x3731d4, imac 0x3f90d0;
	void onRight(cocos2d::CCObject* sender) = win 0x69f90, m1 0x373260, imac 0x3f9170;

	BoomScrollLayer* m_scrollLayer;
	cocos2d::CCArray* m_pages;
	ListButtonBarDelegate* m_delegate;
	bool m_useMoveAnimation;
}

[[link(android)]]
class ListButtonBarDelegate {
	virtual void listButtonBarSwitchedPage(ListButtonBar*, int);
}

[[link(android)]]
class ListButtonPage : cocos2d::CCLayer {
	// virtual ~ListButtonPage();

	static ListButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float) = win 0x69fd0, m1 0x3730cc, imac 0x3f8fc0;

	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float) = m1 0x373374, imac 0x3f92a0;
}

[[link(android)]]
class ListCell : TableViewCell {
	// virtual ~ListCell();
	ListCell(char const*, float, float);

	void loadFromObject(cocos2d::CCObject*, int, int, int);
	TodoReturn updateBGColor(int);

	virtual bool init() = m1 0x29e7b4, imac 0x30c690, ios 0x1d9f28;
	virtual void draw() = win 0x3b8a0, m1 0x29e800, imac 0x30c720, ios 0x1d9f30;
}

[[link(android)]]
class ListUploadDelegate {
	virtual void listUploadFinished(GJLevelList*);
	virtual void listUploadFailed(GJLevelList*, int);
}

[[link(android)]]
class LoadingCircle : cocos2d::CCLayerColor {
	// virtual ~LoadingCircle();
	LoadingCircle() {}

	static LoadingCircle* create() = win 0x6a3c0, imac 0x4c8dc0, m1 0x4280fc, ios 0x3a32a8;

	void fadeAndRemove() = win 0x6a6a0, m1 0x4283ac, imac 0x4c90f0, ios 0x3a3544;
	void show() = win 0x6a5a0, m1 0x4282b4, imac 0x4c9000, ios 0x3a3450;

	void setFade(bool fade) {
		m_fade = fade;
	}

	virtual bool init() = win 0x6a4c0, m1 0x4281f8, imac 0x4c8f30, ios 0x3a3394;
	virtual void draw() = win 0x6a740, m1 0x42845c, ios 0x3a35f8, imac 0x4c9180;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x4286c8, imac 0x4c9400, ios 0x3a3794 { return true; }
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3a379c {}
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3a37a0 {}
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3a37a4 {}
	virtual void registerWithTouchDispatcher() = win 0x6a760, m1 0x42846c, ios 0x3a3608, imac 0x4c91a0;

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

	static LoadingCircleSprite* create() = win 0x6a7b0, m1 0x4284a4, imac 0x4c91e0;

	void fadeInCircle(bool reverseOpacity) = win inline, m1 0x4285fc, imac 0x4c9350 {
		this->stopActionByTag(0);
		if (reverseOpacity) this->setOpacity(0);
		this->setVisible(true);
		auto fadeAction = cocos2d::CCFadeTo::create(.4f, 200);
		fadeAction->setTag(0);
		this->runAction(fadeAction);
	}
	void hideCircle() = win inline, m1 0x428680, imac 0x4c93c0 {
		this->stopActionByTag(0);
		this->setOpacity(0);
		this->setVisible(false);
	}

	virtual bool init() = win 0x6a840, m1 0x428590, imac 0x4c92e0, ios 0x3a36e0;
}

[[link(android)]]
class LoadingLayer : cocos2d::CCLayer {
	// virtual ~LoadingLayer();

	static LoadingLayer* create(bool) = m1 0x32be04, ios 0x1df9ac, imac 0x3a57b0; //incorrectly claimed as win 0x30da50 - this is scene

	const char* getLoadingString() = win 0x30ee90, ios 0x1e0130, imac 0x3a6010;
	bool init(bool) = win 0x30db60, imac 0x3a5890, m1 0x32bec4, ios 0x1dfa60;
	void loadAssets() = win 0x30e400, imac 0x3a60d0, m1 0x32c720, ios 0x1e020c;
	void loadingFinished() = imac 0x3a6870, m1 0x32ce30;
	static cocos2d::CCScene* scene(bool) = m1 0x32bd2c, win 0x30da50, ios 0x1df968, imac 0x3a56b0;
	void updateProgress(int) = win 0x30e380, ios 0x1e01a0, imac 0x3a6070;

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

	static LocalLevelManager* sharedState() = win 0x30f5d0, m1 0x527e4c, imac 0x601110, ios 0x1d1c58;
	inline static LocalLevelManager* get() {
		return LocalLevelManager::sharedState();
	}

	cocos2d::CCDictionary* getAllLevelsInDict() = win 0x30fa40;
	TodoReturn getAllLevelsWithName(gd::string);
	cocos2d::CCArray* getCreatedLevels(int folder) = win inline, m1 0x5290f4, imac 0x602660 {
		if (folder < 1) return m_localLevels;
		auto ret = cocos2d::CCArray::create();
		CCObject* obj;
		CCARRAY_FOREACH(m_localLevels, obj) {
			if (!obj) return ret;
			if (static_cast<GJGameLevel*>(obj)->m_levelFolder == folder) ret->addObject(obj);
		}
		return ret;
	}
	cocos2d::CCArray* getCreatedLists(int folder) = win inline, m1 0x529260, imac 0x6027c0 {
		if (folder < 1) return m_localLists;
		auto ret = cocos2d::CCArray::create();
		CCObject* obj;
		CCARRAY_FOREACH(m_localLists, obj) {
			if (!obj) return ret;
			if (static_cast<GJLevelList*>(obj)->m_folder == folder) ret->addObject(obj);
		}
		return ret;
	}
	cocos2d::CCDictionary* getLevelsInNameGroups() = m1 0x528540, imac 0x601940;
	gd::string getMainLevelString(int) = win 0x30f930;
	TodoReturn markLevelsAsUnmodified();
	TodoReturn moveLevelToTop(GJGameLevel*);
	TodoReturn reorderLevels();
	TodoReturn tryLoadMainLevelString(int) = ios 0x1d1db8;
	TodoReturn updateLevelOrder() = win 0x30ff30;
	TodoReturn updateLevelRevision() = win 0x30fba0, m1 0x528ad0, imac 0x601f90;

	virtual bool init() = win 0x30f670, m1 0x527fcc, imac 0x6012b0, ios 0x1d1d78;
	virtual void encodeDataTo(DS_Dictionary*) = win 0x310040, m1 0x52936c, imac 0x6028e0, ios 0x1d2a7c;
	virtual void dataLoaded(DS_Dictionary*) = win 0x3100a0, m1 0x5293c4, imac 0x602940, ios 0x1d2ad4;
	virtual void firstLoad() = win 0x30ffb0, m1 0x5292f0, imac 0x602850, ios 0x1d29b4;

	cocos2d::CCArray* m_localLevels;
	cocos2d::CCArray* m_localLists;
	gd::unordered_map<int, gd::string> m_mainLevels;
}

[[link(android)]]
class MapPackCell : TableViewCell {
	// virtual ~MapPackCell();
	MapPackCell(char const*, float, float);

	void loadFromMapPack(GJMapPack*) = win 0xaf940, m1 0x1ea984, imac 0x23ffb0;
	void onClaimReward(cocos2d::CCObject* sender) = win 0xb0540, m1 0x1f848c, imac 0x24e520;
	void onClick(cocos2d::CCObject* sender) = win 0xb0420, m1 0x1f8294, imac 0x24e330;
	void playCompleteEffect() = win 0xb05c0, m1 0x1f8508, imac 0x24e5a0;
	void reloadCell() = win inline, m1 0x1f44dc, imac 0x24a030 {
		this->loadFromMapPack(m_mapPack);
	}
	void updateBGColor(int idx) = win inline, m1 0x1eb4b8, imac 0x240b80 {
		m_backgroundLayer->setColor(idx % 2 == 0 ? cocos2d::ccColor3B { 161, 88, 44 } : cocos2d::ccColor3B { 194, 114, 62 });
		m_backgroundLayer->setOpacity(255);
	}

	virtual bool init() = win 0xaf8e0, m1 0x1f824c, imac 0x24e2e0, ios 0x1109d8;
	virtual void draw() = win 0xabd00, m1 0x1f8744, imac 0x24e7d0, ios 0x110dc8;

	GJMapPack* m_mapPack;
	CCMenuItemSpriteExtra* m_viewButton;
	CCMenuItemSpriteExtra* m_rewardButton;
	cocos2d::CCArray* m_rewardLabels;
	cocos2d::CCArray* m_rewardSprites;
}

[[link(android)]]
class MapSelectLayer : cocos2d::CCLayer {
	// virtual ~MapSelectLayer();

	static MapSelectLayer* create() = m1 0x20b194;

	TodoReturn checkTouchMonster(cocos2d::CCPoint);
	TodoReturn createObjectAtPoint(cocos2d::CCPoint);
	TodoReturn getConstrainedMapPos(cocos2d::CCPoint);
	void onBack(cocos2d::CCObject* sender);
	static cocos2d::CCScene* scene() = m1 0x20b150;

	virtual void update(float) = m1 0x20c178, imac 0x264ef0;
	virtual bool init() = m1 0x20b278, imac 0x263ea0;
	virtual void onExit() = m1 0x20c43c, imac 0x2651b0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x20ca70, imac 0x2658c0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x20cb6c, imac 0x2659d0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x20cd3c, imac 0x265bf0;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x20ce4c, imac 0x265cd0;
	virtual void registerWithTouchDispatcher() = m1 0x20ce68, imac 0x265d10;
	virtual void keyBackClicked() = m1 0x20c364, imac 0x2650d0;
	virtual void scrollWheel(float, float) = m1 0x20bf58, imac 0x264cb0;

	GJBigSprite* m_bigSprite;
	SimplePlayer* m_player;
	cocos2d::CCNode* m_mainLayer;
	bool m_unloadTexturesOnExit;
	bool m_backPressed;
	bool m_blockExit;
	bool m_inTouch;
	double m_lastTouchTime;
	bool m_editMode;
	cocos2d::CCPoint m_lastTouchPos;
	cocos2d::CCPoint m_mapPos;
	cocos2d::CCArray* m_monsters;
	LevelEditorLayer* m_editorLayer;
}

[[link(android), depends(GJGroundLayer), depends(GameToolbox)]]
class MenuGameLayer : cocos2d::CCLayer {
	// virtual ~MenuGameLayer();
	MenuGameLayer() = ios 0x3a4d88 {}

	static MenuGameLayer* create() = win inline, imac 0x5044b0, m1 0x45c1f0, ios 0x3a3858 {
		auto ret = new MenuGameLayer();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	void destroyPlayer() = win 0x3129e0, imac 0x505ac0, m1 0x45d628;
	cocos2d::ccColor3B getBGColor(int) = win 0x311340, imac 0x504a10, m1 0x45c6e4;
	void resetPlayer() = win 0x311db0, imac 0x504f10, m1 0x45cc04;
	void tryJump(float) = win 0x311610, imac 0x504ab0, m1 0x45c7e8;
	void updateColor(float) = win 0x3111f0, imac 0x504d10, m1 0x45ca58;
	void updateColors() = imac 0x5056e0, m1 0x45d2b8;

	virtual void update(float) = win 0x3118e0, m1 0x45d330, imac 0x505750, ios 0x3a477c;
	virtual bool init() = win 0x310ac0, m1 0x45c2d0, imac 0x5045b0, ios 0x3a38cc;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x312c60, m1 0x45d824, imac 0x505cc0, ios 0x3a4c0c;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3a4d24 {}
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x3a4d2c {}
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x6fd20, m1 0x45d94c, imac 0x505e20, ios 0x3a4d34;
	virtual void registerWithTouchDispatcher() = win 0x312e10, m1 0x45d968, imac 0x505e60, ios 0x3a4d50;

	bool m_videoOptionsOpen;
	float m_deltaCount;
	bool m_isDestroyingPlayer;
	int m_initCount;
	cocos2d::CCPoint m_unused1;
	PlayerObject* m_playerObject;
	cocos2d::CCSprite* m_backgroundSprite;
	GJGroundLayer* m_groundLayer;
	float m_backgroundSpeed;
}

[[link(android)]]
class MenuLayer : cocos2d::CCLayer, FLAlertLayerProtocol, GooglePlayDelegate {
	// virtual ~MenuLayer();

	static MenuLayer* get() {
		return GameManager::get()->m_menuLayer;
	}

	static cocos2d::CCScene* scene(bool) = win 0x312f60, imac 0x392b80, m1 0x31ad64, ios 0x275ef0;
	// static MenuLayer* create() = ios 0x275f90;

	void endGame() = win 0x315a30, imac 0x394f60, m1 0x31d060, ios 0x277ddc;
	void firstNetworkTest() = win 0x314950, imac 0x394820, m1 0x31c9d0, ios 0x2778b8;
	void onAchievements(cocos2d::CCObject* sender) = win 0x314e80, imac 0x394230, m1 0x31c39c, ios 0x2773d4;
	void onCreator(cocos2d::CCObject* sender) = win 0x315390, imac 0x3941a0, m1 0x31c320, ios 0x27737c;
	void onDaily(cocos2d::CCObject* sender) = win 0x314700, imac 0x3947c0, m1 0x31c96c, ios 0x277854;
	void onDiscord(cocos2d::CCObject* sender) = win 0x314d80, imac 0x394460, m1 0x31c60c, ios 0x277620;
	void onEveryplay(cocos2d::CCObject* sender) {}
	void onFacebook(cocos2d::CCObject* sender) = win 0x314d00, imac 0x3943e0, m1 0x31c57c, ios 0x277590;
	void onFreeLevels(cocos2d::CCObject* sender) = imac 0x394c40, m1 0x31cd68;
	void onFullVersion(cocos2d::CCObject* sender) = imac 0x394c20, m1 0x31cd48;
	void onGameCenter(cocos2d::CCObject* sender) = imac 0x3948b0, m1 0x31ca40, ios 0x2778cc;
	void onGarage(cocos2d::CCObject* sender) = win 0x315420, imac 0x394110, m1 0x31c2a4, ios 0x277324;
	void onGooglePlayGames(cocos2d::CCObject* sender) = imac 0x394a10, m1 0x31cb80;
	void onMoreGames(cocos2d::CCObject* sender) = win 0x314da0, imac 0x394480, m1 0x31c630, ios 0x277644;
	void onMyProfile(cocos2d::CCObject* sender) = win 0x314c40, imac 0x3945d0, m1 0x31c78c, ios 0x2776c8;
	void onNewgrounds(cocos2d::CCObject* sender) = win 0x3154b0, imac 0x3942f0, m1 0x31c480, ios 0x2774b8;
	void onOptions(cocos2d::CCObject* sender) = win 0x3150d0, imac 0x394270, m1 0x31c3e8, ios 0x277420;
	void onOptionsInstant() = win 0x3150e0, imac 0x392ce0, m1 0x31aeac, ios 0x276044;
	void onPlay(cocos2d::CCObject* sender) = win 0x315030, imac 0x394080, m1 0x31c224, ios 0x2772c8;
	void onQuit(cocos2d::CCObject* sender) = win 0x3155f0, imac 0x394500, m1 0x31c6b4;
	void onRobTop(cocos2d::CCObject* sender) = win 0x314ce0, imac 0x3943c0, m1 0x31c558, ios 0x27756c;
	void onStats(cocos2d::CCObject* sender) = win 0x315270, imac 0x3942b0, m1 0x31c434, ios 0x27746c;
	void onTrailer(cocos2d::CCObject* sender) = imac 0x394c90, m1 0x31cdb4;
	void onTwitch(cocos2d::CCObject* sender) = win 0x314d60, imac 0x394440, m1 0x31c5e8, ios 0x2775fc;
	void onTwitter(cocos2d::CCObject* sender) = win 0x314d20, imac 0x394400, m1 0x31c5a0, ios 0x2775b4;
	void onYouTube(cocos2d::CCObject* sender) = win 0x314d40, imac 0x394420, m1 0x31c5c4, ios 0x2775d8;
	void openOptions(bool videoOptions) = win 0x3150f0, imac 0x394b60, m1 0x31cca4, ios 0x277acc;
	void showGCQuestion() = imac 0x394900, m1 0x31ca88;
	void showMeltdownPromo() {}
	void showTOS() = win 0x314b20, imac 0x3947e0, m1 0x31c988, ios 0x277870;
	void syncPlatformAchievements(float) = imac 0x394b10, m1 0x31cc74;
	void tryShowAd(float) = imac 0x394850, m1 0x31c9e8;
	void updateUserProfileButton() = win 0x314850, imac 0x394630, m1 0x31c7ec, ios 0x277728;
	void videoOptionsClosed() = win inline, imac 0x394c00, m1 0x31cd3c {
		m_menuGameLayer->m_videoOptionsOpen = false;
	}
	void videoOptionsOpened() = win inline, imac 0x394be0, m1 0x31cd2c, ios 0x277b54 {
		m_menuGameLayer->m_videoOptionsOpen = true;
	}
	void willClose() = win 0x315710, imac 0x3928a0, m1 0x31ab68, ios 0x275e78;

	virtual bool init() = win 0x3130f0, m1 0x31af14, imac 0x392d40, ios 0x27604c;
	virtual void keyBackClicked() = win 0x3155e0, m1 0x31cdf4, imac 0x394cd0, ios 0x277b70;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x3159c0, m1 0x31d06c, imac 0x394f90, ios 0x277df8;
	virtual void googlePlaySignedIn() = win 0x314fe0, m1 0x31cba8, imac 0x394a40, ios 0x2779d4;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x3157b0, m1 0x31ce00, imac 0x394d00, ios 0x277c30;

	bool m_showingTOS;
	cocos2d::CCSprite* m_gpSprite;
	cocos2d::CCSprite* m_viewProfileSprite;
	cocos2d::CCLabelBMFont* m_profileLabel;
	CCMenuItemSpriteExtra* m_profileButton;
	void* m_unknown;
	MenuGameLayer* m_menuGameLayer;
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

	static MessagesProfilePage* create(bool) = win 0x315bd0, imac 0x2291f0, m1 0x1d6c40;

	void deleteSelected() = win 0x316cf0, imac 0x22a6f0, m1 0x1d7f44;
	bool init(bool) = win 0x315d70, imac 0x2293a0, m1 0x1d6d7c;
	bool isCorrect(char const*) = win 0x13abd0, imac 0x22ad80, m1 0x1d85fc;
	void loadPage(int) = win 0x317280, imac 0x22a2b0, m1 0x1d7b74;
	void onClose(cocos2d::CCObject* sender) = win 0x317110, imac 0x229d90, m1 0x1d76d4;
	void onDeleteSelected(cocos2d::CCObject* sender) = win 0x316a00, imac 0x229f50, m1 0x1d7878;
	void onNextPage(cocos2d::CCObject* sender) = win 0x317b30, imac 0x22a220, m1 0x1d7b04;
	void onPrevPage(cocos2d::CCObject* sender) = win 0x317b40, imac 0x22a200, m1 0x1d7af8;
	void onSentMessages(cocos2d::CCObject* sender) = win 0x316970, imac 0x229ec0, m1 0x1d77ec;
	void onToggleAllObjects(cocos2d::CCObject* sender) = win 0x316790, imac 0x22a140, m1 0x1d7a4c;
	void onUpdate(cocos2d::CCObject* sender) = win 0x316870, imac 0x22a240, m1 0x1d7b10;
	void setupCommentsBrowser(cocos2d::CCArray*) = win 0x317690, imac 0x22aea0, m1 0x1d8704;
	void untoggleAll() = win 0x3171e0, imac 0x22ac90, m1 0x1d853c;
	void updateLevelsLabel() = imac 0x22b7e0, m1 0x1d8ffc;
	void updatePageArrows() = imac 0x22b760, m1 0x1d8f98;

	virtual void registerWithTouchDispatcher() = win 0x41750, m1 0x1d85c4, imac 0x22ad40, ios 0x1d6ae0;
	virtual void keyBackClicked() = win 0x3171d0, m1 0x1d85b8, imac 0x22ad10, ios 0x1d6ad4;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x316f70, m1 0x1d8120, imac 0x22a8f0, ios 0x1d6808;
	virtual void onClosePopup(UploadActionPopup*) = win 0x13a970, m1 0x1d81b0, imac 0x22a960, ios 0x1d6898;
	virtual void uploadActionFinished(int, int) = win 0x316fa0, m1 0x1d8238, imac 0x22a9d0, ios 0x1d6908;
	virtual void uploadActionFailed(int, int) = win 0x13ab30, m1 0x1d83f4, imac 0x22ab70, ios 0x1d69f0;
	virtual void loadMessagesFinished(cocos2d::CCArray*, char const*) = win 0x317820, m1 0x1d8868, imac 0x22b010, ios 0x1d6d30;
	virtual void loadMessagesFailed(char const*, GJErrorCode) = win 0x13b320, m1 0x1d897c, imac 0x22b140, ios 0x1d6e44;
	virtual void forceReloadMessages(bool) = win 0x317970, m1 0x1d8aa8, imac 0x22b250, ios 0x1d6ee0;
	virtual void setupPageInfo(gd::string, char const*) = win 0x317990, m1 0x1d8adc, imac 0x22b290, ios 0x1d6f14;

	bool m_sentMessages;
	gd::string m_messageKey;
	cocos2d::CCLabelBMFont* m_levelsLabel;
	cocos2d::CCLabelBMFont* m_errorLabel;
	GJCommentListLayer* m_listLayer;
	LoadingCircle* m_loadingCircle;
	UploadActionPopup* m_actionPopup;
	void* m_unkPtr;
	CCMenuItemSpriteExtra* m_nextButton;
	CCMenuItemSpriteExtra* m_prevButton;
	CCMenuItemSpriteExtra* m_refreshButton;
	CCMenuItemToggler* m_toggleAllToggler;
	int m_itemCount;
	int m_pageStartIdx;
	int m_pageEndIdx;
	int m_page;
	bool m_toggledAll;
}

[[link(android)]]
class MoreOptionsLayer : FLAlertLayer, TextInputDelegate, GooglePlayDelegate, GJDropDownLayerDelegate {
	// virtual ~MoreOptionsLayer();
	MoreOptionsLayer() = ios 0xf508c {}

	static MoreOptionsLayer* create() = win inline, m1 0x6ae8a4, imac 0x7a73e0, ios 0xeed0c {
		auto ret = new MoreOptionsLayer();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	void addToggle(char const*, char const*, char const*) = win 0x353280, ios 0xf00d0, imac 0x7a8ca0, m1 0x6b004c;
	int countForPage(int) = win 0x3538e0;
	void goToPage(int) = win 0x353d00, ios 0xf07e4, m1 0x6b0bc8, imac 0x7a9860;
	void incrementCountForPage(int);
	const char* infoKey(int);
	cocos2d::CCLayer* layerForPage(int) = win 0x353b40;
	const char* layerKey(int);
	cocos2d::CCPoint nextPosition(int);
	const char* objectKey(int);
	cocos2d::CCArray* objectsForPage(int) = win 0x3539b0, ios 0xf0474;
	void offsetToNextPage(); // inlined on ios
	void onClose(cocos2d::CCObject* sender) = win 0x354fa0, ios 0xf0720, m1 0x6b0b04, imac 0x7a9780;
	void onFMODDebug(cocos2d::CCObject* sender) = win 0x354b10, ios 0xf05c0, m1 0x6b07e8, imac 0x7a9480;
	void onGPSignIn(cocos2d::CCObject* sender);
	void onGPSignOut(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender) = win 0x354dc0;
	void onKeybindings(cocos2d::CCObject* sender) = win 0xd9640, m1 0x6b1048, imac 0x7a9d10;
	void onNextPage(cocos2d::CCObject* sender) = win 0x353ce0, ios 0xf07d8, m1 0x6b0bbc, imac 0x7a9840;
	void onParental(cocos2d::CCObject* sender) = win 0x354cb0, ios 0xf0704;
	void onPrevPage(cocos2d::CCObject* sender) = win 0x353cf0, ios 0xf07cc, m1 0x6b0bb0, imac 0x7a9820;
	void onSongBrowser(cocos2d::CCObject* sender) = win 0x354aa0, ios 0xf0568, imac 0x7a9420, m1 0x6b0790;
	void onToggle(cocos2d::CCObject* sender) = win 0x3542a0;
	const char* pageKey(int);
	void toggleGP();

	virtual bool init() = win 0x351e90, imac 0x7a79a0, m1 0x6aed54, ios 0xeefb4;
	virtual void keyBackClicked() = win 0x355100, m1 0x6b1f1c, imac 0x7aac00, ios 0xf13c4;
	virtual void textInputShouldOffset(CCTextInputNode*, float) = win 0x79fd0, m1 0x6b1f28, imac 0x7aac30, ios 0xf13d0;
	virtual void textInputReturn(CCTextInputNode*) = win 0x7a030, m1 0x6b1ff8, imac 0x7aacf0, ios 0xf143c;
	virtual void googlePlaySignedIn() = win 0x355110, m1 0x6b20b0, imac 0x7aada0, ios 0xf149c;
	virtual void dropDownLayerWillClose(GJDropDownLayer*) = win 0x354c60, m1 0x6b1df8, imac 0x7aaa80, ios 0xf12e8;

	int m_page;
	int m_toggleCount;
	int m_pageCount;
	cocos2d::CCDictionary* m_variables;
	cocos2d::CCDictionary* m_objects;
	CCMenuItemSpriteExtra* m_leftBtn;
	CCMenuItemSpriteExtra* m_rightBtn;
	CCTextInputNode* m_offsetInput;
	CCMenuItemSpriteExtra* m_gpSignInBtn;
	CCMenuItemSpriteExtra* m_gpSignOutBtn;
	cocos2d::CCLabelBMFont* m_categoryLabel;
}

[[link(android)]]
class MoreSearchLayer : FLAlertLayer, TextInputDelegate {
	// virtual ~MoreSearchLayer();
	inline MoreSearchLayer() {}

	static MoreSearchLayer* create() = win inline, m1 0x5586e4, imac 0x638980, ios 0x5aaf8 {
		auto ret = new MoreSearchLayer();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	void audioNext(cocos2d::CCObject* sender) = win 0x2f6180, m1 0x55b558, imac 0x63bb40;
	void audioPrevious(cocos2d::CCObject* sender) = win 0x2f62a0, m1 0x55b4e4, imac 0x63bad0;
	void createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = win 0x2f6c50, m1 0x55adcc, imac 0x63b400;
	void onClose(cocos2d::CCObject* sender) = win 0x2f6eb0, m1 0x55ace8, imac 0x63b320;
	void onCoins(cocos2d::CCObject* sender) = win 0x2f55e0, m1 0x55b104, imac 0x63b6e0;
	void onCompleted(cocos2d::CCObject* sender) = win 0x2f4580, m1 0x55b084, imac 0x63b660;
	void onEpic(cocos2d::CCObject* sender) = win 0x2f49b0, m1 0x55b2d4, imac 0x63b8c0;
	void onFeatured(cocos2d::CCObject* sender) = win 0x2f47a0, m1 0x55b294, imac 0x63b880;
	void onFollowed(cocos2d::CCObject* sender) = m1 0x55b6a0, imac 0x63bc60;
	void onFriends(cocos2d::CCObject* sender) = m1 0x55b6e0, imac 0x63bca0;
	void onInfo(cocos2d::CCObject* sender) = win 0x2f6b00, m1 0x55b5c8, imac 0x63bbb0;
	void onLegendary(cocos2d::CCObject* sender) = win 0x2f4bb0, m1 0x55b314, imac 0x63b900;
	void onMythic(cocos2d::CCObject* sender) = win 0x2f4dd0, m1 0x55b354, imac 0x63b940;
	void onNoStar(cocos2d::CCObject* sender) = win 0x2f53e0, m1 0x55b254, imac 0x63b840;
	void onOriginal(cocos2d::CCObject* sender) = win 0x2f4fd0, m1 0x55b0c4, imac 0x63b6a0;
	void onSongFilter(cocos2d::CCObject* sender) = win 0x2f57e0, m1 0x55b184, imac 0x63b760;
	void onSongMode(cocos2d::CCObject* sender) = win 0x2f6500, m1 0x55b394, imac 0x63b980;
	void onTwoPlayer(cocos2d::CCObject* sender) = win 0x2f51e0, m1 0x55b144, imac 0x63b720;
	void onUncompleted(cocos2d::CCObject* sender) = win 0x2f4350, m1 0x55b044, imac 0x63b620;
	void selectSong(int songID) = win 0x2f63c0, m1 0x55b824, imac 0x63be20;
	void toggleSongNodes(bool, bool) = win 0x2f69c0, m1 0x55b720, imac 0x63bce0;
	void updateAudioLabel() = win 0x2f5ec0, m1 0x55b86c, imac 0x63be70;

	virtual bool init() = win 0x2f2540, m1 0x559b2c, imac 0x639f30, ios 0x5b884;
	virtual void keyBackClicked() = win 0x2f72b0, m1 0x55bb44, imac 0x63c100, ios 0x5d578;
	virtual void textInputShouldOffset(CCTextInputNode*, float) = win 0x79fd0, m1 0x55b9bc, imac 0x63bf90, ios 0x5d4ac;
	virtual void textInputReturn(CCTextInputNode*) = win 0x7a030, m1 0x55ba8c, imac 0x63c050, ios 0x5d518;

	cocos2d::CCLabelBMFont* m_audioTrackName;
	CCMenuItemSpriteExtra* m_songLeftBtn;
	CCMenuItemSpriteExtra* m_songRightBtn;
	CCMenuItemSpriteExtra* m_normalBtn;
	CCMenuItemSpriteExtra* m_customBtn;
	CCTextInputNode* m_enterSongID;
	cocos2d::CCArray* m_commonSongNodes;
	cocos2d::CCArray* m_normalSongNodes;
	cocos2d::CCArray* m_customSongNodes;
}

[[link(android)]]
class MoreVideoOptionsLayer : FLAlertLayer, TextInputDelegate {
	// virtual ~MoreVideoOptionsLayer();

	static MoreVideoOptionsLayer* create();

	void addToggle(char const* label, char const* key, char const* description);
	int countForPage(int);
	void goToPage(int);
	void incrementCountForPage(int);
	const char* infoKey(int);
	TodoReturn layerForPage(int);
	const char* layerKey(int);
	TodoReturn nextPosition(int);
	TodoReturn objectKey(int);
	TodoReturn objectsForPage(int);
	void onApplyFPS(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);
	const char* pageKey(int);
	void updateFPSButtons();

	virtual bool init() = m1 0x6b3ff8, imac 0x7ad0a0, ios 0xf2b2c;
	virtual void keyBackClicked() = win 0x359960, m1 0x6b6004, imac 0x7af160, ios 0xf3f80;
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

	virtual void keyBackClicked() = m1 0x401764, imac 0x49d3e0;
	virtual void keyDown(cocos2d::enumKeyCodes) = m1 0x401eec, imac 0x49dc10;
	virtual TodoReturn joinLobbyFinished(int) = m1 0x4018c4, imac 0x49d560;
	virtual TodoReturn joinLobbyFailed(int, GJMPErrorCode) = m1 0x401d30, imac 0x49da40;
	virtual TodoReturn updateComments() = m1 0x401c28, imac 0x49d910;
	virtual TodoReturn didUploadMPComment(int) = m1 0x401d18, imac 0x49da20;
	virtual void textInputOpened(CCTextInputNode*) = m1 0x401e44, imac 0x49db40;
	virtual void textInputClosed(CCTextInputNode*) = m1 0x401e4c, imac 0x49db60;
	virtual void textChanged(CCTextInputNode*) = m1 0x401e54, imac 0x49db80;
	virtual void keyUp(cocos2d::enumKeyCodes) = m1 0x401f10, imac 0x49dc50;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = m1 0x401e5c, imac 0x49dba0;
	virtual void uploadActionFinished(int, int) = m1 0x401f18, imac 0x49dc70;
	virtual void uploadActionFailed(int, int) = m1 0x402134, imac 0x49de90;
	virtual void onClosePopup(UploadActionPopup*) = m1 0x4022e8, imac 0x49e030;
}

[[link(android)]]
class MultilineBitmapFont : cocos2d::CCSprite {
	// virtual ~MultilineBitmapFont();
	MultilineBitmapFont() {
		m_specialDescriptors = nullptr;
		m_characters = nullptr;
		m_lines = nullptr;
		m_unkInt = 0;
		m_unkBool = false;
		m_unkPtr = nullptr;
		m_height = 0;
		m_width = 0;
		m_position = cocos2d::CCPointMake(0.f, 0.f);
		m_maxWidth = 0.f;
		m_disableColor = false;
	}

	static MultilineBitmapFont* createWithFont(char const* p0, gd::string p1, float p2, float p3, cocos2d::CCPoint p4, int p5, bool p6) = win inline, ios 0x244948, imac 0x490240, m1 0x3f5744 {
		auto ret = new MultilineBitmapFont();
		if (ret->initWithFont(p0, p1, p2, p3, p4, p5, p6)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}
	bool initWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int, bool) = win 0x6A9B0, m1 0x3f5910, imac 0x490410, ios 0x244a6c;
	unsigned int moveSpecialDescriptors(int, int) = win 0x6BBB0, m1 0x3f7494, imac 0x4921d0;
	gd::string readColorInfo(gd::string) = win 0x6B2E0, m1 0x3f6170, imac 0x490de0;
	gd::string stringWithMaxWidth(gd::string, float, float) = win 0x6BC40, m1 0x3f6dd8, imac 0x491aa0;

	virtual void setOpacity(unsigned char) = win 0x6b260, m1 0x3f73b4, imac 0x4920d0, ios 0x245d34;

	std::array<int, 300> m_hugeIntArray;
	cocos2d::CCArray* m_specialDescriptors;
	cocos2d::CCArray* m_characters;
	cocos2d::CCArray* m_lines;
	int m_unkInt;
	bool m_unkBool;
	void* m_unkPtr;
	int m_height;
	int m_width;
	cocos2d::CCPoint m_position;
	float m_maxWidth;
	bool m_disableColor;
}

[[link(android)]]
class MultiplayerLayer : cocos2d::CCLayer {
	// virtual ~MultiplayerLayer();

	static MultiplayerLayer* create();

	void onBack(cocos2d::CCObject* sender);
	void onBtn1(cocos2d::CCObject* sender);
	void onBtn2(cocos2d::CCObject* sender);
	static cocos2d::CCScene* scene();

	virtual bool init() = imac 0x39de70;
	virtual void keyBackClicked() = m1 0x3253e8, imac 0x39df60;
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

	static MusicBrowser* create(int, GJSongType) = win 0x317d60, m1 0x53c300, imac 0x618d70;

	bool init(int, GJSongType) = win 0x317f10, m1 0x53c460, imac 0x618f60;
	void onArtistFilters(cocos2d::CCObject* sender) = win 0x31a030, m1 0x53d310, imac 0x619ea0;
	void onClearSearch(cocos2d::CCObject* sender) = win 0x319d60, m1 0x53d254, imac 0x619de0;
	void onClose(cocos2d::CCObject* sender) = win 0x31a120, m1 0x53cf24, imac 0x619b20;
	void onPage(cocos2d::CCObject* sender) = win 0x319cb0, m1 0x53cfb0, imac 0x619bb0;
	void onPlaybackControl(cocos2d::CCObject* sender) = win 0x3190b0, m1 0x53d7c0, imac 0x61a360;
	void onSearch(cocos2d::CCObject* sender) = win 0x319dd0, m1 0x53d0b4, imac 0x619cb0;
	void onTagFilters(cocos2d::CCObject* sender) = win 0x319fc0, m1 0x53d2a8, imac 0x619e40;
	void onUpdateLibrary(cocos2d::CCObject* sender) = win 0x319230, m1 0x53d050, imac 0x619c40;
	void setupList(MusicSearchResult*) = win 0x319570, m1 0x53d948, imac 0x61a500;
	void setupSongControls() = win 0x318dd0, m1 0x53d384, imac 0x619f10;
	void sliderChanged(cocos2d::CCObject* sender) = win 0x126330, m1 0x53d7b8, imac 0x61a350;
	void trySetupMusicBrowser() = win 0x319290, m1 0x53d874, imac 0x61a420;
	void updatePageLabel() = m1 0x53e130, imac 0x61ada0;

	virtual void update(float) = win 0x318ad0, m1 0x53d678, imac 0x61a210, ios 0x3cac84;
	virtual void registerWithTouchDispatcher() = win 0x41750, m1 0x53e660, imac 0x61b300, ios 0x3cb780;
	virtual void keyBackClicked() = win 0x31a1b0, m1 0x53e544, imac 0x61b1d0, ios 0x3cb774;
	virtual void musicActionFinished(GJMusicAction) = win 0x3193d0, m1 0x53df48, imac 0x61ab70, ios 0x3cb35c;
	virtual void musicActionFailed(GJMusicAction) = win 0x319440, m1 0x53e018, imac 0x61ac70, ios 0x3cb37c;
	virtual void sliderEnded(Slider*) = win 0x319110, m1 0x53d7f4, imac 0x61a390, ios 0x3cae00;
	virtual void setTextPopupClosed(SetTextPopup*, gd::string) = win 0x319f20, m1 0x53e2ac, imac 0x61af20, ios 0x3cb5cc;
	virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = win 0x319c70, m1 0x53e244, imac 0x61aea0, ios 0x3cb564;
	virtual int getSelectedCellIdx() = win 0x319ca0, m1 0x53e29c, imac 0x61af00, ios 0x3cb5bc;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x31a0c0, m1 0x53e47c, imac 0x61b130, ios 0x3cb704;

	GJSongType m_songType;
	MusicSearchResult* m_searchResult;
	GJCommentListLayer* m_listLayer;
	cocos2d::CCLabelBMFont* m_infoLabel;
	cocos2d::CCLabelBMFont* m_pageLabel;
	CCMenuItemSpriteExtra* m_prevButton;
	CCMenuItemSpriteExtra* m_nextButton;
	CCMenuItemSpriteExtra* m_refreshButton;
	CCMenuItemSpriteExtra* m_clearSearchButton;
	CCMenuItemSpriteExtra* m_tagFilterButton;
	CCMenuItemSpriteExtra* m_artistFilterButton;
	LoadingCircleSprite* m_circleSprite;
	int m_songID;
	int m_libraryVersion;
	bool m_gettingURL;
	bool m_selectedCell;
	MusicBrowserDelegate* m_delegate;
	Slider* m_playSlider;
	cocos2d::CCLabelBMFont* m_playLabel;
	CCMenuItemSpriteExtra* m_playButton;
	win, mac {
		bool m_autoUpdating;
	}
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

	static MusicDownloadManager* sharedState() = win 0x31bca0, m1 0x4da8a4, imac 0x5912f0;

	void addDLToActive(char const* tag, cocos2d::CCObject* obj) = win 0x31def0, imac 0x597180, m1 0x4dff40;
	void addDLToActive(char const* tag);
	TodoReturn addMusicDownloadDelegate(MusicDownloadDelegate*) = win 0x31c430;
	void addSongObjectFromString(gd::string);
	void clearSong(int songID) = win inline, m1 0x4df1b8, imac 0x596330 {
		const char* key = cocos2d::CCString::createWithFormat("%i", songID)->getCString();
		m_songObjects->removeObjectForKey(key);
	}
	void clearUnusedSongs() = win 0x31d660;
	void createArtistsInfo(gd::string) = win 0x31d150;
	void createSongsInfo(gd::string, gd::string) = win 0x31cda0, imac 0x594970, m1 0x4ddb10;
	void dataLoaded(DS_Dictionary*) = win 0x31e950, imac 0x5980c0, m1 0x4e0c34;
	void deleteSFX(int);
	void deleteSong(int) = imac 0x5962e0, m1 0x4df158;
	void downloadCustomSong(int) = win 0x31f240, imac 0x596ad0, m1 0x4df8c4;
	void downloadMusicLibrary();
	void downloadSFX(int) = imac 0x59c9e0, m1 0x4e4cc8;
	void downloadSFXFailed(int, GJSongError);
	void downloadSFXFinished(int);
	void downloadSFXLibrary();
	void downloadSong(int) = win 0x31d960, imac 0x5965c0, m1 0x4df478;
	void downloadSongFailed(int, GJSongError) = win 0x323250;
	void downloadSongFinished(int);
	void encodeDataTo(DS_Dictionary*) = imac 0x598060, m1 0x4e0bdc;
	TodoReturn filterMusicByArtistID(int, cocos2d::CCArray*);
	TodoReturn filterMusicByTag(int, cocos2d::CCArray*);
	void firstSetup();
	TodoReturn generateCustomContentURL(gd::string) = win 0x3227c0;
	TodoReturn generateResourceAssetList();
	TodoReturn getAllMusicArtists(OptionsObjectDelegate*);
	TodoReturn getAllMusicObjects(GJSongType);
	TodoReturn getAllMusicTags(OptionsObjectDelegate*);
	TodoReturn getAllSFXObjects(bool);
	TodoReturn getAllSongs();
	void getCustomContentURL() = win 0x31ee40, imac 0x5986c0, m1 0x4e11c8;
	cocos2d::CCObject* getDLObject(char const*) = win 0x38f40;
	cocos2d::CCArray* getDownloadedSongs() = win 0x31d5a0, m1 0x4decf8, imac 0x595e00;
	TodoReturn getDownloadProgress(int);
	TodoReturn getMusicArtistForID(int);
	TodoReturn getMusicObject(int);
	TodoReturn getSFXDownloadKey(int);
	TodoReturn getSFXDownloadProgress(int);
	TodoReturn getSFXFolderObjectForID(int);
	TodoReturn getSFXFolderPathForID(int, bool);
	TodoReturn getSFXObject(int);
	TodoReturn getSongDownloadKey(int);
	void getSongInfo(int, bool) = win 0x31c680, imac 0x592de0, m1 0x4dc278;
	TodoReturn getSongInfoKey(int);
	SongInfoObject* getSongInfoObject(int) = win 0x31e070, imac 0x592c90, m1 0x4dc130;
	TodoReturn getSongPriority();
	void handleIt(bool, gd::string, gd::string, GJHttpType) = imac 0x591910, m1 0x4dadec;
	void handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	void handleItND(cocos2d::CCNode*, void*);
	TodoReturn incrementPriorityForSong(int) = imac 0x592c60;
	bool isDLActive(char const* tag) = m1 0x4dbec8, imac 0x592a50;
	bool isMusicLibraryLoaded();
	bool isResourceSFX(int);
	bool isResourceSong(int id) = win inline {
		return m_resourceSongUnorderedSet.contains(id);
	}
	bool isRunningActionForSongID(int) = imac 0x592930;
	bool isSFXDownloaded(int) = imac 0x5977f0, m1 0x4e04c0;
	bool isSFXLibraryLoaded();
	bool isSongDownloaded(int) = win 0x31e180, imac 0x595ea0, m1 0x4ded90;
	void limitDownloadedSongs() = imac 0x5961a0, m1 0x4df024;
	void loadSongInfoFailed(int, GJSongError);
	void loadSongInfoFinished(SongInfoObject*) = win 0x323150;
	void musicActionFailed(GJMusicAction);
	void musicActionFinished(GJMusicAction);
	TodoReturn nameForTagID(int);
	void onDownloadMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	void onDownloadSFXCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = imac 0x59ce00, m1 0x4e50c8;
	void onDownloadSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	void onDownloadSongCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = win 0x31dc50, imac 0x596ee0, m1 0x4dfcc8;
	void onGetCustomContentURLCompleted(gd::string, gd::string) = imac 0x592330, m1 0x4db830;
	void onGetSongInfoCompleted(gd::string, gd::string) = win 0x31c960, imac 0x592040, m1 0x4db560;
	void onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = imac 0x591590, m1 0x4daaac;
	void onTryUpdateMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	void onTryUpdateSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	void parseMusicLibrary();
	void parseSFXLibrary();
	gd::string pathForSFX(int) = win 0x31e730, m1 0x4e0800, imac 0x597c20;
	gd::string pathForSFXFolder(int) = win 0x31e5e0, m1 0x4e08e4, imac 0x597ce0; // for anyone who really needs it, this is inlined on imac <- no wonder why they call you silly
	gd::string pathForSong(int) = win 0x31e400, m1 0x4df2bc, imac 0x596410;
	gd::string pathForSongFolder(int) = win 0x31e2b0, imac 0x5975b0, m1 0x4e0314;
	void ProcessHttpGetRequest(gd::string, gd::string, cocos2d::extension::SEL_HttpResponse, int, int) = imac 0x5917a0, m1 0x4daccc;
	callback void ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType) = imac 0x591400, m1 0x4da968;
	void removeDLFromActive(char const*) = win 0x31dfc0, imac 0x592b30, m1 0x4dbfac;
	TodoReturn removeMusicDownloadDelegate(MusicDownloadDelegate*);
	static cocos2d::CCDictionary* responseToDict(gd::string, char const*);
	void showTOS(FLAlertLayerProtocol*) = win 0x31e7f0, imac 0x597f20;
	void songStateChanged() = win 0x31c620, imac 0x592c00, m1 0x4dc0a0;
	TodoReturn stopDownload(int) = imac 0x592a00, m1 0x4dbe6c;
	TodoReturn storeMusicObject(SongInfoObject*);
	TodoReturn storeSFXInfoObject(SFXInfoObject*);
	TodoReturn tryLoadLibraries();
	TodoReturn tryUpdateMusicLibrary();
	TodoReturn tryUpdateSFXLibrary();

	virtual bool init() = m1 0x4dba84, imac 0x592600, ios 0x15f740;

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
	MusicSearchResult() = win 0x31aeb0;

	static MusicSearchResult* create(GJSongType songType) = win inline, m1 0x4e9150, imac 0x5a16d0 {
		auto ret = new MusicSearchResult();
		if (ret->init(songType)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	cocos2d::CCArray* applyArtistFilters(cocos2d::CCArray*) = m1 0x4e95a8, imac 0x5a1c60;
	cocos2d::CCArray* applyTagFilters(cocos2d::CCArray*) = win 0x325a10, m1 0x4e93f0, imac 0x5a1a40;
	void createArtistFilterObjects() = m1 0x4e92e0, imac 0x5a18d0;
	void createTagFilterObjects() = m1 0x4e91d0, imac 0x5a1760;
	cocos2d::CCArray* getFilesMatchingSearch(cocos2d::CCArray*, gd::string) = win 0x326030, m1 0x4e9dec, imac 0x5a2770;
	bool init(GJSongType songType) = win inline, m1 0x4e91c4, imac 0x5a1750 {
		m_songType = songType;
		return true;
	}
	void updateFutureCount(cocos2d::CCArray*, cocos2d::CCArray*) = m1 0x4e974c, imac 0x5a1eb0;
	void updateObjects() = win inline, m1 0x4e9b0c, imac 0x5a23f0 {
		this->updateObjects(m_sortType);
	}

	virtual void updateObjects(AudioSortType) = win 0x325af0, m1 0x4e9b1c, imac 0x5a2410, ios 0x168170;
	virtual void stateChanged(OptionsObject*) = win 0x325ae0, m1 0x4e9aec, imac 0x5a23b0, ios 0x168140;

	cocos2d::CCArray* m_filterObjects;
	cocos2d::CCArray* m_tagFilterObjects;
	cocos2d::CCArray* m_artistFilterObjects;
	int m_startIndex;
	int m_audioType;
	gd::string m_searchQuery;
	AudioSortType m_sortType;
	bool m_tagFilter;
	bool m_artistFilter;
	GJSongType m_songType;
}

[[link(android)]]
class NCSInfoLayer {
	// virtual ~NCSInfoLayer();

	static NCSInfoLayer* create(CustomSongLayer*);

	bool init(CustomSongLayer*);
	void onClose(cocos2d::CCObject* sender);
	void onLibrary(cocos2d::CCObject* sender);
	void onNCS(cocos2d::CCObject* sender);
	void onNCSIO(cocos2d::CCObject* sender);
	void onNCSUsage(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = m1 0x1c42a0, imac 0x213260, ios 0x1518a8;
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

	virtual bool init() = m1 0x1c2fb8, imac 0x211f60, ios 0x1506e8;
	virtual void keyBackClicked() = m1 0x1c3abc, imac 0x212a50, ios 0x151150;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xc3890, m1 0x1c3a64, imac 0x2129f0, ios 0x1510f8;
}

[[link(android)]]
class NodePoint : cocos2d::CCObject {
	// virtual ~NodePoint();

	static NodePoint* create(cocos2d::CCPoint);

	bool init(cocos2d::CCPoint);

	cocos2d::CCPoint m_point;
}

[[link(android)]]
class NumberInputDelegate {
	virtual void numberInputClosed(NumberInputLayer*) {}
}

[[link(android)]]
class NumberInputLayer : FLAlertLayer {
	// virtual ~NumberInputLayer();
	NumberInputLayer() {
		m_okButton = nullptr;
		m_minimum = 4;
		m_maximum = 4;
		m_inputString = "";
		m_delegate = nullptr;
	}

	static NumberInputLayer* create() = win inline, m1 0x3fffa8, imac 0x49ba80 {
		auto ret = new NumberInputLayer();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	void deleteLast() = win inline, m1 0x400780, imac 0x49c2c0 {
		if (!m_inputString.empty()) {
			m_inputString = m_inputString.substr(0, m_inputString.size() - 1);
			this->updateNumberState();
		}
	}
	void inputNumber(int num) = win inline, m1 0x4009a0, imac 0x49c4d0 {
		if (m_inputString.size() < m_maximum) {
			m_inputString += cocos2d::CCString::createWithFormat("%i", num)->getCString();
			this->updateNumberState();
		}
	}
	void onClose(cocos2d::CCObject* sender) = win 0x82fc0, m1 0x4005f0, imac 0x49c160;
	void onDone(cocos2d::CCObject* sender) = win inline, m1 0x400948, imac 0x49c480 {
		if (m_delegate) m_delegate->numberInputClosed(this);
		this->onClose(nullptr);
	}
	void onNumber(cocos2d::CCObject* sender) = win 0x327160, m1 0x40062c, imac 0x49c190;
	void updateNumberState() = win 0x3272f0, m1 0x4006c4, imac 0x49c210;

	virtual bool init() = win 0x326bb0, m1 0x4000ac, imac 0x49bbe0, ios 0xfa73c;
	virtual void registerWithTouchDispatcher() = win 0x51ee0, m1 0x400b3c, imac 0x49c650, ios 0xfaefc;
	virtual void keyBackClicked() = win 0x82ff0, m1 0x400ac0, imac 0x49c5e0, ios 0xfae80;

	cocos2d::CCLabelBMFont* m_inputLabel;
	CCMenuItemSpriteExtra* m_okButton;
	int m_minimum;
	int m_maximum;
	gd::string m_inputString;
	NumberInputDelegate* m_delegate;
}

[[link(android)]]
class OBB2D : cocos2d::CCNode {
	// virtual ~OBB2D();

	static OBB2D* create(cocos2d::CCPoint, float, float, float) = win 0x6c390;

	void calculateWithCenter(cocos2d::CCPoint, float, float, float) = win 0x6c560, imac 0x5fdf50, m1 0x5250c0;
	TodoReturn computeAxes();
	TodoReturn getBoundingRect();
	bool init(cocos2d::CCPoint, float, float, float);
	TodoReturn orderCorners() = win 0x6c880;
	TodoReturn overlaps(OBB2D*);
	TodoReturn overlaps1Way(OBB2D*) = win 0x6cc10;
}

[[link(android)]]
class ObjectControlGameObject : EffectGameObject {
	// virtual ~ObjectControlGameObject();

	static ObjectControlGameObject* create();

	virtual bool init() = m1 0x19d0a0, imac 0x1e81c0, ios 0x3a09f4;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x19d544, imac 0x1e8710, ios 0x3a0bd4;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x19d0f0, imac 0x1e8210, ios 0x3a0a44;
}

[[link(android)]]
class ObjectManager : cocos2d::CCNode {
	// virtual ~ObjectManager();

	TodoReturn animLoaded(char const*);
	TodoReturn getDefinition(char const*);
	TodoReturn getGlobalAnimCopy(char const*);
	static ObjectManager* instance() = win 0x6cee0, ios 0x25c9a8;
	TodoReturn loadCopiedAnimations();
	TodoReturn loadCopiedSets();
	TodoReturn purgeObjectManager() = ios 0x25ca10;
	TodoReturn replaceAllOccurencesOfString(cocos2d::CCString*, cocos2d::CCString*, cocos2d::CCDictionary*);
	void setLoaded(char const*);
	void setup() = win 0x6cfd0, ios 0x25cea8;

	virtual bool init() = m1 0x6a957c, imac 0x7a1760, ios 0x25ca3c;
}

[[link(android)]]
class ObjectToolbox : cocos2d::CCNode {
	// virtual ~ObjectToolbox();

	static ObjectToolbox* sharedState() = win 0x327460, ios 0x287bdc, m1 0x591edc, imac 0x677660;

	TodoReturn allKeys();
	float gridNodeSizeForKey(int key) = win 0x34f350, m1 0x63ed04, imac 0x7276e0;
	const char* intKeyToFrame(int key) {
		return m_allKeys[key].c_str();
	}
	TodoReturn perspectiveBlockFrame(int);

	virtual bool init() = win 0x327520, m1 0x592004, imac 0x6777a0, ios 0x287cc0;

	gd::map<int, gd::string> m_allKeys;
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

	PAD = win 0x2c;
}

[[link(android)]]
class OptionsCell : TableViewCell {
	// virtual ~OptionsCell();
	OptionsCell(char const*, float, float);

	void loadFromObject(OptionsObject*) = win 0xb2d00, imac 0x23f7d0;
	void onToggleOption(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);
}

[[link(android)]]
class OptionsLayer : GJDropDownLayer, FLAlertLayerProtocol {
	// virtual ~OptionsLayer();
	inline OptionsLayer() {
		m_optionsMenu = nullptr;
		m_unknown = nullptr;
		m_layerChoice = 0;
		m_recordReplays = false;
		m_musicSlider = nullptr;
		m_sfxSlider = nullptr;
		m_lastVaultDialog = -1;
	}

	static OptionsLayer* create() = win inline, m1 0x6ad67c, imac 0x7a60c0, ios 0xedfcc {
		auto ret = new OptionsLayer();
		if (ret->init("Settings")) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	void exitLayer();
	void musicSliderChanged(cocos2d::CCObject*) = win 0x351110, imac 0x7a72e0, m1 0x6ae7b8, ios 0xeec30;
	void onAccount(cocos2d::CCObject* sender) = win 0x351bd0, ios 0xee9dc;
	void onHelp(cocos2d::CCObject* sender) = win 0x351b80, ios 0xee9ec;
	void onMenuMusic(cocos2d::CCObject* sender) = ios 0xeecd8;
	void onOptions(cocos2d::CCObject* sender) = win 0x3512f0, m1 0x6ae1f8, imac 0x7a6d70, ios 0xeea08;
	void onProgressBar(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender) = ios 0xeea24;
	void onRecordReplays(cocos2d::CCObject* sender);
	void onSecretVault(cocos2d::CCObject* sender) = win 0x351450, imac 0x7a7060, m1 0x6ae50c, ios 0xeea58;
	void onSoundtracks(cocos2d::CCObject* sender) = ios 0xeea38;
	void onSupport(cocos2d::CCObject* sender) = win 0x351c90, ios 0xeea48;
	void onVideo(cocos2d::CCObject* sender);
	void sfxSliderChanged(cocos2d::CCObject*) = win 0x351210, imac 0x7a7350, m1 0x6ae828, ios 0xeec9c;
	void tryEnableRecord();

	virtual void customSetup() = win 0x3504c0, imac 0x7a6300, m1 0x6ad80c, ios 0xee0d4;
	virtual void layerHidden() = win 0x351cb0, m1 0x6aebcc, imac 0x7a7790, ios 0xeee3c;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0xeeec8 {}

	cocos2d::CCMenu* m_optionsMenu;
	void* m_unknown;
	int m_layerChoice;
	bool m_recordReplays;
	Slider* m_musicSlider;
	Slider* m_sfxSlider;
	int m_lastVaultDialog;
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
	virtual void stateChanged(OptionsObject*);
}

[[link(android)]]
class OptionsScrollLayer : FLAlertLayer, TableViewCellDelegate {
	// virtual ~OptionsScrollLayer();

	static OptionsScrollLayer* create(cocos2d::CCArray*, bool, int);

	TodoReturn getRelevantObjects(cocos2d::CCArray*);
	bool init(cocos2d::CCArray*, bool, int);
	void onClose(cocos2d::CCObject* sender);
	void setupList(cocos2d::CCArray*);

	virtual void registerWithTouchDispatcher() = m1 0x53ee20, imac 0x61bc10, ios 0x3cbc24;
	virtual void keyBackClicked() = win 0x31a670, m1 0x53ecfc, imac 0x61bae0, ios 0x3cbc18;
	virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = m1 0x53ee58, imac 0x61bc50, ios 0x3cbc5c;
}

[[link(android)]]
class ParentalOptionsLayer : FLAlertLayer {
	// virtual ~ParentalOptionsLayer();

	static ParentalOptionsLayer* create();

	TodoReturn addToggle(char const*, char const*, char const*);
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

	virtual bool init() = m1 0x6b6320, imac 0x7af590, ios 0xf403c;
	virtual void keyBackClicked() = m1 0x6b79fc, imac 0x7b0d00, ios 0xf5010;
}

[[link(android)]]
class ParticleGameObject : EnhancedGameObject {
	// virtual ~ParticleGameObject();

	static ParticleGameObject* create();

	TodoReturn applyParticleSettings(cocos2d::CCParticleSystemQuad*);
	TodoReturn createAndAddCustomParticle();
	TodoReturn createParticlePreviewArt();
	void setParticleString(gd::string) = win 0x4746b0, m1 0x16c1a8, imac 0x1ad4d0;
	void updateParticle() = win 0x474740, imac 0x1ad560;
	TodoReturn updateParticleAngle(float, cocos2d::CCParticleSystemQuad*) = imac 0x1ad200;
	TodoReturn updateParticlePreviewArtOpacity(float);
	TodoReturn updateParticleScale(float);
	TodoReturn updateParticleStruct() = imac 0x1acd40;

	virtual bool init() = m1 0x16b5d0, imac 0x1ac8b0, ios 0x389fe0;
	virtual void setScaleX(float) = m1 0x16c6a8, imac 0x1ad990, ios 0x38ae40;
	virtual void setScaleY(float) = m1 0x16c718, imac 0x1ada00, ios 0x38ae8c;
	virtual void setScale(float) = m1 0x16c788, imac 0x1ada70, ios 0x38aed8;
	virtual void setRotation(float) = m1 0x16c5c4, imac 0x1ad8d0, ios 0x38ad5c;
	virtual void setRotationX(float) = m1 0x16c610, imac 0x1ad910, ios 0x38ada8;
	virtual void setRotationY(float) = m1 0x16c65c, imac 0x1ad950, ios 0x38adf4;
	virtual void setChildColor(cocos2d::ccColor3B const&) = m1 0x16c8ec, imac 0x1adbd0, ios 0x38b018;
	virtual void customSetup() = m1 0x16b874, imac 0x1acbc0, ios 0x38a1c8;
	virtual void addMainSpriteToParent(bool) = m1 0x16b920, imac 0x1acc90, ios 0x38a274;
	virtual void resetObject() = m1 0x16cab8, imac 0x1addc0, ios 0x38b1d8;
	virtual void deactivateObject(bool) = m1 0x16ca74, imac 0x1add80, ios 0x38b1a0;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x16b608, imac 0x1ac8e0, ios 0x38a018;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x16ccac, imac 0x1adfc0, ios 0x38b3b8;
	virtual void claimParticle() = m1 0x16ba00, imac 0x1acd70, ios 0x38a354;
	virtual void unclaimParticle() = m1 0x16bfc8, imac 0x1ad310, ios 0x38a8fc;
	virtual void particleWasActivated() = m1 0x16c054, imac 0x1ad390, ios 0x38a97c;
	virtual void setObjectColor(cocos2d::ccColor3B const&) = m1 0x16c7f8, imac 0x1adae0, ios 0x38af24;
	virtual void blendModeChanged() = m1 0x16b8f0, imac 0x1acc50, ios 0x38a244;
	virtual void updateParticleColor(cocos2d::ccColor3B const&) = m1 0x1a1520, imac 0x1ed4e0, ios 0x3a25c0;
	virtual void updateParticleOpacity(unsigned char) = m1 0x1a1524, imac 0x1ed4f0, ios 0x3a25c4;
	virtual void updateMainParticleOpacity(unsigned char) = m1 0x16c9e0, imac 0x1adcc0, ios 0x38b10c;
	virtual void updateSecondaryParticleOpacity(unsigned char) = m1 0x16ca2c, imac 0x1add20, ios 0x38b158;
	virtual void updateSyncedAnimation(float, int) = m1 0x16cb20, imac 0x1ade20, ios 0x38b240;
	virtual TodoReturn updateAnimateOnTrigger(bool) = m1 0x16cc5c, imac 0x1adf70, ios 0x38b368;

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

	virtual void draw() = m1 0x3e7efc, imac 0x481920, ios 0x2e2b28;
	virtual void visit() = m1 0x3e7d74, imac 0x4817a0, ios 0x2e2a48;
}

[[link(android)]]
class PauseLayer : CCBlockLayer, FLAlertLayerProtocol {
	// virtual ~PauseLayer();
	PauseLayer() = win inline {}

	static PauseLayer* create(bool p0) = win inline, imac 0x3d9bb0, m1 0x35a7b4, ios 0x14cadc {
		auto ret = new PauseLayer();
		if (ret && ret->init(p0)) {
			ret->autorelease();
			return ret;
		}
		CC_SAFE_DELETE(ret);
		return nullptr;
	}

	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	void goEdit() = win 0x35cac0, imac 0x3db8e0, m1 0x35c470;
	bool init(bool p0) = win inline, imac 0x3d9ca0, m1 0x35a880 {
		m_unkBool1 = p0;
		return CCBlockLayer::init();
	}
	void musicSliderChanged(cocos2d::CCObject*) = win 0x35c4d0, imac 0x3db520, m1 0x35c06c;
	void onEdit(cocos2d::CCObject* sender) = win 0x35c8f0, imac 0x3db1b0, m1 0x35bd28;
	void onHelp(cocos2d::CCObject* sender);
	void onNormalMode(cocos2d::CCObject* sender) = win 0x35c640, imac 0x3db360, m1 0x35bebc, ios 0x14e134;
	void onPracticeMode(cocos2d::CCObject* sender) = win 0x35c560, imac 0x3db300, m1 0x35be64, ios 0x14e0f8;
	void onQuit(cocos2d::CCObject* sender) = win 0x35cd70, imac 0x3db980, m1 0x35c4f4, ios 0x14e3a8;
	void onRecordReplays(cocos2d::CCObject* sender);
	void onReplay(cocos2d::CCObject* sender);
	void onRestart(cocos2d::CCObject* sender) = win 0x35c7b0, m1 0x35c00c, imac 0x3db4b0;
	void onRestartFull(cocos2d::CCObject* sender) = win 0x35c850, imac 0x3db2c0, m1 0x35be28;
	void onResume(cocos2d::CCObject* sender) = win 0x35c720, m1 0x35bdf0, imac 0x3db280, ios 0x14e084;
	void onSettings(cocos2d::CCObject* sender) = win 0x35b8e0, m1 0x35c048, imac 0x3db4f0;
	void onTime(cocos2d::CCObject* sender);
	void setupProgressBars();
	void sfxSliderChanged(cocos2d::CCObject*) = win 0x351210, imac 0x3db560, m1 0x35c0ac; // merged with OptionsLayer::sfxSliderChanged on Windows
	TodoReturn tryShowBanner(float);
	void tryQuit(cocos2d::CCObject* sender) = win 0x35cb90, imac 0x3db3b0, m1 0x35bf08, ios 0x14e164;

	virtual void keyBackClicked() = win 0x35cf90, m1 0x35c734, imac 0x3dbba0, ios 0x14e590;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x35cec0, m1 0x35c658, imac 0x3dbaa0, ios 0x14e4dc;
	virtual void customSetup() = win 0x35abc0, m1 0x35a888, imac 0x3d9cc0, ios 0x14cb9c;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x35cd20, m1 0x35c5a8, imac 0x3dba20, ios 0x14e444;
	virtual void keyUp(cocos2d::enumKeyCodes) = ios 0x14e588 {}

	bool m_unkBool1;
	bool m_unkBool2;
}

[[link(android)]]
class PlatformDownloadDelegate {
	virtual void downloadFinished(char const*) {}
	virtual void downloadFailed(char const*) {}
}

[[link(android)]]
class PlatformToolbox {
	static void activateGameCenter() = ios 0x1774e4;
	static TodoReturn copyToClipboard(gd::string);
	static TodoReturn doesFileExist(gd::string);
	static TodoReturn downloadAndSavePromoImage(gd::string, gd::string);
	static TodoReturn gameDidSave();
	static TodoReturn getDeviceRefreshRate();
	static cocos2d::CCSize getDisplaySize() = win 0x770e0, ios 0x17793c, m1 0x42d3ac, imac 0x4ce930;
	static TodoReturn getRawPath(char const*);
	static TodoReturn getUniqueUserID();
	static TodoReturn getUserID();
	static void hideCursor() = win inline, imac 0x4cdbb0, m1 0x42c87c, ios 0x1779b4 {
		cocos2d::CCEGLView::sharedOpenGLView()->showCursor(false);
	}
	static bool isControllerConnected() = win inline, imac 0x4cea70, m1 0x42d470, ios 0x177980 {
		#ifdef GEODE_IS_WINDOWS
			return cocos2d::CCApplication::sharedApplication()->getControllerConnected();
		#else
			return false;
		#endif
	}
	static bool isHD();
	static bool isLocalPlayerAuthenticated() = ios 0x1774e8;
	static bool isLowMemoryDevice();
	static bool isNetworkAvailable() = m1 0x42c7f0, imac 0x4cda60;
	static bool isSignedInGooglePlay();
	static TodoReturn loadAndDecryptFileToString(char const*, char const*);
	static TodoReturn logEvent(char const*);
	static TodoReturn onGameLaunch();
	static void onNativePause() = ios 0x1774c8;
	static TodoReturn onNativeResume();
	static TodoReturn onToggleKeyboard();
	static TodoReturn openAppPage();
	static void platformShutdown();
	static TodoReturn refreshWindow();
	static TodoReturn reportAchievementWithID(char const*, int);
	static TodoReturn reportLoadingFinished();
	static void resizeWindow(float width, float height) = ios 0x177938;
	static TodoReturn saveAndEncryptStringToFile(gd::string, char const*, char const*);
	static TodoReturn sendMail(char const*, char const*, char const*);
	static void setBlockBackButton(bool);
	static void setKeyboardState(bool);
	static TodoReturn shouldResumeSound();
	static void showAchievements();
	static void showCursor() = win inline, imac 0x4cdbd0, m1 0x42c894 {
		cocos2d::CCEGLView::sharedOpenGLView()->showCursor(true);
	}
	static TodoReturn signInGooglePlay();
	static TodoReturn signOutGooglePlay();
	static TodoReturn spriteFromSavedFile(gd::string);
	static TodoReturn toggleCallGLFinish(bool);
	static TodoReturn toggleCPUSleepMode(bool);
	static void toggleForceTimer(bool) = ios 0x17798c;
	static void toggleFullScreen(bool) = ios 0x177934;
	static void toggleLockCursor(bool) = ios 0x1779c4;
	static TodoReturn toggleMouseControl(bool);
	static void toggleSmoothFix(bool) = ios 0x177990;
	static void toggleVerticalSync(bool) = ios 0x177988;
	static TodoReturn tryShowRateDialog(gd::string);
	static TodoReturn updateMouseControl();
	static TodoReturn updateWindowedSize(float, float);
}

class PlayerButtonCommand {
    PlayerButton m_button;
    bool m_isPush;
    bool m_isPlayer2;
    int m_step;
}

[[link(android)]]
class PlayerCheckpoint : cocos2d::CCNode {
	// virtual ~PlayerCheckpoint();
	PlayerCheckpoint() = ios 0x12d090;

	static PlayerCheckpoint* create() = win 0x3979a0, ios 0x122a24;

	virtual bool init() = imac 0xbfbc0, m1 0xab20c, ios 0x1250a8;

	cocos2d::CCPoint m_position;
	cocos2d::CCPoint m_lastPosition;
	int m_unkInt1;
	bool m_isUpsideDown;
	bool m_unk7b3;
	bool m_isShip;
	bool m_isBall;
	bool m_isBird;
	bool m_isSwing;
	bool m_isDart;
	bool m_isRobot;
	bool m_isSpider;
	bool m_isOnGround;
	PAD = win 0x2;
	int m_hasGhostTrail;
	uint8_t m_unkBytes1[4];
	float m_speed;
	bool m_isHidden;
	bool m_isGoingLeft;
	uint8_t m_unkBytes2[34];
	bool m_hideAttemptCount;
	uint8_t m_unkBytes3[7];
	bool m_unkBool;
	float m_unkFloat1;
	int m_possiblyFlags;
	int m_timeOrPercentRelated;
	uint8_t m_unkBytes4[4];
	gd::vector<float> m_yPositionVector;
	uint8_t m_unkBytes5[8];
}

[[link(android)]]
class PlayerControlGameObject : EffectGameObject {
	// virtual ~PlayerControlGameObject();

	static PlayerControlGameObject* create();

	virtual bool init() = m1 0x19c228, imac 0x1e6ff0, ios 0x3a0430;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x19ce7c, imac 0x1e7f20, ios 0x3a07dc;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x19c278, imac 0x1e7040, ios 0x3a0480;
}

[[link(android)]]
class PlayerFireBoostSprite : cocos2d::CCSprite {
	// virtual ~PlayerFireBoostSprite();

	static PlayerFireBoostSprite* create() = win 0x380cd0, ios 0x229214, imac 0x4051c0;

	void animateFireIn() = win inline, m1 0x396058, imac 0x4211c0 {
		this->stopAllActions();

		auto scaleto = cocos2d::CCScaleTo::create(0.06f, m_size * 0.6f, m_size * 1.5f);
		auto callfunc = cocos2d::CCCallFunc::create(this, callfunc_selector(PlayerFireBoostSprite::loopFireAnimation));
		auto sequence = cocos2d::CCSequence::create(scaleto, callfunc, nullptr);
		this->runAction(sequence);
	}
	void animateFireOut() = win inline, m1 0x3960d8, imac 0x421230 {
		this->stopAllActions();
		auto action = cocos2d::CCScaleTo::create(0.4f, 0.01f, 0.01f);
		this->runAction(action);
	}
	void loopFireAnimation() = win 0x380dd0, m1 0x395d88, imac 0x420f00;

	virtual bool init() = m1 0x39aa50, imac 0x4262a0, ios 0x23e378;

	float m_size;
}

[[link(android), depends(GJPointDouble)]]
class PlayerObject : GameObject, AnimatedSpriteDelegate {
	// virtual ~PlayerObject();
	// PlayerObject() = ios 0x23e4dc;

	static PlayerObject* create(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool) = win 0x3648d0, m1 0x37c5c0, imac 0x403500, ios 0x227d30;

	void activateStreak() = win 0x37e0a0, imac 0x40c550, m1 0x38447c;
	TodoReturn addAllParticles() = win 0x3667D0;
	TodoReturn addToTouchedRings(RingObject*) = imac 0x41ecf0, m1 0x393d24;
	TodoReturn addToYVelocity(double, int);
	void animatePlatformerJump(float) = win 0x36adb0, m1 0x384c3c, imac 0x40cdb0;
	void boostPlayer(float) = win 0x37def0, imac 0x40f770, m1 0x386edc;
	void bumpPlayer(float, int, bool, GameObject*) = win 0x37d6b0, imac 0x423f30, m1 0x398b20;
	TodoReturn buttonDown(PlayerButton);
	TodoReturn canStickToGround();
	void checkSnapJumpToObject(GameObject*) = m1 0x38c5a8;
	void collidedWithObject(float, GameObject*, cocos2d::CCRect, bool) = win 0x36fa40, m1 0x38714c, imac 0x40fa20;
	void collidedWithObject(float, GameObject*) = m1 0x38c4ec, imac 0x416340;
	int collidedWithObjectInternal(float, GameObject*, cocos2d::CCRect, bool) = win 0x36fb00, m1 0x388d80, imac 0x411b50;
	void collidedWithSlope(float dt, GameObject* object , bool forced) = imac 0x40fac0;
	void collidedWithSlopeInternal(float dt, GameObject* object, bool forced) = win 0x36d8a0;
	TodoReturn convertToClosestRotation(float);
	void copyAttributes(PlayerObject*) = win 0x37e4b0, imac 0x4249f0, m1 0x3994b4;
	void createFadeOutDartStreak() = win 0x376690;
	void createRobot(int) = win 0x366050, m1 0x37dcd4, imac 0x404e20;
	void createSpider(int) = win 0x366410, m1 0x37e0ac, imac 0x405290;
	void deactivateParticle() = m1 0x3828c8, imac 0x40a870; // inlined on windows
	void deactivateStreak(bool) = imac 0x405d80, m1 0x37eab0;
	TodoReturn destroyFromHitHead();
	TodoReturn didHitHead();
	void disableCustomGlowColor() {
		m_hasCustomGlowColor = false;
	}
	void disablePlayerControls() = win 0x37d3c0, m1 0x3987e8, imac 0x423c30;
	void disableSwingFire() = win 0x378f10, m1 0x3924d4, imac 0x41d060, ios 0x238034;
	void doReversePlayer(bool) = win 0x376540, m1 0x383584, imac 0x40b5e0;
	void enableCustomGlowColor(cocos2d::_ccColor3B const& color) {
		m_hasCustomGlowColor = true;
		m_glowColor = color;
	}
	void enablePlayerControls() = win 0x37d510, m1 0x398844, imac 0x423c90;
	void exitPlatformerAnimateJump() = m1 0x383798;
	void fadeOutStreak2(float) = win 0x37e1a0, m1 0x392438, imac 0x41cfd0, ios 0x237f98;
	void flashPlayer(float, float, cocos2d::ccColor3B mainColor, cocos2d::ccColor3B secondColor) = imac 0x418210;
	void flipGravity(bool, bool) = win 0x3781e0, m1 0x3848b4, imac 0x40c9c0;
	TodoReturn flipMod();
	void gameEventTriggered(int p0, int p1) = win inline, m1 0x384c24, imac 0x40cd80 {
		if (this->m_gameLayer) {
    		this->m_gameLayer->gameEventTriggered(static_cast<GJGameEvent>(p0), p1, static_cast<int>(this->m_savedObjectType));
		}
	}
	bool getActiveMode() = imac 0x41f680, m1 0x394684;
	TodoReturn getCurrentXVelocity();
	TodoReturn getModifiedSlopeYVel();
	TodoReturn getOldPosition(float);
	cocos2d::ccColor3B getSecondColor();
	TodoReturn getYVelocity();
	TodoReturn gravityDown();
	TodoReturn gravityUp();
	TodoReturn handlePlayerCommand(int);
	TodoReturn handleRotatedCollisionInternal(float, GameObject*, cocos2d::CCRect, bool, bool, bool) = win 0x36d1d0;
	TodoReturn handleRotatedObjectCollision(float p0, GameObject* p1, cocos2d::CCRect p2, bool p3) = win inline {
		return this->handleRotatedCollisionInternal(p0, p1, p2, p3, false, false);
	}
	TodoReturn handleRotatedSlopeCollision(float, GameObject*, bool);
	TodoReturn hardFlipGravity();
	void hitGround(GameObject*, bool) = win 0x379f40, m1 0x38b4b4, imac 0x415160;
	TodoReturn hitGroundNoJump(GameObject*, bool);
	void incrementJumps() = win 0x36acd0, imac 0x40c980, m1 0x38487c;
	bool init(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool) = win 0x364970, m1 0x37c678, imac 0x403590, ios 0x227dd4;
	bool isBoostValid(float);
	bool isFlying() = win inline, imac 0x40a810, m1 0x38285c {
		return m_isShip || m_isBird || m_isDart || m_isSwing;
	}
	bool isInBasicMode() = win inline, m1 0x38d8e0, imac 0x4179f0 {
		return !this->isFlying() && !m_isBall && !m_isSpider;
	}
	bool isInNormalMode() = win inline, m1 0x3812f4, imac 0x408e90 {
		return !this->isFlying() && !m_isBall && !m_isRobot && !m_isSpider;
	}
	bool isSafeFlip(float) = m1 0x38b488, imac 0x415120;
	bool isSafeHeadTest();
	bool isSafeMode(float);
	bool isSafeSpiderFlip(float);
	TodoReturn levelFlipFinished() = win 0x3698a0;
	bool levelFlipping() = win 0x379500, m1 inline {
		return m_playEffects && PlayLayer::get()->isFlipping();																			
	}
	TodoReturn levelWillFlip() = imac 0x40c6c0;
	void loadFromCheckpoint(PlayerCheckpoint*) = win 0x37f9d0, imac 0x425520, m1 0x399e74;
	void lockPlayer() = win 0x37d2e0, m1 0x3986a8, imac 0x423ad0;
	TodoReturn logValues();
	void modeDidChange() = imac 0x4201b0, m1 0x395100;
	TodoReturn performSlideCheck();
	void placeStreakPoint() = win 0x37e690, m1 0x384544, imac 0x40c630;
	TodoReturn playBumpEffect(int, GameObject*) = win 0x37da60;
	TodoReturn playBurstEffect();
	void playCompleteEffect(bool, bool) = win 0x3621d0, m1 0x1bfebc, imac 0x20eb00, ios 0x63758;
	void playDeathEffect() = win 0x35d0c0, imac 0x206990, m1 0x1b7ef4, ios 0x5de28;
	void playDynamicSpiderRun() = win 0x37f4e0;
	void playerDestroyed(bool) = win 0x375d70, imac 0x41cdd0, m1 0x392264, ios 0x237eb8;
	bool playerIsFalling(float);
	TodoReturn playerIsFallingBugged();
	TodoReturn playerIsMovingUp();
	TodoReturn playerTeleported();
	TodoReturn playingEndEffect() = m1 0x398a84, imac 0x423eb0; // inlined on windows
	void playSpawnEffect() = win 0x3754b0, imac 0x41c710, m1 0x391bb4;
	void playSpiderDashEffect(cocos2d::CCPoint from, cocos2d::CCPoint to) = win 0x373200, imac 0x417a50, m1 0x38d940;
	void postCollision(float) = win 0x36b6b0, m1 0x385734, imac 0x40d9d0;
	void preCollision() = m1 0x3855d8, imac 0x40d7d0;
	bool preSlopeCollision(float, GameObject*) = win 0x36d370;
	void propellPlayer(float, bool, int) = win 0x37d860, imac 0x424240, m1 0x398e28;
	bool pushButton(PlayerButton) = win 0x375f70, imac 0x41d330, m1 0x392760;
	TodoReturn pushDown();
	void pushPlayer(float);
	TodoReturn redirectDash(float);
	TodoReturn redirectPlayerForce(float, float, float, float);
	void releaseAllButtons() = win 0x37d110, imac 0x423a90, m1 0x398664;
	bool releaseButton(PlayerButton) = win 0x376200, imac 0x41e7b0, m1 0x393880;
	TodoReturn removeAllParticles();
	void removePendingCheckpoint() = win 0x3801a0, imac 0x41bf70;
	TodoReturn removePlacedCheckpoint() = imac 0x41cd90;
	TodoReturn resetAllParticles();
	TodoReturn resetCollisionLog(bool);
	TodoReturn resetCollisionValues();
	void resetPlayerIcon() = win 0x3792f0, m1 0x394f20, imac 0x41ffb0;
	TodoReturn resetStateVariables();
	void resetStreak() = win 0x369730, imac 0x40c460;
	TodoReturn resetTouchedRings() = win 0x376310;
	TodoReturn reverseMod();
	void reversePlayer(EffectGameObject*) = win 0x376460, imac 0x41ed50, m1 0x393d7c;
	void ringJump(RingObject*, bool) = win 0x376c30, imac 0x41d7c0, m1 0x392b20;
	void rotateGameplay(int, int, bool, float, float, bool, bool);
	TodoReturn rotateGameplayObject(GameObject*) = win 0x36f480;
	void rotateGameplayOnly(bool param) = win inline {
		m_isSideways = param;
		this->updatePlayerArt();
	}
	TodoReturn rotatePreSlopeObjects();
	void runBallRotation(float) = win 0x36b350;
	void runBallRotation2() = win 0x36b5b0;
	void runNormalRotation() {
		this->runNormalRotation(false, 1.0f);
	}
	void runNormalRotation(bool, float) = win 0x9999999, m1 0x381364, imac 0x408ef0;
	void runRotateAction(bool, int) = win 0x36b480;
	TodoReturn saveToCheckpoint(PlayerCheckpoint*);
	void setSecondColor(cocos2d::ccColor3B const&) = win 0x37b3b0, m1 0x37fac8, imac 0x407090;
	void setupStreak() = win 0x366920, m1 0x37e59c, imac 0x405810;
	void setYVelocity(double velocity, int) = win 0x366e70 {
		double rounded = (int)velocity;
		if (velocity != rounded) {
		    m_yVelocity = std::round((velocity - rounded) * 1000) / 1000. + rounded;
		} else {
			m_yVelocity = velocity;
		}
	}
	TodoReturn spawnCircle();
	TodoReturn spawnCircle2();
	TodoReturn spawnDualCircle();
	TodoReturn spawnFromPlayer(PlayerObject*, bool);
	TodoReturn spawnPortalCircle(cocos2d::ccColor3B, float) = win 0x375790;
	TodoReturn spawnScaleCircle() = imac 0x41cb40;
	TodoReturn specialGroundHit();
	TodoReturn speedDown();
	TodoReturn speedUp();
	void spiderTestJump(bool) = win 0x3723d0, imac 0x40c870, m1 0x38476c;
	void spiderTestJumpInternal(bool) = win 0x372480, imac 0x416c70, m1 0x38cd24;
	void spiderTestJumpX(bool);
	void spiderTestJumpY(bool);
	void startDashing(DashRingObject*) = win 0x3739a0;
	TodoReturn stopBurstEffect();
	void stopDashing() = win 0x3746b0, m1 0x382b40, imac 0x40ab10, ios 0x22cf40;
	void stopParticles() = win 0x3699b0, ios 0x22e478;
	void stopPlatformerJumpAnimation() = win 0x36b190, m1 0x3850f0, imac 0x40d290;
	TodoReturn stopRotation(bool, int);
	void stopStreak2() = imac 0x424840, m1 0x39934c;
	void storeCollision(PlayerCollisionDirection, int);
	TodoReturn switchedDirTo(PlayerButton) = win 0x375e60;
	void switchedToMode(GameObjectType) = win 0x379e40, m1 0x391544, imac 0x41bfc0;
	TodoReturn testForMoving(float, GameObject*);
	void toggleBirdMode(bool, bool) = win 0x378830, m1 0x395124, imac 0x4201d0;
	void toggleDartMode(bool, bool) = win 0x378fa0, m1 0x396120, imac 0x421270;
	void toggleFlyMode(bool, bool) = win 0x378500, m1 0x3946ec, imac 0x41f6e0;
	void toggleGhostEffect(GhostType) = win 0x37ce40, m1 0x391a70, imac 0x41c590, ios 0x23783c;
	void togglePlatformerMode(bool val) {
        m_isPlatformer = val;
    }
	void togglePlayerScale(bool, bool) = win 0x37e710, m1 0x3916bc, imac 0x41c110;
	void toggleRobotMode(bool, bool) = win 0x379700, m1 0x396af0, imac 0x421cf0;
	void toggleRollMode(bool, bool) = win 0x379580, m1 0x396724, imac 0x421930;
	void toggleSpiderMode(bool, bool) = win 0x379a80, m1 0x396f64, imac 0x4221b0;
	void toggleSwingMode(bool, bool) = win 0x378b30, m1 0x395760, imac 0x420890;
	void toggleVisibility(bool) = win 0x369590;
	TodoReturn touchedObject(GameObject*) = imac 0x425980;
	void tryPlaceCheckpoint() = m1 0x383ebc, imac 0x40bf00;
	TodoReturn unrotateGameplayObject(GameObject*) = win 0x36f770;
	TodoReturn unrotatePreSlopeObjects();
	TodoReturn updateCheckpointMode(bool);
	TodoReturn updateCheckpointTest();
	void updateCollide(PlayerCollisionDirection, GameObject*) = win 0x372080, m1 0x38bb70, imac 0x415900;
	void updateCollideBottom(float, GameObject*) = m1 0x38c9ec;
	void updateCollideLeft(float, GameObject*);
	void updateCollideRight(float, GameObject*);
	void updateCollideTop(float, GameObject*) = m1 0x38c960;
	void updateDashAnimation();
	void updateDashArt() = win 0x3741f0, imac 0x41a140;
	void updateEffects(float param) = win inline, imac 0x40bd80, m1 0x383d54 {
		m_waveTrail->updateStroke(param);
	}
	void updateGlowColor() = win 0x37b440, m1 0x397f58, imac 0x423390;
	TodoReturn updateInternalActions(float) = win 0x380e60;
	void updateJump(float) = win 0x369a50, imac 0x407100, m1 0x37fb30;
	TodoReturn updateJumpVariables();
	TodoReturn updateLastGroundObject(GameObject*);
	TodoReturn updateMove(float) = win 0x368220;
	void updatePlayerArt() = win 0x376890, m1 0x3940fc, imac 0x41f0a0;
	void updatePlayerBirdFrame(int) = win 0x37c2f0, m1 0x3954e0, imac 0x4205f0;
	void updatePlayerDartFrame(int) = win 0x37c9f0, m1 0x3964f0, imac 0x4216e0;
	void updatePlayerForce(cocos2d::CCPoint, bool);
	void updatePlayerFrame(int) = win 0x37bc60, m1 0x395e20, imac 0x420f90;
	void updatePlayerGlow() = win 0x37e2b0, m1 0x393f3c, imac 0x41ef10;
	void updatePlayerJetpackFrame(int) = win 0x37c0c0, m1 0x394cf4, imac 0x41fd80;
	void updatePlayerRobotFrame(int id) = m1 0x398634, imac 0x423a50, win inline {
        if (id < 1) id = 1;
        else if (id > 0x43) id = 0x44;

        createRobot(id);
    }
	void updatePlayerRollFrame(int) = win 0x37c590, m1 0x3968c4, imac 0x421ac0;
	void updatePlayerScale() = win 0x37e230;
	void updatePlayerShipFrame(int) = win 0x37be90, m1 0x394ac8, imac 0x41fb40;
	void updatePlayerSpiderFrame(int id) = m1 0x39864c, imac 0x423a70, win inline {
        if (id < 1) id = 1;
        else if (id > 0x44) id = 0x45;

        createSpider(id);
    }

	void updatePlayerSpriteExtra(gd::string) = win 0x37cc20;
	void updatePlayerSwingFrame(int) = win 0x37c7c0, m1 0x395b5c, imac 0x420cd0;
	void updateRobotAnimationSpeed() = win 0x37f0f0;
	void updateRotation(float, float) = win 0x36b230, imac 0x40bab0, m1 0x383a84;
	void updateRotation(float) = win 0x36f0b0, imac 0x416180, m1 0x38c360;
	void updateShipRotation(float) = win 0x36ecd0;
	void updateShipSpriteExtra(gd::string) = win 0x37cd30;
	TodoReturn updateSlopeRotation(float);
	TodoReturn updateSlopeYVelocity(float);
	void updateSpecial(float);
	TodoReturn updateStateVariables();
	TodoReturn updateStaticForce(float, float, bool);
	void updateStreakBlend(bool) = imac 0x405e50, m1 0x37eb80;
	TodoReturn updateStreaks(float);
	void updateSwingFire() = win 0x378de0;
	void updateTimeMod(float, bool) = win 0x37ed60, m1 0x37e3e4, imac 0x405680;
	TodoReturn usingWallLimitedMode();
	TodoReturn yStartDown();
	TodoReturn yStartUp();

	virtual void update(float) = m1 0x37ec58, imac 0x405f60, win 0x366ee0, ios 0x229c5c;
	virtual void setScaleX(float) = m1 0x39a4ec, win 0x380860, imac 0x425cd0, ios 0x23e098;
	virtual void setScaleY(float) = m1 0x39a4f0, win 0x380870, imac 0x425ce0, ios 0x23e09c;
	virtual void setScale(float) = m1 0x39a4f4, win 0x380880, imac 0x425cf0, ios 0x23e0a0;
	virtual void setPosition(cocos2d::CCPoint const&) = m1 0x3973cc, win 0x37a650, imac 0x422650, ios 0x23b90c;
	virtual void setVisible(bool) = m1 0x39a4f8, win 0x380890, imac 0x425d00, ios 0x23e0a4;
	virtual void setRotation(float) = win 0x380790, imac 0x425c40, m1 0x39a47c, ios 0x23e028; // merged thunk
	virtual void setOpacity(unsigned char) = win 0x37bb00, m1 0x398408, imac 0x423850, ios 0x23c8a0;
	virtual void setColor(cocos2d::ccColor3B const&) = win 0x37b320, m1 0x397e20, imac 0x423230, ios 0x23c360;
	virtual void setFlipX(bool) = win 0x3807a0, m1 0x39a480, imac 0x425c50, ios 0x23e02c;
	virtual void setFlipY(bool) = imac 0x425cc0, ios 0x23e094;
	virtual void resetObject() = m1 0x390ae4, imac 0x41b180, ios 0x236d38;
	virtual cocos2d::CCPoint getRealPosition() = m1 0x398604, imac 0x423a20, ios 0x23c9a4;
	virtual OBB2D* getOrientedBox() = m1 0x3997ac, imac 0x424d80, ios 0x23d654;
	virtual float getObjectRotation() = m1 0x3997d8, imac 0x424da0, ios 0x23d680;
	virtual void animationFinished(char const*) = win 0x3808b0, m1 0x39a5d0, imac 0x425df0, ios 0x23e0b8;

	cocos2d::CCNode* m_mainLayer;
	bool m_wasTeleported;
	bool m_fixGravityBug;
	bool m_reverseSync;
	double m_yVelocityBeforeSlope;
	double m_dashX;
	double m_dashY;
	double m_dashAngle;
	double m_dashStartTime;
	DashRingObject* m_dashRing;
	double m_slopeStartTime;
	bool m_justPlacedStreak;
	GameObject* m_maybeLastGroundObject;
	cocos2d::CCDictionary* m_collisionLogTop;
	cocos2d::CCDictionary* m_collisionLogBottom;
	cocos2d::CCDictionary* m_collisionLogLeft;
	cocos2d::CCDictionary* m_collisionLogRight;
	int m_lastCollisionBottom;
	int m_lastCollisionTop;
	int m_lastCollisionLeft;
	int m_lastCollisionRight;
	int m_unk50C;
	int m_unk510;
	GameObject* m_currentSlope2;
	GameObject* m_preLastGroundObject;
	float m_slopeAngle;
	bool m_slopeSlidingMaybeRotated;
	bool m_quickCheckpointMode;
	GameObject* m_collidedObject;
	GameObject* m_lastGroundObject;
	GameObject* m_collidingWithLeft;
	GameObject* m_collidingWithRight;
	int m_maybeSavedPlayerFrame;
	double m_scaleXRelated2;
	double m_groundYVelocity;
	double m_yVelocityRelated;
	double m_scaleXRelated3;
	double m_scaleXRelated4;
	double m_scaleXRelated5;
	bool m_isCollidingWithSlope;
    cocos2d::CCSprite* m_dashFireSprite;
	bool m_isBallRotating;
	bool m_unk669;
	GameObject* m_currentSlope3;
	GameObject* m_currentSlope;
	double unk_584;
	int m_collidingWithSlopeId;
	bool m_slopeFlipGravityRelated;
	cocos2d::CCArray* m_particleSystems;
	float m_slopeAngleRadians;
	gd::unordered_map<int, GJPointDouble> m_rotateObjectsRelated;
	gd::unordered_map<int, GameObject*> m_maybeRotatedObjectsMap;
	float m_rotationSpeed;
	float m_rotateSpeed;
	bool m_isRotating;
	bool m_isBallRotating2;
	bool m_hasGlow;
	bool m_isHidden;
	GhostType m_ghostType;
	GhostTrailEffect* m_ghostTrail;
	cocos2d::CCSprite* m_iconSprite;
	cocos2d::CCSprite* m_iconSpriteSecondary;
	cocos2d::CCSprite* m_iconSpriteWhitener;
	cocos2d::CCSprite* m_iconGlow;
	cocos2d::CCSprite* m_vehicleSprite;
	cocos2d::CCSprite* m_vehicleSpriteSecondary;
	cocos2d::CCSprite* m_birdVehicle;
	cocos2d::CCSprite* m_vehicleSpriteWhitener;
	cocos2d::CCSprite* m_vehicleGlow;
	PlayerFireBoostSprite* m_swingFireMiddle;
	PlayerFireBoostSprite* m_swingFireBottom;
	PlayerFireBoostSprite* m_swingFireTop;
	cocos2d::CCSprite* m_dashSpritesContainer;
	cocos2d::CCMotionStreak* m_regularTrail;
	cocos2d::CCMotionStreak* m_shipStreak;
	HardStreak* m_waveTrail;
	double m_speedMultiplier;
	double m_yStart;
	double m_gravity;
	float m_trailingParticleLife;
	float m_unk648;
	double m_gameModeChangedTime;
	bool m_padRingRelated;
	bool m_maybeReducedEffects;
	bool m_maybeIsFalling;
	bool m_shouldTryPlacingCheckpoint;
	bool m_playEffects;
	bool m_maybeCanRunIntoBlocks;
	bool m_hasGroundParticles;
	bool m_hasShipParticles;
	bool m_isOnGround3;
	bool m_checkpointTimeout;
	double m_lastCheckpointTime;
	double m_lastJumpTime;
	double m_lastFlipTime;
	double m_flashTime;
	float m_flashRelated;
	float m_flashRelated1;
	cocos2d::ccColor3B m_colorRelated2;
	cocos2d::ccColor3B m_flashRelated3;
	double m_lastSpiderFlipTime;
	bool m_unkBool5;
	bool m_maybeIsVehicleGlowing;
	bool m_gv0096;
	bool m_gv0100;
	double m_accelerationOrSpeed;
	double m_snapDistance;
	bool m_ringJumpRelated;
	gd::unordered_set<int> m_ringRelatedSet;
	GameObject* m_objectSnappedTo;
	CheckpointObject* m_pendingCheckpoint;
	int m_onFlyCheckpointTries;
	GJRobotSprite* m_robotSprite;
	GJSpiderSprite* m_spiderSprite;
	bool m_maybeSpriteRelated;
	cocos2d::CCParticleSystemQuad* m_playerGroundParticles;
	cocos2d::CCParticleSystemQuad* m_trailingParticles;
	cocos2d::CCParticleSystemQuad* m_shipClickParticles;
	cocos2d::CCParticleSystemQuad* m_vehicleGroundParticles;
	cocos2d::CCParticleSystemQuad* m_ufoClickParticles;
	cocos2d::CCParticleSystemQuad* m_robotBurstParticles;
	cocos2d::CCParticleSystemQuad* m_dashParticles;
	cocos2d::CCParticleSystemQuad* m_swingBurstParticles1;
	cocos2d::CCParticleSystemQuad* m_swingBurstParticles2;
	bool m_useLandParticles0;
	cocos2d::CCParticleSystemQuad* m_landParticles0;
	cocos2d::CCParticleSystemQuad* m_landParticles1;
	float m_landParticlesAngle;
	float m_landParticleRelatedY;
	int m_playerStreak;
	float m_streakRelated1;
	bool m_streakRelated2;
	bool m_streakRelated3;
	ShipStreak m_shipStreakType;
	double m_slopeRotation;
	double m_currentSlopeYVelocity;
	double m_unk3d0;
	double m_blackOrbRelated;
	bool m_unk3e0;
	bool m_unk3e1;
	bool m_isAccelerating;
	bool m_isCurrentSlopeTop;
	double m_collidedTopMinY;
	double m_collidedBottomMaxY;
	double m_collidedLeftMaxX;
	double m_collidedRightMinX;
	bool m_streakRelated4;
	bool m_canPlaceCheckpoint;
	cocos2d::ccColor3B m_colorRelated;
	cocos2d::ccColor3B m_secondColorRelated;
	bool m_hasCustomGlowColor;
	cocos2d::ccColor3B m_glowColor;
	bool m_maybeIsColliding;
	bool m_jumpBuffered;
	bool m_stateRingJump;
	bool m_wasJumpBuffered;
	bool m_wasRobotJump;
	unsigned char m_stateJumpBuffered;
	bool m_stateRingJump2;
	bool m_touchedRing;
	bool m_touchedCustomRing;
	bool m_touchedGravityPortal;
	bool m_maybeTouchedBreakableBlock;
	geode::SeedValueRSV m_jumpRelatedAC2;
	bool m_touchedPad;
	double m_yVelocity;
	double m_fallSpeed;
	bool m_isOnSlope;
	bool m_wasOnSlope;
	float m_slopeVelocity;
	bool m_maybeUpsideDownSlope;
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
	int m_reverseRelated;
	double m_maybeReverseSpeed;
	double m_maybeReverseAcceleration;
	float m_xVelocityRelated2;
	bool m_isDashing;
	int m_unk9e8;
	int m_groundObjectMaterial;
	float m_vehicleSize;
	float m_playerSpeed;
	cocos2d::CCPoint m_shipRotation;
	cocos2d::CCPoint m_lastPortalPos;
	float m_unkUnused3;
	bool m_isOnGround2;
	double m_lastLandTime;
	float m_platformerVelocityRelated;
	bool m_maybeIsBoosted;
	double m_scaleXRelatedTime;
	bool m_decreaseBoostSlide;
	bool m_unkA29;
	bool m_isLocked;
	bool m_controlsDisabled;
	cocos2d::CCPoint m_lastGroundedPos;
	cocos2d::CCArray* m_touchingRings;
	gd::unordered_set<int> m_touchedRings;
	GameObject* m_lastActivatedPortal;
	bool m_hasEverJumped;
	bool m_ringOrStreakRelated;
	cocos2d::ccColor3B m_playerColor1;
	cocos2d::ccColor3B m_playerColor2;
	cocos2d::CCPoint m_position;
	bool m_isSecondPlayer;
	bool m_unkA99;
	double m_totalTime;
	bool m_isBeingSpawnedByDualPortal;
	float m_unkAAC;
	float m_unkAngle1;
	float m_yVelocityRelated3;
	bool m_gamevar0060;
	bool m_swapColors;
	bool m_gamevar0062;
	int m_followRelated;
	gd::vector<float> m_playerFollowFloats;
	float m_unk838;
	int m_stateOnGround;
	unsigned char m_stateUnk;
	unsigned char m_stateNoStickX;
	unsigned char m_stateNoStickY;
	unsigned char m_stateUnk2;
	int m_stateBoostX;
	int m_stateBoostY;
	int m_maybeStateForce2;
	int m_stateScale;
	double m_platformerXVelocity;
	bool m_holdingRight;
	bool m_holdingLeft;
	bool m_leftPressedFirst;
	double m_scaleXRelated;
	bool m_maybeHasStopped;
	float m_xVelocityRelated;
	bool m_maybeGoingCorrectSlopeDirection;
	bool m_isSliding;
	double m_maybeSlopeForce;
	bool m_isOnIce;
	double m_physDeltaRelated;
	bool m_isOnGround4;
	int m_maybeSlidingTime;
	double m_maybeSlidingStartTime;
	double m_changedDirectionsTime;
	double m_slopeEndTime;
	bool m_isMoving;
	bool m_platformerMovingLeft;
	bool m_platformerMovingRight;
	bool m_isSlidingRight;
	double m_maybeChangedDirectionAngle;
	double m_unkUnused2;
	bool m_isPlatformer;
	int m_stateNoAutoJump;
	int m_stateDartSlide;
	int m_stateHitHead;
	int m_stateFlipGravity;
	float m_gravityMod;
	int m_stateForce;
	cocos2d::CCPoint m_stateForceVector;
	bool m_affectedByForces;
	gd::map<int, bool> m_jumpPadRelated;
	float m_somethingPlayerSpeedTime;
	float m_playerSpeedAC;
	bool m_fixRobotJump;
	gd::map<int, bool> m_holdingButtons;
	bool m_inputsLocked;
	gd::string m_currentRobotAnimation;
	bool m_gv0123;
	int m_iconRequestID;
	cocos2d::CCSpriteBatchNode* m_robotBatchNode;
	cocos2d::CCSpriteBatchNode* m_spiderBatchNode;
	cocos2d::CCArray* m_unk958;
	PlayerFireBoostSprite* m_robotFire;
	int m_unkUnused;
	GJBaseGameLayer* m_gameLayer;
	cocos2d::CCLayer* m_parentLayer;
	GJActionManager* m_actionManager;
	bool m_isOutOfBounds;
	float m_fallStartY;
	bool m_disablePlayerSqueeze;
	bool m_robotHasRun3;
	bool m_robotHasRun2;
	bool m_item20;
	bool m_ignoreDamage;
	bool m_enable22Changes;
}

[[link(android)]]
class PlayLayer : GJBaseGameLayer, CCCircleWaveDelegate, CurrencyRewardDelegate, DialogDelegate {
	virtual ~PlayLayer() = m1 0x9a050, win 0x382540, imac 0xab7d0;
	PlayLayer() = win 0x381b80, m1 0xab594, imac 0xc0090, ios 0x1253e0;

	static PlayLayer* create(GJGameLevel* level, bool useReplay, bool dontCreateObjects) = m1 0x9a148, imac 0xabbf0, ios 0x11782c;
	static PlayLayer* get() {
		return GameManager::get()->m_playLayer;
	}

	void addCircle(CCCircleWave* cw) {
		m_circleWaveArray->addObject(cw);
	}
	void addObject(GameObject*) = win 0x38a990, imac 0xb24e0, m1 0x9f734;
	void addToGroupOld(GameObject*);
	void applyCustomEnterEffect(GameObject*, bool) = win 0x38d580;

	void applyEnterEffect(GameObject*, int, bool) = win 0x38e270;
	bool canPauseGame() = win inline, m1 0xaac6c, imac 0xbf610 {
		return !m_hasCompletedLevel && !m_levelEndAnimationStarted;
	}
	TodoReturn checkpointWithID(int);
	TodoReturn colorObject(int, cocos2d::ccColor3B);
	TodoReturn commitJumps();
	TodoReturn compareStateSnapshot();
	CheckpointObject* createCheckpoint() = win 0x391b00;
	void createObjectsFromSetupFinished() = win 0x38a4f0, imac 0xb7740, m1 0xa400c;
	void delayedFullReset();
	void delayedResetLevel() = win 0x395700, imac 0xbb940, m1 0xa79c8;
	void fullReset() = win 0x395600, m1 0xaa510, imac 0xbee70;
	float getCurrentPercent() = win 0x390520, ios 0x1210b4, imac 0xba680, m1 0xa688c;
	int getCurrentPercentInt() = win inline, imac 0xbad90, m1 0xa6f64, ios inline { // i love this
		return static_cast<int>(this->getCurrentPercent());
	}
	TodoReturn getEndPosition() = ios 0x11c7bc;
	TodoReturn getLastCheckpoint();
	TodoReturn getRelativeMod(cocos2d::CCPoint, float, float, float);
	TodoReturn getRelativeModNew(cocos2d::CCPoint, float, float, bool, bool);
	double getTempMilliTime() = m1 0x9adec, imac 0xaca90, ios 0x1181a8;
	TodoReturn gravityEffectFinished();
	void incrementJumps() = imac 0xbf5a0, m1 0xaabec;
	bool init(GJGameLevel* level, bool useReplay, bool dontCreateObjects) = win 0x382890, imac 0xabc70, m1 0x9a1e4, ios 0x1178b8;
	bool isGameplayActive();
	void levelComplete() = win 0x384850, m1 0xa1078, imac 0xb4290, ios 0x11c818;
	TodoReturn loadActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&);
	void loadDefaultColors() = m1 0x9f46c, imac 0xb2130;
	TodoReturn loadDynamicSaveObjects(gd::vector<SavedObjectStateRef>&) = imac 0xbe9d0, m1 0xaa070;
	void loadFromCheckpoint(CheckpointObject*) = win 0x394180, imac 0xbe490, m1 0xa9b90;
	TodoReturn loadLastCheckpoint();
	CheckpointObject * markCheckpoint() = win 0x3940b0, imac 0xbbd80, m1 0xa7d28;
	void onQuit() = win 0x397540, imac 0xb3e90, m1 0xa0cb0, ios 0x11c484;
	TodoReturn optimizeColorGroups() = win 0x38b7f0;
	TodoReturn optimizeOpacityGroups() = win 0x38ba80;
	void pauseGame(bool) = win 0x396a50, imac 0xbf630, m1 0xaac94;
	void playEndAnimationToPos(cocos2d::CCPoint) = win 0x388570, imac 0xb6ca0, m1 0xa3680;
	void playPlatformerEndAnimationToPos(cocos2d::CCPoint, bool) = win 0x388f00, m1 0xa3bb8, imac 0xb7260;
	TodoReturn playReplay(gd::string);
	void prepareCreateObjectsFromSetup(gd::string&) = win 0x389a50, imac 0xaccb0, m1 0x9b03c, ios 0x118304;
	void prepareMusic(bool) = win 0x3972a0, imac 0xb3d30;
	void processCreateObjectsFromSetup() = win 0x389d00, imac 0xad0e0, m1 0x9b3fc, ios 0x1185ec;
	TodoReturn processLoadedMoveActions();
	TodoReturn queueCheckpoint();
	void removeAllObjects() = imac 0xb4000;
	void removeCheckpoint(bool) = win 0x394910, m1 0xa9a50, imac 0xbe340;
	void removeFromGroupOld(GameObject*);
	void resetLevel() = win 0x3958b0, imac 0xb32d0, m1 0xa01f0, ios 0x11baf4;
	void resetLevelFromStart() = win 0x395710, imac 0xbf160, m1 0xaa7c0;
	void resume() = win 0x396f80, m1 0xaaf4c, imac 0xbf8f0;
	void resumeAndRestart(bool) = win 0x396d10, m1 0xaaddc, imac 0xbf770;
	TodoReturn saveActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&);
	TodoReturn saveDynamicSaveObjects(gd::vector<SavedObjectStateRef>&);
	TodoReturn scanActiveSaveObjects() = imac 0xafbf0;
	TodoReturn scanDynamicSaveObjects() = win 0x394aa0, imac 0xaed60;
	static cocos2d::CCScene* scene(GJGameLevel* level, bool useReplay, bool dontCreateObjects) = win 0x3827e0, m1 0x9a088, imac 0xabb40;
	TodoReturn screenFlipObject(GameObject*);
	void setDamageVerifiedIdx(int);
	void setupHasCompleted() = win 0x3835e0, imac 0xadb00, m1 0x9bc4c, ios 0x118b1c;
	TodoReturn shouldBlend(int);
	void showCompleteEffect() = win 0x385aa0, m1 0xa1b28, imac 0xb4f00, ios 0x11d058;
	void showCompleteText() = win 0x385470, m1 0xa1f00, imac 0xb5380, ios 0x11d3b0;
	void showEndLayer();
	void showHint() = win 0x3912c0, ios 0x121ea4, imac 0xbb7d0;
	void showNewBest(bool, int, int, bool, bool, bool) = win 0x3860c0, ios 0x11db7c, m1 0xa2ac8, imac 0xb5fd0;
	void showRetryLayer() = ios 0x12200c;
	void showTwoPlayerGuide();
	void spawnCircle() = ios 0x11cfb0;
	TodoReturn spawnFirework();
	void startGame() = win 0x3847f0, imac 0xb3e30, m1 0xa0c54;
	void startGameDelayed() = imac 0xb4220;
	void startMusic() = win 0x3973f0, imac 0xb4130, m1 0xa0f20;
	TodoReturn startRecording();
	TodoReturn startRecordingDelayed();
	TodoReturn stopRecording();
	void storeCheckpoint(CheckpointObject*) = win 0x393fe0, imac 0xbe2a0, m1 0xa99ac;
	TodoReturn takeStateSnapshot();
	TodoReturn toggleBGEffectVisibility(bool);
	TodoReturn toggleGhostEffect(int);
	//void toggleDebugDraw(bool) = ios 0x118288;
	void togglePracticeMode(bool practiceMode) = win 0x396780, m1 0xaa64c, imac 0xbefe0, ios 0x124804;
	TodoReturn tryStartRecord();
	void updateAttempts() = win 0x396540, imac 0xbf1f0, m1 0xaa844;
	void updateEffectPositions() = imac 0xbba40, m1 0xa7a54;
	void updateInfoLabel() = win 0x38f640, imac 0xb0120, m1 0x9d8d8;
	TodoReturn updateInvisibleBlock(GameObject*, float, float, float, float, cocos2d::ccColor3B const&);
	void updateProgressbar() = win 0x38efd0, imac 0xb1f90, m1 0x9f28c;
	void updateScreenRotation(int, bool, bool, float, int, float, int, int);
	void updateTimeWarp(EffectGameObject*, float);
	void updateTestModeLabel() = win 0x384760, imac 0xb3f40, m1 0xa0d3c, ios 0x11c510;

	virtual void onEnterTransitionDidFinish() = win 0x397920, m1 0xab0c4, imac 0xbfa80, ios 0x124fd4;
	virtual void onExit() = win 0x397950, m1 0xab108, imac 0xbfab0, ios 0x125008;
	virtual void postUpdate(float) = win 0x391460, imac 0xbbb10, m1 0xa7b08, ios 0x12214c;
	virtual TodoReturn checkForEnd() = imac 0xbbe40, m1 0xa7dec, win 0x391830, ios 0x122420;
	virtual TodoReturn testTime() = imac 0xc0010, m1 0xab568, ios 0x1253b4;
	virtual void updateVerifyDamage() = imac 0xbbf30, m1 0xa7ee8, win 0x391a00, ios 0x122508;
	virtual void updateAttemptTime(float) = win 0x391aa0, imac 0xbbfd0, m1 0xa7f98, ios 0x1225a4;
	virtual void updateVisibility(float) = imac 0xb7dd0, m1 0xa4664, win 0x38bfc0, ios 0x11f23c;
	virtual TodoReturn opacityForObject(GameObject*) = imac 0xba170, m1 0xa63cc, win 0x38cef0, ios 0x120cc4;
	virtual void updateColor(cocos2d::ccColor3B& color, float fadeTime, int colorID, bool blending, float opacity, cocos2d::ccHSVValue& copyHSV, int colorIDToCopy, bool copyOpacity, EffectGameObject* callerObject, int unk1, int unk2) = imac 0xba250, m1 0xa648c, win 0x38eba0, ios 0x120d34;
	virtual TodoReturn activateEndTrigger(int, bool, bool) = imac 0xb6c90, m1 0xa367c, ios 0x11e5e8;
	virtual void activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&) = win 0x388df0, imac 0xb7170, m1 0xa3ab0, ios 0x11e900;
	virtual void toggleGlitter(bool) = imac 0xbad40, m1 0xa6f00, win 0x390480, ios 0x1216cc;
	virtual void destroyPlayer(PlayerObject*, GameObject*) = win 0x3905a0, imac 0xbae00, m1 0xa6fd8, ios 0x121730;
	virtual TodoReturn toggleGroundVisibility(bool) = win 0x3902d0, m1 0xa6e14, imac 0xbac50, ios 0x1215e8;
	virtual void toggleMGVisibility(bool) = m1 0xa6e44, win 0x390350, imac 0xbac80, ios 0x121618;
	virtual void toggleHideAttempts(bool) = m1 0xa6e54, win 0x390390, imac 0xbaca0, ios 0x121628;
	virtual float timeForPos(cocos2d::CCPoint, int, int, bool, int) = win 0x3901a0, m1 0xa6d3c, imac 0xbab30, ios 0x121514;
	virtual float posForTime(float) = win 0x390230, m1 0xa6db0, imac 0xbabb0, ios 0x121588;
	virtual void resetSPTriggered() = win 0x390290, m1 0xa6dd0, imac 0xbac00, ios 0x1215a8;
	virtual void updateTimeWarp(float) = m1 0xa3594, imac 0xb6b80, ios 0x11e5d0;
	virtual void playGravityEffect(bool) = win 0x38ec60, m1 0xa64f8, imac 0xba2c0, ios 0x120da0;
	virtual TodoReturn manualUpdateObjectColors(GameObject*) = m1 0xa63d4, win 0x38cf00, imac 0xba180, ios 0x120ccc;
	virtual void checkpointActivated(CheckpointGameObject*) = win 0x391ae0, m1 0xa800c, imac 0xbc040, ios 0x122614;
	virtual TodoReturn flipArt(bool) = win 0x38f610, m1 0xa6cd8, imac 0xbaab0, ios 0x1214b0;
	virtual void updateTimeLabel(int, int, bool) = win 0x38f170, imac 0xba6f0, m1 0xa68fc, ios 0x121124;
	virtual TodoReturn checkSnapshot() = m1 0xaa490, imac 0xbede0, ios 0x1246b4;
	virtual void toggleProgressbar() = win 0x38f370, m1 0xa6ad4, imac 0xba8c0, ios 0x1212cc;
	virtual TodoReturn toggleInfoLabel() = win 0x390120, m1 0xa6cf8, imac 0xbaaf0, ios 0x1214d0;
	virtual void removeAllCheckpoints() = win 0x394a50, m1 0xaa298, imac 0xbebd0, ios 0x124198;
	virtual TodoReturn toggleMusicInPractice() = win 0x38f510, m1 0xa6c4c, imac 0xbaa50, ios 0x121444;
	virtual void currencyWillExit(CurrencyRewardLayer*) = win 0x391280, m1 0xa79dc, imac 0xbb960, ios 0x122020;
	virtual void circleWaveWillBeRemoved(CCCircleWave*) = win 0x391440, m1 0xa7a3c, imac 0xbba00, ios 0x122080;
	virtual void dialogClosed(DialogLayer*) = win 0x3912a0, m1 0xa7a08, imac 0xbb9a0, ios 0x12204c;

	PAD = win 0x30, android32 0x24, android64 0x2c, mac 0x30, ios 0x30;
	cocos2d::CCArray* m_coinArray;
	PAD = win 0x6E, android32 0x3E, android64 0x6E, mac 0x6E, ios 0x6e;
	bool m_isIgnoreDamageEnabled;
	cocos2d::CCLabelBMFont* m_statusLabel;
	int m_unk3778;
	PAD = win 0x18, android32 0x18, android64 0x18, mac 0x18, ios 0x18;
	float m_unkSomeFloat;
	CheckpointObject* m_currentCheckpoint;
	cocos2d::CCArray* m_checkpointArray;
	cocos2d::CCArray* m_unk37a8;
	int m_unk37b0;
	int m_unk37b4;
	int m_unk37b8;
	cocos2d::CCArray* m_unk37c0;
	int m_unk37c8;
	int m_unk37cc;
	cocos2d::CCArray* m_circleWaveArray;
	cocos2d::CCArray* m_unk37d8;
	int m_unk37e0;
	int m_unk37e4;
	float m_unk37e8;
	cocos2d::CCLabelBMFont* m_attemptLabel;
	cocos2d::CCLabelBMFont* m_percentageLabel;
	bool m_0126;
	cocos2d::CCSprite* m_progressBar;
	cocos2d::CCSprite* m_progressFill;
	// everything after this comment is probably wrong
	PAD = win 0x6e, android32 0x40, android64 0x66, mac 0x56, ios 0x56;
	int m_jumps;
	bool m_hasJumped;
	int m_uncommittedJumps; // PlayLayer::commitJumps
	bool m_showLeaderboardPercentage;
	bool m_hasCompletedLevel;
	bool m_inResetDelay;
	int m_lastAttemptPercent;
	bool m_endLayerStars; // not verified on android
	PAD = win 0x3a, android32 0x29, android64 0x3a, mac 0x3a, ios 0x3a;
	double m_attemptTime;
	PAD = win 0x1f, android32 0x27, android64 0x1f, mac 0x1f, ios 0x1f;
	bool m_isPaused;
	bool m_disableGravityEffect;
	cocos2d::CCLabelBMFont* m_infoLabel;
	cocos2d::CCPoint m_pUnk38e8;
	cocos2d::CCPoint m_pUnk38f0;
	cocos2d::CCDictionary* m_colorKeyDict;
	gd::vector<int> m_keyColors; // type not really accurate
	gd::vector<int> m_keyOpacities; // type not really accurate
	gd::vector<int> m_keyPulses; // type not really accurate
	int m_nextColorKey;
	bool m_tryPlaceCheckpoint;
	CheckpointGameObject* m_activatedCheckpoint; // PlayLayer::checkpointActivated
	bool m_bUnk3958;
	cocos2d::CCPoint m_endPosition;
	EndTriggerGameObject* m_platformerEndTrigger;
}

[[link(android)]]
class PointNode : cocos2d::CCObject {
	// virtual ~PointNode();

	static PointNode* create(cocos2d::CCPoint) = imac 0x9d380, m1 0x8d534;

	bool init(cocos2d::CCPoint p0) = imac inline, m1 inline {
		m_point = p0;

		return true;
	}

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
	// ProfilePage() = ios 0x1a9c90;

	static ProfilePage* create(int accountID, bool ownProfile) = win 0x39b1d0, m1 0x6ca568, imac 0x7c4d90, ios 0x1a24a4;

	void blockUser();
	bool init(int accountID, bool ownProfile) = win 0x39b3b0, imac 0x7c4fa0, m1 0x6ca6d8, ios 0x1a2528;
	bool isCorrect(char const* key) = win 0x3A22F0;
	bool isOnWatchlist(int);
	void loadPage(int) = win 0x3a2420;
	void loadPageFromUserInfo(GJUserScore*) = win 0x39c890, imac 0x7c6330, m1 0x6cb934, ios 0x1a36b4;
	void onBlockUser(cocos2d::CCObject* sender) = win 0x3A07E0, imac 0x7cab80, m1 0x6cfae8;
	void onClose(cocos2d::CCObject* sender) = win 0x3a15b0, imac 0x7c5af0, m1 0x6cb174;
	void onComment(cocos2d::CCObject* sender) = win 0x3A0230, imac 0x7cb4a0, m1 0x6d03dc;
	void onCommentHistory(cocos2d::CCObject* sender) = win 0x3A01A0, imac 0x7c9c10, m1 0x6ced20;
	void onCopyName(cocos2d::CCObject* sender) = win 0x39f870, imac 0x7ca3a0, m1 0x6cf394;
	void onFollow(cocos2d::CCObject* sender) = win 0x3a0a30, imac 0x7c5d70, m1 0x6cb3e4;
	void onFriend(cocos2d::CCObject* sender) = win 0x3A03F0, imac 0x7ca7e0, m1 0x6cf7a4;
	void onFriends(cocos2d::CCObject* sender) = win 0x3A20C0, imac 0x7cb360, m1 0x6d02a4;
	void onMessages(cocos2d::CCObject* sender) = win 0x3A2090, imac 0x7cb2d0, m1 0x6d0218;
	void onMyLevels(cocos2d::CCObject* sender) = win 0x39FE90, imac 0x7caf30, m1 0x6cfe88;
	void onMyLists(cocos2d::CCObject* sender) = win 0x3A0040, imac 0x7cb100, m1 0x6d004c;
	void onNextPage(cocos2d::CCObject* sender) = win 0x3A2B20;
	void onPrevPage(cocos2d::CCObject* sender) = win 0x3A2B30;
	void onRequests(cocos2d::CCObject* sender) = win 0x3A20F0, imac 0x7cb3f0, m1 0x6d0330;
	void onSendMessage(cocos2d::CCObject* sender) = win 0x3A01E0, imac 0x7ca6d0, m1 0x6cf69c;
	void onSettings(cocos2d::CCObject* sender) = win 0x3A1EE0, imac 0x7cb480, m1 0x6d03bc;
	void onStatInfo(cocos2d::CCObject* sender) = win 0x39f6a0, m1 0x6cdfe0, imac 0x7c8e70;
	void onTwitch(cocos2d::CCObject* sender) = win 0x3A1D40, imac 0x7c99d0, m1 0x6cead4;
	void onTwitter(cocos2d::CCObject* sender) = win 0x3A1BB0, imac 0x7c9770, m1 0x6ce874;
	void onUpdate(cocos2d::CCObject* sender) = win 0x39C360, m1 0x6CB634, imac 0x7c5ff0;
	void onYouTube(cocos2d::CCObject* sender) = win 0x3A1A20, m1 0x6ce61c, imac 0x7c9510;
	void setupComments() = m1 0x6cb1ec, imac 0x7c5b70;
	void setupCommentsBrowser(cocos2d::CCArray*) = win 0x3a2710, m1 0x6CB804, imac 0x7C61F0;
	void showNoAccountError() = win 0x3A1640;
	TodoReturn toggleMainPageVisibility(bool);
	void toggleShip(cocos2d::CCObject* sender) = win 0x39f5f0, m1 0x6ce55c, imac 0x7c9460;
	TodoReturn updateLevelsLabel();
	void updatePageArrows() = win 0x3A2AB0;

	virtual void registerWithTouchDispatcher() = m1 0x6d2954, imac 0x7cdb20, ios 0x1a85a0;
	virtual void keyBackClicked() = win 0x3a1630, m1 0x6d14b4, imac 0x7cc5e0, ios 0x1a7920;
	virtual void show() = win 0x3a18c0, m1 0x6d16e4, imac 0x7cc860, ios 0x1a7a68;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x3a1000, m1 0x6d0f28, imac 0x7cc090, ios 0x1a7590;
	virtual void updateUserScoreFinished() = win 0x3a1780, m1 0x6d15a8, imac 0x7cc6f0, ios 0x1a792c;
	virtual void updateUserScoreFailed() = win 0x3a1870, m1 0x6d163c, imac 0x7cc7c0, ios 0x1a79c0;
	virtual void getUserInfoFinished(GJUserScore*) = win 0x3a2120, m1 0x6d19e0, imac 0x7ccb50, ios 0x1a7ba0;
	virtual void getUserInfoFailed(int) = win 0x3a2210, m1 0x6d1ce8, imac 0x7ccea0, ios 0x1a7e14;
	virtual void userInfoChanged(GJUserScore*) = win 0x3a2270, m1 0x6d1dc0, imac 0x7ccf60, ios 0x1a7e88;
	virtual void loadCommentsFinished(cocos2d::CCArray*, char const*) = win 0x3a2860, m1 0x6d1fd4, imac 0x7cd170, ios 0x1a7fac;
	virtual void loadCommentsFailed(char const*) = win 0x3a28e0, m1 0x6d20e0, imac 0x7cd260, ios 0x1a8030;
	virtual void setupPageInfo(gd::string, char const*) = win 0x3a2940, m1 0x6d21b4, imac 0x7cd330, ios 0x1a80a0;
	virtual void commentUploadFinished(int) = win 0x3a2b40, m1 0x6d267c, imac 0x7cd830, ios 0x1a8368;
	virtual void commentUploadFailed(int, CommentError) = win 0x3a2b90, m1 0x6d271c, imac 0x7cd8c0, ios 0x1a83c0;
	virtual void commentDeleteFailed(int, int) = win 0x3a2cb0, m1 0x6d27f0, imac 0x7cd990, ios 0x1a8470;
	virtual void onClosePopup(UploadActionPopup*) = win 0x3a12f0, m1 0x6d10e0, imac 0x7cc270, ios 0x1a7714;
	virtual void uploadActionFinished(int, int) = win 0x3a1340, m1 0x6d1168, imac 0x7cc2f0, ios 0x1a7784;
	virtual void uploadActionFailed(int, int) = win 0x3a1500, m1 0x6d1354, imac 0x7cc4c0, ios 0x1a789c;

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

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x26eae4, imac 0x2d1540;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x26ed54, imac 0x2d1760;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x26ec34, imac 0x2d1640;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x26ece4, imac 0x2d16e0;
	virtual void keyBackClicked() = m1 0x26e960, imac 0x2d13a0;
	virtual void show() = m1 0x26e934, imac 0x2d1370;
}

[[link(android)]]
class PulseEffectAction {
	bool isFinished();
	TodoReturn step(float);
	TodoReturn valueForDelta(float, float, float, float);

	PAD = win 0x48;
}

[[link(android)]]
class PurchaseItemPopup : FLAlertLayer {
	// virtual ~PurchaseItemPopup();
	// PurchaseItemPopup();

	static PurchaseItemPopup* create(GJStoreItem*) = win 0x29c5d0, m1 0x2b4444, imac 0x323e80;

	bool init(GJStoreItem*) = win 0x29c6c0, m1 0x2b6508, imac 0x326540;
	void onClose(cocos2d::CCObject* sender) = win 0x82fc0, m1 0x2b7040, imac 0x3271d0;
	void onPurchase(cocos2d::CCObject* sender) = win 0x29d570, m1 0x2b707c, imac 0x327200;

	virtual void keyBackClicked() = win 0x82ff0, m1 0x2b70f0, imac 0x327270, ios 0x1591a8;

	GJStoreItem* m_storeItem;
	GJPurchaseDelegate* m_delegate;
}

[[link(android)]]
class RandTriggerGameObject : ChanceTriggerGameObject {
	// virtual ~RandTriggerGameObject();

	static RandTriggerGameObject* create();

	int getRandomGroupID();
	int getTotalChance();

	virtual bool init() = m1 0x17a52c, imac 0x1bdd90, ios 0x392a5c;
	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = m1 0x17a7a8, imac 0x1be020, ios 0x392b80;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x17a9f0, imac 0x1be280, ios 0x392c58;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x17afd8, imac 0x1be8d0, ios 0x39305c;
}

[[link(android)]]
class RateDemonLayer : FLAlertLayer, UploadPopupDelegate, UploadActionDelegate {
	// virtual ~RateDemonLayer();
	RateDemonLayer() {
		m_uploadFinished = false;
		m_submitButton = nullptr;
		m_demons = nullptr;
		m_unkPtr = nullptr;
		m_levelID = 0;
		m_demonRate = 0;
		m_moderator = false;
		m_popup = nullptr;
		m_delegate = nullptr;
	}

	static RateDemonLayer* create(int levelID) = win inline, m1 0x224bd8, imac 0x27fc10 {
		auto ret = new RateDemonLayer();
		if (ret->init(levelID)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	bool init(int) = win 0x3a4d80, m1 0x224cf8, imac 0x27fd80;
	void onClose(cocos2d::CCObject* sender) = win 0x3a5850, m1 0x2253e4, imac 0x280470;
	void onRate(cocos2d::CCObject* sender) = win 0x3A54D0, m1 0x225440, imac 0x2804c0;
	void selectRating(cocos2d::CCObject*) = win 0x3a5350, m1 0x2252d8, imac 0x280380;

	virtual void keyBackClicked() = win 0x3a5890, m1 0x225914, imac 0x280930, ios 0x42fa20;
	virtual void uploadActionFinished(int, int) = win 0x3a5670, m1 0x225568, imac 0x2805f0, ios 0x42f874;
	virtual void uploadActionFailed(int, int) = win 0x3a5700, m1 0x2256b8, imac 0x2806e0, ios 0x42f908;
	virtual void onClosePopup(UploadActionPopup*) = win 0x3a57d0, m1 0x225828, imac 0x280850, ios 0x42f9a4;

	bool m_uploadFinished;
	CCMenuItemSpriteExtra* m_submitButton;
	cocos2d::CCArray* m_demons;
	void* m_unkPtr;
	int m_levelID;
	int m_demonRate;
	bool m_moderator;
	UploadActionPopup* m_popup;
	RateLevelDelegate* m_delegate;
}

[[link(android)]]
class RateLevelDelegate {
	virtual void rateLevelClosed() {}
}

[[link(android)]]
class RateLevelLayer : FLAlertLayer {
	// virtual ~RateLevelLayer();
	RateLevelLayer() {
		m_submitButton = nullptr;
		m_difficulties = nullptr;
		m_levelID = 0;
		m_levelRate = 0;
		m_delegate = nullptr;
	}

	static RateLevelLayer* create(int levelID) = win inline, m1 0x4bc2b0, imac 0x56f270 {
		auto ret = new RateLevelLayer();
		if (ret->init(levelID)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	bool init(int) = win 0x3a59b0, m1 0x4bc3b4, imac 0x56f3b0;
	void onClose(cocos2d::CCObject* sender) = win 0x3a6060, m1 0x4bcb6c, imac 0x56fb50;
	void onRate(cocos2d::CCObject* sender) = win 0x3a6010, m1 0x4bcbc8, imac 0x56fba0;
	void selectRating(cocos2d::CCObject* sender) = win 0x3a5ec0, m1 0x4bca50, imac 0x56fa70;

	virtual void keyBackClicked() = win 0x3a60a0, m1 0x4bcc30, imac 0x56fbf0, ios 0x65534;

	CCMenuItemSpriteExtra* m_submitButton;
	cocos2d::CCArray* m_difficulties;
	int m_levelID;
	int m_levelRate;
	RateLevelDelegate* m_delegate;
}

[[link(android)]]
class RateStarsLayer : FLAlertLayer, UploadPopupDelegate, UploadActionDelegate {
	// virtual ~RateStarsLayer();
	RateStarsLayer() = ios 0x84680;

	static RateStarsLayer* create(int, bool, bool) = win 0x3a6230, imac 0x2877a0, m1 0x22ba18, ios 0x83aa8;

	CCMenuItemSpriteExtra* getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float) = win 0x3a6a60, imac 0x287f80, m1 0x22c17c, ios 0x840c0;
	bool init(int, bool, bool) = win 0x3a6380, imac 0x287930, m1 0x22bb60, ios 0x83b34;
	void onClose(cocos2d::CCObject* sender) = win 0x3a7140, imac 0x288220, m1 0x22c428, ios 0x84304;
	void onFeature(cocos2d::CCObject* sender) = win 0x3a6a30, imac 0x2881f0, m1 0x22c410, ios 0x842ec;
	void onRate(cocos2d::CCObject* sender) = win 0x3a6d90, imac 0x288270, m1 0x22c484, ios 0x84360;
	void onToggleCoins(cocos2d::CCObject* sender) = imac 0x2881a0, m1 0x22c3b8;
	void selectRating(cocos2d::CCObject*) = win 0x3a6ba0, imac 0x288050, m1 0x22c244, ios 0x84188;

	virtual void keyBackClicked() = win 0x3a7180, m1 0x22c93c, imac 0x2886f0, ios 0x8461c;
	virtual void uploadActionFinished(int, int) = win 0x3a6f80, m1 0x22c5b0, imac 0x2883b0, ios 0x84480;
	virtual void uploadActionFailed(int, int) = win 0x3a7000, m1 0x22c6f0, imac 0x2884a0, ios 0x8450c;
	virtual void onClosePopup(UploadActionPopup*) = win 0x3a70c0, m1 0x22c850, imac 0x288610, ios 0x845a0;

	bool m_uploadFinished;
	bool m_moderator;
	CCMenuItemSpriteExtra* m_submitButton;
	cocos2d::CCArray* m_buttons;
	int m_levelID;
	int m_starsRate;
	bool m_coinsToggled;
	cocos2d::CCSprite* m_coinSprite;
	UploadActionPopup* m_popup;
	GJDifficultySprite* m_difficultySprite;
	int m_featureState;
	RateLevelDelegate* m_delegate;
}

[[link(android)]]
class RetryLevelLayer : GJDropDownLayer, RewardedVideoDelegate {
	// virtual ~RetryLevelLayer();

	static RetryLevelLayer* create() = win 0x389490, m1 0x45ab4c, imac 0x502b80;

	const char* getEndText();
	void onEveryplay(cocos2d::CCObject* sender);
	void onMenu(cocos2d::CCObject* sender) = win 0x3a8110;
	void onReplay(cocos2d::CCObject* sender);
	void onRewardedVideo(cocos2d::CCObject* sender);
	TodoReturn setupLastProgress() = win 0x3a7a50;

	virtual void keyBackClicked() = win 0x3a8230, m1 0x45c108, imac 0x504350, ios 0x1be818;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x3a80c0, m1 0x45c05c, imac 0x504280, ios 0x1be7cc;
	virtual void customSetup() = m1 0x45af98, win 0x3a72f0, imac 0x503110, ios 0x1bdb88;
	virtual void showLayer(bool) = m1 0x45bb78, imac 0x503d60, ios 0x1be67c;
	virtual void enterAnimFinished() = m1 0x45bc88, imac 0x503e60, ios 0x1be784;
	virtual void rewardedVideoFinished() = win 0x3a7ff0, m1 0x45c04c, imac 0x504260, ios 0x1be7bc;
	virtual bool shouldOffsetRewardCurrency() = m1 0x45c140, imac 0x5043a0, ios 0x1be850;
	virtual void keyUp(cocos2d::enumKeyCodes) = ios 0x1be810 {}
}

[[link(android)]]
class RewardedVideoDelegate {
	virtual void rewardedVideoFinished();
	virtual bool shouldOffsetRewardCurrency();
}

[[link(android)]]
class RewardsPage : FLAlertLayer, FLAlertLayerProtocol, GJRewardDelegate {
	// virtual ~RewardsPage();
	RewardsPage() {
		m_leftLabel = nullptr;
		m_rightLabel = nullptr;
		m_leftChest = nullptr;
		m_rightChest = nullptr;
		m_leftOpen = false;
		m_rightOpen = false;
		m_openLayer = nullptr;
	}

	static RewardsPage* create() = win inline, imac 0x214b50, m1 0x1c590c {
		auto ret = new RewardsPage();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	static char const* getRewardFrame(int type, int state) = win inline, m1 0x1c66b8, imac 0x215a70 {
		return cocos2d::CCString::createWithFormat("chest_%02d_%02d_001.png", type, state)->getCString();
	}
	void onClose(cocos2d::CCObject* sender) = win 0x82fc0, m1 0x1c6650, imac 0x215a10;
	void onFreeStuff(cocos2d::CCObject* sender) = win 0x3a9c20, m1 0x1c668c, imac 0x215a40;
	void onReward(cocos2d::CCObject* sender) = win 0x3a9460, m1 0x1c66e0, imac 0x215a90;
	void tryGetRewards() = win 0x3a9810, m1 0x1c6f5c, imac 0x216320;
	void unlockLayerClosed(RewardUnlockLayer* layer) = win inline, m1 0x1c71f8, imac 0x2165c0 {
		if (m_openLayer == layer) m_openLayer = nullptr;
	}
	callback void updateTimers(float) = win 0x3a9860, m1 0x1c6800, imac 0x215b90;

	virtual bool init() = win 0x3a8710, imac 0x214cc0, m1 0x1c5a20, ios 0x1cd380;
	virtual void registerWithTouchDispatcher() = win 0x41750, m1 0x1c71c0, imac 0x216580, ios 0x1ce7ac;
	virtual void keyBackClicked() = win 0x82ff0, m1 0x1c7144, imac 0x216510, ios 0x1ce730;
	virtual void show() = win 0x3a18c0, m1 0x1c6fec, imac 0x2163b0, ios 0x1ce5f0;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x1ce728 {}
	virtual void rewardsStatusFinished(int) = win 0x3a95a0, m1 0x1c6c90, imac 0x216030, ios 0x1ce3a4;
	virtual void rewardsStatusFailed() = win 0x3a9790, m1 0x1c6ee8, imac 0x2162c0, ios 0x1ce55c;

	cocos2d::CCLabelBMFont* m_leftLabel;
	cocos2d::CCLabelBMFont* m_rightLabel;
	CCMenuItemSpriteExtra* m_leftChest;
	CCMenuItemSpriteExtra* m_rightChest;
	bool m_leftOpen;
	bool m_rightOpen;
	RewardUnlockLayer* m_openLayer;
}

[[link(android)]]
class RewardUnlockLayer : FLAlertLayer, CurrencyRewardDelegate {
	// virtual ~RewardUnlockLayer();

	static RewardUnlockLayer* create(int, RewardsPage*) = win 0x3a9c50, m1 0x1c6b60, imac 0x215ec0;

	void connectionTimeout() = win 0x3aab00, m1 0x1c8358, imac 0x2178f0;
	bool init(int, RewardsPage*) = win 0x3a9d80, m1 0x1c74a0, imac 0x2169a0;
	void labelEnterFinishedO(cocos2d::CCObject*) = win inline, m1 0x1ca7c4, imac 0x219f80 {}
	void onClose(cocos2d::CCObject* sender) = win 0x3ad200, m1 0x1c8300, imac 0x217890;
	void playDropSound() = win 0x3aab60, m1 0x1c81a4, imac 0x217750;
	void playLabelEffect(int, int, cocos2d::CCSprite*, cocos2d::CCPoint, float) = win 0x3ac240, m1 0x1ca0d4, imac 0x2198a0;
	void playRewardEffect() = win 0x3aad20, m1 0x1c83c0, imac 0x217960;
	bool readyToCollect(GJRewardItem* item) = win inline, m1 0x1c6e04, imac 0x2161d0 {
		return item ? m_chestType == (int)item->m_rewardType : false;
	}
	void showCloseButton() = win 0x3ac1d0, m1 0x1ca74c, imac 0x219f00;
	bool showCollectReward(GJRewardItem*) = win 0x3aaa40, m1 0x1c6e24, imac 0x2161f0;
	void step2() = win 0x3aac00, m1 0x1c8230, imac 0x2177c0;
	void step3() = win 0x3aad00, m1 0x1ca0bc, imac 0x219880;

	virtual void keyBackClicked() = ios 0x1d17c4 {}
	virtual void currencyWillExit(CurrencyRewardLayer*) = win 0x3ad1f0, m1 0x1ca7c8, imac 0x219f90, ios 0x1d179c;

	cocos2d::CCArray* m_backgroundObjects;
	RewardsPage* m_rewardsPage;
	GJChestSprite* m_chestSprite;
	int m_chestType;
	bool m_rewardCollected;
	bool m_animationPlayed;
	GJRewardItem* m_rewardItem;
	cocos2d::CCLabelBMFont* m_wrongLabel;
	CCMenuItemSpriteExtra* m_closeBtn;
	CCMenuItemSpriteExtra* m_rewardBtn;
	float m_unkFloat;
}

[[link(android)]]
class RingObject : EffectGameObject {
	// virtual ~RingObject();

	static RingObject* create(char const*) = win 0x475b70;

	bool init(char const*);
	TodoReturn spawnCircle();

	virtual void setScale(float) = m1 0x16df00, imac 0x1af530, ios 0x38bb50;
	virtual void setRotation(float) = imac 0x1af590, ios 0x38bba0;
	virtual void resetObject() = m1 0x16ded4, imac 0x1af510, ios 0x38bb24;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x16df74, imac 0x1af5c0, ios 0x38bbb4;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x16e080, imac 0x1af710, ios 0x38bcb4;
	virtual void setRScale(float) = m1 0x16df30, imac 0x1af560, ios 0x38bb78;
	virtual void triggerActivated(float) = m1 0x16dd88, imac 0x1af3b0, ios 0x38b9d8;
	virtual bool shouldDrawEditorHitbox() = m1 0x16df64, imac 0x1af5a0, ios 0x38bba4;
	virtual TodoReturn powerOnObject(int) = m1 0x16dd94, imac 0x1af3c0, ios 0x38b9e4;

	bool m_claimTouch;
	// property 504
	bool m_isSpawnOnly;
}

[[link(android)]]
class RotateGameplayGameObject : EffectGameObject {
	// virtual ~RotateGameplayGameObject();

	static RotateGameplayGameObject* create();

	TodoReturn updateGameplayRotation();

	virtual bool init() = m1 0x19fa90, imac 0x1eb3d0, ios 0x3a1bbc;
	virtual void updateStartValues() = m1 0x1a11f4, imac 0x1ed0f0, ios 0x3a2424;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x1a0f04, imac 0x1ecd70, ios 0x3a2168;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x19fae0, imac 0x1eb420, ios 0x3a1c0c;
}

[[link(android)]]
class ScrollingLayer : cocos2d::CCLayerColor {
	// virtual ~ScrollingLayer();
	// ScrollingLayer() = ios 0x1c396c;

	static ScrollingLayer* create(cocos2d::CCSize, cocos2d::CCPoint, float) = ios 0x1c33cc, m1 0x6402a4, imac 0x72d870;

	TodoReturn getViewRect();
	bool init(cocos2d::CCSize, cocos2d::CCPoint, float) = ios 0x1c3480;
	void setStartOffset(cocos2d::CCPoint) = m1 0x6406b0, imac 0x72dd10;

	virtual void draw() = m1 0x640530, imac 0x72db30, ios 0x1c35f8;
	virtual void visit() = m1 0x6405d4, imac 0x72dc00, ios 0x1c369c;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x6fb00, m1 0x6406e8, imac 0x72dd50, ios 0x1c3724;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x6fbf0, m1 0x640844, imac 0x72def0, ios 0x1c37e4;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x6fd00, m1 0x640940, imac 0x72e010, ios 0x1c38e0;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x640978, imac 0x72e050, ios 0x1c3918;
}

[[link(android)]]
class SearchButton : cocos2d::CCSprite {
	// virtual ~SearchButton();

	static SearchButton* create(char const*, char const*, float, char const*) = win 0x2f21f0, imac 0x637810, m1 0x557558;

	bool init(char const*, char const*, float, char const*) = win 0x2f22c0, imac 0x639960, m1 0x5596d8;

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
	void onBack(cocos2d::CCObject* sender) = win 0x3bc630;
	void onSubmit(cocos2d::CCObject* sender) = win 0x3b85c0;
	TodoReturn playCoinEffect();
	static cocos2d::CCScene* scene();
	TodoReturn selectAThread();
	TodoReturn updateMessageLabel(gd::string);
	void updateSearchLabel(char const*);

	virtual bool init() = win 0x3b7280, m1 0x52bc04, imac 0x6056d0, ios 0x3c5f70;
	virtual void keyBackClicked() = win 0x3bc6d0, m1 0x52f41c, imac 0x6094b0, ios 0x3c8c94;
	virtual void textInputOpened(CCTextInputNode*) = win 0x3b9fd0, m1 0x52e828, imac 0x608630, ios 0x3c81a0;
	virtual void textInputClosed(CCTextInputNode*) = win 0x3ba120, m1 0x52e908, imac 0x608700, ios 0x3c828c;
	virtual void textChanged(CCTextInputNode*) = m1 0x52ea18, imac 0x6087d0, ios 0x3c830c;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x3c8198 {}
}

[[link(android)]]
class SecretLayer2 : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DialogDelegate {
	// virtual ~SecretLayer2();

	static SecretLayer2* create();

	gd::string getBasicMessage() = win 0x3c22a0;
	gd::string getErrorMessage() = win 0x3c2e00;
	gd::string getMessage() = win 0x3c19d0;
	gd::string getThreadMessage() = win 0x3c1bb0;
	TodoReturn nodeWithTag(int); // inlined on windows
	void onBack(cocos2d::CCObject* sender) = win 0x3c3f00, imac 0x4a8150, m1 0x40b4ec;
	void onDoor(cocos2d::CCObject* sender) = win 0x3bf060, imac 0x4a98e0, m1 0x40ca48;
	void onSecretLevel(cocos2d::CCObject* sender) = win 0x3bede0;
	void onSubmit(cocos2d::CCObject* sender) = win 0x3bf9c0, imac 0x4a81c0, m1 0x40b560;
	void playCoinEffect() = win 0x3c3a80;
	static cocos2d::CCScene* scene() = win 0x3bc910;
	void selectAThread(); // inlined on windows
	void showCompletedLevel() = win 0x3be090;
	void showSecretLevel() = win 0x3bdf20;
	void updateMessageLabel(gd::string) = win 0x3c1940;
	void updateSearchLabel(char const*) = win 0x3c1650, imac 0x4a7ee0, m1 0x40b294;

	virtual bool init() = win 0x3bca90, m1 0x40a32c, imac 0x4a6f10, ios 0x31a4f0;
	virtual void onExit() = win 0x3c3fc0, m1 0x410058, imac 0x4ad060, ios 0x31e85c;
	virtual void keyBackClicked() = win 0x3c3fb0, m1 0x40ff6c, imac 0x4acf70, ios 0x31e850;
	virtual void textInputOpened(CCTextInputNode*) = win 0x3c1430, m1 0x40efbc, imac 0x4abff0, ios 0x31dee8;
	virtual void textInputClosed(CCTextInputNode*) = win 0x3c1580, m1 0x40f09c, imac 0x4ac0c0, ios 0x31dfd4;
	virtual void textChanged(CCTextInputNode*) = m1 0x40f1ac, imac 0x4ac190, ios 0x31e054;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x31dee0 {}
	virtual void dialogClosed(DialogLayer*) = win 0x3bed40, m1 0x40d9f4, imac 0x4aaa60, ios 0x31d26c;
}

[[link(android)]]
class SecretLayer3 : cocos2d::CCLayer, DialogDelegate {
	// virtual ~SecretLayer3();
	SecretLayer3() {
		m_lockInput = false;
		m_locksArray = nullptr;
		m_demonEyes = nullptr;
		m_demonBody = nullptr;
		m_secretChest = nullptr;
	}

	static SecretLayer3* create() = win inline {
		auto ret = new SecretLayer3();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	TodoReturn animateEyes();
	TodoReturn firstInteractionStep1();
	TodoReturn firstInteractionStep2();
	TodoReturn firstInteractionStep3();
	TodoReturn firstInteractionStep4();
	void onBack(cocos2d::CCObject* sender);
	void onChest01(cocos2d::CCObject* sender);
	void onChest02(cocos2d::CCObject* sender);
	void onClick(cocos2d::CCObject* sender) = win 0x3c6980;
	TodoReturn revealStep1();
	TodoReturn revealStep2();
	TodoReturn revealStep3();
	TodoReturn revealStep4();
	TodoReturn revealStep5();
	static cocos2d::CCScene* scene();
	void showUnlockDialog();

	virtual bool init() = win 0x3c4540, m1 0x41039c, imac 0x4ad500, ios 0x31ea30;
	virtual void onExit() = m1 0x414e18, imac 0x4b2400, ios 0x32254c;
	virtual void keyBackClicked() = win 0x3c9c80, m1 0x414e0c, imac 0x4b23d0, ios 0x322540;
	virtual void dialogClosed(DialogLayer*) = win 0x3c9680, m1 0x414ad4, imac 0x4b20b0, ios 0x3222e4;

	DungeonBarsSprite* m_dungeonBars;
	bool m_lockInput;
	cocos2d::CCArray* m_locksArray;
	cocos2d::CCSprite* m_demonEyes;
	cocos2d::CCSprite* m_demonBody;
	CCMenuItemSpriteExtra* m_secretChest;
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
	static cocos2d::CCScene* scene();
	TodoReturn selectAThread();
	void showDialog(int);
	void showFirstDialog();
	TodoReturn updateMessageLabel(gd::string);
	void updateSearchLabel(char const*);

	virtual bool init() = m1 0x3388c4, win 0x3ca010, imac 0x3b3ee0, ios 0x362760;
	virtual void onExit() = m1 0x33cca8, imac 0x3b84b0, ios 0x364dd8;
	virtual void keyBackClicked() = win 0x3cdb70, m1 0x33cbb4, imac 0x3b83c0, ios 0x364dcc;
	virtual void textInputOpened(CCTextInputNode*) = m1 0x33bc9c, imac 0x3b7500, ios 0x3647bc;
	virtual void textInputClosed(CCTextInputNode*) = m1 0x33bd7c, imac 0x3b75d0, ios 0x3648a8;
	virtual void textChanged(CCTextInputNode*) = m1 0x33be8c, imac 0x3b76a0, ios 0x364928;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = ios 0x3647b4 {}
	virtual void dialogClosed(DialogLayer*) = ios 0x3643f4 {}
}

[[link(android)]]
class SecretNumberLayer : cocos2d::CCLayer {
	// virtual ~SecretNumberLayer();

	static SecretNumberLayer* create();

	TodoReturn playNumberEffect(int);

	virtual bool init() = imac 0x4ad140, ios 0x31e8e4;
}

[[link(android)]]
class SecretRewardsLayer : cocos2d::CCLayer, DialogDelegate, BoomScrollLayerDelegate {
	// virtual ~SecretRewardsLayer();
	SecretRewardsLayer() = ios 0x2ff01c {
		m_mainLayer = nullptr;
		m_secondaryLayer = nullptr;
		m_chestCounter = nullptr;
		m_chestCounters = nullptr;
		m_backSprite = nullptr;
		m_unkSize4_2 = 0;
		m_secondaryScrollLayer = nullptr;
		m_scratchDialogIndex = 0;
		m_potborDialogIndex = 0;
		m_diamondDialogIndex = 0;
		m_mechanicDialogIndex = 0;
		m_inMainLayer = false;
		m_rewardType = GJRewardType::Unknown;
		m_lockedDialogIndex = 0;
	}

	static SecretRewardsLayer* create(bool fromShop) = win inline, ios 0x2f8c5c, imac 0x63cf00, m1 0x55c6f4 {
		auto ret = new SecretRewardsLayer();
		if (ret->init(fromShop)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}
	static cocos2d::CCScene* scene(bool fromShop) = win 0x3ae160, ios 0x2f8c10, imac 0x63cec0, m1 0x55c6a8;

	void createSecondaryLayer(int) = win 0x3b0720, ios 0x2fadf4, imac 0x63fc70, m1 0x55f2b0;
	cocos2d::CCArray* generateChestItems(int) = win 0x3b0b70, ios 0x2fb19c, imac 0x640100, m1 0x55f6ec;
	cocos2d::ccColor3B getPageColor(int page) = win inline, imac 0x63f1b0, m1 0x55e820 {
		if (page == 1) return cocos2d::ccc3(50, 50, 50);
		else if (page == 2) return cocos2d::ccc3(70, 0, 120);
		else return cocos2d::ccc3(70, 0, 75);
	}
	void goToPage(int page) = win inline, ios 0x2fa67c, imac 0x63f060, m1 0x55e690 {
		if (m_inMainLayer) m_mainScrollLayer->moveToPage(page);
		else m_secondaryScrollLayer->moveToPage(page);
	}
	bool init(bool) = win 0x3ae2c0, imac 0x63d020, ios 0x2f8cd0, m1 0x55c7dc;
	void moveToMainLayer(cocos2d::CCObject*) = ios 0x2facd4, imac 0x63fb20, m1 0x55f180;
	void moveToSecondaryLayer(int) = ios 0x2faabc, imac 0x63f650, m1 0x55ec98;
	void onBack(cocos2d::CCObject* sender) = win 0x3b24f0, ios 0x2fa1d8, imac 0x63eae0, m1 0x55e0ec;
	void onChestType(cocos2d::CCObject* sender) = win 0x3b0490, ios 0x2fa244, imac 0x63eb50, m1 0x55e158;
	void onSelectItem(cocos2d::CCObject* sender) = win 0x3b1520, imac 0x640fc0, m1 0x5603c4;
	void onShop(cocos2d::CCObject* sender) = win 0x3b19e0, ios 0x2fa52c, imac 0x63ee90, m1 0x55e4bc;
	void onSpecialItem(cocos2d::CCObject* sender) = win 0x3b1de0, ios 0x2fa80c, imac 0x63f200, m1 0x55e850;
	void onSwitchPage(cocos2d::CCObject* sender) = win 0x3b01a0, ios 0x2fa624, imac 0x63efe0, m1 0x55e600;
	void showDialog01() = win 0x3b2720, imac 0x641370, m1 0x5607b4;
	void showDialog03() = win 0x3b4030, imac 0x643050, m1 0x561f70;
	void showDialogDiamond() = win 0x3b6530, imac 0x645b50, m1 0x564250;
	void showDialogMechanic() = win 0x3b52d0, imac 0x6445c0, m1 0x5630f8;
	void showLockedChest() = imac 0x63f770, m1 0x55ed90;
	void showShop(int shop) = win inline, imac 0x646860, m1 0x564d38 {
		if (cocos2d::CCDirector::sharedDirector()->replaceScene(cocos2d::CCTransitionMoveInT::create(0.5f, GJShopLayer::scene((ShopType)shop)))) this->setKeypadEnabled(false);
	}
	void switchToOpenedState(CCMenuItemSpriteExtra*) = win 0x3b2120, ios 0x2fa298, imac 0x63eb90, m1 0x55e1ac;
	void updateBackButton() = win 0x3b05e0, ios 0x2fabb4, imac 0x63fa10, m1 0x55f054;
	void updateUnlockedLabel() = win 0x3b2200, ios 0x2fa380, imac 0x63ec60, m1 0x55e294;

	virtual void onExit() = win 0x3b26e0, m1 0x564f80, imac 0x646ab0, ios 0x2fefe4;
	virtual void keyBackClicked() = win 0x3b26d0, m1 0x564f0c, imac 0x646a20, ios 0x2fefd0;
	virtual void dialogClosed(DialogLayer*) = win 0x3b1bf0, m1 0x564da8, imac 0x6468d0, ios 0x2feedc;
	virtual void scrollLayerMoved(cocos2d::CCPoint) = win 0x3b0260, m1 0x55e6e4, imac 0x63f0a0, ios 0x2fa6d0;

	cocos2d::CCLayer* m_mainLayer;
	cocos2d::CCLayer* m_secondaryLayer;
	cocos2d::CCLabelBMFont* m_chestLabel;
	cocos2d::CCLabelBMFont* m_chestCounter;
	cocos2d::CCDictionary* m_chestCounters;
	cocos2d::CCLabelBMFont* m_keysLabel;
	void* m_unknown;
	CCMenuItemSpriteExtra* m_leftButton;
	CCMenuItemSpriteExtra* m_rightButton;
	cocos2d::CCSprite* m_backSprite;
	int m_unkSize4_1;
	int m_unkSize4_2;
	BoomScrollLayer* m_mainScrollLayer;
	BoomScrollLayer* m_secondaryScrollLayer;
	cocos2d::CCSprite* m_backgroundSprite;
	int m_scratchDialogIndex;
	int m_potborDialogIndex;
	int m_diamondDialogIndex;
	int m_mechanicDialogIndex;
	bool m_inMainLayer;
	GJRewardType m_rewardType;
	int m_lockedDialogIndex;
}

[[link(android)]]
class SelectArtDelegate {
	virtual void selectArtClosed(SelectArtLayer*);
}

[[link(android)]]
class SelectArtLayer : FLAlertLayer {
	// virtual ~SelectArtLayer();

	static SelectArtLayer* create(SelectArtType, int) = win 0x301b60, m1 0x211ca0, imac 0x26b2c0;

	bool init(SelectArtType, int) = win 0x301c70, m1 0x2122d4, imac 0x26baf0;
	void onClose(cocos2d::CCObject* sender) = win 0x302a40, m1 0x212d60, imac 0x26c5f0;
	void onSelectCustom(cocos2d::CCObject* sender) = win 0x302980, m1 0x212dc0, imac 0x26c640;
	void selectArt(cocos2d::CCObject* sender) = win 0x3028c0, m1 0x212c78, imac 0x26c520;
	void updateSelectedCustom(int idx) = win inline, m1 0x211dd0, imac 0x26b430 {
		if (m_lineSprites) {
			m_line = idx;
			this->onSelectCustom(nullptr);
		}
	}

	virtual void keyBackClicked() = win 0x302a90, m1 0x212e68, imac 0x26c700, ios 0x188cf4;

	cocos2d::CCArray* m_artSprites;
	cocos2d::CCArray* m_lineSprites;
	int m_art;
	int m_line;
	SelectArtType m_type;
	SelectArtDelegate* m_delegate;
}

[[link(android)]]
class SelectEventLayer : SetupTriggerPopup {
	// virtual ~SelectEventLayer();

	static SelectEventLayer* create(SetupEventLinkPopup*, gd::set<int>&);

	TodoReturn addToggle(int, gd::string);
	bool init(SetupEventLinkPopup*, gd::set<int>&);
	TodoReturn nextPosition();
	void onInfo(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = m1 0x4cd08c, imac 0x581790, ios 0x411bbc;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x4ccfcc, imac 0x5816c0, ios 0x411b7c;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = m1 0x4ccd88, imac 0x581490, ios 0x411a54;
}

[[link(android)]]
class SelectFontLayer : FLAlertLayer {
	// virtual ~SelectFontLayer();
	SelectFontLayer() {
		m_font = -1;
		m_editorLayer = nullptr;
		m_fontLabel = nullptr;
	}

	static SelectFontLayer* create(LevelEditorLayer* editorLayer) = win inline, m1 0x238ed8, imac 0x296020 {
		auto ret = new SelectFontLayer();
		if (ret->init(editorLayer)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	bool init(LevelEditorLayer*) = win 0x27c060, m1 0x238fdc, imac 0x296160;
	void onChangeFont(cocos2d::CCObject* sender) = win 0x27c880, m1 0x2395f8, imac 0x296770;
	void onClose(cocos2d::CCObject* sender) = win 0x82fc0, m1 0x2395bc, imac 0x296740;
	void updateFontLabel() = win 0x27c680, m1 0x239690, imac 0x296810;

	virtual void keyBackClicked() = win 0x82ff0, m1 0x239790, imac 0x296930, ios 0x2e39c8;

	int m_font;
	LevelEditorLayer* m_editorLayer;
	cocos2d::CCLabelBMFont* m_fontLabel;
}

[[link(android)]]
class SelectListIconDelegate {
	virtual void iconSelectClosed(SelectListIconLayer*) {}
}

[[link(android)]]
class SelectListIconLayer : FLAlertLayer {
	// virtual ~SelectListIconLayer();
	SelectListIconLayer() {}

	static SelectListIconLayer* create(int difficulty) = win inline, m1 0x2eeb54, imac 0x3617b0 {
		auto ret = new SelectListIconLayer();
		if (ret->init(difficulty)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	bool init(int) = win 0x2e8cb0, m1 0x2ef9e4, imac 0x362770;
	void onClose(cocos2d::CCObject* sender) = win 0x2e9560, m1 0x2f0034, imac 0x362d60;
	void onSelect(cocos2d::CCObject* sender) = win 0x2e94a0, m1 0x2eff3c, imac 0x362ca0;

	virtual void keyBackClicked() = win 0x2e95a0, m1 0x2f008c, imac 0x362db0, ios 0x257780;

	cocos2d::CCArray* m_difficulties;
	int m_currentDifficulty;
	SelectListIconDelegate* m_delegate;
}

[[link(android)]]
class SelectPremadeDelegate {
	virtual void selectPremadeClosed(SelectPremadeLayer*, int);
}

[[link(android)]]
class SelectPremadeLayer : FLAlertLayer {
	// virtual ~SelectPremadeLayer();

	static SelectPremadeLayer* create();

	void onClose(cocos2d::CCObject* sender);
	void onSelectPremade(cocos2d::CCObject* sender);

	virtual bool init() = m1 0x29ba84, imac 0x309190, ios 0x69d4c;
	virtual void keyBackClicked() = m1 0x29bfcc, imac 0x3096a0, ios 0x6a204;
}

[[link(android)]]
class SelectSettingDelegate {
	virtual void selectSettingClosed(SelectSettingLayer*);
}

[[link(android)]]
class SelectSettingLayer : FLAlertLayer {
	// virtual ~SelectSettingLayer();

	static SelectSettingLayer* create(SelectSettingType, int) = win 0x302ae0, m1 0x21153c, imac 0x26aae0;

	static gd::string frameForItem(SelectSettingType, int) = win 0x303340, m1 0x213734, imac 0x26d0d0;
	static gd::string frameForValue(SelectSettingType type, int value) = win inline, m1 0x2112d0, imac 0x26a780 {
		return frameForItem(type, valueToIdx(type, value));
	}
	gd::string getSelectedFrame() = win inline, m1 0x2117f8, imac 0x26adc0 {
		return frameForValue(m_type, m_settingID);
	}
	int getSelectedValue() = win inline, m1 0x2117c4, imac 0x26ad90 {
		return idxToValue(m_type, m_settingID);
	}
	static int idxToValue(SelectSettingType type, int idx) = win inline, m1 0x213aac, imac 0x26d3b0 {
		if (type != SelectSettingType::StartingSpeed) return idx;

		switch (idx) {
			case 0: return 1;
			case 1: return 0;
			case 2: case 3: case 4: return idx;
			default: return 0;
		}
	}
	bool init(SelectSettingType, int) = win 0x302bf0, m1 0x213154, imac 0x26cae0;
	void onClose(cocos2d::CCObject* sender) = win 0x303890, m1 0x213a4c, imac 0x26d360;
	void onSelect(cocos2d::CCObject* sender) = win 0x3037e0, m1 0x213974, imac 0x26d2b0;
	static int valueToIdx(SelectSettingType type, int value) = win inline, m1 0x213708, imac 0x26d0a0 {
		if (type != SelectSettingType::StartingSpeed) return value;

		switch (value) {
			case 0: return 1;
			case 1: return 0;
			case 2: case 3: case 4: return value;
			default: return 1;
		}
	}

	virtual void keyBackClicked() = win 0x3038e0, m1 0x213ad8, imac 0x26d3e0, ios 0x189444;

	cocos2d::CCArray* m_settingSprites;
	int m_settingID;
	SelectSettingType m_type;
	SelectSettingDelegate* m_delegate;
}

[[link(android)]]
class SelectSFXSortDelegate {
	virtual void sortSelectClosed(SelectSFXSortLayer*);
}

[[link(android)]]
class SelectSFXSortLayer : FLAlertLayer {
	// virtual ~SelectSFXSortLayer();
	SelectSFXSortLayer() {
		m_sortType = AudioSortType::NameAscending;
		m_delegate = nullptr;
	}

	static SelectSFXSortLayer* create(AudioSortType sortType) = win inline, m1 0x3bb1a8, imac 0x449b50 {
		auto ret = new SelectSFXSortLayer();
		if (ret->init(sortType)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	bool init(AudioSortType) = win 0x4551f0, m1 0x3bbb78, imac 0x44a5f0;
	void onClose(cocos2d::CCObject* sender) = win 0x82fc0, m1 0x3bc014, imac 0x44aa80;
	void onSelect(cocos2d::CCObject* sender) = win 0x455870, m1 0x3bc050, imac 0x44aab0;

	virtual void keyBackClicked() = win 0x82ff0, m1 0x3bc0bc, imac 0x44ab10, ios 0x176cdc;

	AudioSortType m_sortType;
	SelectSFXSortDelegate* m_delegate;
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

	virtual bool init() = m1 0x17b844, imac 0x1bf2e0, ios 0x39339c;
	virtual void resetObject() = m1 0x17b894, imac 0x1bf330, ios 0x3933ec;
	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = m1 0x17ba0c, imac 0x1bf5f0, ios 0x39341c;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x17be98, imac 0x1bfb70, ios 0x3936d4;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x17c314, imac 0x1c0060, ios 0x393a20;
}

[[link(android)]]
class SetColorIDPopup : SetIDPopup, GJSpecialColorSelectDelegate {
	// virtual ~SetColorIDPopup();

	static SetColorIDPopup* create(int);

	bool init(int);
	void onSelectSpecialColor(cocos2d::CCObject* sender);

	virtual void colorSelectClosed(GJSpecialColorSelect*, int) = win 0x28a170, m1 0x249f14, imac 0x2a8870, ios 0x2ef7bc;
}

[[link(android)]]
class SetFolderPopup : SetIDPopup, SetTextPopupDelegate {
	// virtual ~SetFolderPopup();

	static SetFolderPopup* create(int value, bool isCreated, gd::string title) = win 0x28a310, m1 0x24a738, imac 0x2a92f0;

	bool init(int value, bool isCreated, gd::string title) = win 0x28a450, m1 0x24a920, imac 0x2a9550;
	void onSetFolderName(cocos2d::CCObject* sender) = win 0x28a810, m1 0x24abe0, imac 0x2a9830;

	virtual void valueChanged() = win 0x28a6d0, m1 0x24add0, imac 0x2a9a10, ios 0x2eff74;
	virtual void setTextPopupClosed(SetTextPopup*, gd::string) = win 0x28aa10, m1 0x24b3b8, imac 0x2aa060, ios 0x2f02a8;

	bool m_isCreated;
	cocos2d::CCLabelBMFont* m_titleLabel;
}

[[link(android)]]
class SetGroupIDLayer : FLAlertLayer, TextInputDelegate {
	// virtual ~SetGroupIDLayer();
	//SetGroupIDLayer() = ios 0x48054;

	static SetGroupIDLayer* create(GameObject*, cocos2d::CCArray*) = m1 0x2a305c, imac 0x3115c0, ios 0x4191c;

	TodoReturn addGroupID(int);
	void callRemoveFromGroup(float);
	TodoReturn createTextInput(cocos2d::CCPoint, int, int, gd::string, float, int);
	TodoReturn determineStartValues();
	bool init(GameObject* obj, cocos2d::CCArray* objs) = win 0x3cde60, m1 0x2a31bc, imac 0x311790, ios 0x419a0;
	void onAddGroup(cocos2d::CCObject* sender) = win 0x3d1eb0;
	void onAddGroupParent(cocos2d::CCObject* sender) = win 0x3d2020;
	void onAnim(cocos2d::CCObject* sender);
	void onArrow(int tag, int increment) = win 0x3d05e0;
	void onArrowLeft(cocos2d::CCObject* sender) = win 0x3d0580;
	void onArrowRight(cocos2d::CCObject* sender) = win 0x3d05b0;
	void onClose(cocos2d::CCObject* sender) = win 0x3d2b60, m1 0x2a4f2c, imac 0x3136a0;
	void onCopy(cocos2d::CCObject* sender);
	void onExtra(cocos2d::CCObject* sender) = win 0x3d0cd0;
	void onExtra2(cocos2d::CCObject* sender);
	void onNextFreeEditorLayer1(cocos2d::CCObject* sender) = win 0x3d23b0;
	void onNextFreeEditorLayer2(cocos2d::CCObject* sender) = win 0x3d2420;
	void onNextFreeOrderChannel(cocos2d::CCObject* sender) = win 0x3d28c0;
	void onNextGroupID1(cocos2d::CCObject* sender) = win 0x3d14d0, m1 0x2a5700, imac 0x313ed0;
	void onPaste(cocos2d::CCObject* sender);
	void onRemoveFromGroup(cocos2d::CCObject* sender) = win 0x3d1de0;
	void onSmoothEase(cocos2d::CCObject* sender);
	void onToggleGuide(cocos2d::CCObject* sender);
	void onToggleSelectedOrder(cocos2d::CCObject* sender);
	void onZLayer(cocos2d::CCObject* sender);
	void onZLayerShift(cocos2d::CCObject* sender);
	TodoReturn removeGroupID(int);
	void updateEditorLabel() = win 0x3d2520;
	void updateEditorLabel2() = win 0x3d25b0;
	void updateEditorLayerID() = win 0x3d22b0;
	void updateEditorLayerID2() = win 0x3d2330;
	void updateEditorOrder() = win 0x3d2a90;
	void updateEditorOrderLabel() = win 0x3d2760;
	TodoReturn updateGroupIDButtons();
	void updateGroupIDLabel() = win 0x3d26d0, m1 0x2a5fac, imac 0x3148d0;
	void updateOrderChannel() = win 0x3d29c0;
	void updateOrderChannelLabel() = win 0x3d2810;
	TodoReturn updateZLayerButtons();
	void updateZOrder() = win 0x3d2490;
	void updateZOrderLabel() = win 0x3d2640;

	virtual void keyBackClicked() = win 0x3d2ee0, m1 0x2a7bb0, imac 0x316750, ios 0x45658;
	virtual void textInputClosed(CCTextInputNode*) = m1 0x2a7494, imac 0x315fd0, ios 0x450c8;
	virtual void textChanged(CCTextInputNode*) = win 0x3d1000, m1 0x2a74b0, imac 0x316010, ios 0x450e4;

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

	static SetIDPopup* create(int current, int begin, int end, gd::string title, gd::string button, bool, int, float, bool, bool) = win 0x289030, imac 0x2a6f20, m1 0x24875c, ios 0x2ee780;

	bool init(int current, int begin, int end, gd::string title, gd::string button, bool, int, float, bool, bool) = win 0x289160, imac 0x2a7270, m1 0x248a7c, ios 0x2ee974;
	void onCancel(cocos2d::CCObject* sender) = win 0x289dd0, imac 0x2a7c10, m1 0x2493fc;
	void onClose(cocos2d::CCObject* sender) = win 0x289e70, imac 0x2a7b10, m1 0x2492fc;
	void onItemIDArrow(cocos2d::CCObject* sender) = win 0x289b20, imac 0x2a7bc0, m1 0x2493a0;
	void onResetValue(cocos2d::CCObject* sender) = win 0x289b70, imac 0x2a7ba0, m1 0x249394;
	void updateTextInputLabel() = win 0x289c90, imac 0x2a7cb0, m1 0x24949c;

	virtual void keyBackClicked() = win 0x289f10, m1 0x2497c0, imac 0x2a7fc0, ios 0x2ef4c0;
	virtual void show() = win 0x289d40, m1 0x24973c, imac 0x2a7f40, ios 0x2ef444;
	virtual void textInputClosed(CCTextInputNode*) = win 0x89f80, m1 0x2495c8, imac 0x2a7de0, ios 0x2ef388;
	virtual void textChanged(CCTextInputNode*) = win 0x289b90, m1 0x2495e4, imac 0x2a7e20, ios 0x2ef3a4;
	virtual void valueChanged() = ios 0x2ef440 {}

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

	virtual void onClose(cocos2d::CCObject* sender) = win 0x3d6ad0, m1 0x8c864, imac 0x9c540, ios 0x423318;
	virtual void valueDidChange(int, float) = win 0x3d69e0, m1 0x8c770, imac 0x9c450, ios 0x423224;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = win 0x3d6840, m1 0x8c668, imac 0x9c330, ios 0x42311c;
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

	virtual void determineStartValues() = imac 0x2b65b0, ios 0x223c38;
	virtual void valueDidChange(int, float) = m1 0x256504, imac 0x2b65c0, ios 0x223c3c;
}

[[link(android)]]
class SetTextPopup : FLAlertLayer, TextInputDelegate {
	// virtual ~SetTextPopup();

	static SetTextPopup* create(gd::string value, gd::string placeholder, int maxLength, gd::string title, gd::string okBtnText, bool showResetBtn, float) = win 0x28ac50, m1 0x24af3c, imac 0x2a9b60;

	bool init(gd::string, gd::string, int, gd::string, gd::string, bool, float) = win 0x28adc0, m1 0x24b7b4, imac 0x2aa530;
	void onCancel(cocos2d::CCObject* sender) = win 0x28b7f0, m1 0x24bff4, imac 0x2aadf0;
	void onClose(cocos2d::CCObject* sender) = win 0x28b880, m1 0x24be84, imac 0x2aac80;
	void onResetValue(cocos2d::CCObject* sender) = win 0x28b6a0, m1 0x24bfc4, imac 0x2aadc0;
	void updateTextInputLabel() = win inline, m1 0x24c000, imac 0x2aae10 {
		m_disableDelegate = true;
		m_input->setString(m_value);
		m_disableDelegate = false;
	}

	virtual void keyBackClicked() = win 0x28b910, m1 0x24c27c, imac 0x2ab090, ios 0x2f0d5c;
	virtual void show() = win 0x8a220, m1 0x24c230, imac 0x2ab030, ios 0x2f0d10;
	virtual void textInputClosed(CCTextInputNode*) = win 0x89f80, m1 0x24c0f4, imac 0x2aaf00, ios 0x2f0c6c;
	virtual void textChanged(CCTextInputNode*) = win 0x28b700, m1 0x24c110, imac 0x2aaf40, ios 0x2f0c88;

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

	static SetupAdvFollowEditPhysicsPopup* create(AdvancedFollowEditObject*, cocos2d::CCArray*);

	bool init(AdvancedFollowEditObject*, cocos2d::CCArray*);

	virtual void valueDidChange(int, float) = m1 0x29cde0, imac 0x30a800, ios 0x6adfc;
}

[[link(android)]]
class SetupAdvFollowPopup : SetupTriggerPopup, SelectPremadeDelegate {
	// virtual ~SetupAdvFollowPopup();

	static SetupAdvFollowPopup* create(AdvancedFollowTriggerObject*, cocos2d::CCArray*);

	bool init(AdvancedFollowTriggerObject*, cocos2d::CCArray*);
	void onMode(cocos2d::CCObject* sender);
	void onPremade(cocos2d::CCObject* sender);
	void updateMode(int);

	virtual void onClose(cocos2d::CCObject* sender) = imac 0x3090f0, ios 0x69d10;
	virtual void updateDefaultTriggerValues() = m1 0x29aff8, imac 0x308690, ios 0x6957c;
	virtual void valueDidChange(int, float) = m1 0x29b198, imac 0x3087d0, ios 0x696dc;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = m1 0x29b418, imac 0x308a40, ios 0x698bc;
	virtual void selectPremadeClosed(SelectPremadeLayer*, int) = win 0x3dac30, m1 0x29b620, imac 0x308c70, ios 0x69a7c;
}

[[link(android)]]
class SetupAdvFollowRetargetPopup : SetupTriggerPopup {
	// virtual ~SetupAdvFollowRetargetPopup();

	static SetupAdvFollowRetargetPopup* create(AdvancedFollowEditObject*, cocos2d::CCArray*);

	bool init(AdvancedFollowEditObject*, cocos2d::CCArray*);

	virtual void updateDefaultTriggerValues() = m1 0x29d528, imac 0x30b0d0, ios 0x6b3e0;
	virtual void valueDidChange(int, float) = m1 0x29d6c8, imac 0x30b210, ios 0x6b540;
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

	virtual void determineStartValues() = m1 0x35a324, imac 0x3d9640, ios 0x3ccab8;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x35a6bc, imac 0x3d9a60, ios 0x3ccd74;
	virtual void textChanged(CCTextInputNode*) = win 0x3dec60, m1 0x35a50c, imac 0x3d9870, ios 0x3ccc98;
}

[[link(android)]]
class SetupAnimSettingsPopup : SetupTriggerPopup {
	// virtual ~SetupAnimSettingsPopup();

	static SetupAnimSettingsPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn updateAnimSettings();

	virtual void onClose(cocos2d::CCObject* sender) = m1 0x8b480, imac 0x9ae50, ios 0x2f8a44;
}

[[link(android)]]
class SetupAreaAnimTriggerPopup : SetupAreaTintTriggerPopup {
	// virtual ~SetupAreaAnimTriggerPopup();

	static SetupAreaAnimTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*, int);

	TodoReturn createValueControlAdvancedAnim(int, gd::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float min, float max, int, int, GJInputStyle);
	bool init(EnterEffectObject*, cocos2d::CCArray*, int);
	void onDeactivateAnimValue(cocos2d::CCObject* sender);
	TodoReturn updateTargetIDLabel();

	virtual void updateDefaultTriggerValues() = m1 0x4418c4, imac 0x4e6040, ios 0x41178;
	virtual void valueDidChange(int, float) = m1 0x441a80, imac 0x4e61e0, ios 0x412dc;
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

	virtual void updateInputValue(int, float&) = win 0x3e2ff0, m1 0x43b9ec, imac 0x4dea00, ios 0x3ce08;
	virtual void updateDefaultTriggerValues() = win 0x3e2920, m1 0x43b574, imac 0x4de5f0, ios 0x3caac;
	virtual TodoReturn updateInputNode(int, float) = win 0x3e2fc0, m1 0x43b9b8, imac 0x4de9d0, ios 0x3cdd4;
	virtual void valueDidChange(int, float) = win 0x3e2e40, m1 0x43b87c, imac 0x4de890, ios 0x3ccc4;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = win 0x3e2f60, m1 0x43b930, imac 0x4de960, ios 0x3cd4c;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = win 0x3e2f90, m1 0x43b984, imac 0x4de9a0, ios 0x3cda0;
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

	virtual void determineStartValues() = win 0x3e5440, m1 0x43ec98, imac 0x4e2ad0, ios 0x3ef20;
	virtual void onClose(cocos2d::CCObject* sender) = win 0x3e5750, m1 0x43ef98, imac 0x4e2de0, ios 0x3f08c;
	virtual void valueDidChange(int, float) = win 0x3e5280, m1 0x43eba8, imac 0x4e29e0, ios 0x3ee58;
	virtual void hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue) = win 0x3e5660, m1 0x43eddc, imac 0x4e2c50, ios 0x3f060;
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

	virtual void selectArtClosed(SelectArtLayer*) = win 0x446640, m1 0x4d723c, imac 0x58d020, ios 0x419d70;
}

[[link(android)]]
class SetupAudioLineGuidePopup : SetupTriggerPopup, SelectSettingDelegate {
	// virtual ~SetupAudioLineGuidePopup();

	static SetupAudioLineGuidePopup* create(AudioLineGuideGameObject*, cocos2d::CCArray*);

	bool init(AudioLineGuideGameObject*, cocos2d::CCArray*);
	void onSpeed(cocos2d::CCObject* sender);

	virtual void selectSettingClosed(SelectSettingLayer*) = win 0x444910, m1 0x4d5abc, imac 0x58b4c0, ios 0x418b00;
}

[[link(android)]]
class SetupAudioTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupAudioTriggerPopup();

	TodoReturn addProxVolControls(int);
	TodoReturn addTimeControls(int, float);
	void onProxMode(cocos2d::CCObject* sender);
	TodoReturn updateSpecialGroup();

	virtual void valueDidChange(int, float) = win 0x41af90, m1 0x421a04, imac 0x4c18a0, ios 0x18af9c;
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

	virtual void determineStartValues() = m1 0x4da060, imac 0x590a20, ios 0x24b098;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x4da2b0, imac 0x590cc0, ios 0x24b274;
	virtual void textChanged(CCTextInputNode*) = win 0x3e8bc0, m1 0x4da1c4, imac 0x590bb0, ios 0x24b1f4;
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

	virtual void determineStartValues() = m1 0x4161c4, imac 0x4b3bb0, ios 0x3b40d8;
	virtual void onClose(cocos2d::CCObject* sender) = imac 0x4b3ea0, ios 0x3b4360;
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

	virtual void determineStartValues() = m1 0x58bb44, imac 0x6706c0, ios 0x19c274;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x58c53c, imac 0x6711f0, ios 0x19cb20;
	virtual void textChanged(CCTextInputNode*) = win 0x3ec2f0, m1 0x58c2b4, imac 0x670ec0, ios 0x19c8f0;
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = win 0x3eb9f0, m1 0x58bf40, imac 0x670a90, ios 0x19c5c0;
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

	virtual void determineStartValues() = m1 0x4272ac, imac 0x4c7d50;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x427994, imac 0x4c8510;
	virtual void textChanged(CCTextInputNode*) = m1 0x42776c, imac 0x4c82a0;
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = m1 0x427520, imac 0x4c7fd0;
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

	virtual void determineStartValues() = m1 0x3212f4, imac 0x399730, ios 0x240b3c;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x321880, imac 0x399dc0, ios 0x240f54;
	virtual void textChanged(CCTextInputNode*) = win 0x3ee6c0, m1 0x321608, imac 0x399ad0, ios 0x240e14;
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

	virtual void determineStartValues() = m1 0x2580fc, imac 0x2b8570, ios 0xf6238;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x2585e0, imac 0x2b8b00, ios 0xf6610;
	virtual void textChanged(CCTextInputNode*) = win 0x3f1250, m1 0x2583b8, imac 0x2b88a0, ios 0xf64d0;
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

	virtual void determineStartValues() = m1 0x5914f4, imac 0x676a30, ios 0x2bdca8;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x59177c, imac 0x676d50, ios 0x2bdea0;
	virtual void textInputClosed(CCTextInputNode*) = m1 0x591674, imac 0x676c00, ios 0x2bde04;
	virtual void textChanged(CCTextInputNode*) = win 0x3f2760, m1 0x591690, imac 0x676c40, ios 0x2bde20;
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

	virtual void determineStartValues() = win 0x3f5180, m1 0x375ab4, imac 0x3fc2d0, ios 0x409d14;
	virtual void onClose(cocos2d::CCObject* sender) = win 0x3f5760, m1 0x375ea4, imac 0x3fc6f0, ios 0x409f68;
	virtual void updateInputValue(int, float&) = m1 0x376020, imac 0x3fc890, ios 0x40a0c0;
	virtual TodoReturn updateInputNode(int, float) = m1 0x375fec, imac 0x3fc860, ios 0x40a08c;
	virtual void valueDidChange(int, float) = win 0x3f5350, m1 0x375c24, imac 0x3fc490, ios 0x409e80;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = m1 0x375f64, imac 0x3fc7f0, ios 0x40a004;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = m1 0x375fb8, imac 0x3fc830, ios 0x40a058;
	virtual void hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue) = win 0x3f5670, m1 0x375ce8, imac 0x3fc560, ios 0x409f3c;
}

[[link(android)]]
class SetupEnterTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupEnterTriggerPopup();

	static SetupEnterTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
	void onEnterType(cocos2d::CCObject* sender);

	virtual void determineStartValues() = m1 0x23a45c, imac 0x297850, ios 0x2e43e8;
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

	virtual void valueDidChange(int, float) = m1 0x4d69cc, imac 0x58c6c0, ios 0x419714;
}

[[link(android)]]
class SetupGameplayOffsetPopup : SetupTriggerPopup {
	// virtual ~SetupGameplayOffsetPopup();

	static SetupGameplayOffsetPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	void onDefaultValues(cocos2d::CCObject* sender);

	virtual void updateInputValue(int, float&) = m1 0x6ac8ac, imac 0x7a51e0, ios 0x1ab088;
	virtual TodoReturn updateInputNode(int, float) = m1 0x6ac894, imac 0x7a51c0, ios 0x1ab070;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = m1 0x6ac844, imac 0x7a5170, ios 0x1ab020;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = m1 0x6ac87c, imac 0x7a51a0, ios 0x1ab058;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = m1 0x6ac7b0, imac 0x7a50d0, ios 0x1aaf9c;
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

	virtual void determineStartValues() = win 0x3f6a70, m1 0x524cd4, imac 0x5fda40, ios 0x35223c;
	virtual void onPlusButton(cocos2d::CCObject* sender) = win 0x3f6b80, m1 0x524e04, imac 0x5fdb60, ios 0x35234c;
	virtual TodoReturn updateToggleItem(int, bool) = win 0x3f6c00, m1 0x524e60, imac 0x5fdbb0, ios 0x3523a8;
	virtual void valueDidChange(int, float) = win 0x3f7010, m1 0x525010, imac 0x5fdd70, ios 0x352460;
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

	virtual void keyBackClicked() = m1 0x35def0, imac 0x3dd660;
	virtual void show() = m1 0x35dea4, imac 0x3dd600;
	virtual void textInputClosed(CCTextInputNode*) = m1 0x35dda4, imac 0x3dd4c0;
	virtual void textChanged(CCTextInputNode*) = m1 0x35ddc0, imac 0x3dd500;
}

[[link(android)]]
class SetupGravityTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupGravityTriggerPopup();

	static SetupGravityTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);

	virtual void valueDidChange(int, float) = m1 0x42db50, imac 0x4cf300, ios 0x42ac84;
}

[[link(android)]]
class SetupInstantCollisionTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupInstantCollisionTriggerPopup();

	static SetupInstantCollisionTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn updateSpecialNodes();

	virtual void updateDefaultTriggerValues() = win 0x3ef7c0, m1 0x3223a0, imac 0x39aab0, ios 0x2418e8;
	virtual void valueDidChange(int, float) = win 0x3ef590, m1 0x322090, imac 0x39a7a0, ios 0x241600;
}

[[link(android)]]
class SetupInstantCountPopup : SetupTriggerPopup {
	// virtual ~SetupInstantCountPopup();

	static SetupInstantCountPopup* create(CountTriggerGameObject*, cocos2d::CCArray*);

	bool init(CountTriggerGameObject*, cocos2d::CCArray*) = win 0x3f7260;
	void onCountType(cocos2d::CCObject* sender);
	void onEnableGroup(cocos2d::CCObject* sender);
	void onTargetCountArrow(cocos2d::CCObject* sender);
	void onTargetID2Arrow(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender) = win 0x3f11c0;
	TodoReturn updateCountTextInputLabel();
	void updateItemID() = win 0x3eeb30;
	TodoReturn updateItemIDInputLabel();
	TodoReturn updateTargetCount();
	TodoReturn updateTargetID();
	TodoReturn updateTargetIDInputLabel();

	virtual void determineStartValues() = m1 0x51bab0, imac 0x5f3870, ios 0x1c7808;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x51bff8, imac 0x5f3ea0, ios 0x1c7bf0;
	virtual void textChanged(CCTextInputNode*) = win 0x3f8340, m1 0x51bd74, imac 0x5f3bb0, ios 0x1c7ab0;

	CCTextInputNode* m_unk3a8;
	CCTextInputNode* m_unk3b0;
	CCTextInputNode* m_unk3b8;
	int m_itemID;
	int m_targetID;
	int m_targetCount;
	int m_unk3cc; // uninit
	int m_mode; // 0 = equals, 1 = larger, 2 = smaller
}

[[link(android)]]
class SetupInteractObjectPopup : SetupTriggerPopup {
	// virtual ~SetupInteractObjectPopup();

	static SetupInteractObjectPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	TodoReturn updateItems();

	virtual void onClose(cocos2d::CCObject* sender) = m1 0x46cd14, imac 0x516e30, ios 0x41c134;
	virtual void onPlusButton(cocos2d::CCObject* sender) = m1 0x46cc30, imac 0x516d40, ios 0x41c0d8;
	virtual void valueDidChange(int, float) = m1 0x46cc68, imac 0x516d80, ios 0x41c110;
}

[[link(android)]]
class SetupItemCompareTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupItemCompareTriggerPopup();

	static SetupItemCompareTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);

	bool init(ItemTriggerGameObject*, cocos2d::CCArray*);
	void onOpButton(cocos2d::CCObject* sender);
	TodoReturn updateFormulaLabel();
	TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int);

	virtual void valueDidChange(int, float) = m1 0x4d46b8, imac 0x589cf0, ios 0x417b1c;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = m1 0x4d4560, imac 0x589b90, ios 0x4179d4;
}

[[link(android)]]
class SetupItemEditTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupItemEditTriggerPopup();

	static SetupItemEditTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);

	bool init(ItemTriggerGameObject*, cocos2d::CCArray*);
	void onOpButton(cocos2d::CCObject* sender);
	TodoReturn updateFormulaLabel();
	TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int);

	virtual void valueDidChange(int, float) = m1 0x4d2628, imac 0x587980, ios 0x416008;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = m1 0x4d2448, imac 0x5877a0, ios 0x415e48;
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

	virtual void onClose(cocos2d::CCObject* sender) = m1 0x1aeb7c, imac 0x1fc400, ios 0x1c0910;
	virtual void onCustomButton(cocos2d::CCObject* sender) = m1 0x1ae7cc, imac 0x1fc050, ios 0x1c0618;
	virtual void valueDidChange(int, float) = m1 0x1ae500, imac 0x1fbd90, ios 0x1c03e8;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = m1 0x1ae728, imac 0x1fbfc0, ios 0x1c0574;
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

	virtual void determineStartValues() = m1 0x4684f8, imac 0x511cc0, ios 0x303384;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x468c68, imac 0x512520, ios 0x3039f8;
	virtual void textChanged(CCTextInputNode*) = win 0x3fd430, m1 0x468a48, imac 0x5122c0, ios 0x303830;
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = m1 0x46879c, imac 0x511f80, ios 0x3035c8;
}

[[link(android)]]
class SetupMoveCommandPopup : SetupTriggerPopup {
	// virtual ~SetupMoveCommandPopup();

	static SetupMoveCommandPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x26e780;
	TodoReturn updateControlVisibility();

	virtual void updateInputValue(int, float&) = m1 0x537db4, imac 0x613e50, ios 0x284cb8;
	virtual TodoReturn updateInputNode(int, float) = m1 0x537d88, imac 0x613e10, ios 0x284c8c;
	virtual void valueDidChange(int, float) = m1 0x537de8, imac 0x613e90, ios 0x284cec;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = m1 0x537cd0, imac 0x613d30, ios 0x284bd4;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = m1 0x537d14, imac 0x613d80, ios 0x284c18;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = m1 0x537fb8, imac 0x614090, ios 0x284eac;
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

	virtual void onPlusButton(cocos2d::CCObject* sender) = m1 0x2aac88, imac 0x31a1c0, ios 0x4800c;
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

	virtual void keyBackClicked() = m1 0x2aa6f8, imac 0x319b30, ios 0x47b3c;
	virtual void show() = m1 0x2aa71c, imac 0x319b70, ios 0x47b60;
	virtual void determineStartValues() = win 0x3d48d0, m1 0x2aa448, imac 0x319720, ios 0x47958;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x2aa768, imac 0x319bd0, ios 0x47bac;
}

[[link(android)]]
class SetupObjectTogglePopup : SetupTriggerPopup {
	// virtual ~SetupObjectTogglePopup();

	static SetupObjectTogglePopup* create(EffectGameObject*, cocos2d::CCArray*, bool);

	bool init(EffectGameObject*, cocos2d::CCArray*, bool);

	virtual void onClose(cocos2d::CCObject* sender) = m1 0x30392c, imac 0x3782a0, ios 0x1aedd0;
	virtual void valueDidChange(int, float) = m1 0x3038b4, imac 0x378220, ios 0x1aed60;
}

[[link(android)]]
class SetupOpacityPopup : SetupTriggerPopup {
	// virtual ~SetupOpacityPopup();

	static SetupOpacityPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*) = imac 0x57fd0;
	void onTargetIDArrow(cocos2d::CCObject* sender);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	void updateOpacity();
	void updateOpacityLabel();
	TodoReturn updateTargetID();
	TodoReturn updateTextInputLabel();

	virtual void determineStartValues() = m1 0x4fba4, imac 0x591c0, ios 0x2a550;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x500a8, imac 0x597c0, ios 0x2a964;
	virtual void textInputClosed(CCTextInputNode*) = m1 0x4fe60, imac 0x59520, ios 0x2a7e0;
	virtual void textChanged(CCTextInputNode*) = win 0x400650, m1 0x4fe7c, imac 0x59560, ios 0x2a7fc;
}

[[link(android)]]
class SetupOptionsTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupOptionsTriggerPopup();

	static SetupOptionsTriggerPopup* create(GameOptionsTrigger*, cocos2d::CCArray*);

	TodoReturn addOption(int, gd::string);
	bool init(GameOptionsTrigger*, cocos2d::CCArray*);

	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = win 0x40b320, m1 0x5198a0, imac 0x5f1080, ios 0x41ce4c;
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

	static SetupPickupTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x40b3f0;

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x40b500;
	void updateState() = win 0x40bc20;

	virtual void onPlusButton(cocos2d::CCObject* sender) = win 0x3f9210, m1 0x50a20, imac 0x5a2f0, ios 0x49a3c;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = win 0x40bc90, m1 0x50a58, imac 0x5a330, ios 0x49a74;
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

	virtual void keyBackClicked() = m1 0x4c4598, imac 0x578070;
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

	virtual void show() = m1 0x337eec, imac 0x3b31d0, ios 0x3c0634;
	virtual void determineStartValues() = m1 0x336e30, imac 0x3b1e70, ios 0x3bf9dc;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x337848, imac 0x3b2a40, ios 0x3c022c;
	virtual void textChanged(CCTextInputNode*) = win 0x410d50, m1 0x337f48, imac 0x3b3250, ios 0x3c0690;
	virtual void colorValueChanged(cocos2d::ccColor3B) = win 0x410a90, m1 0x3379d4, imac 0x3b2c20, ios 0x3c034c;
	virtual void textInputOpened(CCTextInputNode*) = ios 0x3c0688 {}
	virtual void colorSelectClosed(GJSpecialColorSelect*, int) = win 0x410320, m1 0x3372e0, imac 0x3b23b0, ios 0x3bfe30;
}

[[link(android)]]
class SetupRandAdvTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupRandAdvTriggerPopup();

	static SetupRandAdvTriggerPopup* create(RandTriggerGameObject*, cocos2d::CCArray*);

	void addChance(int, int);
	void addChanceToObject(RandTriggerGameObject*, int, int);
	void callRemoveFromGroup(float); // = win 0x3479f0;
	bool init(RandTriggerGameObject*, cocos2d::CCArray*);
	void onAddChance(cocos2d::CCObject* sender);
	void onRemoveFromGroup(cocos2d::CCObject* sender);
	void removeGroupID(int);
	void removeGroupIDFromObject(RandTriggerGameObject*, int);
	void updateGroupIDButtons();

	virtual void onClose(cocos2d::CCObject* sender) = m1 0x318dc4, imac 0x390790, ios 0x35e50;
	virtual void textChanged(CCTextInputNode*) = ios 0x35e48 {}
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

	virtual void determineStartValues() = m1 0x5187fc, imac 0x5efe20, ios 0x1d4300;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x518d24, imac 0x5f0400, ios 0x1d4704;
	virtual void textChanged(CCTextInputNode*) = win 0x4154e0, m1 0x518a84, imac 0x5f0110, ios 0x1d4580;
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

	virtual void onClose(cocos2d::CCObject* sender) = m1 0x422414, imac 0x4c2370, ios 0x18b7e8;
}

[[link(android)]]
class SetupRotateCommandPopup : SetupTriggerPopup {
	// virtual ~SetupRotateCommandPopup();

	static SetupRotateCommandPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x295a60;
	void onInfiniteDuration(cocos2d::CCObject* sender);
	void updateControlVisibility() = win 0x296ec0;

	virtual TodoReturn updateInputNode(int, float) = imac 0x6b90, ios 0x40f6ec;
	virtual void valueDidChange(int, float) = m1 0x97bc, imac 0x6ba0, ios 0x40f6f0;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = m1 0x9790, imac 0x6b40, ios 0x40f6c4;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = imac 0x6b80, ios 0x40f6e8;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = m1 0x9a5c, imac 0x6ee0, ios 0x40f804;
}

[[link(android)]]
class SetupRotateGameplayPopup : SetupTriggerPopup {
	// virtual ~SetupRotateGameplayPopup();

	static SetupRotateGameplayPopup* create(RotateGameplayGameObject*, cocos2d::CCArray*);

	bool init(RotateGameplayGameObject*, cocos2d::CCArray*);

	virtual void onPlusButton(cocos2d::CCObject* sender) = m1 0x6abe9c, imac 0x7a45a0, ios 0x1aa808;
	virtual void valueDidChange(int, float) = m1 0x6abed4, imac 0x7a45e0, ios 0x1aa840;
}

[[link(android)]]
class SetupRotatePopup : SetupTriggerPopup {
	// virtual ~SetupRotatePopup();

	static SetupRotatePopup* create(EnhancedGameObject*, cocos2d::CCArray*);

	bool init(EnhancedGameObject*, cocos2d::CCArray*);

	virtual void onClose(cocos2d::CCObject* sender) = m1 0x4ec7f4, imac 0x5a59e0, ios 0x278434;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = m1 0x4ec878, imac 0x5a5a70, ios 0x2784b4;
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
	void updateGroupIDButtons();

	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = m1 0x443f38, imac 0x4e8ae0, ios 0x1dcfe4;
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

	static SetupSFXPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*) = win 0x41ba10, imac 0x4c27a0, m1 0x4226d8;

	TodoReturn createSFXWidget();
	bool init(SFXTriggerGameObject*, cocos2d::CCArray*) = win 0x41bb60, imac 0x4c2a10, m1 0x42287c;
	void onBrowseSFX(cocos2d::CCObject* sender);
	TodoReturn updateLength();

	virtual void pageChanged() = m1 0x423934, imac 0x4c3dc0, ios 0x18c738;
	virtual void onClose(cocos2d::CCObject* sender) = win 0x41cab0, m1 0x423988, imac 0x4c3e10, ios 0x18c78c;
	virtual void onPlusButton(cocos2d::CCObject* sender) = m1 0x423e6c, imac 0x4c43b0, ios 0x18cb4c;
	virtual void valueDidChange(int, float) = m1 0x423d48, imac 0x4c4290, ios 0x18ca64;
	virtual void sfxObjectSelected(SFXInfoObject*) = ios 0x18c9e8 {}
	virtual TodoReturn getActiveSFXID() = win 0x41d1a0, m1 0x423ca4, imac 0x4c41d0, ios 0x18c9f0;
	virtual TodoReturn overridePlaySFX(SFXInfoObject*) = win 0x41d1b0, m1 0x423cb4, imac 0x4c41f0, ios 0x18ca00;
	virtual void sfxBrowserClosed(SFXBrowser*) = win 0x41d8d0, m1 0x423f1c, imac 0x4c4450, ios 0x18cbf4;
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

	virtual void toggleGroup(int, bool) = m1 0x26b028, imac 0x2cce80, ios 0x195b98;
	virtual void onClose(cocos2d::CCObject* sender) = imac 0x2ccec0, ios 0x195bd8;
	virtual void updateDefaultTriggerValues() = m1 0x26a714, imac 0x2cc610, ios 0x19557c;
	virtual void valueDidChange(int, float) = m1 0x26acfc, imac 0x2ccb50, ios 0x195900;
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

	virtual void determineStartValues() = m1 0x58d65c, imac 0x672480, ios 0x3b2ea0;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x58dcb8, imac 0x672b60, ios 0x3b33d4;
	virtual void textChanged(CCTextInputNode*) = win 0x42a580, m1 0x58d998, imac 0x6727e0, ios 0x3b3190;
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

	virtual void keyBackClicked() = win 0x42cef0, m1 0x44b910, imac 0x4f1c40, ios 0x77370;
	virtual void show() = m1 0x44b8ac, imac 0x4f1bb0, ios 0x7730c;
	virtual void selectArtClosed(SelectArtLayer*) = win 0x42ceb0, m1 0x44b8f8, imac 0x4f1c10, ios 0x77358;
}

[[link(android)]]
class SetupSmartTemplateLayer : FLAlertLayer, TextInputDelegate, FLAlertLayerProtocol {
	// virtual ~SetupSmartTemplateLayer();

	static SetupSmartTemplateLayer* create(GJSmartTemplate*) = win 0x42cf00;

	bool init(GJSmartTemplate*) = win 0x42d010, imac 0x4f2180;
	void onBack(cocos2d::CCObject* sender) = imac 0x4f2b00;
	void onClick(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = win 0x42e160, m1 0x44cc9c, imac 0x4f31d0, ios 0x78290;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x42dbc0, m1 0x44c8f4, imac 0x4f2e70, ios 0x77fa8;
	virtual void textInputOpened(CCTextInputNode*) = win 0x42df00, m1 0x44cb90, imac 0x4f30f0, ios 0x7812c;
	virtual void textInputClosed(CCTextInputNode*) = win 0x42dca0, m1 0x44c9d8, imac 0x4f2f50, ios 0x7800c;
	virtual void textChanged(CCTextInputNode*) = m1 0x44cc7c, imac 0x4f31b0, ios 0x78270;
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

	virtual void pageChanged() = m1 0x26e408, imac 0x2d0dd0, ios 0x1ccffc;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x26e49c, imac 0x2d0e60, ios 0x1cd090;
	virtual void valueDidChange(int, float) = m1 0x26e30c, imac 0x2d0cd0, ios 0x1ccf6c;
	virtual TodoReturn onPlayback(SongInfoObject*) = win 0x431a10, m1 0x26e104, imac 0x2d0a90, ios 0x1ccd70;
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

	bool init(EffectGameObject*, cocos2d::CCArray*) = ios 0xf91b0;
	void onAddRemap(cocos2d::CCObject* sender);
	void onDeleteRemap(cocos2d::CCObject* sender);
	void onSelectRemap(cocos2d::CCObject* sender);
	TodoReturn queueUpdateButtons();
	TodoReturn updateRemapButtons(float);

	virtual void onClose(cocos2d::CCObject* sender) = m1 0x230318, imac 0x28c9e0, ios 0xfa2ec;
}

[[link(android)]]
class SetupStaticCameraPopup : SetupTriggerPopup {
	// virtual ~SetupStaticCameraPopup();

	static SetupStaticCameraPopup* create(CameraTriggerGameObject*, cocos2d::CCArray*);

	bool init(CameraTriggerGameObject*, cocos2d::CCArray*);
	TodoReturn updateState();

	virtual void valueDidChange(int, float) = m1 0x325ff0, imac 0x39ede0, ios 0x1daca4;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = m1 0x326084, imac 0x39ee70, ios 0x1dacbc;
}

[[link(android)]]
class SetupStopTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupStopTriggerPopup();

	static SetupStopTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);

	virtual void onClose(cocos2d::CCObject* sender) = m1 0x4d7a84, imac 0x58d9d0, ios 0x41a4c0;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = m1 0x4d7a0c, imac 0x58d960, ios 0x41a448;
}

[[link(android)]]
class SetupTeleportPopup : SetupTriggerPopup {
	// virtual ~SetupTeleportPopup();

	static SetupTeleportPopup* create(TeleportPortalObject*, cocos2d::CCArray*, int, bool);

	bool init(TeleportPortalObject*, cocos2d::CCArray*, int, bool);
	void onTeleportGravity(cocos2d::CCObject* sender);
	TodoReturn updateTeleportGravityState(int);

	virtual void determineStartValues() = imac 0x35ae30, ios 0xc0d0;
	virtual void updateDefaultTriggerValues() = m1 0x2e8840, imac 0x35ae40, ios 0xc0d4;
	virtual void valueDidChange(int, float) = m1 0x2e895c, imac 0x35af60, ios 0xc190;
}

[[link(android)]]
class SetupTimerControlTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupTimerControlTriggerPopup();

	static SetupTimerControlTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);

	bool init(TimerTriggerGameObject*, cocos2d::CCArray*);

	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = m1 0x32bbbc, imac 0x3a5470, ios 0x34b84;
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

	virtual void determineStartValues() = m1 0x464ad8, imac 0x50dd50, ios 0x152e94;
	virtual void onClose(cocos2d::CCObject* sender) = imac 0x50dee0, ios 0x152fd0;
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

	virtual void determineStartValues() = m1 0x2559d8, imac 0x2b5890, ios 0x25b700;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x255cac, imac 0x2b5bd0, ios 0x25b944;
	virtual void textChanged(CCTextInputNode*) = win 0x438ed0, m1 0x255ba4, imac 0x2b5ab0, ios 0x25b8a8;
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

	void addCloseButton(gd::string) = win 0x448d00;
	void addHelpButton(gd::string, gd::string, float) = win 0x448e10;
	void addInfoLabel(gd::string, float, cocos2d::CCPoint, int, int) = win 0x44b600;
	void addObjectsToGroup(cocos2d::CCArray*, int);
	void addObjectsToPage(cocos2d::CCArray*, int);
	void addObjectToGroup(cocos2d::CCObject*, int);
	void addObjectToPage(cocos2d::CCObject*, int) = win 0x448b70;
	void addTitle(gd::string) = win 0x448c00;
	void closeInputNodes();
	void createCustomButton(int, gd::string, gd::string, cocos2d::CCPoint, float, float, bool, int, int) = win 0x44b880;
	void createCustomEasingControls(gd::string, cocos2d::CCPoint, float, int, int, int, int) = win 0x451360;
	void createCustomToggleValueControl(int, bool, bool, gd::string, cocos2d::CCPoint, bool, int, int) = win 0x44b380;
	void createEasingControls(cocos2d::CCPoint, float, int, int) = win 0x450440;
	void createMultiTriggerItems(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint) = win 0x4494c0;
	void createMultiTriggerItemsCorner() = win 0x4491b0;
	void createMultiTriggerItemsDefault() = win 0x4490a0;
	void createMultiTriggerItemsDefaultHorizontal() = win 0x4493b0;
	void createMultiTriggerItemsDefaultVertical() = win 0x4492b0;
	void createPageButtons(float, int) = win 0x4483f0;
	void createPlusButton(int, cocos2d::CCPoint, float, gd::string, int, int) = win 0x44b6e0;
	CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCPoint) = win 0x448f70;
	void createToggleValueControl(int, gd::string, cocos2d::CCPoint, bool, int, int, float) = win 0x44b070;
	void createToggleValueControlAdvanced(int, gd::string, cocos2d::CCPoint, bool, int, int, float, float, float, cocos2d::CCPoint);
	void createValueControl(int, gd::string, cocos2d::CCPoint, float, float, float) = win 0x44a2b0;
	void createValueControlAdvanced(int, gd::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float, float, int, int, GJInputStyle, int, bool) = win 0x44a3a0;
	void createValueControlWArrows(int, gd::string, cocos2d::CCPoint, float);
	cocos2d::CCArray* getGroupContainer(int) = win 0x448a10;
	float getMaxSliderValue(int);
	float getMinSliderValue(int);
	cocos2d::CCArray* getObjects();
	cocos2d::CCArray* getPageContainer(int) = win 0x448710;
	float getTriggerValue(int, GameObject*);
	float getTruncatedValue(float, int) = win 0x44bec0;
	float getTruncatedValueByTag(int, float);
	void goToPage(int, bool) = win 0x448780;
	void hideAll();
	bool init(EffectGameObject*, cocos2d::CCArray*, float, float, int) = win 0x448070, m1 0x1de048, imac 0x230620;
	void onCustomEaseArrow(int, bool) = win 0x451c30;
	void onCustomEaseArrowDown(cocos2d::CCObject* sender) = win 0x451c00;
	void onCustomEaseArrowUp(cocos2d::CCObject* sender) = win 0x451bd0;
	void onCustomEaseRate(cocos2d::CCObject* sender) = win 0x451ac0;
	void onDisableValue(cocos2d::CCObject* sender) = win 0x44af60;
	void onEase(cocos2d::CCObject* sender) = win 0x451160;
	void onEaseRate(cocos2d::CCObject* sender) = win 0x4511d0;
	void onMultiTrigger(cocos2d::CCObject* sender) = win 0x449bc0;
	void onPage(cocos2d::CCObject* sender) = win 0x4486a0;
	void onSpawnedByTrigger(cocos2d::CCObject* sender) = win 0x449a40;
	void onToggleTriggerValue(cocos2d::CCObject* sender) = win 0x44be30;
	void onTouchTriggered(cocos2d::CCObject* sender) = win 0x449950;
	void postSetup() = win inline {
		this->updateDefaultTriggerValues();
		m_disableTextDelegate = false;
	}
	void preSetup() = win inline {
		m_disableTextDelegate = true;
		this->determineStartValues();
	}
	void refreshGroupVisibility();
	void removeObjectFromGroup(cocos2d::CCObject*, int);
	void removeObjectFromPage(cocos2d::CCObject*, int);
	void resetDisabledValues();
	void setMaxSliderValue(float, int);
	void setMinSliderValue(float, int);
	bool shouldLimitValue(int);
	void toggleBG(bool);
	void toggleCustomEaseRateVisibility(int, int) = win 0x451fb0;
	void toggleDisableButtons(bool) = win 0x44af90;
	void toggleEaseRateVisibility() = win 0x451050;
	void toggleLimitValue(int, bool);
	void togglePageArrows(bool);
	void triggerArrowChanged(int, bool) = win 0x44a210;
	void triggerArrowLeft(cocos2d::CCObject*) = win 0x44a1b0;
	void triggerArrowRight(cocos2d::CCObject*) = win 0x44a1e0;
	void triggerSliderChanged(cocos2d::CCObject*) = win 0x44a0f0;
	void updateCustomEaseLabel(int, int) = win 0x451cd0;
	void updateCustomEaseRateLabel(int, float) = win 0x451ea0;
	void updateCustomToggleTrigger(int, bool);
	void updateEaseLabel() = win 0x450cc0;
	void updateEaseRateLabel() = win 0x450e70;
	void updateEditorLabel() = win 0x4498d0;
	void updateInputNodeLabel(int, gd::string) = win 0x450280;
	void updateLabel(int, gd::string);
	void updateMultiTriggerBtn() = win 0x449b30;
	void updateSlider(int, float);
	void updateSlider(int);
	void updateSpawnedByTrigger() = win 0x449a90;
	void updateTouchTriggered() = win 0x4499a0;
	void updateValue(int, float) = win 0x4501f0;
	void updateValueControls(int, float) = win 0x44bf30;
	void valueChanged(int, float) = win 0x44c500;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x92588, m1 0x1e6b38, imac 0x23b510, ios 0x13b4f0;
	virtual void keyBackClicked() = win 0x43b940, m1 0x1e0f74, imac 0x234a10, ios 0x137098;
	virtual void show() = win 0x8a220, m1 0x1e0df0, imac 0x234850, ios 0x136fbc;
	virtual void pageChanged() = ios 0xc2a4 {}
	virtual void toggleGroup(int group, bool visible) = win 0x448a80, m1 0x1dea6c, imac 0x231150, ios 0x1353ac;
	virtual void determineStartValues() = win 0x4497d0, m1 0x1dfbdc, imac 0x232430, ios 0x1360fc;
	virtual void onClose(cocos2d::CCObject* sender) = win 0x449e10, m1 0x1e0e3c, imac 0x2348b0, ios 0x137008;
	virtual void textInputClosed(CCTextInputNode*) = win 0x89f80, m1 0x1dfee4, imac 0x2327b0, ios 0x136308;
	virtual void textChanged(CCTextInputNode*) = win 0x449c50, m1 0x1dff00, imac 0x2327f0, ios 0x136324;
	virtual void textInputShouldOffset(CCTextInputNode*, float) = win 0x79fd0, m1 0x1e0f98, imac 0x234a50, ios 0x1370bc;
	virtual void textInputReturn(CCTextInputNode*) = win 0x7a030, m1 0x1e1068, imac 0x234b10, ios 0x137128;
	virtual void updateInputValue(int, float&) = ios 0xc2a8 {}
	virtual void sliderBegan(Slider*) = win 0x449f50, m1 0x1e1120, imac 0x234bc0, ios 0x137188;
	virtual void sliderEnded(Slider*) = win 0x44a020, m1 0x1e11f8, imac 0x234ca0, ios 0x137254;
	virtual void onPlusButton(cocos2d::CCObject* sender) = ios 0xc2ac {}
	virtual void onCustomButton(cocos2d::CCObject* sender) = ios 0xc2b0 {}
	virtual void updateDefaultTriggerValues() = win 0x44bae0, m1 0x1e374c, imac 0x237210, ios 0x138d90;
	virtual TodoReturn updateInputNode(int, float) = win 0x44bfd0, m1 0x1e473c, imac 0x239290, ios 0x13985c;
	virtual TodoReturn updateToggleItem(int, bool) = win 0x44c370, m1 0x1e49c0, imac 0x2394e0, ios 0x139a28;
	virtual void valueDidChange(int, float) = ios 0x2a9bc {}
	virtual float getValue(int) = win 0x44c3e0, m1 0x1e4a78, imac 0x2395a0, ios 0x139a98;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = win 0x450300, m1 0x1e4e8c, imac 0x2399a0, ios 0x139c98;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = win 0x450390, m1 0x1e4f18, imac 0x239a20, ios 0x139d04;
	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = ios 0xc2b4 {}
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = win 0x4512a0, m1 0x1e5b60, imac 0x23a630, ios 0x13a7ec;

	EffectGameObject* m_gameObject;
	cocos2d::CCArray* m_gameObjects;
	bool m_touchTriggered;
	bool m_spawnTriggered;
	CCMenuItemToggler* m_touchToggle;
	CCMenuItemToggler* m_spawnToggle;
	cocos2d::CCArray* m_multiTriggerContainer;
	bool m_multiTriggered;
	float m_width;
	float m_height;
	bool m_disableTextDelegate;
	cocos2d::CCDictionary* m_valueToggles;
	cocos2d::CCDictionary* m_inputNodes;
	cocos2d::CCDictionary* m_valueControls;
	cocos2d::CCDictionary* m_customValueToggles;
	cocos2d::CCDictionary* m_disableButtons;
	cocos2d::CCLabelBMFont* m_easingLabel;
	cocos2d::CCLabelBMFont* m_easingRateLabel;
	CCMenuItemSpriteExtra* m_easingRateButton;
	int m_easingIndex;
	float m_easingRate;
	cocos2d::CCDictionary* m_inputLabels;
	cocos2d::CCDictionary* m_triggerValues;
	cocos2d::CCDictionary* m_minSliderValues;
	cocos2d::CCDictionary* m_maxSliderValues;
	gd::map<int, bool> m_shouldLimitValues;
	bool m_disableSliderDelegate;
	bool m_unk349;
	cocos2d::CCArray* m_pageContainers;
	int m_page;
	float m_easingControlScale;
	cocos2d::CCArray* m_groupContainers;
	cocos2d::CCDictionary* m_customEasingTags;
	cocos2d::CCDictionary* m_customEasingLabels;
	cocos2d::CCDictionary* m_customEasingButtons;
	cocos2d::CCDictionary* m_customEasingScales;
	cocos2d::CCDictionary* m_disabledEasingButtons;
	CCMenuItemSpriteExtra* m_prevButton;
	CCMenuItemSpriteExtra* m_nextButton;
	bool m_hideAll;
}

[[link(android)]]
class SetupZoomTriggerPopup : SetupTriggerPopup {
	// virtual ~SetupZoomTriggerPopup();

	static SetupZoomTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);

	virtual void determineStartValues() = imac 0x3200b0, ios 0x1c3360;
	virtual void onClose(cocos2d::CCObject* sender) = imac 0x3200c0, ios 0x1c3364;
}

[[link(android)]]
class SFXBrowser : FLAlertLayer, MusicDownloadDelegate, TableViewCellDelegate, SetTextPopupDelegate, SelectSFXSortDelegate {
	// virtual ~SFXBrowser();
	SFXBrowser() {
		m_searchResult = nullptr;
		m_sfxObjects = nullptr;
		m_listLayer = nullptr;
		m_nameLabel = nullptr;
		m_pathLabel = nullptr;
		m_infoLabel = nullptr;
		m_pageLabel = nullptr;
		m_searchLabel = nullptr;
		m_prevButton = nullptr;
		m_refreshButton = nullptr;
		m_clearSearchButton = nullptr;
		m_circleSprite = nullptr;
		m_libraryVersion = 0;
		m_cellAmount = 0;
		m_gettingURL = false;
		m_selectedCell = false;
		m_snapToSelected = false;
		m_compactMode = false;
		m_sortType = AudioSortType::NameAscending;
		m_delegate = nullptr;
		#ifdef GEODE_IS_DESKTOP
		m_autoUpdating = false;
		#endif
	}

	static SFXBrowser* create(int id) = win inline, m1 0x3b9054, imac 0x447700 {
		auto ret = new SFXBrowser();
		if (ret->init(id)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	bool init(int) = win 0x452850, m1 0x3b9198, imac 0x4478c0;
	void onClearSearch(cocos2d::CCObject* sender) = win 0x4546c0, m1 0x3ba408, imac 0x448c70;
	void onClose(cocos2d::CCObject* sender) = win 0x454e50, m1 0x3b9f4c, imac 0x4487c0;
	void onCredits(cocos2d::CCObject* sender) = win 0x4543c0, m1 0x3ba220, imac 0x448aa0;
	void onExitFolder(cocos2d::CCObject* sender) = win 0x454d00, m1 0x3b9fa4, imac 0x448810;
	void onPage(cocos2d::CCObject* sender) = win 0x454a60, m1 0x3ba04c, imac 0x4488d0;
	void onSearch(cocos2d::CCObject* sender) = win 0x454730, m1 0x3ba2ec, imac 0x448b50;
	void onSorting(cocos2d::CCObject* sender) = win 0x454480, m1 0x3ba174, imac 0x4489e0;
	void onToggleCompactMode(cocos2d::CCObject* sender) = win 0x454620, m1 0x3ba1bc, imac 0x448a30;
	void onUpdateLibrary(cocos2d::CCObject* sender) = win 0x453750, m1 0x3ba110, imac 0x448970;
	void setupList(SFXSearchResult*) = win 0x453be0, m1 0x3ba5f4, imac 0x448e70;
	void trySetupSFXBrowser() = win 0x453810, m1 0x3ba4d0, imac 0x448d40;
	void updatePageLabel() = win 0x454b30, m1 0x3bb048, imac 0x449a00;

	virtual void registerWithTouchDispatcher() = win 0x41750, m1 0x3bb818, imac 0x44a270, ios 0x1764e4;
	virtual void keyBackClicked() = win 0x454e90, m1 0x3bb768, imac 0x44a1d0, ios 0x1764d8;
	virtual void musicActionFinished(GJMusicAction) = win 0x453a00, m1 0x3bae64, imac 0x4497d0, ios 0x175f18;
	virtual void musicActionFailed(GJMusicAction) = win 0x453aa0, m1 0x3baf34, imac 0x4498d0, ios 0x175f38;
	virtual void sortSelectClosed(SelectSFXSortLayer*) = win 0x4545c0, m1 0x3bb2a8, imac 0x449ca0, ios 0x176220;
	virtual void setTextPopupClosed(SetTextPopup*, gd::string) = win 0x4548a0, m1 0x3bb52c, imac 0x449f60, ios 0x1763ac;
	virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = win 0x454940, m1 0x3bb5e8, imac 0x44a020, ios 0x176410;
	virtual int getSelectedCellIdx() = win 0x454a40, m1 0x3bb748, imac 0x44a190, ios 0x1764b8;
	virtual bool shouldSnapToSelected() = win 0x454a50, m1 0x3bb758, imac 0x44a1b0, ios 0x1764c8;

	SFXSearchResult* m_searchResult;
	cocos2d::CCArray* m_sfxObjects;
	GJCommentListLayer* m_listLayer;
	cocos2d::CCLabelBMFont* m_nameLabel;
	cocos2d::CCLabelBMFont* m_pathLabel;
	cocos2d::CCLabelBMFont* m_infoLabel;
	cocos2d::CCLabelBMFont* m_pageLabel;
	cocos2d::CCLabelBMFont* m_searchLabel;
	CCMenuItemSpriteExtra* m_prevButton;
	CCMenuItemSpriteExtra* m_nextButton;
	CCMenuItemSpriteExtra* m_backButton;
	CCMenuItemSpriteExtra* m_refreshButton;
	CCMenuItemSpriteExtra* m_clearSearchButton;
	LoadingCircleSprite* m_circleSprite;
	int m_sfxID;
	int m_libraryVersion;
	int m_cellAmount;
	bool m_gettingURL;
	bool m_selectedCell;
	bool m_snapToSelected;
	bool m_compactMode;
	AudioSortType m_sortType;
	SFXBrowserDelegate* m_delegate;
	win, mac {
		bool m_autoUpdating;
	}
}

[[link(android)]]
class SFXBrowserDelegate {
	virtual void sfxBrowserClosed(SFXBrowser*);
}

[[link(android)]]
class SFXFolderObject : SFXInfoObject {
	// virtual ~SFXFolderObject();
	SFXFolderObject() {
		m_sfxObjects = nullptr;
	}

	static SFXFolderObject* create(int p0, gd::string p1, int p2) = win inline, m1 0x4e6850, imac 0x59e710 {
		auto ret = new SFXFolderObject();
		if (ret->init(p0, p1, p2)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	bool init(int p0, gd::string p1, int p2) = win inline, m1 0x4e8f10, imac 0x5a14a0 {
		if (!SFXInfoObject::init(p0, p1, p2, 0, 0)) return false;
		m_sfxObjects = cocos2d::CCArray::create();
		m_sfxObjects->retain();
		return true;
	}

	cocos2d::CCArray* m_sfxObjects;
}

[[link(android)]]
class SFXInfoObject : cocos2d::CCObject {
	// virtual ~SFXInfoObject();
	SFXInfoObject() {
		m_sfxID = 0;
		m_folderID = 0;
		m_size = 0;
		m_duration = 0;
		m_folder = false;
		m_unk049 = false;
		m_name = "";
	}

	static SFXInfoObject* create(int id, gd::string name, int folderID, int size, int duration) = win inline, m1 0x4e66f4, imac 0x59e5c0 {
		auto ret = new SFXInfoObject();
		if (ret->init(id, name, folderID, size, duration)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	gd::string getLowerCaseName() = win inline, m1 0x4e8cd0, imac 0x5a1270 {
		gd::string name = m_name;
		for (int i = 0; i < name.size(); i++) {
			name[i] = tolower(name[i]);
		}
		return name;
	}
	bool init(int id, gd::string name, int folderID, int size, int duration) = win inline, m1 0x4e8c80, imac 0x5a1220 {
		m_sfxID = id;
		m_name = name;
		m_folderID = folderID;
		m_size = size;
		m_duration = duration;
		m_folder = false;
		return true;
	}

	int m_sfxID;
	int m_folderID;
	int m_size;
	int m_duration;
	bool m_folder;
	bool m_unk049;
	gd::string m_name;
}

[[link(android)]]
class SFXSearchResult : MusicSearchResult {
	// virtual ~SFXSearchResult();

	static SFXSearchResult* create(int) = win 0x326470, m1 0x4ea408, imac 0x5a2dd0;

	SFXFolderObject* getActiveFolder() = win inline, m1 0x4ea4fc, imac 0x5a2ee0 {
		return m_folderObject;
	}
	int getSelectedPage(int, int) = win 0x326a50, m1 0x4eade8, imac 0x5a39c0;
	bool init(int folderID) = win inline, m1 0x4ea48c, imac 0x5a2e60 {
		if (!MusicSearchResult::init((GJSongType)-1)) return false;
		m_folderID = folderID;
		m_audioType = 1;
		return true;
	}
	void setActiveFolder(SFXFolderObject* folder) = win inline, m1 0x4ea4a4, imac 0x5a2e80 {
		CC_SAFE_RELEASE(m_folderObject);
		CC_SAFE_RETAIN(folder);
		m_folderObject = folder;
	}

	virtual void updateObjects(AudioSortType) = win 0x3264f0, m1 0x4ea504, imac 0x5a2ef0, ios 0x1687d4;

	int m_folderID;
	SFXFolderObject* m_folderObject;
}

[[link(android)]]
class SFXTriggerGameObject : EffectGameObject {
	// virtual ~SFXTriggerGameObject();
	// SFXTriggerGameObject();

	static SFXTriggerGameObject* create(char const*);

	TodoReturn getSFXRefID();
	TodoReturn getUniqueSFXID();
	bool init(char const*);

	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x183ed4, imac 0x1c9be0, ios 0x3962b4;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x17ffe4, imac 0x1c4b10, ios 0x3952d0;
}

[[link(android)]]
class ShaderGameObject : EffectGameObject {
	// virtual ~ShaderGameObject();

	static ShaderGameObject* create(char const*);

	bool init(char const*);

	virtual void customSetup() = m1 0x15ba4c, imac 0x198980, ios 0x38440c;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x15f62c, imac 0x19d750, ios 0x385414;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x15babc, imac 0x1989f0, ios 0x38446c;
}

[[link(android), depends(GJShaderState)]]
class ShaderLayer : cocos2d::CCLayer {
	// virtual ~ShaderLayer();

	static ShaderLayer* create();

	TodoReturn objectPosToShaderPos(cocos2d::CCPoint);
	void performCalculations() = win 0x45c4b0, imac 0x3d55f0, m1 0x356bf8;
	TodoReturn preBulgeShader();
	TodoReturn preChromaticGlitchShader() = imac 0x3d3200;
	TodoReturn preChromaticShader() = imac 0x3d2f30;
	TodoReturn preColorChangeShader() = imac 0x3d5050;
	TodoReturn preCommonShader() = imac 0x3cfc60;
	TodoReturn preGlitchShader() = imac 0x3d29a0;
	TodoReturn preGrayscaleShader() = imac 0x3d4b30;
	TodoReturn preHueShiftShader();
	TodoReturn preInvertColorShader();
	TodoReturn preLensCircleShader() = imac 0x3d3e70;
	TodoReturn preMotionBlurShader() = imac 0x3d4400;
	cocos2d::CCPoint prepareTargetContainer() = win 0x45a4e0;
	TodoReturn prePinchShader();
	void prePixelateShader() = win 0x45a300, imac 0x3d3640;
	TodoReturn preRadialBlurShader() = imac 0x3d4140;
	TodoReturn preSepiaShader();
	TodoReturn preShockLineShader() = imac 0x3d2480;
	TodoReturn preShockWaveShader() = imac 0x3d1dc0;
	TodoReturn preSplitScreenShader() = imac 0x3d5260;
	bool resetAllShaders() = win 0x45d940;
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
	void setupShader(bool) = win 0x455f60, m1 0x350c14, imac 0x3ce3c0;
	TodoReturn setupShockLineUniforms();
	TodoReturn setupShockWaveUniforms();
	TodoReturn setupSplitScreenShader();
	void toggleAntiAlias(bool) = win 0x456c90;
	bool triggerBulge(float, float, float, float, float, int, int, float, bool);
	TodoReturn triggerChromaticGlitch(bool, float, float, float, float, float, float, float, int, float, bool, bool);
	TodoReturn triggerChromaticX(float, float, int, float, bool) = imac 0x3d2ed0;
	TodoReturn triggerChromaticY(float, float, int, float, bool);
	bool triggerColorChange(float, float, float, float, float, float, float, int, float);
	bool triggerGlitch(float, float, float, float, float, float, float, bool);
	bool triggerGrayscale(float, float, bool, int, int, float);
	bool triggerHueShift(float, float, int, float);
	bool triggerInvertColor(float, float, float, float, float, bool, bool, bool, int, float);
	bool triggerLensCircle(float, float, float, float, int, int, float, float, int, float, bool);
	bool triggerMotionBlurX(float, float, float, float, int, float, bool, int, int, float, bool, bool) = imac 0x3d4260;
	bool triggerMotionBlurY(float, float, float, float, int, float, bool, int, int, float, bool, bool) = imac 0x3d4330;
	bool triggerPinchX(float, float, float, float, float, bool, int, int, float, bool) = imac 0x3d48e0;
	bool triggerPinchY(float, float, float, float, float, bool, int, int, float, bool);
	bool triggerPixelateX(float, float, bool, bool, int, float, bool) = imac 0x3d3560;
	bool triggerPixelateY(float, float, bool, bool, int, float, bool);
	bool triggerRadialBlur(float, float, float, float, int, float, float, bool, int, int, float, bool);
	bool triggerSepia(float, float, int, float);
	bool triggerShockLine(float, float, bool, bool, bool, bool, float, float, float, float, float, float, int, bool, bool, bool, float, bool, float, int, float) = imac 0x3d2220;
	bool triggerShockWave(float, float, float, float, float, float, float, bool, float, float, float, int, bool, bool, bool, float, float, bool, float, int, float) = imac 0x3d1520;
	bool triggerSplitScreenCols(float, float, int, float) = imac 0x3d5240;
	bool triggerSplitScreenRows(float, float, int, float);
	TodoReturn tweenValue(float, float, int, float, int, float);
	TodoReturn tweenValueAuto(float, int, float, int, float) = imac 0x3d17a0;
	void updateEffectOffsets(cocos2d::CCPoint) = win 0x456fb0;
	void updateMotionBlurSpeedX(float, float) = m1 0x355f40, imac 0x3d46e0;
	void updateMotionBlurSpeedY(float, float) = m1 0x355f74, imac 0x3d4740;
	TodoReturn updateShockLineCenter(cocos2d::CCPoint) = imac 0x3d2440;
	TodoReturn updateShockWaveCenter(cocos2d::CCPoint) = imac 0x3d1d80;
	bool updateZLayer(int, int, bool) = imac 0x3cec10; //inline on win

	virtual bool init() = win 0x455e50, m1 0x350b50, imac 0x3ce300, ios 0x27d8a0;
	virtual void update(float) = win 0x456d00, m1 0x352250, imac 0x3cfaa0, ios 0x27eb40;
	virtual void visit() = win 0x45ce00, m1 0x356eb0, imac 0x3d5910, ios 0x282ea8;

	GJShaderState m_state;
	bool m_unk3c0;
	cocos2d::CCGLProgram* m_shader;
	cocos2d::CCRenderTexture* m_renderTexture;
	cocos2d::CCSprite* m_sprite;
	bool m_antiAlias;
	bool m_configuredAntiAlias;
	void* m_unk3d4;
	GJBaseGameLayer* m_gameLayer;
	cocos2d::CCPoint m_savedCameraPosition;
	float m_savedCameraRotation;
	float m_shockWaveTimeMult;
	cocos2d::CCSize m_textureContentSize;
	cocos2d::CCSize m_targetTextureSize;
	// how much bigger is the texture compared to visibleSize
	cocos2d::CCSize m_targetTextureSizeExtra;
	int m_textureScaleUniform;
	int m_textureScaleInvUniform;
	int m_shaderPositionUniform;
	int m_blurRefColorUniform;
	int m_blurUseRefUniform;
	int m_blurIntensityUniform;
	int m_blurOnlyEmptyUniform;
	int m_shockWaveTimeUniform;
	int m_shockWaveTime1Uniform;
	int m_shockWaveTime2Uniform;
	int m_shockWaveTime3Uniform;
	int m_shockWaveTime4Uniform;
	int m_shockWaveStrengthUniform;
	int m_shockWaveWavesUniform;
	int m_shockWaveCenterUniform;
	int m_shockWaveInvertUniform;
	int m_shockWaveMinSizeUniform;
	int m_shockWaveMaxSizeUniform;
	int m_shockWaveMaxDistValUniform;
	float m_shockWaveTime1;
	float m_shockWaveTime2;
	float m_shockWaveTime3;
	float m_shockWaveTime4;
	float m_shockWaveMaxDistVal;
	float m_shockWaveMinSize;
	float m_shockWaveMaxSize;
	bool m_shockWaveUnk46c;
	int m_shockLineTimeUniform;
	int m_shockLineTime1Uniform;
	int m_shockLineTime2Uniform;
	int m_shockLineTime3Uniform;
	int m_shockLineTime4Uniform;
	int m_shockLineAxisUniform;
	int m_shockLineDirectionUniform;
	int m_shockLineDualUniform;
	int m_shockLineWavesUniform;
	int m_shockLineStrengthUniform;
	int m_shockLineCenterUniform;
	int m_shockLineMaxDistValUniform;
	float m_shockLineTime1;
	float m_shockLineTime2;
	float m_shockLineTime3;
	float m_shockLineTime4;
	float m_shockLineMaxDistVal;
	int m_unk4b4;
	int m_unk4b8;
	int m_unk4bc;
	int m_glitchBotUniform;
	int m_glitchTopUniform;
	int m_glitchXOffsetUniform;
	int m_glitchColOffsetUniform;
	int m_glitchRndUniform;
	int m_chromaticXOffUniform;
	int m_chromaticYOffUniform;
	int m_cGRGBOffsetUniform;
	int m_cGYOffsetUniform;
	int m_cGTimeUniform;
	int m_cGStrengthUniform;
	int m_cGHeightUniform;
	int m_cGLineThickUniform;
	int m_cGLineStrengthUniform;
	int m_lensCircleOriginUniform;
	int m_lensCircleStartUniform;
	int m_lensCircleEndUniform;
	int m_lensCircleStrengthUniform;
	int m_lensCircleTintUniform;
	int m_lensCircleAdditiveUniform;
	int m_radialBlurCenterUniform;
	int m_radialBlurValueUniform;
	int m_blurFadeUniform;
	int m_motionBlurValueUniform;
	int m_motionBlurMultUniform;
	int m_motionBlurDualUniform;
	int m_bulgeValueUniform;
	int m_bulgeValue2Uniform;
	int m_bulgeOriginUniform;
	int m_bulgeRadiusUniform;
	int m_pinchValueUniform;
	int m_pinchCenterPosUniform;
	int m_pinchCalcUniform;
	int m_pinchRadiusUniform;
	int m_grayscaleValueUniform;
	int m_grayscaleTintUniform;
	int m_grayscaleUseLumUniform;
	int m_sepiaValueUniform;
	int m_invertColorValueUniform;
	int m_hueShiftCosAUniform;
	int m_hueShiftSinAUniform;
	int m_colorChangeCUniform;
	int m_colorChangeBUniform;
	int m_rowmodUniform;
	int m_colmodUniform;
	int m_rowmodCalcUniform;
	int m_colmodCalcUniform;
	int m_splitXStartUniform;
	int m_splitXRangeUniform;
	int m_splitXRangeMultUniform;
	int m_splitYStartUniform;
	int m_splitYRangeUniform;
	int m_splitYRangeMultUniform;
}

[[link(android)]]
class ShardsPage : FLAlertLayer {
	// virtual ~ShardsPage();
	ShardsPage() {
		m_pages = nullptr;
		m_prevButton = nullptr;
		m_nextButton = nullptr;
		m_tierSprite = nullptr;
		m_page = -1;
	}

	static ShardsPage* create() = win inline, m1 0x42de74, imac 0x4cf720 {
		auto ret = new ShardsPage();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	void FLAlert_Clicked(FLAlertLayer*, bool);
	void goToPage(int) = m1 0x42f970, imac 0x4d1540;
	void onClose(cocos2d::CCObject* sender) = win 0x82fc0, m1 0x42f8bc, imac 0x4d14a0;
	void onIconInfo(cocos2d::CCObject* sender) = win 0x460cc0, m1 0x42f8f8, imac 0x4d14d0;
	void onSwitchPage(cocos2d::CCObject* sender) = win 0x460d00, m1 0x42f930, imac 0x4d1500;

	virtual bool init() = win 0x45de70, imac 0x4cf860, m1 0x42df74, ios 0x3aaf40;
	virtual void registerWithTouchDispatcher() = win 0x41750, m1 0x42fcc8, imac 0x4d1890, ios 0x3ac92c;
	virtual void keyBackClicked() = win 0x82ff0, m1 0x42fc4c, imac 0x4d1820, ios 0x3ac8b0;
	virtual void show() = win 0x84fb0, m1 0x42fac4, imac 0x4d1690, ios 0x3ac73c;

	cocos2d::CCDictionary* m_pages;
	CCMenuItemSpriteExtra* m_prevButton;
	CCMenuItemSpriteExtra* m_nextButton;
	cocos2d::CCSprite* m_tierSprite;
	int m_page;
}

[[link(android)]]
class ShareCommentDelegate {
	virtual void shareCommentClosed(gd::string, ShareCommentLayer*);
}

[[link(android)]]
class ShareCommentLayer : FLAlertLayer, TextInputDelegate, UploadActionDelegate, UploadPopupDelegate {
	// virtual ~ShareCommentLayer();
	ShareCommentLayer() = ios 0x1df87c;

	static ShareCommentLayer* create(gd::string title, int charLimit, CommentType type, int ID, gd::string desc) = win 0x460fe0, ios 0x1ddefc, m1 0x511c2c, imac 0x5e8b30;

	bool init(gd::string title, int charLimit, CommentType type, int ID, gd::string desc) = win 0x4611f0, ios 0x1de04c, m1 0x511f08, imac 0x5e8e90;
	void onClear(cocos2d::CCObject* sender) = win 0x4622d0, ios 0x1deebc, m1 0x51317c, imac 0x5ea310;
	void onClose(cocos2d::CCObject* sender) = win 0x4627e0, ios 0x1def78, m1 0x513234, imac 0x5ea3b0;
	void onPercent(cocos2d::CCObject* sender) = win 0x462340, ios 0x1dedf0, m1 0x512fe4, imac 0x5ea180;
	void onShare(cocos2d::CCObject* sender) = win 0x462440, ios 0x1defcc, m1 0x513288, imac 0x5ea400;
	void updateCharCountLabel() = win inline, ios 0x1df5d8, m1 0x513b98, imac 0x5eadc0 {
		if (m_charLimit * .9f <= m_descText.size()) {
			m_charCountLabel->setColor({ 255, 0, 0 });
			m_charCountLabel->setOpacity(255);
		} else if (m_charLimit * .7f <= m_descText.size()) {
			m_charCountLabel->setColor({ 0, 0, 0 });
			m_charCountLabel->setOpacity(255);
		} else {
			m_charCountLabel->setColor({ 0, 0, 0 });
			m_charCountLabel->setOpacity(125);
		}
		m_charCountLabel->setString(cocos2d::CCString::createWithFormat("%i", m_charLimit - m_descText.size())->getCString());
	}
	void updateDescText(gd::string desc) = win 0x462ad0, ios inline, m1 0x5137a0, imac 0x5ea9d0 {
		m_descText = desc;
		this->updateCharCountLabel();
	}
	void updatePercentLabel() = win 0x462360, ios 0x1dee00, m1 0x5130b4, imac 0x5ea250;

	virtual void registerWithTouchDispatcher() = win 0x41750, m1 0x513870, imac 0x5eaab0, ios 0x1df408;
	virtual void keyBackClicked() = win 0x462820, m1 0x5137c8, imac 0x5eaa00, ios 0x1df360;
	virtual void textInputOpened(CCTextInputNode* textInput) = ios 0x1df514 {}
	virtual void textInputClosed(CCTextInputNode* textInput) = win 0x462870, m1 0x5138a8, imac 0x5eaaf0, ios 0x1df440;
	virtual void textChanged(CCTextInputNode* textInput) = win 0x4629b0, m1 0x513a2c, imac 0x5eac70, ios 0x1df51c;
	virtual void uploadActionFinished(int ID, int unk) = win 0x462c00, m1 0x513cac, imac 0x5eaed0, ios 0x1df6dc;
	virtual void uploadActionFailed(int ID, int unk) = win 0x462c90, m1 0x513de4, imac 0x5eafd0, ios 0x1df76c;
	virtual void onClosePopup(UploadActionPopup*) = win 0x462d40, m1 0x513f44, imac 0x5eb0f0, ios 0x1df7f0;

	int m_charLimit;
	int m_itemID;
	CommentType m_commentType;
	CCTextInputNode* m_commentInput;
	gd::string m_descText;
	gd::string m_placeholderText;
	cocos2d::CCLabelBMFont* m_charCountLabel;
	cocos2d::CCLabelBMFont* m_percentLabel;
	UploadActionPopup* m_uploadPopup;
	bool m_uploadSuccess;
	bool m_percentEnabled;
	int m_percent;
	ShareCommentDelegate* m_delegate;
}

[[link(android)]]
class ShareLevelLayer : FLAlertLayer {
	// virtual ~ShareLevelLayer();
	ShareLevelLayer() {
		m_level = nullptr;
		m_starsRequested = 0;
		m_starButtons = nullptr;
	}

	static ShareLevelLayer* create(GJGameLevel* level) = win inline, m1 0x221684, imac 0x27c0a0 {
		auto ret = new ShareLevelLayer();
		if (ret->init(level)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	CCMenuItemSpriteExtra* getStarsButton(int btnID, cocos2d::SEL_MenuHandler callback, cocos2d::CCMenu* menu, float scale) = win inline, m1 0x2229c0, imac 0x27d570 {
		auto btnSpr = ButtonSprite::create(cocos2d::CCString::createWithFormat("%i", btnID)->getCString(), 20, 0, .5f, true, "bigFont.fnt", "GJ_button_01.png", 30.f);
		auto btn = CCMenuItemSpriteExtra::create(btnSpr, this, callback);
		btn->setScale(scale);
		btn->m_baseScale = scale;
		if (menu) menu->addChild(btn);
		return btn;
	}
	bool init(GJGameLevel* level) = win 0x463090, m1 0x221788, imac 0x27c1f0;
	void onClose(cocos2d::CCObject* sender) = win 0x82fc0, m1 0x222758, imac 0x27d350;
	void onSettings(cocos2d::CCObject* sender) = win 0x4642f0, m1 0x222980, imac 0x27d530;
	void onShare(cocos2d::CCObject* sender) = win 0x464440, m1 0x222794, imac 0x27d380;
	void selectRating(cocos2d::CCObject*) = win 0x464160, m1 0x222a88, imac 0x27d640;
	void setupStars() = win 0x463d50, m1 0x2223fc, imac 0x27cfd0;

	virtual void keyBackClicked() = win 0x465260, m1 0x222e0c, imac 0x27da30, ios 0x286560;

	GJGameLevel* m_level;
	int m_starsRequested;
	cocos2d::CCArray* m_starButtons;
	cocos2d::CCSprite* m_difficultySprite;
}

[[link(android)]]
class ShareLevelSettingsLayer : FLAlertLayer, NumberInputDelegate {
	// virtual ~ShareLevelSettingsLayer();
	ShareLevelSettingsLayer() {} // yes, the constructor is empty

	static ShareLevelSettingsLayer* create(GJGameLevel* level) = win inline, m1 0x222c04, imac 0x27d7a0 {
		auto ret = new ShareLevelSettingsLayer();
		if (ret->init(level)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	bool init(GJGameLevel*) = win 0x4652b0, m1 0x2239b0, imac 0x27e780;
	void onClose(cocos2d::CCObject* sender) = win 0x465ff0, m1 0x2243b4, imac 0x27f200;
	void onUnlisted(cocos2d::CCObject* sender) = win 0x465cd0, m1 0x224438, imac 0x27f280;
	void onUnlistedFriendsOnly(cocos2d::CCObject* sender) = win 0x465ef0, m1 0x2245f4, imac 0x27f470;
	void updateSettingsState() = win 0x465f10, m1 0x224608, imac 0x27f490;

	virtual void keyBackClicked() = win 0x466070, m1 0x2246c8, imac 0x27f550, ios 0x287b68;

	cocos2d::CCLabelBMFont* m_passwordLabel;
	GJGameLevel* m_level;
	CCMenuItemToggler* m_friendsOnlyToggler;
	cocos2d::CCLabelBMFont* m_friendsOnlyLabel;
}

[[link(android)]]
class ShareListLayer : FLAlertLayer {
	// virtual ~ShareListLayer();
	ShareListLayer() {
		m_list = nullptr;
		m_friendsOnlyToggler = nullptr;
		m_friendsOnlyLabel = nullptr;
	}

	static ShareListLayer* create(GJLevelList* list) = win inline, m1 0x2eec80, imac 0x361950 {
		auto ret = new ShareListLayer();
		if (ret->init(list)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	bool init(GJLevelList*) = win 0x2e95f0, m1 0x2f0360, imac 0x363180;
	void onClose(cocos2d::CCObject* sender) = win 0x82fc0, m1 0x2f1518, imac 0x3644e0;
	void onInfo(cocos2d::CCObject* sender) = win 0x2ea790, m1 0x2f1668, imac 0x364610;
	void onShare(cocos2d::CCObject* sender) = win 0x2eaa50, m1 0x2f1554, imac 0x364510;
	void onUnlisted(cocos2d::CCObject* sender) = win 0x2ea900, m1 0x2f1720, imac 0x3646c0;
	void updateUnlistedF() = win 0x2ea970, m1 0x2f1820, imac 0x3647c0;

	virtual void keyBackClicked() = win 0x82ff0, m1 0x2f19e8, imac 0x3649d0, ios 0x258b3c;

	GJLevelList* m_list;
	CCMenuItemToggler* m_friendsOnlyToggler;
	cocos2d::CCLabelBMFont* m_friendsOnlyLabel;
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

	static SimplePlayer* create(int) = win 0x2672d0, m1 0x2f84a4, imac 0x36c360, ios 0x313e7c;

	void asyncLoadIcon(int, IconType) = m1 0x2fdc2c, imac 0x371f90;
	void createRobotSprite(int frame) = win inline, m1 0x2f8560, imac 0x36c420, ios 0x313f2c {
		if (m_robotSprite) return;
		auto robotSprite = GJRobotSprite::create(frame);
		m_robotSprite = robotSprite;
		addChild(robotSprite);
		m_robotSprite->setVisible(false);
	}
	void createSpiderSprite(int) = win 0x267aa0, m1 0x2f85c0, imac 0x36c480, ios 0x313f8c;
	void disableCustomGlowColor() = win inline, m1 0x2fc438, imac 0x370560, ios 0x317164 {
		m_hasCustomGlowColor = false;
	}
	void enableCustomGlowColor(cocos2d::_ccColor3B const& color) = win inline, m1 0x2fc418, imac 0x370530, ios 0x317144 {
		m_hasCustomGlowColor = true;
		m_glowColor = color;
	}
	void hideAll() = win inline, m1 0x2fdd44, imac 0x3720a0, ios inline {
		m_firstLayer->setVisible(false);
		m_secondLayer->setVisible(false);
		if (m_birdDome) m_birdDome->setVisible(false);
		if (m_outlineSprite) m_outlineSprite->setVisible(false);
		if (m_detailSprite) m_detailSprite->setVisible(false);
		if (m_robotSprite) m_robotSprite->setVisible(false);
		if (m_spiderSprite) m_spiderSprite->setVisible(false);
	}
	void hideSecondary() = win inline, m1 0x2fdee8, imac 0x372230, ios 0x318200 {
		m_secondLayer->setVisible(false);
		m_birdDome->setVisible(false);
		m_detailSprite->setVisible(false);
		m_outlineSprite->setVisible(false);
		if (m_robotSprite) {
			m_robotSprite->hideSecondary();
			m_robotSprite->m_glowSprite->setVisible(false);
		}
		if (m_spiderSprite) {
			m_spiderSprite->hideSecondary();
			m_spiderSprite->m_glowSprite->setVisible(false);
		}
	}
	void iconFinishedLoading(int, IconType) = m1 0x2fde08, imac 0x372150;
	bool init(int) = win 0x2673c0, m1 0x2fd55c, imac 0x371780, ios 0x317cb4;
	void setColors(cocos2d::ccColor3B const& color1, cocos2d::ccColor3B const& color2) = win inline, m1 0x2fc3d0, imac 0x3704f0, ios inline {
		m_firstLayer->setColor(color1);
		m_secondLayer->setColor(color2);
		updateColors();
	}
	void setFrames(char const*, char const*, char const*, char const*, char const*) = win 0x268450, m1 0x2fdf9c, imac 0x3722e0, ios 0x3182b4;
	void setSecondColor(cocos2d::_ccColor3B const& color) = win inline, m1 0x2fdeb8, imac 0x372200, ios 0x3181d0 {
		m_secondLayer->setColor(color);
		updateColors();
	}
	void updateColors() = win 0x267b60, m1 0x2fbf00, imac 0x36ffb0, ios 0x316d1c;
	void updatePlayerFrame(int, IconType) = win 0x267f20, m1 0x2f8784, imac 0x36c630, ios 0x314140;

	virtual void setOpacity(unsigned char) = win 0x268680, m1 0x2fe1c4, imac 0x372500, ios 0x3184d4;
	virtual void setColor(cocos2d::ccColor3B const&) = win 0x267b30, m1 0x2fde58, imac 0x3721a0, ios 0x318170;

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
	int m_iconRequestID;
	bool m_hasCustomGlowColor;
	cocos2d::ccColor3B m_glowColor;
	bool m_iconLoaded;
}

[[link(android)]]
class SlideInLayer : cocos2d::CCLayerColor {
	// virtual ~SlideInLayer();

	static SlideInLayer* create();

	virtual bool init() = m1 0x22e290, imac 0x28a300;
	virtual void draw() = m1 0x22e954, imac 0x28aa30;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x22e990, imac 0x28aa60;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x22e9b0, imac 0x28aac0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x22e9a0, imac 0x28aa80;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x22e9a8, imac 0x28aaa0;
	virtual void registerWithTouchDispatcher() = m1 0x22e674, imac 0x28a730;
	virtual void keyBackClicked() = m1 0x22e6ac, imac 0x28a770;
	virtual void customSetup() = m1 0x22e610, imac 0x28a6b0;
	virtual TodoReturn enterLayer() = m1 0x22e63c, imac 0x28a700;
	virtual TodoReturn exitLayer(cocos2d::CCObject*) = m1 0x22e6d0, imac 0x28a7b0;
	virtual void showLayer(bool) = m1 0x22e734, imac 0x28a800;
	virtual TodoReturn hideLayer(bool) = m1 0x22e824, imac 0x28a8f0;
	virtual TodoReturn layerVisible() = m1 0x22e8f4, imac 0x28a9d0;
	virtual void layerHidden() = m1 0x22e904, imac 0x28a9f0;
	virtual void enterAnimFinished() = m1 0x22e8f0, imac 0x28a9c0;
	virtual void disableUI() = m1 0x22e614, imac 0x28a6c0;
	virtual void enableUI() = m1 0x22e628, imac 0x28a6e0;
}

[[link(android), depends(SliderTouchLogic)]]
class Slider : cocos2d::CCLayer {
	// virtual ~Slider();

	static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler, char const* bar, char const* groove, char const* thumb, char const* thumbSel, float scale) = win 0x70230, m1 0x296e54, imac 0x303500, ios 0x2ff908;
	static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler) = imac 0x3032c0, m1 0x296c3c {
		return Slider::create(target, handler, 1.f);
	}
	static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler, float scale) = imac 0x3033e0, m1 0x296d40 {
		return Slider::create(target, handler, "sliderBar.png", "slidergroove.png", "sliderthumb.png", "sliderthumbsel.png", scale);
	}

	void disableSlider();
	void disableTouch() = imac 0x303b10, m1 0x297408;
	void enableSlider();
	bool getLiveDragging() {
		return m_touchLogic->m_activateThumb;
	}
	SliderThumb* getThumb() {
		return m_touchLogic->m_thumb;
	}
	float getValue() {
		return this->getThumb()->getValue();
	}
	void hideGroove(bool visibility) {
		m_groove->setVisible(!visibility);
	}
	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float) = win 0x70360, imac 0x303620, m1 0x296f64;
	void setBarVisibility(bool visibility) = imac 0x303c00, ios 0x2ffdc8, m1 0x2974b4, win inline {
		m_sliderBar->setVisible(visibility);
	}
	void setLiveDragging(bool activateThumb) {
		m_touchLogic->m_activateThumb = activateThumb;
	}
	void setMaxOffset(float offset) {
		m_touchLogic->setMaxOffset(offset);
	}
	void setRotated(bool rotated) {
		m_touchLogic->setRotated(rotated);
		m_groove->setRotation((rotated) ? -90 : 0);
	}
	void setValue(float val) = win 0x70710, imac 0x303960, m1 0x29727c, ios 0x2ffccc;
	TodoReturn sliderBegan();
	TodoReturn sliderEnded();
	void updateBar() = ios 0x2ff85c {
		float local_8;
		auto thumb = this->getThumb();
		if (!thumb->m_vertical) {
			local_8 = thumb->getPositionX();
		} else {
			local_8 = thumb->getPositionY();
		}

		float local_c = thumb->getScale() * thumb->m_length * 0.5f + local_8;
		float fVar6 = m_width;
		local_c = local_c / (thumb->getScale() * thumb->m_length);
		if (fVar6 * local_c <= fVar6) {
			fVar6 = fVar6 * local_c;
		}

		this->m_sliderBar->setTextureRect(cocos2d::CCRect(0.0f, 0.0f, fVar6, m_height));
	}

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x70820, m1 0x2974dc, imac 0x303c60, ios 0x2ffde4;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x70860, m1 0x29751c, imac 0x303ce0, ios 0x2ffe24;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x70840, m1 0x2974fc, imac 0x303ca0, ios 0x2ffe04;

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
	virtual void sliderEnded(Slider*) {}
}

[[link(android)]]
class SliderThumb : cocos2d::CCMenuItemImage {
	// virtual ~SliderThumb();

	static SliderThumb* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*);

	float getValue() = win 0x6fdc0, ios 0x2ff24c, m1 0x296090, imac 0x3025d0;
	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*);
	void setMaxOffset(float offset) {
		float value = getValue();
		m_length = offset;
		this->setPosition({0, 0});
		setValue(value);
	}
	void setRotated(bool rotated) {
		float value = getValue();
		m_vertical = rotated;
		this->setPosition({0, 0});
		setValue(value);
	}
	void setValue(float) = win 0x6fe50, imac 0x302670, ios 0x2ff2d0, m1 0x296114;

	float m_length;
	bool m_vertical;
}

[[link(android), depends(SliderThumb)]]
class SliderTouchLogic : cocos2d::CCMenu {
	// virtual ~SliderTouchLogic();

	static SliderTouchLogic* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float) = imac 0x302890;

	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float);
	void setMaxOffset(float offset) {
		float newOffset = m_thumb->getScale() * offset;
		m_length = newOffset;
		m_thumb->setMaxOffset(newOffset);
	}
	void setRotated(bool rotated) {
		m_rotated = rotated;
		m_thumb->setRotated(rotated);
	}

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x6ffc0, m1 0x29676c, imac 0x302d40, ios 0x2ff678;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x700b0, m1 0x296980, imac 0x302f70, ios 0x2ff770;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x70070, m1 0x2968d0, imac 0x302eb0, ios 0x2ff720;
	virtual void registerWithTouchDispatcher() = m1 0x296c04, imac 0x303280, ios 0x2ff8d0;

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

	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x16b420, imac 0x1ac670, ios 0x389e8c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x16af34, imac 0x1ac0c0, ios 0x389cf8;

	bool m_property157;
	PAD = android32 0x5;
}

[[link(android)]]
class SmartTemplateCell : TableViewCell {
	// virtual ~SmartTemplateCell();
	SmartTemplateCell(char const*, float, float);

	void loadFromObject(GJSmartTemplate*) = win 0xbbc50;
	void onClick(cocos2d::CCObject* sender);
	void updateBGColor(int) = win 0xbc040;

	virtual bool init() = m1 0x1fdb3c, imac 0x254b10, ios 0x1142d8;
	virtual void draw() = m1 0x1fdbf8, imac 0x254be0, ios 0x114388;
}

[[link(android)]]
class SongCell : TableViewCell {
	// virtual ~SongCell();
	SongCell(char const*, float, float);

	void loadFromObject(SongObject*) = win 0xb1ca0, ios 0x106afc, imac 0x2424f0;
	void onClick(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int) = ios 0x106f2c;

	virtual bool init() = m1 0x1f96b4, imac 0x24f6f0, ios 0x1117d0;
	virtual void draw() = m1 0x1f96e4, imac 0x24f730, ios 0x111800;
}

[[link(android)]]
class SongInfoLayer : FLAlertLayer {
	// virtual ~SongInfoLayer();

	static SongInfoLayer* create(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string, int, gd::string, int);
	static SongInfoLayer* create(int);

	bool init(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string, int, gd::string, int) = win 0x466b00;
	void onBPM(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onDownload(cocos2d::CCObject* sender);
	void onFB(cocos2d::CCObject* sender);
	void onMenuMusic(cocos2d::CCObject* sender);
	void onNG(cocos2d::CCObject* sender);
	void onPracticeMusic(cocos2d::CCObject* sender);
	void onYT(cocos2d::CCObject* sender);
	void showCustomMusicUnlockInfo();

	virtual void keyBackClicked() = m1 0x532a10, imac 0x60d190, ios 0x3b1ec0;

	gd::string m_downloadLink;
	gd::string m_newgroundsLink;
	gd::string m_youtubeLink;
	gd::string m_facebookLink;
	int m_songID;
	int m_musicCustomizerMessageIndex;
}

[[link(android)]]
class SongInfoObject : cocos2d::CCNode {
	// virtual ~SongInfoObject();

	static SongInfoObject* create(cocos2d::CCDictionary*);
	static SongInfoObject* create(int songID, gd::string songName, gd::string artistName, int artistID, float filesize, gd::string youtubeVideo, gd::string youtubeChannel, gd::string url, int nongType, gd::string extraArtistIDs, bool isNew, int newType, int priority) = win 0x3245a0;
	static SongInfoObject* create(int) = win 0x323450, m1 0x4e707c, imac 0x59f080;

	TodoReturn addTags(gd::string);
	TodoReturn containsTag(int);
	TodoReturn createWithCoder(DS_Dictionary*) = win 0x324b70;
	TodoReturn getArtistNames(int);
	TodoReturn getTagsString(bool);
	bool init(int songID, gd::string songName, gd::string artistName, int artistID, float filesize, gd::string youtubeVideo, gd::string youtubeChannel, gd::string url, int nongType, gd::string extraArtistIDs, bool isNew, int newType, int priority);

	virtual void encodeWithCoder(DS_Dictionary*) = win 0x324e80, m1 0x4e7ef4, imac 0x5a01f0, ios 0x1672ac;
	virtual bool canEncode() = m1 0x4e8088, imac 0x5a03b0, ios 0x167440;

	int m_songID;
	gd::string m_songName;
	gd::string m_artistName;
	gd::string m_youtubeVideo;
	gd::string m_youtubeChannel;
	gd::string m_songUrl;
	int m_artistID;
	float m_fileSize;
	int m_nongType;
	gd::string m_extraArtists;
	bool m_isUnknownSong; //better name would probs be m_isUnloaded (source: CustomSongWidget::getSongInfoIfUnloaded)
	int m_priority;
	int m_unkInt;
	int m_BPM;
	bool m_isNew;
	int m_newType;
	gd::string m_extraArtistNames;
	gd::unordered_set<int> m_artistIDs;
	gd::set<int> m_tags;
	gd::string m_longTagsString;
	gd::string m_shortTagsString;
}

[[link(android)]]
class SongObject : cocos2d::CCObject {
	// virtual ~SongObject();

	SongObject() = win inline {
		m_audioID = 0;
	}

	static SongObject* create(int audioID) = win inline {
		auto ret = new SongObject();
		if(ret->init(audioID)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	bool init(int audioID) = win inline {
		m_audioID = audioID;
		return true;
	}

	int m_audioID;
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
	void updatePlaybackBtn();

	virtual void keyBackClicked() = win 0xc2b20, m1 0x1c2fac, imac 0x211f30, ios 0x1506dc;
}

[[link(android)]]
class SongPlaybackDelegate {
	virtual TodoReturn onPlayback(SongInfoObject*);
}

[[link(android)]]
class SongSelectNode : cocos2d::CCNode, FLAlertLayerProtocol, CustomSongLayerDelegate, CustomSongDelegate {
	// virtual ~SongSelectNode();

	static SongSelectNode* create(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool) = win 0xc4180, imac 0x213480, m1 0x1c4458;

	void audioNext(cocos2d::CCObject* sender) = win 0xc4cb0, imac 0x213f00, m1 0x1c4ecc;
	void audioPrevious(cocos2d::CCObject* sender) = win 0xc4cf0, imac 0x213ec0, m1 0x1c4e98;
	bool init(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool) = win 0xc42b0, imac 0x2135a0, m1 0x1c4568;
	void onOpenCustomSong(cocos2d::CCObject* sender) = win 0xc5000, imac 0x213f70, m1 0x1c4f38;
	void onSongMode(cocos2d::CCObject* sender) = win 0xc4d20, imac 0x213f40, m1 0x1c4f04;
	void onSongMode(int) = win 0xc4d50, imac 0x214010, m1 0x1c4fb8;
	void selectSong(int id) = win inline, imac 0x213fe0, m1 0x1c4f94 {
		auto songID = id;
		if (songID > 21) songID = 21;
		m_songChanged = true;
		if (songID < 0) songID = 0;
		m_selectedSongID = songID;
		this->updateAudioLabel();
	}
	void showCustomSongSelect() = win 0xc5080, imac 0x2142a0, m1 0x1c5220;
	void updateAudioLabel() = win 0xc4bc0, imac 0x213dd0, m1 0x1c4d80;
	void updateWidgetVisibility() = win 0xc4f70, imac 0x214210, m1 0x1c518c;

	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xc51e0, m1 0x1c5254, imac 0x2142e0, ios 0x1526ac;
	virtual void customSongLayerClosed() = win 0xc5270, m1 0x1c533c, imac 0x2143c0, ios 0x152728;
	virtual TodoReturn songIDChanged(int) = win 0xc52a0, m1 0x1c53a4, imac 0x214420, ios 0x152790;
	virtual TodoReturn getActiveSongID() = win 0xc52b0, m1 0x1c53c4, imac 0x214450, ios 0x1527b0;
	virtual TodoReturn getSongFileName() = win 0xc52c0, m1 0x1c53d4, imac 0x214470, ios 0x1527c0;
	virtual LevelSettingsObject* getLevelSettings() = win 0xc5380, m1 0x1c550c, imac 0x2145b0, ios 0x15286c;

	int m_selectedSongID;
	bool m_isCustomSong;
	bool m_songChanged;
	cocos2d::CCLabelBMFont* m_audioLabel;
	cocos2d::CCArray* m_selectSongObjects;
	cocos2d::CCArray* m_normalSongObjects;
	cocos2d::CCArray* m_changeSongObjects;
	CCMenuItemSpriteExtra* m_normalButton;
	CCMenuItemSpriteExtra* m_customButton;
	CCMenuItemSpriteExtra* m_selectButton;
	CCMenuItemSpriteExtra* m_changeButton;
	CustomSongWidget* m_songWidget;
	LevelSettingsObject* m_settingsObject;
}

[[link(android)]]
class SongsLayer : GJDropDownLayer {
	// virtual ~SongsLayer();

	static SongsLayer* create();

	virtual void customSetup() = m1 0x46f5f8, win 0x468670, imac 0x519f70, ios 0x3558dc;
}

[[link(android)]]
class SongTriggerGameObject : SFXTriggerGameObject {
	// virtual ~SongTriggerGameObject();

	static SongTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x185540, imac 0x1cb1c0, ios 0x396ea4;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x184dc8, imac 0x1ca8d0, ios 0x396c5c;
}

[[link(android)]]
class SpawnParticleGameObject : EffectGameObject {
	// virtual ~SpawnParticleGameObject();

	static SpawnParticleGameObject* create();

	virtual bool init() = m1 0x19e1ac, imac 0x1e9500, ios 0x3a11e0;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x19f6e4, imac 0x1eafb0, ios 0x3a181c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x19e1fc, imac 0x1e9550, ios 0x3a1230;
}

[[link(android)]]
class SpawnTriggerAction {
	bool isFinished();
	TodoReturn step(float);

	PAD = win 0x28;
	GameObject* m_gameObject;
	gd::vector<int> m_unkVecInt;
}

[[link(android)]]
class SpawnTriggerGameObject : EffectGameObject {
	// virtual ~SpawnTriggerGameObject();

	static SpawnTriggerGameObject* create();

	TodoReturn addRemap(int, int);
	TodoReturn changeRemap(int, int, bool);
	TodoReturn removeRemap(int, int);
	void updateRemapKeys(gd::vector<int> const&) = win 0x48c900, imac 0x1cccf0;

	virtual bool init() = m1 0x186cf8, imac 0x1ccca0, ios 0x397a28;
	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = m1 0x186fc4, imac 0x1cd010, ios 0x397c60, win 0x48ca10;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x187550, imac 0x1cd500, ios 0x398030;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x187954, imac 0x1cd9a0, ios 0x398380;
}

[[link(android)]]
class SpecialAnimGameObject : EnhancedGameObject {
	// virtual ~SpecialAnimGameObject();

	static SpecialAnimGameObject* create(char const*);

	bool init(char const*);

	virtual void resetObject() = m1 0x16d79c, imac 0x1aecf0, ios 0x38b718;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x16d7a8, imac 0x1aed10, ios 0x38b724;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x16d808, imac 0x1aed70, ios 0x38b784;
	virtual void updateMainColor(cocos2d::ccColor3B const&) = m1 0x16d77c, imac 0x1aecb0, ios 0x38b6f8;
	virtual void updateSecondaryColor(cocos2d::ccColor3B const&) = m1 0x16d78c, imac 0x1aecd0, ios 0x38b708;
	virtual void updateSyncedAnimation(float, int) = m1 0x2012e8, imac 0x259570, ios 0x357784;
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
	TodoReturn offsetCurrentAnimation(float) = imac 0x731950;
	void overridePrio() = win 0x72f30;
	TodoReturn playSound(gd::string);
	TodoReturn playSoundForAnimation(gd::string);
	TodoReturn queueAnimation(gd::string);
	TodoReturn resetAnimState();
	TodoReturn runAnimation(gd::string);
	TodoReturn runQueuedAnimation();
	void stopAnimations() = win inline {
		this->overridePrio();
		if (m_sprite->m_paSprite) m_sprite->m_paSprite->stopAllActions();
		if (m_sprite->m_fbfSprite) m_sprite->m_fbfSprite->stopAllActions();
	}
	TodoReturn storeAnimation(cocos2d::CCAnimate*, cocos2d::CCAnimate*, gd::string, int, spriteMode, cocos2d::CCSpriteFrame*);
	TodoReturn storeSoundForAnimation(cocos2d::CCString*, gd::string, float);
	TodoReturn switchToFirstFrameOfAnimation(gd::string);
	TodoReturn updateAnimationSpeed(float) = imac 0x730510;

	CCAnimatedSprite* m_sprite;
	cocos2d::CCDictionary* m_animationDict1;
	cocos2d::CCDictionary* m_animationDict2;
	cocos2d::CCDictionary* m_animationDict3;
	gd::string m_queuedAnimation;
	float m_speed;
	cocos2d::CCDictionary* m_animationDict4;
	cocos2d::CCDictionary* m_animationDict5;
	gd::string m_currentAnimation;
	gd::string m_nextAnimation;
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
class StarInfoPopup : FLAlertLayer {
	// virtual ~StarInfoPopup();

	static StarInfoPopup* create(int, int, int, int, int, int, int, int, int, bool) = win 0x3a42a0, m1 0x6d37d4, imac 0x7cea20;
	static StarInfoPopup* createFromString(gd::string) = win 0x3a3d10, m1 0x6d05b0, imac 0x7cb650;
	static StarInfoPopup* createFromStringMoons(gd::string) = win 0x3a3ff0, m1 0x6d081c, imac 0x7cb8e0;

	bool init(int, int, int, int, int, int, int, int, int, bool) = win 0x3a43e0, m1 0x6d392c, imac 0x7cebb0;
	void onClose(cocos2d::CCObject* sender) = m1 0x6d4180, imac 0x7cf3a0;

	virtual void keyBackClicked() = m1 0x6d41bc, imac 0x7cf3d0, ios 0x1a9b9c;
}

[[link(android)]]
class StartPosObject : EffectGameObject {
	// virtual ~StartPosObject();

	static StartPosObject* create();

	TodoReturn loadSettingsFromString(gd::string);
	void setSettings(LevelSettingsObject*);

	virtual bool init() = m1 0x175b94, imac 0x1b88a0, ios 0x3908c8;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x175cd0, imac 0x1b89f0, ios 0x3909c4;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x175cd4, imac 0x1b8a00, ios 0x3909c8;

	LevelSettingsObject* m_startSettings;
}

[[link(android)]]
class StatsCell : TableViewCell {
	// virtual ~StatsCell();
	StatsCell(char const*, float, float);

	TodoReturn getTitleFromKey(char const*);
	void loadFromObject(StatsObject*) = win 0xb0a20, ios 0x1067a4, imac 0x2421f0;
	void updateBGColor(int) = ios 0x106a9c;

	virtual bool init() = m1 0x1f89a4, imac 0x24ea90, ios 0x110f70;
	virtual void draw() = win 0xabd00, m1 0x1f9510, imac 0x24F4A0, ios 0x111680;
}

[[link(android)]]
class StatsLayer : GJDropDownLayer {
	// virtual ~StatsLayer();

	static StatsLayer* create();

	virtual void customSetup() = m1 0x8b700, imac 0x9b1d0, ios 0x252340;
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
	void onLowDetail(cocos2d::CCObject* sender) = win 0x49d0c0;
	void onPrivacy(cocos2d::CCObject* sender);
	void onRequestAccess(cocos2d::CCObject* sender) = win 0x49CCA0;
	void onRobTop(cocos2d::CCObject* sender);
	void onSFX(cocos2d::CCObject* sender);
	void onTOS(cocos2d::CCObject* sender);
	TodoReturn sendSupportMail();

	virtual void customSetup() = m1 0x322e1c, imac 0x39b820, ios 0x19d2f0;
	virtual void uploadActionFinished(int, int) = win 0x49cef0, m1 0x324bc8, imac 0x39d6e0, ios 0x19eb80;
	virtual void uploadActionFailed(int, int) = win 0x49d030, m1 0x324d14, imac 0x39d820, ios 0x19ec68;
	virtual void onClosePopup(UploadActionPopup*) = win 0x49ceb0, m1 0x324b78, imac 0x39d690, ios 0x19eb30;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x49dcb0, m1 0x3250f8, imac 0x39dbe0, ios 0x19ee7c;
}

[[link(android), depends(CCIndexPath)]]
class TableView : CCScrollLayerExt, CCScrollLayerExtDelegate {
	// virtual ~TableView() = ios 0x30f51c;
	inline TableView(cocos2d::CCRect rect) : CCScrollLayerExt(rect) {
		m_touchStartPosition2 = cocos2d::CCPointMake(0.f, 0.f);
		m_unknown2 = cocos2d::CCPointMake(0.f, 0.f);
		m_touchPosition2 = cocos2d::CCPointMake(0.f, 0.f);
		m_tableDelegate = nullptr;
		m_dataSource = nullptr;
		m_cellDelegate = nullptr;
		m_unused2 = false;
		this->setTouchEnabled(true);
		this->setMouseEnabled(true);
		m_vScrollbarVisible = false;
		m_hScrollbarVisible = false;
		m_disableHorizontal = false;
		m_unused3 = nullptr;
		m_delegate = this;
		m_touchOutOfBoundary = false;
		m_array2 = cocos2d::CCArray::create();
		m_array2->retain();
		m_cellArray = cocos2d::CCArray::create();
		m_cellArray->retain();
		m_array3 = cocos2d::CCArray::create();
		m_array3->retain();
		m_touchLastY = 0.f;
		m_cancellingTouches = false;
		m_idk2 = false;
	}

	static TableView* create(TableViewDelegate* tvd, TableViewDataSource* tvds, TableViewCellDelegate* tvcd, cocos2d::CCRect rect) = win inline, m1 0x54dea8, imac 0x62cd90, ios 0x30f340 {
		auto ret = new TableView(rect);
		ret->m_tableDelegate = tvd;
		ret->m_dataSource = tvds;
		ret->m_cellDelegate = tvcd;
		ret->setPosition({ 0.f, 0.f });
		ret->autorelease();
		return ret;
	}

	void cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x310134;
	TodoReturn cellForRowAtIndexPath(CCIndexPath&);
	TodoReturn cellForTouch(cocos2d::CCTouch*);
	TodoReturn checkBoundaryOfCell(cocos2d::CCPoint&, float);
	TodoReturn checkBoundaryOfCell(TableViewCell*);
	TodoReturn checkBoundaryOfContent(float);
	TodoReturn checkFirstCell(TableViewCell*);
	TodoReturn checkLastCell(TableViewCell*);
	TodoReturn claimTouch(cocos2d::CCTouch*);
	void deleteTableViewCell(TableViewCell*) = m1 0x54e858, imac 0x62d840;
	TodoReturn dequeueReusableCellWithIdentifier(char const*);
	TodoReturn initTableViewCells();
	bool isDuplicateIndexPath(CCIndexPath&);
	bool isDuplicateInVisibleCellArray(CCIndexPath*);
	void reloadData() = win 0x73810, imac 0x62db70, m1 0x54eb08, ios 0x30fbfc;
	TodoReturn removeIndexPathFromPathAddedArray(CCIndexPath&);
	TodoReturn scrollToIndexPath(CCIndexPath&);
	TodoReturn touchFinish(cocos2d::CCTouch*);

	virtual void onEnter() = win 0x51f30, m1 0x54f058, imac 0x62e110, ios 0x310090;
	virtual void onExit() = win 0x73d50, m1 0x54f05c, imac 0x62e120, ios 0x310094;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x73d60, m1 0x54f1d8, ios 0x3101d0, imac 0x62e2c0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x73ff0, m1 0x54fc20, ios 0x310988, imac 0x62ee00;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x73f10, m1 0x54f9d8, imac 0x62ebc0, ios 0x310814;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x73f70, m1 0x54fb44, imac 0x62ed40, ios 0x310928;
	virtual void registerWithTouchDispatcher() = win 0x3d720, m1 0x54f060, ios 0x310098, imac 0x62e130;
	virtual void scrollWheel(float, float) = win 0x745a0, m1 0x54fd14, ios 0x310a50, imac 0x62eef0;
	virtual void scrllViewWillBeginDecelerating(CCScrollLayerExt*) = ios 0x311350 {}
	virtual void scrollViewDidEndDecelerating(CCScrollLayerExt*) = ios 0x311358 {}
	virtual void scrollViewTouchMoving(CCScrollLayerExt*) = ios 0x311360 {}
	virtual void scrollViewDidEndMoving(CCScrollLayerExt*) = ios 0x311368 {}

	bool m_touchOutOfBoundary;
	cocos2d::CCTouch* m_touchStart;
	cocos2d::CCPoint m_touchStartPosition2;
	cocos2d::CCPoint m_unknown2;
	cocos2d::CCPoint m_touchPosition2;
	TableViewCell* m_touchedCell;
	bool m_touchMoved;
	cocos2d::CCArray* m_cellArray;
	cocos2d::CCArray* m_array2;
	cocos2d::CCArray* m_array3;
	TableViewDelegate* m_tableDelegate;
	TableViewDataSource* m_dataSource;
	TableViewCellDelegate* m_cellDelegate;
	bool m_unused2;
	void* m_unused3;
	int m_unused4;
	float m_touchLastY;
	bool m_cancellingTouches;
	bool m_idk2;
}

[[link(android), depends(CCIndexPath)]]
class TableViewCell : cocos2d::CCLayer {
	// virtual ~TableViewCell();
	TableViewCell(char const*, float, float) = win 0x755e0, imac 0x633d10, m1 0x553cfc, ios 0x3a740;

	TodoReturn updateVisibility() = imac 0x634280;

	void* m_unknown;
	TableView* m_tableView;
	CCIndexPath m_indexPath;
	void* m_unknown2;
	gd::string m_unknownString;
	float m_width;
	float m_height;
	cocos2d::CCLayerColor* m_backgroundLayer;
	cocos2d::CCLayer* m_mainLayer;
	BoomListType m_listType;
}

[[link(android)]]
class TableViewCellDelegate {
	virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	virtual int getSelectedCellIdx();
	virtual bool shouldSnapToSelected();
	virtual TodoReturn getCellDelegateType();
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

	static TeleportPortalObject* create(char const*, bool) = win 0x485d20, imac 0x1b8ac0, m1 0x175db8;

	TodoReturn getTeleportXOff(cocos2d::CCNode*) = win 0x485fa0, imac 0x1b8d80;
	bool init(char const*, bool) = win 0x4797a0;
	void setPositionOverride(cocos2d::CCPoint);
	void setStartPosOverride(cocos2d::CCPoint);

	virtual void setPosition(cocos2d::CCPoint const&) = m1 0x176110, imac 0x1b8e60, ios 0x390cbc;
	virtual void setRotation(float) = m1 0x1761b8, imac 0x1b8f10, ios 0x390d64;
	virtual void setStartPos(cocos2d::CCPoint) = m1 0x175f78, imac 0x1b8cb0, ios 0x390b30;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x1780a8, imac 0x1bb5f0, ios 0x3916c0;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x17631c, imac 0x1b9060, ios 0x390eb8;
	virtual void addToGroup(int) = m1 0x176234, imac 0x1b8fa0, ios 0x390de0;
	virtual void removeFromGroup(int) = m1 0x1762b8, imac 0x1b9000, ios 0x390e54;
	virtual void setRotation2(float) = m1 0x176228, imac 0x1b8f70, ios 0x390dd4;
	virtual void addToGroup2(int) = m1 0x17622c, imac 0x1b8f80, ios 0x390dd8;
	virtual void removeFromGroup2(int) = m1 0x176230, imac 0x1b8f90, ios 0x390ddc;

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

	static TextAlertPopup* create(gd::string text, float delay, float scale, int opacity, gd::string font) = win 0x28b920, imac 0x2ab0c0, m1 0x24c288;

	bool init(gd::string text, float delay, float scale, int opacity, gd::string font) = win 0x28ba50, imac 0x2ab2e0, m1 0x24c4d0;
	void setAlertPosition(cocos2d::CCPoint windowOffset, cocos2d::CCPoint pointOffset) = win inline, imac 0x2ab630, m1 0x24c810 {
		if (!m_label) return;

		auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
		this->setPosition({
			windowOffset.x * winSize.width + m_width / 2 + pointOffset.x,
			windowOffset.y * winSize.height + m_height / 2 + pointOffset.y
		});
	}
	void setLabelColor(cocos2d::ccColor3B color) = win inline, imac 0x2ab5f0, m1 0x24c7d4 {
		if (m_label) m_label->setColor(color);
	}

	float m_width;
	float m_height;
	cocos2d::CCLabelBMFont* m_label;
}

[[link(android)]]
class TextArea : cocos2d::CCSprite {
	// virtual ~TextArea();
	// TextArea();

	static TextArea* create(gd::string str, char const* font, float scale, float width, cocos2d::CCPoint anchor, float lineHeight, bool disableColor) = win 0x75960, m1 0x2b0bf8, imac 0x320310, ios 0xf7ed8;

	void colorAllCharactersTo(cocos2d::ccColor3B) = win 0x76110, imac 0x320fb0, m1 0x2b1814;
	void colorAllLabels(cocos2d::ccColor3B) = imac 0x321060, m1 0x2b18d8;
	void fadeIn(float, bool) = imac 0x320c80, m1 0x2b14c8;
	void fadeInCharacters(float, float) = win 0x763a0, imac 0x3212a0, m1 0x2b1aac;
	void fadeOut(float) = imac 0x320e40, m1 0x2b16a0;
	void fadeOutAndRemove() = imac 0x320de0, m1 0x2b1630;
	void finishFade() = win 0x760b0, imac 0x320db0, m1 0x2b160c;
	void hideAll() = imac 0x320a10, m1 0x2b1244, ios 0xf8380;
	bool init(gd::string str, char const* font, float scale, float width, cocos2d::CCPoint anchor, float lineHeight, bool disableColor) = imac 0x320530, m1 0x2b0df0, ios 0xf8004;
	void setIgnoreColorCode(bool) = imac 0x3209f0, m1 0x2b1230;
	void setString(gd::string) = win 0x75ba0, imac 0x320680, m1 0x2b0f30, ios 0xf80fc;
	void showAll() = imac 0x320ba0, m1 0x2b13e4;
	void stopAllCharacterActions() = win 0x75ff0, imac 0x320ae0, m1 0x2b131c;

	virtual void update(float) = win 0x761c0, m1 0x2b1950, imac 0x3210f0, ios 0xf863c;
	virtual void draw() = ios 0xf8638 {}
	virtual void setOpacity(unsigned char) = win 0x760d0, m1 0x2b17a8, imac 0x320f40, ios 0xf849c;

	bool m_disableColor;
	MultilineBitmapFont* m_label;
	float m_width;
	int m_unknown;
	gd::string m_fontFile;
	float m_height;
	bool m_unkBool;
	cocos2d::CCPoint m_anchorPoint;
	bool m_allShown;
	float m_scale;
	int m_rectHeight;
	int m_rectWidth;
	float m_maxWidth;
	cocos2d::CCPoint m_unkPoint;
	TextAreaDelegate* m_delegate;
	cocos2d::CCDictionary* m_shakeCharacters;
	float m_shakeElapsed;
}

[[link(android)]]
class TextAreaDelegate {
	virtual TodoReturn fadeInTextFinished(TextArea*);
}

[[link(android)]]
class TextGameObject : GameObject {
	// virtual ~TextGameObject();

	static TextGameObject* create(cocos2d::CCTexture2D*) = win 0x19d4f0;

	bool init(cocos2d::CCTexture2D*);
	void updateTextObject(gd::string, bool) = win 0x19d5e0, imac 0x5d9f90;

	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x504f98, imac 0x5da200, ios 0x274c74;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x50514c, imac 0x5da380, ios 0x274db4;
	virtual void updateTextKerning(int) = m1 0x504ce4, imac 0x5d9f80, ios 0x2749c4;
	virtual int getTextKerning() = m1 0x505998, imac 0x5dad80, ios 0x275108;

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

	static TextStyleSection* create(int, int, TextStyleType) = win 0x6c320, m1 0x3f786c, imac 0x4925f0;

	static TextStyleSection* createColoredSection(cocos2d::ccColor3B p0, int p1, int p2) = win inline, m1 0x3f7530, imac 0x492260 {
		auto ret = TextStyleSection::create(p1, p2, TextStyleType::Colored);
		ret->m_color = p0;
		return ret;
	}
	static TextStyleSection* createDelaySection(int p0, float p1) = win inline, m1 0x3f76c0, imac 0x4923f0 {
		auto ret = TextStyleSection::create(p0, -1, TextStyleType::Delayed);
		ret->m_delay = p1;
		return ret;
	}
	static TextStyleSection* createInstantSection(int p0, int p1, float p2) = win inline, m1 0x3f75b4, imac 0x4922e0 {
		auto ret = TextStyleSection::create(p0, p1, TextStyleType::Instant);
		ret->m_instantTime = p2;
		return ret;
	}
	static TextStyleSection* createShakeSection(int p0, int p1, int p2, int p3) = win inline, m1 0x3f7638, imac 0x492360 {
		auto ret = TextStyleSection::create(p0, p1, TextStyleType::Shake);
		ret->m_shakeIntensity = p2;
		ret->m_shakesPerSecond = p3;
		return ret;
	}
	bool init(int p0, int p1, TextStyleType p2) = win inline, m1 0x3f78e0, imac 0x492660 {
		m_styleType = p2;
		m_startIndex = p0;
		m_endIndex = p1;
		return true;
	}

	TextStyleType m_styleType;
	int m_startIndex;
	int m_endIndex;
	cocos2d::ccColor3B m_color;
	float m_instantTime;
	float m_delay;
	int m_shakeIntensity;
	int m_shakesPerSecond;
}

[[link(android)]]
class TimerTriggerAction {
	PAD = win 0x20;
	gd::vector<int> m_unkVecInt;
}

[[link(android)]]
class TimerTriggerGameObject : EffectGameObject {
	// virtual ~TimerTriggerGameObject();

	static TimerTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = m1 0x1938cc, imac 0x1dc950, ios 0x39d204;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x195154, imac 0x1de820, ios 0x39d914;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x1939d4, imac 0x1dca60, ios 0x39d2b4;
}

[[link(android)]]
class ToggleTriggerAction {
	PAD = win 0x14;
	gd::vector<int> m_unkVecInt;
}

[[link(android)]]
class TopArtistsLayer : FLAlertLayer, OnlineListDelegate {
	// virtual ~TopArtistsLayer();
	TopArtistsLayer() {
		m_topArtists = nullptr;
		m_listLayer = nullptr;
		m_loadingCircle = nullptr;
		m_page = 0;
	}

	static TopArtistsLayer* create() = win inline, m1 0x2a15b8, imac 0x30f920 {
		auto ret = new TopArtistsLayer();
		if (ret->init()) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}

	bool isCorrect(char const*) = m1 0x2a2018, imac 0x310450;
	void loadPage(int) = win 0x49eab0, m1 0x2a269c, imac 0x310b20;
	void onClose(cocos2d::CCObject* sender) = win 0x82fc0, m1 0x2a1de4, imac 0x3101f0;
	void onNextPage(cocos2d::CCObject* sender) = win 0x49ef20, m1 0x2a1e2c, imac 0x310240;
	void onPrevPage(cocos2d::CCObject* sender) = win 0x49ef30, m1 0x2a1e20, imac 0x310220;
	void setupLeaderboard(cocos2d::CCArray*) = win 0x49e780, m1 0x2a1e38, imac 0x310260;
	void updateLevelsLabel() = m1 0x2a2614, imac 0x310a80;

	virtual bool init() = win 0x49df70, m1 0x2a16c0, imac 0x30fa80, ios 0x1b01a4;
	virtual void registerWithTouchDispatcher() = win 0x41750, m1 0x2a1fe0, imac 0x310410, ios 0x1b09ec;
	virtual void keyBackClicked() = win 0x82ff0, m1 0x2a1f64, imac 0x3103a0, ios 0x1b0970;
	virtual void show() = win 0x84fb0, m1 0x2a2a5c, imac 0x310ee0, ios 0x1b1030;
	virtual void loadListFinished(cocos2d::CCArray*, char const*) = win 0x49e710, m1 0x2a2020, imac 0x310460, ios 0x1b0a24;
	virtual void loadListFailed(char const*) = win 0x49e770, m1 0x2a20e4, imac 0x310520, ios 0x1b0a88;
	virtual void setupPageInfo(gd::string, char const*) = win 0x49e8d0, m1 0x2a210c, imac 0x310560, ios 0x1b0ab0;

	cocos2d::CCArray* m_topArtists;
	GJCommentListLayer* m_listLayer;
	LoadingCircle* m_loadingCircle;
	CCMenuItemSpriteExtra* m_nextButton;
	CCMenuItemSpriteExtra* m_prevButton;
	void* m_unkPtr;
	cocos2d::CCLabelBMFont* m_pageInfoLabel;
	int m_itemCount;
	int m_pageStartIdx;
	int m_pageEndIdx;
	int m_unkSize4;
	int m_page;
}

[[link(android)]]
class TOSPopup : FLAlertLayer {
	// virtual ~TOSPopup();

	static TOSPopup* create();

	void onClose(cocos2d::CCObject* sender);
	void onPrivacy(cocos2d::CCObject* sender);
	void onTOS(cocos2d::CCObject* sender);

	virtual bool init() = m1 0x24c9f0, win 0x28bdb0, imac 0x2ab8d0, ios 0x2f1390;
	virtual void keyBackClicked() = ios 0x2f19a4 {}
}

[[link(android)]]
class TouchToggleAction {
	PAD = win 0x20;
	gd::vector<int> m_unkVecInt;
}

[[link(android)]]
class TransformTriggerGameObject : EffectGameObject {
	// virtual ~TransformTriggerGameObject();

	static TransformTriggerGameObject* create(char const*);

	bool init(char const*);

	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = m1 0x18c394, imac 0x1d33d0, ios 0x39a588;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x18c3b8, imac 0x1d3400, ios 0x39a5ac;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x18c680, imac 0x1d37f0, ios 0x39a83c;
}

[[link(android)]]
class TriggerControlGameObject : EffectGameObject {
	// virtual ~TriggerControlGameObject();

	static TriggerControlGameObject* create(char const*);

	bool init(char const*);
	TodoReturn updateTriggerControlFrame();

	virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = m1 0x19e0c0, imac 0x1e9410, ios 0x3a114c;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x19de64, imac 0x1e91c0, ios 0x3a0f8c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x19d6f0, imac 0x1e88d0, ios 0x3a0d44;
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

	static TutorialLayer* create() = ios 0x1c7cfc;

	void loadPage(int) = ios 0x1c82a8;
	void onClose(cocos2d::CCObject* sender) = ios 0x1c8238;
	void onNext(cocos2d::CCObject* sender) = ios 0x1c8290;
	void removeTutorialTexture() = ios 0x1c8648;

	virtual bool init() = m1 0x441ce8, ios 0x1c7db8, imac 0x4e64f0;
	virtual void keyBackClicked() = win 0x49fd20, m1 0x442764, imac 0x4e6f30, ios 0x1c86a0;
}

[[link(android)]]
class TutorialPopup : FLAlertLayer {
	// virtual ~TutorialPopup();

	static TutorialPopup* create(gd::string);

	TodoReturn animateMenu();
	TodoReturn closeTutorial(cocos2d::CCObject*);
	bool init(gd::string);
	TodoReturn registerForCallback(cocos2d::SEL_MenuHandler, cocos2d::CCNode*);

	virtual void keyBackClicked() = m1 0x5074ec, imac 0x5dce50;
	virtual void show() = m1 0x5075c0, imac 0x5dcf20;
}

[[link(android)]]
class UIButtonConfig {
	TodoReturn reset() = win 0x1720d0;
	TodoReturn resetOneBtn();

	PAD = win 0x28, android32 0x28, android64 0x28;
}

[[link(android)]]
class UILayer : cocos2d::CCLayerColor {
	// virtual ~UILayer();
	// UILayer() = ios 0x51948;

	static UILayer* create(GJBaseGameLayer*) = m1 0x42fd64, imac 0x4d1930, ios 0x4f538;

	void disableMenu() = imac 0x4d2bf0, m1 0x430f10;
	TodoReturn editorPlaytest(bool);
	void enableEditorMode();
	TodoReturn enableMenu() = imac 0x4d34a0, m1 0x431538;
	void handleKeypress(cocos2d::enumKeyCodes, bool) = win 0x4a0b80, m1 0x43103c, imac 0x4d2d40;
	bool init(GJBaseGameLayer*) = win 0x49fe60, imac 0x4d1a70, m1 0x42fe64, ios 0x4f5ac;
	bool isJumpButtonPressed(bool) = m1 0x431774, imac 0x4d3700;
	void onCheck(cocos2d::CCObject* sender);
	void onDeleteCheck(cocos2d::CCObject* sender);
	void onPause(cocos2d::CCObject* sender) = win 0x4a1300, imac 0x4d2290, m1 0x430634;
	void processUINodesTouch(GJUITouchEvent, cocos2d::CCTouch*); //was set to win 0x312bf0 but thats in the middle of a function
	void processUINodeTouch(GJUITouchEvent, int, cocos2d::CCPoint, GJUINode*) = win 0x4a1810;
	TodoReturn refreshDpad();
	void resetAllButtons() = imac 0x4d3600, m1 0x431688;
	void resetUINodeState() = win 0x4a09e0, m1 0x430d58, imac 0x4d2a40;
	TodoReturn toggleCheckpointsMenu(bool);
	void toggleMenuVisibility(bool) = imac 0x4d34c0, m1 0x43154c;
	void togglePlatformerMode(bool);
	TodoReturn updateDualMode(bool);
	TodoReturn updateUINodeVisibility(bool);
	TodoReturn doPause();

	virtual void draw() = ios 0x5067c {}
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x4a14e0, m1 0x4317c0, imac 0x4d3740, ios 0x506bc;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x4a1670, m1 0x431a14, imac 0x4d3920, ios 0x508c8;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x4a1690, m1 0x431b48, imac 0x4d3a20, ios 0x508fc;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x43245c, imac 0x4d4260, ios 0x50e80;
	virtual void registerWithTouchDispatcher() = m1 0x432478, imac 0x4d42a0, ios 0x50e9c;
	virtual void keyBackClicked() = win 0x4a1240, m1 0x431368, imac 0x4d32c0, ios 0x50528;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x4a1220, m1 0x431328, imac 0x4d3220, ios 0x504e8;
	virtual void keyUp(cocos2d::enumKeyCodes) = win 0x4a1230, m1 0x431348, imac 0x4d3270, ios 0x50508;

	// This member is here because rob managed to inhert CCKeyboardDelegate twice
	// in this class, which ended up breaking addresser when trying to hook it.
	// so instead, we removed the second CCKeyboardDelegate from the base class list
	// and put this member here to take the place of its vtable
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
	bool m_inPlatformer;
	GJBaseGameLayer* m_gameLayer;
	bool m_initialized;
	cocos2d::CCArray* m_uiNodes;
	bool m_dualMode;
	bool m_dpadType;
	bool m_editorMode;
}

[[link(android)]]
class UIObjectSettingsPopup : SetupTriggerPopup {
	// virtual ~UIObjectSettingsPopup();

	static UIObjectSettingsPopup* create(UISettingsGameObject*, cocos2d::CCArray*);

	bool init(UISettingsGameObject*, cocos2d::CCArray*);

	virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = m1 0x4cfbd8, imac 0x584cb0, ios 0x413eb4;
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

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x2919d0, m1 0x2512c4, imac 0x2b0a90, ios 0x2f4fb8;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x291b20, m1 0x25147c, imac 0x2b0c60, ios 0x2f514c;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x291c50, m1 0x25168c, imac 0x2b0e00, ios 0x2f5294;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2517e0, imac 0x2b0f40, ios 0x2f532c;
	virtual void registerWithTouchDispatcher() = m1 0x2517fc, imac 0x2b0f80, ios 0x2f5348;
	virtual void onClose(cocos2d::CCObject* sender) = m1 0x250ca4, imac 0x2b0310, ios 0x2f4b24;
	virtual void valueDidChange(int, float) = m1 0x250df4, imac 0x2b04a0, ios 0x2f4c74;
	virtual float getValue(int) = m1 0x251058, imac 0x2b07b0, ios 0x2f4e4c;
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

	virtual bool init() = m1 0x18ee38, imac 0x1d68f0, ios 0x39b5c0;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x18fa94, imac 0x1d7820, ios 0x39b96c;
	virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x18ee88, imac 0x1d6940, ios 0x39b610;
}

[[link(android)]]
class UndoObject : cocos2d::CCObject {
	virtual ~UndoObject() {
		if (m_objectCopy) m_objectCopy->release();
		if (m_objects) m_objects->release();
	}
	UndoObject() {
		m_objectCopy = nullptr;
		m_objects = nullptr;
		// some of the floats are set to 1.0 but idk which who cares
	}

	static UndoObject* create(GameObject*, UndoCommand);
	static UndoObject* createWithArray(cocos2d::CCArray* arrOfObjects, UndoCommand command) {
		auto* ret = new UndoObject();
		if (ret->init(arrOfObjects, command)) {
			ret->autorelease();
			return ret;
		}
		delete ret;
		return nullptr;
	}
	static UndoObject* createWithTransformObjects(cocos2d::CCArray*, UndoCommand);

	bool init(cocos2d::CCArray* array, UndoCommand command) {
		m_command = command;
		if (array != nullptr) {
			m_objects = cocos2d::CCArray::create();
			m_objects->addObjectsFromArray(array);
			m_objects->retain();
		}
		return true;
	}
	bool init(GameObject*, UndoCommand) = win 0x2cfca0;
	TodoReturn initWithTransformObjects(cocos2d::CCArray*, UndoCommand);
	void setObjects(cocos2d::CCArray*);

	GameObjectCopy* m_objectCopy;
	UndoCommand m_command;
	cocos2d::CCArray* m_objects;
	bool m_redo;
	GJTransformState m_transformState;
}

[[link(android)]]
class UpdateAccountSettingsPopup : FLAlertLayer, GJAccountSettingsDelegate {
	// virtual ~UpdateAccountSettingsPopup();

	static UpdateAccountSettingsPopup* create(GJAccountSettingsLayer*, int, int, int, gd::string, gd::string, gd::string);

	bool init(GJAccountSettingsLayer*, int, int, int, gd::string, gd::string, gd::string);
	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = win 0x282f90, m1 0x240d24, imac 0x29ecb0, ios 0x2e8ee0;
	virtual TodoReturn updateSettingsFinished() = win 0x282c10, m1 0x240b20, imac 0x29eaa0, ios 0x2e8d30;
	virtual TodoReturn updateSettingsFailed() = win 0x282d10, m1 0x240c38, imac 0x29ebc0, ios 0x2e8e14;
}

[[link(android)]]
class UploadActionDelegate {
	virtual void uploadActionFinished(int, int) {}
	virtual void uploadActionFailed(int, int) {}
}

[[link(android)]]
class UploadActionPopup : FLAlertLayer {
	// virtual ~UploadActionPopup();

	static UploadActionPopup* create(UploadPopupDelegate* delegate, gd::string str) = win 0x282fa0, m1 0x240e30, imac 0x29ee10;

	void closePopup() = win inline, m1 0x2416f0, imac 0x29f760, ios 0x2e9614 {
		this->setKeypadEnabled(false);
		this->removeFromParentAndCleanup(true);
	}
	bool init(UploadPopupDelegate* delegate, gd::string str) = win 0x2830e0, m1 0x240fe8, imac 0x29f010;
	void onClose(cocos2d::CCObject* sender) = win 0x283750, m1 0x2413f4, imac 0x29f460;
	void showFailMessage(gd::string message) = win 0x283650, m1 0x2415ac, imac 0x29f610, ios 0x2e9538;
	void showSuccessMessage(gd::string message) = win 0x283540, m1 0x241454, imac 0x29f4b0, ios 0x2e9448;

	virtual void keyBackClicked() = win 0x2837a0, m1 0x24172c, imac 0x29f790, ios 0x2e9650;

	UploadPopupDelegate* m_delegate;
	TextArea* m_textArea;
	LoadingCircle* m_loadingCircle;
	CCMenuItemSpriteExtra* m_closeButton;
	bool m_succeeded;
}

[[link(android)]]
class UploadListPopup : FLAlertLayer, ListUploadDelegate {
	// virtual ~UploadListPopup();

	static UploadListPopup* create(GJLevelList*);

	bool init(GJLevelList*) = win 0x2eaca0;
	void onBack(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onReturnToList(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = ios 0x259618 {}
	virtual void show() = m1 0x2f274c, imac 0x365890, ios 0x2595b8;
	virtual void listUploadFinished(GJLevelList*) = win 0x2eb1e0, m1 0x2f21f8, imac 0x365330, ios 0x25910c;
	virtual void listUploadFailed(GJLevelList*, int) = win 0x2eb3b0, m1 0x2f23fc, imac 0x365550, ios 0x259300;
}

[[link(android)]]
class UploadMessageDelegate {
	virtual void uploadMessageFinished(int);
	virtual void uploadMessageFailed(int);
}

[[link(android)]]
class UploadPopup : FLAlertLayer, LevelUploadDelegate {
	// virtual ~UploadPopup();

	static UploadPopup* create(GJGameLevel*);

	bool init(GJGameLevel*);
	void onBack(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onReturnToLevel(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = ios 0x286ffc {}
	virtual void show() = win 0x2eb740, m1 0x22390c, imac 0x27e660, ios 0x286f9c;
	virtual void levelUploadFinished(GJGameLevel*) = win 0x464dc0, m1 0x2234dc, imac 0x27e200, ios 0x286ba0;
	virtual void levelUploadFailed(GJGameLevel*) = win 0x464f90, m1 0x223714, imac 0x27e450, ios 0x286dc8;
}

[[link(android)]]
class UploadPopupDelegate {
	virtual void onClosePopup(UploadActionPopup*) {}
}

[[link(android)]]
class URLCell : TableViewCell {
	// virtual ~URLCell();
	URLCell(char const*, float, float);

	void loadFromObject(CCURLObject*) = win 0xbd870, imac 0x242d70;
	void onURL(cocos2d::CCObject* sender);
	TodoReturn updateBGColor(int);

	virtual bool init() = m1 0x1fe164, imac 0x255320, ios 0x11468c;
	virtual void draw() = m1 0x1fe1d4, imac 0x255390, ios 0x1146e8;
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

	static VideoOptionsLayer* create() = win 0x355140, ios 0xeed80;

	CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float, bool, cocos2d::CCArray*) = ios 0xf21a8;
	void onAdvanced(cocos2d::CCObject* sender) = ios 0xf2810;
	void onApply(cocos2d::CCObject* sender) = ios 0xf24ac, imac 0x7ac480;
	void onClose(cocos2d::CCObject* sender) = ios 0xf2454;
	void onFullscreen(cocos2d::CCObject* sender) = ios 0xf2404;
	void onBorderless(cocos2d::CCObject* sender) = ios 0xf2414;
	void onInfo(cocos2d::CCObject* sender);
	void onResolutionNext(cocos2d::CCObject* sender) = ios 0xf2430;
	void onResolutionPrev(cocos2d::CCObject* sender) = ios 0xf2424;
	void onTextureQualityNext(cocos2d::CCObject* sender) = ios 0xf2448;
	void onTextureQualityPrev(cocos2d::CCObject* sender) = ios 0xf243c;
	void reloadMenu();
	void toggleResolution() = ios 0xf28f0;
	void updateResolution(int) = ios 0xf2750;
	void updateTextureQuality(int) = ios 0xf2688;

	virtual bool init() = win 0x355250, m1 0x6b23b4, ios 0xf154c, imac 0x7ab1a0;
	virtual void keyBackClicked() = win 0x356df0, m1 0x6b3cb4, imac 0x7acc20, ios 0xf2a68;

	CCMenuItemSpriteExtra* m_prevResolutionBtn;
	CCMenuItemSpriteExtra* m_nextResolutionBtn;
	cocos2d::CCLabelBMFont* m_windowedResolutionLabel;
	cocos2d::CCLabelBMFont* m_selectedResolutionLabel;
	cocos2d::CCLabelBMFont* m_qualityLabel;
	int m_textureQuality;
	cocos2d::CCArray* m_availableResolutions;
	CCMenuItemToggler* m_borderlessToggle;
	cocos2d::CCLabelBMFont* m_borderlessLabel;
	bool m_windowed;
	bool m_borderless;
	int m_currentResolution;
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

	virtual void keyBackClicked() = m1 0x34d2a0, imac 0x3ca580;
	virtual void show() = m1 0x34d158, imac 0x3ca440;

	GJWorldNode* m_worldNode;
	GJGameLevel* m_level;
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
	void unblockButtons();
	void updateArrows();

	virtual void onExit() = m1 0x34a418, imac 0x3c7350;
	virtual void keyBackClicked() = m1 0x34a338, imac 0x3c7270;
	virtual void scrollLayerWillScrollToPage(BoomScrollLayer*, int) = m1 0x34a1f0, imac 0x3c7180;
	virtual void scrollLayerScrolledToPage(BoomScrollLayer*, int) = m1 0x34a0a8, imac 0x3c7090;
	virtual void scrollLayerMoved(cocos2d::CCPoint) = m1 0x34a468, imac 0x3c73a0;

	cocos2d::CCSprite* m_background;
	BoomScrollLayer* m_scrollLayer;
	CCMenuItemSpriteExtra* m_arrowLeft;
	CCMenuItemSpriteExtra* m_arrowRight;
	bool m_cleanupSprites;
	bool m_unkBool1;
	GJWorldNode* m_worldNode;
	bool m_unkBool2;
}
