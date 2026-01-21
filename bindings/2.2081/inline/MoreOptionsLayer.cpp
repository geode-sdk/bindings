#include <Geode/Geode.hpp>

MoreOptionsLayer::MoreOptionsLayer() {
    m_page = -1;
    m_toggleCount = 0;
    m_pageCount = 0;
    m_gpSignInBtn = nullptr;
    m_gpSignOutBtn = nullptr;
    m_categoryLabel = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
const char* MoreOptionsLayer::infoKey(int index) {
    return cocos2d::CCString::createWithFormat("info_%i", index)->getCString();
}

const char* MoreOptionsLayer::layerKey(int page) {
    return cocos2d::CCString::createWithFormat("layer_%i", page)->getCString();
}

const char* MoreOptionsLayer::objectKey(int page) {
    return cocos2d::CCString::createWithFormat("object_%i", page)->getCString();
}

void MoreOptionsLayer::offsetToNextPage() {
    if (m_toggleCount % 10 != 0) m_toggleCount = (m_toggleCount - (m_toggleCount % 10)) + 10;
}

void MoreOptionsLayer::onGPSignIn(cocos2d::CCObject* sender) {
    if (!PlatformToolbox::isSignedInGooglePlay()) PlatformToolbox::signInGooglePlay();
    else this->toggleGP();
}

void MoreOptionsLayer::onGPSignOut(cocos2d::CCObject* sender) {
    if (PlatformToolbox::isSignedInGooglePlay()) {
        PlatformToolbox::signOutGooglePlay();
        GameManager::sharedState()->m_googlePlaySignedIn = false;
        m_gpSignInBtn->setVisible(true);
        m_gpSignOutBtn->setVisible(false);
    }
    else this->toggleGP();
}

const char* MoreOptionsLayer::pageKey(int page) {
    return cocos2d::CCString::createWithFormat("page_%i", page)->getCString();
}
#endif

#if defined(GEODE_IS_WINDOWS)
MoreOptionsLayer::~MoreOptionsLayer() {
    CC_SAFE_RELEASE(m_objects);
    CC_SAFE_RELEASE(m_variables);
    auto gpm = GooglePlayManager::sharedState();
    if (gpm->m_delegate2 == this) gpm->m_delegate2 = nullptr;
}

MoreOptionsLayer* MoreOptionsLayer::create() {
    auto ret = new MoreOptionsLayer();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void MoreOptionsLayer::incrementCountForPage(int page) {
    m_objects->setObject(cocos2d::CCString::createWithFormat("%i", this->countForPage(page) + 1), this->pageKey(page));
}

cocos2d::CCPoint MoreOptionsLayer::nextPosition(int page) {
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    auto count = this->countForPage(page);
    cocos2d::CCPoint pos = winSize * .5f + cocos2d::CCPoint { count % 2 == 0 ? -160.f : 80.f, 80.f };
    if (count > 1) pos.y -= (int)(count * .5f) * 48;
    return pos;
}

void MoreOptionsLayer::toggleGP() {
    if (PlatformToolbox::isSignedInGooglePlay()) {
        m_gpSignInBtn->setVisible(false);
        m_gpSignOutBtn->setVisible(true);
    }
    else {
        m_gpSignInBtn->setVisible(true);
        m_gpSignOutBtn->setVisible(false);
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

