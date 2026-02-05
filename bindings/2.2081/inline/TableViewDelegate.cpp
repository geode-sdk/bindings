#include <Geode/Bindings.hpp>

void TableViewDelegate::willTweenToIndexPath(CCIndexPath& indexPath, TableViewCell* cell, TableView* tableView) {}

void TableViewDelegate::didEndTweenToIndexPath(CCIndexPath& indexPath, TableView* tableView) {}

void TableViewDelegate::TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath& indexPath, TableViewCell* cell, TableView* tableView) {}

void TableViewDelegate::TableViewDidDisplayCellForRowAtIndexPath(CCIndexPath& indexPath, TableViewCell* cell, TableView* tableView) {}

void TableViewDelegate::TableViewWillReloadCellForRowAtIndexPath(CCIndexPath& indexPath, TableViewCell* cell, TableView* tableView) {}

float TableViewDelegate::cellHeightForRowAtIndexPath(CCIndexPath& indexPath, TableView* tableView) { return 0; }

void TableViewDelegate::didSelectRowAtIndexPath(CCIndexPath& indexPath, TableView* tableView) {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

