#include <Geode/binding/ScrollableContentLayer.hpp>

#if defined(GEODE_IS_WINDOWS)
bool ScrollableContentLayer::consumePendingCancel() {
    bool pending = m_pendingCancel;
    m_pendingCancel = false;
    return pending;
}

void ScrollableContentLayer::handleTouchCancelled(cocos2d::CCTouch* touch) {
    if (touch->getID() != m_touchID) return;
    m_isDragging = false;
    m_touchID = -1;
    m_draggingThumb = false;
    m_pendingCancel = false;
    m_velocity = 0.f;
    m_wheelVelocity = 0.f;
    this->unscheduleUpdate();
}

void ScrollableContentLayer::scrollTo(float offset) {
    m_offset = offset;
    m_wheelVelocity = 0.f;
    this->clampOffset();
    this->applyContentPosition();
}

void ScrollableContentLayer::setContentHeight(float height) {
    m_contentHeight = height;
    this->clampOffset();
    this->ensureScrollThumb();
    this->applyContentPosition();
}

void ScrollableContentLayer::setViewSize(cocos2d::CCSize size) {
    m_viewSize = size;
    this->setContentSize(size);
    this->clampOffset();
    this->ensureScrollThumb();
    this->applyContentPosition();
}
#endif

#if defined(GEODE_IS_IOS)
void ScrollableContentLayer::clampOffset() {
    float viewExtent = m_horizontal? m_viewSize.width: m_viewSize.height;
    float maxOffset = std::max(0.0f, m_contentHeight - viewExtent);

    if (m_offset < 0.0f || m_offset > maxOffset) {
        m_offset = std::clamp(m_offset, 0.0f, maxOffset);
        m_velocity = 0.0f;
    }
}
#endif