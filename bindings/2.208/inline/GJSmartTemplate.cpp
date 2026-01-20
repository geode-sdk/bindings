#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
SmartBlockType GJSmartTemplate::getSimplifiedType(SmartBlockType type, bool& changed) {
    switch (type) {
        case SmartBlockType::NormalSlope1: case SmartBlockType::NormalSlope2:
        case SmartBlockType::NormalSlope3: case SmartBlockType::NormalSlope4:
        case SmartBlockType::WideSlope1: case SmartBlockType::WideSlope2:
        case SmartBlockType::WideSlope3: case SmartBlockType::WideSlope4:
        case SmartBlockType::WideSlope5: case SmartBlockType::WideSlope6:
        case SmartBlockType::WideSlope7: case SmartBlockType::WideSlope8:
        case SmartBlockType::WideSlope9: case SmartBlockType::WideSlope10:
        case SmartBlockType::WideSlope11: case SmartBlockType::WideSlope12:
        case SmartBlockType::WideSlope13: case SmartBlockType::WideSlope14:
        case SmartBlockType::WideSlope15: case SmartBlockType::WideSlope16:
            changed = true;
            return SmartBlockType::Block;
        default: return type;
    }
}

gd::string GJSmartTemplate::keyFromNeighborsOld(bool left, bool right, bool top, bool bottom, bool topLeft, bool topRight, bool bottomLeft, bool bottomRight) {
    fmt::memory_buffer buffer;
    fmt::format_to(std::back_inserter(buffer), "{}{}{}{}{}{}{}{}{}", 1, (int)left, (int)right, (int)top, (int)bottom, (int)topLeft, (int)topRight, (int)bottomLeft, (int)bottomRight);
    return fmt::to_string(buffer);
}

GJSmartPrefab* GJSmartTemplate::getPrefab(cocos2d::CCPoint position, SmartGameObject* object, SmartGameObject* left, SmartGameObject* right, SmartGameObject* top, SmartGameObject* bottom, SmartGameObject* topLeft, SmartGameObject* topRight, SmartGameObject* bottomLeft, SmartGameObject* bottomRight) {
    return this->getPrefab(keyFromNeighbors(position, object, left, right, top, bottom, topLeft, topRight, bottomLeft, bottomRight), false, false);
}
#endif

#if defined(GEODE_IS_WINDOWS)
GJSmartTemplate* GJSmartTemplate::createWithCoder(DS_Dictionary* dict) {
    auto ret = GJSmartTemplate::create();
    ret->dataLoaded(dict);
    return ret;
}

SmartBlockType GJSmartTemplate::flipBlockTypeX(SmartBlockType type) {
    switch (type) {
        case SmartBlockType::NormalSlope1: return SmartBlockType::NormalSlope2;
        case SmartBlockType::NormalSlope2: return SmartBlockType::NormalSlope1;
        case SmartBlockType::NormalSlope3: return SmartBlockType::NormalSlope4;
        case SmartBlockType::NormalSlope4: return SmartBlockType::NormalSlope3;
        case SmartBlockType::WideSlope1: return SmartBlockType::WideSlope3;
        case SmartBlockType::WideSlope2: return SmartBlockType::WideSlope4;
        case SmartBlockType::WideSlope3: return SmartBlockType::WideSlope1;
        case SmartBlockType::WideSlope4: return SmartBlockType::WideSlope2;
        case SmartBlockType::WideSlope5: return SmartBlockType::WideSlope7;
        case SmartBlockType::WideSlope6: return SmartBlockType::WideSlope8;
        case SmartBlockType::WideSlope7: return SmartBlockType::WideSlope5;
        case SmartBlockType::WideSlope8: return SmartBlockType::WideSlope6;
        case SmartBlockType::WideSlope9: return SmartBlockType::WideSlope11;
        case SmartBlockType::WideSlope10: return SmartBlockType::WideSlope12;
        case SmartBlockType::WideSlope11: return SmartBlockType::WideSlope9;
        case SmartBlockType::WideSlope12: return SmartBlockType::WideSlope10;
        case SmartBlockType::WideSlope13: return SmartBlockType::WideSlope15;
        case SmartBlockType::WideSlope14: return SmartBlockType::WideSlope16;
        case SmartBlockType::WideSlope15: return SmartBlockType::WideSlope13;
        case SmartBlockType::WideSlope16: return SmartBlockType::WideSlope14;
        default: return type;
    }
}

SmartBlockType GJSmartTemplate::flipBlockTypeY(SmartBlockType type) {
    switch (type) {
        case SmartBlockType::NormalSlope1: return SmartBlockType::NormalSlope3;
        case SmartBlockType::NormalSlope2: return SmartBlockType::NormalSlope4;
        case SmartBlockType::NormalSlope3: return SmartBlockType::NormalSlope1;
        case SmartBlockType::NormalSlope4: return SmartBlockType::NormalSlope2;
        case SmartBlockType::WideSlope1: return SmartBlockType::WideSlope5;
        case SmartBlockType::WideSlope2: return SmartBlockType::WideSlope6;
        case SmartBlockType::WideSlope3: return SmartBlockType::WideSlope7;
        case SmartBlockType::WideSlope4: return SmartBlockType::WideSlope8;
        case SmartBlockType::WideSlope5: return SmartBlockType::WideSlope1;
        case SmartBlockType::WideSlope6: return SmartBlockType::WideSlope2;
        case SmartBlockType::WideSlope7: return SmartBlockType::WideSlope3;
        case SmartBlockType::WideSlope8: return SmartBlockType::WideSlope4;
        case SmartBlockType::WideSlope9: return SmartBlockType::WideSlope13;
        case SmartBlockType::WideSlope10: return SmartBlockType::WideSlope14;
        case SmartBlockType::WideSlope11: return SmartBlockType::WideSlope15;
        case SmartBlockType::WideSlope12: return SmartBlockType::WideSlope16;
        case SmartBlockType::WideSlope13: return SmartBlockType::WideSlope9;
        case SmartBlockType::WideSlope14: return SmartBlockType::WideSlope10;
        case SmartBlockType::WideSlope15: return SmartBlockType::WideSlope11;
        case SmartBlockType::WideSlope16: return SmartBlockType::WideSlope12;
        default: return type;
    }
}

gd::string GJSmartTemplate::keyFromNeighbors(SmartBlockType type, SmartBlockType left, SmartBlockType right, SmartBlockType top, SmartBlockType bottom, SmartBlockType topLeft, SmartBlockType topRight, SmartBlockType bottomLeft, SmartBlockType bottomRight) {
    std::string result;
    result += (char)type;
    result += (char)left;
    result += (char)right;
    result += (char)top;
    result += (char)bottom;
    result += (char)topLeft;
    result += (char)topRight;
    result += (char)bottomLeft;
    result += (char)bottomRight;
    return result;
}

cocos2d::CCPoint GJSmartTemplate::offsetForObject(SmartGameObject* object) {
    return object ? offsetForType(smartObjectToType(object, { 0.f, 0.f })) : cocos2d::CCPoint{ 0.f, 0.f };
}

SmartBlockType GJSmartTemplate::rotateBlockType90(SmartBlockType type) {
    switch (type) {
        case SmartBlockType::NormalSlope1: return SmartBlockType::NormalSlope2;
        case SmartBlockType::NormalSlope2: return SmartBlockType::NormalSlope4;
        case SmartBlockType::NormalSlope3: return SmartBlockType::NormalSlope1;
        case SmartBlockType::NormalSlope4: return SmartBlockType::NormalSlope3;
        case SmartBlockType::WideSlope1: return SmartBlockType::WideSlope11;
        case SmartBlockType::WideSlope2: return SmartBlockType::WideSlope12;
        case SmartBlockType::WideSlope3: return SmartBlockType::WideSlope15;
        case SmartBlockType::WideSlope4: return SmartBlockType::WideSlope16;
        case SmartBlockType::WideSlope5: return SmartBlockType::WideSlope9;
        case SmartBlockType::WideSlope6: return SmartBlockType::WideSlope10;
        case SmartBlockType::WideSlope7: return SmartBlockType::WideSlope13;
        case SmartBlockType::WideSlope8: return SmartBlockType::WideSlope14;
        case SmartBlockType::WideSlope9: return SmartBlockType::WideSlope3;
        case SmartBlockType::WideSlope10: return SmartBlockType::WideSlope4;
        case SmartBlockType::WideSlope11: return SmartBlockType::WideSlope7;
        case SmartBlockType::WideSlope12: return SmartBlockType::WideSlope8;
        case SmartBlockType::WideSlope13: return SmartBlockType::WideSlope1;
        case SmartBlockType::WideSlope14: return SmartBlockType::WideSlope2;
        case SmartBlockType::WideSlope15: return SmartBlockType::WideSlope5;
        case SmartBlockType::WideSlope16: return SmartBlockType::WideSlope6;
        default: return type;
    }
}

bool GJSmartTemplate::shouldDiscardObject(SmartBlockType type, GJSmartDirection direction) {
    switch (type) {
        case SmartBlockType::WideSlope2: case SmartBlockType::WideSlope6:
            return direction == GJSmartDirection::Top ||
                direction == GJSmartDirection::Bottom ||
                direction == GJSmartDirection::TopRight ||
                direction == GJSmartDirection::BottomRight;
        case SmartBlockType::WideSlope4: case SmartBlockType::WideSlope8:
            return direction == GJSmartDirection::Top ||
                direction == GJSmartDirection::Bottom ||
                direction == GJSmartDirection::TopLeft ||
                direction == GJSmartDirection::BottomLeft;
        case SmartBlockType::WideSlope10: case SmartBlockType::WideSlope12:
            return direction == GJSmartDirection::Left ||
                direction == GJSmartDirection::Right ||
                direction == GJSmartDirection::BottomLeft ||
                direction == GJSmartDirection::BottomRight;
        case SmartBlockType::WideSlope14: case SmartBlockType::WideSlope16:
            return direction == GJSmartDirection::Left ||
                direction == GJSmartDirection::Right ||
                direction == GJSmartDirection::TopLeft ||
                direction == GJSmartDirection::TopRight;
        default:
            return false;
    }
}

int GJSmartTemplate::smartTypeToObjectKey(SmartBlockType type) {
    switch (type) {
        case SmartBlockType::NormalSlope1:
        case SmartBlockType::NormalSlope2:
        case SmartBlockType::NormalSlope3:
        case SmartBlockType::NormalSlope4:
            return 2896;
        case SmartBlockType::WideSlope1:
        case SmartBlockType::WideSlope2:
        case SmartBlockType::WideSlope3:
        case SmartBlockType::WideSlope4:
        case SmartBlockType::WideSlope5:
        case SmartBlockType::WideSlope6:
        case SmartBlockType::WideSlope7:
        case SmartBlockType::WideSlope8:
        case SmartBlockType::WideSlope9:
        case SmartBlockType::WideSlope10:
        case SmartBlockType::WideSlope11:
        case SmartBlockType::WideSlope12:
        case SmartBlockType::WideSlope13:
        case SmartBlockType::WideSlope14:
        case SmartBlockType::WideSlope15:
        case SmartBlockType::WideSlope16:
            return 2897;
        default:
            return 2895;
    }
}

bool GJSmartTemplate::canEncode() { return true; }

cocos2d::CCArray* GJSmartTemplate::getPrefabs(gd::string key) {
    return static_cast<cocos2d::CCArray*>(m_prefabArrays->objectForKey(key));
}

bool GJSmartTemplate::init() {
    CC_SAFE_RELEASE(m_prefabArrays);
    m_prefabArrays = cocos2d::CCDictionary::create();
    m_prefabArrays->retain();
    m_remapDict1 = cocos2d::CCDictionary::create();
    m_remapDict1->retain();
    m_remapDict2 = cocos2d::CCDictionary::create();
    m_remapDict2->retain();
    m_remapDict3 = cocos2d::CCDictionary::create();
    m_remapDict3->retain();
    m_remapDict4 = cocos2d::CCDictionary::create();
    m_remapDict4->retain();
    m_remapDict5 = cocos2d::CCDictionary::create();
    m_remapDict5->retain();
    m_remapDict6 = cocos2d::CCDictionary::create();
    m_remapDict6->retain();
    return true;
}

void GJSmartTemplate::removePrefab(gd::string prefabKey, int prefabID) {
    if (prefabID <= 0) return;
    auto prefabArray = static_cast<cocos2d::CCArray*>(m_prefabArrays->objectForKey(prefabKey));
    if (!prefabArray || prefabArray->count() == 0) return;
    for (int i = 0; i < prefabArray->count(); i++) {
        auto prefab = static_cast<GJSmartPrefab*>(prefabArray->objectAtIndex(i));
        if (prefab->m_prefabID == prefabID) {
            prefabArray->removeObjectAtIndex(i);
            break;
        }
    }
}

void GJSmartTemplate::resetScannedPrefabs() {
    m_prefabResults.clear();
}

void GJSmartTemplate::savePrefab(gd::string key, gd::string data) {
    m_unk0a8 = "";
    auto prefabArray = static_cast<cocos2d::CCArray*>(m_prefabArrays->objectForKey(key));
    if (!prefabArray) {
        prefabArray = cocos2d::CCArray::create();
        m_prefabArrays->setObject(prefabArray, key);
    }
    for (int i = 0; i < prefabArray->count(); i++) {
        if (static_cast<GJSmartPrefab*>(prefabArray->objectAtIndex(i))->m_prefabData == data) return;
    }
    auto prefab = GJSmartPrefab::create();
    prefab->m_prefabKey = key;
    prefab->m_prefabData = data;
    prefabArray->addObject(prefab);
    this->saveRemap(key);
}
#endif

#if defined(GEODE_IS_IOS)
SmartBlockType GJSmartTemplate::rotateBlockType(SmartBlockType type, int degrees) {
    if (type == SmartBlockType::Block || degrees == 0) return type;
    for (; degrees > 0; degrees -= 90) {
        type = rotateBlockType90(type);
    }
    return type;
}
#endif

