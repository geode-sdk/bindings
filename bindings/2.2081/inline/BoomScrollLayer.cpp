#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void BoomScrollLayer::addPage(cocos2d::CCLayer* page) {
    this->addPage(page, m_pages->count());
}

void BoomScrollLayer::addPage(cocos2d::CCLayer* page, int index) {
    index = std::clamp<int>(index, 0, m_pages->count());
    m_pages->insertObject(page, index);
    this->updatePages();
    this->moveToPage(m_page);
}

cocos2d::CCPoint BoomScrollLayer::getRelativePosForPage(int page) {
    return { this->getContentSize().width - m_pageOffset * page, 0.f };
}

cocos2d::CCPoint BoomScrollLayer::positionForPageWithNumber(int page) {
    return { this->getContentSize().width + m_pageOffset * page, 0.f };
}

void BoomScrollLayer::removePage(cocos2d::CCLayer* page) {
    m_pages->removeObject(page);
    this->removeChild(page, true);
    m_slowPage = m_page;
    m_page = std::min<int>(m_page, m_pages->count() - 1);
    this->moveToPage(m_page);
}

void BoomScrollLayer::removePageWithNumber(int page) {
    if (page > -1 && page < m_pages->count()) {
        this->removePage(static_cast<cocos2d::CCLayer*>(m_pages->objectAtIndex(page)));
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
BoomScrollLayer::BoomScrollLayer() {
    m_dots = nullptr;
    m_slowPage = 0;
    m_touchX = 0.f;
    m_touchQuotient = 0.f;
    m_looped = false;
    m_dynamicDelegate = nullptr;
    m_dynamicObjects = nullptr;
    m_dynamic = false;
    m_touchType = 0;
    m_ignoreTouchCancel = false;
    m_touch = nullptr;
    m_pages = nullptr;
    m_touchTime = 0.0;
    m_extendedLayer = nullptr;
    m_unkFloat1 = 0.f;
    m_maxSpeed = 0.f;
    m_minSpeed = 0.f;
    m_unkFloat2 = 0.f;
    m_delegate = nullptr;
    m_pageMoving = false;
    m_pagesInvisible = false;
    m_minimumTouchLengthToSlide = 0.f;
    m_minimumTouchLengthToChangePage = 0.f;
    m_width = 0.f;
    m_cancelAndStealTouch = false;
    m_dotsVisible = false;
    m_page = 0;
    m_pageOffset = 0.f;
    m_unkPtr = nullptr;
    m_doVisit = false;
}

BoomScrollLayer::~BoomScrollLayer() {
    CC_SAFE_RELEASE(m_dynamicObjects);
    CC_SAFE_RELEASE(m_pages);
    CC_SAFE_RELEASE(m_dots);
}

BoomScrollLayer* BoomScrollLayer::create(cocos2d::CCArray* pages, int offset, bool looped) {
    return BoomScrollLayer::create(pages, offset, looped, nullptr, nullptr);
}

void BoomScrollLayer::cancelAndStoleTouch(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {
    auto touches = new cocos2d::CCSet();
    touches->addObject(touch);
    touches->autorelease();
    m_ignoreTouchCancel = true;
    cocos2d::CCDirector::sharedDirector()->getTouchDispatcher()->touchesCancelled(touches, event);
    m_ignoreTouchCancel = false;
    this->claimTouch(touch);
}

void BoomScrollLayer::claimTouch(cocos2d::CCTouch* touch) {
    auto handler = static_cast<cocos2d::CCTargetedTouchHandler*>(cocos2d::CCDirector::sharedDirector()->getTouchDispatcher()->findHandler(this));
    if (!handler->getClaimedTouches()->containsObject(touch)) {
        handler->getClaimedTouches()->addObject(touch);
    }
}

cocos2d::CCLayer* BoomScrollLayer::getPage(int page) {
    if (m_dynamic) {
        auto pages = m_pages->count();
        if (page > 0) page = page % pages;
        else {
            while (page < 0) page += pages;
        }
    }
    return static_cast<cocos2d::CCLayer*>(m_pages->objectAtIndex(page));
}

int BoomScrollLayer::getRelativePageForNum(int page) {
    auto pages = this->getTotalPages();
    if (page > 0) return page % pages;
    while (page < 0) page += pages;
    return page;
}

int BoomScrollLayer::getTotalPages() {
    return m_dynamic ? m_dynamicObjects->count() : m_pages->count();
}

void BoomScrollLayer::quickUpdate() {
    if (m_pageMoving) {
        m_pageMoving = false;
        m_extendedLayer->stopActionByTag(2);
        m_extendedLayer->setPosition(m_position);
        this->moveToPageEnded();
    }
}

void BoomScrollLayer::selectPage(int page) {
    if (page > -1 && page < this->getTotalPages()) {
        m_extendedLayer->setPosition(this->positionForPageWithNumber(page));
        m_slowPage = m_page;
        m_page = page;
    }
}

void BoomScrollLayer::setDotScale(float scale) {
    for (int i = 0; i < m_dots->count(); i++) {
        static_cast<cocos2d::CCSprite*>(m_dots->objectAtIndex(i))->setScale(scale);
    }
}

void BoomScrollLayer::setPagesIndicatorPosition(cocos2d::CCPoint pos) {
    m_dotPosition = pos;
    this->updateDots(0.f);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

