#include <Geode/Geode.hpp>

BoomListView::BoomListView() {
    m_tableView = nullptr;
    m_entries = nullptr;
    m_type = BoomListType::Default;
    m_height = 0.f;
    m_width = 0.f;
    m_itemSeparation = 0.f;
    m_currentPage = 0;
    m_locked = false;
}

bool BoomListView::init(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
    return this->init(entries, nullptr, height, width, 0, type, 0.0f);
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
BoomListView* BoomListView::create(cocos2d::CCArray* entries, TableViewCellDelegate* delegate, float height, float width, int page, BoomListType type, float y) {
    auto ret = new BoomListView();
    if (ret->init(entries, delegate, height, width, page, type, y)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void BoomListView::addObjectToList(cocos2d::CCNode* node) {
    if (m_entries) m_entries->addObject(node);
}
#endif

#if defined(GEODE_IS_WINDOWS)
void BoomListView::draw() {}

void BoomListView::TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath& indexPath, TableViewCell* cell, TableView* tableView) {}

void BoomListView::didSelectRowAtIndexPath(CCIndexPath& indexPath, TableView* tableView) {}

unsigned int BoomListView::numberOfSectionsInTableView(TableView* tableView) { return 1; }

void BoomListView::TableViewCommitCellEditingStyleForRowAtIndexPath(TableView* tableView, TableViewCellEditingStyle style, CCIndexPath& indexPath) {}

void BoomListView::TableViewWillReloadCellForRowAtIndexPath(CCIndexPath& indexPath, TableViewCell* cell, TableView* tableView) {}

void BoomListView::lockList(bool locked) {
    m_locked = locked;
    this->setTouchEnabled(!locked);
    this->setMouseEnabled(!locked);
    this->setKeyboardEnabled(!locked);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

