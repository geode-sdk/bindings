#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool GJRewardItem::isShardType(SpecialRewardItem type) {
    return type == SpecialRewardItem::FireShard || type == SpecialRewardItem::IceShard || type == SpecialRewardItem::PoisonShard
        || type == SpecialRewardItem::ShadowShard || type == SpecialRewardItem::LavaShard || type == SpecialRewardItem::EarthShard
        || type == SpecialRewardItem::BloodShard || type == SpecialRewardItem::MetalShard || type == SpecialRewardItem::LightShard
        || type == SpecialRewardItem::SoulShard;
}
#endif

#if defined(GEODE_IS_WINDOWS)
GJRewardItem* GJRewardItem::createWithCoder(DS_Dictionary* dict) {
    auto ret = create();
    ret->dataLoaded(dict);
    return ret;
}

SpecialRewardItem GJRewardItem::getNextShardType(SpecialRewardItem type) {
    switch (type) {
        case SpecialRewardItem::FireShard: return SpecialRewardItem::IceShard;
        case SpecialRewardItem::IceShard: return SpecialRewardItem::PoisonShard;
        case SpecialRewardItem::PoisonShard: return SpecialRewardItem::ShadowShard;
        case SpecialRewardItem::ShadowShard: return SpecialRewardItem::LavaShard;
        case SpecialRewardItem::LavaShard: return SpecialRewardItem::EarthShard;
        case SpecialRewardItem::EarthShard: return SpecialRewardItem::BloodShard;
        case SpecialRewardItem::BloodShard: return SpecialRewardItem::MetalShard;
        case SpecialRewardItem::MetalShard: return SpecialRewardItem::LightShard;
        case SpecialRewardItem::LightShard: return SpecialRewardItem::SoulShard;
        case SpecialRewardItem::SoulShard: return SpecialRewardItem::FireShard;
        default: return (SpecialRewardItem)0;
    }
}

SpecialRewardItem GJRewardItem::getRandomNonMaxShardType() {
    auto type = getRandomShardType();
    for (int i = 10; i > 0; i--) {
        if (GameStatsManager::sharedState()->getStat(rewardItemToStat(type).c_str()) < 100) return type;
        type = getNextShardType(type);
    }
    return (SpecialRewardItem)0;
}

SpecialRewardItem GJRewardItem::getRandomShardType() {
    int randomValue = floorf((rand() / (float)RAND_MAX) * 10.f) + 1.f;
    switch (randomValue) {
        case 2: return SpecialRewardItem::IceShard;
        case 3: return SpecialRewardItem::PoisonShard;
        case 4: return SpecialRewardItem::ShadowShard;
        case 5: return SpecialRewardItem::LavaShard;
        case 6: return SpecialRewardItem::EarthShard;
        case 7: return SpecialRewardItem::BloodShard;
        case 8: return SpecialRewardItem::MetalShard;
        case 9: return SpecialRewardItem::LightShard;
        case 10: return SpecialRewardItem::SoulShard;
        default: return SpecialRewardItem::FireShard;
    }
}

bool GJRewardItem::canEncode() {
    return true;
}

void GJRewardItem::dataLoaded(DS_Dictionary* dict) {
    m_chestID = dict->getIntegerForKey("1");
    m_rewardType = (GJRewardType)dict->getIntegerForKey("2");
    auto rewardObjects = dict->getArrayForKey("3", false);
    CC_SAFE_RETAIN(rewardObjects);
    CC_SAFE_RELEASE(m_rewardObjects);
    m_rewardObjects = rewardObjects;
}

int GJRewardItem::getRewardCount(SpecialRewardItem type) {
    if (!m_rewardObjects) return 0;

    int count = 0;
    for (int i = 0; i < m_rewardObjects->count(); i++) {
        auto obj = static_cast<GJRewardObject*>(m_rewardObjects->objectAtIndex(i));
        if (obj->m_specialRewardItem == type) count += obj->m_total;
    }

    return count;
}

GJRewardObject* GJRewardItem::getRewardObjectForType(SpecialRewardItem type) {
    if (!m_rewardObjects) {
        auto rewardObjects = cocos2d::CCArray::create();
        CC_SAFE_RETAIN(rewardObjects);
        CC_SAFE_RELEASE(m_rewardObjects);
        m_rewardObjects = rewardObjects;
    }

    for (int i = 0; i < m_rewardObjects->count(); i++) {
        auto obj = static_cast<GJRewardObject*>(m_rewardObjects->objectAtIndex(i));
        if (obj->m_specialRewardItem == type) return obj;
    }

    auto obj = GJRewardObject::create(type, 0, 0);
    m_rewardObjects->addObject(obj);
    return obj;
}
#endif

#if defined(GEODE_IS_IOS)
GJRewardItem* GJRewardItem::createWithObject(GJRewardType type, GJRewardObject* object) {
    return createWithObjects(type, cocos2d::CCArray::createWithObject(object));
}

GJRewardItem* GJRewardItem::createWithObjects(GJRewardType type, cocos2d::CCArray* objects) {
    auto ret = create();
    if (ret->m_rewardObjects != objects) {
        CC_SAFE_RETAIN(objects);
        CC_SAFE_RELEASE(ret->m_rewardObjects);
        ret->m_rewardObjects = objects;
    }
    return ret;
}
#endif

