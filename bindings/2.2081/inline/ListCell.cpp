#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
ListCell::ListCell(char const* identifier, float width, float height) : TableViewCell(identifier, width, height) {
    this->init();
}

void ListCell::loadFromObject(cocos2d::CCObject* object, int id, int page, int index) {}

void ListCell::updateBGColor(int index) {}
#endif

#if defined(GEODE_IS_WINDOWS)
bool ListCell::init() { return true; }
#endif

#if defined(GEODE_IS_IOS)
#endif

