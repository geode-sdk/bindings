#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void LevelBrowserLayer::onHelp(cocos2d::CCObject* sender) {}

void LevelBrowserLayer::reloadAllObjects() {
    static_cast<CustomListView*>(m_list->m_listView)->reloadAll();
}
#endif

#if defined(GEODE_IS_WINDOWS)
bool LevelBrowserLayer::ccTouchBegan(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) { return true; }

void LevelBrowserLayer::ccTouchMoved(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {}

void LevelBrowserLayer::ccTouchEnded(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {}

void LevelBrowserLayer::ccTouchCancelled(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {}

void LevelBrowserLayer::createNewLevel(cocos2d::CCObject* sender) {
    this->setKeypadEnabled(false);
    this->setKeyboardEnabled(false);
    GameLevelManager* glm = GameLevelManager::sharedState();
    GJGameLevel* newLevel = glm->createNewLevel();
    glm->m_returnToLocalLevels = true;
    cocos2d::CCDirector::sharedDirector()->replaceScene(cocos2d::CCTransitionFade::create(0.5f, EditLevelLayer::scene(newLevel)));
}

void LevelBrowserLayer::createNewList(cocos2d::CCObject* sender) {
    if (m_isOverlay) {
        auto layer = ShareCommentLayer::create("List Name", 25, CommentType::ListName, 0, {});
        layer->m_delegate = this;
        layer->show();
    }
    else {
        this->setKeypadEnabled(false);
        this->setKeyboardEnabled(false);
        auto glm = GameLevelManager::sharedState();
        auto list = glm->createNewLevelList();
        glm->m_returnToLocalLevels = true;
        cocos2d::CCDirector::sharedDirector()->replaceScene(cocos2d::CCTransitionFade::create(0.5f, LevelListLayer::scene(list)));
    }
}

void LevelBrowserLayer::createNewSmartTemplate(cocos2d::CCObject* sender) {
    this->setKeypadEnabled(false);
    this->setKeyboardEnabled(false);
    auto glm = GameLevelManager::sharedState();
    auto smartTemplate = glm->createSmartTemplate();
    glm->m_returnToLocalLevels = true;
    SetupSmartTemplateLayer::create(smartTemplate)->show();
    this->onBack(nullptr);
}

void LevelBrowserLayer::deleteSelected() {
    auto selected = cocos2d::CCArray::create();
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(m_levels)) {
        auto level = static_cast<GJGameLevel*>(obj);
        if (level->m_selected) selected->addObject(level);
    }
    if (selected->count() == 0) return;
    auto glm = GameLevelManager::sharedState();
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(selected)) {
        glm->deleteLevel(static_cast<GJGameLevel*>(obj));
    }
    m_allSelected = false;
    m_allObjectsToggler->toggle(false);
    this->loadPage(m_searchObject);
}

void LevelBrowserLayer::exitLayer(cocos2d::CCObject* sender) {
    cocos2d::CCDirector::sharedDirector()->getTouchDispatcher()->unregisterForcePrio(this);
    this->removeFromParentAndCleanup(true);
}

void LevelBrowserLayer::setSearchObject(GJSearchObject* object) {
    if (m_searchObject != object) {
        CC_SAFE_RETAIN(object);
        CC_SAFE_RELEASE(m_searchObject);
        m_searchObject = object;
    }
}

void LevelBrowserLayer::updateLevelsLabel() {
    auto end = m_pageEndIdx + m_pageStartIdx;
    auto count = m_itemCount;
    if (end > count) end = count;
    m_countText->setString(cocos2d::CCString::createWithFormat("%i to %i of %i", m_pageStartIdx + 1, end, count)->getCString());
    m_countText->limitLabelWidth(100.f, .6f, .0f);
    this->updatePageLabel();
}
#endif

#if defined(GEODE_IS_IOS) || defined(GEODE_IS_MAC) || defined(GEODE_IS_ANDROID)
LevelBrowserLayer::LevelBrowserLayer() {
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
#endif

