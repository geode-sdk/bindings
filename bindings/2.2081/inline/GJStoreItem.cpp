#include <Geode/Geode.hpp>

GJStoreItem::GJStoreItem() {
    m_index = 0;
    m_typeID = 0;
    m_unlockType = 0;
    m_price = 0;
    m_shopType = ShopType::Normal;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GJStoreItem* GJStoreItem::create(int index, int typeID, int unlockType, int price, ShopType shopType) {
    auto ret = new GJStoreItem();
    if (ret->init(index, typeID, unlockType, price, shopType)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

gd::string GJStoreItem::getCurrencyKey() {
    return m_shopType == ShopType::Diamond ? "29" : "14";
}

bool GJStoreItem::init(int index, int typeID, int unlockType, int price, ShopType shopType) {
    if (!CCNode::init()) return false;
    m_index = index;
    m_typeID = typeID;
    m_unlockType = unlockType;
    m_price = price;
    m_shopType = shopType;
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

