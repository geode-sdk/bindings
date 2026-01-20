#include <Geode/Geode.hpp>

int TableViewDataSource::numberOfRowsInSection(unsigned int section, TableView* tableView) { return 0; }

unsigned int TableViewDataSource::numberOfSectionsInTableView(TableView* tableView) { return 0; }

void TableViewDataSource::TableViewCommitCellEditingStyleForRowAtIndexPath(TableView* tableView, TableViewCellEditingStyle style, CCIndexPath& indexPath) {}

TableViewCell* TableViewDataSource::cellForRowAtIndexPath(CCIndexPath& indexPath, TableView* tableView) { return nullptr; }

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

