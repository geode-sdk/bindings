#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void cocos2d::CCNode::childrenAlloc() {
    m_pChildren = CCArray::createWithCapacity(4);
    m_pChildren->retain();
}

cocos2d::CCPoint cocos2d::CCNode::convertToNodeSpaceAR(cocos2d::CCPoint const& worldPoint) {
    return convertToNodeSpace(worldPoint) - m_obAnchorPointInPoints;
}

cocos2d::CCPoint cocos2d::CCNode::convertTouchToNodeSpaceAR(cocos2d::CCTouch* p0) {
    return this->convertToNodeSpaceAR(p0->getLocation());
}

cocos2d::CCPoint cocos2d::CCNode::convertToWindowSpace(cocos2d::CCPoint const& p0) {
    return CCDirector::sharedDirector()->convertToUI(this->convertToWorldSpace(p0));
}

cocos2d::CCPoint cocos2d::CCNode::convertToWorldSpaceAR(cocos2d::CCPoint const& point) {
    return this->convertToWorldSpace(point + m_obAnchorPointInPoints);
}

char const* cocos2d::CCNode::description() {
    return CCString::createWithFormat("<CCNode | Tag = %d>", m_nTag)->getCString();
}

cocos2d::CCComponent* cocos2d::CCNode::getComponent(char const* p0) const  {
    return m_pComponentContainer->get(p0);
}

unsigned int cocos2d::CCNode::numberOfRunningActions() {
    return m_pActionManager->numberOfRunningActionsInTarget(this);
}

void cocos2d::CCNode::schedule(cocos2d::SEL_SCHEDULE selector, float interval, unsigned int repeat, float delay) {
    m_pScheduler->scheduleSelector(selector, this, interval, repeat, delay, !m_bRunning);
}

void cocos2d::CCNode::scheduleOnce(cocos2d::SEL_SCHEDULE selector, float delay) {
    this->schedule(selector, 0.0f, 0, delay);
}

void cocos2d::CCNode::scheduleUpdateWithPriorityLua(int p0, int p1) {
    this->unscheduleUpdate();
    m_nUpdateScriptHandler = p0;
    m_pScheduler->scheduleUpdateForTarget(this, p1, !m_bRunning);
}

void cocos2d::CCNode::setAdditionalTransform(cocos2d::CCAffineTransform const& additionalTransform) {
    m_sAdditionalTransform = additionalTransform;
    m_bTransformDirty = true;
    m_bAdditionalTransformDirty = true;
}

void cocos2d::CCNode::sortAllChildrenWithIndex() {
    this->qsortAllChildrenWithIndex();
}

void cocos2d::CCNode::stopAction(cocos2d::CCAction* action) {
    m_pActionManager->removeAction(action);
}
#endif

