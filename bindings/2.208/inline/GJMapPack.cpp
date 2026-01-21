#include <Geode/Geode.hpp>

GJMapPack::GJMapPack() {
    m_levels = nullptr;
    m_packID = 0;
    m_difficulty = GJDifficulty::Auto;
    m_stars = 0;
    m_coins = 0;
    m_MId = 0;
    m_isGauntlet = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GJMapPack::~GJMapPack() {
    CC_SAFE_RELEASE(m_levels);
}

GJMapPack* GJMapPack::create() {
    auto ret = new GJMapPack();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool GJMapPack::hasCompletedMapPack() {
    auto total = this->totalMaps();
    if (total > 0) return this->completedMaps() >= total;
    else return 0;
}

void GJMapPack::parsePackLevels(gd::string levelsStr) {
    CC_SAFE_RELEASE(m_levels);
    auto levels = cocos2d::CCArray::create();
    auto start = 0;
    auto index = levelsStr.find_first_of(",");
    auto size = levelsStr.size();
    while (index != std::string::npos) {
        auto str = levelsStr.substr(start, index - start);
        if (!str.empty() || start != size) {
            levels->addObject(cocos2d::CCString::create(str));
        }
        start = index + 1;
        index = levelsStr.find_first_of(",", start);
    }
    m_levels = levels;
    levels->retain();
}

int GJMapPack::totalMaps() {
    if (this->m_levels) {
        return this->m_levels->count();
    }

    return 0;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

