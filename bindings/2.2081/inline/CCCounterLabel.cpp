#include <Geode/Geode.hpp>

CCCounterLabel::CCCounterLabel() {
    m_stepSize = 0;
    m_targetCount = 0;
    m_currentCount = 0;
    m_counterEnabled = false;
    m_stepCount = 10;
    m_dontSchedule = false;
    m_formatterType = FormatterType::Integer;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void CCCounterLabel::calculateStepSize(int steps) {
    auto diff = m_targetCount - m_currentCount;
    m_stepSize = diff / std::min<float>(std::abs(diff), steps);
}

void CCCounterLabel::disableCounter() {
    if (m_counterEnabled) {
        m_counterEnabled = false;
        if (!m_dontSchedule) {
            this->unscheduleAllSelectors();
        }
    }
}

void CCCounterLabel::enableCounter() {
    if (!m_counterEnabled) {
        m_counterEnabled = true;
        if (!m_dontSchedule) {
            this->schedule(schedule_selector(CCCounterLabel::updateCounter), 1.f / 30.f);
        }
    }
}

void CCCounterLabel::fastUpdateCounter() {
    m_currentCount = m_targetCount;
    this->updateString();
}

int CCCounterLabel::getTargetCount() {
    return m_targetCount;
}
#endif

#if defined(GEODE_IS_WINDOWS)
CCCounterLabel* CCCounterLabel::create(int count, char const* font, FormatterType type) {
    auto ret = new CCCounterLabel();
    if (ret->init(count, font, type)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool CCCounterLabel::init(int count, char const* font, FormatterType type) {
    if (!cocos2d::CCLabelBMFont::initWithString(" ", font)) return false;
    m_formatterType = type;
    m_targetCount = count;
    this->fastUpdateCounter();
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

