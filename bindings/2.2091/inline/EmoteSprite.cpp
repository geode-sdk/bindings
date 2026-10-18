#include <Geode/Bindings.hpp>

EmoteSprite* EmoteSprite::createWithName(std::string const& name) {
    auto def = defForName();
    return createWithDef(def);
}