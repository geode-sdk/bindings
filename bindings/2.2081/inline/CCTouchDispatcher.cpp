#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void cocos2d::CCTouchDispatcher::rearrangeHandlers(cocos2d::CCArray* handlers) {
    std::sort(handlers->data->arr, handlers->data->arr + handlers->data->num, [](const CCObject* p1, const CCObject* p2) {
        return ((CCTouchHandler*)p1)->getPriority() < ((CCTouchHandler*)p2)->getPriority();
    });
}

void cocos2d::CCTouchDispatcher::setPriority(int p1, cocos2d::CCTouchDelegate* p2) {
	auto* handler = this->findHandler(p2);
	auto priority = handler->getPriority();

	if (p1 != priority) {
		handler->setPriority(p1);
		this->rearrangeHandlers(m_pTargetedHandlers);
		this->rearrangeHandlers(m_pStandardHandlers);
	}
}
#endif

