#include <Geode/Geode.hpp>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCSpawn* cocos2d::CCSpawn::create(cocos2d::CCArray* arrayOfActions) {
    CCSpawn* pRet = NULL;
    do 
    {
        unsigned  int count = arrayOfActions->count();
        CC_BREAK_IF(count == 0);
        CCFiniteTimeAction* prev = (CCFiniteTimeAction*)arrayOfActions->objectAtIndex(0);
        if (count > 1)
        {
            for (unsigned int i = 1; i < arrayOfActions->count(); ++i)
            {
                prev = createWithTwoActions(prev, (CCFiniteTimeAction*)arrayOfActions->objectAtIndex(i));
            }
        }
        else
        {
            // If only one action is added to CCSpawn, make up a CCSpawn by adding a simplest finite time action.
            // ExtraAction doesnt exist for some reason
            CCFiniteTimeAction* action = new CCFiniteTimeAction();
            if (action) {
                action->autorelease();
            }
            prev = createWithTwoActions(prev, action);
        }
        pRet = (CCSpawn*)prev;
    }while (0);

    return pRet;
}
#endif

#ifndef GEODE_IS_ANDROID
cocos2d::CCSpawn* cocos2d::CCSpawn::create(cocos2d::CCFiniteTimeAction* first, ...) {
    va_list args;
    va_start(args, first);
    auto* array = cocos2d::CCArray::create();
    array->addObject(first);
    while (auto* action = va_arg(args, cocos2d::CCFiniteTimeAction*)) {
        array->addObject(action);
    }
    va_end(args);
    return cocos2d::CCSpawn::create(array);
}
#endif
