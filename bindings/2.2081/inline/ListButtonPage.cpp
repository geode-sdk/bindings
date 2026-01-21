#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
bool ListButtonPage::init(cocos2d::CCArray* items, cocos2d::CCPoint position, int columns, int rows, float columnOffset, float rowOffset, float offset) {
    if (!cocos2d::CCLayer::init()) return false;
    auto menu = cocos2d::CCMenu::create();
    this->addChild(menu);
    auto x = position.x;
    auto y = position.y;
    auto index = 0;
    for (int i = 0; i < items->count(); i++) {
        auto row = index / columns;
        auto item = static_cast<cocos2d::CCNode*>(items->objectAtIndex(i));
        if (item->getTag() == 2) {
            index += columns - (index % columns);
        }
        else {
            menu->addChild(item);
            item->setPosition(menu->convertToNodeSpace({
                (columnOffset + offset) * (index % columns) + offset * .5f + (x - columns * .5f * offset - (columns - 1) * .5f * columnOffset),
                ((rows - 1) * .5f * (rowOffset + offset) + y) - row * (rowOffset + offset)
            }));
            index++;
        }
    }
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

