#include <Geode/binding/TableViewCellDelegate.hpp>

bool TableViewCellDelegate::cellPerformedAction(TableViewCell* cell, int listType, CellAction action, cocos2d::CCNode* parent) { return false; }

int TableViewCellDelegate::getSelectedCellIdx() { return 0; }

bool TableViewCellDelegate::shouldSnapToSelected() { return true; }

int TableViewCellDelegate::getCellDelegateType() { return 0; }

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#ifdef GEODE_IS_MACOS
int TableViewCellDelegate::getSelectedCellCustomIdx() { return 0; }

bool TableViewCellDelegate::allowsCustomSFXActions() { return false; }

bool TableViewCellDelegate::isCustomIDSelected(int) { return false; }

bool TableViewCellDelegate::inCustomSFXTree() { return false; }

bool TableViewCellDelegate::showsSFXInfoButton() { return false; }
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

