#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void cocos2d::CCArray::addObjectNew(cocos2d::CCObject* p0) {
    ccArrayEnsureExtraCapacity(data, 1);
    p0->retain();
    data->arr[data->num] = p0;
    p0->m_uIndexInArray = data->num;
    data->num++;
}

void cocos2d::CCArray::fastRemoveObjectAtIndexChild(unsigned int p0) {
    auto last = --data->num;
    data->arr[last]->m_uUnknown = p0;
    CC_SAFE_RELEASE(data->arr[p0]);
    data->arr[p0] = data->arr[last];
}

void cocos2d::CCArray::fastRemoveObjectAtIndexNew(unsigned int p0) {
    auto last = --data->num;
    data->arr[last]->m_uIndexInArray = p0;
    CC_SAFE_RELEASE(data->arr[p0]);
    data->arr[p0] = data->arr[last];
}

void cocos2d::CCArray::recreateNewIndexes() {
    for (int i = 0; i < data->num; i++) {
        data->arr[i]->m_uIndexInArray = i;
    }
}
#endif

