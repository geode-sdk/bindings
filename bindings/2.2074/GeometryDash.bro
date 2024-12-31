[[link(android)]]
class AccountHelpLayer : GJDropDownLayer, GJAccountDelegate, FLAlertLayerProtocol {
    // virtual ~AccountHelpLayer();

    static AccountHelpLayer* create() = m1 0xb7368, imac 0xce580;

    virtual void customSetup() = win 0x7f5c0, m1 0xb77d4, imac 0xceb60, ios 0x16a644;
    virtual void layerHidden() = imac 0xcf810, m1 0xb844c, ios 0x16b0cc;
    virtual void accountStatusChanged() = win 0x7fcc0, imac 0xcf6d0, m1 0xb8300, ios 0x16b018;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x7ffa0, imac 0xcf700, m1 0xb830c, ios 0x16b024;

    void doUnlink();
    void exitLayer();
    void onAccountManagement(cocos2d::CCObject* sender) = m1 0xb7bf0, imac 0xcefa0, win 0x7fa10;
    void onReLogin(cocos2d::CCObject* sender);
    void onUnlink(cocos2d::CCObject* sender) = m1 0xb7cc4, imac 0xcf070, win 0x7fb20;
    void updatePage() = m1 0xb7e88, imac 0xcf230, win 0x7fcd0;
    void verifyUnlink() = m1 0xb81d4, imac 0xcf580;

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

    virtual void customSetup() = win 0x7d6c0, m1 0xb530c, imac 0xcc490, ios 0x168d38;
    virtual void layerHidden() = win 0x7f450, imac 0xce520, m1 0xb72fc, ios 0x16a450;
    virtual void backupAccountFinished() = win 0x7eb30, imac 0xcda30, m1 0xb6888, ios 0x169d60;
    virtual void backupAccountFailed(BackupAccountError, int) = win 0x7ece0, imac 0xcdbf0, m1 0xb6a48, ios 0x169e94;
    virtual void syncAccountFinished() = win 0x7eff0, imac 0xcdfd0, m1 0xb6dd8, ios 0x16a100;
    virtual void syncAccountFailed(BackupAccountError, int) = win 0x7f1b0, imac 0xce150, m1 0xb6f40, ios 0x16a234;
    virtual void accountStatusChanged() = win 0x7e750, imac 0xcda00, m1 0xb6874, ios 0x169d4c;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x7f340, imac 0xce400, m1 0xb71cc, ios 0x16a3b4;

    TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
    void doBackup() = win inline, m1 0xb6708, imac 0xcd8a0 {
        this->updatePage(false);
        if (!GJAccountManager::sharedState()->getAccountBackupURL()) this->backupAccountFailed((BackupAccountError)-1, 0);
        else this->showLoadingUI();
    }
    void doSync() = win inline, m1 0xb67e4, imac 0xcd970 {
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
    void onBackup(cocos2d::CCObject* sender) = m1 0xb5a14, imac 0xccbf0;
    void onHelp(cocos2d::CCObject* sender) = m1 0xb5f34, imac 0xcd130;
    void onLogin(cocos2d::CCObject* sender);
    void onMore(cocos2d::CCObject* sender);
    void onRegister(cocos2d::CCObject* sender) = win 0x7de50;
    void onSync(cocos2d::CCObject* sender) = m1 0xb5d2c, imac 0xccf40;
    void showLoadingUI() {
        this->toggleUI(false);
        m_loadingCircle->setVisible(true);
    }
    void toggleUI(bool enable) {
        m_buttonMenu->setEnabled(enable);
        this->setKeypadEnabled(enable);
    }
    void updatePage(bool) = win 0x7e760, m1 0xb601c, imac 0xcd210;

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

    virtual void registerWithTouchDispatcher() = imac 0x487a60, m1 0x3f4ff4, ios 0x88580;
    virtual void keyBackClicked() = win 0x7cfa0, m1 0x3f4ea4, imac 0x487920, ios 0x88494;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x7cb50, imac 0x487760, m1 0x3f4c90, ios 0x8839c;
    virtual void textInputOpened(CCTextInputNode*) = m1 0x3f51c4, imac 0x487c10, ios 0x886e8 {}
    virtual void textInputClosed(CCTextInputNode*) = win 0x7d070, m1 0x3f502c, imac 0x487aa0, ios 0x885b8;
    virtual void textChanged(CCTextInputNode*) = m1 0x3f51cc, imac 0x487c30, ios 0x886f0 {}
    virtual void loginAccountFinished(int, int) = win 0x7c740, m1 0x3f45bc, imac 0x4870a0, ios 0x87ee8;
    virtual void loginAccountFailed(AccountError) = win 0x7c990, imac 0x487430, m1 0x3f493c, ios 0x880f8;

    TodoReturn createTextBackground(cocos2d::CCPoint, char const*, cocos2d::CCSize);
    TodoReturn createTextInput(cocos2d::CCPoint, cocos2d::CCSize, char const*, int);
    TodoReturn createTextLabel(cocos2d::CCPoint, char const*, cocos2d::CCSize);
    void disableNodes();
    void hideLoadingUI();
    bool init(gd::string) = win 0x7b8d0, m1 0x3f32c0, imac 0x485ce0;
    void onClose(cocos2d::CCObject* sender);
    void onForgotPassword(cocos2d::CCObject* sender) = imac 0x487080, win 0x7c490;
    void onForgotUser(cocos2d::CCObject* sender) = imac 0x487060, win 0x7c470;
    void onSubmit(cocos2d::CCObject* sender) = win 0x7cbc0;
    void resetLabel(int);
    void resetLabels();
    void showLoadingUI();
    void toggleUI(bool);
    void updateLabel(AccountError) = m1 0x3f49d0, imac 0x4874c0;

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

    virtual bool init() = imac 0x482340, m1 0x3eff58, ios 0x84fd8;
    virtual void registerWithTouchDispatcher() = imac 0x484e70, m1 0x3f2690, ios 0x868d0;
    virtual void keyBackClicked() = win 0x7abf0, m1 0x3f248c, imac 0x484ca0, ios 0x8678c;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x7a200, imac 0x4847f0, m1 0x3f2048, ios 0x8665c;
    virtual void textInputOpened(CCTextInputNode*) = m1 0x3f2e68, imac 0x485780, ios 0x86e74 {}
    virtual void textInputClosed(CCTextInputNode*) = win 0x7ad50, imac 0x484eb0, m1 0x3f26c8, ios 0x86908;
    virtual void textChanged(CCTextInputNode*) = m1 0x3f2e70, imac 0x4857a0, ios 0x86e7c {}
    virtual void textInputShouldOffset(CCTextInputNode*, float) = win 0x7b5c0, m1 0x3f2e78, imac 0x4857c0, ios 0x86e84;
    virtual void textInputReturn(CCTextInputNode*) = win 0x7b620, m1 0x3f2f48, imac 0x485880, ios 0x86ef0;
    virtual bool allowTextInput(CCTextInputNode*) = win 0x7b670, imac 0x485930, m1 0x3f3000, ios 0x86f50;
    virtual void registerAccountFinished() = win 0x79c90, imac 0x484040, m1 0x3f1894, ios 0x86168;
    virtual void registerAccountFailed(AccountError) = win 0x79eb0, m1 0x3f1a3c, imac 0x4841f0, ios 0x86298;

    cocos2d::extension::CCScale9Sprite* createTextBackground(cocos2d::CCPoint, cocos2d::CCSize);
    CCTextInputNode* createTextInput(cocos2d::CCPoint, cocos2d::CCSize, gd::string, int);
    cocos2d::CCLabelBMFont* createTextLabel(cocos2d::CCPoint, gd::string, cocos2d::CCSize);
    void disableNodes();
    void hideLoadingUI();
    void onClose(cocos2d::CCObject* sender);
    void onSubmit(cocos2d::CCObject* sender);
    void resetLabel(int) = imac 0x484700, m1 0x3f1f50;
    void resetLabels() = imac 0x4845e0, m1 0x3f1e20;
    void showLoadingUI();
    void toggleUI(bool);
    void updateLabel(AccountError) = m1 0x3f1b0c, imac 0x4842c0;
    bool validEmail(gd::string);
    bool validPassword(gd::string);
    bool validUser(gd::string);

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

    virtual void setOpacity(unsigned char) = win 0x81ea0, imac 0x602ea0, m1 0x53086c, ios 0x26ab9c;

    bool init(char const* title, char const* desc, char const* icon, bool quest) = win 0x80670, m1 0x52f0fc, imac 0x6015e0;
    void show() = win 0x81c20;

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

    virtual bool init() = m1 0x1ec614, imac 0x23c930, ios 0x10ebb4;
    virtual void draw() = imac 0x23c940, m1 0x1ec61c, ios 0x10ebbc;

    void loadFromDict(cocos2d::CCDictionary*) = win 0xac150, imac 0x230eb0, m1 0x1e0ec4;
    void updateBGColor(int);
}

[[link(android)]]
class AchievementManager : cocos2d::CCNode {
    // virtual ~AchievementManager();

    static AchievementManager* sharedState() = win 0x7da0, imac 0x715690, m1 0x633e04;

    virtual bool init() = win 0x7e60, m1 0x633ef4, imac 0x7157a0, ios 0xb9ecc;

    gd::string achievementForUnlock(int, UnlockType) = win 0x3a1c0, imac 0x76ef60, m1 0x682554;
    void addAchievement(gd::string, gd::string, gd::string, gd::string, gd::string, int) = win 0x7ef0;
    void addManualAchievements() = win 0x8410, m1 0x633f7c, imac 0x715830;
    TodoReturn areAchievementsEarned(cocos2d::CCArray*);
    TodoReturn checkAchFromUnlock(char const*);
    void dataLoaded(DS_Dictionary*) = imac 0x76ea20;
    void encodeDataTo(DS_Dictionary*) = imac 0x76ea90;
    void firstSetup();
    TodoReturn getAchievementRewardDict();
    cocos2d::CCDictionary* getAchievementsWithID(char const*) = win 0x39d70, imac 0x76ed50;
    cocos2d::CCArray* getAllAchievements();
    cocos2d::CCArray* getAllAchievementsSorted(bool);
    bool isAchievementAvailable(gd::string);
    bool isAchievementEarned(char const* ach) = win 0x39a70, imac 0x76ec00, m1 0x682198;
    int limitForAchievement(gd::string id) = win inline, imac 0x76eec0, m1 0x68248c {
        if (auto achievements = getAchievementsWithID(id.c_str())) {
            if (auto limits = static_cast<cocos2d::CCString*>(achievements->objectForKey("limits"))) return limits->intValue();
        }
        return 0;
    }
    TodoReturn notifyAchievement(char const*, char const*, char const*);
    TodoReturn notifyAchievementWithID(char const*);
    TodoReturn percentageForCount(int, int);
    int percentForAchievement(char const*) = win 0x39a90, m1 0x6821b4, imac 0x76ec20;
    void reportAchievementWithID(char const*, int, bool) = m1 0x682d28, imac 0x76f830;
    void reportPlatformAchievementWithID(char const*, int);
    void resetAchievement(char const*);
    TodoReturn resetAchievements();
    TodoReturn setup();
    void storeAchievementUnlocks();

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

    static AchievementNotifier* sharedState() = win 0x3ab20, m1 0x6beb0c, imac 0x7ad380;

    virtual bool init() = m1 0x6beb88, imac 0x7ad410, ios 0x21727c;

    void achievementDisplayFinished();
    void notifyAchievement(char const* title, char const* desc, char const* icon, bool quest) = win 0x3ac00, imac 0x7ad440, m1 0x6bebb4;
    void showNextAchievement() = win 0x3ace0;
    void willSwitchToScene(cocos2d::CCScene* scene) = win inline, imac 0x7ad5f0, m1 0x6bed64 {
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

    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x82260, imac 0x360030, m1 0x2f3078, ios 0x41a244;
    virtual void customSetup() = win 0x81fb0, m1 0x2f2c18, imac 0x35fb70, ios 0x419c40;

    void loadPage(int) = win 0x82300, imac 0x35fe50;
    void onNextPage(cocos2d::CCObject* sender) = win 0x824e0;
    void onPrevPage(cocos2d::CCObject* sender) = win 0x824f0;
    void setupLevelBrowser(cocos2d::CCArray* arr) = win inline {
        m_listLayer->removeChildByTag(9, true);
        auto* listView = CustomListView::create(arr, BoomListType::Default, 220.f, 356.f);
        listView->setTag(9);
        m_listLayer->addChild(listView, 6);
    }
    void setupPageInfo(int, int, int);

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

    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x19d870, m1 0x160b78, ios 0x378a1c;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x19c8a0, m1 0x15fef0, ios 0x37865c;

    bool init(char const*);
}

[[link(android)]]
class AdvancedFollowTriggerObject : EffectGameObject {
    // virtual ~AdvancedFollowTriggerObject();
    // AdvancedFollowTriggerObject();

    static AdvancedFollowTriggerObject* create(char const*);

    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x19b5d0, m1 0x15ee0c, ios 0x377698;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x192350, m1 0x157e00, ios 0x375858;

    int getAdvancedFollowID();
    bool init(char const*);
}

[[link(android)]]
class AdvFollowSetup {
    // ~AdvFollowSetup();
}

[[link(android)]]
class AnimatedGameObject : EnhancedGameObject, AnimatedSpriteDelegate, SpritePartDelegate {
    // virtual ~AnimatedGameObject();

    static AnimatedGameObject* create(int);

    virtual void setOpacity(unsigned char) = win 0x48b5e0, m1 0x168658, imac 0x1a64b0, ios 0x37cdc0;
    virtual void setChildColor(cocos2d::ccColor3B const&) = m1 0x16a064, imac 0x1a80d0, ios 0x37de10;
    virtual void resetObject() = imac 0x1a8060, m1 0x16a004, ios 0x37ddb8;
    virtual void activateObject() = m1 0x16855c, imac 0x1a63a0, ios 0x37cce0;
    virtual void deactivateObject(bool) = imac 0x1a63e0, m1 0x1685a0, ios 0x37cd24;
    virtual void setObjectColor(cocos2d::ccColor3B const&) = imac 0x1a6590, m1 0x168724, ios 0x37ce8c;
    virtual void animationFinished(char const*) = win 0x48b6f0, imac 0x1a65c0, m1 0x168758, ios 0x37cec0;
    virtual void displayFrameChanged(cocos2d::CCObject*, gd::string) = win 0x48c9d0, imac 0x1a7930, m1 0x169858, ios 0x37d924;

    TodoReturn animationForID(int, int) = m1 0x169d08;
    TodoReturn getTweenTime(int, int);
    bool init(int) = m1 0x16773c, imac 0x1a5560;
    TodoReturn playAnimation(int);
    TodoReturn setupAnimatedSize(int);
    TodoReturn setupChildSprites() = m1 0x167a68, imac 0x1a58c0;
    TodoReturn updateChildSpriteColor(cocos2d::ccColor3B);
    TodoReturn updateObjectAnimation();
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

    static AnimatedShopKeeper* create(ShopType type) = win inline, imac 0x3101f0, m1 0x2a6b1c {
        auto ret = new AnimatedShopKeeper();
        if (ret->init(type)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual void animationFinished(char const*) = win 0x2a8840, imac 0x314230, m1 0x2aa490, ios 0x151d58;

    bool init(ShopType type) = win inline, imac 0x314180, m1 0x2aa3c4 {
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
    void playReactAnimation() = win 0x2a8520, m1 0x2a936c, imac 0x312ec0;
    void startAnimating() = win 0x2a87b0, imac 0x310360, m1 0x2a6c78;

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
    static AppDelegate* get() = win inline, ios inline, imac 0x645fb0, m1 0x56e744 {
            return static_cast<AppDelegate*>(cocos2d::CCApplication::sharedApplication());
        }

    virtual bool applicationDidFinishLaunching() = win 0x829f0, imac 0x645e30, m1 0x56e5c0, ios 0x268414;
    virtual void applicationDidEnterBackground() = win 0x82da0, m1 0x56e838, imac 0x6460d0, ios 0x2685f8;
    virtual void applicationWillEnterForeground() = win 0x82e20, m1 0x56e978, imac 0x646230, ios 0x2686b4;
    virtual void applicationWillBecomeActive() = win 0x82d40, m1 0x56e754, imac 0x645fd0, ios 0x268578;
    virtual void applicationWillResignActive() = win 0x82d90, m1 0x56e768, imac 0x645ff0, ios 0x26858c;
    virtual void trySaveGame(bool) = win 0x834b0, imac 0x6464c0, m1 0x56ebfc, ios 0x268884;
    virtual void willSwitchToScene(cocos2d::CCScene*) = win 0x83590, m1 0x56ecd4, imac 0x6465a0, ios 0x26885c;

    float bgScale();
    TodoReturn checkSound();
    TodoReturn hideLoadingCircle();
    void loadingIsFinished();
    bool musicTest() = win 0x83370;
    void pauseGame() = win 0x82ff0;
    void pauseSound() = win 0x830d0;
    void platformShutdown() = win 0x82560;
    void resumeSound() = win 0x83270, m1 0x56ea64;
    void setIdleTimerDisabled(bool);
    void setupGLView() = win 0x82580;
    void showLoadingCircle(bool, bool, bool);

    PAD = win 0x4, android32 0xc, android64 0x18;
    cocos2d::CCScene* m_runningScene;
}

[[link(android)]]
class ArtistCell : TableViewCell {
    // virtual ~ArtistCell();
    ArtistCell(char const*, float, float);

    virtual bool init() = m1 0x1f1b40, imac 0x242700, ios 0x113428;
    virtual void draw() = imac 0x2428c0, m1 0x1f1d04, ios 0x1135cc;

    void loadFromObject(SongInfoObject*) = win 0xb4e90, imac 0x235770;
    void onNewgrounds(cocos2d::CCObject* sender);
    void onYouTube(cocos2d::CCObject* sender);
    void updateBGColor(int);

    SongInfoObject* m_songInfo;
}

[[link(android)]]
class ArtTriggerGameObject : EffectGameObject {
    // virtual ~ArtTriggerGameObject();

    static ArtTriggerGameObject* create(char const*);

    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = imac 0x1db7e0, m1 0x194614, ios 0x390034;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1db780, m1 0x19459c, ios 0x38ffcc;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1db260, m1 0x194120, ios 0x38fe3c;

    bool init(char const*);
}

[[link(android)]]
class AudioAssetsBrowser : FLAlertLayer, TableViewCellDelegate, MusicDownloadDelegate {
    // virtual ~AudioAssetsBrowser();

    static AudioAssetsBrowser* create(gd::vector<int>& songIds, gd::vector<int>& sfxIds);

    virtual void registerWithTouchDispatcher() = m1 0x6b1dd4, imac 0x79fa30, ios 0x1d30fc;
    virtual void keyBackClicked() = m1 0x6b1d58, imac 0x79f9c0, ios 0x1d3080;
    virtual void musicActionFinished(GJMusicAction) = m1 0x6b1d04, imac 0x79f8e0, ios 0x1d3034;
    virtual void musicActionFailed(GJMusicAction) = m1 0x6b1d10, imac 0x79f910, ios 0x1d3040;
    virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = m1 0x6b1d24, imac 0x79f950, ios 0x1d3050;
    virtual int getSelectedCellIdx() = m1 0x6b1d34, imac 0x79f970, ios 0x1d3060;
    virtual int getCellDelegateType() = m1 0x6b1d44, imac 0x79f990, ios 0x1d3070;

    bool init(gd::vector<int>& songIds, gd::vector<int>& sfxIds);
    void onClose(cocos2d::CCObject* sender);
    void onInfo(cocos2d::CCObject* sender) = m1 0x6b1494, imac 0x79ef60;
    void onPage(cocos2d::CCObject* sender);
    TodoReturn setupList();
    TodoReturn trySetupAudioBrowser();
    TodoReturn updatePageLabel();

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

    virtual void draw() = m1 0x407cdc, imac 0x49cba0, ios 0x3bcf70 {}
    virtual void updateTweenAction(float, char const*) = imac 0x49ca70, m1 0x407ba0, ios 0x3bce70;

    void audioStep(float) = win 0x84d80, imac 0x49c860;
    TodoReturn getBGSquare();
    TodoReturn goingDown();
    bool init(gd::string);
    void resetAudioVars() = imac 0x49c800, m1 0x407928;
    TodoReturn triggerEffect(float) = imac 0x49c930;

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

    virtual bool init() = m1 0x19221c, imac 0x1d8d50, ios 0x38f09c;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1d9ac0, m1 0x192cf8, ios 0x38f408;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1d8da0, m1 0x19226c, ios 0x38f0ec;
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

    static BitmapFontCache* sharedFontCache() = win inline, m1 0x1c2b48 {
        auto** instancePtr = reinterpret_cast<BitmapFontCache**>(geode::base::get() + 0x6a4e08);
        if (!*instancePtr) {
            *instancePtr = new BitmapFontCache();
            (*instancePtr)->init();
        }
        return *instancePtr;
    }

    FontObject* fontWithConfigFile(char const*, float) = win 0x3b380, m1 0x1c2cd0;
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

    bool init(gd::string, int) = m1 0x3ee364, imac 0x480290;
    void show();

    cocos2d::CCLayerColor* m_layerColor;
    float m_unk10c;
    cocos2d::CCScene* m_scene;
}

[[link(android)]]
class BoomListLayer : cocos2d::CCLayerColor {
    // virtual ~BoomListLayer();

    static BoomListLayer* create(BoomListView*, char const*);

    bool init(BoomListView*, char const*) = m1 0x3cc55c, imac 0x45b5a0;
}

[[link(android)]]
class BoomListView : cocos2d::CCLayer, TableViewDelegate, TableViewDataSource {
    BoomListView() {}
    ~BoomListView() {
        CC_SAFE_RELEASE(m_entries);
    }

    static BoomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = imac 0x2f86d0, m1 0x29114c;

    virtual void draw() = m1 0x291c44, imac 0x2f9360, ios 0x1d1398 {}
    virtual void setupList(float) = win 0x3c350, imac 0x2f8a30, m1 0x29145c, ios 0x1d0df4;
    virtual void TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) = m1 0x2914dc, imac 0x2f8ad0, ios 0x1d0e74 {}
    virtual float cellHeightForRowAtIndexPath(CCIndexPath&, TableView*) = win 0x3c3e0, m1 0x2914ec, imac 0x2f8b10, ios 0x1d0e84;
    virtual void didSelectRowAtIndexPath(CCIndexPath&, TableView*) = m1 0x2914fc, imac 0x2f8b30, ios 0x1d0e94 {}
    virtual int numberOfRowsInSection(unsigned int, TableView*) = win 0x3c3f0, m1 0x291504, imac 0x2f8b50, ios 0x1d0e9c;
    virtual unsigned int numberOfSectionsInTableView(TableView*) = m1 0x291514, imac 0x2f8b80, ios 0x1d0eac { return 1; }
    virtual TableViewCell* cellForRowAtIndexPath(CCIndexPath&, TableView*) = win 0x3c410, imac 0x2f8ba0, m1 0x291524, ios 0x1d0ebc;
    virtual void TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&) = m1 0x291c3c, imac 0x2f9340, ios 0x1d1390 {}
    virtual void TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) = m1 0x2914e4, imac 0x2f8af0, ios 0x1d0e7c {}
    virtual TableViewCell* getListCell(char const*) = win 0x3c4a0, imac 0x2f8cb0, m1 0x291640, ios 0x1d0f50;
    virtual void loadCell(TableViewCell*, int) = win 0x3c610, imac 0x2f8ef0, m1 0x2917e4, ios 0x1d1048;

    TodoReturn addObjectToList(cocos2d::CCNode*);
    bool init(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = win 0x3bfe0, imac 0x2f8800, m1 0x291258;

    bool init(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
        return this->init(entries, nullptr, height, width, 0, type, 0.0f);
    }
    void lockList(bool) = imac 0x2f89b0, m1 0x2913f0;

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

    static BoomScrollLayer* create(cocos2d::CCArray* pages, int unk1, bool unk2, cocos2d::CCArray* unk3, DynamicScrollDelegate* delegate) = win 0x3d060, imac 0x391a10, m1 0x3204b4;
    static BoomScrollLayer* create(cocos2d::CCArray* pages, int unk1, bool unk2) = win inline, imac 0x391e00, m1 0x320880 {
        return BoomScrollLayer::create(pages, unk1, unk2, nullptr, nullptr);
    }

    virtual void visit() = win 0x3dbd0, imac 0x393220, m1 0x321ae4, ios 0x12f1dc;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x3e710, imac 0x393d50, m1 0x3225ec, ios 0x12f7d0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x3e7c0, imac 0x393e40, m1 0x3226b8, ios 0x12f88c;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x3eaf0, imac 0x394160, m1 0x322974, ios 0x12faa4;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x3e630, imac 0x393b90, m1 0x32241c, ios 0x12f780;
    virtual void registerWithTouchDispatcher() = imac 0x393a00, m1 0x3222a4, ios 0x12f648;

    void addPage(cocos2d::CCLayer*, int) = m1 0x322070;
    void addPage(cocos2d::CCLayer*) = imac 0x393840;
    void cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x393ab0, m1 0x322340;
    void claimTouch(cocos2d::CCTouch*);
    cocos2d::CCLayer* getPage(int) = win inline, imac 0x392d00, m1 0x3216c0 {
        auto index = m_page;
        if (m_dynamic) index = index % m_pages->count();
        return static_cast<cocos2d::CCLayer*>(m_pages->objectAtIndex(index));
    }
    int getRelativePageForNum(int page) = win inline, imac 0x393150, m1 0x321a10 {
        return page < 1 ? page : page % getTotalPages();
    }
    cocos2d::CCPoint getRelativePosForPage(int page) = win inline, imac 0x392cb0, m1 0x321670 {
        return { this->getContentSize().width - m_pageOffset * page, 0.f };
    }
    int getTotalPages() = win inline, m1 0x32136c, imac 0x392960 {
        return m_dynamic ? m_dynamicObjects->count() : m_pages->count();
    }
    bool init(cocos2d::CCArray*, int, bool, cocos2d::CCArray*, DynamicScrollDelegate*) = win 0x3d230, imac 0x391aa0, m1 0x32056c;
    void instantMoveToPage(int) = win 0x3ddc0, m1 0x321ccc, imac 0x393410;
    void moveToPage(int) = win 0x3dea0, imac 0x3934f0, m1 0x321da4;
    void moveToPageEnded() = win 0x3dc30, imac 0x393280, m1 0x321b3c;
    int pageNumberForPosition(cocos2d::CCPoint) = win 0x3dcc0, imac 0x393070, m1 0x321924;
    cocos2d::CCPoint positionForPageWithNumber(int page) = win inline, imac 0x3933c0, m1 0x321c78 {
        return { this->getContentSize().width + m_pageOffset * page, 0.f };
    }
    void quickUpdate() = win inline, imac 0x393760, m1 0x322018 {
        if (m_pageMoving) {
            m_pageMoving = false;
            m_extendedLayer->stopActionByTag(2);
            m_extendedLayer->setPosition(m_position);
            this->moveToPageEnded();
        }
    }
    void removePage(cocos2d::CCLayer*) = imac 0x3938b0, m1 0x322148;
    void removePageWithNumber(int) = imac 0x393940, m1 0x3221dc;
    void repositionPagesLooped() = win 0x3e060, imac 0x392090, m1 0x320b14;
    void selectPage(int);
    void setDotScale(float scale) = win inline, m1 0x321608, imac 0x392c40 {
        for (int i = 0; i < m_dots->count(); i++) {
            static_cast<cocos2d::CCSprite*>(m_dots->objectAtIndex(i))->setScale(scale);
        }
    }
    void setPagesIndicatorPosition(cocos2d::CCPoint pos) = win inline, imac 0x391f40, m1 0x3209cc {
        m_dotPosition = pos;
        this->updateDots(0.f);
    }
    void setupDynamicScrolling(cocos2d::CCArray*, DynamicScrollDelegate*) = win 0x3d5a0, imac 0x392710, m1 0x321124;
    void togglePageIndicators(bool) = win 0x3db60, imac 0x3931b0, m1 0x321a78;
    void updateDots(float) = win 0x3d960, imac 0x392990, m1 0x321388;
    void updatePages() = win 0x3d840, m1 0x3209f4, imac 0x391f70;

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

    virtual void onBack(cocos2d::CCObject* sender) = m1 0x43c764, imac 0x4d9020, ios 0x779e0;

    TodoReturn addChanceToSelected(int, bool);
    TodoReturn createTemplateObjects();
    TodoReturn deletedSelectedItems();
    TodoReturn getAllSelectedBlocks();
    bool init(GJSmartTemplate*, gd::string) = m1 0x43b4bc, imac 0x4d7c90;
    void onButton(cocos2d::CCObject* sender);
    void onPrefabObject(cocos2d::CCObject* sender);
    TodoReturn updateChanceValues();
}

[[link(android)]]
class BrowseSmartTemplateLayer : FLAlertLayer {
    // virtual ~BrowseSmartTemplateLayer();

    static BrowseSmartTemplateLayer* create(GJSmartTemplate*, SmartBrowseFilter);

    virtual void keyBackClicked() = win 0x443040, m1 0x43b324, imac 0x4d7a20, ios 0x76884;
    virtual void onBack(cocos2d::CCObject* sender) = win 0x443060, imac 0x4d7a60, m1 0x43b348, ios 0x768a8;

    TodoReturn addObjectToPage(cocos2d::CCObject*, int);
    TodoReturn addPrefabMenuItem(SmartPrefabResult, int);
    TodoReturn baseSetup();
    TodoReturn createDots();
    TodoReturn createPrefab(gd::string, int);
    void goToPage(int);
    bool init(GJSmartTemplate*, SmartBrowseFilter) = m1 0x439948, imac 0x4d5f10;
    void onClick(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    void onTemplateObject(cocos2d::CCObject* sender);
    TodoReturn updateDots();

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
    static ButtonSprite* create(char const* caption, int width, int p2, float scale, bool absolute, char const* font, char const* bg, float height) = win 0x3f150, imac 0x92640, m1 0x8579c;
    static ButtonSprite* create(cocos2d::CCSprite* topSprite, int width, int unused, float height, float scale, bool absolute, char const* bgSprite, bool noScaleSpriteForBG) = win 0x3ee40, imac 0x91db0, m1 0x84fe0;

    /// Create a ButtonSprite with a top sprite and a texture.
    /// @param topSprite The top sprite to add on top of the sprite
    /// @param width Sprite width; ignored if `absolute` is false
    /// @param absolute Whether to use absolute width or not
    /// @param texture The name of the background sprite file (can't be in a spritesheet)
    /// @param height The height of the button, leave 0 for automatic
    /// @param scale Scale of top sprite
    static ButtonSprite* create(cocos2d::CCSprite* topSprite, int width, bool absolute, float height, const char* texture, float scale) = imac 0x91d90 {
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

    static ButtonSprite* create(char const* caption) = imac 0x925c0 {
        return ButtonSprite::create(caption, 0, false, "goldFont.fnt", "GJ_button_01.png", .0f, 1.f);
    }
    static ButtonSprite* create(char const* caption, const char* font, const char* texture) {
        return ButtonSprite::create(caption, 0, false, font, texture, .0f, 1.f);
    }
    static ButtonSprite* create(char const* caption, const char* font, const char* texture, float scale) {
        return ButtonSprite::create(caption, 0, false, font, texture, .0f, scale);
    }

    static ButtonSprite* create(char const* caption, float scale) = imac 0x92610 {
        return ButtonSprite::create(caption, 0, false, "goldFont.fnt", "GJ_button_01.png", .0f, scale);
    }
    static ButtonSprite* create(char const* caption, int width, int p2, float scale, bool absolute, char const* font, char const* bg) = imac 0x92780 {
        return ButtonSprite::create(caption, width, p2, scale, absolute, font, bg, .0f);
    }
    static ButtonSprite* create(char const* caption, int width, int p2, float scale, bool absolute) = imac 0x925f0 {
        return ButtonSprite::create(caption, width, p2, scale, absolute, "goldFont.fnt", "GJ_button_01.png", .0f);
    }
    static ButtonSprite* create(cocos2d::CCSprite* topSprite, int width, int unused, float height, float scale, bool absolute) = imac 0x91d90 {
        return ButtonSprite::create(topSprite, width, unused, height, scale, absolute, "GJ_button_01.png", false);
    }
    static ButtonSprite* create(cocos2d::CCSprite* topSprite) = imac 0x91d60 {
        return ButtonSprite::create(topSprite, 0, 0, .0f, 1.f, false, "GJ_button_01.png", false);
    }

    bool init(char const*, int, int, float, bool, char const*, char const*, float) = win 0x3f220, imac 0x92790, m1 0x858d8;
    bool init(cocos2d::CCSprite* topSprite, int width, int unused, float height, float scale, bool absolute, char const* bgSprite, bool noScaleSpriteForBG) = win 0x3eef0, imac 0x91f00, m1 0x85114;
    void setColor(cocos2d::ccColor3B color) {
        // i love inlined funcs
        if (m_label) m_label->setColor(color);
        if (m_subSprite) m_subSprite->setColor(color);
        if (m_subBGSprite) m_subBGSprite->setColor(color);
        if (m_BGSprite) m_BGSprite->setColor(color);
    }
    void setString(char const*) = win 0x3fae0, imac 0x92a40, m1 0x85b60;
    void updateBGImage(char const*) = win 0x3f520, imac 0x92e20, m1 0x85f00;
    void updateSpriteBGSize() = win 0x3f660, imac 0x92190, m1 0x85368;
    void updateSpriteOffset(cocos2d::CCPoint offset) = win inline, imac 0x92f40, m1 0x8601c {
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

    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x4a4cd0, imac 0x1cc3f0, m1 0x18823c, ios 0x38b8e8;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1d0760, m1 0x18b600, ios 0x38c820;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1cc650, m1 0x1883f8, ios 0x38baa4;

    bool init(char const*);
}

[[link(android)]]
class CCAlertCircle : cocos2d::CCNode {
    // virtual ~CCAlertCircle();

    static CCAlertCircle* create();

    virtual bool init() = imac 0x1686a0, m1 0x135718;
    virtual void draw() = imac 0x168730, m1 0x1357c4;

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
    static CCAnimatedSprite* createWithType(char const*, cocos2d::CCTexture2D*, bool) = imac 0x33c020, m1 0x2d24c0;

    virtual void setOpacity(unsigned char) = win 0x41070, imac 0x33d1f0, m1 0x2d3624, ios 0x2fe154;
    virtual void setColor(cocos2d::ccColor3B const&) = win 0x410d0, imac 0x33d2a0, m1 0x2d36d4, ios 0x2fe1b4;
    virtual void animationFinished(char const*) = win 0x41050, imac 0x33d1d0, m1 0x2d360c, ios 0x2fe13c;
    virtual void animationFinishedO(cocos2d::CCObject*) = win 0x41010, m1 0x2d35d8, imac 0x33d1a0, ios 0x2fe108;

    void cleanupSprite() = imac 0x33ca60, m1 0x2d2ebc;
    bool initWithType(char const*, cocos2d::CCTexture2D*, bool) = win 0x3ffc0, imac 0x33c100, m1 0x2d2594;
    void loadType(char const*, cocos2d::CCTexture2D*, bool) = win 0x401e0, m1 0x2d2790, imac 0x33c2f0;
    void runAnimation(gd::string) = win 0x40c80, m1 0x2d3058, imac 0x33cc20;
    void runAnimationForced(gd::string);
    void stopTween() = m1 0x2d359c;
    void switchToMode(spriteMode) = win 0x40b10, imac 0x33cb00, m1 0x2d2f4c;
    void tweenToAnimation(gd::string, float) = win 0x40cf0, imac 0x33cd60, m1 0x2d31c4;
    void tweenToAnimationFinished() = win 0x40fc0;
    void willPlayAnimation() = m1 0x2d3194;

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

    static CCAnimateFrameCache* sharedSpriteFrameCache() = win 0x41450, m1 0x4ab09c, imac 0x5542d0;

    void addCustomSpriteFramesWithFile(char const*) = m1 0x4ab2a0, imac 0x554510;
    cocos2d::CCDictionary* addDict(cocos2d::CCDictionary*, char const*) = m1 0x4abdb0, imac 0x5551e0;
    cocos2d::CCDictionary* addDict(DS_Dictionary*, char const*) = win 0x41670, m1 0x4ac488, imac 0x5558b0;
    cocos2d::CCDictionary* addSpriteFramesWithFile(char const*) = win 0x414e0, m1 0x4ac224, imac 0x555650;
    bool init() = win inline, m1 0x4ab130, imac 0x554370 {
        m_animateFrames = cocos2d::CCDictionary::create();
        m_animateFrames->retain();
        m_unk040 = cocos2d::CCDictionary::create();
        m_unk040->retain();
        m_animateDescriptions = cocos2d::CCDictionary::create();
        m_animateDescriptions->retain();
        return true;
    }
    void purgeSharedSpriteFrameCache() = win inline, m1 0x4ab174, imac 0x5543c0 {
        auto** instancePtr = reinterpret_cast<CCAnimateFrameCache**>(geode::base::get() + 0x6a4e10);
        if (*instancePtr) {
            (*instancePtr)->release();
            *instancePtr = nullptr;
        }
    }
    void removeSpriteFrames() = win inline, m1 0x4acbf4, imac 0x556030 {
        m_animateFrames->removeAllObjects();
        m_unk040->removeAllObjects();
        m_animateDescriptions->removeAllObjects();
    }
    cocos2d::CCArray* spriteFrameByName(char const*) = win 0x41c40, m1 0x4acc24, imac 0x556060;

    cocos2d::CCDictionary* m_animateFrames;
    cocos2d::CCDictionary* m_unk040;
    cocos2d::CCDictionary* m_animateDescriptions;
}

[[link(android)]]
class CCBlockLayer : cocos2d::CCLayerColor {
    // virtual ~CCBlockLayer();

    CCBlockLayer() {
        m_unknown = nullptr;
    }
    static CCBlockLayer* create();

    virtual bool init() = win 0x424e0, imac 0x501df0, m1 0x46163c, ios 0x8a2e0;
    virtual void draw() = win 0x426f0, m1 0x4618c0, imac 0x5020a0, ios 0x8a540;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x4618fc, imac 0x5020d0, ios 0x8a57c;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x46191c, imac 0x502130, ios 0x8a59c {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x46190c, imac 0x5020f0, ios 0x8a58c {}
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x461914, imac 0x502110, ios 0x8a594 {}
    virtual void registerWithTouchDispatcher() = win 0x425d0, m1 0x4617a4, imac 0x501f60, ios 0x8a424;
    virtual void keyBackClicked() = win 0x42620, m1 0x4617dc, imac 0x501fa0, ios 0x8a45c;
    virtual void customSetup() = m1 0x461760, imac 0x501f00, ios 0x8a3e0 {}
    virtual TodoReturn enterLayer() = win 0x425a0, m1 0x46176c, imac 0x501f30, ios 0x8a3ec;
    virtual TodoReturn exitLayer() = win 0x42640, imac 0x501fd0, m1 0x4617f8, ios 0x8a478;
    virtual void showLayer(bool) = win 0x42680, m1 0x461844, imac 0x502010, ios 0x8a4c4;
    virtual TodoReturn hideLayer(bool) = win 0x42690, m1 0x461850, imac 0x502020, ios 0x8a4d0;
    virtual TodoReturn layerVisible() = win 0x426a0, m1 0x461860, imac 0x502040, ios 0x8a4e0;
    virtual void layerHidden() = win 0x426b0, m1 0x461870, imac 0x502060, ios 0x8a4f0;
    virtual void enterAnimFinished() = m1 0x46185c, imac 0x502030, ios 0x8a4dc {}
    virtual void disableUI() = m1 0x461764, imac 0x501f10, ios 0x8a3e4 {}
    virtual void enableUI() = m1 0x461768, imac 0x501f20, ios 0x8a3e8 {}

    void decrementForcePrio() = m1 0x461924, imac 0x502150;
    void incrementForcePrio();

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

    static CCCircleWave* create(float startRadius, float endRadius, float duration, bool fadeIn, bool easeOut) = win 0x42800, imac 0x167ae0, m1 0x134bb4;
    static CCCircleWave* create(float startRadius, float endRadius, float duration, bool fadeIn) = win inline, m1 0x134bac, imac 0x167ad0 {
        return CCCircleWave::create(startRadius, endRadius, duration, fadeIn, true);
    }

    virtual void setPosition(cocos2d::CCPoint const&) = win 0x42af0, imac 0x167e30, m1 0x134e8c, ios 0x16f8d0;
    virtual void removeMeAndCleanup() = win 0x42f00, imac 0x1682f0, m1 0x135348, ios 0x16fc40;
    virtual void draw() = win 0x42dd0, imac 0x1681b0, m1 0x135210, ios 0x16fb18;
    virtual void updateTweenAction(float, char const*) = win 0x42b70, imac 0x167f30, m1 0x134f9c, ios 0x16f9e0;

    TodoReturn baseSetup(float);
    TodoReturn followObject(cocos2d::CCNode*, bool) = imac 0x167ea0, m1 0x134f0c;
    bool init(float startRadius, float endRadius, float duration, bool fadeIn, bool easeOut) = win 0x428b0, imac 0x167bd0, m1 0x134c88;
    TodoReturn updatePosition(float) = win 0x42b30, imac 0x167e60, m1 0x134ec0;

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

    virtual void setPosition(cocos2d::CCPoint const&) = win 0x42f70, m1 0x6bea40, imac 0x7ad2b0, ios 0x1921c4;
}

[[link(android)]]
class CCCountdown : cocos2d::CCSprite {
    // virtual ~CCCountdown();

    static CCCountdown* create();

    virtual bool init() = imac 0x7b0e20, m1 0x6c2084;
    virtual void setOpacity(unsigned char) = m1 0x6c2434, imac 0x7b11e0;

    TodoReturn lapFinished();
    void startTimerWithSeconds(float, cocos2d::SEL_CallFunc, cocos2d::CCNode*);
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
class CCExtenderNode : cocos2d::CCNode {
    void setOpacity(unsigned int opacity);
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

    static CCLightFlash* create() = win inline, imac 0x4f0560, m1 0x451614 {
        auto ret = new CCLightFlash();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        CC_SAFE_DELETE(ret);
        return nullptr;
    }

    virtual bool init() = win inline, m1 0x451678, imac 0x4f05d0, ios 0x3501c {
        return true;
    }

    void cleanupFlash() = win 0x43c80, imac 0x4f0e50;
    void fadeAndRemove() = m1 0x451c20;
    // param names from https://github.com/gd-hyperdash/Cocos2Dx/blob/master/cocos2dx/extensions/RobTop/CCLightFlash.h and confirmed to be correct
    void playEffect(cocos2d::CCPoint pos, cocos2d::ccColor3B col, float startWidth, float startWidthVariation, float endWidth, float endWidthVariation, float endHeight, float stripDuration, float stripDurationVariance, float stripInterval, float stripStartDelay, float stripStartDelayVariation, float stripRotation, float stripRotationVariation, float stripOpacity, float stripOpacityVariation, int stripCount, bool circleRotation, bool fadeIn, float delay) = win 0x433a0, imac 0x4f05e0, m1 0x451680;
    void removeLights() = win 0x43c20;
    void showFlash() = win 0x438e0, imac 0x4f0b30, m1 0x451af4;

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

    static CCLightStrip* create(float width, float toWidth, float toHeight, float duration, float delay) = win inline, imac 0x4f0a80, m1 0x451a40 {
        auto ret = new CCLightStrip();
        if (ret->init(width, toWidth, toHeight, duration, delay)) {
            ret->autorelease();
            return ret;
        }
        CC_SAFE_DELETE(ret);
        return nullptr;
    }

    virtual void draw() = win 0x43cb0, imac 0x4f10a0, m1 0x452008, ios 0x358a4;
    virtual void updateTweenAction(float value, char const* keyword) = win 0x43e70, imac 0x4f1230, m1 0x452160, ios 0x359fc;

    bool init(float width, float toWidth, float toHeight, float duration, float delay) = win inline, imac 0x4f0f60, m1 0x451ef0 {
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

    static CCMenuItemSpriteExtra* create(cocos2d::CCNode* sprite, cocos2d::CCNode* disabledSprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) = win 0x44b40, imac 0x264b80, m1 0x2105c0;

    static CCMenuItemSpriteExtra* create(cocos2d::CCNode* sprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) {
        return CCMenuItemSpriteExtra::create(sprite, nullptr, target, callback);
    }

    virtual void activate() = win 0x44d40, imac 0x264d90, m1 0x210804, ios 0x214594;
    virtual void selected() = win 0x44e50, imac 0x264f10, m1 0x210964, ios 0x214674;
    virtual void unselected() = win 0x45070, imac 0x265190, m1 0x210bb4, ios 0x21484c;

    bool init(cocos2d::CCNode* sprite, cocos2d::CCNode* disabledSprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) = win 0x44be0, imac 0x264c10, m1 0x210678;
    void setSizeMult(float mult) = win inline, m1 0x2107fc, imac 0x264d80 {
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

    static CCMenuItemToggler* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = win 0x451e0, imac 0x59c70, m1 0x4f880;
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

    virtual void activate() = win 0x45490, m1 0x4ffc4, imac 0x5a330, ios 0x19494c;
    virtual void selected() = win 0x45440, m1 0x4ff84, imac 0x5a300, ios 0x19490c;
    virtual void unselected() = win 0x454e0, m1 0x50004, imac 0x5a360, ios 0x19498c;
    virtual void setEnabled(bool) = win 0x45530, m1 0x50044, imac 0x5a390, ios 0x1949cc;

    TodoReturn activeItem();
    bool init(cocos2d::CCNode* off, cocos2d::CCNode* on, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) = win inline, imac 0x59d40, m1 0x4f964 {
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
    void normalTouch(cocos2d::CCObject*) = win 0x45580, imac 0x59f80;
    void selectedTouch(cocos2d::CCObject*) = win 0x455a0;
    void setClickable(bool on) {
        m_notClickable = !on;
    }
    void setSizeMult(float mult) = win inline, m1 0x4fe70, imac 0x5a1f0 {
        m_offButton->setSizeMult(mult);
        m_onButton->setSizeMult(mult);

        this->toggle(this->m_toggled);
    }
    void toggle(bool) = win 0x455c0, imac 0x5a120, m1 0x4fd98;
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

    static CCNodeContainer* create() = win 0x242710, m1 0xe4920, imac 0x102b20;

    virtual bool init() = win 0x77db0, imac 0x154510, m1 0x128138, ios 0x20b410;
    virtual void visit() = win 0x2427e0, imac 0x154520, m1 0x12813c, ios 0x20b414;
}

[[link(android)]]
class CCPartAnimSprite : cocos2d::CCSprite {
    // virtual ~CCPartAnimSprite();

    virtual void setScaleX(float) = imac 0x361ca0, m1 0x2f4b18, ios 0x833f0;
    virtual void setScaleY(float) = imac 0x361cc0, m1 0x2f4b40, ios 0x83418;
    virtual void setScale(float) = imac 0x361c80, m1 0x2f4af0, ios 0x833c8;
    virtual void setOpacity(unsigned char) = win 0x468a0, imac 0x361f30, m1 0x2f4e04, ios 0x83604;
    virtual void setBlendFunc(cocos2d::_ccBlendFunc) = win 0x466f0, imac 0x361ce0, m1 0x2f4b68, ios 0x83440;
    virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = imac 0x361840, m1 0x2f46bc, ios 0x83094;
    virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = imac 0x3619b0, m1 0x2f4814, ios 0x831c0;
    virtual cocos2d::CCSpriteFrame* displayFrame() = m1 0x2f482c, imac 0x3619d0, ios 0x831d8;

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

    cocos2d::CCDictionary* m_spritePartIDs;
    cocos2d::CCSpriteFrame* m_spriteFrame;
    bool m_hasChanged;
    cocos2d::CCSize m_unkSize;
    cocos2d::CCArray* m_spriteParts;
}

[[link(android), depends(CCContentLayer)]]
class CCScrollLayerExt : cocos2d::CCLayer {
    // virtual ~CCScrollLayerExt() = win 0x46210, ios 0x311ab8;
    CCScrollLayerExt(cocos2d::CCRect) = win 0x46a50, imac 0x41b380, m1 0x396eb8, ios 0x300a10;

    virtual void visit() = win 0x47ad0, imac 0x41c710, m1 0x3980f4, ios 0x3019ec;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x47580, imac 0x41c0b0, m1 0x397afc, ios 0x301428;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x47950, imac 0x41c4d0, m1 0x397eb8, ios 0x3017c4;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x476a0, imac 0x41c1d0, m1 0x397c18, ios 0x301534;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x47920, imac 0x41c470, m1 0x397e54, ios 0x301760;
    virtual void registerWithTouchDispatcher() = win 0x47530, imac 0x41c070, m1 0x397ac4, ios 0x3013f0;
    virtual void preVisitWithClippingRect(cocos2d::CCRect) = win 0x47c00, imac 0x41c810, m1 0x3981e8, ios 0x301ae0;
    virtual void postVisit() = win 0x47ca0, m1 0x39827c, imac 0x41c890, ios 0x301b74;

    TodoReturn constraintContent();
    TodoReturn doConstraintContent(bool);
    inline float getMaxY() {
        return m_scrollLimitBottom;
    }
    inline float getMinY() {
        return this->getContentSize().height - m_contentLayer->getContentSize().height - m_scrollLimitTop;
    }
    void moveToTop() = win 0x47000, imac 0x41baa0, m1 0x39752c;
    void moveToTopWithOffset(float) = win 0x46f60, imac 0x41ba00, m1 0x3975d4;
    TodoReturn scrollingEnd();
    void scrollLayer(float offset) = win inline, imac 0x41c650, m1 0x39802c {
        float y = m_contentLayer->getPositionY() + offset;
        float minY = getMinY();
        float maxY = getMaxY();
        m_contentLayer->setPositionY(y < minY ? minY : y > maxY ? maxY : y);
    }
    void setContentLayerSize(cocos2d::CCSize);
    void setContentOffset(cocos2d::CCPoint, bool);
    TodoReturn updateIndicators(float);

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

    virtual void setOpacity(unsigned char) = win 0x483c0, m1 0x3de600, imac 0x46f410;

    TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
    TodoReturn createWithSpriteFrameName(char const*);
}

[[link(android)]]
class CCSpriteGrayscale : CCSpriteWithHue {
    // virtual ~CCSpriteGrayscale();
    CCSpriteGrayscale() {}

    static CCSpriteGrayscale* create(gd::string const& file, cocos2d::CCRect const& rect) = win inline, m1 0x50cabc, imac 0x5d95c0 {
        auto ret = new CCSpriteGrayscale();
        if (ret->initWithFile(file.c_str(), rect)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static CCSpriteGrayscale* create(gd::string const& file) = win inline, m1 0x50c9f0, imac 0x5d9500 {
        auto ret = new CCSpriteGrayscale();
        if (ret->initWithFile(file.c_str())) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static CCSpriteGrayscale* createWithSpriteFrame(cocos2d::CCSpriteFrame* frame) = win inline, m1 0x50cda8, imac 0x5d9860 {
        auto ret = new CCSpriteGrayscale();
        if (ret->initWithSpriteFrame(frame)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static CCSpriteGrayscale* createWithSpriteFrameName(gd::string const& frameName) = win 0x49020, m1 0x50cea4, imac 0x5d9940;
    static CCSpriteGrayscale* createWithTexture(cocos2d::CCTexture2D* texture, cocos2d::CCRect const& rect, bool rotated) = win inline, m1 0x50ccb4, imac 0x5d9790 {
        auto ret = new CCSpriteGrayscale();
        if (ret->initWithTexture(texture, rect, rotated)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static CCSpriteGrayscale* createWithTexture(cocos2d::CCTexture2D* texture) = win inline, m1 0x50cb9c, imac 0x5d9690 {
        auto ret = new CCSpriteGrayscale();
        if (ret->initWithTexture(texture)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual gd::string getShaderName() = win 0x48fc0, imac 0x5d94e0, m1 0x50c9cc, ios 0x1a7100;
    virtual const char* shaderBody() = win 0x48e00, m1 0x50c890, imac 0x5d92d0, ios 0x1a702c;
}

[[link(android)]]
class CCSpritePart : CCSpritePlus {
    // virtual ~CCSpritePart();

    static CCSpritePart* create(cocos2d::CCTexture2D*);

    virtual void setVisible(bool) = win 0x46a30, imac 0x362320, m1 0x2f51d8, ios 0x8375c;

    TodoReturn createWithSpriteFrameName(char const*);
    TodoReturn frameChanged(gd::string);
    TodoReturn getBeingUsed();
    TodoReturn hideInactive();
    TodoReturn markAsNotBeingUsed();
    TodoReturn resetTextureRect();
    void setBeingUsed(bool);
    TodoReturn updateDisplayFrame(gd::string);

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

    /// Sets X's scale on itself and it's followers
    /// @param fScaleX the scale of X to set
    virtual void setScaleX(float fScaleX) = win 0x481d0, m1 0x3de1dc, imac 0x46f000, ios 0x1b9fb4;

    /// Sets Y's scale on itself and it's followers
    /// @param fScaleY the scale of Y to set
    virtual void setScaleY(float fScaleY) = win 0x48250, m1 0x3de258, imac 0x46f080, ios 0x1ba030;

    /// Sets the Scale of itself and it's followers
    /// @param fScale the scale value to set
    virtual void setScale(float fScale) = win 0x482e0, m1 0x3de2d4, imac 0x46f100, ios 0x1ba0ac;

    /// Sets the position where the sprite will be at and it's followers
    /// @param pos the position to place to the sprite and it's followers
    virtual void setPosition(cocos2d::CCPoint const& pos) = win 0x47dd0, m1 0x3ddeac, imac 0x46ec60, ios 0x1b9c84;

    /// Sets the sprite's given rotation and it's followers
    /// @param fRotation the rotation value to set
    virtual void setRotation(float fRotation) = win 0x47e60, m1 0x3ddf20, imac 0x46ece0, ios 0x1b9cf8;

    /// Sets the sprite's given rotation of X and it's followers
    /// @param fRotationX the rotation of X to set.
    virtual void setRotationX(float fRotationX) = win 0x47ef0, m1 0x3ddf94, imac 0x46ed60, ios 0x1b9d6c;

    /// Sets the sprite's given rotation of Y and it's followers
    /// @param fRotationY the roation of Y to set
    virtual void setRotationY(float) = win 0x47f80, m1 0x3de008, imac 0x46ede0, ios 0x1b9de0;

    /// Initalizes the sprite using a texture
    /// @param texture the texture to initalize the sprite with
    /// @return true if initalization succeeded.
    virtual bool initWithTexture(cocos2d::CCTexture2D* texture) = win 0x47db0, imac 0x46ec40, m1 0x3dde98, ios 0x1b9c70;

    /// Initalizes the sprite with a frame name
    /// @param frame the frame to initalize the sprite with
    /// @return true if initalization succeeded
    virtual bool initWithSpriteFrameName(char const*) = win 0x47da0, imac 0x46ec20, m1 0x3dde8c, ios 0x1b9c64;

    /// Sets flipX to itself and it's followers
    /// @param flipX the direction that the sprite should be flipped to
    virtual void setFlipX(bool flipX) = win 0x48010, m1 0x3de07c, imac 0x46ee60, ios 0x1b9e54;

    /// Sets flipY to itself and it's followers
    /// @param flipY the direction that the sprite should be flipped to
    virtual void setFlipY(bool flipY) = win 0x480f0, m1 0x3de12c, imac 0x46ef30, ios 0x1b9f04;

    /// Adds a follower to the sprite
    /// @param follower Something that will follow this sprite
    void addFollower(cocos2d::CCNode* follower) = imac 0x46f180;

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
    static CCSpriteWithHue* create(gd::string const& file) = win inline, m1 0x50b960 {
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

    virtual void draw() = win 0x48c20, m1 0x50c708, imac 0x5d9120, ios 0x1a6eb0;
    virtual bool initWithTexture(cocos2d::CCTexture2D*) = win 0x485f0, m1 0x50c0bc, imac 0x5d89f0, ios 0x1a6ac4;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = win 0x48650, m1 0x50c138, imac 0x5d8a60, ios 0x1a6b40;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = win 0x48590, m1 0x50be48, imac 0x5d87b0, ios 0x1a68c8;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = win 0x48660, m1 0x50c148, imac 0x5d8a80, ios 0x1a6b50;
    virtual gd::string getShaderName() = win 0x48400, imac 0x5d8300, m1 0x50b934, ios 0x1a6798;
    virtual const char* shaderBody() = m1 0x50c28c, imac 0x5d8bc0, ios 0x1a6c5c;
    virtual void updateColor() = win 0x48910, m1 0x50c2a4, imac 0x5d8be0, ios 0x1a6c68;

    float getAlpha() = win inline, imac 0x5d9050, m1 0x50c668 {
        return _displayedOpacity / 255.f;
    }
    float getHue() = win inline {
        return m_hue;
    }
    void getUniformLocations() = win inline, imac 0x5d8b50, m1 0x50c208 {
        m_uHueLoc = glGetUniformLocation(m_pShaderProgram->getProgram(), "u_hue");
        m_uAlphaLoc = glGetUniformLocation(m_pShaderProgram->getProgram(), "u_alpha");
        m_uLumLoc = glGetUniformLocation(m_pShaderProgram->getProgram(), "u_lum");
    }
    void initShader() = win 0x486d0, m1 0x50bea0;
    void setCustomLuminance(float r, float g, float b) = win inline, imac 0x5d9100 {
        m_luminance[0] = r;
        m_luminance[1] = g;
        m_luminance[2] = b;
    }
    void setEvenLuminance(float luminance) = win inline, imac 0x5d90d0, m1 0x50c6d8 {
        m_luminance[0] = luminance * 0.33f;
        m_luminance[1] = luminance * 0.33f;
        m_luminance[2] = luminance * 0.33f;
    }
    void setHue(float hue) = win inline {
        m_hue = hue;
        this->updateColorMatrix();
    }
    void setHueDegrees(float degrees) = win inline, imac 0x5d9080, m1 0x50c688 {
        auto deg = degrees;
        while (deg < 0.f) deg += 360.f;
        this->setHue(deg / 360.f * 6.28318548f);
    }
    void setLuminance(float luminance) = win inline, imac 0x5d8b20, m1 0x50c1e0 {
        m_luminance[0] = luminance * 0.21f;
        m_luminance[1] = luminance * 0.72f;
        m_luminance[2] = luminance * 0.07f;
    }
    void setupDefaultSettings() = win inline, imac 0x5d87f0, m1 0x50be8c {
        m_hue = 0.f;
        this->setLuminance(1.f);
    }
    void updateColorMatrix() = win 0x48930, m1 0x50c2c8;
    void updateHue(float) = win inline, imac 0x5d8ad0, m1 0x50c1ac {
        this->setHue(m_hue + 0.05235988f);
    }

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

    static CCTextInputNode* create(float, float, char const*, char const*, int, char const*) = win 0x4f0f0, imac 0x9dbd0, m1 0x90610;

    static CCTextInputNode* create(float width, float height, char const* placeholder, char const* fontPath) {
        return CCTextInputNode::create(width, height, placeholder, 0x18, fontPath);
    }
    static CCTextInputNode* create(float width, float height, char const* placeholder, int fontSize, char const* fontPath) {
        return CCTextInputNode::create(width, height, placeholder, "Thonburi", fontSize, fontPath);
    }

    virtual void visit() = win 0x4f730, imac 0x9e670, m1 0x90fec, ios 0x1704bc;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x512c0, imac 0xa0a80, m1 0x92fac, ios 0x171dbc;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x931a8, imac 0xa0ca0, ios 0x171f64 {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x93198, imac 0xa0c60, ios 0x171f54 {}
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x931a0, imac 0xa0c80, ios 0x171f5c {}
    virtual void registerWithTouchDispatcher() = win 0x514d0, m1 0x931b0, imac 0xa0cc0, ios 0x171f6c;
    virtual void textChanged() = win 0x50410, imac 0x9f220, m1 0x91a6c, ios 0x170d68;
    virtual void onClickTrackNode(bool) = win 0x503f0, imac 0x9f200, m1 0x91a4c, ios 0x170d48;
    virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&) = win 0x50210, imac 0x9efa0, m1 0x91808, ios 0x170b64;
    virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&) = win 0x50370, imac 0x9f0f0, m1 0x91940, ios 0x170cb8;
    virtual bool onTextFieldInsertText(cocos2d::CCTextFieldTTF* pSender, char const* text, int nLen, cocos2d::enumKeyCodes keyCodes) = win 0x504a0, imac 0x9f340, m1 0x91b84, ios 0x170e00;
    virtual bool onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF* tField) = win 0x50880, imac 0x9fa00, m1 0x92124, ios 0x1711fc;
    virtual bool onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF* tField) = win 0x50bb0, imac 0x9fd40, m1 0x92420, ios 0x171468;

    void addTextArea(TextArea*) = win 0x4f540, imac 0x9e100, m1 0x90ac8;
    void forceOffset();
    cocos2d::CCLabelBMFont* getPlaceholderLabel() {
        return m_placeholderLabel;
    }
    gd::string getString() = win inline, imac 0x9e790, m1 0x91118 {
        return m_textField->getString();
    }
    bool init(float, float, char const*, char const*, int, char const*) = win 0x4f300, imac 0x9dd90, m1 0x90770;
    void refreshLabel() = win 0x4fb40, imac 0x9e850, m1 0x911d4;
    void setAllowedChars(gd::string filter) = win inline, imac 0x9e650, m1 0x90fe4 {
        m_allowedChars = filter;
    }

    void setDelegate(TextInputDelegate* delegate) {
        m_delegate = delegate;
    }
    void setLabelNormalColor(cocos2d::ccColor3B color) = win inline, m1 0x91408, imac 0x9eb20 {
        m_textColor = color;
        this->refreshLabel();
    }
    void setLabelPlaceholderColor(cocos2d::ccColor3B color) = win inline, imac 0x9eb00, m1 0x913f8 {
        m_placeholderColor = color;
        this->refreshLabel();
    }
    void setLabelPlaceholderScale(float v) = win inline, imac 0x9eae0, m1 0x913f0 {
        m_placeholderScale = v;
        this->refreshLabel();
    }
    void setMaxLabelLength(int v) {
        m_maxLabelLength = v;
        this->refreshLabel();
    }
    void setMaxLabelScale(float v) = win inline, imac 0x9eaa0, m1 0x913e0 {
        m_maxLabelScale = v;
        this->refreshLabel();
    }
    void setMaxLabelWidth(float v) = win inline, imac 0x9eac0, m1 0x913e8 {
        m_maxLabelWidth = v;
        this->refreshLabel();
    }
    void setString(gd::string) = win 0x4f7a0, imac 0x9e6d0, m1 0x91048;
    void updateBlinkLabel() = win inline, imac 0x9ea80 {
        this->updateBlinkLabelToChar(this->m_textField->m_uCursorPos);
    }
    void updateBlinkLabelToChar(int) = win 0x4fe20, imac 0x9eb40, m1 0x9141c;
    void updateCursorPosition(cocos2d::CCPoint, cocos2d::CCRect) = win 0x50d60, imac 0xa0500, m1 0x92afc;
    void updateDefaultFontValues(gd::string) = win 0x4f630, m1 0x90a20;
    void updateLabel(gd::string) = win 0x4f840, imac 0x9e320, m1 0x90d00;

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

    static ChallengeNode* create(GJChallengeItem* challengeItem, ChallengesPage* challengesPage, bool isNew) = win inline, imac 0x38b290, m1 0x31a788 {
        auto ret = new ChallengeNode();
        if (ret->init(challengeItem, challengesPage, isNew)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool init(GJChallengeItem* challengeItem, ChallengesPage* challengesPage, bool isNew) = win 0x86ce0, imac 0x38b860, m1 0x31ad04;
    void onClaimReward(cocos2d::CCObject* sender) = imac 0x38c470;
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

    static ChallengesPage* create() = win inline, imac 0x389da0, m1 0x3193ec {
        auto ret = new ChallengesPage();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual bool init() = win 0x85300, imac 0x389f10, m1 0x319508, ios 0x35df0;
    virtual void registerWithTouchDispatcher() = win 0x425d0, imac 0x38b5d0, m1 0x31aab4, ios 0x36ea8;
    virtual void keyBackClicked() = win 0x86980, m1 0x31aa18, imac 0x38b540, ios 0x36e9c;
    virtual void show() = win 0x867a0, imac 0x38b3a0, m1 0x31a88c, ios 0x36d20;

    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = m1 0x31aa10, imac 0x38b520, ios 0x36e94 {}

    virtual void challengeStatusFinished() = win 0x85db0, imac 0x38aea0, m1 0x31a3ec, ios 0x369ac;
    virtual void challengeStatusFailed() = win 0x85f40, m1 0x31a6a4, imac 0x38b1a0, ios 0x36bb0;
    virtual void currencyWillExit(CurrencyRewardLayer*) = win 0x86cc0, imac 0x38b740, m1 0x31ac1c, ios 0x37010;

    void claimItem(ChallengeNode*, GJChallengeItem*, cocos2d::CCPoint) = win 0x869d0, imac 0x38b610, m1 0x31aaec;
    ChallengeNode* createChallengeNode(int number, bool skipAnimation, float animLength, bool isNew) = win 0x86090, imac 0x38abe0, m1 0x31a168;
    TodoReturn exitNodeAtSlot(int, float) = win 0x863c0, imac 0x38b0a0, m1 0x31a5bc;
    void onClose(cocos2d::CCObject* sender) = win 0x86940, m1 0x319edc, imac 0x38a930;
    TodoReturn tryGetChallenges();
    TodoReturn updateDots() = m1 0x31a344;
    callback void updateTimers(float) = win 0x864b0, m1 0x319f28, imac 0x38a970;

    cocos2d::CCArray* m_dots;
    cocos2d::CCLabelBMFont* m_countdownLabel;
    LoadingCircle* m_circle;
    bool m_triedToLoad;
    bool m_unkBool;
    CurrencyRewardLayer* m_currencyRewardLayer;
    cocos2d::CCDictionary* m_challengeNodes;
}

[[link(android), depends(ChanceObject)]]
class ChanceTriggerGameObject : EffectGameObject {
    // virtual ~ChanceTriggerGameObject();

    void editChanceObject(int, int);
    bool init(char const*);
    void remapChanceObjects(gd::unordered_map<int, int> const*) = win 0x49b580;
    void revertChanceRemap();

    gd::vector<ChanceObject> m_chanceObjects;
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

    static CharacterColorPage* create() = win inline, m1 0x56ee50, imac 0x6467b0 {
        auto ret = new CharacterColorPage();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual bool init() = win 0x87f30, imac 0x646910, m1 0x56ef58, ios 0x12bf2c;
    virtual void registerWithTouchDispatcher() = m1 0x570eb4, imac 0x6488c0, ios 0x12d844, win 0x425d0;
    virtual void keyBackClicked() = win 0x8a7a0, m1 0x570e08, imac 0x648820, ios 0x12d7e8;
    virtual void show() = m1 0x570c80, imac 0x648690, ios 0x12d674;

    int activeColorForMode(int mode);
    TodoReturn checkColor(int, UnlockType);
    int colorForIndex(int) = imac 0x648300;
    void createColorMenu() = win 0x88e50, m1 0x56ffac;
    void FLAlert_Clicked(FLAlertLayer*, bool);
    cocos2d::CCPoint offsetForIndex(int) = imac 0x648570;
    void onClose(cocos2d::CCObject* sender) = win 0x8a760, m1 0x56fb64, imac 0x647590;
    void onMode(cocos2d::CCObject* sender) = win 0x89550, imac 0x647690, m1 0x56fc80;
    void onPlayerColor(cocos2d::CCObject* sender) = win 0x89d60, m1 0x570904, imac 0x648320;
    void toggleGlow(cocos2d::CCObject*) = win 0x88da0, imac 0x647d80, m1 0x570384;
    TodoReturn toggleGlowItems(bool);
    void toggleShip(cocos2d::CCObject*) = win 0x88c80, imac 0x6475e0, m1 0x56fbb8;
    void updateColorMode(int) = imac 0x647dc0;
    void updateIconColors() = win 0x8a540, imac 0x647850;

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

    virtual bool init() = win 0x4a1240, m1 0x180db0, imac 0x1c36c0, ios 0x388610;
    virtual void setupCustomSprites(gd::string) = imac 0x1c3b10, m1 0x1811f0, ios 0x3889e4;
    virtual void resetObject() = m1 0x18256c, imac 0x1c5120, ios 0x389524;
    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x4a12c0, imac 0x1c3720, m1 0x180e0c, ios 0x38866c;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1c4fe0, m1 0x182434, ios 0x38941c;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1c44f0, m1 0x181b0c, ios 0x389178;
    virtual void triggerActivated(float) = win 0x4a12e0, imac 0x1c3740, m1 0x180e24, ios 0x388684;
    virtual void restoreObject() = imac 0x1c5190, m1 0x1825c4, ios 0x389574;
    virtual void updateSyncedAnimation(float, int) = imac 0x1c40f0, m1 0x181770, ios 0x388de8;

    TodoReturn resetCheckpoint();
    TodoReturn updateCheckpointSpriteVisibility();
}

[[link(android), depends(GJGameState), depends(GJShaderState), depends(FMODAudioState), depends(EffectManagerState)]]
class CheckpointObject : cocos2d::CCNode {
    // virtual ~CheckpointObject();
    CheckpointObject() = win 0x38e330, imac 0xcaa60;

    static CheckpointObject* create() = win inline, imac inline {
        auto ret = new CheckpointObject();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual bool init() = win 0x77db0, imac 0xbfa20, m1 0xae344, ios 0x126110;

    TodoReturn getObject();
    void setObject(GameObject*);

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
    gd::vector<DynamicSaveObject> m_vectorDynamicSaveObjects;
    gd::vector<ActiveSaveObject1> m_vectorActiveSaveObjects1;
    gd::vector<ActiveSaveObject2> m_vectorActiveSaveObjects2;
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

    virtual void keyBackClicked() = win 0x8bb20, imac 0x2753b0, m1 0x220028, ios 0x89a70;
    virtual void show() = m1 0x21ffdc, imac 0x275350, ios 0x89a24;
    virtual void textInputClosed(CCTextInputNode*) = m1 0x21fe7c, imac 0x275190, ios 0x89988;
    virtual void textChanged(CCTextInputNode*) = win 0x8b7a0, imac 0x2751d0, m1 0x21fe98, ios 0x899a4;
    virtual void textInputShouldOffset(CCTextInputNode*, float) = imac 0x2753e0, m1 0x220034, ios 0x89a7c;
    virtual void textInputReturn(CCTextInputNode*) = imac 0x2754a0, m1 0x220104, ios 0x89ae8;

    TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
    TodoReturn determineStartValues();
    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x21ec48, imac 0x273e80;
    void onClose(cocos2d::CCObject* sender);
    void onDynamicBlock(cocos2d::CCObject* sender);
    void onItemIDArrow(cocos2d::CCObject* sender);
    void onNextItemID(cocos2d::CCObject* sender);
    TodoReturn updateEditorLabel();
    TodoReturn updateItemID();
    TodoReturn updateTextInputLabel();
}

[[link(android)]]
class CollisionTriggerAction {
    PAD = win 0x20;
    gd::vector<int> m_unkVecInt;
}

[[link(android)]]
class ColorAction : cocos2d::CCObject {
    // virtual ~ColorAction();

    static ColorAction* create() = win 0x251b40, imac 0x2c5030;
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
    void setupFromMap(gd::map<gd::string, gd::string>&) = win 0x252800;
    void setupFromString(gd::string) = win 0x252720, imac 0x2c7390;
    void step(float) = win 0x251c30;
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

    virtual bool init() = imac 0x2c4e30, m1 0x268d18, ios 0x10d8c;

    float m_opacity;
    cocos2d::ccColor3B m_color;
    cocos2d::ccColor3B m_copyColor;
}

[[link(android)]]
class ColorChannelSprite : cocos2d::CCSprite {
    // virtual ~ColorChannelSprite();

    static ColorChannelSprite* create() = win 0x2515d0, m1 0x2685c0, imac 0x2c46d0;

    virtual bool init() = win 0x251690, imac 0x2c4770, m1 0x268668, ios 0x10764;

    void updateBlending(bool enabled) = win 0x2519c0, imac 0x2c4aa0;
    void updateCopyLabel(int channelID, bool copyOpacity) = win 0x2516b0, imac 0x2c4790, m1 0x268674;
    void updateOpacity(float alpha) = win 0x251870, imac 0x2c4950, m1 0x26881c;
    void updateValues(ColorAction* action) = win inline, imac 0x2c4bb0, m1 0x268a84 {
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

    static ColorSelectLiveOverlay* create(ColorAction*, ColorAction*, EffectGameObject*) = win 0x8bc50, imac 0x551c50;

    virtual void keyBackClicked() = win 0x8d1b0, m1 0x4aa894, imac 0x553950, ios 0xf9668;
    virtual void show() = m1 0x4aa94c, imac 0x553a00, ios 0xf967c;

    void closeColorSelect(cocos2d::CCObject*);
    void colorValueChanged(cocos2d::ccColor3B);
    TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
    TodoReturn createWithActions(ColorAction*, ColorAction*);
    TodoReturn createWithObject(EffectGameObject*);
    TodoReturn determineStartValues();
    TodoReturn getColorValue();
    bool init(ColorAction*, ColorAction*, EffectGameObject*) = win 0x8bda0, m1 0x4a9080, imac 0x551e20;
    void onSelectTab(cocos2d::CCObject* sender);
    TodoReturn selectColor(cocos2d::ccColor3B);
    TodoReturn sliderChanged(cocos2d::CCObject*);
    TodoReturn textChanged(CCTextInputNode*);
    void textInputClosed(CCTextInputNode*);
    TodoReturn toggleControls(bool);
    TodoReturn updateColorLabel();
    TodoReturn updateColorValue();
    void updateOpacity();

    EffectGameObject* m_effectGameObject;
    cocos2d::CCArray* m_barSprites;
    cocos2d::CCArray* m_12buttons;
    ColorAction* m_baseColorAction;
    ColorAction* m_detailColorAction;
}

[[link(android)]]
class ColorSelectPopup : SetupTriggerPopup, cocos2d::extension::ColorPickerDelegate, GJSpecialColorSelectDelegate {
    static gd::string colorToHex(cocos2d::ccColor3B) = win 0x926d0;
    static ColorSelectPopup* create(EffectGameObject* effect, cocos2d::CCArray* array, ColorAction* action) = win 0x8da30, imac 0x70e810;
    // virtual ~ColorSelectPopup();

    static ColorSelectPopup* create(cocos2d::ccColor3B color) = win inline, m1 0x62d8a8 {
        auto action = ColorAction::create();
        action->m_color = color;
        return ColorSelectPopup::create(action);
    }
    static ColorSelectPopup* create(ColorAction* action) = win inline, imac 0x70eaf0 {
        return ColorSelectPopup::create(nullptr, nullptr, action);
    }
    static ColorSelectPopup* create(EffectGameObject* effect, cocos2d::CCArray* array) = win inline, m1 0x62d6a0 {
        return ColorSelectPopup::create(effect, array, nullptr);
    }
    static cocos2d::ccColor3B hexToColor(gd::string) = win 0x91a60;

    virtual void show() = m1 0x6332dc, imac 0x714aa0, ios 0x418298;
    virtual void determineStartValues() = win 0x90390, m1 0x631010, imac 0x712800, ios 0x417284;
    virtual void textChanged(CCTextInputNode*) = win 0x92cd0, imac 0x714b90, m1 0x6333a8, ios 0x418364;
    virtual void colorValueChanged(cocos2d::ccColor3B) = win 0x91750, imac 0x712ff0, m1 0x6316b0, ios 0x417894;
    virtual void colorSelectClosed(GJSpecialColorSelect*, int) = win 0x93690, imac 0x715130, m1 0x633898, ios 0x418764;
    virtual void keyBackClicked() = m1 0x6316a4, imac 0x712fc0, ios 0x417888;

    void closeColorSelect(cocos2d::CCObject*) = win 0x914a0, imac 0x711290;
    cocos2d::ccColor3B const& getColorValue();
    bool init(EffectGameObject*, cocos2d::CCArray*, ColorAction*) = win 0x8dc20, imac 0x70eb40, m1 0x62d8e4;
    void onCopy(cocos2d::CCObject* sender) = win 0x90d60;
    void onCopyOpacity(cocos2d::CCObject* sender) = win 0x90b00;
    void onDefault(cocos2d::CCObject* sender) = win 0x90e60, m1 0x630280;
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
    void updateDurLabel() = imac 0x7116c0, m1 0x630004;
    void updateHSVMode() = win 0x93540;
    void updateHSVValue();
    void updateOpacity() = win 0x912b0;
    void updateOpacityLabel() = win 0x91430;
    void updateTextInputLabel();

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
    bool m_initializing;
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

    virtual bool init() = win 0xb5460, imac 0x242d60, m1 0x1f202c, ios 0x11371c;
    virtual void draw() = imac 0x243070, m1 0x1f22f4, ios 0x1139b8;
    virtual void likedItem(LikeItemType, int, bool) = win 0xb7750, imac 0x243140, m1 0x1f23a0, ios 0x113a64;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xb79c0, imac 0x2434e0, m1 0x1f271c, ios 0x113bdc;

    TodoReturn incrementDislikes();
    TodoReturn incrementLikes();
    void loadFromComment(GJComment*) = win 0xb5480, m1 0x1e5f14, imac 0x235d50;
    void onConfirmDelete(cocos2d::CCObject* sender) = win 0xb7850, imac 0x242f80, m1 0x1f220c;
    void onDelete() = m1 0x1f26a0, imac 0x243450;
    void onGoToLevel(cocos2d::CCObject* sender) = win 0xb7b20, imac 0x242dc0, m1 0x1f2078;
    void onLike(cocos2d::CCObject* sender) = win 0xb75f0, imac 0x242e90, m1 0x1f212c;
    TodoReturn onUndelete();

    void onUnhide(cocos2d::CCObject* sender) = win 0xb7b00, imac 0x242e70;
    void onViewProfile(cocos2d::CCObject* sender) = imac 0x242d90, m1 0x1f2044;
    void updateBGColor(int);
    void updateLabelValues();

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

    bool init(int unlockType, int iconID, int unknown, gd::string author) = win inline, imac 0x30a010, m1 0x2a1170 {
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

    static CommunityCreditsPage* create() = win inline, m1 0x2a13f8 {
        auto ret = new CommunityCreditsPage();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual bool init() = win 0x94000, imac 0x30a500, m1 0x2a14fc, ios 0x1a3788;
    virtual void registerWithTouchDispatcher() = m1 0x2a37e4, imac 0x30ca60, ios 0x1a5d64;
    virtual void keyBackClicked() = m1 0x2a3768, imac 0x30c9f0, ios 0x1a5ce8;
    virtual void show() = m1 0x2a35e0, imac 0x30c860, ios 0x1a5b74;

    void FLAlert_Clicked(FLAlertLayer*, bool);
    void goToPage(int) = win 0x96040, m1 0x2a34cc;
    void onClose(cocos2d::CCObject* sender);
    void onSwitchPage(cocos2d::CCObject* sender);

    cocos2d::CCDictionary* m_pageObjects;
    CCMenuItemSpriteExtra* m_prevButton;
    CCMenuItemSpriteExtra* m_nextButton;
    int m_page;
}

[[link(android)]]
class ConfigureHSVWidget : cocos2d::CCNode, TextInputDelegate {
    // virtual ~ConfigureHSVWidget();

    static ConfigureHSVWidget* create(cocos2d::ccHSVValue, bool, bool) = win 0x96950, imac 0x41cf70;
    static cocos2d::ccHSVValue getHSV(GameObject*, cocos2d::CCArray*, int) = win 0x980a0, imac 0x41ead0, m1 0x39a274;

    virtual void textInputOpened(CCTextInputNode*) = m1 0x39a008, imac 0x41e810, ios 0x10323c {}
    virtual void textInputClosed(CCTextInputNode*) = win 0x8b790, m1 0x39a010, imac 0x41e830, ios 0x103244;
    virtual void textChanged(CCTextInputNode*) = win 0x97560, imac 0x41e870, m1 0x39a02c, ios 0x103260;

    void createTextInputNode(cocos2d::CCPoint, int) = win 0x97300, imac 0x41dcd0, m1 0x3994ec;
    bool init(cocos2d::ccHSVValue, bool, bool) = win 0x96a20, imac 0x41d320, m1 0x398bbc;
    void onClose() = imac 0x41d040, m1 0x398940;
    void onResetHSV(cocos2d::CCObject* sender) = win 0x97b10, imac 0x41e0f0, m1 0x399978;
    void onToggleSConst(cocos2d::CCObject* sender);
    void onToggleVConst(cocos2d::CCObject* sender);
    void sliderChanged(cocos2d::CCObject* sender) = m1 0x399748;
    void updateLabels() = win 0x97b90, imac 0x41e170, m1 0x3999f0;
    void updateSliders() = win 0x97820, imac 0x41e750, m1 0x399f4c;

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

    virtual void keyBackClicked() = win 0x98fb0, m1 0x53a3ec, imac 0x60d720, ios 0x153e9c;
    virtual void textInputClosed(CCTextInputNode*) = m1 0x53a2d4, imac 0x60d5d0, ios 0x153d98;
    virtual void textChanged(CCTextInputNode*) = win 0x98de0, imac 0x60d610, m1 0x53a2f0, ios 0x153db4;

    bool init(ConfigureValuePopupDelegate*, float, float, float, gd::string, gd::string) = win 0x98550, m1 0x5399a8, imac 0x60cbd0;
    void onClose(cocos2d::CCObject* sender) = win 0x98f30;
    void sliderChanged(cocos2d::CCObject* sender) = win 0x98d00, imac 0x60d460, m1 0x53a17c;
    void updateTextInputLabel() = win 0x98d50, imac 0x60d4b0, m1 0x53a1c0;

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
    virtual void valuePopupClosed(ConfigureValuePopup*, float);
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

    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x4a26c0, imac 0x1c52f0, m1 0x182718, ios 0x389674;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1c5570, m1 0x182950, ios 0x38981c;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1c59a0, m1 0x182cdc, ios 0x389b1c;

    bool init(char const*);

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

    virtual void update(float) = win 0x9adf0, imac 0x4f6f90, m1 0x457810, ios 0x81c38;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x9b0c0, imac 0x4f7200, m1 0x457a68, ios 0x81e38;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x457b90, imac 0x4f72f0, ios 0x81ee4 {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x9b140, m1 0x457b98, imac 0x4f7310, ios 0x81eec;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x457c68, imac 0x4f73b0, ios 0x81fb4;
    virtual void registerWithTouchDispatcher() = m1 0x457c84, imac 0x4f73f0, ios 0x81fd0;
    virtual void keyBackClicked() = win 0x9b040, m1 0x4579e4, imac 0x4f7160, ios 0x81db4;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x9b1f0, imac 0x4f7430, m1 0x457cbc, ios 0x82008;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x9af60, imac 0x4f7060, m1 0x4578d8, ios 0x81ce0;
    virtual void onClose(cocos2d::CCObject* sender) = win 0x84620, m1 0x4579a8, imac 0x4f7130, ios 0x81d78;
    virtual void keyUp(cocos2d::enumKeyCodes) = m1 0x457d00, imac 0x4f7480, ios 0x8204c {}
    virtual TodoReturn playMusic() = win 0x9a6a0, m1 0x456ea4, imac 0x4f6610, ios 0x814f4;
    virtual TodoReturn registerTouch() = win 0x9b060, imac 0x4f71b0, m1 0x457a20, ios 0x81df0;
    virtual void onInfo(cocos2d::CCObject* sender) = win 0x9ae10, imac 0x4f6fb0, m1 0x457820, ios 0x81c48;
    virtual void onRecord(cocos2d::CCObject* sender) = win 0x9a510, imac 0x4f6500, m1 0x456d90, ios 0x813e4;
    virtual TodoReturn recordingDidStop() = win 0x9a800, imac 0x4f66a0, m1 0x456f44, ios 0x81584;

    TodoReturn doClearGuidelines() = m1 0x456ce8, imac 0x4f6470;
    TodoReturn getMergedRecordString(gd::string, gd::string);
    bool init(CustomSongDelegate*, AudioGuidelinesType) = m1 0x455c70, imac 0x4f5320;
    void onClearGuidelines(cocos2d::CCObject* sender) = m1 0x456b0c, imac 0x4f6280;
    void onStop(cocos2d::CCObject* sender);
    TodoReturn toggleItems(bool);
}

[[link(android)]]
class CreateMenuItem : CCMenuItemSpriteExtra {
    // virtual ~CreateMenuItem();

    static CreateMenuItem* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = win 0x127700, imac 0x2f300, m1 0x2ed0c;

    bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

    gd::string m_spriteFileName;
    int m_objectID;
}

[[link(android)]]
class CreateParticlePopup : FLAlertLayer, TextInputDelegate, ColorSelectDelegate, SliderDelegate {
    // virtual ~CreateParticlePopup();

    static CreateParticlePopup* create(gd::string);
    static CreateParticlePopup* create(ParticleGameObject*, cocos2d::CCArray*, gd::string);
    static CreateParticlePopup* create(ParticleGameObject*, cocos2d::CCArray*) = win 0x414180, imac 0x45bb50;

    virtual void update(float) = imac 0x463940, m1 0x3d3a48, ios 0x2d0d74;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x41d070, imac 0x4644c0, m1 0x3d4520, ios 0x2d15dc;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x41d170, imac 0x4645d0, m1 0x3d4614, ios 0x2d16d0;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x41d5a0, imac 0x4649a0, m1 0x3d49b0, ios 0x2d1a68;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x3d49ec, imac 0x4649f0, ios 0x2d1aa4;
    virtual void keyBackClicked() = win 0x41d060, imac 0x464320, m1 0x3d438c, ios 0x2d1504;
    virtual void sliderBegan(Slider*) = win 0x41c7a0, imac 0x4641e0, m1 0x3d423c, ios 0x2d13d4;
    virtual void sliderEnded(Slider*) = win 0x41c860, imac 0x4642c0, m1 0x3d4354, ios 0x2d14ec;
    virtual void colorSelectClosed(cocos2d::CCNode*) = win 0x419e10, imac 0x4636b0, m1 0x3d37d4, ios 0x2d0b10;
    virtual void textInputShouldOffset(CCTextInputNode*, float) = m1 0x3d4398, imac 0x464350, ios 0x2d1510;
    virtual void textInputReturn(CCTextInputNode*) = m1 0x3d4468, imac 0x464410, ios 0x2d157c;
    virtual void textInputClosed(CCTextInputNode*) = m1 0x3d3b8c, imac 0x463ab0, ios 0x2d0ea8;
    virtual void textChanged(CCTextInputNode*) = win 0x41a6b0, imac 0x463af0, m1 0x3d3ba8, ios 0x2d0ec4;

    TodoReturn centerAlignParticle(cocos2d::CCObject*);
    TodoReturn createParticleSlider(gjParticleValue, int, bool, cocos2d::CCPoint, cocos2d::CCArray*);
    TodoReturn getPage(int);
    TodoReturn getPageButton(int);
    TodoReturn getPageContainer(int);
    TodoReturn getPageInputNodes(int);
    TodoReturn getPageMenu(int);
    TodoReturn getPageSliders(int);
    bool init(ParticleGameObject*, cocos2d::CCArray*, gd::string) = win 0x414370, m1 0x3ccd08, imac 0x45be60;
    TodoReturn maxSliderValueForType(gjParticleValue);
    TodoReturn minSliderValueForType(gjParticleValue);
    void onAnimateActiveOnly(cocos2d::CCObject* sender);
    void onAnimateOnTrigger(cocos2d::CCObject* sender);
    void onCalcEmission(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender) = win 0x41cf20, imac 0x460450, m1 0x3d0ad8;
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
    TodoReturn titleForParticleValue(gjParticleValue) = m1 0x3e51c0;
    TodoReturn toggleGravityMode(bool);
    TodoReturn updateColorSprite(int);
    TodoReturn updateInputNodeStringForType(gjParticleValue);
    TodoReturn updateParticleValueForType(float, gjParticleValue, cocos2d::CCParticleSystemQuad*);
    TodoReturn updateSliderForType(gjParticleValue);
    TodoReturn valueForParticleValue(gjParticleValue);
    void willClose();

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

    static CreatorLayer* create() = win inline, imac 0x285610, m1 0x22ec24 {
        auto ret = new CreatorLayer();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCScene* scene() = win 0x9b9a0, m1 0x22eb40, imac 0x2854f0;

    virtual bool init() = win 0x9bb10, m1 0x22ece0, imac 0x2856f0, ios 0xb81ec;
    virtual void keyBackClicked() = win 0x9f2b0, m1 0x230ea4, imac 0x287a70, ios 0xb9d0c;
    virtual void sceneWillResume() = win 0x9f1f0, imac 0x2879f0, m1 0x230e34, ios 0xb9ccc;
    virtual void dialogClosed(DialogLayer*) = win 0x9f0d0, imac 0x2878f0, m1 0x230d34, ios 0xb9c3c;

    bool canPlayOnlineLevels();
    void checkQuestsStatus() = imac 0x286f00, m1 0x23039c;
    void onAdventureMap(cocos2d::CCObject* sender) = win 0x9dbe0, imac 0x286950, m1 0x22fdf4;
    void onBack(cocos2d::CCObject* sender) = win 0x9f190, m1 0x230c80, imac 0x287820;
    void onChallenge(cocos2d::CCObject* sender) = win 0x9ddb0, imac 0x2869c0, m1 0x22fe84;
    void onDailyLevel(cocos2d::CCObject* sender) = win 0x9dd50, m1 0x22febc, imac 0x2869f0;
    void onEventLevel(cocos2d::CCObject* sender) = win 0x9dd90, m1 0x22fefc, imac 0x286a30;
    void onFameLevels(cocos2d::CCObject* sender);
    void onFeaturedLevels(cocos2d::CCObject* sender) = win 0x9d2a0, m1 0x22ff64, imac 0x286aa0;
    void onGauntlets(cocos2d::CCObject* sender) = win 0x9d590, m1 0x22ff1c, imac 0x286a50;
    void onLeaderboards(cocos2d::CCObject* sender) = win 0x9d0f0, m1 0x22fa48, imac 0x2865a0;
    void onMapPacks(cocos2d::CCObject* sender) = win 0x9d4d0, imac 0x286b80, m1 0x23002c;
    void onMultiplayer(cocos2d::CCObject* sender) = win 0x9d610, m1 0x22fa84, imac 0x2865e0;
    void onMyLevels(cocos2d::CCObject* sender) = win 0x9cce0, m1 0x2300b4, imac 0x286c20;
    void onOnlineLevels(cocos2d::CCObject* sender) = win 0x9d450, m1 0x230078, imac 0x286be0;
    void onOnlyFullVersion(cocos2d::CCObject* sender) = m1 0x23017c, imac 0x286d00;
    void onPaths(cocos2d::CCObject* sender) = win 0x9d360, imac 0x286b00, m1 0x22ffb0;
    void onSavedLevels(cocos2d::CCObject* sender) = win 0x9cef0, m1 0x22f988, imac 0x2864d0;
    void onSecretVault(cocos2d::CCObject* sender) = win 0x9df20, m1 0x230498, imac 0x287000;
    void onTopLists(cocos2d::CCObject* sender) = win 0x9d380, imac 0x286b20, m1 0x22ffcc;
    void onTreasureRoom(cocos2d::CCObject* sender) = win 0x9e730, m1 0x2306ec, imac 0x287220;
    void onWeeklyLevel(cocos2d::CCObject* sender) = win 0x9dd70, m1 0x22fedc, imac 0x286a10;

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

    static CurrencyRewardLayer* create(int orbs, int stars, int moons, int diamonds, CurrencySpriteType demonKey, int keyCount, CurrencySpriteType shardType, int shardsCount, cocos2d::CCPoint position, CurrencyRewardType, float, float time) = win 0x9f500, imac 0x78ff00, m1 0x6a36f8;

    virtual void update(float) = win 0xa2230, imac 0x792fd0, m1 0x6a64a8, ios 0x3212a4;

    void createObjects(CurrencySpriteType type, int count, cocos2d::CCPoint position, float time) = win inline, imac 0x792130, m1 0x6a57c0 {
        this->createObjectsFull(type, count, nullptr, position, time);
    }
    void createObjectsFull(CurrencySpriteType, int, cocos2d::CCSprite*, cocos2d::CCPoint, float) = win 0xa1520, imac 0x7921d0, m1 0x6a5884;
    void createUnlockObject(cocos2d::CCSprite* sprite, cocos2d::CCPoint position, float time) = win inline, imac 0x792180, m1 0x6a5828 {
        this->createObjectsFull(CurrencySpriteType::Icon, 1, sprite, position, time);
    }
    void incrementCount(int count) = win inline, imac 0x793700 {
        if (m_orbsLabel == nullptr) return;
        m_orbs += count;
        this->pulseSprite(m_orbsSprite);
        m_orbsLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
    }
    void incrementDiamondsCount(int count) = win inline, imac 0x793b50 {
        if (m_diamondsLabel == nullptr) return;
        m_diamonds += count;
        this->pulseSprite(m_diamondsSprite);
        m_diamondsLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
    }
    void incrementMoonsCount(int count) = win inline, imac 0x7939e0 {
        if (m_moonsLabel == nullptr) return;
        m_moons += count;
        this->pulseSprite(m_moonsSprite);
        m_moonsLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
    }
    void incrementSpecialCount1(int count) = win inline, imac 0x793e30 {
        if (m_keysLabel == nullptr) return;
        m_keys += count;
        this->pulseSprite(m_keysSprite);
        m_keysLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
    }
    void incrementSpecialCount2(int count) = win inline, imac 0x793cc0 {
        if (m_shardsLabel == nullptr) return;
        m_shards += count;
        this->pulseSprite(m_shardsSprite);
        m_shardsLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
    }
    void incrementStarsCount(int count) = win inline, imac 0x793870 {
        if (m_starsLabel == nullptr) return;
        m_stars += count;
        this->pulseSprite(m_starsSprite);
        m_starsLabel->setString(cocos2d::CCString::createWithFormat("%i", count)->getCString());
    }
    bool init(int, int, int, int, CurrencySpriteType, int, CurrencySpriteType, int, cocos2d::CCPoint, CurrencyRewardType, float, float) = win 0x9f750, imac 0x78ffe0, m1 0x6a3800;
    void pulseSprite(cocos2d::CCSprite*) = win 0xa2c00, imac 0x793fa0, m1 0x6a72f8;

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

    static CurrencySprite* create(CurrencySpriteType type, bool burst) = win inline, imac 0x792020, m1 0x6a56c4 {
        auto ret = new CurrencySprite();
        if (ret->init(type, burst)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    static CurrencySprite* createWithSprite(cocos2d::CCSprite*) = win 0xa44b0, m1 0x6a63c0;
    static CurrencySpriteType rewardToSpriteType(int);
    static gd::string spriteTypeToStat(CurrencySpriteType) = win 0xa4780, imac 0x791f20;
    bool init(CurrencySpriteType, bool) = win 0xa2cd0, m1 0x6a74c0, imac 0x794180;
    bool initWithSprite(cocos2d::CCSprite*) = imac 0x794ad0;

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

    virtual void keyBackClicked() = win 0xa99e0, imac 0x1e7730, m1 0x19eb58, ios 0x546e4;
    virtual void textInputOpened(CCTextInputNode*) = win 0xa8f70, imac 0x1e7380, m1 0x19e79c, ios 0x543f4;
    virtual void textInputClosed(CCTextInputNode*) = m1 0x19e8c4, imac 0x1e7490, ios 0x54554;
    virtual void textChanged(CCTextInputNode*) = win 0xa9100, imac 0x1e74d0, m1 0x19e8e0, ios 0x54570;
    virtual void hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue) = win 0xa86a0, imac 0x1e7130, m1 0x19e5a8, ios 0x54208;
    virtual void colorSelectClosed(cocos2d::CCNode*) = win 0xa8030, imac 0x1e6ed0, m1 0x19e36c, ios 0x541fc;
    virtual void colorSetupClosed(int) = win 0xa7c90, imac 0x1e6a60, m1 0x19df5c, ios 0x53ed8;

    TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
    TodoReturn determineStartValues();
    int getActiveMode(bool) = win 0xa8cb0, imac 0x1e63e0, m1 0x19d9c0;
    TodoReturn getButtonByTag(int) = win 0xa9520;
    TodoReturn getHSV();
    void highlightSelected(ButtonSprite*) = win 0xa97d0, imac 0x1e6d00;
    bool init(GameObject*, cocos2d::CCArray*) = win 0xa4d00, imac 0x1e3120, m1 0x19a9d0;
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
    void onSelectColor(cocos2d::CCObject* sender) = win 0xa95a0, imac 0x1e5a90, m1 0x19d08c;
    void onSelectMode(cocos2d::CCObject* sender) = win 0xa88e0, imac 0x1e5500, m1 0x19cb14;
    void onSettings(cocos2d::CCObject* sender);
    void onUpdateCustomColor(cocos2d::CCObject* sender) = win 0xa8ea0, imac 0x1e5b40, m1 0x19d154;
    TodoReturn recreateLayer();
    void sliderChanged(cocos2d::CCObject*);
    void toggleVisible() = win 0xa8af0, imac 0x1e7220, m1 0x19e668;
    void updateChannelLabel(int channel) = win inline, imac 0x1e6680, m1 0x19dc40 {
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
    void updateColorSprite() = win 0xa7e20, imac 0x1e65b0, m1 0x19db70;
    void updateCurrentSelection();
    void updateCustomColorLabels() = win 0xa9490, imac 0x1e5c10, m1 0x19d228;
    void updateHSVButtons() = win 0xa8270;
    void updateKerningLabel() = m1 0x19d4a8;
    void updateSelected(int) = win 0xa9660, imac 0x1e6b70, m1 0x19e070;

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

    virtual void onClose(cocos2d::CCObject* sender) = win 0xa9e50, imac 0x1e7d20, m1 0x19f0d4, ios 0x54abc;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = win 0xa9da0, imac 0x1e7cb0, m1 0x19f054, ios 0x54a3c;

    bool init(GameObject*, cocos2d::CCArray*, CustomizeObjectLayer*) = m1 0x19ec84, imac 0x1e7880;
}

[[link(android)]]
class CustomListView : BoomListView {
    inline CustomListView() {}
    ~CustomListView() {}

    static CustomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = win 0xaa010, imac 0x22eb50, m1 0x1df724;

    static CustomListView* create(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
        return CustomListView::create(entries, nullptr, width, height, 0, type, 0.0f);
    }

    virtual void setupList(float) = win 0xab5c0, imac 0x23b7f0, m1 0x1eb7bc, ios 0x10e1ec;
    virtual TableViewCell* getListCell(char const*) = win 0xaa140, imac 0x22ec90, m1 0x1df834, ios 0x10375c;
    virtual void loadCell(TableViewCell*, int) = win 0xaaf00, imac 0x230830, m1 0x1e0870, ios 0x103ec4;

    float getCellHeight(BoomListType) = imac 0x22fd60;
    void reloadAll() = win 0xabc90, imac 0x23bfe0, m1 0x1ebe10;

    int m_unknown;
}

[[link(android)]]
class CustomMusicCell : CustomSongCell {
    // virtual ~CustomMusicCell();
    CustomMusicCell(char const*, float, float);

    void loadFromObject(SongInfoObject*) = win 0xb46f0, imac 0x2325a0, m1 0x1e2548;
    void updateBGColor(int);
}

[[link(android)]]
class CustomSFXCell : TableViewCell, CustomSFXDelegate {
    // virtual ~CustomSFXCell();
    CustomSFXCell(char const*, float, float);

    virtual bool init() = win 0xb4410, imac 0x2421a0, m1 0x1f17e8, ios 0x11316c;
    virtual void draw() = imac 0x2422a0, m1 0x1f188c, ios 0x113210;
    virtual void sfxObjectSelected(SFXInfoObject*) = win 0xb4520, imac 0x2421c0, m1 0x1f17f8, ios 0x11317c;
    virtual int getActiveSFXID() = win 0xb4110, m1 0x1f1854, imac 0x242240, ios 0x1131d8;

    void loadFromObject(SFXInfoObject*) = win 0xb4430;
    TodoReturn shouldReload();
    void updateBGColor(int) = win 0xb4560;
}

[[link(android)]]
class CustomSFXDelegate {
    virtual void sfxObjectSelected(SFXInfoObject*);
    virtual int getActiveSFXID();
    virtual bool overridePlaySFX(SFXInfoObject*);
}

[[link(android)]]
class CustomSFXWidget : cocos2d::CCNode, MusicDownloadDelegate, FLAlertLayerProtocol {
    // virtual ~CustomSFXWidget();

    static CustomSFXWidget* create(SFXInfoObject*, CustomSFXDelegate*, bool, bool, bool, bool, bool);

    virtual void downloadSFXFinished(int) = win 0xc18e0, m1 0x500fac, imac 0x5cc910, ios 0x2f13bc;
    virtual void downloadSFXFailed(int, GJSongError) = win 0xc1960, imac 0x5cc9b0, m1 0x50104c, ios 0x2f1414;
    virtual void songStateChanged() = win 0xc1230, imac 0x5cc8a0, m1 0x500f84, ios 0x2f13a8;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xc1a60, imac 0x5ccb90, m1 0x50125c, ios 0x2f1554;

    TodoReturn deleteSFX() = m1 0x500ad8, imac 0x5cc3f0;
    void downloadFailed();
    TodoReturn hideLoadingArt();
    bool init(SFXInfoObject*, CustomSFXDelegate*, bool, bool, bool, bool, bool) = imac 0x5ca7d0, m1 0x4fef30;
    void onCancelDownload(cocos2d::CCObject* sender);
    void onDelete(cocos2d::CCObject* sender) = m1 0x4fff6c, imac 0x5cb890;
    void onDownload(cocos2d::CCObject* sender);
    void onPlayback(cocos2d::CCObject* sender);
    void onSelect(cocos2d::CCObject* sender);
    void showLoadingArt();
    TodoReturn startDownload();
    TodoReturn startMonitorDownload();
    TodoReturn updateDownloadProgress(float);
    TodoReturn updateError(GJSongError) = m1 0x50115c, imac 0x5ccaa0;
    TodoReturn updateLengthMod(float);
    TodoReturn updatePlaybackBtn();
    TodoReturn updateProgressBar(int);
    void updateSFXInfo() = imac 0x5cbcc0, m1 0x5003a4;
    TodoReturn updateSFXObject(SFXInfoObject*);
    TodoReturn verifySFXID(int);
}

[[link(android)]]
class CustomSongCell : TableViewCell, CustomSongDelegate {
    // virtual ~CustomSongCell();
    CustomSongCell(char const*, float, float);

    virtual bool init() = m1 0x1f152c, imac 0x241da0, ios 0x112efc;
    virtual void draw() = imac 0x241fb0, m1 0x1f16b0, ios 0x113088;
    virtual void songIDChanged(int) = win 0xb40d0, imac 0x241e90, m1 0x1f15f4, ios 0x112fc4;
    virtual int getActiveSongID() = m1 0x1f1650, imac 0x241f10, ios 0x113020;
    virtual gd::string getSongFileName() = win 0xb4130, m1 0x1f1688, imac 0x241f70, ios 0x113058;
    virtual LevelSettingsObject* getLevelSettings() = win 0x83630, m1 0x1f16a0, imac 0x241f90, ios 0x113078;

    void loadFromObject(SongInfoObject*) = win 0xb3f10, imac 0x2323a0, m1 0x1e2320;
    void onDelete(cocos2d::CCObject* sender);
    TodoReturn shouldReload();
    void updateBGColor(int);

    SongInfoObject* m_songInfoObject;
    bool m_unkBool;
}

[[link(android)]]
class CustomSongDelegate {
    virtual void songIDChanged(int);
    virtual int getActiveSongID();
    virtual gd::string getSongFileName();
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

    static CustomSongLayer* create(CustomSongDelegate* delegate) = win inline, m1 0x1b82a4 {
        auto ret = new CustomSongLayer();
        if (ret->init(delegate)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual void keyBackClicked() = win 0xc3760, m1 0x1b9a48, imac 0x2048b0, ios 0x1483d8;
    virtual void show() = win 0xc3770, imac 0x2049a0, m1 0x1b9b34, ios 0x1483e4;
    virtual void textChanged(CCTextInputNode*) = m1 0x1b9518, imac 0x204340, ios 0x1480ac;
    virtual void textInputOpened(CCTextInputNode*) = imac 0x2042e0, m1 0x1b9498, ios 0x148074;
    virtual void textInputClosed(CCTextInputNode*) = imac 0x204280, m1 0x1b9418, ios 0x14803c;
    virtual void textInputShouldOffset(CCTextInputNode*, float) = imac 0x204360, m1 0x1b9538, ios 0x1480cc;
    virtual void textInputReturn(CCTextInputNode*) = imac 0x204420, m1 0x1b9608, ios 0x148138;
    virtual void dropDownLayerWillClose(GJDropDownLayer*) = win 0xc34f0, m1 0x1b98b8, imac 0x204750, ios 0x148300;
    virtual void musicBrowserClosed(MusicBrowser*) = win 0xc35c0, m1 0x1b9980, imac 0x204800, ios 0x14836c;

    bool init(CustomSongDelegate*) = win 0xc1f00, m1 0x1b83c0, imac 0x203120;
    void onClose(cocos2d::CCObject* sender) = win 0xc3690;
    void onCreateLines(cocos2d::CCObject* sender);
    void onMusicBrowser(cocos2d::CCObject* sender) = win 0xc31a0, imac 0x203e50, m1 0x1b902c;
    void onNCSBrowser(cocos2d::CCObject* sender) = imac 0x203e30;
    void onNewgroundsBrowser(cocos2d::CCObject* sender) = win 0xc3300;
    void onOptions(cocos2d::CCObject* sender) = imac 0x203f00, m1 0x30eaf4;
    void onSearch(cocos2d::CCObject* sender) = win 0xc2c80, m1 0x1b90ec;
    void onSongBrowser(cocos2d::CCObject* sender) = m1 0x1b8fac;
    void showNewgroundsMessage() = m1 0x1b9264, imac 0x204090;

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

    static CustomSongWidget* create(SongInfoObject* songInfo, CustomSongDelegate* songDelegate, bool showSongSelect, bool showPlayMusic, bool showDownload, bool isRobtopSong, bool unkBool, bool isMusicLibrary, int unk) = win 0xc74f0, imac 0x603090, m1 0x530a34;

    virtual void loadSongInfoFinished(SongInfoObject*) = win 0xcbd40, imac 0x608a80, m1 0x535d24, ios 0x100f84;
    virtual void loadSongInfoFailed(int, GJSongError) = win 0xcbe90, imac 0x608c60, m1 0x535ed0, ios 0x101050;
    virtual void downloadSongFinished(int) = win 0xcbf20, imac 0x608eb0, m1 0x536144, ios 0x1011d0;
    virtual void downloadSongFailed(int, GJSongError) = win 0xcbfe0, imac 0x609190, m1 0x536414, ios 0x101394;
    virtual void downloadSFXFinished(int) = win 0xcc060, imac 0x609320, m1 0x536580, ios 0x101480;
    virtual void downloadSFXFailed(int, GJSongError) = win 0xcc080, imac 0x609350, m1 0x536594, ios 0x101494;
    virtual void musicActionFinished(GJMusicAction) = win 0xcc5c0, imac 0x609650, m1 0x53685c, ios 0x101664;
    virtual void musicActionFailed(GJMusicAction) = win 0xcc5f0, m1 0x53689c, imac 0x6096b0, ios 0x1016a4;
    virtual void songStateChanged() = win 0xca5d0, imac 0x607bd0, m1 0x534fcc, ios 0x10057c;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xcc960, imac 0x609750, m1 0x536938, ios 0x1016b0;
    TodoReturn addExtraVisuals(bool, bool) = imac 0x607020;

    void deleteSong() = win 0xc9160, m1 0x534634, imac 0x607140;
    void downloadAssetFailed(int, GJAssetType, GJSongError) = win 0xcc4a0;
    void downloadAssetFinished(int, GJAssetType) = win 0xcc3e0, imac 0x608f70, m1 0x53620c;
    void downloadFailed() = imac 0x608e20, m1 0x5360a4;
    void getSongInfoIfUnloaded() = win 0xc9af0, imac 0x6074c0, m1 0x534978;
    bool init(SongInfoObject* songInfo, CustomSongDelegate* songDelegate, bool showSongSelect, bool showPlayMusic, bool showDownload, bool isRobtopSong, bool unkBool, bool isMusicLibrary, int unk) = win 0xc7700, m1 0x530b8c, imac 0x603240;
    void onCancelDownload(cocos2d::CCObject* sender) = imac 0x5cb850;
    void onDelete(cocos2d::CCObject* sender) = win 0xc9040, m1 0x531eb8, imac 0x604680;
    void onDownload(cocos2d::CCObject* sender) = win 0xc9cd0, imac 0x6043b0, m1 0x531c24;
    void onGetSongInfo(cocos2d::CCObject* sender) = win 0xc9c40, imac 0x6047c0, m1 0x531ff4;
    void onInfo(cocos2d::CCObject* sender) = win 0xc8d50, m1 0x532aec, imac 0x605410;
    void onMore(cocos2d::CCObject* sender) = win 0xc9360, m1 0x532324, imac 0x604af0;
    void onPlayback(cocos2d::CCObject* sender) = win 0xc9fd0, imac 0x604850, m1 0x532088;
    void onSelect(cocos2d::CCObject* sender) = win 0xc9f70, imac 0x604760, m1 0x531f98;
    void positionInfoObjects() = win 0xc88c0, m1 0x532fec;
    void processNextMultiAsset() = win 0xcc240, imac 0x6094a0, m1 0x536698;
    void showError(bool) = win 0xcc710, m1 0x53476c;
    void startDownload() = win 0xc9eb0;
    TodoReturn startMonitorDownload();
    void startMultiAssetDownload() = win 0xcc0a0, m1 0x534ad8;
    TodoReturn toggleUpdateButton(bool);
    void updateDownloadProgress(float) = win 0xca4a0, imac 0x607ab0, m1 0x534ebc;
    void updateError(GJSongError) = win 0xcc640, imac 0x608cf0, m1 0x535f6c;
    void updateLengthMod(float lengthMod) = win inline, imac 0x607c20, m1 0x535018 {
        this->m_lengthMod = lengthMod;
        this->updateSongInfo();
    }
    void updateMultiAssetInfo(bool) = win 0xcb760, imac 0x608410, m1 0x535734;
    void updatePlaybackBtn() = win 0xca3b0, imac 0x606f50, m1 0x534418;
    void updateProgressBar(int) = win 0xca550;
    void updateSongInfo() = win 0xca600, m1 0x533504, imac 0x605f20;
    void updateSongObject(SongInfoObject* songInfo) = win inline, m1 0x533468, imac 0x605e90 {
        m_errorLabel->setVisible(false);
        if (m_bgSpr) m_bgSpr->setVisible(false);
        if (m_songInfoObject != songInfo) {
            CC_SAFE_RETAIN(songInfo);
            CC_SAFE_RELEASE(m_songInfoObject);
            m_songInfoObject = songInfo;
        }
        m_customSongID = songInfo ? songInfo->m_songID : 0;
        this->updateSongInfo();
    }
    void updateWithMultiAssets(gd::string, gd::string, int) = win 0xcb410, m1 0x535020, imac 0x607c40;
    TodoReturn verifySongID(int);

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

    static DailyLevelNode* create(GJGameLevel*, DailyLevelPage*, bool) = imac 0x2201c0;

    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xd1c30, imac 0x2216d0, m1 0x1d4660, ios 0x1bda58;

    bool init(GJGameLevel*, DailyLevelPage*, bool) = win 0xd0c90, imac 0x2209a0, m1 0x1d3884;
    void onClaimReward(cocos2d::CCObject* sender) = win 0xd18f0, imac 0x221400, m1 0x1d4358;
    void onSkipLevel(cocos2d::CCObject* sender) = win 0xd1a10, m1 0x1d4470, imac 0x221500;
    void showSkipButton() = win 0xd1890;
    void updateTimeLabel(gd::string);

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

    static DailyLevelPage* create(GJTimedLevelType) = win 0xccfd0, m1 0x1d0d8c, imac 0x21e2b0;

    virtual void registerWithTouchDispatcher() = m1 0x1d3438, imac 0x220540, ios 0x1bca50;
    virtual void keyBackClicked() = imac 0x2204b0, m1 0x1d339c, ios 0x1bca44;
    virtual void show() = win 0x867a0, m1 0x1d3210, imac 0x220310, ios 0x1bc8c8;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = m1 0x1d3394, imac 0x220490, ios 0x1bca3c {}
    virtual void dailyStatusFinished(GJTimedLevelType) = win 0xce560, imac 0x21f9a0, m1 0x1d28e4, ios 0x1bc164;
    virtual void dailyStatusFailed(GJTimedLevelType, GJErrorCode) = win 0xce860, imac 0x21fde0, m1 0x1d2cd0, ios 0x1bc4a8;
    virtual void levelDownloadFinished(GJGameLevel*) = win 0xceb90, imac 0x220030, m1 0x1d2f0c, ios 0x1bc67c;
    virtual void levelDownloadFailed(int) = win 0xcebf0, imac 0x2200f0, m1 0x1d2fec, ios 0x1bc6f4;

    void claimLevelReward(DailyLevelNode*, GJGameLevel*, cocos2d::CCPoint) = win 0xd06b0, m1 0x1d3470, imac 0x220580;
    void createDailyNode(GJGameLevel*, bool, float, bool) = win 0xcee40, imac 0x21f7b0, m1 0x1d2700;
    void createNodeIfLoaded();
    void downloadAndCreateNode();
    void exitDailyNode(DailyLevelNode*, float) = imac 0x21fc20, m1 0x1d2b34;
    int getDailyTime() = imac 0x2202a0;
    gd::string getDailyTimeString(int timeLeft) = win 0xcf200, imac 0x21f120, m1 0x1d1e6c;
    bool init(GJTimedLevelType) = win 0xcd110, imac 0x21e440, m1 0x1d0ebc;
    void onClose(cocos2d::CCObject* sender) = win 0x86940, imac 0x21f070, m1 0x1d1db4;
    void onTheSafe(cocos2d::CCObject* sender) = win 0xd0bb0, m1 0x1d1e00, imac 0x21f0b0;
    void refreshDailyPage();
    void skipDailyLevel(DailyLevelNode*, GJGameLevel*);
    void tryGetDailyStatus() = win 0xcec10;
    callback void updateTimers(float) = win 0xd0360, imac 0x21f570, m1 0x1d24a8;

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

    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1a4340, m1 0x166864, ios 0x37bacc;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1a44b0, m1 0x1669bc, ios 0x37bc10;

    bool init(char const*);

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

    virtual bool init() = win 0x302da0, imac 0x618b50, m1 0x5449e8, ios 0x5a968;
    virtual void keyBackClicked() = win 0x3034f0, m1 0x544fc8, imac 0x619140, ios 0x5aebc;

    void onClose(cocos2d::CCObject* sender) = win 0x3034a0;
    void selectRating(cocos2d::CCObject* sender) = win 0x3033e0, m1 0x544ea0;

    cocos2d::CCArray* m_demons;
    void* m_unkPtr;
    int m_currentDemon;
    DemonFilterDelegate* m_delegate;
}

[[link(android)]]
class DemonInfoPopup : FLAlertLayer {
    // ~DemonInfoPopup();

    static DemonInfoPopup* create(int easyClassic, int mediumClassic, int hardClassic, int insaneClassic, int extremeClassic, int easyPlatformer, int mediumPlatformer, int hardPlatformer, int insanePlatformer, int extremePlatformer, int weekly, int gauntlet) = win 0x3afc90, imac 0x7aba80, m1 0x6bd1f0;
    static DemonInfoPopup* createFromString(gd::string) = win 0x3af8c0, imac 0x7a9640, m1 0x6baf10;

    virtual void keyBackClicked() = m1 0x6bdcdc, imac 0x7ac5b0, ios 0x1a0b9c;

    bool init(int easyClassic, int mediumClassic, int hardClassic, int insaneClassic, int extremeClassic, int easyPlatformer, int mediumPlatformer, int hardPlatformer, int insanePlatformer, int extremePlatformer, int weekly, int gauntlet) = win 0x3afdf0, imac 0x7abc10, m1 0x6bd34c;
    void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class DialogDelegate {
    virtual void dialogClosed(DialogLayer*) {}
}

[[link(android)]]
class DialogLayer : cocos2d::CCLayerColor, TextAreaDelegate {
    // virtual ~DialogLayer();

    static DialogLayer* create(DialogObject* object, int background) = win inline, imac 0x3b4270 {
        return DialogLayer::createDialogLayer(object, nullptr, background);
    }
    static DialogLayer* createDialogLayer(DialogObject* object, cocos2d::CCArray* objects, int background) = win 0xd1f60, imac 0x3b4280, m1 0x33f928;
    static DialogLayer* createWithObjects(cocos2d::CCArray* objects, int background) = win inline, imac 0x3b43c0, m1 0x33fa38 {
        return DialogLayer::createDialogLayer(nullptr, objects, background);
    }

    virtual void onEnter() = imac 0x3b5410, m1 0x3409f8, ios 0x8b544;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0xd2b60, imac 0x3b52c0, m1 0x3408c4, ios 0x8b428;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x340974, imac 0x3b5360, ios 0x8b4c0 {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0xd2b90, m1 0x34093c, imac 0x3b5320, ios 0x8b488;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0xd2bb0, imac 0x3b5380, m1 0x34097c, ios 0x8b4c8;
    virtual void registerWithTouchDispatcher() = imac 0x3b53d0, m1 0x3409c0, ios 0x8b50c;
    virtual void keyBackClicked() = win 0xd2ad0, m1 0x3407a0, imac 0x3b5190, ios 0x8b41c;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0xd2e80, imac 0x3b57b0, m1 0x340d70, ios 0x8b824;
    virtual void fadeInTextFinished(TextArea*) = win 0xd2bd0, m1 0x3409fc, imac 0x3b5420, ios 0x8b548;

    void addToMainScene() = win 0xd2a70, m1 0x340748;
    void animateIn(DialogAnimationType) = imac 0x3b5560, m1 0x340b4c;
    void animateInDialog() = imac 0x3b57a0;
    void animateInRandomSide() = win 0xd2c40, m1 0x340aec, imac 0x3b5510;
    void displayDialogObject(DialogObject*) = win 0xd2570, m1 0x33ffc8, imac 0x3b4980;
    void displayNextObject() = win 0xd2510, m1 0x33ff28, imac 0x3b48d0;
    void finishCurrentAnimation() = imac 0x3b4ff0, m1 0x340620;
    void handleDialogTap() = win 0xd2940, m1 0x3404c4;
    bool init(DialogObject*, cocos2d::CCArray*, int) = win 0xd20b0, imac 0x3b43e0, m1 0x33fa48;
    void onClose() = win 0xd2ae0;
    void updateChatPlacement(DialogChatPlacement placement) = win inline, m1 0x340408, imac 0x3b4de0 {
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
    void updateNavButtonFrame() = win 0xd28c0, imac 0x3b4d70;

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

    static DialogObject* create(gd::string character, gd::string text, int characterFrame, float textScale, bool skippable, cocos2d::ccColor3B color) = win 0xd1da0, m1 0x33f4ac, imac 0x3b3d20;

    bool init(gd::string character, gd::string text, int characterFrame, float textScale, bool skippable, cocos2d::ccColor3B color) = win inline, imac 0x3b3eb0, m1 0x33f664 {
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
    virtual void downloadMessageFinished(GJUserMessage*);
    virtual void downloadMessageFailed(int);
}

[[link(android)]]
class DrawGridLayer : cocos2d::CCLayer {
    // virtual ~DrawGridLayer();

    static DrawGridLayer* create(cocos2d::CCNode*, LevelEditorLayer*) = win 0x2db1f0;

    virtual void update(float) = win 0x2db6f0, imac 0xf5c30, m1 0xd9cd8, ios 0x3657b8;
    virtual void draw() = win 0x2db8f0, imac 0xf5dc0, m1 0xd9de8, ios 0x3658c8;

    void addAudioLineObject(AudioLineGuideGameObject*);
    void addToEffects(EffectGameObject*);
    void addToGuides(GameObject*);
    void addToSpeedObjects(EffectGameObject*);
    cocos2d::CCPoint getPortalMinMax(GameObject*);
    bool init(cocos2d::CCNode*, LevelEditorLayer*);
    void loadTimeMarkers(gd::string) = win 0x2db3d0, imac 0xdf600;
    cocos2d::CCPoint posForTime(float);
    void postUpdate();
    void removeAudioLineObject(AudioLineGuideGameObject*);
    void removeFromEffects(EffectGameObject*);
    void removeFromGuides(GameObject*);
    void removeFromSpeedObjects(EffectGameObject*);
    void sortSpeedObjects();
    float timeForPos(cocos2d::CCPoint, int, int, bool, bool, bool, int);
    void updateMusicGuideTime(float);
    void updateTimeMarkers();

    std::array<cocos2d::CCPoint, 400>* m_pointArray1;
    std::array<cocos2d::CCPoint, 400>* m_pointArray2;
    std::array<cocos2d::CCPoint, 400>* m_pointArray3;
    gd::unordered_map<int, AudioLineGuideGameObject*> m_audioLineObjects;
    float m_musicTime;
    float m_playbackTime;
    float m_oldPlaybackTime;
    float m_playbackX;
    float m_playbackY;
    bool m_sortEffects;
    LevelEditorLayer* m_editorLayer;
    gd::string m_timeMarkerString;
    cocos2d::CCNode* m_objectLayer;
    cocos2d::CCArray* m_timeMarkers;
    cocos2d::CCArray* m_effectGameObjects;
    cocos2d::CCArray* m_guideObjects;
    cocos2d::CCArray* m_speedObjects;
    double m_unk258;
    float m_currentSpeed;
    float m_slowSpeed;
    float m_normalSpeed;
    float m_fastSpeed;
    float m_fasterSpeed;
    float m_fastestSpeed;
    bool m_updateTimeMarkers;
    bool m_updateSpeedObjects;
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

    virtual bool init() = win 0x3d8470, m1 0x401c4c, imac 0x495430, ios 0x3119ac;
    virtual void visit() = win 0x3d84f0, imac 0x4954b0, m1 0x401ccc, ios 0x311a2c;

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

    static EditButtonBar* create(cocos2d::CCArray* objects, cocos2d::CCPoint size, int unk, bool unkBool, int columns, int rows) = win 0xd2f40, imac 0x5c99e0, m1 0x4fe2c0;

    int getPage();
    void goToPage(int);
    bool init(cocos2d::CCArray* objects, cocos2d::CCPoint size, int unk, bool unkBool, int columns, int rows) = imac 0x5c9ad0, m1 0x4fe3bc;
    void loadFromItems(cocos2d::CCArray*, int, int, bool) = win 0xd30a0, imac 0x5c9b80, m1 0x4fe468;
    void onLeft(cocos2d::CCObject* sender) = win 0xd3a90;
    void onRight(cocos2d::CCObject* sender) = win 0xd3a20;
    void reloadItems(int rowCount, int columnCount) = win inline, imac 0x5ca140, m1 0x4fe998 {
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

    bool init(EffectGameObject*, cocos2d::CCArray*, bool) = m1 0x23facc;
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
    static cocos2d::CCScene* scene(GJGameLevel*) = win 0xd3d80, m1 0x19f774, imac 0x1e8510;

    virtual void keyBackClicked() = win 0xd8570, m1 0x1a3824, imac 0x1ec740, ios 0xef59c;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0xd8580, imac 0x1ec770, m1 0x1a3830, ios 0xef5a8;
    virtual void setIDPopupClosed(SetIDPopup*, int) = win 0xd8050, m1 0x1a3724, imac 0x1ec640, ios 0xef518;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xd7710, imac 0x1ec260, m1 0x1a3368, ios 0xef1a0;
    virtual void textInputOpened(CCTextInputNode*) = win 0xd65c0, imac 0x1eba90, m1 0x1a2b78, ios 0xeeb98;
    virtual void textInputClosed(CCTextInputNode*) = win 0xd5fc0, m1 0x1a282c, imac 0x1eb720, ios 0xee908;
    virtual void textChanged(CCTextInputNode*) = win 0xd6730, imac 0x1ebb70, m1 0x1a2c88, ios 0xeeca8;
    virtual void uploadActionFinished(int, int) = win 0xd85f0, imac 0x1ec810, m1 0x1a38b4, ios 0xef618;
    virtual void uploadActionFailed(int, int) = win 0xd8730, imac 0x1ec9c0, m1 0x1a3a6c, ios 0xef70c;
    virtual void onClosePopup(UploadActionPopup*) = win 0xd85b0, imac 0x1ec7c0, m1 0x1a3864, ios 0xef5c8;

    void closeTextInputs() = win 0xd5f60;
    void confirmClone(cocos2d::CCObject*);
    void confirmDelete(cocos2d::CCObject*) = imac 0x1ead40, m1 0x1a1e40, win 0xd75d0;
    void confirmMoveToTop(cocos2d::CCObject*) = m1 0x1a20d8, imac 0x1eafd0, win 0xd7e90;
    bool init(GJGameLevel*) = win 0xd3f10, imac 0x1e87a0, m1 0x19f95c;
    void onBack(cocos2d::CCObject* sender) = win 0xd80e0;
    void onClone() = m1 0x1a3618;
    void onDelete() = m1 0x1a3328;
    void onEdit(cocos2d::CCObject* sender);
    void onGuidelines(cocos2d::CCObject* sender) = win 0xd52e0, imac 0x1eb5e0;
    void onHelp(cocos2d::CCObject* sender) = m1 0x1a1f28, imac 0x1eae30, win 0xd7c50;
    void onLevelInfo(cocos2d::CCObject* sender) = win 0xd5500, m1 0x1a2420, imac 0x1eb320;
    void onLevelLeaderboard(cocos2d::CCObject* sender);
    void onLevelOptions(cocos2d::CCObject* sender);
    void onMoveToTop();
    void onPlay(cocos2d::CCObject* sender) = win 0xd6920, m1 0x1a100c, imac 0x1e9f10;
    void onSetFolder(cocos2d::CCObject* sender) = win 0xd7fc0, imac 0x1eb0b0, m1 0x1a21b8;
    void onShare(cocos2d::CCObject* sender) = win 0xd6f20, m1 0x1a1164, imac 0x1ea050;
    void onTest(cocos2d::CCObject* sender) = m1 0x1a3298;
    void onUpdateDescription(cocos2d::CCObject* sender) = m1 0x1a1d60, imac 0x1eac60;
    void playStep2();
    void playStep3() = m1 0x1a3248;
    void setupLevelInfo() = win 0xd5720, m1 0x1a1540, imac 0x1ea490;
    void updateDescText(char const*);
    void verifyLevelName() = win 0xd8290;

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

    static EditorOptionsLayer* create() = imac 0x28bbe0, m1 0x2347d0;

    virtual bool init() = win 0x2896d0, imac 0x28be40, m1 0x23496c, ios 0x2d46d8;
    virtual void onClose(cocos2d::CCObject* sender) = win 0x28a100, imac 0x28c810, m1 0x235368, ios 0x2d50d0;
    virtual void setupOptions() = win 0x289700, imac 0x28be70, m1 0x234988, ios 0x2d46f4;

    void onButtonRows(cocos2d::CCObject* sender) = win 0x28a070, imac 0x28c7a0, m1 0x2352e8;
    void onButtonsPerRow(cocos2d::CCObject* sender) = win 0x289fe0, imac 0x28c720, m1 0x235260;

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

    static EditorPauseLayer* create(LevelEditorLayer*) = win inline, m1 0x228ae4, imac 0x27f120 {
        auto ret = new EditorPauseLayer();
        if (ret && ret->init(LevelEditorLayer::get())) {
            ret->autorelease();
            return ret;
        }
        CC_SAFE_DELETE(ret);
        return nullptr;
    }

    virtual void keyBackClicked() = win 0xdd0c0, m1 0x22c910, imac 0x283060, ios 0x3976d4;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0xdd0d0, imac 0x283150, m1 0x22c9f0, ios 0x3976e0;
    virtual void customSetup() = win 0xd9020, imac 0x27fa70, m1 0x2296c0, ios 0x394ef0;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xdcfa0, imac 0x282f80, m1 0x22c834, ios 0x397610;

    TodoReturn doResetUnused() = win 0x2d2b80;
    bool init(LevelEditorLayer*) = win 0xd8990, imac 0x27f220, m1 0x228bbc;
    void onAlignX(cocos2d::CCObject* sender) = win 0xdb9e0;
    void onAlignY(cocos2d::CCObject* sender) = win 0xdba10;
    void onBuildHelper(cocos2d::CCObject* sender) = win 0xdb7b0;
    void onCopyWColor(cocos2d::CCObject* sender);
    void onCreateExtras(cocos2d::CCObject* sender) = win 0xdb760;
    void onCreateLoop(cocos2d::CCObject* sender) = win 0xdb7d0;
    void onCreateTemplate(cocos2d::CCObject* sender);
    void onExitEditor(cocos2d::CCObject* sender) = win 0xdcd60, m1 0x22c7fc;
    void onExitNoSave(cocos2d::CCObject* sender) = win 0xdce30, imac 0x281ad0, m1 0x22b51c;
    void onHelp(cocos2d::CCObject* sender);
    void onKeybindings(cocos2d::CCObject* sender) = m1 0x22bc3c;
    void onNewGroupX(cocos2d::CCObject* sender);
    void onNewGroupY(cocos2d::CCObject* sender);
    void onOptions(cocos2d::CCObject* sender);
    void onPasteWColor(cocos2d::CCObject* sender);
    void onReGroup(cocos2d::CCObject* sender);
    void onResetUnusedColors(cocos2d::CCObject* sender) = imac 0x281e30, m1 0x22b850;
    void onResume(cocos2d::CCObject* sender) = win 0xdc140, m1 0x22b2c4, imac 0x2818a0;
    void onSave(cocos2d::CCObject* sender) = win 0xdcbf0, m1 0x22b42c, imac 0x2819f0;
    void onSaveAndExit(cocos2d::CCObject* sender) = win 0xdcd20, imac 0x281980, m1 0x22b3c0;
    void onSaveAndPlay(cocos2d::CCObject* sender) = win 0xdc9a0, imac 0x281910, m1 0x22b330;
    void onSelectAll(cocos2d::CCObject* sender) = win 0xdb870;
    void onSelectAllLeft(cocos2d::CCObject* sender) = win 0xdb9a0, m1 0x22ba48, imac 0x2820b0;
    void onSelectAllRight(cocos2d::CCObject* sender) = win 0xdb9c0, m1 0x22ba58, imac 0x2820d0;
    void onSong(cocos2d::CCObject* sender);
    void onUnlockAllLayers(cocos2d::CCObject* sender);
    TodoReturn playStep2();
    TodoReturn playStep3() = win 0xdcb50;
    void saveLevel() = win 0xdc310, m1 0x22c274, imac 0x282980;
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
    TodoReturn uncheckAllPortals(cocos2d::CCObject*) = imac 0x281d60;
    TodoReturn updateSongButton();

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

    static EditorUI* create(LevelEditorLayer*) = imac 0x96b0, m1 0xaccc;
    static EditorUI* get() {
        auto lel = LevelEditorLayer::get();
        if (!lel) return nullptr;
        return lel->m_editorUI;
    }

    virtual void draw() = win 0x121120, imac 0x4e7d0, m1 0x463fc, ios 0x3f0124;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x121c60, imac 0x4f290, m1 0x46de4, ios 0x3f07a0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x1222e0, imac 0x4f8b0, m1 0x473c0, ios 0x3f0ce4;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x122a30, imac 0x4fe60, m1 0x478e8, ios 0x3f11c8;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x48094, imac 0x50780, ios 0x3f1938;
    virtual void registerWithTouchDispatcher() = win 0x9b1a0, m1 0x480b0, imac 0x507c0, ios 0x3f1954;
    virtual void keyBackClicked() = win 0x1130e0, m1 0x39b48, imac 0x3f0f0, ios 0x3e7358;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x123770, imac 0x50800, m1 0x480e8, ios 0x3f198c;
    virtual cocos2d::CCLayer* getUI() = win 0xdd8f0, imac 0x546c0, m1 0x8fb0, ios 0xd590;
    virtual void setIDPopupClosed(SetIDPopup*, int) = win 0xe5580, imac 0x337d0, m1 0x32e34, ios 0x3e213c;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xe5390, imac 0x33640, m1 0x32c64, ios 0x3e2060;
    virtual void updateTransformControl() = win 0x113b60, imac 0x40b50, m1 0x3b2bc, ios 0x3e8214;
    virtual void transformChangeBegin() = win 0x114050, imac 0x414f0, m1 0x3bb74, ios 0x3e89b4;
    virtual void transformChangeEnded() = m1 0x3bc20, imac 0x415d0, ios 0x3e8a60 {}
    virtual cocos2d::CCNode* getTransformNode() = win 0xdd900, m1 0x4b658, imac 0x546d0, ios 0x3f4498;
    virtual void transformScaleXChanged(float) = win 0x11fca0, m1 0x44ec0, imac 0x4d000, ios 0x3ef7c8;
    virtual void transformScaleYChanged(float) = win 0x11fcc0, m1 0x45088, imac 0x4d210, ios 0x3ef868;
    virtual void transformScaleXYChanged(float, float) = win 0x11fce0, imac 0x4d370, m1 0x451bc, ios 0x3ef880;
    virtual void transformSkewXChanged(float) = win 0x11fd00, m1 0x452f4, imac 0x4d4e0, ios 0x3ef89c;
    virtual void transformSkewYChanged(float) = win 0x11fd20, m1 0x45428, imac 0x4d640, ios 0x3ef8b4;
    virtual void transformRotationXChanged(float) = win 0x11fd40, m1 0x4555c, imac 0x4d7a0, ios 0x3ef8cc;
    virtual void transformRotationYChanged(float) = win 0x11fd60, m1 0x45690, imac 0x4d900, ios 0x3ef8e4;
    virtual void transformRotationChanged(float) = win 0x11fd80, imac 0x4da60, m1 0x457c4, ios 0x3ef8fc;
    virtual void transformResetRotation() = win 0x11fda0, imac 0x4dbd0, m1 0x458fc, ios 0x3ef918;
    virtual void transformRestoreRotation() = win 0x11fdd0, imac 0x4dcc0, m1 0x459b4, ios 0x3ef95c;
    virtual void songStateChanged() = win 0x110990, imac 0x3df50, m1 0x38a48, ios 0x3e68b4;
    virtual void colorSelectClosed(cocos2d::CCNode*) = win 0x11dcd0, imac 0x4a5a0, m1 0x4342c, ios 0x3edf18;
    virtual void keyUp(cocos2d::enumKeyCodes) = win 0x124a00, m1 0x48dcc, imac 0x51920, ios 0x3f2630;
    virtual void scrollWheel(float, float) = win 0x124a40, imac 0x519c0, m1 0x48e44, ios 0x3f26a8;
    virtual void angleChangeBegin() = win 0x121560, imac 0x4e8b0, m1 0x464d4, ios 0x3f01fc;
    virtual void angleChangeEnded() = m1 0x464f0, imac 0x4e8f0, ios 0x3f0218 {}
    virtual void angleChanged(float) = win 0x121570, imac 0x4e910, m1 0x464f8, ios 0x3f0220;
    virtual void updateScaleControl() = win 0x113550, imac 0x3f540, m1 0x39f48, ios 0x3e75c4;
    virtual void anchorPointMoved(cocos2d::CCPoint) = win 0x114060, imac 0x415f0, m1 0x3bc28, ios 0x3e8a68;
    virtual void scaleChangeBegin() = win 0x1136b0, imac 0x3fc70, m1 0x3a590, ios 0x3e7aac;
    virtual void scaleChangeEnded() = m1 0x3a5ac, imac 0x3fcb0, ios 0x3e7ac8 {}
    virtual void scaleXChanged(float, bool) = win 0x1136c0, m1 0x3a5b4, imac 0x3fcd0, ios 0x3e7ad0;
    virtual void scaleYChanged(float, bool) = win 0x113770, m1 0x3abec, imac 0x40440, ios 0x3e7ec4;
    virtual void scaleXYChanged(float, float, bool) = win 0x113820, imac 0x40590, m1 0x3ad30, ios 0x3e7f6c;

    void activateRotationControl(cocos2d::CCObject*) = win 0x121420;
    void activateScaleControl(cocos2d::CCObject*) = win 0x113280;
    void activateTransformControl(cocos2d::CCObject*) = win 0x1138d0, m1 0x3aec4, imac 0x40720;
    TodoReturn addObjectsToSmartTemplate(GJSmartTemplate*, cocos2d::CCArray*);
    TodoReturn addSnapPosition(cocos2d::CCPoint);
    TodoReturn alignObjects(cocos2d::CCArray*, bool);
    void applyOffset(GameObject*) = win 0x120d40;
    TodoReturn applySpecialOffset(cocos2d::CCPoint, GameObject*, cocos2d::CCPoint);
    TodoReturn arrayContainsClass(cocos2d::CCArray*, int);
    TodoReturn assignNewGroups(bool) = imac 0x45970;
    TodoReturn canAllowMultiActivate(GameObject*, cocos2d::CCArray*);
    TodoReturn canSelectObject(GameObject*);
    TodoReturn centerCameraOnObject(GameObject*);
    TodoReturn changeSelectedObjects(cocos2d::CCArray*, bool);
    TodoReturn checkDiffAfterTransformAnchor(cocos2d::CCPoint, cocos2d::CCArray*) = win 0x1140e0;
    TodoReturn checkLiveColorSelect();
    void clickOnPosition(cocos2d::CCPoint) = win 0xe1040, imac 0x2dfa0, m1 0x2d9d4;
    TodoReturn closeLiveColorSelect();
    TodoReturn closeLiveHSVSelect();
    void colorSelectClosed(cocos2d::ccColor3B) = win 0x11dcd0;
    void constrainGameLayerPosition() = win 0x120dd0;
    void constrainGameLayerPosition(float, float) = win 0x120dd0, imac 0x2afb0, m1 0x2b208;
    TodoReturn convertKeyBasedOnNeighbors(int, int, cocos2d::CCPoint, cocos2d::CCArray*);
    TodoReturn convertToBaseKey(int);
    gd::string copyObjects(cocos2d::CCArray* objects, bool copyColors, bool sort) = win 0x111560, imac 0x31280, m1 0x309d4;
    TodoReturn copyObjectsDetailed(cocos2d::CCArray*);
    cocos2d::CCArray* createCustomItems() = win 0xe30e0, imac 0x31b80, m1 0x3122c;
    TodoReturn createEdgeForObject(GameObject*, int);
    TodoReturn createExtraObject(int, cocos2d::CCPoint, GameObject*, cocos2d::CCArray*, int, int);
    TodoReturn createExtras(cocos2d::CCArray*);
    TodoReturn createExtrasForObject(int, GameObject*, cocos2d::CCArray*);
    TodoReturn createGlow();
    void createLoop();
    void createMoveMenu() = win 0x119350, m1 0x400a8, imac 0x464d0;
    TodoReturn createNewKeyframeAnim();
    TodoReturn createObject(int, cocos2d::CCPoint) = win 0x10e840;
    TodoReturn createOutlines(cocos2d::CCArray*);
    TodoReturn createPrefab(GJSmartTemplate*, gd::string, int);
    TodoReturn createRockBases(cocos2d::CCArray*) = win 0x12da00, imac 0x5fd600;
    TodoReturn createRockEdges(cocos2d::CCArray*);
    TodoReturn createSmartObjectsFromTemplate(GJSmartTemplate*, cocos2d::CCArray*, bool, bool, bool, bool);
    TodoReturn createSmartObjectsFromType(int, cocos2d::CCArray*, bool, bool);
    UndoObject* createUndoObject(UndoCommand, bool) = win 0x10f830, imac 0x3d3e0;
    TodoReturn createUndoSelectObject(bool) = win 0x10fb50;
    TodoReturn deactivateRotationControl();
    TodoReturn deactivateScaleControl() = win 0x113480;
    TodoReturn deactivateTransformControl() = win 0x113ad0;
    void deleteObject(GameObject*, bool) = imac 0x32f70;
    TodoReturn deleteSmartBlocksFromObjects(cocos2d::CCArray*);
    TodoReturn deleteTypeFromObjects(int, cocos2d::CCArray*);
    void deselectAll() = win 0x10fd80, imac 0x33240, m1 0x328b0;
    void deselectObject() = win 0x10fc60, imac 0x33450;
    void deselectObject(GameObject*) = win 0x10fc60, imac 0x331a0;
    void deselectObjectsColor();
    TodoReturn deselectTargetPortals() = imac 0x32e10;
    TodoReturn disableButton(CreateMenuItem*);
    void doCopyObjects(bool) = win 0x111900, imac 0x3e700;
    TodoReturn doPasteInPlace(bool);
    void doPasteObjects(bool) = win 0x111a90;
    void dynamicGroupUpdate(bool) = win 0x117000, imac 0x44e10, m1 0x3ed20;
    TodoReturn edgeForObject(int, int);
    TodoReturn editButton2Usable() = imac 0x492e0;
    TodoReturn editButtonUsable() = imac 0x48580;
    TodoReturn editColor();
    TodoReturn editColorButtonUsable();
    void editGroup(cocos2d::CCObject*) = win 0x11d880, imac 0x2c8f0, m1 0x2c4d0;
    TodoReturn editHSV();
    void editObject(cocos2d::CCObject*) = win 0x11a510, m1 0x2b750, imac 0x2b550;
    void editObject2(cocos2d::CCObject*);
    void editObject3(cocos2d::CCObject*);
    void editObjectSpecial(int) = win 0x11c4b0;
    TodoReturn editorLayerForArray(cocos2d::CCArray*, bool);
    TodoReturn enableButton(CreateMenuItem*);
    TodoReturn findAndSelectObject(int, bool);
    void findSnapObject(cocos2d::CCArray*, float) = win 0x121690;
    void findSnapObject(cocos2d::CCPoint, float) = win 0x121790;
    TodoReturn findTriggerTest();
    void flipObjectsX(cocos2d::CCArray*) = win 0x11f0f0, m1 0x3ddc0, imac 0x43d70;
    void flipObjectsY(cocos2d::CCArray*) = win 0x11f2d0, m1 0x3dc18, imac 0x43ba0;
    TodoReturn getButton(char const*, int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);
    CreateMenuItem* getCreateBtn(int id, int bg) = win 0x10d2a0, m1 0x332f0, imac 0x33c60;
    CreateMenuItem* getCreateMenuItemButton(cocos2d::CCSprite*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint) = imac 0x2f190, m1 0x2eb94;
    TodoReturn getCycledObject(cocos2d::CCArray*, bool);
    TodoReturn getEditColorTargets(ColorAction*&, ColorAction*&, EffectGameObject*&) = imac 0x4a120;
    cocos2d::CCPoint getGridSnappedPos(cocos2d::CCPoint pos) = win inline {
        auto size = m_editorLayer->m_drawGridLayer->m_gridSize;
        auto xVal = std::floorf(pos.x / size);
        auto yVal = std::floorf(pos.y / size);
        return this->getLimitedPosition(ccp((xVal + 0.5) * size, (yVal + 0.5) * size));
    }
    cocos2d::CCPoint getGroupCenter(cocos2d::CCArray* objs, bool) = win 0x121190;
    TodoReturn getGroupInfo(GameObject*, cocos2d::CCArray*, int&, int&, int&);
    cocos2d::CCPoint getLimitedPosition(cocos2d::CCPoint) = win 0x11e6f0;
    CCMenuItemSpriteExtra* getModeBtn(char const*, int);
    TodoReturn getNeighbor(int, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*);
    TodoReturn getRandomStartKey(int);
    TodoReturn getRelativeOffset(GameObject*) = imac 0x4dc100;
    cocos2d::CCArray* getSelectedObjects() = win 0x10f780, m1 0x37eac, imac 0x3d330;
    TodoReturn getSimpleButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);
    TodoReturn getSmartNeighbor(SmartGameObject*, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*);
    TodoReturn getSmartObjectKey(int, GJSmartDirection);
    TodoReturn getSnapAngle(GameObject*, cocos2d::CCArray*) = imac 0x4ad60;
    CCMenuItemSpriteExtra* getSpriteButton(char const* spriteFrameName, cocos2d::SEL_MenuHandler selector, cocos2d::CCMenu* menu, float scale, int buttonKind, cocos2d::CCPoint offset) = win 0xe11d0;
    CCMenuItemSpriteExtra* getSpriteButton(char const* spriteFrameName, cocos2d::SEL_MenuHandler selector, cocos2d::CCMenu* menu, float scale) = win inline, imac 0xc2d0, m1 0xd6b0 {
        return this->getSpriteButton(spriteFrameName, selector, menu, scale, 1, {0, 0});
    }
    CCMenuItemSpriteExtra* getSpriteButton(cocos2d::CCSprite* sprite, cocos2d::SEL_MenuHandler selector, cocos2d::CCMenu* menu, float scale, int buttonKind, cocos2d::CCPoint offset) = win 0xe1260;
    TodoReturn getTouchPoint(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn getTransformState();
    TodoReturn getXMin(int) = imac 0x2f470;
    bool init(LevelEditorLayer* editorLayer) = win 0xdde60, m1 0xad4c, imac 0x9710;
    bool isLiveColorSelectTrigger(GameObject*);
    bool isSpecialSnapObject(int) = win 0x1272b0, imac 0x4c2f0;
    TodoReturn liveEditColorUsable();
    CreateMenuItem* menuItemFromObjectString(gd::string, int) = win 0x10d090, m1 0x315a4;
    cocos2d::CCPoint moveForCommand(EditCommand command) = win 0x11de20, imac 0x4a7d0, m1 0x435fc;
    void moveGamelayer(cocos2d::CCPoint) = win 0xe16b0, imac 0x2f800, m1 0x2f18c;
    void moveObject(GameObject*, cocos2d::CCPoint) = win 0x11e290, imac 0x3ef90;
    void moveObjectCall(cocos2d::CCObject*) = win 0x11e000, imac 0x49970;
    void moveObjectCall(EditCommand) = win 0x11e000, imac 0x4a9d0, m1 0x437a8;
    cocos2d::CCPoint offsetForKey(int) = win 0x124bf0;
    TodoReturn onAssignNewGroupID();
    void onColorFilter(cocos2d::CCObject* sender);
    void onCopy(cocos2d::CCObject* sender);
    void onCopyState(cocos2d::CCObject* sender) = win 0x112ac0;
    bool onCreate() = win 0x10dd10, m1 0x2dfac, imac 0x2e600;
    void onCreateButton(cocos2d::CCObject* sender) = win 0x10d880, imac 0x34d30, m1 0x342c0;
    void onCreateObject(int) = win 0x10df10, m1 0x34758, imac 0x35170;
    void onDelete(cocos2d::CCObject* sender) = win 0xe4760;
    void onDeleteAll(cocos2d::CCObject* sender);
    void onDeleteCustomItem(cocos2d::CCObject* sender) = win 0xe2e80;
    void onDeleteInfo(cocos2d::CCObject* sender) = m1 0x3198c, imac 0x32320;
    void onDeleteSelected(cocos2d::CCObject* sender) = win 0xe4d80, m1 0xdb78, imac 0xc7a0;
    void onDeleteSelectedType(cocos2d::CCObject* sender) = win 0xe5310, imac 0x32240;
    void onDeleteStartPos(cocos2d::CCObject* sender) = win 0xe5360;
    void onDeselectAll(cocos2d::CCObject* sender) = win 0x10fd40, m1 0x2c478;
    void onDuplicate(cocos2d::CCObject* sender) = win 0x1113e0;
    void onEditColor(cocos2d::CCObject* sender) = win 0x11d0b0;
    void onFindObject(cocos2d::CCObject* sender);
    void onGoToBaseLayer(cocos2d::CCObject* sender) = win 0x112f40;
    void onGoToLayer(cocos2d::CCObject* sender) = win 0x112de0;
    void onGroupDown(cocos2d::CCObject* sender) = win 0x11da90;
    void onGroupIDFilter(cocos2d::CCObject* sender) = win 0xe5a80, m1 0x31a68;
    void onGroupSticky(cocos2d::CCObject* sender) = win 0x1110f0, imac 0xcf70, m1 0xe2d4;
    void onGroupUp(cocos2d::CCObject* sender) = win 0x11da70;
    void onLockLayer(cocos2d::CCObject* sender) = win 0x11dc00, m1 0x31bec;
    void onNewCustomItem(cocos2d::CCObject* sender) = win 0xe2990, m1 0x304d0, imac 0x30d30;
    void onPaste(cocos2d::CCObject* sender);
    void onPasteColor(cocos2d::CCObject* sender) = win 0x112cd0;
    void onPasteInPlace(cocos2d::CCObject* sender);
    void onPasteState(cocos2d::CCObject* sender) = win 0x112b40;
    void onPause(cocos2d::CCObject* sender) = win 0xe03d0, imac 0x2ad50, m1 0x2afc0;
    void onPlayback(cocos2d::CCObject* sender) = win 0x110390, imac 0xc930, m1 0xdce0;
    void onPlaytest(cocos2d::CCObject* sender) = win 0x1109a0, imac 0xcb90, m1 0xdef4;
    void onResetSpecialFilter(cocos2d::CCObject* sender);
    void onSelectBuildTab(cocos2d::CCObject* sender) = win 0x112f60, imac 0x34310, m1 0x33940;
    void onSettings(cocos2d::CCObject* sender) = win 0xe0350, m1 0x2b46c, imac 0x2b270;
    void onStopPlaytest(cocos2d::CCObject* sender) = win 0x110d40, m1 0xe134, imac 0xcdd0;
    TodoReturn onTargetIDChange(int);
    void onToggleGuide(EffectGameObject*);
    TodoReturn onToggleSelectedOrder(EffectGameObject*);
    void onUngroupSticky(cocos2d::CCObject* sender) = win 0x111130, m1 0xe318, imac 0xcfc0;
    void onUpdateDeleteFilter(cocos2d::CCObject* sender);
    void orderDownCustomItem(cocos2d::CCObject*);
    void orderUpCustomItem(cocos2d::CCObject*);
    cocos2d::CCArray* pasteObjects(gd::string, bool, bool) = win 0x111d10, m1 0x35f00, imac 0x3ac10;
    TodoReturn playCircleAnim(cocos2d::CCPoint, float, float);
    TodoReturn playerTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    TodoReturn playerTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    void playtestStopped() = win 0x110d80, imac 0x3df80;
    TodoReturn positionIsInSnapped(cocos2d::CCPoint);
    TodoReturn positionWithoutOffset(GameObject*);
    TodoReturn processSelectObjects(cocos2d::CCArray*) = imac 0x3d880;
    TodoReturn processSmartObjectsFromType(int, cocos2d::CCArray*, cocos2d::CCArray*, cocos2d::CCArray*, cocos2d::CCArray*);
    void recreateButtonTabs();
    void redoLastAction(cocos2d::CCObject*) = win 0x110190;
    void reloadCustomItems() {
        GameManager* gm = GameManager::sharedState();
        int buttonsPerRow = gm->getIntGameVariable("0049");
        int buttonRows = gm->getIntGameVariable("0050");
        cocos2d::CCArray* customItems = createCustomItems();
        m_buttonBar->loadFromItems(customItems,buttonsPerRow,buttonRows,true);
    }
    void removeOffset(GameObject*) = win 0x120cb0;
    TodoReturn replaceGroupID(GameObject*, int, int);
    void repositionObjectsToCenter(cocos2d::CCArray*, cocos2d::CCPoint, bool) = win 0x112a20;
    void resetObjectEditorValues(cocos2d::CCArray*);
    TodoReturn resetSelectedObjectsColor();
    void resetUI() = win 0xe36d0, imac 0x2ac40, m1 0x2aeac;
    void rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint) = win 0x11f4b0, imac 0x3c3d0;
    TodoReturn rotationforCommand(EditCommand);
    void scaleObjects(cocos2d::CCArray*, float, float, cocos2d::CCPoint, ObjectScaleType, bool) = win 0x11f8d0;
    void selectAll();
    void selectAllWithDirection(bool) = imac 0x3d960;
    void selectBuildTab(int) = win 0x112f90, imac 0x34340, m1 0x33974;
    void selectObject(GameObject*, bool) = win 0x10ee50, imac 0x2ec30, m1 0x2e5c8;
    void selectObjects(cocos2d::CCArray*, bool) = win 0x10f140, imac 0x3c830, m1 0x3749c;
    void selectObjectsInRect(cocos2d::CCRect);
    void setupCreateMenu() = win 0xe6910, imac 0xdf10, m1 0xf170;
    void setupDeleteMenu() = win 0xe38d0, m1 0xe35c, imac 0xd010;
    void setupEditMenu() = win inline, m1 0x2ae74 {
        this->createMoveMenu();
        this->updateEditMenu();
    }
    TodoReturn setupTransformControl();
    bool shouldDeleteObject(GameObject*) = win 0xe4c50, imac 0x32d40;
    TodoReturn shouldSnap(GameObject*);
    void showDeleteConfirmation() = m1 0x32b90, imac 0x33560;
    void showLiveColorSelectForMode(int);
    void showLiveColorSelectForModeSpecial(int);
    void showMaxBasicError() = m1 0x34474, imac 0x34ec0;
    void showMaxCoinError() = m1 0x345f0, imac 0x35020;
    void showMaxError() = win 0x111170, m1 0x342fc, imac 0x34d70;
    void showUI(bool) = win 0x110200, m1 0x388f4, imac 0x3de00;
    void sliderChanged(cocos2d::CCObject*) = win 0xe13a0, imac 0xbd50;
    TodoReturn smartTypeForKey(int);
    cocos2d::CCSprite* spriteFromObjectString(gd::string str, bool, bool, int objLimit, cocos2d::CCArray*, cocos2d::CCArray*, GameObject*) = win 0x10c790, imac 0x344a0, m1 0x33ab0;
    TodoReturn toggleDuplicateButton();
    void toggleEditObjectButton() = win 0x118f10;
    void toggleEnableRotate(cocos2d::CCObject*) = win 0x10eb00;
    void toggleFreeMove(cocos2d::CCObject*) = win 0x10e980, m1 0xd8b4, imac 0xc4c0;
    TodoReturn toggleLockUI(bool);
    void toggleMode(cocos2d::CCObject*) = win 0xe37f0, imac 0x2af00, m1 0x2b140;
    TodoReturn toggleObjectInfoLabel() = win 0xe1730;
    void toggleSnap(cocos2d::CCObject*) = win 0x10ea20;
    TodoReturn toggleSpecialEditButtons();
    void toggleStickyControls(bool enable) = win inline, imac 0x2d590, m1 0x2d020 {
        m_stickyControlsEnabled = enable;
        m_linkBtn->setEnabled(enable);
              m_linkBtn->setVisible(enable);
              m_unlinkBtn->setEnabled(enable);
              m_unlinkBtn->setVisible(enable);
    }
    void toggleSwipe(cocos2d::CCObject*) = win 0x10e8e0, m1 0xd7b4, imac 0xc3d0;
    void transformObject(GameObject*, EditCommand, bool) = win 0x11ed00, imac 0x4be30;
    void transformObjectCall(cocos2d::CCObject*) = win 0x11e7b0;
    void transformObjectCall(EditCommand) = win 0x11e7b0, imac 0x4ae10, m1 0x43bc8;
    void transformObjects(cocos2d::CCArray* objs, cocos2d::CCPoint anchor, float scaleX, float scaleY, float rotateX, float rotateY, float warpX, float warpY) = win 0x11fec0;
    TodoReturn transformObjectsActive();
    TodoReturn transformObjectsReset();
    TodoReturn triggerSwipeMode();
    TodoReturn tryUpdateTimeMarkers();
    void undoLastAction(cocos2d::CCObject*) = win 0x110120;
    void updateButtons() = win 0xe07e0, m1 0x2c954, imac 0x2cdd0;
    void updateCreateMenu(bool) = win 0x10d8c0, imac 0x2e710, m1 0x2e0e4;
    void updateDeleteButtons() = win 0xe5fb0, m1 0x31c94, imac 0x325d0;
    void updateDeleteMenu() {
        m_deleteMenu->setVisible(m_selectedMode == 1);
    }
    TodoReturn updateEditButtonColor(int, cocos2d::ccColor3B) = imac 0x3f120;
    TodoReturn updateEditColorButton() = imac 0x497f0;
    void updateEditMenu() {
        m_editButtonBar->setVisible(m_selectedMode == 3);
    }
    void updateGridNodeSize() = win 0xe1560, imac 0x2f620, m1 0x2f000;
    TodoReturn updateGridNodeSize(int);
    TodoReturn updateGroupIDBtn2();
    void updateGroupIDLabel() = imac 0x2ccd0;
    void updateObjectInfoLabel() = win 0xe17c0, m1 0x2f208, imac 0x2f870;
    TodoReturn updatePlaybackBtn() = imac 0x2d5f0;
    TodoReturn updateSlider() = win 0xe14a0;
    TodoReturn updateSpecialUIElements();
    void updateZoom(float) = win 0x110ef0, m1 0x38b14;
    float valueFromXPos(float);
    float xPosFromValue(float);
    void zoomGameLayer(bool);
    void zoomIn(cocos2d::CCObject*) = win 0x110e50, imac 0xced0, m1 0xe218;
    void zoomOut(cocos2d::CCObject*) = win 0x110ea0, imac 0xcf20, m1 0xe270;


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

    virtual void determineStartValues() = imac 0x288da0, m1 0x231fb4, ios 0x2d2e64;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x288db0, m1 0x231fb8, ios 0x2d2e68;

    bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x2875b0, m1 0x231cd4, imac 0x288ae0;
}

[[link(android)]]
class EffectGameObject : EnhancedGameObject {
    // virtual ~EffectGameObject();
    // EffectGameObject() = imac 0x1edce0;

    static EffectGameObject* create(char const*) = m1 0x16a0d4;

    virtual void setOpacity(unsigned char) = win 0x48d790, m1 0x16a470, imac 0x1a8550, ios 0x37e130;
    virtual void firstSetup() = win 0x48ffb0, imac 0x1aa2d0, m1 0x16b8dc, ios 0x37f594;
    virtual void customSetup() = win 0x48ffd0, m1 0x14e098, imac 0x186600, ios 0x370000;
    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x48d7d0, imac 0x1a85d0, m1 0x16a4f4, ios 0x37e1b4;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = win 0x490230, imac 0x187840, m1 0x14f5b0, ios 0x371028;
    virtual gd::string getSaveString(GJBaseGameLayer*) = win 0x4932b0, imac 0x17c180, m1 0x1463d0, ios 0x36b454;
    virtual void setRScaleX(float) = m1 0x16a178, imac 0x1a81e0, ios 0x37df18;
    virtual void setRScaleY(float) = m1 0x16a188, imac 0x1a8200, ios 0x37df28;
    virtual void triggerActivated(float) = imac 0x1aa260, m1 0x16b854, ios 0x37f520;
    virtual void restoreObject() = imac 0x1aa020, m1 0x16b604, ios 0x37f2ec;
    virtual float spawnXPosition() = imac 0x1aa220, m1 0x16b814, ios 0x37f4e8;
    virtual bool canReverse() = imac 0x1aa3b0, m1 0x16ba58, ios 0x37f680;
    virtual bool isSpecialSpawnObject() = m1 0x16bae4, imac 0x1aa420, ios 0x37f70c;
    virtual bool canBeOrdered() = imac 0x1aa430, m1 0x16baec, ios 0x37f714;
    virtual cocos2d::CCLabelBMFont* getObjectLabel() = m1 0x199b10, imac 0x1e1d20, ios 0x3922c0;
    virtual void setObjectLabel(cocos2d::CCLabelBMFont*) = m1 0x199b18, imac 0x1e1d30, ios 0x3922c8;
    virtual TodoReturn stateSensitiveOff(GJBaseGameLayer*) = imac 0x1a9f90, m1 0x16b578, ios 0x37f260;

    TodoReturn getTargetColorIndex();
    bool init(char const*) = win 0x48d1a0;
    TodoReturn playTriggerEffect() = win 0x48d2b0;
    TodoReturn resetSpawnTrigger();
    void setTargetID(int);
    void setTargetID2(int);
    TodoReturn triggerEffectFinished();
    TodoReturn updateInteractiveHover(float);
    TodoReturn updateSpecialColor();
    TodoReturn updateSpeedModType() = win 0x493010;

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

    virtual void keyBackClicked() = win 0x133aa0, imac 0x4afe70, m1 0x418b0c, ios 0x2f81f4;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x135140, imac 0x4b0620, m1 0x4192a4, ios 0x2f893c;
    virtual void customSetup() = win 0x131260, imac 0x4acc80, m1 0x415c30, ios 0x2f5654;
    virtual void showLayer(bool) = win 0x133070, m1 0x417d7c, imac 0x4af060, ios 0x2f74d8;
    virtual void enterAnimFinished() = m1 0x418a60, imac 0x4afd90, ios 0x2f8174 {}
    virtual void keyUp(cocos2d::enumKeyCodes) = m1 0x419320, imac 0x4b06b0, ios 0x2f8980 {}

    void coinEnterFinished(cocos2d::CCPoint) = win 0x134230, m1 0x418e98, imac 0x4b0230;
    void coinEnterFinishedO(cocos2d::CCObject*) = win 0x1341f0, m1 0x418e4c, imac 0x4b01f0;
    void currencyEnterFinished();
    void diamondEnterFinished();
    gd::string getCoinString() = win 0x132d30, m1 0x4174b8, imac 0x4ae840;
    const char* getEndText() = win 0x135190, m1 0x6c7abc, imac 0x4aea80;
    void goEdit() = win 0x1336e0;
    bool init(PlayLayer* playLayer);
    void onEdit(cocos2d::CCObject* sender) = win 0x1335e0;
    void onEveryplay(cocos2d::CCObject* sender);
    void onHideLayer(cocos2d::CCObject* sender) = win 0x1337b0, imac 0x4aef70, m1 0x417c94;
    void onLevelLeaderboard(cocos2d::CCObject* sender) = win 0x132c30;
    void onMenu(cocos2d::CCObject* sender) = win 0x133460;
    void onReplay(cocos2d::CCObject* sender) = win 0x133250;
    void onRestartCheckpoint(cocos2d::CCObject* sender) = win 0x133890;
    void playCoinEffect(float) = win 0x133fb0, imac 0x4af550;
    void playCurrencyEffect(float) = win 0x134560;
    void playDiamondEffect(float) = win 0x1349f0;
    void playEndEffect() = win 0x134e80;
    void playStarEffect(float) = win 0x133ab0;
    void starEnterFinished() = win 0x133e50;
    void tryShowBanner(float);

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

    static EndPortalObject* create() = imac 0x3891b0;

    virtual bool init() = imac 0x389250, m1 0x318a2c, ios 0x3f66b0;
    virtual void setPosition(cocos2d::CCPoint const&) = m1 0x318ec4, imac 0x389750, ios 0x3f6b38;
    virtual void setVisible(bool) = imac 0x389860, m1 0x318fbc, ios 0x3f6c30;

    cocos2d::CCPoint getSpawnPos() = win 0x136560, m1 0x318e60;
    void triggerObject(GJBaseGameLayer*) = m1 0x318dcc;
    TodoReturn updateColors(cocos2d::ccColor3B);
    void updateEndPos(bool) = win 0x1367d0, m1 0x319020, imac 0x3898c0;

    cocos2d::CCSprite* m_gradientBar;
    bool m_flippedX;
    bool m_startPosHeightRelated;
}

[[link(android)]]
class EndTriggerGameObject : EffectGameObject {
    // virtual ~EndTriggerGameObject();

    static EndTriggerGameObject* create();

    virtual bool init() = m1 0x1864c4, imac 0x1ca130, ios 0x38ad10;
    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x4a4180, imac 0x1ca180, m1 0x186514, ios 0x38ad60;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1caf50, m1 0x1870ac, ios 0x38b0ec;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1ca260, m1 0x1865f0, ios 0x38adec;

    bool m_noEffects;
    bool m_noSFX;
    bool m_instant;
}

[[link(android)]]
class EnhancedGameObject : GameObject {
    // virtual ~EnhancedGameObject();
    // EnhancedGameObject();

    static EnhancedGameObject* create(char const*);

    virtual void customSetup() = win 0x1a1ff0, imac 0x5b42e0, m1 0x4ec86c, ios 0x262680;
    virtual void resetObject() = win 0x1a19b0, imac 0x5b3b10, m1 0x4ec1fc, ios 0x2620bc;
    virtual void deactivateObject(bool) = imac 0x5b7190, m1 0x4ed9e8, ios 0x26389c;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x5b3df0, m1 0x4ec4b0, ios 0x26234c;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x5b71f0, m1 0x4eda50, ios 0x263904;
    virtual void triggerActivated(float) = m1 0x4ec328, imac 0x5b3c80, ios 0x2621e8;
    virtual void restoreObject() = imac 0x5b3bb0, m1 0x4ec278, ios 0x262138;
    virtual void animationTriggered() = m1 0x4ec428, imac 0x5b3d50, ios 0x2622c8;
    virtual void activatedByPlayer(PlayerObject*) = win 0x1a1b10, imac 0x5b3c90, m1 0x4ec334, ios 0x2621f4;
    virtual bool hasBeenActivatedByPlayer(PlayerObject*) = imac 0x5b3ce0, m1 0x4ec394, ios 0x26224c;
    virtual bool hasBeenActivated() = m1 0x4ec408, imac 0x5b3d30, ios 0x2622a8;
    virtual void saveActiveColors() = imac 0x5b3d70, m1 0x4ec438, ios 0x2622d8;
    virtual bool canAllowMultiActivate() = imac 0x5b3810, m1 0x4ec104, ios 0x261f88;
    virtual bool getHasSyncedAnimation() = m1 0x199ae8, imac 0x1e1cd0, ios 0x26466c;
    virtual bool getHasRotateAction() = m1 0x199af0, imac 0x1e1ce0, ios 0x264674;
    virtual bool canMultiActivate(bool) = imac 0x5b3c60, m1 0x4ec304, ios 0x2621c4;
    virtual TodoReturn powerOnObject(int) = imac 0x5b3bf0, m1 0x4ec2b0, ios 0x262170;
    virtual TodoReturn powerOffObject() = imac 0x5b3c10, m1 0x4ec2c4, ios 0x262184;
    virtual TodoReturn stateSensitiveOff(GJBaseGameLayer*) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void updateSyncedAnimation(float, int) = win 0x1a4e30, imac 0x2499e0, m1 0x1f7c7c, ios 0x347598;
    virtual TodoReturn updateAnimateOnTrigger(bool) = imac 0x24b920, m1 0x1f903c, ios 0x348938;

    void createRotateAction(float angle, int clockwiseDirection);
    bool init(char const*) = win 0x1a1800;
    TodoReturn previewAnimateOnTrigger();
    TodoReturn refreshRotateAction();
    TodoReturn resetSyncedAnimation();
    TodoReturn resumeAudio();
    TodoReturn resumeAudioDelayed();
    TodoReturn setupAnimationVariables();
    TodoReturn triggerAnimation();
    TodoReturn updateRotateAction(float);
    TodoReturn updateState(int);
    void updateUserCoin() = win 0x1a3970, imac 0x5a9770, m1 0x4e3b94;
    TodoReturn waitForAnimationTrigger();

    // Everyone loves itanium padding
    bool m_unknownPadding;
    bool m_poweredOn;
    int m_state;
    int m_animationRandomizedStartValue;
    float m_animationStart;
    // No idea what these 3 fields are supposed to be. But we know what types they are...
    float field4_0xd;
    int field5_0x11;
    bool field6_0x15;
    float m_frameTime;
    bool m_visible;
    bool m_shouldNotHideAnimFreeze;
    bool m_usesSpecialAnimation;
    short m_frames;
    bool m_hasCustomAnimation;
    bool m_hasCustomRotation;
    // property 98
    bool m_disableRotation;

    // property 97
    float m_rotationSpeed;

    float m_rotationAngle; 
    float m_rotationDelta;
    float m_rotationAnimationSpeed;
    
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
    bool m_animationTriggered;
    int m_unkAnimationInt;
    int m_maybeAnimationVariableXInt;
    int m_maybeAnimationVariableYInt;
    // property 214
    bool m_animateOnlyWhenActive;
    // property 444
    bool m_isNoMultiActivate;
    // property 99
    bool m_isMultiActivate;
    bool m_activated;
    bool m_activatedByPlayer1;
    bool m_activatedByPlayer2;
    bool m_hasUniqueCoin;
}    

[[link(android)]]
class EnhancedTriggerObject : EffectGameObject {
    // virtual ~EnhancedTriggerObject();

    static EnhancedTriggerObject* create(char const*);

    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1ac3b0, m1 0x16d4e8, ios 0x38017c;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1ab8c0, m1 0x16cbf8, ios 0x37fed8;

    bool init(char const*);
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
    void updateTransitions(float, GJBaseGameLayer*) = imac 0x5bb680, m1 0x4f1338;

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

    virtual void customSetup() = imac 0x186570, m1 0x14e030, ios 0x36ffc0;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1868b0, m1 0x14e368, ios 0x370254;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x174880, m1 0x140604, ios 0x369c38;

    bool init(char const*);
    TodoReturn resetEnterAnimValues();
}

[[link(android)]]
class EventLinkTrigger : EffectGameObject {
    // virtual ~EventLinkTrigger();

    static EventLinkTrigger* create();

    virtual bool init() = m1 0x17dc54, imac 0x1bfdd0, ios 0x386e24;
    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = imac 0x1bfe20, m1 0x17dca4, ios 0x386e74;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1c0cf0, m1 0x17e8e0, ios 0x387270;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1bff00, m1 0x17dd78, ios 0x386ef8;
}

[[link(android)]]
class ExplodeItemNode : cocos2d::CCNode {
    // virtual ~ExplodeItemNode();

    static ExplodeItemNode* create(cocos2d::CCRenderTexture*);

    virtual void update(float) = imac 0x202b30, m1 0x1b7f14, ios 0x6105c;

    TodoReturn createSprites(int, int, float, float, float, float, float, float, cocos2d::ccColor4F, cocos2d::ccColor4F, bool);
    bool init(cocos2d::CCRenderTexture*);

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

    virtual bool init() = imac 0x202eb0, m1 0x1b8200, ios 0x6132c;

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

    virtual bool init() = win 0x3ec90, imac 0x394410, m1 0x322be4, ios 0x12fc48;
    virtual void setPosition(cocos2d::CCPoint const&) = win 0x3ecb0, m1 0x322be8, imac 0x394420, ios 0x12fc4c;

    BoomScrollLayerDelegate* m_delegate;
}

[[link(android)]]
class FileOperation {
    static gd::string getFilePath();
    static void readFile();
    static void saveFile() = m1 0x53a54c, imac 0x60d880;
}

[[link(android)]]
class FileSaveManager : GManager {
    // virtual ~FileSaveManager();

    static FileSaveManager* sharedState();

    virtual bool init() = imac 0x73b0, m1 0x91d4;
    virtual void firstLoad() = imac 0x73e0, m1 0x9204;

    TodoReturn getStoreData();
    TodoReturn loadDataFromFile(char const*);
}

[[link(android)]]
class FindBPMLayer : CreateGuidelinesLayer {
    // virtual ~FindBPMLayer();

    static FindBPMLayer* create(int);

    virtual void onClose(cocos2d::CCObject* sender) = win 0x9b870, imac 0x4f7a00, m1 0x4581b8, ios 0x823f8;
    virtual TodoReturn playMusic() = win 0x9b6e0, m1 0x458024, imac 0x4f7870, ios 0x82284;
    virtual TodoReturn registerTouch() = win 0x9b780, imac 0x4f7900, m1 0x4580c0, ios 0x82310;
    virtual void onInfo(cocos2d::CCObject* sender) = m1 0x4581b4, imac 0x4f79f0, ios 0x823f4 {}
    virtual void onRecord(cocos2d::CCObject* sender) = win 0x9b4a0, imac 0x4f7760, m1 0x457f44, ios 0x821e0;
    virtual TodoReturn recordingDidStop() = win 0x9b660, imac 0x4f77a0, m1 0x457f7c, ios 0x82218;

    TodoReturn calculateBPM();
    bool init(int);
}

[[link(android)]]
class FindObjectPopup : SetIDPopup {
    // virtual ~FindObjectPopup();

    static FindObjectPopup* create();

    virtual bool init() = imac 0x299fd0, m1 0x241b10, ios 0x2de9e8;

    void onFindObjectID(cocos2d::CCObject* sender) = win inline {
        m_unknownBool = !m_unknownBool;
    }

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

    static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, gd::string desc, char const* btn1, char const* btn2, float width, bool scroll, float height, float textScale) = win 0x51940, imac 0x4880e0, m1 0x3f5598;
    static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, gd::string desc, char const* btn1, char const* btn2, float width) = win 0x51890, imac 0x4882b0, m1 0x3f5738;
    static FLAlertLayer* create(FLAlertLayerProtocol* delegate, char const* title, gd::string desc, char const* btn1, char const* btn2) {
        return FLAlertLayer::create(delegate, title, desc, btn1, btn2, 300.0);
    }

    static FLAlertLayer* create(char const* title, const gd::string& desc, char const* btn) {
        return FLAlertLayer::create(nullptr, title, desc, btn, nullptr, 300.0);
    }

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x52a00, imac 0x489190, m1 0x3f6568, ios 0x2abcac;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x52b50, m1 0x3f6818, imac 0x4893d0, ios 0x2abe9c;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x52aa0, imac 0x4892b0, m1 0x3f66c8, ios 0x2abd64;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x52b10, m1 0x3f6788, imac 0x489350, ios 0x2abe24;
    virtual void registerWithTouchDispatcher() = win 0x52d60, imac 0x489600, m1 0x3f6a4c, ios 0x2ac09c;
    virtual void keyBackClicked() = win 0x52880, imac 0x489070, m1 0x3f6440, ios 0x2abc48;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x52800, imac 0x488fc0, m1 0x3f63a4, ios 0x2abc18;
    virtual void show() = win 0x52b90, imac 0x489450, m1 0x3f68a8, ios 0x2abf14;

    void incrementForcePrio() = imac 0x488eb0, m1 0x3f6294;
    bool init(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float, bool, float, float) = win 0x51b60, imac 0x488360, m1 0x3f5800;
    bool init(int) = win 0x51a50, imac 0x488de0, m1 0x3f61c0;
    void onBtn1(cocos2d::CCObject* sender) = win 0x52940, imac 0x488f00, m1 0x3f62e4;
    void onBtn2(cocos2d::CCObject* sender) = win 0x529a0, imac 0x488f60, m1 0x2f6344;
    // virtual void onEnter() = m1 0x3f6a84, imac 0x489640, ios 0x2ac0d4; // only exists on armv7...

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

    static FMODAudioEngine* sharedEngine() = win inline, imac 0x3c9e70, m1 0x352964 {
        auto** instancePtr = reinterpret_cast<FMODAudioEngine**>(geode::base::get() + 0x6a4e18);
        if (!*instancePtr) {
            *instancePtr = new FMODAudioEngine();
            (*instancePtr)->init();
        }
        return *instancePtr;
    }

    virtual void update(float) = win 0x55390, imac 0x3cc160, m1 0x3542a0, ios 0x13becc;

    TodoReturn activateQueuedMusic(int);
    FMOD::Channel* channelForChannelID(int) = win 0x58480, imac 0x3cd8a0, m1 0x355668;
    TodoReturn channelForUniqueID(int);
    TodoReturn channelIDForUniqueID(int);
    TodoReturn channelLinkSound(int, FMODSound*);
    TodoReturn channelStopped(FMOD::Channel*, bool);
    TodoReturn channelUnlinkSound(int);
    void clearAllAudio() = win 0x552e0, imac 0x3cb330, m1 0x353b90;
    int countActiveEffects() {
        return m_channelIDToChannel.size() - countActiveMusic();
    }
    int countActiveMusic() {
        int count = 0;
        for (auto& music : m_musicChannels) {
            if (music.second.m_channelID > 0) {
                ++count;
            }
        }
        return count;
    }
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
    TodoReturn fadeInBackgroundMusic(float) = imac 0x3d4840;
    void fadeInMusic(float, int) = win 0x5c3c0, m1 0x35b38c, imac 0x3d4f80;
    TodoReturn fadeMusic(float, int, float, float);
    float fadeOutMusic(float, int) = win 0x5c500, m1 0x35d940, imac 0x3d7e20;
    TodoReturn getActiveMusic(int);
    FMOD::Channel* getActiveMusicChannel(int musicChannel) = win inline, imac 0x3cf390, m1 0x356984 {
        // TODO: this might do other checks or whatever but i cant be bothered
        return m_channelIDToChannel[m_musicChannels[musicChannel].m_channelID];
    }
    float getBackgroundMusicVolume() = win inline, imac 0x3d4880, m1 0x35ad68 {
        return m_musicVolume;
    }
    FMOD::ChannelGroup* getChannelGroup(int, bool) = win 0x56b20, m1 0x358208, imac 0x3d1240;
    float getEffectsVolume() {
        return m_sfxVolume;
    }
    gd::string getFMODStatus(int) = win 0x5cdb0, imac 0x3d82b0, m1 0x35dce4;
    float getMeteringValue() = imac 0x3d10a0, m1 0x35805c;
    TodoReturn getMusicChannelID(int);
    unsigned int getMusicLengthMS(int channel) = win 0x5c330;
    TodoReturn getMusicTime(int);
    unsigned int getMusicTimeMS(int channel) = win 0x5c2d0, m1 0x35d310, imac 0x3d7660;
    TodoReturn getNextChannelID();
    TodoReturn getTweenContainer(AudioTargetType);
    bool isAnyPersistentPlaying();
    bool isChannelStopping(int);
    bool isEffectLoaded(gd::string path);
    bool isMusicPlaying(gd::string path, int p1) = win 0x59ee0, imac 0x3d4a20, m1 0x35aeb0;
    bool isMusicPlaying(int channel) = win 0x59d00, imac 0x3d48f0, m1 0x35ada4;
    bool isPersistentMatchPlaying(gd::string, int);
    bool isSoundReady(FMOD::Sound* sound);
    TodoReturn lengthForSound(gd::string path);
    TodoReturn loadAndPlayMusic(gd::string, unsigned int, int);
    TodoReturn loadAudioState(FMODAudioState&);
    void loadMusic(gd::string path, float speed, float p2, float volume, bool shouldLoop, int p5, int p6) = win 0x5a280, imac 0x3ced40, m1 0x356464;
    void loadMusic(gd::string path) {
        this->loadMusic(path, 1.f, 0.f, 1.f, false, 0, 0);
    }
    TodoReturn loadMusic(gd::string, float, float, float, bool, int, int, bool);
    void pauseAllAudio() = win inline, imac 0x3cb290, m1 0x353afc {
        if (m_allAudioPaused) return;
        m_allAudioPaused = true;
        m_backgroundMusicChannel->setPaused(true);
        m_globalChannel->setPaused(true);
    }
    void pauseAllEffects() {
        m_globalChannel->setPaused(true);
    }
    void pauseAllMusic(bool force) = win inline, imac 0x3d4930, m1 0x35ade0 {
        for (auto& [id, channel] : m_musicChannels) {
            if (force || !channel.m_unkBool2) {
                if (auto ch = this->channelForChannelID(channel.m_channelID))
                    ch->setPaused(true);
            }
        }
    }
    TodoReturn pauseEffect(unsigned int);
    void pauseMusic(int musicChannel) = win inline {
        auto* channel = this->getActiveMusicChannel(musicChannel);
        if (channel)
            channel->setPaused(true);
    }
    TodoReturn pitchForIdx(int);
    void playEffect(gd::string path, float speed, float p2, float volume) = win 0x56e10, imac 0x3d1ba0, m1 0x358870;
    void playEffect(gd::string path) = win 0x56d90, m1 0x3587c0, imac 0x3d1b10;
    void playEffectAdvanced(gd::string path, float speed, float p2, float volume, float pitch, bool fastFourierTransform, bool reverb, int startMillis, int endMillis, int fadeIn, int fadeOut, bool loopEnabled, int p12, bool override, bool p14, int p15, int uniqueID, float minInterval, int sfxGroup) = win 0x56f00, imac 0x3cf550, m1 0x356ac0;
    TodoReturn playEffectAsync(gd::string path);
    void playMusic(gd::string path, bool shouldLoop, float fadeInTime, int channel) = win 0x5a110, imac 0x3d4dc0, m1 0x35b20c;
    FMODSound& preloadEffect(gd::string path) = win 0x59260, m1 0x3531c4, imac 0x3ca980;
    void preloadEffectAsync(gd::string path);
    FMOD::Sound* preloadMusic(gd::string path, bool p1, int p2) = win 0x5c790, imac 0x3d5220, m1 0x35b618;
    TodoReturn printResult(FMOD_RESULT);
    TodoReturn queuedEffectFinishedLoading(gd::string);
    TodoReturn queuePlayEffect(gd::string, float, float, float, float, bool, bool, int, int, int, int, bool, int, bool, int, float, int) = win 0x57920;
    void queueStartMusic(gd::string audioFilename, float, float, float, bool, int ms, int, int, int, int, bool, int, bool, bool) = win 0x5aa70, imac 0x3d5af0, m1 0x35bdb8;
    TodoReturn registerChannel(FMOD::Channel*, int, int);
    void releaseRemovedSounds();
    void resumeAllAudio() = win inline, imac 0x3cb2e0, m1 0x353b48 {
        if (!m_allAudioPaused) return;
        m_allAudioPaused = false;
        m_backgroundMusicChannel->setPaused(false);
        m_globalChannel->setPaused(false);
    }
    void resumeAllEffects() = win inline, imac 0x3d44b0, m1 0x35aa2c {
        m_globalChannel->setPaused(false);
    }
    void resumeAllMusic() = win 0x59e80, imac 0x3d49c0, m1 0x35ae5c;
    void resumeAudio() = win inline, imac 0x3cb150, m1 0x3539c0 {
        this->start();
    }
    void resumeEffect(unsigned int) {}
    void resumeMusic(int musicChannel) = win inline {
        auto* channel = this->getActiveMusicChannel(musicChannel);
        if (channel)
            channel->setPaused(false);
    }
    TodoReturn reverbToString(FMODReverbPreset) = m1 0x353648, imac 0x3caea0;
    TodoReturn saveAudioState(FMODAudioState&) = win 0x558f0;
    void setBackgroundMusicVolume(float volume) = win inline, imac 0x3d4890, m1 0x35ad70 {
        m_musicVolume = volume;
        if (m_backgroundMusicChannel) m_backgroundMusicChannel->setVolume(volume);
    }
    void setChannelPitch(int, AudioTargetType, float);
    void setChannelVolume(int, AudioTargetType, float) = imac 0x3d0f40;
    void setChannelVolumeMod(int, AudioTargetType, float) = win 0x58f80;
    void setEffectsVolume(float volume) = win inline, imac 0x3d48d0, m1 0x35ad90 {
        m_sfxVolume = volume;
        if (m_globalChannel) m_globalChannel->setVolume(volume);
    }
    void setMusicTimeMS(unsigned int, bool, int) = win 0x5c190, imac 0x3d0290, m1 0x357488;
    void setup() = win 0x53bc0, m1 0x352b4c, imac 0x3ca220;
    void setupAudioEngine() = win 0x540a0, imac 0x3ca670;
    void start() = win 0x55280;
    TodoReturn startMusic(int, int, int, int, bool, int, bool, bool);
    void stop();
    void stopAllEffects() = win 0x598b0, m1 0x353c3c, imac 0x3cb410;
    void stopAllMusic(bool) = win 0x59d70, imac 0x3cbbf0, m1 0x353f28;
    TodoReturn stopAndGetFade(FMOD::Channel*) = m1 0x35a2bc;
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
    TodoReturn updateChannelTweens(float) = imac 0x3cd220;
    void updateMetering();
    void updateQueuedEffects() = win 0x5aec0;
    void updateQueuedMusic();
    void updateReverb(FMODReverbPreset, bool) = win 0x54400, imac 0x3cac50;
    void updateTemporaryEffects() = win 0x5b410, imac 0x3cc820;
    TodoReturn waitUntilSoundReady(FMOD::Sound*);

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

    static FMODLevelVisualizer* create() = win 0x297150, imac 0x29cfb0, m1 0x244748;

    virtual bool init() = imac 0x29d020, m1 0x2447d0, ios 0x2e0c20;

    void updateVisualizer(float, float, float) = win 0x297690, imac 0x29d460, m1 0x244c40;

    float m_width;
}

class FMODMusic {
    int m_channelID;
    PAD = win 0x8, android 0x8, mac 0x8, ios 0x8;
    gd::string m_filePath;
    bool m_unkBool1;
    bool m_unkBool2;
    // there might be other things, hard to know the size
}

[[link(android)]]
class FMODQueuedEffect {
    PAD = win 0x70, android32 0x48, android64 0x58;
}

[[link(android)]]
class FollowRewardPage : FLAlertLayer, FLAlertLayerProtocol, GameRateDelegate, RewardedVideoDelegate {
    // virtual ~FollowRewardPage();

    static FollowRewardPage* create() = win 0x137fc0, m1 0x3897ec;

    virtual bool init() = imac 0x40d200, m1 0x3898fc, ios 0x41c428;
    virtual void registerWithTouchDispatcher() = imac 0x40f3b0, m1 0x38b854, ios 0x41dd84;
    virtual void keyBackClicked() = m1 0x38b7d8, imac 0x40f340, ios 0x41dd08;
    virtual void show() = imac 0x40f110, m1 0x38b5c0, ios 0x41db00;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x13b5f0, imac 0x40f290, m1 0x38b744, ios 0x41dc74;
    virtual void rewardedVideoFinished() = win 0x13a330, m1 0x38b5b0, imac 0x40f0f0, ios 0x41daf0;
    virtual void updateRate() = win 0x139e00, imac 0x40e9e0, m1 0x38aee8, ios 0x41d79c;

    void onClose(cocos2d::CCObject* sender);
    void onRewardedVideo(cocos2d::CCObject* sender) = m1 0x38b228;
    void onSpecialItem(cocos2d::CCObject* sender) = win 0x13a340, m1 0x38a858, imac 0x40e310;
    void switchToOpenedState(CCMenuItemSpriteExtra*) = win 0x13b510, imac 0x40e910, m1 0x38ae04;

    cocos2d::CCArray* m_chests;
    bool m_videoPlaying;
}

[[link(android)]]
class FontObject : cocos2d::CCObject {
    // virtual ~FontObject();
    FontObject() {}

    static FontObject* createWithConfigFile(char const* p0, float p1) = win inline, imac 0x20e860, m1 0x1c2f68 {
        auto ret = new FontObject();
        if (ret->initWithConfigFile(p0, p1)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    int getFontWidth(int p0) = win inline, imac 0x20f360 {
        return m_hugeIntArray[p0];
    }
    bool initWithConfigFile(char const* p0, float p1) = win inline {
        this->parseConfigFile(p0, p1);
        return true;
    }
    void parseConfigFile(char const*, float) = win 0x3b620, imac 0x20e8e0;

    std::array<int, 300> m_hugeIntArray;
}

[[link(android)]]
class ForceBlockGameObject : EffectGameObject {
    // virtual ~ForceBlockGameObject();

    static ForceBlockGameObject* create(char const*);

    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1dacc0, m1 0x193bfc, ios 0x38f9a8;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1d9d40, m1 0x192f78, ios 0x38f600;

    TodoReturn calculateForceToTarget(GameObject*);
    bool init(char const*);
}

[[link(android)]]
class FRequestProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, FriendRequestDelegate {
    // virtual ~FRequestProfilePage();

    static FRequestProfilePage* create(bool) = imac 0x7798d0;

    virtual void registerWithTouchDispatcher() = m1 0x68ffa8, imac 0x77b1a0, ios 0x1b91f4;
    virtual void keyBackClicked() = win 0x13d290, imac 0x77b170, m1 0x68ff9c, ios 0x1b91e8;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x13d070, imac 0x77b090, m1 0x68fe98, ios 0x1b90f0;
    virtual void onClosePopup(UploadActionPopup*) = win 0x13d2a0, m1 0x68ffe0, imac 0x77b1e0, ios 0x1b922c;
    virtual void uploadActionFinished(int, int) = win 0x13d2f0, imac 0x77b250, m1 0x690068, ios 0x1b929c;
    virtual void uploadActionFailed(int, int) = win 0x13d460, imac 0x77b410, m1 0x690234, ios 0x1b9384;
    virtual void loadFRequestsFinished(cocos2d::CCArray*, char const*) = win 0x13dbd0, imac 0x77b7e0, m1 0x690608, ios 0x1b95c0;
    virtual void loadFRequestsFailed(char const*, GJErrorCode) = win 0x13dc50, imac 0x77b8d0, m1 0x690714, ios 0x1b9644;
    virtual void setupPageInfo(gd::string, char const*) = win 0x13dcf0, imac 0x77ba20, m1 0x690874, ios 0x1b9714;
    virtual void forceReloadRequests(bool) = win 0x13dcd0, imac 0x77b9e0, m1 0x690840, ios 0x1b96e0;

    TodoReturn deleteSelected() = m1 0x68fcd0, imac 0x77aeb0;
    bool init(bool) = win 0x13be30, m1 0x68ea04, imac 0x779a80;
    bool isCorrect(char const*);
    void loadPage(int);
    void onClose(cocos2d::CCObject* sender);
    void onDeleteSelected(cocos2d::CCObject* sender) = m1 0x68f608, imac 0x77a720;
    void onNextPage(cocos2d::CCObject* sender);
    void onPrevPage(cocos2d::CCObject* sender);
    void onSentRequests(cocos2d::CCObject* sender);
    void onToggleAllObjects(cocos2d::CCObject* sender);
    void onUpdate(cocos2d::CCObject* sender);
    void setupCommentsBrowser(cocos2d::CCArray*) = win 0x13da30, m1 0x690494, imac 0x77b660;
    TodoReturn untoggleAll();
    TodoReturn updateLevelsLabel();
    TodoReturn updatePageArrows();

    bool m_sent;
    gd::string m_key;
    cocos2d::CCLabelBMFont* m_noInternet;
    cocos2d::CCLabelBMFont* m_unkLabel;
    GJCommentListLayer* m_listLayer;
    LoadingCircle* m_circle;
}

[[link(android)]]
class FriendRequestDelegate {
    virtual void loadFRequestsFinished(cocos2d::CCArray*, char const*);
    virtual void loadFRequestsFailed(char const*, GJErrorCode);
    virtual void setupPageInfo(gd::string, char const*);
    virtual void forceReloadRequests(bool);
}

[[link(android)]]
class FriendRequestPopup : FLAlertLayer, UploadActionDelegate, UploadPopupDelegate, FLAlertLayerProtocol {
    // virtual ~FriendRequestPopup();

    static FriendRequestPopup* create(GJFriendRequest*) = win 0x28e370;

    virtual void keyBackClicked() = win 0x28f950, m1 0x23ade4, imac 0x292af0, ios 0x2d9a8c;
    virtual void uploadActionFinished(int, int) = win 0x28f960, imac 0x292be0, m1 0x23aec0, ios 0x2d9a98;
    virtual void uploadActionFailed(int, int) = win 0x28fb10, imac 0x292dc0, m1 0x23b0c0, ios 0x2d9bc8;
    virtual void onClosePopup(UploadActionPopup*) = win 0x28fbd0, imac 0x292f10, m1 0x23b228, ios 0x2d9c60;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x28fc30, imac 0x293080, m1 0x23b3a4, ios 0x2d9cd8;

    void blockUser();
    bool init(GJFriendRequest*) = win 0x28e4b0, imac 0x2916b0, m1 0x239a00;
    void loadFromGJFriendRequest(GJFriendRequest*) = m1 0x23a080, imac 0x291cf0;
    void onAccept(cocos2d::CCObject* sender) = m1 0x23a914, imac 0x292650;
    void onBlock(cocos2d::CCObject* sender) = m1 0x23aab0, imac 0x2927f0;
    void onClose(cocos2d::CCObject* sender) = win 0x28f440, m1 0x23a014, imac 0x291c80;
    void onRemove(cocos2d::CCObject* sender);

    void* m_unk;
    GJFriendRequest* m_request;
    LoadingCircle* m_circle;
    CCMenuItemSpriteExtra* m_closeBtn;
    UploadActionPopup* m_popup;
}

[[link(android)]]
class FriendsProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, UserListDelegate {
    // virtual ~FriendsProfilePage();

    static FriendsProfilePage* create(UserListType) = win 0x13e010, imac 0x641780, m1 0x56a370;

    virtual void registerWithTouchDispatcher() = m1 0x56b2b4, imac 0x6427d0, ios 0x1da854;
    virtual void keyBackClicked() = win 0x13f0a0, imac 0x6427a0, m1 0x56b2a8, ios 0x1da848;
    virtual void getUserListFinished(cocos2d::CCArray*, UserListType) = win 0x13ebd0, imac 0x642420, m1 0x56af2c, ios 0x1da5f0;
    virtual void getUserListFailed(UserListType, GJErrorCode) = win 0x13ed20, imac 0x642560, m1 0x56b048, ios 0x1da6fc;
    virtual void userListChanged(cocos2d::CCArray*, UserListType) = m1 0x56b178, imac 0x642670, ios 0x1da79c;
    virtual void forceReloadList(UserListType) = win 0x13ed90, imac 0x6426b0, m1 0x56b194, ios 0x1da7b8;

    bool init(UserListType type) = win 0x13e160, imac 0x641910, m1 0x56a498;
    void onBlocked(cocos2d::CCObject* sender) = win 0x13ef50, m1 0x56abb8, imac 0x6420b0;
    void onClose(cocos2d::CCObject* sender) = win 0x13efe0, m1 0x56ab00, imac 0x641ff0;
    void onUpdate(cocos2d::CCObject* sender) = win 0x13EE30, m1 0x56ac44, imac 0x642140;
    void setupUsersBrowser(cocos2d::CCArray* users, UserListType type) = win 0x13e870, imac 0x6421b0, m1 0x56aca8;

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
    GameCell(char const*, float, float) = m1 0x291758, imac 0x2f8e00;

    virtual bool init() = win 0x3c7f0, m1 0x291d60, imac 0x2f9520, ios 0x1d1424;
    virtual void draw() = win 0x3cbf0, imac 0x2f95e0, m1 0x291e34, ios 0x1d1468;

    void loadFromString(gd::string) = win 0x3c800, m1 0x291900, imac 0x2f9000;
    void onTouch(cocos2d::CCObject* sender) = win 0x3cbc0, m1 0x291d6c, imac 0x2f9540;
    void updateBGColor(int) = m1 0x291db8, imac 0x2f9580;

    void* m_unk230;
    gd::string m_gameLink;
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
    static cocos2d::CCDictionary* responseToDict(gd::string, bool) = win 0x168140, m1 0x477c14, imac 0x51b260;
    // virtual ~GameLevelManager();

    static GameLevelManager* sharedState() = win 0x140b20, imac 0x504a90, m1 0x4641c4;

    virtual bool init() = win 0x142230, m1 0x473374, imac 0x515dc0, ios 0x95d68;

    void acceptFriendRequest(int, int) = imac 0x53e840, m1 0x497a7c;
    int accountIDForUserID(int userID) = imac 0x518ae0, m1 0x475c08;
    void addDLToActive(char const*) = win 0x147a20, imac 0x5228d0, m1 0x47e834;
    bool areGauntletsLoaded();
    void banUser(int);
    void blockUser(int) = m1 0x498a24, imac 0x53f840;
    void cleanupDailyLevels() = win 0x1485e0;
    bool createAndGetAccountComments(gd::string, int);
    bool createAndGetCommentsFull(gd::string, int, bool);
    bool createAndGetLevelComments(gd::string, int);
    cocos2d::CCArray* createAndGetLevelLists(gd::string) = imac 0x51b840;
    cocos2d::CCArray* createAndGetLevels(gd::string);
    cocos2d::CCArray* createAndGetMapPacks(gd::string);
    cocos2d::CCArray* createAndGetScores(gd::string, GJScoreType) = imac 0x51cf60;
    GJGameLevel* createNewLevel() = win 0x142800, imac 0x5165d0, m1 0x473a40;
    GJLevelList* createNewLevelList() = win 0x1432b0, m1 0x474704;
    TodoReturn createPageInfo(int, int, int) = m1 0x47e660, imac 0x522710;
    GJSmartTemplate* createSmartTemplate();
    void dataLoaded(DS_Dictionary*) = win 0x149310, imac 0x525360, m1 0x481004;
    void deleteAccountComment(int, int);
    void deleteComment(int, CommentType, int) = m1 0x496170, imac 0x53ccf0;
    bool deleteFriendRequests(int, cocos2d::CCArray*, bool) = win 0x15e180, m1 0x49713c, imac 0x53de30;
    void deleteLevel(GJGameLevel*) = win 0x142fe0, imac 0x517010, m1 0x4743e0;
    void deleteLevelComment(int, int);
    void deleteLevelList(GJLevelList*) = win 0x143890, imac 0x517880, m1 0x474ba4;
    bool deleteSentFriendRequest(int) = imac 0x53de10;
    void deleteServerLevel(int) = win 0x152350, m1 0x48b430, imac 0x530ad0;
    void deleteServerLevelList(int) = m1 0x486e7c, imac 0x52bc60;
    void deleteSmartTemplate(GJSmartTemplate*);
    void deleteUserMessages(GJUserMessage* message, cocos2d::CCArray* messages, bool isSender) = win 0x158f20, m1 0x492290, imac 0x5389d0;
    void downloadLevel(int, bool) = win 0x14fde0, imac 0x52dae0, m1 0x4889b0;
    void downloadUserMessage(int, bool) = m1 0x491908, imac 0x537ff0;
    void encodeDataTo(DS_Dictionary*) = win 0x148e00, imac 0x524e30, m1 0x480b48;
    void firstSetup();
    void followUser(int);
    GJFriendRequest* friendRequestFromAccountID(int);
    void friendRequestWasRemoved(int, bool);
    char const* getAccountCommentKey(int p0, int p1) = m1 0x4935b0, imac 0x539d80 {
        return cocos2d::CCString::createWithFormat("%i_%i", p0, p1)->getCString();
    }
    void getAccountComments(int accountID, int page, int total) = imac 0x539a30, m1 0x493268;
    int getActiveDailyID(GJTimedLevelType) = imac 0x5439d0, m1 0x49c9d0;
    GJSmartTemplate* getActiveSmartTemplate();
    cocos2d::CCArray* getAllSmartTemplates();
    cocos2d::CCDictionary* getAllUsedSongIDs();
    GJLevelList* getAllUsedSongIDs(int);
    gd::string getBasePostString() = win 0x14a4b0, m1 0x4826c4, imac 0x526da0;
    bool getBoolForKey(char const* key) = win inline, m1 0x49da8c, imac 0x544a30 {
        return m_searchFilters->valueForKey(key)->boolValue();
    }
    gd::string getCommentKey(int ID, int page, int mode, CommentKeyType keytype) = m1 0x492fb4, imac 0x5397d0 {
        return cocos2d::CCString::createWithFormat("comment_%i_%i_%i_%i", ID, page, mode, (int) keytype)->getCString();
    }
    TodoReturn getCompletedDailyLevels();
    TodoReturn getCompletedEventLevels(int, int);
    TodoReturn getCompletedGauntletDemons();
    TodoReturn getCompletedGauntletLevels();
    cocos2d::CCArray* getCompletedLevels(bool) = win 0x145860, imac 0x51ef80, m1 0x47b4a4;
    TodoReturn getCompletedWeeklyLevels();
    int getDailyID(GJTimedLevelType);
    double getDailyTimer(GJTimedLevelType) = imac 0x543a00, m1 0x49ca04;
    char const* getDeleteCommentKey(int, int, int) = m1 0x494660, imac 0x53afa0;
    char const* getDeleteMessageKey(int, bool) = m1 0x492778, imac 0x538ed0;
    TodoReturn getDemonLevelsString();
    char const* getDescKey(int) = m1 0x494610, imac 0x53af60;
    TodoReturn getDifficultyStr(bool, bool, bool, bool, bool, bool, bool, bool);
    char const* getDiffKey(int) = m1 0x49d290, imac 0x544280;
    bool getDiffVal(int);
    gd::string getFolderName(int, bool) = win 0x148910, imac 0x5245e0, m1 0x4803b8;
    char const* getFriendRequestKey(bool, int) = m1 0x4945e4, imac 0x53af40;
    void getFriendRequests(bool, int, int) = m1 0x49689c, imac 0x53d510;
    char const* getGauntletKey(int);
    void getGauntletLevels(int) = m1 0x4883b0, imac 0x52d450;
    void getGauntlets() = m1 0x487fd0, imac 0x52d080;
    TodoReturn getGauntletSearchKey(int) = m1 0x487f04, imac 0x52cfc0;
    void getGauntletsearchKey(int);
    void getGJChallenges() = win 0x164ad0, m1 0x49be48, imac 0x542da0;
    void getGJDailyLevelState(GJTimedLevelType) = win 0x165ec0, imac 0x543260, m1 0x49c2bc;
    void getGJRewards(int) = win 0x1635e0, imac 0x542540, m1 0x49b6b0;
    TodoReturn getGJSecretReward(gd::string) = m1 0x49b214, imac 0x542050;
    void getGJUserInfo(int) = win 0x157880, imac 0x536710, m1 0x4901ac;
    int getHighestLevelOrder() = imac 0x51ece0;
    int getIntForKey(char const* key) = win inline, m1 0x49d874, imac 0x544830 {
        return m_searchFilters->valueForKey(key)->intValue();
    }
    void getLeaderboardScores(char const*) = win 0x1554b0, m1 0x48e540, imac 0x5347a0;
    gd::string getLengthStr(bool, bool, bool, bool, bool, bool) = imac 0x528ae0, m1 0x4841e8;
    const char * getLenKey(int len) = m1 0x49d4f4, imac 0x5444d0;
    bool getLenVal(int);
    void getLevelComments(int ID, int page, int total, int mode, CommentKeyType keytype) = win 0x159870, imac 0x5392d0, m1 0x492b0c;
    const char* getLevelDownloadKey(int levelID, bool isGauntlet) {
        return cocos2d::CCString::createWithFormat("%i_%i", levelID, isGauntlet)->getCString();
    }
    const char* getLevelKey(int levelID) {
        return cocos2d::CCString::createWithFormat("%i", levelID)->getCString();
    }
    void getLevelLeaderboard(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = win 0x155ff0, imac 0x535090, m1 0x48ed8c;
    char const* getLevelLeaderboardKey(int, LevelLeaderboardType, LevelLeaderboardMode) = m1 0x48f940, imac 0x535e90;
    char const* getLevelListKey(int);
    void getLevelLists(GJSearchObject*) = win 0x14e6e0, m1 0x4873b8, imac 0x52c220;
    void getLevelSaveData() = win 0x14cd40, m1 0x485a64, imac 0x52a7d0;
    char const* getLikeAccountItemKey(LikeItemType, int, bool, int);
    char const* getLikeItemKey(LikeItemType, int, bool, int);
    GJGameLevel* getLocalLevel(int);
    GJGameLevel* getLocalLevelByName(gd::string);
    TodoReturn getLocalLevelList(int);
    int getLowestLevelOrder() = imac 0x51ed20;
    GJGameLevel* getMainLevel(int levelID, bool dontGetLevelString) = win 0x1423e0, m1 0x473484, imac 0x515f50;
    const char* getMapPackKey(int pack);
    void getMapPacks(GJSearchObject*) = win 0x14d470, imac 0x52aa70, m1 0x485d20;
    char const* getMessageKey(int) = m1 0x491c5c, imac 0x538350;
    char const* getMessagesKey(bool, int) = m1 0x490dc4, imac 0x5373f0;
    void getNews();
    int getNextFreeTemplateID();
    gd::string getNextLevelName(gd::string);
    void getOnlineLevels(GJSearchObject*) = win 0x14bb70, m1 0x484cec, imac 0x529700;
    char const* getPageInfo(char const*);
    char const* getPostCommentKey(int);
    const char * getRateStarsKey(int key);
    char const* getReportKey(int);
    GJGameLevel* getSavedDailyLevel(int) = win 0x146ba0, m1 0x47d344, imac 0x521300;
    GJGameLevel* getSavedDailyLevelFromLevelID(int) = imac 0x521600, m1 0x47d650;
    GJMapPack* getSavedGauntlet(int);
    GJGameLevel* getSavedGauntletLevel(int) = win 0x146c70, m1 0x47d448, imac 0x521400;
    GJGameLevel* getSavedLevel(GJGameLevel* level) = win inline, m1 0x4780e4, imac 0x51b7f0 {
        if (!level) return nullptr;
        else if (level->m_dailyID.value() > 0) return this->getSavedDailyLevel(level->m_dailyID.value());
        else if (level->m_gauntletLevel) return this->getSavedGauntletLevel(level->m_levelID.value());
        else return this->getSavedLevel(level->m_levelID.value());
    }
    GJGameLevel* getSavedLevel(int) = win 0x146ad0, m1 0x47d54c, imac 0x521500;
    GJLevelList* getSavedLevelList(int);
    cocos2d::CCArray* getSavedLevelLists(int);
    cocos2d::CCArray* getSavedLevels(bool, int) = win 0x145410, m1 0x47af84, imac 0x51e9f0;
    GJMapPack* getSavedMapPack(int);
    cocos2d::CCScene* getSearchScene(char const*) = imac 0x522e00, m1 0x47edb8;
    int getSplitIntFromKey(char const*, int);
    TodoReturn getStarLevelsString();
    cocos2d::CCArray* getStoredLevelComments(char const*) = win 0x15b420, imac 0x53b2f0, m1 0x494a28;
    cocos2d::CCArray* getStoredOnlineLevels(char const*) = win 0x147780, imac 0x5223c0, m1 0x47e2d8;
    cocos2d::CCArray* getStoredUserList(UserListType) = imac 0x53f790;
    GJUserMessage* getStoredUserMessage(int);
    GJUserMessage* getStoredUserMessageReply(int);
    double getTimeLeft(char const*, float) = win 0x147dd0, imac 0x522ab0, m1 0x47ea48;
    void getTopArtists(int page, int total) = m1 0x48fa04, imac 0x535f20;
    const char* getTopArtistsKey(int page) = m1 0x48fdc4, imac 0x536300 {
        return cocos2d::CCString::createWithFormat("topArtists_%i", page)->getCString();
    }
    char const* getUploadMessageKey(int) = m1 0x491c84, imac 0x538370;
    char const* getUserInfoKey(int) = m1 0x490184, imac 0x5366f0;
    void getUserList(UserListType) = win 0x15ffa0, imac 0x5402b0, m1 0x499414;
    void getUserMessages(bool, int, int) = m1 0x490a64, imac 0x537080;
    void getUsers(GJSearchObject*) = win 0x1571c0, m1 0x48fdec, imac 0x536320;
    void gotoLevelPage(GJGameLevel*) = win 0x1473c0, m1 0x47dd44, imac 0x521e70;
    void handleIt(bool, gd::string, gd::string, GJHttpType) = win 0x140e00, m1 0x46479c, imac 0x505160;
    void handleItDelayed(bool, gd::string, gd::string, GJHttpType) = m1 0x4669d0, imac 0x507fb0;
    void handleItND(cocos2d::CCNode*, void*) = m1 0x466ce4, imac 0x5082a0;
    bool hasDailyStateBeenLoaded(GJTimedLevelType) = imac 0x543960, m1 0x49c950;
    bool hasDownloadedLevel(int id);
    bool hasDownloadedList(int id) = imac 0x52e360, m1 0x48911c;
    bool hasLikedAccountItem(LikeItemType, int, bool, int);
    bool hasLikedItem(LikeItemType, int, bool, int) = win 0x1623d0;
    bool hasLikedItemFullCheck(LikeItemType, int, int) = win 0x162340, imac 0x541500, m1 0x49a5c4;
    bool hasRatedDemon(int id) = win 0x152280, m1 0x48b328, imac 0x5309d0;
    bool hasRatedLevelStars(int id);
    bool hasReportedLevel(int id);
    void invalidateMessages(bool, bool) = imac 0x538ef0;
    void invalidateRequests(bool, bool) = imac 0x53e480;
    void invalidateUserList(UserListType, bool) = win 0x160840, m1 0x4996f8, imac 0x540580;
    bool isDLActive(char const* tag) = imac 0x5227e0, m1 0x47e73c;
    bool isFollowingUser(int) = win 0x148840, imac 0x523fe0, m1 0x47fda8;
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
    void likeItem(LikeItemType, int, bool, int) = win 0x161270, m1 0x499d68, imac 0x540b40;
    void limitSavedLevels() = win 0x148090, imac 0x5236b0, m1 0x47f58c;
    void makeTimeStamp(char const*) = win 0x147b90, imac 0x522290, m1 0x47e18c;
    void markItemAsLiked(LikeItemType, int, bool, int);
    void markLevelAsDownloaded(int) = win 0x151510;
    void markLevelAsRatedDemon(int id) = win inline, m1 0x48b1c8, imac 0x530870 {
        if (m_ratedDemons->count() > 999) m_ratedDemons->removeObjectForKey(m_ratedDemons->getFirstKey());
        m_ratedDemons->setObject(m_unkStr4, cocos2d::CCString::createWithFormat("%i", id)->getCString());
    }
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
    void onDeleteServerLevelListCompleted(gd::string response, gd::string tag) = imac 0x514f40;
    void onDeleteUserMessagesCompleted(gd::string response, gd::string tag);
    void onDownloadLevelCompleted(gd::string response, gd::string tag);
    void onDownloadUserMessageCompleted(gd::string response, gd::string tag);
    void onGetAccountCommentsCompleted(gd::string response, gd::string tag);
    void onGetFriendRequestsCompleted(gd::string response, gd::string tag) = win 0x15d510;
    void onGetGauntletsCompleted(gd::string response, gd::string tag);
    void onGetGJChallengesCompleted(gd::string response, gd::string tag) = win 0x164f20, imac 0x510b00, m1 0x46f5b0;
    void onGetGJDailyLevelStateCompleted(gd::string response, gd::string tag) = win 0x1663a0, imac 0x512730, m1 0x470324;
    void onGetGJRewardsCompleted(gd::string response, gd::string tag);
    TodoReturn onGetGJSecretRewardCompleted(gd::string, gd::string);
    void onGetGJUserInfoCompleted(gd::string response, gd::string tag);
    void onGetLeaderboardScoresCompleted(gd::string response, gd::string tag) = win 0x155b80, m1 0x468fa0, imac 0x50a9d0;
    void onGetLevelCommentsCompleted(gd::string response, gd::string tag);
    void onGetLevelLeaderboardCompleted(gd::string response, gd::string tag);
    void onGetLevelListsCompleted(gd::string response, gd::string tag) = win 0x14e970, imac 0x5145d0;
    void onGetLevelSaveDataCompleted(gd::string response, gd::string tag);
    void onGetMapPacksCompleted(gd::string response, gd::string tag) = win 0x14d680;
    void onGetNewsCompleted(gd::string response, gd::string tag);
    void onGetOnlineLevelsCompleted(gd::string response, gd::string tag) = win 0x14c3d0, m1 0x46708c, imac 0x508660;
    void onGetTopArtistsCompleted(gd::string response, gd::string tag);
    void onGetUserListCompleted(gd::string response, gd::string tag);
    void onGetUserMessagesCompleted(gd::string response, gd::string tag);
    void onGetUsersCompleted(gd::string response, gd::string tag);
    void onLikeItemCompleted(gd::string response, gd::string tag);
    void onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = win 0x140d10, m1 0x464438, imac 0x504de0;
    void onRateDemonCompleted(gd::string response, gd::string tag);
    void onRateStarsCompleted(gd::string response, gd::string tag);
    void onReadFriendRequestCompleted(gd::string response, gd::string tag);
    void onRemoveFriendCompleted(gd::string response, gd::string tag);
    void onReportLevelCompleted(gd::string response, gd::string tag);
    void onRequestUserAccessCompleted(gd::string response, gd::string tag);
    void onRestoreItemsCompleted(gd::string response, gd::string tag) = imac 0x50cc20, m1 0x46acc0;
    void onSetLevelFeaturedCompleted(gd::string response, gd::string tag);
    void onSetLevelStarsCompleted(gd::string response, gd::string tag);
    void onSubmitUserInfoCompleted(gd::string response, gd::string tag);
    void onSuggestLevelStarsCompleted(gd::string response, gd::string tag);
    void onUnblockUserCompleted(gd::string response, gd::string tag);
    void onUpdateDescriptionCompleted(gd::string response, gd::string tag);
    void onUpdateLevelCompleted(gd::string response, gd::string tag);
    void onUpdateUserScoreCompleted(gd::string response, gd::string tag) = imac 0x50a6c0;
    void onUploadCommentCompleted(gd::string response, gd::string tag) = win 0x15bde0, imac 0x50b830, m1 0x469db8;
    void onUploadFriendRequestCompleted(gd::string response, gd::string tag);
    void onUploadLevelCompleted(gd::string response, gd::string tag) = win 0x14b1a0, imac 0x5083c0;
    void onUploadLevelListCompleted(gd::string response, gd::string tag) = imac 0x514d50;
    void onUploadUserMessageCompleted(gd::string response, gd::string tag);
    int pageFromCommentKey(char const*);
    void parseRestoreData(gd::string);
    void performNetworkTest() = m1 0x4642b0, imac 0x504c40;
    void ProcessHttpRequest(gd::string endpoint, gd::string params, gd::string tag, GJHttpType httpType) = win 0x140b70, imac 0x504fa0, m1 0x464634;
    void processOnDownloadLevelCompleted(gd::string response, gd::string tag, bool) = win 0x150350, m1 0x489224, imac 0x52e460;
    void purgeUnusedLevels() = win 0x148330, imac 0x523900;
    void rateDemon(int, int, bool) = m1 0x48c020, imac 0x531730;
    void rateStars(int, int) = m1 0x48a7c8, imac 0x52fd00;
    void readFriendRequest(int) = m1 0x498000, imac 0x53edd0;
    TodoReturn removeDelimiterChars(gd::string, bool) = win 0x167f10;
    void removeDLFromActive(char const*) = m1 0x47e944, imac 0x5229d0;
    void removeFriend(int) = m1 0x498490, imac 0x53f2b0;
    void removeLevelDownloadedKeysFromDict(cocos2d::CCDictionary*);
    void removeUserFromList(int, UserListType);
    void reportLevel(int) = m1 0x49cd30, imac 0x543d30;
    void requestUserAccess() = m1 0x49ab48, imac 0x5419f0;
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
    void resetCommentTimersForLevelID(int, CommentKeyType) = win 0x15c770, imac 0x53c490, m1 0x495b6c;
    void resetDailyLevelState(GJTimedLevelType) = imac 0x543920, m1 0x49c920;
    void resetGauntlets();
    void resetStoredUserInfo(int id) = win inline, imac 0x536fc0 {
        m_storedUserInfo->removeObjectForKey(id);
    }
    void resetStoredUserList(UserListType);
    void resetTimerForKey(char const*);
    void restoreItems() = m1 0x49ca38, imac 0x543a30;
    void saveFetchedLevelLists(cocos2d::CCArray* lists) = win inline {
        for (int i = 0; i < lists->count(); i++) {
            this->saveLevelList(static_cast<GJLevelList*>(lists->objectAtIndex(i)));
        }
    }
    void saveFetchedLevels(cocos2d::CCArray*) = win 0x144960, imac 0x51b540, m1 0x477ed0;
    void saveFetchedMapPacks(cocos2d::CCArray*);
    void saveGauntlet(GJMapPack*);
    void saveLevel(GJGameLevel*) = win 0x146d40, imac 0x521650, m1 0x47d688;
    void saveLevelList(GJLevelList*) = win 0x14ee60;
    void saveLocalScore(int, int, int);
    void saveMapPack(GJMapPack*);
    void setActiveSmartTemplate(GJSmartTemplate*);
    void setBoolForKey(bool value, char const* key) = win inline, m1 0x49d96c, imac 0x544920 {
        m_searchFilters->setObject(cocos2d::CCString::createWithFormat("%i", (int)value), key);
    }
    void setDiffVal(int, bool);
    void setFolderName(int, gd::string, bool) = imac 0x524790, m1 0x48055c;
    void setIntForKey(int value, char const* key) = win inline, m1 0x49d758, imac 0x544720 {
        m_searchFilters->setObject(cocos2d::CCString::createWithFormat("%i", value), key);
    }
    void setLenVal(int, bool);
    void setLevelFeatured(int, int, bool);
    void setLevelStars(int, int, bool);
    int specialFromLikeKey(char const*);
    void storeCommentsResult(cocos2d::CCArray*, gd::string, char const*);
    void storeDailyLevelState(int, int, GJTimedLevelType) = imac 0x543800;
    void storeFriendRequest(GJFriendRequest* request) = win inline, m1 0x4909e8, imac 0x536f90 {
        if (request && request->m_accountID > 0) m_friendRequests->setObject(request, request->m_accountID);
    }
    void storeSearchResult(cocos2d::CCArray* levels, gd::string pageInfo, char const* searchKey) = win 0x147570, m1 0x47dec0, imac 0x521fe0;
    void storeUserInfo(GJUserScore*);
    void storeUserMessage(GJUserMessage*);
    void storeUserMessageReply(int, GJUserMessage*);
    void storeUserName(int userID, int accountID, gd::string userName) = win 0x143ca0, m1 0x4754d4, imac 0x5181b0;
    void storeUserNames(gd::string usernameString) = imac 0x5179d0, m1 0x474d1c;
    void submitUserInfo() = m1 0x48ddc8, imac 0x533e90;
    void suggestLevelStars(int, int, int) = m1 0x48b9ec, imac 0x531110;
    gd::string tryGetUsername(int) = win 0x144000, m1 0x475900, imac 0x5185d0;
    CommentType typeFromCommentKey(char const*);
    LikeItemType typeFromLikeKey(char const*);
    void unblockUser(int) = m1 0x498f7c, imac 0x53fdd0;
    void unfollowUser(int) = imac 0x5240e0;
    void updateDescription(int, gd::string) = m1 0x499750, imac 0x5405d0;
    void updateLevel(GJGameLevel*) = imac 0x52f9a0, m1 0x48a478;
    void updateLevelOrders() = win 0x145680, m1 0x47b2b0;
    void updateLevelRewards(GJGameLevel*) = win 0x144380, m1 0x475db4;
    void updateSavedLevelList(GJLevelList*) = win 0x14ef40, m1 0x487790, imac 0x52c630;
    void updateUsernames() = imac 0x523ed0;
    void updateUserScore() = win 0x153790, m1 0x48c508, imac 0x531c80;
    void uploadAccountComment(gd::string);
    void uploadComment(gd::string, CommentType, int, int) = m1 0x494bec, imac 0x53b480;
    void uploadFriendRequest(int, gd::string) = m1 0x496bfc, imac 0x53d870;
    void uploadLevel(GJGameLevel*) = m1 0x482908, imac 0x526fe0;
    void uploadLevelComment(int, gd::string, int);
    void uploadLevelList(GJLevelList*) = m1 0x486180, imac 0x52aed0;
    void uploadUserMessage(int, gd::string, gd::string) = win 0x1588b0, m1 0x491cac, imac 0x538390;
    int userIDForAccountID(int);
    GJUserScore* userInfoForAccountID(int) = imac 0x518ac0;
    gd::string userNameForUserID(int) = win 0x143e80, m1 0x475748, imac 0x518420;
    TodoReturn verifyContainerOnlyHasLevels(cocos2d::CCDictionary*);
    void verifyLevelState(GJGameLevel*);
    gd::string writeSpecialFilters(GJSearchObject*) = win 0x14b8b0, imac 0x529260, m1 0x4848d4;

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
    UploadActionDelegate* m_uploadActionDelegate;
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

    static GameLevelOptionsLayer* create(GJGameLevel*) = win 0x2993c0;

    virtual void setupOptions() = win 0x299520, imac 0x29eeb0, m1 0x2463b8, ios 0x2e2200;
    virtual void didToggle(int) = win 0x2995a0, imac 0x29ef20, m1 0x246424, ios 0x2e226c;

    bool init(GJGameLevel*) = imac 0x29ee50, m1 0x246350;

    GJGameLevel* m_level;
}

[[link(android), depends(UIButtonConfig)]]
class GameManager : GManager {
    virtual ~GameManager() = win 0x177af0;
    // GameManager() = win 0x1721e0, ios 0x32eafc;

    static GameManager* get() {
        return GameManager::sharedState();
    }

    static GameManager* sharedState() = win 0x178480, imac 0x363400, m1 0x2f60ec;
    virtual void update(float) = win 0x186c40, imac 0x3785d0, m1 0x308ae4, ios 0x31d65c;
    virtual bool init() = win 0x1784d0, imac 0x363460, m1 0x2f6158, ios 0x311e44;
    virtual void encodeDataTo(DS_Dictionary*) = win 0x186050, imac 0x3779c0, m1 0x307eec, ios 0x31ce28;
    virtual void dataLoaded(DS_Dictionary*) = win 0x183b40, m1 0x306384, imac 0x375ba0, ios 0x31b6a4;
    virtual void firstLoad() = win 0x185750, imac 0x377060, m1 0x3076a8, ios 0x31c908;

    TodoReturn accountStatusChanged();
    int activeIconForType(IconType) = win 0x17ea70, imac 0x36d480, m1 0x2feb3c;
    TodoReturn addCustomAnimationFrame(int, int, gd::string, gd::string);
    TodoReturn addDuplicateLastFrame(int);
    TodoReturn addGameAnimation(int, int, float, gd::string, gd::string, int);
    TodoReturn addIconDelegate(cocos2d::CCObject*, int);
    void addNewCustomObject(gd::string str) = win 0x1807d0, m1 0x302400, imac 0x370fd0;
    TodoReturn addToGJLog(cocos2d::CCString*);
    void applicationDidEnterBackground();
    TodoReturn applicationWillEnterForeground() = win 0x186cd0;
    TodoReturn calculateBaseKeyForIcons();
    TodoReturn canShowRewardedVideo();
    TodoReturn checkSteamAchievementUnlock();
    TodoReturn checkUsedIcons() = win 0x1811b0, imac 0x36b860;
    TodoReturn claimItemsResponse(gd::string);
    TodoReturn clearGJLog();
    cocos2d::ccColor3B colorForIdx(int) = win 0x17e330, imac 0x36c520, m1 0x2fdae8;
    TodoReturn colorForPos(int);
    TodoReturn colorKey(int, UnlockType);
    bool completedAchievement(gd::string) = win 0x17a1d0, m1 0x2f8464;
    int countForType(IconType) = win 0x17ebe0, m1 0x2febfc, imac 0x36d6f0;
    TodoReturn defaultFrameForAnimation(int);
    TodoReturn defaultYOffsetForBG2(int);
    TodoReturn didExitPlayscene() = imac 0x378540, m1 0x308a38;
    void doQuickSave();
    TodoReturn dpadConfigToString(UIButtonConfig&) = win 0x183540, imac 0x374330, m1 0x304e14;
    TodoReturn eventUnlockFeature(char const*);
    void fadeInMenuMusic() = win 0x178a90, imac 0x363ca0, m1 0x2f6a1c;
    void fadeInMusic(gd::string) = win 0x178b80, m1 0x2f6b18, imac 0x363d80;
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

    const char* getBGTexture(int id) = win inline, imac 0x370460, m1 0x3017dc {
        return cocos2d::CCString::createWithFormat(
            "game_bg_%02d_001.png",
            std::clamp(id, 1, 59)
        )->getCString();
    }

    LevelEditorLayer* getEditorLayer() {
        return m_levelEditorLayer;
    }

    void getFontFile(int) = imac 0x36fa00, m1 0x300d14;
    TodoReturn getFontTexture(int);

    GJBaseGameLayer* getGameLayer() {
        return m_gameLayer;
    }
    bool getGameVariable(char const*) = win 0x1800f0, imac 0x363b40, m1 0x2f6894;
    bool getGameVariableDefault(const char* key, bool defaultValue) {
        //helper function
        auto object = static_cast<cocos2d::CCString*>(m_valueKeeper->objectForKey(std::string("gv_") + key));
        if (object == nullptr)
            return defaultValue;
        return object->boolValue();
    }
    TodoReturn getGTexture(int) = imac 0x370500;
    int getIconRequestID() {
        return m_iconRequestID++;
    }
    int getIntGameVariable(char const*) = win 0x1806f0, imac 0x370ca0, m1 0x3020bc;
    int getIntGameVariableDefault(const char* key, int defaultValue) {
        //helper function
        auto object = static_cast<cocos2d::CCString*>(m_valueKeeper->objectForKey(std::string("gv_") + key));
        if (object == nullptr)
            return defaultValue;
        return object->intValue();
    }
    gd::string getMenuMusicFile() = win 0x178700, m1 0x2f63c0, imac 0x3636f0;
    TodoReturn getMGTexture(int);
    TodoReturn getNextUniqueObjectKey();
    TodoReturn getNextUsedKey(int, bool);
    TodoReturn getOrderedCustomObjectKeys() = imac 0x370e40;
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
    TodoReturn getPracticeMusicFile() = m1 0x2f6540, imac 0x363850;
    bool getUGV(char const*) = win 0x180480, imac 0x370a10, m1 0x301df0;
    TodoReturn getUnlockForAchievement(gd::string, int&, UnlockType&);
    TodoReturn groundHasSecondaryColor(int);
    TodoReturn iconAndTypeForKey(int, int&, int&);
    gd::string iconKey(int, IconType) = win 0x1792b0;
    UnlockType iconTypeToUnlockType(IconType) = win 0x1795c0, m1 0x2f7498, imac 0x364990;
    bool isColorUnlocked(int, UnlockType) = win 0x1798c0, imac 0x364f40, m1 0x2f78a8;
    bool isIconLoaded(int, int) = imac 0x36d8f0;
    bool isIconUnlocked(int, IconType) = win 0x1794e0, imac 0x3648d0, m1 0x2f7388;
    TodoReturn itemPurchased(char const*);
    TodoReturn joinDiscord();
    void joinReddit() = m1 0x2fe974, imac 0x36d2c0;
    int keyForIcon(int iconIdx, int iconEnum) {
        return m_keyStartForIcon.at(iconEnum) + iconIdx - 1;
    }
    TodoReturn levelIsPremium(int, int);
    TodoReturn likeFacebook();
    void loadBackground(int) = win 0x17f880, m1 0x300f5c, imac 0x36fc40;
    void loadBackgroundAsync(int);

    void loadDeathEffect(int id) = win inline, imac 0x36fac0, m1 0x300de4 {
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

    TodoReturn loadDpadFromString(UIButtonConfig&, gd::string) = imac 0x375010, m1 0x305914;
    TodoReturn loadDPadLayout(int, bool);
    TodoReturn loadFont(int) = imac 0x36f960;
    void loadGround(int) = win 0x17fc30, m1 0x301484, imac 0x370120;
    void loadGroundAsync(int);
    cocos2d::CCTexture2D* loadIcon(int, int, int) = win 0x17ecf0, imac 0x36e7f0, m1 0x2ffaf4;
    TodoReturn loadIconAsync(int, int, int, cocos2d::CCObject*);
    void loadMiddleground(int) = win 0x17f9e0, m1 0x301148, imac 0x36fe10;
    void loadMiddlegroundAsync(int);
    void loadVideoSettings() = imac 0x375a90;
    TodoReturn lockColor(int, UnlockType);
    TodoReturn lockIcon(int, IconType);
    TodoReturn logLoadedIconInfo();
    void openEditorGuide();
    void playMenuMusic() = win 0x178810, m1 0x2f66b4, imac 0x3639a0;
    TodoReturn playSFXTrigger(SFXTriggerGameObject*);
    TodoReturn prepareDPadSettings() = imac 0x375340;
    TodoReturn printGJLog();
    void queueReloadMenu() = imac 0x378db0;
    TodoReturn rateGame();
    void recountUserStats(gd::string) = m1 0x3032cc, imac 0x372010, win 0x181ba0;
    void reloadAll(bool switchingModes, bool toFullscreen, bool borderless, bool fix, bool unused) = win 0x187490, imac 0x378ee0, m1 0x309444;
    void reloadAll(bool switchingModes, bool toFullscreen, bool unused) {
        return this->reloadAll(switchingModes, toFullscreen, false, false, unused);
    }
    void reloadAllStep2() = win 0x187540, imac 0x378f90, m1 0x3094e8;
    void reloadAllStep3();
    void reloadAllStep4();
    void reloadAllStep5() = win 0x187850, imac 0x379180, m1 0x3096c0;
    TodoReturn reloadMenu();
    TodoReturn removeCustomObject(int);
    TodoReturn removeIconDelegate(int);
    TodoReturn reorderKey(int, bool);
    void reportAchievementWithID(char const*, int, bool) = win 0x17afd0, imac 0x366830, m1 0x2f9160;
    void reportPercentageForLevel(int levelID, int percentage, bool isPlatformer) = win 0x17a5f0, m1 0x2f87b4, imac 0x365da0;
    TodoReturn resetAchievement(gd::string);
    TodoReturn resetAdTimer();
    TodoReturn resetAllIcons();
    TodoReturn resetCoinUnlocks();
    TodoReturn resetDPadSettings(bool);
    cocos2d::CCSize resolutionForKey(int) = win 0x187890, imac 0x3791c0;
    TodoReturn resumeAudio();
    TodoReturn resumeAudioDelayed();
    void returnToLastScene(GJGameLevel*) = win 0x187030, m1 0x308f8c, imac 0x3789d0;
    TodoReturn rewardedVideoAdFinished(int);
    TodoReturn rewardedVideoHidden();
    TodoReturn rewardedVideoHiddenDelayed();
    // partially inlined on windows
    void safePopScene() = win 0x1873e0, m1 0x309298, imac 0x378d40;
    TodoReturn saveAdTimer();
    TodoReturn saveDPadLayout(int, bool);
    void setGameVariable(char const*, bool) = win 0x17fe90, imac 0x370550, m1 0x3018c0;
    void setHasRatingPower(int);
    void setIntGameVariable(char const*, int) = win 0x1805f0, imac 0x370b70, m1 0x301f7c;
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
    void setUGV(char const*, bool) = win 0x180320, m1 0x301c3c, imac 0x370890;
    void setupGameAnimations() = win 0x1a8870, m1 0x1fa990, imac 0x24d5f0;
    gd::string sheetNameForIcon(int, int) = win 0x17f470, imac 0x36dcb0, m1 0x2ff040;
    TodoReturn shortenAdTimer(float);
    TodoReturn shouldShowInterstitial(int, int, int);
    void showInterstitial();
    void showInterstitialForced();
    void showMainMenuAd();
    void startUpdate();
    gd::string stringForCustomObject(int customObjectID) = win 0x180950, imac 0x371170, m1 0x3025a0;
    TodoReturn subYouTube();
    TodoReturn switchCustomObjects(int, int);
    TodoReturn switchScreenMode(bool, bool, bool, bool);
    void syncPlatformAchievements();
    void toggleGameVariable(char const*) = win 0x180270, imac 0x3707d0, m1 0x301b54;
    TodoReturn tryCacheAd();
    TodoReturn tryShowInterstitial(int, int, int);
    TodoReturn unloadBackground();
    void unloadIcon(int, int, int) = win 0x17f050, m1 0x30016c, imac 0x36ee80;
    void unloadIcons(int);
    TodoReturn unlockColor(int, UnlockType);
    TodoReturn unlockedPremium();
    void unlockIcon(int, IconType);
    IconType unlockTypeToIconType(int) = win 0x1796e0, imac 0x364ba0, m1 0x2f7528;
    void updateCustomFPS() = win 0x187cc0, imac 0x379480;
    TodoReturn updateMusic();
    void verifyAchievementUnlocks() = m1 0x2f93b0;
    TodoReturn verifyCoinUnlocks();
    TodoReturn verifyStarUnlocks();
    TodoReturn verifySyncedCoins();
    TodoReturn videoAdHidden();
    TodoReturn videoAdShowed();

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
    static GameObject* createWithFrame(char const* name) = win 0x18aca0, imac 0x58a280, m1 0x4d7884;
    static GameObject* createWithKey(int) = win 0x188850, imac 0x585720, m1 0x4d73bc;
    static GameObject* objectFromVector(gd::vector<gd::string>&, gd::vector<void*>&, GJBaseGameLayer*, bool) = win 0x19a260, m1 0x4e2090;

    virtual void update(float) = m1 0x4d99a0, imac 0x5926c0, ios 0x255980;
    virtual void setScaleX(float) = win 0x1952d0, m1 0x4de6e4, imac 0x5a42e0, ios 0x25a750;
    virtual void setScaleY(float) = win 0x1953b0, m1 0x4de784, imac 0x5a4380, ios 0x25a7e8;
    virtual void setScale(float) = win 0x1954a0, m1 0x4de824, imac 0x5a4420, ios 0x25a880;
    virtual void setPosition(cocos2d::CCPoint const&) = win 0x194be0, m1 0x4de10c, imac 0x5a3d60, ios 0x25a238;
    virtual void setVisible(bool) = win 0x195cd0, imac 0x5a4b20, m1 0x4dee6c, ios 0x25ade8;
    virtual void setRotation(float) = win 0x194e80, imac 0x5a3fd0, m1 0x4de3ac, ios 0x25a444;
    virtual void setRotationX(float) = win 0x194fd0, m1 0x4de494, imac 0x5a40a0, ios 0x25a51c;
    virtual void setRotationY(float) = win 0x195120, m1 0x4de570, imac 0x5a4160, ios 0x25a5e8;
    virtual void setOpacity(unsigned char) = win 0x195880, imac 0x5a4780, m1 0x4deb48, ios 0x25aafc;
    virtual bool initWithTexture(cocos2d::CCTexture2D*) = win 0x18ad30, m1 0x4d7ac8, imac 0x58a4b0, ios 0x253f40;
    virtual void setChildColor(cocos2d::ccColor3B const&) = win 0x19de40, imac 0x5b0a70, m1 0x4e9884, ios 0x260390;
    virtual void setFlipX(bool) = win 0x195240, m1 0x4de63c, imac 0x5a4240, ios 0x25a6a8;
    virtual void setFlipY(bool) = win 0x195280, m1 0x4de690, imac 0x5a4290, ios 0x25a6fc;
    virtual void firstSetup() = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void customSetup() = win 0x18dea0, imac 0x5926d0, m1 0x4d99a4, ios 0x255984;
    virtual void setupCustomSprites(gd::string) = win 0x1abf80, imac 0x430540, m1 0x3ab2c8, ios 0x2ad6f8;
    virtual void addMainSpriteToParent(bool) = win 0x198dd0, imac 0x5a5e40, m1 0x4e0268, ios 0x25be94;
    virtual void resetObject() = win 0x18d750, imac 0x591b80, m1 0x4d8f98, ios 0x255010;
    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void activateObject() = win 0x18db60, imac 0x5921a0, m1 0x4d945c, ios 0x25544c;
    virtual void deactivateObject(bool) = win 0x18dc10, imac 0x592510, m1 0x4d97e0, ios 0x2557d0;
    virtual void transferObjectRect(cocos2d::CCRect&) = win 0x1946d0, imac 0x5a3660, m1 0x4ddae0, ios 0x259cf0;
    virtual cocos2d::CCRect const& getObjectRect() = win 0x194720, imac 0x5a36d0, m1 0x4ddb58, ios 0x259d68;
    virtual cocos2d::CCRect getObjectRect(float, float) = win 0x194740, imac 0x5a3700, m1 0x4ddb6c, ios 0x259d7c;
    virtual cocos2d::CCRect getObjectRect2(float, float) = win 0x1948d0, imac 0x5a3930, m1 0x4ddd50, ios 0x259f50;
    virtual cocos2d::CCRect getObjectTextureRect() = win 0x194970, imac 0x5a3a00, m1 0x4dde14, ios 0x259fd4;
    virtual cocos2d::CCPoint getRealPosition() = win 0x194ba0, imac 0x5a3ca0, m1 0x4de06c, ios 0x25a1b8;
    virtual void setStartPos(cocos2d::CCPoint) = win 0x18d5d0, m1 0x4d8e7c, imac 0x591a70, ios 0x254ef4;
    virtual void updateStartValues() = win 0x18d9a0, m1 0x4d92ec, imac 0x591fd0, ios 0x25535c;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual gd::string getSaveString(GJBaseGameLayer*) = win 0x19bd50, imac 0x5a9880, m1 0x4e3ca8, ios 0x25e828;
    virtual void claimParticle() = win 0x195df0, imac 0x5a4c80, m1 0x4defb4, ios 0x25af30;
    virtual void unclaimParticle() = win 0x196320, m1 0x4df574, imac 0x5a52c0, ios 0x25b3d0;
    virtual void particleWasActivated() = m1 0x4df5dc, imac 0x5a5330, ios 0x25b424;
    virtual bool isFlipX() = win 0x195220, m1 0x4de62c, imac 0x5a4220, ios 0x25a698;
    virtual bool isFlipY() = win 0x195230, m1 0x4de634, imac 0x5a4230, ios 0x25a6a0;
    virtual void setRScaleX(float) = win 0x195590, m1 0x4de8c4, imac 0x5a44c0, ios 0x25a918;
    virtual void setRScaleY(float) = win 0x1955d0, m1 0x4de8f8, imac 0x5a4500, ios 0x25a94c;
    virtual void setRScale(float) = win 0x195610, imac 0x5a4540, m1 0x4de92c, ios 0x25a980;
    virtual float getRScaleX() = win 0x195650, m1 0x4de9b0, imac 0x5a45c0, ios 0x25a9c4;
    virtual float getRScaleY() = win 0x195690, m1 0x4de9e8, imac 0x5a45f0, ios 0x25a9fc;
    virtual void setRRotation(float) = win 0x194df0, imac 0x5a3f50, m1 0x4de314, ios 0x25a3c0;
    virtual void triggerActivated(float) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void setObjectColor(cocos2d::ccColor3B const&) = win 0x19db00, imac 0x5b0790, m1 0x4e956c, ios 0x260094;
    virtual void setGlowColor(cocos2d::ccColor3B const&) = win 0x19ddf0, imac 0x5b0a20, m1 0x4e982c, ios 0x260338;
    virtual void restoreObject() = win 0x196410, m1 0x4df5fc, imac 0x5a5370, ios 0x25b444;
    virtual void animationTriggered() = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void selectObject(cocos2d::ccColor3B) = win 0x19dec0, imac 0x5b0ae0, m1 0x4e9910, ios 0x26041c;
    virtual void activatedByPlayer(PlayerObject*) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual bool hasBeenActivatedByPlayer(PlayerObject*) = m1 0x8fb4, imac 0x7160, ios 0xe7a8;
    virtual bool hasBeenActivated() = m1 0x8fb4, imac 0x7160, ios 0xe7a8;
    virtual OBB2D* getOrientedBox() = win 0x19e590, imac 0x5b1510, m1 0x4ea374, ios 0x2609e4;
    virtual void updateOrientedBox() = win 0x19e5f0, imac 0x5b1590, m1 0x4ea408, ios 0x260a78;
    virtual float getObjectRotation() = win 0x19e570, imac 0x5b9cb0, m1 0x4efe24, ios 0x264644;
    virtual void updateMainColor(cocos2d::ccColor3B const&) = win 0x19eff0, m1 0x4eae24, imac 0x5b2150, ios 0x2612d0;
    virtual void updateSecondaryColor(cocos2d::ccColor3B const&) = win 0x19f000, m1 0x4eb32c, imac 0x5b2660, ios 0x2614a4;
    virtual void addToGroup(int) = win 0x199810, imac 0x5a6570, m1 0x4e09b8, ios 0x25c4f0;
    virtual void removeFromGroup(int) = win 0x199930, imac 0x5a6620, m1 0x4e0a90, ios 0x25c5a0;
    virtual void saveActiveColors() = win 0x19d950, imac 0x5b05d0, m1 0x4e93b4, ios 0x25ff38;
    virtual float spawnXPosition() = win 0x135fe0, imac 0x1e1b50, m1 0x19999c, ios 0x22ea4c;
    virtual bool canAllowMultiActivate() = m1 0x8fb4, imac 0x7160, ios 0xe7a8;
    virtual void blendModeChanged() = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void updateParticleColor(cocos2d::ccColor3B const&) = win 0x19dce0, imac 0x5b0960, m1 0x4e9764, ios 0x260270;
    virtual void updateParticleOpacity(unsigned char) = win 0x195b20, imac 0x5a4aa0, m1 0x4dede4, ios 0x25ad60;
    virtual void updateMainParticleOpacity(unsigned char) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void updateSecondaryParticleOpacity(unsigned char) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual bool canReverse() = m1 0x8fb4, imac 0x7160, ios 0xe7a8;
    virtual bool isSpecialSpawnObject() = m1 0x8fb4, imac 0x7160, ios 0xe7a8;
    virtual bool canBeOrdered() = m1 0x8fb4, imac 0x7160, ios 0xe7a8;
    virtual cocos2d::CCLabelBMFont* getObjectLabel() = m1 0x8d390, imac 0x7160, ios 0x171fa4;
    virtual void setObjectLabel(cocos2d::CCLabelBMFont*) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual bool shouldDrawEditorHitbox() = m1 0x4ec0bc, imac 0x5b37c0, ios 0x261f40;
    virtual bool getHasSyncedAnimation() = m1 0x8fb4, imac 0x7160, ios 0xe7a8;
    virtual bool getHasRotateAction() = m1 0x8fb4, imac 0x7160, ios 0xe7a8;
    virtual bool canMultiActivate(bool) = m1 0x8fb4, imac 0x7160, ios 0xe7a8;
    virtual void updateTextKerning(int) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual int getTextKerning() = m1 0x8fb4, imac 0x7160, ios 0xe7a8;
    virtual bool getObjectRectDirty() = win 0x136000, m1 0x1999bc, imac 0x1e1b70, ios 0x22ea6c;
    virtual void setObjectRectDirty(bool) = win 0x136010, m1 0x1999c4, imac 0x1e1b80, ios 0x22ea74;
    virtual bool getOrientedRectDirty() = win 0x136020, m1 0x1999cc, imac 0x1e1b90, ios 0x22ea7c;
    virtual void setOrientedRectDirty(bool) = win 0x136030, m1 0x1999d4, imac 0x1e1ba0, ios 0x22ea84;
    virtual GameObjectType getType() = m1 0x1999dc, imac 0x1e1bb0, ios 0x22ea8c;
    virtual void setType(GameObjectType) = m1 0x1999e4, imac 0x1e1bc0, ios 0x22ea94;
    virtual cocos2d::CCPoint getStartPos() = win 0x136060, imac 0x1e1bd0, m1 0x1999ec, ios 0x22ea9c;

    void addColorSprite(gd::string) = win 0x18b830, m1 0x4d83b4, imac 0x58cc00;
    void addColorSpriteToParent(bool) = imac 0x592300;
    void addColorSpriteToSelf() = imac 0x5a6020;
    cocos2d::CCSprite* addCustomBlackChild(gd::string, float, bool);
    cocos2d::CCSprite* addCustomChild(gd::string, cocos2d::CCPoint, int);
    cocos2d::CCSprite* addCustomColorChild(gd::string);
    void addEmptyGlow() = m1 0x4d825c;
    void addGlow(gd::string) = win 0x18af60;
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
    void assignUniqueID() = imac 0x58a5a0;
    bool belongsToGroup(int);
    void calculateOrientedBox();
    bool canChangeCustomColor();
    bool canChangeMainColor();
    bool canChangeSecondaryColor();
    bool canRotateFree();
    cocos2d::ccColor3B colorForMode(int, bool);
    void commonInteractiveSetup();
    void commonSetup() = win 0x18ad70;
    void copyGroups(GameObject*) = win 0x1999c0, m1 0x4e0b44;
    cocos2d::CCParticleSystemQuad* createAndAddParticle(int p0, char const* plistName, int p2, cocos2d::tCCPositionType positionType) = win 0x195ba0, imac 0x59d770, m1 0x4dc810;
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
    void createSpriteColor(int) = imac 0x58a4e0, m1 0x4d7afc;
    void deselectObject();
    inline void destroyObject() { // what ? not inline, imac 0x5a5340
        m_isDisabled = true;
        m_isDisabled2 = true;
        setOpacity(0);
    }
    void determineSlopeDirection() = win 0x199340, m1 0x4e0550, imac 0x5a6120;
    bool didScaleXChange();
    bool didScaleYChange();
    void dirtifyObjectPos();
    void dirtifyObjectRect();
    void disableObject() = imac 0x5a5400;
    bool dontCountTowardsLimit();
    void duplicateAttributes(GameObject*);
    void duplicateColorMode(GameObject*);
    void duplicateValues(GameObject*) = win 0x19ee40;
    cocos2d::ccColor3B editorColorForCustomMode(int);
    cocos2d::ccColor3B editorColorForMode(int) = win 0x19e0a0;
    void fastRotateObject(float);
    cocos2d::ccColor3B getActiveColorForMode(int, bool) = imac 0x5b28b0;
    char* getBallFrame(int) = m1 0x4e937c, imac 0x5b05a0;
    cocos2d::CCRect getBoundingRect();
    cocos2d::CCPoint getBoxOffset();
    gd::string getColorFrame(gd::string);
    int getColorIndex();
    gd::string getColorKey(bool, bool) = imac 0x412600;
    ZLayer getCustomZLayer();
    gd::string getGlowFrame(gd::string);
    bool getGroupDisabled();
    int getGroupID(int) = m1 0x4e0b24;
    gd::string getGroupString();
    cocos2d::CCPoint const& getLastPosition() = imac 0x5b2a90;
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
    float groupOpacityMod() = win 0x199d30, imac 0x5a7040, m1 0x4e157c;
    void groupWasDisabled() = imac 0x5a6a20;
    void groupWasEnabled();
    bool hasSecondaryColor();
    bool ignoreEditorDuration();
    bool ignoreEnter();
    bool ignoreFade();
    bool init(char const*) = m1 0x4d7914;
    bool isBasicEnterEffect(int);
    bool isBasicTrigger();
    bool isColorObject();
    bool isColorTrigger() = imac 0x5b3020;
    bool isConfigurablePortal();
    bool isEditorSpawnableTrigger();
    bool isFacingDown() = win 0x19e990, m1 0x4ea740;
    bool isFacingLeft() = win 0x19ea50, m1 0x4ea7d0;
    bool isSettingsObject() = imac 0x5b3690, m1 0x4ebf78;
    bool isSpawnableTrigger();
    bool isSpecialObject();
    bool isSpeedObject() = imac 0x5b30f0;
    bool isStoppableTrigger();
    bool isTrigger();
    void loadGroupsFromString(gd::string);
    TodoReturn makeInvisible() = imac 0x5a53a0;
    TodoReturn makeVisible();
    float opacityModForMode(int, bool);
    cocos2d::CCSpriteBatchNode* parentForZLayer(int, bool, int);
    gd::string perspectiveColorFrame(char const*, int);
    gd::string perspectiveFrame(char const*, int);
    void playDestroyObjectAnim(GJBaseGameLayer*) = win 0x1a7520, m1 0x1f9910, imac 0x24c560;
    void playPickupAnimation(cocos2d::CCSprite*, float, float, float, float, float, float, float, float, bool, float, float) = win 0x1a7040;
    void playPickupAnimation(cocos2d::CCSprite*, float, float, float, float) = win 0x1a6f50;
    void playShineEffect() = win 0x196430, imac 0x5a5440, m1 0x4df690;
    void quickUpdatePosition();
    void quickUpdatePosition2();
    void removeColorSprite();
    void removeGlow() = imac 0x58cb90;
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
    void setLastPosition(cocos2d::CCPoint const&) = imac 0x5b2aa0;
    void setMainColorMode(int);
    void setSecondaryColorMode(int);
    void setupColorSprite(int, bool);
    void setupPixelScale();
    void setupSpriteSize();
    bool shouldBlendColor(GJSpriteColor*, bool);
    bool shouldLockX();
    bool shouldNotHideAnimFreeze();
    bool shouldShowPickupEffects() = imac 0x24c330;
    bool slopeFloorTop();
    bool slopeWallLeft();
    double slopeYPos(cocos2d::CCRect) = win 0x19e430;
    double slopeYPos(float) = win 0x19e430;
    double slopeYPos(GameObject*);
    void spawnDefaultPickupParticle(GJBaseGameLayer*) = imac 0x24c390;
    void updateBlendMode();
    void updateCustomColorType(short);
    void updateCustomScaleX(float) = win 0x1956d0;
    void updateCustomScaleY(float) = win 0x195760;
    void updateHSVState();
    void updateIsOriented() = win 0x19e7b0, imac 0x5b1730, m1 0x4ea58c;
    void updateMainColor();
    void updateMainColorOnly();
    void updateMainOpacity();
    void updateObjectEditorColor() = win 0x19e370;
    void updateSecondaryColor();
    void updateSecondaryColorOnly();
    void updateSecondaryOpacity();
    void updateStartPos() = imac 0x591af0;
    void updateUnmodifiedPositions();
    void usesFreezeAnimation();
    void usesSpecialAnimation();

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

    static GameObjectCopy* create(GameObject*) = imac 0xe3820;

    bool init(GameObject*);
    void resetObject() = win 0x2db140, imac 0xe3940;

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

    static GameOptionsLayer* create(GJBaseGameLayer* baseGameLayer) = win inline, imac 0x29d740, m1 0x244f94 {
        auto ret = new GameOptionsLayer();
        if (ret->init(baseGameLayer)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual void setupOptions() = win 0x2978e0, m1 0x24519c, imac 0x29da00, ios 0x2e1350;
    virtual void didToggle(int) = win 0x298ed0, imac 0x29e7e0, m1 0x245e98, ios 0x2e1e6c;

    bool init(GJBaseGameLayer* baseGameLayer) = win inline, imac 0x29d9b0 {
        m_baseGameLayer = baseGameLayer;
        m_gap = 40.f;
        m_maxLabelScale = .4f;
        if (!GJOptionsLayer::init(2)) return false;
        this->preSetup();
        this->postSetup();
        return true;
    }
    void onPracticeMusicSync(cocos2d::CCObject* sender) = win 0x298be0, m1 0x2458f4, imac 0x29e1b0;
    void onUIOptions(cocos2d::CCObject* sender) = win 0x298d60;
    void onUIPOptions(cocos2d::CCObject* sender) = win 0x298d80, m1 0x245888;
    void showPracticeMusicSyncUnlockInfo() = win 0x298380, m1 0x245968, imac 0x29e230;

    GJBaseGameLayer* m_baseGameLayer;
    int m_practiceDialogIndex;
}

[[link(android)]]
class GameOptionsTrigger : EffectGameObject {
    // virtual ~GameOptionsTrigger();

    static GameOptionsTrigger* create(char const*);

    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x19fa20, m1 0x162644, ios 0x3792b0;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x19db40, m1 0x160e08, ios 0x378c58;

    bool init(char const*);

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

    static GameStatsManager* sharedState() = win 0x1cdf20, imac 0x5a460, m1 0x50108;

    virtual bool init() = win 0x1ce140, imac 0x5a940, m1 0x50450, ios 0x3259a0;

    int accountIDForIcon(int, UnlockType) = imac 0x3171d0;
    TodoReturn addSimpleSpecialChestReward(gd::string, UnlockType, int, bool);
    void addSpecialRewardDescription(gd::string, gd::string);
    void addStoreItem(int, int, int, int, ShopType) = win 0x1d1000, imac 0x660d0, m1 0x5a758;
    bool areChallengesLoaded() = imac 0x729b0;
    TodoReturn areRewardsLoaded();
    void awardCurrencyForLevel(GJGameLevel*) = win 0x1dd990, imac 0x70c90, m1 0x64700;
    void awardDiamondsForLevel(GJGameLevel*);
    TodoReturn awardSecretKey();
    TodoReturn canItemBeUnlocked(int, UnlockType);
    TodoReturn checkAchievement(char const*) = win 0x1d2470;
    void checkCoinAchievement(GJGameLevel*) = win 0x1da830, imac 0x6c8d0, m1 0x60414;
    void checkCoinsForLevel(GJGameLevel*) = imac 0x6f9a0, m1 0x633a0;
    TodoReturn claimListReward(GJLevelList*);
    TodoReturn collectReward(GJRewardType, GJRewardItem*);
    TodoReturn collectVideoReward(int);
    void completedChallenge(GJChallengeItem*) = m1 0x67008;
    GJRewardItem* completedDailyLevel(GJGameLevel*) = win 0x1dfe10, imac 0x73c90, m1 0x67884;
    void completedDemonLevel(GJGameLevel*) = m1 0x613f8;
    TodoReturn completedLevel(GJGameLevel*) = imac 0x6d6b0;
    void completedMapPack(GJMapPack*) = win 0x1dbe30;
    void completedStarLevel(GJGameLevel*) = m1 0x61598;
    int countSecretChests(GJRewardType);
    int countUnlockedSecretChests(GJRewardType);
    TodoReturn createReward(GJRewardType, int, gd::string);
    void createSecretChestItems() = imac 0x5d080, m1 0x5243c;
    TodoReturn createSecretChestRewards();
    void createSpecialChestItems() = m1 0x52580, imac 0x5d1d0;
    void createStoreItems() = win 0x1ce830, m1 0x504f8;
    void dataLoaded(DS_Dictionary*) = win 0x1ef0b0, m1 0x808bc;
    void encodeDataTo(DS_Dictionary*) = m1 0x803f4;
    void firstSetup();
    void generateItemUnlockableData() = imac 0x651f0, m1 0x59b18;
    int getAwardedCurrencyForLevel(GJGameLevel*) = win 0x1dd750, imac 0x70ab0, m1 0x6450c;
    TodoReturn getAwardedDiamondsForLevel(GJGameLevel*) = imac 0x712a0;
    int getBaseCurrency(int stars, bool featured, int levelID);
    int getBaseCurrencyForLevel(GJGameLevel*) = win 0x1dd4b0, imac 0x708c0, m1 0x642c4;
    void getBaseDiamonds(int) = imac 0x71240, m1 0x64c64;
    int getBonusDiamonds(int) = imac 0x71260, m1 0x64c78;
    GJChallengeItem* getChallenge(int) = win 0x1dee70, m1 0x66a90, imac 0x73000;
    TodoReturn getChallengeKey(GJChallengeItem*) = m1 0x66e24, imac 0x73370;
    int getCollectedCoinsForLevel(GJGameLevel*) = win 0x1dabd0;
    cocos2d::CCArray* getCompletedMapPacks() = win 0x1dc180, imac 0x6e6c0, m1 0x6230c;
    gd::string getCurrencyKey(GJGameLevel* level) = win inline, m1 0x64184, imac 0x70790 {
        auto dailyID = level->m_dailyID.value();
        return cocos2d::CCString::createWithFormat("%i", dailyID > 0 ? dailyID : level->m_levelID.value())->getCString();
    }
    TodoReturn getDailyLevelKey(int);
    TodoReturn getDemonLevelKey(GJGameLevel*) = m1 0x60c5c, imac 0x6d140;
    TodoReturn getEventRewardKey(int);
    gd::string getGauntletRewardKey(int) = win 0x1e6e40, imac 0x77710, m1 0x6b024;
    gd::string getItemKey(int, int) = win 0x1de9b0;
    int getItemUnlockState(int itemID, UnlockType unlockType) = win 0x1e2b30, m1 0x6a898, imac 0x77010;
    int getItemUnlockStateLite(int, UnlockType);
    gd::string getLevelKey(GJGameLevel* level) = win inline {
        return getLevelKey(level->m_levelID, level->m_levelType != GJLevelType::Local, level->m_dailyID > 0, level->m_gauntletLevel, level->m_dailyID > 200000);
    }
    gd::string getLevelKey(int levelID, bool isOnline, bool isDaily, bool isGauntlet, bool isEvent) = win 0x1dad50;
    TodoReturn getListRewardKey(GJLevelList*) = m1 0x671f8, imac 0x73610;
    char const* getMapPackKey(int);
    TodoReturn getNextGoldChestID();
    TodoReturn getNextVideoAdReward();
    TodoReturn getPathRewardKey(int);
    GJChallengeItem* getQueuedChallenge(int) = win 0x1def40, m1 0x66b94, imac 0x73100;
    TodoReturn getRewardForSecretChest(int);
    TodoReturn getRewardForSpecialChest(gd::string);
    TodoReturn getRewardItem(GJRewardType);
    TodoReturn getRewardKey(GJRewardType, int);
    GJChallengeItem* getSecondaryQueuedChallenge(int) = m1 0x66c98, imac 0x73200;
    TodoReturn getSecretChestForItem(int, UnlockType);
    TodoReturn getSecretCoinKey(char const*) = m1 0x63ad4, imac 0x700d0;
    TodoReturn getSecretOnlineRewardKey(int) = m1 0x6beb0;
    TodoReturn getSpecialChestKeyForItem(int, UnlockType);
    TodoReturn getSpecialRewardDescription(gd::string, bool);
    gd::string getSpecialUnlockDescription(int, UnlockType, bool) = win 0x1e6fb0, m1 0x6b4a4, imac 0x77bb0;
    TodoReturn getStarLevelKey(GJGameLevel*) = m1 0x60ce4, imac 0x6d1a0;
    int getStat(char const*) = win 0x1d21e0, imac 0x66610, m1 0x5aca0;
    TodoReturn getStatFromKey(StatKey);
    TodoReturn getStoreItem(int, int);
    TodoReturn getStoreItem(int);
    int getTotalCollectedCurrency() = win 0x1e08b0, imac 0x743f0, m1 0x67fc4;
    int getTotalCollectedDiamonds() = win 0x1e1180, imac 0x751c0, m1 0x68c58;
    bool hasClaimedListReward(GJLevelList*) = win 0x1dfc30, imac 0x736d0, m1 0x672c8;
    bool hasCompletedChallenge(GJChallengeItem*) = m1 0x66ef8;
    bool hasCompletedDailyLevel(int) = win 0x1dfd10, imac 0x73b50, m1 0x67750;
    bool hasCompletedDemonLevel(GJGameLevel*);
    bool hasCompletedGauntletLevel(int) = win 0x1db1a0, m1 0x60f64, imac 0x6d3b0;
    bool hasCompletedLevel(GJGameLevel* level) = win inline, imac 0x6d280, m1 0x60e04 {
        return m_completedLevels->objectForKey(this->getLevelKey(level)) != nullptr;
    }
    bool hasCompletedMainLevel(int levelID) = win inline, m1 0x60d6c, imac 0x6d200 {
        return m_completedLevels->objectForKey(this->getLevelKey(levelID, false, false, false, false)) != nullptr;
    }
    bool hasCompletedMapPack(int);
    bool hasCompletedOnlineLevel(int) = win 0x1db070, m1 0x60ecc, imac 0x6d330;
    bool hasCompletedStarLevel(GJGameLevel*) = imac 0x6d570;
    bool hasPendingUserCoin(char const*) = win 0x1dce90, m1 0x636cc, imac 0x6fcf0;
    bool hasRewardBeenCollected(GJRewardType, int);
    bool hasSecretCoin(char const*) = win 0x1dcf50, imac 0x6cdc0, m1 0x60930;
    bool hasUserCoin(char const*) = win 0x1dcd10, m1 0x637c4, imac 0x6fde0;
    TodoReturn incrementActivePath(int);
    TodoReturn incrementChallenge(GJChallengeType, int) = win 0x1df0f0, m1 0x5eb10, imac 0x6b0c0;
    void incrementStat(char const*, int) = win 0x1d1500, imac 0x66960, m1 0x5afdc;
    TodoReturn incrementStat(char const*);
    bool isGauntletChestUnlocked(int);
    bool isItemEnabled(UnlockType type, int id) = win inline, imac 0x773c0, m1 0x6ac58 {
        return this->isItemUnlocked(type, id) && m_enabledItems->valueForKey(this->getItemKey(id, (int)type))->boolValue();
    }
    bool isItemUnlocked(UnlockType, int) = win 0x1e2850, m1 0x5ee84, imac 0x6b3b0;
    bool isPathChestUnlocked(int);
    bool isPathUnlocked(StatKey);
    bool isSecretChestUnlocked(int);
    bool isSecretCoin(gd::string) = m1 0x63c18, imac 0x70200;
    bool isSecretCoinValid(gd::string);
    bool isSpecialChestLiteUnlockable(gd::string);
    bool isSpecialChestUnlocked(gd::string) = win 0x1e7160, imac 0x76f10, m1 0x6a794;
    bool isStoreItemUnlocked(int);
    TodoReturn keyCostForSecretChest(int) = imac 0x76a40;
    TodoReturn linkSpecialChestUnlocks(GJRewardItem*, gd::string);
    TodoReturn logCoins();
    TodoReturn markLevelAsCompletedAndClaimed(GJGameLevel*);
    void postLoadGameStats();
    TodoReturn preProcessReward(GJRewardItem*);
    void preSaveGameStats() = win 0x1f0630;
    TodoReturn processChallengeQueue(int) = win 0x1df950, m1 0x67160, imac 0x73590;
    TodoReturn processOnlineChests();
    TodoReturn purchaseItem(int);
    TodoReturn recountSpecialStats() = m1 0x69188;
    TodoReturn recountUserCoins(bool);
    TodoReturn registerRewardsFromItem(GJRewardItem*);
    void removeChallenge(int songID) = m1 0x6650c, imac 0x72ae0;
    void removeErrorFromSpecialChests() = win 0x1f0310;
    TodoReturn removeQueuedChallenge(int) = m1 0x66740, imac 0x72cf0;
    TodoReturn removeQueuedSecondaryChallenge(int) = m1 0x66978, imac 0x72f00;
    void resetChallengeTimer();
    TodoReturn resetPreSync();
    TodoReturn resetSpecialChest(gd::string);
    TodoReturn resetSpecialStatAchievements() = imac 0x76aa0, m1 0x6a2f8;
    TodoReturn resetUserCoins();
    TodoReturn restorePostSync();
    void setAwardedBonusKeys(int);
    void setStarsForMapPack(int, int) = win 0x1dc090;
    void setStat(char const*, int) = win 0x1d2300, imac 0x66770, m1 0x5ae04;
    void setStatIfHigher(char const*, int);
    void setupIconCredits() = win 0x1c1190, m1 0x2acd6c, imac 0x3172c0;
    TodoReturn shopTypeForItemID(int);
    TodoReturn shouldAwardSecretKey();
    TodoReturn starsForMapPack(int);
    TodoReturn storeChallenge(int, GJChallengeItem*) = m1 0x663ec, imac 0x729d0;
    TodoReturn storeChallengeTime(int) = imac 0x72930;
    TodoReturn storeEventChest(int, GJRewardItem*);
    TodoReturn storeOnlineChest(gd::string, GJRewardItem*);
    TodoReturn storePendingUserCoin(char const*);
    TodoReturn storeQueuedChallenge(int, GJChallengeItem*) = m1 0x66620, imac 0x72be0;
    TodoReturn storeRewardState(GJRewardType, int, int, gd::string);
    TodoReturn storeSecondaryQueuedChallenge(int, GJChallengeItem*);
    TodoReturn storeSecretCoin(char const*);
    void storeUserCoin(char const*);
    TodoReturn tempClear();
    void toggleEnableItem(UnlockType, int, bool) = win 0x1e2c00, imac 0x77450, m1 0x6ad1c;
    void tryFixPathBug() = win 0x1d1810;
    TodoReturn trySelectActivePath() = imac 0x6b5e0;
    void uncompleteLevel(GJGameLevel*) = win 0x1dbbc0;
    void unlockGauntletChest(int);
    TodoReturn unlockGoldChest(int);
    TodoReturn unlockOnlineChest(gd::string);
    TodoReturn unlockPathChest(int);
    TodoReturn unlockSecretChest(int) = imac 0x8ba60;
    TodoReturn unlockSpecialChest(gd::string);
    TodoReturn updateActivePath(StatKey);
    gd::string usernameForAccountID(int);
    void verifyPathAchievements() = win 0x1d1f80;
    void verifyUserCoins() = win 0x1dcc30;

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
    static void addBackButton(cocos2d::CCLayer*, cocos2d::CCMenuItem*) = win 0x65010, imac 0x4dc890, m1 0x43f944;
    static void addRThumbScrollButton(cocos2d::CCLayer*) = win 0x650f0, m1 0x43fa2c, imac 0x4dc960;
    static void alignItemsHorisontally(cocos2d::CCArray*, float, cocos2d::CCPoint, bool) = win 0x64110, m1 0x43e460, imac 0x4db280;
    static void alignItemsVertically(cocos2d::CCArray*, float, cocos2d::CCPoint);
    static TodoReturn bounceTime(float);
    static TodoReturn colorToSepia(cocos2d::ccColor3B, float);
    static TodoReturn contentScaleClipRect(cocos2d::CCRect&);
    static TodoReturn createHashString(gd::string const&, int);
    static CCMenuItemToggler* createToggleButton(gd::string label, cocos2d::SEL_MenuHandler selector, bool state, cocos2d::CCMenu* menu, cocos2d::CCPoint position, cocos2d::CCNode* parent, cocos2d::CCNode* labelParent, cocos2d::CCArray* container) = imac 0x4dbd60;
    static CCMenuItemToggler* createToggleButton(gd::string label, cocos2d::SEL_MenuHandler selector, bool state, cocos2d::CCMenu* menu, cocos2d::CCPoint position, cocos2d::CCNode* parent, cocos2d::CCNode* labelParent, float buttonScale, float maxLabelScale, float maxLabelWidth, cocos2d::CCPoint labelOffset, char const* font, bool labelTop, int labelTag, cocos2d::CCArray* container) = win 0x64670, imac 0x4dbe90, m1 0x43ef50;
    static bool doWeHaveInternet() = m1 0x43e8a8, imac 0x4db770;
    static TodoReturn easeToText(int) = m1 0x445748, imac 0x4e34f0;
    static TodoReturn fast_rand();
    static float fast_rand_0_1() = imac 0x4dea80, m1 0x441870;
    static TodoReturn fast_rand_minus1_1();
    static void fast_srand(uint64_t) = m1 0x441830, imac 0x4dea30;
    static TodoReturn gen_random(int) = m1 0x464058, imac 0x504920;
    static TodoReturn getDropActionWDelay(float, float, float, cocos2d::CCNode*, cocos2d::SEL_CallFunc);
    static TodoReturn getDropActionWEnd(float, float, float, cocos2d::CCAction*, float);
    static cocos2d::CCActionEase* getEasedAction(cocos2d::CCActionInterval*, int, float) = imac 0x4de7b0, m1 0x4415e8;
    static TodoReturn getEasedValue(float, int, float) = win 0x68b40;
    static uint64_t getfast_srand();
    static TodoReturn getInvertedEasing(int);
    static TodoReturn getLargestMergedIntDicts(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
    static TodoReturn getMultipliedHSV(cocos2d::ccHSVValue const&, float);
    static TodoReturn getRelativeOffset(GameObject*, cocos2d::CCPoint) = win 0x64970;
    static gd::string getResponse(cocos2d::extension::CCHttpResponse*) = win 0x64310, imac 0x4dba00, m1 0x43eb40;
    static gd::string getTimeString(int, bool) = win 0x65e20, imac 0x4de620, m1 0x44145c;
    static TodoReturn hsvFromString(gd::string const&, char const*) = imac 0x4dd030;
    static gd::string intToShortString(int) = win 0x69120, imac 0x4e4250, m1 0x4465bc;
    static TodoReturn intToString(int) = win 0x69060, imac 0x4e3f30, m1 0x446284;
    static bool isIOS();
    static bool isRateEasing(int);
    static TodoReturn mergeDictsSaveLargestInt(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
    static TodoReturn mergeDictsSkipConflict(cocos2d::CCDictionary*, cocos2d::CCDictionary*) = imac 0x4dc610;
    static TodoReturn msToTimeString(int, int) = m1 0x446c04, imac 0x4e48b0;
    static TodoReturn multipliedColorValue(cocos2d::ccColor3B, cocos2d::ccColor3B, float);
    static TodoReturn openAppPage();
    static TodoReturn openRateURL(gd::string, gd::string) = m1 0x43ea18, imac 0x4db8e0;
    static cocos2d::CCParticleSystemQuad* particleFromString(gd::string const& str, cocos2d::CCParticleSystemQuad* system, bool p2) = win inline, imac 0x4e2ed0, m1 0x4451a0 {
        cocos2d::ParticleStruct ret;
        GameToolbox::particleStringToStruct(str, ret);
        return GameToolbox::particleFromStruct(ret, system, p2);
    }
    static cocos2d::CCParticleSystemQuad* particleFromStruct(cocos2d::ParticleStruct const&, cocos2d::CCParticleSystemQuad*, bool) = win 0x68000, imac 0x4e2fe0, m1 0x44528c;
    static void particleStringToStruct(gd::string const&, cocos2d::ParticleStruct&) = win 0x67540, imac 0x4e1f80, m1 0x444354;
    static gd::string pointsToString(int) = win 0x69760, m1 0x446d4c, imac 0x4e49f0;
    static void postClipVisit();
    static void preVisitWithClippingRect(cocos2d::CCNode*, cocos2d::CCRect) = win 0x645c0, imac 0x4dbc50, m1 0x43ed28;
    static TodoReturn preVisitWithClipRect(cocos2d::CCRect);
    static gd::string saveParticleToString(cocos2d::CCParticleSystemQuad*) = win 0x662d0, imac 0x4deb00, m1 0x4418f4;
    static TodoReturn saveStringToFile(gd::string const&, gd::string const&);
    static TodoReturn stringFromHSV(cocos2d::ccHSVValue, char const*);
    static cocos2d::CCDictionary* stringSetupToDict(gd::string const&, char const*) = win 0x65c30, m1 0x440d54;
    static gd::map<gd::string,gd::string> stringSetupToMap(gd::string const&, char const*, gd::map<gd::string, gd::string>&) = win 0x65890;
    static TodoReturn strongColor(cocos2d::ccColor3B);
    static TodoReturn timestampToHumanReadable(long) = m1 0x4469a4, imac 0x4e4690;
    static cocos2d::ccColor3B transformColor(cocos2d::ccColor3B const&, cocos2d::ccHSVValue) = win 0x65290;
    static TodoReturn transformColor(cocos2d::ccColor3B const&, float, float, float);
}

[[link(android)]]
class GauntletLayer : cocos2d::CCLayer, LevelManagerDelegate {
    // virtual ~GauntletLayer();
    GauntletLayer() {}

    static GauntletLayer* create(GauntletType gauntletType) = win inline, imac 0x37f700, m1 0x30fc28 {
        auto ret = new GauntletLayer();
        if (ret->init(gauntletType)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCScene* scene(GauntletType) = win 0x1f2920, m1 0x30fb40, imac 0x37f5f0;

    virtual void keyBackClicked() = win 0x1f4f50, imac 0x381960, m1 0x311db0, ios 0x233c90;
    virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) = win 0x1f3440, imac 0x380f10, m1 0x311274, ios 0x2335f0;
    virtual void loadLevelsFailed(char const*, int) = win 0x1f3650, m1 0x31141c, imac 0x3810b0, ios 0x2336c4;

    bool init(GauntletType) = win 0x1f2c50, m1 0x30fcf0, imac 0x37f7e0;
    void onBack(cocos2d::CCObject* sender) = win 0x1f4f00, m1 0x31034c, imac 0x37fe50;
    void onLevel(cocos2d::CCObject* sender) = win 0x1f4880, imac 0x381320, m1 0x3116ec;
    void setupGauntlet(cocos2d::CCArray*) = win 0x1f3850, imac 0x37fea0, m1 0x310394;
    void unlockActiveItem() = win 0x1f48f0, imac 0x381360, m1 0x311730;

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

    static GauntletNode* create(GJMapPack* gauntlet) = win inline, m1 0x4b2728, imac 0x55c250 {
        auto ret = new GauntletNode();
        if (ret->init(gauntlet)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    static gd::string frameForType(GauntletType) = win 0x1f9030, m1 0x4b4e50, imac 0x55e760;
    static gd::string nameForType(GauntletType) = win 0x1fa250, m1 0x4b46dc, imac 0x55e210;
    bool init(GJMapPack*) = win 0x1f7970, imac 0x55cb50, m1 0x4b2fdc;
    void onClaimReward() = win 0x1f8ff0, imac 0x55ca80, m1 0x4b2f30;

    cocos2d::CCNode* m_gauntletInfoNode;
    cocos2d::CCNode* m_rewardNode;
}

[[link(android)]]
class GauntletSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate, LevelManagerDelegate {
    // virtual ~GauntletSelectLayer();
    GauntletSelectLayer() {}

    static GauntletSelectLayer* create(int p0) = win inline, imac 0x55abc0, m1 0x4b1248 {
        auto ret = new GauntletSelectLayer();
        if (ret->init(p0)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCScene* scene(int) = win 0x1f5570, imac 0x55aaa0, m1 0x4b1168;

    virtual void onExit() = win 0x1f7920, m1 0x4b2f70, imac 0x55cac0, ios 0x1c1d9c;
    virtual void keyBackClicked() = win 0x1f7180, m1 0x4b2e44, imac 0x55c990, ios 0x1c1d50;
    virtual void scrollLayerWillScrollToPage(BoomScrollLayer*, int) = win 0x1f7090, m1 0x4b2da4, imac 0x55c8f0, ios 0x1c1cb0;
    virtual void scrollLayerScrolledToPage(BoomScrollLayer*, int) = win 0x1f7090, m1 0x4b2d04, imac 0x55c850, ios 0x1c1c10;
    virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) = win 0x1f6470, imac 0x55bf10, m1 0x4b2414, ios 0x1c1520;
    virtual void loadLevelsFailed(char const*, int) = win 0x1f6620, m1 0x4b25bc, imac 0x55c0d0, ios 0x1c1624;

    void goToPage(int, bool) = win 0x1f6f20, m1 0x4b2c08, imac 0x55c750;
    bool init(int) = win 0x1f56a0, m1 0x4b1310, imac 0x55acb0;
    void onBack(cocos2d::CCObject* sender) = win 0x1f70d0, imac 0x55b7c0, m1 0x4b1d5c;
    void onInfo(cocos2d::CCObject* sender) = win 0x1f6210, m1 0x4b1dd0, imac 0x55b830;
    void onNext(cocos2d::CCObject* sender) = win 0x1f6ee0, imac 0x55b7a0, m1 0x4b1d48;
    void onPlay(cocos2d::CCObject* sender) = win 0x1f7190, imac 0x55c2d0, m1 0x4b27b8;
    void onPrev(cocos2d::CCObject* sender) = win 0x1f6f00, imac 0x55b780, m1 0x4b1d34;
    void onRefresh(cocos2d::CCObject* sender) = win 0x1f6350, imac 0x55b8e0, m1 0x4b1e88;
    void setupGauntlets() = win 0x1f6790, m1 0x4b1f30, imac 0x55b9a0;
    void unblockPlay() = win 0x1f7080, m1 0x4b2cfc, imac 0x55c840;
    void updateArrows() = win inline, m1 0x4b23c4, imac 0x55bec0 {
        m_leftButton->setVisible(m_scrollLayer != nullptr);
        m_rightButton->setVisible(m_scrollLayer != nullptr);
    }

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

    static GauntletSprite* create(GauntletType gauntletType, bool locked) = win inline, imac 0x381250, m1 0x3115c8 {
        auto ret = new GauntletSprite();
        if (ret->init(gauntletType, locked)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    void addLockedSprite() = win 0x1f4fe0, imac 0x381b50, m1 0x311fe8;
    void addNormalSprite() = win inline, imac 0x381a80, m1 0x311eec {
        auto normalSprite = cocos2d::CCSprite::createWithSpriteFrameName(GauntletNode::frameForType(m_gauntletType).c_str());
        this->addChild(normalSprite);
        normalSprite->setPosition(this->getContentSize() / 2);
    }
    cocos2d::ccColor3B colorForType(GauntletType gauntletType) = win inline, m1 0x312314, imac 0x381e70 {
        switch (gauntletType) {
            case GauntletType::Fire: return { 255, 200, 200 };
            case GauntletType::Lava: return { 200, 200, 200 };
            case GauntletType::Bonus: return { 225, 225, 100 };
            case GauntletType::Monster: return { 200, 200, 200 };
            case GauntletType::Doom: return { 200, 200, 200 };
            default: return { 225, 225, 225 };
        }
    }
    bool init(GauntletType gauntletType, bool locked) = win inline, m1 0x311e44, imac 0x381a00 {
        if (!CCNode::init()) return false;

        m_gauntletType = gauntletType;
        this->setContentSize({ 60.0f, 60.0f });
        this->toggleLockedSprite(locked);

        return true;
    }
    float luminanceForType(GauntletType gauntletType) = win inline, imac 0x381e40, m1 0x3122f4 {
        switch (gauntletType) {
            case GauntletType::Fire: return 1.1f;
            case GauntletType::Ice: return 0.9f;
            case GauntletType::Shadow: return 1.6f;
            case GauntletType::Lava: return 1.3f;
            case GauntletType::Bonus: return 0.9f;
            case GauntletType::Chaos: return 1.5f;
            case GauntletType::Spike: return 0.8f;
            default: return 1.0f;
        }
    }
    void toggleLockedSprite(bool) = win 0x1f5310, imac 0x381930, m1 0x311d70;

    GauntletType m_gauntletType;
}

[[link(android)]]
class GhostTrailEffect : cocos2d::CCNode {
    // virtual ~GhostTrailEffect();
    //GhostTrailEffect() = ios 0x305d20;

    static GhostTrailEffect* create() = win 0x69fd0;

    virtual bool init() = win 0x6a0b0, imac 0x5e2370, m1 0x5149c0, ios 0x2f4eec;
    virtual void draw() = m1 0x514f28, imac 0x5e2920, ios 0x2f5450 {}

    TodoReturn doBlendAdditive();
    void runWithTarget(cocos2d::CCSprite*, float, float, float, float, bool);
    void stopTrail();
    void trailSnapshot(float) = win 0x6a110;

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
    virtual void accountStatusChanged();
}

[[link(android)]]
class GJAccountLoginDelegate {
    virtual void loginAccountFinished(int, int);
    virtual void loginAccountFailed(AccountError);
}

[[link(android)]]
class GJAccountManager : cocos2d::CCNode {
    // virtual ~GJAccountManager();
    // GJAccountManager();

    static GJAccountManager* get() {
        return GJAccountManager::sharedState();
    }

    static GJAccountManager* sharedState() = win 0x1faf50, imac 0xcf8d0, m1 0xb8518;

    virtual bool init() = win 0x1fb510, imac 0xd2340, m1 0xbab8c, ios 0x399040;

    void addDLToActive(char const* tag, cocos2d::CCObject*);
    void addDLToActive(char const* tag);
    bool backupAccount(gd::string) = win 0x1fc8f0, m1 0xbbce4, imac 0xd34c0;
    void dataLoaded(DS_Dictionary*) = m1 0xbcd78, imac 0xd4730;
    void encodeDataTo(DS_Dictionary*) = imac 0xd46d0, m1 0xbcd20;
    void firstSetup();
    bool getAccountBackupURL() = win 0x1fc2d0, m1 0xbb9b0, imac 0xd3180;
    bool getAccountSyncURL() = win 0x1fd230, m1 0xbc19c, imac 0xd3a10;
    cocos2d::CCObject* getDLObject(char const*);
    gd::string getShaPassword(gd::string) = win 0x1feee0;
    void handleIt(bool, gd::string, gd::string, GJHttpType) = win 0x1fb2c0, m1 0xb8918;
    void handleItDelayed(bool, gd::string, gd::string, GJHttpType);
    void handleItND(cocos2d::CCNode*, void*);
    bool isDLActive(char const* tag);
    void linkToAccount(gd::string, gd::string, int, int);
    void loginAccount(gd::string, gd::string) = m1 0xbb1b8, imac 0xd2940;
    void onBackupAccountCompleted(gd::string, gd::string) = win 0x1fce20;
    void onGetAccountBackupURLCompleted(gd::string, gd::string) = win 0x1fc620, m1 0xba684, imac 0xd1e40;
    void onGetAccountSyncURLCompleted(gd::string, gd::string) = m1 0xba8b0, imac 0xd2050;
    void onLoginAccountCompleted(gd::string, gd::string) = win 0x1fbee0;
    void onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
    void onRegisterAccountCompleted(gd::string, gd::string) = win 0x1fb8f0;
    void onSyncAccountCompleted(gd::string, gd::string) = win 0x1fdab0, imac 0xd0e80, m1 0xb9924;
    void onUpdateAccountSettingsCompleted(gd::string, gd::string) = win 0x1fed80;
    void ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType) = win 0x1fb070;
    void registerAccount(gd::string, gd::string, gd::string) = m1 0xbaf14, imac 0xd2690;
    void removeDLFromActive(char const*);
    bool syncAccount(gd::string) = m1 0xbc4d8;
    void unlinkFromAccount();
    void updateAccountSettings(int, int, int, gd::string, gd::string, gd::string) = m1 0xbc948, imac 0xd4200;

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
    virtual void registerAccountFinished();
    virtual void registerAccountFailed(AccountError);
}

[[link(android)]]
class GJAccountSettingsDelegate {
    virtual void updateSettingsFinished();
    virtual void updateSettingsFailed();
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

    static GJAccountSettingsLayer* create(int a1) = win inline, imac 0x28d2c0, m1 0x235cbc {
        GJAccountSettingsLayer* pRet = new GJAccountSettingsLayer();
        if (pRet && pRet->init(a1)) {
            pRet->autorelease();
            return pRet;
        }

        CC_SAFE_DELETE(pRet);

        return nullptr;
    }

    virtual void keyBackClicked() = win 0x28d1f0, imac 0x28f970, m1 0x238098, ios 0x2d7798;
    virtual void textInputShouldOffset(CCTextInputNode*, float) = imac 0x28f380, m1 0x237af0, ios 0x2d734c;
    virtual void textInputReturn(CCTextInputNode*) = imac 0x28f440, m1 0x237bc0, ios 0x2d73b8;

    TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float) = imac 0x28ec10;
    bool init(int) = win 0x28a850, m1 0x235dd4, imac 0x28d440;
    void onClose(cocos2d::CCObject* sender) = imac 0x28ef80;
    void onCommentSetting(cocos2d::CCObject* sender);
    void onFriendRequests(cocos2d::CCObject* sender);
    void onMessageSetting(cocos2d::CCObject* sender);
    void onUpdate(cocos2d::CCObject* sender);
    TodoReturn updateScoreValues();

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

    virtual bool init() = m1 0x521a8c, imac 0x5f1e50, ios 0x2fe634;

    TodoReturn getInternalAction(int);
    TodoReturn runInternalAction(cocos2d::CCAction*, cocos2d::CCNode*) = imac 0x5f1e80;
    TodoReturn stopAllInternalActions();
    TodoReturn stopInternalAction(int) = imac 0x5f1ed0;
    TodoReturn updateInternalActions(float, bool);
}

[[link(android)]]
class GJAssetDownloadAction {
    int m_id;
    GJAssetType m_assetType;
    int m_status;
}

[[link(android), depends(GJGameState), depends(PlayerButtonCommand)]]
class GJBaseGameLayer : cocos2d::CCLayer, TriggerEffectDelegate {
    ~GJBaseGameLayer() = win 0x200540;
    // GJBaseGameLayer() = ios 0x1256b4;

    static GJBaseGameLayer* get() {
        return GameManager::get()->m_gameLayer;
    }

    virtual void update(float) = win 0x232100, imac 0x141f90, m1 0x119128, ios 0x200aec;
    virtual bool init() = win 0x201cc0, imac 0xfe730, m1 0xe0fb8, ios 0x1db7ec;
    virtual void visit() = win 0x240950, imac 0x152a70, m1 0x126ac4, ios 0x20a398;
    virtual void postUpdate(float) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual TodoReturn checkForEnd() = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual TodoReturn testTime() = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void updateVerifyDamage() = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void updateAttemptTime(float) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void updateVisibility(float) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void playerTookDamage(PlayerObject*) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual TodoReturn opacityForObject(GameObject*) = win 0x231ce0, imac 0x141d40, m1 0x118f10, ios 0x200918;
    virtual void addToSpeedObjects(EffectGameObject*) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void objectsCollided(int, int) = win 0x213c90, imac 0x11b120, m1 0xf9cf8, ios 0x1ecfb0;
    virtual void updateColor(cocos2d::ccColor3B& color, float fadeTime, int colorID, bool blending, float opacity, cocos2d::ccHSVValue& copyHSV, int colorIDToCopy, bool copyOpacity, EffectGameObject* callerObject, int unk1, int unk2) = win 0x21e5c0, imac 0x12c570, m1 0x1076d8, ios 0x1f3a00;
    virtual void toggleGroupTriggered(int, bool, gd::vector<int> const&, int, int) = win 0x21e7a0, imac 0x12c710, m1 0x107844, ios 0x1f3b6c;
    virtual void spawnGroup(int, bool, double, gd::vector<int> const&, int, int) = win 0x2156a0, imac 0x11c510, m1 0xfad48, ios 0x1edbbc;
    virtual void spawnObject(GameObject*, double, gd::vector<int> const&) = win 0x215b50, imac 0x11c8b0, m1 0xfb108, ios 0x1ede3c;
    virtual TodoReturn activateEndTrigger(int, bool, bool) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void toggleGlitter(bool) = m1 0x8fb0, imac 0x7150, ios 0xd590 {}
    virtual void destroyPlayer(PlayerObject*, GameObject*) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void updateDebugDraw() = win 0x20b4d0, imac 0x111270, m1 0xf0e34, ios 0x1e5dcc;
    virtual void addToSection(GameObject*) = win 0x221220, imac 0x12e930, m1 0x1096bc, ios 0x1f5108;
    virtual void addToGroup(GameObject*, int, bool) = win 0x21ec20, imac 0x12cca0, m1 0x107d50, ios 0x1f3fb0;
    virtual void removeFromGroup(GameObject*, int) = win 0x21eda0, imac 0x12ced0, m1 0x107fa0, ios 0x1f4158;
    virtual void updateObjectSection(GameObject*) = win 0x222c70, imac 0x130780, m1 0x10ae68, ios 0x1f60bc;
    virtual TodoReturn updateDisabledObjectsLastPos(cocos2d::CCArray*) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual TodoReturn toggleGroundVisibility(bool) = m1 0x116b60, imac 0x13efe0, ios 0x1fef2c;
    virtual void toggleMGVisibility(bool) = m1 0x116b64, imac 0x13eff0, ios 0x1fef30;
    virtual void toggleHideAttempts(bool) = m1 0x116b68, imac 0x13f000, ios 0x1fef34;
    virtual float timeForPos(cocos2d::CCPoint, int, int, bool, int) { return 0.f; }
    virtual cocos2d::CCPoint posForTime(float) { return { 0.f, 0.f }; }
    virtual void resetSPTriggered() {}
    virtual void updateScreenRotation(float, bool, bool, float, int, float, int, int) = win 0x230720, imac 0x13f1a0, m1 0x116cb0, ios 0x1ff018;
    virtual TodoReturn reverseDirection(EffectGameObject*) = win 0x212c80, m1 0xf8e6c, imac 0x11a1f0, ios 0x1ec3d4;
    virtual void rotateGameplay(RotateGameplayGameObject*) = win 0x212ce0, imac 0x11a230, m1 0xf8eb0, ios 0x1ec418;
    virtual TodoReturn didRotateGameplay() = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void updateTimeWarp(float) = win 0x230a00, imac 0x13f940, m1 0x11730c, ios 0x1ff468;
    virtual void updateTimeWarp(GameObject*, float) = win 0x2309f0, m1 0x117300, imac 0x13f920, ios 0x1ff45c;
    virtual TodoReturn applyTimeWarp(float) = win 0x230a50, imac 0x13f990, m1 0x11734c, ios 0x1ff4a4;
    virtual void playGravityEffect(bool) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual TodoReturn manualUpdateObjectColors(GameObject*) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual TodoReturn createCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, bool) = win 0x23a7f0, imac 0x14cf30, m1 0x122170, ios 0x206ed8;
    virtual TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool) = win 0x23aaf0, imac 0x14d2c0, m1 0x122520, ios 0x207108;
    virtual TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*) = win 0x23acf0, imac 0x14d4c0, m1 0x122760, ios 0x207348;
    virtual TodoReturn activatedAudioTrigger(SFXTriggerGameObject*) = win 0x23c8a0, imac 0x14e3e0, m1 0x123474, ios 0x207e14;
    virtual void checkpointActivated(CheckpointGameObject*) = win 0x240530, imac 0x152790, m1 0x126808, ios 0x20a194;
    virtual TodoReturn flipArt(bool) = m1 0x126804, imac 0x152780, ios 0x20a190;
    virtual void addKeyframe(KeyframeGameObject*) = win 0x22e420, imac 0x13b940, m1 0x113f9c, ios 0x1fd18c;
    virtual void updateTimeLabel(int, int, bool) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual TodoReturn checkSnapshot() = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void toggleProgressbar() = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual TodoReturn toggleInfoLabel() = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void removeAllCheckpoints() = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual TodoReturn toggleMusicInPractice() = m1 0x8fb0, imac 0x7150, ios 0xd590;

    void activateCustomRing(RingObject*);
    TodoReturn activatedAudioTrigger(SFXTriggerGameObject*, float);
    TodoReturn activateEventTrigger(EventLinkTrigger*, gd::vector<int> const&);
    TodoReturn activateItemCompareTrigger(ItemTriggerGameObject*, gd::vector<int> const&) = win 0x22eed0;
    void activateItemEditTrigger(ItemTriggerGameObject*) = win 0x22eaf0, imac 0x13c800, m1 0x114c0c;
    void activateObjectControlTrigger(ObjectControlGameObject*);
    TodoReturn activatePersistentItemTrigger(ItemTriggerGameObject*);
    void activatePlayerControlTrigger(PlayerControlGameObject*);
    TodoReturn activateResetTrigger(EffectGameObject*);
    void activateSFXEditTrigger(SFXTriggerGameObject*);
    void activateSFXTrigger(SFXTriggerGameObject*) = win 0x23b6c0, m1 0x11f100, imac 0x149850;
    void activateSongEditTrigger(SongTriggerGameObject*) = win 0x23b8c0, m1 0x11eec4, imac 0x1495f0;
    void activateSongTrigger(SongTriggerGameObject*);
    TodoReturn activateTimerTrigger(TimerTriggerGameObject*, gd::vector<int> const&);
    TodoReturn addAreaEffect(EnterEffectObject*, gd::vector<EnterEffectInstance>*, GJAreaActionType);
    void addCustomEnterEffect(EnterEffectObject*, bool);
    TodoReturn addGuideArt(GameObject*) = imac 0x151740, m1 0x125938;
    void addObjectCounter(LabelGameObject*);
    TodoReturn addPickupTrigger(CountTriggerGameObject*);
    TodoReturn addPoints(int);
    void addProximityVolumeEffect(int, int, SFXTriggerGameObject*);
    TodoReturn addRemapTargets(gd::set<int>&) = imac 0x105880;
    void addToGroupParents(GameObject*);
    void addToGroups(GameObject*, bool) = win 0x21eb90, imac 0x12cc30, m1 0x107cdc;
    TodoReturn addToObjectsToShow(GameObject*);
    TodoReturn addUIObject(GameObject*);
    void animateInDualGroundNew(GameObject*, float, bool, float) = win 0x20deb0;
    TodoReturn animateInGroundNew(bool, float, bool) = imac 0x1144f0;
    void animateOutGroundNew(bool) = imac 0x1147e0;
    TodoReturn animatePortalY(float, float, float, float);
    TodoReturn applyLevelSettings(GameObject*) = imac 0x147ac0;
    void applyRemap(EffectGameObject*, gd::vector<int> const&, gd::unordered_map<int, int>&) = win 0x215ce0;
    void applySFXEditTrigger(int, int, SFXTriggerGameObject*);
    void applyShake(cocos2d::CCPoint&);
    void assignNewStickyGroups(cocos2d::CCArray*) = win 0x21f990;
    TodoReturn asyncBGLoaded(int);
    TodoReturn asyncGLoaded(int);
    TodoReturn asyncMGLoaded(int);
    TodoReturn atlasValue(int);
    void bumpPlayer(PlayerObject*, EffectGameObject*) = win 0x2124f0, imac 0x117ce0, m1 0xf6b04;
    TodoReturn buttonIDToButton(int);
    TodoReturn calculateColorGroups();
    TodoReturn cameraMoveX(float, float, float, bool);
    TodoReturn cameraMoveY(float, float, float, bool);
    bool canBeActivatedByPlayer(PlayerObject*, EffectGameObject*) = win 0x2123e0, imac 0x117880, m1 0xf6710;
    TodoReturn canProcessSFX(SFXTriggerState&, gd::unordered_map<int, int>&, gd::unordered_map<int, float>&, gd::vector<SFXTriggerState>&);
    TodoReturn canTouchObject(GameObject*);
    TodoReturn checkCameraLimitAfterTeleport(PlayerObject*, float) = win 0x2340b0, imac 0x110df0, m1 0xf0a1c;
    TodoReturn checkCollision(int, int);
    void checkCollisionBlocks(EffectGameObject*, gd::vector<EffectGameObject*>*, int) = win 0x2139e0;
    int checkCollisions(PlayerObject*, float, bool) = win 0x20e330, imac 0x114fe0, m1 0xf45f0;
    void checkRepellPlayer() = win 0x233de0, imac 0x143830;
    void checkSpawnObjects() = win 0x215410, imac 0x11c1f0;
    TodoReturn claimMoveAction(int, bool);
    TodoReturn claimParticle(gd::string, int);
    TodoReturn claimRotationAction(int, int, float&, float&, bool, bool);
    TodoReturn clearActivatedAudioTriggers() = imac 0x148ac0;
    TodoReturn clearPickedUpItems();
    TodoReturn collectedObject(EffectGameObject*);
    void collisionCheckObjects(PlayerObject*, gd::vector<GameObject*>*, int, float) = win 0x20f480, imac 0x116130, m1 0xf5554;
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
    TodoReturn convertToClosestDirection(float, float) = win 0x2295d0;
    void createBackground(int) = win 0x2064e0, imac 0x1030e0, m1 0xe4ed4;
    void createGroundLayer(int, int) = win 0x206920, imac 0x103660, m1 0xe5410;
    void createMiddleground(int) = win 0x2067a0, imac 0x103870, m1 0xe55f4;
    TodoReturn createNewKeyframeAnim();
    TodoReturn createParticle(int, char const*, int, cocos2d::tCCPositionType);
    void createPlayer() = win 0x205fd0, m1 0xe4b94, imac 0x102d80;
    TodoReturn createPlayerCollisionBlock() = win 0x212e90, imac 0x11a410;
    void createTextLayers() = win 0x209960, imac 0x10f2e0, m1 0xee828;
    TodoReturn damagingObjectsInRect(cocos2d::CCRect, bool);
    void destroyObject(GameObject*) = win 0x210bb0, imac 0x118390, m1 0xf71e8;
    void enterDualMode(GameObject*, bool) = imac 0x119720, m1 0xf84b0;
    void exitStaticCamera(bool exitX, bool exitY, float time, int easingType, float easingRate, bool smoothVelocity, float smoothVelocityMod, bool exitInstant) = win 0x2390e0;
    TodoReturn flipFinished();
    void flipGravity(PlayerObject*, bool, bool) = win 0x20d640, imac 0x114040, m1 0xf3874;
    TodoReturn flipObjects();
    TodoReturn gameEventToString(GJGameEvent);
    void gameEventTriggered(GJGameEvent, int, int) = win 0x22c8a0, imac 0x110ea0, m1 0xf0ae8;
    TodoReturn generateEnterEasingBuffer(int, float);
    TodoReturn generateEnterEasingBuffers(EnterEffectObject*);
    TodoReturn generatePickupAnimRandVal(GameObject*, float&, float&);
    TodoReturn generateSpawnRemap() = win 0x218c00, imac 0x106400;
    TodoReturn generateTargetGroups() = imac 0x109d00;
    TodoReturn generateVisibilityGroups();
    TodoReturn getActiveOrderSpawnObjects();
    float getAreaObjectValue(EnterEffectInstance*, GameObject*, cocos2d::CCPoint&, bool&) = win 0x222d90;
    TodoReturn getBumpMod(PlayerObject*, int);
    TodoReturn getCameraEdgeValue(int) = imac 0x13f630;
    TodoReturn getCapacityString();
    TodoReturn getCenterGroupObject(int, int);
    TodoReturn getCustomEnterEffects(int, bool);
    float getEasedAreaValue(GameObject*, EnterEffectInstance*, float, bool, int) = win 0x222f80;
    TodoReturn getEnterEasingKey(int, float);
    TodoReturn getEnterEasingValue(float, int, float, int);
    TodoReturn getFollowSpeedVal(GameObject*, int, int, float, float);
    float getGroundHeight(PlayerObject*, int);
    TodoReturn getGroundHeightForMode(int) = win 0x20c890;
    TodoReturn getGroup(int) = win 0x21eed0;
    TodoReturn getGroupParent(int);
    TodoReturn getGroupParentsString(GameObject*);
    TodoReturn getItemValue(int, int) = win 0x22ea60;
    float getMaxPortalY() = win 0x20e2b0;
    TodoReturn getMinDistance(cocos2d::CCPoint, cocos2d::CCArray*, float, int) = win 0x23c430;
    float getMinPortalY() = win 0x20e1d0;
    float getModifiedDelta(float) = win 0x232060, imac 0x141ee0, m1 0x119084;
    TodoReturn getMoveTargetDelta(EffectGameObject*, bool);
    TodoReturn getOptimizedGroup(int);
    PlayerObject* getOtherPlayer(PlayerObject*) = imac 0x1128b0;
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
    TodoReturn gravBumpPlayer(PlayerObject*, EffectGameObject*) = imac 0x117ef0, m1 0xf6d28;
    void groupStickyObjects(cocos2d::CCArray*) = win 0x21f7b0;
    void handleButton(bool down, int button, bool isPlayer1) = win 0x22e190, imac 0x13afc0, m1 0x1136ec;
    bool hasItem(int);
    bool hasUniqueCoin(EffectGameObject*) = win 0x211220, imac 0x118460, m1 0xf72cc;
    void increaseBatchNodeCapacity() = win 0x2078e0;
    bool isFlipping() {
        return m_gameState.m_levelFlipping != 0.f && m_gameState.m_levelFlipping != 1.f;
    }
    bool isPlayer2Button(int);
    void lightningFlash(cocos2d::CCPoint to, cocos2d::ccColor3B color);
    void lightningFlash(cocos2d::CCPoint from, cocos2d::CCPoint to, cocos2d::ccColor3B color, float lineWidth, float duration, int displacement, bool flash, float opacity) = win 0x240770, imac 0x110c50, m1 0xf089c;
    TodoReturn loadGroupParentsFromString(GameObject*, gd::string);
    void loadLevelSettings() = win 0x234770, imac 0x147920, m1 0x11d8c0;
    void loadStartPosObject() = win 0x230000, imac 0x13e9f0;
    void loadUpToPosition(float, int, int) = win 0x2301a0;
    TodoReturn maxZOrderForShaderZ(int);
    TodoReturn minZOrderForShaderZ(int);
    TodoReturn modifyGroupPhysics(AdvancedFollowEditObject*, cocos2d::CCArray*);
    TodoReturn modifyObjectPhysics(AdvancedFollowEditObject*, GameObjectPhysics&);
    void moveAreaObject(GameObject*, float, float) = win 0x2257d0;
    TodoReturn moveCameraToPos(cocos2d::CCPoint);
    void moveObject(GameObject*, double, double, bool);
    void moveObjects(cocos2d::CCArray*, double, double, bool) = win 0x228a70;
    void moveObjectsSilent(int, double, double);
    TodoReturn moveObjectToStaticGroup(GameObject*);
    TodoReturn objectIntersectsCircle(GameObject*, GameObject*);
    GJGameEvent objectTypeToGameEvent(int) = win 0x22ce10, imac 0x1144d0;
    TodoReturn optimizeMoveGroups();
    TodoReturn orderSpawnObjects() = imac 0x151690;
    TodoReturn parentForZLayer(int, bool, int, int) = imac 0x10f720;
    void pauseAudio() = win 0x231d60, imac 0x141de0;
    TodoReturn performMathOperation(double, double, int);
    TodoReturn performMathRounding(double, int);
    void pickupItem(EffectGameObject*) = win 0x210cd0, imac 0x118560, m1 0xf7400;
    TodoReturn playAnimationCommand(int, int);
    bool playerCircleCollision(PlayerObject*, GameObject*) = win 0x20c930;
    TodoReturn playerIntersectsCircle(PlayerObject*, GameObject*);
    void playerTouchedObject(PlayerObject*, GameObject*);
    void playerTouchedRing(PlayerObject*, RingObject*) = win 0x212960, imac 0x118040, m1 0xf6eb0;
    void playerTouchedTrigger(PlayerObject*, EffectGameObject*) = win 0x212a70, m1 0xf6f88, imac 0x1180f0;
    TodoReturn playerWasTouchingObject(PlayerObject*, GameObject*);
    void playerWillSwitchMode(PlayerObject*, GameObject*) = win 0x20da30, imac 0x114200, m1 0xf3a44;
    void playExitDualEffect(PlayerObject*) = win 0x2119a0, m1 0xf7ff0, imac 0x119250;
    TodoReturn playFlashEffect(float, int, float);
    TodoReturn playKeyframeAnimation(KeyframeAnimTriggerObject*, gd::vector<int> const&);
    TodoReturn playSpeedParticle(float) = m1 0x121058, imac 0x14c000;
    TodoReturn positionForShaderTarget(int) = win 0x21e1a0;
    TodoReturn positionUIObjects();
    TodoReturn prepareSavePositionObjects();
    TodoReturn prepareTransformParent(bool);
    void preResumeGame() = imac 0x141dd0;
    TodoReturn preUpdateVisibility(float);
    void processActivatedAudioTriggers(float) = win 0x23d3e0, imac 0x14f3a0;
    void processAdvancedFollowAction(AdvancedFollowInstance&, bool, float) = win 0x22a020;
    void processAdvancedFollowActions(float) = win 0x229e00;
    void processAreaActions(float, bool) = win 0x223ce0;
    void processAreaEffects(gd::vector<EnterEffectInstance>*, GJAreaActionType, float, bool) = win 0x223100, imac 0x1308e0, m1 0x10afe8;
    void processAreaFadeGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, bool);
    void processAreaMoveGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool) = win 0x2251f0, m1 0x10c484, imac 0x132070;
    void processAreaRotateGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool) = win 0x224ab0;
    void processAreaTintGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, bool) = win 0x2258c0;
    void processAreaTransformGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool) = win 0x223f40;
    void processAreaVisualActions(float) = imac 0x1339e0, m1 0x10d908;
    GameObject* processCameraObject(GameObject* object, PlayerObject* player) = win inline, imac 0x112ba0, m1 0xf2584 {
        if (object) {
            player->m_lastPortalPos = object->getPosition();
            player->m_lastActivatedPortal = object;
        }
        auto ret = object;
        if (m_gameState.m_isDualMode && m_gameState.m_unkGameObjPtr2) ret = m_gameState.m_unkGameObjPtr2;
        if (object) m_gameState.m_unkGameObjPtr1 = object;
        return ret;
    }
    void processCommands(float) = win 0x234170, imac 0x1435a0, m1 0x11a2d0;
    void processDynamicObjectActions(int, float) = win 0x228fa0;
    void processFollowActions() = win 0x22b2a0;
    TodoReturn processItems();
    void processMoveActions() = win 0x2282d0, m1 0x10ffa0, imac 0x136810;
    void processMoveActionsStep(float, bool) = win 0x2262f0, m1 0x10e5b8, imac 0x1347b0;
    void processOptionsTrigger(GameOptionsTrigger*) = win 0x21e9a0, imac 0x12c930, m1 0x107a5c;
    void processPlayerFollowActions(float) = win 0x228bf0;
    void processQueuedAudioTriggers() = win 0x235550, imac 0x1491f0;
    void processQueuedButtons() = win 0x22c7f0, imac 0x13af40, m1 0x113650;
    void processRotationActions() = win 0x226510;
    TodoReturn processSFXObjects() = win 0x23b480, imac 0x525060;
    TodoReturn processSFXState(SFXTriggerState*, SFXTriggerState*, int, float);
    TodoReturn processSongState(int, float, float, int, float, float, gd::vector<SongTriggerState>*, SongTriggerGameObject*);
    TodoReturn processStateObjects();
    void processTransformActions(bool) = win 0x2273a0;
    void queueButton(int button, bool push, bool isPlayer2) = win inline, imac 0x13ad90, m1 0x1134ec {
        if (button <= 0 || button > 3) {
            return;
        }
        PlayerButtonCommand command = {};
        command.m_button = (PlayerButton) button;
        command.m_isPush = push;
        command.m_isPlayer2 = isPlayer2;
        m_queuedButtons.push_back(command);
    }
    TodoReturn reAddToStickyGroup(GameObject*) = imac 0x12df20;
    TodoReturn recordAction(int, bool, bool);
    TodoReturn rectIntersectsCircle(cocos2d::CCRect, cocos2d::CCPoint, float);
    void refreshCounterLabels() = win 0x22fe50, imac 0x13dda0;
    void refreshKeyframeAnims() = m1 0xecb14;
    TodoReturn regenerateEnterEasingBuffers() = imac 0x106590;
    TodoReturn registerSpawnRemap(gd::vector<ChanceObject>&);
    TodoReturn registerStateObject(EffectGameObject*);
    TodoReturn removeBackground();
    TodoReturn removeCustomEnterEffects(int, bool);
    void removeFromGroupParents(GameObject*) = imac 0x12d4c0;
    void removeFromGroups(GameObject*) = win 0x21ed10, imac 0x12ce70;
    TodoReturn removeFromStickyGroup(GameObject*) = imac 0x12de90;
    TodoReturn removeGroundLayer() = imac 0x1039d0;
    TodoReturn removeGroupParent(int);
    TodoReturn removeKeyframe(KeyframeGameObject*) = imac 0x13bae0;
    TodoReturn removeMiddleground();
    void removeObjectFromSection(GameObject*) = win 0x221a80, imac 0x12e500, m1 0x109388;
    TodoReturn removePlayer2();
    TodoReturn removeTemporaryParticles() = imac 0x148cb0, m1 0x11e718;
    void reorderObjectSection(GameObject*);
    TodoReturn reparentObject(cocos2d::CCNode*, cocos2d::CCNode*);
    void resetActiveEnterEffects() = win 0x209060, imac 0x10d800, m1 0xed248;
    int resetAreaObjectValues(GameObject*, bool) = win 0x222950;
    void resetAudio() = win 0x231fc0, m1 0x119004;
    void resetCamera() = win 0x239570, m1 0x11e7d4, imac 0x148d80;
    void resetGradientLayers() = win 0x21bbf0;
    TodoReturn resetGroupCounters(bool) = imac 0x13e800;
    void resetLevelVariables() = win 0x234ab0, imac 0x147d80, m1 0x11dcf0;
    TodoReturn resetMoveOptimizedValue();
    void resetPlayer() = win 0x20cbf0, m1 0xf2608, imac 0x112c30;
    void resetSongTriggerValues();
    TodoReturn resetSpawnChannelIndex() = win 0x23f890, m1 0x11ea94, imac 0x149100;
    void resetStaticCamera(bool, bool) = win 0x239850;
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
    void setGroupParent(GameObject*, int) = imac 0x12d370;
    void setStartPosObject(StartPosObject* startPos) = win inline, imac 0x112ed0, m1 0xf2870 {
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
    void setupLayers() = win 0x203760, imac 0x1003c0, m1 0xe24c4;
    void setupLevelStart(LevelSettingsObject*) = win 0x20cd60, imac 0x112f20, m1 0xf28b8;
    void setupReplay(gd::string) = win 0x234360, m1 0x11cd28;
    void shakeCamera(float duration, float strength, float interval) = win 0x2356c0;
    bool shouldExitHackedLevel() = win 0x205d10, imac 0x102b90, m1 0xe49d0;
    TodoReturn sortAllGroupsX();
    TodoReturn sortGroups();
    void sortSectionVector() = win 0x221cc0, imac 0x12faf0, m1 0x10a4a8;
    TodoReturn sortStickyGroups();
    void spawnGroupTriggered(int groupID, float, bool, gd::vector<int> const&, int, int);
    TodoReturn spawnObjectsInOrder(cocos2d::CCArray*, double, gd::vector<int> const&, int, int);
    cocos2d::CCParticleSystemQuad* spawnParticle(char const* plist, int zOrder, cocos2d::tCCPositionType positionType, cocos2d::CCPoint position) = win 0x239d50, imac 0x14bf50, m1 0x120f7c;
    TodoReturn spawnParticleTrigger(int, cocos2d::CCPoint, float, float);
    TodoReturn spawnParticleTrigger(SpawnParticleGameObject*) = imac 0x118670;
    TodoReturn spawnPlayer2();
    TodoReturn speedForShaderTarget(int) = win 0x21e250;
    cocos2d::CCArray* staticObjectsInRect(cocos2d::CCRect, bool) = win 0x20bda0;
    TodoReturn stopAllGroundActions();
    TodoReturn stopCameraShake() = imac 0x14a310;
    TodoReturn stopCustomEnterEffect(EnterEffectObject*, bool);
    TodoReturn stopCustomEnterEffect(EnterEffectObject*);
    TodoReturn stopSFXTrigger(SFXTriggerGameObject*);
    TodoReturn swapBackground(int);
    TodoReturn swapGround(int);
    TodoReturn swapMiddleground(int);
    void switchToFlyMode(PlayerObject* player, GameObject* object, bool unused, int type) = win inline, imac 0x113ad0, m1 0xf3300 {
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
    void switchToRobotMode(PlayerObject*, GameObject*, bool) = win 0x20d760, imac 0x113cd0, m1 0xf3504;
    void switchToRollMode(PlayerObject*, GameObject*, bool) = win 0x20d940, imac 0x113c20, m1 0xf3458;
    void switchToSpiderMode(PlayerObject*, GameObject*, bool) = win 0x20d850, imac 0x113d80, m1 0xf35b0;
    void syncBGTextures() = win 0x234a10, imac 0x147c70, m1 0x11dbd8;
    void teleportPlayer(TeleportPortalObject*, PlayerObject*) = win 0x20aa80, imac 0x110400, m1 0xf00d8;
    TodoReturn testInstantCountTrigger(int, int, int, bool, int, gd::vector<int> const&, int, int);
    void toggleAudioVisualizer(bool) = win 0x242550, m1 0xe2354;
    void toggleDualMode(GameObject*, bool, PlayerObject*, bool) = win 0x2113f0, imac 0x113770, m1 0xf2fe8;
    void toggleFlipped(bool, bool) = win 0x240240, m1 0xf6954, imac 0x117af0;
    void toggleGroup(int, bool) = m1 0x1078c4;
    void toggleLockPlayer(bool disable, bool p2) = win inline, imac 0x12cbe0, m1 0x107cb0 {
        auto player = p2 ? m_player2 : m_player1;
        if (disable) player->disablePlayerControls();
        else player->enablePlayerControls();
    }
    void togglePlayerStreakBlend(bool) = imac 0x12cb50, m1 0x107c3c;
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
    TodoReturn triggerGradientCommand(GradientTriggerObject*) = win 0x21a3a0, imac 0x128bc0, m1 0x104294;
    TodoReturn triggerGravityChange(EffectGameObject*, int);
    TodoReturn triggerMoveCommand(EffectGameObject*);
    TodoReturn triggerRotateCommand(EnhancedTriggerObject*);
    bool triggerShaderCommand(ShaderGameObject*);
    TodoReturn triggerTransformCommand(TransformTriggerGameObject*);
    TodoReturn tryGetGroupParent(int);
    GameObject* tryGetMainObject(int) = win 0x21f170, imac 0x11a040, m1 0xf8cc4;
    TodoReturn tryGetObject(int) = win 0x21f1e0;
    TodoReturn tryResumeAudio() = imac 0x141e80;
    TodoReturn unclaimParticle(char const*, cocos2d::CCParticleSystemQuad*);
    void ungroupStickyObjects(cocos2d::CCArray*) = win 0x21f8d0, imac 0x12dcc0;
    TodoReturn unlinkAllEvents();
    TodoReturn updateActiveEnterEffect(EnterEffectObject*);
    TodoReturn updateAllObjectSection();
    TodoReturn updateAreaObjectLastValues(GameObject*);
    void updateAudioVisualizer() = win 0x2422f0, imac 0x143430, m1 0x11a1b0;
    void updateBGArtSpeed(float, float) = m1 0x11e5e0;
    void updateCamera(float) = win 0x235760, imac 0x143a60, m1 0x11a738;
    TodoReturn updateCameraBGArt(cocos2d::CCPoint, float) = imac 0x14a5c0;
    TodoReturn updateCameraEdge(int, int);
    void updateCameraMode(EffectGameObject* obj, bool updateDual) = win inline, imac 0x114180 {
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
    void updateCameraOffsetX(float, float, int, float, int, int) = win 0x230810, imac 0x13f3e0;
    void updateCameraOffsetY(float, float, int, float, int, int) = win 0x2308b0, imac 0x13f4e0;
    void updateCollisionBlocks() = imac 0x11a8b0;
    void updateCounters(int, int) = win 0x22e760, m1 0x114398, imac 0x13bd80;
    void updateDualGround(PlayerObject*, int, bool, float) = win 0x20dcc0, imac 0x113e30, m1 0xf365c;
    void updateEnterEffects(float) = imac 0x10e8e0, m1 0xedfd4;
    TodoReturn updateExtendedCollision(GameObject*, bool);
    TodoReturn updateExtraGameLayers() = imac 0x12c410;
    TodoReturn updateGameplayOffsetX(int, bool);
    TodoReturn updateGameplayOffsetY(int, bool);
    TodoReturn updateGradientLayers() = win 0x21a830, imac 0x129310;
    TodoReturn updateGroundShadows();
    TodoReturn updateGuideArt() = win 0x240130;
    TodoReturn updateInternalCamOffsetX(float, float, float);
    TodoReturn updateInternalCamOffsetY(float, float, float);
    void updateKeyframeOrder(int) = imac 0x13b9d0, m1 0x11403c;
    TodoReturn updateLayerCapacity(gd::string);
    TodoReturn updateLegacyLayerCapacity(int, int, int, int);
    void updateLevelColors() = win 0x207150, m1 0xe5144, imac 0x103350;
    void updateMaxGameplayY() = win 0x234930, imac 0x147b20;
    TodoReturn updateMGArtSpeed(float, float);
    void updateMGOffsetY(float, float, int, float, int, int) = win 0x230950;
    TodoReturn updateOBB2(cocos2d::CCRect) = win 0x6da50;
    void updateParticles(float);
    TodoReturn updatePlatformerTime();
    TodoReturn updatePlayerCollisionBlocks();
    void updateProximityVolumeEffects() = win 0x23bd90, imac 0x1465c0, m1 0x11c754;
    TodoReturn updateQueuedLabels();
    TodoReturn updateReplay();
    TodoReturn updateSavePositionObjects() = imac 0x11b8b0;
    void updateShaderLayer(float) = win 0x21cf00, imac 0x12b040, m1 0x1060a8;
    void updateSpecialGroupData() = win 0x208c00, imac 0x106390;
    TodoReturn updateSpecialLabels() = win 0x2338f0;
    void updateStaticCameraPos(cocos2d::CCPoint pos, bool staticX, bool staticY, bool followOrSmoothEase, float time, int easingType, float easingRate) = win 0x238ca0, imac 0x114990, m1 0xf40c8;
    TodoReturn updateStaticCameraPosToGroup(int, bool, bool, bool, float, float, int, float, bool, float) = win 0x2388b0;
    TodoReturn updateTimeMod(float, bool, bool);
    TodoReturn updateTimerLabels() = win 0x22fae0;
    void updateZoom(float, float, int, float, int, int) = win 0x230590, imac 0x13f010;
    TodoReturn visitWithColorFlash();
    TodoReturn volumeForProximityEffect(SFXTriggerInstance&) = win 0x23c060;

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
    int m_activeGradients;
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
    int m_activeObjects;
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

    virtual bool init() = imac 0x257ec0, m1 0x204a04;

    TodoReturn finishedLoadingSpriteAsync(cocos2d::CCObject*);
    TodoReturn loadSpriteAsync(gd::string, int);
    TodoReturn unloadAll();
    TodoReturn unloadSprite(gd::string, int);
    TodoReturn updateSpriteVisibility();
}

[[link(android)]]
class GJBigSpriteNode : cocos2d::CCNode {
    // virtual ~GJBigSpriteNode();

    static GJBigSpriteNode* create();

    virtual bool init() = imac 0x257eb0, m1 0x204a00;
}

[[link(android)]]
class GJChallengeDelegate {
    virtual void challengeStatusFinished();
    virtual void challengeStatusFailed();
}

[[link(android)]]
class GJChallengeItem : cocos2d::CCObject {
    // virtual ~GJChallengeItem();

    static GJChallengeItem* create() = m1 0x8286c;
    static GJChallengeItem* create(GJChallengeType challengeType, int goal, int reward, int timeLeft, gd::string questName);

    static GJChallengeItem* createFromString(gd::string string) = imac 0x8ef00;
    static GJChallengeItem* createWithCoder(DS_Dictionary* dsdict) = imac 0x8f320, m1 0x82a9c;

    virtual void encodeWithCoder(DS_Dictionary* dsdict) = win 0x1f16a0, imac 0x8f4c0, m1 0x82c58, ios 0x340730;
    virtual bool canEncode() = m1 0x82d34, imac 0x8f590, ios 0x34080c;
    void dataLoaded(DS_Dictionary* dsdict) = imac 0x8f360, m1 0x82af0;
    void incrementCount(int add);
    bool init(GJChallengeType challengeType, int goal, int reward, int timeLeft, gd::string questName);
    void setCount(int value);

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

    static GJChestSprite* create(int) = win 0x3ba270, imac 0x20b1d0, m1 0x1bfc94;

    virtual void setOpacity(unsigned char) = win 0x3ba400, imac 0x20df10, m1 0x1c2724, ios 0x1c8f68;
    virtual void setColor(cocos2d::ccColor3B const&) = win 0x3ba340, imac 0x20de20, m1 0x1c2650, ios 0x1c8e98;

    bool init(int chestType) = win inline, m1 0x1c25ec, imac 0x20ddc0 {
        if (!cocos2d::CCSprite::init()) return false;
        m_chestType = chestType;
        this->setContentSize({ 0, 0 });
        this->switchToState(ChestSpriteState::Closed, false);
        return true;
    }
    void switchToState(ChestSpriteState, bool) = win 0x3ba470, m1 0x1c103c, imac 0x20c800;

    int m_chestType;
    ChestSpriteState m_spriteState;
    bool m_dark;
}

[[link(android)]]
class GJColorSetupLayer : FLAlertLayer, ColorSelectDelegate, FLAlertLayerProtocol {
    // virtual ~GJColorSetupLayer();

    static GJColorSetupLayer* create(LevelSettingsObject*) = win 0x24ef80, imac 0x1f9510, m1 0x1aeb44;

    virtual void keyBackClicked() = win 0x24fda0, m1 0x1af784, imac 0x1fa230, ios 0x191cf8;
    virtual void colorSelectClosed(cocos2d::CCNode*) = win 0x24fcd0, imac 0x1fa200, m1 0x1af778, ios 0x191cec;

    bool init(LevelSettingsObject*) = win 0x24f0c0, imac 0x1f96a0, m1 0x1aec70;
    void onClose(cocos2d::CCObject* sender) = win 0x24fd50;
    void onColor(cocos2d::CCObject* sender) = win 0x24fc00, imac 0x1f9db0, m1 0x1af318;
    void onPage(cocos2d::CCObject* sender) = win 0x24fbb0, imac 0x1fa000;
    void showPage(int) = win 0x24fce0, imac 0x1fa0f0, m1 0x1af66c;
    void updateSpriteColor(ColorChannelSprite*, cocos2d::CCLabelBMFont*, int) = win 0x24fa40, imac 0x1fa160, m1 0x1af6d0;
    void updateSpriteColors() = win 0x24f920, imac 0x1f9e70, m1 0x1af3dc;

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

    virtual bool init() = imac 0x54b160, m1 0x4a34d4, ios 0xb41fc;

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

    static GJCommentListLayer* create(BoomListView* listView, char const* title, cocos2d::ccColor4B color, float width, float height, bool blueBorder) = win 0x28a320, imac 0x28c900, m1 0x235434;

    bool init(BoomListView* listView, char const* title, cocos2d::ccColor4B color, float width, float height, bool blueBorder) = win 0x28a440, imac 0x28ca10, m1 0x23552c;

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

    static GJDifficultySprite* create(int, GJDifficultyName) = win 0x29d8d0, imac 0x2a3530, m1 0x24a2c0;

    static gd::string getDifficultyFrame(int, GJDifficultyName) = win 0x29d9b0, imac 0x2a3680, m1 0x24a464;
    bool init(int, GJDifficultyName) = imac 0x2a3610, m1 0x24a3cc;
    void updateDifficultyFrame(int, GJDifficultyName) = win 0x29da90, imac 0x2a37c0, m1 0x24a5b0;
    void updateFeatureState(GJFeatureState) = win 0x29dbb0, imac 0x2a3940, m1 0x24a728;
    void updateFeatureStateFromLevel(GJGameLevel*) = m1 0x24a6f0;

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

    static GJDropDownLayer* create(const char* title, float height, bool p2) = win inline, imac 0x5cfc90, m1 0x503e08 {
        GJDropDownLayer* pRet = new GJDropDownLayer();
        if (pRet && pRet->init(title, height, p2)) {
            pRet->autorelease();
            return pRet;
        }
        CC_SAFE_DELETE(pRet);
        return nullptr;
    }
    static GJDropDownLayer* create(const char* title) = win inline, imac 0x5d01d0 {
        GJDropDownLayer* pRet = new GJDropDownLayer();
        if (pRet && pRet->init(title)) {
            pRet->autorelease();
            return pRet;
        }
        CC_SAFE_DELETE(pRet);
        return nullptr;
    }

    virtual void draw() = win 0x426f0, m1 0x5046c0, imac 0x5d05d0, ios 0x3ab0a0;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x3c6a0, m1 0x5046fc, imac 0x5d0600, ios 0x3ab0dc { return true; }
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x50471c, imac 0x5d0660, ios 0x3ab0fc {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x50470c, imac 0x5d0620, ios 0x3ab0ec {}
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x504714, imac 0x5d0640, ios 0x3ab0f4 {}
    virtual void registerWithTouchDispatcher() = win 0x425d0, m1 0x5043b0, imac 0x5d0290, ios 0x3aad90;
    virtual void keyBackClicked() = win 0x250330, m1 0x5043e8, imac 0x5d02d0, ios 0x3aadc8;
    virtual void customSetup() = m1 0x50434c, imac 0x5d0210, ios 0x3aad2c {}
    virtual void enterLayer() = win 0x425a0, m1 0x504378, imac 0x5d0260, ios 0x3aad58;
    virtual void exitLayer(cocos2d::CCObject*) = win 0x250350, imac 0x5d0310, m1 0x50440c, ios 0x3aadec;
    virtual void showLayer(bool) = win 0x250390, m1 0x504458, imac 0x5d0350, ios 0x3aae38;
    virtual void hideLayer(bool) = win 0x2504e0, imac 0x5d0460, m1 0x50455c, ios 0x3aaf3c;
    virtual void layerVisible() = win 0x426a0, m1 0x504660, imac 0x5d0570, ios 0x3ab040;
    virtual void layerHidden() = win 0x250630, m1 0x504670, imac 0x5d0590, ios 0x3ab050;
    virtual void enterAnimFinished() = m1 0x50465c, imac 0x5d0560, ios 0x3ab03c {}
    virtual void disableUI() = win 0x2502f0, m1 0x504350, imac 0x5d0220, ios 0x3aad30;
    virtual void enableUI() = win 0x250310, m1 0x504364, imac 0x5d0240, ios 0x3aad44;

    bool init(char const*, float, bool) = win 0x24feb0, imac 0x5cfdd0, m1 0x503f2c;
    bool init(char const* title) = win inline, imac 0x5d01f0 {
        return init(title, 220.0f, false);
    }

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

[[link(android), depends(DynamicMoveCalculation), depends(PulseEffectAction), depends(TouchToggleAction), depends(CollisionTriggerAction), depends(ToggleTriggerAction), depends(SpawnTriggerAction), depends(GroupCommandObject2), depends(OpacityEffectAction), depends(CountTriggerAction), depends(TimerItem), depends(TimerTriggerAction)]]
class GJEffectManager : cocos2d::CCNode {
    // virtual ~GJEffectManager();
    // GJEffectManager();

    static GJEffectManager* create() = win 0x2538f0;
    virtual void rewardedVideoFinished();

    virtual bool init() = imac 0x2c8f30, m1 0x26c924, ios 0x125e8;

    TodoReturn activeColorForIndex(int) = win 0x254930, imac 0x2ca350;
    TodoReturn activeOpacityForIndex(int) = imac 0x2ca4b0;
    TodoReturn addAllInheritedColorActions(cocos2d::CCArray*);
    void addCountToItem(int, int);
    TodoReturn addMoveCalculation(CCMoveCNode*, cocos2d::CCPoint, GameObject*);
    TodoReturn calculateBaseActiveColors();
    TodoReturn calculateInheritedColor(int, ColorAction*);
    TodoReturn calculateLightBGColor(cocos2d::ccColor3B);
    TodoReturn checkCollision(int const&, int const&);
    void colorActionChanged(ColorAction*) = imac 0x2cb670;
    bool colorExists(int) = imac 0x2cb640;
    TodoReturn colorForEffect(cocos2d::ccColor3B, cocos2d::ccHSVValue);
    TodoReturn colorForGroupID(int, cocos2d::ccColor3B const&, bool);
    TodoReturn colorForIndex(int);
    TodoReturn colorForPulseEffect(cocos2d::ccColor3B const&, PulseEffectAction*);
    TodoReturn controlActionsForControlID(int, GJActionCommand);
    TodoReturn controlActionsForTrigger(EffectGameObject*, GJActionCommand);
    int countForItem(int) = win 0x25b060, imac 0x2d6930, m1 0x2777b8;
    TodoReturn createFollowCommand(float, float, float, int, int, int, int);
    TodoReturn createKeyframeCommand(int, cocos2d::CCArray*, GameObject*, int, int, bool, float, float, float, float, float, float, gd::vector<int> const&);
    TodoReturn createMoveCommand(cocos2d::CCPoint, int, float, int, float, bool, bool, bool, bool, float, float, int, int);
    TodoReturn createPlayerFollowCommand(float, float, int, float, float, int, int, int);
    TodoReturn createRotateCommand(float, float, int, int, int, float, bool, bool, bool, int, int);
    TodoReturn createTransformCommand(double, double, double, double, bool, float, int, int, int, float, bool, bool, int, int);
    TodoReturn getAllColorActions();
    TodoReturn getAllColorSprites();
    ColorAction* getColorAction(int) = win 0x254870, imac 0x2ca1e0, m1 0x26d3c4;
    ColorActionSprite* getColorSprite(int) = win 0x254930, imac 0x2ca3a0;
    TodoReturn getLoadedMoveOffset(gd::unordered_map<int, std::pair<double, double>>&);
    TodoReturn getMixedColor(cocos2d::ccColor3B, cocos2d::ccColor3B, float);
    TodoReturn getMoveCommandNode(GroupCommandObject2*);
    TodoReturn getMoveCommandObject();
    TodoReturn getOpacityActionForGroup(int);
    TodoReturn getSaveString() = imac 0x2d9360;
    TodoReturn getTempGroupCommand();
    TodoReturn handleObjectCollision(bool, int, int);
    TodoReturn hasActiveDualTouch();
    TodoReturn hasBeenTriggered(int, int) = imac 0x2d5fd0;
    TodoReturn hasPulseEffectForGroupID(int);
    bool isGroupEnabled(int);
    TodoReturn keyForGroupIDColor(int, cocos2d::ccColor3B const&, bool);
    void loadFromState(EffectManagerState&) = win 0x25cb40;
    void objectsCollided(int, int) = imac 0x2cc680;
    void onRewardedVideo(cocos2d::CCObject* sender);
    TodoReturn opacityForIndex(int);
    TodoReturn opacityModForGroup(int);
    TodoReturn pauseTimer(int);
    TodoReturn playerButton(bool, bool) = win 0x25ae00;
    void playerDied();
    TodoReturn postCollisionCheck() = win 0x254f50, imac 0x2cc390;
    TodoReturn postMoveActions() = win 0x259470, imac 0x2d4110;
    TodoReturn preCollisionCheck() = imac 0x2cc370;
    TodoReturn prepareMoveActions(float, bool) = win 0x258060, imac 0x2d16c0;
    TodoReturn processColors() = win 0x253fb0, imac 0x2ca520;
    TodoReturn processCopyColorPulseActions() = imac 0x2cabf0;
    TodoReturn processInheritedColors() = imac 0x2ca840;
    TodoReturn processMoveCalculations();
    TodoReturn processPulseActions();
    TodoReturn registerCollisionTrigger(int, int, int, bool, bool, gd::vector<int> const&, int, int);
    TodoReturn registerRotationCommand(GroupCommandObject2*, bool);
    TodoReturn removeAllPulseActions();
    TodoReturn removeColorAction(int);
    TodoReturn removePersistentFromAllItems() = imac 0x2d7520;
    TodoReturn removePersistentFromAllTimers();
    TodoReturn removeTriggeredID(int, int);
    void reset() = win 0x253d10, imac 0x2c9190, m1 0x26cb18;
    TodoReturn resetEffects() = win 0x254c90, imac 0x2c93a0;
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
    void saveToState(EffectManagerState&) = win 0x25c520;
    void setColorAction(ColorAction*, int) = win 0x254a90, m1 0x26e4cc, imac 0x2cb570;
    void setFollowing(int, int, bool);
    void setupFromString(gd::string);
    bool shouldBlend(int) = imac 0x2ca4e0;
    TodoReturn spawnGroup(int, float, bool, gd::vector<int> const&, int, int) = win 0x25a920;
    TodoReturn spawnObject(GameObject*, float, gd::vector<int> const&, int, int);
    TodoReturn startTimer(int, double, double, bool, bool, bool, float, bool, int, gd::vector<int> const&, int, int);
    TodoReturn storeTriggeredID(int, int) = win 0x25ac60, imac 0x2d5e20;
    TodoReturn timeForItem(int) = win 0x25bfd0;
    TodoReturn timerExists(int);
    TodoReturn toggleGroup(int, bool);
    TodoReturn toggleItemPersistent(int, bool);
    TodoReturn toggleTimerPersistent(int, bool);
    TodoReturn transferPersistentItems();
    TodoReturn traverseInheritanceChain(InheritanceNode*);
    TodoReturn tryGetMoveCommandNode(int);
    TodoReturn updateActiveOpacityEffects();
    TodoReturn updateColorAction(ColorAction*);
    void updateColorEffects(float) = imac 0x2cb7d0, m1 0x26e6c0;
    void updateColors(cocos2d::ccColor3B, cocos2d::ccColor3B);
    void updateCountForItem(int, int) = win 0x25b120, imac 0x2d6b10, m1 0x27791c;
    void updateEffects(float) = win 0x254b10, imac 0x2cb6a0, m1 0x26e5bc;
    void updateOpacityAction(OpacityEffectAction*);
    void updateOpacityEffects(float);
    void updatePulseEffects(float) = win 0x259e30, imac 0x2cb9a0, m1 0x26e850;
    TodoReturn updateSpawnTriggers(float) = win 0x25aa10;
    TodoReturn updateTimer(int, double);
    TodoReturn updateTimers(float, float) = win 0x25b9e0, imac 0x2d82a0;
    TodoReturn wasFollowing(int, int);
    TodoReturn wouldCreateLoop(InheritanceNode*, int);

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

    virtual bool init() = m1 0x50757c, imac 0x5d3a00;
}

[[link(android)]]
class GJFollowCommandLayer : SetupTriggerPopup {
    // virtual ~GJFollowCommandLayer();

    static GJFollowCommandLayer* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void determineStartValues() = imac 0x2c39d0, m1 0x267ae4, ios 0x13a72c;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x2c45a0, m1 0x268494, ios 0x13aed4;
    virtual void textChanged(CCTextInputNode*) = win 0x26a850, imac 0x2c3fe0, m1 0x268044, ios 0x13ac1c;

    bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x268e30, m1 0x2661e4, imac 0x2c1fb0;
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
}

[[link(android)]]
class GJFriendRequest : cocos2d::CCNode {
    // virtual ~GJFriendRequest();

    static GJFriendRequest* create();
    static GJFriendRequest* create(cocos2d::CCDictionary*);

    virtual bool init() = m1 0x4a2484, imac 0x549d80, ios 0xb34b8;

    int m_requestID;
    int m_accountID;
    int m_34;
    gd::string m_message;
    gd::string m_uploadDate;
    bool m_is36;
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

    static GJGameLevel* create() = win 0x169b40, imac 0x5168e0, m1 0x473d34;
    static GJGameLevel* create(cocos2d::CCDictionary*, bool) = win 0x1683e0, m1 0x4760f0, imac 0x519030;
    static gd::string lengthKeyToString(int key) = win 0x16a0d0, imac 0x5457e0, m1 0x49e59c;

    virtual void encodeWithCoder(DS_Dictionary*) = win 0x16c090, imac 0x5482f0, m1 0x4a0bd0, ios 0xb2118;
    virtual bool canEncode() = m1 0x4a1674, imac 0x548e40, ios 0xb2bb0;
    virtual bool init() = win 0x169ba0, imac 0x544f30, m1 0x49de78, ios 0xaf984;

    bool areCoinsVerified();
    void copyLevelInfo(GJGameLevel*) = win 0x16aaa0;
    TodoReturn createWithCoder(DS_Dictionary*) = m1 0x49fcbc;
    void dataLoaded(DS_Dictionary*) = win 0x16b150, imac 0x5472c0, m1 0x49fd40;
    int demonIconForDifficulty(DemonDifficultyType) = imac 0x548f50, m1 0x4a1794;
    TodoReturn generateSettingsString();
    gd::string getAudioFileName() = win 0x16a3f0, imac 0x545b00, m1 0x49e8d8;
    int getAverageDifficulty() = win 0x16a230, imac 0x545880, m1 0x49e674;
    char const* getCoinKey(int coinNumber) = win 0x16a2a0, imac 0x535eb0, m1 0x48f96c;
    TodoReturn getLastBuildPageForTab(int);
    const char* getLengthKey(int length, bool platformer) = imac 0x5457a0, m1 0x49e560;
    TodoReturn getListSnapshot();
    int getNormalPercent();
    TodoReturn getSongName();
    gd::string getUnpackedLevelDescription() = win 0x16d150, m1 0x4a16d8, imac 0x548eb0;
    void handleStatsConflict(GJGameLevel*) = win 0x16cc80, imac 0x526870, m1 0x482228;
    inline bool isPlatformer() {
        return m_levelLength == 5;
    }
    TodoReturn levelWasAltered() = imac 0x545150;
    TodoReturn levelWasSubmitted();
    TodoReturn parseSettingsString(gd::string);
    void saveNewScore(int, int);
    void savePercentage(int percent, bool isPracticeMode, int clicks, int attempts, bool isChkValid) = win 0x169db0, m1 0x49e170, imac 0x545320;
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

    static GJGameLoadingLayer* create(GJGameLevel* level, bool editor) = imac 0x1546e0;
    static GJGameLoadingLayer* transitionToLoadingLayer(GJGameLevel* level, bool editor) = win 0x242890;

    virtual void onEnter() = m1 0x1286f4, imac 0x154bb0, ios 0x20b7f4;
    virtual void onEnterTransitionDidFinish() = m1 0x1286f0, imac 0x154ba0, ios 0x20b7f0;

    void gameLayerDidUnload();
    bool init(GJGameLevel* level, bool editor) = imac 0x154a40;
    void loadLevel() = win 0x242a80, imac 0x154b40, m1 0x12868c;

    GJGameLevel* m_level;
    bool m_editor;
}

[[link(android), depends(EventTriggerInstance), depends(SongChannelState), depends(DynamicObjectAction), depends(AdvancedFollowInstance), depends(EnterEffectInstance), depends(GameObjectPhysics), depends(GJValueTween), depends(SFXTriggerInstance), depends(SFXTriggerState), depends(SongTriggerState), depends(EnterEffectAnimValue)]]
class GJGameState {
    // ~GJGameState();
    // GJGameState();

    TodoReturn controlTweenAction(int, int, GJActionCommand);
    TodoReturn getGameObjectPhysics(GameObject*);
    TodoReturn processStateTriggers() = win 0x200290;
    void stopTweenAction(int) = win 0x2444e0, m1 0x4d160;
    TodoReturn tweenValue(float, float, int, float, int, float, int, int) = win 0x200140;
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
    static GJGarageLayer* node() = win inline, m1 0x2e93a8 {
        auto ret = new GJGarageLayer();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCScene* scene() = win 0x26b5b0, imac 0x3559f0, m1 0x2e9364;

    virtual bool init() = win 0x26b770, m1 0x2e94a8, imac 0x355ba0, ios 0x301df8;
    virtual void keyBackClicked() = win 0x2718f0, imac 0x35c850, m1 0x2efc68, ios 0x3071f4;
    virtual void textInputOpened(CCTextInputNode*) = win 0x26d390, imac 0x3590e0, m1 0x2ec848, ios 0x304944;
    virtual void textInputClosed(CCTextInputNode*) = win 0x26d580, imac 0x359210, m1 0x2ec9a0, ios 0x304a74;
    virtual void textChanged(CCTextInputNode*) = win 0xc3060, imac 0x3593d0, m1 0x2ecb88, ios 0x304bdc;
    virtual void listButtonBarSwitchedPage(ListButtonBar*, int) = win 0xc3110, m1 0x2eecb4, imac 0x35b7f0, ios 0x306730;
    virtual void showUnlockPopup(int, UnlockType) = win 0x270320, imac 0x35b980, m1 0x2eee0c, ios 0x306818;
    virtual void updateRate() = win 0x270ff0, imac 0x35c600, m1 0x2efa54, ios 0x30706c;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x270bc0, imac 0x35c390, m1 0x2ef81c, ios 0x306e34;
    virtual void dialogClosed(DialogLayer*) = win 0x270e20, imac 0x35c4a0, m1 0x2ef918, ios 0x306f30;
    virtual void playerColorChanged() = win 0x270170, imac 0x35b6f0, m1 0x2eebd4, ios 0x306698;
    virtual void rewardedVideoFinished() = win 0x26d380, m1 0x2ec838, imac 0x3590c0, ios 0x304934;

    gd::string achievementForUnlock(int, UnlockType);
    gd::string descriptionForUnlock(int, UnlockType) = win 0x270a30;
    cocos2d::CCArray* getItems(IconType) = win 0x26ee50, m1 0x2edb68;
    cocos2d::CCArray* getItems(int, int, IconType, int) = imac 0x35a440;
    gd::string getLockFrame(int, UnlockType) = m1 0x2eeb40;
    void onArrow(cocos2d::CCObject* sender) = win 0x26e590, imac 0x359460, m1 0x2ecc3c;
    void onBack(cocos2d::CCObject* sender) = win 0x271750, imac 0x3588c0, m1 0x2ec048;
    void onInfo(cocos2d::CCObject* sender) = win 0x26d190, m1 0x2ec28c, imac 0x358b10;
    void onNavigate(cocos2d::CCObject* sender) = win 0x26e690, imac 0x359d50, m1 0x2ed4c8;
    void onPaint(cocos2d::CCObject* sender) = win 0x271570;
    void onRewardedVideo(cocos2d::CCObject* sender);
    void onSelect(cocos2d::CCObject* sender) = win 0x26f890, imac 0x35a860, m1 0x2edf90;
    void onSelectTab(cocos2d::CCObject* sender) = win 0x26e6c0, imac 0x359430, m1 0x2ecc08;
    void onShards(cocos2d::CCObject* sender) = win 0x271420, m1 0x2ec208, imac 0x358a80;
    void onShop(cocos2d::CCObject* sender) = win 0x2716f0, m1 0x2ec1a8, imac 0x358a20;
    void onSpecial(cocos2d::CCObject* sender);
    void onToggleItem(cocos2d::CCObject* sender) = win 0x26ff30, imac 0x35b0c0;
    void playRainbowEffect() = win 0x271230, imac 0x35b4b0, m1 0x2ee9a4;
    void playShadowEffect();
    void selectTab(IconType) = win 0x26e6f0, imac 0x3595c0, m1 0x2ecd78;
    void setupIconSelect() = win 0x26d930, m1 0x2eb53c, imac 0x357db0;
    void setupPage(int, IconType) = win 0x26e7b0, imac 0x359700, m1 0x2ecea8;
    void setupSpecialPage() = win 0x26f1e0, imac 0x359d80, m1 0x2ed500;
    void showUnlockPopupNew(int, UnlockType);
    gd::string titleForUnlock(int, UnlockType);
    void toggleGlow();
    void updatePlayerColors() = win 0x2701a0, m1 0x2eaef4, imac 0x3577a0;
    void updatePlayerName(char const*);

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

    virtual bool init() = imac 0x154550, m1 0x128178, ios 0x20b450;
}

[[link(android)]]
class GJGroundLayer : cocos2d::CCLayer {
    // virtual ~GJGroundLayer();

    static GJGroundLayer* create(int, int) = win 0x276870, imac 0x5d2760;

    virtual void draw() = m1 0x50745c, imac 0x5d38a0, ios 0x30c08 {}
    virtual void showGround() = win 0x2774c0, m1 0x507250, imac 0x5d36c0, ios 0x30aa0;
    virtual TodoReturn fadeInGround(float) = win 0x2774d0, imac 0x5d36d0, m1 0x50725c, ios 0x30aac;
    virtual TodoReturn fadeOutGround(float) = win 0x2776c0, m1 0x507430, imac 0x5d3870, ios 0x30c00;

    void createLine(int) = win 0x277120, m1 0x506958, imac 0x5d2d50;
    TodoReturn deactivateGround();
    TodoReturn fadeInFinished();
    TodoReturn getGroundY();
    TodoReturn hideShadows();
    bool init(int, int) = win 0x2768f0, imac 0x5d2870, m1 0x506450;
    void loadGroundSprites(int, bool) = win 0x276e60;
    void positionGround(float) = imac 0x5d38b0;
    TodoReturn scaleGround(float) = win 0x277310, imac 0x5d3350;
    void toggleVisible01(bool);
    void toggleVisible02(bool) = m1 0x506e20;
    void updateGround01Color(cocos2d::ccColor3B);
    void updateGround02Color(cocos2d::ccColor3B);
    TodoReturn updateGroundPos(cocos2d::CCPoint);
    TodoReturn updateGroundWidth(bool);
    void updateLineBlend(bool) = imac 0x5d3670, m1 0x507214;
    TodoReturn updateShadows() = win 0x277550, imac 0x5d35e0;
    TodoReturn updateShadowXPos(float, float) = win 0x2775f0, imac 0x5d37b0;
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

    static GJItemIcon* create(UnlockType p0, int p1, cocos2d::ccColor3B p2, cocos2d::ccColor3B p3, bool p4, bool p5, bool p6, cocos2d::ccColor3B p7) = win inline, imac 0x35d940, m1 0x2f0ba0 {
        auto ret = new GJItemIcon();
        if (ret->init(p0, p1, p2, p3, p4, p5, p6, p7)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
         }
    static GJItemIcon* createBrowserItem(UnlockType unlockType, int itemID) = win 0x273070, imac 0x35a800, m1 0x2edf50;
    static GJItemIcon* createStoreItem(UnlockType, int, bool, cocos2d::ccColor3B) = win 0x272f40, imac 0x35d910, m1 0x2f0b84;
    static float scaleForType(UnlockType) = win 0x273d90, imac 0x35a830, m1 0x2edf70;
    static cocos2d::ccColor3B unlockedColorForType(int) = imac 0x35e100, m1 0x2f130c;

    virtual void setOpacity(unsigned char) = win 0x2738a0, imac 0x35dfc0, m1 0x2f11e0, ios 0x308148;
    void changeToLockedState(float) = win 0x273cb0, imac 0x35af50, m1 0x2ee474;
    void darkenStoreItem(cocos2d::ccColor3B) = win 0x2739c0, imac 0x35e160, m1 0x2f1374;
    void darkenStoreItem(ShopType) = win 0x273940;
    bool init(UnlockType, int, cocos2d::ccColor3B, cocos2d::ccColor3B, bool, bool, bool, cocos2d::ccColor3B) = win 0x273190, m1 0x2f0cb0, imac 0x35da60;
    void toggleEnabledState(bool) = win 0x273bf0;

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

    static GJLevelList* create() = win 0x173760, imac 0x517750, m1 0x474a98;
    static GJLevelList* create(cocos2d::CCDictionary*) = win 0x172e70, imac 0x51bac0, m1 0x478394;

    virtual void encodeWithCoder(DS_Dictionary*) = win 0x174ff0, imac 0x54d230, m1 0x4a5298, ios 0xb5668;
    virtual bool canEncode() = m1 0x4a54d0, imac 0x54d4a0, ios 0xb58a0;
    virtual bool init() = m1 0x4a3784, imac 0x54b420, ios 0xb42e0;

    void addLevelToList(GJGameLevel* level) = win 0x173ee0;
    TodoReturn completedLevels() = imac 0x54ca00, m1 0x4a4a48;
    TodoReturn createWithCoder(DS_Dictionary*) = m1 0x4a4f38;
    void dataLoaded(DS_Dictionary*) = win 0x174cd0, imac 0x54cef0, m1 0x4a4f68;
    TodoReturn duplicateListLevels(GJLevelList*);
    TodoReturn frameForListDifficulty(int, DifficultyIconType) = imac 0x54d4b0, m1 0x4a54d8;
    cocos2d::CCArray* getListLevelsArray(cocos2d::CCArray*) = win 0x174160;
    gd::string getUnpackedDescription() = win 0x173b80, imac 0x54b670, m1 0x4a39d0;
    void handleStatsConflict(GJLevelList*) = imac 0x54b4a0, m1 0x4a37fc;
    bool hasMatchingLevels(GJLevelList*) = win 0x173970, imac 0x54b4c0, m1 0x4a3814;
    TodoReturn orderForLevel(int);
    TodoReturn parseListLevels(gd::string) = win 0x173c40, imac 0x52ca10, m1 0x487a60;
    TodoReturn removeLevelFromList(int);
    void reorderLevel(int levelID, int newPosition) = win 0x174070;
    TodoReturn reorderLevelStep(int, bool);
    void showListInfo() = win 0x174900, imac 0x54ca50, m1 0x4a4aac;
    TodoReturn totalLevels() = imac 0x54c9e0, m1 0x4a4a38;
    TodoReturn updateLevelsString();

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

    virtual bool init() = m1 0x1f2e24, imac 0x243de0, ios 0x11405c;
    virtual void draw() = imac 0x243e30, m1 0x1f2e6c, ios 0x1140a4;

    void loadFromScore(GJUserScore*) = win 0xb93d0, imac 0x238d60, m1 0x1e8cec;
    void onViewProfile(cocos2d::CCObject* sender);
    void updateBGColor(int);
}

[[link(android)]]
class GJListLayer : cocos2d::CCLayerColor {
    // virtual ~GJListLayer();

    static GJListLayer* create(BoomListView*, char const*, cocos2d::ccColor4B, float, float, int) = win 0x277e70, imac 0x5b9e00, m1 0x4eff60;

    bool init(BoomListView*, char const*, cocos2d::ccColor4B, float, float, int) = win 0x277fa0, imac 0x5b9f10, m1 0x4f0054;

    BoomListView* m_listView;
}

[[link(android)]]
class GJLocalLevelScoreCell : TableViewCell {
    // virtual ~GJLocalLevelScoreCell();
    GJLocalLevelScoreCell(char const*, float, float);

    virtual bool init() = win 0x3c7f0, m1 0x1f2cec, imac 0x243bf0, ios 0x113f6c;
    virtual void draw() = win 0xad710, imac 0x243c10, m1 0x1f2cf8, ios 0x113f78;

    void loadFromScore(GJLocalScore*) = win 0xb8fd0, imac 0x239740;
    void updateBGColor(int);
}

[[link(android)]]
class GJLocalScore : cocos2d::CCObject {
    // virtual ~GJLocalScore();

    static GJLocalScore* create(int, int) = imac 0x5496e0;

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
    static GJMapPack* create(cocos2d::CCDictionary*) = win 0x16d210, m1 0x478e24;

    static GJMapPack* create() = win inline, m1 0x4a1910, imac 0x5490c0 {
        auto ret = new GJMapPack();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual bool init() = win 0x16dd70, imac 0x549550, m1 0x4a1d4c, ios 0xb2fdc;

    int completedMaps() = win 0x16e080, imac 0x5495d0, m1 0x4a1dac;
    bool hasCompletedMapPack() = win inline, imac 0x549680, m1 0x4a1e70 {
        auto total = this->totalMaps();
        if (total > 0) return this->completedMaps() >= total;
        else return 0;
    }
    void parsePackColors(gd::string, gd::string) = win 0x16ddd0, m1 0x4a1ac8;
    void parsePackLevels(gd::string) = imac 0x549180, m1 0x4a19b4;
    int totalMaps() = win inline {
        if (this->m_levels) {
            return this->m_levels->count();
        }

        return 0;
    }

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

    virtual bool init() = win 0xbb620, m1 0x1f4e7c, imac 0x2464b0, ios 0x11530c;
    virtual void draw() = imac 0x2467c0, m1 0x1f5164, ios 0x115538;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xbd440, imac 0x246890, m1 0x1f5210, ios 0x1155e4;
    virtual void uploadActionFinished(int, int) = win 0xbd5e0, imac 0x246a20, m1 0x1f5374, ios 0x1156cc;
    virtual void uploadActionFailed(int, int) = win 0xbd760, m1 0x1f5568, imac 0x246c10, ios 0x1157d0;
    virtual void onClosePopup(UploadActionPopup*) = imac 0x246d80, m1 0x1f56d0, ios 0x115868;

    void loadFromMessage(GJUserMessage*) = win 0xbc7e0, m1 0x1ea9f8, imac 0x23aa30;
    TodoReturn markAsRead();
    void onDeleteMessage(cocos2d::CCObject* sender);
    void onToggle(cocos2d::CCObject* sender);
    void onViewMessage(cocos2d::CCObject* sender);
    void onViewProfile(cocos2d::CCObject* sender);
    void updateBGColor(int);
    TodoReturn updateToggle();

    GJUserMessage* m_message;
    void* m_unk;
    CCMenuItemToggler* m_toggler;
}

[[link(android)]]
class GJMessagePopup : FLAlertLayer, UploadActionDelegate, UploadPopupDelegate, FLAlertLayerProtocol, DownloadMessageDelegate {
    // virtual ~GJMessagePopup();

    static GJMessagePopup* create(GJUserMessage*);

    virtual void keyBackClicked() = m1 0x23ce50, imac 0x294c90, ios 0x2db374;
    virtual void downloadMessageFinished(GJUserMessage*) = win 0x2914b0, imac 0x294d00, m1 0x23cecc, ios 0x2db3f0;
    virtual void downloadMessageFailed(int) = win 0x291500, imac 0x294dc0, m1 0x23cfa4, ios 0x2db464;
    virtual void uploadActionFinished(int, int) = win 0x291540, imac 0x294e60, m1 0x23d05c, ios 0x2db51c;
    virtual void uploadActionFailed(int, int) = win 0x2916d0, imac 0x295030, m1 0x23d250, ios 0x2db640;
    virtual void onClosePopup(UploadActionPopup*) = win 0x2917a0, imac 0x295180, m1 0x23d3c0, ios 0x2db6dc;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x291820, imac 0x295280, m1 0x23d4e4, ios 0x2db774;

    void blockUser();
    bool init(GJUserMessage*);
    void loadFromGJMessage(GJUserMessage*) = win 0x290760, m1 0x23c0a8, imac 0x293e60;
    void onBlock(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    void onRemove(cocos2d::CCObject* sender);
    void onReply(cocos2d::CCObject* sender);
}

[[link(android)]]
class GJMGLayer : cocos2d::CCLayer {
    // virtual ~GJMGLayer();

    static GJMGLayer* create(int) = imac 0x5d3a40;

    virtual void draw() = m1 0x508038, imac 0x5d4520, ios 0x31548 {}
    virtual void showGround() = m1 0x508008, imac 0x5d44f0, ios 0x3153c;

    TodoReturn deactivateGround();
    TodoReturn defaultYOffsetForBG2(int);
    bool init(int);
    void loadGroundSprites(int, bool);
    TodoReturn scaleGround(float);
    TodoReturn toggleVisible01(bool);
    TodoReturn toggleVisible02(bool);
    TodoReturn updateGroundColor(cocos2d::ccColor3B, bool);
    TodoReturn updateGroundOpacity(unsigned char, bool) = imac 0x5d4300;
    TodoReturn updateGroundPos(cocos2d::CCPoint);
    TodoReturn updateGroundWidth(bool);
    void updateMG01Blend(bool);
    void updateMG02Blend(bool);
}

[[link(android)]]
class GJMoreGamesLayer : GJDropDownLayer {
    // virtual ~GJMoreGamesLayer();
    // GJMoreGamesLayer();

    static GJMoreGamesLayer* create() = win 0x278610, m1 0x69376c, imac 0x77eca0;

    virtual void customSetup() = win 0x278cf0, imac 0x77f500, m1 0x693ed4, ios 0x6911c;

    cocos2d::CCArray* getMoreGamesList() = win 0x278950, m1 0x693ac8, imac 0x77f0f0;

    cocos2d::CCArray* m_moreGamesList;
}

[[link(android)]]
class GJMPDelegate {
    virtual void joinLobbyFinished(int);
    virtual void joinLobbyFailed(int, GJMPErrorCode);
    virtual void didUploadMPComment(int);
    virtual void updateComments();
}

[[link(android)]]
class GJMultiplayerManager : cocos2d::CCNode {
    // virtual ~GJMultiplayerManager();

    static GJMultiplayerManager* sharedState() = win 0x27acc0, imac 0x642870, m1 0x56b350;

    virtual bool init() = m1 0x56c9a8, imac 0x643ff0, ios 0x1cfeac;

    void addComment(gd::string, int);
    void addDLToActive(char const* tag, cocos2d::CCObject* obj);
    void addDLToActive(char const* tag);
    TodoReturn createAndAddComment(gd::string, int) = m1 0x56e2b4, imac 0x645ae0;
    void dataLoaded(DS_Dictionary*);
    void encodeDataTo(DS_Dictionary*);
    TodoReturn exitLobby(int) = m1 0x56d7f8, imac 0x644e40;
    void firstSetup();
    TodoReturn getBasePostString() = m1 0x56d0b4, imac 0x644700;
    cocos2d::CCObject* getDLObject(char const*);
    TodoReturn getLastCommentIDForGame(int);
    void handleIt(bool, gd::string, gd::string, GJHttpType);
    void handleItDelayed(bool, gd::string, gd::string, GJHttpType);
    void handleItND(cocos2d::CCNode*, void*);
    bool isDLActive(char const* tag);
    TodoReturn joinLobby(int) = m1 0x56cd54, imac 0x644380;
    void onExitLobbyCompleted(gd::string, gd::string);
    void onJoinLobbyCompleted(gd::string, gd::string);
    void onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
    void onUploadCommentCompleted(gd::string, gd::string);
    void ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
    void removeDLFromActive(char const*);
    void uploadComment(gd::string, int) = m1 0x56dad4, imac 0x645130;
}

[[link(android)]]
class GJObjectDecoder : cocos2d::CCNode {
    // virtual ~GJObjectDecoder();

    static GJObjectDecoder* sharedDecoder() = m1 0x62d42c;

    virtual bool init() = m1 0x62d4d4, imac 0x70e560, ios 0x217784;
    virtual cocos2d::CCObject* getDecodedObject(int, DS_Dictionary*) = win 0x27c730, imac 0x70e570, m1 0x62d4d8, ios 0x217788;
}

[[link(android)]]
class GJOnlineRewardDelegate {
    virtual void onlineRewardStatusFinished(gd::string) {}
    virtual void onlineRewardStatusFailed() {}
}

[[link(android)]]
class GJOptionsLayer : SetupTriggerPopup {
    // virtual ~GJOptionsLayer();
    GJOptionsLayer() = win 0x285940;

    static GJOptionsLayer* create(int) = imac 0x289c00;

    virtual void setupOptions() = m1 0x2333c8, imac 0x28a640, ios 0x2d3b84 {}
    virtual void didToggleGV(gd::string) = m1 0x8fb0, imac 0x7150, ios 0xd590 {}
    virtual void didToggle(int) = m1 0x8fb0, imac 0x7150, ios 0xd590 {}

    void addGVToggle(char const*, char const*, char const*) = win 0x288470, imac 0x28a650, m1 0x2333cc;
    void addToggle(char const* p0, int p1, bool p2, char const* p3) = win inline, m1 0x2339d0, imac 0x28ac90 {
        addToggleInternal(p0, p1, p2, p3);
    }
    void addToggleInternal(char const*, int, bool, char const*) = win 0x2885b0, m1 0x233518, imac 0x28a780;
    int countForPage(int);
    void goToPage(int);
    void incrementCountForPage(int) = win 0x288b80;
    const char* infoKey(int);
    bool init(int) = win 0x288130, imac 0x289e50, m1 0x232c90;
    cocos2d::CCLayer* layerForPage(int) = m1 0x233acc, imac 0x28ada0, win 0x288e10;
    const char* layerKey(int);
    cocos2d::CCPoint nextPosition(int) = imac 0x28aca0, m1 0x2339d4;
    const char* objectKey(int);
    cocos2d::CCArray* objectsForPage(int);
    void offsetToNextPage() = win inline, imac 0x28a610, m1 0x2333a4 {
        m_toggleCount += m_togglesPerPage - m_toggleCount % m_togglesPerPage;
    }
    void onInfo(cocos2d::CCObject* sender);
    void onNextPage(cocos2d::CCObject* sender);
    void onPrevPage(cocos2d::CCObject* sender);
    void onToggle(cocos2d::CCObject* sender) = win 0x2893e0, imac 0x28afa0, m1 0x233cb8;
    const char* pageKey(int);

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

    static GJPathPage* create(int, GJPathsLayer*) = win 0x27db80, imac 0x2ea7c0, m1 0x284d30;

    virtual void registerWithTouchDispatcher() = m1 0x288950, imac 0x2ee860, ios 0x3b3c68;
    virtual void keyBackClicked() = win 0x281710, m1 0x2887ec, imac 0x2ee720, ios 0x3b3c5c;
    virtual void show() = m1 0x288988, imac 0x2ee8a0, ios 0x3b3ca0;
    virtual void didPurchaseItem(GJStoreItem*) = win 0x27fb40, m1 0x286f08, imac 0x2ecb40, ios 0x3b2b2c;

    bool init(int, GJPathsLayer*) = m1 0x285220, imac 0x2eada0;
    void onActivatePath(cocos2d::CCObject* sender) = win 0x27f8e0, imac 0x2ecb10, m1 0x286ee0;
    void onBack(cocos2d::CCObject* sender) = win 0x281670;
    void onIconInfo(cocos2d::CCObject* sender) = win 0x27f950;
    void onUnlock(cocos2d::CCObject* sender) = imac 0x2eca20, m1 0x286dd4;
    void playUnlockAnimation() = win 0x280400, m1 0x286f0c, imac 0x2ecb50;
    void showCantAffordMessage(GJStoreItem*) = m1 0x2874bc, imac 0x2ed200;
    void unlockAnimationFinished() = imac 0x2edb90, m1 0x287dd0;
    void unlockAnimationStep2() = win 0x280a50, m1 0x287b88, imac 0x2ed8b0;
    void unlockAnimationStep3() = win 0x280cd0, imac 0x2edcf0, m1 0x287f2c;

    GJPathsLayer* m_pathsLayer;
    int m_pathNumber;
    bool m_animationPlaying;
    int m_dialogIndex;
}

[[link(android)]]
class GJPathRewardPopup : FLAlertLayer {
    // virtual ~GJPathRewardPopup();

    static GJPathRewardPopup* create(int) = imac 0x2ea940;

    virtual void keyBackClicked() = m1 0x289388, imac 0x2ef260, ios 0x3b45c0 {}

    void closePopup();
    bool init(int) = win 0x2825f0, imac 0x2eec40, m1 0x288d28;
    void onClaim(cocos2d::CCObject* sender) = m1 0x2891c4;

    int m_pathNumber;
}

[[link(android)]]
class GJPathsLayer : FLAlertLayer, FLAlertLayerProtocol {
    // virtual ~GJPathsLayer();

    static GJPathsLayer* create() = win 0x27d1d0, imac 0x2e9ed0;
    static gd::string nameForPath(int) = win 0x27cf60, imac 0x2e9d30, m1 0x2842bc;

    virtual bool init() = win 0x27d2d0, m1 0x28456c, imac 0x2ea020, ios 0x3b07ac;
    virtual void onExit() = win 0x27dac0, m1 0x284c94, imac 0x2ea730, ios 0x3b0e34;
    virtual void registerWithTouchDispatcher() = m1 0x285028, imac 0x2eab50, ios 0x3b1024;
    virtual void keyBackClicked() = win 0x27db20, m1 0x284f58, imac 0x2eaa80, ios 0x3b1018;
    virtual void show() = m1 0x285060, imac 0x2eab90, ios 0x3b105c;

    void darkenButtons(bool) = imac 0x2ea780, m1 0x284ce4;
    void onClose(cocos2d::CCObject* sender) = win 0x27dac0;
    void onPath(cocos2d::CCObject* sender) = imac 0x2ea6b0, m1 0x284c04;

    cocos2d::CCSprite* m_closeSprite;
    bool m_running;
}

[[link(android)]]
class GJPathSprite : CCSpriteCOpacity {
    // virtual ~GJPathSprite();

    static GJPathSprite* create(int) = win 0x281720, m1 0x284ad4;

    void addRankLabel(int) = m1 0x288c2c;
    void addShardSprite() = win 0x281d90, imac 0x2ee610, m1 0x2886c0;
    void changeToLockedArt() = win 0x281ad0, imac 0x2ed5b0, m1 0x287840;
    bool init(int) = imac 0x2eea20;
    void updateState() = m1 0x284b80;

    int m_pathNumber;
}

[[link(android)]]
class GJPFollowCommandLayer : SetupTriggerPopup {
    // virtual ~GJPFollowCommandLayer();

    static GJPFollowCommandLayer* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void determineStartValues() = imac 0x353270, m1 0x2e7324, ios 0x16384c;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x354000, m1 0x2e7e78, ios 0x16412c;
    virtual void textChanged(CCTextInputNode*) = win 0x284d20, imac 0x353890, m1 0x2e78a0, ios 0x163d48;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x2e54c8, imac 0x351320;
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
}

[[link(android)]]
class GJPromoPopup : FLAlertLayer {
    // virtual ~GJPromoPopup();

    static GJPromoPopup* create(gd::string);

    virtual void onExit() = win 0x29d890, m1 0x249ff4, imac 0x2a3260, ios 0x2e515c;
    virtual void registerWithTouchDispatcher() = m1 0x24a104, imac 0x2a3370, ios 0x2e519c;
    virtual void keyBackClicked() = m1 0x24a034, imac 0x2a32a0, ios 0x2e5190;
    virtual void show() = m1 0x24a13c, imac 0x2a33b0, ios 0x2e51d4;

    bool init(gd::string) = win 0x29d590, imac 0x2a2f80;
    void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class GJPurchaseDelegate {
    virtual void didPurchaseItem(GJStoreItem*);
}

[[link(android)]]
class GJRequestCell : TableViewCell, FLAlertLayerProtocol, UploadPopupDelegate, UploadActionDelegate {
    // virtual ~GJRequestCell();
    GJRequestCell(char const*, float, float);

    virtual bool init() = m1 0x1f4348, imac 0x2456f0, ios 0x114c30;
    virtual void draw() = imac 0x245a00, m1 0x1f4624, ios 0x114e74;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xbc1f0, imac 0x245ad0, m1 0x1f46d0, ios 0x114f20;
    virtual void uploadActionFinished(int, int) = win 0xbc3a0, imac 0x245ca0, m1 0x1f485c, ios 0x115014;
    virtual void uploadActionFailed(int, int) = win 0xbc580, imac 0x245ec0, m1 0x1f4a6c, ios 0x115134;
    virtual void onClosePopup(UploadActionPopup*) = imac 0x245fd0, m1 0x1f4b44, ios 0x1151e8;

    void loadFromScore(GJUserScore*) = win 0xbb640, m1 0x1ea280, imac 0x23a250;
    void markAsRead() = win 0xbbf50, m1 0x1f4594, imac 0x245960; // inlined on macos
    void onDeleteRequest(cocos2d::CCObject* sender) = win 0xbc030, m1 0x1f4470, imac 0x245830;
    void onToggle(cocos2d::CCObject* sender);
    void onViewFriendRequest(cocos2d::CCObject* sender) = win 0xbbea0, m1 0x1f4398, imac 0x245740;
    void onViewProfile(cocos2d::CCObject* sender);
    TodoReturn updateBGColor(int);
    TodoReturn updateToggle();

    GJUserScore* m_score;
    UploadActionPopup* m_popup;
    CCMenuItemToggler* m_toggler;
}

[[link(android)]]
class GJRewardDelegate {
    virtual void rewardsStatusFinished(int);
    virtual void rewardsStatusFailed();
}

[[link(android)]]
class GJRewardItem : cocos2d::CCObject {
    // virtual ~GJRewardItem();

    static GJRewardItem* create() = win 0x1f0980, imac 0x8ea60, m1 0x821c4;
    static GJRewardItem* create(int chestID, int timeRemaining, gd::string) = win 0x1f0cc0;
    static GJRewardItem* createSpecial(GJRewardType, int, int, SpecialRewardItem, int, SpecialRewardItem, int, int, int) = win 0x1f0ad0, imac 0x774e0, m1 0x6add0;
    static GJRewardItem* createWithCoder(DS_Dictionary* dict) = win inline, imac 0x8ed80, m1 0x824d0 {
        auto ret = create();
        ret->dataLoaded(dict);
        return ret;
    }
    static GJRewardItem* createWithObject(GJRewardType, GJRewardObject*) = win 0x1f09c0, imac 0x8be90, m1 0x7fad0;
    static GJRewardItem* createWithObjects(GJRewardType, cocos2d::CCArray*) = win 0x1f0a50, imac 0x71cf0, m1 0x65720;
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
    static SpecialRewardItem getRandomNonMaxShardType() = win inline, m1 0x67cb0 {
        auto type = getRandomShardType();
        for (int i = 10; i > 0; i--) {
            if (GameStatsManager::sharedState()->getStat(rewardItemToStat(type).c_str()) < 100) return type;
            type = getNextShardType(type);
        }
        return (SpecialRewardItem)0;
    }
    static SpecialRewardItem getRandomShardType() = win inline, m1 0x82470 {
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
    static bool isShardType(SpecialRewardItem type) = win inline, imac 0x72720, m1 0x6610c {
        return type == SpecialRewardItem::FireShard || type == SpecialRewardItem::IceShard || type == SpecialRewardItem::PoisonShard
            || type == SpecialRewardItem::ShadowShard || type == SpecialRewardItem::LavaShard || type == SpecialRewardItem::EarthShard
            || type == SpecialRewardItem::BloodShard || type == SpecialRewardItem::MetalShard || type == SpecialRewardItem::LightShard
            || type == SpecialRewardItem::SoulShard;
    }
    static gd::string rewardItemToStat(SpecialRewardItem) = win 0x1f0ff0;


    virtual void encodeWithCoder(DS_Dictionary*) = win 0x1f1250, imac 0x8ee90, m1 0x82604, ios 0x3401b0;
    virtual bool canEncode() = win inline, m1 0x82670, imac 0x8eef0, ios 0x34021c {
        return true;
    }

    void dataLoaded(DS_Dictionary* dict) = win inline {
        m_chestID = dict->getIntegerForKey("1");
        m_rewardType = (GJRewardType)dict->getIntegerForKey("2");
        auto rewardObjects = dict->getArrayForKey("3", false);
        CC_SAFE_RETAIN(rewardObjects);
        CC_SAFE_RELEASE(m_rewardObjects);
        m_rewardObjects = rewardObjects;
    }
    int getRewardCount(SpecialRewardItem type) = win inline, imac 0x769d0, m1 0x6a208 {
        if (!m_rewardObjects) return 0;

        int count = 0;
        for (int i = 0; i < m_rewardObjects->count(); i++) {
            auto obj = static_cast<GJRewardObject*>(m_rewardObjects->objectAtIndex(i));
            if (obj->m_specialRewardItem == type) count += obj->m_total;
        }

        return count;
    }
    GJRewardObject* getRewardObjectForType(SpecialRewardItem type) = win inline, imac 0x72840, m1 0x66274 {
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
    bool init(int chestID, int timeRemaining, gd::string) = win 0x1f0d90, imac 0x8ea90, m1 0x821f4;

    int m_chestID;
    int m_timeRemaining;
    GJRewardType m_rewardType;
    cocos2d::CCArray* m_rewardObjects;
    bool m_unk;
}

[[link(android)]]
class GJRewardObject : cocos2d::CCObject {
    static GJRewardObject* create(SpecialRewardItem, int, int) = win 0x1f0880, imac 0x71c80, m1 0x656b0;
    // virtual ~GJRewardObject();

    static GJRewardObject* create() = win inline, m1 0x81edc, imac 0x8e760 {
        auto ret = create(SpecialRewardItem::FireShard, 0, 0); // the first param is meant to be 0
        return ret;
    }
    static GJRewardObject* createItemUnlock(UnlockType, int) = win 0x1f0810, imac 0x71c10, m1 0x65638;

    static GJRewardObject* createWithCoder(DS_Dictionary* dict) = win inline, imac 0x8e800, m1 0x81f64 {
        auto ret = create();
        ret->dataLoaded(dict);
        return ret;
    }
    virtual void encodeWithCoder(DS_Dictionary*) = win 0x1f08f0, imac 0x8e910, m1 0x82084, ios 0x33fdd0;
    virtual bool canEncode() = win inline, m1 0x82104, imac 0x8e990, ios 0x33fe50 {
        return true;
    }
    void dataLoaded(DS_Dictionary* dict) = win inline {
        m_specialRewardItem = (SpecialRewardItem)dict->getIntegerForKey("1");
        m_itemID = dict->getIntegerForKey("2");
        m_total = dict->getIntegerForKey("3");
        m_unlockType = (UnlockType)dict->getIntegerForKey("4");
    }
    bool init(SpecialRewardItem specialRewardItem, int total, int itemID) = win inline, imac 0x8e7c0, m1 0x81f38 {
        this->m_specialRewardItem = specialRewardItem;
        this->m_total = total;
        this->m_itemID = itemID;
        return true;
    }
    bool isSpecialType() = win inline, m1 0x81f48 {
        auto type = m_specialRewardItem;
        return type == SpecialRewardItem::FireShard || type == SpecialRewardItem::IceShard || type == SpecialRewardItem::PoisonShard
            || type == SpecialRewardItem::ShadowShard || type == SpecialRewardItem::LavaShard || type == SpecialRewardItem::BonusKey
            || type == SpecialRewardItem::EarthShard || type == SpecialRewardItem::BloodShard || type == SpecialRewardItem::MetalShard
            || type == SpecialRewardItem::LightShard || type == SpecialRewardItem::SoulShard;
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

    static GJRobotSprite* create(int) = win 0x29efd0, m1 0x4f8c84;

    virtual void setOpacity(unsigned char) = win 0x29fcc0, m1 0x4f9e1c, imac 0x5c4dd0, ios 0x23fe10;
    virtual void hideSecondary() = win 0x2a03b0, m1 0x4f9f00, imac 0x5c4ee0, ios 0x23fef4;

    void hideGlow();
    bool init(int, gd::string) = win 0x29f080, m1 0x4f8e44;
    bool init(int) = imac 0x5c3b50, m1 0x4f8db4;
    void showGlow();
    void updateColor01(cocos2d::ccColor3B) = imac 0x5c4a00;
    void updateColor02(cocos2d::ccColor3B);
    void updateColors() = win 0x29f810, m1 0x4f9af8, imac 0x5c4a20;
    void updateFrame(int) = win 0x29fdc0, imac 0x5c4140, m1 0x4f9378;
    void updateGlowColor(cocos2d::ccColor3B, bool) = imac 0x5c4d50, m1 0x4f9da0;

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

    virtual void determineStartValues() = imac 0x45d0, m1 0x6cc8;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x7988, imac 0x5520;
    virtual void textChanged(CCTextInputNode*) = imac 0x4f80, m1 0x7534;
    virtual void valuePopupClosed(ConfigureValuePopup*, float) = m1 0x7148, imac 0x4af0;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x461c, imac 0x1d60;
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

    static GJRotationControl* create() = win inline, m1 0xd254 {
        auto ret = new GJRotationControl();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual bool init() = win 0x1277e0, m1 0x49058, imac 0x51c10, ios 0x3f27d4;
    virtual void draw() = win 0x127c40, imac 0x52210, m1 0x49620, ios 0x3f2ba8;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x127980, imac 0x51e80, m1 0x492bc, ios 0x3f29dc;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x127a80, imac 0x51fa0, m1 0x493d0, ios 0x3f2adc;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x127c20, imac 0x52100, m1 0x4950c, ios 0x3f2b58;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x49604, imac 0x521d0, ios 0x3f2b8c;

    void finishTouch() = win 0x127900, imac 0xbf40, m1 0xd338;
    void setAngle(float) = imac 0x51d00, m1 0x4914c;
    void updateSliderPosition(cocos2d::CCPoint) = imac 0x51d80, m1 0x491cc;

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

    static GJScaleControl* create() = win inline, imac 0xbfe0, m1 0xd3e0 {
        auto ret = new GJScaleControl();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual bool init() = win 0x127cc0, m1 0x49688, imac 0x52280, ios 0x3f2c10;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x1287b0, imac 0x52930, m1 0x49cc0, ios 0x3f31a4;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x1289c0, imac 0x52b20, m1 0x49e5c, ios 0x3f3330;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x128de0, imac 0x52ff0, m1 0x4a2a0, ios 0x3f3684;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x4a3c8, imac 0x53150, ios 0x3f37ac;

    void finishTouch();
    void loadValues(GameObject*, cocos2d::CCArray*, gd::unordered_map<int, GameObjectEditorState>&) = win 0x128190, imac 0x3f670;
    void onToggleLockScale(cocos2d::CCObject* sender) = win 0x128100;
    float scaleFromValue(float value) = win inline, imac 0x52860, m1 0x49c44 {
        return (m_upperBound - m_lowerBound) * value + m_lowerBound;
    }
    float skewFromValue(float) = imac 0x528a0;
    void sliderChanged(cocos2d::CCObject* sender) = win 0x1287a0, m1 0x49adc, imac 0x526f0;
    void updateLabelX(float value) = win 0x128f20, m1 0x49b0c, imac 0x52740;
    void updateLabelXY(float value) = win 0x129020, m1 0x49bdc, imac 0x52800;
    void updateLabelY(float value) = win 0x128fa0, m1 0x49b74, imac 0x527a0;
    float valueFromScale(float scale) = win inline {
        auto value = (scale - m_lowerBound) / (m_upperBound - m_lowerBound);
        return value < 0 ? 0 : (value > 1 ? 1 : value);
    }
    float valueFromSkew(float);

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

    virtual bool init() = win 0xb3f00, m1 0x1f2910, imac 0x243750, ios 0x113ce4;
    virtual void draw() = imac 0x243a20, m1 0x1f2bc0, ios 0x113e88;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xb8ee0, imac 0x243960, m1 0x1f2af8, ios 0x113e30;

    void loadFromScore(GJUserScore*) = win 0xb7c80, m1 0x1e7b58, imac 0x237bc0;
    void onBan(cocos2d::CCObject* sender);
    void onCheck(cocos2d::CCObject* sender);
    void onMoreLevels(cocos2d::CCObject* sender);
    void onViewProfile(cocos2d::CCObject* sender) = win 0xb8d60, imac 0x243770, m1 0x1f291c;
    TodoReturn updateBGColor(int);

    GJUserScore* m_score;
}

[[link(android)]]
class GJSearchObject : cocos2d::CCNode {
    // virtual ~GJSearchObject();

    static GJSearchObject* create(SearchType searchType, gd::string searchQuery, gd::string difficulty, gd::string length, int page, bool star, bool uncompleted, bool featured, int songID, bool original, bool twoPlayer, bool customSong, bool songFilter, bool noStar, bool coins, bool epic, bool legendary, bool mythic, bool onlyCompleted, int demonFilter, int folder, int searchMode) = win 0x171900, m1 0x4a2868, imac 0x54a1a0;
    static GJSearchObject* create(SearchType searchType, gd::string searchQuery) = win 0x1717d0, imac 0x54a530, m1 0x4a2b7c;
    static GJSearchObject* create(SearchType searchType) = win 0x1716f0, imac 0x54a4c0, m1 0x4a2b10;
    static GJSearchObject* createFromKey(char const* key) = win 0x170ff0, imac 0x522e20, m1 0x47eddc;

    char const* getKey() = win 0x171c40, m1 0x4857e8, imac 0x52a470;
    char const* getNextPageKey();
    GJSearchObject* getNextPageObject();
    GJSearchObject* getPageObject(int page) = win 0x171d90, imac 0x54aca0, m1 0x4a312c;
    GJSearchObject* getPrevPageObject() = imac 0x54af60;
    char const* getSearchKey(SearchType searchType, gd::string searchQuery, gd::string difficulty, gd::string length, int page, bool star, bool uncompleted, bool featured, int songID, bool original, bool twoPlayer, bool customSong, bool songFilter, bool noStar, bool coins, bool epic, bool legendary, bool mythic, bool onlyCompleted, int demonFilter, int folder, int searchMode) = win 0x171f00, m1 0x4a2da8, imac 0x54a780;
    bool init(SearchType searchType, gd::string searchQuery, gd::string difficulty, gd::string length, int page, bool star, bool uncompleted, bool featured, int songID, bool original, bool twoPlayer, bool customSong, bool songFilter, bool noStar, bool coins, bool epic, bool legendary, bool mythic, bool onlyCompleted, int demonFilter, int folder, int searchMode);
    bool isLevelSearchObject() = win 0x1721e0, imac 0x54af80, m1 0x4a3330;

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
    void reset();
    void stopTweenAction(int action);
    void timesyncShaderAction(int action);
    void timesyncShaderActions();
    void tweenValue(float fromValue, float toValue, int action, float duration, int easingType, float easingRate);
    void updateTweenAction(float value, int actionID);
    void updateTweenActions(float tweenValue);

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
    bool m_splitUnk270;
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

    static GJShopLayer* create(ShopType type) = win inline, m1 0x2a536c, imac 0x30e990 {
        auto ret = new GJShopLayer();
        if (ret->init(type)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCScene* scene(ShopType) = win 0x2a1ef0, m1 0x2a5268, imac 0x30e850;

    virtual void onExit() = win 0x2a4160, m1 0x2a7074, imac 0x310710, ios 0x14f518;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x2a7290, imac 0x312d20, m1 0x2a91d0, ios 0x150e28;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2a9590, imac 0x3130c0, ios 0x151120 {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2a9598, imac 0x3130e0, ios 0x151128 {}
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x71210, m1 0x2a95a0, imac 0x313100, ios 0x151130;
    virtual void registerWithTouchDispatcher() = win 0x425d0, m1 0x2a95bc, imac 0x313140, ios 0x15114c;
    virtual void keyBackClicked() = win 0x2a58d0, imac 0x311710, m1 0x2a7f40, ios 0x15003c;
    virtual void didPurchaseItem(GJStoreItem*) = win 0x2a4ed0, m1 0x2a78d4, imac 0x311010, ios 0x14fb3c;
    virtual void rewardedVideoFinished() = win 0x2a4520, imac 0x310a30, m1 0x2a7360, ios 0x14f6b4;
    virtual void dialogClosed(DialogLayer*) = win 0x2a6f60, imac 0x312b60, m1 0x2a8fec, ios 0x150c68;

    void exitVideoAdItems() = imac 0x310960, m1 0x2a7298;
    bool init(ShopType) = win 0x2a2070, imac 0x30eaa0, m1 0x2a5450;
    void onBack(cocos2d::CCObject* sender) = win 0x2a56b0, imac 0x310450, m1 0x2a6d78;
    void onCommunityCredits(cocos2d::CCObject* sender) = win 0x2a43e0;
    void onPlushies(cocos2d::CCObject* sender);
    void onSelectItem(cocos2d::CCObject* sender) = imac 0x310600, m1 0x2a6f30;
    void onVideoAd(cocos2d::CCObject* sender) = imac 0x310400, m1 0x2a6d2c;
    void showCantAffordMessage(GJStoreItem*) = m1 0x2a744c, imac 0x310b20;
    void showReactMessage() = win 0x2a58e0, m1 0x2a7f4c, imac 0x311740;
    void updateCurrencyCounter() = m1 0x2a73bc;

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

    TodoReturn addChance(int, int) = m1 0x392550, imac 0x416ac0;
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

    virtual bool init() = m1 0x3927f0, imac 0x416d80, ios 0xd46c;
    virtual void visit() = imac 0x416d90, m1 0x3927f4, ios 0xd470;
}

[[link(android)]]
class GJSmartPrefab : cocos2d::CCObject {
    // virtual ~GJSmartPrefab();

    static GJSmartPrefab* create();

    virtual void encodeWithCoder(DS_Dictionary*) = win 0x2ae2b0, imac 0x415c60, m1 0x391654, ios 0xc604;
    virtual bool canEncode() = m1 0x3914f4, imac 0x415b10, ios 0xc550;

    TodoReturn createWithCoder(DS_Dictionary*) = imac 0x415b20, m1 0x3914fc;
    void dataLoaded(DS_Dictionary*);
    bool init();
}

[[link(android)]]
class GJSmartTemplate : cocos2d::CCObject {
    // virtual ~GJSmartTemplate();

    static GJSmartTemplate* create() = win 0x2a92e0;

    virtual void encodeWithCoder(DS_Dictionary*) = win 0x2ae150, imac 0x415960, m1 0x3912e8, ios 0xc430;
    virtual bool canEncode() = m1 0x390f40, imac 0x415580, ios 0xc1c4;

    TodoReturn applyTransformationsForType(SmartBlockType, cocos2d::CCSprite*);
    TodoReturn createWithCoder(DS_Dictionary*) = imac 0x415590, m1 0x390f48;
    void dataLoaded(DS_Dictionary*) = win 0x2ade80;
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
    TodoReturn getVerySimplifiedKey(gd::string) = imac 0x411170;
    bool init();
    bool isUnrequired(gd::string);
    TodoReturn keyFromNeighbors(cocos2d::CCPoint, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*);
    TodoReturn keyFromNeighbors(SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType);
    TodoReturn keyFromNeighborsOld(bool, bool, bool, bool, bool, bool, bool, bool);
    TodoReturn logTemplateStatus(bool) = m1 0x390450, imac 0x4148f0;
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
    TodoReturn saveRemapToDict(gd::string, gd::string, cocos2d::CCDictionary*) = imac 0x410e20;
    TodoReturn scanForPrefab(gd::string);
    TodoReturn shouldDiscardObject(SmartBlockType, GJSmartDirection);
    TodoReturn smartObjectToType(SmartGameObject*, cocos2d::CCPoint);
    TodoReturn smartTypeToObjectKey(SmartBlockType);
}

[[link(android)]]
class GJSongBrowser : GJDropDownLayer, FLAlertLayerProtocol, TableViewCellDelegate {
    // virtual ~GJSongBrowser();

    static GJSongBrowser* create() = win 0x2afab0, m1 0x518ed0, imac 0x5e7120;

    virtual bool init() = win 0x2afc30, imac 0x5e7530, m1 0x5191bc, ios 0x264ad4;
    virtual void customSetup() = win 0x2afd30, m1 0x519468, imac 0x5e7800, ios 0x264cb4;
    virtual void exitLayer(cocos2d::CCObject*) = m1 0x519434, imac 0x5e77d0, ios 0x264c80;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2b0470, imac 0x5e7d80, m1 0x519990, ios 0x2651e8;
    virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = imac 0x5e7e60, m1 0x519a4c, ios 0x2652a4;
    virtual int getSelectedCellIdx() = m1 0x519aac, imac 0x5e7ec0, ios 0x265304;

    void loadPage(int) = win 0x2b00b0;
    void onDeleteAll(cocos2d::CCObject* sender) = m1 0x519790, imac 0x5e7b90;
    void onNextPage(cocos2d::CCObject* sender) = win 0x2b0340;
    void onPrevPage(cocos2d::CCObject* sender) = win 0x2b0350;
    void setupPageInfo(int, int, int);
    TodoReturn setupSongBrowser(cocos2d::CCArray*);

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

    static GJSpecialColorSelect* create(int, GJSpecialColorSelectDelegate*, ColorSelectType) = win 0x2b0670, imac 0x60dd40;
    static const char* textForColorIdx(int) = win 0x2b13c0, imac 0x610110, m1 0x53c684;

    virtual void keyBackClicked() = win 0x2b1370, m1 0x53c8cc, imac 0x610360, ios 0x1b38d8;

    ButtonSprite* getButtonByTag(int);
    void highlightSelected(ButtonSprite*);
    bool init(int, GJSpecialColorSelectDelegate*, ColorSelectType) = win 0x2b0780, imac 0x60deb0, m1 0x53aa54;
    void onClose(cocos2d::CCObject* sender) = win 0x2b1320;
    void onSelectColor(cocos2d::CCObject* sender) = win 0x2b1240, imac 0x610140, m1 0x53c6ac;

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

    static GJSpiderSprite* create(int) = win 0x2a0420, m1 0x4fa09c;

    bool init(int) = imac 0x5c5230, m1 0x4fa1d0;
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

    static GJStoreItem* create(int index, int typeID, int unlockType, int price, ShopType shopType) = win inline, imac 0x66200, m1 0x5a890 {
        auto ret = new GJStoreItem();
        if (ret->init(index, typeID, unlockType, price, shopType)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    gd::string getCurrencyKey() = win inline, imac 0x665e0, m1 0x5ac78 {
        return m_shopType == ShopType::Diamond ? "29" : "14";
    }
    bool init(int index, int typeID, int unlockType, int price, ShopType shopType) = win inline, imac 0x8f5a0, m1 0x82d3c {
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

    virtual bool init() = win 0x1290a0, m1 0x4a5fc, imac 0x534a0, ios 0x3f3868;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x12a730, imac 0x53940, m1 0x4aa70, ios 0x3f3c00;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x12a900, imac 0x53dc0, m1 0x4ae6c, ios 0x3f3da8;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x12ae60, imac 0x54360, m1 0x4b374, ios 0x3f42a4;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x71210, m1 0x4b54c, imac 0x54570, ios 0x3f447c;

    TodoReturn applyRotation(float);
    TodoReturn calculateRotationOffset();
    void finishTouch();
    void loadFromState(GJTransformState&);
    TodoReturn loadValues(GameObject*, cocos2d::CCArray*, gd::unordered_map<int, GameObjectEditorState>&);
    TodoReturn logCurrentZeroPos();
    void onToggleLockScale(cocos2d::CCObject* sender);
    void refreshControl() = win 0x1295f0, m1 0x43948, imac 0x4ab90;
    void saveToState(GJTransformState&);
    void scaleButtons(float) = win 0x129810;
    cocos2d::CCSprite* spriteByTag(int tag) {
        return static_cast<cocos2d::CCSprite*>(m_warpSprites->objectAtIndex(tag - 1));
    }
    TodoReturn updateAnchorSprite(cocos2d::CCPoint);
    void updateButtons(bool, bool) = win 0x1298d0;
    TodoReturn updateMinMaxPositions();

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
    virtual cocos2d::CCNode* getTransformNode();
    virtual cocos2d::CCLayer* getUI();
}

[[link(android)]]
class GJUINode : cocos2d::CCNode {
    // virtual ~GJUINode();

    static GJUINode* create(UIButtonConfig&) = imac 0x4b5100;

    virtual void draw() = imac 0x4b8390, m1 0x4200f4, ios 0x4ed2c;

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
    TodoReturn updateButtonFrames() = m1 0x41fdb8, imac 0x4b8000;
    TodoReturn updateButtonPositions();
    TodoReturn updateButtonScale(float);
    TodoReturn updateDeadzone(int);
    TodoReturn updateDragRadius(float);
    TodoReturn updateHeight(float);
    TodoReturn updateRangePos(cocos2d::CCPoint);
    TodoReturn updateSize(float, float);
    TodoReturn updateWidth(float);
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

    virtual bool init() = win 0xb9f50, imac 0x2443a0, m1 0x1f31f8, ios 0x114208;
    virtual void draw() = imac 0x244b10, m1 0x1f399c, ios 0x11469c;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xbae70, imac 0x244be0, m1 0x1f3a48, ios 0x114748;
    virtual void uploadActionFinished(int, int) = win 0xbb230, imac 0x244e90, m1 0x1f3c94, ios 0x114950;
    virtual void uploadActionFailed(int, int) = win 0xbb3e0, m1 0x1f3ea8, imac 0x2450a0, ios 0x114a74;
    virtual void onClosePopup(UploadActionPopup*) = win 0xbb4b0, imac 0x245210, m1 0x1f4010, ios 0x114b0c;

    void loadFromScore(GJUserScore*) = win 0xb9f70, imac 0x239a60, m1 0x1e9a54;
    void onCancelFriendRequest(cocos2d::CCObject* sender);
    void onRemoveFriend(cocos2d::CCObject* sender) = m1 0x1f3644, imac 0x2447c0;
    void onSendMessage(cocos2d::CCObject* sender);
    void onUnblockUser(cocos2d::CCObject* sender) = m1 0x1f3244, imac 0x2443f0;
    void onViewFriendRequest(cocos2d::CCObject* sender);
    void onViewProfile(cocos2d::CCObject* sender);
    TodoReturn updateBGColor(int);
}

[[link(android)]]
class GJUserMessage : cocos2d::CCNode {
    // virtual ~GJUserMessage();

    static GJUserMessage* create() = win 0x170ec0, imac 0x549f70, m1 0x4a264c;
    static GJUserMessage* create(cocos2d::CCDictionary*) = win 0x170380, m1 0x490df0;

    virtual bool init() = m1 0x4a26e8, imac 0x54a010, ios 0xb35d0;

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
    static GJUserScore* create(cocos2d::CCDictionary*) = win 0x16e1a0, m1 0x479a1c, imac 0x51d290;
    // virtual ~GJUserScore();

    static GJUserScore* create() = win inline, m1 0x4a205c, imac 0x549900 {
        auto ret = new GJUserScore();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }

        delete ret;
        return nullptr;
    }

    virtual bool init() = win 0x16fb40, m1 0x4a2144, imac 0x549a60, ios 0xb32d8;

    bool isCurrentUser() = win 0x16fb90, m1 0x4a21b8, imac 0x549af0;
    TodoReturn mergeWithScore(GJUserScore*);

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
    void step(float delta) = win 0x2000b0;

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

    TodoReturn addDotsToLevel(int, bool) = m1 0x33d2d0, imac 0x3b1940;
    TodoReturn dotPositionForLevel(int, int);
    bool init(int, WorldSelectLayer*) = m1 0x33c8b8, imac 0x3b0e80;
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

    static GJWriteMessagePopup* create(int, int) = imac 0x294a70;

    virtual void registerWithTouchDispatcher() = m1 0x23ebbc, imac 0x296b90, ios 0x2dccd0;
    virtual void keyBackClicked() = win 0x2930d0, imac 0x296b60, m1 0x23eba8, ios 0x2dccbc;
    virtual void textInputOpened(CCTextInputNode*) = m1 0x23ec10, imac 0x296c10, ios 0x2dcd24 {}
    virtual void textInputClosed(CCTextInputNode*) = m1 0x23ebf4, imac 0x296bd0, ios 0x2dcd08;
    virtual void textChanged(CCTextInputNode*) = win 0x2930e0, imac 0x296c30, m1 0x23ec18, ios 0x2dcd2c;
    virtual void uploadMessageFinished(int) = win 0x2936c0, imac 0x297300, m1 0x23f2bc, ios 0x2dd168;
    virtual void uploadMessageFailed(int) = win 0x293740, imac 0x2973c0, m1 0x23f394, ios 0x2dd1f8;
    virtual void onClosePopup(UploadActionPopup*) = win 0x2937f0, imac 0x2974f0, m1 0x23f4d4, ios 0x2dd27c;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x293890, imac 0x297640, m1 0x23f658, ios 0x2dd2f8;
    virtual void textInputShouldOffset(CCTextInputNode*, float) = imac 0x297720, m1 0x23f778, ios 0x2dd38c;
    virtual void textInputReturn(CCTextInputNode*) = imac 0x2977e0, m1 0x23f848, ios 0x2dd3f8;

    TodoReturn closeMessagePopup(bool);
    bool init(int, int) = m1 0x23d718, imac 0x295560;
    void onClearBody(cocos2d::CCObject* sender) = m1 0x23e900, imac 0x2968a0;
    void onClose(cocos2d::CCObject* sender);
    void onSend(cocos2d::CCObject* sender) = m1 0x23e4e0, imac 0x296450;
    TodoReturn updateBody(gd::string);
    TodoReturn updateCharCountLabel(int);
    TodoReturn updateSubject(gd::string);
    TodoReturn updateText(gd::string, int);
}

[[link(android)]]
class GManager : cocos2d::CCNode {
    inline GManager() {}
    // virtual ~GManager();

    virtual bool init() = win 0x6a7c0, imac 0x498f00, m1 0x404d70, ios 0x249774;
    virtual void setup() = win 0x6a7d0, imac 0x498f20, m1 0x404d80, ios 0x249784;
    virtual void encodeDataTo(DS_Dictionary*) = m1 0x405280, imac 0x499400, ios 0x249bb8;
    virtual void dataLoaded(DS_Dictionary*) = m1 0x4058bc, imac 0x499ab0, ios 0x249ffc;
    virtual void firstLoad() = m1 0x4058c0, imac 0x499ac0, ios 0x24a000;

    TodoReturn getCompressedSaveString();
    TodoReturn getSaveString();
    TodoReturn load();
    void loadDataFromFile(gd::string const&) = win 0x6aa90, imac 0x499410, m1 0x405284;
    void loadFromCompressedString(gd::string&);
    void loadFromString(gd::string&);
    void save() = win 0x6a9a0, imac 0x499190, m1 0x404fe8;
    TodoReturn saveData(DS_Dictionary*, gd::string);
    void saveGMTo(gd::string);
    TodoReturn tryLoadData(DS_Dictionary*, gd::string const&);

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

    virtual bool init() = m1 0x3d51f8, imac 0x465240, ios 0x45938;

    void googlePlaySignedIn();
}

[[link(android)]]
class GradientTriggerObject : EffectGameObject {
    // virtual ~GradientTriggerObject();

    static GradientTriggerObject* create();

    virtual bool init() = m1 0x151fc0, imac 0x18abe0, ios 0x373678;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x18c520, m1 0x1533c4, ios 0x373c10;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x18ac40, m1 0x152014, ios 0x3736cc;
}

[[link(android)]]
class GraphicsReloadLayer : cocos2d::CCLayer {
    // virtual ~GraphicsReloadLayer();
    GraphicsReloadLayer() {
        m_resolution = cocos2d::CCSize {};
    }

    static GraphicsReloadLayer* create(cocos2d::TextureQuality quality, cocos2d::CCSize resolution, bool windowed, bool borderless, bool fix, bool changedResolution) = win inline {
        auto ret = new GraphicsReloadLayer();
        if (ret->init(quality, resolution, windowed, borderless, fix, changedResolution)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCScene* scene(cocos2d::TextureQuality quality, cocos2d::CCSize resolution, bool windowed, bool borderless, bool fix, bool changedResolution) = win inline {
        auto scene = cocos2d::CCScene::create();
        auto layer = GraphicsReloadLayer::create(quality, resolution, windowed, borderless, fix, changedResolution);
        scene->addChild(layer);
        return scene;
    }

    bool init(cocos2d::TextureQuality quality, cocos2d::CCSize resolution, bool windowed, bool borderless, bool fix, bool changedResolution) = win inline {
        if (!CCLayer::init()) return false;
        m_quality = quality;
        m_resolution = resolution;
        m_changedResolution = changedResolution;
        m_windowed = windowed;
        m_borderless = borderless;
        m_fix = fix;
        this->runAction(cocos2d::CCSequence::create(
            cocos2d::CCDelayTime::create(.1f),
            cocos2d::CCCallFunc::create(this, callfunc_selector(GraphicsReloadLayer::performReload)),
            nullptr
        ));
        return true;
    }
    void performReload() = win 0x366490;

    cocos2d::TextureQuality m_quality;
    cocos2d::CCSize m_resolution;
    bool m_windowed;
    bool m_borderless;
    bool m_fix;
    bool m_changedResolution;
}

[[link(android)]]
class GravityEffectSprite : cocos2d::CCSprite {
    // virtual ~GravityEffectSprite();
    GravityEffectSprite() {}

    static GravityEffectSprite* create() = win inline, m1 0x9d8c0, imac 0xacad0, ios 0x119108 {
        auto ret = new GravityEffectSprite();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual bool init() = win 0x3a4390, imac 0xbfa30, m1 0xae348, ios 0x126114;
    virtual void draw() = m1 0xae56c, imac 0xbfc90, ios 0x126338 {}

    void updateSpritesColor(cocos2d::ccColor3B color) = win inline, m1 0xa97a4, imac 0xba240, ios 0x121f34 {
        if (auto gravityBatchNode = this->getChildByTag(1)) {
            auto children = gravityBatchNode->getChildren();
            for (int i = 0; i < children->count(); i++) {
                static_cast<cocos2d::CCSprite*>(children->objectAtIndex(i))->setColor(color);
            }
        }
    }
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

    static HardStreak* create() = win 0x2b1680;

    virtual bool init() = m1 0x8f704, imac 0x9ca80, ios 0x614d8;

    void addPoint(cocos2d::CCPoint p0) = win 0x2b2130, imac 0x9d500, m1 0x8ffec;
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
    void reset() = win inline, imac 0x9d4e0, m1 0x8ffc8 {
        this->clear();
        m_pointArray->removeAllObjects();
    }
    void resumeStroke() = m1 0x8ff80, imac 0x9d480;
    TodoReturn scheduleAutoUpdate();
    void stopStroke() = win 0x2b17f0;
    callback void updateStroke(float) = win 0x2b1830, m1 0x8f870, imac 0x9cc30;

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

    static HSVLiveOverlay* create(GameObject* object, cocos2d::CCArray* objects) = win inline, imac 0x258800, m1 0x205230 {
        auto ret = new HSVLiveOverlay();
        if (ret->init(object, objects)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual void keyBackClicked() = win 0x2b2bb0, m1 0x205a40, imac 0x259080, ios 0x1a3304;
    virtual void show() = m1 0x205af8, imac 0x259130, ios 0x1a3318;
    virtual void hsvChanged(ConfigureHSVWidget*) = win 0x2b2c00, imac 0x259200, m1 0x205bac, ios 0x1a3364;

    void closeColorSelect(cocos2d::CCObject* sender);
    void createHSVWidget(int) = win 0x2b2a10, imac 0x258f00, m1 0x2058e0;
    void determineStartValues() = win 0x2b2790, imac 0x258dd0, m1 0x2057b4;
    bool init(GameObject*, cocos2d::CCArray*) = win 0x2b22f0, imac 0x258980, m1 0x205364;
    void onSelectTab(cocos2d::CCObject* sender) = win 0x2b29e0, imac 0x258ec0, m1 0x205894;
    void toggleControls(bool);

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

    virtual void keyBackClicked() = win 0x96940, m1 0x398990, imac 0x41d0a0, ios 0x1020a8;

    bool init(cocos2d::ccHSVValue, HSVWidgetDelegate*, gd::string) = win 0x96530, imac 0x41cb40, m1 0x398494;
    void onClose(cocos2d::CCObject* sender) = win 0x96860;

    ConfigureHSVWidget* m_widget;
    HSVWidgetDelegate* m_delegate;
}

[[link(android)]]
class InfoAlertButton : CCMenuItemSpriteExtra {
    // virtual ~InfoAlertButton();

    static InfoAlertButton* create(gd::string title, gd::string desc, float spriteScale) = win 0x2b2d80, m1 0x4b57b8, imac 0x55ec10;

    virtual void activate() = imac 0x55ee90, m1 0x4b5a48, ios 0x16eb48;

    bool init(gd::string title, gd::string desc, float spriteScale) = imac 0x55edf0, m1 0x4b59a4;

    gd::string m_title;
    gd::string m_description;
    float m_textScale;
    bool m_scroll;
}

[[link(android)]]
class InfoLayer : FLAlertLayer, LevelCommentDelegate, CommentUploadDelegate, FLAlertLayerProtocol {
    // virtual ~InfoLayer();

    static InfoLayer* create(GJGameLevel*, GJUserScore*, GJLevelList*) = win 0x2b3200, imac 0x798c50, m1 0x6ab724;

    virtual void registerWithTouchDispatcher() = m1 0x6af438, imac 0x79ce80, ios 0x3524c0;
    virtual void keyBackClicked() = win 0x2b6b40, m1 0x6af34c, imac 0x79cd70, ios 0x3524b4;
    virtual void show() = win 0x2b7fd0, imac 0x79dd40, m1 0x6b0218, ios 0x352ce8;
    virtual void loadCommentsFinished(cocos2d::CCArray*, char const*) = win 0x2b7480, imac 0x79cff0, m1 0x6af588, ios 0x352548;
    virtual void loadCommentsFailed(char const*) = win 0x2b74f0, imac 0x79d0c0, m1 0x6af66c, ios 0x3525b8;
    virtual void setupPageInfo(gd::string, char const*) = win 0x2b7540, imac 0x79d160, m1 0x6af718, ios 0x352614;
    virtual void commentUploadFinished(int) = win 0x2b7880, imac 0x79d8f0, m1 0x6afe38, ios 0x352a18;
    virtual void commentUploadFailed(int, CommentError) = win 0x2b7950, imac 0x79da40, m1 0x6aff50, ios 0x352aa8;
    virtual void updateUserScoreFinished() = win 0x2b7730, imac 0x79d750, m1 0x6afcb0, ios 0x35294c;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2b5ce0, imac 0x79cb10, m1 0x6af108, ios 0x3523c0;

    TodoReturn confirmReport(cocos2d::CCObject*) = win 0x2b5780, m1 0x6add08, imac 0x79b630;
    int getAccountID();
    int getID() {
        if(m_score) return m_score->m_userID;
        if(m_levelList) return - m_levelList->m_listID;
        if(m_level) return m_level->m_levelID;
        return 0;
    }
    int getRealID();
    TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint) = win 0x2b52e0;
    bool init(GJGameLevel*, GJUserScore*, GJLevelList*) = win 0x2b33a0, m1 0x6ab874, imac 0x798e00;
    bool isCorrect(char const*);
    void loadPage(int, bool) = win 0x2b6c80, imac 0x79bd10, m1 0x6ae3e8;
    void onClose(cocos2d::CCObject* sender) = win 0x2b6ac0, m1 0x6adff8, imac 0x79b910;
    void onComment(cocos2d::CCObject* sender) = win 0x2b5f20, m1 0x6ad908, imac 0x79b1e0;
    void onCopyLevelID(cocos2d::CCObject* sender) = imac 0x34c5b0;
    void onGetComments(cocos2d::CCObject* sender) = imac 0x79bd00;
    void onLevelInfo(cocos2d::CCObject* sender) = win 0x2b64e0, m1 0x6ae924, imac 0x79c2f0;
    void onMore(cocos2d::CCObject* sender) = win 0x2b5e00, imac 0x79ae40, m1 0x6ad570;
    void onNextPage(cocos2d::CCObject* sender) = win 0x2b7860, imac 0x79b9b0;
    void onOriginal(cocos2d::CCObject* sender) = win 0x2b5e60, imac 0x79b090;
    void onPrevPage(cocos2d::CCObject* sender) = win 0x2b7870, imac 0x79b990;
    void onRefreshComments(cocos2d::CCObject* sender) = imac 0x79c870, m1 0x6aee78;
    void onSimilar(cocos2d::CCObject* sender);
    TodoReturn reloadWindow() = win 0x2b7bf0;
    void setupCommentsBrowser(cocos2d::CCArray*) = win 0x2b71f0, imac 0x79c0e0, m1 0x6ae750;
    void setupLevelInfo() = win 0x2b5420, m1 0x6ad5cc, imac 0x79ae90;
    void toggleCommentMode(cocos2d::CCObject* sender) = win 0x2b7e10, imac 0x79bab0, m1 0x6ae170;
    void toggleExtendedMode(cocos2d::CCObject* sender) = win 0x2b7aa0;
    void toggleSmallCommentMode(cocos2d::CCObject* sender) = win 0x2b7b00;
    TodoReturn updateCommentModeButtons() = win 0x2b7ed0;
    TodoReturn updateLevelsLabel();

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

    static ItemInfoPopup* create(int, UnlockType) = win 0x273e30, imac 0x35b830, m1 0x2eecf8;
    static gd::string nameForUnlockType(int, UnlockType) = win 0x275ef0, imac 0x35f670, m1 0x2f26cc;

    virtual void keyBackClicked() = m1 0x2f2a7c, imac 0x35f9b0, ios 0x3095a4;

    bool init(int, UnlockType) = win 0x273f20, imac 0x35e340, m1 0x2f14e8;
    bool isUnlockedByDefault(int, UnlockType) = imac 0x35f950, m1 0x2f2a1c;
    void onClose(cocos2d::CCObject* sender);
    void onCredit(cocos2d::CCObject* sender) = win 0x275ec0, imac 0x35f980, m1 0x2f2a48;

    int m_itemID;
    UnlockType m_unlockType;
    int m_accountID;
}

[[link(android)]]
class ItemTriggerGameObject : EffectGameObject {
    // virtual ~ItemTriggerGameObject();

    static ItemTriggerGameObject* create(char const*);

    virtual void customSetup() = imac 0x1d3670, m1 0x18db5c, ios 0x38d9e0;
    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x4a71a0, imac 0x1d36b0, m1 0x18db94, ios 0x38da18;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1d83a0, m1 0x1916e0, ios 0x38e954;
    virtual gd::string getSaveString(GJBaseGameLayer*) = win 0x4a7300, imac 0x1d3800, m1 0x18dce4, ios 0x38db00;

    bool init(char const*);
}

[[link(android)]]
class KeybindingsLayer : FLAlertLayer {
    // virtual ~KeybindingsLayer();

    static KeybindingsLayer* create() = win 0x2b81d0;

    virtual bool init() = win 0x2b82c0, m1 0x5220ec, imac 0x5f25f0;
    virtual void keyBackClicked() = m1 0x523ab4, imac 0x5f3fc0;

    TodoReturn addKeyPair(char const*, char const*) = win 0x2b8bd0;
    TodoReturn countForPage(int) = win 0x2b8f80;
    void goToPage(int) = win 0x2b9220;
    TodoReturn incrementCountForPage(int);
    TodoReturn infoKey(int);
    TodoReturn layerForPage(int) = win 0x2b9050;
    TodoReturn layerKey(int);
    TodoReturn nextPosition(int);
    TodoReturn objectKey(int);
    TodoReturn objectsForPage(int);
    void onClose(cocos2d::CCObject* sender) = win 0x84620;
    void onInfo(cocos2d::CCObject* sender);
    void onNextPage(cocos2d::CCObject* sender) = win 0x2b9200;
    void onPrevPage(cocos2d::CCObject* sender) = win 0x2b9210;
    void onToggle(cocos2d::CCObject* sender);
    TodoReturn pageKey(int);
}

[[link(android)]]
class KeybindingsManager : cocos2d::CCNode {
    // virtual ~KeybindingsManager();

    static KeybindingsManager* sharedState();

    virtual bool init() = m1 0x4364a8, imac 0x4d22c0, ios 0x346ccc;

    TodoReturn commandForKey(cocos2d::enumKeyCodes, GJKeyGroup, bool, bool, bool);
    TodoReturn commandForKeyMods(cocos2d::enumKeyCodes, GJKeyGroup);
    TodoReturn commandForKeyNoMods(cocos2d::enumKeyCodes, GJKeyGroup);
    TodoReturn commandToKeyForGroup(GJKeyGroup);
    void dataLoaded(DS_Dictionary*) = imac 0x4d27e0;
    void encodeDataTo(DS_Dictionary*);
    void firstSetup();
    TodoReturn groupForCommand(GJKeyCommand);
    TodoReturn keyForCommand(GJKeyCommand);
    TodoReturn keyToCommandForGroup(GJKeyGroup);
}

[[link(android)]]
class KeyframeAnimTriggerObject : EffectGameObject {
    // virtual ~KeyframeAnimTriggerObject();

    static KeyframeAnimTriggerObject* create();

    virtual bool init() = m1 0x16bc30, imac 0x1aa550, ios 0x37f844;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1ab5c0, m1 0x16c950, ios 0x37fc84;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1aa5a0, m1 0x16bc80, ios 0x37f894;
}

[[link(android)]]
class KeyframeGameObject : EffectGameObject {
    // virtual ~KeyframeGameObject();

    static KeyframeGameObject* create();

    virtual bool init() = m1 0x1750f4, imac 0x1b5420, ios 0x383c34;
    virtual void setOpacity(unsigned char) = win 0x49cba0, imac 0x1b5700, m1 0x1753e0, ios 0x383ef8;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1b5860, m1 0x17552c, ios 0x383fa4;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1b5dd0, m1 0x1759d4, ios 0x3843ac;

    TodoReturn updateShadowObjects(GJBaseGameLayer*, EditorUI*);
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

    virtual bool init() = m1 0x17033c, imac 0x1afb90, ios 0x38166c;
    virtual void setOpacity(unsigned char) = win 0x49ac60, m1 0x170758, imac 0x1affb0, ios 0x38198c;
    virtual void setupCustomSprites(gd::string) = imac 0x1afbc0, m1 0x17036c, ios 0x38169c;
    virtual void addMainSpriteToParent(bool) = m1 0x170fd0, imac 0x1b0900, ios 0x381fec;
    virtual void resetObject() = m1 0x171c8c, imac 0x1b1870, ios 0x3823a0;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1b0690, m1 0x170d8c, ios 0x381e24;
    virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x171028, imac 0x1b0960, ios 0x382044;
    virtual void setObjectColor(cocos2d::ccColor3B const&) = m1 0x170f88, imac 0x1b08b0, ios 0x381fa4;
    virtual void updateTextKerning(int) = imac 0x1b0030, m1 0x1707dc, ios 0x381a10;
    virtual int getTextKerning() = m1 0x199b20, imac 0x1e1d40, ios 0x3922d0;

    TodoReturn createLabel(gd::string);
    TodoReturn queueUpdateLabel(gd::string);
    TodoReturn removeLabel();
    TodoReturn unlockLabelColor();
    void updateLabel(float);
    void updateLabel(gd::string) = win 0x49af00, imac 0x1b04c0;
    TodoReturn updateLabelAlign(int);
    TodoReturn updateLabelIfDirty();
    TodoReturn updatePreviewLabel() = win 0x49ad40;

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

    static LeaderboardsLayer* create(LeaderboardState state) = win inline, imac 0x4fc3a0, m1 0x45bf64 {
        auto ret = new LeaderboardsLayer();
        if (ret->init(state)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCScene* scene(LeaderboardState state) = win inline, m1 0x45be78, imac 0x4fc270 {
        auto scene = cocos2d::CCScene::create();
        auto layer = LeaderboardsLayer::create(state);
        scene->addChild(layer);
        return scene;
    }

    virtual void keyBackClicked() = win 0x2bbf50, m1 0x45dbec, imac 0x4fe1a0, ios 0x3aa800;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2bbea0, m1 0x45db94, imac 0x4fe140, ios 0x3aa7a8;
    virtual void updateUserScoreFinished() = win 0x2bb1f0, imac 0x4fd6b0, m1 0x45d1b4, ios 0x3aa26c;
    virtual void updateUserScoreFailed() = win 0x2bb210, imac 0x4fd710, m1 0x45d1ec, ios 0x3aa2a4;
    virtual void loadLeaderboardFinished(cocos2d::CCArray*, char const*) = win 0x2bb220, imac 0x4fd7b0, m1 0x45d294, ios 0x3aa300;
    virtual void loadLeaderboardFailed(char const*) = win 0x2bb2b0, imac 0x4fdeb0, m1 0x45d924, ios 0x3aa638;

    bool init(LeaderboardState) = win 0x2b9cd0, m1 0x45c030, imac 0x4fc4a0;
    bool isCorrect(char const*);
    void onBack(cocos2d::CCObject* sender) = win 0x2bbed0;
    void onCreators(cocos2d::CCObject* sender);
    void onGlobal(cocos2d::CCObject* sender);
    void onInfo(cocos2d::CCObject* sender) = m1 0x45c5c0, imac 0x4fca80;
    void onTop(cocos2d::CCObject* sender);
    void onWeek(cocos2d::CCObject* sender);
    void refreshTabs() = win 0x2bac80;
    void selectLeaderboard(LeaderboardState) = win 0x2badb0, imac 0x4fd0f0, m1 0x45cc24;
    void setupLevelBrowser(cocos2d::CCArray*) = win 0x2bab20;
    TodoReturn setupTabs() = imac 0x4fccd0, m1 0x45c848;
    void toggleTabButtons() = win 0x2bb000;

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

    static LevelAreaInnerLayer* create(bool) = imac 0x267c20;
    static cocos2d::CCScene* scene(bool) = win 0x2be1d0, imac 0x267950;

    virtual void keyBackClicked() = win 0x2c0550, m1 0x21538c, imac 0x269bf0, ios 0x3467b8;
    virtual void dialogClosed(DialogLayer*) = win 0x2bf9a0, imac 0x2699c0, m1 0x215164, ios 0x346614;
    virtual void onExit() = win 0x2c0500, m1 0x21533c, imac 0x269ba0, ios 0x346768;

    bool init(bool) = win 0x2be2e0, m1 0x2135d4, imac 0x267d00;
    void onBack(cocos2d::CCObject* sender) = win 0x2c04a0, m1 0x2143a0, imac 0x268b80;
    void onDoor(cocos2d::CCObject* sender) = win 0x2bffd0, imac 0x268bd0, m1 0x2143f8;
    void onInfo(cocos2d::CCObject* sender) = m1 0x2146cc, imac 0x268e70;
    void onNextFloor(cocos2d::CCObject* sender) = m1 0x21453c, imac 0x268d00;
    void onOnlineVault(cocos2d::CCObject* sender);
    bool playStep1();
    cocos2d::CCAction* showFloor1CompleteDialog() = m1 0x214c58, imac 0x269470;
    TodoReturn tryResumeTowerMusic();
    TodoReturn tryShowAd();
}

[[link(android)]]
class LevelAreaLayer : cocos2d::CCLayer, DialogDelegate {
    // virtual ~LevelAreaLayer();

    static LevelAreaLayer* create();
    static cocos2d::CCScene* scene();

    virtual bool init() = win 0x2bc1d0, imac 0x2658d0, m1 0x2111e8, ios 0x34353c;
    virtual void keyBackClicked() = win 0x2be1c0, imac 0x267ab0, m1 0x2133f4, ios 0x344fe4;
    virtual void dialogClosed(DialogLayer*) = win 0x2bd3b0, m1 0x213170, imac 0x267810, ios 0x344e04;
    virtual void onExit() = win 0x2be170, m1 0x2133a4, imac 0x267a60, ios 0x344f94;

    cocos2d::CCAction* addGodRay(float, float, float, float, float, cocos2d::CCPoint);
    TodoReturn addTorch(cocos2d::CCNode*, cocos2d::CCPoint, int, float, int, bool, int, cocos2d::CCArray*) = m1 0x2124b0, imac 0x266be0;
    cocos2d::CCAction* fadeInsideTower();
    void onBack(cocos2d::CCObject* sender);
    void onClickDoor(cocos2d::CCObject* sender);
    bool onEnterTower() = m1 0x21322c;
    cocos2d::CCAction* showDialog() = m1 0x212f20, imac 0x2675e0;
}

[[link(android)]]
class LevelBrowserLayer : cocos2d::CCLayerColor, LevelManagerDelegate, FLAlertLayerProtocol, SetIDPopupDelegate, SetTextPopupDelegate, TableViewCellDelegate, ShareCommentDelegate {
    LevelBrowserLayer() = win 0x2c05d0 {
        m_unk = false;
        m_allSelected = false;
        m_noInternet = nullptr;
        m_list = nullptr;
        m_rightArrow = nullptr;
        m_leftArrow = nullptr;
        m_lastBtn = nullptr;
        m_cancelSearchBtn = nullptr;
        m_refreshBtn = nullptr;
        m_levels = nullptr;
        m_searchObject = nullptr;
        m_countText = nullptr;
        m_pageText = nullptr;
        m_pageBtn = nullptr;
        m_folderText = nullptr;
        m_folderBtn = nullptr;
        m_allObjectsToggler = nullptr;
        m_itemCount = 0;
        m_pageStartIdx = 0;
        m_pageEndIdx = 0;
        m_circle = nullptr;
        m_lastPage = 0;
        m_isOverlay = false;
        m_scene = nullptr;
        m_zOffset = 0;
        m_unk2 = false;
        m_listHeight = 0;
        m_unkFloat = .0f;
        m_unkFloat2 = .0f;
        m_delegate = nullptr;
        m_cached = false;
    }
    ~LevelBrowserLayer() = win 0x2c07c0, imac 0x477f30;

    static LevelBrowserLayer* create(GJSearchObject*) = win 0x2c09f0, imac 0x478170, m1 0x3e6590;
    static cocos2d::CCScene* scene(GJSearchObject* search) = win 0x2c09a0, imac 0x478130, m1 0x3e6544;

    virtual void onEnter() = win 0x2c78b0, imac 0x47ee70, m1 0x3ecc44, ios 0x4116d8;
    virtual void onEnterTransitionDidFinish() = win 0x242b20, imac 0x47f010, m1 0x3ece38, ios 0x411808;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x3ecf10, imac 0x47f100, ios 0x4118d8 { return true; }
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x3ecf30, imac 0x47f160, ios 0x4118f8 {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x3ecf20, imac 0x47f120, ios 0x4118e8 {}
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x3ecf28, imac 0x47f140, ios 0x4118f0 {}
    virtual void registerWithTouchDispatcher() = win 0x2c79f0, imac 0x47f020, m1 0x3ece3c, ios 0x41180c;
    virtual void keyBackClicked() = win 0x2c4d30, m1 0x3ec1e0, imac 0x47e380, ios 0x410dc8;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x2c4d50, imac 0x47e3c0, m1 0x3ec204, ios 0x410dec;
    virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) = win 0x2c4240, imac 0x47d8d0, m1 0x3eb7d8, ios 0x4106f8;
    virtual void loadLevelsFailed(char const*, int) = win 0x2c4370, imac 0x47da30, m1 0x3eb900, ios 0x410818;
    virtual void setupPageInfo(gd::string, char const*) = win 0x2c43c0, imac 0x47db10, m1 0x3eb9ec, ios 0x410894;
    virtual void onBack(cocos2d::CCObject* sender) = win 0x2c4ca0, imac 0x47e2d0, m1 0x3ec12c, ios 0x410d50;
    virtual void shareCommentClosed(gd::string, ShareCommentLayer*) = win 0x2c5d50, imac 0x47e6b0, m1 0x3ec520, ios 0x4110c0;
    virtual void setTextPopupClosed(SetTextPopup*, gd::string) = win 0x2c6ac0, imac 0x47e790, m1 0x3ec604, ios 0x411138;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2c72f0, imac 0x47e980, m1 0x3ec7a4, ios 0x4112c4;
    virtual void setIDPopupClosed(SetIDPopup*, int) = win 0x2c4870, imac 0x47e1a0, m1 0x3ec01c, ios 0x410c4c;
    virtual cocos2d::CCArray* updateResultArray(cocos2d::CCArray*) = win 0x2c0770, m1 0x3ecf38, imac 0x47f180, ios 0x411900;
    virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = win 0x2c7950, imac 0x47eef0, m1 0x3eccf0, ios 0x411764;

    TodoReturn createNewLevel(cocos2d::CCObject*);
    TodoReturn createNewList(cocos2d::CCObject*) = imac 0x47e520;
    TodoReturn createNewSmartTemplate(cocos2d::CCObject*);
    TodoReturn deleteSelected();
    TodoReturn exitLayer(cocos2d::CCObject*);
    cocos2d::CCArray* getItemsMatchingSearch(cocos2d::CCArray*, gd::string, GJSearchObject*) = win 0x2c6b80;
    gd::string getSearchTitle() = win 0x2c39e0, m1 0x3eb248, imac 0x47d170;
    bool init(GJSearchObject*) = win 0x2c0a60, m1 0x3e66c8, imac 0x478340;
    bool isCorrect(char const*) = win 0x2c2370;
    void loadPage(GJSearchObject*) = win 0x2c2540, imac 0x47b5e0, m1 0x3e99f0;
    void onClearSearch(cocos2d::CCObject* sender) = win 0x2c67a0, imac 0x47b560;
    void onDeleteAll(cocos2d::CCObject* sender) = win 0x2c61f0, imac 0x47a900, m1 0x3e8c88;
    void onDeleteSelected(cocos2d::CCObject* sender) = win 0x2c6f10, imac 0x479fc0, m1 0x3e82d8;
    void onFavorites(cocos2d::CCObject* sender) = win 0x2c6030;
    void onGoToFolder(cocos2d::CCObject* sender) = win 0x2c47c0, m1 0x3e95b4, imac 0x47b1a0;
    void onGoToLastPage(cocos2d::CCObject* sender) = win 0x2c4640;
    void onGoToPage(cocos2d::CCObject* sender) = win 0x2c46b0, imac 0x479eb0, m1 0x3e81a8;
    void onHelp(cocos2d::CCObject* sender);
    void onInfo(cocos2d::CCObject* sender) = win 0x2c4df0, imac 0x47ae20, m1 0x3e91dc;
    void onLocalMode(cocos2d::CCObject* sender) = win 0x2c5c70;
    void onMyOnlineLevels(cocos2d::CCObject* sender) = win 0x2c5e60, imac 0x47a430;
    void onNew(cocos2d::CCObject* sender) = win 0x2c57c0, imac 0x47a340;
    void onNextPage(cocos2d::CCObject* sender) = win 0x2c4ba0, m1 0x3e8068, imac 0x479d50;
    void onPrevPage(cocos2d::CCObject* sender) = win 0x2c4c20, m1 0x3e8034, imac 0x479d10;
    void onRefresh(cocos2d::CCObject* sender) = win 0x2c6660, m1 0x3e909c, imac 0x47acf0;
    void onRemoveAllFavorites(cocos2d::CCObject* sender) = m1 0x3e8b28, imac 0x47a7c0;
    void onSaved(cocos2d::CCObject* sender) = win 0x2c6110;
    void onSavedMode(cocos2d::CCObject* sender) = win 0x2c5b90;
    void onSearch(cocos2d::CCObject* sender) = win 0x2c6840, m1 0x3e96b4, imac 0x47b290;
    void onToggleAllObjects(cocos2d::CCObject* sender) = win 0x2c7250, imac 0x47a2b0;
    void reloadAllObjects() {
        static_cast<CustomListView*>(m_list->m_listView)->reloadAll();
    }
    void setSearchObject(GJSearchObject*);
    void setupLevelBrowser(cocos2d::CCArray*) = win 0x2c36d0, imac 0x47ce70, m1 0x3eafb8;
    void show() = win 0x2c7a60, m1 0x3ece8c, imac 0x47f080;
    void updateLevelsLabel();
    void updatePageLabel() = win 0x2c4a70, m1 0x3e809c, imac 0x479d90;

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
    LevelCell(char const*, float, float) = win 0xad870, imac 0x230090, m1 0x1e03b0;

    static LevelCell* create(float, float) = imac 0x23caa0, m1 0x1ec704;

    virtual bool init() = win 0xad920, imac 0x23cc50, m1 0x1ec890, ios 0x10edb8;
    virtual void draw() = win 0xb12e0, imac 0x240220, m1 0x1efb40, ios 0x111dd4;

    void loadCustomLevelCell() = win 0xadb20, imac 0x23d540, m1 0x1ed1f0;
    void loadFromLevel(GJGameLevel*) = win 0xad940, imac 0x232d00, m1 0x1e2d4c;
    void loadLocalLevelCell() = win 0xb05f0, imac 0x23cc80, m1 0x1ec8ac;
    void onClick(cocos2d::CCObject* sender) = win 0xb1080, imac 0x240090, m1 0x1ef99c;
    void onToggle(cocos2d::CCObject* sender);
    void onViewProfile(cocos2d::CCObject* sender) = win 0xb12a0, imac 0x2401f0, m1 0x1efb00;
    void updateBGColor(int);
    void updateCellMode(int) = win 0xb0df0, imac 0x23c6a0, m1 0x1ec39c;
    void updateToggle();

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
    LevelEditorLayer() = win 0x2c86d0;

    static LevelEditorLayer* create(GJGameLevel*, bool) = win 0x2c9650, imac 0xdb210, m1 0xc3090;

    static LevelEditorLayer* get() {
        return GameManager::sharedState()->m_levelEditorLayer;
    }
    static cocos2d::CCScene* scene(GJGameLevel* level, bool p1) = win inline {
        auto scene = cocos2d::CCScene::create();
        auto layer = LevelEditorLayer::create(level, p1);
        scene->addChild(layer);
        return scene;
    }
    static void updateObjectLabel(GameObject*) = win 0x2cef40, imac 0xe9cb0;

    virtual void draw() = imac 0xf52c0, m1 0xd9514, ios 0x365218;
    virtual void postUpdate(float) = win 0x2d88d0, imac 0xf21a0, m1 0xd6df4, ios 0x363080;
    virtual void updateVisibility(float) = win 0x2d0700, imac 0xeab50, m1 0xd04e0, ios 0x35e108;
    virtual void playerTookDamage(PlayerObject*) = win 0x2d88c0, imac 0xf2180, m1 0xd6de0, ios 0x36306c;
    virtual void updateColor(cocos2d::ccColor3B& color, float fadeTime, int colorID, bool blending, float opacity, cocos2d::ccHSVValue& copyHSV, int colorIDToCopy, bool copyOpacity, EffectGameObject* callerObject, int unk1, int unk2) = win 0x2d5080, imac 0xeef10, m1 0xd4138, ios 0x3611bc;
    virtual void updateDebugDraw() = win 0x2d9510, imac 0xf32d0, m1 0xd7ec0, ios 0x363e2c;
    virtual void addToGroup(GameObject*, int, bool) = win 0x2d6070, imac 0xef890, m1 0xd49bc, ios 0x36159c;
    virtual void removeFromGroup(GameObject*, int) = win 0x2d61c0, imac 0xef940, m1 0xd4a74, ios 0x361620;
    virtual void updateObjectSection(GameObject*) = win 0x2d6f90, imac 0xf0b10, m1 0xd59e4, ios 0x36221c;
    virtual TodoReturn updateDisabledObjectsLastPos(cocos2d::CCArray*) = win 0x2d7240, imac 0xf0c50, m1 0xd5aec, ios 0x362318;
    virtual float timeForPos(cocos2d::CCPoint, int, int, bool, int) = win 0x2d5f10, imac 0xef260, m1 0xd43f0, ios 0x3613c0;
    virtual cocos2d::CCPoint posForTime(float) = win 0x2d5f80, imac 0xef2f0, m1 0xd447c, ios 0x361430;
    virtual void resetSPTriggered() = imac 0xef390, m1 0xd44bc, ios 0x361450;
    virtual TodoReturn didRotateGameplay() = win 0x2d6f20, imac 0xf0910, m1 0xd57e8, ios 0x362078;
    virtual TodoReturn manualUpdateObjectColors(GameObject*) = win 0x2d1700, m1 0xd0ff4, imac 0xeb6d0, ios 0x35ea4c;
    virtual TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool) = win 0x2d9060, imac 0xf3080, m1 0xd7c6c, ios 0x363bf0;
    virtual TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*) = win 0x2d9120, imac 0xf3140, m1 0xd7d4c, ios 0x363cbc;
    virtual TodoReturn activatedAudioTrigger(SFXTriggerGameObject*) = win 0x2d87c0, imac 0xf20a0, m1 0xd6d1c, ios 0x362fa8;
    virtual void checkpointActivated(CheckpointGameObject*) = win 0x2d87f0, imac 0xf20d0, m1 0xd6d34, ios 0x362fc0;
    virtual void addKeyframe(KeyframeGameObject*) = win 0x2d9160, imac 0xf3180, m1 0xd7d8c, ios 0x363cfc;
    virtual void levelSettingsUpdated() = win 0x2cb030, imac 0xdf4f0, m1 0xc699c, ios 0x358cb4;

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
    void addSpecial(GameObject*) = win 0x2cf4a0, m1 0xc7674;
    TodoReturn addToRedoList(UndoObject*);
    TodoReturn addTouchPoint(cocos2d::CCPoint);
    TodoReturn addToUndoList(UndoObject*, bool) = imac 0xe0210;
    TodoReturn applyAttributeState(GameObject*, GameObject*);
    TodoReturn applyGroupState(GameObject*, GameObject*);
    TodoReturn breakApartTextObject(TextGameObject*);
    bool canPasteState();
    TodoReturn clearPlayerPoints();
    TodoReturn clearTouchPoints();
    TodoReturn copyObjectState(GameObject*);
    TodoReturn copyParticleState(ParticleGameObject*);
    GameObject* createObject(int, cocos2d::CCPoint, bool) = win 0x2cbf90;
    void createObjectsFromSetup(gd::string&);
    cocos2d::CCArray* createObjectsFromString(gd::string const&, bool, bool) = win 0x2cb920, m1 0xc6e60, imac 0xdf9e0;
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
    TodoReturn getLastObjectX() = imac 0xed530;
    gd::string getLevelString() = win 0x2ce530, imac 0xe3a60;
    TodoReturn getLockedLayers();
    TodoReturn getNextColorChannel();
    int getNextFreeAreaEffectID(cocos2d::CCArray*) = win 0x2d26d0;
    TodoReturn getNextFreeBlockID(cocos2d::CCArray*);
    int getNextFreeEditorLayer(cocos2d::CCArray*);
    TodoReturn getNextFreeEnterChannel(cocos2d::CCArray*);
    int getNextFreeGradientID(cocos2d::CCArray*) = win 0x2d27b0;
    int getNextFreeGroupID(cocos2d::CCArray*) = win 0x2d2030, imac 0xebbf0, m1 0xd1514;
    int getNextFreeItemID(cocos2d::CCArray*) = win 0x2d22b0;
    TodoReturn getNextFreeOrderChannel(cocos2d::CCArray*);
    TodoReturn getNextFreeSFXGroupID(cocos2d::CCArray*);
    TodoReturn getNextFreeSFXID(cocos2d::CCArray*);
    TodoReturn getObjectRect(GameObject*, bool, bool) = win 0x2cd0f0;
    TodoReturn getRelativeOffset(GameObject*);
    TodoReturn getSavedEditorPosition(int) = imac 0xe9750;
    TodoReturn getSavedEditorPositions() = imac 0xe9790;
    TodoReturn getSectionCount() = imac 0xe9bb0;
    TodoReturn getSelectedEditorOrder();
    TodoReturn getSelectedEffectPos();
    TodoReturn getSelectedOrderChannel();
    TodoReturn getSFXIDs();
    TodoReturn getSongIDs(bool&);
    TodoReturn getTriggerGroup(int);
    void handleAction(bool, cocos2d::CCArray*) = win 0x2cde30, imac 0xe3140, m1 0xca1b0;
    bool hasAction(bool);
    bool init(GJGameLevel*, bool) = win 0x2c96e0, m1 0xc3124, imac 0xdb280;
    bool isLayerLocked(int layer) {
        if (layer < 10000 && m_layerLockingEnabled) {
            return m_lockedLayers.at(layer);
        }
        return false;
    }
    GameObject* objectAtPosition(cocos2d::CCPoint) = win 0x2cc940;
    TodoReturn objectMoved(GameObject*) = imac 0xea300;
    TodoReturn objectsAtPosition(cocos2d::CCPoint);
    cocos2d::CCArray* objectsInRect(cocos2d::CCRect, bool);
    void onPausePlaytest();
    void onPlaytest() = win 0x2d7330, imac 0xf0f00, m1 0xd5d40;
    void onResumePlaytest() = win 0x2d7d60;
    void onStopPlaytest() = win 0x2d7f50, m1 0xd67f8, imac 0xf1ae0;
    TodoReturn pasteAttributeState(GameObject*, cocos2d::CCArray*);
    TodoReturn pasteColorState(GameObject*, cocos2d::CCArray*);
    TodoReturn pasteGroupState(GameObject*, cocos2d::CCArray*);
    TodoReturn pasteParticleState(ParticleGameObject*, cocos2d::CCArray*);
    void processLoadedMoveActions() = imac 0xb7920, m1 0xa7448;
    TodoReturn quickUpdateAllPositions() = win 0x2d70c0;
    TodoReturn recreateGroups() = imac 0xef9c0;
    void redoLastAction() = win inline {
        return this->handleAction(false, m_redoObjects);
    }
    TodoReturn refreshSpecial(GameObject*);
    TodoReturn removeAllObjects();
    TodoReturn removeAllObjectsOfType(int) = win 0x2cdbb0;
    TodoReturn removeObject(GameObject*, bool) = imac 0xe27e0, m1 0xc98e4;
    TodoReturn removePlayerCollisionBlock();
    void removeSpecial(GameObject*) = win 0x2cfbb0, imac 0xe28a0, m1 0xc99a4;
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
    TodoReturn rotationForSlopeNearObject(GameObject*) = imac 0xe1170;
    TodoReturn runColorEffect(EffectGameObject*, int, float, float, bool);
    TodoReturn saveEditorPosition(cocos2d::CCPoint&, int) = imac 0xe9730;
    void setObjectCount(int);
    TodoReturn shouldBlend(int);
    TodoReturn sortBatchnodeChildren(float);
    TodoReturn spawnGroupPreview(int, float, float, float, float, float, bool, bool);
    TodoReturn stopPlayback();
    TodoReturn stopTriggersInGroup(int, float);
    TodoReturn timeObjectChanged();
    TodoReturn toggleBackground(bool);
    TodoReturn toggleGrid(bool);
    TodoReturn toggleGround(bool) = imac 0xdf280;
    TodoReturn toggleGroupPreview(int, bool);
    TodoReturn toggleLockActiveLayer();
    TodoReturn transferDefaultColors(GJEffectManager*, GJEffectManager*) = imac 0xed150;
    TodoReturn triggerFollowCommand(EffectGameObject*);
    TodoReturn triggerPlayerFollowCommand(EffectGameObject*);
    TodoReturn triggerRotateCommand(EffectGameObject*);
    bool tryUpdateSpeedObject(EffectGameObject*, bool) = win 0x2d0190, imac 0xea170;
    bool typeExistsAtPosition(int, cocos2d::CCPoint, bool, bool, float) = win 0x2cc340;
    void undoLastAction() = win inline {
        return this->handleAction(true, m_undoObjects);
    }
    TodoReturn unlockAllLayers() = imac 0xe9c60;
    TodoReturn updateAnimateOnTriggerObjects(bool);
    TodoReturn updateArt(float);
    TodoReturn updateBlendValues();
    void updateEditor(float) = win 0x2d0330, imac 0xddb40, m1 0xc53b8;
    void updateEditorMode() = win 0x2d2e10, imac 0xdeeb0, m1 0xc6370;
    void updateGameObjects() = imac 0xddf40, m1 0xc57c0;
    TodoReturn updateGridLayer();
    TodoReturn updateGridLayerParent();
    TodoReturn updateKeyframeObjects() = win 0x2d9490, imac 0xeb650;
    TodoReturn updateKeyframeVisibility(bool);
    void updateLevelFont(int) = win 0x2d66d0;
    void updateObjectColors(cocos2d::CCArray* gameObjects) = win 0x2d1790, imac 0xeb700, m1 0xd102c;
    void updateOptions() = win 0x2ca8f0, m1 0xc4394, imac 0xdc880;
    void updatePreviewAnim();
    void updatePreviewParticle(ParticleGameObject*) = imac 0x1a1820, m1 0x1642bc;
    void updatePreviewParticles() = imac 0xecfe0, win 0x2d8ec0;
    TodoReturn updateToggledGroups();
    TodoReturn validGroup(GameObject*, bool);

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
    PAD = win 0x1c, android32 0x14, android64 0x1c, mac 0x1c, ios 0x1c;
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

    PAD = win 0xe8, android32 0x8c, android64 0xf8;
}

[[link(android)]]
class LevelFeatureLayer : FLAlertLayer {
    // virtual ~LevelFeatureLayer();

    static LevelFeatureLayer* create(int);

    virtual void keyBackClicked() = m1 0x4530b8, imac 0x4f2260;

    bool init(int) = m1 0x45260c, imac 0x4f1770;
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
}

[[link(android)]]
class LevelInfoLayer : cocos2d::CCLayer, LevelDownloadDelegate, LevelUpdateDelegate, RateLevelDelegate, LikeItemDelegate, FLAlertLayerProtocol, LevelDeleteDelegate, NumberInputDelegate, SetIDPopupDelegate, TableViewCellDelegate {
    // virtual ~LevelInfoLayer();
    // LevelInfoLayer() = ios 0x31658;

    static LevelInfoLayer* create(GJGameLevel* level, bool challenge) = win 0x2e2860, imac 0x2a9700, m1 0x24f8ac;
    static cocos2d::CCScene* scene(GJGameLevel* level, bool challenge) = win 0x2e2810, imac 0x2a96b0, m1 0x24f850;

    virtual void keyBackClicked() = win 0x2ebdd0, imac 0x2b1280, m1 0x25718c, ios 0x2f294;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x2ebde0, imac 0x2b12b0, m1 0x257198, ios 0x2f2a0;
    virtual void numberInputClosed(NumberInputLayer*) = win 0x2e8e30, imac 0x2b0a70, m1 0x256974, ios 0x2ecd0;
    virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = win 0x2e51b0, imac 0x2aeea0, m1 0x254e84, ios 0x2d6a0;
    virtual void levelDownloadFinished(GJGameLevel*) = win 0x2e7210, imac 0x2afc80, m1 0x255be8, ios 0x2e2c4;
    virtual void levelDownloadFailed(int) = win 0x2e7570, imac 0x2aff70, m1 0x255ea8, ios 0x2e540;
    virtual void levelUpdateFinished(GJGameLevel*, UpdateResponse) = win 0x2e76a0, imac 0x2b0060, m1 0x255f8c, ios 0x2e600;
    virtual void levelUpdateFailed(int) = win 0x2e7800, imac 0x2b0270, m1 0x25619c, ios 0x2e720;
    virtual void levelDeleteFinished(int) = win 0x2e7930, m1 0x256284, imac 0x2b0370, ios 0x2e7e4;
    virtual void levelDeleteFailed(int) = win 0x2e7a70, m1 0x256378, imac 0x2b0480, ios 0x2e8b4;
    virtual void rateLevelClosed() = win 0x2e9cd0, imac 0x2b0f70, m1 0x256ea8, ios 0x2f0ec;
    virtual void likedItem(LikeItemType, int, bool) = win 0x2e9f50, imac 0x2b0fa0, m1 0x256eb4, ios 0x2f0f8;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2eb810, imac 0x2b10b0, m1 0x256fec, ios 0x2f170;
    virtual void setIDPopupClosed(SetIDPopup*, int) = win 0x2e53a0, m1 0x254fdc, imac 0x2aefd0, ios 0x2d7c8;
    virtual void onEnterTransitionDidFinish() = win 0x2e7bb0, m1 0x256564, imac 0x2b0660, ios 0x2ea38;

    void confirmClone(cocos2d::CCObject*) = win 0x2e9000, imac 0x2ae480, m1 0x2543fc;
    void confirmDelete(cocos2d::CCObject*) = win 0x2e9170, m1 0x253af0, imac 0x2adbc0;
    void confirmMoveToBottom(cocos2d::CCObject*) = win 0x2ea8a0, m1 0x254bb0, imac 0x2aec10;
    void confirmMoveToTop(cocos2d::CCObject*) = win 0x2ea760, imac 0x2aeb30, m1 0x254ac0;
    void confirmOwnerDelete(cocos2d::CCObject*) = m1 0x2541c0, imac 0x2ae280;
    void downloadLevel() = win 0x2e5770, m1 0x2523a0, imac 0x2ac410;
    void incrementDislikes();
    void incrementLikes();
    bool init(GJGameLevel* level, bool challenge) = win 0x2e2a90, imac 0x2a98e0, m1 0x24fa08;
    void loadLevelStep() = win 0x2e8a00, imac 0x2b07d0, m1 0x2566dc;
    void onAddToList(cocos2d::CCObject* sender) = win 0x2e5160, imac 0x2aee40, m1 0x254e2c;
    void onBack(cocos2d::CCObject* sender) = win 0x2ebce0, imac 0x2ae6d0, m1 0x254684;
    void onClone(cocos2d::CCObject* sender);
    void onDelete(cocos2d::CCObject* sender);
    void onFavorite(cocos2d::CCObject* sender) = win 0x2e5430, imac 0x2aeab0, m1 0x254a40;
    void onFeatured(cocos2d::CCObject* sender);
    void onGarage(cocos2d::CCObject* sender) = win 0x2e55b0, m1 0x2549e8, imac 0x2aea50;
    void onInfo(cocos2d::CCObject* sender) = win 0x2e8b60, imac 0x2addb0;
    void onLevelInfo(cocos2d::CCObject* sender) = win 0x2ea510, m1 0x254704, imac 0x2ae750;
    void onLevelLeaderboard(cocos2d::CCObject* sender) = win 0x2e54d0, imac 0x2adde0, m1 0x253d3c;
    void onLevelOptions(cocos2d::CCObject* sender) = win 0x2ea3c0;
    void onLike(cocos2d::CCObject* sender) = win 0x2e9e60, m1 0x253da8, imac 0x2ade50;
    void onLowDetailMode(cocos2d::CCObject* sender);
    void onOwnerDelete(cocos2d::CCObject* sender);
    void onPlay(cocos2d::CCObject* sender) = win 0x2e7bd0, m1 0x251bc4, imac 0x2abca0;
    void onPlayReplay(cocos2d::CCObject* sender);
    void onRate(cocos2d::CCObject* sender) = win 0x2e96e0, m1 0x256d54, imac 0x2b0e40;
    void onRateDemon(cocos2d::CCObject* sender) = win 0x2e9ce0, imac 0x2ae030, m1 0x253f84;
    void onRateStars(cocos2d::CCObject* sender) = win 0x2e99c0, m1 0x253e20, imac 0x2aded0;
    void onRateStarsMod(cocos2d::CCObject* sender) = win 0x2e9c80, imac 0x2ae230, m1 0x254168;
    void onSetFolder(cocos2d::CCObject* sender) = win 0x2e5300, imac 0x2aeda0, m1 0x254d6c;
    void onUpdate(cocos2d::CCObject* sender) = win 0x2ea280, m1 0x253bec, imac 0x2adcb0;
    void onViewProfile(cocos2d::CCObject* sender) = win 0x2ea460, imac 0x2abc20, m1 0x251b4c;
    void playStep2();
    void playStep3() = m1 0x256650;
    void playStep4() = win 0x2e8ab0, m1 0x25678c;
    void setupLevelInfo() = win 0x2e65c0, m1 0x252478, imac 0x2ac500;
    void setupPlatformerStats() = win 0x2e5a80, m1 0x252fc8, imac 0x2ad140;
    void setupProgressBars() = win 0x2e5eb0, m1 0x25336c, imac 0x2ad480;
    bool shouldDownloadLevel();
    void showSongWarning() = imac 0x2b0590, m1 0x25646c;
    void showUpdateAlert(UpdateResponse) = win 0x2e7710, imac 0x2b00d0, m1 0x255ffc;
    void tryCloneLevel(cocos2d::CCObject*) = win 0x2e8ba0, imac 0x2ae5b0, m1 0x254548;
    TodoReturn tryShowAd();
    void updateLabelValues() = win 0x2ea9d0, imac 0x2af160, m1 0x25517c;
    void updateSideButtons() = win 0x2e9fc0, m1 0x253fd8, imac 0x2ae090;

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
    GJLevelType m_levelType;
    bool m_noUpdateAlert;
    bool m_enterTransitionFinished;
    LoadingCircle* m_circle;
    GJDifficultySprite* m_difficultySprite;
    cocos2d::CCSprite* m_starsIcon;
    cocos2d::CCLabelBMFont* m_starsLabel;
    cocos2d::CCArray* m_icons;
    float m_iconOffset;
    cocos2d::CCPoint m_basePosition;
    float m_baseStarsY;
    bool m_challenge;
    cocos2d::CCScene* m_playScene;
    cocos2d::CCSprite* m_playSprite;
    cocos2d::CCProgressTimer* m_progressTimer;
    CustomSongWidget* m_songWidget;
}

[[link(android)]]
class LevelLeaderboard : FLAlertLayer, LeaderboardManagerDelegate, FLAlertLayerProtocol {
    // virtual ~LevelLeaderboard();

    static LevelLeaderboard* create(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = win 0x2ebf80, imac 0x3c72e0, m1 0x350108;

    virtual void registerWithTouchDispatcher() = imac 0x3c9280, m1 0x351f28, ios 0x24fe80;
    virtual void keyBackClicked() = m1 0x351eac, imac 0x3c9210, ios 0x24fe04;
    virtual void show() = win 0x867a0, imac 0x3c97c0, m1 0x35241c, ios 0x250194;
    virtual void loadLeaderboardFinished(cocos2d::CCArray*, char const*) = win 0x2ee140, imac 0x3c94c0, m1 0x35214c, ios 0x24ffbc;
    virtual void loadLeaderboardFailed(char const*) = win 0x2ee1e0, imac 0x3c9600, m1 0x352298, ios 0x250060;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2ed570, imac 0x3c8e60, m1 0x351b24, ios 0x24fadc;
    virtual void updateUserScoreFinished() = win 0x2edb90, imac 0x3c9060, m1 0x351d1c, ios 0x24fcc0;
    virtual void updateUserScoreFailed() = win 0x2edba0, m1 0x351d28, imac 0x3c9090, ios 0x24fccc;

    TodoReturn deleteLocalScores() = m1 0x351994, imac 0x3c8d10;
    TodoReturn getLocalScores();
    TodoReturn getSpriteButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint, int) = imac 0x3c8500, m1 0x351164;
    bool init(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = win 0x2ec0c0, m1 0x350244, imac 0x3c7470;
    bool isCorrect(char const*);
    void loadScores() = m1 0x3515ec;
    void onChangeMode(cocos2d::CCObject* sender) = win 0x2edd40, m1 0x351344;
    void onChangeType(cocos2d::CCObject* sender) = win 0x2edca0;
    void onClose(cocos2d::CCObject* sender) = win 0x84620, m1 0x35146c, imac 0x3c87f0;
    void onDeleteLocalScores(cocos2d::CCObject* sender) = imac 0x3c8720, m1 0x351394;
    void onUpdate(cocos2d::CCObject* sender) = win 0x2eddc0, m1 0x3514a8, imac 0x3c8820;
    TodoReturn reloadLeaderboard(LevelLeaderboardType, LevelLeaderboardMode);
    TodoReturn setupLeaderboard(cocos2d::CCArray*) = m1 0x351800, imac 0x3c8b60;

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

    virtual bool init() = m1 0x1f5bc0, imac 0x247460, ios 0x115ae0;
    virtual void draw() = imac 0x2475a0, m1 0x1f5cd8, ios 0x115bf8;

    void loadFromList(GJLevelList*) = win 0xbdf90, imac 0x233ae0, m1 0x1e3af4;
    void onClick(cocos2d::CCObject* sender) = win 0xbf3c0, imac 0x247470, m1 0x1f5bc8;
    void onListInfo(cocos2d::CCObject* sender);
    void onViewProfile(cocos2d::CCObject* sender) = imac 0x247550, m1 0x1f5c90;
    TodoReturn updateBGColor(int);

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

    static LevelListLayer* create(GJLevelList* list) = win inline, imac 0x3484a0, m1 0x2dd04c {
        auto ret = new LevelListLayer();
        if (ret->init(list)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCScene* scene(GJLevelList*) = win 0x2ee9c0, m1 0x2dcfac, imac 0x348410;

    virtual void onEnter() = win 0x2f0680, m1 0x2e01ec, imac 0x34b870, ios 0x2450b4;
    virtual void onExit() = win 0x2f06b0, m1 0x2e0224, imac 0x34b8a0, ios 0x2450ec;
    virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) = win 0x2f1e80, imac 0x34bc60, m1 0x2e05ec, ios 0x2453b8;
    virtual void loadLevelsFailed(char const*, int) = win 0x2c4370, m1 0x2e081c, imac 0x34bea0, ios 0x245520;
    virtual void onBack(cocos2d::CCObject* sender) = win 0x2f26e0, imac 0x34c3e0, m1 0x2e0c88, ios 0x2457ec;
    virtual void shareCommentClosed(gd::string, ShareCommentLayer*) = win 0x2f2ee0, imac 0x34cb40, m1 0x2e13e8, ios 0x245e38;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2f2b00, imac 0x34c760, m1 0x2e1024, ios 0x245b18;
    virtual void setIDPopupClosed(SetIDPopup*, int) = win 0x2f2630, imac 0x34c280, m1 0x2e0b3c, ios 0x24573c;
    virtual cocos2d::CCArray* updateResultArray(cocos2d::CCArray*) = win 0x2f26d0, m1 0x2e0c80, imac 0x34c3c0, ios 0x2457e4;
    virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = win 0x2f21e0, imac 0x34bed0, m1 0x2e0828, ios 0x24552c;
    virtual void likedItem(LikeItemType, int, bool) = win 0x2f3100, imac 0x34cc30, m1 0x2e14dc, ios 0x245efc;
    virtual void iconSelectClosed(SelectListIconLayer*) = win 0x2f33b0, imac 0x34ce70, m1 0x2e16bc, ios 0x24601c;
    virtual void levelListDeleteFinished(int) = win 0x2f3cd0, m1 0x2e17ec, imac 0x34d000, ios 0x246100;
    virtual void levelListDeleteFailed(int) = win 0x2f3e00, m1 0x2e18d8, imac 0x34d100, ios 0x2461c8;
    virtual void textInputOpened(CCTextInputNode*) = win 0x2f41c0, imac 0x34d410, m1 0x2e1bdc, ios 0x2463f4;
    virtual void textInputClosed(CCTextInputNode*) = win 0x2f3f30, imac 0x34d200, m1 0x2e19c4, ios 0x246290;
    virtual void textChanged(CCTextInputNode*) = win 0x2f4320, imac 0x34d4e0, m1 0x2e1ce0, ios 0x2464f0;

    void cloneList() = win 0x2f3790;
    void confirmClone(cocos2d::CCObject*) = win 0x2f36a0, imac 0x34a2e0, m1 0x2decc4;
    void confirmDelete(cocos2d::CCObject*) = win 0x2f3a20, m1 0x2def6c, imac 0x34a590;
    void confirmOwnerDelete(cocos2d::CCObject*) = win 0x2f3b50, imac 0x34a470, m1 0x2dee64;
    bool init(GJLevelList*) = win 0x2eebf0, m1 0x2dd0cc, imac 0x348500;
    void onClaimReward(cocos2d::CCObject* sender) = win 0x2f1650, m1 0x2e024c, imac 0x34b8c0;
    void onDelete();
    void onDescription(cocos2d::CCObject* sender) = imac 0x34a680, m1 0x2df064;
    void onFavorite(cocos2d::CCObject* sender) = win 0x2f2ce0, imac 0x34a3c0, m1 0x2dedb4;
    void onInfo(cocos2d::CCObject* sender) = win 0x2f2fe0, imac 0x34a230;
    void onLike(cocos2d::CCObject* sender) = win 0x2f3020, m1 0x2dec54;
    void onListInfo(cocos2d::CCObject* sender);
    void onRefreshLevelList(cocos2d::CCObject* sender) = win 0x2f1cc0, m1 0x2deb14;
    void onSelectIcon(cocos2d::CCObject* sender) = win 0x2f3260, m1 0x2df1ac;
    void onShare(cocos2d::CCObject* sender) = win 0x2f33d0, imac 0x34a800, m1 0x2df1f8;
    void onToggleEditMode(cocos2d::CCObject* sender) = win 0x2f3660, imac 0x34a770, m1 0x2df184;
    void onViewProfile(cocos2d::CCObject* sender) = win 0x2f2ca0, imac 0x34a0e0, m1 0x2deadc;
    void ownerDelete();
    void updateEditMode();
    void updateSideButtons() = win 0x2f3160, imac 0x34a960, m1 0x2df334;
    void updateStatsArt() = win 0x2f06d0, m1 0x2df3c8, imac 0x34a9f0;
    void verifyListName();

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

    virtual void valueDidChange(int, float) = win 0x30fb80, imac 0x25fbc0, m1 0x20bbd0, ios 0x181230;
    virtual float getValue(int) = win 0x30fba0, imac 0x25fbe0, m1 0x20bbe8, ios 0x181248;
    virtual void setupOptions() = win 0x30f4e0, m1 0x20b58c, imac 0x25f470, ios 0x180d58;
    virtual void didToggle(int) = win 0x30fbc0, imac 0x25fc00, m1 0x20bc04, ios 0x181264;

    bool init(LevelSettingsObject*) = win 0x30f470, imac 0x25f420;
    void onSettings(cocos2d::CCObject* sender) = win 0x30f9a0, imac 0x25f920, m1 0x20b9f4;

    LevelSettingsObject* m_settingsObject;
}

[[link(android)]]
class LevelOptionsLayer2 : LevelOptionsLayer {
    // virtual ~LevelOptionsLayer2();

    static LevelOptionsLayer2* create(LevelSettingsObject*) = m1 0x20ba34;

    virtual void setupOptions() = win 0x30fe20, imac 0x25fec0, m1 0x20beb4, ios 0x1814e4;

    bool init(LevelSettingsObject*) = imac 0x25fdc0, m1 0x20bdb8;
}

[[link(android)]]
class LevelPage : cocos2d::CCLayer, DialogDelegate {
    // virtual ~LevelPage();
    LevelPage() {}

    static LevelPage* create(GJGameLevel* level) = win inline, imac 0x41fda0, m1 0x39b290 {
        auto ret = new LevelPage();
        if (ret->init(level)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x309700, imac 0x424bf0, m1 0x39fd40, ios 0x3fdab4;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x39fe48, imac 0x424d10, ios 0x3fdbb0 {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x39fe50, imac 0x424d30, ios 0x3fdbb8 {}
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x39fe58, imac 0x424d50, ios 0x3fdbc0;
    virtual void registerWithTouchDispatcher() = win 0x9b1a0, imac 0x424d90, m1 0x39fe74, ios 0x3fdbdc;
    virtual void dialogClosed(DialogLayer*) = win 0x308c10, m1 0x39fa78, imac 0x424940, ios 0x3fd88c;

    void addSecretCoin() = win 0x307810, m1 0x39cb1c, imac 0x4215a0;
    void addSecretDoor() = win 0x307f20, m1 0x39ed88, imac 0x423b10;
    bool init(GJGameLevel*) = win 0x305070, m1 0x39dc80, imac 0x422900;
    void onInfo(cocos2d::CCObject* sender) = win 0x309260, m1 0x39d69c, imac 0x422200;
    void onMoreGames(cocos2d::CCObject* sender);
    void onPlay(cocos2d::CCObject* sender) = win 0x308cf0, imac 0x421ef0, m1 0x39d360;
    void onSecretDoor(cocos2d::CCObject* sender) = win 0x308130, imac 0x424140, m1 0x39f3a0;
    void onTheTower(cocos2d::CCObject* sender) = win 0x307150, m1 0x39e83c, imac 0x423570;
    void playCoinEffect() = win 0x307a50, imac 0x423cf0, m1 0x39ef58;
    void playStep2();
    void playStep3() = win 0x309160;
    void updateDynamicPage(GJGameLevel*) = win 0x305d00, m1 0x39b524, imac 0x420050;

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

    static LevelSearchLayer* create(int) = imac 0x610ff0, m1 0x53d2e0;
    static cocos2d::CCScene* scene(int) = win 0x2f75f0, m1 0x53d1e8, imac 0x610eb0;

    virtual void keyBackClicked() = win 0x2fdcc0, m1 0x542290, imac 0x615fa0, ios 0x588e4;
    virtual void textInputOpened(CCTextInputNode*) = win 0x2fad00, m1 0x5417d0, imac 0x6154f0, ios 0x58198;
    virtual void textInputClosed(CCTextInputNode*) = win 0x2fae50, m1 0x5418b0, imac 0x6155c0, ios 0x58284;
    virtual void textChanged(CCTextInputNode*) = m1 0x5419c0, imac 0x615690, ios 0x58304;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2facc0, imac 0x615480, m1 0x541738, ios 0x58100;
    virtual void demonFilterSelectClosed(int) = win 0x2f97f0, imac 0x614f70, m1 0x541280, ios 0x57db8;

    bool checkDiff(int);
    bool checkTime(int);
    void clearFilters() = win 0x2f9ca0, m1 0x54146c, imac 0x6151b0;
    void confirmClearFilters(cocos2d::CCObject*) = m1 0x53f9d8, imac 0x6136c0;
    inline char const* getDiffKey(int diff) {
        return cocos2d::CCString::createWithFormat("D%i", diff)->getCString();
    }
    gd::string getLevelLenKey() = win 0x14b660;
    gd::string getSearchDiffKey() = m1 0x541e38;
    GJSearchObject* getSearchObject(SearchType, gd::string) = win 0x2fb290, m1 0x541ae4, imac 0x615780;
    inline char const* getTimeKey(int time) {
        return cocos2d::CCString::createWithFormat("T%i", time)->getCString();
    }
    bool init(int) = win 0x2f7740, imac 0x611100, m1 0x53d3b8;
    void onBack(cocos2d::CCObject* sender) = win 0x2fd040;
    void onClearFreeSearch(cocos2d::CCObject* sender) = win 0x2fd000, imac 0x613e40, m1 0x540128;
    void onClose(cocos2d::CCObject* sender) = win inline {
        m_searchInput->onClickTrackNode(false);
    }
    void onFollowed(cocos2d::CCObject* sender) = win 0x2fcac0;
    void onFriends(cocos2d::CCObject* sender) = win 0x2fca00;
    void onLatestStars(cocos2d::CCObject* sender) = win 0x2fc940;
    void onMagic(cocos2d::CCObject* sender) = win 0x2fc7c0;
    void onMoreOptions(cocos2d::CCObject* sender) = win 0x2f9a80, imac 0x6137a0;
    void onMostDownloaded(cocos2d::CCObject* sender) = win 0x2fc4c0;
    void onMostLikes(cocos2d::CCObject* sender) = win 0x2fc580;
    void onMostRecent(cocos2d::CCObject* sender) = win 0x2fc880, m1 0x540424, imac 0x614110;
    void onSearch(cocos2d::CCObject* sender) = win 0x2fcb80, m1 0x53fe68, imac 0x613ba0;
    void onSearchMode(cocos2d::CCObject* sender) = win 0x2f9a30, imac 0x6137c0, m1 0x53fad4;
    void onSearchUser(cocos2d::CCObject* sender) = win 0x2fcdc0, m1 0x53fff0, imac 0x613d10;
    void onSpecialDemon(cocos2d::CCObject* sender) = win 0x2f9690, m1 0x540b44;
    void onStarAward(cocos2d::CCObject* sender);
    void onSuggested(cocos2d::CCObject* sender) = win 0x2fc640;
    void onTrending(cocos2d::CCObject* sender) = win 0x2fc700;
    void toggleDifficulty(cocos2d::CCObject*) = win 0x2fd3c0, imac 0x614340, m1 0x540640;
    void toggleDifficultyNum(int, bool) = win 0x2fd720, imac 0x614ae0, m1 0x540e20;
    void toggleStar(cocos2d::CCObject*) = win 0x2fd0b0, m1 0x540d30, imac 0x614a10;
    void toggleTime(cocos2d::CCObject*);
    void toggleTimeNum(int, bool) = win 0x2fdb30, imac 0x614c70, m1 0x540fb4;
    void updateSearchLabel(char const*) = win 0x2faf20;

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
    ~LevelSelectLayer() = imac 0x49d170;

    static LevelSelectLayer* create(int page) = win inline, imac 0x41f070 {
        auto ret = new LevelSelectLayer();
        if (ret->init(page)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCScene* scene(int) = win 0x303710, imac 0x41ef50, m1 0x39a5b0;

    virtual void keyBackClicked() = win 0x304ed0, imac 0x421c50, m1 0x39d1bc, ios 0x3fb7b0;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x304f20, imac 0x421cf0, m1 0x39d250, ios 0x3fb7bc;
    virtual void updatePageWithObject(cocos2d::CCObject*, cocos2d::CCObject*) = win 0x304650, imac 0x41ffe0, m1 0x39b4a8, ios 0x3fa324;
    virtual void scrollLayerMoved(cocos2d::CCPoint) = win 0x3046c0, imac 0x4217c0, m1 0x39cd34, ios 0x3fb4a4;

    cocos2d::ccColor3B colorForPage(int page) = win 0x3049e0, imac 0x421bd0, m1 0x39d12c;
    cocos2d::ccColor3B getColorValue(int, int, float) = imac 0x421930, m1 0x39ce88;
    bool init(int page) = win 0x303840, m1 0x39a760, imac 0x41f160;
    void onBack(cocos2d::CCObject* sender) = win 0x304e80, m1 0x39b424, imac 0x41ff50;
    void onDownload(cocos2d::CCObject* sender) = win 0x304600, m1 0x39b36c, imac 0x41fea0;
    void onInfo(cocos2d::CCObject* sender) = win 0x305000, m1 0x39b46c, imac 0x41ffa0;
    void onNext(cocos2d::CCObject* sender) = win 0x304d80, m1 0x39b3f4, imac 0x41ff20;
    void onPlay(cocos2d::CCObject* sender) = imac 0x421ea0, m1 0x39d328;
    void onPrev(cocos2d::CCObject* sender) = win 0x304e00, m1 0x39b3c4, imac 0x41fef0;
    void tryShowAd();

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

    static LevelSettingsLayer* create(LevelSettingsObject*, LevelEditorLayer*) = win 0x309ca0, imac 0x259580, m1 0x205e3c;

    virtual void registerWithTouchDispatcher() = win 0x30c750, m1 0x20916c, imac 0x25cd20, ios 0x17f49c;
    virtual void keyBackClicked() = win 0x30d5f0, imac 0x25d650, m1 0x2099b8, ios 0x17f9dc;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xc3110, m1 0x2095dc, imac 0x25d1b0, ios 0x17f6c4;
    virtual void colorSelectClosed(cocos2d::CCNode*) = win 0x30ce80, imac 0x25d0d0, m1 0x209524, ios 0x17f60c;
    virtual void selectArtClosed(SelectArtLayer*) = win 0x30d2a0, imac 0x25d3e0, m1 0x2097b8, ios 0x17f7dc;
    virtual void selectSettingClosed(SelectSettingLayer*) = win 0x30c5d0, imac 0x25cb50, m1 0x208fb0, ios 0x17f2f4;
    virtual void textInputClosed(CCTextInputNode*) = m1 0x2091c4, imac 0x25cd70, ios 0x17f4f4;
    virtual void textChanged(CCTextInputNode*) = win 0x30ca80, imac 0x25cdb0, m1 0x2091e0, ios 0x17f510;

    void createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = win 0x30c7d0, imac 0x25c430;
    bool init(LevelSettingsObject*, LevelEditorLayer*) = win 0x309e90, imac 0x259780, m1 0x205fa4;
    void onBGArt(cocos2d::CCObject* sender) = win 0x30d060, imac 0x25c190;
    void onClose(cocos2d::CCObject* sender) = win 0x30cc50, imac 0x25c320, m1 0x20888c;
    void onCol(cocos2d::CCObject* sender);
    void onDisable(cocos2d::CCObject* sender);
    void onFGArt(cocos2d::CCObject* sender) = win 0x30d130, imac 0x25c2c0;
    void onGameplayMode(cocos2d::CCObject* sender) = win 0x30c3a0, imac 0x25c010, m1 0x2085a4;
    void onGArt(cocos2d::CCObject* sender) = win 0x30d0b0, imac 0x25c1d0, m1 0x208768;
    void onLiveEdit(cocos2d::CCObject* sender) = win 0x30cd90, imac 0x25bfd0, m1 0x208560;
    void onMode(cocos2d::CCObject* sender) = win 0x30c570, imac 0x25c710, m1 0x208c90;
    void onOptionToggle(cocos2d::CCObject* sender) = win 0x30ca40, imac 0x25c660, m1 0x208be8;
    void onSelectFont(cocos2d::CCObject* sender);
    void onSelectMode(cocos2d::CCObject* sender) = imac 0x25ceb0, m1 0x209300;
    void onSelectSpeed(cocos2d::CCObject* sender) = imac 0x25cf70, m1 0x2093c0;
    void onSettings(cocos2d::CCObject* sender) = win 0x30c4b0, imac 0x25c760;
    void onShowPicker(cocos2d::CCObject* sender) = win 0x30cde0, imac 0x25bbe0, m1 0x2081d8;
    void onSpeed(cocos2d::CCObject* sender) = win 0x30c520, imac 0x25c6d0, m1 0x208c54;
    void showPicker(ColorAction*) = m1 0x2094f0;
    void updateColorSprite(ColorChannelSprite*) = win 0x30cf00, imac 0x25d100, m1 0x209530;
    void updateColorSprites() = win 0x30ce90, imac 0x25bc60, m1 0x20824c;
    void updateGameplayModeButtons() = win 0x30c3e0, imac 0x25c0e0, m1 0x208678;

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

    static LevelSettingsObject* create() = win 0x2dd1f0;
    static LevelSettingsObject* objectFromDict(cocos2d::CCDictionary*) = win 0x2deff0, imac 0xf7bf0, m1 0xdb500;
    static LevelSettingsObject* objectFromString(gd::string const& str) = win inline {
        return objectFromDict(GameToolbox::stringSetupToDict(str, ","));
    }

    virtual bool init() = win 0x2dd320, imac 0xf7a30, m1 0xdb388, ios 0x366b34;

    gd::string getSaveString() = win 0x2dd630, m1 0xcacc0;
    void setupColorsFromLegacyMode(cocos2d::CCDictionary*) = win 0x2e0840, imac 0xf93f0, m1 0xdcba8;
    bool shouldUseYSection() = win inline {
        return m_platformerMode || m_dynamicLevelHeight;
    }

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
    static int artistForAudio(int) = win 0x314320;
    static gd::string base64DecodeString(gd::string);
    static gd::string base64EncodeString(gd::string) = imac 0x4ee880, m1 0x44fd1c;
    static cocos2d::CCDictionary* createStarPackDict() = m1 0x44fd8c, imac 0x4ee920;
    static gd::string fbURLForArtist(int) = win 0x316430, m1 0x44df44, imac 0x4ec970;
    static int getAudioBPM(int);
    static gd::string getAudioFileName(int) = win 0x313750, imac 0x4eb120, m1 0x44ca9c;
    static gd::string getAudioString(int) = win 0x316950, imac 0x4ecd10, m1 0x44e26c;
    static gd::string getAudioTitle(int) = win 0x312bd0, imac 0x4eab80, m1 0x44c364;
    static TodoReturn getLastGameplayReversed();
    static TodoReturn getLastGameplayRotated();
    static TodoReturn getLastTimewarp();
    static GJGameLevel* getLevel(int, bool) = win 0x310320, imac 0x4e8620, m1 0x44a514;
    static gd::unordered_set<int> getLevelList() = m1 0x44a138, imac 0x4e82b0;
    static SongInfoObject* getSongObject(int id) = win inline, m1 0x44f694, imac 0x4ee330 {
        auto artistID = artistForAudio(id);
        return SongInfoObject::create(id, getAudioTitle(id), nameForArtist(artistID), artistID, 0.f, "", "", "", 0, "", false, 0, -1);
    }
    static TodoReturn moveTriggerObjectsToArray(cocos2d::CCArray*, cocos2d::CCDictionary*, int);
    static gd::string nameForArtist(int) = win 0x3143f0, m1 0x44d12c;
    static gd::string ngURLForArtist(int) = win 0x315a10, m1 0x44d960, imac 0x4ec2c0;
    static TodoReturn offsetBPMForTrack(int);
    static cocos2d::CCPoint posForTime(float time, cocos2d::CCArray* p1, int p2, bool p3, int& p4);
    static cocos2d::CCPoint posForTimeInternal(float time, cocos2d::CCArray* gameObjects, int speedmodValue, bool disabledSpeedmod, bool, bool, int&, int) = win 0x317ea0;
    static TodoReturn sortChannelOrderObjects(cocos2d::CCArray*, cocos2d::CCDictionary*, bool);
    static TodoReturn sortSpeedObjects(cocos2d::CCArray*, GJBaseGameLayer*) = imac 0x66d20;
    static float timeForPos(cocos2d::CCPoint, cocos2d::CCArray*, int, int, int, bool, bool, bool, bool, int);
    static TodoReturn toggleDebugLogging(bool);
    static gd::string urlForAudio(int) = win 0x3146f0, m1 0x44d310, imac 0x4eb7f0;
    static TodoReturn valueForSpeedMod(int);
    static bool verifyLevelIntegrity(gd::string, int) = win 0x318500, imac 0x4ee730, m1 0x44fb5c;
    static gd::string ytURLForArtist(int) = win 0x315eb0, m1 0x44dc2c, imac 0x4ec5c0;
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

    static LikeItemLayer* create(LikeItemType, int, int) = win 0x318ea0, imac 0x5e1410;

    virtual void keyBackClicked() = m1 0x514184, imac 0x5e1b00, ios 0x24c0fc;

    bool init(LikeItemType, int, int) = win 0x318fa0, imac 0x5e1580, m1 0x513c28;
    void onClose(cocos2d::CCObject* sender);
    void onDislike(cocos2d::CCObject* sender) = win 0x319380, m1 0x514090, imac 0x5e1a00;
    void onLike(cocos2d::CCObject* sender) = win 0x319370;
    void triggerLike(bool isLiked) = win 0x319390;

    LikeItemType m_itemType;
    int m_itemID;
    int m_commentSourceID;
    LikeItemDelegate* m_likeDelegate;
}

[[link(android)]]
class ListButtonBar : cocos2d::CCNode {
    // virtual ~ListButtonBar();

    static ListButtonBar* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int) = win 0x6ad70, imac 0x3de040, m1 0x360e74;

    int getPage();
    void goToPage(int) = win 0x6b380, m1 0x361584;
    bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int) = win 0x6ae80, imac 0x3de110, m1 0x360f58;
    void onLeft(cocos2d::CCObject* sender) = win 0x6b430, m1 0x361460;
    void onRight(cocos2d::CCObject* sender) = win 0x6b410, m1 0x3614ec;

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

    static ListButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float) = win 0x6b450, imac 0x3de560, m1 0x361358;

    bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float) = imac 0x3de840, m1 0x361600;
}

[[link(android)]]
class ListCell : TableViewCell {
    // virtual ~ListCell();
    ListCell(char const*, float, float);

    virtual bool init() = m1 0x291c48, imac 0x2f9370, ios 0x1d139c;
    virtual void draw() = win 0x3c6f0, imac 0x2f9400, m1 0x291c94, ios 0x1d13a4;

    void loadFromObject(cocos2d::CCObject*, int, int, int);
    TodoReturn updateBGColor(int);
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

    static LoadingCircle* create() = win 0x6b840, m1 0x414ec0, imac 0x4abd70;

    virtual bool init() = win 0x6b940, imac 0x4abee0, m1 0x414fbc, ios 0x392d14;
    virtual void draw() = win 0x6bbc0, imac 0x4ac130, m1 0x415220, ios 0x392f78;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x8fcc, imac 0x7190, ios 0x10258 { return true; }
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x8fb0, imac 0x7150, ios 0xd590 {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x8fb0, imac 0x7150, ios 0xd590 {}
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x8fb0, imac 0x7150, ios 0xd590 {}
    virtual void registerWithTouchDispatcher() = win 0x6bbe0, imac 0x4ac150, m1 0x415230, ios 0x392f88;

    void fadeAndRemove() = win 0x6bb20, m1 0x415170, imac 0x4ac0a0;

    void setFade(bool fade) {
        m_fade = fade;
    }

    inline void setParentLayer(cocos2d::CCLayer* layer) {
        m_parentLayer = layer;
    }
    void show() = win 0x6ba20, m1 0x415078, imac 0x4abfb0;

    cocos2d::CCSprite* m_sprite;
    cocos2d::CCLayer* m_parentLayer;
    bool m_fade;
}

[[link(android)]]
class LoadingCircleSprite : cocos2d::CCSprite {
    // virtual ~LoadingCircleSprite();

    /// Create a Loading Circle Sprite with a spinning action
    /// @param spinSpeed A speed modifier, higher is faster and lower is slower
    static LoadingCircleSprite* create(float spinSpeed) = win 0x6bc30, imac 0x4ac190;

    cocos2d::CCAction* fadeInCircle(bool, float, float) = win 0x6bd30, imac 0x4ac330, m1 0x4153e4;
    void hideCircle() = win inline, m1 0x415470 {
        this->stopActionByTag(0);
        this->setOpacity(0);
        this->setVisible(false);
    }

    bool init(float);
}

[[link(android)]]
class LoadingLayer : cocos2d::CCLayer {
    // virtual ~LoadingLayer();

    static LoadingLayer* create(bool) = imac 0x38f480;
    static cocos2d::CCScene* scene(bool) = win 0x3194f0, m1 0x31e17c;

    const char* getLoadingString() = win 0x31a930, imac 0x38fcf0, m1 0x31ea9c;
    bool init(bool) = win 0x319600, imac 0x38f560, m1 0x31e314;
    void loadAssets() = win 0x319ea0, imac 0x38fdb0, m1 0x31eb80;
    void loadingFinished() = imac 0x390550, m1 0x31f290, win inline {
        cocos2d::CCDirector::sharedDirector()->replaceScene(MenuLayer::scene(m_fromRefresh));
    }
    void updateProgress(int) = win 0x319e20, imac 0x38fd50;

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

    static LocalLevelManager* sharedState() = win 0x31b070, imac 0x5df020, m1 0x511bc0;

    virtual bool init() = win 0x31b110, m1 0x511d40, imac 0x5df1c0, ios 0x1c93c8;
    virtual void encodeDataTo(DS_Dictionary*) = win 0x31bae0, m1 0x512f54, imac 0x5e0610, ios 0x1c9fd8;
    virtual void dataLoaded(DS_Dictionary*) = win 0x31bb40, imac 0x5e0670, m1 0x512fac, ios 0x1ca030;
    virtual void firstLoad() = win 0x31ba50, m1 0x512ed8, imac 0x5e0580, ios 0x1c9fa0;

    cocos2d::CCDictionary* getAllLevelsInDict() = win 0x31b4e0;
    TodoReturn getAllLevelsWithName(gd::string);
    cocos2d::CCArray* getCreatedLevels(int folder) = win inline, m1 0x512cdc, imac 0x5e0390 {
        if (folder < 1) return m_localLevels;
        auto ret = cocos2d::CCArray::create();
        CCObject* obj;
        CCARRAY_FOREACH(m_localLevels, obj) {
            if (!obj) return ret;
            if (static_cast<GJGameLevel*>(obj)->m_levelFolder == folder) ret->addObject(obj);
        }
        return ret;
    }
    cocos2d::CCArray* getCreatedLists(int folder) = win inline, m1 0x512e48, imac 0x5e04f0 {
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
    gd::string getMainLevelString(int) = win 0x31b3d0;
    TodoReturn markLevelsAsUnmodified();
    TodoReturn moveLevelToTop(GJGameLevel*);
    TodoReturn reorderLevels();
    TodoReturn reorderLists();
    TodoReturn tryLoadMainLevelString(int) = m1 0x511d80, imac 0x5df200;
    TodoReturn updateLevelOrder() = win 0x31b9d0;
    TodoReturn updateLevelRevision() = win 0x31b640, m1 0x512700, imac 0x5dfd20;
    TodoReturn updateListOrder();

    cocos2d::CCArray* m_localLevels;
    cocos2d::CCArray* m_localLists;
    gd::unordered_map<int, gd::string> m_mainLevels;
}

[[link(android)]]
class MapPackCell : TableViewCell {
    // virtual ~MapPackCell();
    MapPackCell(char const*, float, float);

    virtual bool init() = win 0xb1480, m1 0x1efea8, imac 0x2406c0, ios 0x111f90;
    virtual void draw() = imac 0x240b70, m1 0x1f0368, ios 0x112380;

    void loadFromMapPack(GJMapPack*) = win 0xb14e0, imac 0x232f20, m1 0x1e2f88;
    void onClaimReward(cocos2d::CCObject* sender) = m1 0x1f00b0;
    void onClick(cocos2d::CCObject* sender) = win 0xb2000;
    void playCompleteEffect() = win 0xb21d0, imac 0x240940, m1 0x1f012c;
    void reloadCell() = win inline, imac 0x23c5f0 {
        this->loadFromMapPack(m_mapPack);
    }
    void updateBGColor(int idx) = win inline {
        m_backgroundLayer->setColor(idx % 2 == 0 ? cocos2d::ccColor3B { 161, 88, 44 } : cocos2d::ccColor3B { 194, 114, 62 });
        m_backgroundLayer->setOpacity(255);
    }

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
    static cocos2d::CCScene* scene();

    virtual void update(float) = imac 0x256ee0, m1 0x203b7c;
    virtual bool init() = m1 0x202d08, imac 0x255f90;
    virtual void onExit() = imac 0x2571a0, m1 0x203e38;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x257850, m1 0x20441c;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x257960, m1 0x204518;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2046e8, imac 0x257b80;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2047f8, imac 0x257c60;
    virtual void registerWithTouchDispatcher() = m1 0x204814, imac 0x257ca0;
    virtual void keyBackClicked() = m1 0x203d60, imac 0x2570c0;
    virtual void scrollWheel(float, float) = imac 0x256ca0, m1 0x20395c;

    TodoReturn checkTouchMonster(cocos2d::CCPoint);
    TodoReturn createObjectAtPoint(cocos2d::CCPoint);
    TodoReturn getConstrainedMapPos(cocos2d::CCPoint);
    void onBack(cocos2d::CCObject* sender);

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

    virtual void update(float) = win 0x31d380, imac 0x4e78b0, m1 0x449800, ios 0x394154;
    virtual bool init() = win 0x31c560, m1 0x4487ac, imac 0x4e6700, ios 0x3932d0;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31e740, m1 0x449cf4, imac 0x4e7e20, ios 0x3945e4;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x449e0c, imac 0x4e7f40, ios 0x3946fc {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x449e14, imac 0x4e7f60, ios 0x394704 {}
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x449e1c, imac 0x4e7f80, ios 0x39470c;
    virtual void registerWithTouchDispatcher() = win 0x31e8f0, m1 0x449e38, imac 0x4e7fc0, ios 0x394728;

    void destroyPlayer() = win 0x31e480, imac 0x4e7c20, m1 0x449af8;
    cocos2d::ccColor3B getBGColor(int) = win 0x31cde0, imac 0x4e6b60, m1 0x448bc0;
    void resetPlayer() = win 0x31d850, imac 0x4e7060, m1 0x4490e0;
    void tryJump(float) = win 0x31d0b0, m1 0x448cc4, imac 0x4e6c00;
    void updateColor(float) = win 0x31cc90, imac 0x4e6e60, m1 0x448f34;
    void updateColors() = imac 0x4e7840, m1 0x449788;

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

    static cocos2d::CCScene* scene(bool isVideoOptionsOpen) = win 0x31ea40, m1 0x30d470, imac 0x37ccf0;

    virtual bool init() = win 0x31ebd0, imac 0x37ceb0, m1 0x30d620, ios 0x265660;
    virtual void keyBackClicked() = win 0x3210c0, imac 0x37edc0, m1 0x30f4b0, ios 0x267184;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x3214a0, imac 0x37f0a0, m1 0x30f738, ios 0x26740c;
    virtual void googlePlaySignedIn() = win 0x320ac0, imac 0x37eb30, m1 0x30f264, ios 0x266fe8;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x321290, imac 0x37edf0, m1 0x30f4bc, ios 0x267244;

    void endGame() = win 0x321510, imac 0x37f070, m1 0x30f72c;
    void firstNetworkTest() = win 0x320430;
    void onAchievements(cocos2d::CCObject* sender) = win 0x320960, m1 0x30eaa8, imac 0x37e370;
    void onCreator(cocos2d::CCObject* sender) = win 0x320e70, m1 0x30ea2c, imac 0x37e2e0;
    void onDaily(cocos2d::CCObject* sender) = win 0x3201e0, m1 0x30f028, imac 0x37e8b0;
    void onDiscord(cocos2d::CCObject* sender);
    void onEveryplay(cocos2d::CCObject* sender) {}
    void onFacebook(cocos2d::CCObject* sender);
    void onFreeLevels(cocos2d::CCObject* sender);
    void onFullVersion(cocos2d::CCObject* sender);
    void onGameCenter(cocos2d::CCObject* sender);
    void onGarage(cocos2d::CCObject* sender) = win 0x320f00, m1 0x30e9b0, imac 0x37e250;
    void onGooglePlayGames(cocos2d::CCObject* sender) = m1 0x30f23c;
    void onMoreGames(cocos2d::CCObject* sender) = win 0x320880, imac 0x37e5c0, m1 0x30ed3c;
    void onMyProfile(cocos2d::CCObject* sender) = win 0x320720, m1 0x30ee98, imac 0x37e710;
    void onNewgrounds(cocos2d::CCObject* sender) = m1 0x30eb8c, imac 0x37e430;
    void onOptions(cocos2d::CCObject* sender) = win 0x320bb0, imac 0x37e3b0, m1 0x30eaf4;
    void onOptionsInstant() = win 0x320bc0, m1 0x30d5b8;
    void onPlay(cocos2d::CCObject* sender) = win 0x320b10, m1 0x30e930, imac 0x37e1c0;
    void onQuit(cocos2d::CCObject* sender) = win 0x3210d0, imac 0x37e640, m1 0x30edc0;
    void onRobTop(cocos2d::CCObject* sender) = win 0x3207c0;
    void onStats(cocos2d::CCObject* sender) = win 0x320d50, imac 0x37e3f0, m1 0x30eb40;
    void onTrailer(cocos2d::CCObject* sender) = m1 0x30f470, imac 0x37ed80;
    void onTwitch(cocos2d::CCObject* sender);
    void onTwitter(cocos2d::CCObject* sender);
    void onYouTube(cocos2d::CCObject* sender);
    void openOptions(bool videoOptions) = win 0x320bd0, m1 0x30f360;
    void showGCQuestion() = m1 0x30f144, imac 0x37e9f0;
    void showMeltdownPromo() {}
    void showTOS() = win 0x320600, m1 0x30f044;
    void syncPlatformAchievements(float);
    void tryShowAd(float) = m1 0x30f0a4;
    void updateUserProfileButton() = win 0x320330;
    void videoOptionsClosed() = win inline {
        m_menuGameLayer->m_videoOptionsOpen = false;
    }
    void videoOptionsOpened() = win inline, imac 0x37ecd0 {
        m_menuGameLayer->m_videoOptionsOpen = true;
    }
    void willClose() = win 0x3211f0, m1 0x30d274;

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

    static MessagesProfilePage* create(bool) = win 0x3216b0, imac 0x21ba30, m1 0x1ce7c4;

    virtual void registerWithTouchDispatcher() = m1 0x1d0144, imac 0x21d550, ios 0x1ce01c;
    virtual void keyBackClicked() = win 0x322cb0, imac 0x21d520, m1 0x1d0138, ios 0x1ce010;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x322a50, imac 0x21d0f0, m1 0x1cfc98, ios 0x1cdd48;
    virtual void onClosePopup(UploadActionPopup*) = win 0x13d2a0, imac 0x21d160, m1 0x1cfd28, ios 0x1cddd8;
    virtual void uploadActionFinished(int, int) = win 0x322a80, m1 0x1cfdb0, imac 0x21d1d0, ios 0x1cde48;
    virtual void uploadActionFailed(int, int) = win 0x13d460, m1 0x1cff7c, imac 0x21d390, ios 0x1cdf30;
    virtual void loadMessagesFinished(cocos2d::CCArray*, char const*) = win 0x323300, imac 0x21d830, m1 0x1d03f8, ios 0x1ce208;
    virtual void loadMessagesFailed(char const*, GJErrorCode) = win 0x13dc50, imac 0x21d950, m1 0x1d0504, ios 0x1ce314;
    virtual void forceReloadMessages(bool) = win 0x323450, imac 0x21da60, m1 0x1d0630, ios 0x1ce3b0;
    virtual void setupPageInfo(gd::string, char const*) = win 0x323470, imac 0x21daa0, m1 0x1d0664, ios 0x1ce3e4;

    void deleteSelected() = win 0x3227d0, m1 0x1cfac8, imac 0x21cf00;
    bool init(bool) = win 0x321850, m1 0x1ce900, imac 0x21bbe0;
    bool isCorrect(char const*);
    void loadPage(int) = win 0x322d60, m1 0x1cf6e0, imac 0x21caa0;
    void onClose(cocos2d::CCObject* sender) = win 0x322bf0, m1 0x1cf258, imac 0x21c5b0;
    void onDeleteSelected(cocos2d::CCObject* sender) = win 0x3224e0, m1 0x1cf3f4, imac 0x21c760;
    void onNextPage(cocos2d::CCObject* sender) = win 0x323610;
    void onPrevPage(cocos2d::CCObject* sender) = win 0x323620;
    void onSentMessages(cocos2d::CCObject* sender) = win 0x322450;
    void onToggleAllObjects(cocos2d::CCObject* sender) = win 0x322270, m1 0x1cf5c0, imac 0x21c940;
    void onUpdate(cocos2d::CCObject* sender);
    void setupCommentsBrowser(cocos2d::CCArray*) = win 0x323170;
    void untoggleAll() = win 0x322cc0, m1 0x1d00c4, imac 0x21d4b0;
    void updateLevelsLabel();
    void updatePageArrows();

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

    static MoreOptionsLayer* create() = win inline, imac 0x785240, m1 0x6993f0 {
        auto ret = new MoreOptionsLayer();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual bool init() = win 0x35da20, imac 0x785810, m1 0x69989c, ios 0xf0800;
    virtual void keyBackClicked() = win 0x360c90, imac 0x788ba0, m1 0x69cb6c, ios 0xf2ba0;
    virtual void textInputShouldOffset(CCTextInputNode*, float) = m1 0x69cb78, imac 0x788bd0, ios 0xf2bac;
    virtual void textInputReturn(CCTextInputNode*) = m1 0x69cc48, imac 0x788c90, ios 0xf2c18;
    virtual void googlePlaySignedIn() = win 0x360ca0, m1 0x69cd00, imac 0x788d40, ios 0xf2c78;
    virtual void dropDownLayerWillClose(GJDropDownLayer*) = win 0x3607f0, m1 0x69ca48, imac 0x788a20, ios 0xf2ac4;

    void addToggle(char const*, char const*, char const*) = win 0x35ee10, m1 0x69aba0, imac 0x786b10;
    int countForPage(int);
    void goToPage(int) = win 0x35f890, imac 0x787750, m1 0x69b78c;
    void incrementCountForPage(int);
    const char* infoKey(int);
    cocos2d::CCLayer* layerForPage(int);
    const char* layerKey(int);
    cocos2d::CCPoint nextPosition(int);
    const char* objectKey(int);
    cocos2d::CCArray* objectsForPage(int);
    void offsetToNextPage();
    void onClose(cocos2d::CCObject* sender) = win 0x360b30, m1 0x69b6c8, imac 0x787670;
    void onFMODDebug(cocos2d::CCObject* sender) = win 0x3606a0, m1 0x69b39c, imac 0x787360;
    void onGPSignIn(cocos2d::CCObject* sender);
    void onGPSignOut(cocos2d::CCObject* sender);
    void onInfo(cocos2d::CCObject* sender);
    void onKeybindings(cocos2d::CCObject* sender) = win 0xdba40, m1 0x69bc4c, imac 0x787c40;
    void onNextPage(cocos2d::CCObject* sender);
    void onParental(cocos2d::CCObject* sender);
    void onPrevPage(cocos2d::CCObject* sender);
    void onSongBrowser(cocos2d::CCObject* sender) = win 0x360630, m1 0x69b344, imac 0x787300;
    void onToggle(cocos2d::CCObject* sender) = win 0x35fe30;
    const char* pageKey(int);
    void toggleGP();

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

    static MoreSearchLayer* create() = win inline, m1 0x541374, imac 0x615070 {
        auto ret = new MoreSearchLayer();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    void audioNext(cocos2d::CCObject* sender) = win 0x301c60, imac 0x618230, m1 0x5441d0;
    void audioPrevious(cocos2d::CCObject* sender) = win 0x301d80, imac 0x6181c0, m1 0x54415c;
    void createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = win 0x302730;
    void onClose(cocos2d::CCObject* sender) = win 0x302990, imac 0x617a10, m1 0x543960;
    void onCoins(cocos2d::CCObject* sender);
    void onCompleted(cocos2d::CCObject* sender);
    void onEpic(cocos2d::CCObject* sender);
    void onFeatured(cocos2d::CCObject* sender);
    void onFollowed(cocos2d::CCObject* sender);
    void onFriends(cocos2d::CCObject* sender);
    void onInfo(cocos2d::CCObject* sender) = win 0x3025e0, m1 0x54423c, imac 0x6182a0;
    void onLegendary(cocos2d::CCObject* sender);
    void onMythic(cocos2d::CCObject* sender);
    void onNoStar(cocos2d::CCObject* sender);
    void onOriginal(cocos2d::CCObject* sender);
    void onSongFilter(cocos2d::CCObject* sender) = win 0x3012c0, imac 0x617e50, m1 0x543dfc;
    void onSongMode(cocos2d::CCObject* sender) = win 0x301fe0, imac 0x618070, m1 0x54400c;
    void onTwoPlayer(cocos2d::CCObject* sender);
    void onUncompleted(cocos2d::CCObject* sender);
    void selectSong(int songID) = win 0x301ea0, imac 0x618510, m1 0x544498;
    void toggleSongNodes(bool, bool) = win 0x3024a0, imac 0x6183d0, m1 0x544394;
    void updateAudioLabel() = win 0x3019a0, m1 0x5444e0, imac 0x618560;
    
    virtual bool init() = win 0x2fe020, imac 0x616620, m1 0x542794, ios 0x58bc4;
    virtual void keyBackClicked() = win 0x302d90, imac 0x6187f0, m1 0x5447b8, ios 0x5a8b8;
    virtual void textInputShouldOffset(CCTextInputNode*, float) = win 0x7b5c0, m1 0x544630, imac 0x618680, ios 0x5a7ec;
    virtual void textInputReturn(CCTextInputNode*) = win 0x7b620, m1 0x544700, imac 0x618740, ios 0x5a858;

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
    MoreVideoOptionsLayer() {
        m_page = 0;
        m_toggleCount = 0;
        m_pageCount = 0;
        m_fpsInput = nullptr;
        m_fpsNodes = nullptr;
    }

    static MoreVideoOptionsLayer* create() = win inline {
        auto ret = new MoreVideoOptionsLayer();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual bool init() = win 0x362eb0, imac 0x78b270, m1 0x69ee4c, ios 0xf4504;
    virtual void keyBackClicked() = win 0x3657d0, m1 0x6a0f54, imac 0x78d440, ios 0xf5950;

    void addToggle(char const* label, char const* key, char const* description) = win 0x3639b0;
    int countForPage(int) = win 0x364010;
    void goToPage(int) = win 0x364430;
    void incrementCountForPage(int);
    const char* infoKey(int);
    cocos2d::CCLayer* layerForPage(int) = win 0x364270;
    const char* layerKey(int);
    cocos2d::CCPoint nextPosition(int);
    const char* objectKey(int);
    cocos2d::CCArray* objectsForPage(int) = win 0x3640e0;
    void onApplyFPS(cocos2d::CCObject* sender) = win 0x3652b0;
    void onClose(cocos2d::CCObject* sender) = win 0x365780;
    void onInfo(cocos2d::CCObject* sender) = win 0x3655a0;
    void onNextPage(cocos2d::CCObject* sender) = win 0x364410;
    void onPrevPage(cocos2d::CCObject* sender) = win 0x364420;
    void onToggle(cocos2d::CCObject* sender) = win 0x364840;
    const char* pageKey(int);
    void updateFPSButtons() = win 0x3651e0;

    int m_page;
    int m_toggleCount;
    int m_pageCount;
    cocos2d::CCDictionary* m_values;
    cocos2d::CCDictionary* m_variables;
    CCMenuItemSpriteExtra* m_prevButton;
    CCMenuItemSpriteExtra* m_nextButton;
    CCTextInputNode* m_fpsInput;
    cocos2d::CCArray* m_fpsNodes;
}

[[link(android)]]
class MPLobbyLayer : cocos2d::CCLayer, GJMPDelegate, UploadPopupDelegate, UploadActionDelegate, FLAlertLayerProtocol, TextInputDelegate {
    // virtual ~MPLobbyLayer();

    static MPLobbyLayer* create(int);
    static cocos2d::CCScene* scene(int);

    virtual void keyBackClicked() = imac 0x480e20, m1 0x3eedb0;
    virtual void keyDown(cocos2d::enumKeyCodes) = imac 0x481620, m1 0x3ef4f0;
    virtual void joinLobbyFinished(int) = imac 0x480fa0, m1 0x3eef10;
    virtual void joinLobbyFailed(int, GJMPErrorCode) = imac 0x481450, m1 0x3ef334;
    virtual void updateComments() = m1 0x3ef22c, imac 0x481320;
    virtual void didUploadMPComment(int) = imac 0x481430, m1 0x3ef31c;
    virtual void textInputOpened(CCTextInputNode*) = m1 0x3ef448, imac 0x481550;
    virtual void textInputClosed(CCTextInputNode*) = m1 0x3ef450, imac 0x481570;
    virtual void textChanged(CCTextInputNode*) = m1 0x3ef458, imac 0x481590;
    virtual void keyUp(cocos2d::enumKeyCodes) = m1 0x3ef514, imac 0x481660;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = imac 0x4815b0, m1 0x3ef460;
    virtual void uploadActionFinished(int, int) = imac 0x481680, m1 0x3ef51c;
    virtual void uploadActionFailed(int, int) = imac 0x4818b0, m1 0x3ef748;
    virtual void onClosePopup(UploadActionPopup*) = m1 0x3ef90c, imac 0x481a60;

    bool init(int);
    void onBack(cocos2d::CCObject* sender);
    void onBtn1(cocos2d::CCObject* sender) = m1 0x3eeaa0, imac 0x480b40;
    void onBtn2(cocos2d::CCObject* sender);
    void onBtn3(cocos2d::CCObject* sender);
    void onComment(cocos2d::CCObject* sender);
    TodoReturn onUpdateLobby();
    TodoReturn postComment();
    TodoReturn tryExitLobby() = m1 0x3eee3c;
    TodoReturn updateLobby(float);
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

    virtual void setOpacity(unsigned char) = win 0x6c750, m1 0x3e4ad8, imac 0x476100, ios 0x235548;
    bool initWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int, bool) = win 0x6bea0, m1 0x3e30c0;
    unsigned int moveSpecialDescriptors(int, int) = win 0x6d0a0, m1 0x3e4bb8;
    gd::string readColorInfo(gd::string) = win 0x6c7d0, imac 0x474e10;
    gd::string stringWithMaxWidth(gd::string, float, float) = win 0x6d130, imac 0x475b20, m1 0x3e4524;

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

    virtual bool init() = imac 0x387db0, m1 0x3178dc;
    virtual void keyBackClicked() = imac 0x387ea0, m1 0x3179b4;

    void onBack(cocos2d::CCObject* sender);
    void onBtn1(cocos2d::CCObject* sender);
    void onBtn2(cocos2d::CCObject* sender);
}

[[link(android)]]
class MultiTriggerPopup : SetupTriggerPopup {
    // virtual ~MultiTriggerPopup();

    static MultiTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x4bb4cc, imac 0x565ad0;
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

    static MusicBrowser* create(int, GJSongType) = win 0x323840, imac 0x5f6280, m1 0x5257c4;

    virtual void update(float) = win 0x3245b0, m1 0x526b40, imac 0x5f7710, ios 0x3ba55c;
    virtual void registerWithTouchDispatcher() = m1 0x527afc, imac 0x5f87e0, ios 0x3bb0f8;
    virtual void keyBackClicked() = win 0x325c90, m1 0x5279e0, imac 0x5f86b0, ios 0x3bb0ec;
    virtual void musicActionFinished(GJMusicAction) = win 0x324eb0, imac 0x5f8050, m1 0x5273e4, ios 0x3bacc8;
    virtual void musicActionFailed(GJMusicAction) = win 0x324f20, m1 0x5274b4, imac 0x5f8150, ios 0x3bacec;
    virtual void sliderEnded(Slider*) = win 0x324bf0, m1 0x526cbc, imac 0x5f7890, ios 0x3ba6d8;
    virtual void setTextPopupClosed(SetTextPopup*, gd::string) = win 0x325a00, imac 0x5f8400, m1 0x527748, ios 0x3baf44;
    virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = win 0x325750, m1 0x5276e0, imac 0x5f8380, ios 0x3baedc;
    virtual int getSelectedCellIdx() = m1 0x527738, imac 0x5f83e0, ios 0x3baf34;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x325ba0, imac 0x5f8610, m1 0x527918, ios 0x3bb07c;

    bool init(int, GJSongType) = win 0x3239f0, imac 0x5f6470, m1 0x525924;
    void onArtistFilters(cocos2d::CCObject* sender) = win 0x325b10, imac 0x5f73a0, m1 0x5267d8;
    void onClearSearch(cocos2d::CCObject* sender) = imac 0x5f72e0;
    void onClose(cocos2d::CCObject* sender) = win 0x325c00;
    void onPage(cocos2d::CCObject* sender) = win 0x325790, imac 0x42b670, m1 0x526478;
    void onPlaybackControl(cocos2d::CCObject* sender) = win 0x324b90, imac 0x5f7860, m1 0x526c88;
    void onSearch(cocos2d::CCObject* sender) = win 0x3258b0, imac 0x5f71b0, m1 0x52657c;
    void onTagFilters(cocos2d::CCObject* sender) = win 0x325aa0, imac 0x5f7340, m1 0x526770;
    void onUpdateLibrary(cocos2d::CCObject* sender) = m1 0x526518;
    void setupList(MusicSearchResult*) = win 0x325050, imac 0x5f7a00, m1 0x526e10;
    TodoReturn setupMusicBrowser();
    void setupSongControls() = win 0x3248b0, m1 0x52684c;
    void sliderChanged(cocos2d::CCObject* sender);
    void trySetupMusicBrowser() = m1 0x526d3c;
    void updatePageLabel() = m1 0x5275cc;

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

    static MusicDownloadManager* sharedState() = win 0x3277b0, imac 0x572a00, m1 0x4c6c2c;

    virtual bool init() = imac 0x573980, m1 0x4c7abc, ios 0x157718;

    void addDLToActive(char const* tag, cocos2d::CCObject* obj) = win 0x3299f0, imac 0x577e40, m1 0x4cba2c;
    void addDLToActive(char const* tag);
    TodoReturn addMusicDownloadDelegate(MusicDownloadDelegate*) = win 0x327f30;
    void addSongObjectFromString(gd::string);
    void clearSong(int songID) = win inline, m1 0x4cae00, imac 0x577170 {
        const char* key = cocos2d::CCString::createWithFormat("%i", songID)->getCString();
        m_songObjects->removeObjectForKey(key);
    }
    void clearUnusedSongs() = win 0x329160;
    void createArtistsInfo(gd::string) = win 0x328c50;
    void createSongsInfo(gd::string, gd::string) = win 0x3288a0, imac 0x575b00, m1 0x4c998c;
    void dataLoaded(DS_Dictionary*) = win 0x32a450, imac 0x578e00, m1 0x4cc790;
    void deleteSFX(int);
    void deleteSong(int) = imac 0x577120, m1 0x4cada0;
    void downloadCustomSong(int) = win 0x32ad40, imac 0x5778d0, m1 0x4cb4c4;
    void downloadMusicLibrary() = m1 0x4cd97c, imac 0x57a200;
    void downloadSFX(int) = imac 0x57d0e0, m1 0x4d01c0;
    void downloadSFXFailed(int, GJSongError);
    void downloadSFXFinished(int);
    void downloadSFXLibrary();
    void downloadSong(int) = win 0x329460, imac 0x577410, m1 0x4cb0d0;
    void downloadSongFailed(int, GJSongError);
    void downloadSongFinished(int);
    void encodeDataTo(DS_Dictionary*) = m1 0x4cc738;
    TodoReturn filterMusicByArtistID(int, cocos2d::CCArray*);
    TodoReturn filterMusicByTag(int, cocos2d::CCArray*);
    void firstSetup();
    TodoReturn generateCustomContentURL(gd::string) = win 0x32e2e0, m1 0x4ccfdc, imac 0x5796c0;
    TodoReturn generateResourceAssetList();
    TodoReturn getAllMusicArtists(OptionsObjectDelegate*);
    TodoReturn getAllMusicObjects(GJSongType);
    TodoReturn getAllMusicTags(OptionsObjectDelegate*);
    TodoReturn getAllSFXObjects(bool);
    TodoReturn getAllSongs();
    void getCustomContentURL() = win 0x32a940, imac 0x579470, m1 0x4ccd84;
    cocos2d::CCObject* getDLObject(char const*) = win 0x39d70;
    cocos2d::CCArray* getDownloadedSongs() = win 0x3290a0, m1 0x4ca930, imac 0x576c20;
    TodoReturn getDownloadProgress(int);
    TodoReturn getMusicArtistForID(int);
    TodoReturn getMusicObject(int);
    TodoReturn getSFXDownloadKey(int) = m1 0x4cbcd8, imac 0x5780c0;
    TodoReturn getSFXDownloadProgress(int);
    TodoReturn getSFXFolderObjectForID(int);
    TodoReturn getSFXFolderPathForID(int, bool);
    TodoReturn getSFXObject(int);
    TodoReturn getSongDownloadKey(int);
    void getSongInfo(int, bool) = win 0x328180, imac 0x574190, m1 0x4c82e0;
    TodoReturn getSongInfoKey(int);
    SongInfoObject* getSongInfoObject(int) = win 0x329b70, imac 0x574030, m1 0x4c8188;
    TodoReturn getSongPriority();
    void handleIt(bool, gd::string, gd::string, GJHttpType) = imac 0x572fd0, m1 0x4c7150;
    void handleItDelayed(bool, gd::string, gd::string, GJHttpType);
    void handleItND(cocos2d::CCNode*, void*);
    TodoReturn incrementPriorityForSong(int) = imac 0x574000;
    bool isDLActive(char const* tag) = imac 0x573dd0, m1 0x4c7f00;
    bool isMusicLibraryLoaded();
    bool isResourceSFX(int);
    bool isResourceSong(int id) = win inline {
        return m_resourceSongUnorderedSet.contains(id);
    }
    bool isRunningActionForSongID(int) = imac 0x573cb0;
    bool isSFXDownloaded(int) = imac 0x5784f0, m1 0x4cbfe4;
    bool isSFXLibraryLoaded();
    bool isSongDownloaded(int) = win 0x329c80, imac 0x576cc0, m1 0x4ca9c8;
    void limitDownloadedSongs() = m1 0x4cac6c, imac 0x576fe0;
    void loadSongInfoFailed(int, GJSongError);
    void loadSongInfoFinished(SongInfoObject*) = win 0x32ec70;
    void musicActionFailed(GJMusicAction);
    void musicActionFinished(GJMusicAction);
    TodoReturn nameForTagID(int);
    void onDownloadMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
    void onDownloadSFXCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = imac 0x57d3b0, m1 0x4d04ac;
    void onDownloadSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
    void onDownloadSongCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = win 0x329750, imac 0x577ba0, m1 0x4cb7b4;
    void onGetCustomContentURLCompleted(gd::string, gd::string) = imac 0x5736a0, m1 0x4c7868;
    void onGetSongInfoCompleted(gd::string, gd::string) = win 0x328460, m1 0x4c75d8, imac 0x573400;
    void onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = imac 0x572ca0, m1 0x4c6e34;
    void onTryUpdateMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
    void onTryUpdateSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
    void parseMusicLibrary();
    void parseSFXLibrary();
    gd::string pathForSFX(int) = win 0x32a230, imac 0x578940, m1 0x4cc334;
    gd::string pathForSFXFolder(int) = win 0x32a0e0, imac 0x578a00, m1 0x4cc418;
    gd::string pathForSong(int) = win 0x329f00, m1 0x4caf14, imac 0x577270;
    gd::string pathForSongFolder(int) = win 0x329db0, imac 0x578290, m1 0x4cbe10;
    void ProcessHttpGetRequest(gd::string, gd::string, cocos2d::extension::SEL_HttpResponse, int, int) = imac 0x572e60, m1 0x4c7030;
    callback void ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType) = imac 0x572b10, m1 0x4c6cf0;
    void removeDLFromActive(char const*) = imac 0x522d00, m1 0x47ecac;
    TodoReturn removeMusicDownloadDelegate(MusicDownloadDelegate*);
    void showTOS(FLAlertLayerProtocol*) = win 0x32a2f0, imac 0x578c60, m1 0x4cc5ec;
    void songStateChanged() = win 0x328120, m1 0x4c80f8, imac 0x573fa0;
    TodoReturn stopDownload(int) = imac 0x573d80, m1 0x4c7ea4;
    TodoReturn storeMusicObject(SongInfoObject*);
    TodoReturn storeSFXInfoObject(SFXInfoObject*);
    TodoReturn tryLoadLibraries();
    TodoReturn tryUpdateMusicLibrary() = m1 0x4cd618, imac 0x579ed0;
    TodoReturn tryUpdateSFXLibrary() = m1 0x4d07c4, imac 0x57d6d0;

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
    MusicSearchResult() = win 0x326990;

    static MusicSearchResult* create(GJSongType songType) = win inline, imac 0x581300 {
        auto ret = new MusicSearchResult();
        if (ret->init(songType)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual void updateObjects(AudioSortType) = win 0x331610, imac 0x582030, m1 0x4d4740, ios 0x15ff50;
    virtual void stateChanged(OptionsObject*) = win 0x331600, m1 0x4d4710, imac 0x581fd0, ios 0x15ff20;

    cocos2d::CCArray* applyArtistFilters(cocos2d::CCArray*) = m1 0x4d41c8;
    cocos2d::CCArray* applyTagFilters(cocos2d::CCArray*) = win 0x331530, imac 0x581670, m1 0x4d4004;
    void createArtistFilterObjects();
    void createTagFilterObjects();
    cocos2d::CCArray* getFilesMatchingSearch(cocos2d::CCArray*, gd::string) = win 0x331b60, imac 0x582340, m1 0x4d49d8;
    bool init(GJSongType songType) = win inline, imac 0x581380 {
        m_songType = songType;
        return true;
    }
    void updateFutureCount(cocos2d::CCArray*, cocos2d::CCArray*);
    void updateObjects() = win inline {
        this->updateObjects(m_sortType);
    }

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

    virtual void keyBackClicked() = m1 0x1bbda8, imac 0x206d40, ios 0x14a3ac;

    bool init(CustomSongLayer*) = m1 0x1bb640, imac 0x2065a0;
    void onClose(cocos2d::CCObject* sender);
    void onLibrary(cocos2d::CCObject* sender);
    void onNCS(cocos2d::CCObject* sender) = imac 0x206cb0;
    void onNCSIO(cocos2d::CCObject* sender) = imac 0x206cd0;
    void onNCSUsage(cocos2d::CCObject* sender) = imac 0x206cf0;
}

[[link(android)]]
class NewgroundsInfoLayer : FLAlertLayer, FLAlertLayerProtocol {
    // virtual ~NewgroundsInfoLayer();

    static NewgroundsInfoLayer* create();

    virtual bool init() = imac 0x205a50, m1 0x1baac0, ios 0x1491ec;
    virtual void keyBackClicked() = m1 0x1bb5c4, imac 0x206530, ios 0x149c54;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xc5690, imac 0x2064d0, m1 0x1bb56c, ios 0x149bfc;

    void onArtists(cocos2d::CCObject* sender);
    void onChanges(cocos2d::CCObject* sender) = m1 0x1bb3ac, imac 0x206360;
    void onClose(cocos2d::CCObject* sender);
    void onGuidelines(cocos2d::CCObject* sender) = imac 0x206320;
    void onInfo(cocos2d::CCObject* sender) = m1 0x1bb488, imac 0x206420;
    void onNewgrounds(cocos2d::CCObject* sender) = imac 0x206300;
    void onSupporter(cocos2d::CCObject* sender) = imac 0x206340;
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

    virtual bool init() = win 0x3326e0, imac 0x47f660, m1 0x3ed324, ios 0xfbfd4;
    virtual void registerWithTouchDispatcher() = win 0x52d60, imac 0x480110, m1 0x3ee1f0, ios 0xfc794;
    virtual void keyBackClicked() = m1 0x3ee174, imac 0x4800a0, ios 0xfc718;

    void deleteLast() = win inline, m1 0x3ede24, imac 0x47fd60 {
        if (!m_inputString.empty()) {
            m_inputString = m_inputString.substr(0, m_inputString.size() - 1);
            this->updateNumberState();
        }
    }
    void inputNumber(int num) = win inline, m1 0x3ee054, imac 0x47ff90 {
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
    void onNumber(cocos2d::CCObject* sender) = win 0x332c90, imac 0x47fc30, m1 0x3edcd0;
    void updateNumberState() = win 0x332e20, m1 0x3edd68;

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

    static OBB2D* create(cocos2d::CCPoint center, float width, float height, float rotationAngle) = win 0x6d880, m1 0x50edb8, imac 0x5dbcf0;

    void calculateWithCenter(cocos2d::CCPoint center, float width, float height, float rotationAngle) = win 0x6da50, imac 0x5dbe20, m1 0x50ef3c;
    void computeAxes();
    cocos2d::CCRect getBoundingRect();
    bool init(cocos2d::CCPoint center, float width, float height, float rotationAngle) = m1 0x50eebc, imac 0x5dbdb0;
    void orderCorners() = win 0x6dd70;
    bool overlaps(OBB2D*);
    bool overlaps1Way(OBB2D*) = win 0x6e100;


    std::array<cocos2d::CCPoint, 4> m_corners;
    std::array<cocos2d::CCPoint, 4> m_positions;
    cocos2d::CCPoint m_horizontalDifference;
    cocos2d::CCPoint m_verticalDifference;
    std::array<cocos2d::CCPoint, 4> m_axes;
    cocos2d::CCPoint m_center;
}

[[link(android)]]
class ObjectControlGameObject : EffectGameObject {
    // virtual ~ObjectControlGameObject();

    static ObjectControlGameObject* create();

    virtual bool init() = m1 0x19559c, imac 0x1dcad0, ios 0x390708;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1dd030, m1 0x195a5c, ios 0x3908e8;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1dcb20, m1 0x1955ec, ios 0x390758;
}

[[link(android)]]
class ObjectManager : cocos2d::CCNode {
    static ObjectManager* instance() = win 0x6e3d0;
    // virtual ~ObjectManager();

    virtual bool init() = win 0x6e460, m1 0x69410c, imac 0x77f750, ios 0x24c270;

    cocos2d::CCObject* animLoaded(char const* anim);
    cocos2d::CCObject* getDefinition(char const* definitionKey);
    cocos2d::CCObject* getGlobalAnimCopy(char const* anim);
    void loadCopiedAnimations() = win 0x6e800;
    void loadCopiedSets() = m1 0x6945cc;
    void purgeObjectManager();
    cocos2d::CCDictionary* replaceAllOccurencesOfString(cocos2d::CCString*, cocos2d::CCString*, cocos2d::CCDictionary*);
    void setLoaded(char const* objectName);
    void setup() = win 0x6e4c0;

    cocos2d::CCDictionary* m_objectDefinitions;
    cocos2d::CCDictionary* m_maybeLoadedAnimations;
}

[[link(android)]]
class ObjectToolbox : cocos2d::CCNode {
    // virtual ~ObjectToolbox();

    static ObjectToolbox* sharedState() = win 0x332f90, m1 0x57b4a8, imac 0x654080;

    virtual bool init() = win 0x333050, m1 0x57b5d0, imac 0x6541c0, ios 0x276cbc;

    TodoReturn allKeys();
    float gridNodeSizeForKey(int key) = win 0x35ae80, imac 0x704100, m1 0x6282d0;
    const char* intKeyToFrame(int key) {
        return m_allKeys[key].c_str();
    }
    TodoReturn perspectiveBlockFrame(int);

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

    void loadFromObject(OptionsObject*) = win 0xb49f0, imac 0x232740;
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

    static OptionsLayer* create() = win inline, imac 0x783fb0, m1 0x698218 {
        auto ret = new OptionsLayer();
        if (ret->init("Settings")) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual void customSetup() = win 0x35bff0, m1 0x6983b0, imac 0x784200, ios 0xef91c;
    virtual void layerHidden() = win 0x35d840, imac 0x785600, m1 0x699714, ios 0xf0688;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = m1 0x6997a0, imac 0x785670, ios 0xf0714 {}

    TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
    void exitLayer();
    void musicSliderChanged(cocos2d::CCObject*) = win 0x35cc70, imac 0x785140, m1 0x699300;
    void onAccount(cocos2d::CCObject* sender) = win 0x35d760, imac 0x784bf0, m1 0x698d70;
    void onHelp(cocos2d::CCObject* sender) = win 0x35d710, imac 0x784c10, m1 0x698d80;
    void onMenuMusic(cocos2d::CCObject* sender);
    void onOptions(cocos2d::CCObject* sender) = win 0x35ce50, m1 0x698d9c, imac 0x784c30;
    void onProgressBar(cocos2d::CCObject* sender);
    void onRate(cocos2d::CCObject* sender) = win 0x35d7b0;
    void onRecordReplays(cocos2d::CCObject* sender);
    void onSecretVault(cocos2d::CCObject* sender) = win 0x35cfb0, m1 0x6990b0, imac 0x784f20;
    void onSoundtracks(cocos2d::CCObject* sender) = win 0x35ce00;
    void onSupport(cocos2d::CCObject* sender) = win 0x35d820, imac 0x784cb0, m1 0x698df8;
    void onVideo(cocos2d::CCObject* sender) = win 0x35d6f0;
    void sfxSliderChanged(cocos2d::CCObject*) = win 0x35cd70, m1 0x699370, imac 0x7851b0;
    void tryEnableRecord() = m1 0x699648, imac 0x785540;

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

    virtual void registerWithTouchDispatcher() = m1 0x5282bc, imac 0x5f90f0, ios 0x3bb598;
    virtual void keyBackClicked() = win 0x326150, m1 0x528198, imac 0x5f8fc0, ios 0x3bb58c;
    virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = imac 0x5f9130, m1 0x5282f4, ios 0x3bb5d0;

    TodoReturn getRelevantObjects(cocos2d::CCArray*);
    bool init(cocos2d::CCArray*, bool, int);
    void onClose(cocos2d::CCObject* sender);
    void setupList(cocos2d::CCArray*);
}

[[link(android)]]
class ParentalOptionsLayer : FLAlertLayer {
    // virtual ~ParentalOptionsLayer();

    static ParentalOptionsLayer* create();

    virtual bool init() = m1 0x6a1270, imac 0x78d870, ios 0xf5a0c;
    virtual void keyBackClicked() = m1 0x6a2a4c, imac 0x78f100, ios 0xf69d8;

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
}

[[link(android)]]
class ParticleGameObject : EnhancedGameObject {
    // virtual ~ParticleGameObject();

    static ParticleGameObject* create();

    virtual bool init() = m1 0x1633a0, imac 0x1a08c0, ios 0x379a74;
    virtual void setScaleX(float) = m1 0x164424, imac 0x1a1960, ios 0x37a8d4;
    virtual void setScaleY(float) = m1 0x164494, imac 0x1a19d0, ios 0x37a920;
    virtual void setScale(float) = m1 0x164504, imac 0x1a1a40, ios 0x37a96c;
    virtual void setRotation(float) = m1 0x164340, imac 0x1a18a0, ios 0x37a7f0;
    virtual void setRotationX(float) = m1 0x16438c, imac 0x1a18e0, ios 0x37a83c;
    virtual void setRotationY(float) = m1 0x1643d8, imac 0x1a1920, ios 0x37a888;
    virtual void setChildColor(cocos2d::ccColor3B const&) = m1 0x164668, imac 0x1a1ba0, ios 0x37aaac;
    virtual void customSetup() = m1 0x1635f0, imac 0x1a0b90, ios 0x379c5c;
    virtual void addMainSpriteToParent(bool) = m1 0x16369c, imac 0x1a0c60, ios 0x379d08;
    virtual void resetObject() = m1 0x164834, imac 0x1a1d90, ios 0x37ac6c;
    virtual void deactivateObject(bool) = m1 0x1647f0, imac 0x1a1d50, ios 0x37ac34;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1a08f0, m1 0x1633d8, ios 0x379aac;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1a1f90, m1 0x164a28, ios 0x37ae4c;
    virtual void claimParticle() = imac 0x1a0d40, m1 0x16377c, ios 0x379de8;
    virtual void unclaimParticle() = imac 0x1a12e0, m1 0x163d44, ios 0x37a390;
    virtual void particleWasActivated() = imac 0x1a1360, m1 0x163dd0, ios 0x37a410;
    virtual void setObjectColor(cocos2d::ccColor3B const&) = m1 0x164574, imac 0x1a1ab0, ios 0x37a9b8;
    virtual void blendModeChanged() = imac 0x1a0c20, m1 0x16366c, ios 0x379cd8;
    virtual void updateParticleColor(cocos2d::ccColor3B const&) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void updateParticleOpacity(unsigned char) = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void updateMainParticleOpacity(unsigned char) = imac 0x1a1c90, m1 0x16475c, ios 0x37aba0;
    virtual void updateSecondaryParticleOpacity(unsigned char) = imac 0x1a1cf0, m1 0x1647a8, ios 0x37abec;
    virtual void updateSyncedAnimation(float, int) = imac 0x1a1df0, m1 0x16489c, ios 0x37acd4;
    virtual TodoReturn updateAnimateOnTrigger(bool) = imac 0x1a1f40, m1 0x1649d8, ios 0x37adfc;

    TodoReturn applyParticleSettings(cocos2d::CCParticleSystemQuad*);
    TodoReturn createAndAddCustomParticle();
    TodoReturn createParticlePreviewArt() = m1 0x164140, imac 0x1a16c0;
    void setParticleString(gd::string) = win 0x4880b0, imac 0x1a14a0, m1 0x163f24;
    void updateParticle() = win 0x488140, imac 0x1a1530;
    TodoReturn updateParticleAngle(float, cocos2d::CCParticleSystemQuad*) = imac 0x1a11d0;
    TodoReturn updateParticlePreviewArtOpacity(float);
    TodoReturn updateParticleScale(float);
    TodoReturn updateParticleStruct() = imac 0x1a0d10;

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

    virtual void draw() = imac 0x464c10, m1 0x3d4c08, ios 0x2d1c18;
    virtual void visit() = imac 0x464a90, m1 0x3d4a80, ios 0x2d1b38;

    bool init(cocos2d::CCParticleSystemQuad*);
    TodoReturn postVisit();
    TodoReturn preVisitWithClippingRect(cocos2d::CCRect);
}

[[link(android)]]
class PauseLayer : CCBlockLayer, FLAlertLayerProtocol {
    // virtual ~PauseLayer();
    PauseLayer() = win inline {}

    static PauseLayer* create(bool p0) = win inline, m1 0x34c250, imac 0x3c2f60 {
        auto ret = new PauseLayer();
        if (ret && ret->init(p0)) {
            ret->autorelease();
            return ret;
        }
        CC_SAFE_DELETE(ret);
        return nullptr;
    }

    virtual void keyBackClicked() = win 0x369070, imac 0x3c4fc0, m1 0x34e270, ios 0x146f60;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x368fa0, imac 0x3c4ec0, m1 0x34e194, ios 0x146eac;
    virtual void customSetup() = win 0x366b00, imac 0x3c3070, m1 0x34c324, ios 0x1454b8;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x368de0, imac 0x3c4e00, m1 0x34e0b0, ios 0x146e3c;
    virtual void keyUp(cocos2d::enumKeyCodes) = m1 0x34e268, imac 0x3c4fa0, ios 0x146f58 {}

    TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
    void goEdit() = win 0x368b80, m1 0x34df78, imac 0x3c4cc0;
    bool init(bool p0) = win inline {
        m_unkBool1 = p0;
        return CCBlockLayer::init();
    }
    void musicSliderChanged(cocos2d::CCObject*) = win 0x3683c0, imac 0x3c4870, m1 0x34daec;
    void onEdit(cocos2d::CCObject* sender) = win 0x3687e0, m1 0x34de9c, imac 0x3c4be0;
    void onHelp(cocos2d::CCObject* sender);
    void onNormalMode(cocos2d::CCObject* sender) = win 0x368530, m1 0x34d904, imac 0x3c4670;
    void onPracticeMode(cocos2d::CCObject* sender) = win 0x368450, m1 0x34d8ac, imac 0x3c4610;
    void onQuit(cocos2d::CCObject* sender) = win 0x368e50, m1 0x34dffc, imac 0x3c4d60;
    void onRecordReplays(cocos2d::CCObject* sender);
    void onReplay(cocos2d::CCObject* sender);
    void onRestart(cocos2d::CCObject* sender) = win 0x3686a0, m1 0x34da8c, imac 0x3c4800;
    void onRestartFull(cocos2d::CCObject* sender) = win 0x368740, m1 0x34d870, imac 0x3c45d0;
    void onResume(cocos2d::CCObject* sender) = win 0x368610, m1 0x34d950, imac 0x3c46c0;
    void onSettings(cocos2d::CCObject* sender) = win 0x3677d0, m1 0x34dac8, imac 0x3c4840;
    void onTime(cocos2d::CCObject* sender);
    void onTryEdit(cocos2d::CCObject* sender) = m1 0x34d760, imac 0x3c44c0;
    void setupProgressBars();
    void sfxSliderChanged(cocos2d::CCObject*) = win 0x35cd70, m1 0x34db2c, imac 0x3c48b0;
    void tryQuit(cocos2d::CCObject* sender) = win 0x368c50, m1 0x34d988, imac 0x3c4700;
    TodoReturn tryShowBanner(float);

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
    static cocos2d::CCSize getDisplaySize() = win 0x786d0, imac 0x4b18f0, m1 0x41a190;
    static TodoReturn getRawPath(char const*);
    static TodoReturn getUniqueUserID();
    static TodoReturn getUserID();
    static void hideCursor() = win inline, imac 0x4b0b30, m1 0x41a144 {
        cocos2d::CCEGLView::sharedOpenGLView()->showCursor(false);
    }
    static bool isControllerConnected() = win inline, imac 0x4b1a30, m1 0x41a254 {
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
    static TodoReturn loadAndDecryptFileToString(char const*, char const*, gd::string&);
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
    static TodoReturn saveAndEncryptStringToFile(gd::string&, char const*, char const*);
    static TodoReturn sendMail(char const*, char const*, char const*);
    static void setBlockBackButton(bool);
    static void setKeyboardState(bool);
    static TodoReturn shouldResumeSound();
    static void showAchievements();
    static void showCursor() = win inline, imac 0x4b0b50, m1 0x419648 {
        cocos2d::CCEGLView::sharedOpenGLView()->showCursor(true);
    }
    static TodoReturn signInGooglePlay();
    static TodoReturn signOutGooglePlay();
    static TodoReturn spriteFromSavedFile(gd::string);
    static void toggleCallGLFinish(bool);
    static void toggleCPUSleepMode(bool);
    static void toggleForceTimer(bool);
    static void toggleFullScreen(bool, bool, bool);
    static void toggleLockCursor(bool isLocked) = imac 0x4b1850;
    static void toggleMouseControl(bool);
    static void toggleSmoothFix(bool);
    static void toggleVerticalSync(bool);
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
    PlayerCheckpoint();

    static PlayerCheckpoint* create() = win 0x3a4210, imac 0xbc400;

    virtual bool init() = imac 0xbf850, m1 0xae214, ios 0x126030;

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

    virtual bool init() = m1 0x194730, imac 0x1db900, ios 0x390144;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1dc830, m1 0x195378, ios 0x3904f0;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1db950, m1 0x194780, ios 0x390194;
}

[[link(android)]]
class PlayerFireBoostSprite : cocos2d::CCSprite {
    // virtual ~PlayerFireBoostSprite();

    static PlayerFireBoostSprite* create() = win 0x38cf30, imac 0x3ea580;

    virtual bool init() = m1 0x388cac, imac 0x40b6c0, ios 0x22e9e0;

    void animateFireIn() = win inline, m1 0x384370, imac 0x4066d0 {
        this->stopAllActions();

        auto scaleto = cocos2d::CCScaleTo::create(0.06f, m_size * 0.6f, m_size * 1.5f);
        auto callfunc = cocos2d::CCCallFunc::create(this, callfunc_selector(PlayerFireBoostSprite::loopFireAnimation));
        auto sequence = cocos2d::CCSequence::create(scaleto, callfunc, nullptr);
        this->runAction(sequence);
    }
    void animateFireOut() = win inline, m1 0x3843f0, imac 0x406740 {
        this->stopAllActions();
        auto action = cocos2d::CCScaleTo::create(0.4f, 0.01f, 0.01f);
        this->runAction(action);
    }
    void loopFireAnimation() = win 0x38d030, m1 0x384094;

    float m_size;
}

[[link(android), depends(GJPointDouble)]]
class PlayerObject : GameObject, AnimatedSpriteDelegate {
    // virtual ~PlayerObject();
    // PlayerObject() = ios 0x23e4dc;

    static PlayerObject* create(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool) = win 0x370960, imac 0x3e88e0, m1 0x36a89c;

    virtual void update(float) = win 0x373010, imac 0x3eb270, m1 0x36cf1c, ios 0x21a2d0;
    virtual void setScaleX(float) = win 0x38cac0, m1 0x38871c, imac 0x40b0c0, ios 0x22e704;
    virtual void setScaleY(float) = win 0x38cae0, m1 0x388720, imac 0x40b0d0, ios 0x22e708;
    virtual void setScale(float) = win 0x38cad0, m1 0x388724, imac 0x40b0e0, ios 0x22e70c;
    virtual void setPosition(cocos2d::CCPoint const&) = win 0x3868b0, imac 0x407b70, m1 0x3856d8, ios 0x22bf7c;
    virtual void setVisible(bool) = win 0x38caf0, imac 0x40b0f0, m1 0x388728, ios 0x22e710;
    virtual void setRotation(float) = win 0x38c9f0, m1 0x3886ac, imac 0x40b030, ios 0x22e694;
    virtual void setOpacity(unsigned char) = win 0x387d60, m1 0x386714, imac 0x408d60, ios 0x22cf10;
    virtual void setColor(cocos2d::ccColor3B const&) = win 0x387580, m1 0x38612c, imac 0x408740, ios 0x22c9d0;
    virtual void setFlipX(bool) = win 0x38ca00, m1 0x3886b0, imac 0x40b040, ios 0x22e698;
    virtual void setFlipY(bool) = m1 0x388718, imac 0x40b0b0, ios 0x22e700;
    virtual void resetObject() = m1 0x37ed44, imac 0x400590, ios 0x227340;
    virtual cocos2d::CCPoint getRealPosition() = imac 0x408f30, m1 0x386910, ios 0x22d014;
    virtual OBB2D* getOrientedBox() = imac 0x40a260, m1 0x387ab4, ios 0x22dcc0;
    virtual float getObjectRotation() = m1 0x387ae0, imac 0x40a280, ios 0x22dcec;
    virtual void animationFinished(char const*) = win 0x38cb10, imac 0x40b1e0, m1 0x3887fc, ios 0x22e720;

    void activateStreak() = win 0x38a300, imac 0x3f17c0, m1 0x3724d8;
    TodoReturn addAllParticles() = win 0x372900;
    TodoReturn addToTouchedRings(RingObject*) = imac 0x404180, m1 0x381fec;
    TodoReturn addToYVelocity(double, int);
    void animatePlatformerJump(float) = win 0x376ef0, imac 0x3f2020, m1 0x372c98;
    void boostPlayer(float) = win 0x38a150, m1 0x374f48, imac 0x3f49e0;
    void bumpPlayer(float, int, bool, GameObject*) = win 0x389910, imac 0x409440, m1 0x386e2c;
    TodoReturn buttonDown(PlayerButton);
    TodoReturn canStickToGround();
    TodoReturn checkSnapJumpToObject(GameObject*);
    void collidedWithObject(float, GameObject*, cocos2d::CCRect, bool) = win 0x37bb80, imac 0x3f4c90, m1 0x3751b8;
    void collidedWithObject(float, GameObject*) = imac 0x3fb520, m1 0x37a504;
    int collidedWithObjectInternal(float, GameObject*, cocos2d::CCRect, bool) = win 0x37bc40, m1 0x376dd8;
    void collidedWithSlope(float dt, GameObject* object, bool forced) = imac 0x3f4d30;
    void collidedWithSlopeInternal(float dt, GameObject* object, bool forced) = win 0x3799e0;
    TodoReturn convertToClosestRotation(float);
    void copyAttributes(PlayerObject*) = win 0x38a710, imac 0x409ed0, m1 0x3877bc;
    void createFadeOutDartStreak() = win 0x382830;
    void createRobot(int) = win 0x372180, m1 0x36c034, imac 0x3ea2a0;
    void createSpider(int) = win 0x372540, m1 0x36c378, imac 0x3ea650;
    void deactivateParticle() = m1 0x3709e8, imac 0x3efb60;
    void deactivateStreak(bool) = imac 0x3eb090, m1 0x36cd60;
    TodoReturn destroyFromHitHead();
    TodoReturn didHitHead();
    void disableCustomGlowColor() {
        m_hasCustomGlowColor = false;
    }
    void disablePlayerControls() = win 0x389620, imac 0x409140, m1 0x386af4;
    void disableSwingFire() = win 0x385170, m1 0x3807b8;
    void doReversePlayer(bool) = win 0x3826e0, imac 0x3f0850, m1 0x371620;
    inline void enableCustomGlowColor(cocos2d::ccColor3B const& color) {
        m_hasCustomGlowColor = true;
        m_glowColor = color;
    }
    void enablePlayerControls() = win 0x389770, imac 0x4091a0, m1 0x386b50;
    void exitPlatformerAnimateJump();
    void fadeOutStreak2(float) = win 0x38a400, imac 0x402470, m1 0x38071c;
    void flashPlayer(float, float, cocos2d::ccColor3B mainColor, cocos2d::ccColor3B secondColor) = imac 0x3fd3f0;
    void flipGravity(bool, bool) = win 0x384440, imac 0x3f1c30, m1 0x372910;
    TodoReturn flipMod();
    void gameEventTriggered(int p0, int p1) = win inline, imac 0x3f1ff0, m1 0x372c80 {
        if (this->m_gameLayer) {
            this->m_gameLayer->gameEventTriggered(static_cast<GJGameEvent>(p0), p1, static_cast<int>(this->m_savedObjectType));
        }
    }
    bool getActiveMode() = imac 0x404b10, m1 0x38294c;
    TodoReturn getCurrentXVelocity();
    TodoReturn getModifiedSlopeYVel();
    TodoReturn getOldPosition(float);
    cocos2d::ccColor3B getSecondColor();
    TodoReturn getYVelocity();
    TodoReturn gravityDown();
    TodoReturn gravityUp();
    TodoReturn handlePlayerCommand(int);
    TodoReturn handleRotatedCollisionInternal(float, GameObject*, cocos2d::CCRect, bool, bool, bool) = win 0x379310;
    TodoReturn handleRotatedObjectCollision(float p0, GameObject* p1, cocos2d::CCRect p2, bool p3) = win inline {
        return this->handleRotatedCollisionInternal(p0, p1, p2, p3, false, false);
    }
    TodoReturn handleRotatedSlopeCollision(float, GameObject*, bool);
    TodoReturn hardFlipGravity();
    void hitGround(GameObject*, bool) = win 0x3861a0, imac 0x3fa390, m1 0x37951c;
    TodoReturn hitGroundNoJump(GameObject*, bool);
    void incrementJumps() = win 0x376e10, imac 0x3f1bf0, m1 0x3728d8;
    bool init(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool) = win 0x370a00, imac 0x3e8970, m1 0x36a954;
    bool isBoostValid(float);
    bool isFlying() = win inline, m1 0x37097c, imac 0x3efb00 {
        return m_isShip || m_isBird || m_isDart || m_isSwing;
    }
    bool isInBasicMode() = win inline, m1 0x37b8c8, imac 0x3fcbc0 {
        return !this->isFlying() && !m_isBall && !m_isSpider;
    }
    bool isInNormalMode() = win inline, m1 0x36f5a8, imac 0x3ee1c0 {
        return !this->isFlying() && !m_isBall && !m_isRobot && !m_isSpider;
    }
    bool isSafeFlip(float);
    bool isSafeHeadTest();
    bool isSafeMode(float);
    bool isSafeSpiderFlip(float);
    TodoReturn levelFlipFinished() = win 0x3759e0;
    bool levelFlipping() = m1 inline {
        return m_playEffects && PlayLayer::get()->isFlipping();
    }
    TodoReturn levelWillFlip() = imac 0x3f1930;
    TodoReturn limitDashRotation(float&);
    void loadFromCheckpoint(PlayerCheckpoint*) = win 0x38bc30, imac 0x40a910, m1 0x3880ac;
    void lockPlayer() = win 0x389540, imac 0x408fe0, m1 0x3869b4;
    TodoReturn logValues();
    void modeDidChange();
    TodoReturn performSlideCheck();
    void placeStreakPoint() = win 0x38a8f0, imac 0x3f18a0, m1 0x3725a0;
    TodoReturn playBumpEffect(int, GameObject*) = win 0x389cc0;
    TodoReturn playBurstEffect();
    void playCompleteEffect(bool, bool) = win 0x36e2b0, imac 0x2024c0, m1 0x1b7870;
    void playDeathEffect() = win 0x3691a0, imac 0x1fa350, m1 0x1af8ac;
    void playDynamicSpiderRun() = win 0x38b740;
    void playerDestroyed(bool) = win 0x381f10, imac 0x402270, m1 0x380548;
    bool playerIsFalling(float);
    TodoReturn playerIsFallingBugged();
    TodoReturn playerIsMovingUp();
    TodoReturn playerTeleported();
    TodoReturn playingEndEffect() = imac 0x4093c0, m1 0x386d90;
    void playSpawnEffect() = win 0x381650, imac 0x401bb0, m1 0x37fe98;
    void playSpiderDashEffect(cocos2d::CCPoint from, cocos2d::CCPoint to) = win 0x37f340, m1 0x37b928, imac 0x3fcc20;
    void postCollision(float) = win 0x3777f0, m1 0x373790;
    void preCollision() = imac 0x3f2a40;
    bool preSlopeCollision(float, GameObject*) = win 0x3794b0;
    void propellPlayer(float, bool, int) = win 0x389ac0, m1 0x387134;
    bool pushButton(PlayerButton) = win 0x382110, imac 0x4027d0, m1 0x380a44;
    TodoReturn pushDown();
    void pushPlayer(float);
    TodoReturn redirectDash(float);
    TodoReturn redirectPlayerForce(float, float, float, float) = win 0x389ed0;
    void releaseAllButtons() = win 0x389370, m1 0x386970, imac 0x408fa0;
    bool releaseButton(PlayerButton) = win 0x3823a0, imac 0x403c40, m1 0x381b48;
    TodoReturn removeAllParticles();
    void removePendingCheckpoint() = win 0x38c400, imac 0x4013f0;
    TodoReturn removePlacedCheckpoint() = imac 0x402230;
    TodoReturn resetAllParticles() = imac 0x3f1660;
    TodoReturn resetCollisionLog(bool) = imac 0x3f2900;
    TodoReturn resetCollisionValues();
    void resetPlayerIcon() = win 0x385550, imac 0x405460, m1 0x383208;
    TodoReturn resetStateVariables();
    void resetStreak() = win 0x375870, imac 0x3f16d0;
    void resetTouchedRings(bool) = win 0x3824b0, imac 0x4010d0;
    TodoReturn reverseMod();
    void reversePlayer(EffectGameObject*) = win 0x382600, imac 0x4041e0, m1 0x382044;
    void ringJump(RingObject*, bool) = win 0x382dd0, imac 0x402c50, m1 0x380dec;
    void rotateGameplay(int, int, bool, float, float, bool, bool);
    TodoReturn rotateGameplayObject(GameObject*) = win 0x37b5c0;
    void rotateGameplayOnly(bool param) = win inline {
        m_isSideways = param;
        this->updatePlayerArt();
    }
    TodoReturn rotatePreSlopeObjects();
    void runBallRotation(float) = win 0x3775c0;
    void runBallRotation2() = win 0x3776f0;
    void runNormalRotation() {
        this->runNormalRotation(false, 1.0f);
    }
    void runNormalRotation(bool, float) = win 0x377490, imac 0x3ee220, m1 0x36f618;
    void runRotateAction(bool, int) = win 0x3775c0;
    TodoReturn saveToCheckpoint(PlayerCheckpoint*) = imac 0x40a6b0;
    void setSecondColor(cocos2d::ccColor3B const&) = win 0x387610, imac 0x3ec3a0, m1 0x36dd8c;
    void setupStreak() = win 0x372a50, imac 0x3eab20, m1 0x36c84c;
    void setYVelocity(double velocity, int) = win 0x372fa0 {
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
    TodoReturn spawnPortalCircle(cocos2d::ccColor3B, float) = win 0x381930;
    TodoReturn spawnScaleCircle() = imac 0x401fe0;
    TodoReturn specialGroundHit();
    TodoReturn speedDown();
    TodoReturn speedUp();
    void spiderTestJump(bool) = win 0x37e510, m1 0x3727c8;
    void spiderTestJumpInternal(bool) = win 0x37e5c0, m1 0x37ad3c;
    void spiderTestJumpX(bool);
    void spiderTestJumpY(bool);
    void startDashing(DashRingObject*) = win 0x37fae0, m1 0x37e290, imac 0x3ffa00;
    TodoReturn stopBurstEffect();
    void stopDashing() = win 0x380820;
    void stopParticles() = win 0x375af0;
    void stopPlatformerJumpAnimation() = win 0x3772d0, imac 0x3f2500, m1 0x37314c;
    TodoReturn stopRotation(bool, int);
    void stopStreak2() = imac 0x409d20, m1 0x387654;
    void storeCollision(PlayerCollisionDirection, int);
    TodoReturn switchedDirTo(PlayerButton) = win 0x382000;
    void switchedToMode(GameObjectType) = win 0x3860a0, imac 0x401440, m1 0x37f824;
    TodoReturn testForMoving(float, GameObject*);
    void toggleBirdMode(bool, bool) = win 0x384a90, imac 0x405680, m1 0x383410;
    void toggleDartMode(bool, bool) = win 0x385200, imac 0x406780, m1 0x384438;
    void toggleFlyMode(bool, bool) = win 0x384760, imac 0x404b70, m1 0x3829b4;
    void toggleGhostEffect(GhostType) = win 0x3890a0, imac 0x401a30, m1 0x37fd54;
    void togglePlatformerMode(bool val) {
        m_isPlatformer = val;
    }
    void togglePlayerScale(bool, bool) = win 0x38a970, imac 0x401590, m1 0x37f99c;
    void toggleRobotMode(bool, bool) = win 0x385960, imac 0x407240, m1 0x384e24;
    void toggleRollMode(bool, bool) = win 0x3857e0, imac 0x406e60, m1 0x384a4c;
    void toggleSpiderMode(bool, bool) = win 0x385ce0, imac 0x4076c0, m1 0x38525c;
    void toggleSwingMode(bool, bool) = win 0x384d90, imac 0x405d60, m1 0x383a5c;
    void toggleVisibility(bool) = win 0x3756d0, imac 0x3f1460, m1 0x37219c;
    TodoReturn touchedObject(GameObject*) = imac 0x40ad70;
    void tryPlaceCheckpoint() = m1 0x371f50;
    TodoReturn unrotateGameplayObject(GameObject*) = win 0x37b8b0;
    TodoReturn unrotatePreSlopeObjects();
    TodoReturn updateCheckpointMode(bool);
    TodoReturn updateCheckpointTest();
    void updateCollide(PlayerCollisionDirection, GameObject*) = win 0x37e1c0, imac 0x3faae0, m1 0x379b88;
    void updateCollideBottom(float, GameObject*);
    void updateCollideLeft(float, GameObject*);
    void updateCollideRight(float, GameObject*);
    void updateCollideTop(float, GameObject*);
    void updateDashAnimation() = m1 0x370a18, imac 0x3efb90;
    void updateDashArt() = win 0x380390;
    void updateEffects(float param) = win inline, imac 0x3f0ff0 {
        m_waveTrail->updateStroke(param);
    }
    void updateGlowColor() = win 0x3876a0, imac 0x4088a0, m1 0x386264;
    TodoReturn updateInternalActions(float) = win 0x38d0c0, imac 0x40b720;
    void updateJump(float) = win 0x375b90, imac 0x3ec410, m1 0x36ddf4;
    TodoReturn updateJumpVariables();
    TodoReturn updateLastGroundObject(GameObject*);
    TodoReturn updateMove(float) = win 0x374350;
    void updatePlayerArt() = win 0x382a30, imac 0x404530, m1 0x3823c4;
    void updatePlayerBirdFrame(int) = win 0x388550, imac 0x405aa0, m1 0x3837cc;
    void updatePlayerDartFrame(int) = win 0x388c50, imac 0x406bf0, m1 0x384808;
    void updatePlayerForce(cocos2d::CCPoint, bool);
    void updatePlayerFrame(int) = win 0x387ec0, m1 0x38412c, imac 0x406480;
    void updatePlayerGlow() = win 0x38a510, imac 0x4043a0, m1 0x382204;
    void updatePlayerJetpackFrame(int) = win 0x388320, imac 0x405210, m1 0x382fcc;
    void updatePlayerRobotFrame(int id) = win inline, imac 0x408f60, m1 0x386940 {
        if (id < 1) id = 1;
        else if (id > 0x43) id = 0x44;

        createRobot(id);
    }
    void updatePlayerRollFrame(int) = win 0x3887f0, imac 0x406ff0, m1 0x384bec;
    void updatePlayerScale() = win 0x38a490, m1 0x3827c8, imac 0x4049a0;
    void updatePlayerShipFrame(int) = win 0x3880f0, imac 0x404fc0, m1 0x382d90;
    void updatePlayerSpiderFrame(int id) = win inline, imac 0x408f80, m1 0x386958 {
        if (id < 1) id = 1;
        else if (id > 0x44) id = 0x45;

        createSpider(id);
    }

    void updatePlayerSpriteExtra(gd::string);
    void updatePlayerSwingFrame(int) = win 0x388a20, imac 0x4061a0, m1 0x383e58;
    void updateRobotAnimationSpeed() = win 0x38b350;
    void updateRotation(float, float) = win 0x377370, imac 0x3f0d20, m1 0x371b20;
    void updateRotation(float) = win 0x37b1f0, imac 0x3fb360, m1 0x37a378;
    void updateShipRotation(float) = win 0x37ae10;
    void updateShipSpriteExtra(gd::string);
    TodoReturn updateSlopeRotation(float);
    TodoReturn updateSlopeYVelocity(float);
    void updateSpecial(float) = imac 0x3f0f70;
    TodoReturn updateStateVariables();
    TodoReturn updateStaticForce(float, float, bool);
    void updateStreakBlend(bool) = imac 0x3eb160;
    TodoReturn updateStreaks(float);
    void updateSwingFire() = win 0x385040;
    void updateTimeMod(float, bool) = win 0x38afc0, imac 0x3ea990, m1 0x36c61c;
    TodoReturn usingWallLimitedMode();
    TodoReturn yStartDown();
    TodoReturn yStartUp();

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
    PlayLayer() = imac 0xbfcd0;
    virtual ~PlayLayer() = win 0x38e920, imac 0xab980;

    static PlayLayer* create(GJGameLevel* level, bool useReplay, bool dontCreateObjects) = imac 0xabda0, m1 0x9ccd0;
    static PlayLayer* get() {
        return GameManager::get()->m_playLayer;
    }
    static cocos2d::CCScene* scene(GJGameLevel* level, bool useReplay, bool dontCreateObjects) = win 0x38ebc0, imac 0xabcf0, m1 0x9cc10;

    virtual void onEnterTransitionDidFinish() = win 0x3a4190, imac 0xbf710, m1 0xae0cc, ios 0x125f5c;
    virtual void onExit() = win 0x3a41c0, m1 0xae110, imac 0xbf740, ios 0x125f90;
    virtual void postUpdate(float) = win 0x39da60, imac 0xbb760, m1 0xaaab0, ios 0x123060;
    virtual TodoReturn checkForEnd() = win 0x39de30, imac 0xbba90, m1 0xaad98, ios 0x123338;
    virtual TodoReturn testTime() = m1 0x8fb0, imac 0x7150, ios 0xd590;
    virtual void updateVerifyDamage() = win 0x39e000, imac 0xbbb80, m1 0xaae94, ios 0x123420;
    virtual void updateAttemptTime(float) = win 0x39e0f0, imac 0xbbc70, m1 0xaaf9c, ios 0x123510;
    virtual void updateVisibility(float) = win 0x3984e0, imac 0xb7ab0, m1 0xa75f0, ios 0x120198;
    virtual TodoReturn opacityForObject(GameObject*) = win 0x399410, m1 0xa9384, imac 0xb9de0, ios 0x121be8;
    virtual void updateColor(cocos2d::ccColor3B& color, float fadeTime, int colorID, bool blending, float opacity, cocos2d::ccHSVValue& copyHSV, int colorIDToCopy, bool copyOpacity, EffectGameObject* callerObject, int unk1, int unk2) = win 0x39b0c0, imac 0xb9ec0, m1 0xa9448, ios 0x121c58;
    virtual TodoReturn activateEndTrigger(int, bool, bool) = m1 0xa6648, imac 0xb69f0, ios 0x11f5dc;
    virtual void activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&) = win 0x395320, imac 0xb6ec0, m1 0xa6a7c, ios 0x11f8f4;
    virtual void toggleGlitter(bool) = win 0x39c9d0, imac 0xba9a0, m1 0xa9eb4, ios 0x1225ec;
    virtual void destroyPlayer(PlayerObject*, GameObject*) = win 0x39caf0, imac 0xbaa60, m1 0xa9f8c, ios 0x122650;
    virtual TodoReturn toggleGroundVisibility(bool) = win 0x39c820, m1 0xa9dc8, imac 0xba8b0, ios 0x122508;
    virtual void toggleMGVisibility(bool) = win 0x39c8a0, imac 0xba8e0, m1 0xa9df8, ios 0x122538;
    virtual void toggleHideAttempts(bool) = win 0x39c8e0, imac 0xba900, m1 0xa9e08, ios 0x122548;
    virtual float timeForPos(cocos2d::CCPoint, int, int, bool, int) = win 0x39c6f0, imac 0xba790, m1 0xa9cf8, ios 0x122438;
    virtual cocos2d::CCPoint posForTime(float) = win 0x39c780, imac 0xba810, m1 0xa9d6c, ios 0x1224ac;
    virtual void resetSPTriggered() = win 0x39c7e0, imac 0xba860, m1 0xa9d8c, ios 0x1224cc;
    virtual void updateTimeWarp(float) = imac 0xb68e0, m1 0xa6560, ios 0x11f5c4;
    virtual void playGravityEffect(bool) = win 0x39b180, imac 0xb9f30, m1 0xa94b4, ios 0x121cc4;
    virtual TodoReturn manualUpdateObjectColors(GameObject*) = win 0x399420, m1 0xa938c, imac 0xb9df0, ios 0x121bf0;
    virtual void checkpointActivated(CheckpointGameObject*) = win 0x39e130, imac 0xbbce0, m1 0xab010, ios 0x123580;
    virtual TodoReturn flipArt(bool) = win 0x39bb60, imac 0xba710, m1 0xa9c94, ios 0x1223d4;
    virtual void updateTimeLabel(int, int, bool) = win 0x39b690, imac 0xba360, m1 0xa98b8, ios 0x122048;
    virtual TodoReturn checkSnapshot() = m1 0xad494, imac 0xbeaa0, ios 0x125610;
    virtual void toggleProgressbar() = win 0x39b890, imac 0xba530, m1 0xa9a90, ios 0x1221f0;
    virtual TodoReturn toggleInfoLabel() = win 0x39c670, imac 0xba750, m1 0xa9cb4, ios 0x1223f4;
    virtual void removeAllCheckpoints() = win 0x3a1130, m1 0xad284, imac 0xbe890, ios 0x125104;
    virtual TodoReturn toggleMusicInPractice() = win 0x39ba30, imac 0xba6b0, m1 0xa9c08, ios 0x122368;
    virtual void currencyWillExit(CurrencyRewardLayer*) = win 0x39d880, imac 0xbb5b0, m1 0xaa984, ios 0x122f34;
    virtual void circleWaveWillBeRemoved(CCCircleWave*) = win 0x39da40, m1 0xaa9e4, imac 0xbb650, ios 0x122f94;
    virtual void dialogClosed(DialogLayer*) = win 0x39d8a0, imac 0xbb5f0, m1 0xaa9b0, ios 0x122f60;

    void addCircle(CCCircleWave* cw) {
        m_circleWaveArray->addObject(cw);
    }
    void addObject(GameObject*) = win 0x396eb0, imac 0xb2190, m1 0xa2668;
    void addToGroupOld(GameObject*);
    void applyCustomEnterEffect(GameObject*, bool) = win 0x399aa0;

    void applyEnterEffect(GameObject*, int, bool) = win 0x39a790;
    bool canPauseGame() = win inline, imac 0xbf270, m1 0xadc4c {
        return !m_hasCompletedLevel && !m_levelEndAnimationStarted;
    }
    TodoReturn checkpointWithID(int);
    TodoReturn colorObject(int, cocos2d::ccColor3B);
    TodoReturn commitJumps();
    TodoReturn compareStateSnapshot();
    CheckpointObject* createCheckpoint() = win 0x39e150, imac 0xbbd00;
    void createObjectsFromSetupFinished() = win 0x396a10, imac 0xb7490, m1 0xa6fc4;
    void delayedFullReset() = imac 0xbead0, m1 0xad4a0;
    void delayedResetLevel() = win 0x3a1de0, m1 0xaa970, imac 0xbb590;
    void fullReset() = win 0x3a1ce0, imac 0xbeb30, m1 0xad514;
    float getCurrentPercent() = win 0x39ca70, imac 0xba2f0, m1 0xa9848;
    int getCurrentPercentInt() = win inline, ios inline, imac 0xba9f0, m1 0xa9f18 { // i love this
        return static_cast<int>(this->getCurrentPercent());
    }
    TodoReturn getEndPosition();
    TodoReturn getLastCheckpoint();
    TodoReturn getRelativeMod(cocos2d::CCPoint, float, float, float);
    TodoReturn getRelativeModNew(cocos2d::CCPoint, float, float, bool, bool);
    double getTempMilliTime() = win 0x3cef0;
    TodoReturn gravityEffectFinished();
    void incrementJumps() = imac 0xbf200, m1 0xadbcc;
    bool init(GJGameLevel* level, bool useReplay, bool dontCreateObjects) = win 0x38ec70, imac 0xabe20, m1 0x9cd6c;
    bool isGameplayActive();
    void levelComplete() = win 0x390c30, imac 0xb4050, m1 0xa406c;
    TodoReturn loadActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&);
    void loadDefaultColors() = win 0x39ad80, m1 0xa2300, imac 0xb1de0;
    TodoReturn loadDynamicSaveObjects(gd::vector<SavedObjectStateRef>&) = imac 0xbe690, m1 0xad05c;
    void loadFromCheckpoint(CheckpointObject*) = win 0x3a07b0, m1 0xacb4c, imac 0xbe120;
    TodoReturn loadLastCheckpoint() = m1 0xacaf4;
    CheckpointObject * markCheckpoint() = win 0x3a06e0, imac 0xbb9d0, m1 0xaacd4;
    void onQuit() = win 0x3a3db0, m1 0xa3cac, imac 0xb3c60;
    TodoReturn optimizeColorGroups() = win 0x397d10, imac 0xae840;
    TodoReturn optimizeOpacityGroups() = win 0x397fa0, imac 0xaea30;
    void pauseGame(bool) = win 0x3a31f0, imac 0xbf290, m1 0xadc74;
    void playEndAnimationToPos(cocos2d::CCPoint) = win 0x394aa0, imac 0xb6a00, m1 0xa664c;
    void playPlatformerEndAnimationToPos(cocos2d::CCPoint, bool) = win 0x395430, imac 0xb6fb0, m1 0xa6b84;
    TodoReturn playReplay(gd::string);
    void prepareCreateObjectsFromSetup(gd::string&) = win 0x395f80, m1 0x9dac0;
    void prepareMusic(bool) = imac 0xb3ae0;
    void processCreateObjectsFromSetup() = win 0x396230, m1 0x9de44;
    TodoReturn processLoadedMoveActions();
    TodoReturn queueCheckpoint();
    void removeAllObjects() = imac 0xb3dd0;
    void removeCheckpoint(bool) = win 0x3a0ff0, m1 0xaca08, imac 0xbdfd0;
    void removeFromGroupOld(GameObject*);
    void resetLevel() = win 0x3a1f90, imac 0xb2f80, m1 0xa3120;
    void resetLevelFromStart() = win 0x3a1df0, m1 0xad7d0, imac 0xbee20;
    void resume() = win 0x3a37c0, m1 0xadf54, imac 0xbf580;
    void resumeAndRestart(bool) = win 0x3a34b0, imac 0xbf3d0, m1 0xaddbc;
    TodoReturn saveActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&);
    TodoReturn saveDynamicSaveObjects(gd::vector<SavedObjectStateRef>&);
    TodoReturn scanActiveSaveObjects() = imac 0xaf930;
    TodoReturn scanDynamicSaveObjects() = win 0x3a1180, imac 0xaec20;
    TodoReturn screenFlipObject(GameObject*);
    void setDamageVerifiedIdx(int);
    void setupHasCompleted() = win 0x38f9c0, imac 0xadac0, m1 0x9e66c;
    TodoReturn shouldBlend(int);
    void showCompleteEffect() = win 0x391fd0, imac 0xb4c70, m1 0xa4af4;
    void showCompleteText() = win 0x3919a0, imac 0xb50f0, m1 0xa4ecc;
    void showEndLayer();
    void showHint() = win 0x39d8c0, imac 0xbb420;
    void showNewBest(bool, int, int, bool, bool, bool) = win 0x3925f0, m1 0xa5a94, imac 0xb5d40;
    void showRetryLayer();
    void showTwoPlayerGuide() = m1 0xa1d74, imac 0xb1890;
    void spawnCircle();
    TodoReturn spawnFirework() = m1 0xa5800, imac 0xb5a80;
    void startGame() = win 0x390bd0, m1 0xa3c50, imac 0xb3c00;
    void startGameDelayed() = imac 0xb3fe0;
    void startMusic() = win 0x3a3c60, imac 0xb3ef0, m1 0xa3f14;
    TodoReturn startRecording();
    TodoReturn startRecordingDelayed();
    TodoReturn stopRecording();
    void storeCheckpoint(CheckpointObject*) = win 0x3a0610, m1 0xac964, imac 0xbdf30;
    TodoReturn takeStateSnapshot();
    TodoReturn toggleBGEffectVisibility(bool);
    TodoReturn toggleDebugDraw(bool);
    TodoReturn toggleGhostEffect(int);
    TodoReturn toggleIgnoreDamage(bool);
    //void toggleDebugDraw(bool) = ios 0x118288;
    void togglePracticeMode(bool practiceMode) = win 0x3a2f20, imac 0xbeca0, m1 0xad654;
    TodoReturn tryStartRecord();
    void updateAttempts() = win 0x3a2c70, imac 0xbeeb0, m1 0xad858;
    void updateEffectPositions() = m1 0xaa9fc, imac 0xbb690;
    void updateInfoLabel() = win 0x39bb90, imac 0xafdc0, m1 0xa0770;
    TodoReturn updateInvisibleBlock(GameObject*, float, float, float, float, cocos2d::ccColor3B const&);
    void updateProgressbar() = win 0x39b4f0, m1 0xa2124, imac 0xb1c20;
    void updateScreenRotation(int, bool, bool, float, int, float, int, int);
    void updateTestModeLabel() = win 0x390b40, imac 0xb3d10, m1 0xa3d38;
    void updateTimeWarp(EffectGameObject*, float) = win 0x394a40;

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
    double m_bestAttemptTime;
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

    bool init(int) = m1 0x415640, imac 0x4ac570;
    void setColor(cocos2d::ccColor3B);
    void setOpacity(float);
    void setPrice(int);
}

[[link(android)]]
class ProfilePage : FLAlertLayer, FLAlertLayerProtocol, LevelCommentDelegate, CommentUploadDelegate, UserInfoDelegate, UploadActionDelegate, UploadPopupDelegate, LeaderboardManagerDelegate {
    // virtual ~ProfilePage();
    // ProfilePage() = ios 0x1a9c90;

    static ProfilePage* create(int accountID, bool ownProfile) = win 0x3a7a20, imac 0x7a3080, m1 0x6b5200;

    virtual void registerWithTouchDispatcher() = m1 0x6bcf04, imac 0x7ab750, ios 0x19ff84;
    virtual void keyBackClicked() = win 0x3ae050, m1 0x6bb96c, imac 0x7aa100, ios 0x19f304;
    virtual void show() = win 0x3ae2e0, m1 0x6bbb9c, imac 0x7aa380, ios 0x19f44c;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x3ada20, imac 0x7a9ba0, m1 0x6bb3d4, ios 0x19ef78;
    virtual void updateUserScoreFinished() = win 0x3ae1a0, m1 0x6bba60, imac 0x7aa210, ios 0x19f310;
    virtual void updateUserScoreFailed() = win 0x3ae290, imac 0x7aa2e0, m1 0x6bbaf4, ios 0x19f3a4;
    virtual void getUserInfoFinished(GJUserScore*) = win 0x3aeb40, imac 0x7aa670, m1 0x6bbe88, ios 0x19f584;
    virtual void getUserInfoFailed(int) = win 0x3aec30, imac 0x7aaa60, m1 0x6bc25c, ios 0x19f7f8;
    virtual void userInfoChanged(GJUserScore*) = win 0x3aec80, imac 0x7aab20, m1 0x6bc334, ios 0x19f86c;
    virtual void loadCommentsFinished(cocos2d::CCArray*, char const*) = win 0x3af270, imac 0x7aad40, m1 0x6bc558, ios 0x19f990;
    virtual void loadCommentsFailed(char const*) = win 0x3af2f0, imac 0x7aae30, m1 0x6bc664, ios 0x19fa14;
    virtual void setupPageInfo(gd::string, char const*) = win 0x3af350, imac 0x7aaf00, m1 0x6bc738, ios 0x19fa84;
    virtual void commentUploadFinished(int) = win 0x3af550, m1 0x6bcc2c, imac 0x7ab460, ios 0x19fd4c;
    virtual void commentUploadFailed(int, CommentError) = win 0x3af5a0, m1 0x6bcccc, imac 0x7ab4f0, ios 0x19fda4;
    virtual void commentDeleteFailed(int, int) = win 0x3af6c0, imac 0x7ab5c0, m1 0x6bcda0, ios 0x19fe54;
    virtual void onClosePopup(UploadActionPopup*) = win 0x3add10, m1 0x6bb58c, imac 0x7a9d80, ios 0x19f0fc;
    virtual void uploadActionFinished(int, int) = win 0x3add60, imac 0x7a9e00, m1 0x6bb614, ios 0x19f16c;
    virtual void uploadActionFailed(int, int) = win 0x3adf20, imac 0x7a9fe0, m1 0x6bb80c, ios 0x19f280;

    void blockUser();
    bool init(int accountID, bool ownProfile) = win 0x3a7c00, m1 0x6b5370, imac 0x7a3290;
    bool isCorrect(char const* key);
    bool isOnWatchlist(int);
    void loadPage(int) = win 0x3aee30;
    void loadPageFromUserInfo(GJUserScore*) = win 0x3a9240, m1 0x6b662c, imac 0x7a4660;
    void onBlockUser(cocos2d::CCObject* sender) = win 0x3ad200, m1 0x6b9f98;
    void onClose(cocos2d::CCObject* sender) = win 0x3adfd0, m1 0x6b5db8, imac 0x7a3d60;
    void onComment(cocos2d::CCObject* sender) = win 0x3acc50, m1 0x6ba888, imac 0x7a8fa0;
    void onCommentHistory(cocos2d::CCObject* sender) = win 0x3acbc0, imac 0x7a7830, m1 0x6b92c8;
    void onCopyName(cocos2d::CCObject* sender) = win 0x3ac290;
    void onFollow(cocos2d::CCObject* sender) = win 0x3ad450, m1 0x6b6028, imac 0x7a3fe0;
    void onFriend(cocos2d::CCObject* sender) = win 0x3ace10, imac 0x7a82f0, m1 0x6b9c54;
    void onFriends(cocos2d::CCObject* sender) = win 0x3aeae0;
    void onInfo(cocos2d::CCObject* sender) = m1 0x6b9300, imac 0x7a7870;
    void onMessages(cocos2d::CCObject* sender) = win 0x3aeab0;
    void onMyLevels(cocos2d::CCObject* sender) = win 0x3ac8b0, imac 0x7a8a10, m1 0x6ba314;
    void onMyLists(cocos2d::CCObject* sender) = win 0x3aca60, imac 0x7a8bf0, m1 0x6ba4e8;
    void onNextPage(cocos2d::CCObject* sender) = win 0x3af530;
    void onPrevPage(cocos2d::CCObject* sender) = win 0x3af540;
    void onRequests(cocos2d::CCObject* sender) = win 0x3aeb10;
    void onSendMessage(cocos2d::CCObject* sender) = win 0x3acc00, m1 0x6b9b4c;
    void onSettings(cocos2d::CCObject* sender) = win 0x3ae900, m1 0x6ba868;
    void onStatInfo(cocos2d::CCObject* sender) = win 0x3ac0c0, m1 0x6b89e4, imac 0x7a6f70;
    void onTwitch(cocos2d::CCObject* sender) = win 0x3ae760, m1 0x6b9124, imac 0x7a76a0;
    void onTwitter(cocos2d::CCObject* sender) = win 0x3ae5d0, m1 0x6b8f6c, imac 0x7a74f0;
    void onUpdate(cocos2d::CCObject* sender) = imac 0x7a4270;
    void onYouTube(cocos2d::CCObject* sender) = win 0x3ae440, m1 0x6b8dbc, imac 0x7a7350;
    void setupComments() = m1 0x6b5e30;
    void setupCommentsBrowser(cocos2d::CCArray*) = win 0x3af120, m1 0x6b64fc, imac 0x7a4520;
    void showNoAccountError() = win 0x3ae060, m1 0x6bb250, imac 0x7a99e0;
    TodoReturn toggleMainPageVisibility(bool);
    void toggleShip(cocos2d::CCObject* sender) = win 0x3ac010, imac 0x7a72a0, m1 0x6b8cfc;
    TodoReturn updateLevelsLabel();
    void updatePageArrows() = win 0x3af4c0;

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

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x265a58, imac 0x2c16d0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x265cc8, imac 0x2c18f0;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x265ba8, imac 0x2c17d0;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x265c58, imac 0x2c1870;
    virtual void keyBackClicked() = imac 0x2c1530, m1 0x2658d4;
    virtual void show() = imac 0x2c1500, m1 0x2658a8;

    bool init(bool);
    void onClick(cocos2d::CCObject* sender) = m1 0x2659e0, imac 0x2c1650;
    void onClose(cocos2d::CCObject* sender);
    TodoReturn setup() = m1 0x26567c, imac 0x2c12a0;
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

    static PurchaseItemPopup* create(GJStoreItem*) = win 0x2a74d0, m1 0x2a77d0, imac 0x310ed0;

    virtual void keyBackClicked() = m1 0x2aa32c, imac 0x3140d0, ios 0x151c10;

    bool init(GJStoreItem*) = win 0x2a75c0, m1 0x2a9818, imac 0x3134b0;
    void onClose(cocos2d::CCObject* sender) = win 0x84620, m1 0x2aa27c, imac 0x314030;
    void onPurchase(cocos2d::CCObject* sender) = win 0x2a8470, m1 0x2aa2b8, imac 0x314060;

    GJStoreItem* m_storeItem;
    GJPurchaseDelegate* m_delegate;
}

[[link(android)]]
class RandTriggerGameObject : ChanceTriggerGameObject {
    // virtual ~RandTriggerGameObject();

    static RandTriggerGameObject* create();

    virtual bool init() = win 0x49b670, m1 0x172148, imac 0x1b1b50, ios 0x38250c;
    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x49b690, imac 0x1b1de0, m1 0x1723c4, ios 0x382630;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = win 0x49b860, imac 0x1b2040, m1 0x17260c, ios 0x382708;
    virtual gd::string getSaveString(GJBaseGameLayer*) = win 0x49ba60, imac 0x1b2680, m1 0x172bc0, ios 0x382b10;

    int getRandomGroupID();
    int getTotalChance();
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

    static RateDemonLayer* create(int levelID) = win inline, m1 0x21cbdc, imac 0x271bd0 {
        auto ret = new RateDemonLayer();
        if (ret->init(levelID)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual void keyBackClicked() = win 0x3b22a0, m1 0x21d918, imac 0x2728e0, ios 0x41e7c4;
    virtual void uploadActionFinished(int, int) = win 0x3b2080, imac 0x2725a0, m1 0x21d56c, ios 0x41e618;
    virtual void uploadActionFailed(int, int) = win 0x3b2110, imac 0x272690, m1 0x21d6bc, ios 0x41e6ac;
    virtual void onClosePopup(UploadActionPopup*) = win 0x3b21e0, imac 0x272800, m1 0x21d82c, ios 0x41e748;

    bool init(int) = win 0x3b1790, m1 0x21ccfc, imac 0x271d40;
    void onClose(cocos2d::CCObject* sender) = win 0x3b2260, m1 0x21d3e8, imac 0x272420;
    void onRate(cocos2d::CCObject* sender) = win 0x3b1ee0, imac 0x272470, m1 0x21d444;
    void selectRating(cocos2d::CCObject*) = win 0x3b1d60, m1 0x21d2dc, imac 0x272330;

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

    static RateLevelLayer* create(int levelID) = win inline, m1 0x4a8394 {
        auto ret = new RateLevelLayer();
        if (ret->init(levelID)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual void keyBackClicked() = win 0x3b2ab0, m1 0x4a8d14, imac 0x5519b0, ios 0x627b0;

    bool init(int) = win 0x3b23c0, m1 0x4a8498;
    void onClose(cocos2d::CCObject* sender);
    void onRate(cocos2d::CCObject* sender) = win 0x3b2a20, imac 0x551960, m1 0x4a8cac;
    void selectRating(cocos2d::CCObject* sender) = win 0x3b28d0, imac 0x551830, m1 0x4a8b34;

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

    static RateStarsLayer* create(int, bool, bool) = win 0x3b2c40, m1 0x223a90, imac 0x279820;

    virtual void keyBackClicked() = win 0x3b3b90, m1 0x224d64, imac 0x27ab50, ios 0x84c9c;
    virtual void uploadActionFinished(int, int) = win 0x3b3990, imac 0x27a810, m1 0x2249d8, ios 0x84b00;
    virtual void uploadActionFailed(int, int) = win 0x3b3a10, imac 0x27a900, m1 0x224b18, ios 0x84b8c;
    virtual void onClosePopup(UploadActionPopup*) = win 0x3b3ad0, imac 0x27aa70, m1 0x224c78, ios 0x84c20;

    CCMenuItemSpriteExtra* getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float) = win 0x3b3470;
    bool init(int, bool, bool) = win 0x3b2d90, m1 0x223bd8, imac 0x2799b0;
    void onClose(cocos2d::CCObject* sender) = win 0x3b3b50, m1 0x224850, imac 0x27a680;
    void onFeature(cocos2d::CCObject* sender) = win 0x3b3440, imac 0x27a650;
    void onRate(cocos2d::CCObject* sender) = win 0x3b37a0, imac 0x27a6d0, m1 0x2248ac;
    void onToggleCoins(cocos2d::CCObject* sender);
    void selectRating(cocos2d::CCObject*) = win 0x3b35b0;

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

    static RetryLevelLayer* create() = win 0x3959c0;

    virtual void keyBackClicked() = win 0x3b4c40, imac 0x4e64b0, m1 0x4485ec, ios 0x1b5c44;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x3b4ad0, imac 0x4e63e0, m1 0x448540, ios 0x1b5bf8;
    virtual void customSetup() = win 0x3b3d00, m1 0x4474c4, imac 0x4e5300, ios 0x1b4fb4;
    virtual void showLayer(bool) = m1 0x44805c, imac 0x4e5ec0, ios 0x1b5aa8;
    virtual void enterAnimFinished() = m1 0x44816c, imac 0x4e5fc0, ios 0x1b5bb0;
    virtual void rewardedVideoFinished() = win 0x3b4a00, m1 0x448530, imac 0x4e63c0, ios 0x1b5be8;
    virtual bool shouldOffsetRewardCurrency() = m1 0x8fcc, imac 0x7190, ios 0x10258;
    virtual void keyUp(cocos2d::enumKeyCodes) = m1 0x4485e4, imac 0x4e6490, ios 0x1b5c3c {}

    const char* getEndText();
    void onEveryplay(cocos2d::CCObject* sender);
    void onMenu(cocos2d::CCObject* sender) = win 0x3b4b20;
    void onReplay(cocos2d::CCObject* sender);
    void onRewardedVideo(cocos2d::CCObject* sender);
    TodoReturn setupLastProgress() = win 0x3b4460;

    cocos2d::CCMenu* m_mainMenu;
    bool m_unk1e8;
    bool m_unk1e9;
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

    static char const* getRewardFrame(int type, int state) = win inline, imac 0x2094b0, m1 0x1be17c {
        return cocos2d::CCString::createWithFormat("chest_%02d_%02d_001.png", type, state)->getCString();
    }

    virtual bool init() = win 0x3b5120, m1 0x1bd4e4, imac 0x208720, ios 0x1c4798;
    virtual void registerWithTouchDispatcher() = win 0x425d0, m1 0x1bec8c, imac 0x209fc0, ios 0x1c5bcc;
    virtual void keyBackClicked() = win 0x84650, m1 0x1bec10, imac 0x209f50, ios 0x1c5b50;
    virtual void show() = win 0x3ae2e0, m1 0x1beab8, imac 0x209df0, ios 0x1c5a10;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = m1 0x1bec08, imac 0x209f30, ios 0x1c5b48 {}
    virtual void rewardsStatusFinished(int) = win 0x3b6120, imac 0x209a70, m1 0x1be754, ios 0x1c57bc;
    virtual void rewardsStatusFailed() = win 0x3b6370, imac 0x209d00, m1 0x1be9b4, ios 0x1c597c;
    void onClose(cocos2d::CCObject* sender);
    void onFreeStuff(cocos2d::CCObject* sender) = win 0x3b6920;
    void onReward(cocos2d::CCObject* sender) = win 0x3b5fe0, imac 0x2094d0, m1 0x1be1a4;
    void tryGetRewards();
    void unlockLayerClosed(RewardUnlockLayer* layer) = win inline, imac 0x20a000, m1 0x1becc4 {
        if (m_openLayer == layer) m_openLayer = nullptr;
    }
    callback void updateTimers(float) = m1 0x1be2c4;

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

    static RewardUnlockLayer* create(int, RewardsPage*) = win 0x3b6950, imac 0x209900, m1 0x1be624;

    virtual void keyBackClicked() = m1 0x1c25c8, imac 0x20dd60, ios 0x1c8e14 {}
    virtual void currencyWillExit(CurrencyRewardLayer*) = win 0x3ba210, m1 0x1c25a0, imac 0x20dd20, ios 0x1c8dec;

    void connectionTimeout() = win 0x3b7850, imac 0x20b430, m1 0x1bff18;
    bool init(int, RewardsPage*) = m1 0x1bef6c;
    void labelEnterFinishedO(cocos2d::CCObject*) = win inline {}
    void onClose(cocos2d::CCObject* sender) = win 0x3ba220, imac 0x20b3d0, m1 0x1bfec0;
    void playDropSound() = win 0x3b78b0, m1 0x1bfd64;
    void playLabelEffect(int, int, cocos2d::CCSprite*, cocos2d::CCPoint, float) = imac 0x20d5c0, m1 0x1c1e58;
    void playRewardEffect() = m1 0x1bff80;
    bool readyToCollect(GJRewardItem* item) = win inline, imac 0x209c10, m1 0x1be8c8 {
        return item ? m_chestType == (int)item->m_rewardType : false;
    }
    void showCloseButton() = imac 0x20dc90, m1 0x1c2524;
    bool showCollectReward(GJRewardItem*) = win 0x3b7790, imac 0x209c30, m1 0x1be8e8;
    void step2() = win 0x3b7950, m1 0x1bfdf0;
    void step3() = win 0x3b7a50, imac 0x20d5a0;

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

    static RingObject* create(char const*) = win 0x489570;

    virtual void setScale(float) = m1 0x165ca8, imac 0x1a3520, ios 0x37b5e4;
    virtual void setRotation(float) = m1 0x165d08, imac 0x1a3580, ios 0x37b634;
    virtual void resetObject() = m1 0x165c7c, imac 0x1a3500, ios 0x37b5b8;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1a35b0, m1 0x165d1c, ios 0x37b648;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1a3700, m1 0x165e28, ios 0x37b748;
    virtual void setRScale(float) = m1 0x165cd8, imac 0x1a3550, ios 0x37b60c;
    virtual void triggerActivated(float) = m1 0x165b30, imac 0x1a33a0, ios 0x37b46c;
    virtual bool shouldDrawEditorHitbox() = imac 0x1a3590, m1 0x165d0c, ios 0x37b638;
    virtual TodoReturn powerOnObject(int) = m1 0x165b3c, imac 0x1a33b0, ios 0x37b478;

    bool init(char const*);
    TodoReturn spawnCircle();

    bool m_claimTouch;
    // property 504
    bool m_isSpawnOnly;
}

[[link(android)]]
class RotateGameplayGameObject : EffectGameObject {
    // virtual ~RotateGameplayGameObject();

    static RotateGameplayGameObject* create();

    virtual bool init() = m1 0x198058, imac 0x1dfcf0, ios 0x3918bc;
    virtual void updateStartValues() = m1 0x199834, imac 0x1e1a10, ios 0x392124;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1e1690, m1 0x199544, ios 0x391e68;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1dfd40, m1 0x1980a8, ios 0x39190c;

    TodoReturn updateGameplayRotation();
}

[[link(android)]]
class ScrollingLayer : cocos2d::CCLayerColor {
    // virtual ~ScrollingLayer();
    // ScrollingLayer() = ios 0x1c396c;

    static ScrollingLayer* create(cocos2d::CCSize, cocos2d::CCPoint, float) = imac 0x340380, m1 0x629898;

    virtual void draw() = imac 0x70a580, m1 0x629b24, ios 0x1ba978;
    virtual void visit() = imac 0x70a650, m1 0x629bc8, ios 0x1baa1c;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x70ff0, imac 0x70a7a0, m1 0x629cdc, ios 0x1baaa4;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x710e0, imac 0x70a940, m1 0x629e38, ios 0x1bab64;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x711f0, m1 0x629f34, imac 0x70aa60, ios 0x1bac60;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x629f6c, imac 0x70aaa0, ios 0x1bac98;

    TodoReturn getViewRect();
    bool init(cocos2d::CCSize, cocos2d::CCPoint, float);
    void setStartOffset(cocos2d::CCPoint) = imac 0x70a760, m1 0x629ca4;
}

[[link(android)]]
class SearchButton : cocos2d::CCSprite {
    // virtual ~SearchButton();

    static SearchButton* create(char const*, char const*, float, char const*) = win 0x2fdcd0, imac 0x613e90, m1 0x540198;

    bool init(char const*, char const*, float, char const*) = win 0x2fdda0, imac 0x616050, m1 0x542340;

    cocos2d::CCLabelBMFont* m_label;
    cocos2d::CCSprite* m_icon;
}

[[link(android)]]
class SearchSFXPopup : SetTextPopup {
    // virtual ~SearchSFXPopup();

    static SearchSFXPopup* create(gd::string);

    bool init(gd::string) = m1 0x3a7c94;
    void onSearchFolders(cocos2d::CCObject* sender);
}

[[link(android)]]
class SecretGame01Layer : cocos2d::CCLayer {
    // virtual ~SecretGame01Layer() = m1 0x3dc158, imac 0x46cd20;

    static SecretGame01Layer* create() = m1 0x3db7e4, imac 0x46c200;

    virtual void update(float) = m1 0x3dcfe8, imac 0x46dc90;
    virtual bool init() = m1 0x3dc234, imac 0x46ce50;

    TodoReturn didSelectCorrectObject(CCMenuItemSpriteExtra*) = m1 0x3dce10, imac 0x46dad0;
    TodoReturn gameStep01() = m1 0x3dc610, imac 0x46d200;
    TodoReturn gameStep02() = m1 0x3dc890, imac 0x46d4d0;
    TodoReturn getCountForDifficulty(int) = m1 0x3dc418, imac 0x46d040;
    gd::string getFrameForDifficulty(int) = m1 0x3dc440, imac 0x46d070;
    TodoReturn getRowsForDifficulty(int) = m1 0x3dc3f4, imac 0x46d010;
    TodoReturn getTimeForDifficulty(int);
    void onSelectButton(cocos2d::CCObject* sender) = m1 0x3dc528, imac 0x46d130;
    TodoReturn resetGame() = m1 0x3db904, imac 0x46c350;
    TodoReturn resetGameTimer() = m1 0x3dc9d8, imac 0x46d630;
    TodoReturn scaleOutGame(bool) = m1 0x3dca50, imac 0x46d6c0;
    TodoReturn showGameOver() = m1 0x3dca44, imac 0x46d6a0;
    TodoReturn showGameWon() = m1 0x3dcdfc, imac 0x46dab0;
}

[[link(android)]]
class SecretLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol {
    // virtual ~SecretLayer();

    static SecretLayer* create();
    static cocos2d::CCScene* scene();

    virtual bool init() = win 0x3c5700, m1 0x515624, imac 0x5e31b0, ios 0x3b58ac;
    virtual void keyBackClicked() = win 0x3cabb0, m1 0x518d94, imac 0x5e6fe0, ios 0x3b85a4;
    virtual void textInputOpened(CCTextInputNode*) = win 0x3c84b0, m1 0x51818c, imac 0x5e60c0, ios 0x3b7ab0;
    virtual void textInputClosed(CCTextInputNode*) = win 0x3c8600, m1 0x51826c, imac 0x5e6190, ios 0x3b7b9c;
    virtual void textChanged(CCTextInputNode*) = m1 0x51837c, imac 0x5e6260, ios 0x3b7c1c;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = m1 0x518184, imac 0x5e60a0, ios 0x3b7aa8 {}

    TodoReturn getBasicMessage() = imac 0x5e5aa0;
    TodoReturn getMessage();
    TodoReturn getThreadMessage() = m1 0x518564, imac 0x5e6420;
    TodoReturn nodeWithTag(int);
    void onBack(cocos2d::CCObject* sender) = win 0x3cab10;
    void onSubmit(cocos2d::CCObject* sender) = win 0x3c6a40, m1 0x516584, imac 0x5e4170;
    TodoReturn playCoinEffect();
    TodoReturn selectAThread();
    TodoReturn updateMessageLabel(gd::string);
    void updateSearchLabel(char const*);
}

[[link(android)]]
class SecretLayer2 : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DialogDelegate {
    // virtual ~SecretLayer2();

    static SecretLayer2* create() = imac 0x489fc0;
    static cocos2d::CCScene* scene() = win 0x3cadf0, imac 0x489f80;

    virtual bool init() = win 0x3caf70, imac 0x48a0f0, m1 0x3f73b4, ios 0x309960;
    virtual void onExit() = imac 0x4900c0, m1 0x3fce88, ios 0x30dc8c;
    virtual void keyBackClicked() = win 0x3d2590, m1 0x3fcd9c, imac 0x48ffd0, ios 0x30dc80;
    virtual void textInputOpened(CCTextInputNode*) = win 0x3cfa10, m1 0x3fbe64, imac 0x48f060, ios 0x30d318;
    virtual void textInputClosed(CCTextInputNode*) = win 0x3cfb60, m1 0x3fbf44, imac 0x48f130, ios 0x30d404;
    virtual void textChanged(CCTextInputNode*) = m1 0x3fc054, imac 0x48f200, ios 0x30d484;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = m1 0x3fbe5c, imac 0x48f040, ios 0x30d310 {}
    virtual void dialogClosed(DialogLayer*) = win 0x3cd250, m1 0x3fa9c0, imac 0x48dbb0, ios 0x30c6f4;

    gd::string getBasicMessage() = win 0x3d0880, m1 0x3fc23c, imac 0x48f3c0;
    gd::string getErrorMessage() = win 0x3d13e0;
    gd::string getMessage() = win 0x3cffb0;
    gd::string getThreadMessage() = win 0x3d0190, m1 0x3fc958, imac 0x48faa0;
    TodoReturn nodeWithTag(int);
    void onBack(cocos2d::CCObject* sender) = win 0x3d24e0, imac 0x48b320, m1 0x3f8594;
    void onDoor(cocos2d::CCObject* sender) = win 0x3cd5a0, imac 0x48ca80, m1 0x3f9a70;
    void onSecretLevel(cocos2d::CCObject* sender) = win 0x3cd2f0, imac 0x48ccc0, m1 0x3f9cd4;
    void onSubmit(cocos2d::CCObject* sender) = win 0x3cdf00, imac 0x48b390, m1 0x3f8608;
    void playCoinEffect();
    void selectAThread();
    void showCompletedLevel() = win 0x3cc5a0, m1 0x3f9e98, imac 0x48ce80;
    void showSecretLevel() = win 0x3cc430;
    void updateMessageLabel(gd::string text) = win 0x3cff20;
    void updateSearchLabel(char const*) = win 0x3cfc30, m1 0x3f831c, imac 0x48b090;
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

    static SecretLayer3* create() = win inline, imac inline {
        auto ret = new SecretLayer3();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCScene* scene() = imac 0x48dc80;

    virtual bool init() = win 0x3d2b20, imac 0x490560, m1 0x3fd1cc, ios 0x30de60;
    virtual void onExit() = imac 0x4953f0, m1 0x401c1c, ios 0x31197c;
    virtual void keyBackClicked() = win 0x3d8420, imac 0x4953c0, m1 0x401c10, ios 0x311970;
    virtual void dialogClosed(DialogLayer*) = win 0x3d7e20, imac 0x4950a0, m1 0x4018d8, ios 0x311714;

    TodoReturn animateEyes();
    TodoReturn firstInteractionStep1();
    TodoReturn firstInteractionStep2() = m1 0x3ffa5c, imac 0x493020;
    TodoReturn firstInteractionStep3();
    TodoReturn firstInteractionStep4() = m1 0x3fffa0, imac 0x4935b0;
    void onBack(cocos2d::CCObject* sender);
    void onChest01(cocos2d::CCObject* sender);
    void onChest02(cocos2d::CCObject* sender);
    void onClick(cocos2d::CCObject* sender) = win 0x3d5090, m1 0x3fe930, imac 0x491cf0;
    TodoReturn revealStep1();
    TodoReturn revealStep2() = m1 0x400938, imac 0x493f90;
    TodoReturn revealStep3();
    TodoReturn revealStep4() = m1 0x400cdc, imac 0x494350;
    TodoReturn revealStep5() = m1 0x401420, imac 0x494b70;
    void showUnlockDialog() = m1 0x4003cc, imac 0x4939e0;

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

    virtual bool init() = win 0x3d87b0, imac 0x39db60, m1 0x32ad34, ios 0x3537a8;
    virtual void onExit() = imac 0x3a2000, m1 0x32efa0, ios 0x355de0;
    virtual void keyBackClicked() = win 0x3dc3b0, m1 0x32eeac, imac 0x3a1f10, ios 0x355dd4;
    virtual void textInputOpened(CCTextInputNode*) = m1 0x32df80, imac 0x3a1030, ios 0x3557c4;
    virtual void textInputClosed(CCTextInputNode*) = m1 0x32e060, imac 0x3a1100, ios 0x3558b0;
    virtual void textChanged(CCTextInputNode*) = m1 0x32e170, imac 0x3a11d0, ios 0x355930;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = m1 0x32df78, imac 0x3a1010, ios 0x3557bc {}
    virtual void dialogClosed(DialogLayer*) = m1 0x32d6dc, imac 0x3a07b0, ios 0x355454 {}

    TodoReturn getBasicMessage() = imac 0x3a1390;
    TodoReturn getErrorMessage();
    TodoReturn getMessage();
    TodoReturn getThreadMessage() = m1 0x32e7b8, imac 0x3a17a0;
    TodoReturn nodeWithTag(int);
    void onBack(cocos2d::CCObject* sender);
    void onChest01(cocos2d::CCObject* sender);
    void onSubmit(cocos2d::CCObject* sender) = m1 0x32c15c, imac 0x39eff0;
    TodoReturn playCoinEffect();
    TodoReturn selectAThread();
    void showDialog(int);
    void showFirstDialog() = m1 0x32b998, imac 0x39e7d0;
    TodoReturn updateMessageLabel(gd::string);
    void updateSearchLabel(char const*);
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
    static cocos2d::CCScene* scene() = win 0x2c02c0;

    virtual bool init() = win 0x3dccc0, imac 0x467390, m1 0x3d6f48, ios 0x77e28;
    virtual void onExit() = win 0x3d25a0, imac 0x46bbc0, m1 0x3db234, ios 0x7ae5c;
    virtual void updateTweenActionInt(float, int) = win 0x3de3d0, imac 0x469950, m1 0x3d91b4, ios 0x79a9c;
    virtual void keyBackClicked() = win 0x3e0c90, imac 0x46bac0, m1 0x3db110, ios 0x7ae50;
    virtual void textInputOpened(CCTextInputNode*) = win 0x3dffe0, m1 0x3dadd8, imac 0x46b820, ios 0x7ac64;
    virtual void textInputClosed(CCTextInputNode*) = win 0x3e0130, m1 0x3daeb8, imac 0x46b8f0, ios 0x7ad50;
    virtual void textChanged(CCTextInputNode*) = win 0x3e0130, m1 0x3dafc8, imac 0x46b9c0, ios 0x7add0;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = m1 0x3dadd0, imac 0x46b800, ios 0x7ac5c {}
    virtual void dialogClosed(DialogLayer*) = m1 0x3dadc8, imac 0x46b7e0, ios 0x7ac54 {}
    virtual void onlineRewardStatusFinished(gd::string) = win 0x3df6b0, m1 0x3da348, imac 0x46abe0, ios 0x7aa30;
    virtual void onlineRewardStatusFailed() = win 0x3df820, imac 0x46ad30, m1 0x3da4b0, ios 0x7ab88;

    void animateHead() = win 0x3de060;
    void claimOnlineReward() = win 0x3df490;
    void fadeInMessage();
    void fadeInSubmitMessage() = win 0x3dde60;
    void fadeOutMessage() = win 0x3de030;
    void finishLoadingState() = win 0x3de420;
    gd::string getMessage() = win inline {
        return " ";
    }
    void handleSecretResponse() = win 0x3de440, imac 0x469990, m1 0x3d91dc;
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
    void onBack(cocos2d::CCObject* sender) = win 0x3e0c10;
    void onSubmit(cocos2d::CCObject* sender) = win 0x3df8c0, m1 0x3d8188, imac 0x468830;
    void playWinSFX() = win 0x3df400;
    void showDialog(int);
    void showFailAnimation() = win 0x3de4a0;
    void showFirstDialog() = win 0x3e04f0, m1 0x3d8658, imac 0x468cd0;
    void showSuccessAnimation() = win 0x3dea60, imac 0x469a50, m1 0x3d9294;
    void showTextInput() = win 0x3df860;
    void unlockUI() = win 0x3df6a0;
    void updateMessageLabel(gd::string text) = win inline {
        m_messageLabel->setString(text.c_str());
        m_messageLabel->limitLabelWidth(320.f, .6f, 0.f);
    }
    void updateSearchLabel(char const*) = win 0x3e0200;

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
    // virtual ~SecretLayer6() = m1 0x3db294, imac 0x64bc50;
    SecretLayer6() = win inline {
        m_gameLayer = nullptr;
    }

    static SecretLayer6* create() = m1 0x3db37c, imac 0x46bd70;
    static cocos2d::CCScene* scene() = m1 0x3db2c0, imac 0x46bca0;

    virtual bool init() = imac 0x46be20, m1 0x3db420;
    virtual void keyBackClicked() = m1 0x3dbf78, imac 0x46caa0;

    void onBack(cocos2d::CCObject* sender) = m1 0x3db8a4, imac 0x46c2e0;
    void startGame01() = m1 0x3db8f4, imac 0x46c330;

    SecretGame01Layer* m_gameLayer;
}

[[link(android)]]
class SecretNumberLayer : cocos2d::CCLayer {
    // virtual ~SecretNumberLayer();

    static SecretNumberLayer* create();

    virtual bool init() = imac 0x4901a0, m1 0x3fcf14, ios 0x30dd14;

    TodoReturn playNumberEffect(int);
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

    static SecretRewardsLayer* create(bool fromShop) = win inline, imac 0x6195c0, m1 0x545350 {
        auto ret = new SecretRewardsLayer();
        if (ret->init(fromShop)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCScene* scene(bool fromShop) = win 0x3bb1a0, imac 0x619580, m1 0x545304;

    virtual void onExit() = m1 0x54e664, imac 0x623c00, ios 0x2ee820;
    virtual void keyBackClicked() = win 0x3c0a90, m1 0x54e5f0, imac 0x623b70, ios 0x2ee80c;
    virtual void dialogClosed(DialogLayer*) = win 0x3bf570, imac 0x623980, m1 0x54e3e0, ios 0x2ee678;
    virtual void scrollLayerMoved(cocos2d::CCPoint) = win 0x3bda10, m1 0x547d00, imac 0x61c110, ios 0x2e9dd4;

    void createSecondaryLayer(int) = win 0x3bdf70, m1 0x5488b4, imac 0x61ccf0;
    TodoReturn fadeInMusic();
    TodoReturn fadeInOutMusic();
    cocos2d::CCArray* generateChestItems(int) = win 0x3be3c0, imac 0x61d170;
    cocos2d::ccColor3B getPageColor(int page) = win inline {
        if (page == 1) return cocos2d::ccc3(50, 50, 50);
        else if (page == 2) return cocos2d::ccc3(70, 0, 120);
        else return cocos2d::ccc3(70, 0, 75);
    }
    void goToPage(int page) = win inline {
        if (m_inMainLayer) m_mainScrollLayer->moveToPage(page);
        else m_secondaryScrollLayer->moveToPage(page);
    }
    bool init(bool) = win 0x3bb300, m1 0x54543c, imac 0x6196f0;
    void moveToMainLayer(cocos2d::CCObject*) = m1 0x548784;
    void moveToSecondaryLayer(int) = m1 0x548300, imac 0x61c740;
    void onBack(cocos2d::CCObject* sender) = win 0x3c08b0, m1 0x547320, imac 0x61b7c0;
    void onChestType(cocos2d::CCObject* sender) = win 0x3bdce0, imac 0x61b830, m1 0x54738c;
    void onGoldChest(cocos2d::CCObject* sender) = m1 0x5476f8, imac 0x61bb70, win 0x3c0020;
    void onSelectItem(cocos2d::CCObject* sender) = win 0x3bedd0, m1 0x5499c0, imac 0x61e000;
    void onShop(cocos2d::CCObject* sender) = win 0x3bf360, imac 0x61bf00, m1 0x547ad8;
    void onSpecialItem(cocos2d::CCObject* sender) = m1 0x547f04, imac 0x61c330, win 0x3bf760;
    void onSwitchPage(cocos2d::CCObject* sender) = win 0x3bd950;
    void showDialog01() = win 0x3c0ae0, imac 0x61e360, m1 0x549d5c;
    void showDialog03() = imac 0x620080, m1 0x54b548;
    void showDialogDiamond() = m1 0x54d868, imac 0x622be0, win 0x3c4980;
    void showDialogMechanic() = win 0x3c36f0, imac 0x621630, m1 0x54c6f0;
    void showLockedChest() = m1 0x5483f8;
    void showShop(int shop) = win inline, m1 0x54e370 {
        if (cocos2d::CCDirector::sharedDirector()->replaceScene(cocos2d::CCTransitionMoveInT::create(0.5f, GJShopLayer::scene((ShopType)shop)))) this->setKeypadEnabled(false);
    }
    void switchToOpenedState(CCMenuItemSpriteExtra*) = win 0x3bfb80, imac 0x61b870, m1 0x5473e0;
    void updateBackButton() = win 0x3bde30, m1 0x548658, imac 0x61ca90;
    TodoReturn updateUnlockedGoldLabel();
    void updateUnlockedLabel() = m1 0x5474c0, imac 0x61b930;

    cocos2d::CCLayer* m_mainLayer;
    cocos2d::CCLayer* m_secondaryLayer;
    cocos2d::CCLabelBMFont* m_chestLabel;
    cocos2d::CCLabelBMFont* m_chestCounter;
    cocos2d::CCSprite* m_goldPriceSprite;
    cocos2d::CCDictionary* m_chestCounters;
    cocos2d::CCLabelBMFont* m_keysLabel;
    cocos2d::CCLabelBMFont* m_goldKeysLabel;
    cocos2d::CCSprite* m_keySprite;
    cocos2d::CCSprite* m_goldKeySprite;
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

    static SelectArtLayer* create(SelectArtType, int) = win 0x30d600, imac 0x25d1d0;

    virtual void keyBackClicked() = win 0x30e530, m1 0x20a7c0, imac 0x25e610, ios 0x18056c;

    bool init(SelectArtType, int) = win 0x30d710, m1 0x209c2c, imac 0x25da00;
    void onClose(cocos2d::CCObject* sender);
    void onSelectCustom(cocos2d::CCObject* sender) = win 0x30e420, imac 0x25e550, m1 0x20a718;
    void selectArt(cocos2d::CCObject* sender) = win 0x30e360, imac 0x25e430, m1 0x20a5d0;
    void updateSelectedCustom(int idx) = win inline, imac 0x25d340, m1 0x209728 {
        if (m_lineSprites) {
            m_line = idx;
            this->onSelectCustom(nullptr);
        }
    }

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

    virtual void keyBackClicked() = m1 0x4b97a0, imac 0x5636b0, ios 0x401148;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x5635e0, m1 0x4b96e8, ios 0x401108;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x5633b0, m1 0x4b94a4, ios 0x400fe0;

    TodoReturn addToggle(int, gd::string);
    bool init(SetupEventLinkPopup*, gd::set<int>&) = m1 0x4b7a04, imac 0x561360;
    TodoReturn nextPosition();
    void onInfo(cocos2d::CCObject* sender);
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

    virtual void keyBackClicked() = m1 0x231a94, imac 0x2887b0, ios 0x2d2a78;

    bool init(LevelEditorLayer*) = win 0x286be0, imac 0x287fe0, m1 0x2312e4;
    void onChangeFont(cocos2d::CCObject* sender) = win 0x287400, imac 0x2885f0, m1 0x231900;
    void onClose(cocos2d::CCObject* sender);
    void updateFontLabel() = win 0x287200, imac 0x288690, m1 0x231994;

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

    static SelectListIconLayer* create(int difficulty) = win inline, imac 0x34cd20 {
        auto ret = new SelectListIconLayer();
        if (ret->init(difficulty)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual void keyBackClicked() = win 0x2f5080, m1 0x2e2acc, imac 0x34e2e0, ios 0x246fb0;

    bool init(int) = win 0x2f4790, m1 0x2e241c, imac 0x34dcc0;
    void onClose(cocos2d::CCObject* sender);
    void onSelect(cocos2d::CCObject* sender) = win 0x2f4f80, m1 0x2e297c;

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

    virtual bool init() = imac 0x2f5fc0, m1 0x28ef80, ios 0x66fa4;
    virtual void keyBackClicked() = m1 0x28f4c8, imac 0x2f64c0, ios 0x6745c;

    void onClose(cocos2d::CCObject* sender);
    void onSelectPremade(cocos2d::CCObject* sender);
}

[[link(android)]]
class SelectSettingDelegate {
    virtual void selectSettingClosed(SelectSettingLayer*);
}

[[link(android)]]
class SelectSettingLayer : FLAlertLayer {
    // virtual ~SelectSettingLayer();

    static SelectSettingLayer* create(SelectSettingType, int) = win 0x30e580, imac 0x25c9f0;

    static gd::string frameForItem(SelectSettingType, int) = win 0x30ede0, imac 0x25efd0, m1 0x20b08c;
    static gd::string frameForValue(SelectSettingType type, int value) = win inline, imac 0x25c690 {
        return frameForItem(type, valueToIdx(type, value));
    }
    static int idxToValue(SelectSettingType type, int idx) = win inline, imac 0x25f2b0 {
        if (type != SelectSettingType::StartingSpeed) return idx;

        switch (idx) {
            case 0: return 1;
            case 1: return 0;
            case 2: case 3: case 4: return idx;
            default: return 0;
        }
    }
    static int valueToIdx(SelectSettingType type, int value) = win inline, imac 0x25efa0 {
        if (type != SelectSettingType::StartingSpeed) return value;

        switch (value) {
            case 0: return 1;
            case 1: return 0;
            case 2: case 3: case 4: return value;
            default: return 1;
        }
    }

    virtual void keyBackClicked() = win 0x30f380, m1 0x20b430, imac 0x25f2e0, ios 0x180cbc;
    gd::string getSelectedFrame() = win inline, imac 0x25ccd0 {
        return frameForValue(m_type, m_settingID);
    }
    int getSelectedValue() = win inline, imac 0x25cca0 {
        return idxToValue(m_type, m_settingID);
    }
    bool init(SelectSettingType, int) = win 0x30e690, imac 0x4870a0, m1 0x20aaac;
    void onClose(cocos2d::CCObject* sender);
    void onSelect(cocos2d::CCObject* sender) = win 0x30f280, imac 0x25f1b0, m1 0x20b2cc;

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

    static SelectSFXSortLayer* create(AudioSortType sortType) = win inline, imac 0x42c860 {
        auto ret = new SelectSFXSortLayer();
        if (ret->init(sortType)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual void keyBackClicked() = m1 0x3a84bc, imac 0x42d760, ios 0x16e780;

    bool init(AudioSortType) = win 0x468b50, m1 0x3a7f78, imac 0x42d250;
    void onClose(cocos2d::CCObject* sender);
    void onSelect(cocos2d::CCObject* sender) = win 0x4691d0, imac 0x42d700, m1 0x3a8450;

    AudioSortType m_sortType;
    SelectSFXSortDelegate* m_delegate;
}

[[link(android)]]
class SequenceTriggerGameObject : ChanceTriggerGameObject {
    // virtual ~SequenceTriggerGameObject();

    static SequenceTriggerGameObject* create();

    virtual bool init() = win 0x49bcd0, m1 0x173448, imac 0x1b30a0, ios 0x382e50;
    virtual void resetObject() = win 0x49bcf0, m1 0x173498, imac 0x1b30f0, ios 0x382ea0;
    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x49bd20, imac 0x1b33b0, m1 0x173610, ios 0x382ed0;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = win 0x49c140, imac 0x1b3930, m1 0x173a9c, ios 0x383188;
    virtual gd::string getSaveString(GJBaseGameLayer*) = win 0x49c470, imac 0x1b3dd0, m1 0x173ec8, ios 0x3834d8;

    void addCount(int, int);
    void addTarget(int, int);
    void deleteTarget(int);
    bool reorderTarget(int, bool);
    void updateSequenceTotalCount();

    gd::unordered_map<int, float> m_sequenceTimes;
    gd::unordered_map<int, int> m_sequenceIndices;
    float m_minInt;
    int m_sequenceMode;
    int m_resetMode;
    float m_reset;
    int m_sequenceTotalCount;
    bool m_uniqueRemap;
}

[[link(android)]]
class SetColorIDPopup : SetIDPopup, GJSpecialColorSelectDelegate {
    // virtual ~SetColorIDPopup();

    static SetColorIDPopup* create(int);

    virtual void colorSelectClosed(GJSpecialColorSelect*, int) = win 0x294cf0, imac 0x299980, m1 0x24164c, ios 0x2de844;

    bool init(int) = m1 0x241384;
    void onSelectSpecialColor(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetFolderPopup : SetIDPopup, SetTextPopupDelegate {
    // virtual ~SetFolderPopup();

    static SetFolderPopup* create(int value, bool isCreated, gd::string title) = win 0x294e90, imac 0x29a410, m1 0x241e80;

    virtual void valueChanged() = win 0x295250, imac 0x29aa90, m1 0x24249c, ios 0x2deffc;
    virtual void setTextPopupClosed(SetTextPopup*, gd::string) = win 0x295590, imac 0x29af60, m1 0x242914, ios 0x2df330;

    bool init(int value, bool isCreated, gd::string title) = win 0x294fd0, imac 0x29a610, m1 0x24202c;
    void onSetFolderName(cocos2d::CCObject* sender) = win 0x295390, imac 0x29a8a0, m1 0x24229c;

    bool m_isCreated;
    cocos2d::CCLabelBMFont* m_titleLabel;
}

[[link(android)]]
class SetGroupIDLayer : FLAlertLayer, TextInputDelegate {
    // virtual ~SetGroupIDLayer();
    //SetGroupIDLayer() = ios 0x48054;

    static SetGroupIDLayer* create(GameObject*, cocos2d::CCArray*) = imac 0x2fe420, m1 0x2965a4;

    virtual void keyBackClicked() = win 0x3e62e0, imac 0x303620, m1 0x29b16c, ios 0x42db0;
    virtual void textInputClosed(CCTextInputNode*) = m1 0x29aa40, imac 0x302ea0, ios 0x42820;
    virtual void textChanged(CCTextInputNode*) = win 0x3e4400, imac 0x302ee0, m1 0x29aa5c, ios 0x4283c;

    TodoReturn addGroupID(int);
    void callRemoveFromGroup(float);
    TodoReturn createTextInput(cocos2d::CCPoint, int, int, gd::string, float, int);
    TodoReturn determineStartValues();
    bool init(GameObject* obj, cocos2d::CCArray* objs) = win 0x3e1260, imac 0x2fe5f0, m1 0x296704;
    void onAddGroup(cocos2d::CCObject* sender) = win 0x3e52b0, m1 0x298c74, imac 0x300d30;
    void onAddGroupParent(cocos2d::CCObject* sender) = win 0x3e5420, m1 0x298c7c, imac 0x300d40;
    void onAnim(cocos2d::CCObject* sender);
    void onArrow(int tag, int increment) = win 0x3e39e0;
    void onArrowLeft(cocos2d::CCObject* sender) = win 0x3e3980;
    void onArrowRight(cocos2d::CCObject* sender) = win 0x3e39b0;
    void onClose(cocos2d::CCObject* sender) = win 0x3e5f60, m1 0x298444;
    void onCopy(cocos2d::CCObject* sender);
    void onExtra(cocos2d::CCObject* sender) = win 0x3e40d0;
    void onExtra2(cocos2d::CCObject* sender);
    void onNextFreeEditorLayer1(cocos2d::CCObject* sender);
    void onNextFreeEditorLayer2(cocos2d::CCObject* sender);
    void onNextFreeOrderChannel(cocos2d::CCObject* sender);
    void onNextGroupID1(cocos2d::CCObject* sender) = win 0x3e48d0, m1 0x298c40;
    void onPaste(cocos2d::CCObject* sender) = win 0x111a80;
    void onRemoveFromGroup(cocos2d::CCObject* sender) = win 0x3e51e0, m1 0x29ae48, imac 0x3032f0;
    void onSmoothEase(cocos2d::CCObject* sender);
    void onToggleGuide(cocos2d::CCObject* sender);
    void onToggleSelectedOrder(cocos2d::CCObject* sender);
    void onZLayer(cocos2d::CCObject* sender);
    void onZLayerShift(cocos2d::CCObject* sender);
    TodoReturn removeGroupID(int);
    void updateEditorLabel() = win 0x3e5920;
    void updateEditorLabel2() = win 0x3e59b0;
    void updateEditorLayerID();
    void updateEditorLayerID2();
    void updateEditorOrder();
    void updateEditorOrderLabel();
    void updateGroupIDButtons() = win 0x3e4940;
    void updateGroupIDLabel() = win 0x3e5ad0;
    void updateOrderChannel();
    void updateOrderChannelLabel();
    void updateZLayerButtons() = win 0x3e5d30;
    void updateZOrder() = win 0x3e5890;
    void updateZOrderLabel() = win 0x3e5a40;

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

    static SetIDPopup* create(int current, int begin, int end, gd::string title, gd::string button, bool, int, float, bool, bool) = win 0x293bb0, m1 0x23ff3c, imac 0x2980c0;

    virtual void keyBackClicked() = win 0x294a90, m1 0x240ee8, imac 0x2990b0, ios 0x2de548;
    virtual void show() = win 0x2948c0, m1 0x240e64, imac 0x299030, ios 0x2de4cc;
    virtual void textInputClosed(CCTextInputNode*) = m1 0x240cf0, imac 0x298ed0, ios 0x2de410;
    virtual void textChanged(CCTextInputNode*) = win 0x294710, imac 0x298f10, m1 0x240d0c, ios 0x2de42c;
    virtual void valueChanged() = m1 0x240e60, imac 0x299020, ios 0x2de4c8 {}

    bool init(int current, int begin, int end, gd::string title, gd::string button, bool, int, float, bool, bool) = win 0x293ce0, imac 0x298360, m1 0x240198;
    void onCancel(cocos2d::CCObject* sender) = win 0x294950, imac 0x298cf0, m1 0x240b14;
    void onClose(cocos2d::CCObject* sender) = win 0x2949f0;
    void onItemIDArrow(cocos2d::CCObject* sender) = win 0x2946a0, imac 0x298ca0, m1 0x240ab8;
    void onResetValue(cocos2d::CCObject* sender) = win 0x2946f0, imac 0x298c80;
    void updateTextInputLabel() = win 0x294810, imac 0x298d90, m1 0x240bb4;

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

    virtual void onClose(cocos2d::CCObject* sender) = win 0x3e9ed0, imac 0x9c7f0, m1 0x8f4a0, ios 0x4122e8;
    virtual void valueDidChange(int, float) = win 0x3e9de0, imac 0x9c700, m1 0x8f3ac, ios 0x4121f4;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = win 0x3e9c40, imac 0x9c5e0, m1 0x8f2a4, ios 0x4120ec;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x8eba0, imac 0x9bdd0;
    TodoReturn updateEditorLabel();
}

[[link(android)]]
class SetLevelOrderPopup : SetIDPopup {
    // virtual ~SetLevelOrderPopup();

    static SetLevelOrderPopup* create(int, int, int);

    bool init(int, int, int) = m1 0x2e1e74;
    void onOrderButton(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetTargetIDLayer : SetupTriggerPopup {
    // virtual ~SetTargetIDLayer();

    static SetTargetIDLayer* create(EffectGameObject*, cocos2d::CCArray*, gd::string, gd::string, int, int, int);

    virtual void determineStartValues() = imac 0x2a6e20, m1 0x24d528, ios 0x2142c0;
    virtual void valueDidChange(int, float) = imac 0x2a6e30, m1 0x24d52c, ios 0x2142c4;

    bool init(EffectGameObject*, cocos2d::CCArray*, gd::string, gd::string, int, int, int) = m1 0x24d190, imac 0x2a6a20;
}

[[link(android)]]
class SetTextPopup : FLAlertLayer, TextInputDelegate {
    // virtual ~SetTextPopup();

    static SetTextPopup* create(gd::string value, gd::string placeholder, int maxLength, gd::string title, gd::string okBtnText, bool showResetBtn, float) = win 0x2957d0;

    virtual void keyBackClicked() = win 0x296490, imac 0x29bf80, m1 0x2437e4, ios 0x2dfde0;
    virtual void show() = win 0x8ba30, m1 0x243798, imac 0x29bf20, ios 0x2dfd94;
    virtual void textInputClosed(CCTextInputNode*) = m1 0x24365c, imac 0x29bdf0, ios 0x2dfcf0;
    virtual void textChanged(CCTextInputNode*) = win 0x296280, imac 0x29be30, m1 0x243678, ios 0x2dfd0c;

    bool init(gd::string, gd::string, int, gd::string, gd::string, bool, float) = win 0x295940;
    void onCancel(cocos2d::CCObject* sender) = win 0x296370;
    void onClose(cocos2d::CCObject* sender) = win 0x296400, m1 0x26cc10;
    void onResetValue(cocos2d::CCObject* sender) = win 0x296220;
    void updateTextInputLabel() = win inline, imac 0x2571f0, m1 0x203e84 {
        m_disableDelegate = true;
        m_input->setString(m_value);
        m_disableDelegate = false;
    }

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

    virtual void valueDidChange(int, float) = imac 0x2f7630, m1 0x2902dc, ios 0x68054;

    bool init(AdvancedFollowEditObject*, cocos2d::CCArray*) = m1 0x28f6cc, imac 0x2f6760;
}

[[link(android)]]
class SetupAdvFollowPopup : SetupTriggerPopup, SelectPremadeDelegate {
    // virtual ~SetupAdvFollowPopup();

    static SetupAdvFollowPopup* create(AdvancedFollowTriggerObject*, cocos2d::CCArray*);

    virtual void onClose(cocos2d::CCObject* sender) = imac 0x2f5f20, m1 0x28ef40, ios 0x66f68;
    virtual void updateDefaultTriggerValues() = imac 0x2f54b0, m1 0x28e4e4, ios 0x667d4;
    virtual void valueDidChange(int, float) = imac 0x2f55f0, m1 0x28e684, ios 0x66934;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x2f5870, m1 0x28e914, ios 0x66b14;
    virtual void selectPremadeClosed(SelectPremadeLayer*, int) = win 0x3ee030, imac 0x2f5aa0, m1 0x28eb1c, ios 0x66cd4;

    bool init(AdvancedFollowTriggerObject*, cocos2d::CCArray*) = m1 0x28aed4, imac 0x2f11d0;
    void onMode(cocos2d::CCObject* sender);
    void onPremade(cocos2d::CCObject* sender);
    void updateMode(int);
}

[[link(android)]]
class SetupAdvFollowRetargetPopup : SetupTriggerPopup {
    // virtual ~SetupAdvFollowRetargetPopup();

    static SetupAdvFollowRetargetPopup* create(AdvancedFollowEditObject*, cocos2d::CCArray*);

    virtual void updateDefaultTriggerValues() = imac 0x2f7ef0, m1 0x290a24, ios 0x68638;
    virtual void valueDidChange(int, float) = imac 0x2f8030, m1 0x290bc4, ios 0x68798;

    bool init(AdvancedFollowEditObject*, cocos2d::CCArray*) = m1 0x2904a0, imac 0x2f78a0;
}

[[link(android)]]
class SetupAnimationPopup : SetupTriggerPopup {
    // virtual ~SetupAnimationPopup();

    static SetupAnimationPopup* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void determineStartValues() = m1 0x34bdd0, imac 0x3c29f0, ios 0x3bc428;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x34c158, imac 0x3c2e10, ios 0x3bc6dc;
    virtual void textChanged(CCTextInputNode*) = win 0x3f2060, imac 0x3c2c20, m1 0x34bfb0, ios 0x3bc600;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x34af78, imac 0x3c1a90;
    void onAnimationIDArrow(cocos2d::CCObject* sender);
    void onTargetIDArrow(cocos2d::CCObject* sender);
    TodoReturn updateAnimationID();
    TodoReturn updateAnimationTextInputLabel();
    TodoReturn updateTargetID();
    TodoReturn updateTextInputLabel();
}

[[link(android)]]
class SetupAnimSettingsPopup : SetupTriggerPopup {
    // virtual ~SetupAnimSettingsPopup();

    static SetupAnimSettingsPopup* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void onClose(cocos2d::CCObject* sender) = imac 0x9b140, m1 0x8e0ac, ios 0x2e797c;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x8d8d0, imac 0x9a7f0;
    TodoReturn updateAnimSettings();
}

[[link(android)]]
class SetupAreaAnimTriggerPopup : SetupAreaTintTriggerPopup {
    // virtual ~SetupAreaAnimTriggerPopup();

    static SetupAreaAnimTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*, int);

    virtual void updateDefaultTriggerValues() = m1 0x42e564, imac 0x4c8dd0, ios 0x3e8ec;
    virtual void valueDidChange(int, float) = imac 0x4c8f70, m1 0x42e720, ios 0x3ea50;

    TodoReturn createValueControlAdvancedAnim(int, gd::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float min, float max, int, int, GJInputStyle);
    bool init(EnterEffectObject*, cocos2d::CCArray*, int) = m1 0x42cb08, imac 0x4c6f90;
    void onDeactivateAnimValue(cocos2d::CCObject* sender);
    TodoReturn updateTargetIDLabel() = imac 0x4c8f00;
}

[[link(android)]]
class SetupAreaFadeTriggerPopup : SetupAreaMoveTriggerPopup {
    // virtual ~SetupAreaFadeTriggerPopup();

    static SetupAreaFadeTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

    bool init(EnterEffectObject*, cocos2d::CCArray*) = m1 0x42a2a4, imac 0x4c3d00;
}

[[link(android)]]
class SetupAreaMoveTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupAreaMoveTriggerPopup();
    // SetupAreaMoveTriggerPopup();

    static SetupAreaMoveTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

    virtual void updateInputValue(int, float&) = win 0x3f63f0, m1 0x428708, imac 0x4c1860, ios 0x3a584;
    virtual void updateDefaultTriggerValues() = win 0x3f5d20, m1 0x4282f8, imac 0x4c14b0, ios 0x3a22c;
    virtual TodoReturn updateInputNode(int, float) = win 0x3f63c0, m1 0x4286d4, imac 0x4c1830, ios 0x3a550;
    virtual void valueDidChange(int, float) = win 0x3f6240, imac 0x4c16f0, m1 0x428598, ios 0x3a440;
    virtual TodoReturn triggerValueFromSliderValue(int, float) = win 0x3f6360, m1 0x42864c, imac 0x4c17c0, ios 0x3a4c8;
    virtual TodoReturn triggerSliderValueFromValue(int, float) = win 0x3f6390, m1 0x4286a0, imac 0x4c1800, ios 0x3a51c;

    TodoReturn addAreaDefaultControls(int) = m1 0x426d30, imac 0x4bfbb0;
    TodoReturn getModeValues(int, int&, bool&, bool&);
    bool init(EnterEffectObject*, cocos2d::CCArray*) = m1 0x42602c, imac 0x4bec20;
    void onMode(cocos2d::CCObject* sender);
    void onNextFreeEffectID(cocos2d::CCObject* sender);
    void onSpecialTarget(cocos2d::CCObject* sender);
    TodoReturn updateEnterTargetIDState();
}

[[link(android)]]
class SetupAreaRotateTriggerPopup : SetupAreaMoveTriggerPopup {
    // virtual ~SetupAreaRotateTriggerPopup();

    static SetupAreaRotateTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

    bool init(EnterEffectObject*, cocos2d::CCArray*) = m1 0x4297c8, imac 0x4c2f00;
}

[[link(android)]]
class SetupAreaTintTriggerPopup : SetupAreaMoveTriggerPopup, HSVWidgetDelegate {
    // virtual ~SetupAreaTintTriggerPopup();

    static SetupAreaTintTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

    virtual void determineStartValues() = win 0x3f8840, m1 0x42b9a4, imac 0x4c58d0, ios 0x3c694;
    virtual void onClose(cocos2d::CCObject* sender) = win 0x3f8b50, imac 0x4c5bd0, m1 0x42bc94, ios 0x3c800;
    virtual void valueDidChange(int, float) = win 0x3f8680, imac 0x4c57e0, m1 0x42b8b4, ios 0x3c5cc;
    virtual void hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue) = win 0x3f8a60, m1 0x42bae8, imac 0x4c5a50, ios 0x3c7d4;

    bool init(EnterEffectObject*, cocos2d::CCArray*) = m1 0x42ad84, imac 0x4c4b30;
    void onHSV(cocos2d::CCObject* sender);
    TodoReturn updateHSVButton();
}

[[link(android)]]
class SetupAreaTransformTriggerPopup : SetupAreaMoveTriggerPopup {
    // virtual ~SetupAreaTransformTriggerPopup();

    static SetupAreaTransformTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

    bool init(EnterEffectObject*, cocos2d::CCArray*) = m1 0x428ba8, imac 0x4c1f30;
}

[[link(android)]]
class SetupAreaTriggerPopup : SetupAreaMoveTriggerPopup {
    // virtual ~SetupAreaTriggerPopup();

    static SetupAreaTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

    bool init(EnterEffectObject*, cocos2d::CCArray*) = m1 0x42c188, imac 0x4c6330;
}

[[link(android)]]
class SetupArtSwitchPopup : SetupTriggerPopup, SelectArtDelegate {
    // virtual ~SetupArtSwitchPopup();

    static SetupArtSwitchPopup* create(ArtTriggerGameObject*, cocos2d::CCArray*, int);

    virtual void selectArtClosed(SelectArtLayer*) = win 0x459ed0, imac 0x56ee90, m1 0x4c38e4, ios 0x4092dc;

    bool init(ArtTriggerGameObject*, cocos2d::CCArray*, int) = m1 0x4c32b0, imac 0x56e840;
    void onArt(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupAudioLineGuidePopup : SetupTriggerPopup, SelectSettingDelegate {
    // virtual ~SetupAudioLineGuidePopup();

    static SetupAudioLineGuidePopup* create(AudioLineGuideGameObject*, cocos2d::CCArray*);

    virtual void selectSettingClosed(SelectSettingLayer*) = win 0x4581a0, imac 0x56d390, m1 0x4c21ac, ios 0x408070;

    bool init(AudioLineGuideGameObject*, cocos2d::CCArray*) = m1 0x4c1b08, imac 0x56cbf0;
    void onSpeed(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupAudioTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupAudioTriggerPopup();

    virtual void valueDidChange(int, float) = win 0x42e390, imac 0x4a4700, m1 0x40e62c, ios 0x182804;

    TodoReturn addProxVolControls(int) = m1 0x40d928;
    TodoReturn addTimeControls(int, float);
    void onProxMode(cocos2d::CCObject* sender);
    TodoReturn updateSpecialGroup();
}

[[link(android)]]
class SetupBGSpeedTrigger : SetupTriggerPopup {
    // virtual ~SetupBGSpeedTrigger();

    static SetupBGSpeedTrigger* create(EffectGameObject*, cocos2d::CCArray*, int);

    bool init(EffectGameObject*, cocos2d::CCArray*, int) = m1 0x455408, imac 0x4f4910;
}

[[link(android)]]
class SetupCameraEdgePopup : SetupTriggerPopup {
    // virtual ~SetupCameraEdgePopup();

    static SetupCameraEdgePopup* create(CameraTriggerGameObject*, cocos2d::CCArray*);

    virtual void determineStartValues() = m1 0x4c63b8, imac 0x5720f0, ios 0x23a898;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x4c6600, imac 0x572390, ios 0x23aa70;
    virtual void textChanged(CCTextInputNode*) = win 0x3fbfc0, m1 0x4c6518, imac 0x572280, ios 0x23a9f0;

    bool init(CameraTriggerGameObject*, cocos2d::CCArray*) = m1 0x4c54c0, imac 0x571060;
    void onCameraEdge(cocos2d::CCObject* sender);
    void onTargetIDArrow(cocos2d::CCObject* sender);
    void onUnlockEdge(cocos2d::CCObject* sender);
    TodoReturn updateTargetID();
    TodoReturn updateTextInputLabel();
}

[[link(android)]]
class SetupCameraGuidePopup : SetupTriggerPopup {
    // virtual ~SetupCameraGuidePopup();

    static SetupCameraGuidePopup* create(CameraTriggerGameObject*, cocos2d::CCArray*);

    bool init(CameraTriggerGameObject*, cocos2d::CCArray*) = m1 0x4c2408, imac 0x56d690;
}

[[link(android)]]
class SetupCameraModePopup : SetupTriggerPopup {
    // virtual ~SetupCameraModePopup();

    static SetupCameraModePopup* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void determineStartValues() = m1 0x402fc0, imac 0x496b80, ios 0x3a3b64;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x403274, imac 0x496e70, ios 0x3a3dec;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x4022e4, imac 0x495d30;
    void onEditCameraSettings(cocos2d::CCObject* sender);
    void onUnboundMode(cocos2d::CCObject* sender);
    TodoReturn sliderChanged(cocos2d::CCObject*);
    TodoReturn updateCameraEasing();
    TodoReturn updateCameraEasingLabel();
    TodoReturn updateCameraPadding();
    TodoReturn updateCameraPaddingLabel() = m1 0x402ed4, imac 0x496a80;
    TodoReturn updateItemVisibility();
}

[[link(android)]]
class SetupCameraOffsetTrigger : SetupTriggerPopup {
    // virtual ~SetupCameraOffsetTrigger();

    static SetupCameraOffsetTrigger* create(CameraTriggerGameObject*, cocos2d::CCArray*);

    virtual void determineStartValues() = m1 0x57505c, imac 0x64d090, ios 0x193bc8;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x575a68, imac 0x64dbc0, ios 0x194458;
    virtual void textChanged(CCTextInputNode*) = win 0x3ff6f0, imac 0x64d890, m1 0x5757e8, ios 0x194230;
    virtual void valuePopupClosed(ConfigureValuePopup*, float) = win 0x3fedf0, m1 0x57542c, imac 0x64d460, ios 0x193f00;

    bool init(CameraTriggerGameObject*, cocos2d::CCArray*) = m1 0x57347c, imac 0x64b350;
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
}

[[link(android)]]
class SetupCameraRotatePopup : SetupTriggerPopup {
    // virtual ~SetupCameraRotatePopup();

    static SetupCameraRotatePopup* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void determineStartValues() = m1 0x414080, imac 0x4aad80;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x414790, imac 0x4ab540;
    virtual void textChanged(CCTextInputNode*) = imac 0x4ab2d0, m1 0x414568;
    virtual void valuePopupClosed(ConfigureValuePopup*, float) = m1 0x4142ec, imac 0x4ab000;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x412998, imac 0x4a9690;
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
}

[[link(android)]]
class SetupCameraRotatePopup2 : SetupTriggerPopup {
    // virtual ~SetupCameraRotatePopup2();

    static SetupCameraRotatePopup2* create(EffectGameObject*, cocos2d::CCArray*);

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x414974, imac 0x4ab7d0;
}

[[link(android)]]
class SetupCheckpointPopup : SetupTriggerPopup {
    // virtual ~SetupCheckpointPopup();

    static SetupCheckpointPopup* create(CheckpointGameObject*, cocos2d::CCArray*);

    bool init(CheckpointGameObject*, cocos2d::CCArray*) = m1 0x4baeb4, imac 0x565360;
}

[[link(android)]]
class SetupCoinLayer : SetupTriggerPopup {
    // virtual ~SetupCoinLayer();

    static SetupCoinLayer* create(EffectGameObject*, cocos2d::CCArray*);

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x4c0f68, imac 0x56be20;
}

[[link(android)]]
class SetupCollisionStateTriggerPopup : SetupInstantCollisionTriggerPopup {
    // virtual ~SetupCollisionStateTriggerPopup();

    static SetupCollisionStateTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x314c08, imac 0x384de0;
}

[[link(android)]]
class SetupCollisionTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupCollisionTriggerPopup();

    static SetupCollisionTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void determineStartValues() = m1 0x3139c4, imac 0x383820, ios 0x230460;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x313f38, imac 0x383eb0, ios 0x23086c;
    virtual void textChanged(CCTextInputNode*) = win 0x401ac0, imac 0x383bc0, m1 0x313ccc, ios 0x23072c;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x3125a4, imac 0x382240;
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
}

[[link(android)]]
class SetupCountTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupCountTriggerPopup();

    static SetupCountTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void determineStartValues() = imac 0x2a8e10, m1 0x24f140, ios 0xf7c00;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x2a93a0, m1 0x24f618, ios 0xf7fd0;
    virtual void textChanged(CCTextInputNode*) = win 0x404650, imac 0x2a9140, m1 0x24f3f4, ios 0xf7e90;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x24de94, imac 0x2a7950;
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
}

[[link(android)]]
class SetupDashRingPopup : SetupTriggerPopup {
    // virtual ~SetupDashRingPopup();

    static SetupDashRingPopup* create(DashRingObject*, cocos2d::CCArray*);

    bool init(DashRingObject*, cocos2d::CCArray*) = m1 0x4c4750, imac 0x56ffe0;
}

[[link(android)]]
class SetupEndPopup : SetupTriggerPopup {
    // virtual ~SetupEndPopup();

    static SetupEndPopup* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void determineStartValues() = m1 0x57aac8, imac 0x653460, ios 0x2acca4;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x57ad48, imac 0x653780, ios 0x2ace98;
    virtual void textInputClosed(CCTextInputNode*) = m1 0x57ac44, imac 0x653630, ios 0x2acdfc;
    virtual void textChanged(CCTextInputNode*) = win 0x405b60, m1 0x57ac60, imac 0x653670, ios 0x2ace18;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x579f20, imac 0x6527b0;
    void onLockY(cocos2d::CCObject* sender);
    void onMultiActivate(cocos2d::CCObject* sender);
    void onReversed(cocos2d::CCObject* sender);
    void onTargetIDArrow(cocos2d::CCObject* sender);
    TodoReturn updateTargetID();
    TodoReturn updateTextInputLabel();
}

[[link(android)]]
class SetupEnterEffectPopup : SetupTriggerPopup, HSVWidgetDelegate {
    // virtual ~SetupEnterEffectPopup();

    static SetupEnterEffectPopup* create(EnterEffectObject*, cocos2d::CCArray*, int);

    virtual void determineStartValues() = win 0x408580, m1 0x363d00, imac 0x3e1800, ios 0x3f92a4;
    virtual void onClose(cocos2d::CCObject* sender) = win 0x408b60, imac 0x3e1c10, m1 0x3640e0, ios 0x3f94f8;
    virtual void updateInputValue(int, float&) = m1 0x36425c, imac 0x3e1db0, ios 0x3f9650;
    virtual TodoReturn updateInputNode(int, float) = m1 0x364228, imac 0x3e1d80, ios 0x3f961c;
    virtual void valueDidChange(int, float) = win 0x408750, imac 0x3e19c0, m1 0x363e70, ios 0x3f9410;
    virtual TodoReturn triggerValueFromSliderValue(int, float) = m1 0x3641a0, imac 0x3e1d10, ios 0x3f9594;
    virtual TodoReturn triggerSliderValueFromValue(int, float) = m1 0x3641f4, imac 0x3e1d50, ios 0x3f95e8;
    virtual void hsvPopupClosed(HSVWidgetPopup*, cocos2d::ccHSVValue) = win 0x408a70, m1 0x363f34, imac 0x3e1a90, ios 0x3f94cc;

    bool init(EnterEffectObject*, cocos2d::CCArray*, int) = m1 0x361a0c, imac 0x3deda0;
    void onEnterType(cocos2d::CCObject* sender);
    void onHSV(cocos2d::CCObject* sender);
    void onNextFreeEnterChannel(cocos2d::CCObject* sender);
    void onNextFreeEnterEffectID(cocos2d::CCObject* sender);
    TodoReturn updateHSVButton();
}

[[link(android)]]
class SetupEnterTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupEnterTriggerPopup();

    static SetupEnterTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

    virtual void determineStartValues() = imac 0x2896f0, m1 0x232768, ios 0x2d3498;

    bool init(EnterEffectObject*, cocos2d::CCArray*) = m1 0x232188, imac 0x289090;
    void onEnterType(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupEventLinkPopup : SetupTriggerPopup {
    // virtual ~SetupEventLinkPopup();

    static SetupEventLinkPopup* create(EventLinkTrigger*, cocos2d::CCArray*);

    bool init(EventLinkTrigger*, cocos2d::CCArray*) = m1 0x4b6fa8, imac 0x560620;
    void onSelectEvent(cocos2d::CCObject* sender);
    TodoReturn updateEventIDs(gd::set<int>&);
}

[[link(android)]]
class SetupForceBlockPopup : SetupTriggerPopup {
    // virtual ~SetupForceBlockPopup();

    static SetupForceBlockPopup* create(ForceBlockGameObject*, cocos2d::CCArray*);

    virtual void valueDidChange(int, float) = imac 0x56e580, m1 0x4c30bc, ios 0x408c84;

    bool init(ForceBlockGameObject*, cocos2d::CCArray*) = m1 0x4c2a88, imac 0x56de60;
}

[[link(android)]]
class SetupGameplayOffsetPopup : SetupTriggerPopup {
    // virtual ~SetupGameplayOffsetPopup();

    static SetupGameplayOffsetPopup* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void updateInputValue(int, float&) = imac 0x783140, m1 0x697480, ios 0x1a29f8;
    virtual TodoReturn updateInputNode(int, float) = m1 0x697468, imac 0x783120, ios 0x1a29e0;
    virtual TodoReturn triggerValueFromSliderValue(int, float) = m1 0x697418, imac 0x7830d0, ios 0x1a2990;
    virtual TodoReturn triggerSliderValueFromValue(int, float) = m1 0x697450, imac 0x783100, ios 0x1a29c8;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = m1 0x697384, imac 0x783030, ios 0x1a290c;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x696c90, imac 0x782840;
    void onDefaultValues(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupGradientPopup : SetupTriggerPopup {
    // virtual ~SetupGradientPopup();

    static SetupGradientPopup* create(GradientTriggerObject*, cocos2d::CCArray*);

    virtual void determineStartValues() = win 0x409e70, m1 0x50e9cc, imac 0x5db910, ios 0x343010;
    virtual void onPlusButton(cocos2d::CCObject* sender) = win 0x409f80, imac 0x5dba30, m1 0x50eafc, ios 0x343120;
    virtual TodoReturn updateToggleItem(int, bool) = win 0x40a000, m1 0x50eb58, imac 0x5dba80, ios 0x34317c;
    virtual void valueDidChange(int, float) = win 0x40a410, imac 0x5dbc40, m1 0x50ed10, ios 0x343234;

    bool init(GradientTriggerObject*, cocos2d::CCArray*) = m1 0x50d368, imac 0x5da040;
    void onBlending(cocos2d::CCObject* sender);
    void onZLayer(cocos2d::CCObject* sender);
    TodoReturn sliderChanged(cocos2d::CCObject*);
    TodoReturn updateBlending();
    TodoReturn updateBlendingLabel();
    TodoReturn updateGradientLabels(bool);
    TodoReturn updateZLayerButtons();
}

[[link(android)]]
class SetupGravityModPopup : FLAlertLayer, TextInputDelegate {
    // virtual ~SetupGravityModPopup();

    static SetupGravityModPopup* create(EffectGameObject*, cocos2d::CCArray*, bool);

    virtual void keyBackClicked() = m1 0x34fa14, imac 0x3c6a50;
    virtual void show() = imac 0x3c69f0, m1 0x34f9c8;
    virtual void textInputClosed(CCTextInputNode*) = m1 0x34f8cc, imac 0x3c68b0;
    virtual void textChanged(CCTextInputNode*) = imac 0x3c68f0, m1 0x34f8e8;

    TodoReturn determineStartValues();
    bool init(EffectGameObject*, cocos2d::CCArray*, bool) = m1 0x34e7e0, imac 0x3c56a0;
    void onClose(cocos2d::CCObject* sender);
    void onItemIDArrow(cocos2d::CCObject* sender);
    TodoReturn sliderChanged(cocos2d::CCObject*);
    TodoReturn updateItemID();
    TodoReturn updateTextInputLabel();
    TodoReturn updateValue();
    TodoReturn updateValueLabel() = m1 0x34f5c0, imac 0x3c6540;
}

[[link(android)]]
class SetupGravityTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupGravityTriggerPopup();

    static SetupGravityTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void valueDidChange(int, float) = imac 0x4b22c0, m1 0x41a934, ios 0x419a94;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x41a4d4, imac 0x4b1e10;
}

[[link(android)]]
class SetupInstantCollisionTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupInstantCollisionTriggerPopup();

    static SetupInstantCollisionTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void updateDefaultTriggerValues() = win 0x402bc0, m1 0x314a58, imac 0x384b90, ios 0x231200;
    virtual void valueDidChange(int, float) = win 0x402990, imac 0x384880, m1 0x314748, ios 0x230f18;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x314130, imac 0x384160;
    TodoReturn updateSpecialNodes();
}

[[link(android)]]
class SetupInstantCountPopup : SetupTriggerPopup {
    // virtual ~SetupInstantCountPopup();

    static SetupInstantCountPopup* create(CountTriggerGameObject*, cocos2d::CCArray*) = win 0x40a520;

    virtual void determineStartValues() = m1 0x505b58, imac 0x5d1dc0, ios 0x1bebe0;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x506090, imac 0x5d23f0, ios 0x1befc0;
    virtual void textChanged(CCTextInputNode*) = win 0x40b740, m1 0x505e14, imac 0x5d2100, ios 0x1bee80;

    bool init(CountTriggerGameObject*, cocos2d::CCArray*) = win 0x40a660, m1 0x504958, imac 0x5d09c0;
    void onCountType(cocos2d::CCObject* sender);
    void onEnableGroup(cocos2d::CCObject* sender);
    void onTargetCountArrow(cocos2d::CCObject* sender);
    void onTargetID2Arrow(cocos2d::CCObject* sender);
    void onTargetIDArrow(cocos2d::CCObject* sender) = win 0x4045c0;
    TodoReturn updateCountTextInputLabel();
    void updateItemID() = win 0x401fd0;
    TodoReturn updateItemIDInputLabel();
    TodoReturn updateTargetCount();
    TodoReturn updateTargetID();
    TodoReturn updateTargetIDInputLabel();

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

    virtual void onClose(cocos2d::CCObject* sender) = m1 0x45904c, imac 0x4f8bf0, ios 0x40b148;
    virtual void onPlusButton(cocos2d::CCObject* sender) = m1 0x458f68, imac 0x4f8b00, ios 0x40b0ec;
    virtual void valueDidChange(int, float) = imac 0x4f8b40, m1 0x458fa0, ios 0x40b124;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x4586c0, imac 0x4f80b0;
    TodoReturn updateItems();
}

[[link(android)]]
class SetupItemCompareTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupItemCompareTriggerPopup();

    static SetupItemCompareTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);

    virtual void valueDidChange(int, float) = imac 0x56bbc0, m1 0x4c0da8, ios 0x40708c;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x56ba60, m1 0x4c0c50, ios 0x406f44;

    bool init(ItemTriggerGameObject*, cocos2d::CCArray*) = m1 0x4beef4, imac 0x569ae0;
    void onOpButton(cocos2d::CCObject* sender);
    TodoReturn updateFormulaLabel();
    TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int);
}

[[link(android)]]
class SetupItemEditTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupItemEditTriggerPopup();

    static SetupItemEditTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);

    virtual void valueDidChange(int, float) = imac 0x569870, m1 0x4bed30, ios 0x405594;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x569690, m1 0x4beb50, ios 0x4053d4;

    bool init(ItemTriggerGameObject*, cocos2d::CCArray*) = win 0x4525f0, m1 0x4bc978, imac 0x567390;
    void onOpButton(cocos2d::CCObject* sender);
    TodoReturn updateFormulaLabel() = win 0x453eb0, m1 0x4bdbf4, imac 0x568890;
    TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int);
}

[[link(android)]]
class SetupKeyframeAnimPopup : SetupTriggerPopup {
    // virtual ~SetupKeyframeAnimPopup();

    static SetupKeyframeAnimPopup* create(EffectGameObject*, cocos2d::CCArray*);

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x1a3d5c, imac 0x1ecdd0;
}

[[link(android)]]
class SetupKeyframePopup : SetupTriggerPopup {
    // virtual ~SetupKeyframePopup();

    static SetupKeyframePopup* create(KeyframeGameObject*, cocos2d::CCArray*, LevelEditorLayer*);

    virtual void onClose(cocos2d::CCObject* sender) = imac 0x1effa0, m1 0x1a6778, ios 0x1b7d14;
    virtual void onCustomButton(cocos2d::CCObject* sender) = imac 0x1efbe0, m1 0x1a6394, ios 0x1b7a24;
    virtual void valueDidChange(int, float) = imac 0x1ef920, m1 0x1a60a8, ios 0x1b77fc;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x1efb50, m1 0x1a62f0, ios 0x1b7980;

    bool init(KeyframeGameObject*, cocos2d::CCArray*, LevelEditorLayer*) = m1 0x1a4a58, imac 0x1edec0;
    void onTimeMode(cocos2d::CCObject* sender);
    TodoReturn refreshPreviewArt();
    TodoReturn updateTimeModeButtons();
}

[[link(android)]]
class SetupMGTrigger : SetupTriggerPopup {
    // virtual ~SetupMGTrigger();

    static SetupMGTrigger* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void determineStartValues() = m1 0x454a5c, imac 0x4f3d90, ios 0x2f2ad8;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x4551e4, imac 0x4f45f0, ios 0x2f3144;
    virtual void textChanged(CCTextInputNode*) = win 0x410830, imac 0x4f4390, m1 0x454fcc, ios 0x2f2f84;
    virtual void valuePopupClosed(ConfigureValuePopup*, float) = m1 0x454ce8, imac 0x4f4050, ios 0x2f2d1c;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x453360, imac 0x4f2600;
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
}

[[link(android)]]
class SetupMoveCommandPopup : SetupTriggerPopup {
    // virtual ~SetupMoveCommandPopup();

    static SetupMoveCommandPopup* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void updateInputValue(int, float&) = imac 0x5f1410, m1 0x5211d4, ios 0x273cb8;
    virtual TodoReturn updateInputNode(int, float) = m1 0x5211a8, imac 0x5f13d0, ios 0x273c8c;
    virtual void valueDidChange(int, float) = imac 0x5f1450, m1 0x521208, ios 0x273cec;
    virtual TodoReturn triggerValueFromSliderValue(int, float) = m1 0x5210f4, imac 0x5f12f0, ios 0x273bd8;
    virtual TodoReturn triggerSliderValueFromValue(int, float) = m1 0x521138, imac 0x5f1340, ios 0x273c1c;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x5f1650, m1 0x5213d8, ios 0x273eac;

    bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x279010, m1 0x51fd2c, imac 0x5efb70;
    TodoReturn updateControlVisibility();
}

[[link(android)]]
class SetupObjectControlPopup : SetupTriggerPopup {
    // virtual ~SetupObjectControlPopup();

    static SetupObjectControlPopup* create(ObjectControlGameObject*, cocos2d::CCArray*);

    bool init(ObjectControlGameObject*, cocos2d::CCArray*) = m1 0x4c4328;
}

[[link(android)]]
class SetupObjectOptions2Popup : SetupTriggerPopup {
    // virtual ~SetupObjectOptions2Popup();

    static SetupObjectOptions2Popup* create(GameObject*, cocos2d::CCArray*);

    virtual void onPlusButton(cocos2d::CCObject* sender) = imac 0x307200, m1 0x29e2d8, ios 0x45758;

    bool init(GameObject*, cocos2d::CCArray*) = m1 0x29de30, imac 0x306cd0;
}

[[link(android)]]
class SetupObjectOptionsPopup : FLAlertLayer, TextInputDelegate {
    // virtual ~SetupObjectOptionsPopup();

    static SetupObjectOptionsPopup* create(GameObject*, cocos2d::CCArray*, SetGroupIDLayer*);

    virtual void keyBackClicked() = m1 0x29dd48, imac 0x306b70, ios 0x45288;
    virtual void show() = m1 0x29dd6c, imac 0x306bb0, ios 0x452ac;
    virtual void determineStartValues() = win 0x3e7cd0, imac 0x306760, m1 0x29da98, ios 0x450a4;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x29ddb8, imac 0x306c10, ios 0x452f8;

    bool init(GameObject*, cocos2d::CCArray*, SetGroupIDLayer*) = m1 0x29b3ac, imac 0x3039a0;
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
}

[[link(android)]]
class SetupObjectTogglePopup : SetupTriggerPopup {
    // virtual ~SetupObjectTogglePopup();

    static SetupObjectTogglePopup* create(EffectGameObject*, cocos2d::CCArray*, bool);

    virtual void onClose(cocos2d::CCObject* sender) = imac 0x3631a0, m1 0x2f5e64, ios 0x1a66f8;
    virtual void valueDidChange(int, float) = imac 0x363120, m1 0x2f5dec, ios 0x1a6688;

    bool init(EffectGameObject*, cocos2d::CCArray*, bool) = m1 0x2f54d8, imac 0x362720;
}

[[link(android)]]
class SetupOpacityPopup : SetupTriggerPopup {
    // virtual ~SetupOpacityPopup();

    static SetupOpacityPopup* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void determineStartValues() = imac 0x58780, m1 0x4e708, ios 0x280e8;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x58d80, m1 0x4ec00, ios 0x284f4;
    virtual void textInputClosed(CCTextInputNode*) = m1 0x4e9c0, imac 0x58ae0, ios 0x28374;
    virtual void textChanged(CCTextInputNode*) = win 0x413a50, imac 0x58b20, m1 0x4e9dc, ios 0x28390;

    bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x412860, m1 0x4d5e0, imac 0x57560;
    void onTargetIDArrow(cocos2d::CCObject* sender);
    TodoReturn sliderChanged(cocos2d::CCObject*);
    TodoReturn updateDuration();
    TodoReturn updateDurLabel(bool);
    void updateOpacity();
    void updateOpacityLabel();
    TodoReturn updateTargetID();
    TodoReturn updateTextInputLabel();
}

[[link(android)]]
class SetupOptionsTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupOptionsTriggerPopup();

    static SetupOptionsTriggerPopup* create(GameOptionsTrigger*, cocos2d::CCArray*);

    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = win 0x41e720, imac 0x5cf620, m1 0x503958, ios 0x40be4c;

    TodoReturn addOption(int, gd::string);
    bool init(GameOptionsTrigger*, cocos2d::CCArray*) = m1 0x502f58, imac 0x5ceaf0;
}

[[link(android)]]
class SetupPersistentItemTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupPersistentItemTriggerPopup();

    static SetupPersistentItemTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);

    bool init(ItemTriggerGameObject*, cocos2d::CCArray*) = m1 0x4c1454, imac 0x56c420;
}

[[link(android)]]
class SetupPickupTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupPickupTriggerPopup();

    static SetupPickupTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x41e7f0;

    virtual void onPlusButton(cocos2d::CCObject* sender) = win 0x40c610, imac 0x598b0, m1 0x4f578, ios 0x47158;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = win 0x41f090, imac 0x598f0, m1 0x4f5b0, ios 0x47190;

    bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x41e900, m1 0x4ee48, imac 0x59080;
    void updateState() = win 0x41f020;
}

[[link(android)]]
class SetupPlatformerEndPopup : SetupTriggerPopup {
    // virtual ~SetupPlatformerEndPopup();

    static SetupPlatformerEndPopup* create(EndTriggerGameObject*, cocos2d::CCArray*);

    bool init(EndTriggerGameObject*, cocos2d::CCArray*) = m1 0x57af4c, imac 0x653a80;
}

[[link(android)]]
class SetupPlayerControlPopup : SetupTriggerPopup {
    // virtual ~SetupPlayerControlPopup();

    static SetupPlayerControlPopup* create(PlayerControlGameObject*, cocos2d::CCArray*);

    bool init(PlayerControlGameObject*, cocos2d::CCArray*) = m1 0x4b9c68, imac 0x563c90;
}

[[link(android)]]
class SetupPortalPopup : FLAlertLayer, TextInputDelegate {
    // virtual ~SetupPortalPopup();

    static SetupPortalPopup* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void keyBackClicked() = m1 0x4b07e8, imac 0x559fd0;

    TodoReturn determineStartValues();
    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x4af7d4, imac 0x558e40;
    void onClose(cocos2d::CCObject* sender);
    void onEditCameraSettings(cocos2d::CCObject* sender);
    void onUnboundMode(cocos2d::CCObject* sender);
    TodoReturn sliderChanged(cocos2d::CCObject*);
    TodoReturn updateCameraEasing();
    TodoReturn updateCameraEasingLabel();
    TodoReturn updateCameraPadding();
    TodoReturn updateCameraPaddingLabel() = m1 0x4b0614, imac 0x559dd0;
    TodoReturn updateItemVisibility();
}

[[link(android)]]
class SetupPulsePopup : SetupTriggerPopup, cocos2d::extension::ColorPickerDelegate, GJSpecialColorSelectDelegate {
    // virtual ~SetupPulsePopup();

    static SetupPulsePopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x41f250;

    virtual void show() = win 0x423fa0, m1 0x32a368, imac 0x39ce50, ios 0x3affd0;
    virtual void determineStartValues() = win 0x422ef0, m1 0x32924c, imac 0x39ba60, ios 0x3af378;
    virtual void onClose(cocos2d::CCObject* sender) = win 0x423cb0, imac 0x39c670, m1 0x329c84, ios 0x3afbc8;
    virtual void textChanged(CCTextInputNode*) = win 0x424150, imac 0x39ced0, m1 0x32a3c4, ios 0x3b002c;
    virtual void colorValueChanged(cocos2d::ccColor3B) = win 0x423e90, imac 0x39c850, m1 0x329e10, ios 0x3afce8;
    virtual void textInputOpened(CCTextInputNode*) = m1 0x32a3bc, imac 0x39ceb0, ios 0x3b0024 {}
    virtual void colorSelectClosed(GJSpecialColorSelect*, int) = win 0x423720, imac 0x39bfa0, m1 0x3296fc, ios 0x3af7cc;

    cocos2d::ccColor3B getColorValue();
    bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x41f430, m1 0x3250b8, imac 0x397170;
    void onCopy(cocos2d::CCObject* sender) = win 0x90d60;
    void onExclusive(cocos2d::CCObject* sender) = win 0x423380;
    void onGroupMainOnly(cocos2d::CCObject* sender) = win 0x423410;
    void onGroupSecondaryOnly(cocos2d::CCObject* sender) = win 0x423500;
    void onHSVLegacyMode(cocos2d::CCObject* sender) = win 0x423560;
    void onPaste(cocos2d::CCObject* sender) = win 0x90de0;
    void onSelectPulseMode(cocos2d::CCObject* sender) = win 0x422aa0;
    void onSelectSpecialColor(cocos2d::CCObject* sender) = win 0x423680;
    void onSelectSpecialTargetID(cocos2d::CCObject* sender) = win 0x4236d0;
    void onSelectTargetMode(cocos2d::CCObject* sender) = win 0x422cd0;
    void onUpdateCopyColor(cocos2d::CCObject* sender) = win 0x4240e0;
    void onUpdateCustomColor(cocos2d::CCObject* sender) = win 0x424050;
    void selectColor(cocos2d::ccColor3B);
    void sliderChanged(cocos2d::CCObject* sender) = win 0x4238c0;
    void updateColorLabels() = win 0x4248f0;
    void updateColorValue();
    void updateCopyColor() = win 0x424b90;
    void updateCopyColorTextInputLabel() = win 0x424d40;
    void updateFadeInLabel(bool) = win 0x422830;
    void updateFadeInTime() = win 0x423b00;
    void updateFadeOutLabel(bool) = win 0x4229d0;
    void updateFadeOutTime() = win 0x423c20;
    void updateGroupMainOnly() = win 0x423470;
    void updateGroupSecondaryOnly() = win 0x4235f0;
    void updateHoldLabel(bool) = win 0x422900;
    void updateHoldTime() = win 0x423b90;
    void updateHSVValue();
    void updatePulseMode();
    void updatePulseTargetType();
    void updateTargetID() = win 0x424ad0;
    void updateTextInputLabel() = win 0x424c20;

    cocos2d::extension::CCControlColourPicker* m_colorPicker;
    bool m_unk3c0;
    cocos2d::CCArray* m_colorObjects;
    cocos2d::CCArray* m_hsvObjects;
    Slider* m_fadeInSlider;
    Slider* m_holdSlider;
    Slider* m_fadeOutSlider;
    CCMenuItemSpriteExtra* m_channelButton;
    CCMenuItemSpriteExtra* m_groupButton;
    cocos2d::CCLabelBMFont* m_idLabel;
    cocos2d::ccColor3B m_originalColor;
    cocos2d::CCSprite* m_currentColorSprite;
    cocos2d::CCSprite* m_originalColorSprite;
    cocos2d::ccColor3B m_currentColor;
    CCMenuItemSpriteExtra* m_colorButton;
    CCMenuItemSpriteExtra* m_hsvButton;
    ConfigureHSVWidget* m_hsvWidget;
    CCMenuItemSpriteExtra* m_specialColorButton;
    CCTextInputNode* m_fadeInInput;
    CCTextInputNode* m_holdInput;
    CCTextInputNode* m_fadeOutInput;
    CCTextInputNode* m_idInput;
    CCTextInputNode* m_colorIDInput;
    CCMenuItemToggler* m_mainOnlyToggler;
    CCMenuItemToggler* m_secondaryOnlyToggler;
    CCMenuItemToggler* m_staticHSVToggler;
    cocos2d::CCLabelBMFont* m_mainOnlyLabel;
    cocos2d::CCLabelBMFont* m_secondaryOnlyLabel;
    cocos2d::CCLabelBMFont* m_staticHSVLabel;
    bool m_groupMainOnly;
    bool m_groupSecondaryOnly;
    bool m_staticHSV;
    int m_targetGroupID;
    int m_copyColorID;
    bool m_colorInitializing;
    float m_fadeInTime;
    float m_holdTime;
    float m_fadeOutTime;
    int m_pulseMode;
    int m_pulseTargetType;
    bool m_modesInitializing;
    bool m_pulseExclusive;
    cocos2d::ccHSVValue m_hsv;
    CCTextInputNode* m_rInput;
    CCTextInputNode* m_gInput;
    CCTextInputNode* m_bInput;
    CCTextInputNode* m_hexInput;
}

[[link(android)]]
class SetupRandAdvTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupRandAdvTriggerPopup();

    static SetupRandAdvTriggerPopup* create(RandTriggerGameObject*, cocos2d::CCArray*) = win 0x424f50;

    virtual void onClose(cocos2d::CCObject* sender) = win 0x425b10, m1 0x30bc4c, imac 0x37be30, ios 0x33a20;
    virtual void textChanged(CCTextInputNode*) = m1 0x30bc44, imac 0x37be10, ios 0x33a18 {}

    void addChance(int, int);
    void addChanceToObject(RandTriggerGameObject*, int, int);
    void callRemoveFromGroup(float) = win 0x426550;
    bool init(RandTriggerGameObject*, cocos2d::CCArray*) = win 0x425090, m1 0x30a864, imac 0x37a720;
    void onAddChance(cocos2d::CCObject* sender) = win 0x426790;
    void onRemoveFromGroup(cocos2d::CCObject* sender) = win 0x4266c0;
    void removeGroupID(int);
    void removeGroupIDFromObject(RandTriggerGameObject*, int);
    void updateGroupIDButtons() = win 0x425bd0, m1 0x30b24c, imac 0x37b190;

    bool m_performedAction;
    cocos2d::CCArray* m_groupButtons;
    CCTextInputNode* m_groupIDInput;
    CCTextInputNode* m_chanceInput;
    int m_groupToRemove;
    bool m_removingGroup;
}

[[link(android)]]
class SetupRandTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupRandTriggerPopup();

    static SetupRandTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void determineStartValues() = m1 0x5028bc, imac 0x5ce3b0, ios 0x1cb858;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x502ddc, imac 0x5ce990, ios 0x1cbc54;
    virtual void textChanged(CCTextInputNode*) = win 0x4288e0, imac 0x5ce6a0, m1 0x502b44, ios 0x1cbad0;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x5016b0, imac 0x5cd0b0;
    void onTargetID2Arrow(cocos2d::CCObject* sender);
    void onTargetIDArrow(cocos2d::CCObject* sender);
    TodoReturn sliderChanged(cocos2d::CCObject*);
    TodoReturn updateChance();
    TodoReturn updateChanceLabel(bool);
    TodoReturn updateTargetID();
    TodoReturn updateTargetID2();
    TodoReturn updateTextInputLabel();
    TodoReturn updateTextInputLabel2();
}

[[link(android)]]
class SetupResetTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupResetTriggerPopup();

    static SetupResetTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x4bc558, imac 0x566eb0;
}

[[link(android)]]
class SetupReverbPopup : SetupTriggerPopup {
    // virtual ~SetupReverbPopup();

    static SetupReverbPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*);

    virtual void onClose(cocos2d::CCObject* sender) = imac 0x4a51d0, m1 0x40f038, ios 0x18304c;

    bool init(SFXTriggerGameObject*, cocos2d::CCArray*) = m1 0x40e8e0, imac 0x4a4a70;
    void onPlay(cocos2d::CCObject* sender);
    void onReverb(cocos2d::CCObject* sender);
    TodoReturn updateReverbLabel();
}

[[link(android)]]
class SetupRotateCommandPopup : SetupTriggerPopup {
    // virtual ~SetupRotateCommandPopup();

    static SetupRotateCommandPopup* create(EffectGameObject*, cocos2d::CCArray*);

    virtual TodoReturn updateInputNode(int, float) = m1 0x8cf4, imac 0x6dd0, ios 0x3fec80;
    virtual void valueDidChange(int, float) = imac 0x6de0, m1 0x8cf8, ios 0x3fec84;
    virtual TodoReturn triggerValueFromSliderValue(int, float) = m1 0x8ccc, imac 0x6d80, ios 0x3fec58;
    virtual TodoReturn triggerSliderValueFromValue(int, float) = m1 0x8cf0, imac 0x6dc0, ios 0x3fec7c;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = m1 0x8f90, imac 0x7120, ios 0x3fed98;

    bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x2a06d0, m1 0x7bec, imac 0x5890;
    void onInfiniteDuration(cocos2d::CCObject* sender);
    void updateControlVisibility() = win 0x2a1b30;
}

[[link(android)]]
class SetupRotateGameplayPopup : SetupTriggerPopup {
    // virtual ~SetupRotateGameplayPopup();

    static SetupRotateGameplayPopup* create(RotateGameplayGameObject*, cocos2d::CCArray*);

    virtual void onPlusButton(cocos2d::CCObject* sender) = m1 0x696a70, imac 0x782510, ios 0x1a2178;
    virtual void valueDidChange(int, float) = imac 0x782550, m1 0x696aa8, ios 0x1a21b0;

    bool init(RotateGameplayGameObject*, cocos2d::CCArray*) = m1 0x696194, imac 0x781a90;
}

[[link(android)]]
class SetupRotatePopup : SetupTriggerPopup {
    // virtual ~SetupRotatePopup();

    static SetupRotatePopup* create(EnhancedGameObject*, cocos2d::CCArray*);

    virtual void onClose(cocos2d::CCObject* sender) = m1 0x4d7138, imac 0x585460, ios 0x267a44;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x5854e0, m1 0x4d71b4, ios 0x267ac0;

    bool init(EnhancedGameObject*, cocos2d::CCArray*) = m1 0x4d6c50, imac 0x584ec0;
}

[[link(android)]]
class SetupSequenceTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupSequenceTriggerPopup();

    static SetupSequenceTriggerPopup* create(SequenceTriggerGameObject*) = win 0x42b000;

    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = win 0x42c340, imac 0x4cb860, m1 0x430be8, ios 0x1d4388;

    bool init(SequenceTriggerGameObject*) = win 0x42b130, m1 0x42f9c4, imac 0x4ca480;
    void onAddChance(cocos2d::CCObject* sender) = win 0x42c990;
    void onChangeOrder(cocos2d::CCObject* sender) = win 0x42cad0;
    void onDeleteSelected(cocos2d::CCObject* sender) = win 0x42cbb0;
    void onSelect(cocos2d::CCObject* sender) = win 0x42c910;
    void updateGroupIDButtons() = win 0x42c430, m1 0x4308b0, imac 0x4cb510;

    CCMenuItemSpriteExtra* m_selectedButton;
    bool m_unk3b0;
    bool m_unk3b1;
    cocos2d::CCArray* m_groupButtons;
    int m_unk3c0;
    bool m_unk3c4;
}

[[link(android)]]
class SetupSFXEditPopup : SetupAudioTriggerPopup {
    // virtual ~SetupSFXEditPopup();

    static SetupSFXEditPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*, bool);

    bool init(SFXTriggerGameObject*, cocos2d::CCArray*, bool) = m1 0x411118, imac 0x4a7b50;
}

[[link(android)]]
class SetupSFXPopup : SetupAudioTriggerPopup, CustomSFXDelegate, SFXBrowserDelegate {
    // virtual ~SetupSFXPopup();

    static SetupSFXPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*) = win 0x42ee10, m1 0x40f2fc;

    virtual void pageChanged() = imac 0x4a6f10, m1 0x410784, ios 0x184220;
    virtual void onClose(cocos2d::CCObject* sender) = win 0x430230, imac 0x4a6f70, m1 0x4107dc, ios 0x184278;
    virtual void onPlusButton(cocos2d::CCObject* sender) = imac 0x4a7430, m1 0x410c1c, ios 0x184638;
    virtual void valueDidChange(int, float) = imac 0x4a7310, m1 0x410af8, ios 0x184550;
    virtual void sfxObjectSelected(SFXInfoObject*) = m1 0x410a4c, imac 0x4a7230, ios 0x1844d4 {}
    virtual int getActiveSFXID() = win 0x430920, m1 0x410a54, imac 0x4a7250, ios 0x1844dc;
    virtual bool overridePlaySFX(SFXInfoObject*) = win 0x430930, imac 0x4a7270, m1 0x410a64, ios 0x1844ec;
    virtual void sfxBrowserClosed(SFXBrowser*) = win 0x431050, imac 0x4a74d0, m1 0x410ccc, ios 0x1846e0;

    TodoReturn createSFXWidget();
    bool init(SFXTriggerGameObject*, cocos2d::CCArray*) = imac 0x4a5870, m1 0x40f4a0;
    void onBrowseSFX(cocos2d::CCObject* sender);
    TodoReturn updateLength();
}

[[link(android)]]
class SetupShaderEffectPopup : SetupTriggerPopup {
    // virtual ~SetupShaderEffectPopup();

    static SetupShaderEffectPopup* create(EffectGameObject*, cocos2d::CCArray*, int);

    virtual void toggleGroup(int, bool) = imac 0x2bd2d0, m1 0x261df0, ios 0x18d670;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x2bd310, m1 0x261e30, ios 0x18d6b0;
    virtual void updateDefaultTriggerValues() = imac 0x2bca50, m1 0x2614cc, ios 0x18d054;
    virtual void valueDidChange(int, float) = imac 0x2bcf90, m1 0x261ab4, ios 0x18d3d8;

    bool init(EffectGameObject*, cocos2d::CCArray*, int);
    void onResetColors(cocos2d::CCObject* sender);
    void onZLayer(cocos2d::CCObject* sender);
    TodoReturn setupBulge() = m1 0x25de18, imac 0x2b8e60;
    TodoReturn setupChromatic() = m1 0x25ad9c, imac 0x2b57d0;
    TodoReturn setupChromaticGlitch() = m1 0x25b2f8, imac 0x2b5d70;
    TodoReturn setupColorChange() = m1 0x2601c0, imac 0x2bb610;
    TodoReturn setupGlitch() = m1 0x25a738, imac 0x2b5110;
    TodoReturn setupGrayscale() = m1 0x25f120, imac 0x2ba490;
    TodoReturn setupHueShift() = m1 0x25feb8, imac 0x2bb2f0;
    TodoReturn setupInvertColor() = m1 0x25f89c, imac 0x2bac60;
    TodoReturn setupLensCircle() = m1 0x25c124, imac 0x2b6cf0;
    TodoReturn setupMotionBlur() = m1 0x25d314, imac 0x2b81c0;
    TodoReturn setupPinch() = m1 0x25e654, imac 0x2b97e0;
    TodoReturn setupPixelate() = m1 0x25baa4, imac 0x2b65f0;
    TodoReturn setupRadialBlur() = m1 0x25c9b0, imac 0x2b76e0;
    TodoReturn setupSepia() = m1 0x25f5b0, imac 0x2ba990;
    TodoReturn setupShaderTrigger() = m1 0x260cac, imac 0x2bc190;
    TodoReturn setupShockLine() = m1 0x259658, imac 0x2b3d30;
    TodoReturn setupShockWave() = m1 0x2584b4, imac 0x2b2840;
    TodoReturn setupSplitScreen() = m1 0x260808, imac 0x2bbcd0;
    TodoReturn updateZLayerButtons();
    TodoReturn zLayerToString(int);
}

[[link(android)]]
class SetupShakePopup : SetupTriggerPopup {
    // virtual ~SetupShakePopup();

    static SetupShakePopup* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void determineStartValues() = m1 0x576bd0, imac 0x64eeb0, ios 0x3a292c;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x577234, imac 0x64f590, ios 0x3a2e60;
    virtual void textChanged(CCTextInputNode*) = win 0x43dd60, imac 0x64f210, m1 0x576f14, ios 0x3a2c1c;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x575d0c, imac 0x64df80;
    TodoReturn sliderChanged(cocos2d::CCObject*);
    TodoReturn updateDuration();
    TodoReturn updateDurLabel(bool);
    TodoReturn updateInterval();
    TodoReturn updateIntervalLabel(bool);
    TodoReturn updateShake();
    TodoReturn updateShakeLabel(bool);
}

[[link(android)]]
class SetupSmartBlockLayer : FLAlertLayer, TextInputDelegate, SelectArtDelegate {
    // virtual ~SetupSmartBlockLayer();

    static SetupSmartBlockLayer* create(SmartGameObject*, cocos2d::CCArray*);

    virtual void keyBackClicked() = win 0x4406d0, imac 0x4d46d0, m1 0x4383cc, ios 0x74300;
    virtual void show() = m1 0x438368, imac 0x4d4640, ios 0x7429c;
    virtual void selectArtClosed(SelectArtLayer*) = win 0x440690, imac 0x4d46a0, m1 0x4383b4, ios 0x742e8;

    TodoReturn determineStartValues();
    bool init(SmartGameObject*, cocos2d::CCArray*) = m1 0x436e18, imac 0x4d2e00;
    void onAllowFlipping(cocos2d::CCObject* sender);
    void onAllowRotation(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    void onCreate(cocos2d::CCObject* sender);
    void onCreateAll(cocos2d::CCObject* sender);
    void onCreateTemplate(cocos2d::CCObject* sender);
    void onDontDelete(cocos2d::CCObject* sender);
    void onIgnoreCorners(cocos2d::CCObject* sender);
    void onNearbyReference(cocos2d::CCObject* sender);
    void onPasteTemplate(cocos2d::CCObject* sender) = m1 0x437d78, imac 0x4d3f90;
    void onReferenceOnly(cocos2d::CCObject* sender);
    void onSelectPremade(cocos2d::CCObject* sender);
    void onSelectTemplate(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupSmartTemplateLayer : FLAlertLayer, TextInputDelegate, FLAlertLayerProtocol {
    // virtual ~SetupSmartTemplateLayer();

    static SetupSmartTemplateLayer* create(GJSmartTemplate*) = win 0x4406e0;

    virtual void keyBackClicked() = win 0x441940, imac 0x4d5b70, m1 0x4396d4, ios 0x75228;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x4413a0, imac 0x4d5870, m1 0x439378, ios 0x74f38;
    virtual void textInputOpened(CCTextInputNode*) = win 0x4416e0, imac 0x4d5a90, m1 0x4395c8, ios 0x750bc;
    virtual void textInputClosed(CCTextInputNode*) = win 0x441480, imac 0x4d5950, m1 0x43945c, ios 0x74f9c;
    virtual void textChanged(CCTextInputNode*) = m1 0x4396b4, imac 0x4d5b50, ios 0x75208;

    bool init(GJSmartTemplate*) = win 0x4407f0, imac 0x4d4c10, m1 0x43875c;
    void onBack(cocos2d::CCObject* sender) = imac 0x4d5500;
    void onClick(cocos2d::CCObject* sender) = m1 0x439068, imac 0x4d5530;
    void onClose(cocos2d::CCObject* sender) = m1 0x4392a4, imac 0x4d57a0;
}

[[link(android)]]
class SetupSongTriggerPopup : SetupAudioTriggerPopup, MusicDownloadDelegate, SongPlaybackDelegate {
    // virtual ~SetupSongTriggerPopup();

    static SetupSongTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void pageChanged() = imac 0x2c0f70, m1 0x26537c, ios 0x1c4418;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x265410, imac 0x2c1000, ios 0x1c44ac;
    virtual void valueDidChange(int, float) = imac 0x2c0e70, m1 0x26527c, ios 0x1c4384;
    virtual void onPlayback(SongInfoObject*) = win 0x445290, imac 0x2c0c30, m1 0x265068, ios 0x1c417c;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x2643d0, imac 0x2bfe60;
    void onResetSongTime(cocos2d::CCObject* sender);
    void onSavePlaybackPos(cocos2d::CCObject* sender);
    TodoReturn updateApplyPrepare(bool);
    TodoReturn updateLength();
    TodoReturn updateSongTimeSlider();
}

[[link(android)]]
class SetupSpawnParticlePopup : SetupTriggerPopup {
    // virtual ~SetupSpawnParticlePopup();

    static SetupSpawnParticlePopup* create(EffectGameObject*, cocos2d::CCArray*);

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x4ba358, imac 0x5644d0;
}

[[link(android)]]
class SetupSpawnPopup : SetupTriggerPopup {
    // virtual ~SetupSpawnPopup();

    static SetupSpawnPopup* create(EffectGameObject*, cocos2d::CCArray*) = win 0x445be0;

    virtual void onClose(cocos2d::CCObject* sender) = win 0x40c730, imac 0x27ece0, m1 0x2286cc, ios 0xfbd4c;

    bool init(EffectGameObject*, cocos2d::CCArray*) = win 0x445d20, m1 0x2271a4, imac 0x27d4f0;
    void onAddRemap(cocos2d::CCObject* sender) = win 0x446910;
    void onDeleteRemap(cocos2d::CCObject* sender) = win 0x446a80;
    void onSelectRemap(cocos2d::CCObject* sender) = win 0x447440;
    void queueUpdateButtons() = win 0x447510;
    void updateRemapButtons(float) = win 0x446c20, m1 0x227d98, imac 0x27e2e0;

    bool m_isBusy;
    cocos2d::CCArray* m_remapButtons;
    gd::vector<int> m_remapGroups;
    int m_remapOriginalID;
    int m_remapNewID;
}

[[link(android)]]
class SetupStaticCameraPopup : SetupTriggerPopup {
    // virtual ~SetupStaticCameraPopup();

    static SetupStaticCameraPopup* create(CameraTriggerGameObject*, cocos2d::CCArray*);

    virtual void valueDidChange(int, float) = imac 0x388d20, m1 0x3185bc, ios 0x1d207c;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = m1 0x318650, imac 0x388db0, ios 0x1d2094;

    bool init(CameraTriggerGameObject*, cocos2d::CCArray*) = m1 0x317c2c, imac 0x3881c0;
    TodoReturn updateState();
}

[[link(android)]]
class SetupStopTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupStopTriggerPopup();

    static SetupStopTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void onClose(cocos2d::CCObject* sender) = imac 0x56f820, m1 0x4c4118, ios 0x409a2c;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x56f7b0, m1 0x4c40a0, ios 0x4099b4;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x4c3b3c, imac 0x56f190;
}

[[link(android)]]
class SetupTeleportPopup : SetupTriggerPopup {
    // virtual ~SetupTeleportPopup();

    static SetupTeleportPopup* create(TeleportPortalObject*, cocos2d::CCArray*, int, bool);

    virtual void determineStartValues() = imac 0x346b20, m1 0x2db89c, ios 0x1008c;
    virtual void updateDefaultTriggerValues() = imac 0x346b30, m1 0x2db8a0, ios 0x10090;
    virtual void valueDidChange(int, float) = imac 0x346c30, m1 0x2db9ac, ios 0x10144;

    bool init(TeleportPortalObject*, cocos2d::CCArray*, int, bool) = m1 0x2da580, imac 0x3454c0;
    void onTeleportGravity(cocos2d::CCObject* sender);
    TodoReturn updateTeleportGravityState(int);
}

[[link(android)]]
class SetupTimerControlTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupTimerControlTriggerPopup();

    static SetupTimerControlTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);

    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x38f290, m1 0x31e0b4, ios 0x327c0;

    bool init(TimerTriggerGameObject*, cocos2d::CCArray*) = m1 0x31dcd8, imac 0x38ee40;
}

[[link(android)]]
class SetupTimerEventTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupTimerEventTriggerPopup();

    static SetupTimerEventTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);

    bool init(TimerTriggerGameObject*, cocos2d::CCArray*) = m1 0x31d690, imac 0x38e680;
}

[[link(android)]]
class SetupTimerTriggerPopup : SetupTriggerPopup {
    // virtual ~SetupTimerTriggerPopup();

    static SetupTimerTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);

    bool init(TimerTriggerGameObject*, cocos2d::CCArray*) = m1 0x31cd50, imac 0x38db20;
}

[[link(android)]]
class SetupTimeWarpPopup : SetupTriggerPopup {
    // virtual ~SetupTimeWarpPopup();

    static SetupTimeWarpPopup* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void determineStartValues() = m1 0x450fe4, imac 0x4efdd0, ios 0x14b950;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x451134, imac 0x4eff60, ios 0x14ba8c;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x450a9c, imac 0x4ef830;
    TodoReturn sliderChanged(cocos2d::CCObject*);
    TodoReturn updateTimeWarp();
    TodoReturn updateTimeWarpLabel() = m1 0x450f94, imac 0x4efd80;
}

[[link(android)]]
class SetupTouchTogglePopup : SetupTriggerPopup {
    // virtual ~SetupTouchTogglePopup();

    static SetupTouchTogglePopup* create(EffectGameObject*, cocos2d::CCArray*);

    virtual void determineStartValues() = imac 0x2a6270, m1 0x24cb44, ios 0x24af20;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x2a65b0, m1 0x24ce10, ios 0x24b160;
    virtual void textChanged(CCTextInputNode*) = win 0x44c760, imac 0x2a6490, m1 0x24cd0c, ios 0x24b0c4;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x24bc30, imac 0x2a51e0;
    void onControlMode(cocos2d::CCObject* sender);
    void onDualTouchMode(cocos2d::CCObject* sender);
    void onHoldMode(cocos2d::CCObject* sender);
    void onTargetIDArrow(cocos2d::CCObject* sender);
    void onTouchMode(cocos2d::CCObject* sender);
    TodoReturn updateTargetID();
    TodoReturn updateTextInputLabel();
}

[[link(android)]]
class SetupTransformPopup : SetupTriggerPopup {
    // virtual ~SetupTransformPopup();

    static SetupTransformPopup* create(TransformTriggerGameObject*, cocos2d::CCArray*);

    bool init(TransformTriggerGameObject*, cocos2d::CCArray*) = m1 0x45a9dc, imac 0x4faa20;
}

[[link(android)]]
class SetupTriggerPopup : FLAlertLayer, TextInputDelegate, ConfigureValuePopupDelegate, SliderDelegate {
    // virtual ~SetupTriggerPopup();
    // SetupTriggerPopup();

    static SetupTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*, float, float, int);
    static SetupTriggerPopup* create(float, float);

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x465a80, m1 0x1df150, imac 0x22e3e0, ios 0x13803c;
    virtual void keyBackClicked() = win 0x44f1d0, m1 0x1d8cf8, imac 0x227290, ios 0x133bfc;
    virtual void show() = win 0x8ba30, m1 0x1d8b74, imac 0x2270d0, ios 0x133b20;
    virtual void pageChanged() = m1 0x8fb0, imac 0x7150, ios 0xd590 {}
    virtual void toggleGroup(int group, bool visible) = win 0x45c310, imac 0x223a40, m1 0x1d68d4, ios 0x131ef0;
    virtual void determineStartValues() = win 0x45d060, imac 0x224c20, m1 0x1d7950, ios 0x132c40;
    virtual void onClose(cocos2d::CCObject* sender) = win 0x45d6a0, imac 0x227130, m1 0x1d8bc0, ios 0x133b6c;
    virtual void textInputClosed(CCTextInputNode*) = win 0x8b790, m1 0x1d7c58, imac 0x224fa0, ios 0x132e4c;
    virtual void textChanged(CCTextInputNode*) = win 0x45d4e0, imac 0x224fe0, m1 0x1d7c74, ios 0x132e68;
    virtual void textInputShouldOffset(CCTextInputNode*, float) = win 0x7b5c0, imac 0x2272d0, m1 0x1d8d1c, ios 0x133c20;
    virtual void textInputReturn(CCTextInputNode*) = win 0x7b620, imac 0x227390, m1 0x1d8dec, ios 0x133c8c;
    virtual void updateInputValue(int, float&) = m1 0x8fb0, imac 0x7150, ios 0xd590 {}
    virtual void sliderBegan(Slider*) = win 0x45d7e0, imac 0x227440, m1 0x1d8ea4, ios 0x133cec;
    virtual void sliderEnded(Slider*) = win 0x45d8b0, imac 0x227520, m1 0x1d8f7c, ios 0x133db8;
    virtual void onPlusButton(cocos2d::CCObject* sender) = m1 0x8fb0, imac 0x7150, ios 0xd590 {}
    virtual void onCustomButton(cocos2d::CCObject* sender) = m1 0x8fb0, imac 0x7150, ios 0xd590 {}
    virtual void updateDefaultTriggerValues() = win 0x45f370, imac 0x229910, m1 0x1db330, ios 0x1358f4;
    virtual TodoReturn updateInputNode(int, float) = win 0x45f860, imac 0x22c1e0, m1 0x1dcdb8, ios 0x1363bc;
    virtual TodoReturn updateToggleItem(int, bool) = win 0x45fc00, imac 0x22c3d0, m1 0x1dcfe4, ios 0x136588;
    virtual void valueDidChange(int, float) = m1 0x8fb0, imac 0x7150, ios 0xd590 {}
    virtual float getValue(int) = win 0x45fc70, imac 0x22c490, m1 0x1dd09c, ios 0x1365f8;
    virtual TodoReturn triggerValueFromSliderValue(int, float) = win 0x463c60, imac 0x22c840, m1 0x1dd478, ios 0x1367f8;
    virtual TodoReturn triggerSliderValueFromValue(int, float) = win 0x463cf0, imac 0x22c8c0, m1 0x1dd504, ios 0x136864;
    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = m1 0x8fb0, imac 0x7150, ios 0xd590 {}
    virtual void valuePopupClosed(ConfigureValuePopup*, float) = win 0x464c00, imac 0x22d4e0, m1 0x1de14c, ios 0x13733c;

    void addCloseButton(gd::string) = win 0x45c590;
    void addHelpButton(gd::string, gd::string, float) = win 0x45c6a0;
    void addInfoLabel(gd::string, float, cocos2d::CCPoint, int, int) = win 0x45ee90;
    void addObjectsToGroup(cocos2d::CCArray*, int);
    void addObjectsToPage(cocos2d::CCArray*, int);
    void addObjectToGroup(cocos2d::CCObject*, int);
    void addObjectToPage(cocos2d::CCObject*, int) = win 0x45c400;
    void addTitle(gd::string) = win 0x45c490;
    void closeInputNodes();
    void createCustomButton(int, gd::string, gd::string, cocos2d::CCPoint, float, float, bool, int, int) = win 0x45f110;
    void createCustomEasingControls(gd::string, cocos2d::CCPoint, float, int, int, int, int) = win 0x464cc0;
    void createCustomToggleValueControl(int, bool, bool, gd::string, cocos2d::CCPoint, bool, int, int) = win 0x45ec10;
    void createEasingControls(cocos2d::CCPoint, float, int, int) = win 0x463da0, imac 0x22c970, m1 0x1dd5b4;
    void createMultiTriggerItems(cocos2d::CCPoint touchPos, cocos2d::CCPoint spawnPos, cocos2d::CCPoint multiPos) = win 0x45cd50, imac 0x2243a0, m1 0x1d71b0;
    void createMultiTriggerItemsCorner() = win 0x45ca40;
    void createMultiTriggerItemsDefault() = win 0x45c930, imac 0x224290, m1 0x1d70d0;
    void createMultiTriggerItemsDefaultHorizontal() = win 0x45cc40;
    void createMultiTriggerItemsDefaultVertical() = win 0x45cb40;
    void createPageButtons(float, int) = win 0x45bc80;
    void createPlusButton(int, cocos2d::CCPoint, float, gd::string, int, int) = win 0x45ef70;
    CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCPoint) = win 0x45c800;
    cocos2d::CCArray* createToggleValueControl(int, gd::string, cocos2d::CCPoint, bool, int, int, float) = win 0x45e900, imac 0x228c00, m1 0x1da5ec;
    cocos2d::CCArray* createToggleValueControlAdvanced(int, gd::string, cocos2d::CCPoint, bool, int, int, float, float, float, cocos2d::CCPoint) = imac 0x228d30, m1 0x1da73c;
    cocos2d::CCArray* createValueControl(int, gd::string, cocos2d::CCPoint, float, float, float) = win 0x45db40;
    cocos2d::CCArray* createValueControlAdvanced(int, gd::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float, float, int, int, GJInputStyle, int, bool) = win 0x45dc30, imac 0x227b30, m1 0x1d9550;
    cocos2d::CCArray* createValueControlWArrows(int, gd::string, cocos2d::CCPoint, float);
    cocos2d::CCArray* getGroupContainer(int);
    float getMaxSliderValue(int);
    float getMinSliderValue(int);
    cocos2d::CCArray* getObjects();
    cocos2d::CCArray* getPageContainer(int);
    float getTriggerValue(int property, GameObject* object) = win 0x4620f0, imac 0x229d20, m1 0x1db6b4;
    float getTruncatedValue(float, int) = win 0x45f750;
    float getTruncatedValueByTag(int, float);
    void goToPage(int, bool) = win 0x45c010;
    void hideAll();
    bool init(EffectGameObject* trigger, cocos2d::CCArray* triggers, float width, float height, int unkEnum) = win 0x45b900, imac 0x222f20, m1 0x1d5eb4; // unkEnum is 2 when called by GameOptionsLayer, 1 otherwise
    void onCustomEaseArrow(int, bool) = win 0x465590;
    void onCustomEaseArrowDown(cocos2d::CCObject* sender) = win 0x465560;
    void onCustomEaseArrowUp(cocos2d::CCObject* sender) = win 0x465530;
    void onCustomEaseRate(cocos2d::CCObject* sender) = win 0x465420;
    void onDisableValue(cocos2d::CCObject* sender) = win 0x45e7f0;
    void onEase(cocos2d::CCObject* sender) = win 0x464ac0;
    void onEaseRate(cocos2d::CCObject* sender) = win 0x464b30;
    void onMultiTrigger(cocos2d::CCObject* sender);
    void onPage(cocos2d::CCObject* sender) = win 0x45bf30;
    void onSpawnedByTrigger(cocos2d::CCObject* sender) = win 0x45d2d0;
    void onToggleTriggerValue(cocos2d::CCObject* sender) = win 0x45f6c0;
    void onTouchTriggered(cocos2d::CCObject* sender) = win 0x45d1e0;
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
    void toggleCustomEaseRateVisibility(int, int) = win 0x465910;
    void toggleDisableButtons(bool) = win 0x45e820;
    void toggleEaseRateVisibility();
    void toggleLimitValue(int, bool);
    void togglePageArrows(bool);
    void triggerArrowChanged(int, bool) = win 0x45daa0;
    void triggerArrowLeft(cocos2d::CCObject*) = win 0x45da40;
    void triggerArrowRight(cocos2d::CCObject*) = win 0x45da70;
    void triggerSliderChanged(cocos2d::CCObject*) = win 0x45d980;
    void updateCustomEaseLabel(int, int) = win 0x465630;
    void updateCustomEaseRateLabel(int, float) = win 0x465800;
    void updateCustomToggleTrigger(int, bool);
    void updateEaseLabel();
    void updateEaseRateLabel();
    void updateEditorLabel();
    void updateInputNodeLabel(int, gd::string) = win 0x463be0;
    void updateLabel(int, gd::string);
    void updateMultiTriggerBtn() = win 0x45d3c0;
    void updateSlider(int, float);
    void updateSlider(int);
    void updateSpawnedByTrigger() = win 0x45d320;
    void updateTouchTriggered() = win 0x45d230;
    void updateValue(int property, float value) = win 0x463b50, imac 0x2289d0, m1 0x1da380;
    void updateValueControls(int property, float value) = win 0x45f7c0, imac 0x227950, m1 0x1d9370;
    void valueChanged(int property, float value) = win 0x45fd90, imac 0x225210, m1 0x1d7e68;

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

    virtual void determineStartValues() = imac 0x30d1e0, m1 0x2a3de4, ios 0x1ba6e0;
    virtual void onClose(cocos2d::CCObject* sender) = imac 0x30d1f0, m1 0x2a3de8, ios 0x1ba6e4;

    bool init(EffectGameObject*, cocos2d::CCArray*) = m1 0x2a3a44, imac 0x30cdc0;
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

    static SFXBrowser* create(int id) = win inline, imac 0x42a4d0, m1 0x3a5570 {
        auto ret = new SFXBrowser();
        if (ret->init(id)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual void registerWithTouchDispatcher() = imac 0x42cf30, m1 0x3a7c5c, ios 0x16df88;
    virtual void keyBackClicked() = win 0x4687f0, m1 0x3a7bac, imac 0x42ce90, ios 0x16df7c;
    virtual void musicActionFinished(GJMusicAction) = win 0x467360, m1 0x3a72fc, imac 0x42c4e0, ios 0x16d9b0;
    virtual void musicActionFailed(GJMusicAction) = win 0x467400, imac 0x42c5e0, m1 0x3a73cc, ios 0x16d9d4;
    virtual void sortSelectClosed(SelectSFXSortLayer*) = win 0x467f20, imac 0x42c9b0, m1 0x3a7740, ios 0x16dcc4;
    virtual void setTextPopupClosed(SetTextPopup*, gd::string) = win 0x468200, imac 0x42cc20, m1 0x3a7970, ios 0x16de50;
    virtual bool cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = win 0x4682a0, imac 0x42cce0, m1 0x3a7a2c, ios 0x16deb4;
    virtual int getSelectedCellIdx() = m1 0x3a7b8c, imac 0x42ce50, ios 0x16df5c;
    virtual bool shouldSnapToSelected() = m1 0x3a7b9c, imac 0x42ce70, ios 0x16df6c;

    bool init(int) = win 0x4661b0, imac 0x42a690, m1 0x3a56b4;
    void onClearSearch(cocos2d::CCObject* sender) = imac 0x42b9a0;
    void onClose(cocos2d::CCObject* sender);
    void onCredits(cocos2d::CCObject* sender) = m1 0x3a6740;
    void onExitFolder(cocos2d::CCObject* sender) = win 0x468660, imac 0x42b5b0, m1 0x3a64c4;
    void onPage(cocos2d::CCObject* sender) = win 0x4683c0, m1 0x3a656c;
    void onSearch(cocos2d::CCObject* sender) = win 0x468090;
    void onSorting(cocos2d::CCObject* sender) = win 0x467de0, imac 0x42b780, m1 0x3a6694;
    void onToggleCompactMode(cocos2d::CCObject* sender) = win 0x467f80, imac 0x42b7d0, m1 0x3a66dc;
    void onUpdateLibrary(cocos2d::CCObject* sender) = m1 0x3a6630;
    void setupList(SFXSearchResult*) = win 0x467540, imac 0x42bba0, m1 0x3a6ab4;
    TodoReturn setupSFXBrowser();
    void trySetupSFXBrowser() = m1 0x3a6990;
    void updatePageLabel() = win 0x468490, m1 0x3a74e0;

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
    bool init(int id, gd::string name, int folderID, int size, int duration) = win inline, imac 0x580f10, m1 0x4d3920 {
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

    static SFXSearchResult* create(int) = win 0x331fa0, imac 0x582900, m1 0x4d4f80;

    virtual void updateObjects(AudioSortType) = win 0x332020, imac 0x582a20, m1 0x4d507c, ios 0x1605b4;

    SFXFolderObject* getActiveFolder() = win inline {
        return m_folderObject;
    }
    int getSelectedPage(int, int) = win 0x332580;
    bool init(int folderID) = win inline, imac 0x582990, m1 0x4d5004 {
        if (!MusicSearchResult::init((GJSongType)-1)) return false;
        m_folderID = folderID;
        m_audioType = 1;
        return true;
    }
    void setActiveFolder(SFXFolderObject* folder) = win inline, imac 0x5829b0, m1 0x4d501c {
        CC_SAFE_RELEASE(m_folderObject);
        CC_SAFE_RETAIN(folder);
        m_folderObject = folder;
    }

    int m_folderID;
    SFXFolderObject* m_folderObject;
}

[[link(android)]]
class SFXTriggerGameObject : EffectGameObject {
    // virtual ~SFXTriggerGameObject();
    // SFXTriggerGameObject();

    static SFXTriggerGameObject* create(char const*);

    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1be340, m1 0x17c1dc, ios 0x385ed0;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1b8850, m1 0x177b40, ios 0x384d08;

    TodoReturn getSFXRefID();
    TodoReturn getUniqueSFXID();
    bool init(char const*);
}

[[link(android)]]
class ShaderGameObject : EffectGameObject {
    // virtual ~ShaderGameObject();

    static ShaderGameObject* create(char const*);

    virtual void customSetup() = imac 0x18c9a0, m1 0x1537ec, ios 0x373f2c;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x191760, m1 0x1573c4, ios 0x374f24;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x18ca10, m1 0x153844, ios 0x373f7c;

    bool init(char const*);
}

[[link(android), depends(GJShaderState)]]
class ShaderLayer : cocos2d::CCLayer {
    // virtual ~ShaderLayer();

    static ShaderLayer* create();

    virtual bool init() = win 0x4697b0, imac 0x3b7930, m1 0x342afc, ios 0x26cd28;
    virtual void update(float) = win 0x4697b0, imac 0x3b91b0, m1 0x3442d4, ios 0x26e070;
    virtual void visit() = win 0x470580, imac 0x3bee90, m1 0x348f24, ios 0x272320;

    TodoReturn objectPosToShaderPos(cocos2d::CCPoint);
    void performCalculations() = win 0x46fbd0, imac 0x3beb80, m1 0x348c6c;
    TodoReturn preBulgeShader();
    TodoReturn preChromaticGlitchShader();
    TodoReturn preChromaticShader() = imac 0x3bc6a0;
    TodoReturn preColorChangeShader() = imac 0x3be680;
    TodoReturn preCommonShader() = imac 0x3b93c0;
    TodoReturn preGlitchShader() = imac 0x3bc0f0;
    TodoReturn preGrayscaleShader() = imac 0x3be160;
    TodoReturn preHueShiftShader();
    TodoReturn preInvertColorShader();
    TodoReturn preLensCircleShader() = imac 0x3bd4a0;
    TodoReturn preMotionBlurShader();
    cocos2d::CCPoint prepareTargetContainer();
    TodoReturn prePinchShader();
    void prePixelateShader();
    TodoReturn preRadialBlurShader() = imac 0x3bd770;
    TodoReturn preSepiaShader();
    TodoReturn preShockLineShader() = imac 0x3bbbd0;
    TodoReturn preShockWaveShader() = imac 0x3bb510;
    TodoReturn preSplitScreenShader();
    bool resetAllShaders() = win 0x4710f0;
    TodoReturn resetTargetContainer();
    TodoReturn setupBulgeShader() = m1 0x343da0, imac 0x3b8c80;
    TodoReturn setupChromaticGlitchUniforms() = m1 0x343b30, imac 0x3b8a10;
    TodoReturn setupChromaticUniforms() = m1 0x343acc, imac 0x3b89b0;
    TodoReturn setupColorChangeShader() = m1 0x3440ec, imac 0x3b8fc0;
    TodoReturn setupCommonUniforms() = m1 0x3434e0, imac 0x3b83b0;
    TodoReturn setupGlitchUniforms() = m1 0x3439fc, imac 0x3b88e0;
    TodoReturn setupGrayscaleShader() = m1 0x343f80, imac 0x3b8e60;
    TodoReturn setupHueShiftShader() = m1 0x344088, imac 0x3b8f60;
    TodoReturn setupInvertColorShader() = m1 0x344048, imac 0x3b8f20;
    TodoReturn setupLensCircleShader() = m1 0x343c48, imac 0x3b8b30;
    TodoReturn setupMotionBlurShader() = m1 0x343ef8, imac 0x3b8de0;
    TodoReturn setupPinchShader() = m1 0x343e4c, imac 0x3b8d30;
    TodoReturn setupRadialBlurShader() = m1 0x343d3c, imac 0x3b8c20;
    TodoReturn setupSepiaShader() = m1 0x344008, imac 0x3b8ee0;
    void setupShader(bool) = win 0x4698c0, imac 0x3b79f0;
    TodoReturn setupShockLineUniforms() = m1 0x343830, imac 0x3b8710;
    TodoReturn setupShockWaveUniforms() = m1 0x343664, imac 0x3b8540;
    TodoReturn setupSplitScreenShader() = m1 0x344150, imac 0x3b9020;
    void toggleAntiAlias(bool) = win 0x46a4f0;
    bool triggerBulge(float, float, float, float, float, int, int, float, bool);
    TodoReturn triggerChromaticGlitch(bool, float, float, float, float, float, float, float, int, float, bool, bool);
    TodoReturn triggerChromaticX(float, float, int, float, bool) = imac 0x3bc640;
    TodoReturn triggerChromaticY(float, float, int, float, bool);
    bool triggerColorChange(float, float, float, float, float, float, float, int, float);
    bool triggerGlitch(float, float, float, float, float, float, float, bool);
    bool triggerGrayscale(float, float, bool, int, int, float);
    bool triggerHueShift(float, float, int, float);
    bool triggerInvertColor(float, float, float, float, float, bool, bool, bool, int, float);
    bool triggerLensCircle(float, float, float, float, int, int, float, float, int, float, bool);
    bool triggerMotionBlurX(float, float, float, float, int, float, bool, int, int, float, bool, bool);
    bool triggerMotionBlurY(float, float, float, float, int, float, bool, int, int, float, bool, bool);
    bool triggerPinchX(float, float, float, float, float, bool, int, int, float, bool) = imac 0x3bdf10;
    bool triggerPinchY(float, float, float, float, float, bool, int, int, float, bool);
    bool triggerPixelateX(float, float, bool, bool, int, float, bool) = imac 0x3bccf0;
    bool triggerPixelateY(float, float, bool, bool, int, float, bool);
    bool triggerRadialBlur(float, float, float, float, int, float, float, bool, int, int, float, bool);
    bool triggerSepia(float, float, int, float);
    bool triggerShockLine(float, float, bool, bool, bool, bool, float, float, float, float, float, float, int, bool, bool, bool, float, bool, float, int, float) = imac 0x3bb970;
    bool triggerShockWave(float, float, float, float, float, float, float, bool, float, float, float, int, bool, bool, bool, float, float, bool, float, int, float) = imac 0x3bac70;
    bool triggerSplitScreenCols(float, float, int, float) = imac 0x3be870;
    bool triggerSplitScreenRows(float, float, int, float);
    TodoReturn tweenValue(float, float, int, float, int, float);
    TodoReturn tweenValueAuto(float, int, float, int, float) = imac 0x3baef0;
    void updateEffectOffsets(cocos2d::CCPoint);
    void updateMotionBlurSpeedX(float, float);
    void updateMotionBlurSpeedY(float, float);
    TodoReturn updateShockLineCenter(cocos2d::CCPoint) = imac 0x3bbb90;
    TodoReturn updateShockWaveCenter(cocos2d::CCPoint) = imac 0x3bb4d0;
    bool updateZLayer(int, int, bool) = imac 0x3b82d0;

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
    float m_scaleFactor;
    float m_aspectRatio;
    cocos2d::CCSize m_screenSize;
    cocos2d::CCSize m_textureContentSize;
    cocos2d::CCSize m_targetTextureSize;
    // how much bigger is the texture compared to visibleSize
    cocos2d::CCSize m_targetTextureSizeExtra;
    int m_textureScaleUniform;
    int m_textureScaleInvUniform;
    int m_screenAspectUniform;
    int m_screenAspectINVUniform;
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

    static ShardsPage* create() = win inline, m1 0x41ac58, imac 0x4b26e0 {
        auto ret = new ShardsPage();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual bool init() = win 0x471620, imac 0x4b2820, m1 0x41ad58, ios 0x39a9e4;
    virtual void registerWithTouchDispatcher() = win 0x425d0, m1 0x41ca28, imac 0x4b47d0, ios 0x39c3c8;
    virtual void keyBackClicked() = win 0x84650, m1 0x41c9ac, imac 0x4b4760, ios 0x39c34c;
    virtual void show() = win 0x867a0, m1 0x41c824, imac 0x4b45d0, ios 0x39c1d8;

    void FLAlert_Clicked(FLAlertLayer*, bool);
    void goToPage(int) = imac 0x4b4480, m1 0x41c6d8;
    void onClose(cocos2d::CCObject* sender);
    void onIconInfo(cocos2d::CCObject* sender) = win 0x474610, imac 0x4b4410, m1 0x41c660;
    void onSwitchPage(cocos2d::CCObject* sender);

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

    static ShareCommentLayer* create(gd::string title, int charLimit, CommentType type, int ID, gd::string desc) = win 0x474930;

    virtual void registerWithTouchDispatcher() = m1 0x4fd970, imac 0x5c9120, ios 0x1d673c;
    virtual void keyBackClicked() = win 0x476170, m1 0x4fd8c8, imac 0x5c9070, ios 0x1d6694;
    virtual void textInputOpened(CCTextInputNode* textInput) = m1 0x4fdb34, imac 0x5c92d0, ios 0x1d6848 {}
    virtual void textInputClosed(CCTextInputNode* textInput) = win 0x4761c0, imac 0x5c9160, m1 0x4fd9a8, ios 0x1d6774;
    virtual void textChanged(CCTextInputNode* textInput) = win 0x476300, imac 0x5c92f0, m1 0x4fdb3c, ios 0x1d6850;
    virtual void uploadActionFinished(int ID, int unk) = win 0x476550, imac 0x5c9560, m1 0x4fddcc, ios 0x1d6a10;
    virtual void uploadActionFailed(int ID, int unk) = win 0x4765e0, m1 0x4fdf04, imac 0x5c9660, ios 0x1d6aa0;
    virtual void onClosePopup(UploadActionPopup*) = win 0x476690, m1 0x4fe064, imac 0x5c9780, ios 0x1d6b24;

    bool init(gd::string title, int charLimit, CommentType type, int ID, gd::string desc) = win 0x474b40, imac 0x5c7820, m1 0x4fc27c;
    void onClear(cocos2d::CCObject* sender) = win 0x475c20, imac 0x5c8b70, m1 0x4fd404;
    void onClose(cocos2d::CCObject* sender) = win 0x476130;
    void onPercent(cocos2d::CCObject* sender) = win 0x475c90, imac 0x5c89e0, m1 0x4fd26c;
    void onShare(cocos2d::CCObject* sender) = win 0x475d90, imac 0x5c8c60;
    void updateCharCountLabel() = win inline, imac 0x5c9450, m1 0x4fdcb8 {
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
    void updateDescText(gd::string desc) = ios inline, imac 0x5c9040, m1 0x4fd8a0 {
        m_descText = desc;
        this->updateCharCountLabel();
    }
    void updatePercentLabel() = win 0x475cb0, imac 0x5c8ab0, m1 0x4fd33c;

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

    static ShareLevelLayer* create(GJGameLevel* level) = win inline, imac 0x26e170 {
        auto ret = new ShareLevelLayer();
        if (ret->init(level)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual void keyBackClicked() = win 0x478bb0, m1 0x21ae64, imac 0x26fa70, ios 0x275560;

    CCMenuItemSpriteExtra* getStarsButton(int btnID, cocos2d::SEL_MenuHandler callback, cocos2d::CCMenu* menu, float scale) = win inline {
        auto btnSpr = ButtonSprite::create(cocos2d::CCString::createWithFormat("%i", btnID)->getCString(), 20, 0, .5f, true, "bigFont.fnt", "GJ_button_01.png", 30.f);
        auto btn = CCMenuItemSpriteExtra::create(btnSpr, this, callback);
        btn->setScale(scale);
        btn->m_baseScale = scale;
        if (menu) menu->addChild(btn);
        return btn;
    }
    bool init(GJGameLevel* level) = win 0x4769e0, m1 0x2194cc, imac 0x26e2c0;
    void onClose(cocos2d::CCObject* sender) = win 0x84620;
    void onSettings(cocos2d::CCObject* sender) = win 0x477c40;
    void onShare(cocos2d::CCObject* sender) = win 0x477d90, imac 0x26f3c0, m1 0x21a7ec;
    void selectRating(cocos2d::CCObject*) = win 0x477ab0, m1 0x21aae0;
    void setupStars() = win 0x4776a0, m1 0x21a0b8, imac 0x26f010;

    GJGameLevel* m_level;
    int m_starsRequested;
    cocos2d::CCArray* m_starButtons;
    cocos2d::CCSprite* m_difficultySprite;
}

[[link(android)]]
class ShareLevelSettingsLayer : FLAlertLayer, NumberInputDelegate {
    // virtual ~ShareLevelSettingsLayer();
    ShareLevelSettingsLayer() {}

    static ShareLevelSettingsLayer* create(GJGameLevel* level) = win inline, m1 0x21ac5c {
        auto ret = new ShareLevelSettingsLayer();
        if (ret->init(level)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual void keyBackClicked() = win 0x4799c0, m1 0x21c6d0, imac 0x271520, ios 0x276b68;

    bool init(GJGameLevel*) = win 0x478c00, imac 0x270760, m1 0x21b9b8;
    void onClose(cocos2d::CCObject* sender) = win 0x479940;
    void onUnlisted(cocos2d::CCObject* sender) = win 0x479620, imac 0x271250, m1 0x21c440;
    void onUnlistedFriendsOnly(cocos2d::CCObject* sender);
    void updateSettingsState();

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

    static ShareListLayer* create(GJLevelList* list) = win inline, m1 0x2e16e4 {
        auto ret = new ShareListLayer();
        if (ret->init(list)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual void keyBackClicked() = m1 0x2e43a4, imac 0x34fe60, ios 0x24836c;

    bool init(GJLevelList*) = win 0x2f50d0, m1 0x2e2da0, imac 0x34e6b0;
    void onClose(cocos2d::CCObject* sender);
    void onInfo(cocos2d::CCObject* sender) = win 0x2f6270, m1 0x2e4024, imac 0x34faa0;
    void onShare(cocos2d::CCObject* sender) = win 0x2f6530, m1 0x2e3f10, imac 0x34f9a0;
    void onUnlisted(cocos2d::CCObject* sender) = win 0x2f63e0, imac 0x34fb50, m1 0x2e40dc;
    void updateUnlistedF() = m1 0x2e41dc;

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

    static SimplePlayer* create(int) = win 0x271ac0, imac 0x357600, m1 0x2ead40;

    virtual void setOpacity(unsigned char) = win 0x272e70, m1 0x2f092c, imac 0x35d690, ios 0x307a98;
    virtual void setColor(cocos2d::ccColor3B const&) = win 0x272320, imac 0x35d330, m1 0x2f05c0, ios 0x307734;

    void asyncLoadIcon(int, IconType) = m1 0x2f0394;
    void createRobotSprite(int frame) = win inline, imac 0x3576c0, m1 0x2eadfc {
        if (m_robotSprite) return;
        auto robotSprite = GJRobotSprite::create(frame);
        m_robotSprite = robotSprite;
        addChild(robotSprite);
        m_robotSprite->setVisible(false);
    }
    void createSpiderSprite(int) = win 0x272290, imac 0x357720, m1 0x2eae5c;
    void disableCustomGlowColor() {
        m_hasCustomGlowColor = false;
    }

    inline void disableGlowOutline() {
        disableCustomGlowColor();
        m_hasGlowOutline = false;
        updateColors();
    }
    void enableCustomGlowColor(cocos2d::ccColor3B const& color) {
        m_hasCustomGlowColor = true;
        m_glowColor = color;
    }
    void hideAll() = win inline, ios inline, imac 0x35d230, m1 0x2f04ac {
        m_firstLayer->setVisible(false);
        m_secondLayer->setVisible(false);
        if (m_birdDome) m_birdDome->setVisible(false);
        if (m_outlineSprite) m_outlineSprite->setVisible(false);
        if (m_detailSprite) m_detailSprite->setVisible(false);
        if (m_robotSprite) m_robotSprite->setVisible(false);
        if (m_spiderSprite) m_spiderSprite->setVisible(false);
    }
    void hideSecondary() = win inline, imac 0x35d3c0, m1 0x2f0650 {
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
    void iconFinishedLoading(int, IconType) = m1 0x2f0570;
    bool init(int) = win 0x271bb0, m1 0x2efd98, imac 0x35ca00;
    void setColors(cocos2d::ccColor3B const& color1, cocos2d::ccColor3B const& color2) = win inline, ios inline, imac 0x35b770, m1 0x2eec44 {
        m_firstLayer->setColor(color1);
        m_secondLayer->setColor(color2);
        updateColors();
    }
    void setFrames(char const*, char const*, char const*, char const*, char const*) = win 0x272c40, imac 0x35d470, m1 0x2f0704;

    inline void setGlowOutline(cocos2d::ccColor3B color) {
        enableCustomGlowColor(color);
        m_hasGlowOutline = true;
        updateColors();
    }
    void setSecondColor(cocos2d::ccColor3B const& color) {
        m_secondLayer->setColor(color);
        updateColors();
    }
    void updateColors() = win 0x272350, imac 0x35b230, m1 0x2ee780;
    void updatePlayerFrame(int, IconType) = win 0x272710, imac 0x3578d0, m1 0x2eb020;

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

    virtual bool init() = imac 0x27c670, m1 0x2265e8;
    virtual void draw() = m1 0x226cac, imac 0x27cda0;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x226ce8, imac 0x27cdd0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x226d08, imac 0x27ce30;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x226cf8, imac 0x27cdf0;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x226d00, imac 0x27ce10;
    virtual void registerWithTouchDispatcher() = m1 0x2269cc, imac 0x27caa0;
    virtual void keyBackClicked() = m1 0x226a04, imac 0x27cae0;
    virtual void customSetup() = m1 0x226968, imac 0x27ca20;
    virtual TodoReturn enterLayer() = m1 0x226994, imac 0x27ca70;
    virtual TodoReturn exitLayer(cocos2d::CCObject*) = imac 0x27cb20, m1 0x226a28;
    virtual void showLayer(bool) = imac 0x27cb70, m1 0x226a8c;
    virtual TodoReturn hideLayer(bool) = imac 0x27cc60, m1 0x226b7c;
    virtual TodoReturn layerVisible() = m1 0x226c4c, imac 0x27cd40;
    virtual void layerHidden() = m1 0x226c5c, imac 0x27cd60;
    virtual void enterAnimFinished() = m1 0x226c48, imac 0x27cd30;
    virtual void disableUI() = m1 0x22696c, imac 0x27ca30;
    virtual void enableUI() = m1 0x226980, imac 0x27ca50;
}

[[link(android), depends(SliderTouchLogic)]]
class Slider : cocos2d::CCLayer {
    // virtual ~Slider();

    static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler, char const* bar, char const* groove, char const* thumb, char const* thumbSel, float scale) = win 0x71720, imac 0x2f0420, m1 0x28a3b0;
    static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler) = imac 0x2f01e0, m1 0x28a198 {
        return Slider::create(target, handler, 1.f);
    }
    static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler, float scale) = imac 0x2f0300, m1 0x28a29c {
        return Slider::create(target, handler, "sliderBar.png", "slidergroove.png", "sliderthumb.png", "sliderthumbsel.png", scale);
    }

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x71d10, m1 0x28aa38, imac 0x2f0b80, ios 0x2ef61c;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x71d50, m1 0x28aa78, imac 0x2f0c00, ios 0x2ef65c;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x71d30, m1 0x28aa58, imac 0x2f0bc0, ios 0x2ef63c;

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
    bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float) = win 0x71850, imac 0x2f0540, m1 0x28a4c0;
    void setBarVisibility(bool visibility) {
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
    void setValue(float val) = win 0x71c00, imac 0x2f0880, m1 0x28a7d8;
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

    SliderTouchLogic* m_touchLogic;
    cocos2d::CCSprite* m_sliderBar;
    cocos2d::CCSprite* m_groove;
    float m_width;
    float m_height;
    SliderDelegate* m_delegate;
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

    float getValue() = win 0x712b0, imac 0x2ef4f0, m1 0x2895e4;
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
    void setValue(float) = win 0x71340, imac 0x2ef590, m1 0x289668;

    float m_length;
    bool m_vertical;
}

[[link(android), depends(SliderThumb)]]
class SliderTouchLogic : cocos2d::CCMenu {
    // virtual ~SliderTouchLogic();

    static SliderTouchLogic* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float) = imac 0x2ef7b0;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x714b0, m1 0x289cc8, imac 0x2efc70, ios 0x2eeeb0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x715a0, imac 0x2efea0, m1 0x289edc, ios 0x2eefa8;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x71560, m1 0x289e2c, imac 0x2efde0, ios 0x2eef58;
    virtual void registerWithTouchDispatcher() = m1 0x28a160, imac 0x2f01a0, ios 0x2ef108;

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

    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1a0680, m1 0x1631f0, ios 0x379920;
    virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x162cf4, imac 0x1a00c0, ios 0x37978c;

    bool init(char const*);
    TodoReturn updateSmartFrame();

    bool m_property157;
    PAD = android32 0x5;
}

[[link(android)]]
class SmartTemplateCell : TableViewCell {
    // virtual ~SmartTemplateCell();
    SmartTemplateCell(char const*, float, float);

    virtual bool init() = m1 0x1f57a0, imac 0x246ed0, ios 0x1158f0;
    virtual void draw() = imac 0x246fa0, m1 0x1f585c, ios 0x1159a0;

    void loadFromObject(GJSmartTemplate*) = win 0xbd8c0, imac 0x23b400;
    void onClick(cocos2d::CCObject* sender);
    void updateBGColor(int) = win 0xbdcb0;
}

[[link(android)]]
class SongCell : TableViewCell {
    // virtual ~SongCell();
    SongCell(char const*, float, float);

    virtual bool init() = m1 0x1f13c8, imac 0x241b80, ios 0x112de8;
    virtual void draw() = imac 0x241bc0, m1 0x1f13f8, ios 0x112e18;

    void loadFromObject(SongObject*) = win 0xb3990, imac 0x235330;
    void onClick(cocos2d::CCObject* sender);
    TodoReturn updateBGColor(int);
}

[[link(android)]]
class SongInfoLayer : FLAlertLayer {
    // virtual ~SongInfoLayer();

    static SongInfoLayer* create(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string, int, gd::string, int);
    static SongInfoLayer* create(int);

    virtual void keyBackClicked() = m1 0x51be3c, imac 0x5ea640, ios 0x3a1940;

    bool init(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string, int, gd::string, int) = win 0x47a450, m1 0x51aa04, imac 0x5e9240;
    void onBPM(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    void onDownload(cocos2d::CCObject* sender);
    void onFB(cocos2d::CCObject* sender);
    void onMenuMusic(cocos2d::CCObject* sender);
    void onNG(cocos2d::CCObject* sender);
    void onPracticeMusic(cocos2d::CCObject* sender);
    void onYT(cocos2d::CCObject* sender);
    void showCustomMusicUnlockInfo() = m1 0x51bbd4, imac 0x5ea430;

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
    static SongInfoObject* create(int songID, gd::string songName, gd::string artistName, int artistID, float filesize, gd::string youtubeVideo, gd::string youtubeChannel, gd::string url, int nongType, gd::string extraArtistIDs, bool isNew, int newType, int priority) = win 0x3300c0;
    static SongInfoObject* create(int) = win 0x32ef70, imac 0x57f2e0, m1 0x4d21ac;

    virtual void encodeWithCoder(DS_Dictionary*) = win 0x3309a0, m1 0x4d2d3c, imac 0x5800d0, ios 0x15f0b0;
    virtual bool canEncode() = m1 0x4d2ed0, imac 0x580290, ios 0x15f244;

    TodoReturn addTags(gd::string);
    TodoReturn containsTag(int);
    TodoReturn createWithCoder(DS_Dictionary*) = win 0x330690, m1 0x4d2740;
    TodoReturn getArtistNames(int);
    TodoReturn getTagsString(bool);
    bool init(int songID, gd::string songName, gd::string artistName, int artistID, float filesize, gd::string youtubeVideo, gd::string youtubeChannel, gd::string url, int nongType, gd::string extraArtistIDs, bool isNew, int newType, int priority);
    TodoReturn updateArtists(gd::string);

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

    virtual void keyBackClicked() = win 0xc4920, imac 0x205a20, m1 0x1baab4, ios 0x1491e0;

    bool init(CustomSongDelegate*) = m1 0x1b9c60;
    void onClose(cocos2d::CCObject* sender);
    void onFadeIn(cocos2d::CCObject* sender);
    void onFadeOut(cocos2d::CCObject* sender);
    void onInfo(cocos2d::CCObject* sender) = m1 0x1ba820, imac 0x2057b0;
    void onPlayback(cocos2d::CCObject* sender);
    void onSongPersistent(cocos2d::CCObject* sender);
    void updatePlaybackBtn();
}

[[link(android)]]
class SongPlaybackDelegate {
    virtual void onPlayback(SongInfoObject*);
}

[[link(android)]]
class SongSelectNode : cocos2d::CCNode, FLAlertLayerProtocol, CustomSongLayerDelegate, CustomSongDelegate {
    // virtual ~SongSelectNode();

    static SongSelectNode* create(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool) = win 0xc5f80, imac 0x206f60, m1 0x1bbf60;

    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0xc6fe0, imac 0x207db0, m1 0x1bcd40, ios 0x14b1a4;
    virtual void customSongLayerClosed() = win 0xc7070, imac 0x207e90, m1 0x1bce28, ios 0x14b220;
    virtual void songIDChanged(int) = win 0xc70a0, imac 0x207ef0, m1 0x1bce90, ios 0x14b288;
    virtual int getActiveSongID() = win 0xc70b0, m1 0x1bceb0, imac 0x207f20, ios 0x14b2a8;
    virtual gd::string getSongFileName() = win 0xc70c0, m1 0x1bcec0, imac 0x207f40, ios 0x14b2b8;
    virtual LevelSettingsObject* getLevelSettings() = win 0xc7180, m1 0x1bd008, imac 0x208090, ios 0x14b364;

    void audioNext(cocos2d::CCObject* sender) = win 0xc6ab0, imac 0x2079d0, m1 0x1bc9d4;
    void audioPrevious(cocos2d::CCObject* sender) = win 0xc6af0, imac 0x207990, m1 0x1bc9a0;
    bool init(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool) = win 0xc60b0, imac 0x207080, m1 0x1bc070;
    void onOpenCustomSong(cocos2d::CCObject* sender);
    void onSongMode(cocos2d::CCObject* sender) = imac 0x207a10;
    void onSongMode(int) = win 0xc6b50, imac 0x207ae0, m1 0x1bcabc;
    void selectSong(int id) = win inline, imac 0x207ab0 {
        auto songID = id;
        if (songID > 21) songID = 21;
        m_songChanged = true;
        if (songID < 0) songID = 0;
        m_selectedSongID = songID;
        this->updateAudioLabel();
    }
    void showCustomSongSelect() = win 0xc6e80, imac 0x207d70, m1 0x1bcd0c;
    void updateAudioLabel() = win 0xc69c0, imac 0x2078a0, m1 0x1bc888;
    void updateWidgetVisibility() = win 0xc6d70, imac 0x207ce0, m1 0x1bcc84;

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

    static SongsLayer* create() = win 0x47bf80, m1 0x45b7a8, imac 0x4fba10;

    virtual void customSetup() = win 0x47c050, m1 0x45b920, imac 0x4fbc40, ios 0x346974;
}

[[link(android)]]
class SongTriggerGameObject : SFXTriggerGameObject {
    // virtual ~SongTriggerGameObject();

    static SongTriggerGameObject* create(char const*);

    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1bfaf0, m1 0x17d9bc, ios 0x386bf0;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1bf1f0, m1 0x17d250, ios 0x3869a8;

    bool init(char const*);
}

[[link(android)]]
class SpawnParticleGameObject : EffectGameObject {
    // virtual ~SpawnParticleGameObject();

    static SpawnParticleGameObject* create();

    virtual bool init() = m1 0x1966f0, imac 0x1dde40, ios 0x390ee8;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1df8e0, m1 0x197cb4, ios 0x391524;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1dde90, m1 0x196740, ios 0x390f38;
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

    virtual bool init() = win 0x4a0530, m1 0x17f0fc, imac 0x1c1560, ios 0x387770;
    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x4a06a0, imac 0x1c1900, m1 0x17f408, ios 0x3879b8;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = win 0x4a0a10, imac 0x1c1de0, m1 0x17f980, ios 0x387d78;
    virtual gd::string getSaveString(GJBaseGameLayer*) = win 0x4a0d50, imac 0x1c2240, m1 0x17fd34, ios 0x3880cc;

    void addRemap(int, int);
    void changeRemap(int, int, bool);
    void removeRemap(int, int);
    void updateRemapKeys(gd::vector<int> const&) = win 0x4a05a0;

    gd::vector<ChanceObject> m_remapObjects;
    int m_remapKey;
    gd::vector<int> m_remapKeys;
    double m_unk778;
    float m_spawnDelay;
    float m_delayRange;
    bool m_resetRemap;
}

[[link(android)]]
class SpecialAnimGameObject : EnhancedGameObject {
    // virtual ~SpecialAnimGameObject();

    static SpecialAnimGameObject* create(char const*);

    virtual void resetObject() = m1 0x165528, imac 0x1a2cd0, ios 0x37b1ac;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = m1 0x165534, imac 0x1a2cf0, ios 0x37b1b8;
    virtual gd::string getSaveString(GJBaseGameLayer*) = m1 0x165594, imac 0x1a2d50, ios 0x37b218;
    virtual void updateMainColor(cocos2d::ccColor3B const&) = m1 0x165508, imac 0x1a2c90, ios 0x37b18c;
    virtual void updateSecondaryColor(cocos2d::ccColor3B const&) = imac 0x1a2cb0, m1 0x165518, ios 0x37b19c;
    virtual void updateSyncedAnimation(float, int) = imac 0x24b7d0, m1 0x1f8eac, ios 0x3487cc;

    bool init(char const*);
}

[[link(android)]]
class SpriteAnimationManager : cocos2d::CCNode {
    // virtual ~SpriteAnimationManager();

    TodoReturn animationFinished();
    TodoReturn callAnimationFinished();
    TodoReturn createAnimations(gd::string) = m1 0x62a3ac;
    TodoReturn createWithOwner(CCAnimatedSprite*, gd::string);
    TodoReturn doCleanup();
    TodoReturn executeAnimation(gd::string);
    TodoReturn finishAnimation(gd::string);
    TodoReturn getAnimType(gd::string);
    TodoReturn getPrio(gd::string);
    TodoReturn initWithOwner(CCAnimatedSprite*, gd::string);
    TodoReturn loadAnimations(gd::string) = m1 0x62b214;
    TodoReturn offsetCurrentAnimation(float) = imac 0x70e0d0;
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
    TodoReturn updateAnimationSpeed(float) = imac 0x70cf30;

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
    SpriteDescription() {
        m_position = cocos2d::CCPointMake(0.f, 0.f);
        m_scale = cocos2d::CCPointMake(0.f, 0.f);
        m_flipped = cocos2d::CCPointMake(0.f, 0.f);
        m_rotation = 0;
        m_zValue = 0;
        m_tag = 0;
        m_usesCustomTag = false;
        m_texture = nullptr;
    }

    static SpriteDescription* createDescription(cocos2d::CCDictionary* dict) = win inline, m1 0x4ac3e8, imac 0x555800 {
        auto ret = new SpriteDescription();
        if (ret->initDescription(dict)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static SpriteDescription* createDescription(DS_Dictionary* dict) = win inline, m1 0x4acb54, imac 0x555f80 {
        auto ret = new SpriteDescription();
        if (ret->initDescription(dict)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    bool initDescription(cocos2d::CCDictionary* dict) = win inline, m1 0x4acfc4, imac 0x5563d0 {
        m_position = cocos2d::CCPointFromString(dict->valueForKey("position")->getCString());
        m_scale = cocos2d::CCPointFromString(dict->valueForKey("scale")->getCString());
        m_flipped = cocos2d::CCPointFromString(dict->valueForKey("flipped")->getCString());
        m_rotation = dict->valueForKey("rotation")->floatValue();
        m_zValue = dict->valueForKey("zValue")->intValue();
        m_tag = dict->valueForKey("tag")->intValue();
        m_usesCustomTag = dict->valueForKey("usesCustomTag")->boolValue();
        if (m_usesCustomTag) {
            auto frameName = dict->valueForKey("texture")->getCString();
            m_texture = cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()->spriteFrameByName(frameName);
            m_texture->retain();
            m_texture->setFrameName(frameName);
        }
        return true;
    }
    bool initDescription(DS_Dictionary* dict) = win 0x41cf0, m1 0x4acd18, imac 0x556150;

    cocos2d::CCPoint m_position;
    cocos2d::CCPoint m_scale;
    cocos2d::CCPoint m_flipped;
    float m_rotation;
    int m_zValue;
    int m_tag;
    bool m_usesCustomTag;
    cocos2d::CCSpriteFrame* m_texture;
}

[[link(android)]]
class SpritePartDelegate {
    virtual void displayFrameChanged(cocos2d::CCObject*, gd::string);
}

[[link(android)]]
class StarInfoPopup : FLAlertLayer {
    // virtual ~StarInfoPopup();

    static StarInfoPopup* create(int, int, int, int, int, int, int, int, int, bool) = win 0x3b0cb0, imac 0x7ac620, m1 0x6bdd58;
    static StarInfoPopup* createFromString(gd::string) = win 0x3b0720, m1 0x6baa6c, imac 0x7a9160;
    static StarInfoPopup* createFromStringMoons(gd::string) = win 0x3b0a00, m1 0x6bacd4, imac 0x7a93f0;

    virtual void keyBackClicked() = m1 0x6be87c, imac 0x7ad0e0, ios 0x1a1584;

    bool init(int, int, int, int, int, int, int, int, int, bool) = win 0x3b0df0, imac 0x7ac7b0, m1 0x6bdeb0;
    void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class StartPosObject : EffectGameObject {
    // virtual ~StartPosObject();

    static StartPosObject* create();

    virtual bool init() = m1 0x16d800, imac 0x1ac6e0, ios 0x380370;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1ac830, m1 0x16d93c, ios 0x38046c;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1ac840, m1 0x16d940, ios 0x380470;

    TodoReturn loadSettingsFromString(gd::string);
    void setSettings(LevelSettingsObject*);

    LevelSettingsObject* m_startSettings;
}

[[link(android)]]
class StatsCell : TableViewCell {
    // virtual ~StatsCell();
    StatsCell(char const*, float, float);

    virtual bool init() = m1 0x1f05d8, imac 0x240e40, ios 0x112528;
    virtual void draw() = win 0xad710, imac 0x241930, m1 0x1f1224, ios 0x112c98;

    TodoReturn getTitleFromKey(char const*) = m1 0x1f05e0, imac 0x240e50;
    void loadFromObject(StatsObject*) = win 0xb2630, imac 0x235030, m1 0x1e50c0;
    void updateBGColor(int);
}

[[link(android)]]
class StatsLayer : GJDropDownLayer {
    // virtual ~StatsLayer();

    static StatsLayer* create() = m1 0x8e198, imac 0x9b220;

    virtual void customSetup() = m1 0x8e310, imac 0x9b450, ios 0x241bac;
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

    static SupportLayer* create() = m1 0x314fd0, imac 0x3851e0;

    virtual void customSetup() = imac 0x385810, m1 0x31546c, ios 0x194c28;
    virtual void uploadActionFinished(int, int) = win 0x4b0fb0, imac 0x3876b0, m1 0x317218, ios 0x1964b8;
    virtual void uploadActionFailed(int, int) = win 0x4b10f0, imac 0x387800, m1 0x31736c, ios 0x1965a0;
    virtual void onClosePopup(UploadActionPopup*) = win 0x4b0f70, m1 0x3171c8, imac 0x387660, ios 0x196468;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x4b1d70, imac 0x387b20, m1 0x3176c4, ios 0x1967b4;

    TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCArray*);
    TodoReturn exitLayer();
    void onCocos2d(cocos2d::CCObject* sender) = imac 0x387630;
    void onEmail(cocos2d::CCObject* sender) = m1 0x316600, imac 0x386af0;
    void onGetReward(cocos2d::CCObject* sender);
    void onLinks(cocos2d::CCObject* sender) = m1 0x315d64, imac 0x386110;
    void onLowDetail(cocos2d::CCObject* sender) = win 0x4b1180, m1 0x316f08, imac 0x3873b0;
    void onPrivacy(cocos2d::CCObject* sender);
    void onRequestAccess(cocos2d::CCObject* sender) = win 0x4b0d30, m1 0x317014, imac 0x3874c0;
    void onRobTop(cocos2d::CCObject* sender);
    void onSFX(cocos2d::CCObject* sender) = m1 0x316714, imac 0x386c10;
    void onTOS(cocos2d::CCObject* sender);
    TodoReturn sendSupportMail() = m1 0x317494, imac 0x387900;
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

    static TableView* create(TableViewDelegate* tvd, TableViewDataSource* tvds, TableViewCellDelegate* tvcd, cocos2d::CCRect rect) = win inline, imac 0x609ab0, m1 0x536c94 {
        auto ret = new TableView(rect);
        ret->m_tableDelegate = tvd;
        ret->m_dataSource = tvds;
        ret->m_cellDelegate = tvcd;
        ret->setPosition({ 0.f, 0.f });
        ret->autorelease();
        return ret;
    }

    virtual void onEnter() = win inline, m1 0x537ea4, imac 0x60ae40, ios 0x2ff6c4 { cocos2d::CCLayer::onEnter(); }
    virtual void onExit() = win inline, m1 0x537ea8, imac 0x60ae50, ios 0x2ff6c8 { cocos2d::CCLayer::onExit(); }
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x75250, m1 0x538024, imac 0x60aff0, ios 0x2ff804;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x754e0, m1 0x538a88, imac 0x60bb20, ios 0x2fffbc;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x75400, m1 0x538840, imac 0x60b8e0, ios 0x2ffe48;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x75460, imac 0x60ba60, m1 0x5389ac, ios 0x2fff5c;
    virtual void registerWithTouchDispatcher() = win 0x3e5a0, m1 0x537eac, imac 0x60ae60, ios 0x2ff6cc;
    virtual void scrollWheel(float, float) = win 0x75a90, imac 0x60bc10, m1 0x538b7c, ios 0x300084;
    virtual void scrllViewWillBeginDecelerating(CCScrollLayerExt*) = m1 0x5396d8, imac 0x60c810, ios 0x30098c {}
    virtual void scrollViewDidEndDecelerating(CCScrollLayerExt*) = m1 0x5396e0, imac 0x60c830, ios 0x300994 {}
    virtual void scrollViewTouchMoving(CCScrollLayerExt*) = m1 0x5396e8, imac 0x60c850, ios 0x30099c {}
    virtual void scrollViewDidEndMoving(CCScrollLayerExt*) = m1 0x5396f0, imac 0x60c870, ios 0x3009a4 {}

    void cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x60af10, m1 0x537f48;
    TodoReturn cellForRowAtIndexPath(CCIndexPath&);
    TodoReturn cellForTouch(cocos2d::CCTouch*);
    TodoReturn checkBoundaryOfCell(cocos2d::CCPoint&, float);
    TodoReturn checkBoundaryOfCell(TableViewCell*);
    TodoReturn checkBoundaryOfContent(float);
    TodoReturn checkFirstCell(TableViewCell*);
    TodoReturn checkLastCell(TableViewCell*);
    TodoReturn claimTouch(cocos2d::CCTouch*);
    void deleteTableViewCell(TableViewCell*) = imac 0x60a560, m1 0x537644;
    TodoReturn dequeueReusableCellWithIdentifier(char const*);
    TodoReturn initTableViewCells() = m1 0x53716c, imac 0x60a040;
    bool isDuplicateIndexPath(CCIndexPath&);
    bool isDuplicateInVisibleCellArray(CCIndexPath*);
    void reloadData() = win 0x74d00, imac 0x60a890, m1 0x53794c;
    TodoReturn removeIndexPathFromPathAddedArray(CCIndexPath&);
    TodoReturn scrollToIndexPath(CCIndexPath&);
    TodoReturn touchFinish(cocos2d::CCTouch*);

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
    TableViewCell(char const*, float, float) = win 0x76ad0, imac 0x610480, m1 0x53c9ec;

    TodoReturn updateVisibility() = imac 0x610a20;

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
    virtual int getCellDelegateType();
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

    static TeleportPortalObject* create(char const*, bool) = win 0x499670, imac 0x1ac900, m1 0x16da24;

    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x1acca0, m1 0x16dd84, ios 0x380764;
    virtual void setRotation(float) = imac 0x1acd50, m1 0x16de2c, ios 0x38080c;
    virtual void setStartPos(cocos2d::CCPoint) = imac 0x1acb00, m1 0x16dbec, ios 0x3805d8;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1af440, m1 0x16fd10, ios 0x381168;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1acea0, m1 0x16df90, ios 0x380960;
    virtual void addToGroup(int) = imac 0x1acde0, m1 0x16dea8, ios 0x380888;
    virtual void removeFromGroup(int) = imac 0x1ace40, m1 0x16df2c, ios 0x3808fc;
    virtual void setRotation2(float) = m1 0x16de9c, imac 0x1acdb0, ios 0x38087c;
    virtual void addToGroup2(int) = m1 0x16dea0, imac 0x1acdc0, ios 0x380880;
    virtual void removeFromGroup2(int) = m1 0x16dea4, imac 0x1acdd0, ios 0x380884;

    TodoReturn getTeleportXOff(cocos2d::CCNode*) = win 0x4998f0, imac 0x1acbd0;
    bool init(char const*, bool);
    void setPositionOverride(cocos2d::CCPoint);
    void setStartPosOverride(cocos2d::CCPoint);

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

    static TextAlertPopup* create(gd::string text, float delay, float scale, int opacity, gd::string font) = win 0x2964a0, m1 0x2437f0, imac 0x29bfb0;

    bool init(gd::string text, float delay, float scale, int opacity, gd::string font) = win 0x2965d0, imac 0x29c130, m1 0x243988;
    void setAlertPosition(cocos2d::CCPoint windowOffset, cocos2d::CCPoint pointOffset) = win inline, imac 0x29c480, m1 0x243cc8 {
        if (!m_label) return;

        auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
        this->setPosition({
            windowOffset.x * winSize.width + m_width / 2 + pointOffset.x,
            windowOffset.y * winSize.height + m_height / 2 + pointOffset.y
        });
    }
    void setLabelColor(cocos2d::ccColor3B color) = win inline, imac 0x29c440, m1 0x243c8c {
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

    static TextArea* create(gd::string str, char const* font, float scale, float width, cocos2d::CCPoint anchor, float lineHeight, bool disableColor) = win 0x76e50, m1 0x2a4014, imac 0x30d440;

    virtual void update(float) = win 0x776b0, imac 0x30e100, m1 0x2a4c5c, ios 0xf9ff4;
    virtual void draw() = m1 0x2a4c58, imac 0x30e0f0, ios 0xf9ff0 {}
    virtual void setOpacity(unsigned char) = win 0x775c0, imac 0x30df50, m1 0x2a4ab4, ios 0xf9e54;

    void colorAllCharactersTo(cocos2d::ccColor3B) = win 0x77600, imac 0x30dfc0, m1 0x2a4b20;
    void colorAllLabels(cocos2d::ccColor3B) = imac 0x30e070, m1 0x2a4be4;
    void fadeIn(float, bool) = m1 0x2a47e4;
    void fadeInCharacters(float, float, bool, TextFadeInStyle) = m1 0x2a4db0;
    void fadeOut(float) = m1 0x2a49b4;
    void fadeOutAndRemove() = imac 0x30ddf0, m1 0x2a4944;
    void finishFade() = win 0x775a0, imac 0x30ddc0, m1 0x2a4920;
    void hideAll();
    bool init(gd::string str, char const* font, float scale, float width, cocos2d::CCPoint anchor, float lineHeight, bool disableColor) = m1 0x2a41bc, imac 0x30d5f0;
    void setIgnoreColorCode(bool) = imac 0x30da00;
    void setString(gd::string) = win 0x77090, m1 0x2a42b4, imac 0x30d6f0;
    void showAll();
    void stopAllCharacterActions() = win 0x774e0, imac 0x30daf0;

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
    virtual void fadeInTextFinished(TextArea*);
}

[[link(android)]]
class TextGameObject : GameObject {
    // virtual ~TextGameObject();

    static TextGameObject* create(cocos2d::CCTexture2D*) = win 0x1a4530;

    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x5b92a0, m1 0x4ef584, ios 0x264288;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x5b93d0, m1 0x4ef6f0, ios 0x2643c8;
    virtual void updateTextKerning(int) = m1 0x4ef2d0, imac 0x5b9020, ios 0x263fd0;
    virtual int getTextKerning() = m1 0x4efef4, imac 0x5b9d90, ios 0x264718;

    bool init(cocos2d::CCTexture2D*);
    void updateTextObject(gd::string, bool) = win 0x1a4620, imac 0x5b9030;

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

    static TextStyleSection* create(int, int, TextStyleType) = win 0x6d810, imac 0x476620;

    static TextStyleSection* createColoredSection(cocos2d::ccColor3B p0, int p1, int p2) = win inline, imac 0x476290 {
        auto ret = TextStyleSection::create(p1, p2, TextStyleType::Colored);
        ret->m_color = p0;
        return ret;
    }
    static TextStyleSection* createDelaySection(int p0, float p1) = win inline, imac 0x476420 {
        auto ret = TextStyleSection::create(p0, -1, TextStyleType::Delayed);
        ret->m_delay = p1;
        return ret;
    }
    static TextStyleSection* createInstantSection(int p0, int p1, float p2) = win inline, imac 0x476310, m1 0x3e4cd8 {
        auto ret = TextStyleSection::create(p0, p1, TextStyleType::Instant);
        ret->m_instantTime = p2;
        return ret;
    }
    static TextStyleSection* createShakeSection(int p0, int p1, int p2, int p3) = win inline, imac 0x476390 {
        auto ret = TextStyleSection::create(p0, p1, TextStyleType::Shake);
        ret->m_shakeIntensity = p2;
        ret->m_shakesPerSecond = p3;
        return ret;
    }
    bool init(int p0, int p1, TextStyleType p2) = win inline, imac 0x476690, m1 0x3e5004 {
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

    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = imac 0x1d1230, m1 0x18bdc8, ios 0x38cf2c;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1d3110, m1 0x18d660, ios 0x38d63c;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1d1340, m1 0x18bed0, ios 0x38cfdc;

    bool init(char const*);
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

    virtual bool init() = win 0x4b2030, m1 0x294b98, imac 0x2fc850, ios 0x1a79b8;
    virtual void registerWithTouchDispatcher() = m1 0x2954d8, imac 0x2fd200, ios 0x1a8200;
    virtual void keyBackClicked() = win 0x84650, m1 0x29545c, imac 0x2fd190, ios 0x1a8184;
    virtual void show() = m1 0x295fb0, imac 0x2fdd70, ios 0x1a8844;
    virtual void loadListFinished(cocos2d::CCArray*, char const*) = win 0x4b27d0, imac 0x2fd250, m1 0x295518, ios 0x1a8238;
    virtual void loadListFailed(char const*) = win 0x4b2830, m1 0x2955dc, imac 0x2fd310, ios 0x1a829c;
    virtual void setupPageInfo(gd::string, char const*) = win 0x4b2990, imac 0x2fd350, m1 0x295604, ios 0x1a82c4;

    bool isCorrect(char const*);
    void loadPage(int) = win 0x4b2b70, imac 0x2fd970, m1 0x295bc0;
    void onClose(cocos2d::CCObject* sender) = win 0x84620;
    void onNextPage(cocos2d::CCObject* sender) = win 0x4b2fe0;
    void onPrevPage(cocos2d::CCObject* sender) = win 0x4b2ff0;
    void setupLeaderboard(cocos2d::CCArray*) = win 0x4b2840, m1 0x295330;
    void updateLevelsLabel();

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

    virtual bool init() = win 0x296930, m1 0x243ea8, imac 0x29c720, ios 0x2e0414;
    virtual void keyBackClicked() = m1 0x2444f4, imac 0x29cda0, ios 0x2e0a24 {}

    void onClose(cocos2d::CCObject* sender);
    void onPrivacy(cocos2d::CCObject* sender);
    void onTOS(cocos2d::CCObject* sender);
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

    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = imac 0x1c7c90, m1 0x1847d4, ios 0x38a2c0;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1c7cc0, m1 0x1847f8, ios 0x38a2e4;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1c80a0, m1 0x184ac0, ios 0x38a574;

    bool init(char const*);
}

[[link(android)]]
class TriggerControlGameObject : EffectGameObject {
    // virtual ~TriggerControlGameObject();

    static TriggerControlGameObject* create(char const*);

    virtual void triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = imac 0x1ddd40, m1 0x1965fc, ios 0x390e54;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1ddaf0, m1 0x1963a4, ios 0x390c9c;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1dd1f0, m1 0x195c04, ios 0x390a54;

    bool init(char const*);
    TodoReturn updateTriggerControlFrame() = m1 0x196494, imac 0x1ddbe0;

    gd::string m_unkString;
    // The type of a stop trigger for example
    int m_customTriggerValue;
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

    virtual bool init() = imac 0x4c9280, m1 0x42e988, ios 0x1bf188, win 0x4b31c0;
    virtual void keyBackClicked() = win 0x4b3de0, m1 0x42f414, imac 0x4c9cc0, ios 0x1bfa70;

    void loadPage(int) = m1 0x42ef60, imac 0x4c9800;
    void onClose(cocos2d::CCObject* sender);
    void onNext(cocos2d::CCObject* sender);
    void removeTutorialTexture();
}

[[link(android)]]
class TutorialPopup : FLAlertLayer {
    // virtual ~TutorialPopup();

    static TutorialPopup* create(gd::string);

    virtual void keyBackClicked() = m1 0x4f1a04, imac 0x5bbe00;
    virtual void show() = m1 0x4f1ad8, imac 0x5bbed0;

    TodoReturn animateMenu();
    TodoReturn closeTutorial(cocos2d::CCObject*);
    bool init(gd::string) = m1 0x4f17a0, imac 0x5bbba0;
    TodoReturn registerForCallback(cocos2d::SEL_MenuHandler, cocos2d::CCNode*);
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

    static UILayer* create(GJBaseGameLayer*) = imac 0x4b4870, m1 0x41cac4;

    static UILayer* get() {
        if (auto gjbgl = GJBaseGameLayer::get()) return gjbgl->m_uiLayer;
        return nullptr;
    }

    virtual void draw() = m1 0x41e594, imac 0x4b6710, ios 0x4dcc8 {}
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x4b55a0, m1 0x41e5e4, imac 0x4b6760, ios 0x4dd08;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x4b5730, imac 0x4b6940, m1 0x41e840, ios 0x4df14;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x4b5750, imac 0x4b6a40, m1 0x41e974, ios 0x4df48;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x41f284, imac 0x4b7280, ios 0x4e4c4;
    virtual void registerWithTouchDispatcher() = m1 0x41f2a0, imac 0x4b72c0, ios 0x4e4e0;
    virtual void keyBackClicked() = win 0x4b5300, m1 0x41e1a8, imac 0x4b62f0, ios 0x4db78;
    virtual void keyDown(cocos2d::enumKeyCodes) = win 0x4b52e0, imac 0x4b6250, m1 0x41e168, ios 0x4db38;
    virtual void keyUp(cocos2d::enumKeyCodes) = win 0x4b52f0, imac 0x4b62a0, m1 0x41e188, ios 0x4db58;

    void disableMenu() = imac 0x4b5c30;
    void doPause() = imac 0x4b63b0;
    TodoReturn editorPlaytest(bool) = imac 0x4b5c50;
    void enableEditorMode();
    TodoReturn enableMenu();
    void handleKeypress(cocos2d::enumKeyCodes, bool) = win 0x4b4c40, imac 0x4b5d70, m1 0x41de7c;
    bool init(GJBaseGameLayer*) = win 0x4b3f20, m1 0x41cbc4, imac 0x4b49b0;
    bool isJumpButtonPressed(bool) = imac 0x4b6720, m1 0x41e598;
    void onCheck(cocos2d::CCObject* sender);
    void onDeleteCheck(cocos2d::CCObject* sender);
    void onPause(cocos2d::CCObject* sender) = win 0x4b53c0, m1 0x41d39c, imac 0x4b51e0;
    void processUINodesTouch(GJUITouchEvent, cocos2d::CCTouch*);
    void processUINodeTouch(GJUITouchEvent, int, cocos2d::CCPoint, GJUINode*) = win 0x4b58d0;
    TodoReturn refreshDpad() = imac 0x4b55f0;
    void resetAllButtons() = m1 0x41e4b4, imac 0x4b6620;
    void resetUINodeState() = win 0x4b4aa0, m1 0x41dac0;
    TodoReturn toggleCheckpointsMenu(bool);
    void toggleMenuVisibility(bool) = m1 0x41e384, imac 0x4b64e0;
    void togglePlatformerMode(bool) = imac 0x4b5470;
    TodoReturn updateCheckState();
    TodoReturn updateDualMode(bool);
    TodoReturn updateUINodeVisibility(bool);

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

    virtual void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = imac 0x566bc0, m1 0x4bc2fc, ios 0x403440;

    bool init(UISettingsGameObject*, cocos2d::CCArray*) = m1 0x4bb8b4, imac 0x565f70;
}

[[link(android)]]
class UIOptionsLayer : SetupTriggerPopup {
    // virtual ~UIOptionsLayer();

    static UIOptionsLayer* create(bool) = win 0x2995e0, imac 0x29e540;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x29c640, imac 0x2a17c0, m1 0x248680, ios 0x2e4038;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x29c790, imac 0x2a1990, m1 0x248840, ios 0x2e41cc;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x29c8c0, imac 0x2a1b30, m1 0x248a2c, ios 0x2e4314;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x248b64, imac 0x2a1c70, ios 0x2e43ac;
    virtual void registerWithTouchDispatcher() = m1 0x248b80, imac 0x2a1cb0, ios 0x2e43c8;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x248060, imac 0x2a1040, ios 0x2e3ba4;
    virtual void valueDidChange(int, float) = imac 0x2a11d0, m1 0x2481b0, ios 0x2e3cf4;
    virtual float getValue(int) = imac 0x2a14e0, m1 0x248414, ios 0x2e3ecc;

    TodoReturn getNode(int);
    bool init(bool) = win 0x299720, m1 0x24645c, imac 0x29ef50;
    void onReset(cocos2d::CCObject* sender);
    void onSaveLoad(cocos2d::CCObject* sender);
    TodoReturn toggleUIGroup(int) = m1 0x247d74, imac 0x2a0ce0;
}

[[link(android)]]
class UIPOptionsLayer {
    // virtual ~UIPOptionsLayer();

    static UIPOptionsLayer* create();

    virtual bool init() = win 0x29e170, m1 0x24aa70, imac 0x2a3c00, ios 0x2e58fc;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x24b160, imac 0x2a4350, ios 0x2e5fd0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x24b27c, imac 0x2a4470, ios 0x2e6098;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x24b3d8, imac 0x2a45e0, ios 0x2e614c;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x24b410, imac 0x2a4620, ios 0x2e6184;
    virtual void registerWithTouchDispatcher() = m1 0x24b42c, imac 0x2a4660, ios 0x2e61a0;
    virtual void onClose(cocos2d::CCObject* sender) = m1 0x24afa8, imac 0x2a4170, ios 0x2e5e18;
    virtual TodoReturn valueDidChange(int, float) = m1 0x24b018, imac 0x2a41f0, ios 0x2e5e88;
    virtual TodoReturn getValue(int) = m1 0x24b0cc, imac 0x2a42c0, ios 0x2e5f3c;

    TodoReturn getTouchRect();
    void onReset(cocos2d::CCObject* sender);
}

[[link(android)]]
class UISaveLoadLayer : SetupTriggerPopup {
    // virtual ~UISaveLoadLayer();

    static UISaveLoadLayer* create(UIOptionsLayer*);

    bool init(UIOptionsLayer*) = m1 0x248bb8, imac 0x2a1cf0;
    void onLoad(cocos2d::CCObject* sender) = m1 0x2494ec, imac 0x2a25d0;
    void onSave(cocos2d::CCObject* sender) = m1 0x2492ac, imac 0x2a23a0;
}

[[link(android)]]
class UISettingsGameObject : EffectGameObject {
    // virtual ~UISettingsGameObject();

    static UISettingsGameObject* create();

    virtual bool init() = m1 0x1872d4, imac 0x1cb1b0, ios 0x38b2f0;
    virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = imac 0x1cc0f0, m1 0x187f74, ios 0x38b69c;
    virtual gd::string getSaveString(GJBaseGameLayer*) = imac 0x1cb200, m1 0x187324, ios 0x38b340;
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

    static UndoObject* create(GameObject*, UndoCommand) = m1 0xc7594;
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
    bool init(GameObject*, UndoCommand) = win 0x2db040, m1 0xca710;
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

    virtual void keyBackClicked() = win 0x28db10, imac 0x2905c0, m1 0x238b68, ios 0x2d7f70;
    virtual void updateSettingsFinished() = win 0x28d790, imac 0x2903b0, m1 0x238964, ios 0x2d7dc0;
    virtual void updateSettingsFailed() = win 0x28d890, imac 0x2904d0, m1 0x238a7c, ios 0x2d7ea4;

    bool init(GJAccountSettingsLayer*, int, int, int, gd::string, gd::string, gd::string) = m1 0x2383a0;
    void onClose(cocos2d::CCObject* sender);
}

[[link(android)]]
class UploadActionDelegate {
    virtual void uploadActionFinished(int, int) {}
    virtual void uploadActionFailed(int, int) {}
}

[[link(android)]]
class UploadActionPopup : FLAlertLayer {
    // virtual ~UploadActionPopup();

    static UploadActionPopup* create(UploadPopupDelegate* delegate, gd::string str) = win 0x28db20, m1 0x238c74, imac 0x290720;

    virtual void keyBackClicked() = win 0x28e320, m1 0x239564, imac 0x291070, ios 0x2d86e0;

    void closePopup() = win inline {
        this->setKeypadEnabled(false);
        this->removeFromParentAndCleanup(true);
    }
    bool init(UploadPopupDelegate* delegate, gd::string str) = win 0x28dc60, imac 0x2908c0, m1 0x238df0;
    void onClose(cocos2d::CCObject* sender) = win 0x28e2d0;
    void showFailMessage(gd::string message) = win 0x28e1d0, m1 0x2393d4, imac 0x290ee0;
    void showSuccessMessage(gd::string message) = win 0x28e0c0, m1 0x23926c, imac 0x290d70;

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

    virtual void keyBackClicked() = m1 0x2e50c0, imac 0x350cc0, ios 0x248e44 {}
    virtual void show() = m1 0x2e5060, imac 0x350c50, ios 0x248de4;
    virtual void listUploadFinished(GJLevelList*) = win 0x2f6cc0, imac 0x350750, m1 0x2e4b64, ios 0x24893c;
    virtual void listUploadFailed(GJLevelList*, int) = win 0x2f6e90, imac 0x350970, m1 0x2e4d68, ios 0x248b30;

    bool init(GJLevelList*) = win 0x2f6780, m1 0x2e46b4, imac 0x350240;
    void onBack(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    void onReturnToList(cocos2d::CCObject* sender);
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

    virtual void keyBackClicked() = m1 0x21b974, imac 0x2706b0, ios 0x275ffc {}
    virtual void show() = win 0x2f7220, m1 0x21b914, imac 0x270640, ios 0x275f9c;
    virtual void levelUploadFinished(GJGameLevel*) = win 0x478710, imac 0x2701e0, m1 0x21b4e4, ios 0x275ba0;
    virtual void levelUploadFailed(GJGameLevel*) = win 0x4788e0, imac 0x270430, m1 0x21b71c, ios 0x275dc8;

    bool init(GJGameLevel*) = m1 0x21afc4, imac 0x26fc40;
    void onBack(cocos2d::CCObject* sender);
    void onClose(cocos2d::CCObject* sender);
    void onReturnToLevel(cocos2d::CCObject* sender);
}

[[link(android)]]
class UploadPopupDelegate {
    virtual void onClosePopup(UploadActionPopup*) {}
}

[[link(android)]]
class URLCell : TableViewCell {
    // virtual ~URLCell();
    URLCell(char const*, float, float);

    virtual bool init() = m1 0x1f5dc8, imac 0x2476e0, ios 0x115ca4;
    virtual void draw() = imac 0x247750, m1 0x1f5e38, ios 0x115d00;

    void loadFromObject(CCURLObject*) = win 0xbf530, imac 0x235b20;
    void onURL(cocos2d::CCObject* sender);
    TodoReturn updateBGColor(int);
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

    static VideoOptionsLayer* create() = win 0x360cd0;

    virtual bool init() = win 0x360df0, imac 0x789140, m1 0x69d004, ios 0xf2d28;
    virtual void keyBackClicked() = win 0x362c60, m1 0x69eb08, imac 0x78adf0, ios 0xf4440;

    CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float, bool, cocos2d::CCArray*) = win 0x362c70;
    void onAdvanced(cocos2d::CCObject* sender) = win 0x362130;
    void onApply(cocos2d::CCObject* sender) = win 0x362720, m1 0x69e330, imac 0x78a590;
    void onBorderless(cocos2d::CCObject* sender) = win 0x362280;
    void onBorderlessFix(cocos2d::CCObject* sender) = win 0x3622a0;
    void onClose(cocos2d::CCObject* sender) = win 0x362be0;
    void onFullscreen(cocos2d::CCObject* sender) = win 0x362260;
    void onInfo(cocos2d::CCObject* sender) = m1 0x69ea28;
    void onResolutionNext(cocos2d::CCObject* sender) = win 0x3623a0;
    void onResolutionPrev(cocos2d::CCObject* sender) = win 0x362390;
    void onTextureQualityNext(cocos2d::CCObject* sender) = win 0x3622d0;
    void onTextureQualityPrev(cocos2d::CCObject* sender) = win 0x3622c0;
    void reloadMenu();
    void toggleResolution() = win 0x3624c0;
    void updateResolution(int) = win 0x3623b0, m1 0x69e634, imac 0x78a8b0;
    void updateTextureQuality(int) = win 0x3622e0;

    CCMenuItemSpriteExtra* m_prevResolutionBtn;
    CCMenuItemSpriteExtra* m_nextResolutionBtn;
    cocos2d::CCLabelBMFont* m_windowedResolutionLabel;
    cocos2d::CCLabelBMFont* m_selectedResolutionLabel;
    cocos2d::CCLabelBMFont* m_qualityLabel;
    int m_textureQuality;
    cocos2d::CCArray* m_availableResolutions;
    CCMenuItemToggler* m_borderlessToggle;
    cocos2d::CCLabelBMFont* m_borderlessLabel;
    CCMenuItemToggler* m_fixToggle;
    cocos2d::CCLabelBMFont* m_fixLabel;
    bool m_windowed;
    bool m_borderless;
    bool m_fix;
    int m_currentResolution;
}

[[link(android)]]
class WorldLevelPage : FLAlertLayer {
    // virtual ~WorldLevelPage();

    static WorldLevelPage* create(GJGameLevel*, GJWorldNode*);

    virtual void keyBackClicked() = m1 0x33f3cc, imac 0x3b3c50;
    virtual void show() = imac 0x3b3b10, m1 0x33f284;

    bool init(GJGameLevel*, GJWorldNode*) = m1 0x33dfa0, imac 0x3b27f0;
    void onClose(cocos2d::CCObject* sender);
    void onInfo(cocos2d::CCObject* sender);
    void onPlay(cocos2d::CCObject* sender);
    void onSong(cocos2d::CCObject* sender);

    GJWorldNode* m_worldNode;
    GJGameLevel* m_level;
}

[[link(android)]]
class WorldSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate {
    // virtual ~WorldSelectLayer();

    static WorldSelectLayer* create(int) = imac 0x3aed30;
    static cocos2d::CCScene* scene(int) = imac 0x3aec20;

    virtual void onExit() = imac 0x3b0b30, m1 0x33c594;
    virtual void keyBackClicked() = imac 0x3b0a50, m1 0x33c4b4;
    virtual void scrollLayerWillScrollToPage(BoomScrollLayer*, int) = imac 0x3b0960, m1 0x33c36c;
    virtual void scrollLayerScrolledToPage(BoomScrollLayer*, int) = imac 0x3b0870, m1 0x33c224;
    virtual void scrollLayerMoved(cocos2d::CCPoint) = imac 0x3b0b80, m1 0x33c5e4;

    TodoReturn animateInActiveIsland();
    cocos2d::ccColor3B colorForPage(int);
    TodoReturn getColorValue(int, int, float);
    void goToPage(int, bool);
    bool init(int) = imac 0x3aee20;
    void onBack(cocos2d::CCObject* sender);
    void onFreeLevels(cocos2d::CCObject* sender);
    void onGarage(cocos2d::CCObject* sender);
    void onNext(cocos2d::CCObject* sender);
    void onPrev(cocos2d::CCObject* sender);
    TodoReturn setupWorlds() = imac 0x3af740, m1 0x33b13c;
    void showCompleteDialog() = m1 0x33b724, imac 0x3afd60;
    TodoReturn tryShowAd();
    void unblockButtons();
    void updateArrows();

    cocos2d::CCSprite* m_background;
    BoomScrollLayer* m_scrollLayer;
    CCMenuItemSpriteExtra* m_arrowLeft;
    CCMenuItemSpriteExtra* m_arrowRight;
    bool m_cleanupSprites;
    bool m_unkBool1;
    GJWorldNode* m_worldNode;
    bool m_unkBool2;
}

