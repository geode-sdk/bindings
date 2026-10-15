#include <Geode/Bindings.hpp>
#include <Geode/cocos/support/data_support/utlist.h>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
typedef struct cocos2d::_listEntry {
    _listEntry* prev;
    _listEntry* next;
    CCObject* target;
    int priority;
    bool paused;
    bool markedForDeletion;
} tListEntry;

typedef struct cocos2d::_hashUpdateEntry {
    tListEntry** list;
    tListEntry* entry;
    CCObject* target;
    UT_hash_handle hh;
} tHashUpdateEntry;

typedef struct cocos2d::_hashSelectorEntry {
    ccArray* timers;
    CCObject* target;
    unsigned int timerIndex;
    CCTimer* currentTimer;
    bool currentTimerSalvaged;
    bool paused;
    UT_hash_handle hh;
} tHashTimerEntry;

bool cocos2d::CCScheduler::isTargetPaused(cocos2d::CCObject* target) {
    tHashTimerEntry* element = nullptr;
    HASH_FIND_INT(m_pHashForTimers, &target, element);
    if (element) return element->paused;

    tHashUpdateEntry* elementUpdate = nullptr;
    HASH_FIND_INT(m_pHashForUpdates, &target, elementUpdate);
    if (elementUpdate) return elementUpdate->entry->paused;

    return false;
}

cocos2d::CCSet* cocos2d::CCScheduler::pauseAllTargets() {
    return this->pauseAllTargetsWithMinPriority(kCCPrioritySystem);
}

cocos2d::CCSet* cocos2d::CCScheduler::pauseAllTargetsWithMinPriority(int minPriority) {
    auto idsWithSelectors = new CCSet();
    idsWithSelectors->autorelease();

    for (auto element = m_pHashForTimers; element != nullptr; element = static_cast<tHashTimerEntry*>(element->hh.next)) {
        element->paused = true;
        idsWithSelectors->addObject(element->target);
    }

    tListEntry* entry;
    tListEntry* tmp;

    if (minPriority < 0) {
        DL_FOREACH_SAFE(m_pUpdatesNegList, entry, tmp) {
            if (entry->priority >= minPriority) {
                entry->paused = true;
                idsWithSelectors->addObject(entry->target);
            }
        }
    }

    if (minPriority <= 0) {
        DL_FOREACH_SAFE(m_pUpdates0List, entry, tmp) {
            entry->paused = true;
            idsWithSelectors->addObject(entry->target);
        }
    }

    DL_FOREACH_SAFE(m_pUpdatesPosList, entry, tmp) {
        if (entry->priority >= minPriority) {
            entry->paused = true;
            idsWithSelectors->addObject(entry->target);
        }
    }

    return idsWithSelectors;
}

void cocos2d::CCScheduler::resumeTargets(cocos2d::CCSet* pTargetsToResume) {
    for (auto obj : *pTargetsToResume) {
        this->resumeTarget(obj);
    }
}
#endif

