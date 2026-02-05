#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
int SelectSettingLayer::idxToValue(SelectSettingType type, int idx) {
    if (type != SelectSettingType::StartingSpeed) return idx;

    switch (idx) {
        case 0: return 1;
        case 1: return 0;
        case 2: case 3: case 4: return idx;
        default: return 0;
    }
}

int SelectSettingLayer::valueToIdx(SelectSettingType type, int value) {
    if (type != SelectSettingType::StartingSpeed) return value;

    switch (value) {
        case 0: return 1;
        case 1: return 0;
        case 2: case 3: case 4: return value;
        default: return 1;
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
gd::string SelectSettingLayer::frameForValue(SelectSettingType type, int value) {
    return frameForItem(type, valueToIdx(type, value));
}

gd::string SelectSettingLayer::getSelectedFrame() {
    return frameForValue(m_type, m_settingID);
}

int SelectSettingLayer::getSelectedValue() {
    return idxToValue(m_type, m_settingID);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

