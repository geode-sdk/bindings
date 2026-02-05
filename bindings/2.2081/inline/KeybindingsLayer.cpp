#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void KeybindingsLayer::incrementCountForPage(int page) {
    m_values->setObject(cocos2d::CCString::createWithFormat("%i", this->countForPage(page) + 1), this->pageKey(page));
}

const char* KeybindingsLayer::infoKey(int index) {
    return cocos2d::CCString::createWithFormat("info_%i", index)->getCString();
}

const char* KeybindingsLayer::layerKey(int page) {
    return cocos2d::CCString::createWithFormat("layer_%i", page)->getCString();
}

cocos2d::CCPoint KeybindingsLayer::nextPosition(int page) {
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    return winSize * .5f + cocos2d::CCPoint { 0.f, 100.f - (this->countForPage(page) * 30 + 30) };
}

const char* KeybindingsLayer::objectKey(int page) {
    return cocos2d::CCString::createWithFormat("object_%i", page)->getCString();
}

cocos2d::CCArray* KeybindingsLayer::objectsForPage(int page) {
    auto key = this->objectKey(page);
    auto objects = static_cast<cocos2d::CCArray*>(m_values->objectForKey(key));
    if (!objects) {
        objects = cocos2d::CCArray::create();
        m_values->setObject(objects, key);
    }
    return objects;
}

void KeybindingsLayer::onInfo(cocos2d::CCObject* sender) {
    FLAlertLayer::create(
        nullptr,
        "Info",
        m_values->valueForKey(this->infoKey(sender->getTag()))->getCString(),
        "OK",
        nullptr,
        300.f
    )->show();
}

void KeybindingsLayer::onToggle(cocos2d::CCObject* sender) {
    if (auto variable = static_cast<cocos2d::CCString*>(m_variables->objectForKey(sender->getTag()))) {
        GameManager::sharedState()->toggleGameVariable(variable->getCString());
    }
}

const char* KeybindingsLayer::pageKey(int page) {
    return cocos2d::CCString::createWithFormat("page_%i", page)->getCString();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

