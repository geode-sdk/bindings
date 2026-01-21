#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
double HardStreak::normalizeAngle(double angle) {
    if (angle > 360.0) return angle - 360.0;
    if (angle < 0.0) return angle + 360.0;
    return angle;
}
#endif

#if defined(GEODE_IS_WINDOWS)
void HardStreak::clearAboveXPos(float x) {
    while (m_pointArray->count() > 1) {
        auto pointNode = static_cast<PointNode*>(m_pointArray->objectAtIndex(1));
        if (pointNode->m_point.x > x) m_pointArray->removeObjectAtIndex(0);
        else break;
    }
}

void HardStreak::clearBehindXPos(float x) {
    while (m_pointArray->count() > 1) {
        auto pointNode = static_cast<PointNode*>(m_pointArray->objectAtIndex(1));
        if (pointNode->m_point.x < x) m_pointArray->removeObjectAtIndex(0);
        else break;
    }
}

HardStreak* HardStreak::createDuplicate() {
    auto ret = HardStreak::create();
    ret->setBlendFunc(this->getBlendFunc());
    ret->m_currentPoint = m_currentPoint;
    ret->m_isSolid = m_isSolid;
    ret->m_waveSize = m_waveSize;
    ret->m_isSolid = m_isSolid;
    ret->m_isFlipped = m_isFlipped;
    ret->m_pulseSize = m_pulseSize;
    ret->setOpacity(this->getOpacity());
    ret->setColor(this->getColor());

    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(m_pointArray)){
        auto nodePoint = static_cast<PointNode*>(obj);
        ret->addPoint(nodePoint->m_point);
    }

    return ret;
}

void HardStreak::firstSetup() {
    this->addPoint({ 0.f, 0.f });
    m_currentPoint.x = 10.f;
    m_currentPoint.y = 10.f;
    this->updateStroke(0.f);
    this->visit();
    this->reset();
}

cocos2d::CCPoint HardStreak::quadCornerOffset(cocos2d::CCPoint start, cocos2d::CCPoint end, float width) {
    if (width < 1.f) return { 0.f, 0.f };
    float angle = this->normalizeAngle(atan2f(end.y - start.y, end.x - start.x) * 180.f / M_PI + 90.f) * M_PI / 180.f;
    return { cosf(angle) * width * .5f, sinf(angle) * width * .5f };
}

void HardStreak::reset() {
    this->clear();
    m_pointArray->removeAllObjects();
}

void HardStreak::resumeStroke() {
    this->m_drawStreak = true;
    updateStroke(0.f);
}

void HardStreak::scheduleAutoUpdate() {
    this->schedule(schedule_selector(HardStreak::updateStroke));
}
#endif

#if defined(GEODE_IS_IOS)
#endif

