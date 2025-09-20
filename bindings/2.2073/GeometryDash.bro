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

    virtual void customSetup() = win 0x7f5c0, imac 0xcf0f0, m1 0xb7bcc;
    virtual void layerHidden() = imac 0xcfda0, m1 0xb8844;
    virtual TodoReturn accountStatusChanged() = win 0x7fcc0, imac 0xcfc60, m1 0xb86f8;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x7ffa0, imac 0xcfc90, m1 0xb8704;

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

    static AccountLayer* create() = win 0x7d560;

    TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
    void doBackup() = win inline {
        this->updatePage(false);
        if (!GJAccountManager::sharedState()->getAccountBackupURL()) this->backupAccountFailed((BackupAccountError)-1, 0);
        else this->showLoadingUI();
    }
    void doSync() = win inline {
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
    void onBackup(cocos2d::CCObject* sender);
    void onHelp(cocos2d::CCObject* sender);
    void onLogin(cocos2d::CCObject* sender);
    void onMore(cocos2d::CCObject* sender);
    void onRegister(cocos2d::CCObject* sender) = win 0x7de50;
    void onSync(cocos2d::CCObject* sender);
    void showLoadingUI() {
        this->toggleUI(false);
        m_loadingCircle->setVisible(true);
    }
    void toggleUI(bool enable) {
        m_buttonMenu->setEnabled(enable);
        this->setKeypadEnabled(enable);
    }
    void updatePage(bool) = win 0x7e760;

    virtual void customSetup() = win 0x7d6c0, m1 0xb5704, imac 0xcca20;
    virtual void layerHidden() = win 0x7f450, imac 0xceab0, m1 0xb76f4;
    virtual void backupAccountFinished() = win 0x7eb30, imac 0xcdfc0, m1 0xb6c80;
    virtual void backupAccountFailed(BackupAccountError, int) = win 0x7ece0, imac 0xce180, m1 0xb6e40;
    virtual void syncAccountFinished() = win 0x7eff0, imac 0xce560, m1 0xb71d0;
    virtual void syncAccountFailed(BackupAccountError, int) = win 0x7f1b0, m1 0xb7338, imac 0xce6e0;
    virtual TodoReturn accountStatusChanged() = win 0x7e750, imac 0xcdf90, m1 0xb6c6c;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x7f340, imac 0xce990, m1 0xb75c4;

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

    static AccountLoginLayer* create(gd::string) = win 0x7b730;

    TodoReturn createTextBackground(cocos2d::CCPoint, char const*, cocos2d::CCSize);
    TodoReturn createTextInput(cocos2d::CCPoint, cocos2d::CCSize, char const*, int);
    TodoReturn createTextLabel(cocos2d::CCPoint, char const*, cocos2d::CCSize);
    void disableNodes();
    void hideLoadingUI();
    bool init(gd::string) = win 0x7b8d0;
    void onClose(cocos2d::CCObject* sender);
    void onForgotPassword(cocos2d::CCObject* sender);
    void onForgotUser(cocos2d::CCObject* sender);
    void onSubmit(cocos2d::CCObject* sender) = win 0x7cbc0;
    void resetLabel(int);
    void resetLabels();
    void showLoadingUI();
    void toggleUI(bool);
    void updateLabel(AccountError);

    virtual void registerWithTouchDispatcher() = imac 0x487bf0, m1 0x3f5120;
    virtual void keyBackClicked() = win 0x7cfa0, imac 0x487ab0, m1 0x3f4fd0;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x7cb50, imac 0x4878f0, m1 0x3f4dbc;
    virtual void textInputOpened(CCTextInputNode*) = imac 0x487da0, m1 0x3f52f0 {}
    virtual void textInputClosed(CCTextInputNode*) = win 0x7d070, m1 0x3f5158, imac 0x487c30;
    virtual void textChanged(CCTextInputNode*) = imac 0x487dc0, m1 0x3f52f8 {}
    virtual TodoReturn loginAccountFinished(int, int) = win 0x7c740, imac 0x487230, m1 0x3f46e8;
    virtual TodoReturn loginAccountFailed(AccountError) = win 0x7c990, imac 0x4875c0, m1 0x3f4a68;

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
    void resetLabel(int) = imac 0x484890, m1 0x3f207c;
    void resetLabels() = imac 0x484770, m1 0x3f1f4c;
    void showLoadingUI();
    void toggleUI(bool);
    void updateLabel(AccountError);
    bool validEmail(gd::string);
    bool validPassword(gd::string);
    bool validUser(gd::string);

    virtual bool init() = imac 0x4824d0, m1 0x3f0084;
    virtual void registerWithTouchDispatcher() = imac 0x485000, m1 0x3f27bc;
    virtual void keyBackClicked() = win 0x7abf0, imac 0x484e30, m1 0x3f25b8;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x7a200, imac 0x484980, m1 0x3f2174;
    virtual void textInputOpened(CCTextInputNode*) = imac 0x485910, m1 0x3f2f94 {}
    virtual void textInputClosed(CCTextInputNode*) = win 0x7ad50, imac 0x485040, m1 0x3f27f4;
    virtual void textChanged(CCTextInputNode*) = imac 0x485930, m1 0x3f2f9c {}
    virtual void textInputShouldOffset(CCTextInputNode*, float) = win 0x7b5c0, imac 0x485950, m1 0x3f2fa4;
    virtual void textInputReturn(CCTextInputNode*) = win 0x7b620, imac 0x485a10, m1 0x3f3074;
    virtual bool allowTextInput(CCTextInputNode*) = win 0x7b670, imac 0x485ac0, m1 0x3f312c;
    virtual TodoReturn registerAccountFinished() = win 0x79c90, imac 0x4841d0, m1 0x3f19c0;
    virtual TodoReturn registerAccountFailed(AccountError) = win 0x79eb0, imac 0x484380, m1 0x3f1b68;

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

    AchievementBar(unsigned int idk) = win 0x80620;

    static AchievementBar* create(char const* title, char const* desc, char const* icon, bool quest);

    bool init(char const* title, char const* desc, char const* icon, bool quest) = win 0x80670;
    void show() = win 0x81c20;

    virtual void setOpacity(unsigned char) = win 0x81ea0, imac 0x602f40, m1 0x530984;

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

    void loadFromDict(cocos2d::CCDictionary*) = win 0xac150;
    void updateBGColor(int);

    virtual bool init() = imac 0x23cec0, m1 0x1eca0c;
    virtual void draw() = imac 0x23ced0, m1 0x1eca14;
}

[[link(android)]]
class AchievementManager : cocos2d::CCNode {
    // virtual ~AchievementManager();

    static AchievementManager* sharedState() = win 0x7da0, imac 0x7157b0, m1 0x633f7c;

    gd::string achievementForUnlock(int, UnlockType) = win 0x3a1c0, imac 0x76f0a0, m1 0x682694;
    void addAchievement(gd::string, gd::string, gd::string, gd::string, gd::string, int) = win 0x7ef0;
    void addManualAchievements() = win 0x8410;
    TodoReturn areAchievementsEarned(cocos2d::CCArray*);
    TodoReturn checkAchFromUnlock(char const*);
    void dataLoaded(DS_Dictionary*) = imac 0x76eb60;
    void encodeDataTo(DS_Dictionary*) = imac 0x76ebd0;
    void firstSetup();
    TodoReturn getAchievementRewardDict();
    cocos2d::CCDictionary* getAchievementsWithID(char const*) = win 0x39d70, imac 0x76ee90;
    TodoReturn getAllAchievements();
    cocos2d::CCArray* getAllAchievementsSorted(bool);
    bool isAchievementAvailable(gd::string);
    bool isAchievementEarned(char const* ach) = win 0x39a70, imac 0x76ed40, m1 0x6822d8;
    int limitForAchievement(gd::string id) = win inline, imac 0x76f000, m1 0x6825cc {
        if (auto achievements = getAchievementsWithID(id.c_str())) {
            if (auto limits = static_cast<cocos2d::CCString*>(achievements->objectForKey("limits"))) return limits->intValue();
        }
        return 0;
    }
    TodoReturn notifyAchievement(char const*, char const*, char const*);
    TodoReturn notifyAchievementWithID(char const*);
    TodoReturn percentageForCount(int, int);
    int percentForAchievement(char const*) = win 0x39a90;
    void reportAchievementWithID(char const*, int, bool);
    void reportPlatformAchievementWithID(char const*, int);
    void resetAchievement(char const*);
    TodoReturn resetAchievements();
    TodoReturn setup();
    void storeAchievementUnlocks();

    virtual bool init() = win 0x7e60, imac 0x7158c0, m1 0x63406c;

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

    static AchievementNotifier* sharedState() = win 0x3ab20;

    void achievementDisplayFinished();
    void notifyAchievement(char const* title, char const* desc, char const* icon, bool quest) = win 0x3ac00, imac 0x7ad580, m1 0x6becf4;
    void showNextAchievement() = win 0x3ace0;
    void willSwitchToScene(cocos2d::CCScene* scene) = win inline, imac 0x7ad730, m1 0x6beea4 {
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

    virtual bool init() = m1 0x6becc8, imac 0x7ad550;

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

    void loadPage(int) = win 0x82300;
    void onNextPage(cocos2d::CCObject* sender) = win 0x824e0;
    void onPrevPage(cocos2d::CCObject* sender) = win 0x824f0;
    void setupLevelBrowser(cocos2d::CCArray* arr) = win inline {
        m_listLayer->removeChildByTag(9, true);
        auto* listView = CustomListView::create(arr, BoomListType::Default, 220.f, 356.f);
        listView->setTag(9);
        m_listLayer->addChild(listView, 6);
    }
    void setupPageInfo(int, int, int);

    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x82260, imac 0x3605c0, m1 0x2f3470;
    virtual void customSetup() = win 0x81fb0, m1 0x2f3010, imac 0x360100;

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
    void setupAds();
    void showDebug();
    void showInterstitial();
    void showRewardedVideo();
}

[[link(android)]]
class AdvancedFollowEditObject : AdvancedFollowTriggerObject {
    // virtual ~AdvancedFollowEditObject();

    static AdvancedFollowEditObject* create(char const*);

    bool init(char const*);

    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x19de00, m1 0x160f70;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x19ce30, m1 0x1602e8;
}

[[link(android)]]
class AdvancedFollowTriggerObject : EffectGameObject {
    // virtual ~AdvancedFollowTriggerObject();
    // AdvancedFollowTriggerObject();

    static AdvancedFollowTriggerObject* create(char const*);

    int getAdvancedFollowID();
    bool init(char const*);

    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x19bb60, m1 0x15f204;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1928e0, m1 0x1581f8;
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

    virtual void setOpacity(unsigned char) = win 0x48b4a0, m1 0x168a50, imac 0x1a6a40;
    virtual void setChildColor(cocos2d::ccColor3B const&) = m1 0x16a45c, imac 0x1a8660;
    virtual void resetObject() = imac 0x1a85f0, m1 0x16a3fc;
    virtual void activateObject() = m1 0x168954, imac 0x1a6930;
    virtual void deactivateObject(bool) = imac 0x1a6970, m1 0x168998;
    virtual void setObjectColor(cocos2d::ccColor3B const&) = imac 0x1a6b20, m1 0x168b1c;
    virtual void animationFinished(char const*) = win 0x48b5b0, imac 0x1a6b50, m1 0x168b50;
    virtual TodoReturn displayFrameChanged(cocos2d::CCObject*, gd::string) = win 0x48c890, m1 0x169c50, imac 0x1a7ec0;
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

    static AnimatedShopKeeper* create(ShopType type) = win inline, imac 0x310780, m1 0x2a6f14 {
        auto ret = new AnimatedShopKeeper();
        if (ret->init(type)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool init(ShopType type) = win inline, imac 0x314710, m1 0x2aa7bc {
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
    void playReactAnimation() = win 0x2a8400;
    void startAnimating() = win 0x2a8690, imac 0x3108f0, m1 0x2a7070;

    virtual void animationFinished(char const*) = win 0x2a8720, m1 0x2aa888, imac 0x3147c0;

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
    static AppDelegate* get() = win inline, ios inline {
            return static_cast<AppDelegate*>(cocos2d::CCApplication::sharedApplication());
        }

    float bgScale();
    TodoReturn checkSound();
    TodoReturn hideLoadingCircle();
    TodoReturn loadingIsFinished();
    bool musicTest() = win 0x83370;
    void pauseGame() = win 0x82ff0;
    void pauseSound() = win 0x830d0;
    void platformShutdown() = win 0x82560;
    void resumeSound() = win 0x83270, m1 0x56ebdc;
    void setIdleTimerDisabled(bool);
    void setupGLView() = win 0x82580;
    void showLoadingCircle(bool, bool, bool);

    virtual bool applicationDidFinishLaunching() = win 0x829f0, imac 0x645f50, m1 0x56e738;
    virtual void applicationDidEnterBackground() = win 0x82da0, imac 0x6461f0, m1 0x56e9b0;
    virtual void applicationWillEnterForeground() = win 0x82e20, m1 0x56eaf0, imac 0x646350;
    virtual void applicationWillBecomeActive() = win 0x82d40, imac 0x6460f0, m1 0x56e8cc;
    virtual void applicationWillResignActive() = win 0x82d90, imac 0x646110, m1 0x56e8e0;
    virtual void trySaveGame(bool) = win 0x834b0, imac 0x6465e0, m1 0x56ed74;
    virtual void willSwitchToScene(cocos2d::CCScene*) = win 0x83590, imac 0x6466c0, m1 0x56ee4c;

    PAD = win 0x4, android32 0xc, android64 0x18;
    cocos2d::CCScene* m_runningScene;
}

[[link(android)]]
class ArtistCell : TableViewCell {
    // virtual ~ArtistCell();
    ArtistCell(char const*, float, float);

    void loadFromObject(SongInfoObject*) = win 0xb4e90;
    void onNewgrounds(cocos2d::CCObject* sender);
    void onYouTube(cocos2d::CCObject* sender);
    void updateBGColor(int);

    virtual bool init() = imac 0x242c90, m1 0x1f1f38;
    virtual void draw() = imac 0x242e50, m1 0x1f20fc;

    SongInfoObject* m_songInfo;
}

[[link(android)]]
class ArtTriggerGameObject : EffectGameObject {
    // virtual ~ArtTriggerGameObject();

    static ArtTriggerGameObject* create(char const*);

    bool init(char const*);

    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = imac 0x1dbd70, m1 0x194a0c;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x194994, imac 0x1dbd10;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1db7f0, m1 0x194518;
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

    virtual void registerWithTouchDispatcher() = imac 0x79fb70, m1 0x6b1f14;
    virtual void keyBackClicked() = imac 0x79fb00, m1 0x6b1e98;
    virtual void musicActionFinished(GJMusicAction) = imac 0x79fa20, m1 0x6b1e44;
    virtual void musicActionFailed(GJMusicAction) = imac 0x79fa50, m1 0x6b1e50;
    virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = imac 0x79fa90, m1 0x6b1e64;
    virtual int getSelectedCellIdx() = imac 0x79fab0, m1 0x6b1e74;
    virtual TodoReturn getCellDelegateType() = imac 0x79fad0, m1 0x6b1e84;

    cocos2d::CCArray* m_songInfoObjects;
    GJCommentListLayer* m_songList;
    cocos2d::CCLabelBMFont* m_pageIndicatorLabel;
    gd::vector<int> m_songsIds;
    gd::vector<int> m_sfxIds;
    LoadingCircleSprite* m_loadingCircle;
}

[[link(android)]]
class AudioEffectsLayer : cocos2d::CCLayerColor {
    // virtual ~AudioEffectsLayer();

    static AudioEffectsLayer* create(gd::string);

    void audioStep(float) = win 0x84d80, imac 0x49c9f0;
    TodoReturn getBGSquare();
    TodoReturn goingDown();
    bool init(gd::string);
    void resetAudioVars() = imac 0x49c990, m1 0x407a54;
    TodoReturn triggerEffect(float) = imac 0x49cac0;

    virtual void draw() = imac 0x49cd30, m1 0x407e08 {}
    virtual void updateTweenAction(float, char const*) = imac 0x49cc00, m1 0x407ccc;

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

    virtual bool init() = imac 0x1d92e0, m1 0x192614;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x1930f0, imac 0x1da050;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1d9330, m1 0x192664;
}

[[link(android)]]
class BitmapFontCache : cocos2d::CCObject {
    // virtual ~BitmapFontCache();
    BitmapFontCache() {}
    static void purgeSharedFontCache() = win inline {
        auto** instancePtr = reinterpret_cast<BitmapFontCache**>(geode::base::get() + 0x6a4e08);
        if (*instancePtr) {
            (*instancePtr)->release();
            *instancePtr = nullptr;
        }
    }

    static BitmapFontCache* sharedFontCache() = win inline, m1 0x1c2f40 {
        auto** instancePtr = reinterpret_cast<BitmapFontCache**>(geode::base::get() + 0x6a4e08);
        if (!*instancePtr) {
            *instancePtr = new BitmapFontCache();
            (*instancePtr)->init();
        }
        return *instancePtr;
    }

    FontObject* fontWithConfigFile(char const*, float) = win 0x3b380, m1 0x1c30c8;
    bool init() = win inline {
        m_cache = cocos2d::CCDictionary::create();
        m_cache->retain();
        return true;
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

    static BoomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = imac 0x2f8c60, m1 0x291544;

    TodoReturn addObjectToList(cocos2d::CCNode*);
    bool init(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = win 0x3bfe0, imac 0x2f8d90, m1 0x291650;

    bool init(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
        return this->init(entries, nullptr, height, width, 0, type, 0.0f);
    }
    void lockList(bool) = imac 0x2f8f40, m1 0x2917e8;

    virtual void draw() = imac 0x2f98f0, m1 0x29203c {}
    virtual void setupList(float) = win 0x3c350, imac 0x2f8fc0, m1 0x291854;
    virtual void TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) = imac 0x2f9060, m1 0x2918d4 {}
    virtual float cellHeightForRowAtIndexPath(CCIndexPath&, TableView*) = win 0x3c3e0, imac 0x2f90a0, m1 0x2918e4;
    virtual void didSelectRowAtIndexPath(CCIndexPath&, TableView*) = imac 0x2f90c0, m1 0x2918f4 {}
    virtual int numberOfRowsInSection(unsigned int, TableView*) = win 0x3c3f0, imac 0x2f90e0, m1 0x2918fc;
    virtual unsigned int numberOfSectionsInTableView(TableView*) = imac 0x2f9110, m1 0x29190c { return 1; }
    virtual TableViewCell* cellForRowAtIndexPath(CCIndexPath&, TableView*) = win 0x3c410, imac 0x2f9130, m1 0x29191c;
    virtual void TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&) = imac 0x2f98d0, m1 0x292034 {}
    virtual void TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) = imac 0x2f9080, m1 0x2918dc {}
    virtual TableViewCell* getListCell(char const*) = win 0x3c4a0, imac 0x2f9240, m1 0x291a38;
    virtual void loadCell(TableViewCell*, int) = win 0x3c610, imac 0x2f9480, m1 0x291bdc;

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

    static BoomScrollLayer* create(cocos2d::CCArray* pages, int unk1, bool unk2, cocos2d::CCArray* unk3, DynamicScrollDelegate* delegate) = win 0x3d060, imac 0x391ba0, m1 0x3205e0;
    static BoomScrollLayer* create(cocos2d::CCArray* pages, int unk1, bool unk2) = win inline, imac 0x391f90, m1 0x3209ac {
        return BoomScrollLayer::create(pages, unk1, unk2, nullptr, nullptr);
    }

    void addPage(cocos2d::CCLayer*, int) = m1 0x32219c;
    void addPage(cocos2d::CCLayer*) = imac 0x3939d0;
    void cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x32246c;
    void claimTouch(cocos2d::CCTouch*) = m1 0x322408;
    cocos2d::CCLayer* getPage(int) = win inline, imac 0x392e90, m1 0x3217ec {
        auto index = m_page;
        if (m_dynamic) index = index % m_pages->count();
        return static_cast<cocos2d::CCLayer*>(m_pages->objectAtIndex(index));
    }
    int getRelativePageForNum(int page) = win inline, imac 0x3932e0, m1 0x321b3c {
        return page < 1 ? page : page % getTotalPages();
    }
    cocos2d::CCPoint getRelativePosForPage(int page) = win inline, imac 0x392e40, m1 0x32179c {
        return { this->getContentSize().width - m_pageOffset * page, 0.f };
    }
    int getTotalPages() = win inline, imac 0x391da0 {
        return m_dynamic ? m_dynamicObjects->count() : m_pages->count();
    }
    bool init(cocos2d::CCArray*, int, bool, cocos2d::CCArray*, DynamicScrollDelegate*) = win 0x3d230, imac 0x391c30;
    void instantMoveToPage(int) = win 0x3ddc0, m1 0x321df8;
    void moveToPage(int) = win 0x3dea0, imac 0x393680, m1 0x321ed0;
    void moveToPageEnded() = win 0x3dc30, imac 0x393410, m1 0x321c68;
    int pageNumberForPosition(cocos2d::CCPoint) = win 0x3dcc0, imac 0x393200, m1 0x321a50;
    cocos2d::CCPoint positionForPageWithNumber(int page) = win inline, imac 0x393550, m1 0x321da4 {
        return { this->getContentSize().width + m_pageOffset * page, 0.f };
    }
    void quickUpdate() = win inline, imac 0x3938f0, m1 0x322144 {
        if (m_pageMoving) {
            m_pageMoving = false;
            m_extendedLayer->stopActionByTag(2);
            m_extendedLayer->setPosition(m_position);
            this->moveToPageEnded();
        }
    }
    void removePage(cocos2d::CCLayer*) = imac 0x393a40, m1 0x322274;
    void removePageWithNumber(int) = imac 0x393ad0, m1 0x322308;
    void repositionPagesLooped() = win 0x3e060, imac 0x392220, m1 0x320c40;
    void selectPage(int);
    void setDotScale(float scale) = win inline, m1 0x321734 {
        for (int i = 0; i < m_dots->count(); i++) {
            static_cast<cocos2d::CCSprite*>(m_dots->objectAtIndex(i))->setScale(scale);
        }
    }
    void setPagesIndicatorPosition(cocos2d::CCPoint pos) = win inline, imac 0x3920d0, m1 0x320af8 {
        m_dotPosition = pos;
        this->updateDots(0.f);
    }
    void setupDynamicScrolling(cocos2d::CCArray*, DynamicScrollDelegate*) = win 0x3d5a0, imac 0x3928a0, m1 0x321250;
    void togglePageIndicators(bool) = win 0x3db60, imac 0x393340, m1 0x321ba4;
    void updateDots(float) = win 0x3d960, imac 0x392b20, m1 0x3214b4;
    void updatePages() = win 0x3d840, m1 0x320b20;

    virtual void visit() = win 0x3dbd0, imac 0x3933b0, m1 0x321c10;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x3e710, imac 0x393ee0, m1 0x322718;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x3e7c0, imac 0x393fd0, m1 0x3227e4;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x3eaf0, imac 0x3942f0, m1 0x322aa0;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x3e630, imac 0x393d20, m1 0x322548;
    virtual void registerWithTouchDispatcher() = m1 0x3223d0, imac 0x393b90;

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

    virtual void onBack(cocos2d::CCObject* sender) = m1 0x43c87c, imac 0x4d90c0;
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
    void goToPage(int);
    bool init(GJSmartTemplate*, SmartBrowseFilter);
    void onClick(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    void onTemplateObject(cocos2d::CCObject* sender);
    TodoReturn updateDots();

    virtual void keyBackClicked() = win 0x442f00, imac 0x4d7ac0, m1 0x43b43c;
    virtual void onBack(cocos2d::CCObject* sender) = win 0x442f20, m1 0x43b460, imac 0x4d7b00;

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
    ButtonSprite() = win 0x3ed20;
    static ButtonSprite* create(char const* caption, int width, int p2, float scale, bool absolute, char const* font, char const* bg, float height) = win 0x3f150, imac 0x92bd0, m1 0x85b94;
    static ButtonSprite* create(cocos2d::CCSprite* topSprite, int width, int unused, float height, float scale, bool absolute, char const* bgSprite, bool noScaleSpriteForBG) = win 0x3ee40, imac 0x92340, m1 0x853d8;

    /// Create a ButtonSprite with a top sprite and a texture.
    /// @param topSprite The top sprite to add on top of the sprite
    /// @param width Sprite width; ignored if `absolute` is false
    /// @param absolute Whether to use absolute width or not
    /// @param texture The name of the background sprite file (can't be in a spritesheet)
    /// @param height The height of the button, leave 0 for automatic
    /// @param scale Scale of top sprite
    static ButtonSprite* create(cocos2d::CCSprite* topSprite, int width, bool absolute, float height, const char* texture, float scale) {
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

    static ButtonSprite* create(char const* caption) = imac 0x92b50 {
        return ButtonSprite::create(caption, 0, false, "goldFont.fnt", "GJ_button_01.png", .0f, 1.f);
    }
    static ButtonSprite* create(char const* caption, const char* font, const char* texture) {
        return ButtonSprite::create(caption, 0, false, font, texture, .0f, 1.f);
    }
    static ButtonSprite* create(char const* caption, const char* font, const char* texture, float scale) {
        return ButtonSprite::create(caption, 0, false, font, texture, .0f, scale);
    }

    static ButtonSprite* create(char const* caption, float scale) = imac 0x92ba0 {
        return ButtonSprite::create(caption, 0, false, "goldFont.fnt", "GJ_button_01.png", .0f, scale);
    }
    static ButtonSprite* create(char const* caption, int width, int p2, float scale, bool absolute, char const* font, char const* bg) = imac 0x92d10 {
        return ButtonSprite::create(caption, width, p2, scale, absolute, font, bg, .0f);
    }
    static ButtonSprite* create(char const* caption, int width, int p2, float scale, bool absolute) = imac 0x92b80 {
        return ButtonSprite::create(caption, width, p2, scale, absolute, "goldFont.fnt", "GJ_button_01.png", .0f);
    }
    static ButtonSprite* create(cocos2d::CCSprite* topSprite, int width, int unused, float height, float scale, bool absolute) = imac 0x92320 {
        return ButtonSprite::create(topSprite, width, unused, height, scale, absolute, "GJ_button_01.png", false);
    }
    static ButtonSprite* create(cocos2d::CCSprite* topSprite) = imac 0x922f0 {
        return ButtonSprite::create(topSprite, 0, 0, .0f, 1.f, false, "GJ_button_01.png", false);
    }

    bool init(char const*, int, int, float, bool, char const*, char const*, float) = win 0x3f220, imac 0x92d20, m1 0x85cd0;
    bool init(cocos2d::CCSprite* topSprite, int width, int unused, float height, float scale, bool absolute, char const* bgSprite, bool noScaleSpriteForBG) = win 0x3eef0, imac 0x92490, m1 0x8550c;
    void setColor(cocos2d::ccColor3B color) {
        // i love inlined funcs
        if (m_label) m_label->setColor(color);
        if (m_subSprite) m_subSprite->setColor(color);
        if (m_subBGSprite) m_subBGSprite->setColor(color);
        if (m_BGSprite) m_BGSprite->setColor(color);
    }
    void setString(char const*) = win 0x3fae0, imac 0x92fd0, m1 0x85f58;
    void updateBGImage(char const*) = win 0x3f520, imac 0x933b0, m1 0x862f8;
    void updateSpriteBGSize() = win 0x3f660, imac 0x92720, m1 0x85760;
    void updateSpriteOffset(cocos2d::CCPoint offset) = win inline, imac 0x934d0, m1 0x86414 {
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

    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x4a4b90, imac 0x1cc980, m1 0x188634;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x18b9f8, imac 0x1d0cf0;
    virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x1887f0, imac 0x1ccbe0;
}

[[link(android)]]
class CCAlertCircle : cocos2d::CCNode {
    // virtual ~CCAlertCircle();

    static CCAlertCircle* create();

    virtual bool init() = m1 0x135b10, imac 0x168c30;
    virtual void draw() = imac 0x168cc0, m1 0x135bbc;

    CCCircleAlert* m_circleAlert;
}

[[link(android)]]
class CCAnimatedSprite : cocos2d::CCSprite {
    // virtual ~CCAnimatedSprite();
    CCAnimatedSprite() = win 0x3feb0 {
        m_unkString1 = "";
        m_unkString2 = "";
        m_animationManager = nullptr;
        m_sprite = nullptr;
        m_fbfSprite = nullptr;
        m_paSprite = nullptr;
        m_spriteMode = (spriteMode)0;
        m_currentAnim = "";
        m_delegate = nullptr;
    }
    static CCAnimatedSprite* createWithType(char const*, cocos2d::CCTexture2D*, bool) = imac 0x33c5b0, m1 0x2d28b8;

    void cleanupSprite() = imac 0x33cff0, m1 0x2d32b4;
    bool initWithType(char const*, cocos2d::CCTexture2D*, bool) = win 0x3ffc0, imac 0x33c690, m1 0x2d298c;
    void loadType(char const*, cocos2d::CCTexture2D*, bool) = win 0x401e0, m1 0x2d2b88;
    void runAnimation(gd::string) = win 0x40c80;
    void runAnimationForced(gd::string);
    void stopTween() = m1 0x2d3994;
    void switchToMode(spriteMode) = win 0x40b10, imac 0x33d090, m1 0x2d3344;
    void tweenToAnimation(gd::string, float) = win 0x40cf0, imac 0x33d2f0, m1 0x2d35bc;
    void tweenToAnimationFinished() = win 0x40fc0;
    void willPlayAnimation() = m1 0x2d358c;

    virtual void setOpacity(unsigned char) = win 0x41070, imac 0x33d780, m1 0x2d3a1c;
    virtual void setColor(cocos2d::ccColor3B const&) = win 0x410d0, m1 0x2d3acc, imac 0x33d830;
    virtual void animationFinished(char const*) = win 0x41050, imac 0x33d760, m1 0x2d3a04;
    virtual void animationFinishedO(cocos2d::CCObject*) = win 0x41010, m1 0x2d39d0, imac 0x33d730;

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

    static CCAnimateFrameCache* sharedSpriteFrameCache() = win 0x41450;

    void addCustomSpriteFramesWithFile(char const*);
    TodoReturn addDict(cocos2d::CCDictionary*, char const*);
    TodoReturn addDict(DS_Dictionary*, char const*);
    void addSpriteFramesWithFile(char const*) = win 0x414e0;
    bool init();
    TodoReturn purgeSharedSpriteFrameCache();
    void removeSpriteFrames();
    TodoReturn spriteFrameByName(char const*);
}

[[link(android)]]
class CCBlockLayer : cocos2d::CCLayerColor {
    // virtual ~CCBlockLayer();

    CCBlockLayer() {
        m_unknown = nullptr;
    }
    static CCBlockLayer* create();

    void decrementForcePrio() = m1 0x461a3c;
    void incrementForcePrio();

    virtual bool init() = win 0x424e0, imac 0x501e90, m1 0x461754;
    virtual void draw() = win 0x426f0, imac 0x502140, m1 0x4619d8;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x502170, m1 0x461a14;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x5021d0, m1 0x461a34 {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x502190, m1 0x461a24 {}
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x5021b0, m1 0x461a2c {}
    virtual void registerWithTouchDispatcher() = win 0x425d0, imac 0x502000, m1 0x4618bc;
    virtual void keyBackClicked() = win 0x42620, imac 0x502040, m1 0x4618f4;
    virtual void customSetup() = imac 0x501fa0, m1 0x461878 {}
    virtual TodoReturn enterLayer() = win 0x425a0, imac 0x501fd0, m1 0x461884;
    virtual TodoReturn exitLayer() = win 0x42640, imac 0x502070, m1 0x461910;
    virtual void showLayer(bool) = win 0x42680, imac 0x5020b0, m1 0x46195c;
    virtual TodoReturn hideLayer(bool) = win 0x42690, imac 0x5020c0, m1 0x461968;
    virtual TodoReturn layerVisible() = win 0x426a0, imac 0x5020e0, m1 0x461978;
    virtual void layerHidden() = win 0x426b0, imac 0x502100, m1 0x461988;
    virtual void enterAnimFinished() = imac 0x5020d0, m1 0x461974 {}
    virtual void disableUI() = imac 0x501fb0, m1 0x46187c {}
    virtual void enableUI() = imac 0x501fc0, m1 0x461880 {}

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

    static CCCircleWave* create(float startRadius, float endRadius, float duration, bool fadeIn, bool easeOut) = win 0x42800, imac 0x168070, m1 0x134fac;
    static CCCircleWave* create(float startRadius, float endRadius, float duration, bool fadeIn) = win inline {
        return CCCircleWave::create(startRadius, endRadius, duration, fadeIn, true);
    }

    TodoReturn baseSetup(float);
    TodoReturn followObject(cocos2d::CCNode*, bool) = imac 0x168430, m1 0x135304;
    bool init(float startRadius, float endRadius, float duration, bool fadeIn, bool easeOut) = win 0x428b0, imac 0x168160, m1 0x135080;
    TodoReturn updatePosition(float) = win 0x42b30, imac 0x1683f0, m1 0x1352b8;

    virtual void setPosition(cocos2d::CCPoint const&) = win 0x42af0, imac 0x1683c0, m1 0x135284;
    virtual void removeMeAndCleanup() = win 0x42f00, imac 0x168880, m1 0x135740;
    virtual void draw() = win 0x42dd0, imac 0x168740, m1 0x135608;
    virtual void updateTweenAction(float, char const*) = win 0x42b70, imac 0x1684c0, m1 0x135394;

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
    ~CCContentLayer();

    static CCContentLayer* create(cocos2d::ccColor4B const&, float, float);

    virtual void setPosition(cocos2d::CCPoint const&) = win 0x42f70, m1 0x6beb80, imac 0x7ad3f0;
}

[[link(android)]]
class CCCountdown : cocos2d::CCSprite {
    // virtual ~CCCountdown();

    static CCCountdown* create();

    TodoReturn lapFinished();
    void startTimerWithSeconds(float, cocos2d::SEL_CallFunc, cocos2d::CCNode*);

    virtual bool init() = imac 0x7b0f60, m1 0x6c21c4;
    virtual void setOpacity(unsigned char) = m1 0x6c2574, imac 0x7b1320;
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

    static CCLightFlash* create() = win inline, imac 0x4f0600, m1 0x45172c {
        auto ret = new CCLightFlash();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        CC_SAFE_DELETE(ret);
        return nullptr;
    }

    void cleanupFlash() = win 0x43c80, imac 0x4f0ef0;
    void fadeAndRemove() = m1 0x451d38;
    void playEffect(cocos2d::CCPoint, cocos2d::ccColor3B, float, float, float, float, float, float, float, float, float, float, float, float, float, float, int, bool, bool, float) = win 0x433a0, imac 0x4f0680, m1 0x451798;
    void removeLights() = win 0x43c20;
    void showFlash() = win 0x438e0, imac 0x4f0bd0, m1 0x451c0c;

    virtual bool init() = win inline, imac 0x4f0670, m1 0x451790 {
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

    static CCLightStrip* create(float width, float toWidth, float toHeight, float duration, float delay) = win inline, imac 0x4f0b20, m1 0x451b58 {
        auto ret = new CCLightStrip();
        if (ret->init(width, toWidth, toHeight, duration, delay)) {
            ret->autorelease();
            return ret;
        }
        CC_SAFE_DELETE(ret);
        return nullptr;
    }

    bool init(float width, float toWidth, float toHeight, float duration, float delay) = win inline, imac 0x4f1000, m1 0x452008 {
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

    virtual void draw() = win 0x43cb0, imac 0x4f1140, m1 0x452120;
    virtual void updateTweenAction(float value, char const* keyword) = win 0x43e70, imac 0x4f12d0, m1 0x452278;

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
    CCMenuItemSpriteExtra() {
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
    ~CCMenuItemSpriteExtra() {}

    static CCMenuItemSpriteExtra* create(cocos2d::CCNode* sprite, cocos2d::CCNode* disabledSprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) = win 0x44b40, imac 0x265110, m1 0x2109b8;

    static CCMenuItemSpriteExtra* create(cocos2d::CCNode* sprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) {
        return CCMenuItemSpriteExtra::create(sprite, nullptr, target, callback);
    }

    bool init(cocos2d::CCNode* sprite, cocos2d::CCNode* disabledSprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) = win 0x44be0, imac 0x2651a0, m1 0x210a70;
    void setSizeMult(float mult) = win inline {
        //inlined on windows, member is in CCMenuItemSprite
        m_fSizeMult = mult;
    }

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
    void useAnimationType(MenuAnimationType);

    virtual void activate() = win 0x44d40, imac 0x265320, m1 0x210bfc;
    virtual void selected() = win 0x44e50, imac 0x2654a0, m1 0x210d5c;
    virtual void unselected() = win 0x45070, imac 0x265720, m1 0x210fac;

    float m_scaleMultiplier;
    float m_baseScale;
    bool m_animationEnabled;
    bool m_colorEnabled;
    float m_volume;
    gd::string m_activateSound;
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

    static CCMenuItemToggler* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = win 0x451e0, m1 0x4fc78, imac 0x5a200;
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
    bool init(cocos2d::CCNode* off, cocos2d::CCNode* on, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) = win inline, imac 0x5a2d0, m1 0x4fd5c {
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
    bool isOn() {
        return m_toggled;
    }

    bool isToggled() {
        return m_toggled;
    }
    void normalTouch(cocos2d::CCObject*) = win 0x45580, imac 0x5a510;
    void selectedTouch(cocos2d::CCObject*) = win 0x455a0, imac 0x5a5e0;
    void setClickable(bool on) {
        m_notClickable = !on;
    }
    void setSizeMult(float mult) = win inline, m1 0x50268 {
        m_offButton->setSizeMult(mult);
        m_onButton->setSizeMult(mult);
    
        this->toggle(this->m_toggled);
    }
    void toggle(bool) = win 0x455c0, imac 0x5a6b0, m1 0x50190;
    void toggleWithCallback(bool on) {
        this->activate();
        this->toggle(on);
    }

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

    virtual void activate() = win 0x45490, m1 0x503bc, imac 0x5a8c0;
    virtual void selected() = imac 0x5a890, m1 0x5037c;
    virtual void unselected() = imac 0x5a8f0, m1 0x503fc;
    virtual void setEnabled(bool) = win 0x45530, m1 0x5043c, imac 0x5a920;

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

    virtual bool init() = imac 0x154aa0, m1 0x128530;
    virtual void visit() = imac 0x154ab0, m1 0x128534;
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
    void setColor(cocos2d::ccColor3B) = win 0x467c0;
    void setFlipX(bool);
    void setFlipY(bool);
    TodoReturn transformSprite(SpriteDescription*);
    TodoReturn tweenSpriteTo(SpriteDescription*, float);
    TodoReturn tweenToFrame(cocos2d::CCSpriteFrame*, float);

    virtual void setScaleX(float) = imac 0x362230, m1 0x2f4f10;
    virtual void setScaleY(float) = imac 0x362250, m1 0x2f4f38;
    virtual void setScale(float) = imac 0x362210, m1 0x2f4ee8;
    virtual void setOpacity(unsigned char) = win 0x468a0, m1 0x2f51fc, imac 0x3624c0;
    virtual void setBlendFunc(cocos2d::_ccBlendFunc) = win 0x466f0, imac 0x362270, m1 0x2f4f60;
    virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = imac 0x361dd0, m1 0x2f4ab4;
    virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = imac 0x361f40, m1 0x2f4c0c;
    virtual cocos2d::CCSpriteFrame* displayFrame() = imac 0x361f60, m1 0x2f4c24;

    cocos2d::CCDictionary* m_spritePartIDs;
    cocos2d::CCSpriteFrame* m_spriteFrame;
    bool m_hasChanged;
    cocos2d::CCSize m_unkSize;
    cocos2d::CCArray* m_spriteParts;
}

[[link(android), depends(CCContentLayer)]]
class CCScrollLayerExt : cocos2d::CCLayer {
    // virtual ~CCScrollLayerExt() = win 0x46210, ios 0x311ab8;
    CCScrollLayerExt(cocos2d::CCRect) = win 0x46a50, m1 0x396fe4, imac 0x41b510, ios 0x300a10;

    TodoReturn constraintContent();
    TodoReturn doConstraintContent(bool);
    inline float getMaxY() {
        return m_scrollLimitBottom;
    }
    inline float getMinY() {
        return this->getContentSize().height - m_contentLayer->getContentSize().height - m_scrollLimitTop;
    }
    void moveToTop() = win 0x47000, imac 0x41bc30, m1 0x397658;
    void moveToTopWithOffset(float) = win 0x46f60, imac 0x41bb90, m1 0x397700;
    TodoReturn scrollingEnd();
    void scrollLayer(float offset) = win inline, imac 0x41c7e0, m1 0x398158 {
        float y = m_contentLayer->getPositionY() + offset;
        float minY = getMinY();
        float maxY = getMaxY();
        m_contentLayer->setPositionY(y < minY ? minY : y > maxY ? maxY : y);
    }
    void setContentLayerSize(cocos2d::CCSize);
    void setContentOffset(cocos2d::CCPoint, bool);
    TodoReturn updateIndicators(float);

    virtual void visit() = win 0x47ad0, imac 0x41c8a0, m1 0x398220;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x47580, m1 0x397c28, imac 0x41c240;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x47950, imac 0x41c660, m1 0x397fe4;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x476a0, imac 0x41c360, m1 0x397d44;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x47920, m1 0x397f80, imac 0x41c600;
    virtual void registerWithTouchDispatcher() = win 0x47530, m1 0x397bf0, imac 0x41c200;
    virtual void preVisitWithClippingRect(cocos2d::CCRect) = win 0x47c00, imac 0x41c9a0, m1 0x398314;
    virtual void postVisit() = win 0x47ca0, imac 0x41ca20, m1 0x3983a8;

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

    virtual void setOpacity(unsigned char) = win 0x483c0, imac 0x46f5a0, m1 0x3de72c;
}

[[link(android)]]
class CCSpriteGrayscale : CCSpriteWithHue {
    // virtual ~CCSpriteGrayscale();
    CCSpriteGrayscale() {}

    static CCSpriteGrayscale* create(gd::string const& file, cocos2d::CCRect const& rect) = win inline {
        auto ret = new CCSpriteGrayscale();
        if (ret->initWithFile(file.c_str(), rect)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static CCSpriteGrayscale* create(gd::string const& file) = win inline {
        auto ret = new CCSpriteGrayscale();
        if (ret->initWithFile(file.c_str())) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static CCSpriteGrayscale* createWithSpriteFrame(cocos2d::CCSpriteFrame* frame) = win inline {
        auto ret = new CCSpriteGrayscale();
        if (ret->initWithSpriteFrame(frame)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static CCSpriteGrayscale* createWithSpriteFrameName(gd::string const& frameName) = win 0x49020;
    static CCSpriteGrayscale* createWithTexture(cocos2d::CCTexture2D* texture, cocos2d::CCRect const& rect, bool rotated) = win inline {
        auto ret = new CCSpriteGrayscale();
        if (ret->initWithTexture(texture, rect, rotated)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static CCSpriteGrayscale* createWithTexture(cocos2d::CCTexture2D* texture) = win inline {
        auto ret = new CCSpriteGrayscale();
        if (ret->initWithTexture(texture)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual gd::string getShaderName() = win 0x48fc0, imac 0x5d9580, m1 0x50cae4;
    virtual const char* shaderBody() = imac 0x5d9370, m1 0x50c9a8;
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

    virtual void setVisible(bool) = win 0x46a30, imac 0x3628b0, m1 0x2f55d0;

    bool m_isBeingUsed;
    gd::string m_spriteFrameName;
    SpritePartDelegate* m_delegate;
}

[[link(android)]]
class CCSpritePlus : cocos2d::CCSprite {
    // virtual ~CCSpritePlus();

    /// Creates a sprite by a given sprite frame
    /// @param frame the frame to give to the specific sprite
    /// @return CCSpritePlus object and returns null if initialization fails
    static CCSpritePlus* createWithSpriteFrame(cocos2d::CCSpriteFrame* frame);

    /// Creates a sprite by a given sprite's frame name
    /// @param frame the frame or filename to give to the specific sprite
    /// @return CCSpritePlus object and returns null if initialization fails
    static CCSpritePlus* createWithSpriteFrameName(char const* frame);

    /// Adds a follower to the sprite
    /// @param follower Something that will follow this sprite
    void addFollower(cocos2d::CCNode* follower) = imac 0x46f310;

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
    void removeFollower(cocos2d::CCNode* sprite) = win 0x48370;

    /// Stops this child sprite from following it's given parent
    void stopFollow();

    /// Sets X's scale on itself and it's followers
    /// @param fScaleX the scale of X to set
    virtual void setScaleX(float fScaleX) = win 0x481d0, imac 0x46f190, m1 0x3de308;

    /// Sets Y's scale on itself and it's followers
    /// @param fScaleY the scale of Y to set
    virtual void setScaleY(float fScaleY) = win 0x48250, imac 0x46f210, m1 0x3de384;

    /// Sets the Scale of itself and it's followers
    /// @param fScale the scale value to set
    virtual void setScale(float fScale) = win 0x482e0, imac 0x46f290, m1 0x3de400;

    /// Sets the position where the sprite will be at and it's followers
    /// @param pos the position to place to the sprite and it's followers
    virtual void setPosition(cocos2d::CCPoint const& pos) = win 0x47dd0, m1 0x3ddfd8, imac 0x46edf0;

    /// Sets the sprite's given rotation and it's followers
    /// @param fRotation the rotation value to set
    virtual void setRotation(float fRotation) = win 0x47e60, imac 0x46ee70, m1 0x3de04c;

    /// Sets the sprite's given rotation of X and it's followers
    /// @param fRotationX the rotation of X to set.
    virtual void setRotationX(float fRotationX) = win 0x47ef0, imac 0x46eef0, m1 0x3de0c0;

    /// Sets the sprite's given rotation of Y and it's followers
    /// @param fRotationY the roation of Y to set
    virtual void setRotationY(float) = win 0x47f80, imac 0x46ef70, m1 0x3de134;

    /// Initalizes the sprite using a texture
    /// @param texture the texture to initalize the sprite with
    /// @return true if initalization succeeded.
    virtual bool initWithTexture(cocos2d::CCTexture2D* texture) = win 0x47db0, imac 0x46edd0, m1 0x3ddfc4;

    /// Initalizes the sprite with a frame name
    /// @param frame the frame to initalize the sprite with
    /// @return true if initalization succeeded
    virtual bool initWithSpriteFrameName(char const*) = win 0x47da0, imac 0x46edb0, m1 0x3ddfb8;

    /// Sets flipX to itself and it's followers
    /// @param flipX the direction that the sprite should be flipped to
    virtual void setFlipX(bool flipX) = win 0x48010, imac 0x46eff0, m1 0x3de1a8;

    /// Sets flipY to itself and it's followers
    /// @param flipY the direction that the sprite should be flipped to
    virtual void setFlipY(bool flipY) = win 0x480f0, imac 0x46f0c0, m1 0x3de258;

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

    static CCSpriteWithHue* create(gd::string const& file, cocos2d::CCRect const& rect) = win inline {
        auto ret = new CCSpriteWithHue();
        if (ret->initWithFile(file.c_str(), rect)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static CCSpriteWithHue* create(gd::string const& file) = win inline {
        auto ret = new CCSpriteWithHue();
        if (ret->initWithFile(file.c_str())) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static CCSpriteWithHue* createWithSpriteFrame(cocos2d::CCSpriteFrame* frame) = win inline {
        auto ret = new CCSpriteWithHue();
        if (ret->initWithSpriteFrame(frame)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static CCSpriteWithHue* createWithSpriteFrameName(gd::string const&);
    static CCSpriteWithHue* createWithTexture(cocos2d::CCTexture2D* texture, cocos2d::CCRect const& rect, bool rotated) = win inline {
        auto ret = new CCSpriteWithHue();
        if (ret->initWithTexture(texture, rect, rotated)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static CCSpriteWithHue* createWithTexture(cocos2d::CCTexture2D* texture) = win inline {
        auto ret = new CCSpriteWithHue();
        if (ret->initWithTexture(texture)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    float getAlpha() = win inline, imac 0x5d90f0, m1 0x50c780 {
        return _displayedOpacity / 255.f;
    }
    float getHue() = win inline {
        return m_hue;
    }
    void getUniformLocations() = win inline, imac 0x5d8bf0, m1 0x50c320 {
        m_uHueLoc = glGetUniformLocation(m_pShaderProgram->getProgram(), "u_hue");
        m_uAlphaLoc = glGetUniformLocation(m_pShaderProgram->getProgram(), "u_alpha");
        m_uLumLoc = glGetUniformLocation(m_pShaderProgram->getProgram(), "u_lum");
    }
    void initShader() = win 0x486d0, m1 0x50bfb8;
    void setCustomLuminance(float r, float g, float b) = win inline, imac 0x5d91a0 {
        m_luminance[0] = r;
        m_luminance[1] = g;
        m_luminance[2] = b;
    }
    void setEvenLuminance(float luminance) = win inline, imac 0x5d9170, m1 0x50c7f0 {
        m_luminance[0] = luminance * 0.33f;
        m_luminance[1] = luminance * 0.33f;
        m_luminance[2] = luminance * 0.33f;
    }
    void setHue(float hue) = win inline, imac 0x5d8ba0 {
        m_hue = hue;
        this->updateColorMatrix();
    }
    void setHueDegrees(float degrees) = win inline, imac 0x5d9120, m1 0x50c7a0 {
        auto deg = degrees;
        while (deg < 0.f) deg += 360.f;
        this->setHue(deg / 360.f * 6.28318548f);
    }
    void setLuminance(float luminance) = win inline, imac 0x5d8bc0, m1 0x50c2f8 {
        m_luminance[0] = luminance * 0.21f;
        m_luminance[1] = luminance * 0.72f;
        m_luminance[2] = luminance * 0.07f;
    }
    void setupDefaultSettings() = win inline, imac 0x5d8890, m1 0x50bfa4 {
        m_hue = 0.f;
        this->setLuminance(1.f);
    }
    void updateColorMatrix() = win 0x48930, m1 0x50c3e0;
    void updateHue(float) = win inline, imac 0x5d8b70, m1 0x50c2c4 {
        this->setHue(m_hue + 0.05235988f);
    }

    virtual void draw() = win 0x48c20, m1 0x50c820, imac 0x5d91c0;
    virtual bool initWithTexture(cocos2d::CCTexture2D*) = win 0x485f0, imac 0x5d8a90, m1 0x50c1d4;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = win 0x48650, imac 0x5d8b00, m1 0x50c250;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = win 0x48590, m1 0x50bf60, imac 0x5d8850;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = win 0x48660, m1 0x50c260, imac 0x5d8b20;
    virtual gd::string getShaderName() = win 0x48400, imac 0x5d83a0, m1 0x50ba4c;
    virtual const char* shaderBody() = imac 0x5d8c60, m1 0x50c3a4;
    virtual void updateColor() = win 0x48910, imac 0x5d8c80, m1 0x50c3bc;

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
        m_valueType = (InputValueType)0;
        m_decimalPlaces = 0;
        m_kerningAmount = 0;
    }

    static CCTextInputNode* create(float, float, char const*, char const*, int, char const*) = win 0x4f0f0, imac 0x9e160, m1 0x90a08;

    static CCTextInputNode* create(float width, float height, char const* placeholder, char const* fontPath) {
        return CCTextInputNode::create(width, height, placeholder, 0x18, fontPath);
    }
    static CCTextInputNode* create(float width, float height, char const* placeholder, int fontSize, char const* fontPath) {
        return CCTextInputNode::create(width, height, placeholder, "Thonburi", fontSize, fontPath);
    }

    void addTextArea(TextArea*) = win 0x4f540, m1 0x90ec0;
    void forceOffset();
    cocos2d::CCLabelBMFont* getPlaceholderLabel() {
        return m_placeholderLabel;
    }
    gd::string getString() = win inline, imac 0x9ed20, m1 0x91510 {
        return m_textField->getString();
    }
    bool init(float, float, char const*, char const*, int, char const*) = win 0x4f300, imac 0x9e320, m1 0x90b68;
    void refreshLabel() = win 0x4fb40, imac 0x9ede0, m1 0x915cc;
    void setAllowedChars(gd::string filter) = win inline, imac 0x9ebe0 {
        m_allowedChars = filter;
    }

    void setDelegate(TextInputDelegate* delegate) {
        m_delegate = delegate;
    }
    void setLabelNormalColor(cocos2d::ccColor3B color) = win inline {
        m_textColor = color;
        this->refreshLabel();
    }
    void setLabelPlaceholderColor(cocos2d::ccColor3B color) = win inline {
        m_placeholderColor = color;
        this->refreshLabel();
    }
    void setLabelPlaceholderScale(float v) = win inline {
        m_placeholderScale = v;
        this->refreshLabel();
    }
    void setMaxLabelLength(int v) {
        m_maxLabelLength = v;
        this->refreshLabel();
    }
    void setMaxLabelScale(float v) = win inline {
        m_maxLabelScale = v;
        this->refreshLabel();
    }
    void setMaxLabelWidth(float v) = win inline {
        m_maxLabelWidth = v;
        this->refreshLabel();
    }
    void setString(gd::string) = win 0x4f7a0;
    void updateBlinkLabel() = win inline, imac 0x9f010 {
        this->updateBlinkLabelToChar(this->m_textField->m_uCursorPos);
    }
    void updateBlinkLabelToChar(int) = win 0x4fe20, imac 0x9f0d0, m1 0x91814;
    void updateCursorPosition(cocos2d::CCPoint, cocos2d::CCRect) = win 0x50d60, imac 0xa0a90, m1 0x92ef4;
    void updateDefaultFontValues(gd::string) = win 0x4f630, m1 0x90e18;
    void updateLabel(gd::string) = win 0x4f840, imac 0x9e8b0, m1 0x910f8;

    virtual void visit() = win 0x4f730, m1 0x913e4, imac 0x9ec00;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x512c0, imac 0xa1010, m1 0x933a4;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0xa1230, m1 0x935a0 {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0xa11f0, m1 0x93590 {}
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0xa1210, m1 0x93598 {}
    virtual void registerWithTouchDispatcher() = win 0x514d0, imac 0xa1250, m1 0x935a8;
    virtual void textChanged() = win 0x50410, imac 0x9f7b0, m1 0x91e64;
    virtual void onClickTrackNode(bool) = win 0x503f0, imac 0x9f790, m1 0x91e44;
    virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&) = win 0x50210, imac 0x9f530, m1 0x91c00;
    virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&) = win 0x50370, imac 0x9f680, m1 0x91d38;
    virtual bool onTextFieldInsertText(cocos2d::CCTextFieldTTF* pSender, char const* text, int nLen, cocos2d::enumKeyCodes keyCodes) = win 0x504a0, m1 0x91f7c, imac 0x9f8d0;
    virtual bool onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF* tField) = win 0x50880, imac 0x9ff90, m1 0x9251c;
    virtual bool onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF* tField) = win 0x50bb0, imac 0xa02d0, m1 0x92818;

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
    inline ChallengeNode() {}

    static ChallengeNode* create(GJChallengeItem* challengeItem, ChallengesPage* challengesPage, bool isNew) = win inline, imac 0x38b420, m1 0x31a8b4 {
        auto ret = new ChallengeNode();
        if (ret->init(challengeItem, challengesPage, isNew)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool init(GJChallengeItem* challengeItem, ChallengesPage* challengesPage, bool isNew) = win 0x86ce0, imac 0x38b9f0, m1 0x31ae30;
    void onClaimReward(cocos2d::CCObject* sender) = imac 0x38c600;
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

    static ChallengesPage* create() = win inline {
        auto ret = new ChallengesPage();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    void claimItem(ChallengeNode*, GJChallengeItem*, cocos2d::CCPoint) = win 0x869d0, imac 0x38b7a0, m1 0x31ac18;
    ChallengeNode* createChallengeNode(int number, bool skipAnimation, float animLength, bool isNew) = win 0x86090, imac 0x38ad70, m1 0x31a294;
    TodoReturn exitNodeAtSlot(int, float) = win 0x863c0, imac 0x38b230, m1 0x31a6e8;
    void onClose(cocos2d::CCObject* sender);
    TodoReturn tryGetChallenges();
    TodoReturn updateDots() = m1 0x31a470;
    callback void updateTimers(float) = win 0x864b0;

    virtual bool init() = win 0x85300, imac 0x38a0a0, m1 0x319634;
    virtual void registerWithTouchDispatcher() = imac 0x38b760, m1 0x31abe0;
    virtual void keyBackClicked() = win 0x86980, imac 0x38b6d0, m1 0x31ab44;
    virtual void show() = win 0x867a0, imac 0x38b530, m1 0x31a9b8;

    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = imac 0x38b6b0, m1 0x31ab3c {}

    virtual void challengeStatusFinished() = win 0x85db0, m1 0x31a518, imac 0x38b030;
    virtual void challengeStatusFailed() = win 0x85f40, m1 0x31a7d0, imac 0x38b330;
    virtual void currencyWillExit(CurrencyRewardLayer*) = win 0x86cc0, imac 0x38b8d0, m1 0x31ad48;

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

    static CharacterColorPage* create() = win inline, m1 0x56efc8 {
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
    int colorForIndex(int) = imac 0x648420;
    void createColorMenu() = win 0x88e50, m1 0x570124;
    void FLAlert_Clicked(FLAlertLayer*, bool);
    cocos2d::CCPoint offsetForIndex(int) = imac 0x648690;
    void onClose(cocos2d::CCObject* sender) = win 0x8a760;
    void onMode(cocos2d::CCObject* sender) = win 0x89550, imac 0x6477b0, m1 0x56fdf8;
    void onPlayerColor(cocos2d::CCObject* sender) = win 0x89d60, m1 0x570a7c;
    void toggleGlow(cocos2d::CCObject*) = win 0x88da0, m1 0x5704fc;
    TodoReturn toggleGlowItems(bool);
    void toggleShip(cocos2d::CCObject*) = win 0x88c80, imac 0x647700, m1 0x56fd30;
    void updateColorMode(int) = imac 0x647ee0;
    void updateIconColors() = win 0x8a540;

    virtual bool init() = win 0x87f30, imac 0x646a30, m1 0x56f0d0;
    virtual void registerWithTouchDispatcher() = imac 0x6489e0, m1 0x57102c;
    virtual void keyBackClicked() = win 0x8a7a0, imac 0x648940, m1 0x570f80;
    virtual void show() = m1 0x570df8, imac 0x6487b0;

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

    virtual bool init() = imac 0x1c3c50, m1 0x1811a8;
    virtual void setupCustomSprites(gd::string) = imac 0x1c40a0, m1 0x1815e8;
    virtual void resetObject() = imac 0x1c56b0, m1 0x182964;
    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x4a1180, imac 0x1c3cb0, m1 0x181204;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1c5570, m1 0x18282c;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1c4a80, m1 0x181f04;
    virtual void triggerActivated(float) = win 0x4a11a0, imac 0x1c3cd0, m1 0x18121c;
    virtual void restoreObject() = imac 0x1c5720, m1 0x1829bc;
    virtual void updateSyncedAnimation(float, int) = imac 0x1c4680, m1 0x181b68;
}

[[link(android), depends(GJGameState), depends(GJShaderState), depends(FMODAudioState), depends(EffectManagerState)]]
class CheckpointObject : cocos2d::CCNode {
    // virtual ~CheckpointObject();
    CheckpointObject() = win 0x38e210;

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

    virtual bool init() = win 0x77db0, imac 0xbffb0, m1 0xae73c;

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

    virtual void keyBackClicked() = win 0x8bb20, imac 0x275940, m1 0x220420;
    virtual void show() = imac 0x2758e0, m1 0x2203d4;
    virtual void textInputClosed(CCTextInputNode*) = imac 0x275720, m1 0x220274;
    virtual void textChanged(CCTextInputNode*) = win 0x8b7a0, imac 0x275760, m1 0x220290;
    virtual void textInputShouldOffset(CCTextInputNode*, float) = m1 0x22042c, imac 0x275970;
    virtual void textInputReturn(CCTextInputNode*) = m1 0x2204fc, imac 0x275a30;
}

[[link(android)]]
class CollisionTriggerAction {
    PAD = win 0x20;
    gd::vector<int> m_unkVecInt;
}

[[link(android)]]
class ColorAction : cocos2d::CCObject {
    // virtual ~ColorAction();

    static ColorAction* create() = win 0x251a20, imac 0x2c55c0;
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
    void setupFromMap(gd::map<gd::string, gd::string>&) = win 0x2526e0;
    void setupFromString(gd::string) = win 0x252600, imac 0x2c7920;
    void step(float) = win 0x251b10;
    void updateCustomColor(cocos2d::ccColor3B, cocos2d::ccColor3B);
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

    virtual bool init() = m1 0x269110, imac 0x2c53c0;

    float m_opacity;
    cocos2d::ccColor3B m_color;
    cocos2d::ccColor3B m_copyColor;
}

[[link(android)]]
class ColorChannelSprite : cocos2d::CCSprite {
    // virtual ~ColorChannelSprite();

    static ColorChannelSprite* create() = win 0x2514b0;

    void updateBlending(bool enabled) = win 0x2518a0, imac 0x2c5030;
    void updateCopyLabel(int channelID, bool copyOpacity) = win 0x251590, imac 0x2c4d20, m1 0x268a6c;
    void updateOpacity(float alpha) = win 0x251750, imac 0x2c4ee0, m1 0x268c14;
    void updateValues(ColorAction* action) = win inline, imac 0x2c5140, m1 0x268e7c {
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

    virtual bool init() = win 0x251570, imac 0x2c4d00, m1 0x268a60;

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

    static ColorSelectLiveOverlay* create(ColorAction*, ColorAction*, EffectGameObject*) = win 0x8bc50, imac 0x551cf0;

    void closeColorSelect(cocos2d::CCObject*);
    void colorValueChanged(cocos2d::ccColor3B);
    TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
    TodoReturn createWithActions(ColorAction*, ColorAction*);
    TodoReturn createWithObject(EffectGameObject*);
    TodoReturn determineStartValues();
    TodoReturn getColorValue();
    bool init(ColorAction*, ColorAction*, EffectGameObject*) = win 0x8bda0;
    void onSelectTab(cocos2d::CCObject* sender);
    TodoReturn selectColor(cocos2d::ccColor3B);
    TodoReturn sliderChanged(cocos2d::CCObject*);
    TodoReturn textChanged(CCTextInputNode*);
    void textInputClosed(CCTextInputNode*);
    TodoReturn toggleControls(bool);
    TodoReturn updateColorLabel();
    TodoReturn updateColorValue();
    void updateOpacity();

    virtual void keyBackClicked() = win 0x8d1b0, imac 0x5539f0, m1 0x4aa9ac;
    virtual void show() = imac 0x553aa0, m1 0x4aaa64;

    EffectGameObject* m_effectGameObject;
    cocos2d::CCArray* m_barSprites;
    cocos2d::CCArray* m_12buttons;
    ColorAction* m_baseColorAction;
    ColorAction* m_detailColorAction;
}

[[link(android)]]
class ColorSelectPopup : SetupTriggerPopup, cocos2d::extension::ColorPickerDelegate, GJSpecialColorSelectDelegate {
    static gd::string colorToHex(cocos2d::ccColor3B) = win 0x926d0;
    static ColorSelectPopup* create(EffectGameObject* effect, cocos2d::CCArray* array, ColorAction* action) = win 0x8da30, imac 0x70e930;
    // virtual ~ColorSelectPopup();

    static ColorSelectPopup* create(cocos2d::ccColor3B color) = win inline, m1 0x62da20 {
        auto action = ColorAction::create();
        action->m_color = color;
        return ColorSelectPopup::create(action);
    }
    static ColorSelectPopup* create(ColorAction* action) = win inline, imac 0x70ec10 {
        return ColorSelectPopup::create(nullptr, nullptr, action);
    }
    static ColorSelectPopup* create(EffectGameObject* effect, cocos2d::CCArray* array) = win inline, m1 0x62d818 {
        return ColorSelectPopup::create(effect, array, nullptr);
    }
    static cocos2d::ccColor3B hexToColor(gd::string) = win 0x91a60;

    void closeColorSelect(cocos2d::CCObject*) = win 0x914a0, imac 0x7113b0;
    cocos2d::ccColor3B const& getColorValue();
    bool init(EffectGameObject*, cocos2d::CCArray*, ColorAction*) = win 0x8dc20, imac 0x70ec60, m1 0x62da5c;
    void onCopy(cocos2d::CCObject* sender) = win 0x90d60;
    void onCopyOpacity(cocos2d::CCObject* sender) = win 0x90b00;
    void onDefault(cocos2d::CCObject* sender) = win 0x90e60;
    void onHSVLegacyMode(cocos2d::CCObject* sender);
    void onPaste(cocos2d::CCObject* sender) = win 0x90de0;
    void onPlayerColor1(cocos2d::CCObject* sender);
    void onPlayerColor2(cocos2d::CCObject* sender);
    void onSelectSpecialColor(cocos2d::CCObject* sender);
    void onTintGround(cocos2d::CCObject* sender);
    void onToggleHSVMode(cocos2d::CCObject* sender) = win 0x93500;
    void onToggleTintMode(cocos2d::CCObject* sender) = win 0x909b0;
    void onUpdateCopyColor(cocos2d::CCObject* sender) = win 0x93420;
    void onUpdateCustomColor(cocos2d::CCObject* sender) = win 0x92c50;
    void selectColor(cocos2d::ccColor3B);
    void sliderChanged(cocos2d::CCObject* sender);
    void updateColorLabels();
    void updateColorValue();
    void updateCopyColor() = win 0x93830;
    void updateCopyColorTextInputLabel();
    void updateCustomColorIdx() = win 0x93270;
    void updateDuration();
    void updateDurLabel() = imac 0x7117e0, m1 0x63017c;
    void updateHSVMode() = win 0x93540;
    void updateHSVValue();
    void updateOpacity() = win 0x912b0;
    void updateOpacityLabel() = win 0x91430;
    void updateTextInputLabel();

    virtual void show() = imac 0x714bc0, m1 0x633454;
    virtual void determineStartValues() = win 0x90390, m1 0x631188, imac 0x712920;
    virtual void textChanged(CCTextInputNode*) = win 0x92cd0, imac 0x714cb0, m1 0x633520;
    virtual void colorValueChanged(cocos2d::ccColor3B) = win 0x91750, imac 0x713110, m1 0x631828;
    virtual void colorSelectClosed(GJSpecialColorSelect*, int) = win 0x93690, m1 0x633a10, imac 0x715250;
    virtual void keyBackClicked();

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
    void loadFromComment(GJComment*) = win 0xb5480;
    void onConfirmDelete(cocos2d::CCObject* sender) = win 0xb7850, imac 0x243510, m1 0x1f2604;
    TodoReturn onDelete();
    void onGoToLevel(cocos2d::CCObject* sender) = win 0xb7b20, imac 0x243350, m1 0x1f2470;
    void onLike(cocos2d::CCObject* sender) = win 0xb75f0, imac 0x243420, m1 0x1f2524;
    TodoReturn onUndelete();

    void onUnhide(cocos2d::CCObject* sender) = win 0xb7b00, imac 0x243400;
    void onViewProfile(cocos2d::CCObject* sender) = imac 0x243320, m1 0x1f243c;
    void updateBGColor(int);
    void updateLabelValues();

    virtual bool init() = win 0xb5460, imac 0x2432f0, m1 0x1f2424;
    virtual void draw() = imac 0x243600, m1 0x1f26ec;
    virtual void likedItem(LikeItemType, int, bool) = win 0xb7750, imac 0x2436d0, m1 0x1f2798;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xb79c0, imac 0x243a70, m1 0x1f2b14;

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

    static CommunityCreditNode* create(int, int, int, gd::string) = win 0x93ec0;

    bool init(int unlockType, int iconID, int unknown, gd::string author) = win inline, imac 0x30a5a0, m1 0x2a1568 {
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

    static CommunityCreditsPage* create() = win inline, m1 0x2a17f0 {
        auto ret = new CommunityCreditsPage();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    void FLAlert_Clicked(FLAlertLayer*, bool);
    void goToPage(int) = win 0x96040, m1 0x2a38c4;
    void onClose(cocos2d::CCObject* sender);
    void onSwitchPage(cocos2d::CCObject* sender);

    virtual bool init() = win 0x94000, imac 0x30aa90, m1 0x2a18f4;
    virtual void registerWithTouchDispatcher() = imac 0x30cff0, m1 0x2a3bdc;
    virtual void keyBackClicked() = imac 0x30cf80, m1 0x2a3b60;
    virtual void show() = imac 0x30cdf0, m1 0x2a39d8;

    cocos2d::CCDictionary* m_pageObjects;
    CCMenuItemSpriteExtra* m_prevButton;
    CCMenuItemSpriteExtra* m_nextButton;
    int m_page;
}

[[link(android)]]
class ConfigureHSVWidget : cocos2d::CCNode, TextInputDelegate {
    // virtual ~ConfigureHSVWidget();

    static ConfigureHSVWidget* create(cocos2d::ccHSVValue, bool, bool) = win 0x96950, imac 0x41d100;
    static cocos2d::ccHSVValue getHSV(GameObject*, cocos2d::CCArray*, int) = win 0x980a0, imac 0x41ec60, m1 0x39a3a0;

    void createTextInputNode(cocos2d::CCPoint, int) = win 0x97300, imac 0x41de60, m1 0x399618;
    bool init(cocos2d::ccHSVValue, bool, bool) = win 0x96a20, imac 0x41d4b0, m1 0x398ce8;
    void onClose() = imac 0x41d1d0, m1 0x398a6c;
    void onResetHSV(cocos2d::CCObject* sender) = win 0x97b10, imac 0x41e280, m1 0x399aa4;
    void onToggleSConst(cocos2d::CCObject* sender);
    void onToggleVConst(cocos2d::CCObject* sender);
    void sliderChanged(cocos2d::CCObject* sender) = m1 0x399874;
    void updateLabels() = win 0x97b90, imac 0x41e300, m1 0x399b1c;
    void updateSliders() = win 0x97820, imac 0x41e8e0, m1 0x39a078;

    virtual void textInputOpened(CCTextInputNode*) = imac 0x41e9a0, m1 0x39a134 {}
    virtual void textInputClosed(CCTextInputNode*) = win 0x8b790, imac 0x41e9c0, m1 0x39a13c;
    virtual void textChanged(CCTextInputNode*) = win 0x97560, imac 0x41ea00, m1 0x39a158;

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

    static ConfigureValuePopup* create(ConfigureValuePopupDelegate*, float, float, float, gd::string, gd::string) = win 0x983a0;

    bool init(ConfigureValuePopupDelegate*, float, float, float, gd::string, gd::string) = win 0x98550;
    void onClose(cocos2d::CCObject* sender) = win 0x98f30;
    void sliderChanged(cocos2d::CCObject* sender) = win 0x98d00, imac 0x60d500, m1 0x53a294;
    void updateTextInputLabel() = win 0x98d50, imac 0x60d550, m1 0x53a2d8;

    virtual void keyBackClicked() = win 0x98fb0, imac 0x60d7c0, m1 0x53a504;
    virtual void textInputClosed(CCTextInputNode*) = imac 0x60d670, m1 0x53a3ec;
    virtual void textChanged(CCTextInputNode*) = win 0x98de0, imac 0x60d6b0, m1 0x53a408;

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

    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = imac 0x1c5880, m1 0x182b10;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x182d48, imac 0x1c5b00;
    virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x1830d4, imac 0x1c5f30;

    int m_pickupCount;
    int m_pickupTriggerMode;
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

    virtual void update(float) = win 0x9adf0, imac 0x4f7030, m1 0x457928;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x9b0c0, imac 0x4f72a0, m1 0x457b80;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4f7390, m1 0x457ca8 {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x9b140, imac 0x4f73b0, m1 0x457cb0;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4f7450, m1 0x457d80;
    virtual void registerWithTouchDispatcher() = imac 0x4f7490, m1 0x457d9c;
    virtual void keyBackClicked() = win 0x9b040, m1 0x457afc, imac 0x4f7200;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x9b1f0, imac 0x4f74d0, m1 0x457dd4;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x9af60, imac 0x4f7100, m1 0x4579f0;
    virtual void onClose(cocos2d::CCObject* sender) = win 0x84620, imac 0x4f71d0, m1 0x457ac0;
    virtual void keyUp(cocos2d::enumKeyCodes) = imac 0x4f7520, m1 0x457e18 {}
    virtual TodoReturn playMusic() = win 0x9a6a0, m1 0x456fbc, imac 0x4f66b0;
    virtual TodoReturn registerTouch() = win 0x9b060, imac 0x4f7250, m1 0x457b38;
    virtual void onInfo(cocos2d::CCObject* sender) = win 0x9ae10, imac 0x4f7050, m1 0x457938;
    virtual void onRecord(cocos2d::CCObject* sender) = win 0x9a510, imac 0x4f65a0, m1 0x456ea8;
    virtual TodoReturn recordingDidStop() = win 0x9a800, imac 0x4f6740, m1 0x45705c;
}

[[link(android)]]
class CreateMenuItem : CCMenuItemSpriteExtra {
    // virtual ~CreateMenuItem();

    static CreateMenuItem* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = win 0x1276e0, imac 0x2f890, m1 0x2f104;

    bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

    gd::string m_spriteFileName;
    int m_objectID;
}

[[link(android)]]
class CreateParticlePopup : FLAlertLayer, TextInputDelegate, ColorSelectDelegate, SliderDelegate {
    // virtual ~CreateParticlePopup();

    static CreateParticlePopup* create(gd::string);
    static CreateParticlePopup* create(ParticleGameObject*, cocos2d::CCArray*, gd::string);
    static CreateParticlePopup* create(ParticleGameObject*, cocos2d::CCArray*) = win 0x414040, imac 0x45bce0;

    TodoReturn centerAlignParticle(cocos2d::CCObject*);
    TodoReturn createParticleSlider(gjParticleValue, int, bool, cocos2d::CCPoint, cocos2d::CCArray*);
    TodoReturn getPage(int);
    TodoReturn getPageButton(int);
    TodoReturn getPageContainer(int);
    TodoReturn getPageInputNodes(int);
    TodoReturn getPageMenu(int);
    TodoReturn getPageSliders(int);
    bool init(ParticleGameObject*, cocos2d::CCArray*, gd::string) = win 0x414230;
    TodoReturn maxSliderValueForType(gjParticleValue);
    TodoReturn minSliderValueForType(gjParticleValue);
    void onAnimateActiveOnly(cocos2d::CCObject* sender);
    void onAnimateOnTrigger(cocos2d::CCObject* sender);
    void onCalcEmission(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender) = win 0x41cde0, imac 0x4605e0, m1 0x3d0c04;
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

    virtual void update(float) = imac 0x463ad0, m1 0x3d3b74;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x41cf30, imac 0x464650, m1 0x3d464c;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x41d030, imac 0x464760, m1 0x3d4740;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x41d460, imac 0x464b30, m1 0x3d4adc;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x464b80, m1 0x3d4b18;
    virtual void keyBackClicked() = win 0x41cf20, imac 0x4644b0, m1 0x3d44b8;
    virtual void sliderBegan(Slider*) = win 0x41c660, imac 0x464370, m1 0x3d4368;
    virtual void sliderEnded(Slider*) = win 0x41c720, imac 0x464450, m1 0x3d4480;
    virtual void colorSelectClosed(cocos2d::CCNode*) = win 0x419cd0, imac 0x463840, m1 0x3d3900;
    virtual void textInputShouldOffset(CCTextInputNode*, float) = imac 0x4644e0, m1 0x3d44c4;
    virtual void textInputReturn(CCTextInputNode*) = imac 0x4645a0, m1 0x3d4594;
    virtual void textInputClosed(CCTextInputNode*) = imac 0x463c40, m1 0x3d3cb8;
    virtual void textChanged(CCTextInputNode*) = win 0x41a570, imac 0x463c80, m1 0x3d3cd4;

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

    static CreatorLayer* create() = win inline {
        auto ret = new CreatorLayer();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCScene* scene() = win 0x9b9a0;

    bool canPlayOnlineLevels();
    void checkQuestsStatus() = imac 0x287490, m1 0x230794;
    void onAdventureMap(cocos2d::CCObject* sender) = win 0x9dbe0, imac 0x286ee0, m1 0x2301ec;
    void onBack(cocos2d::CCObject* sender);
    void onChallenge(cocos2d::CCObject* sender) = win 0x9ddb0, imac 0x286f50, m1 0x23027c;
    void onDailyLevel(cocos2d::CCObject* sender) = win 0x9dd50;
    void onEventLevel(cocos2d::CCObject* sender) = win 0x9dd90;
    void onFameLevels(cocos2d::CCObject* sender);
    void onFeaturedLevels(cocos2d::CCObject* sender) = win 0x9d2a0;
    void onGauntlets(cocos2d::CCObject* sender) = win 0x9d590, m1 0x230314;
    void onLeaderboards(cocos2d::CCObject* sender) = win 0x9d0f0;
    void onMapPacks(cocos2d::CCObject* sender) = win 0x9d4d0;
    void onMultiplayer(cocos2d::CCObject* sender) = win 0x9d610;
    void onMyLevels(cocos2d::CCObject* sender) = win 0x9cce0, m1 0x2304ac;
    void onOnlineLevels(cocos2d::CCObject* sender) = win 0x9d450;
    void onOnlyFullVersion(cocos2d::CCObject* sender);
    void onPaths(cocos2d::CCObject* sender) = win 0x9d360;
    void onSavedLevels(cocos2d::CCObject* sender) = win 0x9cef0, m1 0x22fd80;
    void onSecretVault(cocos2d::CCObject* sender) = win 0x9df20;
    void onTopLists(cocos2d::CCObject* sender) = win 0x9d380, imac 0x2870b0, m1 0x2303c4;
    void onTreasureRoom(cocos2d::CCObject* sender) = win 0x9e730, m1 0x230ae4;
    void onWeeklyLevel(cocos2d::CCObject* sender) = win 0x9dd70;

    virtual bool init() = win 0x9bb10, m1 0x22f0d8, imac 0x285c80;
    virtual void keyBackClicked() = win 0x9f2b0, imac 0x288000, m1 0x23129c;
    virtual void sceneWillResume() = win 0x9f1f0, m1 0x23122c, imac 0x287f80;
    virtual void dialogClosed(DialogLayer*) = win 0x9f0d0, m1 0x23112c, imac 0x287e80;

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

    static CurrencyRewardLayer* create(int orbs, int stars, int moons, int diamonds, CurrencySpriteType demonKey, int keyCount, CurrencySpriteType shardType, int shardsCount, cocos2d::CCPoint position, CurrencyRewardType, float, float time) = win 0x9f500, imac 0x790040, m1 0x6a3838;

    void createObjects(CurrencySpriteType type, int count, cocos2d::CCPoint position, float time) = win inline, imac 0x792270, m1 0x6a5900 {
        this->createObjectsFull(type, count, nullptr, position, time);
    }
    void createObjectsFull(CurrencySpriteType, int, cocos2d::CCSprite*, cocos2d::CCPoint, float) = win 0xa1520, imac 0x792310, m1 0x6a59c4;
    void createUnlockObject(cocos2d::CCSprite* sprite, cocos2d::CCPoint position, float time) = win inline, imac 0x7922c0, m1 0x6a5968 {
        this->createObjectsFull(CurrencySpriteType::Icon, 1, sprite, position, time);
    }
    void incrementCount(int count) = win inline, imac 0x793840 {
        if (m_orbsLabel == nullptr) return;
        m_orbs += count;
        this->pulseSprite(m_orbsSprite);
        m_orbsLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
    }
    void incrementDiamondsCount(int count) = win inline, imac 0x793c90 {
        if (m_diamondsLabel == nullptr) return;
        m_diamonds += count;
        this->pulseSprite(m_diamondsSprite);
        m_diamondsLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
    }
    void incrementMoonsCount(int count) = win inline, imac 0x793b20 {
        if (m_moonsLabel == nullptr) return;
        m_moons += count;
        this->pulseSprite(m_moonsSprite);
        m_moonsLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
    }
    void incrementSpecialCount1(int count) = win inline, imac 0x793f70 {
        if (m_keysLabel == nullptr) return;
        m_keys += count;
        this->pulseSprite(m_keysSprite);
        m_keysLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
    }
    void incrementSpecialCount2(int count) = win inline, imac 0x793e00 {
        if (m_shardsLabel == nullptr) return;
        m_shards += count;
        this->pulseSprite(m_shardsSprite);
        m_shardsLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
    }
    void incrementStarsCount(int count) = win inline, imac 0x7939b0 {
        if (m_starsLabel == nullptr) return;
        m_stars += count;
        this->pulseSprite(m_starsSprite);
        m_starsLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
    }
    bool init(int, int, int, int, CurrencySpriteType, int, CurrencySpriteType, int, cocos2d::CCPoint, CurrencyRewardType, float, float) = win 0x9f750, imac 0x790120, m1 0x6a3940;
    void pulseSprite(cocos2d::CCSprite*) = win 0xa2c00, imac 0x7940e0, m1 0x6a7438;

    virtual void update(float) = win 0xa2230, imac 0x793110, m1 0x6a65e8;

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
    CurrencySprite() = win 0x9f3c0;

    static CurrencySprite* create(CurrencySpriteType type, bool burst) = win inline, imac 0x792160, m1 0x6a5804 {
        auto ret = new CurrencySprite();
        if (ret->init(type, burst)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    static CurrencySprite* createWithSprite(cocos2d::CCSprite*) = win 0xa44b0, m1 0x6a6500;
    static CurrencySpriteType rewardToSpriteType(int);
    static gd::string spriteTypeToStat(CurrencySpriteType) = win 0xa4780, imac 0x792060;
    bool init(CurrencySpriteType, bool) = win 0xa2cd0, m1 0x6a7600;
    bool initWithSprite(cocos2d::CCSprite*) = imac 0x794c10;

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

    static CustomizeObjectLayer* create(GameObject*, cocos2d::CCArray*) = win 0xa4b60;

    TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
    TodoReturn determineStartValues();
    int getActiveMode(bool) = win 0xa8cb0, imac 0x1e6970, m1 0x19ddb8;
    TodoReturn getButtonByTag(int) = win 0xa9520;
    TodoReturn getHSV();
    void highlightSelected(ButtonSprite*) = win 0xa97d0, imac 0x1e7290;
    bool init(GameObject*, cocos2d::CCArray*) = win 0xa4d00, imac 0x1e36b0, m1 0x19adc8;
    void onBreakApart(cocos2d::CCObject* sender);
    void onBrowse(cocos2d::CCObject* sender);
    void onClear(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender) = win 0xa9900;
    void onCopy(cocos2d::CCObject* sender);
    void onEditColor(cocos2d::CCObject* sender);
    void onHSV(cocos2d::CCObject* sender) = win 0xa8470;
    void onLiveEdit(cocos2d::CCObject* sender);
    void onNextColorChannel(cocos2d::CCObject* sender);
    void onPaste(cocos2d::CCObject* sender);
    void onSelectColor(cocos2d::CCObject* sender) = win 0xa95a0, imac 0x1e6020, m1 0x19d484;
    void onSelectMode(cocos2d::CCObject* sender) = win 0xa88e0, imac 0x1e5a90, m1 0x19cf0c;
    void onSettings(cocos2d::CCObject* sender);
    void onUpdateCustomColor(cocos2d::CCObject* sender) = win 0xa8ea0, imac 0x1e60d0, m1 0x19d54c;
    TodoReturn recreateLayer();
    void sliderChanged(cocos2d::CCObject*);
    void toggleVisible() = win 0xa8af0, imac 0x1e77b0, m1 0x19ea60;
    void updateChannelLabel(int channel) = win inline, imac 0x1e6c10, m1 0x19e038 {
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
    void updateColorSprite() = win 0xa7e20, imac 0x1e6b40, m1 0x19df68;
    void updateCurrentSelection();
    void updateCustomColorLabels() = win 0xa9490, imac 0x1e61a0, m1 0x19d620;
    void updateHSVButtons() = win 0xa8270;
    void updateKerningLabel();
    void updateSelected(int) = win 0xa9660, imac 0x1e7100, m1 0x19e468;

    virtual void keyBackClicked() = win 0xa99e0, imac 0x1e7cc0, m1 0x19ef50;
    virtual void textInputOpened(CCTextInputNode*) = win 0xa8f70, imac 0x1e7910, m1 0x19eb94;
    virtual void textInputClosed(CCTextInputNode*) = imac 0x1e7a20, m1 0x19ecbc;
    virtual void textChanged(CCTextInputNode*) = win 0xa9100, imac 0x1e7a60, m1 0x19ecd8;
    virtual void hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue) = win 0xa86a0, imac 0x1e76c0, m1 0x19e9a0;
    virtual void colorSelectClosed(cocos2d::CCNode*) = win 0xa8030, imac 0x1e7460, m1 0x19e764;
    virtual void colorSetupClosed(int) = win 0xa7c90, imac 0x1e6ff0, m1 0x19e354;

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

    virtual void onClose(cocos2d::CCObject* sender) = win 0xa9e50, imac 0x1e82b0, m1 0x19f4cc;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = win 0xa9da0, imac 0x1e8240, m1 0x19f44c;
}

[[link(android)]]
class CustomListView : BoomListView {
    inline CustomListView() {}
    ~CustomListView() {}

    static CustomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = win 0xaa010, imac 0x22f0e0, m1 0x1dfb1c;

    static CustomListView* create(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
        return CustomListView::create(entries, nullptr, width, height, 0, type, 0.0f);
    }

    float getCellHeight(BoomListType) = imac 0x2302f0;
    void reloadAll() = win 0xabc90, m1 0x1ec208, imac 0x23c570;

    virtual void setupList(float) = win 0xab5c0, m1 0x1ebbb4, imac 0x23bd80;
    virtual TableViewCell* getListCell(char const*) = win 0xaa140, imac 0x22f220, m1 0x1dfc2c;
    virtual void loadCell(TableViewCell*, int) = win 0xaaf00, imac 0x230dc0, m1 0x1e0c68;

    int m_unknown;
}

[[link(android)]]
class CustomMusicCell : CustomSongCell {
    // virtual ~CustomMusicCell();
    CustomMusicCell(char const*, float, float);

    void loadFromObject(SongInfoObject*) = win 0xb46f0, imac 0x232b30, m1 0x1e2940;
    void updateBGColor(int);
}

[[link(android)]]
class CustomSFXCell : TableViewCell, CustomSFXDelegate {
    // virtual ~CustomSFXCell();
    CustomSFXCell(char const*, float, float);

    void loadFromObject(SFXInfoObject*) = win 0xb4430;
    TodoReturn shouldReload();
    void updateBGColor(int) = win 0xb4560;

    virtual bool init() = win 0xb4410, imac 0x242730, m1 0x1f1be0;
    virtual void draw() = imac 0x242830, m1 0x1f1c84;
    virtual void sfxObjectSelected(SFXInfoObject*) = win 0xb4520, imac 0x242750, m1 0x1f1bf0;
    virtual TodoReturn getActiveSFXID() = win 0xb4110, imac 0x2427d0, m1 0x1f1c4c;
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
    bool init(SFXInfoObject*, CustomSFXDelegate*, bool, bool, bool, bool, bool) = imac 0x5ca870;
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
    TodoReturn updateSFXInfo() = imac 0x5cbd60;
    TodoReturn updateSFXObject(SFXInfoObject*);
    TodoReturn verifySFXID(int);

    virtual void downloadSFXFinished(int) = win 0xc18e0, imac 0x5cc9b0, m1 0x5010c4;
    virtual void downloadSFXFailed(int, GJSongError) = win 0xc1960, imac 0x5cca50, m1 0x501164;
    virtual void songStateChanged() = win 0xc1230, imac 0x5cc940, m1 0x50109c;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xc1a60, imac 0x5ccc30, m1 0x501374;
}

[[link(android)]]
class CustomSongCell : TableViewCell, CustomSongDelegate {
    // virtual ~CustomSongCell();
    CustomSongCell(char const*, float, float);

    void loadFromObject(SongInfoObject*) = win 0xb3f10, imac 0x232930, m1 0x1e2718;
    void onDelete(cocos2d::CCObject* sender);
    TodoReturn shouldReload();
    void updateBGColor(int);

    virtual bool init() = imac 0x242330, m1 0x1f1924;
    virtual void draw() = imac 0x242540, m1 0x1f1aa8;
    virtual TodoReturn songIDChanged(int) = win 0xb40d0, imac 0x242420, m1 0x1f19ec;
    virtual TodoReturn getActiveSongID() = imac 0x2424a0, m1 0x1f1a48;
    virtual TodoReturn getSongFileName() = win 0xb4130, imac 0x242500, m1 0x1f1a80;
    virtual LevelSettingsObject* getLevelSettings() = win 0x83630, imac 0x242520, m1 0x1f1a98;

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

    static CustomSongLayer* create(CustomSongDelegate* delegate) = win inline, m1 0x1b869c {
        auto ret = new CustomSongLayer();
        if (ret->init(delegate)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool init(CustomSongDelegate*) = win 0xc1f00, m1 0x1b87b8;
    void onClose(cocos2d::CCObject* sender) = win 0xc3690;
    void onCreateLines(cocos2d::CCObject* sender);
    void onMusicBrowser(cocos2d::CCObject* sender) = win 0xc31a0, imac 0x2043e0, m1 0x1b9424;
    void onNCSBrowser(cocos2d::CCObject* sender) = imac 0x2043c0;
    void onNewgroundsBrowser(cocos2d::CCObject* sender) = win 0xc3300;
    void onOptions(cocos2d::CCObject* sender) = imac 0x204490;
    void onSearch(cocos2d::CCObject* sender) = win 0xc2c80, m1 0x1b94e4;
    void onSongBrowser(cocos2d::CCObject* sender) = m1 0x1b93a4;
    void showNewgroundsMessage();

    virtual void keyBackClicked() = win 0xc3760, imac 0x204e40, m1 0x1b9e40;
    virtual void show() = win 0xc3770, imac 0x204f30, m1 0x1b9f2c;
    virtual void textChanged(CCTextInputNode*) = imac 0x2048d0, m1 0x1b9910;
    virtual void textInputOpened(CCTextInputNode*) = imac 0x204870, m1 0x1b9890;
    virtual void textInputClosed(CCTextInputNode*) = imac 0x204810, m1 0x1b9810;
    virtual void textInputShouldOffset(CCTextInputNode*, float) = imac 0x2048f0, m1 0x1b9930;
    virtual void textInputReturn(CCTextInputNode*) = imac 0x2049b0, m1 0x1b9a00;
    virtual void dropDownLayerWillClose(GJDropDownLayer*) = win 0xc34f0, imac 0x204ce0, m1 0x1b9cb0;
    virtual void musicBrowserClosed(MusicBrowser*) = win 0xc35c0, imac 0x204d90, m1 0x1b9d78;

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
    CustomSongWidget() = win inline {
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

    static CustomSongWidget* create(SongInfoObject* songInfo, CustomSongDelegate* songDelegate, bool showSongSelect, bool showPlayMusic, bool showDownload, bool isRobtopSong, bool unkBool, bool isMusicLibrary, int unk) = win 0xc74f0, imac 0x603130, m1 0x530b4c;
    TodoReturn addExtraVisuals(bool, bool);

    void deleteSong() = win 0xc9160, m1 0x53474c;
    void downloadAssetFailed(int, GJAssetType, GJSongError) = win 0xcc4a0;
    void downloadAssetFinished(int, GJAssetType) = win 0xcc3e0, imac 0x609010;
    void downloadFailed() = imac 0x608ec0, m1 0x5361bc;
    void getSongInfoIfUnloaded() = win 0xc9af0, imac 0x607560, m1 0x534a90;
    bool init(SongInfoObject* songInfo, CustomSongDelegate* songDelegate, bool showSongSelect, bool showPlayMusic, bool showDownload, bool isRobtopSong, bool unkBool, bool isMusicLibrary, int unk) = win 0xc7700, m1 0x530ca4;
    void onCancelDownload(cocos2d::CCObject* sender);
    void onDelete(cocos2d::CCObject* sender) = win 0xc9040;
    void onDownload(cocos2d::CCObject* sender) = win 0xc9cd0, imac 0x604450, m1 0x531d3c;
    void onGetSongInfo(cocos2d::CCObject* sender) = win 0xc9c40, imac 0x604860, m1 0x53210c;
    void onInfo(cocos2d::CCObject* sender) = win 0xc8d50, m1 0x532c04;
    void onMore(cocos2d::CCObject* sender) = win 0xc9360;
    void onPlayback(cocos2d::CCObject* sender) = win 0xc9fd0, imac 0x6048f0, m1 0x5321a0;
    void onSelect(cocos2d::CCObject* sender) = win 0xc9f70, imac 0x604800, m1 0x5320b0;
    void positionInfoObjects() = win 0xc88c0;
    void processNextMultiAsset() = win 0xcc240, imac 0x609540, m1 0x5367b0;
    void showError(bool) = win 0xcc710, m1 0x534884;
    void startDownload() = win 0xc9eb0;
    TodoReturn startMonitorDownload();
    void startMultiAssetDownload() = win 0xcc0a0;
    TodoReturn toggleUpdateButton(bool);
    void updateDownloadProgress(float) = win 0xca4a0;
    void updateError(GJSongError) = win 0xcc640, imac 0x608d90, m1 0x536084;
    void updateLengthMod(float lengthMod) = win inline {
        this->m_lengthMod = lengthMod;
        this->updateSongInfo();
    }
    void updateMultiAssetInfo(bool) = win 0xcb760, imac 0x6084b0, m1 0x53584c;
    void updatePlaybackBtn() = win 0xca3b0, imac 0x606ff0, m1 0x534530;
    void updateProgressBar(int);
    void updateSongInfo() = win 0xca600, m1 0x53361c;
    void updateSongObject(SongInfoObject*) = imac 0x605f30;
    void updateWithMultiAssets(gd::string, gd::string, int) = win 0xcb410;
    TodoReturn verifySongID(int);

    virtual void loadSongInfoFinished(SongInfoObject*) = win 0xcbd40, imac 0x608b20, m1 0x535e3c;
    virtual void loadSongInfoFailed(int, GJSongError) = win 0xcbe90, imac 0x608d00, m1 0x535fe8;
    virtual void downloadSongFinished(int) = win 0xcbf20, imac 0x608f50, m1 0x53625c;
    virtual void downloadSongFailed(int, GJSongError) = win 0xcbfe0, imac 0x609230, m1 0x53652c;
    virtual void downloadSFXFinished(int) = win 0xcc060, imac 0x6093c0, m1 0x536698;
    virtual void downloadSFXFailed(int, GJSongError) = win 0xcc080, imac 0x6093f0, m1 0x5366ac;
    virtual void musicActionFinished(GJMusicAction) = win 0xcc5c0, imac 0x6096f0, m1 0x536974;
    virtual void musicActionFailed(GJMusicAction) = win 0xcc5f0, imac 0x609750, m1 0x5369b4;
    virtual void songStateChanged() = win 0xca5d0, imac 0x607c70, m1 0x5350e4;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xcc960, imac 0x6097f0, m1 0x536a50;

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

    static DailyLevelNode* create(GJGameLevel*, DailyLevelPage*, bool) = imac 0x220750;

    bool init(GJGameLevel*, DailyLevelPage*, bool) = win 0xd0c90, imac 0x220f30, m1 0x1d3c7c;
    void onClaimReward(cocos2d::CCObject* sender) = win 0xd18f0, imac 0x221990, m1 0x1d4750;
    void onSkipLevel(cocos2d::CCObject* sender) = win 0xd1a10;
    void showSkipButton() = win 0xd1890;
    void updateTimeLabel(gd::string);

    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xd1c30, imac 0x221c60, m1 0x1d4a58;

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

    static DailyLevelPage* create(GJTimedLevelType) = win 0xccfd0;

    void claimLevelReward(DailyLevelNode*, GJGameLevel*, cocos2d::CCPoint) = win 0xd06b0, m1 0x1d3868;
    void createDailyNode(GJGameLevel*, bool, float, bool) = win 0xcee40, imac 0x21fd40, m1 0x1d2af8;
    void createNodeIfLoaded();
    void downloadAndCreateNode();
    void exitDailyNode(DailyLevelNode*, float) = imac 0x2201b0, m1 0x1d2f2c;
    int getDailyTime();
    gd::string getDailyTimeString(int timeLeft) = win 0xcf200, imac 0x21f6b0, m1 0x1d2264;
    bool init(GJTimedLevelType) = win 0xcd110, imac 0x21e9d0, m1 0x1d12b4;
    void onClose(cocos2d::CCObject* sender) = win 0x86940;
    void onTheSafe(cocos2d::CCObject* sender);
    void refreshDailyPage();
    void skipDailyLevel(DailyLevelNode*, GJGameLevel*);
    void tryGetDailyStatus() = win 0xcec10;
    callback void updateTimers(float) = win 0xd0360;

    virtual void registerWithTouchDispatcher() = imac 0x220ad0, m1 0x1d3830;
    virtual void keyBackClicked() = imac 0x220a40, m1 0x1d3794;
    virtual void show() = win 0x867a0, m1 0x1d3608, imac 0x2208a0;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = imac 0x220a20, m1 0x1d378c {}
    virtual void dailyStatusFinished(GJTimedLevelType) = win 0xce560, imac 0x21ff30, m1 0x1d2cdc;
    virtual void dailyStatusFailed(GJTimedLevelType, GJErrorCode) = win 0xce860, imac 0x220370, m1 0x1d30c8;
    virtual void levelDownloadFinished(GJGameLevel*) = win 0xceb90, imac 0x2205c0, m1 0x1d3304;
    virtual void levelDownloadFailed(int) = win 0xcebf0, imac 0x220680, m1 0x1d33e4;

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

    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x166c5c, imac 0x1a48d0;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1a4a40, m1 0x166db4;

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

    static DemonFilterSelectLayer* create() = win inline {
        auto ret = new DemonFilterSelectLayer();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    void onClose(cocos2d::CCObject* sender) = win 0x303380;
    void selectRating(cocos2d::CCObject* sender) = win 0x3032c0, m1 0x544fb8;

    virtual bool init() = win 0x302c80, imac 0x618bf0, m1 0x544b00;
    virtual void keyBackClicked() = win 0x3033d0, imac 0x6191e0, m1 0x5450e0;

    cocos2d::CCArray* m_demons;
    void* m_unkPtr;
    int m_currentDemon;
    DemonFilterDelegate* m_delegate;
}

[[link(android)]]
class DemonInfoPopup : FLAlertLayer {
    // ~DemonInfoPopup();

    static DemonInfoPopup* create(int easyClassic, int mediumClassic, int hardClassic, int insaneClassic, int extremeClassic, int easyPlatformer, int mediumPlatformer, int hardPlatformer, int insanePlatformer, int extremePlatformer, int weekly, int gauntlet) = win 0x3afb70, imac 0x7abbc0, m1 0x6bd330;
    static DemonInfoPopup* createFromString(gd::string) = win 0x3af7a0, imac 0x7a9780, m1 0x6bb050;

    bool init(int easyClassic, int mediumClassic, int hardClassic, int insaneClassic, int extremeClassic, int easyPlatformer, int mediumPlatformer, int hardPlatformer, int insanePlatformer, int extremePlatformer, int weekly, int gauntlet) = win 0x3afcd0, m1 0x6bd48c;
    void onClose(cocos2d::CCObject* sender);

    virtual void keyBackClicked() = imac 0x7ac6f0, m1 0x6bde1c;
}

[[link(android)]]
class DialogDelegate {
    virtual void dialogClosed(DialogLayer*) {}
}

[[link(android)]]
class DialogLayer : cocos2d::CCLayerColor, TextAreaDelegate {
    // virtual ~DialogLayer();

    static DialogLayer* create(DialogObject* object, int background) = win inline, imac 0x3b4400 {
        return DialogLayer::createDialogLayer(object, nullptr, background);
    }
    static DialogLayer* createDialogLayer(DialogObject* object, cocos2d::CCArray* objects, int background) = win 0xd1f60, imac 0x3b4410, m1 0x33fa54;
    static DialogLayer* createWithObjects(cocos2d::CCArray* objects, int background) = win inline, imac 0x3b4550 {
        return DialogLayer::createDialogLayer(nullptr, objects, background);
    }

    void addToMainScene() = win 0xd2a70, m1 0x340874;
    void animateIn(DialogAnimationType) = imac 0x3b56f0, m1 0x340c78;
    void animateInDialog() = imac 0x3b5930;
    void animateInRandomSide() = win 0xd2c40, m1 0x340c18;
    void displayDialogObject(DialogObject*) = win 0xd2570;
    void displayNextObject() = win 0xd2510, m1 0x340054;
    void finishCurrentAnimation() = imac 0x3b5180, m1 0x34074c;
    void handleDialogTap() = win 0xd2940, m1 0x3405f0;
    bool init(DialogObject*, cocos2d::CCArray*, int) = win 0xd20b0, imac 0x3b4570, m1 0x33fb74;
    void onClose() = win 0xd2ae0;
    void updateChatPlacement(DialogChatPlacement placement) = win inline, m1 0x340534 {
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
    void updateNavButtonFrame() = win 0xd28c0, imac 0x3b4f00;

    virtual void onEnter() = imac 0x3b55a0, m1 0x340b24;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0xd2b60, imac 0x3b5450, m1 0x3409f0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3b54f0, m1 0x340aa0 {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0xd2b90, imac 0x3b54b0, m1 0x340a68;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0xd2bb0, imac 0x3b5510, m1 0x340aa8;
    virtual void registerWithTouchDispatcher() = imac 0x3b5560, m1 0x340aec;
    virtual void keyBackClicked() = win 0xd2ad0, imac 0x3b5320, m1 0x3408cc;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0xd2e80, imac 0x3b5940, m1 0x340e9c;
    virtual TodoReturn fadeInTextFinished(TextArea*) = win 0xd2bd0, imac 0x3b55b0, m1 0x340b28;

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

    static DialogObject* create(gd::string character, gd::string text, int characterFrame, float textScale, bool skippable, cocos2d::ccColor3B color) = win 0xd1da0;

    bool init(gd::string character, gd::string text, int characterFrame, float textScale, bool skippable, cocos2d::ccColor3B color) = win inline, imac 0x3b4040, m1 0x33f790 {
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

    static DrawGridLayer* create(cocos2d::CCNode*, LevelEditorLayer*) = win 0x2db0d0;

    void addAudioLineObject(AudioLineGuideGameObject*);
    TodoReturn addToEffects(EffectGameObject*);
    TodoReturn addToGuides(GameObject*);
    TodoReturn addToSpeedObjects(EffectGameObject*);
    TodoReturn getPortalMinMax(GameObject*);
    bool init(cocos2d::CCNode*, LevelEditorLayer*);
    void loadTimeMarkers(gd::string) = win 0x2db2b0, imac 0xdfb90;
    float posForTime(float);
    void postUpdate();
    TodoReturn removeAudioLineObject(AudioLineGuideGameObject*);
    TodoReturn removeFromEffects(EffectGameObject*);
    TodoReturn removeFromGuides(GameObject*);
    TodoReturn removeFromSpeedObjects(EffectGameObject*);
    TodoReturn sortSpeedObjects();
    float timeForPos(cocos2d::CCPoint, int, int, bool, bool, bool, int);
    TodoReturn updateMusicGuideTime(float);
    void updateTimeMarkers();

    virtual void update(float) = win 0x2db5d0, imac 0xf61c0, m1 0xda0d0;
    virtual void draw() = win 0x2db7d0, m1 0xda1e0, imac 0xf6350;

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

    virtual bool init() = win 0x3d8330, m1 0x401d78, imac 0x4955c0;
    virtual void visit() = win 0x3d83b0, imac 0x495640, m1 0x401df8;

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

    static EditButtonBar* create(cocos2d::CCArray* objects, cocos2d::CCPoint size, int unk, bool unkBool, int columns, int rows) = win 0xd2f40, imac 0x5c9a80, m1 0x4fe3d8;

    int getPage();
    void goToPage(int);
    bool init(cocos2d::CCArray* objects, cocos2d::CCPoint size, int unk, bool unkBool, int columns, int rows) = imac 0x5c9b70, m1 0x4fe4d4;
    void loadFromItems(cocos2d::CCArray*, int, int, bool) = win 0xd30a0, m1 0x4fe580, imac 0x5c9c20;
    void onLeft(cocos2d::CCObject* sender) = win 0xd3a90;
    void onRight(cocos2d::CCObject* sender) = win 0xd3a20;
    void reloadItems(int rowCount, int columnCount) = win inline, imac 0x5ca1e0, m1 0x4feab0 {
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
    virtual ~EditLevelLayer() = win 0xd3c10;

    static EditLevelLayer* create(GJGameLevel* level) = win inline {
        auto ret = new EditLevelLayer();
        if (ret && ret->init(level)) {
            ret->autorelease();
            return ret;
        }
        CC_SAFE_DELETE(ret);
        return nullptr;
    }
    static cocos2d::CCScene* scene(GJGameLevel*) = win 0xd3d80, m1 0x19fb6c;

    void closeTextInputs() = win 0xd5f60;
    void confirmClone(cocos2d::CCObject*);
    void confirmDelete(cocos2d::CCObject*) = imac 0x1eb2d0, m1 0x1a2238;
    void confirmMoveToTop(cocos2d::CCObject*);
    bool init(GJGameLevel*) = win 0xd3f10, imac 0x1e8d30, m1 0x19fd54;
    void onBack(cocos2d::CCObject* sender) = win 0xd80e0;
    void onClone() = m1 0x1a3a10;
    void onDelete() = m1 0x1a3720;
    void onEdit(cocos2d::CCObject* sender);
    void onGuidelines(cocos2d::CCObject* sender) = win 0xd52e0, imac 0x1ebb70;
    void onHelp(cocos2d::CCObject* sender);
    void onLevelInfo(cocos2d::CCObject* sender) = win 0xd5500;
    void onLevelLeaderboard(cocos2d::CCObject* sender) = m1 0x1a2658;
    void onLevelOptions(cocos2d::CCObject* sender);
    void onMoveToTop();
    void onPlay(cocos2d::CCObject* sender) = win 0xd6920, m1 0x1a1404;
    void onSetFolder(cocos2d::CCObject* sender) = win 0xd7fc0, imac 0x1eb640, m1 0x1a25b0;
    void onShare(cocos2d::CCObject* sender) = win 0xd6f20;
    void onTest(cocos2d::CCObject* sender) = m1 0x1a3690;
    void onUpdateDescription(cocos2d::CCObject* sender);
    void playStep2();
    void playStep3() = m1 0x1a3640;
    void setupLevelInfo() = win 0xd5720, m1 0x1a1938;
    void updateDescText(char const*);
    void verifyLevelName() = win 0xd8290;

    virtual void keyBackClicked() = win 0xd8570, imac 0x1eccd0, m1 0x1a3c1c;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0xd8580, imac 0x1ecd00, m1 0x1a3c28;
    virtual void setIDPopupClosed(SetIDPopup*, int) = win 0xd8050, imac 0x1ecbd0, m1 0x1a3b1c;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xd7710, imac 0x1ec7f0, m1 0x1a3760;
    virtual void textInputOpened(CCTextInputNode*) = win 0xd65c0, m1 0x1a2f70, imac 0x1ec020;
    virtual void textInputClosed(CCTextInputNode*) = win 0xd5fc0, m1 0x1a2c24, imac 0x1ebcb0;
    virtual void textChanged(CCTextInputNode*) = win 0xd6730, imac 0x1ec100, m1 0x1a3080;
    virtual void uploadActionFinished(int, int) = win 0xd85f0, m1 0x1a3cac, imac 0x1ecda0;
    virtual void uploadActionFailed(int, int) = win 0xd8730, imac 0x1ecf50, m1 0x1a3e64;
    virtual void onClosePopup(UploadActionPopup*) = win 0xd85b0, imac 0x1ecd50, m1 0x1a3c5c;

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

    static EditorOptionsLayer* create() = imac 0x28c170, m1 0x234bc8;

    void onButtonRows(cocos2d::CCObject* sender) = win 0x289f50, imac 0x28cd30, m1 0x2356e0;
    void onButtonsPerRow(cocos2d::CCObject* sender) = win 0x289ec0, imac 0x28ccb0, m1 0x235658;

    virtual bool init() = win 0x2895b0, imac 0x28c3d0, m1 0x234d64;
    virtual void onClose(cocos2d::CCObject* sender) = win 0x289fe0, imac 0x28cda0, m1 0x235760;
    virtual void setupOptions() = win 0x2895e0, imac 0x28c400, m1 0x234d80;

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

    static EditorPauseLayer* create(LevelEditorLayer*) = win inline, m1 0x228edc {
        auto ret = new EditorPauseLayer();
        if (ret && ret->init(LevelEditorLayer::get())) {
            ret->autorelease();
            return ret;
        }
        CC_SAFE_DELETE(ret);
        return nullptr;
    }

    TodoReturn doResetUnused() = win 0x2d2a60;
    bool init(LevelEditorLayer*) = win 0xd8990, imac 0x1ebcb0;
    void onAlignX(cocos2d::CCObject* sender);
    void onAlignY(cocos2d::CCObject* sender);
    void onBuildHelper(cocos2d::CCObject* sender);
    void onCopyWColor(cocos2d::CCObject* sender);
    void onCreateExtras(cocos2d::CCObject* sender) = win 0xdb760;
    void onCreateLoop(cocos2d::CCObject* sender);
    void onCreateTemplate(cocos2d::CCObject* sender);
    void onExitEditor(cocos2d::CCObject* sender) = win 0xdcd60, m1 0x22cbf4;
    void onExitNoSave(cocos2d::CCObject* sender);
    void onHelp(cocos2d::CCObject* sender);
    void onKeybindings(cocos2d::CCObject* sender);
    void onNewGroupX(cocos2d::CCObject* sender);
    void onNewGroupY(cocos2d::CCObject* sender);
    void onOptions(cocos2d::CCObject* sender);
    void onPasteWColor(cocos2d::CCObject* sender);
    void onReGroup(cocos2d::CCObject* sender);
    void onResetUnusedColors(cocos2d::CCObject* sender) = imac 0x2823c0;
    void onResume(cocos2d::CCObject* sender) = win 0xdc140;
    void onSave(cocos2d::CCObject* sender) = win 0xdcbf0;
    void onSaveAndExit(cocos2d::CCObject* sender) = win 0xdcd20, imac 0x281f10, m1 0x22b7b8;
    void onSaveAndPlay(cocos2d::CCObject* sender) = win 0xdc9a0, imac 0x281ea0, m1 0x22b728;
    void onSelectAll(cocos2d::CCObject* sender) = win 0xdb870;
    void onSelectAllLeft(cocos2d::CCObject* sender);
    void onSelectAllRight(cocos2d::CCObject* sender);
    void onSong(cocos2d::CCObject* sender);
    void onUnlockAllLayers(cocos2d::CCObject* sender);
    TodoReturn playStep2();
    TodoReturn playStep3() = win 0xdcb50;
    void saveLevel() = win 0xdc310, m1 0x22c66c;
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
    void togglePreviewAnim(cocos2d::CCObject*) = win 0xdbc10;
    TodoReturn togglePreviewParticles(cocos2d::CCObject*);
    TodoReturn togglePreviewShaders(cocos2d::CCObject*);
    TodoReturn toggleRecordOrder(cocos2d::CCObject*);
    TodoReturn toggleSelectFilter(cocos2d::CCObject*);
    void toggleShowObjectInfo(cocos2d::CCObject* sender);
    TodoReturn uncheckAllPortals(cocos2d::CCObject*) = imac 0x2822f0;
    TodoReturn updateSongButton();

    virtual void keyBackClicked() = win 0xdd0c0, imac 0x2835f0, m1 0x22cd08;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0xdd0d0, imac 0x2836e0, m1 0x22cde8;
    virtual void customSetup() = win 0xd9020, imac 0x280000, m1 0x229ab8;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xdcfa0, imac 0x283510, m1 0x22cc2c;

    bool m_saved;
    CCMenuItemSpriteExtra* m_guidelinesOffButton;
    CCMenuItemSpriteExtra* m_guidelinesOnButton;
    LevelEditorLayer* m_editorLayer;
    PAD = win 0x20;

}

[[link(android), depends(GJTransformState)]]
class EditorUI : cocos2d::CCLayer, FLAlertLayerProtocol, ColorSelectDelegate, GJRotationControlDelegate, GJScaleControlDelegate, GJTransformControlDelegate, MusicDownloadDelegate, SetIDPopupDelegate {
    // virtual ~EditorUI();
    EditorUI() = win 0xdd4b0;

    static EditorUI* create(LevelEditorLayer*) = imac 0x9c50, m1 0xb0d8;
    static EditorUI* get() {
        auto lel = LevelEditorLayer::get();
        if (!lel) return nullptr;
        return lel->m_editorUI;
    }

    void activateRotationControl(cocos2d::CCObject*) = win 0x121400;
    void activateScaleControl(cocos2d::CCObject*) = win 0x113260;
    void activateTransformControl(cocos2d::CCObject*) = win 0x1138b0;
    TodoReturn addObjectsToSmartTemplate(GJSmartTemplate*, cocos2d::CCArray*);
    TodoReturn addSnapPosition(cocos2d::CCPoint);
    TodoReturn alignObjects(cocos2d::CCArray*, bool);
    void applyOffset(GameObject*) = win 0x120d20;
    TodoReturn applySpecialOffset(cocos2d::CCPoint, GameObject*, cocos2d::CCPoint);
    TodoReturn arrayContainsClass(cocos2d::CCArray*, int);
    TodoReturn assignNewGroups(bool) = imac 0x45f00;
    TodoReturn canAllowMultiActivate(GameObject*, cocos2d::CCArray*);
    TodoReturn canSelectObject(GameObject*);
    TodoReturn centerCameraOnObject(GameObject*);
    TodoReturn changeSelectedObjects(cocos2d::CCArray*, bool);
    TodoReturn checkDiffAfterTransformAnchor(cocos2d::CCPoint, cocos2d::CCArray*) = win 0x1140c0;
    TodoReturn checkLiveColorSelect();
    void clickOnPosition(cocos2d::CCPoint) = win 0xe1020, imac 0x2e530, m1 0x2ddcc;
    TodoReturn closeLiveColorSelect();
    TodoReturn closeLiveHSVSelect();
    void colorSelectClosed(cocos2d::ccColor3B) = win 0x11dcb0;
    void constrainGameLayerPosition() = win 0x120db0;
    void constrainGameLayerPosition(float, float) = win 0x120db0, imac 0x2b550, m1 0x2b614;
    TodoReturn convertKeyBasedOnNeighbors(int, int, cocos2d::CCPoint, cocos2d::CCArray*);
    TodoReturn convertToBaseKey(int);
    gd::string copyObjects(cocos2d::CCArray* objects, bool copyColors, bool sort) = win 0x111540, imac 0x31810;
    TodoReturn copyObjectsDetailed(cocos2d::CCArray*);
    cocos2d::CCArray* createCustomItems() = win 0xe30c0, imac 0x32110, m1 0x31624;
    TodoReturn createEdgeForObject(GameObject*, int);
    TodoReturn createExtraObject(int, cocos2d::CCPoint, GameObject*, cocos2d::CCArray*, int, int);
    TodoReturn createExtras(cocos2d::CCArray*);
    TodoReturn createExtrasForObject(int, GameObject*, cocos2d::CCArray*);
    TodoReturn createGlow();
    void createLoop();
    void createMoveMenu() = win 0x119330, m1 0x404a0;
    TodoReturn createNewKeyframeAnim();
    TodoReturn createObject(int, cocos2d::CCPoint) = win 0x10e820;
    TodoReturn createOutlines(cocos2d::CCArray*);
    TodoReturn createPrefab(GJSmartTemplate*, gd::string, int);
    TodoReturn createRockBases(cocos2d::CCArray*) = win 0x12d9e0, imac 0x5fd6a0;
    TodoReturn createRockEdges(cocos2d::CCArray*);
    TodoReturn createSmartObjectsFromTemplate(GJSmartTemplate*, cocos2d::CCArray*, bool, bool, bool, bool);
    TodoReturn createSmartObjectsFromType(int, cocos2d::CCArray*, bool, bool);
    UndoObject* createUndoObject(UndoCommand, bool) = win 0x10f810, imac 0x3d970;
    TodoReturn createUndoSelectObject(bool) = win 0x10fb30;
    TodoReturn deactivateRotationControl();
    TodoReturn deactivateScaleControl() = win 0x113460;
    TodoReturn deactivateTransformControl() = win 0x113ab0;
    void deleteObject(GameObject*, bool) = imac 0x33500;
    TodoReturn deleteSmartBlocksFromObjects(cocos2d::CCArray*);
    TodoReturn deleteTypeFromObjects(int, cocos2d::CCArray*);
    void deselectAll() = win 0x10fd60, imac 0x337d0, m1 0x32ca8;
    void deselectObject() = win 0x10fc40, imac 0x339e0;
    void deselectObject(GameObject*) = win 0x10fc40, imac 0x33730;
    void deselectObjectsColor();
    TodoReturn deselectTargetPortals() = imac 0x333a0;
    TodoReturn disableButton(CreateMenuItem*);
    void doCopyObjects(bool) = win 0x1118e0, imac 0x3ec90;
    TodoReturn doPasteInPlace(bool);
    void doPasteObjects(bool) = win 0x111a70;
    void dynamicGroupUpdate(bool) = win 0x116fe0, imac 0x453a0;
    TodoReturn edgeForObject(int, int);
    TodoReturn editButton2Usable() = imac 0x49870;
    TodoReturn editButtonUsable() = imac 0x48b10;
    TodoReturn editColor();
    TodoReturn editColorButtonUsable();
    void editGroup(cocos2d::CCObject*) = win 0x11d860, imac 0x2ce80, m1 0x2c8c8;
    TodoReturn editHSV();
    void editObject(cocos2d::CCObject*) = win 0x11a4f0;
    void editObject2(cocos2d::CCObject*);
    void editObject3(cocos2d::CCObject*);
    TodoReturn editObjectSpecial(int);
    TodoReturn editorLayerForArray(cocos2d::CCArray*, bool);
    TodoReturn enableButton(CreateMenuItem*);
    TodoReturn findAndSelectObject(int, bool);
    void findSnapObject(cocos2d::CCArray*, float) = win 0x121670;
    void findSnapObject(cocos2d::CCPoint, float) = win 0x121770;
    TodoReturn findTriggerTest();
    void flipObjectsX(cocos2d::CCArray*);
    void flipObjectsY(cocos2d::CCArray*);
    TodoReturn getButton(char const*, int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);
    CreateMenuItem* getCreateBtn(int id, int bg) = win 0x10d280;
    TodoReturn getCreateMenuItemButton(cocos2d::CCSprite*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint) = imac 0x2f720;
    TodoReturn getCycledObject(cocos2d::CCArray*, bool);
    TodoReturn getEditColorTargets(ColorAction*&, ColorAction*&, EffectGameObject*&) = imac 0x4a6b0;
    cocos2d::CCPoint getGridSnappedPos(cocos2d::CCPoint pos) = win inline {
        auto size = m_editorLayer->m_drawGridLayer->m_gridSize;
        auto xVal = std::floorf(pos.x / size);
        auto yVal = std::floorf(pos.y / size);
        return this->getLimitedPosition(ccp((xVal + 0.5) * size, (yVal + 0.5) * size));
    }
    cocos2d::CCPoint getGroupCenter(cocos2d::CCArray* objs, bool) = win 0x121170;
    TodoReturn getGroupInfo(GameObject*, cocos2d::CCArray*, int&, int&, int&);
    cocos2d::CCPoint getLimitedPosition(cocos2d::CCPoint) = win 0x11e6d0;
    CCMenuItemSpriteExtra* getModeBtn(char const*, int);
    TodoReturn getNeighbor(int, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*);
    TodoReturn getRandomStartKey(int);
    TodoReturn getRelativeOffset(GameObject*) = imac 0x4dc1a0;
    cocos2d::CCArray* getSelectedObjects() = win 0x10f760, m1 0x382a4;
    TodoReturn getSimpleButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);
    TodoReturn getSmartNeighbor(SmartGameObject*, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*);
    TodoReturn getSmartObjectKey(int, GJSmartDirection);
    TodoReturn getSnapAngle(GameObject*, cocos2d::CCArray*) = imac 0x4b2f0;
    CCMenuItemSpriteExtra* getSpriteButton(char const* spriteFrameName, cocos2d::SEL_MenuHandler selector, cocos2d::CCMenu* menu, float scale, int buttonKind, cocos2d::CCPoint offset) = win 0xe11b0;
    CCMenuItemSpriteExtra* getSpriteButton(char const* spriteFrameName, cocos2d::SEL_MenuHandler selector, cocos2d::CCMenu* menu, float scale) = win inline, imac 0xc870, m1 0xdabc {
        return this->getSpriteButton(spriteFrameName, selector, menu, scale, 1, {0, 0});
    }
    CCMenuItemSpriteExtra* getSpriteButton(cocos2d::CCSprite* sprite, cocos2d::SEL_MenuHandler selector, cocos2d::CCMenu* menu, float scale, int buttonKind, cocos2d::CCPoint offset) = win 0xe1240;
    TodoReturn getTouchPoint(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn getTransformState();
    TodoReturn getXMin(int) = imac 0x2fa00;
    bool init(LevelEditorLayer* editorLayer) = win 0xdde60, m1 0xb158;
    bool isLiveColorSelectTrigger(GameObject*);
    bool isSpecialSnapObject(int) = win 0x127290, imac 0x4c880;
    TodoReturn liveEditColorUsable();
    CreateMenuItem* menuItemFromObjectString(gd::string, int) = win 0x10d070, m1 0x3199c;
    cocos2d::CCPoint moveForCommand(EditCommand command) = win 0x11de00, imac 0x4ad60, m1 0x439f4;
    void moveGamelayer(cocos2d::CCPoint) = win 0xe1690, imac 0x2fd90, m1 0x2f584;
    void moveObject(GameObject*, cocos2d::CCPoint) = win 0x11e270;
    void moveObjectCall(cocos2d::CCObject*) = win 0x11dfe0, imac 0x49f00;
    void moveObjectCall(EditCommand) = win 0x11dfe0, imac 0x4af60, m1 0x43ba0;
    cocos2d::CCPoint offsetForKey(int) = win 0x124bd0;
    TodoReturn onAssignNewGroupID();
    void onColorFilter(cocos2d::CCObject* sender);
    void onCopy(cocos2d::CCObject* sender);
    void onCopyState(cocos2d::CCObject* sender) = win 0x112aa0;
    bool onCreate() = win 0x10dcf0, imac 0x2eb90;
    void onCreateButton(cocos2d::CCObject* sender) = win 0x10d860;
    void onCreateObject(int) = win 0x10def0;
    void onDelete(cocos2d::CCObject* sender) = win 0xe4740;
    void onDeleteAll(cocos2d::CCObject* sender);
    void onDeleteCustomItem(cocos2d::CCObject* sender) = win 0xe2e60;
    void onDeleteInfo(cocos2d::CCObject* sender);
    void onDeleteSelected(cocos2d::CCObject* sender) = win 0xe4d60;
    void onDeleteSelectedType(cocos2d::CCObject* sender) = win 0xe52f0, imac 0x327d0;
    void onDeleteStartPos(cocos2d::CCObject* sender) = win 0xe5340;
    void onDeselectAll(cocos2d::CCObject* sender) = win 0x10fd20, m1 0x2c870;
    void onDuplicate(cocos2d::CCObject* sender) = win 0x1113c0;
    void onEditColor(cocos2d::CCObject* sender) = win 0x11d090;
    void onFindObject(cocos2d::CCObject* sender);
    void onGoToBaseLayer(cocos2d::CCObject* sender) = win 0x112f20;
    void onGoToLayer(cocos2d::CCObject* sender) = win 0x112dc0;
    void onGroupDown(cocos2d::CCObject* sender) = win 0x11da70;
    void onGroupIDFilter(cocos2d::CCObject* sender) = win 0xe5a60;
    void onGroupSticky(cocos2d::CCObject* sender) = win 0x1110d0;
    void onGroupUp(cocos2d::CCObject* sender) = win 0x11da50;
    void onLockLayer(cocos2d::CCObject* sender) = win 0x11dbe0, m1 0x31fe4;
    void onNewCustomItem(cocos2d::CCObject* sender) = win 0xe2970, m1 0x308c8;
    void onPaste(cocos2d::CCObject* sender);
    void onPasteColor(cocos2d::CCObject* sender) = win 0x112cb0;
    void onPasteInPlace(cocos2d::CCObject* sender);
    void onPasteState(cocos2d::CCObject* sender) = win 0x112b20;
    void onPause(cocos2d::CCObject* sender) = win 0xe03b0, imac 0x2b2f0, m1 0x2b3cc;
    void onPlayback(cocos2d::CCObject* sender) = win 0x110370, imac 0xced0, m1 0xe0ec;
    void onPlaytest(cocos2d::CCObject* sender) = win 0x110980, imac 0xd130, m1 0xe300;
    void onResetSpecialFilter(cocos2d::CCObject* sender);
    void onSelectBuildTab(cocos2d::CCObject* sender) = imac 0x348a0;
    void onSettings(cocos2d::CCObject* sender) = win 0xe0350;
    void onStopPlaytest(cocos2d::CCObject* sender) = win 0x110d20, m1 0xe540;
    TodoReturn onTargetIDChange(int);
    void onToggleGuide(EffectGameObject*);
    TodoReturn onToggleSelectedOrder(EffectGameObject*);
    void onUngroupSticky(cocos2d::CCObject* sender);
    void onUpdateDeleteFilter(cocos2d::CCObject* sender);
    void orderDownCustomItem(cocos2d::CCObject*);
    void orderUpCustomItem(cocos2d::CCObject*);
    cocos2d::CCArray* pasteObjects(gd::string, bool, bool) = win 0x111cf0;
    TodoReturn playCircleAnim(cocos2d::CCPoint, float, float);
    TodoReturn playerTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn playerTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    void playtestStopped() = win 0x110d60, imac 0x3e510;
    TodoReturn positionIsInSnapped(cocos2d::CCPoint);
    TodoReturn positionWithoutOffset(GameObject*);
    TodoReturn processSelectObjects(cocos2d::CCArray*) = imac 0x3de10;
    TodoReturn processSmartObjectsFromType(int, cocos2d::CCArray*, cocos2d::CCArray*, cocos2d::CCArray*, cocos2d::CCArray*);
    void recreateButtonTabs();
    void redoLastAction(cocos2d::CCObject*) = win 0x110170;
    void reloadCustomItems() {
        GameManager* gm = GameManager::sharedState();
        int buttonsPerRow = gm->getIntGameVariable("0049");
        int buttonRows = gm->getIntGameVariable("0050");
        cocos2d::CCArray* customItems = createCustomItems();
        m_buttonBar->loadFromItems(customItems,buttonsPerRow,buttonRows,true);
    }
    void removeOffset(GameObject*) = win 0x120c90;
    TodoReturn replaceGroupID(GameObject*, int, int);
    void repositionObjectsToCenter(cocos2d::CCArray*, cocos2d::CCPoint, bool) = win 0x112a00;
    void resetObjectEditorValues(cocos2d::CCArray*);
    TodoReturn resetSelectedObjectsColor();
    void resetUI() = win 0xe36b0, imac 0x2b1e0, m1 0x2b2b8;
    void rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint) = win 0x11f490, imac 0x3c960;
    TodoReturn rotationforCommand(EditCommand);
    void scaleObjects(cocos2d::CCArray*, float, float, cocos2d::CCPoint, ObjectScaleType, bool) = win 0x11f8b0;
    void selectAll();
    void selectAllWithDirection(bool) = imac 0x3def0;
    void selectBuildTab(int) = win 0x112f70, imac 0x348d0;
    void selectObject(GameObject*, bool) = win 0x10ee30, imac 0x2f1c0, m1 0x2e9c0;
    void selectObjects(cocos2d::CCArray*, bool) = win 0x10f120, imac 0x3cdc0, m1 0x37894;
    void selectObjectsInRect(cocos2d::CCRect);
    void setupCreateMenu() = win 0xe68f0, imac 0xe4b0, m1 0xf57c;
    void setupDeleteMenu() = win 0xe38b0, m1 0xe768;
    void setupEditMenu() = win inline, m1 0x2b280 {
        this->createMoveMenu();
        this->updateEditMenu();
    }
    TodoReturn setupTransformControl();
    bool shouldDeleteObject(GameObject*) = win 0xe4c30, imac 0x332d0;
    TodoReturn shouldSnap(GameObject*);
    void showDeleteConfirmation();
    void showLiveColorSelectForMode(int);
    void showLiveColorSelectForModeSpecial(int);
    void showMaxBasicError();
    void showMaxCoinError();
    void showMaxError() = win 0x111150;
    void showUI(bool) = win 0x1101e0;
    void sliderChanged(cocos2d::CCObject*) = win 0xe1380, imac 0xc2f0;
    TodoReturn smartTypeForKey(int);
    cocos2d::CCSprite* spriteFromObjectString(gd::string str, bool, bool, int objLimit, cocos2d::CCArray*, cocos2d::CCArray*, GameObject*) = win 0x10c770;
    TodoReturn toggleDuplicateButton();
    void toggleEditObjectButton() = win 0x118ef0;
    void toggleEnableRotate(cocos2d::CCObject*) = win 0x10eae0;
    void toggleFreeMove(cocos2d::CCObject*);
    TodoReturn toggleLockUI(bool);
    void toggleMode(cocos2d::CCObject*) = win 0xe37d0, imac 0x2b4a0, m1 0x2b54c;
    TodoReturn toggleObjectInfoLabel() = win 0xe1710;
    void toggleSnap(cocos2d::CCObject*) = win 0x10ea00;
    TodoReturn toggleSpecialEditButtons();
    void toggleStickyControls(bool enable) = win inline, imac 0x2db20, m1 0x2d418 {
        m_stickyControlsEnabled = enable;
        m_linkBtn->setEnabled(enable);
              m_linkBtn->setVisible(enable);
              m_unlinkBtn->setEnabled(enable);
              m_unlinkBtn->setVisible(enable);
    }
    void toggleSwipe(cocos2d::CCObject*);
    void transformObject(GameObject*, EditCommand, bool) = win 0x11ece0, imac 0x4c3c0;
    void transformObjectCall(cocos2d::CCObject*) = win 0x11e790;
    void transformObjectCall(EditCommand) = win 0x11e790, imac 0x4b3a0, m1 0x43fc0;
    void transformObjects(cocos2d::CCArray* objs, cocos2d::CCPoint anchor, float scaleX, float scaleY, float rotateX, float rotateY, float warpX, float warpY) = win 0x11fea0;
    TodoReturn transformObjectsActive();
    TodoReturn transformObjectsReset();
    TodoReturn triggerSwipeMode();
    TodoReturn tryUpdateTimeMarkers();
    void undoLastAction(cocos2d::CCObject*) = win 0x110100;
    void updateButtons() = win 0xe07c0;
    void updateCreateMenu(bool) = win 0x10d8a0, m1 0x2e4dc;
    void updateDeleteButtons() = win 0xe5f90, m1 0x3208c;
    void updateDeleteMenu() {
        m_deleteMenu->setVisible(m_selectedMode == 1);
    }
    TodoReturn updateEditButtonColor(int, cocos2d::ccColor3B) = imac 0x3f6b0;
    TodoReturn updateEditColorButton() = imac 0x49d80;
    void updateEditMenu() {
        m_editButtonBar->setVisible(m_selectedMode == 3);
    }
    void updateGridNodeSize() = win 0xe1540, imac 0x2fbb0, m1 0x2f3f8;
    TodoReturn updateGridNodeSize(int);
    TodoReturn updateGroupIDBtn2();
    void updateGroupIDLabel() = imac 0x2d260;
    void updateObjectInfoLabel() = win 0xe17a0, m1 0x2f600;
    TodoReturn updatePlaybackBtn() = imac 0x2db80;
    TodoReturn updateSlider() = win 0xe1480;
    TodoReturn updateSpecialUIElements();
    void updateZoom(float) = win 0x110ed0, m1 0x38f0c;
    float valueFromXPos(float);
    float xPosFromValue(float);
    void zoomGameLayer(bool);
    void zoomIn(cocos2d::CCObject*) = win 0x110e30, imac 0xd470;
    void zoomOut(cocos2d::CCObject*) = win 0x110e80, imac 0xd4c0;

    virtual void draw() = win 0x121100, imac 0x4ed60, m1 0x467f4;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x121c40, imac 0x4f820, m1 0x471dc;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x1222c0, imac 0x4fe40, m1 0x477b8;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x122a10, imac 0x503f0, m1 0x47ce0;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x50d10, m1 0x4848c;
    virtual void registerWithTouchDispatcher() = win 0x9b1a0, imac 0x50d50, m1 0x484a8;
    virtual void keyBackClicked() = win 0x1130c0, imac 0x3f680, m1 0x39f40;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x123750, imac 0x50d90, m1 0x484e0;
    virtual TodoReturn getUI() = win 0xdd8f0, imac 0x54c50, m1 0x93bc;
    virtual void setIDPopupClosed(SetIDPopup*, int) = win 0xe5560, imac 0x33d60, m1 0x3322c;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xe5370, imac 0x33bd0, m1 0x3305c;
    virtual void updateTransformControl() = win 0x113b40, imac 0x410e0, m1 0x3b6b4;
    virtual void transformChangeBegin() = win 0x114030, imac 0x41a80, m1 0x3bf6c;
    virtual void transformChangeEnded() = imac 0x41b60, m1 0x3c018 {}
    virtual TodoReturn getTransformNode() = win 0xdd900, imac 0x54c60, m1 0x4ba50;
    virtual void transformScaleXChanged(float) = win 0x11fc80, imac 0x4d590, m1 0x452b8;
    virtual void transformScaleYChanged(float) = win 0x11fca0, imac 0x4d7a0, m1 0x45480;
    virtual void transformScaleXYChanged(float, float) = win 0x11fcc0, imac 0x4d900, m1 0x455b4;
    virtual void transformSkewXChanged(float) = win 0x11fce0, imac 0x4da70, m1 0x456ec;
    virtual void transformSkewYChanged(float) = win 0x11fd00, imac 0x4dbd0, m1 0x45820;
    virtual void transformRotationXChanged(float) = win 0x11fd20, imac 0x4dd30, m1 0x45954;
    virtual void transformRotationYChanged(float) = win 0x11fd40, imac 0x4de90, m1 0x45a88;
    virtual void transformRotationChanged(float) = win 0x11fd60, imac 0x4dff0, m1 0x45bbc;
    virtual void transformResetRotation() = win 0x11fd80, imac 0x4e160, m1 0x45cf4;
    virtual void transformRestoreRotation() = win 0x11fdb0, imac 0x4e250, m1 0x45dac;
    virtual void songStateChanged() = win 0x110970, imac 0x3e4e0, m1 0x38e40;
    virtual void colorSelectClosed(cocos2d::CCNode*) = win 0x11dcb0, imac 0x4ab30, m1 0x43824;
    virtual void keyUp(cocos2d::enumKeyCodes) = win 0x1249e0, imac 0x51eb0, m1 0x491c4;
    virtual void scrollWheel(float, float) = win 0x124a20, imac 0x51f50, m1 0x4923c;
    virtual void angleChangeBegin() = win 0x121540, imac 0x4ee40, m1 0x468cc;
    virtual void angleChangeEnded() = imac 0x4ee80, m1 0x468e8 {}
    virtual void angleChanged(float) = win 0x121550, imac 0x4eea0, m1 0x468f0;
    virtual void updateScaleControl() = win 0x113530, imac 0x3fad0, m1 0x3a340;
    virtual void anchorPointMoved(cocos2d::CCPoint) = win 0x114040, m1 0x3c020, imac 0x41b80;
    virtual void scaleChangeBegin() = win 0x113690, imac 0x40200, m1 0x3a988;
    virtual void scaleChangeEnded() = imac 0x40240, m1 0x3a9a4 {}
    virtual void scaleXChanged(float, bool) = win 0x1136a0, m1 0x3a9ac, imac 0x40260;
    virtual void scaleYChanged(float, bool) = win 0x113750, m1 0x3afe4, imac 0x409d0;
    virtual void scaleXYChanged(float, float, bool) = win 0x113800, imac 0x40b20, m1 0x3b128;


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
    cocos2d::CCDictionary* m_editButtonDict;
    EditButtonBar* m_createButtonBar;
    EditButtonBar* m_editButtonBar;
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

    cocos2d::CCArray* m_selectedObjects;

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
    int m_selectedMode;
    LevelEditorLayer* m_editorLayer;
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

    static EditTriggersPopup* create(EffectGameObject*, cocos2d::CCArray*);

    bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x287490, m1 0x2320cc;

    virtual void determineStartValues() = imac 0x289330, m1 0x2323ac;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x289340, m1 0x2323b0;
}

[[link(android)]]
class EffectGameObject : EnhancedGameObject {
    // virtual ~EffectGameObject();
    // EffectGameObject() = imac 0x1edce0;

    static EffectGameObject* create(char const*) = m1 0x16a4cc;

    TodoReturn getTargetColorIndex();
    bool init(char const*);
    TodoReturn playTriggerEffect() = win 0x48d170;
    TodoReturn resetSpawnTrigger();
    void setTargetID(int);
    void setTargetID2(int);
    TodoReturn triggerEffectFinished();
    TodoReturn updateInteractiveHover(float);
    TodoReturn updateSpecialColor();
    TodoReturn updateSpeedModType() = win 0x492ed0;

    virtual void setOpacity(unsigned char) = win 0x48d650, imac 0x1a8ae0, m1 0x16a868;
    virtual void firstSetup() = win 0x48fe70, imac 0x1aa860, m1 0x16bcd4;
    virtual void customSetup() = win 0x48fe90, m1 0x14e490, imac 0x186b90;
    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x48d690, imac 0x1a8b60, m1 0x16a8ec;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = win 0x4900f0, m1 0x14f9a8, imac 0x187dd0;
    virtual gd::string getSaveString(GJBaseGameLayer*) = win 0x493170, imac 0x17c710, m1 0x1467c8;
    virtual void setRScaleX(float) = imac 0x1a8770, m1 0x16a570;
    virtual void setRScaleY(float) = imac 0x1a8790, m1 0x16a580;
    virtual void triggerActivated(float) = imac 0x1aa7f0, m1 0x16bc4c;
    virtual void restoreObject() = imac 0x1aa5b0, m1 0x16b9fc;
    virtual float spawnXPosition() = imac 0x1aa7b0, m1 0x16bc0c;
    virtual bool canReverse() = imac 0x1aa940, m1 0x16be50;
    virtual bool isSpecialSpawnObject() = imac 0x1aa9b0, m1 0x16bedc;
    virtual bool canBeOrdered() = imac 0x1aa9c0, m1 0x16bee4;
    virtual cocos2d::CCLabelBMFont* getObjectLabel() = imac 0x1e22b0, m1 0x199f08;
    virtual void setObjectLabel(cocos2d::CCLabelBMFont*) = imac 0x1e22c0, m1 0x199f10;
    virtual TodoReturn stateSensitiveOff(GJBaseGameLayer*) = imac 0x1aa520, m1 0x16b970;

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
    bool m_isDirectionFollowSnap360;
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
    TouchToggleMode m_touchToggleMode;
    // property 198
    int m_touchPlayerMode;
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
    gd::unordered_map<int,int> m_unorderedMapInt_int;
    gd::unordered_map<int,bool> m_unorderedMapInt_bool;
    gd::vector<GroupCommandObject2> m_vectorGroupCommandObject2;
    gd::unordered_map<int,std::pair<double,double>> m_unorderedMapInt_pair_double_double;
    gd::unordered_set<int> m_unorderedSet_int2;
    gd::unordered_map<int,TimerItem> m_unorderedMapInt_TimerItem;
    gd::unordered_map<int,gd::vector<TimerTriggerAction>> m_unorderedMapInt_vectorTimerTriggerAction;
}

[[link(android)]]
class EndLevelLayer : GJDropDownLayer {
    // virtual ~EndLevelLayer();
    // EndLevelLayer();

    static EndLevelLayer* create(PlayLayer* playLayer);

    TodoReturn coinEnterFinished(cocos2d::CCPoint) = win 0x134230;
    TodoReturn coinEnterFinishedO(cocos2d::CCObject*) = win 0x1341f0;
    TodoReturn currencyEnterFinished();
    TodoReturn diamondEnterFinished();
    TodoReturn getCoinString() = win 0x132d30;
    const char* getEndText() = win 0x135190;
    void goEdit() = win 0x1336e0;
    bool init(PlayLayer* playLayer);
    void onEdit(cocos2d::CCObject* sender) = win 0x1335e0;
    void onEveryplay(cocos2d::CCObject* sender);
    void onHideLayer(cocos2d::CCObject* sender) = win 0x1337b0, imac 0x4af010, m1 0x417dac;
    void onLevelLeaderboard(cocos2d::CCObject* sender) = win 0x132c30;
    void onMenu(cocos2d::CCObject* sender) = win 0x133460;
    void onReplay(cocos2d::CCObject* sender) = win 0x133250;
    void onRestartCheckpoint(cocos2d::CCObject* sender) = win 0x133890;
    void playCoinEffect(float) = win 0x133fb0, imac 0x4af5f0;
    void playCurrencyEffect(float) = win 0x134560;
    void playDiamondEffect(float) = win 0x1349f0;
    void playEndEffect() = win 0x134e80;
    void playStarEffect(float) = win 0x133ab0;
    TodoReturn starEnterFinished() = win 0x133e50;
    TodoReturn tryShowBanner(float);

    virtual void keyBackClicked() = win 0x133aa0, imac 0x4aff10, m1 0x418c24;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x135140, imac 0x4b06c0, m1 0x4193bc;
    virtual void customSetup() = win 0x131240, imac 0x4ace10, m1 0x415d5c;
    virtual void showLayer(bool) = win 0x133070, m1 0x417e94, imac 0x4af100;
    virtual void enterAnimFinished() = imac 0x4afe30, m1 0x418b78 {}
    virtual void keyUp(cocos2d::enumKeyCodes) = imac 0x4b0750, m1 0x419438 {}

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

    static EndPortalObject* create() = imac 0x389340;

    cocos2d::CCPoint getSpawnPos() = win 0x136560, m1 0x318f8c;
    void triggerObject(GJBaseGameLayer*) = m1 0x318ef8;
    TodoReturn updateColors(cocos2d::ccColor3B);
    void updateEndPos(bool) = win 0x1367d0, m1 0x31914c;

    virtual bool init() = imac 0x3893e0, m1 0x318b58;
    virtual void setPosition(cocos2d::CCPoint const&) = m1 0x318ff0, imac 0x3898e0;
    virtual void setVisible(bool) = imac 0x3899f0, m1 0x3190e8;

    cocos2d::CCSprite* m_gradientBar;
    bool m_flippedX;
    bool m_startPosHeightRelated;
}

[[link(android)]]
class EndTriggerGameObject : EffectGameObject {
    // virtual ~EndTriggerGameObject();

    static EndTriggerGameObject* create();

    virtual bool init() = imac 0x1ca6c0, m1 0x1868bc;
    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x4a4040, imac 0x1ca710, m1 0x18690c;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1cb4e0, m1 0x1874a4;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1ca7f0, m1 0x1869e8;

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
    bool init(char const*) = win 0x1a16e0;
    TodoReturn previewAnimateOnTrigger();
    TodoReturn refreshRotateAction();
    TodoReturn resetSyncedAnimation();
    TodoReturn resumeAudio();
    TodoReturn resumeAudioDelayed();
    TodoReturn setupAnimationVariables();
    TodoReturn triggerAnimation();
    TodoReturn updateRotateAction(float);
    TodoReturn updateState(int);
    void updateUserCoin() = win 0x1a3850, imac 0x5a9810;
    TodoReturn waitForAnimationTrigger();

    virtual void customSetup() = win 0x1a1ed0, imac 0x5b4380, m1 0x4ec984;
    virtual void resetObject() = win 0x1a1890, m1 0x4ec314, imac 0x5b3bb0;
    virtual void deactivateObject(bool) = m1 0x4edb00, imac 0x5b7230;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x5b3e90, m1 0x4ec5c8;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x5b7290, m1 0x4edb68;
    virtual void triggerActivated(float) = imac 0x5b3d20, m1 0x4ec440;
    virtual void restoreObject() = imac 0x5b3c50, m1 0x4ec390;
    virtual void animationTriggered() = imac 0x5b3df0, m1 0x4ec540;
    virtual void activatedByPlayer(PlayerObject*) = imac 0x5b3d30, m1 0x4ec44c;
    virtual bool hasBeenActivatedByPlayer(PlayerObject*) = imac 0x5b3d80, m1 0x4ec4ac;
    virtual bool hasBeenActivated() = imac 0x5b3dd0, m1 0x4ec520;
    virtual void saveActiveColors() = imac 0x5b3e10, m1 0x4ec550;
    virtual bool canAllowMultiActivate() = imac 0x5b38b0, m1 0x4ec21c;
    virtual bool getHasSyncedAnimation() = imac 0x1e2260, m1 0x199ee0;
    virtual bool getHasRotateAction() = imac 0x1e2270, m1 0x199ee8;
    virtual bool canMultiActivate(bool) = imac 0x5b3d00, m1 0x4ec41c;
    virtual TodoReturn powerOnObject(int) = imac 0x5b3c90, m1 0x4ec3c8;
    virtual TodoReturn powerOffObject() = imac 0x5b3cb0, m1 0x4ec3dc;
    virtual TodoReturn stateSensitiveOff(GJBaseGameLayer*) = imac 0x76f0, m1 0x93bc;
    virtual void updateSyncedAnimation(float, int) = win 0x1a4d10, imac 0x249f70, m1 0x1f8074;
    virtual TodoReturn updateAnimateOnTrigger(bool) = imac 0x24beb0, m1 0x1f9434;

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
    bool m_isNoMultiActivate;
    // property 99
    bool m_isMultiActivate;
    PAD = android32 0x4, win 0x4, android64 0x8, mac 0x8;
}

[[link(android)]]
class EnhancedTriggerObject : EffectGameObject {
    // virtual ~EnhancedTriggerObject();

    static EnhancedTriggerObject* create(char const*);

    bool init(char const*);

    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x16d8e0, imac 0x1ac940;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1abe50, m1 0x16cff0;
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
    void updateTransitions(float, GJBaseGameLayer*) = imac 0x5bb720, m1 0x4f1450;

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

    virtual void customSetup() = imac 0x186b00, m1 0x14e428;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x14e760, imac 0x186e40;
    virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x1409fc, imac 0x174e10;
}

[[link(android)]]
class EventLinkTrigger : EffectGameObject {
    // virtual ~EventLinkTrigger();

    static EventLinkTrigger* create();

    virtual bool init() = imac 0x1c0360, m1 0x17e04c;
    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = imac 0x1c03b0, m1 0x17e09c;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1c1280, m1 0x17ecd8;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1c0490, m1 0x17e170;
}

[[link(android)]]
class ExplodeItemNode : cocos2d::CCNode {
    // virtual ~ExplodeItemNode();

    static ExplodeItemNode* create(cocos2d::CCRenderTexture*);

    TodoReturn createSprites(int, int, float, float, float, float, float, float, cocos2d::ccColor4F, cocos2d::ccColor4F, bool);
    bool init(cocos2d::CCRenderTexture*);

    virtual void update(float) = imac 0x2030c0, m1 0x1b830c;

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

    virtual bool init() = imac 0x203440, m1 0x1b85f8;

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

    static ExtendedLayer* create() = win inline {
        auto ret = new ExtendedLayer();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual bool init() = win 0x3ec90, imac 0x3945a0, m1 0x322d10;
    virtual void setPosition(cocos2d::CCPoint const&) = win 0x3ecb0, m1 0x322d14, imac 0x3945b0;

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

    virtual bool init() = imac 0x7950, m1 0x95e0;
    virtual void firstLoad() = imac 0x7980, m1 0x9610;
}

[[link(android)]]
class FindBPMLayer : CreateGuidelinesLayer {
    // virtual ~FindBPMLayer();

    static FindBPMLayer* create(int);

    TodoReturn calculateBPM();
    bool init(int);

    virtual void onClose(cocos2d::CCObject* sender) = win 0x9b870, m1 0x4582d0, imac 0x4f7aa0;
    virtual TodoReturn playMusic() = win 0x9b6e0, m1 0x45813c, imac 0x4f7910;
    virtual TodoReturn registerTouch() = win 0x9b780, imac 0x4f79a0, m1 0x4581d8;
    virtual void onInfo(cocos2d::CCObject* sender) = imac 0x4f7a90, m1 0x4582cc {}
    virtual void onRecord(cocos2d::CCObject* sender) = win 0x9b4a0, m1 0x45805c, imac 0x4f7800;
    virtual TodoReturn recordingDidStop() = win 0x9b660, imac 0x4f7840, m1 0x458094;
}

[[link(android)]]
class FindObjectPopup : SetIDPopup {
    // virtual ~FindObjectPopup();

    static FindObjectPopup* create();

    void onFindObjectID(cocos2d::CCObject* sender) = win inline {
        m_unknownBool = !m_unknownBool;
    }

    virtual bool init() = imac 0x29a560, m1 0x241f08;

    bool m_unknownBool;
}

[[link(android)]]
class FLAlertLayer : cocos2d::CCLayerColor {
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
    ~FLAlertLayer() = win 0x517e0;

    static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, gd::string desc, char const* btn1, char const* btn2, float width, bool scroll, float height, float textScale) = win 0x51940, m1 0x3f56c4, imac 0x488270;
    static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, gd::string desc, char const* btn1, char const* btn2, float width) = win 0x51890, m1 0x3f5864, imac 0x488440;
    static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, gd::string desc, char const* btn1, char const* btn2) {
        return FLAlertLayer::create(delegate, title, desc, btn1, btn2, 300.0);
    }

    static FLAlertLayer* create(char const* title, const gd::string& desc, char const* btn) {
        return FLAlertLayer::create(nullptr, title, desc, btn, nullptr, 300.0);
    }

    void incrementForcePrio();
    bool init(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float, bool, float, float) = win 0x51b60, imac 0x4884f0, m1 0x3f592c;
    bool init(int) = win 0x51a50, imac 0x488f70;
    void onBtn1(cocos2d::CCObject* sender) = win 0x52940;
    void onBtn2(cocos2d::CCObject* sender) = win 0x529a0;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x52a00, imac 0x489320, m1 0x3f6694;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x52b50, imac 0x489560, m1 0x3f6944;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x52aa0, imac 0x489440, m1 0x3f67f4;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x52b10, imac 0x4894e0, m1 0x3f68b4;
    virtual void registerWithTouchDispatcher() = win 0x52d60, imac 0x489790, m1 0x3f6b78;
    virtual void keyBackClicked() = win 0x52880, imac 0x489200, m1 0x3f656c;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x52800, m1 0x3f64d0, imac 0x489150;
    virtual void show() = win 0x52b90, imac 0x4895e0, m1 0x3f69d4;
    // virtual void onEnter(); // only exists on armv7...

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

[[link(android), depends(FMODAudioState), depends(FMODSoundState), depends(FMODMusic), depends(FMODSound), depends(FMODQueuedEffect), depends(FMODQueuedMusic), depends(FMODSoundTween)]]
class FMODAudioEngine : cocos2d::CCNode {
    // virtual ~FMODAudioEngine();
    FMODAudioEngine() = win 0x530d0;
    static FMODAudioEngine* get() {
        return FMODAudioEngine::sharedEngine();
    }

    static FMODAudioEngine* sharedEngine() = win inline, imac 0x3ca000, m1 0x352a90 {
        auto** instancePtr = reinterpret_cast<FMODAudioEngine**>(geode::base::get() + 0x6a4e18);
        if (!*instancePtr) {
            *instancePtr = new FMODAudioEngine();
            (*instancePtr)->init();
        }
        return *instancePtr;
    }

    TodoReturn activateQueuedMusic(int);
    FMOD::Channel* channelForChannelID(int) = win 0x58480;
    TodoReturn channelForUniqueID(int);
    TodoReturn channelIDForUniqueID(int);
    TodoReturn channelLinkSound(int, FMODSound*);
    TodoReturn channelStopped(FMOD::Channel*, bool);
    TodoReturn channelUnlinkSound(int);
    void clearAllAudio() = win 0x552e0;
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
    TodoReturn fadeInBackgroundMusic(float) = imac 0x3d49d0;
    void fadeInMusic(float, int) = win 0x5c3c0;
    TodoReturn fadeMusic(float, int, float, float);
    void fadeOutMusic(float, int) = win 0x5c500, m1 0x35da6c;
    TodoReturn getActiveMusic(int);
    FMOD::Channel* getActiveMusicChannel(int musicChannel) = win inline, imac 0x3cf520 {
        // TODO: this might do other checks or whatever but i cant be bothered
        return m_channelIDToChannel[m_musicChannels[musicChannel].m_channelID];
    }
    float getBackgroundMusicVolume() = win inline {
        return m_musicVolume;
    }
    FMOD::ChannelGroup* getChannelGroup(int, bool) = win 0x56b20;
    float getEffectsVolume() {
        return m_sfxVolume;
    }
    gd::string getFMODStatus(int) = win 0x5cdb0, imac 0x3d8440, m1 0x35de10;
    float getMeteringValue();
    TodoReturn getMusicChannelID(int);
    unsigned int getMusicLengthMS(int channel) = win 0x5c330;
    TodoReturn getMusicTime(int);
    unsigned int getMusicTimeMS(int channel) = win 0x5c2d0;
    TodoReturn getNextChannelID();
    TodoReturn getTweenContainer(AudioTargetType);
    bool isAnyPersistentPlaying();
    bool isChannelStopping(int);
    bool isEffectLoaded(gd::string path);
    bool isMusicPlaying(gd::string path, int p1) = win 0x59ee0, imac 0x3d4bb0, m1 0x35afdc;
    bool isMusicPlaying(int channel) = win 0x59d00, imac 0x3d4a80, m1 0x35aed0;
    bool isPersistentMatchPlaying(gd::string, int);
    bool isSoundReady(FMOD::Sound* sound);
    TodoReturn lengthForSound(gd::string path);
    TodoReturn loadAndPlayMusic(gd::string, unsigned int, int);
    TodoReturn loadAudioState(FMODAudioState&);
    void loadMusic(gd::string path, float speed, float p2, float volume, bool shouldLoop, int p5, int p6) = win 0x5a280, m1 0x356590, imac 0x3ceed0;
    void loadMusic(gd::string path) {
        this->loadMusic(path, 1.f, 0.f, 1.f, false, 0, 0);
    }
    TodoReturn loadMusic(gd::string, float, float, float, bool, int, int, bool);
    void pauseAllAudio() = win inline, imac 0x3cb420, m1 0x353c28 {
        if (m_allAudioPaused) return;
        m_allAudioPaused = true;
        m_backgroundMusicChannel->setPaused(true);
        m_globalChannel->setPaused(true);
    }
    void pauseAllEffects() {
        m_globalChannel->setPaused(true);
    }
    void pauseAllMusic(bool);
    TodoReturn pauseEffect(unsigned int);
    void pauseMusic(int musicChannel) = win inline {
        auto* channel = this->getActiveMusicChannel(musicChannel);
        if (channel)
            channel->setPaused(true);
    }
    TodoReturn pitchForIdx(int);
    void playEffect(gd::string path, float speed, float p2, float volume) = win 0x56e10;
    void playEffect(gd::string path) = win 0x56d90;
    void playEffectAdvanced(gd::string path, float speed, float p2, float volume, float pitch, bool fastFourierTransform, bool reverb, int startMillis, int endMillis, int fadeIn, int fadeOut, bool loopEnabled, int p12, bool override, bool p14, int p15, int uniqueID, float minInterval, int sfxGroup) = win 0x56f00;
    TodoReturn playEffectAsync(gd::string path);
    void playMusic(gd::string path, bool shouldLoop, float fadeInTime, int channel) = win 0x5a110;
    FMODSound& preloadEffect(gd::string path) = win 0x59260, m1 0x3532f0;
    void preloadEffectAsync(gd::string path);
    TodoReturn preloadMusic(gd::string path, bool p1, int p2);
    TodoReturn printResult(FMOD_RESULT);
    TodoReturn queuedEffectFinishedLoading(gd::string);
    TodoReturn queuePlayEffect(gd::string, float, float, float, float, bool, bool, int, int, int, int, bool, int, bool, int, float, int) = win 0x57920;
    TodoReturn queueStartMusic(gd::string audioFilename, float, float, float, bool, int ms, int, int, int, int, bool, int, bool, bool);
    TodoReturn registerChannel(FMOD::Channel*, int, int);
    void releaseRemovedSounds();
    void resumeAllAudio() = win inline, imac 0x3cb470, m1 0x353c74 {
        if (!m_allAudioPaused) return;
        m_allAudioPaused = false;
        m_backgroundMusicChannel->setPaused(false);
        m_globalChannel->setPaused(false);
    }
    void resumeAllEffects() = win inline {
        m_globalChannel->setPaused(false);
    }
    void resumeAllMusic() = win 0x59e80, imac 0x3d4b50, m1 0x35af88;
    void resumeAudio() = win inline, imac 0x3cb2e0, m1 0x353aec {
        this->start();
    }
    void resumeEffect(unsigned int) {}
    void resumeMusic(int musicChannel) = win inline {
        auto* channel = this->getActiveMusicChannel(musicChannel);
        if (channel)
            channel->setPaused(false);
    }
    TodoReturn reverbToString(FMODReverbPreset);
    TodoReturn saveAudioState(FMODAudioState&) = win 0x558f0;
    void setBackgroundMusicVolume(float volume) = win inline, imac 0x3d4a20, m1 0x35ae9c {
        m_musicVolume = volume;
        if (m_backgroundMusicChannel) m_backgroundMusicChannel->setVolume(volume);
    }
    void setChannelPitch(int, AudioTargetType, float);
    void setChannelVolume(int, AudioTargetType, float) = imac 0x3d10d0;
    void setChannelVolumeMod(int, AudioTargetType, float) = win 0x58f80;
    void setEffectsVolume(float volume) = win inline, imac 0x3d4a60 {
        m_sfxVolume = volume;
        if (m_globalChannel) m_globalChannel->setVolume(volume);
    }
    void setMusicTimeMS(unsigned int, bool, int);
    void setup() = win 0x53bc0, m1 0x352c78;
    void setupAudioEngine() = win 0x540a0, imac 0x3ca800;
    void start() = win 0x55280;
    TodoReturn startMusic(int, int, int, int, bool, int, bool, bool);
    void stop();
    void stopAllEffects() = win 0x598b0, m1 0x353d68;
    void stopAllMusic(bool);
    TodoReturn stopAndGetFade(FMOD::Channel*);
    TodoReturn stopAndRemoveMusic(int);
    void stopChannel(FMOD::Channel*, bool, float) = win 0x58810;
    TodoReturn stopChannel(int, AudioTargetType, bool, float);
    TodoReturn stopChannel(int);
    TodoReturn stopChannelTween(int, AudioTargetType, AudioModType);
    TodoReturn stopChannelTweens(int, AudioTargetType);
    TodoReturn stopMusic(int);
    TodoReturn stopMusicNotInSet(std::unordered_set<int, std::hash<int>, std::equal_to<int>, std::allocator<int> >&);
    TodoReturn storeEffect(FMOD::Sound* sound, gd::string path) = win 0x59510;
    TodoReturn swapMusicIndex(int, int);
    TodoReturn testFunction(int);
    TodoReturn triggerQueuedMusic(FMODQueuedMusic);
    TodoReturn unloadAllEffects() = win 0x59aa0;
    TodoReturn unloadEffect(gd::string path);
    TodoReturn unregisterChannel(int);
    void updateBackgroundFade();
    TodoReturn updateChannel(int, AudioTargetType, AudioModType, float, float);
    TodoReturn updateChannelTweens(float) = imac 0x3cd3b0;
    void updateMetering();
    void updateQueuedEffects() = win 0x5aec0;
    void updateQueuedMusic();
    void updateReverb(FMODReverbPreset, bool) = win 0x54400, imac 0x3cade0;
    void updateTemporaryEffects() = win 0x5b410, imac 0x3cc9b0;
    TodoReturn waitUntilSoundReady(FMOD::Sound*);

    virtual void update(float) = win 0x55390, m1 0x3543cc, imac 0x3cc2f0;

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
    bool m_allAudioPaused;
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

    static FMODLevelVisualizer* create() = win 0x297030;

    void updateVisualizer(float, float, float) = win 0x297570, imac 0x29d9f0, m1 0x245038;

    virtual bool init() = imac 0x29d5b0, m1 0x244bc8;

    float m_width;
}

class FMODMusic {
    int m_channelID;
    void* m_unk; // something allocated in fmod, dont know which class though
    gd::string m_filePath;
    // there might be other things, hard to know the size
}

[[link(android)]]
class FMODQueuedEffect {
    PAD = win 0x70, android32 0x48, android64 0x58;
}

[[link(android)]]
class FollowRewardPage : FLAlertLayer, FLAlertLayerProtocol, GameRateDelegate, RewardedVideoDelegate {
    // virtual ~FollowRewardPage();

    static FollowRewardPage* create() = win 0x137fc0, m1 0x389918;

    void onClose(cocos2d::CCObject* sender);
    void onRewardedVideo(cocos2d::CCObject* sender) = m1 0x38b354;
    void onSpecialItem(cocos2d::CCObject* sender) = win 0x13a340, m1 0x38a984;
    void switchToOpenedState(CCMenuItemSpriteExtra*) = win 0x13b510, imac 0x40eaa0, m1 0x38af30;

    virtual bool init() = imac 0x40d390, m1 0x389a28;
    virtual void registerWithTouchDispatcher() = imac 0x40f540, m1 0x38b980;
    virtual void keyBackClicked() = imac 0x40f4d0, m1 0x38b904;
    virtual void show() = imac 0x40f2a0, m1 0x38b6ec;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x13b5f0, imac 0x40f420, m1 0x38b870;
    virtual void rewardedVideoFinished() = win 0x13a330, imac 0x40f280, m1 0x38b6dc;
    virtual void updateRate() = win 0x139e00, m1 0x38b014, imac 0x40eb70;

    cocos2d::CCArray* m_chests;
    bool m_videoPlaying;
}

[[link(android)]]
class FontObject : cocos2d::CCObject {
    // virtual ~FontObject();
    FontObject() {}

    static FontObject* createWithConfigFile(char const* p0, float p1) = win inline, imac 0x20edf0, m1 0x1c3360 {
        auto ret = new FontObject();
        if (ret->initWithConfigFile(p0, p1)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    int getFontWidth(int p0) = win inline, imac 0x20f8f0 {
        return m_hugeIntArray[p0];
    }
    bool initWithConfigFile(char const* p0, float p1) = win inline, imac 0x20ee60, m1 0x1c33d4 {
        this->parseConfigFile(p0, p1);
        return true;
    }
    void parseConfigFile(char const*, float) = win 0x3b620, imac 0x20ee70;

    std::array<int, 300> m_hugeIntArray;
}

[[link(android)]]
class ForceBlockGameObject : EffectGameObject {
    // virtual ~ForceBlockGameObject();

    static ForceBlockGameObject* create(char const*);

    TodoReturn calculateForceToTarget(GameObject*);
    bool init(char const*);

    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x193ff4, imac 0x1db250;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1da2d0, m1 0x193370;
}

[[link(android)]]
class FRequestProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, FriendRequestDelegate {
    // virtual ~FRequestProfilePage();

    static FRequestProfilePage* create(bool) = imac 0x779a10;

    TodoReturn deleteSelected();
    bool init(bool) = win 0x13be30;
    bool isCorrect(char const*);
    void loadPage(int);
    void onClose(cocos2d::CCObject* sender);
    void onDeleteSelected(cocos2d::CCObject* sender);
    void onNextPage(cocos2d::CCObject* sender);
    void onPrevPage(cocos2d::CCObject* sender);
    void onSentRequests(cocos2d::CCObject* sender);
    void onToggleAllObjects(cocos2d::CCObject* sender);
    void onUpdate(cocos2d::CCObject* sender);
    void setupCommentsBrowser(cocos2d::CCArray*) = win 0x13da30;
    TodoReturn untoggleAll();
    TodoReturn updateLevelsLabel();
    TodoReturn updatePageArrows();

    virtual void registerWithTouchDispatcher() = imac 0x77b2e0, m1 0x6900e8;
    virtual void keyBackClicked() = win 0x13d290, imac 0x77b2b0, m1 0x6900dc;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x13d070, imac 0x77b1d0, m1 0x68ffd8;
    virtual void onClosePopup(UploadActionPopup*) = win 0x13d2a0, imac 0x77b320, m1 0x690120;
    virtual void uploadActionFinished(int, int) = win 0x13d2f0, imac 0x77b390, m1 0x6901a8;
    virtual void uploadActionFailed(int, int) = win 0x13d460, imac 0x77b550, m1 0x690374;
    virtual TodoReturn loadFRequestsFinished(cocos2d::CCArray*, char const*) = win 0x13dbd0, imac 0x77b920, m1 0x690748;
    virtual TodoReturn loadFRequestsFailed(char const*, GJErrorCode) = win 0x13dc50, imac 0x77ba10, m1 0x690854;
    virtual void setupPageInfo(gd::string, char const*) = win 0x13dcf0, imac 0x77bb60, m1 0x6909b4;
    virtual TodoReturn forceReloadRequests(bool) = win 0x13dcd0, imac 0x77bb20, m1 0x690980;
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
    bool init(GJFriendRequest*) = imac 0x291c40;
    void loadFromGJFriendRequest(GJFriendRequest*);
    void onAccept(cocos2d::CCObject* sender);
    void onBlock(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    void onRemove(cocos2d::CCObject* sender);

    virtual void keyBackClicked() = win 0x28f830, imac 0x293080, m1 0x23b1dc;
    virtual void uploadActionFinished(int, int) = win 0x28f840, m1 0x23b2b8, imac 0x293170;
    virtual void uploadActionFailed(int, int) = win 0x28f9f0, imac 0x293350, m1 0x23b4b8;
    virtual void onClosePopup(UploadActionPopup*) = win 0x28fab0, imac 0x2934a0, m1 0x23b620;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x28fb10, imac 0x293610, m1 0x23b79c;
}

[[link(android)]]
class FriendsProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, UserListDelegate {
    // virtual ~FriendsProfilePage();

    static FriendsProfilePage* create(UserListType) = win 0x13e010, imac 0x6418a0, m1 0x56a4e8;

    bool init(UserListType type) = win 0x13e160, imac 0x641a30, m1 0x56a610;
    void onBlocked(cocos2d::CCObject* sender) = win 0x13ef50, m1 0x56ad30;
    void onClose(cocos2d::CCObject* sender) = win 0x13efe0, m1 0x56ac78;
    void onUpdate(cocos2d::CCObject* sender);
    void setupUsersBrowser(cocos2d::CCArray* users, UserListType type) = win 0x13e870, imac 0x6422d0, m1 0x56ae20;

    virtual void registerWithTouchDispatcher() = imac 0x6428f0, m1 0x56b42c;
    virtual void keyBackClicked() = win 0x13f0a0, imac 0x6428c0, m1 0x56b420;
    virtual void getUserListFinished(cocos2d::CCArray*, UserListType) = win 0x13ebd0, imac 0x642540, m1 0x56b0a4;
    virtual void getUserListFailed(UserListType, GJErrorCode) = win 0x13ed20, imac 0x642680, m1 0x56b1c0;
    virtual void userListChanged(cocos2d::CCArray*, UserListType) = imac 0x642790, m1 0x56b2f0;
    virtual void forceReloadList(UserListType) = win 0x13ed90, imac 0x6427d0, m1 0x56b30c;

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

    virtual bool init() = imac 0x2f9ab0, m1 0x292158;
    virtual void draw() = win 0x3cbf0, m1 0x29222c, imac 0x2f9b70;
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
    static GameLevelManager* get() {
        return GameLevelManager::sharedState();
    }
    static cocos2d::CCDictionary* responseToDict(gd::string, bool) = win 0x168140, m1 0x477d2c;
    // virtual ~GameLevelManager();

    static GameLevelManager* sharedState() = win 0x140b20, m1 0x4642dc;

    void acceptFriendRequest(int, int) = imac 0x53e8e0;
    int accountIDForUserID(int userID);
    void addDLToActive(char const*) = win 0x147a20;
    bool areGauntletsLoaded();
    void banUser(int);
    void blockUser(int);
    void cleanupDailyLevels() = win 0x1485e0;
    bool createAndGetAccountComments(gd::string, int);
    bool createAndGetCommentsFull(gd::string, int, bool);
    bool createAndGetLevelComments(gd::string, int);
    cocos2d::CCArray* createAndGetLevelLists(gd::string);
    cocos2d::CCArray* createAndGetLevels(gd::string);
    cocos2d::CCArray* createAndGetMapPacks(gd::string);
    cocos2d::CCArray* createAndGetScores(gd::string, GJScoreType);
    GJGameLevel* createNewLevel() = win 0x142800, imac 0x516670, m1 0x473b58;
    GJLevelList* createNewLevelList() = win 0x1432b0, m1 0x47481c;
    TodoReturn createPageInfo(int, int, int);
    GJSmartTemplate* createSmartTemplate();
    void dataLoaded(DS_Dictionary*) = win 0x149310, imac 0x525400, m1 0x48111c;
    void deleteAccountComment(int, int);
    void deleteComment(int, CommentType, int);
    bool deleteFriendRequests(int, cocos2d::CCArray*, bool);
    void deleteLevel(GJGameLevel*) = win 0x142fe0, imac 0x5170b0, m1 0x4744f8;
    void deleteLevelComment(int, int);
    void deleteLevelList(GJLevelList*) = win 0x143890, imac 0x517920, m1 0x474cbc;
    bool deleteSentFriendRequest(int) = imac 0x53deb0;
    void deleteServerLevel(int) = win 0x152350;
    void deleteServerLevelList(int);
    void deleteSmartTemplate(GJSmartTemplate*);
    void deleteUserMessages(GJUserMessage* message, cocos2d::CCArray* messages, bool isSender) = win 0x158f20, imac 0x607ce0, m1 0x4923a8;
    void downloadLevel(int, bool) = win 0x14fde0, m1 0x488ac8;
    void downloadUserMessage(int, bool);
    void encodeDataTo(DS_Dictionary*) = win 0x148e00, imac 0x524ed0, m1 0x480c60;
    void firstSetup();
    void followUser(int);
    GJFriendRequest* friendRequestFromAccountID(int);
    void friendRequestWasRemoved(int, bool);
    char const* getAccountCommentKey(int p0, int p1) {
        return cocos2d::CCString::createWithFormat("%i_%i", p0, p1)->getCString();
    }
    void getAccountComments(int accountID, int page, int total) = imac 0x539ad0;
    int getActiveDailyID(GJTimedLevelType);
    gd::string getActiveDailyID(bool, bool, bool, bool, bool, bool, bool, bool);
    GJSmartTemplate* getActiveSmartTemplate();
    cocos2d::CCArray* getAllSmartTemplates();
    cocos2d::CCDictionary* getAllUsedSongIDs();
    GJLevelList* getAllUsedSongIDs(int);
    gd::string getBasePostString() = win 0x14a4b0;
    bool getBoolForKey(char const* key) = win inline {
        return m_searchFilters->valueForKey(key)->boolValue();
    }
    gd::string getCommentKey(int ID, int page, int mode, CommentKeyType keytype) {
        return cocos2d::CCString::createWithFormat("comment_%i_%i_%i_%i", ID, page, mode, (int) keytype)->getCString();
    }
    TodoReturn getCompletedDailyLevels();
    TodoReturn getCompletedEventLevels(int, int);
    TodoReturn getCompletedGauntletDemons();
    TodoReturn getCompletedGauntletLevels();
    cocos2d::CCArray* getCompletedLevels(bool) = win 0x145860;
    TodoReturn getCompletedWeeklyLevels();
    int getDailyID(GJTimedLevelType);
    double getDailyTimer(GJTimedLevelType);
    char const* getDeleteCommentKey(int, int, int);
    char const* getDeleteMessageKey(int, bool);
    TodoReturn getDemonLevelsString();
    char const* getDescKey(int);
    TodoReturn getDifficultyStr(bool, bool, bool, bool, bool, bool, bool, bool);
    char const* getDiffKey(int);
    bool getDiffVal(int);
    gd::string getFolderName(int, bool) = win 0x148910, imac 0x524680, m1 0x4804d0;
    char const* getFriendRequestKey(bool, int);
    void getFriendRequests(bool, int, int);
    char const* getGauntletKey(int);
    void getGauntletLevels(int);
    void getGauntlets();
    TodoReturn getGauntletSearchKey(int);
    void getGauntletsearchKey(int);
    void getGJChallenges() = win 0x164ad0, m1 0x49bf60;
    void getGJDailyLevelState(GJTimedLevelType);
    void getGJRewards(int) = imac 0x5425e0;
    TodoReturn getGJSecretReward(gd::string);
    void getGJUserInfo(int) = win 0x157880, imac 0x5367b0, m1 0x4902c4;
    int getHighestLevelOrder() = imac 0x51ed80;
    int getIntForKey(char const* key) = win inline {
        return m_searchFilters->valueForKey(key)->intValue();
    }
    void getLeaderboardScores(char const*) = win 0x1554b0, m1 0x48e658;
    gd::string getLengthStr(bool, bool, bool, bool, bool, bool) = imac 0x528b80, m1 0x484300;
    const char * getLenKey(int len);
    bool getLenVal(int);
    void getLevelComments(int ID, int page, int total, int mode, CommentKeyType keytype) = win 0x159870, m1 0x492c24;
    const char* getLevelDownloadKey(int levelID, bool isGauntlet) {
        return cocos2d::CCString::createWithFormat("%i_%i", levelID, isGauntlet)->getCString();
    }
    const char* getLevelKey(int levelID) {
        return cocos2d::CCString::createWithFormat("%i", levelID)->getCString();
    }
    void getLevelLeaderboard(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = win 0x155ff0, imac 0x13c310;
    char const* getLevelLeaderboardKey(int, LevelLeaderboardType, LevelLeaderboardMode);
    char const* getLevelListKey(int);
    void getLevelLists(GJSearchObject*) = win 0x14e6e0;
    void getLevelSaveData() = win 0x14cd40;
    char const* getLikeAccountItemKey(LikeItemType, int, bool, int);
    char const* getLikeItemKey(LikeItemType, int, bool, int);
    GJGameLevel* getLocalLevel(int);
    GJGameLevel* getLocalLevelByName(gd::string);
    TodoReturn getLocalLevelList(int);
    int getLowestLevelOrder() = imac 0x51edc0;
    GJGameLevel* getMainLevel(int levelID, bool dontGetLevelString) = win 0x1423e0, m1 0x47359c;
    const char* getMapPackKey(int pack);
    void getMapPacks(GJSearchObject*) = win 0x14d470, imac 0x52ab10;
    char const* getMessageKey(int);
    char const* getMessagesKey(bool, int);
    void getNews();
    int getNextFreeTemplateID();
    gd::string getNextLevelName(gd::string);
    void getOnlineLevels(GJSearchObject*) = win 0x14bb70;
    char const* getPageInfo(char const*);
    char const* getPostCommentKey(int);
    const char * getRateStarsKey(int key);
    char const* getReportKey(int);
    GJGameLevel* getSavedDailyLevel(int) = win 0x146ba0;
    GJGameLevel* getSavedDailyLevelFromLevelID(int) = imac 0x5216a0, m1 0x47d768;
    GJMapPack* getSavedGauntlet(int);
    GJGameLevel* getSavedGauntletLevel(int);
    GJGameLevel* getSavedLevel(GJGameLevel*);
    GJGameLevel* getSavedLevel(int) = win 0x146ad0;
    GJLevelList* getSavedLevelList(int);
    cocos2d::CCArray* getSavedLevelLists(int);
    cocos2d::CCArray* getSavedLevels(bool, int) = win 0x145410, m1 0x47b09c;
    GJMapPack* getSavedMapPack(int);
    cocos2d::CCScene* getSearchScene(char const*) = imac 0x522ea0, m1 0x47eed0;
    int getSplitIntFromKey(char const*, int);
    TodoReturn getStarLevelsString();
    cocos2d::CCArray* getStoredLevelComments(char const*) = m1 0x494b40;
    cocos2d::CCArray* getStoredOnlineLevels(char const*) = win 0x147780, m1 0x47e3f0, imac 0x522460;
    cocos2d::CCArray* getStoredUserList(UserListType) = imac 0x53f830;
    GJUserMessage* getStoredUserMessage(int);
    GJUserMessage* getStoredUserMessageReply(int);
    double getTimeLeft(char const*, float) = win 0x147dd0;
    void getTopArtists(int page, int total);
    const char* getTopArtistsKey(int page) {
        return cocos2d::CCString::createWithFormat("topArtists_%i", page)->getCString();
    }
    char const* getUploadMessageKey(int);
    char const* getUserInfoKey(int);
    void getUserList(UserListType) = win 0x15ffa0, imac 0x540350, m1 0x49952c;
    void getUserMessages(bool, int, int);
    void getUsers(GJSearchObject*) = win 0x1571c0;
    void gotoLevelPage(GJGameLevel*) = win 0x1473c0, m1 0x47de5c;
    void handleIt(bool, gd::string, gd::string, GJHttpType) = win 0x140e00;
    void handleItDelayed(bool, gd::string, gd::string, GJHttpType);
    void handleItND(cocos2d::CCNode*, void*);
    bool hasDailyStateBeenLoaded(GJTimedLevelType) = imac 0x543a00, m1 0x49ca68;
    bool hasDownloadedLevel(int);
    bool hasDownloadedList(int);
    bool hasLikedAccountItem(LikeItemType, int, bool, int);
    bool hasLikedItem(LikeItemType, int, bool, int) = win 0x1623d0;
    bool hasLikedItemFullCheck(LikeItemType, int, int) = win 0x162340, imac 0x5415a0, m1 0x49a6dc;
    bool hasRatedDemon(int);
    bool hasRatedLevelStars(int);
    bool hasReportedLevel(int);
    void invalidateMessages(bool, bool);
    void invalidateRequests(bool, bool);
    void invalidateUserList(UserListType, bool) = win 0x160840, m1 0x499810;
    bool isDLActive(char const* tag);
    bool isFollowingUser(int) = win 0x148840;
    bool isTimeValid(char const*, float) = win 0x147c90;
    bool isUpdateValid(int id) = win inline {
        const char* str = cocos2d::CCString::createWithFormat("%i", id)->getCString();
    
        return this->isTimeValid(str, 3600.f);
    }
    int itemIDFromLikeKey(char const*);
    bool keyHasTimer(char const*);
    int levelIDFromCommentKey(char const*);
    int levelIDFromPostCommentKey(char const*);
    int likeFromLikeKey(char const*);
    void likeItem(LikeItemType, int, bool, int) = win 0x161270;
    void limitSavedLevels() = win 0x148090, imac 0x5747a0, m1 0x47f6a4;
    void makeTimeStamp(char const*) = win 0x147b90, imac 0x522330, m1 0x47e2a4;
    void markItemAsLiked(LikeItemType, int, bool, int);
    void markLevelAsDownloaded(int) = win 0x151510;
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
    void onDeleteCommentCompleted(gd::string response, gd::string tag);
    void onDeleteFriendRequestCompleted(gd::string response, gd::string tag);
    void onDeleteServerLevelCompleted(gd::string response, gd::string tag);
    void onDeleteServerLevelListCompleted(gd::string response, gd::string tag) = imac 0x514fe0;
    void onDeleteUserMessagesCompleted(gd::string response, gd::string tag);
    void onDownloadLevelCompleted(gd::string response, gd::string tag);
    void onDownloadUserMessageCompleted(gd::string response, gd::string tag);
    void onGetAccountCommentsCompleted(gd::string response, gd::string tag);
    void onGetFriendRequestsCompleted(gd::string response, gd::string tag) = win 0x15d510;
    void onGetGauntletsCompleted(gd::string response, gd::string tag);
    void onGetGJChallengesCompleted(gd::string response, gd::string tag) = imac 0x510ba0;
    void onGetGJDailyLevelStateCompleted(gd::string response, gd::string tag);
    void onGetGJRewardsCompleted(gd::string response, gd::string tag);
    TodoReturn onGetGJSecretRewardCompleted(gd::string, gd::string);
    void onGetGJUserInfoCompleted(gd::string response, gd::string tag);
    void onGetLeaderboardScoresCompleted(gd::string response, gd::string tag) = win 0x155b80, m1 0x4690b8;
    void onGetLevelCommentsCompleted(gd::string response, gd::string tag);
    void onGetLevelLeaderboardCompleted(gd::string response, gd::string tag);
    void onGetLevelListsCompleted(gd::string response, gd::string tag) = win 0x14e970;
    void onGetLevelSaveDataCompleted(gd::string response, gd::string tag);
    void onGetMapPacksCompleted(gd::string response, gd::string tag) = win 0x14d680;
    void onGetNewsCompleted(gd::string response, gd::string tag);
    void onGetOnlineLevelsCompleted(gd::string response, gd::string tag) = win 0x14c3d0, m1 0x4671a4;
    void onGetTopArtistsCompleted(gd::string response, gd::string tag);
    void onGetUserListCompleted(gd::string response, gd::string tag);
    void onGetUserMessagesCompleted(gd::string response, gd::string tag);
    void onGetUsersCompleted(gd::string response, gd::string tag);
    void onLikeItemCompleted(gd::string response, gd::string tag);
    void onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = win 0x140d10;
    void onRateDemonCompleted(gd::string response, gd::string tag);
    void onRateStarsCompleted(gd::string response, gd::string tag);
    void onReadFriendRequestCompleted(gd::string response, gd::string tag);
    void onRemoveFriendCompleted(gd::string response, gd::string tag);
    void onReportLevelCompleted(gd::string response, gd::string tag);
    void onRequestUserAccessCompleted(gd::string response, gd::string tag);
    void onRestoreItemsCompleted(gd::string response, gd::string tag) = imac 0x50ccc0;
    void onSetLevelFeaturedCompleted(gd::string response, gd::string tag);
    void onSetLevelStarsCompleted(gd::string response, gd::string tag);
    void onSubmitUserInfoCompleted(gd::string response, gd::string tag);
    void onSuggestLevelStarsCompleted(gd::string response, gd::string tag);
    void onUnblockUserCompleted(gd::string response, gd::string tag);
    void onUpdateDescriptionCompleted(gd::string response, gd::string tag);
    void onUpdateLevelCompleted(gd::string response, gd::string tag);
    void onUpdateUserScoreCompleted(gd::string response, gd::string tag) = imac 0x50a760;
    void onUploadCommentCompleted(gd::string response, gd::string tag) = win 0x15bde0, imac 0x50b8d0;
    void onUploadFriendRequestCompleted(gd::string response, gd::string tag);
    void onUploadLevelCompleted(gd::string response, gd::string tag) = win 0x14b1a0;
    void onUploadLevelListCompleted(gd::string response, gd::string tag) = imac 0x514df0;
    void onUploadUserMessageCompleted(gd::string response, gd::string tag);
    int pageFromCommentKey(char const*);
    void parseRestoreData(gd::string);
    void performNetworkTest();
    void ProcessHttpRequest(gd::string endpoint, gd::string params, gd::string tag, GJHttpType httpType) = win 0x140b70, imac 0x505040, m1 0x46474c;
    void processOnDownloadLevelCompleted(gd::string response, gd::string tag, bool) = win 0x150350;
    void purgeUnusedLevels() = win 0x148330;
    void rateDemon(int, int, bool);
    void rateStars(int, int);
    void readFriendRequest(int);
    TodoReturn removeDelimiterChars(gd::string, bool) = win 0x167f10;
    void removeDLFromActive(char const*);
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
    TodoReturn resetCommentTimersForAccountID(int);
    void resetCommentTimersForLevelID(int, CommentKeyType) = win 0x15c770, imac 0x53c530;
    void resetDailyLevelState(GJTimedLevelType) = imac 0x5439c0, m1 0x49ca38;
    void resetGauntlets();
    void resetStoredUserInfo(int id) = win inline {
        m_storedUserInfo->removeObjectForKey(id);
    }
    void resetStoredUserList(UserListType);
    void resetTimerForKey(char const*);
    void restoreItems();
    void saveFetchedLevelLists(cocos2d::CCArray* lists) = win inline {
        for (int i = 0; i < lists->count(); i++) {
            this->saveLevelList(static_cast<GJLevelList*>(lists->objectAtIndex(i)));
        }
    }
    void saveFetchedLevels(cocos2d::CCArray*) = imac 0x51b5e0, win 0x144960, m1 0x477fe8;
    void saveFetchedMapPacks(cocos2d::CCArray*);
    void saveGauntlet(GJMapPack*);
    void saveLevel(GJGameLevel*) = win 0x146d40, imac 0x5216f0;
    void saveLevelList(GJLevelList*) = win 0x14ee60;
    void saveLocalScore(int, int, int);
    void saveMapPack(GJMapPack*);
    void setActiveSmartTemplate(GJSmartTemplate*);
    void setBoolForKey(bool value, char const* key) = win inline {
        m_searchFilters->setObject(cocos2d::CCString::createWithFormat("%i", (int)value), key);
    }
    void setDiffVal(int, bool);
    void setFolderName(int, gd::string, bool) = imac 0x524830, m1 0x480674;
    void setIntForKey(int value, char const* key) = win inline {
        m_searchFilters->setObject(cocos2d::CCString::createWithFormat("%i", value), key);
    }
    void setLenVal(int, bool);
    void setLevelFeatured(int, int, bool);
    void setLevelStars(int, int, bool);
    int specialFromLikeKey(char const*);
    void storeCommentsResult(cocos2d::CCArray*, gd::string, char const*);
    void storeDailyLevelState(int, int, GJTimedLevelType) = imac 0x5438a0;
    void storeFriendRequest(GJFriendRequest*);
    void storeSearchResult(cocos2d::CCArray* levels, gd::string pageInfo, char const* searchKey) = win 0x147570, m1 0x47dfd8;
    void storeUserInfo(GJUserScore*);
    void storeUserMessage(GJUserMessage*);
    void storeUserMessageReply(int, GJUserMessage*);
    void storeUserName(int userID, int accountID, gd::string userName) = win 0x143ca0, m1 0x4755ec;
    void storeUserNames(gd::string usernameString) = imac 0x517a70, m1 0x474e34;
    void submitUserInfo();
    void suggestLevelStars(int, int, int);
    gd::string tryGetUsername(int) = win 0x144000, m1 0x475a18;
    CommentType typeFromCommentKey(char const*);
    LikeItemType typeFromLikeKey(char const*);
    void unblockUser(int);
    void unfollowUser(int) = imac 0x524180;
    void updateDescription(int, gd::string);
    void updateLevel(GJGameLevel*) = imac 0x52fa40;
    void updateLevelOrders() = win 0x145680, m1 0x47b3c8;
    void updateLevelRewards(GJGameLevel*) = win 0x144380, m1 0x475ecc;
    void updateSavedLevelList(GJLevelList*) = win 0x14ef40, m1 0x4878a8;
    void updateUsernames();
    void updateUserScore() = win 0x153790, m1 0x48c620;
    void uploadAccountComment(gd::string);
    void uploadComment(gd::string, CommentType, int, int);
    void uploadFriendRequest(int, gd::string);
    void uploadLevel(GJGameLevel*);
    void uploadLevelComment(int, gd::string, int);
    void uploadLevelList(GJLevelList*);
    void uploadUserMessage(int, gd::string, gd::string) = win 0x1588b0, m1 0x491dc4;
    int userIDForAccountID(int);
    GJUserScore* userInfoForAccountID(int);
    gd::string userNameForUserID(int) = win 0x143e80, m1 0x475860;
    TodoReturn verifyContainerOnlyHasLevels(cocos2d::CCDictionary*);
    void verifyLevelState(GJGameLevel*);
    gd::string writeSpecialFilters(GJSearchObject*) = win 0x14b8b0, imac 0x529300;

    virtual bool init() = win 0x142230, imac 0x515e60, m1 0x47348c;

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
    GJOnlineRewardDelegate* m_GJOnlineRewardDelegate;
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
class GameLevelOptionsLayer : GJOptionsLayer {
    // virtual ~GameLevelOptionsLayer();

    static GameLevelOptionsLayer* create(GJGameLevel*) = win 0x2992a0;

    bool init(GJGameLevel*) = imac 0x29f3e0, m1 0x246748;

    virtual void setupOptions() = win 0x299400, imac 0x29f440, m1 0x2467b0;
    virtual void didToggle(int) = win 0x299480, imac 0x29f4b0, m1 0x24681c;

    GJGameLevel* m_level;
}

[[link(android), depends(UIButtonConfig)]]
class GameManager : GManager {
    virtual ~GameManager() = win 0x177af0;
    // GameManager() = win 0x1721e0, ios 0x32eafc;

    static GameManager* get() {
        return GameManager::sharedState();
    }

    static GameManager* sharedState() = win 0x178480, m1 0x2f64e4, imac 0x363990;

    TodoReturn accountStatusChanged();
    int activeIconForType(IconType) = win 0x17ea70, imac 0x36da10, m1 0x2fef34;
    TodoReturn addCustomAnimationFrame(int, int, gd::string, gd::string);
    TodoReturn addDuplicateLastFrame(int);
    TodoReturn addGameAnimation(int, int, float, gd::string, gd::string, int);
    TodoReturn addIconDelegate(cocos2d::CCObject*, int);
    void addNewCustomObject(gd::string str) = win 0x1807d0, m1 0x3027f8;
    TodoReturn addToGJLog(cocos2d::CCString*);
    void applicationDidEnterBackground();
    TodoReturn applicationWillEnterForeground() = win 0x186bb0;
    TodoReturn calculateBaseKeyForIcons();
    TodoReturn canShowRewardedVideo();
    TodoReturn checkSteamAchievementUnlock();
    TodoReturn checkUsedIcons() = win 0x1811b0, imac 0x36bdf0;
    TodoReturn claimItemsResponse(gd::string);
    TodoReturn clearGJLog();
    cocos2d::ccColor3B colorForIdx(int) = win 0x17e330, imac 0x36cab0, m1 0x2fdee0;
    TodoReturn colorForPos(int);
    TodoReturn colorKey(int, UnlockType);
    bool completedAchievement(gd::string) = win 0x17a1d0, m1 0x2f885c;
    int countForType(IconType) = win 0x17ebe0, m1 0x2feff4;
    TodoReturn defaultFrameForAnimation(int);
    TodoReturn defaultYOffsetForBG2(int);
    TodoReturn didExitPlayscene() = imac 0x3786d0, m1 0x308b64;
    void doQuickSave();
    TodoReturn dpadConfigToString(UIButtonConfig&) = win 0x183350, imac 0x3743f0, m1 0x304e84;
    TodoReturn eventUnlockFeature(char const*);
    void fadeInMenuMusic() = win 0x178a90, imac 0x364230, m1 0x2f6e14;
    void fadeInMusic(gd::string) = win 0x178b80;
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

    const char* getBGTexture(int id) = win inline, imac 0x3709f0, m1 0x301bd4 {
        return cocos2d::CCString::createWithFormat(
            "game_bg_%02d_001.png",
            std::clamp(id, 1, 59)
        )->getCString();
    }

    LevelEditorLayer* getEditorLayer() {
        return m_levelEditorLayer;
    }

    void getFontFile(int) = imac 0x36ff90;
    TodoReturn getFontTexture(int);

    GJBaseGameLayer* getGameLayer() {
        return m_gameLayer;
    }
    bool getGameVariable(char const*) = win 0x1800f0, m1 0x2f6c8c, imac 0x3640d0;
    bool getGameVariableDefault(const char* key, bool defaultValue) {
        //helper function
        auto object = static_cast<cocos2d::CCString*>(m_valueKeeper->objectForKey(std::string("gv_") + key));
        if (object == nullptr)
            return defaultValue;
        return object->boolValue();
    }
    TodoReturn getGTexture(int) = imac 0x370a90;
    int getIconRequestID() {
        return m_iconRequestID++;
    }
    int getIntGameVariable(char const*) = win 0x1806f0, m1 0x3024b4, imac 0x371230;
    int getIntGameVariableDefault(const char* key, int defaultValue) {
        //helper function
        auto object = static_cast<cocos2d::CCString*>(m_valueKeeper->objectForKey(std::string("gv_") + key));
        if (object == nullptr)
            return defaultValue;
        return object->intValue();
    }
    gd::string getMenuMusicFile() = win 0x178700;
    TodoReturn getMGTexture(int);
    TodoReturn getNextUniqueObjectKey();
    TodoReturn getNextUsedKey(int, bool);
    TodoReturn getOrderedCustomObjectKeys() = imac 0x3713d0;
    int getPlayerBall() {
        return m_playerBall;
    }
    int getPlayerBird() {
        return m_playerBird;
    }
    int getPlayerColor() {
        return m_playerColor;
    }
    int getPlayerColor2() {
        return m_playerColor2;
    }
    int getPlayerDart() {
        return m_playerDart;
    }
    int getPlayerDeathEffect() {
        return m_playerDeathEffect;
    }

    int getPlayerFrame() {
        return m_playerFrame;
    }
    bool getPlayerGlow() {
        return m_playerGlow;
    }
    int getPlayerGlowColor() {
        return m_playerGlowColor;
    }
    int getPlayerJetpack() {
        return m_playerJetpack;
    }
    int getPlayerRobot() {
        return m_playerRobot;
    }
    int getPlayerShip() {
        return m_playerShip;
    }
    int getPlayerShipFire() {
        return m_playerShipFire;
    }
    int getPlayerSpider() {
        return m_playerSpider;
    }
    int getPlayerStreak() {
        return m_playerStreak;
    }
    int getPlayerSwing() {
        return m_playerSwing;
    }

    PlayLayer* getPlayLayer() {
        return m_playLayer;
    }
    TodoReturn getPracticeMusicFile();
    bool getUGV(char const*) = win 0x180480, imac 0x370fa0, m1 0x3021e8;
    TodoReturn getUnlockForAchievement(gd::string, int&, UnlockType&);
    TodoReturn groundHasSecondaryColor(int);
    TodoReturn iconAndTypeForKey(int, int&, int&);
    gd::string iconKey(int, IconType) = win 0x1792b0;
    UnlockType iconTypeToUnlockType(IconType) = win 0x1795c0;
    bool isColorUnlocked(int, UnlockType) = win 0x1798c0, imac 0x3654d0, m1 0x2f7ca0;
    bool isIconLoaded(int, int) = imac 0x36de80;
    bool isIconUnlocked(int, IconType) = win 0x1794e0, imac 0x364e60, m1 0x2f7780;
    TodoReturn itemPurchased(char const*);
    TodoReturn joinDiscord();
    void joinReddit();
    int keyForIcon(int iconIdx, int iconEnum) {
        return m_keyStartForIcon.at(iconEnum) + iconIdx - 1;
    }
    TodoReturn levelIsPremium(int, int);
    TodoReturn likeFacebook();
    void loadBackground(int) = win 0x17f880, imac 0x3701d0;
    void loadBackgroundAsync(int);

    void loadDeathEffect(int id) = win inline, imac 0x370050, m1 0x3011dc {
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

    TodoReturn loadDpadFromString(UIButtonConfig&, gd::string) = imac 0x3750d0, m1 0x305984;
    TodoReturn loadDPadLayout(int, bool);
    TodoReturn loadFont(int) = imac 0x36fef0;
    void loadGround(int) = win 0x17fc30, imac 0x3706b0;
    void loadGroundAsync(int);
    cocos2d::CCTexture2D* loadIcon(int, int, int) = win 0x17ecf0, imac 0x36ed80, m1 0x2ffeec;
    TodoReturn loadIconAsync(int, int, int, cocos2d::CCObject*);
    void loadMiddleground(int) = win 0x17f9e0, imac 0x3703a0;
    void loadMiddlegroundAsync(int);
    void loadVideoSettings() = imac 0x375b50;
    TodoReturn lockColor(int, UnlockType);
    TodoReturn lockIcon(int, IconType);
    TodoReturn logLoadedIconInfo();
    void openEditorGuide();
    void playMenuMusic() = win 0x178810, m1 0x2f6aac;
    TodoReturn playSFXTrigger(SFXTriggerGameObject*);
    TodoReturn prepareDPadSettings() = imac 0x375400;
    TodoReturn printGJLog();
    void queueReloadMenu() = imac 0x378f40;
    TodoReturn rateGame();
    void recountUserStats(gd::string);
    void reloadAll(bool switchingModes, bool toFullscreen, bool borderless, bool fix, bool unused) = win 0x187370, m1 0x309570, imac 0x379070;
    void reloadAll(bool switchingModes, bool toFullscreen, bool unused) {
        return this->reloadAll(switchingModes, toFullscreen, false, false, unused);
    }
    void reloadAllStep2() = win 0x187420, imac 0x379120, m1 0x309614;
    void reloadAllStep3();
    void reloadAllStep4();
    void reloadAllStep5() = win 0x187730, imac 0x379310, m1 0x3097ec;
    TodoReturn reloadMenu();
    TodoReturn removeCustomObject(int);
    TodoReturn removeIconDelegate(int);
    TodoReturn reorderKey(int, bool);
    void reportAchievementWithID(char const*, int, bool) = win 0x17afd0, imac 0x366dc0, m1 0x2f9558;
    void reportPercentageForLevel(int levelID, int percentage, bool isPlatformer) = win 0x17a5f0;
    TodoReturn resetAchievement(gd::string);
    TodoReturn resetAdTimer();
    TodoReturn resetAllIcons();
    TodoReturn resetCoinUnlocks();
    TodoReturn resetDPadSettings(bool);
    cocos2d::CCSize resolutionForKey(int) = win 0x187770, imac 0x379350;
    TodoReturn resumeAudio();
    TodoReturn resumeAudioDelayed();
    void returnToLastScene(GJGameLevel*) = win 0x186f10;
    TodoReturn rewardedVideoAdFinished(int);
    TodoReturn rewardedVideoHidden();
    TodoReturn rewardedVideoHiddenDelayed();
    // partially inlined on windows
    void safePopScene() = win 0x1872c0, m1 0x3093c4;
    TodoReturn saveAdTimer();
    TodoReturn saveDPadLayout(int, bool);
    void setGameVariable(char const*, bool) = win 0x17fe90, imac 0x370ae0, m1 0x301cb8;
    void setHasRatingPower(int);
    void setIntGameVariable(char const*, int) = win 0x1805f0, imac 0x371100;
    void setPlayerBall(int id) {
        m_playerBall = id;
    }
    void setPlayerBird(int id) {
        m_playerBird = id;
    }
    void setPlayerColor(int id) {
        m_playerColor = id;
    }
    void setPlayerColor2(int id) {
        m_playerColor2 = id;
    }
    void setPlayerColor3(int id) {
        m_playerGlowColor = id;
    }
    void setPlayerDart(int id) {
        m_playerDart = id;
    }
    void setPlayerDeathEffect(int id) {
        m_playerDeathEffect = id;
    }
    void setPlayerFrame(int id) {
        m_playerFrame = id;
    }
    void setPlayerGlow(bool v) {
        m_playerGlow = v;
    }
    void setPlayerJetpack(int id) {
        m_playerJetpack = id;
    }
    void setPlayerRobot(int id) {
        m_playerRobot = id;
    }
    void setPlayerShip(int id) {
        m_playerShip = id;
    }
    void setPlayerShipStreak(int id) {
        m_playerShipFire = id;
    }
    void setPlayerSpider(int id) {
        m_playerSpider = id;
    }
    void setPlayerStreak(int id) {
        m_playerStreak = id;
    }
    void setPlayerSwing(int id) {
        m_playerSwing = id;
    }
    void setPlayerUserID(int);
    void setUGV(char const*, bool) = win 0x180320, m1 0x302034;
    void setupGameAnimations() = win 0x1a8750;
    gd::string sheetNameForIcon(int, int) = win 0x17f470, imac 0x36e240, m1 0x2ff438;
    TodoReturn shortenAdTimer(float);
    TodoReturn shouldShowInterstitial(int, int, int);
    void showInterstitial();
    void showInterstitialForced();
    void showMainMenuAd();
    void startUpdate();
    gd::string stringForCustomObject(int customObjectID) = win 0x180950, imac 0x371700, m1 0x302998;
    TodoReturn subYouTube();
    TodoReturn switchCustomObjects(int, int);
    TodoReturn switchScreenMode(bool, bool, bool, bool);
    TodoReturn syncPlatformAchievements();
    void toggleGameVariable(char const*) = win 0x180270, imac 0x370d60, m1 0x301f4c;
    TodoReturn tryCacheAd();
    TodoReturn tryShowInterstitial(int, int, int);
    TodoReturn unloadBackground();
    void unloadIcon(int, int, int) = win 0x17f050, m1 0x300564;
    void unloadIcons(int);
    TodoReturn unlockColor(int, UnlockType);
    TodoReturn unlockedPremium();
    void unlockIcon(int, IconType);
    IconType unlockTypeToIconType(int) = win 0x1796e0, imac 0x365130;
    void updateCustomFPS() = win 0x187ba0, imac 0x379610;
    TodoReturn updateMusic();
    void verifyAchievementUnlocks() = m1 0x2f97a8;
    TodoReturn verifyCoinUnlocks();
    TodoReturn verifyStarUnlocks();
    TodoReturn verifySyncedCoins();
    TodoReturn videoAdHidden();
    TodoReturn videoAdShowed();
    virtual void update(float) = win 0x186b20, m1 0x308c10, imac 0x378760;
    virtual bool init() = win 0x1784d0, imac 0x3639f0, m1 0x2f6550;
    virtual void encodeDataTo(DS_Dictionary*) = win 0x185f30, imac 0x377b50, m1 0x308018;
    virtual void dataLoaded(DS_Dictionary*) = win 0x183950, imac 0x375c60, m1 0x3063f4;
    virtual void firstLoad() = win 0x185630, imac 0x3771f0, m1 0x3077d4;

    cocos2d::CCDictionary* m_unkAnimationDict;
    cocos2d::CCDictionary* m_unkAnimationDict2;
    cocos2d::CCDictionary* m_frameTimeForAnimation;
    cocos2d::CCDictionary* m_framesForAnimation;
    cocos2d::CCDictionary* m_defaultFrames;
    bool m_switchModes;
    bool m_toFullscreen;
    bool m_reloading;
    bool m_fix;
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
    GameObject() = win 0x135ba0;
    static GameObject* createWithFrame(char const* name) = win 0x18ab80, imac 0x58a320, m1 0x4d799c;
    static GameObject* createWithKey(int) = win 0x188730, imac 0x5857c0, m1 0x4d74d4;
    static GameObject* objectFromVector(gd::vector<gd::string>&, gd::vector<void*>&, GJBaseGameLayer*, bool) = win 0x19a140, m1 0x4e21a8;

    void addColorSprite(gd::string) = win 0x18b710;
    void addColorSpriteToParent(bool) = imac 0x5923a0;
    void addColorSpriteToSelf() = imac 0x5a60c0;
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
    void addToCustomScaleX(float);
    void addToCustomScaleY(float);
    void addToOpacityGroup(int);
    void addToTempOffset(double, double);
    void assignUniqueID() = imac 0x58a640;
    bool belongsToGroup(int);
    void calculateOrientedBox();
    bool canChangeCustomColor();
    bool canChangeMainColor();
    bool canChangeSecondaryColor();
    bool canRotateFree();
    cocos2d::ccColor3B colorForMode(int, bool);
    void commonInteractiveSetup();
    void commonSetup() = win 0x18ac50;
    void copyGroups(GameObject*) = win 0x1998a0, m1 0x4e0c5c;
    cocos2d::CCParticleSystemQuad* createAndAddParticle(int p0, char const* plistName, int p2, cocos2d::tCCPositionType positionType) = win 0x195a80, imac 0x59d810, m1 0x4dc928;
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
    void createSpriteColor(int) = imac 0x58a580, m1 0x4d7c14;
    void deselectObject();
    inline void destroyObject() {
        m_isDisabled = true;
        m_isDisabled2 = true;
        setOpacity(0);
    }
    void determineSlopeDirection() = win 0x199220, m1 0x4e0668;
    bool didScaleXChange();
    bool didScaleYChange();
    void dirtifyObjectPos();
    void dirtifyObjectRect();
    void disableObject() = imac 0x5a54a0;
    bool dontCountTowardsLimit();
    void duplicateAttributes(GameObject*);
    void duplicateColorMode(GameObject*);
    void duplicateValues(GameObject*) = win 0x19ed20;
    cocos2d::ccColor3B editorColorForCustomMode(int);
    cocos2d::ccColor3B editorColorForMode(int) = win 0x19df80;
    void fastRotateObject(float);
    cocos2d::ccColor3B getActiveColorForMode(int, bool) = imac 0x5b2950;
    char* getBallFrame(int);
    cocos2d::CCRect getBoundingRect();
    cocos2d::CCPoint getBoxOffset();
    gd::string getColorFrame(gd::string);
    int getColorIndex();
    gd::string getColorKey(bool, bool) = imac 0x412790;
    ZLayer getCustomZLayer();
    gd::string getGlowFrame(gd::string);
    bool getGroupDisabled();
    int getGroupID(int) = m1 0x4e0c3c;
    gd::string getGroupString();
    cocos2d::CCPoint const& getLastPosition();
    GJSpriteColor* getMainColor();
    int getMainColorMode();
    int getObjectDirection();
    float getObjectRadius();
    cocos2d::CCRect* getObjectRectPointer();
    ZLayer getObjectZLayer();
    int getObjectZOrder();
    cocos2d::CCRect getOuterObjectRect();
    int getParentMode();
    GJSpriteColor* getRelativeSpriteColor(int);
    cocos2d::CCPoint getScalePosDelta();
    GJSpriteColor* getSecondaryColor();
    int getSecondaryColorMode();
    float getSlopeAngle();
    cocos2d::CCPoint getUnmodifiedPosition();
    cocos2d::ccColor3B groupColor(cocos2d::ccColor3B const&, bool);
    float groupOpacityMod() = win 0x199c10, imac 0x5a70e0, m1 0x4e1694;
    void groupWasDisabled() = imac 0x5a6ac0;
    void groupWasEnabled();
    bool hasSecondaryColor();
    bool ignoreEditorDuration();
    bool ignoreEnter();
    bool ignoreFade();
    bool init(char const*) = m1 0x4d7a2c;
    bool isBasicEnterEffect(int);
    bool isBasicTrigger();
    bool isColorObject();
    bool isColorTrigger() = imac 0x5b30c0;
    bool isConfigurablePortal();
    bool isEditorSpawnableTrigger();
    bool isFacingDown() = win 0x19e870, m1 0x4ea858;
    bool isFacingLeft() = win 0x19e930, m1 0x4ea8e8;
    bool isSettingsObject() = imac 0x5b3730, m1 0x4ec090;
    bool isSpawnableTrigger();
    bool isSpecialObject();
    bool isSpeedObject() = imac 0x5b3190;
    bool isStoppableTrigger();
    bool isTrigger();
    void loadGroupsFromString(gd::string);
    TodoReturn makeInvisible();
    TodoReturn makeVisible();
    float opacityModForMode(int, bool);
    cocos2d::CCSpriteBatchNode* parentForZLayer(int, bool, int);
    gd::string perspectiveColorFrame(char const*, int);
    gd::string perspectiveFrame(char const*, int);
    void playDestroyObjectAnim(GJBaseGameLayer*) = win 0x1a7400, m1 0x1f9d08;
    void playPickupAnimation(cocos2d::CCSprite*, float, float, float, float, float, float, float, float, bool, float, float) = win 0x1a6f20;
    void playPickupAnimation(cocos2d::CCSprite*, float, float, float, float) = win 0x1a6e30;
    void playShineEffect() = win 0x196310, imac 0x5a54e0, m1 0x4df7a8;
    void quickUpdatePosition();
    void quickUpdatePosition2();
    void removeColorSprite();
    void removeGlow() = imac 0x58cc30;
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
    void setLastPosition(cocos2d::CCPoint const&) = imac 0x5b2b40;
    void setMainColorMode(int);
    void setSecondaryColorMode(int);
    void setupColorSprite(int, bool);
    void setupPixelScale();
    void setupSpriteSize();
    bool shouldBlendColor(GJSpriteColor*, bool);
    bool shouldLockX();
    bool shouldNotHideAnimFreeze();
    bool shouldShowPickupEffects();
    bool slopeFloorTop();
    bool slopeWallLeft();
    double slopeYPos(cocos2d::CCRect) = win 0x19e310;
    double slopeYPos(float) = win 0x19e310;
    double slopeYPos(GameObject*);
    void spawnDefaultPickupParticle(GJBaseGameLayer*);
    void updateBlendMode();
    void updateCustomColorType(short);
    void updateCustomScaleX(float);
    void updateCustomScaleY(float);
    void updateHSVState();
    void updateIsOriented() = win 0x19e690, imac 0x5b17d0, m1 0x4ea6a4;
    TodoReturn updateMainColor();
    void updateMainColorOnly();
    void updateMainOpacity();
    void updateObjectEditorColor() = win 0x19e250;
    TodoReturn updateSecondaryColor();
    void updateSecondaryColorOnly();
    void updateSecondaryOpacity();
    void updateStartPos() = imac 0x591b90;
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

    virtual void update(float) = imac 0x592760, m1 0x4d9ab8;
    virtual void setScaleX(float) = win 0x1951b0, imac 0x5a4380, m1 0x4de7fc;
    virtual void setScaleY(float) = win 0x195290, imac 0x5a4420, m1 0x4de89c;
    virtual void setScale(float) = win 0x195380, imac 0x5a44c0, m1 0x4de93c;
    virtual void setPosition(cocos2d::CCPoint const&) = win 0x194ac0, m1 0x4de224, imac 0x5a3e00;
    virtual void setVisible(bool) = win 0x195bb0, imac 0x5a4bc0, m1 0x4def84;
    virtual void setRotation(float) = win 0x194d60, imac 0x5a4070, m1 0x4de4c4;
    virtual void setRotationX(float) = win 0x194eb0, m1 0x4de5ac, imac 0x5a4140;
    virtual void setRotationY(float) = win 0x195000, m1 0x4de688, imac 0x5a4200;
    virtual void setOpacity(unsigned char) = win 0x195760, imac 0x5a4820, m1 0x4dec60;
    virtual bool initWithTexture(cocos2d::CCTexture2D*) = win 0x18ac10, imac 0x58a550, m1 0x4d7be0;
    virtual void setChildColor(cocos2d::ccColor3B const&) = win 0x19dd20, imac 0x5b0b10, m1 0x4e999c;
    virtual void setFlipX(bool) = win 0x195120, imac 0x5a42e0, m1 0x4de754;
    virtual void setFlipY(bool) = win 0x195160, imac 0x5a4330, m1 0x4de7a8;
    virtual void firstSetup() = imac 0x76f0, m1 0x93bc;
    virtual void customSetup() = win 0x18dd80, imac 0x592770, m1 0x4d9abc;
    virtual void setupCustomSprites(gd::string) = win 0x1abe60, imac 0x4306d0, m1 0x3ab3f4;
    virtual void addMainSpriteToParent(bool) = win 0x198cb0, imac 0x5a5ee0, m1 0x4e0380;
    virtual void resetObject() = win 0x18d630, imac 0x591c20, m1 0x4d90b0;
    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = imac 0x76f0, m1 0x93bc;
    virtual void activateObject() = win 0x18da40, imac 0x592240, m1 0x4d9574;
    virtual void deactivateObject(bool) = win 0x18daf0, imac 0x5925b0, m1 0x4d98f8;
    virtual void transferObjectRect(cocos2d::CCRect&) = win 0x1945b0, imac 0x5a3700, m1 0x4ddbf8;
    virtual cocos2d::CCRect const& getObjectRect() = win 0x194600, imac 0x5a3770, m1 0x4ddc70;
    virtual cocos2d::CCRect getObjectRect(float, float) = win 0x194620, imac 0x5a37a0, m1 0x4ddc84;
    virtual cocos2d::CCRect getObjectRect2(float, float) = win 0x1947b0, imac 0x5a39d0, m1 0x4dde68;
    virtual cocos2d::CCRect getObjectTextureRect() = win 0x194850, imac 0x5a3aa0, m1 0x4ddf2c;
    virtual cocos2d::CCPoint getRealPosition() = win 0x194a80, imac 0x5a3d40, m1 0x4de184;
    virtual void setStartPos(cocos2d::CCPoint) = win 0x18d4b0, m1 0x4d8f94, imac 0x591b10;
    virtual void updateStartValues() = win 0x18d880, m1 0x4d9404, imac 0x592070;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x76f0, m1 0x93bc;
    virtual gd::string getSaveString(GJBaseGameLayer*) = win 0x19bc30, imac 0x5a9920, m1 0x4e3dc0;
    virtual void claimParticle() = win 0x195cd0, imac 0x5a4d20, m1 0x4df0cc;
    virtual void unclaimParticle() = win 0x196200, m1 0x4df68c, imac 0x5a5360;
    virtual void particleWasActivated() = imac 0x5a53d0, m1 0x4df6f4;
    virtual bool isFlipX() = win 0x195100, imac 0x5a42c0, m1 0x4de744;
    virtual bool isFlipY() = win 0x195110, imac 0x5a42d0, m1 0x4de74c;
    virtual void setRScaleX(float) = win 0x195470, imac 0x5a4560, m1 0x4de9dc;
    virtual void setRScaleY(float) = win 0x1954b0, imac 0x5a45a0, m1 0x4dea10;
    virtual void setRScale(float) = win 0x1954f0, imac 0x5a45e0, m1 0x4dea44;
    virtual float getRScaleX() = win 0x195530, imac 0x5a4660, m1 0x4deac8;
    virtual float getRScaleY() = win 0x195570, imac 0x5a4690, m1 0x4deb00;
    virtual void setRRotation(float) = win 0x194cd0, imac 0x5a3ff0, m1 0x4de42c;
    virtual void triggerActivated(float) = imac 0x76f0, m1 0x93bc;
    virtual void setObjectColor(cocos2d::ccColor3B const&) = win 0x19d9e0, imac 0x5b0830, m1 0x4e9684;
    virtual void setGlowColor(cocos2d::ccColor3B const&) = win 0x19dcd0, imac 0x5b0ac0, m1 0x4e9944;
    virtual void restoreObject() = win 0x1962f0, imac 0x5a5410, m1 0x4df714;
    virtual void animationTriggered() = imac 0x76f0, m1 0x93bc;
    virtual void selectObject(cocos2d::ccColor3B) = win 0x19dda0, imac 0x5b0b80, m1 0x4e9a28;
    virtual void activatedByPlayer(PlayerObject*) = imac 0x76f0, m1 0x93bc;
    virtual bool hasBeenActivatedByPlayer(PlayerObject*) = imac 0x7700, m1 0x93c0;
    virtual bool hasBeenActivated() = imac 0x7700, m1 0x93c0;
    virtual OBB2D* getOrientedBox() = win 0x19e470, imac 0x5b15b0, m1 0x4ea48c;
    virtual void updateOrientedBox() = win 0x19e4d0, imac 0x5b1630, m1 0x4ea520;
    virtual float getObjectRotation() = win 0x19e450, imac 0x5b9d50, m1 0x4eff3c;
    virtual void updateMainColor(cocos2d::ccColor3B const&) = win 0x19eed0, imac 0x5b21f0, m1 0x4eaf3c;
    virtual void updateSecondaryColor(cocos2d::ccColor3B const&) = win 0x19eee0, imac 0x5b2700, m1 0x4eb444;
    virtual void addToGroup(int) = win 0x1996f0, imac 0x5a6610, m1 0x4e0ad0;
    virtual void removeFromGroup(int) = win 0x199810, imac 0x5a66c0, m1 0x4e0ba8;
    virtual void saveActiveColors() = win 0x19d830, imac 0x5b0670, m1 0x4e94cc;
    virtual float spawnXPosition() = win 0x135fe0, imac 0x1e20e0, m1 0x199d94;
    virtual bool canAllowMultiActivate() = imac 0x7700, m1 0x93c0;
    virtual void blendModeChanged() = imac 0x76f0, m1 0x93bc;
    virtual void updateParticleColor(cocos2d::ccColor3B const&) = win 0x19dbc0, imac 0x5b0a00, m1 0x4e987c;
    virtual void updateParticleOpacity(unsigned char) = win 0x195a00, imac 0x5a4b40, m1 0x4deefc;
    virtual void updateMainParticleOpacity(unsigned char) = imac 0x76f0, m1 0x93bc;
    virtual void updateSecondaryParticleOpacity(unsigned char) = imac 0x76f0, m1 0x93bc;
    virtual bool canReverse() = imac 0x7700, m1 0x93c0;
    virtual bool isSpecialSpawnObject() = imac 0x7700, m1 0x93c0;
    virtual bool canBeOrdered() = imac 0x7700, m1 0x93c0;
    virtual cocos2d::CCLabelBMFont* getObjectLabel() = imac 0x7700, m1 0x8d788;
    virtual void setObjectLabel(cocos2d::CCLabelBMFont*) = imac 0x76f0, m1 0x93bc;
    virtual bool shouldDrawEditorHitbox() = imac 0x5b3860, m1 0x4ec1d4;
    virtual bool getHasSyncedAnimation() = imac 0x7700, m1 0x93c0;
    virtual bool getHasRotateAction() = imac 0x7700, m1 0x93c0;
    virtual bool canMultiActivate(bool) = imac 0x7700, m1 0x93c0;
    virtual void updateTextKerning(int) = imac 0x76f0, m1 0x93bc;
    virtual int getTextKerning() = imac 0x7700, m1 0x93c0;
    virtual bool getObjectRectDirty() = win 0x136000, imac 0x1e2100, m1 0x199db4;
    virtual void setObjectRectDirty(bool) = win 0x136010, imac 0x1e2110, m1 0x199dbc;
    virtual bool getOrientedRectDirty() = win 0x136020, imac 0x1e2120, m1 0x199dc4;
    virtual void setOrientedRectDirty(bool) = win 0x136030, imac 0x1e2130, m1 0x199dcc;
    virtual GameObjectType getType() = imac 0x1e2140, m1 0x199dd4;
    virtual void setType(GameObjectType) = imac 0x1e2150, m1 0x199ddc;
    virtual cocos2d::CCPoint getStartPos() = win 0x136060, imac 0x1e2160, m1 0x199de4;

    int m_someOtherIndex;
    int m_innerSectionIndex;
    int m_outerSectionIndex;
    int m_middleSectionIndex;

    // property 511
    bool m_hasExtendedCollision;
    cocos2d::ccColor3B m_maybeGroupColor;
    bool m_unk280;
    bool m_unk281;
    float m_blackChildRelated;
    bool m_unk288;
    bool m_editorEnabled;
    bool m_isGroupDisabled;
    bool m_unk28B;
    bool m_unk28c;

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
    float m_unk2BC;
    float m_unk2C0;
    bool m_tempOffsetXRelated;
    bool m_isFlipX;
    bool m_isFlipY;
    cocos2d::CCPoint m_customBoxOffset;
    bool m_boxOffsetCalculated;
    cocos2d::CCPoint m_boxOffset;
    OBB2D* m_orientedBox;
    bool m_shouldUseOuterOb;
    cocos2d::CCSprite* m_glowSprite;
    int m_unk2F8;
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
    cocos2d::CCPoint m_unk31c;
    bool m_isSomeSpriteScalable;
    cocos2d::CCRect m_textureRect;
    bool m_isDirty;
    bool m_isObjectPosDirty;
    bool m_isUnmodifiedPosDirty;
    float m_unk33C;
    cocos2d::CCRect m_objectRect;
    bool m_isObjectRectDirty;
    bool m_isOrientedBoxDirty;
    bool m_colorSpriteLocked;
    bool m_unk353;
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
    bool m_unk367;
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
    bool m_unk3ee;
    bool m_isInvisible;
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
    bool m_unk3F8;
    bool m_isSolid;
    bool m_ignoreEnter;
    bool m_ignoreFade;
    bool m_unk3FC;
    bool m_unk3FD;
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
    bool m_unk40C;
    bool m_colorZLayerRelated;
    bool m_unk40E;
    float m_unk410;
    float m_unk414;
    bool m_particleLocked;

    // property 53
    int m_property53;
    bool m_gmUnkBool4Related;
    bool m_unk421;
    bool m_unk422;
    bool m_cantColorGlow;
    float m_opacityMod;
    bool m_slopeBugged;
    int m_slopeDirection;
    bool m_maybeShouldFixSlopes;
    float m_opacityMod2;

    // property 21, also used with 41 and 43
    GJSpriteColor* m_baseColor;
    // property 22, also used with 42 and 44
    GJSpriteColor* m_detailColor;
    bool m_unk448;
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
    bool m_unk4ac;
    bool m_unk4ad;

    // property 121
    bool m_isNoTouch;
    cocos2d::CCSize m_unk4b0;
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
    bool m_unk4F8;
    bool m_isDecoration;
    bool m_isDecoration2;
    bool m_unk4fb;
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
    bool m_unk531;
    bool m_unk532;
}

[[link(android)]]
class GameObjectCopy : cocos2d::CCObject {
    // virtual ~GameObjectCopy();

    static GameObjectCopy* create(GameObject*) = imac 0xe3db0;

    bool init(GameObject*);
    void resetObject() = win 0x2db020, imac 0xe3ed0;

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

    static GameOptionsLayer* create(GJBaseGameLayer* baseGameLayer) = win inline, imac 0x29dcd0, m1 0x24538c {
        auto ret = new GameOptionsLayer();
        if (ret->init(baseGameLayer)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool init(GJBaseGameLayer* baseGameLayer) = win inline, imac 0x29df40, m1 0x24553c {
        m_baseGameLayer = baseGameLayer;
        m_gap = 40.f;
        m_maxLabelScale = .4f;
        if (!GJOptionsLayer::init(2)) return false;
        this->preSetup();
        this->postSetup();
        return true;
    }
    void onPracticeMusicSync(cocos2d::CCObject* sender) = m1 0x245cec;
    void onUIOptions(cocos2d::CCObject* sender) = win 0x298c40, m1 0x245c60;
    void onUIPOptions(cocos2d::CCObject* sender) = win 0x298c60, m1 0x245c80;
    void showPracticeMusicSyncUnlockInfo() = win 0x298260;

    virtual void setupOptions() = win 0x2977c0, m1 0x245594, imac 0x29df90;
    virtual void didToggle(int) = win 0x298db0, imac 0x29ed70, m1 0x246290;

    GJBaseGameLayer* m_baseGameLayer;
    int m_practiceDialogIndex;
}

[[link(android)]]
class GameOptionsTrigger : EffectGameObject {
    // virtual ~GameOptionsTrigger();

    static GameOptionsTrigger* create(char const*);

    bool init(char const*);

    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x162a3c, imac 0x19ffb0;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x19e0d0, m1 0x161200;

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
    static GameStatsManager* get() {
        return GameStatsManager::sharedState();
    }
    // virtual ~GameStatsManager();
    // GameStatsManager();

    static GameStatsManager* sharedState() = win 0x1cde00, m1 0x50500, imac 0x5a9f0;

    int accountIDForIcon(int, UnlockType) = imac 0x317760;
    TodoReturn addSimpleSpecialChestReward(gd::string, UnlockType, int, bool);
    void addSpecialRewardDescription(gd::string, gd::string);
    void addStoreItem(int, int, int, int, ShopType) = win 0x1d0ee0, imac 0x66660, m1 0x5ab50;
    bool areChallengesLoaded() = imac 0x72f40;
    TodoReturn areRewardsLoaded();
    void awardCurrencyForLevel(GJGameLevel*) = win 0x1dd870, imac 0x71220, m1 0x64af8;
    void awardDiamondsForLevel(GJGameLevel*);
    TodoReturn awardSecretKey();
    TodoReturn canItemBeUnlocked(int, UnlockType);
    TodoReturn checkAchievement(char const*) = win 0x1d2350;
    void checkCoinAchievement(GJGameLevel*) = win 0x1da710, imac 0x6ce60, m1 0x6080c;
    void checkCoinsForLevel(GJGameLevel*) = imac 0x6ff30, m1 0x63798;
    TodoReturn claimListReward(GJLevelList*);
    TodoReturn collectReward(GJRewardType, GJRewardItem*);
    TodoReturn collectVideoReward(int);
    void completedChallenge(GJChallengeItem*) = m1 0x67400;
    GJRewardItem* completedDailyLevel(GJGameLevel*) = win 0x1dfcf0;
    void completedDemonLevel(GJGameLevel*) = m1 0x617f0;
    TodoReturn completedLevel(GJGameLevel*) = imac 0x6dc40;
    void completedMapPack(GJMapPack*) = win 0x1dbd10;
    void completedStarLevel(GJGameLevel*) = m1 0x61990;
    int countSecretChests(GJRewardType);
    int countUnlockedSecretChests(GJRewardType);
    TodoReturn createReward(GJRewardType, int, gd::string);
    void createSecretChestItems() = imac 0x5d610, m1 0x52834;
    TodoReturn createSecretChestRewards();
    void createSpecialChestItems();
    void createStoreItems() = win 0x1ce710, m1 0x508f0;
    void dataLoaded(DS_Dictionary*) = win 0x1eef90, m1 0x80cb4;
    void encodeDataTo(DS_Dictionary*) = m1 0x807ec;
    void firstSetup();
    void generateItemUnlockableData() = imac 0x65780, m1 0x59f10;
    int getAwardedCurrencyForLevel(GJGameLevel*) = win 0x1dd630, imac 0x71040, m1 0x64904;
    TodoReturn getAwardedDiamondsForLevel(GJGameLevel*) = imac 0x71830;
    int getBaseCurrency(int stars, bool featured, int levelID);
    int getBaseCurrencyForLevel(GJGameLevel*) = win 0x1dd390, imac 0x70e50, m1 0x646bc;
    void getBaseDiamonds(int) = imac 0x717d0, m1 0x6505c;
    int getBonusDiamonds(int) = imac 0x717f0, m1 0x65070;
    GJChallengeItem* getChallenge(int) = win 0x1ded50;
    TodoReturn getChallengeKey(GJChallengeItem*);
    int getCollectedCoinsForLevel(GJGameLevel*) = win 0x1daab0;
    cocos2d::CCArray* getCompletedMapPacks() = win 0x1dc060, m1 0x62704;
    TodoReturn getCurrencyKey(GJGameLevel*);
    TodoReturn getDailyLevelKey(int);
    TodoReturn getDemonLevelKey(GJGameLevel*);
    TodoReturn getEventRewardKey(int);
    gd::string getGauntletRewardKey(int) = win 0x1e6d20, imac 0x77ca0, m1 0x6b41c;
    gd::string getItemKey(int, int) = win 0x1de890;
    int getItemUnlockState(int itemID, UnlockType unlockType) = win 0x1e2a10;
    int getItemUnlockStateLite(int, UnlockType);
    gd::string getLevelKey(GJGameLevel* level) = win inline {
        return getLevelKey(level->m_levelID, level->m_levelType != GJLevelType::Main, level->m_dailyID > 0, level->m_gauntletLevel, level->m_dailyID > 200000);
    }
    gd::string getLevelKey(int levelID, bool isOnline, bool isDaily, bool isGauntlet, bool isEvent) = win 0x1dac30;
    TodoReturn getListRewardKey(GJLevelList*);
    char const* getMapPackKey(int);
    TodoReturn getNextGoldChestID();
    TodoReturn getNextVideoAdReward();
    TodoReturn getPathRewardKey(int);
    GJChallengeItem* getQueuedChallenge(int) = win 0x1dee20;
    TodoReturn getRewardForSecretChest(int);
    TodoReturn getRewardForSpecialChest(gd::string);
    TodoReturn getRewardItem(GJRewardType);
    TodoReturn getRewardKey(GJRewardType, int);
    GJChallengeItem* getSecondaryQueuedChallenge(int);
    TodoReturn getSecretChestForItem(int, UnlockType);
    TodoReturn getSecretCoinKey(char const*);
    TodoReturn getSecretOnlineRewardKey(int);
    TodoReturn getSpecialChestKeyForItem(int, UnlockType);
    TodoReturn getSpecialRewardDescription(gd::string, bool);
    gd::string getSpecialUnlockDescription(int, UnlockType, bool) = win 0x1e6e90;
    TodoReturn getStarLevelKey(GJGameLevel*);
    int getStat(char const*) = win 0x1d20c0, imac 0x66ba0, m1 0x5b098;
    TodoReturn getStatFromKey(StatKey);
    TodoReturn getStoreItem(int, int);
    TodoReturn getStoreItem(int);
    int getTotalCollectedCurrency() = win 0x1e0790, imac 0x74980, m1 0x683bc;
    int getTotalCollectedDiamonds() = win 0x1e1060, imac 0x75750, m1 0x69050;
    bool hasClaimedListReward(GJLevelList*) = win 0x1dfb10, imac 0x73c60, m1 0x676c0;
    bool hasCompletedChallenge(GJChallengeItem*);
    bool hasCompletedDailyLevel(int) = win 0x1dfbf0;
    bool hasCompletedDemonLevel(GJGameLevel*);
    bool hasCompletedGauntletLevel(int);
    bool hasCompletedLevel(GJGameLevel* level) = win inline, imac 0x6d810 {
        return m_completedLevels->objectForKey(this->getLevelKey(level)) != nullptr;
    }
    bool hasCompletedMainLevel(int levelID) = win inline {
        return m_completedLevels->objectForKey(this->getLevelKey(levelID, false, false, false, false)) != nullptr;
    }
    bool hasCompletedMapPack(int);
    bool hasCompletedOnlineLevel(int);
    bool hasCompletedStarLevel(GJGameLevel*);
    bool hasPendingUserCoin(char const*);
    bool hasRewardBeenCollected(GJRewardType, int);
    bool hasSecretCoin(char const*) = win 0x1dce30;
    bool hasUserCoin(char const*);
    TodoReturn incrementActivePath(int);
    TodoReturn incrementChallenge(GJChallengeType, int) = win 0x1defd0;
    void incrementStat(char const*, int) = win 0x1d13e0, imac 0x66ef0, m1 0x5b3d4;
    TodoReturn incrementStat(char const*);
    bool isGauntletChestUnlocked(int);
    bool isItemEnabled(UnlockType type, int id) = win inline, imac 0x77950, m1 0x6b050 {
        return this->isItemUnlocked(type, id) && m_enabledItems->valueForKey(this->getItemKey(id, (int)type))->boolValue();
    }
    bool isItemUnlocked(UnlockType, int) = win 0x1e2730, imac 0x6b940;
    bool isPathChestUnlocked(int);
    bool isPathUnlocked(StatKey);
    bool isSecretChestUnlocked(int);
    bool isSecretCoin(gd::string);
    bool isSecretCoinValid(gd::string);
    bool isSpecialChestLiteUnlockable(gd::string);
    bool isSpecialChestUnlocked(gd::string) = win 0x1e7040, imac 0x774a0;
    bool isStoreItemUnlocked(int);
    TodoReturn keyCostForSecretChest(int);
    TodoReturn linkSpecialChestUnlocks(GJRewardItem*, gd::string);
    TodoReturn logCoins();
    TodoReturn markLevelAsCompletedAndClaimed(GJGameLevel*);
    void postLoadGameStats();
    TodoReturn preProcessReward(GJRewardItem*);
    void preSaveGameStats() = win 0x1f0510;
    TodoReturn processChallengeQueue(int) = win 0x1df830, m1 0x67558;
    TodoReturn processOnlineChests();
    TodoReturn purchaseItem(int);
    TodoReturn recountSpecialStats() = m1 0x69580;
    TodoReturn recountUserCoins(bool);
    TodoReturn registerRewardsFromItem(GJRewardItem*);
    TodoReturn removeChallenge(int);
    void removeErrorFromSpecialChests() = win 0x1f01f0;
    TodoReturn removeQueuedChallenge(int);
    TodoReturn removeQueuedSecondaryChallenge(int);
    void resetChallengeTimer();
    TodoReturn resetPreSync();
    TodoReturn resetSpecialChest(gd::string);
    TodoReturn resetSpecialStatAchievements() = imac 0x77030;
    TodoReturn resetUserCoins();
    TodoReturn restorePostSync();
    void setAwardedBonusKeys(int);
    void setStarsForMapPack(int, int) = win 0x1dbf70;
    void setStat(char const*, int) = win 0x1d21e0, imac 0x66d00, m1 0x5b1fc;
    void setStatIfHigher(char const*, int);
    void setupIconCredits() = win 0x1c1070, m1 0x2ad164;
    TodoReturn shopTypeForItemID(int);
    TodoReturn shouldAwardSecretKey();
    TodoReturn starsForMapPack(int);
    TodoReturn storeChallenge(int, GJChallengeItem*);
    TodoReturn storeChallengeTime(int) = imac 0x72ec0;
    TodoReturn storeEventChest(int, GJRewardItem*);
    TodoReturn storeOnlineChest(gd::string, GJRewardItem*);
    TodoReturn storePendingUserCoin(char const*);
    TodoReturn storeQueuedChallenge(int, GJChallengeItem*);
    TodoReturn storeRewardState(GJRewardType, int, int, gd::string);
    TodoReturn storeSecondaryQueuedChallenge(int, GJChallengeItem*);
    TodoReturn storeSecretCoin(char const*);
    void storeUserCoin(char const*);
    TodoReturn tempClear();
    void toggleEnableItem(UnlockType, int, bool) = win 0x1e2ae0, imac 0x779e0, m1 0x6b114;
    void tryFixPathBug() = win 0x1d16f0;
    TodoReturn trySelectActivePath() = imac 0x6bb70;
    void uncompleteLevel(GJGameLevel*) = win 0x1dbaa0;
    void unlockGauntletChest(int);
    TodoReturn unlockGoldChest(int);
    TodoReturn unlockOnlineChest(gd::string);
    TodoReturn unlockPathChest(int);
    TodoReturn unlockSecretChest(int);
    TodoReturn unlockSpecialChest(gd::string);
    TodoReturn updateActivePath(StatKey);
    gd::string usernameForAccountID(int);
    void verifyPathAchievements() = win 0x1d1e60;
    void verifyUserCoins() = win 0x1dcb10;

    virtual bool init() = win 0x1ce020, imac 0x5aed0, m1 0x50848;

    bool m_usePlayerStatsCCDictionary;
    cocos2d::CCString* m_trueString;
    cocos2d::CCDictionary* m_allStoreItems;
    cocos2d::CCDictionary* m_storeItems;
    cocos2d::CCDictionary* m_allTreasureRoomChests;
    cocos2d::CCDictionary* m_allTreasureRoomChestItems;
    cocos2d::CCDictionary* m_allSpecialChests;
    cocos2d::CCDictionary* m_allSpecialChestItems;
    gd::unordered_map<int, gd::string> m_specialRewardDescriptions;
    gd::unordered_map<int, gd::string> m_createSpecialChestItemsMap;
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
    cocos2d::CCDictionary* m_eventChest;
    cocos2d::CCDictionary* m_treasureRoomChests;
    geode::SeedValueSRV m_bonusKey;
    cocos2d::CCDictionary* m_miscChests;
    cocos2d::CCDictionary* m_enabledItems;
    cocos2d::CCDictionary* m_wraithChests;
    bool m_unkBoolIncrementStat;
    cocos2d::CCDictionary* m_unkDict;
    cocos2d::CCDictionary* m_unlockedItems;
    gd::map<std::pair<int, UnlockType>, int> m_accountIDForIcon;
    gd::map<int, gd::string> m_usernameForAccountID;
    gd::set<std::pair<UnlockType, int>> m_wraithIcons;
    bool m_GS29;
    int m_activePath;
}

[[link(android)]]
class GameToolbox {
    static void addBackButton(cocos2d::CCLayer*, cocos2d::CCMenuItem*) = win 0x65010, imac 0x4dc930;
    static void addRThumbScrollButton(cocos2d::CCLayer*) = win 0x650f0, m1 0x43fb44;
    static void alignItemsHorisontally(cocos2d::CCArray*, float, cocos2d::CCPoint, bool) = win 0x64110;
    static void alignItemsVertically(cocos2d::CCArray*, float, cocos2d::CCPoint);
    static TodoReturn bounceTime(float);
    static TodoReturn colorToSepia(cocos2d::ccColor3B, float);
    static TodoReturn contentScaleClipRect(cocos2d::CCRect&);
    static TodoReturn createHashString(gd::string const&, int);
    static CCMenuItemToggler* createToggleButton(gd::string label, cocos2d::SEL_MenuHandler selector, bool state, cocos2d::CCMenu* menu, cocos2d::CCPoint position, cocos2d::CCNode* parent, cocos2d::CCNode* labelParent, cocos2d::CCArray* container) = imac 0x4dbe00;
    static CCMenuItemToggler* createToggleButton(gd::string label, cocos2d::SEL_MenuHandler selector, bool state, cocos2d::CCMenu* menu, cocos2d::CCPoint position, cocos2d::CCNode* parent, cocos2d::CCNode* labelParent, float buttonScale, float maxLabelScale, float maxLabelWidth, cocos2d::CCPoint labelOffset, char const* font, bool labelTop, int labelTag, cocos2d::CCArray* container) = win 0x64670, imac 0x4dbf30, m1 0x43f068;
    static bool doWeHaveInternet();
    static TodoReturn easeToText(int);
    static TodoReturn fast_rand();
    static float fast_rand_0_1() = imac 0x4deb20, m1 0x441988;
    static TodoReturn fast_rand_minus1_1();
    static void fast_srand(uint64_t) = imac 0x4dead0;
    static TodoReturn gen_random(int);
    static TodoReturn getDropActionWDelay(float, float, float, cocos2d::CCNode*, cocos2d::SEL_CallFunc);
    static TodoReturn getDropActionWEnd(float, float, float, cocos2d::CCAction*, float);
    static cocos2d::CCActionEase* getEasedAction(cocos2d::CCActionInterval*, int, float) = imac 0x4de850, m1 0x445c58;
    static TodoReturn getEasedValue(float, int, float) = win 0x68b40;
    static uint64_t getfast_srand();
    static TodoReturn getInvertedEasing(int);
    static TodoReturn getLargestMergedIntDicts(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
    static TodoReturn getMultipliedHSV(cocos2d::ccHSVValue const&, float);
    static TodoReturn getRelativeOffset(GameObject*, cocos2d::CCPoint) = win 0x64970;
    static gd::string getResponse(cocos2d::extension::CCHttpResponse*) = win 0x64310, imac 0x4dbaa0, m1 0x43ec58;
    static gd::string getTimeString(int, bool) = win 0x65e20, imac 0x4de6c0, m1 0x441574;
    static TodoReturn hsvFromString(gd::string const&, char const*) = imac 0x4dd0d0;
    static gd::string intToShortString(int) = win 0x69120, imac 0x4e42f0, m1 0x4466d4;
    static TodoReturn intToString(int) = win 0x69060, imac 0x4e3fd0, m1 0x44639c;
    static bool isIOS();
    static bool isRateEasing(int);
    static TodoReturn mergeDictsSaveLargestInt(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
    static TodoReturn mergeDictsSkipConflict(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
    static TodoReturn msToTimeString(int, int);
    static TodoReturn multipliedColorValue(cocos2d::ccColor3B, cocos2d::ccColor3B, float);
    static TodoReturn openAppPage();
    static TodoReturn openRateURL(gd::string, gd::string);
    static cocos2d::CCParticleSystemQuad* particleFromString(gd::string const& str, cocos2d::CCParticleSystemQuad* system, bool p2) = win inline, imac 0x4e2f70, m1 0x4452b8 {
        cocos2d::ParticleStruct ret;
        GameToolbox::particleStringToStruct(str, ret);
        return GameToolbox::particleFromStruct(ret, system, p2);
    }
    static cocos2d::CCParticleSystemQuad* particleFromStruct(cocos2d::ParticleStruct const&, cocos2d::CCParticleSystemQuad*, bool) = win 0x68000, imac 0x4e3080, m1 0x4453a4;
    static void particleStringToStruct(gd::string const&, cocos2d::ParticleStruct&) = win 0x67540, imac 0x4e2020, m1 0x44446c;
    static gd::string pointsToString(int) = win 0x69760, m1 0x446e64;
    static void postClipVisit();
    static void preVisitWithClippingRect(cocos2d::CCNode*, cocos2d::CCRect) = win 0x645c0, imac 0x4dbcf0, m1 0x43ee40;
    static TodoReturn preVisitWithClipRect(cocos2d::CCRect);
    static gd::string saveParticleToString(cocos2d::CCParticleSystemQuad*) = win 0x662d0, imac 0x4deba0, m1 0x441a0c;
    static TodoReturn saveStringToFile(gd::string const&, gd::string const&);
    static TodoReturn stringFromHSV(cocos2d::ccHSVValue, char const*);
    static cocos2d::CCDictionary* stringSetupToDict(gd::string const&, char const*) = win 0x65c30, m1 0x440e6c;
    static gd::map<gd::string,gd::string> stringSetupToMap(gd::string const&, char const*, gd::map<gd::string, gd::string>&) = win 0x65890;
    static TodoReturn strongColor(cocos2d::ccColor3B);
    static TodoReturn timestampToHumanReadable(long);
    static cocos2d::ccColor3B transformColor(cocos2d::ccColor3B const&, cocos2d::ccHSVValue) = win 0x65290;
    static TodoReturn transformColor(cocos2d::ccColor3B const&, float, float, float);
}

[[link(android)]]
class GauntletLayer : cocos2d::CCLayer, LevelManagerDelegate {
    // virtual ~GauntletLayer();
    GauntletLayer() {}

    static GauntletLayer* create(GauntletType gauntletType) = win inline, imac 0x37f890, m1 0x30fd54 {
        auto ret = new GauntletLayer();
        if (ret->init(gauntletType)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCScene* scene(GauntletType) = win 0x1f2800, m1 0x30fc6c;

    bool init(GauntletType) = win 0x1f2b30, m1 0x30fe1c;
    void onBack(cocos2d::CCObject* sender) = win 0x1f4de0;
    void onLevel(cocos2d::CCObject* sender) = win 0x1f4760, imac 0x3814b0, m1 0x311818;
    void setupGauntlet(cocos2d::CCArray*) = win 0x1f3730, imac 0x380030, m1 0x3104c0;
    void unlockActiveItem() = win 0x1f47d0, imac 0x3814f0, m1 0x31185c;

    virtual void keyBackClicked() = win 0x1f4e30, imac 0x381af0, m1 0x311edc;
    virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) = win 0x1f3320, imac 0x3810a0, m1 0x3113a0;
    virtual void loadLevelsFailed(char const*, int) = win 0x1f3530, m1 0x311548, imac 0x381240;

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

    static GauntletNode* create(GJMapPack* gauntlet) = win inline {
        auto ret = new GauntletNode();
        if (ret->init(gauntlet)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    static gd::string frameForType(GauntletType) = win 0x1f8f10;
    static gd::string nameForType(GauntletType) = win 0x1fa130;
    bool init(GJMapPack*) = win 0x1f7850, imac 0x55cbf0;
    void onClaimReward() = win 0x1f8ed0, imac 0x55cb20;

    cocos2d::CCNode* m_gauntletInfoNode;
    cocos2d::CCNode* m_rewardNode;
}

[[link(android)]]
class GauntletSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate, LevelManagerDelegate {
    // virtual ~GauntletSelectLayer();
    GauntletSelectLayer() {}

    static GauntletSelectLayer* create(int p0) = win inline {
        auto ret = new GauntletSelectLayer();
        if (ret->init(p0)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCScene* scene(int) = win 0x1f5450;

    void goToPage(int, bool) = win 0x1f6e00, m1 0x4b2d20;
    bool init(int) = win 0x1f5580, m1 0x4b1428;
    void onBack(cocos2d::CCObject* sender) = win 0x1f6fb0;
    void onInfo(cocos2d::CCObject* sender) = win 0x1f60f0;
    void onNext(cocos2d::CCObject* sender) = win 0x1f6dc0, imac 0x55b840;
    void onPlay(cocos2d::CCObject* sender) = win 0x1f7070, imac 0x55c370, m1 0x4b28d0;
    void onPrev(cocos2d::CCObject* sender) = win 0x1f6de0, imac 0x55b820;
    void onRefresh(cocos2d::CCObject* sender) = win 0x1f6230, imac 0x55b980, m1 0x4b1fa0;
    void setupGauntlets() = win 0x1f6670, m1 0x4b2048;
    void unblockPlay();
    void updateArrows();

    virtual void onExit() = m1 0x4b3088, imac 0x55cb60;
    virtual void keyBackClicked() = win 0x1f7060, imac 0x55ca30, m1 0x4b2f5c;
    virtual void scrollLayerWillScrollToPage(BoomScrollLayer*, int) = win 0x1f6f70, imac 0x55c990, m1 0x4b2ebc;
    virtual void scrollLayerScrolledToPage(BoomScrollLayer*, int) = win 0x1f6f70, imac 0x55c8f0, m1 0x4b2e1c;
    virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) = win 0x1f6350, imac 0x55bfb0, m1 0x4b252c;
    virtual void loadLevelsFailed(char const*, int) = win 0x1f6500, imac 0x55c170, m1 0x4b26d4;

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

    static GauntletSprite* create(GauntletType gauntletType, bool locked) = win inline, imac 0x3813e0, m1 0x3116f4 {
        auto ret = new GauntletSprite();
        if (ret->init(gauntletType, locked)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    void addLockedSprite() = win 0x1f4ec0, imac 0x381ce0, m1 0x312114;
    void addNormalSprite() = imac 0x381c10, m1 0x312018;
    cocos2d::ccColor3B colorForType(GauntletType);
    bool init(GauntletType gauntletType, bool locked) = win inline, m1 0x311f70 {
        if (!CCNode::init()) return false;
    
        m_gauntletType = gauntletType;
        this->setContentSize({ 60.0f, 60.0f });
        this->toggleLockedSprite(locked);
    
        return true;
    }
    float luminanceForType(GauntletType) = imac 0x381fd0;
    void toggleLockedSprite(bool) = win 0x1f51f0, imac 0x381ac0, m1 0x311e9c;

    GauntletType m_gauntletType;
}

[[link(android)]]
class GhostTrailEffect : cocos2d::CCNode {
    // virtual ~GhostTrailEffect();
    //GhostTrailEffect() = ios 0x305d20;

    static GhostTrailEffect* create() = win 0x69fd0;

    TodoReturn doBlendAdditive();
    void runWithTarget(cocos2d::CCSprite*, float, float, float, float, bool);
    void stopTrail();
    void trailSnapshot(float) = win 0x6a110;

    virtual bool init() = win 0x6a0b0, imac 0x5e2410, m1 0x514ad8;
    virtual void draw() = imac 0x5e29c0, m1 0x515040 {}

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

    static GJAccountManager* sharedState() = win 0x1fae30, imac 0xcfe60, m1 0xb8910;

    void addDLToActive(char const* tag, cocos2d::CCObject*);
    void addDLToActive(char const* tag);
    bool backupAccount(gd::string) = win 0x1fc7d0;
    void dataLoaded(DS_Dictionary*);
    void encodeDataTo(DS_Dictionary*) = imac 0xd4c60, m1 0xbd118;
    void firstSetup();
    bool getAccountBackupURL() = win 0x1fc1b0;
    bool getAccountSyncURL() = win 0x1fd110;
    cocos2d::CCObject* getDLObject(char const*);
    gd::string getShaPassword(gd::string) = win 0x1fedc0;
    void handleIt(bool, gd::string, gd::string, GJHttpType) = m1 0xb8d10;
    void handleItDelayed(bool, gd::string, gd::string, GJHttpType);
    void handleItND(cocos2d::CCNode*, void*);
    bool isDLActive(char const* tag);
    void linkToAccount(gd::string, gd::string, int, int);
    void loginAccount(gd::string, gd::string);
    void onBackupAccountCompleted(gd::string, gd::string) = win 0x1fcd00;
    void onGetAccountBackupURLCompleted(gd::string, gd::string);
    void onGetAccountSyncURLCompleted(gd::string, gd::string);
    void onLoginAccountCompleted(gd::string, gd::string) = win 0x1fbdc0;
    void onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
    void onRegisterAccountCompleted(gd::string, gd::string) = win 0x1fb7d0;
    void onSyncAccountCompleted(gd::string, gd::string) = win 0x1fd990, imac 0xd1410, m1 0xb9d1c;
    void onUpdateAccountSettingsCompleted(gd::string, gd::string) = win 0x1fec60;
    void ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType) = win 0x1faf50;
    void registerAccount(gd::string, gd::string, gd::string);
    void removeDLFromActive(char const*);
    bool syncAccount(gd::string);
    void unlinkFromAccount();
    void updateAccountSettings(int, int, int, gd::string, gd::string, gd::string);

    virtual bool init() = win 0x1fb3f0, m1 0xbaf84, imac 0xd28d0;

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

    static GJAccountSettingsLayer* create(int a1) = win inline, imac 0x28d850, m1 0x2360b4 {
        GJAccountSettingsLayer* pRet = new GJAccountSettingsLayer();
        if (pRet && pRet->init(a1)) {
            pRet->autorelease();
            return pRet;
        }
    
        CC_SAFE_DELETE(pRet);
    
        return nullptr;
    }

    TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float) = imac 0x28f1a0;
    bool init(int) = win 0x28a730;
    void onClose(cocos2d::CCObject* sender) = imac 0x28f510;
    void onCommentSetting(cocos2d::CCObject* sender);
    void onFriendRequests(cocos2d::CCObject* sender);
    void onMessageSetting(cocos2d::CCObject* sender);
    void onUpdate(cocos2d::CCObject* sender);
    TodoReturn updateScoreValues();

    virtual void keyBackClicked() = win 0x28d0d0, imac 0x28ff00, m1 0x238490;
    virtual void textInputShouldOffset(CCTextInputNode*, float) = imac 0x28f910, m1 0x237ee8;
    virtual void textInputReturn(CCTextInputNode*) = imac 0x28f9d0, m1 0x237fb8;

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
    TodoReturn runInternalAction(cocos2d::CCAction*, cocos2d::CCNode*) = imac 0x5f1f20;
    TodoReturn stopAllInternalActions();
    TodoReturn stopInternalAction(int) = imac 0x5f1f70;
    TodoReturn updateInternalActions(float, bool);

    virtual bool init() = m1 0x521ba4, imac 0x5f1ef0;
}

[[link(android)]]
class GJAssetDownloadAction {
    int m_id;
    GJAssetType m_assetType;
    int m_status;
}

[[link(android), depends(GJGameState), depends(PlayerButtonCommand)]]
class GJBaseGameLayer : cocos2d::CCLayer, TriggerEffectDelegate {
    ~GJBaseGameLayer() = win 0x200420;
    // GJBaseGameLayer() = ios 0x1256b4;

    static GJBaseGameLayer* get() {
        return GameManager::get()->m_gameLayer;
    }

    void activateCustomRing(RingObject*);
    TodoReturn activatedAudioTrigger(SFXTriggerGameObject*, float);
    TodoReturn activateEventTrigger(EventLinkTrigger*, gd::vector<int> const&);
    TodoReturn activateItemCompareTrigger(ItemTriggerGameObject*, gd::vector<int> const&) = win 0x22edb0;
    void activateItemEditTrigger(ItemTriggerGameObject*) = win 0x22e9d0;
    void activateObjectControlTrigger(ObjectControlGameObject*);
    TodoReturn activatePersistentItemTrigger(ItemTriggerGameObject*);
    void activatePlayerControlTrigger(PlayerControlGameObject*);
    TodoReturn activateResetTrigger(EffectGameObject*);
    void activateSFXEditTrigger(SFXTriggerGameObject*);
    void activateSFXTrigger(SFXTriggerGameObject*) = win 0x23b5a0;
    void activateSongEditTrigger(SongTriggerGameObject*) = win 0x23b7a0, imac 0x149b80;
    void activateSongTrigger(SongTriggerGameObject*);
    TodoReturn activateTimerTrigger(TimerTriggerGameObject*, gd::vector<int> const&);
    TodoReturn addAreaEffect(EnterEffectObject*, gd::vector<EnterEffectInstance>*, GJAreaActionType);
    void addCustomEnterEffect(EnterEffectObject*, bool);
    TodoReturn addGuideArt(GameObject*) = imac 0x151cd0;
    void addObjectCounter(LabelGameObject*);
    TodoReturn addPickupTrigger(CountTriggerGameObject*);
    TodoReturn addPoints(int);
    void addProximityVolumeEffect(int, int, SFXTriggerGameObject*);
    TodoReturn addRemapTargets(gd::set<int>&) = imac 0x105e10;
    void addToGroupParents(GameObject*);
    void addToGroups(GameObject*, bool) = win 0x21ea70, imac 0x12d1c0, m1 0x1080d4;
    TodoReturn addToObjectsToShow(GameObject*);
    TodoReturn addUIObject(GameObject*);
    void animateInDualGroundNew(GameObject*, float, bool, float) = win 0x20dd90;
    TodoReturn animateInGroundNew(bool, float, bool) = imac 0x114a80;
    void animateOutGroundNew(bool) = imac 0x114d70;
    TodoReturn animatePortalY(float, float, float, float);
    TodoReturn applyLevelSettings(GameObject*) = imac 0x148050;
    void applyRemap(EffectGameObject*, gd::vector<int> const&, gd::unordered_map<int, int>&) = win 0x215bc0;
    void applySFXEditTrigger(int, int, SFXTriggerGameObject*);
    void applyShake(cocos2d::CCPoint&);
    void assignNewStickyGroups(cocos2d::CCArray*) = win 0x21f870;
    TodoReturn asyncBGLoaded(int);
    TodoReturn asyncGLoaded(int);
    TodoReturn asyncMGLoaded(int);
    TodoReturn atlasValue(int);
    void bumpPlayer(PlayerObject*, EffectGameObject*) = win 0x2123d0, imac 0x118270, m1 0xf6efc;
    TodoReturn buttonIDToButton(int);
    TodoReturn calculateColorGroups();
    TodoReturn cameraMoveX(float, float, float, bool);
    TodoReturn cameraMoveY(float, float, float, bool);
    bool canBeActivatedByPlayer(PlayerObject*, EffectGameObject*) = win 0x2122c0, imac 0x117e10, m1 0xf6b08;
    TodoReturn canProcessSFX(SFXTriggerState&, gd::unordered_map<int, int>&, gd::unordered_map<int, float>&, gd::vector<SFXTriggerState>&);
    TodoReturn canTouchObject(GameObject*);
    TodoReturn checkCameraLimitAfterTeleport(PlayerObject*, float) = win 0x233f90, imac 0x111380, m1 0xf0e14;
    TodoReturn checkCollision(int, int);
    void checkCollisionBlocks(EffectGameObject*, gd::vector<EffectGameObject*>*, int) = win 0x2138c0;
    int checkCollisions(PlayerObject*, float, bool) = win 0x20e210, imac 0x115570, m1 0xf49e8;
    void checkRepellPlayer() = win 0x233cc0;
    void checkSpawnObjects() = win 0x2152f0, imac 0x11c780;
    TodoReturn claimMoveAction(int, bool);
    TodoReturn claimParticle(gd::string, int);
    TodoReturn claimRotationAction(int, int, float&, float&, bool, bool);
    TodoReturn clearActivatedAudioTriggers();
    TodoReturn clearPickedUpItems();
    TodoReturn collectedObject(EffectGameObject*);
    void collisionCheckObjects(PlayerObject*, gd::vector<GameObject*>*, int, float) = win 0x20f360, imac 0x1166c0;
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
    TodoReturn convertToClosestDirection(float, float) = win 0x2294b0;
    void createBackground(int) = win 0x2063c0, imac 0x103670, m1 0xe52cc;
    void createGroundLayer(int, int) = win 0x206800, imac 0x103bf0, m1 0xe5808;
    void createMiddleground(int) = win 0x206680, imac 0x103e00, m1 0xe59ec;
    TodoReturn createNewKeyframeAnim();
    TodoReturn createParticle(int, char const*, int, cocos2d::tCCPositionType);
    void createPlayer() = win 0x205eb0, m1 0xe4f8c;
    TodoReturn createPlayerCollisionBlock() = win 0x212d70, imac 0x11a9a0;
    void createTextLayers() = win 0x209840, m1 0xeec20;
    TodoReturn damagingObjectsInRect(cocos2d::CCRect, bool);
    void destroyObject(GameObject*) = win 0x210a90, imac 0x118920, m1 0xf75e0;
    void enterDualMode(GameObject*, bool) = imac 0x119cb0, m1 0xf88a8;
    void exitStaticCamera(bool exitX, bool exitY, float time, int easingType, float easingRate, bool smoothVelocity, float smoothVelocityMod, bool exitInstant) = win 0x238fc0;
    TodoReturn flipFinished();
    void flipGravity(PlayerObject*, bool, bool) = win 0x20d520, imac 0x1145d0, m1 0xf3c6c;
    TodoReturn flipObjects();
    TodoReturn gameEventToString(GJGameEvent);
    void gameEventTriggered(GJGameEvent, int, int) = win 0x22c780, imac 0x111430, m1 0xf0ee0;
    TodoReturn generateEnterEasingBuffer(int, float);
    TodoReturn generateEnterEasingBuffers(EnterEffectObject*);
    TodoReturn generatePickupAnimRandVal(GameObject*, float&, float&);
    TodoReturn generateSpawnRemap() = win 0x218ae0, imac 0x106990;
    TodoReturn generateTargetGroups() = imac 0x10a290;
    TodoReturn generateVisibilityGroups();
    TodoReturn getActiveOrderSpawnObjects();
    float getAreaObjectValue(EnterEffectInstance*, GameObject*, cocos2d::CCPoint&, bool&) = win 0x222c70;
    TodoReturn getBumpMod(PlayerObject*, int);
    TodoReturn getCameraEdgeValue(int) = imac 0x13fbc0;
    TodoReturn getCapacityString();
    TodoReturn getCenterGroupObject(int, int);
    TodoReturn getCustomEnterEffects(int, bool);
    float getEasedAreaValue(GameObject*, EnterEffectInstance*, float, bool, int) = win 0x222e60;
    TodoReturn getEnterEasingKey(int, float);
    TodoReturn getEnterEasingValue(float, int, float, int);
    TodoReturn getFollowSpeedVal(GameObject*, int, int, float, float);
    float getGroundHeight(PlayerObject*, int);
    TodoReturn getGroundHeightForMode(int) = win 0x20c770;
    TodoReturn getGroup(int) = win 0x21edb0;
    TodoReturn getGroupParent(int);
    TodoReturn getGroupParentsString(GameObject*);
    TodoReturn getItemValue(int, int) = win 0x22e940;
    float getMaxPortalY() = win 0x20e190;
    TodoReturn getMinDistance(cocos2d::CCPoint, cocos2d::CCArray*, float, int) = win 0x23c310;
    float getMinPortalY() = win 0x20e0b0;
    float getModifiedDelta(float) = win 0x231f40, imac 0x142470, m1 0x11947c;
    TodoReturn getMoveTargetDelta(EffectGameObject*, bool);
    TodoReturn getOptimizedGroup(int);
    PlayerObject* getOtherPlayer(PlayerObject*) = imac 0x112e40;
    TodoReturn getParticleKey(int, char const*, int, cocos2d::tCCPositionType);
    TodoReturn getParticleKey2(gd::string);
    TodoReturn getPlayerButtonID(int, bool);
    TodoReturn getPlayTimerFullSeconds();
    TodoReturn getPlayTimerMilli();
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
    TodoReturn gravBumpPlayer(PlayerObject*, EffectGameObject*) = imac 0x118480, m1 0xf7120;
    void groupStickyObjects(cocos2d::CCArray*) = win 0x21f690;
    void handleButton(bool down, int button, bool isPlayer1) = win 0x22e070, imac 0x13b550, m1 0x113ae4;
    bool hasItem(int);
    bool hasUniqueCoin(EffectGameObject*) = win 0x211100, imac 0x1189f0, m1 0xf76c4;
    void increaseBatchNodeCapacity() = win 0x2077c0;
    bool isFlipping() {
        return m_gameState.m_levelFlipping != 0.f && m_gameState.m_levelFlipping != 1.f;
    }
    bool isPlayer2Button(int);
    void lightningFlash(cocos2d::CCPoint to, cocos2d::ccColor3B color);
    void lightningFlash(cocos2d::CCPoint from, cocos2d::CCPoint to, cocos2d::ccColor3B color, float lineWidth, float duration, int displacement, bool flash, float opacity) = win 0x240650, imac 0x1111e0, m1 0xf0c94;
    TodoReturn loadGroupParentsFromString(GameObject*, gd::string);
    void loadLevelSettings() = win 0x234650, imac 0x147eb0, m1 0x11dcb8;
    void loadStartPosObject() = win 0x22fee0;
    void loadUpToPosition(float, int, int) = win 0x230080;
    TodoReturn maxZOrderForShaderZ(int);
    TodoReturn minZOrderForShaderZ(int);
    TodoReturn modifyGroupPhysics(AdvancedFollowEditObject*, cocos2d::CCArray*);
    TodoReturn modifyObjectPhysics(AdvancedFollowEditObject*, GameObjectPhysics&);
    void moveAreaObject(GameObject*, float, float) = win 0x2256b0;
    TodoReturn moveCameraToPos(cocos2d::CCPoint);
    void moveObject(GameObject*, double, double, bool);
    void moveObjects(cocos2d::CCArray*, double, double, bool) = win 0x228950;
    void moveObjectsSilent(int, double, double);
    TodoReturn moveObjectToStaticGroup(GameObject*);
    TodoReturn objectIntersectsCircle(GameObject*, GameObject*);
    GJGameEvent objectTypeToGameEvent(int) = win 0x22ccf0, imac 0x114a60;
    TodoReturn optimizeMoveGroups();
    TodoReturn orderSpawnObjects();
    TodoReturn parentForZLayer(int, bool, int, int) = imac 0x10fcb0;
    void pauseAudio() = win 0x231c40;
    TodoReturn performMathOperation(double, double, int);
    TodoReturn performMathRounding(double, int);
    void pickupItem(EffectGameObject*) = win 0x210bb0;
    TodoReturn playAnimationCommand(int, int);
    bool playerCircleCollision(PlayerObject*, GameObject*) = win 0x20c810;
    TodoReturn playerIntersectsCircle(PlayerObject*, GameObject*);
    void playerTouchedObject(PlayerObject*, GameObject*);
    void playerTouchedRing(PlayerObject*, RingObject*) = win 0x212840, imac 0x1185d0;
    void playerTouchedTrigger(PlayerObject*, EffectGameObject*) = win 0x212950, imac 0x118680;
    TodoReturn playerWasTouchingObject(PlayerObject*, GameObject*);
    void playerWillSwitchMode(PlayerObject*, GameObject*) = win 0x20d910, imac 0x114790, m1 0xf3e3c;
    void playExitDualEffect(PlayerObject*) = win 0x211880;
    TodoReturn playFlashEffect(float, int, float);
    TodoReturn playKeyframeAnimation(KeyframeAnimTriggerObject*, gd::vector<int> const&);
    TodoReturn playSpeedParticle(float);
    TodoReturn positionForShaderTarget(int) = win 0x21e080;
    TodoReturn positionUIObjects();
    TodoReturn prepareSavePositionObjects();
    TodoReturn prepareTransformParent(bool);
    void preResumeGame() = imac 0x142360;
    TodoReturn preUpdateVisibility(float);
    void processActivatedAudioTriggers(float) = win 0x23d2c0;
    void processAdvancedFollowAction(AdvancedFollowInstance&, bool, float);
    void processAdvancedFollowActions(float) = win 0x229ce0;
    void processAreaActions(float, bool) = win 0x223bc0;
    void processAreaEffects(gd::vector<EnterEffectInstance>*, GJAreaActionType, float, bool) = win 0x222fe0, imac 0x130e70, m1 0x10b3e0;
    void processAreaFadeGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, bool);
    void processAreaMoveGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool) = win 0x2250d0;
    void processAreaRotateGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool) = win 0x224990;
    void processAreaTintGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, bool) = win 0x2257a0;
    void processAreaTransformGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool) = win 0x223e20;
    void processAreaVisualActions(float) = imac 0x133f70, m1 0x10dd00;
    GameObject* processCameraObject(GameObject* object, PlayerObject* player) = win inline, imac 0x113130, m1 0xf297c {
        if (object) {
            player->m_lastPortalPos = object->getPosition();
            player->m_lastActivatedPortal = object;
        }
        auto ret = object;
        if (m_gameState.m_isDualMode && m_gameState.m_unkGameObjPtr2) ret = m_gameState.m_unkGameObjPtr2;
        if (object) m_gameState.m_unkGameObjPtr1 = object;
        return ret;
    }
    void processCommands(float) = win 0x234050, imac 0x143b30, m1 0x11a6c8;
    void processDynamicObjectActions(int, float) = win 0x228e80;
    void processFollowActions() = win 0x22b180;
    TodoReturn processItems();
    void processMoveActions() = win 0x2281b0;
    void processMoveActionsStep(float, bool) = win 0x2261d0;
    void processOptionsTrigger(GameOptionsTrigger*) = win 0x21e880, imac 0x12cec0, m1 0x107e54;
    void processPlayerFollowActions(float) = win 0x228ad0;
    void processQueuedAudioTriggers() = win 0x235430, imac 0x149780;
    void processQueuedButtons() = win 0x22c6d0, imac 0x13b4d0, m1 0x113a48;
    void processRotationActions() = win 0x2263f0;
    TodoReturn processSFXObjects() = win 0x23b360, imac 0x525100;
    TodoReturn processSFXState(SFXTriggerState*, SFXTriggerState*, int, float);
    TodoReturn processSongState(int, float, float, int, float, float, gd::vector<SongTriggerState>*, SongTriggerGameObject*);
    TodoReturn processStateObjects();
    void processTransformActions(bool) = win 0x227280;
    void queueButton(int button, bool push, bool isPlayer2) = win inline, imac 0x13b320, m1 0x1138e4 {
        if (button <= 0 || button > 3) {
            return;
        }
        PlayerButtonCommand command = {};
        command.m_button = (PlayerButton) button;
        command.m_isPush = push;
        command.m_isPlayer2 = isPlayer2;
        m_queuedButtons.push_back(command);
    }
    TodoReturn reAddToStickyGroup(GameObject*) = imac 0x12e4b0;
    TodoReturn recordAction(int, bool, bool);
    TodoReturn rectIntersectsCircle(cocos2d::CCRect, cocos2d::CCPoint, float);
    void refreshCounterLabels() = win 0x22fd30, imac 0x13e330;
    void refreshKeyframeAnims() = m1 0xecf0c;
    TodoReturn regenerateEnterEasingBuffers() = imac 0x106b20;
    TodoReturn registerSpawnRemap(gd::vector<ChanceObject>&);
    TodoReturn registerStateObject(EffectGameObject*);
    TodoReturn removeBackground();
    TodoReturn removeCustomEnterEffects(int, bool);
    void removeFromGroupParents(GameObject*) = imac 0x12da50;
    void removeFromGroups(GameObject*) = win 0x21ebf0, imac 0x12d400;
    TodoReturn removeFromStickyGroup(GameObject*) = imac 0x12e420;
    TodoReturn removeGroundLayer() = imac 0x103f60;
    TodoReturn removeGroupParent(int);
    TodoReturn removeKeyframe(KeyframeGameObject*) = imac 0x13c070;
    TodoReturn removeMiddleground();
    void removeObjectFromSection(GameObject*) = win 0x221960, imac 0x12ea90, m1 0x109780;
    TodoReturn removePlayer2();
    TodoReturn removeTemporaryParticles();
    void reorderObjectSection(GameObject*) = m1 0xf982c;
    TodoReturn reparentObject(cocos2d::CCNode*, cocos2d::CCNode*);
    void resetActiveEnterEffects() = win 0x208f40, imac 0x10dd90, m1 0xed640;
    int resetAreaObjectValues(GameObject*, bool) = win 0x222830;
    void resetAudio() = win 0x231ea0, m1 0x1193fc;
    void resetCamera() = win 0x239450, imac 0x149310;
    void resetGradientLayers() = win 0x21bad0;
    TodoReturn resetGroupCounters(bool);
    void resetLevelVariables() = win 0x234990, imac 0x148310, m1 0x11e0e8;
    TodoReturn resetMoveOptimizedValue();
    void resetPlayer() = win 0x20cad0, imac 0x1131c0;
    void resetSongTriggerValues();
    TodoReturn resetSpawnChannelIndex() = win 0x23f770, imac 0x149690;
    void resetStaticCamera(bool, bool) = win 0x239730;
    TodoReturn resetStoppedAreaObjects();
    TodoReturn restoreAllUIObjects();
    TodoReturn restoreDefaultGameplayOffsetX();
    TodoReturn restoreDefaultGameplayOffsetY();
    TodoReturn restoreRemap(EffectGameObject*, gd::unordered_map<int, int>&);
    void resumeAudio() = imac inline {
        FMODAudioEngine::sharedEngine()->resumeAllAudio();
        FMODAudioEngine::sharedEngine()->resumeAllMusic();
        FMODAudioEngine::sharedEngine()->m_system->update();
    }
    TodoReturn rotateAreaObjects(GameObject*, cocos2d::CCArray*, float, bool);
    TodoReturn rotateObject(GameObject*, float);
    void rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint, cocos2d::CCPoint, bool, bool);
    void setGroupParent(GameObject*, int) = imac 0x12d900;
    void setStartPosObject(StartPosObject* startPos) = win inline {
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
    void setupLayers() = win 0x203640, imac 0x100950, m1 0xe28bc;
    void setupLevelStart(LevelSettingsObject*) = win 0x20cc40, imac 0x1134b0, m1 0xf2cb0;
    void setupReplay(gd::string) = win 0x234240, m1 0x11d120;
    void shakeCamera(float duration, float strength, float interval) = win 0x2355a0;
    TodoReturn shouldExitHackedLevel() = imac 0x103120;
    TodoReturn sortAllGroupsX();
    TodoReturn sortGroups();
    void sortSectionVector() = win 0x221ba0, imac 0x130080, m1 0x10a8a0;
    TodoReturn sortStickyGroups();
    void spawnGroupTriggered(int groupID, float, bool, gd::vector<int> const&, int, int);
    TodoReturn spawnObjectsInOrder(cocos2d::CCArray*, double, gd::vector<int> const&, int, int);
    cocos2d::CCParticleSystemQuad* spawnParticle(char const* plist, int zOrder, cocos2d::tCCPositionType positionType, cocos2d::CCPoint position) = win 0x239c30, imac 0x14c4e0, m1 0x121374;
    TodoReturn spawnParticleTrigger(int, cocos2d::CCPoint, float, float);
    TodoReturn spawnParticleTrigger(SpawnParticleGameObject*);
    TodoReturn spawnPlayer2();
    TodoReturn speedForShaderTarget(int) = win 0x21e130;
    cocos2d::CCArray* staticObjectsInRect(cocos2d::CCRect, bool) = win 0x20bc80;
    TodoReturn stopAllGroundActions();
    TodoReturn stopCameraShake();
    TodoReturn stopCustomEnterEffect(EnterEffectObject*, bool);
    TodoReturn stopCustomEnterEffect(EnterEffectObject*);
    TodoReturn stopSFXTrigger(SFXTriggerGameObject*);
    TodoReturn swapBackground(int);
    TodoReturn swapGround(int);
    TodoReturn swapMiddleground(int);
    void switchToFlyMode(PlayerObject* player, GameObject* object, bool unused, int type) = win inline, imac 0x114060, m1 0xf36f8 {
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
    void switchToRobotMode(PlayerObject*, GameObject*, bool) = imac 0x114260;
    void switchToRollMode(PlayerObject*, GameObject*, bool) = imac 0x1141b0;
    void switchToSpiderMode(PlayerObject*, GameObject*, bool) = imac 0x114310, m1 0xf39a8;
    void syncBGTextures() = win 0x2348f0, imac 0x148200, m1 0x11dfd0;
    void teleportPlayer(TeleportPortalObject*, PlayerObject*) = win 0x20a960, imac 0x110990, m1 0xf04d0;
    TodoReturn testInstantCountTrigger(int, int, int, bool, int, gd::vector<int> const&, int, int);
    void toggleAudioVisualizer(bool) = win 0x242430, m1 0xe274c;
    void toggleDualMode(GameObject*, bool, PlayerObject*, bool) = win 0x2112d0, imac 0x113d00, m1 0xf33e0;
    void toggleFlipped(bool, bool) = win 0x240120, m1 0xf6d4c;
    void toggleGroup(int, bool) = m1 0x107cbc;
    void toggleLockPlayer(bool disable, bool p2) = win inline, imac 0x12d170, m1 0x1080a8 {
        auto player = p2 ? m_player2 : m_player1;
        if (disable) player->disablePlayerControls();
        else player->enablePlayerControls();
    }
    void togglePlayerStreakBlend(bool) = imac 0x12d0e0, m1 0x108034;
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
    TodoReturn triggerGradientCommand(GradientTriggerObject*) = win 0x21a280, imac 0x129150, m1 0x10468c;
    TodoReturn triggerGravityChange(EffectGameObject*, int);
    TodoReturn triggerMoveCommand(EffectGameObject*);
    TodoReturn triggerRotateCommand(EnhancedTriggerObject*);
    bool triggerShaderCommand(ShaderGameObject*);
    TodoReturn triggerTransformCommand(TransformTriggerGameObject*);
    TodoReturn tryGetGroupParent(int);
    GameObject* tryGetMainObject(int) = win 0x21f050, imac 0x11a5d0, m1 0xf90bc;
    TodoReturn tryGetObject(int) = win 0x21f0c0;
    TodoReturn tryResumeAudio() = imac 0x142410;
    TodoReturn unclaimParticle(char const*, cocos2d::CCParticleSystemQuad*);
    void ungroupStickyObjects(cocos2d::CCArray*) = win 0x21f7b0, imac 0x12e250;
    TodoReturn unlinkAllEvents();
    TodoReturn updateActiveEnterEffect(EnterEffectObject*);
    TodoReturn updateAllObjectSection();
    TodoReturn updateAreaObjectLastValues(GameObject*);
    void updateAudioVisualizer() = win 0x2421d0, imac 0x1439c0, m1 0x11a5a8;
    void updateBGArtSpeed(float, float) = m1 0x11e9d8;
    void updateCamera(float) = win 0x235640;
    TodoReturn updateCameraBGArt(cocos2d::CCPoint, float) = imac 0x14ab50;
    TodoReturn updateCameraEdge(int, int);
    void updateCameraMode(EffectGameObject* obj, bool updateDual) = win inline, imac 0x114710 {
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
    void updateCameraOffsetX(float, float, int, float, int, int) = win 0x2306f0, imac 0x13f970;
    void updateCameraOffsetY(float, float, int, float, int, int) = win 0x230790, imac 0x13fa70;
    void updateCollisionBlocks();
    void updateCounters(int, int) = win 0x22e640;
    void updateDualGround(PlayerObject*, int, bool, float) = win 0x20dba0, imac 0x1143c0, m1 0xf3a54;
    void updateEnterEffects(float) = imac 0x10ee70, m1 0xee3cc;
    TodoReturn updateExtendedCollision(GameObject*, bool);
    TodoReturn updateExtraGameLayers() = imac 0x12c9a0;
    TodoReturn updateGameplayOffsetX(int, bool);
    TodoReturn updateGameplayOffsetY(int, bool);
    TodoReturn updateGradientLayers() = win 0x21a710;
    TodoReturn updateGroundShadows();
    TodoReturn updateGuideArt() = win 0x240010;
    TodoReturn updateInternalCamOffsetX(float, float, float);
    TodoReturn updateInternalCamOffsetY(float, float, float);
    void updateKeyframeOrder(int) = imac 0x13bf60, m1 0x114434;
    TodoReturn updateLayerCapacity(gd::string);
    TodoReturn updateLegacyLayerCapacity(int, int, int, int);
    void updateLevelColors() = win 0x207030, m1 0xe553c;
    void updateMaxGameplayY() = win 0x234810, imac 0x1480b0;
    TodoReturn updateMGArtSpeed(float, float);
    void updateMGOffsetY(float, float, int, float, int, int) = win 0x230830;
    TodoReturn updateOBB2(cocos2d::CCRect) = win 0x6da50;
    void updateParticles(float);
    TodoReturn updatePlatformerTime();
    TodoReturn updatePlayerCollisionBlocks();
    void updateProximityVolumeEffects() = win 0x23bc70, imac 0x146b50, m1 0x11cb4c;
    TodoReturn updateQueuedLabels();
    TodoReturn updateReplay();
    TodoReturn updateSavePositionObjects();
    void updateShaderLayer(float) = win 0x21cde0, imac 0x12b5d0, m1 0x1064a0;
    void updateSpecialGroupData() = win 0x208ae0, imac 0x106920;
    TodoReturn updateSpecialLabels() = win 0x2337d0;
    void updateStaticCameraPos(cocos2d::CCPoint pos, bool staticX, bool staticY, bool followOrSmoothEase, float time, int easingType, float easingRate) = win 0x238b80, imac 0x114f20, m1 0xf44c0;
    TodoReturn updateStaticCameraPosToGroup(int, bool, bool, bool, float, float, int, float, bool, float) = win 0x238790;
    TodoReturn updateTimeMod(float, bool, bool);
    TodoReturn updateTimerLabels() = win 0x22f9c0;
    void updateZoom(float, float, int, float, int, int) = win 0x230470;
    TodoReturn visitWithColorFlash();
    TodoReturn volumeForProximityEffect(SFXTriggerInstance&) = win 0x23bf40;

    virtual void update(float) = win 0x231fe0, m1 0x119520, imac 0x142520;
    virtual bool init() = win 0x201ba0, imac 0xfecc0, m1 0xe13b0;
    virtual void visit() = win 0x240830, imac 0x153000, m1 0x126ebc;
    virtual void postUpdate(float) = imac 0x76f0, m1 0x93bc;
    virtual TodoReturn checkForEnd() = imac 0x76f0, m1 0x93bc;
    virtual TodoReturn testTime() = imac 0x76f0, m1 0x93bc;
    virtual void updateVerifyDamage() = imac 0x76f0, m1 0x93bc;
    virtual void updateAttemptTime(float) = imac 0x76f0, m1 0x93bc;
    virtual void updateVisibility(float) = imac 0x76f0, m1 0x93bc;
    virtual void playerTookDamage(PlayerObject*) = imac 0x76f0, m1 0x93bc;
    virtual TodoReturn opacityForObject(GameObject*) = win 0x231bc0, imac 0x1422d0, m1 0x119308;
    virtual TodoReturn addToSpeedObjects(EffectGameObject*) = imac 0x76f0, m1 0x93bc;
    virtual void objectsCollided(int, int) = win 0x213b70, imac 0x11b6b0, m1 0xfa0f0;
    virtual void updateColor(cocos2d::ccColor3B& color, float fadeTime, int colorID, bool blending, float opacity, cocos2d::ccHSVValue& copyHSV, int colorIDToCopy, bool copyOpacity, EffectGameObject* callerObject, int unk1, int unk2) = win 0x21e4a0, imac 0x12cb00, m1 0x107ad0;
    virtual void toggleGroupTriggered(int, bool, gd::vector<int> const&, int, int) = win 0x21e680, imac 0x12cca0, m1 0x107c3c;
    virtual void spawnGroup(int, bool, double, gd::vector<int> const&, int, int) = win 0x215580, imac 0x11caa0, m1 0xfb140;
    virtual void spawnObject(GameObject*, double, gd::vector<int> const&) = win 0x215a30, imac 0x11ce40, m1 0xfb500;
    virtual TodoReturn activateEndTrigger(int, bool, bool) = imac 0x76f0, m1 0x93bc;
    virtual void activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&) = imac 0x76f0, m1 0x93bc;
    virtual void toggleGlitter(bool) = imac 0x76f0, m1 0x93bc {}
    virtual void destroyPlayer(PlayerObject*, GameObject*) = imac 0x76f0, m1 0x93bc;
    virtual void updateDebugDraw() = win 0x20b3b0, imac 0x111800, m1 0xf122c;
    virtual void addToSection(GameObject*) = win 0x221100, m1 0x109ab4, imac 0x12eec0;
    virtual void addToGroup(GameObject*, int, bool) = win 0x21eb00, imac 0x12d230, m1 0x108148;
    virtual void removeFromGroup(GameObject*, int) = win 0x21ec80, imac 0x12d460, m1 0x108398;
    virtual void updateObjectSection(GameObject*) = win 0x222b50, imac 0x130d10, m1 0x10b260;
    virtual TodoReturn updateDisabledObjectsLastPos(cocos2d::CCArray*) = imac 0x76f0, m1 0x93bc;
    virtual TodoReturn toggleGroundVisibility(bool) = imac 0x13f570, m1 0x116f58;
    virtual void toggleMGVisibility(bool) = imac 0x13f580, m1 0x116f5c;
    virtual void toggleHideAttempts(bool) = imac 0x13f590, m1 0x116f60;
    virtual float timeForPos(cocos2d::CCPoint, int, int, bool, int) { return 0.f; }
    virtual float posForTime(float) { return 0.f; }
    virtual void resetSPTriggered() {}
    virtual void updateScreenRotation(float, bool, bool, float, int, float, int, int) = win 0x230600, imac 0x13f730, m1 0x1170a8;
    virtual TodoReturn reverseDirection(EffectGameObject*) = win 0x212b60, m1 0xf9264, imac 0x11a780;
    virtual void rotateGameplay(RotateGameplayGameObject*) = win 0x212bc0, imac 0x11a7c0, m1 0xf92a8;
    virtual TodoReturn didRotateGameplay() = imac 0x76f0, m1 0x93bc;
    virtual void updateTimeWarp(float) = win 0x2308e0, imac 0x13fed0, m1 0x117704;
    virtual void updateTimeWarp(GameObject*, float) = win 0x2308d0, m1 0x1176f8, imac 0x13feb0;
    virtual TodoReturn applyTimeWarp(float) = win 0x230930, imac 0x13ff20, m1 0x117744;
    virtual void playGravityEffect(bool) = imac 0x76f0, m1 0x93bc;
    virtual TodoReturn manualUpdateObjectColors(GameObject*) = imac 0x76f0, m1 0x93bc;
    virtual TodoReturn createCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, bool) = win 0x23a6d0, imac 0x14d4c0, m1 0x122568;
    virtual TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool) = win 0x23a9d0, imac 0x14d850, m1 0x122918;
    virtual TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*) = win 0x23abd0, imac 0x14da50, m1 0x122b58;
    virtual TodoReturn activatedAudioTrigger(SFXTriggerGameObject*) = win 0x23c780, imac 0x14e970, m1 0x12386c;
    virtual void checkpointActivated(CheckpointGameObject*) = win 0x240410, imac 0x152d20, m1 0x126c00;
    virtual TodoReturn flipArt(bool) = imac 0x152d10, m1 0x126bfc;
    virtual void addKeyframe(KeyframeGameObject*) = win 0x22e300, imac 0x13bed0, m1 0x114394;
    virtual void updateTimeLabel(int, int, bool) = imac 0x76f0, m1 0x93bc;
    virtual TodoReturn checkSnapshot() = imac 0x76f0, m1 0x93bc;
    virtual void toggleProgressbar() = imac 0x76f0, m1 0x93bc;
    virtual TodoReturn toggleInfoLabel() = imac 0x76f0, m1 0x93bc;
    virtual void removeAllCheckpoints() = imac 0x76f0, m1 0x93bc;
    virtual TodoReturn toggleMusicInPractice() = imac 0x76f0, m1 0x93bc;

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
    void* m_unkb5c;
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

    int m_attempts;
    bool m_bUnk30b8;
    int m_leftSectionIndex;
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
    int m_particleSystemLimit;
    cocos2d::CCDictionary* m_particlesDict;
    cocos2d::CCDictionary* m_customParticles;
    cocos2d::CCArray* m_unclaimedParticles;
    gd::unordered_map<int, gd::string> m_particleCountToParticleString;
    cocos2d::CCDictionary* m_claimedParticles;
    cocos2d::CCArray* m_temporaryParticles;
    gd::unordered_set<int> m_customParticlesUIDs;
    cocos2d::CCDictionary* m_gradientLayers;
    void* m_unk2a54;
    ShaderLayer* m_shaderLayer;
    bool m_bUnk31a0;
    bool m_bUnk31a1;
    StartPosObject* m_startPosObject;
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
    cocos2d::CCDictionary* m_collectedItems;
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
    bool m_playerDied;
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
    int m_unknown3494;
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

    virtual bool init() = imac 0x258450, m1 0x204dfc;
}

[[link(android)]]
class GJBigSpriteNode : cocos2d::CCNode {
    // virtual ~GJBigSpriteNode();

    static GJBigSpriteNode* create();

    virtual bool init() = imac 0x258440, m1 0x204df8;
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

    static GJChallengeItem* createFromString(gd::string string) = imac 0x8f490;
    static GJChallengeItem* createWithCoder(DS_Dictionary* dsdict) = imac 0x8f8b0;
    void dataLoaded(DS_Dictionary* dsdict) = imac 0x8f8f0;
    void incrementCount(int add);
    bool init(GJChallengeType challengeType, int goal, int reward, int timeLeft, gd::string questName);
    void setCount(int value);

    virtual void encodeWithCoder(DS_Dictionary* dsdict) = win 0x1f1580, imac 0x8fa50, m1 0x83050;
    virtual bool canEncode() = imac 0x8fb20, m1 0x8312c;

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

    static GJChestSprite* create(int) = win 0x3ba150, imac 0x20b760, m1 0x1c008c;

    bool init(int chestType) = win inline, m1 0x1c29e4 {
        if (!cocos2d::CCSprite::init()) return false;
        m_chestType = chestType;
        this->setContentSize({ 0, 0 });
        this->switchToState(ChestSpriteState::Closed, false);
        return true;
    }
    void switchToState(ChestSpriteState, bool) = win 0x3ba350, m1 0x1c1434;

    virtual void setOpacity(unsigned char) = win 0x3ba2e0, m1 0x1c2b1c, imac 0x20e4a0;
    virtual void setColor(cocos2d::ccColor3B const&) = win 0x3ba220, imac 0x20e3b0, m1 0x1c2a48;

    int m_chestType;
    ChestSpriteState m_spriteState;
    bool m_dark;
}

[[link(android)]]
class GJColorSetupLayer : FLAlertLayer, ColorSelectDelegate, FLAlertLayerProtocol {
    // virtual ~GJColorSetupLayer();

    static GJColorSetupLayer* create(LevelSettingsObject*) = win 0x24ee60, imac 0x1f9aa0, m1 0x1aef3c;

    bool init(LevelSettingsObject*) = win 0x24efa0, imac 0x1f9c30, m1 0x1af068;
    void onClose(cocos2d::CCObject* sender) = win 0x24fc30;
    void onColor(cocos2d::CCObject* sender) = win 0x24fae0, imac 0x1fa340, m1 0x1af710;
    void onPage(cocos2d::CCObject* sender) = win 0x24fa90, imac 0x1fa590;
    void showPage(int) = win 0x24fbc0, imac 0x1fa680, m1 0x1afa64;
    void updateSpriteColor(ColorChannelSprite*, cocos2d::CCLabelBMFont*, int) = win 0x24f920, imac 0x1fa6f0, m1 0x1afac8;
    void updateSpriteColors() = win 0x24f800, imac 0x1fa400, m1 0x1af7d4;

    virtual void keyBackClicked() = win 0x24fc80, imac 0x1fa7c0, m1 0x1afb7c;
    virtual void colorSelectClosed(cocos2d::CCNode*) = win 0x24fbb0, imac 0x1fa790, m1 0x1afb70;

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

    virtual bool init() = imac 0x54b200, m1 0x4a35ec;

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

    static GJCommentListLayer* create(BoomListView* listView, char const* title, cocos2d::ccColor4B color, float width, float height, bool blueBorder) = win 0x28a200, imac 0x28ce90, m1 0x23582c;

    bool init(BoomListView* listView, char const* title, cocos2d::ccColor4B color, float width, float height, bool blueBorder) = win 0x28a320;

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

    static GJDifficultySprite* create(int, GJDifficultyName) = win 0x29d7b0, imac 0x2a3ac0, m1 0x24a6b8;

    static gd::string getDifficultyFrame(int, GJDifficultyName) = win 0x29d890, imac 0x2a3c10, m1 0x24a85c;
    bool init(int, GJDifficultyName) = imac 0x2a3ba0, m1 0x24a7c4;
    void updateDifficultyFrame(int, GJDifficultyName) = win 0x29d970, imac 0x2a3d50, m1 0x24a9a8;
    void updateFeatureState(GJFeatureState) = win 0x29da90, imac 0x2a3ed0, m1 0x24ab20;
    void updateFeatureStateFromLevel(GJGameLevel*) = m1 0x24aae8;

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

    static GJDropDownLayer* create(const char* title, float height, bool p2) = win inline, imac 0x5cfd30, m1 0x503f20 {
        GJDropDownLayer* pRet = new GJDropDownLayer();
        if (pRet && pRet->init(title, height, p2)) {
            pRet->autorelease();
            return pRet;
        }
        CC_SAFE_DELETE(pRet);
        return nullptr;
    }
    static GJDropDownLayer* create(const char* title) = win inline, imac 0x5d0270 {
        GJDropDownLayer* pRet = new GJDropDownLayer();
        if (pRet && pRet->init(title)) {
            pRet->autorelease();
            return pRet;
        }
        CC_SAFE_DELETE(pRet);
        return nullptr;
    }

    bool init(char const*, float, bool) = win 0x24fd90, imac 0x5cfe70, m1 0x504044;
    bool init(char const* title) = win inline, imac 0x5d0290 {
        return init(title, 220.0f, false);
    }

    virtual void draw() = win 0x426f0, imac 0x5d0670, m1 0x5047d8;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x5d06a0, m1 0x504814 { return true; }
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x5d0700, m1 0x504834 {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x5d06c0, m1 0x504824 {}
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x5d06e0, m1 0x50482c {}
    virtual void registerWithTouchDispatcher() = imac 0x5d0330, m1 0x5044c8;
    virtual void keyBackClicked() = win 0x250210, imac 0x5d0370, m1 0x504500;
    virtual void customSetup() = imac 0x5d02b0, m1 0x504464 {}
    virtual void enterLayer() = win 0x425a0, imac 0x5d0300, m1 0x504490;
    virtual void exitLayer(cocos2d::CCObject*) = win 0x250230, imac 0x5d03b0, m1 0x504524;
    virtual void showLayer(bool) = win 0x250270, m1 0x504570, imac 0x5d03f0;
    virtual void hideLayer(bool) = win 0x2503c0, m1 0x504674, imac 0x5d0500;
    virtual void layerVisible() = win 0x426a0, imac 0x5d0610, m1 0x504778;
    virtual void layerHidden() = win 0x250510, imac 0x5d0630, m1 0x504788;
    virtual void enterAnimFinished() = imac 0x5d0600, m1 0x504774 {}
    virtual void disableUI() = win 0x2501d0, m1 0x504468, imac 0x5d02c0;
    virtual void enableUI() = win 0x2501f0, m1 0x50447c, imac 0x5d02e0;

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

    static GJEffectManager* create() = win 0x2537d0;

    TodoReturn activeColorForIndex(int) = win 0x254810, imac 0x2ca8e0;
    TodoReturn activeOpacityForIndex(int) = imac 0x2caa40;
    TodoReturn addAllInheritedColorActions(cocos2d::CCArray*);
    void addCountToItem(int, int);
    TodoReturn addMoveCalculation(CCMoveCNode*, cocos2d::CCPoint, GameObject*);
    TodoReturn calculateBaseActiveColors();
    TodoReturn calculateInheritedColor(int, ColorAction*);
    TodoReturn calculateLightBGColor(cocos2d::ccColor3B);
    TodoReturn checkCollision(int const&, int const&);
    void colorActionChanged(ColorAction*) = imac 0x2cbc00;
    bool colorExists(int) = imac 0x2cbbd0;
    TodoReturn colorForEffect(cocos2d::ccColor3B, cocos2d::ccHSVValue);
    TodoReturn colorForGroupID(int, cocos2d::ccColor3B const&, bool);
    TodoReturn colorForIndex(int);
    TodoReturn colorForPulseEffect(cocos2d::ccColor3B const&, PulseEffectAction*);
    TodoReturn controlActionsForControlID(int, GJActionCommand);
    TodoReturn controlActionsForTrigger(EffectGameObject*, GJActionCommand);
    int countForItem(int) = win 0x25af40;
    TodoReturn createFollowCommand(float, float, float, int, int, int, int);
    TodoReturn createKeyframeCommand(int, cocos2d::CCArray*, GameObject*, int, int, bool, float, float, float, float, float, float, gd::vector<int> const&);
    TodoReturn createMoveCommand(cocos2d::CCPoint, int, float, int, float, bool, bool, bool, bool, float, float, int, int);
    TodoReturn createPlayerFollowCommand(float, float, int, float, float, int, int, int);
    TodoReturn createRotateCommand(float, float, int, int, int, float, bool, bool, bool, int, int);
    TodoReturn createTransformCommand(double, double, double, double, bool, float, int, int, int, float, bool, bool, int, int);
    TodoReturn getAllColorActions();
    TodoReturn getAllColorSprites();
    ColorAction* getColorAction(int) = win 0x254750, imac 0x2ca770;
    ColorActionSprite* getColorSprite(int) = win 0x254810, imac 0x2ca930;
    TodoReturn getLoadedMoveOffset(gd::unordered_map<int, std::pair<double, double>>&);
    TodoReturn getMixedColor(cocos2d::ccColor3B, cocos2d::ccColor3B, float);
    TodoReturn getMoveCommandNode(GroupCommandObject2*);
    TodoReturn getMoveCommandObject();
    TodoReturn getOpacityActionForGroup(int);
    TodoReturn getSaveString() = imac 0x2d98f0;
    TodoReturn getTempGroupCommand();
    TodoReturn handleObjectCollision(bool, int, int);
    TodoReturn hasActiveDualTouch();
    TodoReturn hasBeenTriggered(int, int) = imac 0x2d6560;
    TodoReturn hasPulseEffectForGroupID(int);
    bool isGroupEnabled(int);
    TodoReturn keyForGroupIDColor(int, cocos2d::ccColor3B const&, bool);
    void loadFromState(EffectManagerState&) = win 0x25ca20;
    void objectsCollided(int, int) = imac 0x2ccc10;
    void onRewardedVideo(cocos2d::CCObject* sender);
    TodoReturn opacityForIndex(int);
    TodoReturn opacityModForGroup(int);
    TodoReturn pauseTimer(int);
    TodoReturn playerButton(bool, bool) = win 0x25ace0;
    void playerDied();
    TodoReturn postCollisionCheck() = win 0x254e30;
    TodoReturn postMoveActions() = win 0x259350;
    TodoReturn preCollisionCheck();
    TodoReturn prepareMoveActions(float, bool) = win 0x257f40;
    TodoReturn processColors() = win 0x253e90, imac 0x2caab0;
    TodoReturn processCopyColorPulseActions() = imac 0x2cb180;
    TodoReturn processInheritedColors() = imac 0x2cadd0;
    TodoReturn processMoveCalculations();
    TodoReturn processPulseActions();
    TodoReturn registerCollisionTrigger(int, int, int, bool, bool, gd::vector<int> const&, int, int);
    TodoReturn registerRotationCommand(GroupCommandObject2*, bool);
    TodoReturn removeAllPulseActions();
    TodoReturn removeColorAction(int);
    TodoReturn removePersistentFromAllItems();
    TodoReturn removePersistentFromAllTimers();
    TodoReturn removeTriggeredID(int, int);
    void reset() = win 0x253bf0, imac 0x2c9720;
    TodoReturn resetEffects() = win 0x254b70;
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
    void saveToState(EffectManagerState&) = win 0x25c400;
    void setColorAction(ColorAction*, int);
    void setFollowing(int, int, bool);
    void setupFromString(gd::string);
    bool shouldBlend(int) = imac 0x2caa70;
    TodoReturn spawnGroup(int, float, bool, gd::vector<int> const&, int, int) = win 0x25a800;
    TodoReturn spawnObject(GameObject*, float, gd::vector<int> const&, int, int);
    TodoReturn startTimer(int, double, double, bool, bool, bool, float, bool, int, gd::vector<int> const&, int, int);
    TodoReturn storeTriggeredID(int, int) = win 0x25ab40, imac 0x2d63b0;
    TodoReturn timeForItem(int) = win 0x25beb0;
    TodoReturn timerExists(int);
    TodoReturn toggleGroup(int, bool);
    TodoReturn toggleItemPersistent(int, bool);
    TodoReturn toggleTimerPersistent(int, bool);
    TodoReturn transferPersistentItems();
    TodoReturn traverseInheritanceChain(InheritanceNode*);
    TodoReturn tryGetMoveCommandNode(int);
    TodoReturn updateActiveOpacityEffects();
    TodoReturn updateColorAction(ColorAction*);
    void updateColorEffects(float) = imac 0x2cbd60, m1 0x26eab8;
    void updateColors(cocos2d::ccColor3B, cocos2d::ccColor3B);
    void updateCountForItem(int, int) = win 0x25b000;
    void updateEffects(float) = win 0x2549f0, imac 0x2cbc30, m1 0x26e9b4;
    void updateOpacityAction(OpacityEffectAction*);
    void updateOpacityEffects(float);
    void updatePulseEffects(float) = win 0x259d10, imac 0x2cbf30, m1 0x26ec48;
    TodoReturn updateSpawnTriggers(float) = win 0x25a8f0;
    TodoReturn updateTimer(int, double);
    TodoReturn updateTimers(float, float) = win 0x25b8c0;
    TodoReturn wasFollowing(int, int);
    TodoReturn wouldCreateLoop(InheritanceNode*, int);
    virtual void rewardedVideoFinished();

    virtual bool init() = m1 0x26cd1c, imac 0x2c94c0;

    TriggerEffectDelegate* m_triggerEffectDelegate;
    cocos2d::CCDictionary* m_unkObject148;
    cocos2d::CCDictionary* m_unkDict150;
    gd::vector<PulseEffectAction> m_pulseEffectVector;
    gd::unordered_map<int, gd::vector<PulseEffectAction>> m_pulseEffectMap;
    gd::unordered_map<int, OpacityEffectAction> m_opacityEffectMap;
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
    gd::unordered_map<int, int> m_itemIDs;
    gd::unordered_map<int, int> m_unkMap350;
    gd::unordered_set<int> m_unkMap388;
    gd::unordered_map<int, TimerItem> m_unkMap3c0;
    gd::unordered_map<int, std::vector<TimerTriggerAction>> m_unkMap3f8;
    cocos2d::CCArray* m_unkArray430;
    gd::vector<bool> m_unkVector438;
    gd::unordered_set<int> m_unkMap460;
    gd::map<int, int> m_unkMap498;
    gd::unordered_set<int> m_unkMap4c8;
    gd::vector<SpawnTriggerAction> m_nukVector500;
    gd::vector<GroupCommandObject2*> m_unkVector518;
    gd::vector<GroupCommandObject2*> m_unkVector530;
    gd::vector<CCObject*> m_unkVector548;
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

    virtual bool init() = m1 0x507694, imac 0x5d3aa0;
}

[[link(android)]]
class GJFollowCommandLayer : SetupTriggerPopup {
    // virtual ~GJFollowCommandLayer();

    static GJFollowCommandLayer* create(EffectGameObject*, cocos2d::CCArray*);

    bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x268d10;
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

    virtual void determineStartValues() = imac 0x2c3f60, m1 0x267edc;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x2c4b30, m1 0x26888c;
    virtual void textChanged(CCTextInputNode*) = win 0x26a730, imac 0x2c4570, m1 0x26843c;
}

[[link(android)]]
class GJFriendRequest : cocos2d::CCNode {
    // virtual ~GJFriendRequest();

    static GJFriendRequest* create();
    static GJFriendRequest* create(cocos2d::CCDictionary*);

    virtual bool init() = imac 0x549e20, m1 0x4a259c;
}

[[link(android)]]
class GJGameLevel : cocos2d::CCNode {
    /*inline static GJGameLevel* createWithCoder(DS_Dictionary* dict) {
        //inlined on windows
        auto level = GJGameLevel::create();
        level->dataLoaded(dict);
        return level;
    }*/
    // virtual ~GJGameLevel();
    //GJGameLevel() = ios 0xb40a8;

    static GJGameLevel* create() = win 0x169b40, imac 0x516980, m1 0x473e4c;
    static GJGameLevel* create(cocos2d::CCDictionary*, bool) = win 0x1683e0, m1 0x476208;
    static gd::string lengthKeyToString(int key) = win 0x16a0d0, imac 0x545880;

    bool areCoinsVerified();
    void copyLevelInfo(GJGameLevel*) = win 0x16aaa0;
    TodoReturn createWithCoder(DS_Dictionary*);
    void dataLoaded(DS_Dictionary*) = win 0x16b150;
    int demonIconForDifficulty(DemonDifficultyType) = imac 0x548ff0, m1 0x4a18ac;
    TodoReturn generateSettingsString();
    gd::string getAudioFileName() = win 0x16a3f0;
    int getAverageDifficulty() = win 0x16a230, imac 0x545920, m1 0x49e78c;
    char const* getCoinKey(int coinNumber) = win 0x16a2a0, imac 0x535f50, m1 0x48fa84;
    TodoReturn getLastBuildPageForTab(int);
    const char* getLengthKey(int length, bool platformer) = imac 0x545840, m1 0x49e678;
    TodoReturn getListSnapshot();
    TodoReturn getNormalPercent();
    TodoReturn getSongName();
    gd::string getUnpackedLevelDescription() = win 0x16d150;
    void handleStatsConflict(GJGameLevel*) = win 0x16cc80;
    inline bool isPlatformer() {
        return m_levelLength == 5;
    }
    TodoReturn levelWasAltered() = imac 0x5451f0;
    TodoReturn levelWasSubmitted();
    TodoReturn parseSettingsString(gd::string);
    void saveNewScore(int, int);
    void savePercentage(int percent, bool isPracticeMode, int clicks, int attempts, bool isChkValid) = win 0x169db0, m1 0x49e288;
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
    TodoReturn shouldCheatReset();
    TodoReturn storeNewLocalScore(int, int);
    TodoReturn unverifyCoins();

    virtual void encodeWithCoder(DS_Dictionary*) = win 0x16c090, imac 0x548390, m1 0x4a0ce8;
    virtual bool canEncode() = imac 0x548ee0, m1 0x4a178c;
    virtual bool init() = win 0x169ba0, imac 0x544fd0, m1 0x49df90;

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

    static GJGameLoadingLayer* create(GJGameLevel* level, bool editor) = imac 0x154c70;
    static GJGameLoadingLayer* transitionToLoadingLayer(GJGameLevel* level, bool editor) = win 0x242770;

    void gameLayerDidUnload();
    bool init(GJGameLevel* level, bool editor) = imac 0x154fd0;
    void loadLevel() = win 0x242960, imac 0x1550d0, m1 0x128a84;

    virtual void onEnter() = imac 0x155140, m1 0x128aec;
    virtual void onEnterTransitionDidFinish() = imac 0x155130, m1 0x128ae8;

    GJGameLevel* m_level;
    bool m_editor;
}

[[link(android), depends(EventTriggerInstance), depends(SongChannelState), depends(DynamicObjectAction), depends(AdvancedFollowInstance), depends(EnterEffectInstance), depends(GameObjectPhysics), depends(GJValueTween), depends(SFXTriggerInstance), depends(SFXTriggerState), depends(SongTriggerState), depends(EnterEffectAnimValue)]]
class GJGameState {
    // ~GJGameState();
    // GJGameState();

    TodoReturn controlTweenAction(int, int, GJActionCommand);
    TodoReturn getGameObjectPhysics(GameObject*);
    TodoReturn processStateTriggers() = win 0x200170;
    void stopTweenAction(int) = win 0x2443c0;
    TodoReturn tweenValue(float, float, int, float, int, float, int, int) = win 0x200020;
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
    double m_totalTime;
    double m_levelTime;
    double m_unkDouble3;
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
    gd::vector<float> m_unkVecFloat1;
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
    GJGarageLayer() = win inline {
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
    static GJGarageLayer* node() = win inline {
        auto ret = new GJGarageLayer();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCScene* scene() = win 0x26b490;

    gd::string achievementForUnlock(int, UnlockType);
    gd::string descriptionForUnlock(int, UnlockType) = win 0x270910;
    cocos2d::CCArray* getItems(IconType) = win 0x26ed30, m1 0x2edf60;
    cocos2d::CCArray* getItems(int, int, IconType, int) = imac 0x35a9d0;
    gd::string getLockFrame(int, UnlockType);
    void onArrow(cocos2d::CCObject* sender) = win 0x26e470, imac 0x3599f0, m1 0x2ed034;
    void onBack(cocos2d::CCObject* sender) = win 0x271630, imac 0x358e50;
    void onInfo(cocos2d::CCObject* sender) = win 0x26d070;
    void onNavigate(cocos2d::CCObject* sender) = win 0x26e570, imac 0x35a2e0, m1 0x2ed8c0;
    void onPaint(cocos2d::CCObject* sender) = win 0x271450;
    void onRewardedVideo(cocos2d::CCObject* sender);
    void onSelect(cocos2d::CCObject* sender) = win 0x26f770, imac 0x35adf0, m1 0x2ee388;
    void onSelectTab(cocos2d::CCObject* sender) = win 0x26e5a0, imac 0x3599c0;
    void onShards(cocos2d::CCObject* sender) = win 0x271300;
    void onShop(cocos2d::CCObject* sender);
    void onSpecial(cocos2d::CCObject* sender);
    void onToggleItem(cocos2d::CCObject* sender) = win 0x26fe10, imac 0x35b650;
    void playRainbowEffect() = win 0x271110, imac 0x35ba40, m1 0x2eed9c;
    void playShadowEffect();
    void selectTab(IconType) = win 0x26e5d0, imac 0x359b50, m1 0x2ed170;
    void setupIconSelect() = win 0x26d810;
    void setupPage(int, IconType) = win 0x26e690, m1 0x2ed2a0;
    void setupSpecialPage() = imac 0x35a310, m1 0x2ed8f8;
    void showUnlockPopupNew(int, UnlockType);
    gd::string titleForUnlock(int, UnlockType);
    void toggleGlow();
    void updatePlayerColors() = win 0x270080, m1 0x2eb2ec;
    void updatePlayerName(char const*);

    virtual bool init() = win 0x26b650, m1 0x2e98a0, imac 0x356130;
    virtual void keyBackClicked() = win 0x2717d0, imac 0x35cde0, m1 0x2f0060;
    virtual void textInputOpened(CCTextInputNode*) = win 0x26d270, imac 0x359670, m1 0x2ecc40;
    virtual void textInputClosed(CCTextInputNode*) = win 0x26d460, m1 0x2ecd98, imac 0x3597a0;
    virtual void textChanged(CCTextInputNode*) = win 0xc3060, imac 0x359960, m1 0x2ecf80;
    virtual void listButtonBarSwitchedPage(ListButtonBar*, int) = win 0xc3110, imac 0x35bd80, m1 0x2ef0ac;
    virtual void showUnlockPopup(int, UnlockType) = win 0x270200, m1 0x2ef204, imac 0x35bf10;
    virtual void updateRate() = win 0x270ed0, m1 0x2efe4c, imac 0x35cb90;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x270aa0, imac 0x35c920, m1 0x2efc14;
    virtual void dialogClosed(DialogLayer*) = win 0x270d00, m1 0x2efd10, imac 0x35ca30;
    virtual void playerColorChanged() = win 0x270050, imac 0x35bc80, m1 0x2eefcc;
    virtual void rewardedVideoFinished() = win 0x26d260, imac 0x359650, m1 0x2ecc30;

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

    virtual bool init() = imac 0x154ae0, m1 0x128570;
}

[[link(android)]]
class GJGroundLayer : cocos2d::CCLayer {
    // virtual ~GJGroundLayer();

    static GJGroundLayer* create(int, int) = win 0x276750, imac 0x5d2800;

    void createLine(int) = win 0x277000;
    TodoReturn deactivateGround();
    TodoReturn fadeInFinished();
    TodoReturn getGroundY();
    TodoReturn hideShadows();
    bool init(int, int) = win 0x2767d0, m1 0x506568;
    void loadGroundSprites(int, bool) = win 0x276d40;
    void positionGround(float) = imac 0x5d3950;
    TodoReturn scaleGround(float) = win 0x2771f0, imac 0x5d33f0;
    void toggleVisible01(bool);
    void toggleVisible02(bool);
    void updateGround01Color(cocos2d::ccColor3B);
    void updateGround02Color(cocos2d::ccColor3B);
    TodoReturn updateGroundPos(cocos2d::CCPoint);
    TodoReturn updateGroundWidth(bool);
    void updateLineBlend(bool) = imac 0x5d3710, m1 0x50732c;
    TodoReturn updateShadows() = win 0x277430, imac 0x5d3680;
    TodoReturn updateShadowXPos(float, float) = win 0x2774d0, imac 0x5d3850;

    virtual void draw() = imac 0x5d3940, m1 0x507574 {}
    virtual void showGround() = win 0x2773a0, imac 0x5d3760, m1 0x507368;
    virtual TodoReturn fadeInGround(float) = win 0x2773b0, imac 0x5d3770, m1 0x507374;
    virtual TodoReturn fadeOutGround(float) = win 0x2775a0, imac 0x5d3910, m1 0x507548;
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

    static GJItemIcon* create(UnlockType p0, int p1, cocos2d::ccColor3B p2, cocos2d::ccColor3B p3, bool p4, bool p5, bool p6, cocos2d::ccColor3B p7) = win inline, imac 0x35ded0, m1 0x2f0f98 {
        auto ret = new GJItemIcon();
        if (ret->init(p0, p1, p2, p3, p4, p5, p6, p7)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
         }
    static GJItemIcon* createBrowserItem(UnlockType unlockType, int itemID) = win 0x272f50, imac 0x35ad90;
    static GJItemIcon* createStoreItem(UnlockType, int, bool, cocos2d::ccColor3B) = win 0x272e20, imac 0x35dea0, m1 0x2f0f7c;
    static float scaleForType(UnlockType) = win 0x273c70, imac 0x35adc0;
    static cocos2d::ccColor3B unlockedColorForType(int) = imac 0x35e690, m1 0x2f1704;
    void changeToLockedState(float) = win 0x273b90, imac 0x35b4e0, m1 0x2ee86c;
    void darkenStoreItem(cocos2d::ccColor3B) = win 0x2738a0, imac 0x35e6f0, m1 0x2f176c;
    void darkenStoreItem(ShopType) = win 0x273820, m1 0x2ee844;
    bool init(UnlockType, int, cocos2d::ccColor3B, cocos2d::ccColor3B, bool, bool, bool, cocos2d::ccColor3B) = win 0x273070, m1 0x2f10a8;
    void toggleEnabledState(bool) = win 0x273ad0;

    virtual void setOpacity(unsigned char) = win 0x273780, m1 0x2f15d8, imac 0x35e550;

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

    static GJLevelList* create() = win 0x173760, imac 0x5177f0, m1 0x474bb0;
    static GJLevelList* create(cocos2d::CCDictionary*) = win 0x172e70, m1 0x4784ac;

    void addLevelToList(GJGameLevel* level) = win 0x173ee0;
    TodoReturn completedLevels() = imac 0x54caa0, m1 0x4a4b60;
    TodoReturn createWithCoder(DS_Dictionary*);
    void dataLoaded(DS_Dictionary*) = win 0x174cd0, imac 0x54cf90;
    TodoReturn duplicateListLevels(GJLevelList*);
    TodoReturn frameForListDifficulty(int, DifficultyIconType) = imac 0x54d550, m1 0x4a55f0;
    cocos2d::CCArray* getListLevelsArray(cocos2d::CCArray*) = win 0x174160;
    gd::string getUnpackedDescription() = win 0x173b80;
    void handleStatsConflict(GJLevelList*) = imac 0x54b540, m1 0x4a3914;
    bool hasMatchingLevels(GJLevelList*) = win 0x173970, imac 0x54b560, m1 0x4a392c;
    TodoReturn orderForLevel(int);
    TodoReturn parseListLevels(gd::string) = win 0x173c40;
    TodoReturn removeLevelFromList(int);
    void reorderLevel(int levelID, int newPosition) = win 0x174070;
    TodoReturn reorderLevelStep(int, bool);
    void showListInfo() = win 0x174900, imac 0x54caf0, m1 0x4a4bc4;
    TodoReturn totalLevels() = imac 0x54ca80, m1 0x4a4b50;
    TodoReturn updateLevelsString();

    virtual void encodeWithCoder(DS_Dictionary*) = win 0x174ff0, imac 0x54d2d0, m1 0x4a53b0;
    virtual bool canEncode() = imac 0x54d540, m1 0x4a55e8;
    virtual bool init() = m1 0x4a389c, imac 0x54b4c0;

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

    void loadFromScore(GJUserScore*) = win 0xb93d0, imac 0x2392f0;
    void onViewProfile(cocos2d::CCObject* sender);
    void updateBGColor(int);

    virtual bool init() = imac 0x244370, m1 0x1f321c;
    virtual void draw() = imac 0x2443c0, m1 0x1f3264;
}

[[link(android)]]
class GJListLayer : cocos2d::CCLayerColor {
    // virtual ~GJListLayer();

    static GJListLayer* create(BoomListView*, char const*, cocos2d::ccColor4B, float, float, int) = win 0x277d50, imac 0x5b9ea0, m1 0x4f0078;

    bool init(BoomListView*, char const*, cocos2d::ccColor4B, float, float, int) = win 0x277e80, imac 0x5b9fb0, m1 0x4f016c;

    BoomListView* m_listView;
}

[[link(android)]]
class GJLocalLevelScoreCell : TableViewCell {
    // virtual ~GJLocalLevelScoreCell();
    GJLocalLevelScoreCell(char const*, float, float);

    void loadFromScore(GJLocalScore*) = win 0xb8fd0, imac 0x239cd0;
    void updateBGColor(int);

    virtual bool init() = win 0x3c7f0, imac 0x244180, m1 0x1f30e4;
    virtual void draw() = win 0xad710, imac 0x2441a0, m1 0x1f30f0;
}

[[link(android)]]
class GJLocalScore : cocos2d::CCObject {
    // virtual ~GJLocalScore();

    static GJLocalScore* create(int, int) = imac 0x549780;

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
    static GJMapPack* create(cocos2d::CCDictionary*) = win 0x16d210, m1 0x478f3c;

    static GJMapPack* create() = win inline {
        auto ret = new GJMapPack();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    int completedMaps() = win 0x16e080, imac 0x549670, m1 0x4a1ec4;
    bool hasCompletedMapPack() = win inline, imac 0x549720, m1 0x4a1f88 {
        auto total = this->totalMaps();
        if (total > 0) return this->completedMaps() >= total;
        else return 0;
    }
    void parsePackColors(gd::string, gd::string) = win 0x16ddd0, m1 0x4a1be0;
    void parsePackLevels(gd::string) = imac 0x549220, m1 0x4a1acc;
    int totalMaps() = win inline {
        if (this->m_levels) {
            return this->m_levels->count();
        }
    
        return 0;
    }

    virtual bool init() = win 0x16dd70, imac 0x5495f0, m1 0x4a1e64;

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

    void loadFromMessage(GJUserMessage*) = win 0xbc7e0;
    TodoReturn markAsRead();
    void onDeleteMessage(cocos2d::CCObject* sender);
    void onToggle(cocos2d::CCObject* sender);
    void onViewMessage(cocos2d::CCObject* sender);
    void onViewProfile(cocos2d::CCObject* sender);
    void updateBGColor(int);
    TodoReturn updateToggle();

    virtual bool init() = win 0xbb620, imac 0x246a40, m1 0x1f5274;
    virtual void draw() = imac 0x246d50, m1 0x1f555c;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xbd440, imac 0x246e20, m1 0x1f5608;
    virtual void uploadActionFinished(int, int) = win 0xbd5e0, imac 0x246fb0, m1 0x1f576c;
    virtual void uploadActionFailed(int, int) = win 0xbd760, imac 0x2471a0, m1 0x1f5960;
    virtual void onClosePopup(UploadActionPopup*) = imac 0x247310, m1 0x1f5ac8;
}

[[link(android)]]
class GJMessagePopup : FLAlertLayer, UploadActionDelegate, UploadPopupDelegate, FLAlertLayerProtocol, DownloadMessageDelegate {
    // virtual ~GJMessagePopup();

    static GJMessagePopup* create(GJUserMessage*);

    void blockUser();
    bool init(GJUserMessage*);
    void loadFromGJMessage(GJUserMessage*) = win 0x290640, m1 0x23c4a0;
    void onBlock(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    void onRemove(cocos2d::CCObject* sender);
    void onReply(cocos2d::CCObject* sender);

    virtual void keyBackClicked() = imac 0x295220, m1 0x23d248;
    virtual TodoReturn downloadMessageFinished(GJUserMessage*) = win 0x291390, imac 0x295290, m1 0x23d2c4;
    virtual TodoReturn downloadMessageFailed(int) = win 0x2913e0, imac 0x295350, m1 0x23d39c;
    virtual void uploadActionFinished(int, int) = win 0x291420, imac 0x2953f0, m1 0x23d454;
    virtual void uploadActionFailed(int, int) = win 0x2915b0, imac 0x2955c0, m1 0x23d648;
    virtual void onClosePopup(UploadActionPopup*) = win 0x291680, imac 0x295710, m1 0x23d7b8;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x291700, imac 0x295810, m1 0x23d8dc;
}

[[link(android)]]
class GJMGLayer : cocos2d::CCLayer {
    // virtual ~GJMGLayer();

    static GJMGLayer* create(int) = imac 0x5d3ae0;

    TodoReturn deactivateGround();
    TodoReturn defaultYOffsetForBG2(int);
    bool init(int);
    void loadGroundSprites(int, bool);
    TodoReturn scaleGround(float);
    TodoReturn toggleVisible01(bool);
    TodoReturn toggleVisible02(bool);
    TodoReturn updateGroundColor(cocos2d::ccColor3B, bool);
    TodoReturn updateGroundOpacity(unsigned char, bool) = imac 0x5d43a0;
    TodoReturn updateGroundPos(cocos2d::CCPoint);
    TodoReturn updateGroundWidth(bool);
    void updateMG01Blend(bool);
    void updateMG02Blend(bool);

    virtual void draw() = imac 0x5d45c0, m1 0x508150 {}
    virtual void showGround() = imac 0x5d4590, m1 0x508120;
}

[[link(android)]]
class GJMoreGamesLayer : GJDropDownLayer {
    // virtual ~GJMoreGamesLayer();
    // GJMoreGamesLayer();

    static GJMoreGamesLayer* create() = win 0x2784f0;

    TodoReturn getMoreGamesList();

    virtual void customSetup() = m1 0x694014, imac 0x77f640;
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

    static GJMultiplayerManager* sharedState() = win 0x27aba0, imac 0x642990, m1 0x56b4c8;

    void addComment(gd::string, int);
    void addDLToActive(char const* tag, cocos2d::CCObject* obj);
    void addDLToActive(char const* tag);
    TodoReturn createAndAddComment(gd::string, int);
    void dataLoaded(DS_Dictionary*);
    void encodeDataTo(DS_Dictionary*);
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

    virtual bool init() = m1 0x56cb20, imac 0x644110;
}

[[link(android)]]
class GJObjectDecoder : cocos2d::CCNode {
    // virtual ~GJObjectDecoder();

    static GJObjectDecoder* sharedDecoder() = m1 0x62d5a4;

    virtual bool init() = imac 0x70e680, m1 0x62d64c;
    virtual cocos2d::CCObject* getDecodedObject(int, DS_Dictionary*) = win 0x27c610, imac 0x70e690, m1 0x62d650;
}

[[link(android)]]
class GJOnlineRewardDelegate {
    virtual void onlineRewardStatusFinished(gd::string) {}
    virtual void onlineRewardStatusFailed() {}
}

[[link(android)]]
class GJOptionsLayer : SetupTriggerPopup {
    // virtual ~GJOptionsLayer();
    GJOptionsLayer() = win 0x285820;

    static GJOptionsLayer* create(int) = imac 0x28a190;

    void addGVToggle(char const*, char const*, char const*) = win 0x288350, imac 0x28abe0, m1 0x2337c4;
    void addToggle(char const* p0, int p1, bool p2, char const* p3) = win inline {
        addToggleInternal(p0, p1, p2, p3);
    }
    void addToggleInternal(char const*, int, bool, char const*) = win 0x288490, m1 0x233910;
    int countForPage(int);
    void goToPage(int);
    void incrementCountForPage(int) = win 0x288a60;
    const char* infoKey(int);
    bool init(int) = win 0x288010, imac 0x28a3e0, m1 0x233088;
    cocos2d::CCLayer* layerForPage(int);
    const char* layerKey(int);
    cocos2d::CCPoint nextPosition(int) = imac 0x28b230, m1 0x233dcc;
    const char* objectKey(int);
    cocos2d::CCArray* objectsForPage(int);
    void offsetToNextPage() = win inline, imac 0x28aba0, m1 0x23379c {
        m_toggleCount += m_togglesPerPage - m_toggleCount % m_togglesPerPage;
    }
    void onInfo(cocos2d::CCObject* sender);
    void onNextPage(cocos2d::CCObject* sender);
    void onPrevPage(cocos2d::CCObject* sender);
    void onToggle(cocos2d::CCObject* sender) = win 0x2892c0, imac 0x28b530, m1 0x2340b0;
    const char* pageKey(int);

    virtual void setupOptions() = imac 0x28abd0, m1 0x2337c0 {}
    virtual void didToggleGV(gd::string) = imac 0x76f0, m1 0x93bc;
    virtual void didToggle(int) = imac 0x76f0, m1 0x93bc {}

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

    static GJPathPage* create(int, GJPathsLayer*) = win 0x27da60, imac 0x2ead50, m1 0x285128;

    bool init(int, GJPathsLayer*) = m1 0x285618;
    void onActivatePath(cocos2d::CCObject* sender) = win 0x27f7c0, imac 0x2ed0a0, m1 0x2872d8;
    void onBack(cocos2d::CCObject* sender) = win 0x281550;
    void onIconInfo(cocos2d::CCObject* sender) = win 0x27f830;
    void onUnlock(cocos2d::CCObject* sender) = imac 0x2ecfb0, m1 0x2871cc;
    void playUnlockAnimation() = win 0x2802e0, m1 0x287304;
    void showCantAffordMessage(GJStoreItem*);
    void unlockAnimationFinished() = imac 0x2ee120, m1 0x2881c8;
    void unlockAnimationStep2() = win 0x280930, m1 0x287f80;
    void unlockAnimationStep3() = win 0x280bb0, imac 0x2ee280, m1 0x288324;

    virtual void registerWithTouchDispatcher() = imac 0x2eedf0, m1 0x288d48;
    virtual void keyBackClicked() = win 0x2815f0, imac 0x2eecb0, m1 0x288be4;
    virtual void show() = imac 0x2eee30, m1 0x288d80;
    virtual void didPurchaseItem(GJStoreItem*) = win 0x27fa20, imac 0x2ed0d0, m1 0x287300;

    GJPathsLayer* m_pathsLayer;
    int m_pathNumber;
    bool m_animationPlaying;
    int m_dialogIndex;
}

[[link(android)]]
class GJPathRewardPopup : FLAlertLayer {
    // virtual ~GJPathRewardPopup();

    static GJPathRewardPopup* create(int) = imac 0x2eaed0;

    void closePopup();
    bool init(int) = win 0x2824d0, imac 0x2ef1d0, m1 0x289120;
    void onClaim(cocos2d::CCObject* sender) = m1 0x2895bc;

    virtual void keyBackClicked() = imac 0x2ef7f0, m1 0x289780 {}

    int m_pathNumber;
}

[[link(android)]]
class GJPathsLayer : FLAlertLayer, FLAlertLayerProtocol {
    // virtual ~GJPathsLayer();

    static GJPathsLayer* create() = win 0x27d0b0, imac 0x2ea460;
    static gd::string nameForPath(int) = win 0x27ce40, imac 0x2ea2c0, m1 0x2846b4;

    void darkenButtons(bool) = imac 0x2ead10, m1 0x2850dc;
    void onClose(cocos2d::CCObject* sender) = win 0x27d9a0;
    void onPath(cocos2d::CCObject* sender) = imac 0x2eac40, m1 0x284ffc;

    virtual bool init() = win 0x27d1b0, m1 0x284964, imac 0x2ea5b0;
    virtual void onExit() = win 0x27d9a0, m1 0x28508c, imac 0x2eacc0;
    virtual void registerWithTouchDispatcher() = imac 0x2eb0e0, m1 0x285420;
    virtual void keyBackClicked() = win 0x27da00, imac 0x2eb010, m1 0x285350;
    virtual void show() = imac 0x2eb120, m1 0x285458;

    cocos2d::CCSprite* m_closeSprite;
    bool m_running;
}

[[link(android)]]
class GJPathSprite : CCSpriteCOpacity {
    // virtual ~GJPathSprite();

    static GJPathSprite* create(int) = win 0x281600, m1 0x284ecc;

    void addRankLabel(int) = m1 0x289024;
    void addShardSprite() = win 0x281c70, imac 0x2eeba0, m1 0x288ab8;
    void changeToLockedArt() = win 0x2819b0, imac 0x2edb40, m1 0x287c38;
    bool init(int) = imac 0x2eefb0;
    void updateState() = m1 0x284f78;

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

    virtual void determineStartValues() = imac 0x353800, m1 0x2e771c;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x354590, m1 0x2e8270;
    virtual void textChanged(CCTextInputNode*) = win 0x284c00, imac 0x353e20, m1 0x2e7c98;
}

[[link(android)]]
class GJPromoPopup : FLAlertLayer {
    // virtual ~GJPromoPopup();

    static GJPromoPopup* create(gd::string);

    bool init(gd::string) = win 0x29d470, imac 0x2a3510;
    void onClose(cocos2d::CCObject* sender);

    virtual void onExit() = win 0x29d770, m1 0x24a3ec, imac 0x2a37f0;
    virtual void registerWithTouchDispatcher() = imac 0x2a3900, m1 0x24a4fc;
    virtual void keyBackClicked() = imac 0x2a3830, m1 0x24a42c;
    virtual void show() = imac 0x2a3940, m1 0x24a534;
}

[[link(android)]]
class GJPurchaseDelegate {
    virtual void didPurchaseItem(GJStoreItem*);
}

[[link(android)]]
class GJRequestCell : TableViewCell, FLAlertLayerProtocol, UploadPopupDelegate, UploadActionDelegate {
    // virtual ~GJRequestCell();
    GJRequestCell(char const*, float, float);

    void loadFromScore(GJUserScore*) = win 0xbb640;
    TodoReturn markAsRead();
    void onDeleteRequest(cocos2d::CCObject* sender);
    void onToggle(cocos2d::CCObject* sender);
    void onViewFriendRequest(cocos2d::CCObject* sender);
    void onViewProfile(cocos2d::CCObject* sender);
    TodoReturn updateBGColor(int);
    TodoReturn updateToggle();

    virtual bool init() = imac 0x245c80, m1 0x1f4740;
    virtual void draw() = imac 0x245f90, m1 0x1f4a1c;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xbc1f0, imac 0x246060, m1 0x1f4ac8;
    virtual void uploadActionFinished(int, int) = win 0xbc3a0, m1 0x1f4c54, imac 0x246230;
    virtual void uploadActionFailed(int, int) = win 0xbc580, m1 0x1f4e64, imac 0x246450;
    virtual void onClosePopup(UploadActionPopup*) = imac 0x246560, m1 0x1f4f3c;
}

[[link(android)]]
class GJRewardDelegate {
    virtual void rewardsStatusFinished(int);
    virtual void rewardsStatusFailed();
}

[[link(android)]]
class GJRewardItem : cocos2d::CCObject {
    // virtual ~GJRewardItem();

    static GJRewardItem* create() = win 0x1f0860, imac 0x8eff0, m1 0x825bc;
    static GJRewardItem* create(int chestID, int timeRemaining, gd::string) = win 0x1f0ba0;
    static GJRewardItem* createSpecial(GJRewardType, int, int, SpecialRewardItem, int, SpecialRewardItem, int, int, int) = win 0x1f09b0, imac 0x77a70, m1 0x6b1c8;
    static GJRewardItem* createWithCoder(DS_Dictionary* dict) = win inline, imac 0x8f310, m1 0x828c8 {
        auto ret = create();
        ret->dataLoaded(dict);
        return ret;
    }
    static GJRewardItem* createWithObject(GJRewardType, GJRewardObject*) = win 0x1f08a0, imac 0x8c420, m1 0x7fec8;
    static GJRewardItem* createWithObjects(GJRewardType, cocos2d::CCArray*) = win 0x1f0930, imac 0x72280, m1 0x65b18;
    static SpecialRewardItem getNextShardType(SpecialRewardItem type) = win inline {
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
    static SpecialRewardItem getRandomNonMaxShardType() = win inline, m1 0x680a8 {
        auto type = getRandomShardType();
        for (int i = 10; i > 0; i--) {
            if (GameStatsManager::sharedState()->getStat(rewardItemToStat(type).c_str()) < 100) return type;
            type = getNextShardType(type);
        }
        return (SpecialRewardItem)0;
    }
    static SpecialRewardItem getRandomShardType() = win inline, m1 0x82868 {
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
    static bool isShardType(SpecialRewardItem type) = win inline, imac 0x72cb0, m1 0x66504 {
        return type == SpecialRewardItem::FireShard || type == SpecialRewardItem::IceShard || type == SpecialRewardItem::PoisonShard
            || type == SpecialRewardItem::ShadowShard || type == SpecialRewardItem::LavaShard || type == SpecialRewardItem::EarthShard
            || type == SpecialRewardItem::BloodShard || type == SpecialRewardItem::MetalShard || type == SpecialRewardItem::LightShard
            || type == SpecialRewardItem::SoulShard;
    }
    static gd::string rewardItemToStat(SpecialRewardItem) = win 0x1f0ed0;

    void dataLoaded(DS_Dictionary* dict) = win inline {
        m_chestID = dict->getIntegerForKey("1");
        m_rewardType = (GJRewardType)dict->getIntegerForKey("2");
        auto rewardObjects = dict->getArrayForKey("3", false);
        CC_SAFE_RETAIN(rewardObjects);
        CC_SAFE_RELEASE(m_rewardObjects);
        m_rewardObjects = rewardObjects;
    }
    int getRewardCount(SpecialRewardItem type) = win inline, imac 0x76f60, m1 0x6a600 {
        if (!m_rewardObjects) return 0;
    
        int count = 0;
        for (int i = 0; i < m_rewardObjects->count(); i++) {
            auto obj = static_cast<GJRewardObject*>(m_rewardObjects->objectAtIndex(i));
            if (obj->m_specialRewardItem == type) count += obj->m_total;
        }
    
        return count;
    }
    GJRewardObject* getRewardObjectForType(SpecialRewardItem type) = win inline, imac 0x72dd0, m1 0x6666c {
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
    bool init(int chestID, int timeRemaining, gd::string) = win 0x1f0c70, imac 0x8f020, m1 0x825ec;


    virtual void encodeWithCoder(DS_Dictionary*) = win 0x1f1130, imac 0x8f420, m1 0x829fc;
    virtual bool canEncode() = win inline, imac 0x8f480, m1 0x82a68 {
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
    static GJRewardObject* create(SpecialRewardItem, int, int) = win 0x1f0760, imac 0x72210, m1 0x65aa8;
    // virtual ~GJRewardObject();

    static GJRewardObject* create() = win inline, m1 0x822d4 {
        auto ret = create(SpecialRewardItem::FireShard, 0, 0); // the first param is meant to be 0
        return ret;
    }
    static GJRewardObject* createItemUnlock(UnlockType, int) = win 0x1f06f0, imac 0x721a0, m1 0x65a30;

    static GJRewardObject* createWithCoder(DS_Dictionary* dict) = win inline, imac 0x8ed90, m1 0x8235c {
        auto ret = create();
        ret->dataLoaded(dict);
        return ret;
    }
    void dataLoaded(DS_Dictionary* dict) = win inline {
        m_specialRewardItem = (SpecialRewardItem)dict->getIntegerForKey("1");
        m_itemID = dict->getIntegerForKey("2");
        m_total = dict->getIntegerForKey("3");
        m_unlockType = (UnlockType)dict->getIntegerForKey("4");
    }
    bool init(SpecialRewardItem specialRewardItem, int total, int itemID) = win inline, imac 0x8ed50, m1 0x82330 {
        this->m_specialRewardItem = specialRewardItem;
        this->m_total = total;
        this->m_itemID = itemID;
        return true;
    }
    bool isSpecialType() = win inline, m1 0x82340 {
        auto type = m_specialRewardItem;
        return type == SpecialRewardItem::FireShard || type == SpecialRewardItem::IceShard || type == SpecialRewardItem::PoisonShard
            || type == SpecialRewardItem::ShadowShard || type == SpecialRewardItem::LavaShard || type == SpecialRewardItem::BonusKey
            || type == SpecialRewardItem::EarthShard || type == SpecialRewardItem::BloodShard || type == SpecialRewardItem::MetalShard
            || type == SpecialRewardItem::LightShard || type == SpecialRewardItem::SoulShard;
    }
    virtual void encodeWithCoder(DS_Dictionary*) = win 0x1f07d0, imac 0x8eea0, m1 0x8247c;
    virtual bool canEncode() = win inline, imac 0x8ef20, m1 0x824fc {
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

    static GJRobotSprite* create(int) = win 0x29eeb0, m1 0x4f8d9c;

    void hideGlow();
    bool init(int, gd::string) = win 0x29ef60, m1 0x4f8f5c;
    bool init(int) = imac 0x5c3bf0, m1 0x4f8ecc;
    void showGlow();
    void updateColor01(cocos2d::ccColor3B) = imac 0x5c4aa0;
    void updateColor02(cocos2d::ccColor3B);
    void updateColors() = win 0x29f6f0;
    void updateFrame(int) = win 0x29fca0, imac 0x5c41e0, m1 0x4f9490;
    void updateGlowColor(cocos2d::ccColor3B, bool) = imac 0x5c4df0, m1 0x4f9eb8;

    virtual void setOpacity(unsigned char) = win 0x29fba0, m1 0x4f9f34, imac 0x5c4e70;
    virtual void hideSecondary() = win 0x2a0290, m1 0x4fa018, imac 0x5c4f80;

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

    virtual void determineStartValues() = imac 0x4b70, m1 0x70d4;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x5ac0, m1 0x7d94;
    virtual void textChanged(CCTextInputNode*) = imac 0x5520, m1 0x7940;
    virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = imac 0x5090, m1 0x7554;
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

    static GJRotationControl* create() = win inline, m1 0xd660 {
        auto ret = new GJRotationControl();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    void finishTouch() = win 0x1278e0, imac 0xc4e0, m1 0xd744;
    void setAngle(float) = imac 0x52290, m1 0x49544;
    void updateSliderPosition(cocos2d::CCPoint) = imac 0x52310, m1 0x495c4;

    virtual bool init() = win 0x1277c0, m1 0x49450, imac 0x521a0;
    virtual void draw() = win 0x127c20, imac 0x527a0, m1 0x49a18;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x127960, imac 0x52410, m1 0x496b4;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x127a60, imac 0x52530, m1 0x497c8;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x127c00, imac 0x52690, m1 0x49904;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x52760, m1 0x499fc;

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

    static GJScaleControl* create() = win inline, imac 0xc580, m1 0xd7ec {
        auto ret = new GJScaleControl();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    void finishTouch();
    void loadValues(GameObject*, cocos2d::CCArray*, gd::unordered_map<int, GameObjectEditorState>&) = win 0x128170, imac 0x3fc00;
    void onToggleLockScale(cocos2d::CCObject* sender);
    float scaleFromValue(float value) = win inline, imac 0x52df0, m1 0x4a03c {
        return (m_upperBound - m_lowerBound) * value + m_lowerBound;
    }
    float skewFromValue(float) = imac 0x52e30;
    void sliderChanged(cocos2d::CCObject* sender) = win 0x128780;
    void updateLabelX(float value) = win inline {
        auto str = cocos2d::CCString::createWithFormat("ScaleX %.02f", value); // yes, gd is missing a : there :(
        m_scaleXLabel->setString(str->getCString());
        m_scaleXLabel->limitLabelWidth(100.0f, 0.0f, 0.0f);
    }
    void updateLabelXY(float value) = win inline { // 0x129000 ?
        auto str = cocos2d::CCString::createWithFormat("Scale: %.02f", value);
        m_scaleLabel->setString(str->getCString());
        m_scaleLabel->limitLabelWidth(100.0f, 0.0f, 0.0f);
    }
    void updateLabelY(float value) = win inline {
        auto str = cocos2d::CCString::createWithFormat("ScaleY: %.02f", value);
        m_scaleYLabel->setString(str->getCString());
        m_scaleYLabel->limitLabelWidth(100.0f, 0.0f, 0.0f);
    }
    float valueFromScale(float scale) = win inline {
        auto value = (scale - m_lowerBound) / (m_upperBound - m_lowerBound);
        return value < 0 ? 0 : (value > 1 ? 1 : value);
    }
    float valueFromSkew(float);

    virtual bool init() = win 0x127ca0, m1 0x49a80, imac 0x52810;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x128790, imac 0x52ec0, m1 0x4a0b8;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x1289a0, imac 0x530b0, m1 0x4a254;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x128dc0, imac 0x53580, m1 0x4a698;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x536e0, m1 0x4a7c0;

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

    void loadFromScore(GJUserScore*) = win 0xb7c80, m1 0x1e7f50;
    void onBan(cocos2d::CCObject* sender);
    void onCheck(cocos2d::CCObject* sender);
    void onMoreLevels(cocos2d::CCObject* sender);
    void onViewProfile(cocos2d::CCObject* sender) = win 0xb8d60, imac 0x243d00, m1 0x1f2d14;
    TodoReturn updateBGColor(int);

    virtual bool init() = win 0xb3f00, imac 0x243ce0, m1 0x1f2d08;
    virtual void draw() = imac 0x243fb0, m1 0x1f2fb8;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xb8ee0, imac 0x243ef0, m1 0x1f2ef0;

    GJUserScore* m_score;
}

[[link(android)]]
class GJSearchObject : cocos2d::CCNode {
    // virtual ~GJSearchObject();

    static GJSearchObject* create(SearchType searchType, gd::string searchQuery, gd::string difficulty, gd::string length, int page, bool star, bool uncompleted, bool featured, int songID, bool original, bool twoPlayer, bool customSong, bool songFilter, bool noStar, bool coins, bool epic, bool legendary, bool mythic, bool onlyCompleted, int demonFilter, int folder, int searchMode) = win 0x171900;
    static GJSearchObject* create(SearchType searchType, gd::string searchQuery) = win 0x1717d0;
    static GJSearchObject* create(SearchType searchType) = win 0x1716f0, imac 0x54a560, m1 0x4a2c28;
    static GJSearchObject* createFromKey(char const* key) = win 0x170ff0;

    char const* getKey() = win 0x171c40;
    char const* getNextPageKey();
    GJSearchObject* getNextPageObject();
    GJSearchObject* getPageObject(int page) = win 0x171d90;
    GJSearchObject* getPrevPageObject() = imac 0x54b000;
    char const* getSearchKey(SearchType searchType, gd::string searchQuery, gd::string difficulty, gd::string length, int page, bool star, bool uncompleted, bool featured, int songID, bool original, bool twoPlayer, bool customSong, bool songFilter, bool noStar, bool coins, bool epic, bool legendary, bool mythic, bool onlyCompleted, int demonFilter, int folder, int searchMode) = win 0x171f00;
    bool init(SearchType searchType, gd::string searchQuery, gd::string difficulty, gd::string length, int page, bool star, bool uncompleted, bool featured, int songID, bool original, bool twoPlayer, bool customSong, bool songFilter, bool noStar, bool coins, bool epic, bool legendary, bool mythic, bool onlyCompleted, int demonFilter, int folder, int searchMode);
    bool isLevelSearchObject() = win 0x1721e0, imac 0x54b020, m1 0x4a3448;

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

[[link(android), depends(GJValueTween)]]
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

    static GJShopLayer* create(ShopType type) = win inline, imac 0x30ef20 {
        auto ret = new GJShopLayer();
        if (ret->init(type)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCScene* scene(ShopType) = win 0x2a1dd0, m1 0x2a5660;

    void exitVideoAdItems() = imac 0x310ef0, m1 0x2a7690;
    bool init(ShopType) = win 0x2a1f50, imac 0x30f030, m1 0x2a5848;
    void onBack(cocos2d::CCObject* sender) = win 0x2a5590, imac 0x3109e0, m1 0x2a7170;
    void onCommunityCredits(cocos2d::CCObject* sender) = win 0x2a42c0, m1 0x2a70f8;
    void onPlushies(cocos2d::CCObject* sender);
    void onSelectItem(cocos2d::CCObject* sender) = imac 0x310b90, m1 0x2a7328;
    void onVideoAd(cocos2d::CCObject* sender) = imac 0x310990, m1 0x2a7124;
    void showCantAffordMessage(GJStoreItem*);
    void showReactMessage() = win 0x2a57c0;
    void updateCurrencyCounter() = m1 0x2a77b4;

    virtual void onExit() = win 0x2a4040, m1 0x2a746c, imac 0x310ca0;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3132b0, win 0x2a7170, m1 0x2a95c8;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x313650, m1 0x2a9988 {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x313670, m1 0x2a9990 {}
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x313690, m1 0x2a9998;
    virtual void registerWithTouchDispatcher() = imac 0x3136d0, m1 0x2a99b4;
    virtual void keyBackClicked() = win 0x2a57b0, imac 0x311ca0, m1 0x2a8338;
    virtual void didPurchaseItem(GJStoreItem*) = win 0x2a4db0, m1 0x2a7ccc, imac 0x3115a0;
    virtual void rewardedVideoFinished() = win 0x2a4400, imac 0x310fc0, m1 0x2a7758;
    virtual void dialogClosed(DialogLayer*) = win 0x2a6e40, imac 0x3130f0, m1 0x2a93e4;

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

    virtual bool init() = imac 0x416f10, m1 0x39291c;
    virtual void visit() = imac 0x416f20, m1 0x392920;
}

[[link(android)]]
class GJSmartPrefab : cocos2d::CCObject {
    // virtual ~GJSmartPrefab();

    static GJSmartPrefab* create();

    TodoReturn createWithCoder(DS_Dictionary*) = imac 0x415cb0;
    void dataLoaded(DS_Dictionary*);
    bool init();

    virtual void encodeWithCoder(DS_Dictionary*) = win 0x2ae190, imac 0x415df0, m1 0x391780;
    virtual bool canEncode() = imac 0x415ca0, m1 0x391620;
}

[[link(android)]]
class GJSmartTemplate : cocos2d::CCObject {
    // virtual ~GJSmartTemplate();

    static GJSmartTemplate* create() = win 0x2a91c0;

    TodoReturn applyTransformationsForType(SmartBlockType, cocos2d::CCSprite*);
    TodoReturn createWithCoder(DS_Dictionary*) = imac 0x415720;
    void dataLoaded(DS_Dictionary*) = win 0x2add60;
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
    TodoReturn getVerySimplifiedKey(gd::string) = imac 0x411300;
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
    TodoReturn saveRemapToDict(gd::string, gd::string, cocos2d::CCDictionary*) = imac 0x410fb0;
    TodoReturn scanForPrefab(gd::string);
    TodoReturn shouldDiscardObject(SmartBlockType, GJSmartDirection);
    TodoReturn smartObjectToType(SmartGameObject*, cocos2d::CCPoint);
    TodoReturn smartTypeToObjectKey(SmartBlockType);

    virtual void encodeWithCoder(DS_Dictionary*) = win 0x2ae030, imac 0x415af0, m1 0x391414;
    virtual bool canEncode() = imac 0x415710, m1 0x39106c;
}

[[link(android)]]
class GJSongBrowser : GJDropDownLayer, FLAlertLayerProtocol, TableViewCellDelegate {
    // virtual ~GJSongBrowser();

    static GJSongBrowser* create() = win 0x2af990, m1 0x518fe8;

    void loadPage(int) = win 0x2aff90;
    void onDeleteAll(cocos2d::CCObject* sender);
    void onNextPage(cocos2d::CCObject* sender) = win 0x2b0220;
    void onPrevPage(cocos2d::CCObject* sender) = win 0x2b0230;
    void setupPageInfo(int, int, int);
    TodoReturn setupSongBrowser(cocos2d::CCArray*);

    virtual bool init() = win 0x2afb10, imac 0x5e75d0, m1 0x5192d4;
    virtual void customSetup() = win 0x2afc10, m1 0x519580, imac 0x5e78a0;
    virtual void exitLayer(cocos2d::CCObject*) = imac 0x5e7870, m1 0x51954c;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2b0350, imac 0x5e7e20, m1 0x519aa8;
    virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = imac 0x5e7f00, m1 0x519b64;
    virtual int getSelectedCellIdx() = imac 0x5e7f60, m1 0x519bc4;

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

    static GJSpecialColorSelect* create(int, GJSpecialColorSelectDelegate*, ColorSelectType) = win 0x2b0550, imac 0x60dde0;
    static const char* textForColorIdx(int) = win 0x2b12a0, imac 0x6101b0, m1 0x53c79c;

    ButtonSprite* getButtonByTag(int);
    void highlightSelected(ButtonSprite*);
    bool init(int, GJSpecialColorSelectDelegate*, ColorSelectType) = win 0x2b0660, imac 0x60df50, m1 0x53ab6c;
    void onClose(cocos2d::CCObject* sender) = win 0x2b1200;
    void onSelectColor(cocos2d::CCObject* sender) = win 0x2b1120, imac 0x6101e0, m1 0x53c7c4;

    virtual void keyBackClicked() = win 0x2b1250, imac 0x610400, m1 0x53c9e4;

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

    static GJSpiderSprite* create(int) = win 0x2a0300, m1 0x4fa1b4;

    bool init(int) = imac 0x5c52d0, m1 0x4fa2e8;
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

    static GJStoreItem* create(int index, int typeID, int unlockType, int price, ShopType shopType) = win inline, imac 0x66790, m1 0x5ac88 {
        auto ret = new GJStoreItem();
        if (ret->init(index, typeID, unlockType, price, shopType)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    gd::string getCurrencyKey() = win inline, imac 0x66b70, m1 0x5b070 {
        return m_shopType == ShopType::Diamond ? "29" : "14";
    }
    bool init(int index, int typeID, int unlockType, int price, ShopType shopType) = win inline, imac 0x8fb30, m1 0x83134 {
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

    static GJTransformControl* create();

    TodoReturn applyRotation(float);
    TodoReturn calculateRotationOffset();
    void finishTouch();
    void loadFromState(GJTransformState&);
    TodoReturn loadValues(GameObject*, cocos2d::CCArray*, gd::unordered_map<int, GameObjectEditorState>&);
    TodoReturn logCurrentZeroPos();
    void onToggleLockScale(cocos2d::CCObject* sender);
    void refreshControl() = win 0x1295d0;
    void saveToState(GJTransformState&);
    void scaleButtons(float) = win 0x1297f0;
    cocos2d::CCSprite* spriteByTag(int tag) {
        return static_cast<cocos2d::CCSprite*>(m_warpSprites->objectAtIndex(tag - 1));
    }
    TodoReturn updateAnchorSprite(cocos2d::CCPoint);
    void updateButtons(bool, bool) = win 0x1298b0;
    TodoReturn updateMinMaxPositions();

    virtual bool init() = win 0x129080, m1 0x4a9f4, imac 0x53a30;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x12a710, imac 0x53ed0, m1 0x4ae68;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x12a8e0, imac 0x54350, m1 0x4b264;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x12ae40, imac 0x548f0, m1 0x4b76c;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x71210, imac 0x54b00, m1 0x4b944;

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

    static GJUINode* create(UIButtonConfig&) = imac 0x4b51a0;

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

    virtual void draw() = imac 0x4b8430, m1 0x42020c;
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

    void loadFromScore(GJUserScore*) = win 0xb9f70;
    void onCancelFriendRequest(cocos2d::CCObject* sender);
    void onRemoveFriend(cocos2d::CCObject* sender);
    void onSendMessage(cocos2d::CCObject* sender);
    void onUnblockUser(cocos2d::CCObject* sender);
    void onViewFriendRequest(cocos2d::CCObject* sender);
    void onViewProfile(cocos2d::CCObject* sender);
    TodoReturn updateBGColor(int);

    virtual bool init() = win 0xb9f50, imac 0x244930, m1 0x1f35f0;
    virtual void draw() = imac 0x2450a0, m1 0x1f3d94;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xbae70, imac 0x245170, m1 0x1f3e40;
    virtual void uploadActionFinished(int, int) = win 0xbb230, imac 0x245420, m1 0x1f408c;
    virtual void uploadActionFailed(int, int) = win 0xbb3e0, imac 0x245630, m1 0x1f42a0;
    virtual void onClosePopup(UploadActionPopup*) = win 0xbb4b0, imac 0x2457a0, m1 0x1f4408;
}

[[link(android)]]
class GJUserMessage : cocos2d::CCNode {
    // virtual ~GJUserMessage();

    static GJUserMessage* create() = win 0x170ec0, imac 0x54a010;
    static GJUserMessage* create(cocos2d::CCDictionary*) = win 0x170380, m1 0x490f08;

    virtual bool init() = imac 0x54a0b0, m1 0x4a2800;

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
    GJUserScore() = win 0x1401d0;
    static GJUserScore* create(cocos2d::CCDictionary*) = win 0x16e1a0, m1 0x479b34;
    // virtual ~GJUserScore();

    static GJUserScore* create() = win inline, m1 0x4a2174 {
        auto ret = new GJUserScore();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
    
        delete ret;
        return nullptr;
    }

    bool isCurrentUser() = win 0x16fb90, m1 0x4a22d0;
    TodoReturn mergeWithScore(GJUserScore*);

    virtual bool init() = win 0x16fb40, imac 0x549b00, m1 0x4a225c;

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
    void step(float delta) = win 0x1fff90;

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

    static GJWriteMessagePopup* create(int, int) = imac 0x295000;

    TodoReturn closeMessagePopup(bool);
    bool init(int, int);
    void onClearBody(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    void onSend(cocos2d::CCObject* sender);
    TodoReturn updateBody(gd::string);
    TodoReturn updateCharCountLabel(int);
    TodoReturn updateSubject(gd::string);
    TodoReturn updateText(gd::string, int);

    virtual void registerWithTouchDispatcher() = imac 0x297120, m1 0x23efb4;
    virtual void keyBackClicked() = win 0x292fb0, imac 0x2970f0, m1 0x23efa0;
    virtual void textInputOpened(CCTextInputNode*) = imac 0x2971a0, m1 0x23f008 {}
    virtual void textInputClosed(CCTextInputNode*) = imac 0x297160, m1 0x23efec;
    virtual void textChanged(CCTextInputNode*) = win 0x292fc0, imac 0x2971c0, m1 0x23f010;
    virtual void uploadMessageFinished(int) = win 0x2935a0, imac 0x297890, m1 0x23f6b4;
    virtual void uploadMessageFailed(int) = win 0x293620, imac 0x297950, m1 0x23f78c;
    virtual void onClosePopup(UploadActionPopup*) = win 0x2936d0, imac 0x297a80, m1 0x23f8cc;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x293770, imac 0x297bd0, m1 0x23fa50;
    virtual void textInputShouldOffset(CCTextInputNode*, float) = imac 0x297cb0, m1 0x23fb70;
    virtual void textInputReturn(CCTextInputNode*) = imac 0x297d70, m1 0x23fc40;
}

[[link(android)]]
class GManager : cocos2d::CCNode {
    inline GManager() {}
    // virtual ~GManager();

    TodoReturn getCompressedSaveString();
    TodoReturn getSaveString();
    TodoReturn load();
    void loadDataFromFile(gd::string const&) = win 0x6aa90, imac 0x4995a0;
    void loadFromCompressedString(gd::string&);
    void loadFromString(gd::string&);
    void save() = win 0x6a9a0;
    TodoReturn saveData(DS_Dictionary*, gd::string);
    void saveGMTo(gd::string) = win 0x6a9a0;
    TodoReturn tryLoadData(DS_Dictionary*, gd::string const&);

    virtual bool init() = win 0x6a7c0, imac 0x499090, m1 0x404e9c;
    virtual void setup() = win 0x6a7d0, imac 0x4990b0, m1 0x404eac;
    virtual void encodeDataTo(DS_Dictionary*) = imac 0x499590, m1 0x4053ac;
    virtual void dataLoaded(DS_Dictionary*) = imac 0x499c40, m1 0x4059e8;
    virtual void firstLoad() = imac 0x499c50, m1 0x4059ec;

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

    virtual bool init() = imac 0x4653d0, m1 0x3d5324;
}

[[link(android)]]
class GradientTriggerObject : EffectGameObject {
    // virtual ~GradientTriggerObject();

    static GradientTriggerObject* create();

    virtual bool init() = imac 0x18b170, m1 0x1523b8;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x18cab0, m1 0x1537bc;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x18b1d0, m1 0x15240c;
}

[[link(android)]]
class GraphicsReloadLayer : cocos2d::CCLayer {
    // virtual ~GraphicsReloadLayer();

    static GraphicsReloadLayer* create(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool, bool, bool);

    bool init(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool, bool, bool);
    TodoReturn performReload();
    static cocos2d::CCScene* scene(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool, bool, bool);
}

[[link(android)]]
class GravityEffectSprite : cocos2d::CCSprite {
    // virtual ~GravityEffectSprite();

    static GravityEffectSprite* create();

    TodoReturn updateSpritesColor(cocos2d::ccColor3B);

    virtual bool init() = imac 0xbffc0, m1 0xae740;
    virtual void draw() = imac 0xc0220, m1 0xae964;
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

    PAD = win 0x1b8;
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

    static HardStreak* create() = win 0x2b1560;

    void addPoint(cocos2d::CCPoint p0) = win 0x2b2010, imac 0x9da90, m1 0x903e4;
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
    void reset() = win inline {
        this->clear();
        m_pointArray->removeAllObjects();
    }
    void resumeStroke();
    TodoReturn scheduleAutoUpdate();
    void stopStroke() = win 0x2b16d0;
    callback void updateStroke(float) = win 0x2b1710, m1 0x8fc68;

    virtual bool init() = m1 0x8fafc, imac 0x9d010;

    cocos2d::CCArray* m_pointArray;
    cocos2d::CCPoint m_currentPoint;
    float m_waveSize;
    float m_pulseSize;
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

    static HSVLiveOverlay* create(GameObject* object, cocos2d::CCArray* objects) = win inline, imac 0x258d90, m1 0x205628 {
        auto ret = new HSVLiveOverlay();
        if (ret->init(object, objects)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    void closeColorSelect(cocos2d::CCObject* sender);
    void createHSVWidget(int) = win 0x2b28f0, imac 0x259490, m1 0x205cd8;
    void determineStartValues() = win 0x2b2670, imac 0x259360, m1 0x205bac;
    bool init(GameObject*, cocos2d::CCArray*) = win 0x2b21d0, imac 0x258f10, m1 0x20575c;
    void onSelectTab(cocos2d::CCObject* sender) = win 0x2b28c0, imac 0x259450, m1 0x205c8c;
    void toggleControls(bool);

    virtual void keyBackClicked() = win 0x2b2a90, imac 0x259610, m1 0x205e38;
    virtual void show() = imac 0x2596c0, m1 0x205ef0;
    virtual void hsvChanged(ConfigureHSVWidget*) = win 0x2b2ae0, m1 0x205fa4, imac 0x259790;

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

    static HSVWidgetPopup* create(cocos2d::ccHSVValue, HSVWidgetDelegate*, gd::string) = win 0x96410;

    bool init(cocos2d::ccHSVValue, HSVWidgetDelegate*, gd::string) = win 0x96530, imac 0x41ccd0, m1 0x3985c0;
    void onClose(cocos2d::CCObject* sender) = win 0x96860;

    virtual void keyBackClicked() = win 0x96940, imac 0x41d230, m1 0x398abc;

    ConfigureHSVWidget* m_widget;
    HSVWidgetDelegate* m_delegate;
}

[[link(android)]]
class InfoAlertButton : CCMenuItemSpriteExtra {
    // virtual ~InfoAlertButton();

    static InfoAlertButton* create(gd::string title, gd::string desc, float spriteScale) = win 0x2b2c60;

    bool init(gd::string title, gd::string desc, float spriteScale) = imac 0x55ee90, m1 0x4b5abc;

    virtual void activate() = m1 0x4b5b60, imac 0x55ef30;

    gd::string m_title;
    gd::string m_description;
    float m_textScale;
    bool m_scroll;
}

[[link(android)]]
class InfoLayer : FLAlertLayer, LevelCommentDelegate, CommentUploadDelegate, FLAlertLayerProtocol {
    // virtual ~InfoLayer();

    static InfoLayer* create(GJGameLevel*, GJUserScore*, GJLevelList*) = win 0x2b30e0, imac 0x798d90, m1 0x6ab864;

    TodoReturn confirmReport(cocos2d::CCObject*) = win 0x2b5660, m1 0x6ade48;
    int getAccountID();
    int getID() {
        if(m_score) return m_score->m_userID;
        if(m_levelList) return - m_levelList->m_listID;
        if(m_level) return m_level->m_levelID;
        return 0;
    }
    int getRealID();
    TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint) = win 0x2b51c0;
    bool init(GJGameLevel*, GJUserScore*, GJLevelList*) = win 0x2b3280;
    bool isCorrect(char const*);
    void loadPage(int, bool) = win 0x2b6b60, imac 0x79be50, m1 0x6ae528;
    void onClose(cocos2d::CCObject* sender) = win 0x2b69a0;
    void onComment(cocos2d::CCObject* sender) = win 0x2b5e00, m1 0x6ada48;
    void onCopyLevelID(cocos2d::CCObject* sender) = imac 0x34cb40;
    void onGetComments(cocos2d::CCObject* sender) = imac 0x79be40;
    void onLevelInfo(cocos2d::CCObject* sender) = win 0x2b63c0;
    void onMore(cocos2d::CCObject* sender) = win 0x2b5ce0, imac 0x79af80, m1 0x6ad6b0;
    void onNextPage(cocos2d::CCObject* sender) = win 0x2b7740, imac 0x79baf0;
    void onOriginal(cocos2d::CCObject* sender) = win 0x2b5d40;
    void onPrevPage(cocos2d::CCObject* sender) = win 0x2b7750, imac 0x79bad0;
    void onRefreshComments(cocos2d::CCObject* sender);
    void onSimilar(cocos2d::CCObject* sender);
    TodoReturn reloadWindow() = win 0x2b7ad0;
    void setupCommentsBrowser(cocos2d::CCArray*) = win 0x2b70d0, imac 0x79c220, m1 0x6ae890;
    void setupLevelInfo() = win 0x2b5300, m1 0x6ad70c;
    void toggleCommentMode(cocos2d::CCObject* sender) = win 0x2b7cf0, imac 0x79bbf0, m1 0x6ae2b0;
    void toggleExtendedMode(cocos2d::CCObject* sender) = win 0x2b7980;
    void toggleSmallCommentMode(cocos2d::CCObject* sender) = win 0x2b79e0;
    TodoReturn updateCommentModeButtons() = win 0x2b7db0;
    TodoReturn updateLevelsLabel();

    virtual void registerWithTouchDispatcher() = imac 0x79cfc0, m1 0x6af578;
    virtual void keyBackClicked() = win 0x2b6a20, imac 0x79ceb0, m1 0x6af48c;
    virtual void show() = win 0x2b7eb0, imac 0x79de80, m1 0x6b0358;
    virtual void loadCommentsFinished(cocos2d::CCArray*, char const*) = win 0x2b7360, m1 0x6af6c8, imac 0x79d130;
    virtual void loadCommentsFailed(char const*) = win 0x2b73d0, imac 0x79d200, m1 0x6af7ac;
    virtual void setupPageInfo(gd::string, char const*) = win 0x2b7420, m1 0x6af858, imac 0x79d2a0;
    virtual void commentUploadFinished(int) = win 0x2b7760, imac 0x79da30, m1 0x6aff78;
    virtual void commentUploadFailed(int, CommentError) = win 0x2b7830, imac 0x79db80, m1 0x6b0090;
    virtual void updateUserScoreFinished() = win 0x2b7610, imac 0x79d890, m1 0x6afdf0;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2b5bc0, imac 0x79cc50, m1 0x6af248;

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

    static ItemInfoPopup* create(int, UnlockType) = win 0x273d10, imac 0x35bdc0, m1 0x2ef0f0;
    static gd::string nameForUnlockType(int, UnlockType) = win 0x275dd0, imac 0x35fc00;

    bool init(int, UnlockType) = win 0x273e00, imac 0x35e8d0, m1 0x2f18e0;
    bool isUnlockedByDefault(int, UnlockType) = imac 0x35fee0, m1 0x2f2e14;
    void onClose(cocos2d::CCObject* sender);
    void onCredit(cocos2d::CCObject* sender) = win 0x275da0, imac 0x35ff10, m1 0x2f2e40;

    virtual void keyBackClicked() = imac 0x35ff40, m1 0x2f2e74;

    int m_itemID;
    UnlockType m_unlockType;
    int m_accountID;
}

[[link(android)]]
class ItemTriggerGameObject : EffectGameObject {
    // virtual ~ItemTriggerGameObject();

    static ItemTriggerGameObject* create(char const*);

    bool init(char const*);

    virtual void customSetup() = m1 0x18df54, imac 0x1d3c00;
    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x4a7060, imac 0x1d3c40, m1 0x18df8c;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x191ad8, imac 0x1d8930;
    virtual gd::string getSaveString(GJBaseGameLayer*) = win 0x4a71c0, m1 0x18e0dc, imac 0x1d3d90;
}

[[link(android)]]
class KeybindingsLayer : FLAlertLayer {
    // virtual ~KeybindingsLayer();

    static KeybindingsLayer* create() = win 0x2b80b0;

    TodoReturn addKeyPair(char const*, char const*) = win 0x2b8ab0;
    TodoReturn countForPage(int) = win 0x2b8e60;
    void goToPage(int) = win 0x2b9100;
    TodoReturn incrementCountForPage(int);
    TodoReturn infoKey(int);
    TodoReturn layerForPage(int) = win 0x2b8f30;
    TodoReturn layerKey(int);
    TodoReturn nextPosition(int);
    TodoReturn objectKey(int);
    TodoReturn objectsForPage(int);
    void onClose(cocos2d::CCObject* sender) = win 0x84620;
    void onInfo(cocos2d::CCObject* sender);
    void onNextPage(cocos2d::CCObject* sender) = win 0x2b90e0;
    void onPrevPage(cocos2d::CCObject* sender) = win 0x2b90f0;
    void onToggle(cocos2d::CCObject* sender);
    TodoReturn pageKey(int);

    virtual bool init() = win 0x2b81a0, imac 0x5f2690, m1 0x522204;
    virtual void keyBackClicked() = imac 0x5f4060, m1 0x523bcc;
}

[[link(android)]]
class KeybindingsManager : cocos2d::CCNode {
    // virtual ~KeybindingsManager();

    static KeybindingsManager* sharedState();

    TodoReturn commandForKey(cocos2d::enumKeyCodes, GJKeyGroup, bool, bool, bool);
    TodoReturn commandForKeyMods(cocos2d::enumKeyCodes, GJKeyGroup);
    TodoReturn commandForKeyNoMods(cocos2d::enumKeyCodes, GJKeyGroup);
    TodoReturn commandToKeyForGroup(GJKeyGroup);
    void dataLoaded(DS_Dictionary*) = imac 0x4d2880;
    void encodeDataTo(DS_Dictionary*);
    void firstSetup();
    TodoReturn groupForCommand(GJKeyCommand);
    TodoReturn keyForCommand(GJKeyCommand);
    TodoReturn keyToCommandForGroup(GJKeyGroup);

    virtual bool init() = imac 0x4d2360, m1 0x4365c0;
}

[[link(android)]]
class KeyframeAnimTriggerObject : EffectGameObject {
    // virtual ~KeyframeAnimTriggerObject();

    static KeyframeAnimTriggerObject* create();

    virtual bool init() = m1 0x16c028, imac 0x1aaae0;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x16cd48, imac 0x1abb50;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1aab30, m1 0x16c078;
}

[[link(android)]]
class KeyframeGameObject : EffectGameObject {
    // virtual ~KeyframeGameObject();

    static KeyframeGameObject* create();

    TodoReturn updateShadowObjects(GJBaseGameLayer*, EditorUI*);

    virtual bool init() = imac 0x1b59b0, m1 0x1754ec;
    virtual void setOpacity(unsigned char) = win 0x49ca60, imac 0x1b5c90, m1 0x1757d8;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x175924, imac 0x1b5df0;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1b6360, m1 0x175dcc;
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
    TodoReturn updateLabel(float) = win 0x49adc0;
    TodoReturn updateLabel(gd::string) = imac 0x1b0a50;
    TodoReturn updateLabelAlign(int);
    TodoReturn updateLabelIfDirty();
    TodoReturn updatePreviewLabel() = win 0x49ac00;

    virtual bool init() = imac 0x1b0120, m1 0x170734;
    virtual void setOpacity(unsigned char) = win 0x49ab20, imac 0x1b0540, m1 0x170b50;
    virtual void setupCustomSprites(gd::string) = imac 0x1b0150, m1 0x170764;
    virtual void addMainSpriteToParent(bool) = m1 0x1713c8, imac 0x1b0e90;
    virtual void resetObject() = imac 0x1b1e00, m1 0x172084;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1b0c20, m1 0x171184;
    virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x171420, imac 0x1b0ef0;
    virtual void setObjectColor(cocos2d::ccColor3B const&) = m1 0x171380, imac 0x1b0e40;
    virtual void updateTextKerning(int) = imac 0x1b05c0, m1 0x170bd4;
    virtual int getTextKerning() = imac 0x1e22d0, m1 0x199f18;

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

    static LeaderboardsLayer* create(LeaderboardState state) = win inline, imac 0x4fc440 {
        auto ret = new LeaderboardsLayer();
        if (ret->init(state)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCScene* scene(LeaderboardState state) = win inline {
        auto scene = cocos2d::CCScene::create();
        auto layer = LeaderboardsLayer::create(state);
        scene->addChild(layer);
        return scene;
    }

    bool init(LeaderboardState) = win 0x2b9bb0, m1 0x45c148;
    bool isCorrect(char const*);
    void onBack(cocos2d::CCObject* sender) = win 0x2bbdb0;
    void onCreators(cocos2d::CCObject* sender);
    void onGlobal(cocos2d::CCObject* sender);
    void onInfo(cocos2d::CCObject* sender);
    void onTop(cocos2d::CCObject* sender);
    void onWeek(cocos2d::CCObject* sender);
    void refreshTabs() = win 0x2bab60;
    void selectLeaderboard(LeaderboardState) = win 0x2bac90, imac 0x4fd190, m1 0x45cd3c;
    void setupLevelBrowser(cocos2d::CCArray*) = win 0x2baa00;
    TodoReturn setupTabs();
    void toggleTabButtons() = win 0x2baee0;

    virtual void keyBackClicked() = win 0x2bbe30, imac 0x4fe240, m1 0x45dd04;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2bbd80, imac 0x4fe1e0, m1 0x45dcac;
    virtual void updateUserScoreFinished() = win 0x2bb0d0, imac 0x4fd750, m1 0x45d2cc;
    virtual void updateUserScoreFailed() = win 0x2bb0f0, imac 0x4fd7b0, m1 0x45d304;
    virtual void loadLeaderboardFinished(cocos2d::CCArray*, char const*) = win 0x2bb100, imac 0x4fd850, m1 0x45d3ac;
    virtual void loadLeaderboardFailed(char const*) = win 0x2bb190, m1 0x45da3c, imac 0x4fdf50;

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
    static cocos2d::CCScene* scene(bool) = win 0x2be0b0;

    bool init(bool) = win 0x2be1c0;
    void onBack(cocos2d::CCObject* sender) = win 0x2c0380;
    void onDoor(cocos2d::CCObject* sender) = win 0x2bfeb0, imac 0x269160, m1 0x2147f0;
    void onInfo(cocos2d::CCObject* sender);
    void onNextFloor(cocos2d::CCObject* sender);
    void onOnlineVault(cocos2d::CCObject* sender);
    bool playStep1();
    cocos2d::CCAction* showFloor1CompleteDialog();
    TodoReturn tryResumeTowerMusic();
    TodoReturn tryShowAd();

    virtual void keyBackClicked() = win 0x2c0430, imac 0x26a180, m1 0x215784;
    virtual void dialogClosed(DialogLayer*) = win 0x2bf880, imac 0x269f50, m1 0x21555c;
    virtual void onExit();
}

[[link(android)]]
class LevelAreaLayer : cocos2d::CCLayer, DialogDelegate {
    // virtual ~LevelAreaLayer();

    static LevelAreaLayer* create();
    static cocos2d::CCScene* scene();

    cocos2d::CCAction* addGodRay(float, float, float, float, float, cocos2d::CCPoint);
    TodoReturn addTorch(cocos2d::CCNode*, cocos2d::CCPoint, int, float, int, bool, int, cocos2d::CCArray*);
    cocos2d::CCAction* fadeInsideTower();
    void onBack(cocos2d::CCObject* sender);
    void onClickDoor(cocos2d::CCObject* sender);
    bool onEnterTower();
    cocos2d::CCAction* showDialog();

    virtual bool init() = imac 0x265e60, m1 0x2115e0;
    virtual void keyBackClicked() = win 0x2be0a0, imac 0x268040, m1 0x2137ec;
    virtual void dialogClosed(DialogLayer*) = win 0x2bd290, imac 0x267da0, m1 0x213568;
    virtual void onExit();
}

[[link(android)]]
class LevelBrowserLayer : cocos2d::CCLayerColor, LevelManagerDelegate, FLAlertLayerProtocol, SetIDPopupDelegate, SetTextPopupDelegate, TableViewCellDelegate, ShareCommentDelegate {
    LevelBrowserLayer() {}
    ~LevelBrowserLayer() = win 0x2c06a0, imac 0x4780c0;

    static LevelBrowserLayer* create(GJSearchObject*) = win 0x2c08d0, imac 0x478300, m1 0x3e66bc;
    static cocos2d::CCScene* scene(GJSearchObject* search) = win 0x2c0880;

    TodoReturn createNewLevel(cocos2d::CCObject*);
    TodoReturn createNewList(cocos2d::CCObject*) = imac 0x47e6b0;
    TodoReturn createNewSmartTemplate(cocos2d::CCObject*);
    TodoReturn deleteSelected();
    TodoReturn exitLayer(cocos2d::CCObject*);
    cocos2d::CCArray* getItemsMatchingSearch(cocos2d::CCArray*, gd::string, GJSearchObject*) = win 0x2c6a60;
    gd::string getSearchTitle() = win 0x2c38c0;
    bool init(GJSearchObject*) = win 0x2c0940, m1 0x3e67f4;
    bool isCorrect(char const*) = win 0x2c2250;
    void loadPage(GJSearchObject*) = win 0x2c2420, imac 0x47b770, m1 0x3e9b1c;
    void onClearSearch(cocos2d::CCObject* sender) = win 0x2c6680, imac 0x47b6f0;
    void onDeleteAll(cocos2d::CCObject* sender) = win 0x2c60d0, imac 0x47aa90;
    void onDeleteSelected(cocos2d::CCObject* sender) = win 0x2c6df0, imac 0x47a150, m1 0x3e8404;
    void onFavorites(cocos2d::CCObject* sender) = win 0x2c5f10;
    void onGoToFolder(cocos2d::CCObject* sender) = win 0x2c46a0;
    void onGoToLastPage(cocos2d::CCObject* sender) = win 0x2c4520;
    void onGoToPage(cocos2d::CCObject* sender) = win 0x2c4590, imac 0x47a040, m1 0x3e82d4;
    void onHelp(cocos2d::CCObject* sender);
    void onInfo(cocos2d::CCObject* sender) = win 0x2c4cd0, imac 0x47afb0;
    void onLocalMode(cocos2d::CCObject* sender) = win 0x2c5b50;
    void onMyOnlineLevels(cocos2d::CCObject* sender) = win 0x2c5d40, imac 0x47a5c0;
    void onNew(cocos2d::CCObject* sender) = win 0x2c56a0, imac 0x47a4d0;
    void onNextPage(cocos2d::CCObject* sender) = win 0x2c4a80;
    void onPrevPage(cocos2d::CCObject* sender) = win 0x2c4b00;
    void onRefresh(cocos2d::CCObject* sender) = win 0x2c6540, m1 0x3e91c8;
    void onRemoveAllFavorites(cocos2d::CCObject* sender);
    void onSaved(cocos2d::CCObject* sender) = win 0x2c5ff0;
    void onSavedMode(cocos2d::CCObject* sender) = win 0x2c5a70;
    void onSearch(cocos2d::CCObject* sender) = win 0x2c6720;
    void onToggleAllObjects(cocos2d::CCObject* sender) = win 0x2c7130, imac 0x47a440;
    void reloadAllObjects() {
        static_cast<CustomListView*>(m_list->m_listView)->reloadAll();
    }
    void setSearchObject(GJSearchObject*);
    void setupLevelBrowser(cocos2d::CCArray*) = win 0x2c35b0, imac 0x47d000, m1 0x3eb0e4;
    void show() = m1 0x3ecfb8;
    void updateLevelsLabel();
    void updatePageLabel() = win 0x2c4950, imac 0x479f20;

    virtual void onEnter() = win 0x2c7790, m1 0x3ecd70, imac 0x47f000;
    virtual void onEnterTransitionDidFinish() = imac 0x47f1a0, m1 0x3ecf64;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x47f290, m1 0x3ed03c;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x47f2f0, m1 0x3ed05c {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x47f2b0, m1 0x3ed04c {}
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x47f2d0, m1 0x3ed054 {}
    virtual void registerWithTouchDispatcher() = win 0x2c78d0, imac 0x47f1b0, m1 0x3ecf68;
    virtual void keyBackClicked() = win 0x2c4c10, imac 0x47e510, m1 0x3ec30c;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x2c4c30, imac 0x47e550, m1 0x3ec330;
    virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) = win 0x2c4120, m1 0x3eb904, imac 0x47da60;
    virtual void loadLevelsFailed(char const*, int) = win 0x2c4250, m1 0x3eba2c, imac 0x47dbc0;
    virtual void setupPageInfo(gd::string, char const*) = win 0x2c42a0, m1 0x3ebb18, imac 0x47dca0;
    virtual void onBack(cocos2d::CCObject* sender) = win 0x2c4b80, imac 0x47e460, m1 0x3ec258;
    virtual void shareCommentClosed(gd::string, ShareCommentLayer*) = win 0x2c5c30, imac 0x47e840, m1 0x3ec64c;
    virtual void setTextPopupClosed(SetTextPopup*, gd::string) = win 0x2c69a0, imac 0x47e920, m1 0x3ec730;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2c71d0, imac 0x47eb10, m1 0x3ec8d0;
    virtual void setIDPopupClosed(SetIDPopup*, int) = win 0x2c4750, imac 0x47e330, m1 0x3ec148;
    virtual cocos2d::CCArray* updateResultArray(cocos2d::CCArray*) = win 0x2c0650, imac 0x47f310, m1 0x3ed064;
    virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = win 0x2c7830, imac 0x47f080, m1 0x3ece1c;

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
    LevelCell(char const*, float, float);

    static LevelCell* create(float, float) = imac 0x23d030, m1 0x1ecafc;

    void loadCustomLevelCell() = win 0xadb20;
    void loadFromLevel(GJGameLevel*) = win 0xad940, imac 0x233290, m1 0x1e3144;
    void loadLocalLevelCell() = win 0xb05f0, m1 0x1ecca4;
    void onClick(cocos2d::CCObject* sender) = win 0xb1080, imac 0x240620, m1 0x1efd94;
    void onToggle(cocos2d::CCObject* sender);
    void onViewProfile(cocos2d::CCObject* sender) = win 0xb12a0, imac 0x240780, m1 0x1efef8;
    void updateBGColor(int);
    void updateCellMode(int) = win 0xb0df0, imac 0x23cc30, m1 0x1ec794;
    void updateToggle();

    virtual bool init() = win 0xad920, imac 0x23d1e0, m1 0x1ecc88;
    virtual void draw() = win 0xb12e0, m1 0x1eff38, imac 0x2407b0;

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
    LevelEditorLayer() = win 0x2c85b0;

    static LevelEditorLayer* create(GJGameLevel*, bool) = win 0x2c9530, imac 0xdb7a0, m1 0xc3488;

    static LevelEditorLayer* get() {
        return GameManager::sharedState()->m_levelEditorLayer;
    }
    static cocos2d::CCScene* scene(GJGameLevel* level, bool p1) = win inline {
        auto scene = cocos2d::CCScene::create();
        auto layer = LevelEditorLayer::create(level, p1);
        scene->addChild(layer);
        return scene;
    }
    static void updateObjectLabel(GameObject*) = win 0x2cee20, imac 0xea240;

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
    void addSpecial(GameObject*) = win 0x2cf380, m1 0xc7a6c;
    TodoReturn addToRedoList(UndoObject*);
    TodoReturn addTouchPoint(cocos2d::CCPoint);
    TodoReturn addToUndoList(UndoObject*, bool) = imac 0xe07a0;
    TodoReturn applyAttributeState(GameObject*, GameObject*);
    TodoReturn applyGroupState(GameObject*, GameObject*);
    TodoReturn breakApartTextObject(TextGameObject*);
    bool canPasteState();
    TodoReturn clearPlayerPoints();
    TodoReturn clearTouchPoints();
    TodoReturn copyObjectState(GameObject*);
    TodoReturn copyParticleState(ParticleGameObject*);
    GameObject* createObject(int, cocos2d::CCPoint, bool) = win 0x2cbe70;
    void createObjectsFromSetup(gd::string&);
    cocos2d::CCArray* createObjectsFromString(gd::string const&, bool, bool) = win 0x2cb800;
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
    TodoReturn getLastObjectX() = imac 0xedac0;
    gd::string getLevelString() = win 0x2ce410, imac 0xe3ff0;
    TodoReturn getLockedLayers();
    TodoReturn getNextColorChannel();
    int getNextFreeAreaEffectID(cocos2d::CCArray*) = win 0x2d25b0;
    TodoReturn getNextFreeBlockID(cocos2d::CCArray*);
    int getNextFreeEditorLayer(cocos2d::CCArray*);
    TodoReturn getNextFreeEnterChannel(cocos2d::CCArray*);
    int getNextFreeGradientID(cocos2d::CCArray*) = win 0x2d2690;
    int getNextFreeGroupID(cocos2d::CCArray*) = win 0x2d1f10, imac 0xec180, m1 0xd190c;
    int getNextFreeItemID(cocos2d::CCArray*) = win 0x2d2190;
    TodoReturn getNextFreeOrderChannel(cocos2d::CCArray*);
    TodoReturn getNextFreeSFXGroupID(cocos2d::CCArray*);
    TodoReturn getNextFreeSFXID(cocos2d::CCArray*);
    TodoReturn getObjectRect(GameObject*, bool, bool) = win 0x2ccfd0;
    TodoReturn getRelativeOffset(GameObject*);
    TodoReturn getSavedEditorPosition(int) = imac 0xe9ce0;
    TodoReturn getSavedEditorPositions() = imac 0xe9d20;
    TodoReturn getSectionCount() = imac 0xea140;
    TodoReturn getSelectedEditorOrder();
    TodoReturn getSelectedEffectPos();
    TodoReturn getSelectedOrderChannel();
    TodoReturn getSFXIDs();
    TodoReturn getSongIDs(bool&);
    TodoReturn getTriggerGroup(int);
    void handleAction(bool, cocos2d::CCArray*) = win 0x2cdd10, imac 0xe36d0, m1 0xca5a8;
    bool hasAction(bool);
    bool init(GJGameLevel*, bool) = win 0x2c95c0, m1 0xc351c;
    bool isLayerLocked(int layer) {
        if (layer < 10000 && m_layerLockingEnabled) {
            return m_lockedLayers.at(layer);
        }
        return false;
    }
    GameObject* objectAtPosition(cocos2d::CCPoint) = win 0x2cc820;
    TodoReturn objectMoved(GameObject*) = imac 0xea890;
    TodoReturn objectsAtPosition(cocos2d::CCPoint);
    cocos2d::CCArray* objectsInRect(cocos2d::CCRect, bool);
    void onPausePlaytest();
    void onPlaytest() = win 0x2d7210, m1 0xd6138;
    void onResumePlaytest() = win 0x2d7c40;
    void onStopPlaytest() = win 0x2d7e30, m1 0xd6bf0;
    TodoReturn pasteAttributeState(GameObject*, cocos2d::CCArray*);
    TodoReturn pasteColorState(GameObject*, cocos2d::CCArray*);
    TodoReturn pasteGroupState(GameObject*, cocos2d::CCArray*);
    TodoReturn pasteParticleState(ParticleGameObject*, cocos2d::CCArray*);
    void processLoadedMoveActions() = imac 0xb7eb0, m1 0xa7840;
    TodoReturn quickUpdateAllPositions() = win 0x2d6fa0;
    TodoReturn recreateGroups();
    void redoLastAction() = win inline {
        return this->handleAction(false, m_redoObjects);
    }
    TodoReturn refreshSpecial(GameObject*);
    TodoReturn removeAllObjects();
    TodoReturn removeAllObjectsOfType(int) = win 0x2cda90;
    TodoReturn removeObject(GameObject*, bool) = imac 0xe2d70;
    TodoReturn removePlayerCollisionBlock();
    void removeSpecial(GameObject*) = win 0x2cfa90, imac 0xe2e30, m1 0xc9d9c;
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
    TodoReturn rotationForSlopeNearObject(GameObject*) = imac 0xe1700;
    TodoReturn runColorEffect(EffectGameObject*, int, float, float, bool);
    TodoReturn saveEditorPosition(cocos2d::CCPoint&, int) = imac 0xe9cc0;
    void setObjectCount(int);
    TodoReturn shouldBlend(int);
    TodoReturn sortBatchnodeChildren(float);
    TodoReturn spawnGroupPreview(int, float, float, float, float, float, bool, bool);
    TodoReturn stopPlayback();
    TodoReturn stopTriggersInGroup(int, float);
    TodoReturn timeObjectChanged();
    TodoReturn toggleBackground(bool);
    TodoReturn toggleGrid(bool);
    TodoReturn toggleGround(bool) = imac 0xdf810;
    TodoReturn toggleGroupPreview(int, bool);
    TodoReturn toggleLockActiveLayer();
    TodoReturn transferDefaultColors(GJEffectManager*, GJEffectManager*);
    TodoReturn triggerFollowCommand(EffectGameObject*);
    TodoReturn triggerPlayerFollowCommand(EffectGameObject*);
    TodoReturn triggerRotateCommand(EffectGameObject*);
    bool tryUpdateSpeedObject(EffectGameObject*, bool) = win 0x2d0070, imac 0xea700;
    bool typeExistsAtPosition(int, cocos2d::CCPoint, bool, bool, float) = win 0x2cc220;
    void undoLastAction() = win inline {
        return this->handleAction(true, m_undoObjects);
    }
    TodoReturn unlockAllLayers() = imac 0xea1f0;
    TodoReturn updateAnimateOnTriggerObjects(bool);
    TodoReturn updateArt(float);
    TodoReturn updateBlendValues();
    void updateEditor(float) = win 0x2d0210, imac 0xde0d0, m1 0xc57b0;
    void updateEditorMode() = win 0x2d2cf0, imac 0xdf440, m1 0xc6768;
    void updateGameObjects() = imac 0xde4d0, m1 0xc5bb8;
    TodoReturn updateGridLayer();
    TodoReturn updateGridLayerParent();
    TodoReturn updateKeyframeObjects() = win 0x2d9370, imac 0xebbe0;
    TodoReturn updateKeyframeVisibility(bool);
    void updateLevelFont(int) = win 0x2d65b0;
    void updateObjectColors(cocos2d::CCArray* gameObjects) = win 0x2d1670, imac 0xebc90;
    void updateOptions() = win 0x2ca7d0, m1 0xc478c;
    void updatePreviewAnim();
    void updatePreviewParticle(ParticleGameObject*) = imac 0x1a1db0, m1 0x1646b4;
    void updatePreviewParticles();
    TodoReturn updateToggledGroups();
    TodoReturn validGroup(GameObject*, bool);

    virtual void draw() = imac 0xf5850, m1 0xd990c;
    virtual void postUpdate(float) = win 0x2d87b0, imac 0xf2730, m1 0xd71ec;
    virtual void updateVisibility(float) = win 0x2d05e0, imac 0xeb0e0, m1 0xd08d8;
    virtual void playerTookDamage(PlayerObject*) = win 0x2d87a0, imac 0xf2710, m1 0xd71d8;
    virtual void updateColor(cocos2d::ccColor3B& color, float fadeTime, int colorID, bool blending, float opacity, cocos2d::ccHSVValue& copyHSV, int colorIDToCopy, bool copyOpacity, EffectGameObject* callerObject, int unk1, int unk2) = win 0x2d4f60, imac 0xef4a0, m1 0xd4530;
    virtual void updateDebugDraw() = win 0x2d93f0, imac 0xf3860, m1 0xd82b8;
    virtual void addToGroup(GameObject*, int, bool) = win 0x2d5f50, imac 0xefe20, m1 0xd4db4;
    virtual void removeFromGroup(GameObject*, int) = win 0x2d60a0, m1 0xd4e6c, imac 0xefed0;
    virtual void updateObjectSection(GameObject*) = win 0x2d6e70, imac 0xf10a0, m1 0xd5ddc;
    virtual TodoReturn updateDisabledObjectsLastPos(cocos2d::CCArray*) = win 0x2d7120, imac 0xf11e0, m1 0xd5ee4;
    virtual float timeForPos(cocos2d::CCPoint, int, int, bool, int) = win 0x2d5df0, imac 0xef7f0, m1 0xd47e8;
    virtual float posForTime(float) = win 0x2d5e60, imac 0xef880, m1 0xd4874;
    virtual void resetSPTriggered() = imac 0xef920, m1 0xd48b4;
    virtual TodoReturn didRotateGameplay() = win 0x2d6e00, imac 0xf0ea0, m1 0xd5be0;
    virtual TodoReturn manualUpdateObjectColors(GameObject*) = win 0x2d15e0, m1 0xd13ec, imac 0xebc60;
    virtual TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool) = win 0x2d8f40, m1 0xd8064, imac 0xf3610;
    virtual TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*) = win 0x2d9000, imac 0xf36d0, m1 0xd8144;
    virtual TodoReturn activatedAudioTrigger(SFXTriggerGameObject*) = win 0x2d86a0, imac 0xf2630, m1 0xd7114;
    virtual void checkpointActivated(CheckpointGameObject*) = win 0x2d86d0, imac 0xf2660, m1 0xd712c;
    virtual void addKeyframe(KeyframeGameObject*) = win 0x2d9040, imac 0xf3710, m1 0xd8184;
    virtual void levelSettingsUpdated() = win 0x2caf10, imac 0xdfa80, m1 0xc6d94;

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

    virtual void keyBackClicked() = imac 0x4f2300, m1 0x4531d0;
}

[[link(android)]]
class LevelInfoLayer : cocos2d::CCLayer, LevelDownloadDelegate, LevelUpdateDelegate, RateLevelDelegate, LikeItemDelegate, FLAlertLayerProtocol, LevelDeleteDelegate, NumberInputDelegate, SetIDPopupDelegate, TableViewCellDelegate {
    // virtual ~LevelInfoLayer();
    // LevelInfoLayer() = ios 0x31658;

    static LevelInfoLayer* create(GJGameLevel* level, bool challenge) = win 0x2e2740, imac 0x2a9c90, m1 0x24fca4;
    static cocos2d::CCScene* scene(GJGameLevel* level, bool challenge) = win 0x2e26f0, m1 0x24fc48;

    void confirmClone(cocos2d::CCObject*) = win 0x2e8ee0, imac 0x2aea10, m1 0x2547f4;
    void confirmDelete(cocos2d::CCObject*) = win 0x2e9050;
    void confirmMoveToBottom(cocos2d::CCObject*) = win 0x2ea780;
    void confirmMoveToTop(cocos2d::CCObject*) = win 0x2ea640, imac 0x2af0c0;
    void confirmOwnerDelete(cocos2d::CCObject*);
    void downloadLevel() = win 0x2e5650, m1 0x252798;
    void incrementDislikes();
    void incrementLikes();
    bool init(GJGameLevel* level, bool challenge) = win 0x2e2970;
    void loadLevelStep() = win 0x2e88e0, imac 0x2b0d60, m1 0x256ad4;
    void onAddToList(cocos2d::CCObject* sender) = win 0x2e5040, imac 0x2af3d0, m1 0x255224;
    void onBack(cocos2d::CCObject* sender) = win 0x2ebbc0, imac 0x2aec60, m1 0x254a7c;
    void onClone(cocos2d::CCObject* sender);
    void onDelete(cocos2d::CCObject* sender);
    void onFavorite(cocos2d::CCObject* sender) = win 0x2e5310, imac 0x2af040, m1 0x254e38;
    void onFeatured(cocos2d::CCObject* sender);
    void onGarage(cocos2d::CCObject* sender) = win 0x2e5490, m1 0x254de0;
    void onInfo(cocos2d::CCObject* sender) = win 0x2e8a40, imac 0x2ae340;
    void onLevelInfo(cocos2d::CCObject* sender) = win 0x2ea3f0;
    void onLevelLeaderboard(cocos2d::CCObject* sender) = win 0x2e53b0, imac 0x2ae370, m1 0x254134;
    void onLevelOptions(cocos2d::CCObject* sender) = win 0x2ea2a0;
    void onLike(cocos2d::CCObject* sender) = win 0x2e9d40, m1 0x2541a0;
    void onLowDetailMode(cocos2d::CCObject* sender);
    void onOwnerDelete(cocos2d::CCObject* sender);
    void onPlay(cocos2d::CCObject* sender) = win 0x2e7ab0;
    void onPlayReplay(cocos2d::CCObject* sender);
    void onRate(cocos2d::CCObject* sender) = win 0x2e95c0, m1 0x25714c;
    void onRateDemon(cocos2d::CCObject* sender) = win 0x2e9bc0, imac 0x2ae5c0, m1 0x25437c;
    void onRateStars(cocos2d::CCObject* sender) = win 0x2e98a0, m1 0x254218;
    void onRateStarsMod(cocos2d::CCObject* sender) = win 0x2e9b60, imac 0x2ae7c0, m1 0x254560;
    void onSetFolder(cocos2d::CCObject* sender) = win 0x2e51e0, imac 0x2af330, m1 0x255164;
    void onUpdate(cocos2d::CCObject* sender) = win 0x2ea160;
    void onViewProfile(cocos2d::CCObject* sender) = win 0x2ea340, imac 0x2ac1b0, m1 0x251f44;
    void playStep2();
    void playStep3() = m1 0x256a48;
    void playStep4() = win 0x2e8990, m1 0x256b84;
    void setupLevelInfo() = win 0x2e64a0, m1 0x252870;
    void setupPlatformerStats() = win 0x2e5960, m1 0x2533c0;
    void setupProgressBars() = win 0x2e5d90, m1 0x253764;
    bool shouldDownloadLevel();
    void showSongWarning() = imac 0x2b0b20, m1 0x256864;
    void showUpdateAlert(UpdateResponse) = win 0x2e75f0, imac 0x2b0660, m1 0x2563f4;
    void tryCloneLevel(cocos2d::CCObject*) = win 0x2e8a80;
    TodoReturn tryShowAd();
    void updateLabelValues() = win 0x2ea8b0, imac 0x2af6f0, m1 0x255574;
    void updateSideButtons() = win 0x2e9ea0, m1 0x2543d0;

    virtual void keyBackClicked() = win 0x2ebcb0, imac 0x2b1810, m1 0x257584;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x2ebcc0, imac 0x2b1840, m1 0x257590;
    virtual void numberInputClosed(NumberInputLayer*) = win 0x2e8d10, m1 0x256d6c, imac 0x2b1000;
    virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = imac 0x2af430, m1 0x25527c;
    virtual void levelDownloadFinished(GJGameLevel*) = win 0x2e70f0, imac 0x2b0210, m1 0x255fe0;
    virtual void levelDownloadFailed(int) = win 0x2e7450, imac 0x2b0500, m1 0x2562a0;
    virtual void levelUpdateFinished(GJGameLevel*, UpdateResponse) = win 0x2e7580, imac 0x2b05f0, m1 0x256384;
    virtual void levelUpdateFailed(int) = win 0x2e76e0, imac 0x2b0800, m1 0x256594;
    virtual void levelDeleteFinished(int) = win 0x2e7810, imac 0x2b0900, m1 0x25667c;
    virtual void levelDeleteFailed(int) = win 0x2e7950, imac 0x2b0a10, m1 0x256770;
    virtual void rateLevelClosed() = win 0x2e9bb0, imac 0x2b1500, m1 0x2572a0;
    virtual void likedItem(LikeItemType, int, bool) = win 0x2e9e30, imac 0x2b1530, m1 0x2572ac;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2eb6f0, imac 0x2b1640, m1 0x2573e4;
    virtual void setIDPopupClosed(SetIDPopup*, int) = win 0x2e5280, imac 0x2af560, m1 0x2553d4;
    virtual void onEnterTransitionDidFinish();

    bool m_isBusy;
    cocos2d::CCMenu* m_playBtnMenu;
    GJGameLevel* m_level;
    cocos2d::CCArray* m_coins;
    CCMenuItemSpriteExtra* m_likeBtn;
    CCMenuItemSpriteExtra* m_starRateBtn;
    CCMenuItemSpriteExtra* m_demonRateBtn;
    void* m_unk2;
    cocos2d::CCLabelBMFont* m_lengthLabel;
    cocos2d::CCLabelBMFont* m_exactLengthLabel;
    cocos2d::CCLabelBMFont* m_downloadsLabel;
    cocos2d::CCLabelBMFont* m_likesLabel;
    cocos2d::CCLabelBMFont* m_orbsLabel;
    cocos2d::CCLabelBMFont* m_folderLabel;
    CCMenuItemSpriteExtra* m_cloneBtn;
    void* m_unk3;
    cocos2d::CCSprite* m_likesIcon;
    cocos2d::CCSprite* m_orbsIcon;
    int m_unk6;
    int m_unk7;
    LoadingCircle* m_circle;
    GJDifficultySprite* m_difficultySprite;
    cocos2d::CCSprite* m_starsIcon;
    cocos2d::CCLabelBMFont* m_starsLabel;
    cocos2d::CCArray* m_icons;
    PAD = win 0x10, android32 0x10, android64 0x10, mac 0x10, ios 0x10;
    bool m_challenge;
    PAD = win 0x8, android32 0x4, android64 0x8, mac 0x8, ios 0x8;
    cocos2d::CCSprite* m_playSprite;
    cocos2d::CCProgressTimer* m_progressTimer;
    CustomSongWidget* m_songWidget;
}

[[link(android)]]
class LevelLeaderboard : FLAlertLayer, LeaderboardManagerDelegate, FLAlertLayerProtocol {
    // virtual ~LevelLeaderboard();

    static LevelLeaderboard* create(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = win 0x2ebe60, imac 0x3c7470;

    TodoReturn deleteLocalScores();
    TodoReturn getLocalScores();
    TodoReturn getSpriteButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint, int) = imac 0x3c8690, m1 0x351290;
    bool init(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = win 0x2ebfa0, m1 0x350370;
    bool isCorrect(char const*);
    void loadScores() = m1 0x351718;
    void onChangeMode(cocos2d::CCObject* sender) = win 0x2edc20, m1 0x351470;
    void onChangeType(cocos2d::CCObject* sender) = win 0x2edb80;
    void onClose(cocos2d::CCObject* sender) = win 0x84620;
    void onDeleteLocalScores(cocos2d::CCObject* sender) = imac 0x3c88b0, m1 0x3514c0;
    void onUpdate(cocos2d::CCObject* sender) = win 0x2edca0, m1 0x3515d4;
    TodoReturn reloadLeaderboard(LevelLeaderboardType, LevelLeaderboardMode);
    TodoReturn setupLeaderboard(cocos2d::CCArray*) = m1 0x35192c;

    virtual void registerWithTouchDispatcher() = imac 0x3c9410, m1 0x352054;
    virtual void keyBackClicked() = imac 0x3c93a0, m1 0x351fd8;
    virtual void show() = win 0x867a0, imac 0x3c9950, m1 0x352548;
    virtual void loadLeaderboardFinished(cocos2d::CCArray*, char const*) = win 0x2ee020, m1 0x352278, imac 0x3c9650;
    virtual void loadLeaderboardFailed(char const*) = win 0x2ee0c0, m1 0x3523c4, imac 0x3c9790;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2ed450, imac 0x3c8ff0, m1 0x351c50;
    virtual void updateUserScoreFinished() = win 0x2eda70, imac 0x3c91f0, m1 0x351e48;
    virtual void updateUserScoreFailed() = win 0x2eda80, imac 0x3c9220, m1 0x351e54;

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

    void loadFromList(GJLevelList*) = win 0xbdf90, imac 0x234070, m1 0x1e3eec;
    void onClick(cocos2d::CCObject* sender) = win 0xbf3c0, imac 0x247a00, m1 0x1f5fc0;
    void onListInfo(cocos2d::CCObject* sender);
    void onViewProfile(cocos2d::CCObject* sender) = imac 0x247ae0, m1 0x1f6088;
    TodoReturn updateBGColor(int);

    virtual bool init() = imac 0x2479f0, m1 0x1f5fb8;
    virtual void draw() = imac 0x247b30, m1 0x1f60d0;

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
    LevelListLayer() {
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

    static LevelListLayer* create(GJLevelList* list) = win inline, imac 0x348a30, m1 0x2dd444 {
        auto ret = new LevelListLayer();
        if (ret->init(list)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCScene* scene(GJLevelList*) = win 0x2ee8a0, m1 0x2dd3a4;

    void cloneList() = win 0x2f3670;
    void confirmClone(cocos2d::CCObject*) = win 0x2f3580, imac 0x34a870, m1 0x2df0bc;
    void confirmDelete(cocos2d::CCObject*) = win 0x2f3900;
    void confirmOwnerDelete(cocos2d::CCObject*) = win 0x2f3a30, imac 0x34aa00, m1 0x2df25c;
    bool init(GJLevelList*) = win 0x2eead0;
    void onClaimReward(cocos2d::CCObject* sender) = win 0x2f1530;
    void onDelete();
    void onDescription(cocos2d::CCObject* sender) = imac 0x34ac10, m1 0x2df45c;
    void onFavorite(cocos2d::CCObject* sender) = win 0x2f2bc0, imac 0x34a950, m1 0x2df1ac;
    void onInfo(cocos2d::CCObject* sender) = win 0x2f2ec0, imac 0x34a7c0;
    void onLike(cocos2d::CCObject* sender) = win 0x2f2f00, m1 0x2df04c;
    void onListInfo(cocos2d::CCObject* sender);
    void onRefreshLevelList(cocos2d::CCObject* sender) = win 0x2f1ba0, m1 0x2def0c;
    void onSelectIcon(cocos2d::CCObject* sender) = win 0x2f3140, m1 0x2df5a4;
    void onShare(cocos2d::CCObject* sender) = win 0x2f32b0, imac 0x34ad90, m1 0x2df5f0;
    void onToggleEditMode(cocos2d::CCObject* sender) = win 0x2f3540, imac 0x34ad00, m1 0x2df57c;
    void onViewProfile(cocos2d::CCObject* sender) = win 0x2f2b80, imac 0x34a670, m1 0x2deed4;
    void ownerDelete();
    void updateEditMode();
    void updateSideButtons() = win 0x2f3040, imac 0x34aef0, m1 0x2df72c;
    void updateStatsArt() = win 0x2f05b0, m1 0x2df7c0;
    void verifyListName();

    virtual void onEnter() = win 0x2f0560, m1 0x2e05e4, imac 0x34be00;
    virtual void onExit() = imac 0x34be30, m1 0x2e061c;
    virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) = win 0x2f1d60, imac 0x34c1f0, m1 0x2e09e4;
    virtual void loadLevelsFailed(char const*, int) = win 0x2c4250, imac 0x34c430, m1 0x2e0c14;
    virtual void onBack(cocos2d::CCObject* sender) = win 0x2f25c0, imac 0x34c970, m1 0x2e1080;
    virtual void shareCommentClosed(gd::string, ShareCommentLayer*) = win 0x2f2dc0, imac 0x34d0d0, m1 0x2e17e0;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2f29e0, imac 0x34ccf0, m1 0x2e141c;
    virtual void setIDPopupClosed(SetIDPopup*, int) = win 0x2f2510, imac 0x34c810, m1 0x2e0f34;
    virtual cocos2d::CCArray* updateResultArray(cocos2d::CCArray*) = imac 0x34c950, m1 0x2e1078;
    virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = win 0x2f20c0, imac 0x34c460, m1 0x2e0c20;
    virtual void likedItem(LikeItemType, int, bool) = win 0x2f2fe0, imac 0x34d1c0, m1 0x2e18d4;
    virtual void iconSelectClosed(SelectListIconLayer*) = win 0x2f3290, imac 0x34d400, m1 0x2e1ab4;
    virtual void levelListDeleteFinished(int) = win 0x2f3bb0, imac 0x34d590, m1 0x2e1be4;
    virtual void levelListDeleteFailed(int) = win 0x2f3ce0, imac 0x34d690, m1 0x2e1cd0;
    virtual void textInputOpened(CCTextInputNode*) = win 0x2f40a0, m1 0x2e1fd4, imac 0x34d9a0;
    virtual void textInputClosed(CCTextInputNode*) = win 0x2f3e10, imac 0x34d790, m1 0x2e1dbc;
    virtual void textChanged(CCTextInputNode*) = win 0x2f4200, imac 0x34da70, m1 0x2e20d8;

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

    static LevelOptionsLayer* create(LevelSettingsObject*);

    bool init(LevelSettingsObject*) = win 0x30f350, imac 0x25f9b0, m1 0x20b92c;
    void onSettings(cocos2d::CCObject* sender) = win 0x30f880, imac 0x25feb0, m1 0x20bdec;

    virtual void valueDidChange(int, float) = win 0x30fa60, imac 0x260150, m1 0x20bfc8;
    virtual float getValue(int) = win 0x30fa80, imac 0x260170, m1 0x20bfe0;
    virtual void setupOptions() = win 0x30f3c0, m1 0x20b984, imac 0x25fa00;
    virtual void didToggle(int) = win 0x30faa0, imac 0x260190, m1 0x20bffc;

    LevelSettingsObject* m_settingsObject;
}

[[link(android)]]
class LevelOptionsLayer2 : LevelOptionsLayer {
    // virtual ~LevelOptionsLayer2();

    static LevelOptionsLayer2* create(LevelSettingsObject*) = m1 0x20be2c;

    bool init(LevelSettingsObject*) = imac 0x260350, m1 0x20c1b0;

    virtual void setupOptions() = win 0x30fd00, imac 0x260450, m1 0x20c2ac;
}

[[link(android)]]
class LevelPage : cocos2d::CCLayer, DialogDelegate {
    // virtual ~LevelPage();
    LevelPage() {}

    static LevelPage* create(GJGameLevel* level) = win inline, imac 0x41ff30, m1 0x39b3bc {
        auto ret = new LevelPage();
        if (ret->init(level)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    void addSecretCoin() = win 0x3076f0, m1 0x39cc48;
    void addSecretDoor() = win 0x307e00;
    bool init(GJGameLevel*) = win 0x304f50, m1 0x39ddac;
    void onInfo(cocos2d::CCObject* sender) = win 0x309140;
    void onMoreGames(cocos2d::CCObject* sender);
    void onPlay(cocos2d::CCObject* sender) = win 0x308bd0, imac 0x422080, m1 0x39d48c;
    void onSecretDoor(cocos2d::CCObject* sender) = win 0x308010, imac 0x4242d0, m1 0x39f4cc;
    void onTheTower(cocos2d::CCObject* sender) = win 0x307030, m1 0x39e968;
    void playCoinEffect() = win 0x307930, imac 0x423e80, m1 0x39f084;
    void playStep2() = m1 0x39fcf4;
    void playStep3() = win 0x309040;
    void updateDynamicPage(GJGameLevel*) = win 0x305be0, m1 0x39b650;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x3095e0, imac 0x424d80, m1 0x39fe6c;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x424ea0, m1 0x39ff74 {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x424ec0, m1 0x39ff7c {}
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x424ee0, m1 0x39ff84;
    virtual void registerWithTouchDispatcher() = win 0x9b1a0, imac 0x424f20, m1 0x39ffa0;
    virtual void dialogClosed(DialogLayer*) = win 0x308af0, imac 0x424ad0, m1 0x39fba4;

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

    static LevelSearchLayer* create(int) = imac 0x611090;
    static cocos2d::CCScene* scene(int) = win 0x2f74d0;

    bool checkDiff(int);
    bool checkTime(int);
    void clearFilters();
    void confirmClearFilters(cocos2d::CCObject*);
    inline char const* getDiffKey(int diff) {
        return cocos2d::CCString::createWithFormat("D%i", diff)->getCString();
    }
    gd::string getLevelLenKey() = win 0x14b660;
    gd::string getSearchDiffKey() = m1 0x541f50;
    GJSearchObject* getSearchObject(SearchType, gd::string) = win 0x2fb170, m1 0x541bfc;
    inline char const* getTimeKey(int time) {
        return cocos2d::CCString::createWithFormat("T%i", time)->getCString();
    }
    bool init(int) = win 0x2f7620, imac 0x6111a0, m1 0x53d4d0;
    void onBack(cocos2d::CCObject* sender) = win 0x2fcf20;
    void onClearFreeSearch(cocos2d::CCObject* sender) = win 0x2fcee0, imac 0x613ee0, m1 0x540240;
    void onClose(cocos2d::CCObject* sender) = win inline {
        m_searchInput->onClickTrackNode(false);
    }
    void onFollowed(cocos2d::CCObject* sender) = win 0x2fc9a0;
    void onFriends(cocos2d::CCObject* sender) = win 0x2fc8e0;
    void onLatestStars(cocos2d::CCObject* sender) = win 0x2fc820;
    void onMagic(cocos2d::CCObject* sender) = win 0x2fc6a0;
    void onMoreOptions(cocos2d::CCObject* sender) = win 0x2f9960;
    void onMostDownloaded(cocos2d::CCObject* sender) = win 0x2fc3a0;
    void onMostLikes(cocos2d::CCObject* sender) = win 0x2fc460;
    void onMostRecent(cocos2d::CCObject* sender) = win 0x2fc760;
    void onSearch(cocos2d::CCObject* sender) = win 0x2fca60;
    void onSearchMode(cocos2d::CCObject* sender) = win 0x2f9910, imac 0x613860, m1 0x53fbec;
    void onSearchUser(cocos2d::CCObject* sender) = win 0x2fcca0;
    void onSpecialDemon(cocos2d::CCObject* sender) = win 0x2f9570, m1 0x540c5c;
    void onStarAward(cocos2d::CCObject* sender);
    void onSuggested(cocos2d::CCObject* sender) = win 0x2fc520;
    void onTrending(cocos2d::CCObject* sender) = win 0x2fc5e0;
    void toggleDifficulty(cocos2d::CCObject*) = win 0x2fd2a0, imac 0x6143e0, m1 0x540758;
    void toggleDifficultyNum(int, bool) = win 0x2fd600, imac 0x614b80, m1 0x540f38;
    void toggleStar(cocos2d::CCObject*) = win 0x2fcf90;
    void toggleTime(cocos2d::CCObject*);
    void toggleTimeNum(int, bool) = win 0x2fda10, imac 0x614d10, m1 0x5410cc;
    void updateSearchLabel(char const*) = win 0x2fae00;

    virtual void keyBackClicked() = win 0x2fdba0, imac 0x616040, m1 0x5423a8;
    virtual void textInputOpened(CCTextInputNode*) = win 0x2fabe0, imac 0x615590, m1 0x5418e8;
    virtual void textInputClosed(CCTextInputNode*) = win 0x2fad30, imac 0x615660, m1 0x5419c8;
    virtual void textChanged(CCTextInputNode*) = imac 0x615730, m1 0x541ad8;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2faba0, imac 0x615520, m1 0x541850;
    virtual void demonFilterSelectClosed(int) = win 0x2f96d0, m1 0x541398, imac 0x615010;

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
    LevelSelectLayer() {}
    ~LevelSelectLayer();

    static LevelSelectLayer* create(int page) = win inline {
        auto ret = new LevelSelectLayer();
        if (ret->init(page)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCScene* scene(int) = win 0x3035f0;

    cocos2d::ccColor3B colorForPage(int page) = win 0x3048c0, imac 0x421d60, m1 0x39d258;
    cocos2d::ccColor3B getColorValue(int, int, float) = imac 0x421ac0, m1 0x39cfb4;
    bool init(int page) = win 0x303720, m1 0x39a88c;
    void onBack(cocos2d::CCObject* sender) = win 0x304d60;
    void onDownload(cocos2d::CCObject* sender) = win 0x3044e0, m1 0x39b498;
    void onInfo(cocos2d::CCObject* sender) = win 0x304ee0, m1 0x39b598;
    void onNext(cocos2d::CCObject* sender) = win 0x304c60, m1 0x39b520;
    void onPlay(cocos2d::CCObject* sender) = imac 0x422030, m1 0x39d454;
    void onPrev(cocos2d::CCObject* sender) = win 0x304ce0, m1 0x39b4f0;
    void tryShowAd();

    virtual void keyBackClicked() = win 0x304db0, imac 0x421de0, m1 0x39d2e8;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x304e00, imac 0x421e80, m1 0x39d37c;
    virtual void updatePageWithObject(cocos2d::CCObject*, cocos2d::CCObject*) = win 0x304530, imac 0x420170, m1 0x39b5d4;
    virtual void scrollLayerMoved(cocos2d::CCPoint) = win 0x3045a0, imac 0x421950, m1 0x39ce60;

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

    static LevelSettingsLayer* create(LevelSettingsObject*, LevelEditorLayer*) = win 0x309b80, imac 0x259b10, m1 0x206234;

    void createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = win 0x30c6b0, imac 0x25c9c0;
    bool init(LevelSettingsObject*, LevelEditorLayer*) = win 0x309d70, imac 0x259d10, m1 0x20639c;
    void onBGArt(cocos2d::CCObject* sender) = win 0x30cf40, imac 0x25c720;
    void onClose(cocos2d::CCObject* sender) = win 0x30cb30, imac 0x25c8b0, m1 0x208c84;
    void onCol(cocos2d::CCObject* sender) = m1 0x208624;
    void onDisable(cocos2d::CCObject* sender);
    void onFGArt(cocos2d::CCObject* sender) = win 0x30d010, imac 0x25c850;
    void onGameplayMode(cocos2d::CCObject* sender) = win 0x30c280, imac 0x25c5a0, m1 0x20899c;
    void onGArt(cocos2d::CCObject* sender) = win 0x30cf90, imac 0x25c760, m1 0x208b60;
    void onLiveEdit(cocos2d::CCObject* sender) = win 0x30cc70, imac 0x25c560, m1 0x208958;
    void onMode(cocos2d::CCObject* sender) = win 0x30c450, imac 0x25cca0, m1 0x209088;
    void onOptionToggle(cocos2d::CCObject* sender) = win 0x30c920, imac 0x25cbf0, m1 0x208fe0;
    void onSelectFont(cocos2d::CCObject* sender);
    void onSelectMode(cocos2d::CCObject* sender) = imac 0x25d440, m1 0x2096f8;
    void onSelectSpeed(cocos2d::CCObject* sender) = imac 0x25d500, m1 0x2097b8;
    void onSettings(cocos2d::CCObject* sender) = win 0x30c390, imac 0x25ccf0;
    void onShowPicker(cocos2d::CCObject* sender) = win 0x30ccc0, imac 0x25c170, m1 0x2085d0;
    void onSpeed(cocos2d::CCObject* sender) = win 0x30c400, imac 0x25cc60, m1 0x20904c;
    void showPicker(ColorAction*) = m1 0x2098e8;
    void updateColorSprite(ColorChannelSprite*) = win 0x30cde0, imac 0x25d690, m1 0x209928;
    void updateColorSprites() = win 0x30cd70, imac 0x25c1f0, m1 0x208644;
    void updateGameplayModeButtons() = win 0x30c2c0, imac 0x25c670, m1 0x208a70;

    virtual void registerWithTouchDispatcher() = win 0x30c630, m1 0x209564, imac 0x25d2b0;
    virtual void keyBackClicked() = win 0x30d4d0, imac 0x25dbe0, m1 0x209db0;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xc3110, imac 0x25d740, m1 0x2099d4;
    virtual void colorSelectClosed(cocos2d::CCNode*) = win 0x30cd60, imac 0x25d660, m1 0x20991c;
    virtual void selectArtClosed(SelectArtLayer*) = win 0x30d180, imac 0x25d970, m1 0x209bb0;
    virtual void selectSettingClosed(SelectSettingLayer*) = win 0x30c4b0, imac 0x25d0e0, m1 0x2093a8;
    virtual void textInputClosed(CCTextInputNode*) = imac 0x25d300, m1 0x2095bc;
    virtual void textChanged(CCTextInputNode*) = win 0x30c960, imac 0x25d340, m1 0x2095d8;

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

    static LevelSettingsObject* create() = win 0x2dd0d0;
    static LevelSettingsObject* objectFromDict(cocos2d::CCDictionary*) = win 0x2deed0, imac 0xf8180, m1 0xdb8f8;
    static LevelSettingsObject* objectFromString(gd::string const& str) = win inline {
        return objectFromDict(GameToolbox::stringSetupToDict(str, ","));
    }

    gd::string getSaveString() = win 0x2dd510, m1 0xcb0b8;
    void setupColorsFromLegacyMode(cocos2d::CCDictionary*) = win 0x2e0720, imac 0xf9980, m1 0xdcfa0;
    bool shouldUseYSection() = win inline {
        return m_platformerMode || m_dynamicLevelHeight;
    }

    virtual bool init() = win 0x2dd200, m1 0xdb780, imac 0xf7fc0;

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
    static int artistForAudio(int) = win 0x314200;
    static gd::string base64DecodeString(gd::string);
    static gd::string base64EncodeString(gd::string);
    static cocos2d::CCDictionary* createStarPackDict();
    static gd::string fbURLForArtist(int) = win 0x316310;
    static int getAudioBPM(int);
    static gd::string getAudioFileName(int) = win 0x313630, imac 0x4eb1c0;
    static gd::string getAudioString(int) = imac 0x4ecdb0;
    static gd::string getAudioTitle(int) = win 0x312ab0, imac 0x4eac20;
    static TodoReturn getLastGameplayReversed();
    static TodoReturn getLastGameplayRotated();
    static TodoReturn getLastTimewarp();
    static GJGameLevel* getLevel(int, bool) = win 0x310200, imac 0x4e86c0;
    static TodoReturn getLevelList();
    static SongInfoObject* getSongObject(int id) = win inline {
        auto artistID = artistForAudio(id);
        return SongInfoObject::create(id, getAudioTitle(id), nameForArtist(artistID), artistID, 0.f, "", "", "", 0, "", false, 0, -1);
    }
    static TodoReturn moveTriggerObjectsToArray(cocos2d::CCArray*, cocos2d::CCDictionary*, int);
    static gd::string nameForArtist(int) = win 0x3142d0;
    static gd::string ngURLForArtist(int) = win 0x3158f0;
    static TodoReturn offsetBPMForTrack(int);
    static float posForTime(float time, cocos2d::CCArray* p1, int p2, bool p3, int& p4);
    static float posForTimeInternal(float time, cocos2d::CCArray* gameObjects, int speedmodValue, bool disabledSpeedmod, bool, bool, int&, int) = win 0x317d80;
    static TodoReturn sortChannelOrderObjects(cocos2d::CCArray*, cocos2d::CCDictionary*, bool);
    static TodoReturn sortSpeedObjects(cocos2d::CCArray*, GJBaseGameLayer*) = imac 0x672b0;
    static float timeForPos(cocos2d::CCPoint, cocos2d::CCArray*, int, int, int, bool, bool, bool, bool, int);
    static TodoReturn toggleDebugLogging(bool);
    static gd::string urlForAudio(int) = win 0x3145d0;
    static TodoReturn valueForSpeedMod(int);
    static bool verifyLevelIntegrity(gd::string, int) = win 0x3183e0, imac 0x4ee7d0;
    static gd::string ytURLForArtist(int) = win 0x315d90;
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

    static LikeItemLayer* create(LikeItemType, int, int) = win 0x318d80, imac 0x5e14b0;

    bool init(LikeItemType, int, int) = win 0x318e80, imac 0x5e1620, m1 0x513d40;
    void onClose(cocos2d::CCObject* sender);
    void onDislike(cocos2d::CCObject* sender);
    void onLike(cocos2d::CCObject* sender) = win 0x319250;
    void triggerLike(bool isLiked) = win 0x319270;

    virtual void keyBackClicked() = imac 0x5e1ba0, m1 0x51429c;

    LikeItemType m_itemType;
    int m_itemID;
    int m_commentSourceID;
    LikeItemDelegate* m_likeDelegate;
}

[[link(android)]]
class ListButtonBar : cocos2d::CCNode {
    // virtual ~ListButtonBar();

    static ListButtonBar* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int) = win 0x6ad70, imac 0x3de1d0, m1 0x360fa0;

    int getPage();
    void goToPage(int) = win 0x6b380, m1 0x3616b0;
    bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int) = win 0x6ae80, imac 0x3de2a0, m1 0x361084;
    void onLeft(cocos2d::CCObject* sender) = win 0x6b430, m1 0x36158c;
    void onRight(cocos2d::CCObject* sender) = win 0x6b410, m1 0x361618;

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

    static ListButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float) = win 0x6b450, imac 0x3de6f0, m1 0x361484;

    bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float) = imac 0x3de9d0, m1 0x36172c;
}

[[link(android)]]
class ListCell : TableViewCell {
    // virtual ~ListCell();
    ListCell(char const*, float, float);

    void loadFromObject(cocos2d::CCObject*, int, int, int);
    TodoReturn updateBGColor(int);

    virtual bool init() = imac 0x2f9900, m1 0x292040;
    virtual void draw() = win 0x3c6f0, imac 0x2f9990, m1 0x29208c;
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

    static LoadingCircle* create() = win 0x6b840;

    void fadeAndRemove() = win 0x6bb20, m1 0x41529c;

    void setFade(bool fade) {
        m_fade = fade;
    }

    inline void setParentLayer(cocos2d::CCLayer* layer) {
        m_parentLayer = layer;
    }
    void show() = win 0x6ba20, m1 0x4151a4;

    virtual bool init() = win 0x6b940, imac 0x4ac070, m1 0x4150e8;
    virtual void draw() = win 0x6bbc0, imac 0x4ac2c0, m1 0x41534c;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x7730, m1 0x93d8 { return true; }
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x76f0, m1 0x93bc {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x76f0, m1 0x93bc {}
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x76f0, m1 0x93bc {}
    virtual void registerWithTouchDispatcher() = win 0x6bbe0, m1 0x41535c, imac 0x4ac2e0;

    cocos2d::CCSprite* m_sprite;
    cocos2d::CCLayer* m_parentLayer;
    bool m_fade;
}

[[link(android)]]
class LoadingCircleSprite : cocos2d::CCSprite {
    // virtual ~LoadingCircleSprite();

    static LoadingCircleSprite* create(float);

    TodoReturn fadeInCircle(bool, float, float);
    void hideCircle() = win inline, m1 0x41559c {
        this->stopActionByTag(0);
        this->setOpacity(0);
        this->setVisible(false);
    }

    bool init(float);
}

[[link(android)]]
class LoadingLayer : cocos2d::CCLayer {
    // virtual ~LoadingLayer();

    static LoadingLayer* create(bool) = imac 0x38f610;
    static cocos2d::CCScene* scene(bool) = win 0x3193d0, m1 0x31e2a8;

    const char* getLoadingString() = win 0x31a810, imac 0x38fe80;
    bool init(bool) = win 0x3194e0, imac 0x38f6f0, m1 0x31e440;
    void loadAssets() = win 0x319d80, imac 0x38ff40, m1 0x31ecac;
    void loadingFinished() = imac 0x3906e0, m1 0x31f3bc;
    void updateProgress(int) = win 0x319d00, imac 0x38fee0;

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
    inline static LocalLevelManager* get() {
        return LocalLevelManager::sharedState();
    }
    // virtual ~LocalLevelManager();

    static LocalLevelManager* sharedState() = win 0x31af50, imac 0x5df0c0, m1 0x511cd8;

    cocos2d::CCDictionary* getAllLevelsInDict() = win 0x31b3c0;
    TodoReturn getAllLevelsWithName(gd::string);
    cocos2d::CCArray* getCreatedLevels(int folder) = win inline {
        if (folder < 1) return m_localLevels;
        auto ret = cocos2d::CCArray::create();
        CCObject* obj;
        CCARRAY_FOREACH(m_localLevels, obj) {
            if (!obj) return ret;
            if (static_cast<GJGameLevel*>(obj)->m_levelFolder == folder) ret->addObject(obj);
        }
        return ret;
    }
    cocos2d::CCArray* getCreatedLists(int folder) = win inline {
        if (folder < 1) return m_localLists;
        auto ret = cocos2d::CCArray::create();
        CCObject* obj;
        CCARRAY_FOREACH(m_localLists, obj) {
            if (!obj) return ret;
            if (static_cast<GJLevelList*>(obj)->m_folder == folder) ret->addObject(obj);
        }
        return ret;
    }
    cocos2d::CCDictionary* getLevelsInNameGroups();
    gd::string getMainLevelString(int) = win 0x31b2b0;
    TodoReturn markLevelsAsUnmodified();
    TodoReturn moveLevelToTop(GJGameLevel*);
    TodoReturn reorderLevels();
    TodoReturn reorderLists();
    TodoReturn tryLoadMainLevelString(int);
    TodoReturn updateLevelOrder() = win 0x31b8b0;
    TodoReturn updateLevelRevision() = win 0x31b520;
    TodoReturn updateListOrder();

    virtual bool init() = win 0x31aff0, imac 0x5df260, m1 0x511e58;
    virtual void encodeDataTo(DS_Dictionary*) = win 0x31b9c0, imac 0x5e06b0, m1 0x51306c;
    virtual void dataLoaded(DS_Dictionary*) = win 0x31ba20, imac 0x5e0710, m1 0x5130c4;
    virtual void firstLoad() = win 0x31b930, m1 0x512ff0, imac 0x5e0620;

    cocos2d::CCArray* m_localLevels;
    cocos2d::CCArray* m_localLists;
    gd::unordered_map<int, gd::string> m_mainLevels;
}

[[link(android)]]
class MapPackCell : TableViewCell {
    // virtual ~MapPackCell();
    MapPackCell(char const*, float, float);

    void loadFromMapPack(GJMapPack*) = win 0xb14e0, imac 0x2334b0, m1 0x1e3380;
    void onClaimReward(cocos2d::CCObject* sender) = m1 0x1f04a8;
    void onClick(cocos2d::CCObject* sender) = win 0xb2000;
    void playCompleteEffect() = win 0xb21d0, imac 0x240ed0, m1 0x1f0524;
    void reloadCell() = win inline, imac 0x23cb80 {
        this->loadFromMapPack(m_mapPack);
    }
    void updateBGColor(int idx) = win inline {
        m_backgroundLayer->setColor(idx % 2 == 0 ? cocos2d::ccColor3B { 161, 88, 44 } : cocos2d::ccColor3B { 194, 114, 62 });
        m_backgroundLayer->setOpacity(255);
    }

    virtual bool init() = win 0xb1480, m1 0x1f02a0, imac 0x240c50;
    virtual void draw() = imac 0x241100, m1 0x1f0760;

    GJMapPack* m_mapPack;
    CCMenuItemSpriteExtra* m_viewButton;
    CCMenuItemSpriteExtra* m_rewardButton;
    cocos2d::CCArray* m_rewardLabels;
    cocos2d::CCArray* m_rewardSprites;
}

[[link(android)]]
class MapSelectLayer : cocos2d::CCLayer {
    // virtual ~MapSelectLayer();

    static MapSelectLayer* create();
    static cocos2d::CCScene* scene() = m1 0x202fd0;

    TodoReturn checkTouchMonster(cocos2d::CCPoint);
    TodoReturn createObjectAtPoint(cocos2d::CCPoint);
    TodoReturn getConstrainedMapPos(cocos2d::CCPoint);
    void onBack(cocos2d::CCObject* sender);

    virtual void update(float) = imac 0x257470, m1 0x203f74;
    virtual bool init() = m1 0x203100, imac 0x256520;
    virtual void onExit() = imac 0x257730, m1 0x204230;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x257de0, m1 0x204814;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x257ef0, m1 0x204910;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x258110, m1 0x204ae0;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x2581f0, m1 0x204bf0;
    virtual void registerWithTouchDispatcher() = imac 0x258230, m1 0x204c0c;
    virtual void keyBackClicked() = imac 0x257650, m1 0x204158;
    virtual void scrollWheel(float, float) = imac 0x257230, m1 0x203d54;

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
    MenuGameLayer() {}

    static MenuGameLayer* create() = win inline {
        auto ret = new MenuGameLayer();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    void destroyPlayer() = win 0x31e360, imac 0x4e7cc0, m1 0x449c10;
    cocos2d::ccColor3B getBGColor(int) = win 0x31ccc0, imac 0x4e6c00, m1 0x448cd8;
    void resetPlayer() = win 0x31d730;
    void tryJump(float) = win 0x31cf90, m1 0x448ddc;
    void updateColor(float) = win 0x31cb70, imac 0x4e6f00, m1 0x44904c;
    void updateColors() = imac 0x4e78e0, m1 0x4498a0;

    virtual void update(float) = win 0x31d260, imac 0x4e7950, m1 0x449918;
    virtual bool init() = win 0x31c440, m1 0x4488c4, imac 0x4e67a0;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31e620, m1 0x449e0c, imac 0x4e7ec0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4e7fe0, m1 0x449f24 {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4e8000, m1 0x449f2c {}
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4e8020, m1 0x449f34;
    virtual void registerWithTouchDispatcher() = win 0x31e7d0, imac 0x4e8060, m1 0x449f50;

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
    // static MenuLayer* create() = ios 0x275f90;
    // virtual ~MenuLayer();

    static MenuLayer* get() {
        return GameManager::get()->m_menuLayer;
    }

    static cocos2d::CCScene* scene(bool) = win 0x31e920, m1 0x30d59c;

    void endGame() = win 0x3213f0;
    void firstNetworkTest() = win 0x320310;
    void onAchievements(cocos2d::CCObject* sender) = win 0x320840;
    void onCreator(cocos2d::CCObject* sender) = win 0x320d50;
    void onDaily(cocos2d::CCObject* sender) = win 0x3200c0;
    void onDiscord(cocos2d::CCObject* sender);
    void onEveryplay(cocos2d::CCObject* sender) {}
    void onFacebook(cocos2d::CCObject* sender);
    void onFreeLevels(cocos2d::CCObject* sender);
    void onFullVersion(cocos2d::CCObject* sender);
    void onGameCenter(cocos2d::CCObject* sender);
    void onGarage(cocos2d::CCObject* sender) = win 0x320de0;
    void onGooglePlayGames(cocos2d::CCObject* sender) = m1 0x30f368;
    void onMoreGames(cocos2d::CCObject* sender) = win 0x320760, m1 0x30f228;
    void onMyProfile(cocos2d::CCObject* sender) = win 0x320600, m1 0x30efc4;
    void onNewgrounds(cocos2d::CCObject* sender);
    void onOptions(cocos2d::CCObject* sender) = win 0x320a90, m1 0x30ec20;
    void onOptionsInstant() = win 0x320aa0, m1 0x30d6e4;
    void onPlay(cocos2d::CCObject* sender) = win 0x3209f0, m1 0x30ea5c;
    void onQuit(cocos2d::CCObject* sender) = win 0x320fa0;
    void onRobTop(cocos2d::CCObject* sender) = win 0x3206a0;
    void onStats(cocos2d::CCObject* sender) = win 0x320c30;
    void onTrailer(cocos2d::CCObject* sender);
    void onTwitch(cocos2d::CCObject* sender);
    void onTwitter(cocos2d::CCObject* sender);
    void onYouTube(cocos2d::CCObject* sender);
    void openOptions(bool videoOptions) = win 0x320ab0, m1 0x30f48c;
    void showGCQuestion() = m1 0x30f270;
    void showMeltdownPromo() {}
    void showTOS() = win 0x3204e0, m1 0x30f170;
    void syncPlatformAchievements(float);
    void tryShowAd(float) = m1 0x30f1d0;
    void updateUserProfileButton() = win 0x320210;
    void videoOptionsClosed() = win inline, imac 0x37ee80 {
        m_menuGameLayer->m_videoOptionsOpen = false;
    }
    void videoOptionsOpened() = win inline, imac 0x37ee60 {
        m_menuGameLayer->m_videoOptionsOpen = true;
    }
    void willClose() = win 0x3210d0, m1 0x30d3a0;

    virtual bool init() = win 0x31eab0, m1 0x30d74c, imac 0x37d040;
    virtual void keyBackClicked() = win 0x320fa0, imac 0x37ef50, m1 0x30f5dc;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x321380, imac 0x37f230, m1 0x30f864;
    virtual void googlePlaySignedIn() = win 0x3209a0, imac 0x37ecc0, m1 0x30f390;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x321170, imac 0x37ef80, m1 0x30f5e8;

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

    static MessagesProfilePage* create(bool) = win 0x321590, imac 0x21bfc0, m1 0x1cebbc;

    void deleteSelected() = win 0x3226b0, m1 0x1cfec0;
    bool init(bool) = win 0x321730, m1 0x1cecf8;
    bool isCorrect(char const*);
    void loadPage(int) = m1 0x1cfad8;
    void onClose(cocos2d::CCObject* sender) = win 0x322ad0, m1 0x1cf650;
    void onDeleteSelected(cocos2d::CCObject* sender) = m1 0x1cf7ec;
    void onNextPage(cocos2d::CCObject* sender) = win 0x3234f0;
    void onPrevPage(cocos2d::CCObject* sender) = win 0x323500;
    void onSentMessages(cocos2d::CCObject* sender) = win 0x322330, m1 0x1cf760;
    void onToggleAllObjects(cocos2d::CCObject* sender) = m1 0x1cf9b8;
    void onUpdate(cocos2d::CCObject* sender);
    void setupCommentsBrowser(cocos2d::CCArray*) = win 0x323050, m1 0x1d068c;
    void untoggleAll() = m1 0x1d04bc;
    void updateLevelsLabel();
    void updatePageArrows();

    virtual void registerWithTouchDispatcher() = imac 0x21dae0, m1 0x1d053c;
    virtual void keyBackClicked() = win 0x322b90, imac 0x21dab0, m1 0x1d0530;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x322930, imac 0x21d680, m1 0x1d0090;
    virtual void onClosePopup(UploadActionPopup*) = win 0x13d2a0, imac 0x21d6f0, m1 0x1d0120;
    virtual void uploadActionFinished(int, int) = win 0x322960, imac 0x21d760, m1 0x1d01a8;
    virtual void uploadActionFailed(int, int) = win 0x13d460, imac 0x21d920, m1 0x1d0374;
    virtual void loadMessagesFinished(cocos2d::CCArray*, char const*) = win 0x3231e0, imac 0x21ddc0, m1 0x1d07f0;
    virtual void loadMessagesFailed(char const*, GJErrorCode) = win 0x13dc50, imac 0x21dee0, m1 0x1d08fc;
    virtual void forceReloadMessages(bool) = win 0x323330, imac 0x21dff0, m1 0x1d0a28;
    virtual void setupPageInfo(gd::string, char const*) = win 0x323350, imac 0x21e030, m1 0x1d0a5c;

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
    MoreOptionsLayer() {}

    static MoreOptionsLayer* create() = win inline, imac 0x785380, m1 0x699530 {
        auto ret = new MoreOptionsLayer();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    void addToggle(char const*, char const*, char const*) = win 0x35ecf0;
    int countForPage(int);
    void goToPage(int) = win 0x35f770;
    void incrementCountForPage(int);
    const char* infoKey(int);
    cocos2d::CCLayer* layerForPage(int);
    const char* layerKey(int);
    cocos2d::CCPoint nextPosition(int);
    const char* objectKey(int);
    cocos2d::CCArray* objectsForPage(int);
    void offsetToNextPage();
    void onClose(cocos2d::CCObject* sender) = win 0x360a10, m1 0x69b808;
    void onFMODDebug(cocos2d::CCObject* sender) = win 0x360580, m1 0x69b4dc;
    void onGPSignIn(cocos2d::CCObject* sender);
    void onGPSignOut(cocos2d::CCObject* sender);
    void onInfo(cocos2d::CCObject* sender);
    void onKeybindings(cocos2d::CCObject* sender) = win 0xdba40;
    void onNextPage(cocos2d::CCObject* sender);
    void onParental(cocos2d::CCObject* sender);
    void onPrevPage(cocos2d::CCObject* sender);
    void onSongBrowser(cocos2d::CCObject* sender) = m1 0x69b484;
    void onToggle(cocos2d::CCObject* sender) = win 0x35fd10;
    const char* pageKey(int);
    void toggleGP();

    virtual bool init() = win 0x35d900, imac 0x785950, m1 0x6999dc;
    virtual void keyBackClicked() = win 0x360b70, imac 0x788ce0, m1 0x69ccac;
    virtual void textInputShouldOffset(CCTextInputNode*, float) = imac 0x788d10, m1 0x69ccb8;
    virtual void textInputReturn(CCTextInputNode*) = imac 0x788dd0, m1 0x69cd88;
    virtual void googlePlaySignedIn() = win 0x360b80, imac 0x788e80, m1 0x69ce40;
    virtual void dropDownLayerWillClose(GJDropDownLayer*) = win 0x3606d0, imac 0x788b60, m1 0x69cb88;

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

    static MoreSearchLayer* create() = win inline, m1 0x54148c {
        auto ret = new MoreSearchLayer();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    void audioNext(cocos2d::CCObject* sender) = win 0x301b40;
    void audioPrevious(cocos2d::CCObject* sender) = win 0x301c60;
    void createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = win 0x302610;
    void onClose(cocos2d::CCObject* sender) = win 0x302870, imac 0x617ab0, m1 0x543a78;
    void onCoins(cocos2d::CCObject* sender);
    void onCompleted(cocos2d::CCObject* sender) = m1 0x543ed4;
    void onEpic(cocos2d::CCObject* sender);
    void onFeatured(cocos2d::CCObject* sender);
    void onFollowed(cocos2d::CCObject* sender);
    void onFriends(cocos2d::CCObject* sender);
    void onInfo(cocos2d::CCObject* sender) = win 0x3024c0, m1 0x544354;
    void onLegendary(cocos2d::CCObject* sender);
    void onMythic(cocos2d::CCObject* sender);
    void onNoStar(cocos2d::CCObject* sender);
    void onOriginal(cocos2d::CCObject* sender);
    void onSongFilter(cocos2d::CCObject* sender) = win 0x3011a0, imac 0x617ef0, m1 0x543f14;
    void onSongMode(cocos2d::CCObject* sender) = win 0x301ec0, imac 0x618110, m1 0x544124;
    void onTwoPlayer(cocos2d::CCObject* sender);
    void onUncompleted(cocos2d::CCObject* sender);
    void selectSong(int songID) = win 0x301d80, imac 0x6185b0, m1 0x5445b0;
    void toggleSongNodes(bool, bool) = win 0x302380, imac 0x618470, m1 0x5444ac;
    void updateAudioLabel() = win 0x301880, m1 0x5445f8;

    virtual bool init() = win 0x2fdf00, imac 0x6166c0, m1 0x5428ac;
    virtual void keyBackClicked() = win 0x302c70, imac 0x618890, m1 0x5448d0;
    virtual void textInputShouldOffset(CCTextInputNode*, float) = win 0x7b5c0, imac 0x618720, m1 0x544748;
    virtual void textInputReturn(CCTextInputNode*) = win 0x7b620, imac 0x6187e0, m1 0x544818;

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

    virtual bool init() = imac 0x78b3b0, m1 0x69ef8c;
    virtual void keyBackClicked() = win 0x3656b0, imac 0x78d580, m1 0x6a1094;
}

[[link(android)]]
class MPLobbyLayer : cocos2d::CCLayer, GJMPDelegate, UploadPopupDelegate, UploadActionDelegate, FLAlertLayerProtocol, TextInputDelegate {
    // virtual ~MPLobbyLayer();

    static MPLobbyLayer* create(int);
    static cocos2d::CCScene* scene(int);

    bool init(int);
    void onBack(cocos2d::CCObject* sender);
    void onBtn1(cocos2d::CCObject* sender);
    void onBtn2(cocos2d::CCObject* sender);
    void onBtn3(cocos2d::CCObject* sender);
    void onComment(cocos2d::CCObject* sender);
    TodoReturn onUpdateLobby();
    TodoReturn postComment();
    TodoReturn tryExitLobby();
    TodoReturn updateLobby(float);

    virtual void keyBackClicked() = imac 0x480fb0, m1 0x3eeedc;
    virtual void keyDown(cocos2d::enumKeyCodes) = imac 0x4817b0, m1 0x3ef61c;
    virtual TodoReturn joinLobbyFinished(int) = m1 0x3ef03c, imac 0x481130;
    virtual TodoReturn joinLobbyFailed(int, GJMPErrorCode) = imac 0x4815e0, m1 0x3ef460;
    virtual TodoReturn updateComments() = m1 0x3ef358, imac 0x4814b0;
    virtual TodoReturn didUploadMPComment(int) = imac 0x4815c0, m1 0x3ef448;
    virtual void textInputOpened(CCTextInputNode*) = imac 0x4816e0, m1 0x3ef574;
    virtual void textInputClosed(CCTextInputNode*) = imac 0x481700, m1 0x3ef57c;
    virtual void textChanged(CCTextInputNode*) = imac 0x481720, m1 0x3ef584;
    virtual void keyUp(cocos2d::enumKeyCodes) = imac 0x4817f0, m1 0x3ef640;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = imac 0x481740, m1 0x3ef58c;
    virtual void uploadActionFinished(int, int) = imac 0x481810, m1 0x3ef648;
    virtual void uploadActionFailed(int, int) = m1 0x3ef874, imac 0x481a40;
    virtual void onClosePopup(UploadActionPopup*) = m1 0x3efa38, imac 0x481bf0;
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

    static MultilineBitmapFont* createWithFont(char const* p0, gd::string p1, float p2, float p3, cocos2d::CCPoint p4, int p5, bool p6) = win inline {
        auto ret = new MultilineBitmapFont();
        if (ret->initWithFont(p0, p1, p2, p3, p4, p5, p6)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    bool initWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int, bool) = win 0x6bea0, m1 0x3e31ec;
    unsigned int moveSpecialDescriptors(int, int) = win 0x6d0a0, m1 0x3e4ce4;
    gd::string readColorInfo(gd::string) = win 0x6c7d0, imac 0x474fa0;
    gd::string stringWithMaxWidth(gd::string, float, float) = win 0x6d130, imac 0x475cb0, m1 0x3e4650;

    virtual void setOpacity(unsigned char) = win 0x6c750, m1 0x3e4c04, imac 0x476290;

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
    static cocos2d::CCScene* scene();

    void onBack(cocos2d::CCObject* sender);
    void onBtn1(cocos2d::CCObject* sender);
    void onBtn2(cocos2d::CCObject* sender);

    virtual bool init() = imac 0x387f40, m1 0x317a08;
    virtual void keyBackClicked() = imac 0x388030, m1 0x317ae0;
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

    static MusicBrowser* create(int, GJSongType) = win 0x323720, imac 0x5f6320, m1 0x5258dc;

    bool init(int, GJSongType) = win 0x3238d0, imac 0x5f6510, m1 0x525a3c;
    void onArtistFilters(cocos2d::CCObject* sender) = win 0x3259f0, imac 0x5f7440, m1 0x5268f0;
    void onClearSearch(cocos2d::CCObject* sender) = imac 0x5f7380;
    void onClose(cocos2d::CCObject* sender) = win 0x325ae0;
    void onPage(cocos2d::CCObject* sender) = win 0x325670, imac 0x42b800, m1 0x526590;
    void onPlaybackControl(cocos2d::CCObject* sender) = win 0x324a70, imac 0x5f7900, m1 0x526da0;
    void onSearch(cocos2d::CCObject* sender) = win 0x325790, imac 0x5f7250, m1 0x526694;
    void onTagFilters(cocos2d::CCObject* sender) = win 0x325980, imac 0x5f73e0, m1 0x526888;
    void onUpdateLibrary(cocos2d::CCObject* sender) = m1 0x526630;
    void setupList(MusicSearchResult*) = win 0x324f30, imac 0x5f7aa0, m1 0x526f28;
    TodoReturn setupMusicBrowser();
    void setupSongControls() = win 0x324790, m1 0x526964;
    void sliderChanged(cocos2d::CCObject* sender);
    void trySetupMusicBrowser() = m1 0x526e54;
    void updatePageLabel() = m1 0x5276e4;

    virtual void update(float) = win 0x324490, m1 0x526c58, imac 0x5f77b0;
    virtual void registerWithTouchDispatcher() = imac 0x5f8880, m1 0x527c14;
    virtual void keyBackClicked() = win 0x325b70, imac 0x5f8750, m1 0x527af8;
    virtual void musicActionFinished(GJMusicAction) = win 0x324d90, m1 0x5274fc, imac 0x5f80f0;
    virtual void musicActionFailed(GJMusicAction) = win 0x324e00, m1 0x5275cc, imac 0x5f81f0;
    virtual void sliderEnded(Slider*) = win 0x324ad0, m1 0x526dd4, imac 0x5f7930;
    virtual void setTextPopupClosed(SetTextPopup*, gd::string) = win 0x3258e0, imac 0x5f84a0, m1 0x527860;
    virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = win 0x325630, imac 0x5f8420, m1 0x5277f8;
    virtual int getSelectedCellIdx() = imac 0x5f8480, m1 0x527850;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x325a80, imac 0x5f86b0, m1 0x527a30;

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
    bool m_autoUpdating;
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
    static cocos2d::CCDictionary* responseToDict(gd::string, char const*);
    // virtual ~MusicDownloadManager();

    static MusicDownloadManager* sharedState() = win 0x327690, imac 0x572aa0, m1 0x4c6d44;

    void addDLToActive(char const* tag, cocos2d::CCObject* obj) = win 0x3298d0;
    void addDLToActive(char const* tag);
    TodoReturn addMusicDownloadDelegate(MusicDownloadDelegate*) = win 0x327e10;
    void addSongObjectFromString(gd::string);
    void clearSong(int songID) = win inline {
        const char* key = cocos2d::CCString::createWithFormat("%i", songID)->getCString();
        m_songObjects->removeObjectForKey(key);
    }
    void clearUnusedSongs() = win 0x329040;
    void createArtistsInfo(gd::string) = win 0x328b30;
    void createSongsInfo(gd::string, gd::string) = win 0x328780, imac 0x575ba0;
    void dataLoaded(DS_Dictionary*) = win 0x32a330, imac 0x578ea0;
    void deleteSFX(int);
    void deleteSong(int) = m1 0x4caeb8;
    void downloadCustomSong(int) = win 0x32ac20;
    void downloadMusicLibrary();
    void downloadSFX(int);
    void downloadSFXFailed(int, GJSongError);
    void downloadSFXFinished(int);
    void downloadSFXLibrary();
    void downloadSong(int) = win 0x329340, imac 0x5774b0, m1 0x4cb1e8;
    void downloadSongFailed(int, GJSongError);
    void downloadSongFinished(int);
    void encodeDataTo(DS_Dictionary*);
    TodoReturn filterMusicByArtistID(int, cocos2d::CCArray*);
    TodoReturn filterMusicByTag(int, cocos2d::CCArray*);
    void firstSetup();
    TodoReturn generateCustomContentURL(gd::string) = win 0x32e1c0;
    TodoReturn generateResourceAssetList();
    TodoReturn getAllMusicArtists(OptionsObjectDelegate*);
    TodoReturn getAllMusicObjects(GJSongType);
    TodoReturn getAllMusicTags(OptionsObjectDelegate*);
    TodoReturn getAllSFXObjects(bool);
    TodoReturn getAllSongs();
    void getCustomContentURL() = win 0x32a820, imac 0x579510;
    cocos2d::CCObject* getDLObject(char const*) = win 0x39d70;
    cocos2d::CCArray* getDownloadedSongs() = win 0x328f80, m1 0x4caa48;
    TodoReturn getDownloadProgress(int);
    TodoReturn getMusicArtistForID(int);
    TodoReturn getMusicObject(int);
    TodoReturn getSFXDownloadKey(int);
    TodoReturn getSFXDownloadProgress(int);
    TodoReturn getSFXFolderObjectForID(int);
    TodoReturn getSFXFolderPathForID(int, bool);
    TodoReturn getSFXObject(int);
    TodoReturn getSongDownloadKey(int);
    void getSongInfo(int, bool) = win 0x328060, imac 0x574230, m1 0x4c83f8;
    TodoReturn getSongInfoKey(int);
    SongInfoObject* getSongInfoObject(int) = win 0x329a50, imac 0x5740d0, m1 0x4c82a0;
    TodoReturn getSongPriority();
    void handleIt(bool, gd::string, gd::string, GJHttpType);
    void handleItDelayed(bool, gd::string, gd::string, GJHttpType);
    void handleItND(cocos2d::CCNode*, void*);
    TodoReturn incrementPriorityForSong(int) = imac 0x5740a0;
    bool isDLActive(char const* tag);
    bool isMusicLibraryLoaded();
    bool isResourceSFX(int);
    bool isResourceSong(int id) = win inline {
        return m_resourceSongUnorderedSet.contains(id);
    }
    bool isRunningActionForSongID(int) = imac 0x573d50;
    bool isSFXDownloaded(int);
    bool isSFXLibraryLoaded();
    bool isSongDownloaded(int) = win 0x329b60;
    void limitDownloadedSongs() = m1 0x4cad84;
    void loadSongInfoFailed(int, GJSongError);
    void loadSongInfoFinished(SongInfoObject*) = win 0x32eb50;
    void musicActionFailed(GJMusicAction);
    void musicActionFinished(GJMusicAction);
    TodoReturn nameForTagID(int);
    void onDownloadMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
    void onDownloadSFXCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
    void onDownloadSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
    void onDownloadSongCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = win 0x329630;
    void onGetCustomContentURLCompleted(gd::string, gd::string);
    void onGetSongInfoCompleted(gd::string, gd::string) = win 0x328340, m1 0x4c76f0;
    void onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
    void onTryUpdateMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
    void onTryUpdateSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
    void parseMusicLibrary();
    void parseSFXLibrary();
    gd::string pathForSFX(int) = win 0x32a110, imac 0x5789e0, m1 0x4cc44c;
    gd::string pathForSFXFolder(int) = win 0x329fc0;
    gd::string pathForSong(int) = win 0x329de0, m1 0x4cb02c;
    gd::string pathForSongFolder(int) = win 0x329c90;
    void ProcessHttpGetRequest(gd::string, gd::string, cocos2d::extension::SEL_HttpResponse, int, int) = imac 0x572f00, m1 0x4c7148;
    callback void ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType) = m1 0x4c6e08;
    void removeDLFromActive(char const*);
    TodoReturn removeMusicDownloadDelegate(MusicDownloadDelegate*);
    void showTOS(FLAlertLayerProtocol*) = win 0x32a1d0;
    void songStateChanged() = win 0x328000, m1 0x4c8210;
    TodoReturn stopDownload(int) = imac 0x573e20;
    TodoReturn storeMusicObject(SongInfoObject*);
    TodoReturn storeSFXInfoObject(SFXInfoObject*);
    TodoReturn tryLoadLibraries();
    TodoReturn tryUpdateMusicLibrary();
    TodoReturn tryUpdateSFXLibrary();

    virtual bool init() = imac 0x573a20, m1 0x4c7bd4;

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
    MusicSearchResult() = win 0x326870;

    static MusicSearchResult* create(GJSongType songType) = win inline, imac 0x5813a0 {
        auto ret = new MusicSearchResult();
        if (ret->init(songType)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    cocos2d::CCArray* applyArtistFilters(cocos2d::CCArray*) = m1 0x4d42e0;
    cocos2d::CCArray* applyTagFilters(cocos2d::CCArray*) = win 0x331410, imac 0x581710, m1 0x4d411c;
    void createArtistFilterObjects();
    void createTagFilterObjects();
    cocos2d::CCArray* getFilesMatchingSearch(cocos2d::CCArray*, gd::string) = win 0x331a40, imac 0x5823e0, m1 0x4d4af0;
    bool init(GJSongType songType) = win inline, imac 0x581420 {
        m_songType = songType;
        return true;
    }
    void updateFutureCount(cocos2d::CCArray*, cocos2d::CCArray*);
    void updateObjects() = win inline {
        this->updateObjects(m_sortType);
    }

    virtual void updateObjects(AudioSortType) = win 0x3314f0, imac 0x5820d0, m1 0x4d4858;
    virtual void stateChanged(OptionsObject*) = win 0x3314e0, imac 0x582070, m1 0x4d4828;

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

    virtual void keyBackClicked() = imac 0x2072d0, m1 0x1bc1a0;
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

    virtual bool init() = imac 0x205fe0, m1 0x1baeb8;
    virtual void keyBackClicked() = imac 0x206ac0, m1 0x1bb9bc;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xc5690, imac 0x206a60, m1 0x1bb964;
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

    static NumberInputLayer* create() = win inline {
        auto ret = new NumberInputLayer();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    void deleteLast() = win inline, m1 0x3edf50 {
        if (!m_inputString.empty()) {
            m_inputString = m_inputString.substr(0, m_inputString.size() - 1);
            this->updateNumberState();
        }
    }
    void inputNumber(int num) = win inline, m1 0x3ee180 {
        if (m_inputString.size() < m_maximum) {
            m_inputString += cocos2d::CCString::createWithFormat("%i", num)->getCString();
            this->updateNumberState();
        }
    }
    void onClose(cocos2d::CCObject* sender) = win 0x84620;
    void onDone(cocos2d::CCObject* sender) = win inline {
        if (m_delegate) m_delegate->numberInputClosed(this);
        this->onClose(nullptr);
    }
    void onNumber(cocos2d::CCObject* sender) = win 0x332b70, imac 0x47fdc0, m1 0x3eddfc;
    void updateNumberState() = win 0x332d00, m1 0x3ede94;

    virtual bool init() = win 0x3325c0, m1 0x3ed450, imac 0x47f7f0;
    virtual void registerWithTouchDispatcher() = win 0x52d60, imac 0x4802a0, m1 0x3ee31c;
    virtual void keyBackClicked() = imac 0x480230, m1 0x3ee2a0;

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

    static OBB2D* create(cocos2d::CCPoint, float, float, float) = win 0x6d880;

    void calculateWithCenter(cocos2d::CCPoint, float, float, float) = win 0x6da50, imac 0x5dbec0, m1 0x50eed0;
    TodoReturn computeAxes();
    TodoReturn getBoundingRect();
    bool init(cocos2d::CCPoint, float, float, float);
    TodoReturn orderCorners() = win 0x6dd70;
    TodoReturn overlaps(OBB2D*);
    TodoReturn overlaps1Way(OBB2D*) = win 0x6e100;
}

[[link(android)]]
class ObjectControlGameObject : EffectGameObject {
    // virtual ~ObjectControlGameObject();

    static ObjectControlGameObject* create();

    virtual bool init() = imac 0x1dd060, m1 0x195994;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1dd5c0, m1 0x195e54;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1dd0b0, m1 0x1959e4;
}

[[link(android)]]
class ObjectManager : cocos2d::CCNode {
    static ObjectManager* instance() = win 0x6e3d0;
    // virtual ~ObjectManager();

    TodoReturn animLoaded(char const*);
    TodoReturn getDefinition(char const*);
    TodoReturn getGlobalAnimCopy(char const*);
    TodoReturn loadCopiedAnimations() = win 0x6e800;
    TodoReturn loadCopiedSets();
    TodoReturn purgeObjectManager();
    TodoReturn replaceAllOccurencesOfString(cocos2d::CCString*, cocos2d::CCString*, cocos2d::CCDictionary*);
    void setLoaded(char const*);
    void setup() = win 0x6e4c0;

    virtual bool init() = win 0x6e460, imac 0x77f890, m1 0x69424c;
}

[[link(android)]]
class ObjectToolbox : cocos2d::CCNode {
    // virtual ~ObjectToolbox();

    static ObjectToolbox* sharedState() = win 0x332e70;

    TodoReturn allKeys();
    float gridNodeSizeForKey(int key) = win 0x35ad60, imac 0x704220, m1 0x628448;
    const char* intKeyToFrame(int key) {
        return m_allKeys[key].c_str();
    }
    TodoReturn perspectiveBlockFrame(int);

    virtual bool init() = win 0x332f30, m1 0x57b748, imac 0x6542e0;

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

    void loadFromObject(OptionsObject*) = win 0xb49f0, imac 0x232cd0;
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

    static OptionsLayer* create() = win inline {
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
    void musicSliderChanged(cocos2d::CCObject*) = win 0x35cb50, imac 0x785280, m1 0x699440;
    void onAccount(cocos2d::CCObject* sender) = win 0x35d640;
    void onHelp(cocos2d::CCObject* sender) = win 0x35d5f0;
    void onMenuMusic(cocos2d::CCObject* sender);
    void onOptions(cocos2d::CCObject* sender) = win 0x35cd30;
    void onProgressBar(cocos2d::CCObject* sender);
    void onRate(cocos2d::CCObject* sender) = win 0x35d690;
    void onRecordReplays(cocos2d::CCObject* sender);
    void onSecretVault(cocos2d::CCObject* sender) = win 0x35ce90;
    void onSoundtracks(cocos2d::CCObject* sender) = win 0x35cce0;
    void onSupport(cocos2d::CCObject* sender) = win 0x35d700;
    void onVideo(cocos2d::CCObject* sender) = win 0x35d5d0;
    void sfxSliderChanged(cocos2d::CCObject*) = win 0x35cc50, m1 0x6994b0;
    void tryEnableRecord();

    virtual void customSetup() = win 0x35bed0, m1 0x6984f0, imac 0x784340;
    virtual void layerHidden() = win 0x35d720, imac 0x785740, m1 0x699854;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = imac 0x7857b0, m1 0x6998e0 {}

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

    virtual void registerWithTouchDispatcher() = imac 0x5f9190, m1 0x5283d4;
    virtual void keyBackClicked() = win 0x326030, imac 0x5f9060, m1 0x5282b0;
    virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = imac 0x5f91d0, m1 0x52840c;
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

    virtual bool init() = imac 0x78d9b0, m1 0x6a13b0;
    virtual void keyBackClicked() = imac 0x78f240, m1 0x6a2b8c;
}

[[link(android)]]
class ParticleGameObject : EnhancedGameObject {
    // virtual ~ParticleGameObject();

    static ParticleGameObject* create();

    TodoReturn applyParticleSettings(cocos2d::CCParticleSystemQuad*);
    TodoReturn createAndAddCustomParticle();
    TodoReturn createParticlePreviewArt();
    void setParticleString(gd::string) = win 0x487f70, imac 0x1a1a30, m1 0x16431c;
    void updateParticle() = win 0x488000, imac 0x1a1ac0;
    TodoReturn updateParticleAngle(float, cocos2d::CCParticleSystemQuad*) = imac 0x1a1760;
    TodoReturn updateParticlePreviewArtOpacity(float);
    TodoReturn updateParticleScale(float);
    TodoReturn updateParticleStruct() = imac 0x1a12a0;

    virtual bool init() = m1 0x163798, imac 0x1a0e50;
    virtual void setScaleX(float) = imac 0x1a1ef0, m1 0x16481c;
    virtual void setScaleY(float) = imac 0x1a1f60, m1 0x16488c;
    virtual void setScale(float) = imac 0x1a1fd0, m1 0x1648fc;
    virtual void setRotation(float) = imac 0x1a1e30, m1 0x164738;
    virtual void setRotationX(float) = imac 0x1a1e70, m1 0x164784;
    virtual void setRotationY(float) = imac 0x1a1eb0, m1 0x1647d0;
    virtual void setChildColor(cocos2d::ccColor3B const&) = imac 0x1a2130, m1 0x164a60;
    virtual void customSetup() = m1 0x1639e8, imac 0x1a1120;
    virtual void addMainSpriteToParent(bool) = m1 0x163a94, imac 0x1a11f0;
    virtual void resetObject() = m1 0x164c2c, imac 0x1a2320;
    virtual void deactivateObject(bool) = m1 0x164be8, imac 0x1a22e0;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1a0e80, m1 0x1637d0;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1a2520, m1 0x164e20;
    virtual void claimParticle() = imac 0x1a12d0, m1 0x163b74;
    virtual void unclaimParticle() = imac 0x1a1870, m1 0x16413c;
    virtual void particleWasActivated() = imac 0x1a18f0, m1 0x1641c8;
    virtual void setObjectColor(cocos2d::ccColor3B const&) = imac 0x1a2040, m1 0x16496c;
    virtual void blendModeChanged() = imac 0x1a11b0, m1 0x163a64;
    virtual void updateParticleColor(cocos2d::ccColor3B const&) = imac 0x76f0, m1 0x93bc;
    virtual void updateParticleOpacity(unsigned char) = imac 0x76f0, m1 0x93bc;
    virtual void updateMainParticleOpacity(unsigned char) = imac 0x1a2220, m1 0x164b54;
    virtual void updateSecondaryParticleOpacity(unsigned char) = imac 0x1a2280, m1 0x164ba0;
    virtual void updateSyncedAnimation(float, int) = imac 0x1a2380, m1 0x164c94;
    virtual TodoReturn updateAnimateOnTrigger(bool) = imac 0x1a24d0, m1 0x164dd0;

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

    virtual void draw() = m1 0x3d4d34, imac 0x464da0;
    virtual void visit() = imac 0x464c20, m1 0x3d4bac;
}

[[link(android)]]
class PauseLayer : CCBlockLayer, FLAlertLayerProtocol {
    // virtual ~PauseLayer();
    PauseLayer() = win inline {}

    static PauseLayer* create(bool p0) = win inline, m1 0x34c37c {
        auto ret = new PauseLayer();
        if (ret && ret->init(p0)) {
            ret->autorelease();
            return ret;
        }
        CC_SAFE_DELETE(ret);
        return nullptr;
    }

    TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
    void goEdit() = win 0x368a60, m1 0x34e0a4;
    bool init(bool p0) = win inline {
        m_unkBool1 = p0;
        return CCBlockLayer::init();
    }
    void musicSliderChanged(cocos2d::CCObject*) = win 0x3682a0;
    void onEdit(cocos2d::CCObject* sender) = win 0x3686c0, m1 0x34dfc8;
    void onHelp(cocos2d::CCObject* sender);
    void onNormalMode(cocos2d::CCObject* sender) = win 0x368410, m1 0x34da30;
    void onPracticeMode(cocos2d::CCObject* sender) = win 0x368330, m1 0x34d9d8;
    void onQuit(cocos2d::CCObject* sender) = win 0x368d30, m1 0x34e128;
    void onRecordReplays(cocos2d::CCObject* sender);
    void onReplay(cocos2d::CCObject* sender);
    void onRestart(cocos2d::CCObject* sender) = win 0x368580;
    void onRestartFull(cocos2d::CCObject* sender) = win 0x368620;
    void onResume(cocos2d::CCObject* sender) = win 0x3684f0, m1 0x34da7c;
    void onSettings(cocos2d::CCObject* sender) = win 0x3676b0, m1 0x34dbf4;
    void onTime(cocos2d::CCObject* sender);
    void onTryEdit(cocos2d::CCObject* sender);
    void setupProgressBars();
    void sfxSliderChanged(cocos2d::CCObject*) = win 0x35cc50;
    void tryQuit(cocos2d::CCObject* sender) = win 0x368b30, m1 0x34dab4;
    TodoReturn tryShowBanner(float);

    virtual void keyBackClicked() = win 0x368f50, imac 0x3c5150, m1 0x34e39c;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x368e80, imac 0x3c5050, m1 0x34e2c0;
    virtual void customSetup() = win 0x3669e0, imac 0x3c3200, m1 0x34c450;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x368cc0, imac 0x3c4f90, m1 0x34e1dc;
    virtual void keyUp(cocos2d::enumKeyCodes) = imac 0x3c5130, m1 0x34e394 {}

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
    static void activateGameCenter();
    static TodoReturn copyToClipboard(gd::string);
    static TodoReturn doesFileExist(gd::string);
    static TodoReturn downloadAndSavePromoImage(gd::string, gd::string);
    static TodoReturn gameDidSave();
    static TodoReturn getDeviceRefreshRate();
    static cocos2d::CCSize getDisplaySize() = win 0x786d0, imac 0x4b1990, m1 0x41a2a8;
    static TodoReturn getRawPath(char const*);
    static TodoReturn getUniqueUserID();
    static TodoReturn getUserID();
    static void hideCursor() = win inline {
        cocos2d::CCEGLView::sharedOpenGLView()->showCursor(false);
    }
    static bool isControllerConnected() = win inline, imac 0x4b1ad0, m1 0x41a36c {
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
    static TodoReturn logEvent(char const*);
    static TodoReturn onGameLaunch();
    static void onNativePause();
    static TodoReturn onNativeResume();
    static TodoReturn onToggleKeyboard();
    static TodoReturn openAppPage();
    static void platformShutdown();
    static TodoReturn refreshWindow();
    static TodoReturn reportAchievementWithID(char const*, int);
    static TodoReturn reportLoadingFinished();
    static void resizeWindow(float width, float height);
    static TodoReturn sendMail(char const*, char const*, char const*);
    static void setBlockBackButton(bool);
    static void setKeyboardState(bool);
    static TodoReturn shouldResumeSound();
    static void showAchievements();
    static void showCursor() = win inline {
        cocos2d::CCEGLView::sharedOpenGLView()->showCursor(true);
    }
    static TodoReturn signInGooglePlay();
    static TodoReturn signOutGooglePlay();
    static TodoReturn spriteFromSavedFile(gd::string);
    static TodoReturn toggleCallGLFinish(bool);
    static TodoReturn toggleCPUSleepMode(bool);
    static void toggleForceTimer(bool);
    static void toggleLockCursor(bool);
    static TodoReturn toggleMouseControl(bool);
    static void toggleSmoothFix(bool);
    static void toggleVerticalSync(bool);
    static TodoReturn tryShowRateDialog(gd::string);
    static TodoReturn updateMouseControl();
    static TodoReturn updateWindowedSize(float, float);
    static TodoReturn loadAndDecryptFileToString(char const*, char const*, gd::string&);
    static TodoReturn saveAndEncryptStringToFile(gd::string&, char const*, char const*);
    static TodoReturn toggleFullScreen(bool, bool, bool);
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
    PlayerCheckpoint();

    static PlayerCheckpoint* create() = win 0x3a40f0;

    virtual bool init() = imac 0xbfde0, m1 0xae60c;

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
    std::array<uint8_t, 4> m_unkBytes1;
    float m_speed;
    bool m_isHidden;
    bool m_isGoingLeft;
    std::array<uint8_t, 34> m_unkBytes2;
    bool m_hideAttemptCount;
    std::array<uint8_t, 7> m_unkBytes3;
    bool m_unkBool;
    float m_unkFloat1;
    int m_possiblyFlags;
    int m_timeOrPercentRelated;
    std::array<uint8_t, 4> m_unkBytes4;
    gd::vector<float> m_yPositionVector;
    std::array<uint8_t, 8> m_unkBytes5;
}

[[link(android)]]
class PlayerControlGameObject : EffectGameObject {
    // virtual ~PlayerControlGameObject();

    static PlayerControlGameObject* create();

    virtual bool init() = imac 0x1dbe90, m1 0x194b28;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x195770, imac 0x1dcdc0;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1dbee0, m1 0x194b78;
}

[[link(android)]]
class PlayerFireBoostSprite : cocos2d::CCSprite {
    // virtual ~PlayerFireBoostSprite();

    static PlayerFireBoostSprite* create() = win 0x38ce10, imac 0x3ea710;

    void animateFireIn() = win inline, m1 0x38449c {
        this->stopAllActions();
    
        auto scaleto = cocos2d::CCScaleTo::create(0.06f, m_size * 0.6f, m_size * 1.5f);
        auto callfunc = cocos2d::CCCallFunc::create(this, callfunc_selector(PlayerFireBoostSprite::loopFireAnimation));
        auto sequence = cocos2d::CCSequence::create(scaleto, callfunc, nullptr);
        this->runAction(sequence);
    }
    void animateFireOut() = win inline, m1 0x38451c {
        this->stopAllActions();
        auto action = cocos2d::CCScaleTo::create(0.4f, 0.01f, 0.01f);
        this->runAction(action);
    }
    void loopFireAnimation() = win 0x38cf10, m1 0x3841c0;

    virtual bool init() = imac 0x40b850, m1 0x388dd8;

    float m_size;
}

[[link(android), depends(GJPointDouble)]]
class PlayerObject : GameObject, AnimatedSpriteDelegate {
    // virtual ~PlayerObject();
    // PlayerObject() = ios 0x23e4dc;

    static PlayerObject* create(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool) = win 0x370840, imac 0x3e8a70, m1 0x36a9c8;

    void activateStreak() = win 0x38a1e0, imac 0x3f1950, m1 0x372604;
    TodoReturn addAllParticles() = win 0x3727e0;
    TodoReturn addToTouchedRings(RingObject*) = imac 0x404310, m1 0x382118;
    TodoReturn addToYVelocity(double, int);
    void animatePlatformerJump(float) = win 0x376dd0, imac 0x3f21b0, m1 0x372dc4;
    void boostPlayer(float) = win 0x38a030, m1 0x375074;
    void bumpPlayer(float, int, bool, GameObject*) = win 0x3897f0, imac 0x4095d0, m1 0x386f58;
    TodoReturn buttonDown(PlayerButton);
    TodoReturn canStickToGround();
    TodoReturn checkSnapJumpToObject(GameObject*);
    void collidedWithObject(float, GameObject*, cocos2d::CCRect, bool) = win 0x37ba60, imac 0x3f4e20, m1 0x3752e4;
    void collidedWithObject(float, GameObject*) = imac 0x3fb6b0, m1 0x37a630;
    int collidedWithObjectInternal(float, GameObject*, cocos2d::CCRect, bool) = win 0x37bb20, m1 0x376f04;
    void collidedWithSlope(float dt, GameObject* object, bool forced) = imac 0x3f4ec0;
    void collidedWithSlopeInternal(float dt, GameObject* object, bool forced) = win 0x3798c0;
    TodoReturn convertToClosestRotation(float);
    void copyAttributes(PlayerObject*) = win 0x38a5f0, imac 0x40a060, m1 0x3878e8;
    void createFadeOutDartStreak() = win 0x382710;
    void createRobot(int) = win 0x372060, m1 0x36c160;
    void createSpider(int) = win 0x372420, m1 0x36c4a4;
    void deactivateParticle() = m1 0x370b14;
    void deactivateStreak(bool) = imac 0x3eb220, m1 0x36ce8c;
    TodoReturn destroyFromHitHead();
    TodoReturn didHitHead();
    void disableCustomGlowColor() {
        m_hasCustomGlowColor = false;
    }
    void disablePlayerControls() = win 0x389500, imac 0x4092d0, m1 0x386c20;
    void disableSwingFire() = win 0x385050, m1 0x3808e4;
    void doReversePlayer(bool) = win 0x3825c0, imac 0x3f09e0, m1 0x37174c;
    inline void enableCustomGlowColor(cocos2d::ccColor3B const& color) {
        m_hasCustomGlowColor = true;
        m_glowColor = color;
    }
    void enablePlayerControls() = win 0x389650, imac 0x409330, m1 0x386c7c;
    void exitPlatformerAnimateJump();
    void fadeOutStreak2(float) = win 0x38a2e0, imac 0x402600, m1 0x380848;
    void flashPlayer(float, float, cocos2d::ccColor3B mainColor, cocos2d::ccColor3B secondColor) = imac 0x3fd580;
    void flipGravity(bool, bool) = win 0x384320, imac 0x3f1dc0, m1 0x372a3c;
    TodoReturn flipMod();
    void gameEventTriggered(int p0, int p1) = win inline, imac 0x3f2180, m1 0x372dac {
        if (this->m_gameLayer) {
            this->m_gameLayer->gameEventTriggered(static_cast<GJGameEvent>(p0), p1, static_cast<int>(this->m_savedObjectType));
        }
    }
    bool getActiveMode() = imac 0x404ca0, m1 0x382a78;
    TodoReturn getCurrentXVelocity();
    TodoReturn getModifiedSlopeYVel();
    TodoReturn getOldPosition(float);
    cocos2d::ccColor3B getSecondColor();
    TodoReturn getYVelocity();
    TodoReturn gravityDown();
    TodoReturn gravityUp();
    TodoReturn handlePlayerCommand(int);
    TodoReturn handleRotatedCollisionInternal(float, GameObject*, cocos2d::CCRect, bool, bool, bool) = win 0x3791f0;
    TodoReturn handleRotatedObjectCollision(float p0, GameObject* p1, cocos2d::CCRect p2, bool p3) = win inline {
        return this->handleRotatedCollisionInternal(p0, p1, p2, p3, false, false);
    }
    TodoReturn handleRotatedSlopeCollision(float, GameObject*, bool);
    TodoReturn hardFlipGravity();
    void hitGround(GameObject*, bool) = win 0x386080;
    TodoReturn hitGroundNoJump(GameObject*, bool);
    void incrementJumps() = win 0x376cf0, imac 0x3f1d80, m1 0x372a04;
    bool init(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool) = win 0x3708e0, imac 0x3e8b00, m1 0x36aa80;
    bool isBoostValid(float);
    bool isFlying() = win inline, imac 0x3efc90 {
        return m_isShip || m_isBird || m_isDart || m_isSwing;
    }
    bool isInBasicMode() = win inline, imac 0x3fcd50 {
        return !this->isFlying() && !m_isBall && !m_isSpider;
    }
    bool isInNormalMode() = win inline, imac 0x3ee350 {
        return !this->isFlying() && !m_isBall && !m_isRobot && !m_isSpider;
    }
    bool isSafeFlip(float);
    bool isSafeHeadTest();
    bool isSafeMode(float);
    bool isSafeSpiderFlip(float);
    TodoReturn levelFlipFinished() = win 0x3758c0;
    bool levelFlipping() = m1 inline {
        return m_playEffects && PlayLayer::get()->isFlipping();
    }
    TodoReturn levelWillFlip() = imac 0x3f1ac0;
    TodoReturn limitDashRotation(float&);
    void loadFromCheckpoint(PlayerCheckpoint*) = win 0x38bb10, imac 0x40aaa0, m1 0x3881d8;
    void lockPlayer() = win 0x389420, imac 0x409170, m1 0x386ae0;
    TodoReturn logValues();
    void modeDidChange();
    TodoReturn performSlideCheck();
    void placeStreakPoint() = win 0x38a7d0, imac 0x3f1a30, m1 0x3726cc;
    TodoReturn playBumpEffect(int, GameObject*) = win 0x389ba0;
    TodoReturn playBurstEffect();
    void playCompleteEffect(bool, bool) = win 0x36e190, imac 0x202a50, m1 0x1b7c68;
    void playDeathEffect() = win 0x369080, m1 0x1afca4;
    void playDynamicSpiderRun() = win 0x38b620;
    void playerDestroyed(bool) = win 0x381df0, imac 0x402400, m1 0x380674;
    bool playerIsFalling(float);
    TodoReturn playerIsFallingBugged();
    TodoReturn playerIsMovingUp();
    TodoReturn playerTeleported();
    TodoReturn playingEndEffect() = imac 0x409550, m1 0x386ebc;
    void playSpawnEffect() = win 0x381530, imac 0x401d40, m1 0x37ffc4;
    void playSpiderDashEffect(cocos2d::CCPoint from, cocos2d::CCPoint to) = win 0x37f220, m1 0x37ba54;
    void postCollision(float) = win 0x3776d0, m1 0x3738bc;
    void preCollision() = imac 0x3f2bd0;
    bool preSlopeCollision(float, GameObject*) = win 0x379390;
    void propellPlayer(float, bool, int) = win 0x3899a0, m1 0x387260;
    bool pushButton(PlayerButton) = win 0x381ff0, imac 0x402960, m1 0x380b70;
    TodoReturn pushDown();
    void pushPlayer(float);
    TodoReturn redirectDash(float);
    TodoReturn redirectPlayerForce(float, float, float, float);
    void releaseAllButtons() = win 0x389250, m1 0x386a9c;
    bool releaseButton(PlayerButton) = win 0x382280, imac 0x403dd0, m1 0x381c74;
    TodoReturn removeAllParticles();
    void removePendingCheckpoint() = win 0x38c2e0, imac 0x401580;
    TodoReturn removePlacedCheckpoint() = imac 0x4023c0;
    TodoReturn resetAllParticles();
    TodoReturn resetCollisionLog(bool);
    TodoReturn resetCollisionValues();
    void resetPlayerIcon() = win 0x385430, imac 0x4055f0, m1 0x383334;
    TodoReturn resetStateVariables();
    void resetStreak() = win 0x375750, imac 0x3f1860;
    TodoReturn resetTouchedRings(bool) = win 0x382390;
    TodoReturn reverseMod();
    void reversePlayer(EffectGameObject*) = win 0x3824e0, imac 0x404370, m1 0x382170;
    void ringJump(RingObject*, bool) = win 0x382cb0, imac 0x402de0, m1 0x380f18;
    void rotateGameplay(int, int, bool, float, float, bool, bool);
    TodoReturn rotateGameplayObject(GameObject*) = win 0x37b4a0;
    void rotateGameplayOnly(bool param) = win inline {
        m_isSideways = param;
        this->updatePlayerArt();
    }
    TodoReturn rotatePreSlopeObjects();
    void runBallRotation(float) = win 0x377370;
    void runBallRotation2() = win 0x3775d0;
    void runNormalRotation() {
        this->runNormalRotation(false, 1.0f);
    }
    void runNormalRotation(bool, float) = win 0x9999999, m1 0x36f744, imac 0x3ee3b0;
    void runRotateAction(bool, int) = win 0x3774a0;
    TodoReturn saveToCheckpoint(PlayerCheckpoint*);
    void setSecondColor(cocos2d::ccColor3B const&) = win 0x3874f0, imac 0x3ec530, m1 0x36deb8;
    void setupStreak() = win 0x372930, m1 0x36c978;
    void setYVelocity(double velocity, int) = win 0x372e80 {
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
    TodoReturn spawnPortalCircle(cocos2d::ccColor3B, float) = win 0x381810;
    TodoReturn spawnScaleCircle() = imac 0x402170;
    TodoReturn specialGroundHit();
    TodoReturn speedDown();
    TodoReturn speedUp();
    void spiderTestJump(bool) = win 0x37e3f0, m1 0x3728f4;
    void spiderTestJumpInternal(bool) = win 0x37e4a0, m1 0x37ae68;
    void spiderTestJumpX(bool);
    void spiderTestJumpY(bool);
    void startDashing(DashRingObject*) = win 0x37f9c0;
    TodoReturn stopBurstEffect();
    void stopDashing() = win 0x380700;
    void stopParticles() = win 0x3759d0;
    void stopPlatformerJumpAnimation() = win 0x3771b0, imac 0x3f2690, m1 0x373278;
    TodoReturn stopRotation(bool, int);
    void stopStreak2() = imac 0x409eb0, m1 0x387780;
    void storeCollision(PlayerCollisionDirection, int);
    TodoReturn switchedDirTo(PlayerButton) = win 0x381ee0;
    void switchedToMode(GameObjectType) = win 0x385f80, imac 0x4015d0, m1 0x37f950;
    TodoReturn testForMoving(float, GameObject*);
    void toggleBirdMode(bool, bool) = win 0x384970, imac 0x405810, m1 0x38353c;
    void toggleDartMode(bool, bool) = win 0x3850e0, imac 0x406910, m1 0x384564;
    void toggleFlyMode(bool, bool) = win 0x384640, m1 0x382ae0;
    void toggleGhostEffect(GhostType) = win 0x388f80, imac 0x401bc0, m1 0x37fe80;
    void togglePlatformerMode(bool val) {
        m_isPlatformer = val;
    }
    void togglePlayerScale(bool, bool) = win 0x38a850, m1 0x37fac8;
    void toggleRobotMode(bool, bool) = win 0x385840, imac 0x4073d0, m1 0x384f50;
    void toggleRollMode(bool, bool) = win 0x3856c0, imac 0x406ff0, m1 0x384b78;
    void toggleSpiderMode(bool, bool) = win 0x385bc0, imac 0x407850, m1 0x385388;
    void toggleSwingMode(bool, bool) = win 0x384c70, imac 0x405ef0, m1 0x383b88;
    void toggleVisibility(bool) = win 0x3755b0;
    TodoReturn touchedObject(GameObject*) = imac 0x40af00;
    void tryPlaceCheckpoint() = m1 0x37207c;
    TodoReturn unrotateGameplayObject(GameObject*) = win 0x37b790;
    TodoReturn unrotatePreSlopeObjects();
    TodoReturn updateCheckpointMode(bool);
    TodoReturn updateCheckpointTest();
    void updateCollide(PlayerCollisionDirection, GameObject*) = win 0x37e0a0, imac 0x3fac70, m1 0x379cb4;
    void updateCollideBottom(float, GameObject*);
    void updateCollideLeft(float, GameObject*);
    void updateCollideRight(float, GameObject*);
    void updateCollideTop(float, GameObject*);
    void updateDashAnimation();
    void updateDashArt() = win 0x380270;
    void updateEffects(float param) = win inline {
        m_waveTrail->updateStroke(param);
    }
    void updateGlowColor() = win 0x387580, m1 0x386390;
    TodoReturn updateInternalActions(float) = win 0x38cfa0;
    void updateJump(float) = win 0x375a70, imac 0x3ec5a0, m1 0x36df20;
    TodoReturn updateJumpVariables();
    TodoReturn updateLastGroundObject(GameObject*);
    TodoReturn updateMove(float) = win 0x374230;
    void updatePlayerArt() = win 0x382910, imac 0x4046c0, m1 0x3824f0;
    void updatePlayerBirdFrame(int) = win 0x388430, imac 0x405c30, m1 0x3838f8;
    void updatePlayerDartFrame(int) = win 0x388b30, imac 0x406d80;
    void updatePlayerForce(cocos2d::CCPoint, bool);
    void updatePlayerFrame(int) = win 0x387da0, m1 0x384258;
    void updatePlayerGlow() = win 0x38a3f0, imac 0x404530, m1 0x382330;
    void updatePlayerJetpackFrame(int) = win 0x388200, m1 0x3830f8;
    void updatePlayerRobotFrame(int id) = win inline, imac 0x4090f0 {
        if (id < 1) id = 1;
        else if (id > 0x43) id = 0x44;
    
        createRobot(id);
    }
    void updatePlayerRollFrame(int) = win 0x3886d0, imac 0x407180;
    void updatePlayerScale() = win 0x38a370;
    void updatePlayerShipFrame(int) = win 0x387fd0, imac 0x405150, m1 0x382ebc;
    void updatePlayerSpiderFrame(int id) = win inline, imac 0x409110 {
        if (id < 1) id = 1;
        else if (id > 0x44) id = 0x45;
    
        createSpider(id);
    }

    void updatePlayerSpriteExtra(gd::string);
    void updatePlayerSwingFrame(int) = win 0x388900, imac 0x406330, m1 0x383f84;
    void updateRobotAnimationSpeed() = win 0x38b230;
    void updateRotation(float, float) = win 0x377250, imac 0x3f0eb0, m1 0x371c4c;
    void updateRotation(float) = win 0x37b0d0, imac 0x3fb4f0, m1 0x37a4a4;
    void updateShipRotation(float) = win 0x37acf0;
    void updateShipSpriteExtra(gd::string);
    TodoReturn updateSlopeRotation(float);
    TodoReturn updateSlopeYVelocity(float);
    void updateSpecial(float);
    TodoReturn updateStateVariables();
    TodoReturn updateStaticForce(float, float, bool);
    void updateStreakBlend(bool) = imac 0x3eb2f0;
    TodoReturn updateStreaks(float);
    void updateSwingFire() = win 0x384f20;
    void updateTimeMod(float, bool) = win 0x38aea0, imac 0x3eab20, m1 0x36c748;
    TodoReturn usingWallLimitedMode();
    TodoReturn yStartDown();
    TodoReturn yStartUp();

    virtual void update(float) = win 0x372ef0, imac 0x3eb400, m1 0x36d048;
    virtual void setScaleX(float) = imac 0x40b250, m1 0x388848;
    virtual void setScaleY(float) = imac 0x40b260, m1 0x38884c;
    virtual void setScale(float) = imac 0x40b270, m1 0x388850;
    virtual void setPosition(cocos2d::CCPoint const&) = win 0x386790, imac 0x407d00, m1 0x385804;
    virtual void setVisible(bool) = win 0x38c9d0, imac 0x40b280, m1 0x388854;
    virtual void setRotation(float) = win 0x38c8d0, imac 0x40b1c0, m1 0x3887d8;
    virtual void setOpacity(unsigned char) = win 0x387c40, m1 0x386840, imac 0x408ef0;
    virtual void setColor(cocos2d::ccColor3B const&) = win 0x387460, m1 0x386258, imac 0x4088d0;
    virtual void setFlipX(bool) = win 0x38c8e0, m1 0x3887dc, imac 0x40b1d0;
    virtual void setFlipY(bool) = imac 0x40b240, m1 0x388844;
    virtual void resetObject() = m1 0x37ee70, imac 0x400720;
    virtual cocos2d::CCPoint getRealPosition() = imac 0x4090c0, m1 0x386a3c;
    virtual OBB2D* getOrientedBox() = imac 0x40a3f0, m1 0x387be0;
    virtual float getObjectRotation() = imac 0x40a410, m1 0x387c0c;
    virtual void animationFinished(char const*) = win 0x38c9f0, imac 0x40b370, m1 0x388928;

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
    PlayLayer() = imac 0xc0260;
    virtual ~PlayLayer() = win 0x38e800, imac 0xabf10;

    static PlayLayer* create(GJGameLevel* level, bool useReplay, bool dontCreateObjects) = imac 0xac330, m1 0x9d0c8;
    static PlayLayer* get() {
        return GameManager::get()->m_playLayer;
    }
    static cocos2d::CCScene* scene(GJGameLevel* level, bool useReplay, bool dontCreateObjects) = win 0x38eaa0, imac 0xac280, m1 0x9d008;

    void addCircle(CCCircleWave* cw) {
        m_circleWaveArray->addObject(cw);
    }
    void addObject(GameObject*) = win 0x396d90;
    void addToGroupOld(GameObject*);
    void applyCustomEnterEffect(GameObject*, bool) = win 0x399980;

    void applyEnterEffect(GameObject*, int, bool) = win 0x39a670;
    bool canPauseGame() = win inline, imac 0xbf800, m1 0xae044 {
        return !m_hasCompletedLevel && !m_levelEndAnimationStarted;
    }
    TodoReturn checkpointWithID(int);
    TodoReturn colorObject(int, cocos2d::ccColor3B);
    TodoReturn commitJumps();
    TodoReturn compareStateSnapshot();
    CheckpointObject* createCheckpoint() = win 0x39e030;
    void createObjectsFromSetupFinished() = win 0x3968f0, imac 0xb7a20, m1 0xa73bc;
    void delayedFullReset();
    void delayedResetLevel() = win 0x3a1cc0, imac 0xbbb80;
    void fullReset() = win 0x3a1bc0, m1 0xad90c;
    float getCurrentPercent() = win 0x39c950, imac 0xba880, m1 0xa9c40;
    int getCurrentPercentInt() = win inline, ios inline, imac 0xbaf80, m1 0xaa310 { // i love this
        return static_cast<int>(this->getCurrentPercent());
    }
    TodoReturn getEndPosition();
    TodoReturn getLastCheckpoint();
    TodoReturn getRelativeMod(cocos2d::CCPoint, float, float, float);
    TodoReturn getRelativeModNew(cocos2d::CCPoint, float, float, bool, bool);
    double getTempMilliTime() = win 0x3cef0;
    TodoReturn gravityEffectFinished();
    void incrementJumps() = imac 0xbf790, m1 0xadfc4;
    bool init(GJGameLevel* level, bool useReplay, bool dontCreateObjects) = win 0x38eb50, m1 0x9d164;
    bool isGameplayActive();
    void levelComplete() = win 0x390b10, imac 0xb45e0, m1 0xa4464;
    TodoReturn loadActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&);
    void loadDefaultColors() = m1 0xa26f8;
    TodoReturn loadDynamicSaveObjects(gd::vector<SavedObjectStateRef>&) = imac 0xbec20, m1 0xad454;
    void loadFromCheckpoint(CheckpointObject*) = win 0x3a0690;
    TodoReturn loadLastCheckpoint();
    CheckpointObject * markCheckpoint() = win 0x3a05c0, imac 0xbbf60, m1 0xab0cc;
    void onQuit() = win 0x3a3c90, m1 0xa40a4;
    TodoReturn optimizeColorGroups() = win 0x397bf0;
    TodoReturn optimizeOpacityGroups() = win 0x397e80;
    void pauseGame(bool) = win 0x3a30d0, imac 0xbf820, m1 0xae06c;
    void playEndAnimationToPos(cocos2d::CCPoint) = win 0x394980, imac 0xb6f90, m1 0xa6a44;
    void playPlatformerEndAnimationToPos(cocos2d::CCPoint, bool) = win 0x395310;
    TodoReturn playReplay(gd::string);
    void prepareCreateObjectsFromSetup(gd::string&) = win 0x395e60, m1 0x9deb8;
    void prepareMusic(bool) = imac 0xb4070;
    void processCreateObjectsFromSetup() = win 0x396110, m1 0x9e23c;
    TodoReturn processLoadedMoveActions();
    TodoReturn queueCheckpoint();
    void removeAllObjects() = imac 0xb4360;
    void removeCheckpoint(bool) = win 0x3a0ed0, m1 0xace00;
    void removeFromGroupOld(GameObject*);
    void resetLevel() = win 0x3a1e70, imac 0xb3510, m1 0xa3518;
    void resetLevelFromStart() = win 0x3a1cd0;
    void resume() = win 0x3a36a0, m1 0xae34c;
    void resumeAndRestart(bool) = imac 0xbf960, win 0x3a3390;
    TodoReturn saveActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&);
    TodoReturn saveDynamicSaveObjects(gd::vector<SavedObjectStateRef>&);
    TodoReturn scanActiveSaveObjects();
    TodoReturn scanDynamicSaveObjects() = win 0x3a1060, imac 0xaf1b0;
    TodoReturn screenFlipObject(GameObject*);
    void setDamageVerifiedIdx(int);
    void setupHasCompleted() = win 0x38f8a0;
    TodoReturn shouldBlend(int);
    void showCompleteEffect() = win 0x391eb0, imac 0xb5200, m1 0xa4eec;
    void showCompleteText() = win 0x391880, imac 0xb5680, m1 0xa52c4;
    void showEndLayer();
    void showHint() = win 0x39d7a0, imac 0xbb9b0;
    void showNewBest(bool, int, int, bool, bool, bool) = win 0x3924d0, m1 0xa5e8c;
    void showRetryLayer();
    void showTwoPlayerGuide();
    void spawnCircle();
    TodoReturn spawnFirework();
    void startGame() = win 0x390ab0, m1 0xa4048;
    void startGameDelayed() = imac 0xb4570;
    void startMusic() = win 0x3a3b40, imac 0xb4480, m1 0xa430c;
    TodoReturn startRecording();
    TodoReturn startRecordingDelayed();
    TodoReturn stopRecording();
    void storeCheckpoint(CheckpointObject*) = win 0x3a04f0, m1 0xacd5c;
    TodoReturn takeStateSnapshot();
    TodoReturn toggleBGEffectVisibility(bool);
    TodoReturn toggleDebugDraw(bool);
    TodoReturn toggleGhostEffect(int);
    TodoReturn toggleIgnoreDamage(bool);
    //void toggleDebugDraw(bool) = ios 0x118288;
    void togglePracticeMode(bool practiceMode) = win 0x3a2e00, imac 0xbf230, m1 0xada4c;
    TodoReturn tryStartRecord();
    void updateAttempts() = win 0x3a2b50, imac 0xbf440, m1 0xadc50;
    void updateEffectPositions() = m1 0xaadf4;
    void updateInfoLabel() = win 0x39ba70, imac 0xb0350, m1 0xa0b68;
    TodoReturn updateInvisibleBlock(GameObject*, float, float, float, float, cocos2d::ccColor3B const&);
    void updateProgressbar() = win 0x39b3d0, m1 0xa251c;
    void updateScreenRotation(int, bool, bool, float, int, float, int, int);
    void updateTestModeLabel() = win 0x390a20, imac 0xb42a0, m1 0xa4130;
    void updateTimeWarp(EffectGameObject*, float) = win 0x394920;

    virtual void onEnterTransitionDidFinish() = win 0x3a4070, imac 0xbfca0, m1 0xae4c4;
    virtual void onExit() = win 0x3a40a0, m1 0xae508, imac 0xbfcd0;
    virtual void postUpdate(float) = win 0x39d940, imac 0xbbcf0, m1 0xaaea8;
    virtual TodoReturn checkForEnd() = win 0x39dd10, imac 0xbc020, m1 0xab190;
    virtual TodoReturn testTime() = imac 0x76f0, m1 0x93bc;
    virtual void updateVerifyDamage() = win 0x39dee0, imac 0xbc110, m1 0xab28c;
    virtual void updateAttemptTime(float) = win 0x39dfd0, imac 0xbc200, m1 0xab394;
    virtual void updateVisibility(float) = win 0x3983c0, m1 0xa79e8, imac 0xb8040;
    virtual TodoReturn opacityForObject(GameObject*) = win 0x3992f0, imac 0xba370, m1 0xa977c;
    virtual void updateColor(cocos2d::ccColor3B& color, float fadeTime, int colorID, bool blending, float opacity, cocos2d::ccHSVValue& copyHSV, int colorIDToCopy, bool copyOpacity, EffectGameObject* callerObject, int unk1, int unk2) = win 0x39afa0, imac 0xba450, m1 0xa9840;
    virtual TodoReturn activateEndTrigger(int, bool, bool) = imac 0xb6f80, m1 0xa6a40;
    virtual void activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&) = win 0x395200, imac 0xb7450, m1 0xa6e74;
    virtual void toggleGlitter(bool) = win 0x39c8b0, m1 0xaa2ac, imac 0xbaf30;
    virtual void destroyPlayer(PlayerObject*, GameObject*) = win 0x39c9d0, imac 0xbaff0, m1 0xaa384;
    virtual TodoReturn toggleGroundVisibility(bool) = win 0x39c700, m1 0xaa1c0, imac 0xbae40;
    virtual void toggleMGVisibility(bool) = win 0x39c780, imac 0xbae70, m1 0xaa1f0;
    virtual void toggleHideAttempts(bool) = win 0x39c7c0, imac 0xbae90, m1 0xaa200;
    virtual float timeForPos(cocos2d::CCPoint, int, int, bool, int) = win 0x39c5d0, imac 0xbad20, m1 0xaa0f0;
    virtual float posForTime(float) = win 0x39c660, imac 0xbada0, m1 0xaa164;
    virtual void resetSPTriggered() = win 0x39c6c0, imac 0xbadf0, m1 0xaa184;
    virtual void updateTimeWarp(float) = imac 0xb6e70, m1 0xa6958;
    virtual void playGravityEffect(bool) = win 0x39b060, imac 0xba4c0, m1 0xa98ac;
    virtual TodoReturn manualUpdateObjectColors(GameObject*) = win 0x399300, m1 0xa9784, imac 0xba380;
    virtual void checkpointActivated(CheckpointGameObject*) = win 0x39e010, imac 0xbc270, m1 0xab408;
    virtual TodoReturn flipArt(bool) = win 0x39ba40, imac 0xbaca0, m1 0xaa08c;
    virtual void updateTimeLabel(int, int, bool) = win 0x39b570, imac 0xba8f0, m1 0xa9cb0;
    virtual TodoReturn checkSnapshot() = imac 0xbf030, m1 0xad88c;
    virtual void toggleProgressbar() = win 0x39b770, m1 0xa9e88, imac 0xbaac0;
    virtual TodoReturn toggleInfoLabel() = win 0x39c550, imac 0xbace0, m1 0xaa0ac;
    virtual void removeAllCheckpoints() = win 0x3a1010, m1 0xad67c, imac 0xbee20;
    virtual TodoReturn toggleMusicInPractice() = win 0x39b910, m1 0xaa000, imac 0xbac40;
    virtual void currencyWillExit(CurrencyRewardLayer*) = win 0x39d760, imac 0xbbb40, m1 0xaad7c;
    virtual void circleWaveWillBeRemoved(CCCircleWave*) = win 0x39d920, imac 0xbbbe0, m1 0xaaddc;
    virtual void dialogClosed(DialogLayer*) = win 0x39d780, imac 0xbbb80, m1 0xaada8;

    PAD = win 0x30, android32 0x24, android64 0x2c, mac 0x30, ios 0x30;
    cocos2d::CCArray* m_coinArray;
    PAD = win 0x6e, android32 0x3e, android64 0x6e, mac 0x6e, ios 0x6e;
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
    int m_uncommittedJumps;
    bool m_showLeaderboardPercentage;
    bool m_hasCompletedLevel;
    bool m_inResetDelay;
    int m_lastAttemptPercent;
    bool m_endLayerStars;
    PAD = win 0x3a, android32 0x29, android64 0x3a, mac 0x3a, ios 0x3a;
    double m_attemptTime;
    PAD = win 0x1f, android32 0x27, android64 0x1f, mac 0x1f, ios 0x1f;
    bool m_isPaused;
    bool m_disableGravityEffect;
    cocos2d::CCLabelBMFont* m_infoLabel;
    cocos2d::CCPoint m_pUnk38e8;
    cocos2d::CCPoint m_pUnk38f0;
    cocos2d::CCDictionary* m_colorKeyDict;
    gd::vector<int> m_keyColors;
    gd::vector<int> m_keyOpacities;
    gd::vector<int> m_keyPulses;
    int m_nextColorKey;
    bool m_tryPlaceCheckpoint;
    CheckpointGameObject* m_activatedCheckpoint;
    bool m_bUnk3958;
    cocos2d::CCPoint m_endPosition;
    EndTriggerGameObject* m_platformerEndTrigger;
}

[[link(android)]]
class PointNode : cocos2d::CCObject {
    // virtual ~PointNode();

    static PointNode* create(cocos2d::CCPoint);

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

    static ProfilePage* create(int accountID, bool ownProfile) = win 0x3a7900, imac 0x7a31c0, m1 0x6b5340;

    void blockUser();
    bool init(int accountID, bool ownProfile) = win 0x3a7ae0;
    bool isCorrect(char const* key);
    bool isOnWatchlist(int);
    void loadPage(int) = win 0x3aed10;
    void loadPageFromUserInfo(GJUserScore*) = win 0x3a9120;
    void onBlockUser(cocos2d::CCObject* sender) = win 0x3ad0e0, m1 0x6ba0d8;
    void onClose(cocos2d::CCObject* sender) = win 0x3adeb0;
    void onComment(cocos2d::CCObject* sender) = win 0x3acb30, m1 0x6ba9c8;
    void onCommentHistory(cocos2d::CCObject* sender) = win 0x3acaa0, imac 0x7a7970, m1 0x6b9408;
    void onCopyName(cocos2d::CCObject* sender) = win 0x3ac170;
    void onFollow(cocos2d::CCObject* sender) = win 0x3ad330, m1 0x6b6168;
    void onFriend(cocos2d::CCObject* sender) = win 0x3accf0, imac 0x7a8430;
    void onFriends(cocos2d::CCObject* sender) = win 0x3ae9c0;
    void onInfo(cocos2d::CCObject* sender);
    void onMessages(cocos2d::CCObject* sender) = win 0x3ae990;
    void onMyLevels(cocos2d::CCObject* sender) = win 0x3ac790, imac 0x7a8b50, m1 0x6ba454;
    void onMyLists(cocos2d::CCObject* sender) = win 0x3ac940, imac 0x7a8d30, m1 0x6ba628;
    void onNextPage(cocos2d::CCObject* sender) = win 0x3af410;
    void onPrevPage(cocos2d::CCObject* sender) = win 0x3af420;
    void onRequests(cocos2d::CCObject* sender) = win 0x3ae9f0;
    void onSendMessage(cocos2d::CCObject* sender) = win 0x3acae0, m1 0x6b9c8c;
    void onSettings(cocos2d::CCObject* sender) = win 0x3ae7e0, m1 0x6ba9a8;
    void onStatInfo(cocos2d::CCObject* sender) = win 0x3abfa0;
    void onTwitch(cocos2d::CCObject* sender) = win 0x3ae640;
    void onTwitter(cocos2d::CCObject* sender) = win 0x3ae4b0;
    void onUpdate(cocos2d::CCObject* sender);
    void onYouTube(cocos2d::CCObject* sender) = win 0x3ae320;
    void setupComments() = m1 0x6b5f70;
    void setupCommentsBrowser(cocos2d::CCArray*) = win 0x3af000, m1 0x6b663c;
    void showNoAccountError() = win 0x3adf40;
    TodoReturn toggleMainPageVisibility(bool);
    void toggleShip(cocos2d::CCObject* sender) = win 0x3abef0, imac 0x7a73e0, m1 0x6b8e3c;
    TodoReturn updateLevelsLabel();
    void updatePageArrows() = win 0x3af3a0;

    virtual void registerWithTouchDispatcher() = imac 0x7ab890, m1 0x6bd044;
    virtual void keyBackClicked() = win 0x3adf30, imac 0x7aa240, m1 0x6bbaac;
    virtual void show() = win 0x3ae1c0, m1 0x6bbcdc, imac 0x7aa4c0;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x3ad900, imac 0x7a9ce0, m1 0x6bb514;
    virtual void updateUserScoreFinished() = win 0x3ae080, m1 0x6bbba0, imac 0x7aa350;
    virtual void updateUserScoreFailed() = win 0x3ae170, imac 0x7aa420, m1 0x6bbc34;
    virtual void getUserInfoFinished(GJUserScore*) = win 0x3aea20, imac 0x7aa7b0, m1 0x6bbfc8;
    virtual void getUserInfoFailed(int) = win 0x3aeb10, imac 0x7aaba0, m1 0x6bc39c;
    virtual void userInfoChanged(GJUserScore*) = win 0x3aeb60, imac 0x7aac60, m1 0x6bc474;
    virtual void loadCommentsFinished(cocos2d::CCArray*, char const*) = win 0x3af150, imac 0x7aae80, m1 0x6bc698;
    virtual void loadCommentsFailed(char const*) = win 0x3af1d0, imac 0x7aaf70, m1 0x6bc7a4;
    virtual void setupPageInfo(gd::string, char const*) = win 0x3af230, imac 0x7ab040, m1 0x6bc878;
    virtual void commentUploadFinished(int) = win 0x3af430, m1 0x6bcd6c, imac 0x7ab5a0;
    virtual void commentUploadFailed(int, CommentError) = win 0x3af480, m1 0x6bce0c, imac 0x7ab630;
    virtual void commentDeleteFailed(int, int) = win 0x3af5a0, imac 0x7ab700, m1 0x6bcee0;
    virtual void onClosePopup(UploadActionPopup*) = win 0x3adbf0, imac 0x7a9ec0, m1 0x6bb6cc;
    virtual void uploadActionFinished(int, int) = win 0x3adc40, imac 0x7a9f40, m1 0x6bb754;
    virtual void uploadActionFailed(int, int) = win 0x3ade00, imac 0x7aa120, m1 0x6bb94c;

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

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x2c1c60, m1 0x265e50;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x2c1e80, m1 0x2660c0;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x265fa0, imac 0x2c1d60;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x2c1e00, m1 0x266050;
    virtual void keyBackClicked() = m1 0x265ccc, imac 0x2c1ac0;
    virtual void show() = m1 0x265ca0, imac 0x2c1a90;
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

    static PurchaseItemPopup* create(GJStoreItem*);

    bool init(GJStoreItem*) = win 0x2a74a0, m1 0x2a9c10;
    void onClose(cocos2d::CCObject* sender);
    void onPurchase(cocos2d::CCObject* sender) = m1 0x2aa6b0;

    virtual void keyBackClicked() = imac 0x314660, m1 0x2aa724;

    GJStoreItem* m_storeItem;
    GJPurchaseDelegate* m_delegate;
}

[[link(android)]]
class RandTriggerGameObject : ChanceTriggerGameObject {
    // virtual ~RandTriggerGameObject();

    static RandTriggerGameObject* create();

    int getRandomGroupID();
    int getTotalChance();

    virtual bool init() = imac 0x1b20e0, m1 0x172540;
    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = imac 0x1b2370, m1 0x1727bc;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1b25d0, m1 0x172a04;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1b2c10, m1 0x172fb8;
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

    static RateDemonLayer* create(int levelID) = win inline, m1 0x21cfd4 {
        auto ret = new RateDemonLayer();
        if (ret->init(levelID)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool init(int) = win 0x3b1670, m1 0x21d0f4;
    void onClose(cocos2d::CCObject* sender);
    void onRate(cocos2d::CCObject* sender) = win 0x3b1dc0, imac 0x272a00, m1 0x21d83c;
    void selectRating(cocos2d::CCObject*) = win 0x3b1c40;

    virtual void keyBackClicked() = win 0x3b2180, imac 0x272e70, m1 0x21dd10;
    virtual void uploadActionFinished(int, int) = win 0x3b1f60, imac 0x272b30, m1 0x21d964;
    virtual void uploadActionFailed(int, int) = win 0x3b1ff0, imac 0x272c20, m1 0x21dab4;
    virtual void onClosePopup(UploadActionPopup*) = win 0x3b20c0, imac 0x272d90, m1 0x21dc24;

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

    static RateLevelLayer* create(int levelID) = win inline, m1 0x4a84ac {
        auto ret = new RateLevelLayer();
        if (ret->init(levelID)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool init(int) = win 0x3b22a0, m1 0x4a85b0;
    void onClose(cocos2d::CCObject* sender);
    void onRate(cocos2d::CCObject* sender) = win 0x3b2900, imac 0x551a00, m1 0x4a8dc4;
    void selectRating(cocos2d::CCObject* sender) = win 0x3b27b0, imac 0x5518d0, m1 0x4a8c4c;

    virtual void keyBackClicked() = win 0x3b2990, imac 0x551a50, m1 0x4a8e2c;

    CCMenuItemSpriteExtra* m_submitButton;
    cocos2d::CCArray* m_difficulties;
    int m_levelID;
    int m_levelRate;
    RateLevelDelegate* m_delegate;
}

[[link(android)]]
class RateStarsLayer : FLAlertLayer, UploadPopupDelegate, UploadActionDelegate {
    // virtual ~RateStarsLayer();
    RateStarsLayer();

    static RateStarsLayer* create(int, bool, bool) = win 0x3b2b20, imac 0x279db0;

    CCMenuItemSpriteExtra* getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float) = win 0x3b3350;
    bool init(int, bool, bool) = win 0x3b2c70, m1 0x223fd0;
    void onClose(cocos2d::CCObject* sender) = win 0x3b3a30;
    void onFeature(cocos2d::CCObject* sender) = win 0x3b3320, imac 0x27abe0;
    void onRate(cocos2d::CCObject* sender) = win 0x3b3680, imac 0x27ac60, m1 0x224ca4;
    void onToggleCoins(cocos2d::CCObject* sender);
    void selectRating(cocos2d::CCObject*) = win 0x3b3490;

    virtual void keyBackClicked() = win 0x3b3a70, imac 0x27b0e0, m1 0x22515c;
    virtual void uploadActionFinished(int, int) = win 0x3b3870, imac 0x27ada0, m1 0x224dd0;
    virtual void uploadActionFailed(int, int) = win 0x3b38f0, imac 0x27ae90, m1 0x224f10;
    virtual void onClosePopup(UploadActionPopup*) = win 0x3b39b0, imac 0x27b000, m1 0x225070;

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

    static RetryLevelLayer* create() = win 0x3958a0;

    const char* getEndText();
    void onEveryplay(cocos2d::CCObject* sender);
    void onMenu(cocos2d::CCObject* sender) = win 0x3b4a00;
    void onReplay(cocos2d::CCObject* sender);
    void onRewardedVideo(cocos2d::CCObject* sender);
    TodoReturn setupLastProgress() = win 0x3b4340;

    virtual void keyBackClicked() = win 0x3b4b20, imac 0x4e6550, m1 0x448704;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x3b49b0, imac 0x4e6480, m1 0x448658;
    virtual void customSetup() = win 0x3b3be0, m1 0x4475dc, imac 0x4e53a0;
    virtual void showLayer(bool) = m1 0x448174, imac 0x4e5f60;
    virtual void enterAnimFinished() = m1 0x448284, imac 0x4e6060;
    virtual void rewardedVideoFinished() = win 0x3b48e0, imac 0x4e6460, m1 0x448648;
    virtual bool shouldOffsetRewardCurrency() = imac 0x7730, m1 0x93d8;
    virtual void keyUp(cocos2d::enumKeyCodes) = imac 0x4e6530, m1 0x4486fc {}
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

    static RewardsPage* create() = win inline {
        auto ret = new RewardsPage();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    static char const* getRewardFrame(int type, int state) = win inline, imac 0x209a40 {
        return cocos2d::CCString::createWithFormat("chest_%02d_%02d_001.png", type, state)->getCString();
    }
    void onClose(cocos2d::CCObject* sender);
    void onFreeStuff(cocos2d::CCObject* sender) = win 0x3b6800;
    void onReward(cocos2d::CCObject* sender) = win 0x3b5ec0, imac 0x209a60, m1 0x1be59c;
    void tryGetRewards();
    void unlockLayerClosed(RewardUnlockLayer* layer) = win inline, imac 0x20a590, m1 0x1bf0bc {
        if (m_openLayer == layer) m_openLayer = nullptr;
    }
    callback void updateTimers(float) = m1 0x1be6bc;

    virtual bool init() = win 0x3b5000, m1 0x1bd8dc, imac 0x208cb0;
    virtual void registerWithTouchDispatcher() = imac 0x20a550, m1 0x1bf084;
    virtual void keyBackClicked() = imac 0x20a4e0, m1 0x1bf008;
    virtual void show() = m1 0x1beeb0, imac 0x20a380;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = imac 0x20a4c0, m1 0x1bf000 {}
    virtual void rewardsStatusFinished(int) = win 0x3b6000, imac 0x20a000, m1 0x1beb4c;
    virtual void rewardsStatusFailed() = win 0x3b6250, m1 0x1bedac, imac 0x20a290;

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

    static RewardUnlockLayer* create(int, RewardsPage*) = win 0x3b6830, imac 0x209e90, m1 0x1bea1c;

    void connectionTimeout() = win 0x3b7730, imac 0x20b9c0, m1 0x1c0310;
    bool init(int, RewardsPage*) = m1 0x1bf364;
    void labelEnterFinishedO(cocos2d::CCObject*) = win inline {}
    void onClose(cocos2d::CCObject* sender) = win 0x3ba100, imac 0x20b960, m1 0x1c02b8;
    void playDropSound() = win 0x3b7790, m1 0x1c015c;
    void playLabelEffect(int, int, cocos2d::CCSprite*, cocos2d::CCPoint, float) = imac 0x20db50, m1 0x1c2250;
    void playRewardEffect();
    bool readyToCollect(GJRewardItem* item) = win inline, imac 0x20a1a0, m1 0x1becc0 {
        return item ? m_chestType == (int)item->m_rewardType : false;
    }
    void showCloseButton() = imac 0x20e220, m1 0x1c291c;
    bool showCollectReward(GJRewardItem*) = win 0x3b7670, imac 0x20a1c0;
    void step2() = win 0x3b7830, m1 0x1c01e8;
    void step3() = win 0x3b7930, imac 0x20db30;

    virtual void keyBackClicked() = imac 0x20e2f0, m1 0x1c29c0 {}
    virtual void currencyWillExit(CurrencyRewardLayer*) = win 0x3ba0f0, imac 0x20e2b0, m1 0x1c2998;

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

    static RingObject* create(char const*) = win 0x489430;

    bool init(char const*);
    TodoReturn spawnCircle();

    virtual void setScale(float) = imac 0x1a3ab0, m1 0x1660a0;
    virtual void setRotation(float) = imac 0x1a3b10, m1 0x166100;
    virtual void resetObject() = imac 0x1a3a90, m1 0x166074;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x166114, imac 0x1a3b40;
    virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x166220, imac 0x1a3c90;
    virtual void setRScale(float) = imac 0x1a3ae0, m1 0x1660d0;
    virtual void triggerActivated(float) = imac 0x1a3930, m1 0x165f28;
    virtual bool shouldDrawEditorHitbox() = imac 0x1a3b20, m1 0x166104;
    virtual TodoReturn powerOnObject(int) = m1 0x165f34, imac 0x1a3940;

    bool m_claimTouch;
    // property 504
    bool m_isSpawnOnly;
}

[[link(android)]]
class RotateGameplayGameObject : EffectGameObject {
    // virtual ~RotateGameplayGameObject();

    static RotateGameplayGameObject* create();

    TodoReturn updateGameplayRotation();

    virtual bool init() = imac 0x1e0280, m1 0x198450;
    virtual void updateStartValues() = m1 0x199c2c, imac 0x1e1fa0;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x19993c, imac 0x1e1c20;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1e02d0, m1 0x1984a0;
}

[[link(android)]]
class ScrollingLayer : cocos2d::CCLayerColor {
    // virtual ~ScrollingLayer();
    // ScrollingLayer() = ios 0x1c396c;

    static ScrollingLayer* create(cocos2d::CCSize, cocos2d::CCPoint, float) = imac 0x340910, m1 0x629a10;

    TodoReturn getViewRect();
    bool init(cocos2d::CCSize, cocos2d::CCPoint, float);
    void setStartOffset(cocos2d::CCPoint) = imac 0x70a880, m1 0x629e1c;

    virtual void draw() = imac 0x70a6a0, m1 0x629c9c;
    virtual void visit() = imac 0x70a770, m1 0x629d40;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x70ff0, imac 0x70a8c0, m1 0x629e54;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x710e0, imac 0x70aa60, m1 0x629fb0;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x711f0, imac 0x70ab80, m1 0x62a0ac;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x70abc0, m1 0x62a0e4;
}

[[link(android)]]
class SearchButton : cocos2d::CCSprite {
    // virtual ~SearchButton();

    static SearchButton* create(char const*, char const*, float, char const*) = win 0x2fdbb0, imac 0x613f30, m1 0x5402b0;

    bool init(char const*, char const*, float, char const*) = win 0x2fdc80, imac 0x6160f0, m1 0x542458;

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
class SecretGame01Layer : cocos2d::CCLayer {
    // virtual ~SecretGame01Layer();

    static SecretGame01Layer* create();

    TodoReturn didSelectCorrectObject(CCMenuItemSpriteExtra*);
    TodoReturn gameStep01();
    TodoReturn gameStep02();
    TodoReturn getCountForDifficulty(int);
    gd::string getFrameForDifficulty(int);
    TodoReturn getRowsForDifficulty(int);
    TodoReturn getTimeForDifficulty(int);
    void onSelectButton(cocos2d::CCObject* sender);
    TodoReturn resetGame();
    TodoReturn resetGameTimer();
    TodoReturn scaleOutGame(bool);
    TodoReturn showGameOver();
    TodoReturn showGameWon();

    virtual void update(float);
    virtual bool init();
}

[[link(android)]]
class SecretLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol {
    // virtual ~SecretLayer();

    static SecretLayer* create();
    static cocos2d::CCScene* scene();

    TodoReturn getBasicMessage();
    TodoReturn getMessage();
    TodoReturn getThreadMessage();
    TodoReturn nodeWithTag(int);
    void onBack(cocos2d::CCObject* sender) = win 0x3ca9d0;
    void onSubmit(cocos2d::CCObject* sender) = win 0x3c6900;
    TodoReturn playCoinEffect();
    TodoReturn selectAThread();
    TodoReturn updateMessageLabel(gd::string);
    void updateSearchLabel(char const*);

    virtual bool init() = win 0x3c55c0, m1 0x51573c, imac 0x5e3250;
    virtual void keyBackClicked() = win 0x3caa70, imac 0x5e7080, m1 0x518eac;
    virtual void textInputOpened(CCTextInputNode*) = win 0x3c8370, imac 0x5e6160, m1 0x5182a4;
    virtual void textInputClosed(CCTextInputNode*) = win 0x3c84c0, imac 0x5e6230, m1 0x518384;
    virtual void textChanged(CCTextInputNode*) = imac 0x5e6300, m1 0x518494;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = imac 0x5e6140, m1 0x51829c {}
}

[[link(android)]]
class SecretLayer2 : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DialogDelegate {
    // virtual ~SecretLayer2();

    static SecretLayer2* create();
    static cocos2d::CCScene* scene() = win 0x3cacb0;

    gd::string getBasicMessage() = win 0x3d0740;
    gd::string getErrorMessage() = win 0x3d12a0;
    gd::string getMessage() = win 0x3cfe70;
    gd::string getThreadMessage() = win 0x3d0050;
    TodoReturn nodeWithTag(int);
    void onBack(cocos2d::CCObject* sender);
    void onDoor(cocos2d::CCObject* sender) = win 0x3cd460;
    void onSecretLevel(cocos2d::CCObject* sender) = win 0x3cd1b0;
    void onSubmit(cocos2d::CCObject* sender) = win 0x3cddc0;
    void playCoinEffect();
    void selectAThread();
    void showCompletedLevel() = win 0x3cc460;
    void showSecretLevel() = win 0x3cc2f0;
    void updateMessageLabel(gd::string text) = win 0x3cfde0;
    void updateSearchLabel(char const*);

    virtual bool init() = win 0x3cae30, m1 0x3f74e0, imac 0x48a280;
    virtual void onExit() = imac 0x490250, m1 0x3fcfb4;
    virtual void keyBackClicked() = win 0x3d2450, imac 0x490160, m1 0x3fcec8;
    virtual void textInputOpened(CCTextInputNode*) = win 0x3cf8d0, imac 0x48f1f0, m1 0x3fbf90;
    virtual void textInputClosed(CCTextInputNode*) = win 0x3cfa20, imac 0x48f2c0, m1 0x3fc070;
    virtual void textChanged(CCTextInputNode*) = imac 0x48f390, m1 0x3fc180;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = imac 0x48f1d0, m1 0x3fbf88 {}
    virtual void dialogClosed(DialogLayer*) = win 0x3cd110, imac 0x48dd40, m1 0x3faaec;
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
    static cocos2d::CCScene* scene();

    TodoReturn animateEyes();
    TodoReturn firstInteractionStep1();
    TodoReturn firstInteractionStep2();
    TodoReturn firstInteractionStep3();
    TodoReturn firstInteractionStep4();
    void onBack(cocos2d::CCObject* sender);
    void onChest01(cocos2d::CCObject* sender);
    void onChest02(cocos2d::CCObject* sender);
    void onClick(cocos2d::CCObject* sender) = win 0x3d4f50;
    TodoReturn revealStep1();
    TodoReturn revealStep2();
    TodoReturn revealStep3();
    TodoReturn revealStep4();
    TodoReturn revealStep5();
    void showUnlockDialog();

    virtual bool init() = win 0x3d29e0, imac 0x4906f0, m1 0x3fd2f8;
    virtual void onExit() = m1 0x401d48, imac 0x495580;
    virtual void keyBackClicked() = win 0x3d82e0, imac 0x495550, m1 0x401d3c;
    virtual void dialogClosed(DialogLayer*) = win 0x3d7ce0, imac 0x495230, m1 0x401a04;

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
    static cocos2d::CCScene* scene();

    TodoReturn getBasicMessage();
    TodoReturn getErrorMessage();
    TodoReturn getMessage();
    TodoReturn getThreadMessage();
    TodoReturn nodeWithTag(int);
    void onBack(cocos2d::CCObject* sender);
    void onChest01(cocos2d::CCObject* sender);
    void onSubmit(cocos2d::CCObject* sender);
    TodoReturn playCoinEffect();
    TodoReturn selectAThread();
    void showDialog(int);
    void showFirstDialog();
    TodoReturn updateMessageLabel(gd::string);
    void updateSearchLabel(char const*);

    virtual bool init() = win 0x3d8670, m1 0x32ae60, imac 0x39dcf0;
    virtual void onExit() = imac 0x3a2190, m1 0x32f0cc;
    virtual void keyBackClicked() = win 0x3dc270, imac 0x3a20a0, m1 0x32efd8;
    virtual void textInputOpened(CCTextInputNode*) = imac 0x3a11c0, m1 0x32e0ac;
    virtual void textInputClosed(CCTextInputNode*) = imac 0x3a1290, m1 0x32e18c;
    virtual void textChanged(CCTextInputNode*) = imac 0x3a1360, m1 0x32e29c;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = imac 0x3a11a0, m1 0x32e0a4 {}
    virtual void dialogClosed(DialogLayer*) = imac 0x3a0940, m1 0x32d808 {}
}

[[link(android)]]
class SecretLayer5 : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DialogDelegate, GJOnlineRewardDelegate {
    // virtual ~SecretLayer5();
    SecretLayer5() {
        m_unk1b8 = -1;
        m_unk1bc = -1;
        m_unk1c0 = 0;
        m_unk1c4 = 0;
        m_unk1c8 = 0;
        m_unk1cc = -1;
        m_textInput = nullptr;
        m_messageLabel = nullptr;
        m_exiting = false;
        m_torchFires = nullptr;
        m_loading = false;
        m_rewardStatus = 0;
        m_chestID = "";
        m_uiLocked = false;
        m_soundEffects = {};
        m_chatIndex = -1;
    }

    static SecretLayer5* create() = win inline {
        auto ret = new SecretLayer5();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    void animateHead() = win 0x3ddf20;
    void claimOnlineReward() = win 0x3df350;
    void fadeInMessage();
    void fadeInSubmitMessage() = win 0x3ddd20;
    void fadeOutMessage() = win 0x3ddef0;
    void finishLoadingState() = win 0x3de2e0;
    gd::string getMessage() = win inline {
        return " ";
    }
    void handleSecretResponse() = win 0x3de300;
    void hideTextInput() = win inline {
        m_textInput->setTouchEnabled(false);
        m_textInput->onClickTrackNode(false);
        m_textInput->setVisible(false);
        m_messageArea->stopAllActions();
        m_messageArea->runAction(cocos2d::CCFadeTo::create(.5f, 0));
    }
    void incrementChatIdx();
    cocos2d::CCNode* nodeWithTag(int tag) = win inline {
        auto ret = cocos2d::CCNode::create();
        ret->setTag(tag);
        return ret;
    }
    void onBack(cocos2d::CCObject* sender) = win 0x3e0ad0;
    void onSubmit(cocos2d::CCObject* sender) = win 0x3df780;
    void playWinSFX() = win 0x3df2c0;
    static cocos2d::CCScene* scene() = win 0x2c01a0;
    void showDialog(int);
    void showFailAnimation() = win 0x3de360;
    void showFirstDialog() = win 0x3e03b0;
    void showSuccessAnimation() = win 0x3de920;
    void showTextInput() = win 0x3df720;
    void unlockUI() = win 0x3df560;
    void updateMessageLabel(gd::string text) = win inline {
        m_messageLabel->setString(text.c_str());
        m_messageLabel->limitLabelWidth(320.f, .6f, 0.f);
    }
    void updateSearchLabel(char const*) = win 0x3e00c0;

    virtual bool init() = win 0x3dcb80, m1 0x3d7074, imac 0x467520;
    virtual void onExit() = win 0x3d2460, m1 0x3db360, imac 0x46bd50;
    virtual void updateTweenActionInt(float, int) = win 0x3de290, m1 0x3d92e0, imac 0x469ae0;
    virtual void keyBackClicked() = win 0x3e0b50, m1 0x3db23c, imac 0x46bc50;
    virtual void textInputOpened(CCTextInputNode*) = win 0x3dfea0, m1 0x3daf04, imac 0x46b9b0;
    virtual void textInputClosed(CCTextInputNode*) = win 0x3dfff0, m1 0x3dafe4, imac 0x46ba80;
    virtual void textChanged(CCTextInputNode*) = win 0x3dfff0, m1 0x3db0f4, imac 0x46bb50;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = m1 0x3daefc, imac 0x46b990 {}
    virtual void dialogClosed(DialogLayer*) = m1 0x3daef4, imac 0x46b970 {}
    virtual void onlineRewardStatusFinished(gd::string) = win 0x3df570, m1 0x3da474, imac 0x46ad70;
    virtual void onlineRewardStatusFailed() = win 0x3df6e0, m1 0x3da5dc, imac 0x46aec0;

    int m_unk1b8;
    int m_unk1bc;
    int m_unk1c0;
    int m_unk1c4;
    int m_unk1c8;
    int m_unk1cc;
    CCTextInputNode* m_textInput;
    cocos2d::CCLabelBMFont* m_messageLabel;
    CCMenuItemSpriteExtra* m_wraithButton;
    bool m_exiting;
    void* m_unk1f0;
    cocos2d::CCArray* m_torchFires;
    bool m_loading;
    int m_rewardStatus; // 0 invalid, 1 valid, 2 claimed
    gd::string m_chestID;
    bool m_uiLocked;
    CCSpriteWithHue* m_wraithSprite;
    CCSpriteGrayscale* m_wraithGraySprite;
    cocos2d::CCSprite* m_eyesSprite;
    cocos2d::CCSprite* m_background;
    cocos2d::CCSprite* m_lockSprite;
    gd::vector<int> m_soundEffects;
    int m_chatIndex;
    cocos2d::extension::CCScale9Sprite* m_inputBackground;
    LoadingCircleSprite* m_circleSprite;
    TextArea* m_messageArea;
}

[[link(android)]]
class SecretLayer6 : cocos2d::CCLayer {
    // virtual ~SecretLayer6();
    SecretLayer6() = win inline {
        m_gameLayer = nullptr;
    }

    static SecretLayer6* create();

    void onBack(cocos2d::CCObject* sender);
    static cocos2d::CCScene* scene();
    void startGame01();

    virtual bool init() = m1 0x3db54c, imac 0x46bfb0;
    virtual void keyBackClicked() = m1 0x3dc0a4, imac 0x46cc30;

    SecretGame01Layer* m_gameLayer;
}

[[link(android)]]
class SecretNumberLayer : cocos2d::CCLayer {
    // virtual ~SecretNumberLayer();

    static SecretNumberLayer* create();

    TodoReturn playNumberEffect(int);

    virtual bool init() = imac 0x490330, m1 0x3fd040;
}

[[link(android)]]
class SecretRewardsLayer : cocos2d::CCLayer, DialogDelegate, BoomScrollLayerDelegate {
    // virtual ~SecretRewardsLayer();
    SecretRewardsLayer() {
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

    static SecretRewardsLayer* create(bool fromShop) = win inline {
        auto ret = new SecretRewardsLayer();
        if (ret->init(fromShop)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCScene* scene(bool fromShop) = win 0x3bb080;

    void createSecondaryLayer(int) = win 0x3bde30, m1 0x548a2c;
    TodoReturn fadeInMusic();
    TodoReturn fadeInOutMusic();
    cocos2d::CCArray* generateChestItems(int) = win 0x3be280;
    cocos2d::ccColor3B getPageColor(int page) = win inline {
        if (page == 1) return cocos2d::ccc3(50, 50, 50);
        else if (page == 2) return cocos2d::ccc3(70, 0, 120);
        else return cocos2d::ccc3(70, 0, 75);
    }
    void goToPage(int page) = win inline {
        if (m_inMainLayer) m_mainScrollLayer->moveToPage(page);
        else m_secondaryScrollLayer->moveToPage(page);
    }
    bool init(bool) = win 0x3bb1e0;
    void moveToMainLayer(cocos2d::CCObject*) = m1 0x5488fc;
    void moveToSecondaryLayer(int) = m1 0x548478;
    void onBack(cocos2d::CCObject* sender) = win 0x3c0770;
    void onChestType(cocos2d::CCObject* sender) = win 0x3bdba0, imac 0x61b8d0, m1 0x5474a4;
    void onGoldChest(cocos2d::CCObject* sender);
    void onSelectItem(cocos2d::CCObject* sender) = win 0x3bec90, m1 0x549b38;
    void onShop(cocos2d::CCObject* sender) = win 0x3bf220, imac 0x61bfa0, m1 0x547bf0;
    void onSpecialItem(cocos2d::CCObject* sender) = m1 0x54807c;
    void onSwitchPage(cocos2d::CCObject* sender) = win 0x3bd830;
    void showDialog01() = win 0x3c09a0, imac 0x61e480, m1 0x549ed4;
    void showDialog03() = imac 0x6201a0, m1 0x54b6c0;
    void showDialogDiamond() = m1 0x54d9e0;
    void showDialogMechanic() = win 0x3c35b0, imac 0x621750, m1 0x54c868;
    void showLockedChest();
    void showShop(int shop) = win inline, m1 0x54e4e8 {
        if (cocos2d::CCDirector::sharedDirector()->replaceScene(cocos2d::CCTransitionMoveInT::create(0.5f, GJShopLayer::scene((ShopType)shop)))) this->setKeypadEnabled(false);
    }
    void switchToOpenedState(CCMenuItemSpriteExtra*) = win 0x3bfa40, imac 0x61b910, m1 0x5474f8;
    void updateBackButton() = win 0x3bdcf0, m1 0x5487d0;
    TodoReturn updateUnlockedGoldLabel();
    void updateUnlockedLabel() = m1 0x5475d8;

    virtual void onExit() = m1 0x54e7dc, imac 0x623d20;
    virtual void keyBackClicked() = win 0x3c0950, imac 0x623c90, m1 0x54e768;
    virtual void dialogClosed(DialogLayer*) = win 0x3bf430, imac 0x623aa0, m1 0x54e558;
    virtual void scrollLayerMoved(cocos2d::CCPoint) = win 0x3bd950, m1 0x547f00, imac 0x61c2c0;

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

    static SelectArtLayer* create(SelectArtType, int) = win 0x30d4e0, imac 0x25d760;

    bool init(SelectArtType, int) = win 0x30d5f0, m1 0x20a024;
    void onClose(cocos2d::CCObject* sender);
    void onSelectCustom(cocos2d::CCObject* sender) = win 0x30e300, imac 0x25eae0, m1 0x20ab10;
    void selectArt(cocos2d::CCObject* sender) = win 0x30e240, imac 0x25e9c0, m1 0x20a9c8;
    void updateSelectedCustom(int idx) = win inline, imac 0x25d8d0, m1 0x209b20 {
        if (m_lineSprites) {
            m_line = idx;
            this->onSelectCustom(nullptr);
        }
    }

    virtual void keyBackClicked() = win 0x30e410, imac 0x25eba0, m1 0x20abb8;

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

    virtual void keyBackClicked() = imac 0x563750, m1 0x4b98b8;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x4b9800, imac 0x563680;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x563450, m1 0x4b95bc;
}

[[link(android)]]
class SelectFontLayer : FLAlertLayer {
    // virtual ~SelectFontLayer();
    SelectFontLayer() {
        m_font = -1;
        m_editorLayer = nullptr;
        m_fontLabel = nullptr;
    }

    static SelectFontLayer* create(LevelEditorLayer* editorLayer) = win inline {
        auto ret = new SelectFontLayer();
        if (ret->init(editorLayer)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool init(LevelEditorLayer*) = win 0x286ac0, imac 0x288570, m1 0x2316dc;
    void onChangeFont(cocos2d::CCObject* sender) = win 0x2872e0, imac 0x288b80, m1 0x231cf8;
    void onClose(cocos2d::CCObject* sender);
    void updateFontLabel() = win 0x2870e0, imac 0x288c20, m1 0x231d8c;

    virtual void keyBackClicked() = imac 0x288d40, m1 0x231e8c;

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

    static SelectListIconLayer* create(int difficulty) = win inline, imac 0x34d2b0 {
        auto ret = new SelectListIconLayer();
        if (ret->init(difficulty)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool init(int) = win 0x2f4670;
    void onClose(cocos2d::CCObject* sender);
    void onSelect(cocos2d::CCObject* sender) = win 0x2f4e60, m1 0x2e2d74;

    virtual void keyBackClicked() = win 0x2f4f60, imac 0x34e870, m1 0x2e2ec4;

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

    virtual bool init() = imac 0x2f6550, m1 0x28f378;
    virtual void keyBackClicked() = imac 0x2f6a50, m1 0x28f8c0;
}

[[link(android)]]
class SelectSettingDelegate {
    virtual void selectSettingClosed(SelectSettingLayer*);
}

[[link(android)]]
class SelectSettingLayer : FLAlertLayer {
    // virtual ~SelectSettingLayer();

    static SelectSettingLayer* create(SelectSettingType, int) = win 0x30e460, imac 0x25cf80;

    static gd::string frameForItem(SelectSettingType, int) = win 0x30ecc0, imac 0x25f560, m1 0x20b484;
    static gd::string frameForValue(SelectSettingType type, int value) = win inline, imac 0x25cc20 {
        return frameForItem(type, valueToIdx(type, value));
    }
    static int idxToValue(SelectSettingType type, int idx) = win inline, imac 0x25f840 {
        if (type != SelectSettingType::StartingSpeed) return idx;
    
        switch (idx) {
            case 0: return 1;
            case 1: return 0;
            case 2: case 3: case 4: return idx;
            default: return 0;
        }
    }
    static int valueToIdx(SelectSettingType type, int value) = win inline, imac 0x25f530 {
        if (type != SelectSettingType::StartingSpeed) return value;
    
        switch (value) {
            case 0: return 1;
            case 1: return 0;
            case 2: case 3: case 4: return value;
            default: return 1;
        }
    }
    gd::string getSelectedFrame() = win inline, imac 0x25d260 {
        return frameForValue(m_type, m_settingID);
    }
    int getSelectedValue() = win inline, imac 0x25d230 {
        return idxToValue(m_type, m_settingID);
    }
    bool init(SelectSettingType, int) = win 0x30e570, imac 0x487230, m1 0x20aea4;
    void onClose(cocos2d::CCObject* sender);
    void onSelect(cocos2d::CCObject* sender) = win 0x30f160, imac 0x25f740, m1 0x20b6c4;

    virtual void keyBackClicked() = win 0x30f260, imac 0x25f870, m1 0x20b828;

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

    static SelectSFXSortLayer* create(AudioSortType sortType) = win inline, imac 0x42c9f0 {
        auto ret = new SelectSFXSortLayer();
        if (ret->init(sortType)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool init(AudioSortType) = win 0x468a10, m1 0x3a80a4;
    void onClose(cocos2d::CCObject* sender);
    void onSelect(cocos2d::CCObject* sender) = win 0x469090, imac 0x42d890, m1 0x3a857c;

    virtual void keyBackClicked() = imac 0x42d8f0, m1 0x3a85e8;

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

    virtual bool init() = imac 0x1b3630, m1 0x173840;
    virtual void resetObject() = m1 0x173890, imac 0x1b3680;
    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = imac 0x1b3940, m1 0x173a08;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1b3ec0, m1 0x173e94;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1b4360, m1 0x1742c0;
}

[[link(android)]]
class SetColorIDPopup : SetIDPopup, GJSpecialColorSelectDelegate {
    // virtual ~SetColorIDPopup();

    static SetColorIDPopup* create(int);

    bool init(int);
    void onSelectSpecialColor(cocos2d::CCObject* sender);

    virtual void colorSelectClosed(GJSpecialColorSelect*, int) = win 0x294bd0, imac 0x299f10, m1 0x241a44;
}

[[link(android)]]
class SetFolderPopup : SetIDPopup, SetTextPopupDelegate {
    // virtual ~SetFolderPopup();

    static SetFolderPopup* create(int value, bool isCreated, gd::string title) = win 0x294d70;

    bool init(int value, bool isCreated, gd::string title) = win 0x294eb0;
    void onSetFolderName(cocos2d::CCObject* sender) = win 0x295270, imac 0x29ae30, m1 0x242694;

    virtual void valueChanged() = win 0x295130, m1 0x242894, imac 0x29b020;
    virtual void setTextPopupClosed(SetTextPopup*, gd::string) = win 0x295470, imac 0x29b4f0, m1 0x242d0c;

    bool m_isCreated;
    cocos2d::CCLabelBMFont* m_titleLabel;
}

[[link(android)]]
class SetGroupIDLayer : FLAlertLayer, TextInputDelegate {
    // virtual ~SetGroupIDLayer();
    //SetGroupIDLayer() = ios 0x48054;

    static SetGroupIDLayer* create(GameObject*, cocos2d::CCArray*) = imac 0x2fe9b0, m1 0x29699c;

    TodoReturn addGroupID(int);
    void callRemoveFromGroup(float);
    TodoReturn createTextInput(cocos2d::CCPoint, int, int, gd::string, float, int);
    TodoReturn determineStartValues();
    bool init(GameObject* obj, cocos2d::CCArray* objs) = win 0x3e1120, imac 0x2feb80, m1 0x296afc;
    void onAddGroup(cocos2d::CCObject* sender) = win 0x3e5170;
    void onAddGroupParent(cocos2d::CCObject* sender) = win 0x3e52e0;
    void onAnim(cocos2d::CCObject* sender);
    void onArrow(int tag, int increment) = win 0x3e38a0;
    void onArrowLeft(cocos2d::CCObject* sender) = win 0x3e3840;
    void onArrowRight(cocos2d::CCObject* sender) = win 0x3e3870;
    void onClose(cocos2d::CCObject* sender) = win 0x3e5e20, m1 0x29883c;
    void onCopy(cocos2d::CCObject* sender);
    void onExtra(cocos2d::CCObject* sender) = win 0x3e3f90;
    void onExtra2(cocos2d::CCObject* sender);
    void onNextFreeEditorLayer1(cocos2d::CCObject* sender);
    void onNextFreeEditorLayer2(cocos2d::CCObject* sender);
    void onNextFreeOrderChannel(cocos2d::CCObject* sender);
    void onNextGroupID1(cocos2d::CCObject* sender) = m1 0x299038;
    void onPaste(cocos2d::CCObject* sender);
    void onRemoveFromGroup(cocos2d::CCObject* sender);
    void onSmoothEase(cocos2d::CCObject* sender);
    void onToggleGuide(cocos2d::CCObject* sender);
    void onToggleSelectedOrder(cocos2d::CCObject* sender);
    void onZLayer(cocos2d::CCObject* sender);
    void onZLayerShift(cocos2d::CCObject* sender);
    TodoReturn removeGroupID(int);
    void updateEditorLabel();
    void updateEditorLabel2();
    void updateEditorLayerID();
    void updateEditorLayerID2();
    void updateEditorOrder();
    void updateEditorOrderLabel();
    TodoReturn updateGroupIDButtons();
    void updateGroupIDLabel();
    void updateOrderChannel();
    void updateOrderChannelLabel();
    TodoReturn updateZLayerButtons();
    void updateZOrder() = win 0x3e5750;
    void updateZOrderLabel() = win 0x3e5900;

    virtual void keyBackClicked() = win 0x3e61a0, imac 0x303bb0, m1 0x29b564;
    virtual void textInputClosed(CCTextInputNode*) = imac 0x303430, m1 0x29ae38;
    virtual void textChanged(CCTextInputNode*) = win 0x3e42c0, imac 0x303470, m1 0x29ae54;

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

    static SetIDPopup* create(int current, int begin, int end, gd::string title, gd::string button, bool, int, float, bool, bool) = win 0x293a90;

    bool init(int current, int begin, int end, gd::string title, gd::string button, bool, int, float, bool, bool) = win 0x293bc0, imac 0x2988f0, m1 0x240590;
    void onCancel(cocos2d::CCObject* sender) = win 0x294830, imac 0x299280, m1 0x240f0c;
    void onClose(cocos2d::CCObject* sender) = win 0x2948d0;
    void onItemIDArrow(cocos2d::CCObject* sender) = win 0x294580, imac 0x299230, m1 0x240eb0;
    void onResetValue(cocos2d::CCObject* sender) = win 0x2945d0, imac 0x299210;
    void updateTextInputLabel() = win 0x2946f0, imac 0x299320, m1 0x240fac;

    virtual void keyBackClicked() = win 0x294970, imac 0x299640, m1 0x2412e0;
    virtual void show() = win 0x2947a0, m1 0x24125c, imac 0x2995c0;
    virtual void textInputClosed(CCTextInputNode*) = imac 0x299460, m1 0x2410e8;
    virtual void textChanged(CCTextInputNode*) = win 0x2945f0, imac 0x2994a0, m1 0x241104;
    virtual void valueChanged() = imac 0x2995b0, m1 0x241258 {}

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

    virtual void onClose(cocos2d::CCObject* sender) = win 0x3e9d90, m1 0x8f898, imac 0x9cd80;
    virtual void valueDidChange(int, float) = win 0x3e9ca0, imac 0x9cc90, m1 0x8f7a4;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = win 0x3e9b00, imac 0x9cb70, m1 0x8f69c;
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

    virtual void determineStartValues() = imac 0x2a73b0, m1 0x24d920;
    virtual void valueDidChange(int, float) = imac 0x2a73c0, m1 0x24d924;
}

[[link(android)]]
class SetTextPopup : FLAlertLayer, TextInputDelegate {
    // virtual ~SetTextPopup();

    static SetTextPopup* create(gd::string value, gd::string placeholder, int maxLength, gd::string title, gd::string okBtnText, bool showResetBtn, float) = win 0x2956b0;

    bool init(gd::string, gd::string, int, gd::string, gd::string, bool, float) = win 0x295820;
    void onCancel(cocos2d::CCObject* sender) = win 0x296250;
    void onClose(cocos2d::CCObject* sender) = win 0x2962e0, m1 0x26d008;
    void onResetValue(cocos2d::CCObject* sender) = win 0x296100;
    void updateTextInputLabel() = win inline, imac 0x257780, m1 0x20427c {
        m_disableDelegate = true;
        m_input->setString(m_value);
        m_disableDelegate = false;
    }

    virtual void keyBackClicked() = win 0x296370, imac 0x29c510, m1 0x243bdc;
    virtual void show() = win 0x8ba30, imac 0x29c4b0, m1 0x243b90;
    virtual void textInputClosed(CCTextInputNode*) = imac 0x29c380, m1 0x243a54;
    virtual void textChanged(CCTextInputNode*) = win 0x296160, imac 0x29c3c0, m1 0x243a70;

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

    virtual void valueDidChange(int, float) = imac 0x2f7bc0, m1 0x2906d4;
}

[[link(android)]]
class SetupAdvFollowPopup : SetupTriggerPopup, SelectPremadeDelegate {
    // virtual ~SetupAdvFollowPopup();

    static SetupAdvFollowPopup* create(AdvancedFollowTriggerObject*, cocos2d::CCArray*);

    bool init(AdvancedFollowTriggerObject*, cocos2d::CCArray*);
    void onMode(cocos2d::CCObject* sender);
    void onPremade(cocos2d::CCObject* sender);
    void updateMode(int);

    virtual void onClose(cocos2d::CCObject* sender) = imac 0x2f64b0, m1 0x28f338;
    virtual void updateDefaultTriggerValues() = imac 0x2f5a40, m1 0x28e8dc;
    virtual void valueDidChange(int, float) = imac 0x2f5b80, m1 0x28ea7c;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x2f5e00, m1 0x28ed0c;
    virtual void selectPremadeClosed(SelectPremadeLayer*, int) = win 0x3edef0, imac 0x2f6030, m1 0x28ef14;
}

[[link(android)]]
class SetupAdvFollowRetargetPopup : SetupTriggerPopup {
    // virtual ~SetupAdvFollowRetargetPopup();

    static SetupAdvFollowRetargetPopup* create(AdvancedFollowEditObject*, cocos2d::CCArray*);

    bool init(AdvancedFollowEditObject*, cocos2d::CCArray*);

    virtual void updateDefaultTriggerValues() = imac 0x2f8480, m1 0x290e1c;
    virtual void valueDidChange(int, float) = imac 0x2f85c0, m1 0x290fbc;
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

    virtual void determineStartValues() = imac 0x3c2b80, m1 0x34befc;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x3c2fa0, m1 0x34c284;
    virtual void textChanged(CCTextInputNode*) = win 0x3f1f20, imac 0x3c2db0, m1 0x34c0dc;
}

[[link(android)]]
class SetupAnimSettingsPopup : SetupTriggerPopup {
    // virtual ~SetupAnimSettingsPopup();

    static SetupAnimSettingsPopup* create(EffectGameObject*, cocos2d::CCArray*);

    bool init(EffectGameObject*, cocos2d::CCArray*);
    TodoReturn updateAnimSettings();

    virtual void onClose(cocos2d::CCObject* sender) = imac 0x9b6d0, m1 0x8e4a4;
}

[[link(android)]]
class SetupAreaAnimTriggerPopup : SetupAreaTintTriggerPopup {
    // virtual ~SetupAreaAnimTriggerPopup();

    static SetupAreaAnimTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*, int);

    TodoReturn createValueControlAdvancedAnim(int, gd::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float min, float max, int, int, GJInputStyle);
    bool init(EnterEffectObject*, cocos2d::CCArray*, int);
    void onDeactivateAnimValue(cocos2d::CCObject* sender);
    TodoReturn updateTargetIDLabel();

    virtual void updateDefaultTriggerValues() = m1 0x42e67c, imac 0x4c8e70;
    virtual void valueDidChange(int, float) = imac 0x4c9010, m1 0x42e838;
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

    virtual void updateInputValue(int, float&) = win 0x3f62b0, imac 0x4c1900, m1 0x428820;
    virtual void updateDefaultTriggerValues() = win 0x3f5be0, m1 0x428410, imac 0x4c1550;
    virtual TodoReturn updateInputNode(int, float) = win 0x3f6280, imac 0x4c18d0, m1 0x4287ec;
    virtual void valueDidChange(int, float) = win 0x3f6100, imac 0x4c1790, m1 0x4286b0;
    virtual TodoReturn triggerValueFromSliderValue(int, float) = win 0x3f6220, imac 0x4c1860, m1 0x428764;
    virtual TodoReturn triggerSliderValueFromValue(int, float) = win 0x3f6250, imac 0x4c18a0, m1 0x4287b8;
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

    virtual void determineStartValues() = win 0x3f8700, m1 0x42babc, imac 0x4c5970;
    virtual void onClose(cocos2d::CCObject* sender) = win 0x3f8a10, imac 0x4c5c70, m1 0x42bdac;
    virtual void valueDidChange(int, float) = win 0x3f8540, imac 0x4c5880, m1 0x42b9cc;
    virtual void hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue) = win 0x3f8920, imac 0x4c5af0, m1 0x42bc00;
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

    virtual void selectArtClosed(SelectArtLayer*) = win 0x459d90, imac 0x56ef30, m1 0x4c39fc;
}

[[link(android)]]
class SetupAudioLineGuidePopup : SetupTriggerPopup, SelectSettingDelegate {
    // virtual ~SetupAudioLineGuidePopup();

    static SetupAudioLineGuidePopup* create(AudioLineGuideGameObject*, cocos2d::CCArray*);

    bool init(AudioLineGuideGameObject*, cocos2d::CCArray*);
    void onSpeed(cocos2d::CCObject* sender);

    virtual void selectSettingClosed(SelectSettingLayer*) = win 0x458060, imac 0x56d430, m1 0x4c22c4;
}

[[link(android)]]
class SetupAudioTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupAudioTriggerPopup();

    TodoReturn addProxVolControls(int);
    TodoReturn addTimeControls(int, float);
    void onProxMode(cocos2d::CCObject* sender);
    TodoReturn updateSpecialGroup();

    virtual void valueDidChange(int, float) = win 0x42e250, imac 0x4a4890, m1 0x40e758;
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

    virtual void determineStartValues() = imac 0x572190, m1 0x4c64d0;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x572430, m1 0x4c6718;
    virtual void textChanged(CCTextInputNode*) = win 0x3fbe80, imac 0x572320, m1 0x4c6630;
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

    virtual void determineStartValues() = m1 0x4030ec, imac 0x496d10;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x497000, m1 0x4033a0;
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

    virtual void determineStartValues() = m1 0x5751d4, imac 0x64d1b0;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x64dce0, m1 0x575be0;
    virtual void textChanged(CCTextInputNode*) = win 0x3ff5b0, imac 0x64d9b0, m1 0x575960;
    virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = win 0x3fecb0, imac 0x64d580, m1 0x5755a4;
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

    virtual void determineStartValues() = m1 0x4141ac, imac 0x4aaf10;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x4ab6d0, m1 0x4148bc;
    virtual void textChanged(CCTextInputNode*) = m1 0x414694, imac 0x4ab460;
    virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = imac 0x4ab190, m1 0x414418;
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

    virtual void determineStartValues() = m1 0x313af0, imac 0x3839b0;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x384040, m1 0x314064;
    virtual void textChanged(CCTextInputNode*) = win 0x401980, imac 0x383d50, m1 0x313df8;
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

    virtual void determineStartValues() = m1 0x24f538, imac 0x2a93a0;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x24fa10, imac 0x2a9930;
    virtual void textChanged(CCTextInputNode*) = win 0x404510, m1 0x24f7ec, imac 0x2a96d0;
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

    virtual void determineStartValues() = m1 0x57ac40, imac 0x653580;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x6538a0, m1 0x57aec0;
    virtual void textInputClosed(CCTextInputNode*) = imac 0x653750, m1 0x57adbc;
    virtual void textChanged(CCTextInputNode*) = win 0x405a20, imac 0x653790, m1 0x57add8;
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

    virtual void determineStartValues() = win 0x408440, m1 0x363e2c, imac 0x3e1990;
    virtual void onClose(cocos2d::CCObject* sender) = win 0x408a20, imac 0x3e1da0, m1 0x36420c;
    virtual void updateInputValue(int, float&) = imac 0x3e1f40, m1 0x364388;
    virtual TodoReturn updateInputNode(int, float) = imac 0x3e1f10, m1 0x364354;
    virtual void valueDidChange(int, float) = win 0x408610, imac 0x3e1b50, m1 0x363f9c;
    virtual TodoReturn triggerValueFromSliderValue(int, float) = imac 0x3e1ea0, m1 0x3642cc;
    virtual TodoReturn triggerSliderValueFromValue(int, float) = imac 0x3e1ee0, m1 0x364320;
    virtual void hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue) = win 0x408930, imac 0x3e1c20, m1 0x364060;
}

[[link(android)]]
class SetupEnterTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupEnterTriggerPopup();

    static SetupEnterTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

    bool init(EnterEffectObject*, cocos2d::CCArray*);
    void onEnterType(cocos2d::CCObject* sender);

    virtual void determineStartValues() = m1 0x232b60, imac 0x289c80;
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

    virtual void valueDidChange(int, float) = imac 0x56e620, m1 0x4c31d4;
}

[[link(android)]]
class SetupGameplayOffsetPopup : SetupTriggerPopup {
    // virtual ~SetupGameplayOffsetPopup();

    static SetupGameplayOffsetPopup* create(EffectGameObject*, cocos2d::CCArray*);

    bool init(EffectGameObject*, cocos2d::CCArray*);
    void onDefaultValues(cocos2d::CCObject* sender);

    virtual void updateInputValue(int, float&) = imac 0x783280, m1 0x6975c0;
    virtual TodoReturn updateInputNode(int, float) = imac 0x783260, m1 0x6975a8;
    virtual TodoReturn triggerValueFromSliderValue(int, float) = m1 0x697558, imac 0x783210;
    virtual TodoReturn triggerSliderValueFromValue(int, float) = imac 0x783240, m1 0x697590;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x783170, m1 0x6974c4;
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

    virtual void determineStartValues() = win 0x409d30, m1 0x50eae4, imac 0x5db9b0;
    virtual void onPlusButton(cocos2d::CCObject* sender) = win 0x409e40, imac 0x5dbad0, m1 0x50ec14;
    virtual TodoReturn updateToggleItem(int, bool) = win 0x409ec0, m1 0x50ec70, imac 0x5dbb20;
    virtual void valueDidChange(int, float) = win 0x40a2d0, imac 0x5dbce0, m1 0x50ee28;
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

    virtual void keyBackClicked() = imac 0x3c6be0, m1 0x34fb40;
    virtual void show() = imac 0x3c6b80, m1 0x34faf4;
    virtual void textInputClosed(CCTextInputNode*) = imac 0x3c6a40, m1 0x34f9f8;
    virtual void textChanged(CCTextInputNode*) = imac 0x3c6a80, m1 0x34fa14;
}

[[link(android)]]
class SetupGravityTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupGravityTriggerPopup();

    static SetupGravityTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

    bool init(EffectGameObject*, cocos2d::CCArray*);

    virtual void valueDidChange(int, float) = imac 0x4b2360, m1 0x41aa4c;
}

[[link(android)]]
class SetupInstantCollisionTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupInstantCollisionTriggerPopup();

    static SetupInstantCollisionTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

    bool init(EffectGameObject*, cocos2d::CCArray*);
    TodoReturn updateSpecialNodes();

    virtual void updateDefaultTriggerValues() = win 0x402a80, imac 0x384d20, m1 0x314b84;
    virtual void valueDidChange(int, float) = win 0x402850, imac 0x384a10, m1 0x314874;
}

[[link(android)]]
class SetupInstantCountPopup : SetupTriggerPopup {
    // virtual ~SetupInstantCountPopup();

    static SetupInstantCountPopup* create(CountTriggerGameObject*, cocos2d::CCArray*) = win 0x40a3e0;

    bool init(CountTriggerGameObject*, cocos2d::CCArray*) = win 0x40a520;
    void onCountType(cocos2d::CCObject* sender);
    void onEnableGroup(cocos2d::CCObject* sender);
    void onTargetCountArrow(cocos2d::CCObject* sender);
    void onTargetID2Arrow(cocos2d::CCObject* sender);
    void onTargetIDArrow(cocos2d::CCObject* sender) = win 0x404480;
    TodoReturn updateCountTextInputLabel();
    void updateItemID();
    TodoReturn updateItemIDInputLabel();
    TodoReturn updateTargetCount();
    TodoReturn updateTargetID();
    TodoReturn updateTargetIDInputLabel();

    virtual void determineStartValues() = m1 0x505c70, imac 0x5d1e60;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x5d2490, m1 0x5061a8;
    virtual void textChanged(CCTextInputNode*) = win 0x40b600, m1 0x505f2c, imac 0x5d21a0;

    CCTextInputNode* m_unk3a8;
    CCTextInputNode* m_unk3b0;
    CCTextInputNode* m_unk3b8;
    int m_itemID;
    int m_targetID;
    int m_targetCount;
    int m_unk3cc;
    int m_mode;
}

[[link(android)]]
class SetupInteractObjectPopup : SetupTriggerPopup {
    // virtual ~SetupInteractObjectPopup();

    static SetupInteractObjectPopup* create(EffectGameObject*, cocos2d::CCArray*);

    bool init(EffectGameObject*, cocos2d::CCArray*);
    TodoReturn updateItems();

    virtual void onClose(cocos2d::CCObject* sender) = m1 0x459164, imac 0x4f8c90;
    virtual void onPlusButton(cocos2d::CCObject* sender) = m1 0x459080, imac 0x4f8ba0;
    virtual void valueDidChange(int, float) = imac 0x4f8be0, m1 0x4590b8;
}

[[link(android)]]
class SetupItemCompareTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupItemCompareTriggerPopup();

    static SetupItemCompareTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);

    bool init(ItemTriggerGameObject*, cocos2d::CCArray*);
    void onOpButton(cocos2d::CCObject* sender);
    TodoReturn updateFormulaLabel();
    TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int);

    virtual void valueDidChange(int, float) = imac 0x56bc60, m1 0x4c0ec0;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x56bb00, m1 0x4c0d68;
}

[[link(android)]]
class SetupItemEditTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupItemEditTriggerPopup();

    static SetupItemEditTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);

    bool init(ItemTriggerGameObject*, cocos2d::CCArray*) = win 0x4524b0;
    void onOpButton(cocos2d::CCObject* sender);
    TodoReturn updateFormulaLabel() = win 0x453d70;
    TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int);

    virtual void valueDidChange(int, float) = imac 0x569910, m1 0x4bee48;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x569730, m1 0x4bec68;
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

    virtual void onClose(cocos2d::CCObject* sender) = imac 0x1f0530, m1 0x1a6b70;
    virtual void onCustomButton(cocos2d::CCObject* sender) = m1 0x1a678c, imac 0x1f0170;
    virtual void valueDidChange(int, float) = imac 0x1efeb0, m1 0x1a64a0;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x1f00e0, m1 0x1a66e8;
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

    virtual void determineStartValues() = m1 0x454b74, imac 0x4f3e30;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x4f4690, m1 0x4552fc;
    virtual void textChanged(CCTextInputNode*) = win 0x4106f0, imac 0x4f4430, m1 0x4550e4;
    virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = imac 0x4f40f0, m1 0x454e00;
}

[[link(android)]]
class SetupMoveCommandPopup : SetupTriggerPopup {
    // virtual ~SetupMoveCommandPopup();

    static SetupMoveCommandPopup* create(EffectGameObject*, cocos2d::CCArray*);

    bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x278ef0;
    TodoReturn updateControlVisibility();

    virtual void updateInputValue(int, float&) = imac 0x5f14b0, m1 0x5212ec;
    virtual TodoReturn updateInputNode(int, float) = imac 0x5f1470, m1 0x5212c0;
    virtual void valueDidChange(int, float) = imac 0x5f14f0, m1 0x521320;
    virtual TodoReturn triggerValueFromSliderValue(int, float) = m1 0x52120c, imac 0x5f1390;
    virtual TodoReturn triggerSliderValueFromValue(int, float) = m1 0x521250, imac 0x5f13e0;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x5f16f0, m1 0x5214f0;
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

    virtual void onPlusButton(cocos2d::CCObject* sender) = m1 0x29e6d0, imac 0x307790;
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

    virtual void keyBackClicked() = imac 0x307100, m1 0x29e140;
    virtual void show() = imac 0x307140, m1 0x29e164;
    virtual void determineStartValues() = win 0x3e7b90, imac 0x306cf0, m1 0x29de90;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x3071a0, m1 0x29e1b0;
}

[[link(android)]]
class SetupObjectTogglePopup : SetupTriggerPopup {
    // virtual ~SetupObjectTogglePopup();

    static SetupObjectTogglePopup* create(EffectGameObject*, cocos2d::CCArray*, bool);

    bool init(EffectGameObject*, cocos2d::CCArray*, bool);

    virtual void onClose(cocos2d::CCObject* sender) = imac 0x363730, m1 0x2f625c;
    virtual void valueDidChange(int, float) = imac 0x3636b0, m1 0x2f61e4;
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

    virtual void determineStartValues() = m1 0x4eb00, imac 0x58d10;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x59310, m1 0x4eff8;
    virtual void textInputClosed(CCTextInputNode*) = imac 0x59070, m1 0x4edb8;
    virtual void textChanged(CCTextInputNode*) = win 0x413910, imac 0x590b0, m1 0x4edd4;
}

[[link(android)]]
class SetupOptionsTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupOptionsTriggerPopup();

    static SetupOptionsTriggerPopup* create(GameOptionsTrigger*, cocos2d::CCArray*);

    TodoReturn addOption(int, gd::string);
    bool init(GameOptionsTrigger*, cocos2d::CCArray*);

    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = win 0x41e5e0, imac 0x5cf6c0, m1 0x503a70;
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

    static SetupPickupTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x41e6b0;

    bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x41e7c0;
    void updateState() = win 0x41eee0;

    virtual void onPlusButton(cocos2d::CCObject* sender) = win 0x40c4d0, m1 0x4f970, imac 0x59e40;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = win 0x41ef50, imac 0x59e80, m1 0x4f9a8;
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

    virtual void keyBackClicked() = imac 0x55a070, m1 0x4b0900;
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

    virtual void show() = imac 0x39cfe0, m1 0x32a494;
    virtual void determineStartValues() = m1 0x329378, imac 0x39bbf0;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x39c800, m1 0x329db0;
    virtual void textChanged(CCTextInputNode*) = win 0x424010, m1 0x32a4f0, imac 0x39d060;
    virtual void colorValueChanged(cocos2d::ccColor3B) = win 0x423d50, imac 0x39c9e0, m1 0x329f3c;
    virtual void textInputOpened(CCTextInputNode*) = imac 0x39d040, m1 0x32a4e8 {}
    virtual void colorSelectClosed(GJSpecialColorSelect*, int) = win 0x4235e0, m1 0x329828, imac 0x39c130;
}

[[link(android)]]
class SetupRandAdvTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupRandAdvTriggerPopup();

    static SetupRandAdvTriggerPopup* create(RandTriggerGameObject*, cocos2d::CCArray*);

    void addChance(int, int);
    void addChanceToObject(RandTriggerGameObject*, int, int);
    void callRemoveFromGroup(float);
    bool init(RandTriggerGameObject*, cocos2d::CCArray*);
    void onAddChance(cocos2d::CCObject* sender);
    void onRemoveFromGroup(cocos2d::CCObject* sender);
    void removeGroupID(int);
    void removeGroupIDFromObject(RandTriggerGameObject*, int);
    void updateGroupIDButtons();

    virtual void onClose(cocos2d::CCObject* sender) = m1 0x30bd78, imac 0x37bfc0;
    virtual void textChanged(CCTextInputNode*) = imac 0x37bfa0, m1 0x30bd70 {}
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

    virtual void determineStartValues() = m1 0x5029d4, imac 0x5ce450;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x502ef4, imac 0x5cea30;
    virtual void textChanged(CCTextInputNode*) = win 0x4287a0, imac 0x5ce740, m1 0x502c5c;
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

    virtual void onClose(cocos2d::CCObject* sender) = imac 0x4a5360, m1 0x40f164;
}

[[link(android)]]
class SetupRotateCommandPopup : SetupTriggerPopup {
    // virtual ~SetupRotateCommandPopup();

    static SetupRotateCommandPopup* create(EffectGameObject*, cocos2d::CCArray*);

    bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x2a05b0;
    void onInfiniteDuration(cocos2d::CCObject* sender);
    void updateControlVisibility() = win 0x2a1a10;

    virtual TodoReturn updateInputNode(int, float) = imac 0x7370, m1 0x9100;
    virtual void valueDidChange(int, float) = imac 0x7380, m1 0x9104;
    virtual TodoReturn triggerValueFromSliderValue(int, float) = m1 0x90d8, imac 0x7320;
    virtual TodoReturn triggerSliderValueFromValue(int, float) = imac 0x7360, m1 0x90fc;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x76c0, m1 0x939c;
}

[[link(android)]]
class SetupRotateGameplayPopup : SetupTriggerPopup {
    // virtual ~SetupRotateGameplayPopup();

    static SetupRotateGameplayPopup* create(RotateGameplayGameObject*, cocos2d::CCArray*);

    bool init(RotateGameplayGameObject*, cocos2d::CCArray*);

    virtual void onPlusButton(cocos2d::CCObject* sender) = m1 0x696bb0, imac 0x782650;
    virtual void valueDidChange(int, float) = imac 0x782690, m1 0x696be8;
}

[[link(android)]]
class SetupRotatePopup : SetupTriggerPopup {
    // virtual ~SetupRotatePopup();

    static SetupRotatePopup* create(EnhancedGameObject*, cocos2d::CCArray*);

    bool init(EnhancedGameObject*, cocos2d::CCArray*);

    virtual void onClose(cocos2d::CCObject* sender) = imac 0x585500, m1 0x4d7250;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x585580, m1 0x4d72cc;
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

    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x4cb900, m1 0x430d00;
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

    static SetupSFXPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*) = win 0x42ecd0, m1 0x40f428;

    TodoReturn createSFXWidget();
    bool init(SFXTriggerGameObject*, cocos2d::CCArray*) = imac 0x57a6c0;
    void onBrowseSFX(cocos2d::CCObject* sender);
    TodoReturn updateLength();

    virtual void pageChanged() = imac 0x4a70a0, m1 0x4108b0;
    virtual void onClose(cocos2d::CCObject* sender) = win 0x4300f0, imac 0x4a7100, m1 0x410908;
    virtual void onPlusButton(cocos2d::CCObject* sender) = imac 0x4a75c0, m1 0x410d48;
    virtual void valueDidChange(int, float) = imac 0x4a74a0, m1 0x410c24;
    virtual void sfxObjectSelected(SFXInfoObject*) = imac 0x4a73c0, m1 0x410b78 {}
    virtual TodoReturn getActiveSFXID() = win 0x4307e0, imac 0x4a73e0, m1 0x410b80;
    virtual TodoReturn overridePlaySFX(SFXInfoObject*) = win 0x4307f0, m1 0x410b90, imac 0x4a7400;
    virtual void sfxBrowserClosed(SFXBrowser*) = win 0x430f10, imac 0x4a7660, m1 0x410df8;
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

    virtual void toggleGroup(int, bool) = m1 0x2621e8, imac 0x2bd860;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x2bd8a0, m1 0x262228;
    virtual void updateDefaultTriggerValues() = m1 0x2618c4, imac 0x2bcfe0;
    virtual void valueDidChange(int, float) = imac 0x2bd520, m1 0x261eac;
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

    virtual void determineStartValues() = m1 0x576d48, imac 0x64efd0;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x64f6b0, m1 0x5773ac;
    virtual void textChanged(CCTextInputNode*) = win 0x43dc20, m1 0x57708c, imac 0x64f330;
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

    virtual void keyBackClicked() = win 0x440590, imac 0x4d4770, m1 0x4384e4;
    virtual void show() = imac 0x4d46e0, m1 0x438480;
    virtual void selectArtClosed(SelectArtLayer*) = win 0x440550, imac 0x4d4740, m1 0x4384cc;
}

[[link(android)]]
class SetupSmartTemplateLayer : FLAlertLayer, TextInputDelegate, FLAlertLayerProtocol {
    // virtual ~SetupSmartTemplateLayer();

    static SetupSmartTemplateLayer* create(GJSmartTemplate*) = win 0x4405a0;

    bool init(GJSmartTemplate*) = win 0x4406b0, imac 0x4d4cb0;
    void onBack(cocos2d::CCObject* sender) = imac 0x4d55a0;
    void onClick(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);

    virtual void keyBackClicked() = win 0x441800, m1 0x4397ec, imac 0x4d5c10;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x441260, imac 0x4d5910, m1 0x439490;
    virtual void textInputOpened(CCTextInputNode*) = win 0x4415a0, imac 0x4d5b30, m1 0x4396e0;
    virtual void textInputClosed(CCTextInputNode*) = win 0x441340, m1 0x439574, imac 0x4d59f0;
    virtual void textChanged(CCTextInputNode*) = imac 0x4d5bf0, m1 0x4397cc;
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

    virtual void pageChanged() = imac 0x2c1500, m1 0x265774;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x265808, imac 0x2c1590;
    virtual void valueDidChange(int, float) = imac 0x2c1400, m1 0x265674;
    virtual TodoReturn onPlayback(SongInfoObject*) = win 0x445150, m1 0x265460, imac 0x2c11c0;
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

    virtual void onClose(cocos2d::CCObject* sender) = imac 0x27f270, m1 0x228ac4;
}

[[link(android)]]
class SetupStaticCameraPopup : SetupTriggerPopup {
    // virtual ~SetupStaticCameraPopup();

    static SetupStaticCameraPopup* create(CameraTriggerGameObject*, cocos2d::CCArray*);

    bool init(CameraTriggerGameObject*, cocos2d::CCArray*);
    TodoReturn updateState();

    virtual void valueDidChange(int, float) = imac 0x388eb0, m1 0x3186e8;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x388f40, m1 0x31877c;
}

[[link(android)]]
class SetupStopTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupStopTriggerPopup();

    static SetupStopTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

    bool init(EffectGameObject*, cocos2d::CCArray*);

    virtual void onClose(cocos2d::CCObject* sender) = imac 0x56f8c0, m1 0x4c4230;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x56f850, m1 0x4c41b8;
}

[[link(android)]]
class SetupTeleportPopup : SetupTriggerPopup {
    // virtual ~SetupTeleportPopup();

    static SetupTeleportPopup* create(TeleportPortalObject*, cocos2d::CCArray*, int, bool);

    bool init(TeleportPortalObject*, cocos2d::CCArray*, int, bool);
    void onTeleportGravity(cocos2d::CCObject* sender);
    TodoReturn updateTeleportGravityState(int);

    virtual void determineStartValues() = imac 0x3470b0, m1 0x2dbc94;
    virtual void updateDefaultTriggerValues() = m1 0x2dbc98, imac 0x3470c0;
    virtual void valueDidChange(int, float) = imac 0x3471c0, m1 0x2dbda4;
}

[[link(android)]]
class SetupTimerControlTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupTimerControlTriggerPopup();

    static SetupTimerControlTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);

    bool init(TimerTriggerGameObject*, cocos2d::CCArray*);

    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x38f420, m1 0x31e1e0;
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

    virtual void determineStartValues() = m1 0x4510fc, imac 0x4efe70;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x4f0000, m1 0x45124c;
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

    virtual void determineStartValues() = m1 0x24cf3c, imac 0x2a6800;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x24d208, imac 0x2a6b40;
    virtual void textChanged(CCTextInputNode*) = win 0x44c620, imac 0x2a6a20, m1 0x24d104;
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

    void addCloseButton(gd::string) = win 0x45c450;
    void addHelpButton(gd::string, gd::string, float) = win 0x45c560;
    void addInfoLabel(gd::string, float, cocos2d::CCPoint, int, int) = win 0x45ed50;
    void addObjectsToGroup(cocos2d::CCArray*, int);
    void addObjectsToPage(cocos2d::CCArray*, int);
    void addObjectToGroup(cocos2d::CCObject*, int);
    void addObjectToPage(cocos2d::CCObject*, int) = win 0x45c2c0;
    void addTitle(gd::string) = win 0x45c350;
    void closeInputNodes();
    void createCustomButton(int, gd::string, gd::string, cocos2d::CCPoint, float, float, bool, int, int) = win 0x45efd0;
    void createCustomEasingControls(gd::string, cocos2d::CCPoint, float, int, int, int, int) = win 0x464b80;
    void createCustomToggleValueControl(int, bool, bool, gd::string, cocos2d::CCPoint, bool, int, int) = win 0x45ead0;
    void createEasingControls(cocos2d::CCPoint, float, int, int) = win 0x463c60;
    void createMultiTriggerItems(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint) = win 0x45cc10;
    void createMultiTriggerItemsCorner() = win 0x45c900;
    void createMultiTriggerItemsDefault() = win 0x45c7f0;
    void createMultiTriggerItemsDefaultHorizontal() = win 0x45cb00;
    void createMultiTriggerItemsDefaultVertical() = win 0x45ca00;
    void createPageButtons(float, int) = win 0x45bb40;
    void createPlusButton(int, cocos2d::CCPoint, float, gd::string, int, int) = win 0x45ee30;
    CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCPoint) = win 0x45c6c0;
    void createToggleValueControl(int, gd::string, cocos2d::CCPoint, bool, int, int, float) = win 0x45e7c0;
    void createToggleValueControlAdvanced(int, gd::string, cocos2d::CCPoint, bool, int, int, float, float, float, cocos2d::CCPoint);
    void createValueControl(int, gd::string, cocos2d::CCPoint, float, float, float) = win 0x45da00;
    void createValueControlAdvanced(int, gd::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float, float, int, int, GJInputStyle, int, bool) = win 0x45daf0;
    void createValueControlWArrows(int, gd::string, cocos2d::CCPoint, float);
    cocos2d::CCArray* getGroupContainer(int);
    float getMaxSliderValue(int);
    float getMinSliderValue(int);
    cocos2d::CCArray* getObjects();
    cocos2d::CCArray* getPageContainer(int);
    float getTriggerValue(int, GameObject*);
    float getTruncatedValue(float, int) = win 0x45f610;
    float getTruncatedValueByTag(int, float);
    void goToPage(int, bool) = win 0x45bed0;
    void hideAll();
    bool init(EffectGameObject*, cocos2d::CCArray*, float, float, int) = win 0x45b7c0, imac 0x2234b0, m1 0x1d62ac;
    void onCustomEaseArrow(int, bool) = win 0x465450;
    void onCustomEaseArrowDown(cocos2d::CCObject* sender) = win 0x465420;
    void onCustomEaseArrowUp(cocos2d::CCObject* sender) = win 0x4653f0;
    void onCustomEaseRate(cocos2d::CCObject* sender) = win 0x4652e0;
    void onDisableValue(cocos2d::CCObject* sender) = win 0x45e6b0;
    void onEase(cocos2d::CCObject* sender) = win 0x464980;
    void onEaseRate(cocos2d::CCObject* sender) = win 0x4649f0;
    void onMultiTrigger(cocos2d::CCObject* sender);
    void onPage(cocos2d::CCObject* sender) = win 0x45bdf0;
    void onSpawnedByTrigger(cocos2d::CCObject* sender) = win 0x45d190;
    void onToggleTriggerValue(cocos2d::CCObject* sender) = win 0x45f580;
    void onTouchTriggered(cocos2d::CCObject* sender) = win 0x45d0a0;
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
    void toggleCustomEaseRateVisibility(int, int) = win 0x4657d0;
    void toggleDisableButtons(bool) = win 0x45e6e0;
    void toggleEaseRateVisibility();
    void toggleLimitValue(int, bool);
    void togglePageArrows(bool);
    void triggerArrowChanged(int, bool) = win 0x45d960;
    void triggerArrowLeft(cocos2d::CCObject*) = win 0x45d900;
    void triggerArrowRight(cocos2d::CCObject*) = win 0x45d930;
    void triggerSliderChanged(cocos2d::CCObject*) = win 0x45d840;
    void updateCustomEaseLabel(int, int) = win 0x4654f0;
    void updateCustomEaseRateLabel(int, float) = win 0x4656c0;
    void updateCustomToggleTrigger(int, bool);
    void updateEaseLabel();
    void updateEaseRateLabel();
    void updateEditorLabel();
    void updateInputNodeLabel(int, gd::string) = win 0x463aa0;
    void updateLabel(int, gd::string);
    void updateMultiTriggerBtn() = win 0x45d280;
    void updateSlider(int, float);
    void updateSlider(int);
    void updateSpawnedByTrigger() = win 0x45d1e0;
    void updateTouchTriggered() = win 0x45d0f0;
    void updateValue(int, float) = win 0x463a10;
    void updateValueControls(int, float) = win 0x45f680;
    void valueChanged(int, float) = win 0x45fc50;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x93d98, imac 0x22e970, m1 0x1df548;
    virtual void keyBackClicked() = win 0x44f090, imac 0x227820, m1 0x1d90f0;
    virtual void show() = win 0x8ba30, imac 0x227660, m1 0x1d8f6c;
    virtual void pageChanged() = imac 0x76f0, m1 0x93bc {}
    virtual void toggleGroup(int group, bool visible) = win 0x45c1d0, imac 0x223fd0, m1 0x1d6ccc;
    virtual void determineStartValues() = win 0x45cf20, imac 0x2251b0, m1 0x1d7d48;
    virtual void onClose(cocos2d::CCObject* sender) = win 0x45d560, m1 0x1d8fb8, imac 0x2276c0;
    virtual void textInputClosed(CCTextInputNode*) = imac 0x225530, m1 0x1d8050;
    virtual void textChanged(CCTextInputNode*) = win 0x45d3a0, m1 0x1d806c, imac 0x225570;
    virtual void textInputShouldOffset(CCTextInputNode*, float) = imac 0x227860, m1 0x1d9114;
    virtual void textInputReturn(CCTextInputNode*) = imac 0x227920, m1 0x1d91e4;
    virtual void updateInputValue(int, float&) = imac 0x76f0, m1 0x93bc {}
    virtual void sliderBegan(Slider*) = win 0x45d6a0, imac 0x2279d0, m1 0x1d929c;
    virtual void sliderEnded(Slider*) = win 0x45d770, imac 0x227ab0, m1 0x1d9374;
    virtual void onPlusButton(cocos2d::CCObject* sender) = imac 0x76f0, m1 0x93bc {}
    virtual void onCustomButton(cocos2d::CCObject* sender) = imac 0x76f0, m1 0x93bc {}
    virtual void updateDefaultTriggerValues() = win 0x45f230, imac 0x229ea0, m1 0x1db728;
    virtual TodoReturn updateInputNode(int, float) = win 0x45f720, imac 0x22c770, m1 0x1dd1b0;
    virtual TodoReturn updateToggleItem(int, bool) = win 0x45fac0, imac 0x22c960, m1 0x1dd3dc;
    virtual void valueDidChange(int, float) = imac 0x76f0, m1 0x93bc {}
    virtual float getValue(int) = win 0x45fb30, imac 0x22ca20, m1 0x1dd494;
    virtual TodoReturn triggerValueFromSliderValue(int, float) = win 0x463b20, m1 0x1dd870, imac 0x22cdd0;
    virtual TodoReturn triggerSliderValueFromValue(int, float) = win 0x463bb0, m1 0x1dd8fc, imac 0x22ce50;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x76f0, m1 0x93bc {}
    virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = win 0x464ac0, imac 0x22da70, m1 0x1de544;

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

    virtual void determineStartValues() = imac 0x30d770, m1 0x2a41dc;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x30d780, m1 0x2a41e0;
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

    static SFXBrowser* create(int id) = win inline, imac 0x42a660, m1 0x3a569c {
        auto ret = new SFXBrowser();
        if (ret->init(id)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool init(int) = win 0x466070, imac 0x42a820, m1 0x3a57e0;
    void onClearSearch(cocos2d::CCObject* sender) = imac 0x42bb30;
    void onClose(cocos2d::CCObject* sender);
    void onCredits(cocos2d::CCObject* sender) = m1 0x3a686c;
    void onExitFolder(cocos2d::CCObject* sender) = win 0x468520, imac 0x42b740, m1 0x3a65f0;
    void onPage(cocos2d::CCObject* sender) = win 0x468280, m1 0x3a6698;
    void onSearch(cocos2d::CCObject* sender) = win 0x467f50;
    void onSorting(cocos2d::CCObject* sender) = win 0x467ca0, imac 0x42b910, m1 0x3a67c0;
    void onToggleCompactMode(cocos2d::CCObject* sender) = win 0x467e40, imac 0x42b960, m1 0x3a6808;
    void onUpdateLibrary(cocos2d::CCObject* sender) = m1 0x3a675c;
    void setupList(SFXSearchResult*) = win 0x467400, imac 0x42bd30, m1 0x3a6be0;
    TodoReturn setupSFXBrowser();
    void trySetupSFXBrowser() = m1 0x3a6abc;
    void updatePageLabel() = win 0x468350, m1 0x3a760c;

    virtual void registerWithTouchDispatcher() = imac 0x42d0c0, m1 0x3a7d88;
    virtual void keyBackClicked() = win 0x4686b0, imac 0x42d020, m1 0x3a7cd8;
    virtual void musicActionFinished(GJMusicAction) = win 0x467220, m1 0x3a7428, imac 0x42c670;
    virtual void musicActionFailed(GJMusicAction) = win 0x4672c0, m1 0x3a74f8, imac 0x42c770;
    virtual void sortSelectClosed(SelectSFXSortLayer*) = win 0x467de0, imac 0x42cb40, m1 0x3a786c;
    virtual void setTextPopupClosed(SetTextPopup*, gd::string) = win 0x4680c0, imac 0x42cdb0, m1 0x3a7a9c;
    virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = win 0x468160, imac 0x42ce70, m1 0x3a7b58;
    virtual int getSelectedCellIdx() = imac 0x42cfe0, m1 0x3a7cb8;
    virtual bool shouldSnapToSelected() = imac 0x42d000, m1 0x3a7cc8;

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
    bool m_autoUpdating;
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

    static SFXFolderObject* create(int p0, gd::string p1, int p2) = win inline {
        auto ret = new SFXFolderObject();
        if (ret->init(p0, p1, p2)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool init(int p0, gd::string p1, int p2) = win inline {
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

    static SFXInfoObject* create(int id, gd::string name, int folderID, int size, int duration) = win inline {
        auto ret = new SFXInfoObject();
        if (ret->init(id, name, folderID, size, duration)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    gd::string getLowerCaseName() = win inline {
        gd::string name = m_name;
        for (int i = 0; i < name.size(); i++) {
            name[i] = tolower(name[i]);
        }
        return name;
    }
    bool init(int id, gd::string name, int folderID, int size, int duration) = win inline, imac 0x580fb0, m1 0x4d3a38 {
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

    static SFXSearchResult* create(int) = win 0x331e80, imac 0x5829a0, m1 0x4d5098;

    SFXFolderObject* getActiveFolder() = win inline {
        return m_folderObject;
    }
    int getSelectedPage(int, int) = win 0x332460, imac 0x61c1f0;
    bool init(int folderID) = win inline, imac 0x582a30, m1 0x4d511c {
        if (!MusicSearchResult::init((GJSongType)-1)) return false;
        m_folderID = folderID;
        m_audioType = 1;
        return true;
    }
    void setActiveFolder(SFXFolderObject* folder) = win inline, imac 0x582a50, m1 0x4d5134 {
        CC_SAFE_RELEASE(m_folderObject);
        CC_SAFE_RETAIN(folder);
        m_folderObject = folder;
    }

    virtual void updateObjects(AudioSortType) = win 0x331f00, imac 0x582ac0, m1 0x4d5194;

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

    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x17c5d4, imac 0x1be8d0;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1b8de0, m1 0x177f38;
}

[[link(android)]]
class ShaderGameObject : EffectGameObject {
    // virtual ~ShaderGameObject();

    static ShaderGameObject* create(char const*);

    bool init(char const*);

    virtual void customSetup() = m1 0x153be4, imac 0x18cf30;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x1577bc, imac 0x191cf0;
    virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x153c3c, imac 0x18cfa0;
}

[[link(android), depends(GJShaderState)]]
class ShaderLayer : cocos2d::CCLayer {
    // virtual ~ShaderLayer();

    static ShaderLayer* create();

    TodoReturn objectPosToShaderPos(cocos2d::CCPoint);
    void performCalculations() = win 0x46fa90, imac 0x3bed10, m1 0x348d98;
    TodoReturn preBulgeShader();
    TodoReturn preChromaticGlitchShader();
    TodoReturn preChromaticShader() = imac 0x3bc830;
    TodoReturn preColorChangeShader() = imac 0x3be810;
    TodoReturn preCommonShader() = imac 0x3b9550;
    TodoReturn preGlitchShader() = imac 0x3bc280;
    TodoReturn preGrayscaleShader() = imac 0x3be2f0;
    TodoReturn preHueShiftShader();
    TodoReturn preInvertColorShader();
    TodoReturn preLensCircleShader() = imac 0x3bd630;
    TodoReturn preMotionBlurShader();
    cocos2d::CCPoint prepareTargetContainer();
    TodoReturn prePinchShader();
    void prePixelateShader();
    TodoReturn preRadialBlurShader() = imac 0x3bd900;
    TodoReturn preSepiaShader();
    TodoReturn preShockLineShader() = imac 0x3bbd60;
    TodoReturn preShockWaveShader() = imac 0x3bb6a0;
    TodoReturn preSplitScreenShader();
    bool resetAllShaders() = win 0x470fb0;
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
    void setupShader(bool) = win 0x469780, imac 0x3b7b80;
    TodoReturn setupShockLineUniforms();
    TodoReturn setupShockWaveUniforms();
    TodoReturn setupSplitScreenShader();
    void toggleAntiAlias(bool) = win 0x46a3b0;
    bool triggerBulge(float, float, float, float, float, int, int, float, bool);
    TodoReturn triggerChromaticGlitch(bool, float, float, float, float, float, float, float, int, float, bool, bool);
    TodoReturn triggerChromaticX(float, float, int, float, bool) = imac 0x3bc7d0;
    TodoReturn triggerChromaticY(float, float, int, float, bool);
    bool triggerColorChange(float, float, float, float, float, float, float, int, float);
    bool triggerGlitch(float, float, float, float, float, float, float, bool);
    bool triggerGrayscale(float, float, bool, int, int, float);
    bool triggerHueShift(float, float, int, float);
    bool triggerInvertColor(float, float, float, float, float, bool, bool, bool, int, float);
    bool triggerLensCircle(float, float, float, float, int, int, float, float, int, float, bool);
    bool triggerMotionBlurX(float, float, float, float, int, float, bool, int, int, float, bool, bool);
    bool triggerMotionBlurY(float, float, float, float, int, float, bool, int, int, float, bool, bool);
    bool triggerPinchX(float, float, float, float, float, bool, int, int, float, bool) = imac 0x3be0a0;
    bool triggerPinchY(float, float, float, float, float, bool, int, int, float, bool);
    bool triggerPixelateX(float, float, bool, bool, int, float, bool) = imac 0x3bce80;
    bool triggerPixelateY(float, float, bool, bool, int, float, bool);
    bool triggerRadialBlur(float, float, float, float, int, float, float, bool, int, int, float, bool);
    bool triggerSepia(float, float, int, float);
    bool triggerShockLine(float, float, bool, bool, bool, bool, float, float, float, float, float, float, int, bool, bool, bool, float, bool, float, int, float) = imac 0x3bbb00;
    bool triggerShockWave(float, float, float, float, float, float, float, bool, float, float, float, int, bool, bool, bool, float, float, bool, float, int, float) = imac 0x3bae00;
    bool triggerSplitScreenCols(float, float, int, float) = imac 0x3bea00;
    bool triggerSplitScreenRows(float, float, int, float);
    TodoReturn tweenValue(float, float, int, float, int, float);
    TodoReturn tweenValueAuto(float, int, float, int, float) = imac 0x3bb080;
    void updateEffectOffsets(cocos2d::CCPoint);
    void updateMotionBlurSpeedX(float, float);
    void updateMotionBlurSpeedY(float, float);
    TodoReturn updateShockLineCenter(cocos2d::CCPoint) = imac 0x3bbd20;
    TodoReturn updateShockWaveCenter(cocos2d::CCPoint) = imac 0x3bb660;
    bool updateZLayer(int, int, bool) = imac 0x3b8460;

    virtual bool init() = win 0x469670, m1 0x342c28, imac 0x3b7ac0;
    virtual void update(float) = win 0x469670, imac 0x3b9340, m1 0x344400;
    virtual void visit() = win 0x470440, imac 0x3bf020, m1 0x349050;

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

    static ShardsPage* create() = win inline {
        auto ret = new ShardsPage();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    void FLAlert_Clicked(FLAlertLayer*, bool);
    void goToPage(int) = imac 0x4b4520, m1 0x41c7f0;
    void onClose(cocos2d::CCObject* sender);
    void onIconInfo(cocos2d::CCObject* sender) = win 0x4744d0, imac 0x4b44b0, m1 0x41c778;
    void onSwitchPage(cocos2d::CCObject* sender);

    virtual bool init() = win 0x4714e0, imac 0x4b28c0, m1 0x41ae70;
    virtual void registerWithTouchDispatcher() = imac 0x4b4870, m1 0x41cb40;
    virtual void keyBackClicked() = imac 0x4b4800, m1 0x41cac4;
    virtual void show() = m1 0x41c93c, imac 0x4b4670;

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
    ShareCommentLayer();

    static ShareCommentLayer* create(gd::string title, int charLimit, CommentType type, int ID, gd::string desc) = win 0x4747f0;

    bool init(gd::string title, int charLimit, CommentType type, int ID, gd::string desc) = win 0x474a00, imac 0x5c78c0, m1 0x4fc394;
    void onClear(cocos2d::CCObject* sender) = win 0x475ae0, imac 0x5c8c10, m1 0x4fd51c;
    void onClose(cocos2d::CCObject* sender) = win 0x475ff0;
    void onPercent(cocos2d::CCObject* sender) = win 0x475b50, imac 0x5c8a80, m1 0x4fd384;
    void onShare(cocos2d::CCObject* sender) = win 0x475c50, imac 0x5c8d00;
    void updateCharCountLabel() = win inline, imac 0x5c94f0, m1 0x4fddd0 {
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
    void updateDescText(gd::string desc) = ios inline, imac 0x5c90e0, m1 0x4fd9b8 {
        m_descText = desc;
        this->updateCharCountLabel();
    }
    void updatePercentLabel() = win 0x475b70, imac 0x5c8b50, m1 0x4fd454;

    virtual void registerWithTouchDispatcher() = imac 0x5c91c0, m1 0x4fda88;
    virtual void keyBackClicked() = win 0x476030, imac 0x5c9110, m1 0x4fd9e0;
    virtual void textInputOpened(CCTextInputNode* textInput) = imac 0x5c9370, m1 0x4fdc4c {}
    virtual void textInputClosed(CCTextInputNode* textInput) = win 0x476080, imac 0x5c9200, m1 0x4fdac0;
    virtual void textChanged(CCTextInputNode* textInput) = win 0x4761c0, imac 0x5c9390, m1 0x4fdc54;
    virtual void uploadActionFinished(int ID, int unk) = win 0x476410, imac 0x5c9600, m1 0x4fdee4;
    virtual void uploadActionFailed(int ID, int unk) = win 0x4764a0, imac 0x5c9700, m1 0x4fe01c;
    virtual void onClosePopup(UploadActionPopup*) = win 0x476550, m1 0x4fe17c, imac 0x5c9820;

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

    static ShareLevelLayer* create(GJGameLevel* level) = win inline, imac 0x26e700 {
        auto ret = new ShareLevelLayer();
        if (ret->init(level)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    CCMenuItemSpriteExtra* getStarsButton(int btnID, cocos2d::SEL_MenuHandler callback, cocos2d::CCMenu* menu, float scale) = win inline {
        auto btnSpr = ButtonSprite::create(cocos2d::CCString::createWithFormat("%i", btnID)->getCString(), 20, 0, .5f, true, "bigFont.fnt", "GJ_button_01.png", 30.f);
        auto btn = CCMenuItemSpriteExtra::create(btnSpr, this, callback);
        btn->setScale(scale);
        btn->m_baseScale = scale;
        if (menu) menu->addChild(btn);
        return btn;
    }
    bool init(GJGameLevel* level) = win 0x4768a0, imac 0x5297a0;
    void onClose(cocos2d::CCObject* sender) = win 0x84620;
    void onSettings(cocos2d::CCObject* sender) = win 0x477b00;
    void onShare(cocos2d::CCObject* sender) = win 0x477c50, imac 0x26f950, m1 0x21abe4;
    void selectRating(cocos2d::CCObject*) = win 0x477970, m1 0x21aed8;
    void setupStars() = win 0x477560, m1 0x21a4b0;

    virtual void keyBackClicked() = win 0x478a70, imac 0x270000, m1 0x21b25c;

    GJGameLevel* m_level;
    int m_starsRequested;
    cocos2d::CCArray* m_starButtons;
    cocos2d::CCSprite* m_difficultySprite;
}

[[link(android)]]
class ShareLevelSettingsLayer : FLAlertLayer, NumberInputDelegate {
    // virtual ~ShareLevelSettingsLayer();
    ShareLevelSettingsLayer() {}

    static ShareLevelSettingsLayer* create(GJGameLevel* level) = win inline, m1 0x21b054 {
        auto ret = new ShareLevelSettingsLayer();
        if (ret->init(level)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool init(GJGameLevel*) = win 0x478ac0, imac 0x270cf0, m1 0x21bdb0;
    void onClose(cocos2d::CCObject* sender) = win 0x479800;
    void onUnlisted(cocos2d::CCObject* sender) = win 0x4794e0, imac 0x2717e0, m1 0x21c838;
    void onUnlistedFriendsOnly(cocos2d::CCObject* sender);
    void updateSettingsState();

    virtual void keyBackClicked() = win 0x479880, imac 0x271ab0, m1 0x21cac8;

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

    static ShareListLayer* create(GJLevelList* list) = win inline, m1 0x2e1adc {
        auto ret = new ShareListLayer();
        if (ret->init(list)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool init(GJLevelList*) = win 0x2f4fb0;
    void onClose(cocos2d::CCObject* sender);
    void onInfo(cocos2d::CCObject* sender) = win 0x2f6150, m1 0x2e441c;
    void onShare(cocos2d::CCObject* sender) = win 0x2f6410, m1 0x2e4308;
    void onUnlisted(cocos2d::CCObject* sender) = win 0x2f62c0, imac 0x3500e0, m1 0x2e44d4;
    void updateUnlistedF() = m1 0x2e45d4;

    virtual void keyBackClicked() = imac 0x3503f0, m1 0x2e479c;

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

    static SimplePlayer* create(int) = win 0x2719a0, m1 0x2eb138;

    void asyncLoadIcon(int, IconType) = m1 0x2f078c;
    void createRobotSprite(int frame) = win inline, imac 0x357c50, m1 0x2eb1f4 {
        if (m_robotSprite) return;
        auto robotSprite = GJRobotSprite::create(frame);
        m_robotSprite = robotSprite;
        addChild(robotSprite);
        m_robotSprite->setVisible(false);
    }
    void createSpiderSprite(int) = win 0x272170, imac 0x357cb0, m1 0x2eb254;
    void disableCustomGlowColor() = win inline, m1 0x2ef0a4, imac 0x35bd70 {
        m_hasCustomGlowColor = false;
    }

    inline void disableGlowOutline() {
        disableCustomGlowColor();
        m_hasGlowOutline = false;
        updateColors();
    }
    void enableCustomGlowColor(cocos2d::ccColor3B const& color) = win inline, m1 0x2ef084, imac 0x35bd40 {
        m_hasCustomGlowColor = true;
        m_glowColor = color;
    }
    void hideAll() = win inline, ios inline, imac 0x35d7c0, m1 0x2f08a4 {
        m_firstLayer->setVisible(false);
        m_secondLayer->setVisible(false);
        if (m_birdDome) m_birdDome->setVisible(false);
        if (m_outlineSprite) m_outlineSprite->setVisible(false);
        if (m_detailSprite) m_detailSprite->setVisible(false);
        if (m_robotSprite) m_robotSprite->setVisible(false);
        if (m_spiderSprite) m_spiderSprite->setVisible(false);
    }
    void hideSecondary() = win inline, imac 0x35d950, m1 0x2f0a48 {
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
    void iconFinishedLoading(int, IconType) = m1 0x2f0968;
    bool init(int) = win 0x271a90, imac 0x35cf90;
    void setColors(cocos2d::ccColor3B const& color1, cocos2d::ccColor3B const& color2) = win inline, ios inline, imac 0x35bd00, m1 0x2ef03c {
        m_firstLayer->setColor(color1);
        m_secondLayer->setColor(color2);
        updateColors();
    }
    void setFrames(char const*, char const*, char const*, char const*, char const*) = win 0x272b20, imac 0x35da00, m1 0x2f0afc;

    inline void setGlowOutline(cocos2d::ccColor3B color) {
        enableCustomGlowColor(color);
        m_hasGlowOutline = true;
        updateColors();
    }
    void setSecondColor(cocos2d::ccColor3B const& color) = win inline {
        m_secondLayer->setColor(color);
        updateColors();
    }
    void updateColors() = win 0x272230, imac 0x35b7c0, m1 0x2eeb78;
    void updatePlayerFrame(int, IconType) = win 0x2725f0, imac 0x357e60, m1 0x2eb418;

    virtual void setOpacity(unsigned char) = win 0x272d50, imac 0x35dc20, m1 0x2f0d24;
    virtual void setColor(cocos2d::ccColor3B const&) = win 0x272200, imac 0x35d8c0, m1 0x2f09b8;

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

    virtual bool init() = imac 0x27cc00, m1 0x2269e0;
    virtual void draw() = imac 0x27d330, m1 0x2270a4;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x27d360, m1 0x2270e0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x27d3c0, m1 0x227100;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x27d380, m1 0x2270f0;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x27d3a0, m1 0x2270f8;
    virtual void registerWithTouchDispatcher() = imac 0x27d030, m1 0x226dc4;
    virtual void keyBackClicked() = imac 0x27d070, m1 0x226dfc;
    virtual void customSetup() = imac 0x27cfb0, m1 0x226d60;
    virtual TodoReturn enterLayer() = imac 0x27d000, m1 0x226d8c;
    virtual TodoReturn exitLayer(cocos2d::CCObject*) = imac 0x27d0b0, m1 0x226e20;
    virtual void showLayer(bool) = m1 0x226e84, imac 0x27d100;
    virtual TodoReturn hideLayer(bool) = m1 0x226f74, imac 0x27d1f0;
    virtual TodoReturn layerVisible() = imac 0x27d2d0, m1 0x227044;
    virtual void layerHidden() = imac 0x27d2f0, m1 0x227054;
    virtual void enterAnimFinished() = imac 0x27d2c0, m1 0x227040;
    virtual void disableUI() = imac 0x27cfc0, m1 0x226d64;
    virtual void enableUI() = imac 0x27cfe0, m1 0x226d78;
}

[[link(android), depends(SliderTouchLogic)]]
class Slider : cocos2d::CCLayer {
    // virtual ~Slider();

    static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler, char const* bar, char const* groove, char const* thumb, char const* thumbSel, float scale) = win 0x71720, imac 0x2f09b0, m1 0x28a7a8;
    static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler) = imac 0x2f0770, m1 0x28a590 {
        return Slider::create(target, handler, 1.f);
    }
    static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler, float scale) = imac 0x2f0890, m1 0x28a694 {
        return Slider::create(target, handler, "sliderBar.png", "slidergroove.png", "sliderthumb.png", "sliderthumbsel.png", scale);
    }

    void disableSlider();
    void disableTouch();
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
    bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float) = win 0x71850, imac 0x2f0ad0, m1 0x28a8b8;
    void setBarVisibility(bool visibility) = win inline {
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
    void setValue(float val) = win 0x71c00, imac 0x2f0e10, m1 0x28abd0;
    TodoReturn sliderBegan();
    TodoReturn sliderEnded();
    void updateBar() {
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

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x71d10, imac 0x2f1110, m1 0x28ae30;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x71d50, imac 0x2f1190, m1 0x28ae70;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x71d30, imac 0x2f1150, m1 0x28ae50;

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

    float getValue() = win 0x712b0, m1 0x2899dc, imac 0x2efa80;
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
    void setValue(float) = win 0x71340, imac 0x2efb20, m1 0x289a60;

    float m_length;
    bool m_vertical;
}

[[link(android), depends(SliderThumb)]]
class SliderTouchLogic : cocos2d::CCMenu {
    // virtual ~SliderTouchLogic();

    static SliderTouchLogic* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float) = imac 0x2efd40;

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

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x714b0, m1 0x28a0c0, imac 0x2f0200;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x715a0, imac 0x2f0430, m1 0x28a2d4;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x71560, m1 0x28a224, imac 0x2f0370;
    virtual void registerWithTouchDispatcher() = imac 0x2f0730, m1 0x28a558;

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

    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1a0c10, m1 0x1635e8;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1a0650, m1 0x1630ec;

    bool m_property157;
    PAD = android32 0x5;
}

[[link(android)]]
class SmartTemplateCell : TableViewCell {
    // virtual ~SmartTemplateCell();
    SmartTemplateCell(char const*, float, float);

    void loadFromObject(GJSmartTemplate*) = win 0xbd8c0;
    void onClick(cocos2d::CCObject* sender);
    void updateBGColor(int) = win 0xbdcb0;

    virtual bool init() = imac 0x247460, m1 0x1f5b98;
    virtual void draw() = imac 0x247530, m1 0x1f5c54;
}

[[link(android)]]
class SongCell : TableViewCell {
    // virtual ~SongCell();
    SongCell(char const*, float, float);

    void loadFromObject(SongObject*) = win 0xb3990;
    void onClick(cocos2d::CCObject* sender);
    TodoReturn updateBGColor(int);

    virtual bool init() = imac 0x242110, m1 0x1f17c0;
    virtual void draw() = imac 0x242150, m1 0x1f17f0;
}

[[link(android)]]
class SongInfoLayer : FLAlertLayer {
    // virtual ~SongInfoLayer();

    static SongInfoLayer* create(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string, int, gd::string, int);
    static SongInfoLayer* create(int);

    bool init(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string, int, gd::string, int) = win 0x47a310;
    void onBPM(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    void onDownload(cocos2d::CCObject* sender);
    void onFB(cocos2d::CCObject* sender);
    void onMenuMusic(cocos2d::CCObject* sender);
    void onNG(cocos2d::CCObject* sender);
    void onPracticeMusic(cocos2d::CCObject* sender);
    void onYT(cocos2d::CCObject* sender);
    void showCustomMusicUnlockInfo();

    virtual void keyBackClicked() = imac 0x5ea6e0, m1 0x51bf54;

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
    static SongInfoObject* create(int songID, gd::string songName, gd::string artistName, int artistID, float filesize, gd::string youtubeVideo, gd::string youtubeChannel, gd::string url, int nongType, gd::string extraArtistIDs, bool isNew, int newType, int priority) = win 0x32ffa0;
    static SongInfoObject* create(int) = win 0x32ee50, imac 0x57f380, m1 0x4d22c4;

    TodoReturn addTags(gd::string);
    TodoReturn containsTag(int);
    TodoReturn createWithCoder(DS_Dictionary*) = win 0x330570;
    TodoReturn getArtistNames(int);
    TodoReturn getTagsString(bool);
    bool init(int songID, gd::string songName, gd::string artistName, int artistID, float filesize, gd::string youtubeVideo, gd::string youtubeChannel, gd::string url, int nongType, gd::string extraArtistIDs, bool isNew, int newType, int priority);
    TodoReturn updateArtists(gd::string);

    virtual void encodeWithCoder(DS_Dictionary*) = win 0x330880, m1 0x4d2e54, imac 0x580170;
    virtual bool canEncode() = imac 0x580330, m1 0x4d2fe8;

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
    bool m_isUnknownSong;
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
    void onSongPersistent(cocos2d::CCObject* sender);
    void updatePlaybackBtn();

    virtual void keyBackClicked() = win 0xc4920, imac 0x205fb0, m1 0x1baeac;
}

[[link(android)]]
class SongPlaybackDelegate {
    virtual TodoReturn onPlayback(SongInfoObject*);
}

[[link(android)]]
class SongSelectNode : cocos2d::CCNode, FLAlertLayerProtocol, CustomSongLayerDelegate, CustomSongDelegate {
    // virtual ~SongSelectNode();

    static SongSelectNode* create(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool) = win 0xc5f80, imac 0x2074f0, m1 0x1bc358;

    void audioNext(cocos2d::CCObject* sender) = win 0xc6ab0, imac 0x207f60, m1 0x1bcdcc;
    void audioPrevious(cocos2d::CCObject* sender) = win 0xc6af0, imac 0x207f20, m1 0x1bcd98;
    bool init(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool) = win 0xc60b0, imac 0x207610, m1 0x1bc468;
    void onOpenCustomSong(cocos2d::CCObject* sender);
    void onSongMode(cocos2d::CCObject* sender) = imac 0x207fa0;
    void onSongMode(int) = win 0xc6b50, imac 0x208070, m1 0x1bceb4;
    void selectSong(int id) = win inline, imac 0x208040 {
        auto songID = id;
        if (songID > 21) songID = 21;
        m_songChanged = true;
        if (songID < 0) songID = 0;
        m_selectedSongID = songID;
        this->updateAudioLabel();
    }
    void showCustomSongSelect() = win 0xc6e80, imac 0x208300, m1 0x1bd104;
    void updateAudioLabel() = win 0xc69c0, imac 0x207e30, m1 0x1bcc80;
    void updateWidgetVisibility() = win 0xc6d70, imac 0x208270, m1 0x1bd07c;

    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xc6fe0, imac 0x208340, m1 0x1bd138;
    virtual void customSongLayerClosed() = win 0xc7070, imac 0x208420, m1 0x1bd220;
    virtual TodoReturn songIDChanged(int) = win 0xc70a0, imac 0x208480, m1 0x1bd288;
    virtual TodoReturn getActiveSongID() = win 0xc70b0, imac 0x2084b0, m1 0x1bd2a8;
    virtual TodoReturn getSongFileName() = win 0xc70c0, imac 0x2084d0, m1 0x1bd2b8;
    virtual LevelSettingsObject* getLevelSettings() = win 0xc7180, imac 0x208620, m1 0x1bd400;

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

    virtual void customSetup() = win 0x47bf10, m1 0x45ba38, imac 0x4fbce0;
}

[[link(android)]]
class SongTriggerGameObject : SFXTriggerGameObject {
    // virtual ~SongTriggerGameObject();

    static SongTriggerGameObject* create(char const*);

    bool init(char const*);

    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x17ddb4, imac 0x1c0080;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1bf780, m1 0x17d648;
}

[[link(android)]]
class SpawnParticleGameObject : EffectGameObject {
    // virtual ~SpawnParticleGameObject();

    static SpawnParticleGameObject* create();

    virtual bool init() = imac 0x1de3d0, m1 0x196ae8;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x1980ac, imac 0x1dfe70;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1de420, m1 0x196b38;
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
    void updateRemapKeys(gd::vector<int> const&) = win 0x4a0460;

    virtual bool init() = imac 0x1c1af0, m1 0x17f4f4;
    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x4a0560, imac 0x1c1e90, m1 0x17f800;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1c2370, m1 0x17fd78;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1c27d0, m1 0x18012c;
}

[[link(android)]]
class SpecialAnimGameObject : EnhancedGameObject {
    // virtual ~SpecialAnimGameObject();

    static SpecialAnimGameObject* create(char const*);

    bool init(char const*);

    virtual void resetObject() = imac 0x1a3260, m1 0x165920;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x16592c, imac 0x1a3280;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1a32e0, m1 0x16598c;
    virtual void updateMainColor(cocos2d::ccColor3B const&) = imac 0x1a3220, m1 0x165900;
    virtual void updateSecondaryColor(cocos2d::ccColor3B const&) = imac 0x1a3240, m1 0x165910;
    virtual void updateSyncedAnimation(float, int) = imac 0x24bd60, m1 0x1f92a4;
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
    TodoReturn offsetCurrentAnimation(float) = imac 0x70e1f0;
    void overridePrio() = win 0x74420;
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
    TodoReturn updateAnimationSpeed(float) = imac 0x70d050;

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

    static StarInfoPopup* create(int, int, int, int, int, int, int, int, int, bool) = win 0x3b0b90, imac 0x7ac760, m1 0x6bde98;
    static StarInfoPopup* createFromString(gd::string) = m1 0x6babac;
    static StarInfoPopup* createFromStringMoons(gd::string) = m1 0x6bae14;

    bool init(int, int, int, int, int, int, int, int, int, bool) = win 0x3b0cd0, imac 0x7ac8f0, m1 0x6bdff0;
    void onClose(cocos2d::CCObject* sender);

    virtual void keyBackClicked() = imac 0x7ad220, m1 0x6be9bc;
}

[[link(android)]]
class StartPosObject : EffectGameObject {
    // virtual ~StartPosObject();

    static StartPosObject* create();

    TodoReturn loadSettingsFromString(gd::string);
    void setSettings(LevelSettingsObject*);

    virtual bool init() = imac 0x1acc70, m1 0x16dbf8;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1acdc0, m1 0x16dd34;
    virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x16dd38, imac 0x1acdd0;

    LevelSettingsObject* m_startSettings;
}

[[link(android)]]
class StatsCell : TableViewCell {
    // virtual ~StatsCell();
    StatsCell(char const*, float, float);

    TodoReturn getTitleFromKey(char const*);
    void loadFromObject(StatsObject*) = win 0xb2630, imac 0x2355c0;
    void updateBGColor(int);

    virtual bool init() = imac 0x2413d0, m1 0x1f09d0;
    virtual void draw() = win 0xad710, imac 0x241ec0, m1 0x1f161c;
}

[[link(android)]]
class StatsLayer : GJDropDownLayer {
    // virtual ~StatsLayer();

    static StatsLayer* create();

    virtual void customSetup() = m1 0x8e708, imac 0x9b9e0;
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
    void onLowDetail(cocos2d::CCObject* sender) = win 0x4b1040;
    void onPrivacy(cocos2d::CCObject* sender);
    void onRequestAccess(cocos2d::CCObject* sender) = win 0x4b0bf0;
    void onRobTop(cocos2d::CCObject* sender);
    void onSFX(cocos2d::CCObject* sender);
    void onTOS(cocos2d::CCObject* sender);
    TodoReturn sendSupportMail();

    virtual void customSetup() = imac 0x3859a0, m1 0x315598;
    virtual void uploadActionFinished(int, int) = win 0x4b0e70, imac 0x387840, m1 0x317344;
    virtual void uploadActionFailed(int, int) = win 0x4b0fb0, imac 0x387990, m1 0x317498;
    virtual void onClosePopup(UploadActionPopup*) = win 0x4b0e30, imac 0x3877f0, m1 0x3172f4;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x4b1c30, imac 0x387cb0, m1 0x3177f0;
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

    static TableView* create(TableViewDelegate* tvd, TableViewDataSource* tvds, TableViewCellDelegate* tvcd, cocos2d::CCRect rect) = win inline, imac 0x609b50, m1 0x536dac {
        auto ret = new TableView(rect);
        ret->m_tableDelegate = tvd;
        ret->m_dataSource = tvds;
        ret->m_cellDelegate = tvcd;
        ret->setPosition({ 0.f, 0.f });
        ret->autorelease();
        return ret;
    }

    void cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn cellForRowAtIndexPath(CCIndexPath&);
    TodoReturn cellForTouch(cocos2d::CCTouch*);
    TodoReturn checkBoundaryOfCell(cocos2d::CCPoint&, float);
    TodoReturn checkBoundaryOfCell(TableViewCell*);
    TodoReturn checkBoundaryOfContent(float);
    TodoReturn checkFirstCell(TableViewCell*);
    TodoReturn checkLastCell(TableViewCell*);
    TodoReturn claimTouch(cocos2d::CCTouch*);
    void deleteTableViewCell(TableViewCell*) = imac 0x60a600, m1 0x53775c;
    TodoReturn dequeueReusableCellWithIdentifier(char const*);
    TodoReturn initTableViewCells();
    bool isDuplicateIndexPath(CCIndexPath&);
    bool isDuplicateInVisibleCellArray(CCIndexPath*);
    void reloadData() = win 0x74d00, imac 0x60a930, m1 0x537a64;
    TodoReturn removeIndexPathFromPathAddedArray(CCIndexPath&);
    TodoReturn scrollToIndexPath(CCIndexPath&);
    TodoReturn touchFinish(cocos2d::CCTouch*);

    virtual void onEnter() = imac 0x60aee0, m1 0x537fbc;
    virtual void onExit() = imac 0x60aef0, m1 0x537fc0;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x75250, m1 0x53813c, imac 0x60b090;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x754e0, m1 0x538ba0, imac 0x60bbc0;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x75400, m1 0x538958, imac 0x60b980;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x75460, imac 0x60bb00, m1 0x538ac4;
    virtual void registerWithTouchDispatcher() = win 0x3e5a0, m1 0x537fc4, imac 0x60af00;
    virtual void scrollWheel(float, float) = win 0x75a90, imac 0x60bcb0, m1 0x538c94;
    virtual void scrllViewWillBeginDecelerating(CCScrollLayerExt*) = imac 0x60c8b0, m1 0x5397f0 {}
    virtual void scrollViewDidEndDecelerating(CCScrollLayerExt*) = imac 0x60c8d0, m1 0x5397f8 {}
    virtual void scrollViewTouchMoving(CCScrollLayerExt*) = imac 0x60c8f0, m1 0x539800 {}
    virtual void scrollViewDidEndMoving(CCScrollLayerExt*) = imac 0x60c910, m1 0x539808 {}

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
    TableViewCell(char const*, float, float) = win 0x76ad0, imac 0x610520, m1 0x53cb04;

    TodoReturn updateVisibility() = imac 0x610ac0;

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

    static TeleportPortalObject* create(char const*, bool) = win 0x499530, imac 0x1ace90, m1 0x16de1c;

    TodoReturn getTeleportXOff(cocos2d::CCNode*) = win 0x4997b0, imac 0x1ad160;
    bool init(char const*, bool) = win 0x48d060;
    void setPositionOverride(cocos2d::CCPoint);
    void setStartPosOverride(cocos2d::CCPoint);

    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x1ad230, m1 0x16e17c;
    virtual void setRotation(float) = m1 0x16e224, imac 0x1ad2e0;
    virtual void setStartPos(cocos2d::CCPoint) = m1 0x16dfe4, imac 0x1ad090;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x170108, imac 0x1af9d0;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1ad430, m1 0x16e388;
    virtual void addToGroup(int) = imac 0x1ad370, m1 0x16e2a0;
    virtual void removeFromGroup(int) = m1 0x16e324, imac 0x1ad3d0;
    virtual void setRotation2(float) = imac 0x1ad340, m1 0x16e294;
    virtual void addToGroup2(int) = imac 0x1ad350, m1 0x16e298;
    virtual void removeFromGroup2(int) = imac 0x1ad360, m1 0x16e29c;

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

    static TextAlertPopup* create(gd::string text, float delay, float scale, int opacity, gd::string font) = win 0x296380;

    bool init(gd::string text, float delay, float scale, int opacity, gd::string font) = win 0x2964b0, imac 0x29c6c0, m1 0x243d80;
    void setAlertPosition(cocos2d::CCPoint windowOffset, cocos2d::CCPoint pointOffset) = win inline, imac 0x29ca10, m1 0x2440c0 {
        if (!m_label) return;
    
        auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
        this->setPosition({
            windowOffset.x * winSize.width + m_width / 2 + pointOffset.x,
            windowOffset.y * winSize.height + m_height / 2 + pointOffset.y
        });
    }
    void setLabelColor(cocos2d::ccColor3B color) = win inline, imac 0x29c9d0, m1 0x244084 {
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

    static TextArea* create(gd::string str, char const* font, float scale, float width, cocos2d::CCPoint anchor, float lineHeight, bool disableColor) = win 0x76e50;

    void colorAllCharactersTo(cocos2d::ccColor3B) = win 0x77600, imac 0x30e550, m1 0x2a4f18;
    void colorAllLabels(cocos2d::ccColor3B) = imac 0x30e600, m1 0x2a4fdc;
    void fadeIn(float, bool) = m1 0x2a4bdc;
    void fadeInCharacters(float, float, bool, TextFadeInStyle);
    void fadeOut(float) = m1 0x2a4dac;
    void fadeOutAndRemove() = imac 0x30e380, m1 0x2a4d3c;
    void finishFade() = win 0x775a0, imac 0x30e350, m1 0x2a4d18;
    void hideAll();
    bool init(gd::string str, char const* font, float scale, float width, cocos2d::CCPoint anchor, float lineHeight, bool disableColor) = m1 0x2a45b4;
    void setIgnoreColorCode(bool) = imac 0x30df90;
    void setString(gd::string) = win 0x77090, m1 0x2a46ac;
    void showAll();
    void stopAllCharacterActions() = win 0x774e0, imac 0x30e080;

    virtual void update(float) = win 0x776b0, imac 0x30e690, m1 0x2a5054;
    virtual void draw() = imac 0x30e680, m1 0x2a5050 {}
    virtual void setOpacity(unsigned char) = win 0x775c0, m1 0x2a4eac, imac 0x30e4e0;

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

    static TextGameObject* create(cocos2d::CCTexture2D*) = win 0x1a4410;

    bool init(cocos2d::CCTexture2D*);
    void updateTextObject(gd::string, bool) = win 0x1a4500, imac 0x5b90d0;

    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x5b9340, m1 0x4ef69c;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x5b9470, m1 0x4ef808;
    virtual void updateTextKerning(int) = imac 0x5b90c0, m1 0x4ef3e8;
    virtual int getTextKerning() = imac 0x5b9e30, m1 0x4f000c;

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

    static TextStyleSection* create(int, int, TextStyleType) = win 0x6d810, imac 0x4767b0;

    static TextStyleSection* createColoredSection(cocos2d::ccColor3B p0, int p1, int p2) = win inline, imac 0x476420 {
        auto ret = TextStyleSection::create(p1, p2, TextStyleType::Colored);
        ret->m_color = p0;
        return ret;
    }
    static TextStyleSection* createDelaySection(int p0, float p1) = win inline, imac 0x4765b0 {
        auto ret = TextStyleSection::create(p0, -1, TextStyleType::Delayed);
        ret->m_delay = p1;
        return ret;
    }
    static TextStyleSection* createInstantSection(int p0, int p1, float p2) = win inline, imac 0x4764a0, m1 0x3e4e04 {
        auto ret = TextStyleSection::create(p0, p1, TextStyleType::Instant);
        ret->m_instantTime = p2;
        return ret;
    }
    static TextStyleSection* createShakeSection(int p0, int p1, int p2, int p3) = win inline, imac 0x476520 {
        auto ret = TextStyleSection::create(p0, p1, TextStyleType::Shake);
        ret->m_shakeIntensity = p2;
        ret->m_shakesPerSecond = p3;
        return ret;
    }
    bool init(int p0, int p1, TextStyleType p2) = win inline, imac 0x476820, m1 0x3e5130 {
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

    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = imac 0x1d17c0, m1 0x18c1c0;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x18da58, imac 0x1d36a0;
    virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x18c2c8, imac 0x1d18d0;
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

    static TopArtistsLayer* create() = win inline {
        auto ret = new TopArtistsLayer();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool isCorrect(char const*);
    void loadPage(int) = win 0x4b2a30, imac 0x2fdf00, m1 0x295fb8;
    void onClose(cocos2d::CCObject* sender) = win 0x84620;
    void onNextPage(cocos2d::CCObject* sender) = win 0x4b2ea0;
    void onPrevPage(cocos2d::CCObject* sender) = win 0x4b2eb0;
    void setupLeaderboard(cocos2d::CCArray*) = win 0x4b2700, m1 0x295728;
    void updateLevelsLabel();

    virtual bool init() = win 0x4b1ef0, m1 0x294f90, imac 0x2fcde0;
    virtual void registerWithTouchDispatcher() = imac 0x2fd790, m1 0x2958d0;
    virtual void keyBackClicked() = win 0x84650, imac 0x2fd720, m1 0x295854;
    virtual void show() = imac 0x2fe300, m1 0x2963a8;
    virtual void loadListFinished(cocos2d::CCArray*, char const*) = win 0x4b2690, imac 0x2fd7e0, m1 0x295910;
    virtual void loadListFailed(char const*) = win 0x4b26f0, imac 0x2fd8a0, m1 0x2959d4;
    virtual void setupPageInfo(gd::string, char const*) = win 0x4b2850, imac 0x2fd8e0, m1 0x2959fc;

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

    virtual bool init() = win 0x296810, m1 0x2442a0, imac 0x29ccb0;
    virtual void keyBackClicked() = imac 0x29d330, m1 0x2448ec {}
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

    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = imac 0x1c8220, m1 0x184bcc;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x184bf0, imac 0x1c8250;
    virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x184eb8, imac 0x1c8630;
}

[[link(android)]]
class TriggerControlGameObject : EffectGameObject {
    // virtual ~TriggerControlGameObject();

    static TriggerControlGameObject* create(char const*);

    bool init(char const*);
    TodoReturn updateTriggerControlFrame();

    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = imac 0x1de2d0, m1 0x1969f4;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1de080, m1 0x19679c;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1dd780, m1 0x195ffc;
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

    void loadPage(int);
    void onClose(cocos2d::CCObject* sender);
    void onNext(cocos2d::CCObject* sender);
    void removeTutorialTexture();

    virtual bool init() = imac 0x4c9320, m1 0x42eaa0;
    virtual void keyBackClicked() = win 0x4b3ca0, imac 0x4c9d60, m1 0x42f52c;
}

[[link(android)]]
class TutorialPopup : FLAlertLayer {
    // virtual ~TutorialPopup();

    static TutorialPopup* create(gd::string);

    TodoReturn animateMenu();
    TodoReturn closeTutorial(cocos2d::CCObject*);
    bool init(gd::string);
    TodoReturn registerForCallback(cocos2d::SEL_MenuHandler, cocos2d::CCNode*);

    virtual void keyBackClicked() = imac 0x5bbea0, m1 0x4f1b1c;
    virtual void show() = m1 0x4f1bf0, imac 0x5bbf70;
}

[[link(android)]]
class UIButtonConfig {
    TodoReturn reset() = win 0x1779e0;
    TodoReturn resetOneBtn();

    PAD = win 0x28, android32 0x28, android64 0x28;
}

[[link(android)]]
class UILayer : cocos2d::CCLayerColor {
    // virtual ~UILayer();
    // UILayer() = ios 0x51948;

    static UILayer* create(GJBaseGameLayer*) = imac 0x4b4910, m1 0x41cbdc;

    void disableMenu();
    TodoReturn doPause();
    TodoReturn editorPlaytest(bool);
    void enableEditorMode();
    TodoReturn enableMenu();
    void handleKeypress(cocos2d::enumKeyCodes, bool) = win 0x4b4b00, imac 0x4b5e10, m1 0x41df94;
    bool init(GJBaseGameLayer*) = win 0x4b3de0, m1 0x41ccdc;
    bool isJumpButtonPressed(bool) = imac 0x4b67c0, m1 0x41e6b0;
    void onCheck(cocos2d::CCObject* sender);
    void onDeleteCheck(cocos2d::CCObject* sender);
    void onPause(cocos2d::CCObject* sender) = win 0x4b5280, m1 0x41d4b4;
    void processUINodesTouch(GJUITouchEvent, cocos2d::CCTouch*);
    void processUINodeTouch(GJUITouchEvent, int, cocos2d::CCPoint, GJUINode*) = win 0x4b5790;
    TodoReturn refreshDpad();
    void resetAllButtons() = m1 0x41e5cc;
    void resetUINodeState() = win 0x4b4960, m1 0x41dbd8;
    TodoReturn toggleCheckpointsMenu(bool);
    void toggleMenuVisibility(bool) = m1 0x41e49c;
    void togglePlatformerMode(bool);
    TodoReturn updateCheckState();
    TodoReturn updateDualMode(bool);
    TodoReturn updateUINodeVisibility(bool);

    virtual void draw() = imac 0x4b67b0, m1 0x41e6ac {}
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x4b5460, m1 0x41e6fc, imac 0x4b6800;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x4b55f0, m1 0x41e958, imac 0x4b69e0;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x4b5610, imac 0x4b6ae0, m1 0x41ea8c;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4b7320, m1 0x41f39c;
    virtual void registerWithTouchDispatcher() = imac 0x4b7360, m1 0x41f3b8;
    virtual void keyBackClicked() = win 0x4b51c0, m1 0x41e2c0, imac 0x4b6390;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x4b51a0, imac 0x4b62f0, m1 0x41e280;
    virtual void keyUp(cocos2d::enumKeyCodes) = win 0x4b51b0, imac 0x4b6340, m1 0x41e2a0;

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

    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x566c60, m1 0x4bc414;
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

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x29c520, imac 0x2a1d50, m1 0x248a78;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x29c670, imac 0x2a1f20, m1 0x248c38;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x29c7a0, imac 0x2a20c0, m1 0x248e24;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x2a2200, m1 0x248f5c;
    virtual void registerWithTouchDispatcher() = imac 0x2a2240, m1 0x248f78;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x248458, imac 0x2a15d0;
    virtual void valueDidChange(int, float) = imac 0x2a1760, m1 0x2485a8;
    virtual float getValue(int) = imac 0x2a1a70, m1 0x24880c;
}

[[link(android)]]
class UIPOptionsLayer {
    // virtual ~UIPOptionsLayer();

    static UIPOptionsLayer* create();

    TodoReturn getTouchRect();
    void onReset(cocos2d::CCObject* sender);

    virtual bool init();
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

    virtual bool init() = imac 0x1cb740, m1 0x1876cc;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1cc680, m1 0x18836c;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1cb790, m1 0x18771c;
}

[[link(android)]]
class UndoObject : cocos2d::CCObject {
    UndoObject() {
        m_objectCopy = nullptr;
        m_objects = nullptr;
        // some of the floats are set to 1.0 but idk which who cares
    }
    virtual ~UndoObject() {
        if (m_objectCopy) m_objectCopy->release();
        if (m_objects) m_objects->release();
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
    bool init(GameObject*, UndoCommand) = win 0x2daf20;
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

    virtual void keyBackClicked() = win 0x28d9f0, imac 0x290b50, m1 0x238f60;
    virtual TodoReturn updateSettingsFinished() = win 0x28d670, imac 0x290940, m1 0x238d5c;
    virtual TodoReturn updateSettingsFailed() = win 0x28d770, imac 0x290a60, m1 0x238e74;
}

[[link(android)]]
class UploadActionDelegate {
    virtual void uploadActionFinished(int, int) {}
    virtual void uploadActionFailed(int, int) {}
}

[[link(android)]]
class UploadActionPopup : FLAlertLayer {
    // virtual ~UploadActionPopup();

    static UploadActionPopup* create(UploadPopupDelegate* delegate, gd::string str) = win 0x28da00;

    void closePopup() = win inline {
        this->setKeypadEnabled(false);
        this->removeFromParentAndCleanup(true);
    }
    bool init(UploadPopupDelegate* delegate, gd::string str) = win 0x28db40, imac 0x290e50, m1 0x2391e8;
    void onClose(cocos2d::CCObject* sender) = win 0x28e1b0;
    void showFailMessage(gd::string message) = win 0x28e0b0;
    void showSuccessMessage(gd::string message) = win 0x28dfa0;

    virtual void keyBackClicked() = win 0x28e200, imac 0x291600, m1 0x23995c;

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

    bool init(GJLevelList*) = win 0x2f6660;
    void onBack(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    void onReturnToList(cocos2d::CCObject* sender);

    virtual void keyBackClicked() = imac 0x351250, m1 0x2e54b8 {}
    virtual void show() = imac 0x3511e0, m1 0x2e5458;
    virtual void listUploadFinished(GJLevelList*) = win 0x2f6ba0, imac 0x350ce0, m1 0x2e4f5c;
    virtual void listUploadFailed(GJLevelList*, int) = win 0x2f6d70, imac 0x350f00, m1 0x2e5160;
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

    virtual void keyBackClicked() = imac 0x270c40, m1 0x21bd6c {}
    virtual void show() = win 0x2f7100, imac 0x270bd0, m1 0x21bd0c;
    virtual void levelUploadFinished(GJGameLevel*) = win 0x4785d0, imac 0x270770, m1 0x21b8dc;
    virtual void levelUploadFailed(GJGameLevel*) = win 0x4787a0, imac 0x2709c0, m1 0x21bb14;
}

[[link(android)]]
class UploadPopupDelegate {
    virtual void onClosePopup(UploadActionPopup*) {}
}

[[link(android)]]
class URLCell : TableViewCell {
    // virtual ~URLCell();
    URLCell(char const*, float, float);

    void loadFromObject(CCURLObject*) = win 0xbf530, imac 0x2360b0;
    void onURL(cocos2d::CCObject* sender);
    TodoReturn updateBGColor(int);

    virtual bool init() = imac 0x247c70, m1 0x1f61c0;
    virtual void draw() = imac 0x247ce0, m1 0x1f6230;
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

    static VideoOptionsLayer* create();

    CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float, bool, cocos2d::CCArray*);
    void onAdvanced(cocos2d::CCObject* sender);
    void onApply(cocos2d::CCObject* sender) = imac 0x78a6d0;
    void onBorderless(cocos2d::CCObject* sender);
    void onBorderlessFix(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    void onFullscreen(cocos2d::CCObject* sender);
    void onInfo(cocos2d::CCObject* sender);
    void onResolutionNext(cocos2d::CCObject* sender);
    void onResolutionPrev(cocos2d::CCObject* sender);
    void onTextureQualityNext(cocos2d::CCObject* sender);
    void onTextureQualityPrev(cocos2d::CCObject* sender);
    void reloadMenu();
    void toggleResolution();
    void updateResolution(int);
    void updateTextureQuality(int);

    virtual bool init() = imac 0x789280, m1 0x69d144;
    virtual void keyBackClicked() = win 0x362b40, imac 0x78af30, m1 0x69ec48;

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

    virtual void keyBackClicked() = imac 0x3b3de0, m1 0x33f4f8;
    virtual void show() = m1 0x33f3b0, imac 0x3b3ca0;

    GJWorldNode* m_worldNode;
    GJGameLevel* m_level;
}

[[link(android)]]
class WorldSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate {
    // virtual ~WorldSelectLayer();

    static WorldSelectLayer* create(int);
    static cocos2d::CCScene* scene(int);

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
    TodoReturn setupWorlds();
    void showCompleteDialog();
    TodoReturn tryShowAd();
    void unblockButtons();
    void updateArrows();

    virtual void onExit() = imac 0x3b0cc0, m1 0x33c6c0;
    virtual void keyBackClicked() = imac 0x3b0be0, m1 0x33c5e0;
    virtual void scrollLayerWillScrollToPage(BoomScrollLayer*, int) = imac 0x3b0af0, m1 0x33c498;
    virtual void scrollLayerScrolledToPage(BoomScrollLayer*, int) = imac 0x3b0a00, m1 0x33c350;
    virtual void scrollLayerMoved(cocos2d::CCPoint) = imac 0x3b0d10, m1 0x33c710;

    cocos2d::CCSprite* m_background;
    BoomScrollLayer* m_scrollLayer;
    CCMenuItemSpriteExtra* m_arrowLeft;
    CCMenuItemSpriteExtra* m_arrowRight;
    bool m_cleanupSprites;
    bool m_unkBool1;
    GJWorldNode* m_worldNode;
    bool m_unkBool2;
}

