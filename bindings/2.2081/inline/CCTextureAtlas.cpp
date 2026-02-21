#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCTextureAtlas* cocos2d::CCTextureAtlas::create(const char* file, unsigned int capacity) {
    auto ret = new CCTextureAtlas();
    if (ret->initWithFile(file, capacity)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::CCTextureAtlas* cocos2d::CCTextureAtlas::createWithTexture(cocos2d::CCTexture2D* texture, unsigned int capacity) {
    auto ret = new CCTextureAtlas();
    if (ret->initWithTexture(texture, capacity)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

const char* cocos2d::CCTextureAtlas::description() {
    return CCString::createWithFormat("<CCTextureAtlas | totalQuads = %u>", m_uTotalQuads)->getCString();
}

void cocos2d::CCTextureAtlas::drawNumberOfQuads(unsigned int n) {
    this->drawNumberOfQuads(n, 0);
}

void cocos2d::CCTextureAtlas::increaseTotalQuadsWith(unsigned int amount) {
    m_uTotalQuads += amount;
    m_uMaxQuads = std::max(m_uMaxQuads, m_uTotalQuads);
}

bool cocos2d::CCTextureAtlas::initWithFile(const char* file, unsigned int capacity) {
    if (auto texture = CCTextureCache::sharedTextureCache()->addImage(file, false)) {
        return this->initWithTexture(texture, capacity);
    }
    return false;
}

void cocos2d::CCTextureAtlas::insertQuads(cocos2d::ccV3F_C4B_T2F_Quad* quads, unsigned int index, unsigned int amount) {
    m_uTotalQuads += amount;

    int remaining = m_uTotalQuads - 1 - index - amount;
    if (remaining > 0) {
        memmove(&m_pQuads[index + amount], &m_pQuads[index], sizeof(m_pQuads[0]) * remaining);
    }

    unsigned int max = index + amount;
    unsigned int j = 0;
    for (unsigned int i = index; i < max; i++) {
        m_pQuads[index] = quads[j];
        index++;
        j++;
    }

    m_bDirty = true;
}

void cocos2d::CCTextureAtlas::insertQuadFromIndex(unsigned int oldIndex, unsigned int newIndex) {
    if (oldIndex == newIndex) return;

    unsigned int howMany = (oldIndex - newIndex) > 0 ? (oldIndex - newIndex) : (newIndex - oldIndex);
    unsigned int dst = oldIndex;
    unsigned int src = oldIndex + 1;
    if (oldIndex > newIndex) {
        dst = newIndex + 1;
        src = newIndex;
    }

    ccV3F_C4B_T2F_Quad quadsBackup = m_pQuads[oldIndex];
    memmove(&m_pQuads[dst], &m_pQuads[src], sizeof(m_pQuads[0]) * howMany);
    m_pQuads[newIndex] = quadsBackup;

    m_bDirty = true;
}

void cocos2d::CCTextureAtlas::listenBackToForeground(cocos2d::CCObject* obj) {
    this->setupVBOandVAO();
    m_bDirty = true;
}

void cocos2d::CCTextureAtlas::moveQuadsFromIndex(unsigned int oldIndex, unsigned int amount, unsigned int newIndex) {
    if (oldIndex == newIndex) return;
    size_t quadSize = sizeof(ccV3F_C4B_T2F_Quad);
    auto tempQuads = static_cast<ccV3F_C4B_T2F_Quad*>(malloc( quadSize * amount));
    memcpy(tempQuads, &m_pQuads[oldIndex], quadSize * amount);
    if (newIndex < oldIndex) {
        memmove(&m_pQuads[newIndex], &m_pQuads[newIndex + amount], (oldIndex - newIndex) * quadSize);
    }
    else {
        memmove(&m_pQuads[oldIndex], &m_pQuads[oldIndex + amount], (newIndex - oldIndex) * quadSize);
    }
    memcpy(&m_pQuads[newIndex], tempQuads, amount * quadSize);
    free(tempQuads);
    m_bDirty = true;
}

void cocos2d::CCTextureAtlas::moveQuadsFromIndex(unsigned int index, unsigned int newIndex) {
    memmove(m_pQuads + newIndex, m_pQuads + index, (m_uTotalQuads - index) * sizeof(m_pQuads[0]));
}

void cocos2d::CCTextureAtlas::removeQuadsAtIndex(unsigned int index, unsigned int amount) {
    unsigned int remaining = m_uTotalQuads - index - amount;
    m_uTotalQuads -= amount;
    if (remaining != 0) {
        memmove(&m_pQuads[index], &m_pQuads[index+amount], sizeof(m_pQuads[0]) * remaining);
    }
    m_bDirty = true;
}
#endif

