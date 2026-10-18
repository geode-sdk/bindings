#include <Geode/Bindings.hpp>

RandTriggerGameObject::RandTriggerGameObject() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
RandTriggerGameObject* RandTriggerGameObject::create() {
    auto ret = new RandTriggerGameObject();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

int RandTriggerGameObject::getRandomGroupID() {
    int num = this->getTotalChance() * GameToolbox::fast_rand_0_1();
    auto chance = 0;
    for (auto& obj : m_chanceObjects) {
        chance += obj.m_chance;
        if (num <= chance) return obj.m_groupID;
    }
    return 0;
}

int RandTriggerGameObject::getTotalChance() {
    auto total = 0;
    for (auto& obj : m_chanceObjects) {
        total += obj.m_chance;
    }
    return total;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

