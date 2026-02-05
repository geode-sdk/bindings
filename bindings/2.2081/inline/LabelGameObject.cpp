#include <Geode/Bindings.hpp>

LabelGameObject::LabelGameObject() {
    m_label = nullptr;
    m_labelDirty = false;
    m_labelColorLocked = false;
    m_alignment = 0;
    m_showSecondsOnly = false;
    m_shownSpecial = 0;
    m_isTimeCounter = false;
    m_kerning = 0;
    m_updateLabel = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void LabelGameObject::unlockLabelColor() {
    m_labelColorLocked = false;
}

void LabelGameObject::updateLabel(float value) {
    this->updateLabel(GameToolbox::intToString(value));
}
#endif

#if defined(GEODE_IS_WINDOWS)
LabelGameObject* LabelGameObject::create() {
    auto ret = new LabelGameObject();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void LabelGameObject::queueUpdateLabel(gd::string text) {
    if (!m_updateLabel) {
        m_labelString = text;
        m_labelDirty = true;
    }
}

void LabelGameObject::updateLabelIfDirty() {
    if (m_labelDirty) updateLabel(m_labelString);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

