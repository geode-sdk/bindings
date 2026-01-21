#include <Geode/Geode.hpp>

ButtonPage::ButtonPage() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
ButtonPage* ButtonPage::create(cocos2d::CCArray* objects, cocos2d::CCPoint position, int rows, float spacing) {
    auto ret = new ButtonPage();
    if (ret->init(objects, position, rows, spacing)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool ButtonPage::init(cocos2d::CCArray* objects, cocos2d::CCPoint position, int rows, float spacing) {
    if (!cocos2d::CCLayer::init()) return false;

    auto menu = cocos2d::CCMenu::create();
    this->addChild(menu);

    auto x = position.x;
    auto y = position.y;
    for (int i = 0; i < objects->count(); i++) {
        auto row = rows != 0 ? (int)(i / rows) : 0;
        auto node = static_cast<cocos2d::CCNode*>(objects->objectAtIndex(i));
        menu->addChild(node);
        node->setPosition(menu->convertToNodeSpace({
            (i % rows) + (spacing + 4.f) * (spacing * .5f + x - rows * spacing * .5f - (rows - 1) * 2.f),
            (y - spacing * .5f) - row * (spacing + 4.f)
        }));
    }

    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

