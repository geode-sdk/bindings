#include <Geode/Bindings.hpp>
#include <Geode/utils/cocos.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void cocos2d::CCSpriteBatchNode::updateBlendFunc() {
    if (!m_pobTextureAtlas->getTexture()->hasPremultipliedAlpha()) {
        m_blendFunc.src = GL_SRC_ALPHA;
        m_blendFunc.dst = GL_ONE_MINUS_SRC_ALPHA;
    }
    else {
        m_blendFunc.src = CC_BLEND_SRC;
        m_blendFunc.dst = CC_BLEND_DST;
    }
}

void cocos2d::CCSpriteBatchNode::removeChildAtIndex(unsigned int index, bool doCleanup) {
    this->removeChild(static_cast<CCNode*>(m_pChildren->objectAtIndex(index)), doCleanup);
}

unsigned int cocos2d::CCSpriteBatchNode::rebuildIndexInOrder(cocos2d::CCSprite* pobParent, unsigned int uIndex) {
    CCArray* pChildren = pobParent->getChildren();

    if (pChildren && pChildren->count() > 0) {
        for (CCSprite* pChild : geode::cocos::CCArrayExt<CCSprite*, false>(pChildren)) {
            if (pChild && (pChild->getZOrder() < 0)) {
                uIndex = rebuildIndexInOrder(pChild, uIndex);
            }
        }
    }

    if (!pobParent->isEqual(this)) {
        pobParent->setAtlasIndex(uIndex);
        uIndex++;
    }

    if (pChildren && pChildren->count() > 0) {
        for (CCSprite* pChild : geode::cocos::CCArrayExt<CCSprite*, false>(pChildren)) {
            if (pChild && (pChild->getZOrder() >= 0)) {
                uIndex = rebuildIndexInOrder(pChild, uIndex);
            }
        }
    }

    return uIndex;
}

unsigned int cocos2d::CCSpriteBatchNode::highestAtlasIndexInChild(cocos2d::CCSprite* pSprite) {
    CCArray* pChildren = pSprite->getChildren();

    if (!pChildren || pChildren->count() == 0) {
        return pSprite->getAtlasIndex();
    }
    else {
        return highestAtlasIndexInChild((CCSprite*)(pChildren->lastObject()));
    }
}

unsigned int cocos2d::CCSpriteBatchNode::lowestAtlasIndexInChild(cocos2d::CCSprite* pSprite) {
    CCArray* pChildren = pSprite->getChildren();

    if (!pChildren || pChildren->count() == 0) {
        return pSprite->getAtlasIndex();
    }
    else {
        return lowestAtlasIndexInChild((CCSprite*)(pChildren->objectAtIndex(0)));
    }
}

unsigned int cocos2d::CCSpriteBatchNode::atlasIndexForChild(cocos2d::CCSprite* pobSprite, int nZ) {
    CCArray* pBrothers = pobSprite->getParent()->getChildren();
    unsigned int uChildIndex = pBrothers->indexOfObject(pobSprite);

    bool bIgnoreParent = (CCSpriteBatchNode*)(pobSprite->getParent()) == this;
    CCSprite* pPrevious = nullptr;
    if (uChildIndex > 0 &&
        uChildIndex < UINT_MAX) {
        pPrevious = (CCSprite*)(pBrothers->objectAtIndex(uChildIndex - 1));
    }

    if (bIgnoreParent) {
        if (uChildIndex == 0) {
            return 0;
        }

        return highestAtlasIndexInChild(pPrevious) + 1;
    }

    if (uChildIndex == 0) {
        CCSprite* p = (CCSprite*)(pobSprite->getParent());

        if (nZ < 0) {
            return p->getAtlasIndex();
        }
        else {
            return p->getAtlasIndex() + 1;
        }
    }
    else {
        if ((pPrevious->getZOrder() < 0 && nZ < 0) || (pPrevious->getZOrder() >= 0 && nZ >= 0)) {
            return highestAtlasIndexInChild(pPrevious) + 1;
        }

        CCSprite* p = (CCSprite*)(pobSprite->getParent());
        return p->getAtlasIndex() + 1;
    }

    return 0;
}

void cocos2d::CCSpriteBatchNode::insertChild(cocos2d::CCSprite* pSprite, unsigned int uIndex) {
    pSprite->setBatchNode(this);
    pSprite->setAtlasIndex(uIndex);
    pSprite->setDirty(true);

    if (m_pobTextureAtlas->getTotalQuads() == m_pobTextureAtlas->getCapacity()) {
        increaseAtlasCapacity();
    }

    ccV3F_C4B_T2F_Quad quad = pSprite->getQuad();
    m_pobTextureAtlas->insertQuad(&quad, uIndex);

    ccArray* descendantsData = m_pobDescendants->data;

    ccArrayInsertObjectAtIndex(descendantsData, pSprite, uIndex);

    unsigned int i = uIndex + 1;

    CCSprite* pChild = nullptr;
    for (; i < descendantsData->num; i++){
        pChild = (CCSprite*)descendantsData->arr[i];
        pChild->setAtlasIndex(pChild->getAtlasIndex() + 1);
    }

    for (CCSprite* pChild : geode::cocos::CCArrayExt<CCSprite*, false>(pSprite->getChildren())) {
        unsigned int idx = atlasIndexForChild(pChild, pChild->getZOrder());
        insertChild(pChild, idx);
    }
}

void cocos2d::CCSpriteBatchNode::insertQuadFromSprite(cocos2d::CCSprite* sprite, unsigned int index) {
    while(index >= m_pobTextureAtlas->getCapacity() || m_pobTextureAtlas->getCapacity() == m_pobTextureAtlas->getTotalQuads()) {
        this->increaseAtlasCapacity();
    }

    sprite->setBatchNode(this);
    sprite->setAtlasIndex(index);

    ccV3F_C4B_T2F_Quad quad = sprite->getQuad();
    m_pobTextureAtlas->insertQuad(&quad, index);

    sprite->setDirty(true);
    sprite->updateTransform();
}

void cocos2d::CCSpriteBatchNode::updateQuadFromSprite(cocos2d::CCSprite* sprite, unsigned int index) {
    while (index >= m_pobTextureAtlas->getCapacity() || m_pobTextureAtlas->getCapacity() == m_pobTextureAtlas->getTotalQuads()) {
        this->increaseAtlasCapacity();
    }

    sprite->setBatchNode(this);
    sprite->setAtlasIndex(index);

    sprite->setDirty(true);

    sprite->updateTransform();
}

cocos2d::CCSpriteBatchNode* cocos2d::CCSpriteBatchNode::addSpriteWithoutQuad(CCSprite* child, unsigned int z, int aTag) {
    child->setAtlasIndex(z);

    int i = 0;

    for (CCSprite* pChild : geode::cocos::CCArrayExt<CCSprite*, false>(m_pobDescendants)) {
        if (pChild && (pChild->getAtlasIndex() >= z))
            break;
        ++i;
    }

    m_pobDescendants->insertObject(child, i);

    CCNode::addChild(child, z, aTag);
    reorderBatch(false);

    return this;
}
#endif

