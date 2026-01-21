#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
GJRewardObject* GJRewardObject::create() {
    auto ret = create(SpecialRewardItem::FireShard, 0, 0); // the first param is meant to be 0
    return ret;
}

bool GJRewardObject::init(SpecialRewardItem specialRewardItem, int total, int itemID) {
    this->m_specialRewardItem = specialRewardItem;
    this->m_total = total;
    this->m_itemID = itemID;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
GJRewardObject* GJRewardObject::createWithCoder(DS_Dictionary* dict) {
    auto ret = create();
    ret->dataLoaded(dict);
    return ret;
}

bool GJRewardObject::canEncode() {
    return true;
}

void GJRewardObject::dataLoaded(DS_Dictionary* dict) {
    m_specialRewardItem = (SpecialRewardItem)dict->getIntegerForKey("1");
    m_itemID = dict->getIntegerForKey("2");
    m_total = dict->getIntegerForKey("3");
    m_unlockType = (UnlockType)dict->getIntegerForKey("4");
}

bool GJRewardObject::isSpecialType() {
    auto type = m_specialRewardItem;
    return type == SpecialRewardItem::FireShard || type == SpecialRewardItem::IceShard || type == SpecialRewardItem::PoisonShard
        || type == SpecialRewardItem::ShadowShard || type == SpecialRewardItem::LavaShard || type == SpecialRewardItem::BonusKey
        || type == SpecialRewardItem::EarthShard || type == SpecialRewardItem::BloodShard || type == SpecialRewardItem::MetalShard
        || type == SpecialRewardItem::LightShard || type == SpecialRewardItem::SoulShard;
}
#endif

#if defined(GEODE_IS_IOS)
GJRewardObject* GJRewardObject::createItemUnlock(UnlockType type, int id) {
    auto ret = create(SpecialRewardItem::CustomItem, 1, id);
    ret->m_unlockType = type;
    return ret;
}
#endif

