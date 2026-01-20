#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
TableViewCell* TableView::cellForRowAtIndexPath(CCIndexPath& path) {
    for (int i = 0; i < m_cellArray->count(); i++) {
        auto cell = static_cast<TableViewCell*>(m_cellArray->objectAtIndex(i));
        if (cell->m_indexPath.m_row == path.m_row && cell->m_indexPath.m_section == path.m_section) {
            return cell;
        }
    }
    return nullptr;
}

void TableView::scrollToIndexPath(CCIndexPath& path) {}
#endif

#if defined(GEODE_IS_WINDOWS)
TableView::TableView(cocos2d::CCRect rect) : CCScrollLayerExt(rect) {
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
    m_cellRemovedArray = cocos2d::CCArray::create();
    m_cellRemovedArray->retain();
    m_cellArray = cocos2d::CCArray::create();
    m_cellArray->retain();
    m_indexPathArray = cocos2d::CCArray::create();
    m_indexPathArray->retain();
    m_touchLastY = 0.f;
    m_cancellingTouches = false;
    m_idk2 = false;
}

TableView::~TableView() {
    CCNode::removeAllChildrenWithCleanup(true);
    m_cellRemovedArray->removeAllObjects();
    CC_SAFE_DELETE(m_cellRemovedArray);
    m_cellArray->removeAllObjects();
    CC_SAFE_DELETE(m_cellArray);
    m_indexPathArray->removeAllObjects();
    CC_SAFE_DELETE(m_indexPathArray);
}

TableView* TableView::create(TableViewDelegate* tvd, TableViewDataSource* tvds, TableViewCellDelegate* tvcd, cocos2d::CCRect rect) {
    auto ret = new TableView(rect);
    ret->m_tableDelegate = tvd;
    ret->m_dataSource = tvds;
    ret->m_cellDelegate = tvcd;
    ret->setPosition({ 0.f, 0.f });
    ret->autorelease();
    return ret;
}

void TableView::scrllViewWillBeginDecelerating(CCScrollLayerExt* layer) {}

void TableView::scrollViewDidEndDecelerating(CCScrollLayerExt* layer) {}

void TableView::scrollViewTouchMoving(CCScrollLayerExt* layer) {}

void TableView::scrollViewDidEndMoving(CCScrollLayerExt* layer) {}

void TableView::cancelAndStoleTouch(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) {
    auto touches = new cocos2d::CCSet();
    touches->addObject(touch);
    touches->autorelease();
    m_cancellingTouches = true;
    cocos2d::CCDirector::sharedDirector()->getTouchDispatcher()->touchesCancelled(touches, event);
    m_cancellingTouches = false;
    this->claimTouch(touch);
}

TableViewCell* TableView::cellForTouch(cocos2d::CCTouch* touch) {
    auto location = cocos2d::CCDirector::sharedDirector()->convertToGL(touch->getLocationInView());
    if (!m_cellArray || m_cellArray->count() == 0) return nullptr;
    for (int i = 0; i < m_cellArray->count(); i++) {
        auto cell = static_cast<TableViewCell*>(m_cellArray->objectAtIndex(i));
        auto cellBox = cocos2d::CCRect {
            cell->getPosition().x - cell->getAnchorPoint().x * cell->getContentSize().width,
            cell->getPosition().y - cell->getAnchorPoint().y * cell->getContentSize().height,
            cell->getContentSize().width,
            cell->getContentSize().height
        };
        cellBox.origin.x = 0.f;
        cellBox.origin.y = 0.f;
        if (cellBox.containsPoint(location)) return cell;
    }
    return nullptr;
}

void TableView::claimTouch(cocos2d::CCTouch* touch) {
    auto handler = static_cast<cocos2d::CCTargetedTouchHandler*>(cocos2d::CCDirector::sharedDirector()->getTouchDispatcher()->findHandler(this));
    if (!handler->getClaimedTouches()->containsObject(touch)) {
        handler->getClaimedTouches()->addObject(touch);
    }
}

bool TableView::dequeueReusableCellWithIdentifier(char const* identifier) {
    return false;
}

bool TableView::removeIndexPathFromPathAddedArray(CCIndexPath& path) {
    if (!m_indexPathArray || m_indexPathArray->count() == 0) return false;
    for (int i = 0; i < m_indexPathArray->count(); i++) {
        auto indexPath = static_cast<CCIndexPath*>(m_indexPathArray->objectAtIndex(i));
        if (indexPath->m_row == path.m_row && indexPath->m_section == path.m_section) {
            m_indexPathArray->removeObject(indexPath);
            return true;
        }
    }
    return false;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

