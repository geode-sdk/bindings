#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void GJUINode::updateDeadzone(int deadzone) {
    m_deadzone = deadzone;
}
#endif

#if defined(GEODE_IS_WINDOWS)
int GJUINode::activeRangeTouchTest(cocos2d::CCPoint position) {
    cocos2d::CCPoint rangePos = { m_firstSprite->getPosition().x, position.y + 40.f };
    auto xDiff = position.x - rangePos.x;
    int touchResult;
    if (m_deadzone <= std::abs(xDiff)) {
        auto radius = m_radius;
        rangePos.x = std::abs(xDiff) > radius ? position.x + radius : position.x - radius;
        touchResult = xDiff > 0.f ? 3 : 2;
    }
    else {
        touchResult = 0;
    }
    auto centerX = m_rect.size.width * .5f;
    auto reverseCenterX = -m_rect.size.width * .5f;
    if (std::min(rangePos.x, centerX) > reverseCenterX) rangePos.x = reverseCenterX;
    else rangePos.x = std::min(rangePos.x, centerX);
    auto centerY = 40.f + m_rect.size.height * .5f;
    auto reverseCenterY = 40.f - m_rect.size.height * .5f;
    if (std::min(rangePos.y, centerY) > reverseCenterY) rangePos.y = reverseCenterY;
    else rangePos.y = std::min(rangePos.y, centerY);
    m_firstSprite->setVisible(true);
    m_firstSprite->setPosition(rangePos);
    return touchResult;
}

float GJUINode::getButtonScale() {
    return m_firstSprite->getScale();
}

uint8_t GJUINode::getOpacity() {
    return m_firstSprite->getOpacity();
}

void GJUINode::highlightButton(int button) {
    if (m_modeB) return;
    this->toggleHighlight(button, true);
    this->toggleHighlight(button == 2 ? 3 : 2, false);
}

void GJUINode::loadFromConfig(UIButtonConfig& config) {
    this->updateSize(config.m_width, config.m_height);
    this->updateDragRadius(config.m_radius);
    this->updateDeadzone(config.m_deadzone);
    this->toggleModeB(config.m_modeB);
    m_snap = config.m_snap;
    this->updateButtonScale(config.m_scale);
    this->setOpacity(config.m_opacity);
    m_oneButton = config.m_oneButton;
    m_split = config.m_split;
    this->updateButtonFrames();
    if (config.m_player2) {
        this->setPosition({ cocos2d::CCDirector::sharedDirector()->getWinSize().width - config.m_position.x, config.m_position.y });
    }
    else {
        this->setPosition(config.m_position);
    }
}

void GJUINode::resetState() {
    m_touchID = -1;
    m_swiping = false;
    m_moving = false;
    this->toggleHighlight(2, false);
    this->toggleHighlight(3, false);
}

void GJUINode::setOpacity(unsigned char opacity) {
    m_firstSprite->setOpacity(opacity);
    if (m_secondSprite) m_secondSprite->setOpacity(opacity);
}

void GJUINode::toggleModeB(bool modeB) {
    if (m_secondSprite) {
        m_modeB = modeB;
        m_firstSprite->setVisible(!modeB);
        m_secondSprite->setVisible(!m_modeB);
        this->updateButtonFrames();
    }
}

void GJUINode::updateButtonScale(float scale) {
    if (scale < .1f) scale = .1f;
    m_firstSprite->setScale(scale);
    if (m_secondSprite) m_secondSprite->setScale(scale);
    this->updateButtonPositions();
}

void GJUINode::updateDragRadius(float radius) {
    if (radius < 0.f) radius = 0.f;
    m_radius = radius;
    this->updateButtonPositions();
}

void GJUINode::updateRangePos(cocos2d::CCPoint position) {
    m_firstSprite->setPosition(position + cocos2d::CCPoint { 0.f, 40.f });
    m_firstSprite->setVisible(true);
    m_swiping = true;
}

void GJUINode::updateSize(float width, float height) {
    if (width < 10.f) width = 10.f;
    if (height < 10.f) height = 10.f;
    m_rect.origin.x = width * -.5f;
    m_rect.origin.y = height * -.5f;
    m_rect.size.width = width;
    m_rect.size.height = height;
}
#endif

#if defined(GEODE_IS_IOS)
void GJUINode::toggleHighlight(int button, bool highlight) {
    if (m_modeB) {
        if (m_firstSprite) m_firstSprite->setColor({ 255, 255, 255 });
    }
    else {
        auto sprite = button == 3 ? m_secondSprite : m_firstSprite;
        if (sprite) sprite->setColor(highlight ? cocos2d::ccColor3B { 150, 150, 150 } : cocos2d::ccColor3B { 255, 255, 255 });
    }
}
#endif

