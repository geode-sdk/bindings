#include <Geode/binding/KeybindingsLayer.hpp>
#include <Geode/utils/cocos.hpp>

bool KeybindingsLayer::crossCheckGlobalConflicts() { return false; }

#if defined(GEODE_IS_WINDOWS)
int const* KeybindingsLayer::getActionTable(int& count) {
    count = 214;
    return reinterpret_cast<int const*>(geode::base::get() + 0x7034d0);
}

void KeybindingsLayer::tintGlyph(cocos2d::CCSprite* sprite, cocos2d::ccColor3B color) {
    sprite->setColor(color);
    for (auto child : geode::cocos::CCArrayExt<cocos2d::CCSprite, false>(sprite->getChildren())) {
        child->setColor(color);
    }
}
#endif

