#include <Geode/Geode.hpp>

bool TableViewCellDelegate::cellPerformedAction(TableViewCell* cell, int listType, CellAction action, cocos2d::CCNode* parent) { return false; }

int TableViewCellDelegate::getSelectedCellIdx() { return 0; }

bool TableViewCellDelegate::shouldSnapToSelected() { return true; }

int TableViewCellDelegate::getCellDelegateType() { return 0; }

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

