#include <Geode/Bindings.hpp>

NumberInputLayer::NumberInputLayer() {
    m_okButton = nullptr;
    m_minimum = 4;
    m_maximum = 4;
    m_delegate = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
NumberInputLayer* NumberInputLayer::create() {
    auto ret = new NumberInputLayer();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void NumberInputLayer::deleteLast() {
    if (!m_inputString.empty()) {
        m_inputString = m_inputString.substr(0, m_inputString.size() - 1);
        this->updateNumberState();
    }
}

void NumberInputLayer::inputNumber(int num) {
    if (m_inputString.size() < m_maximum) {
        m_inputString += cocos2d::CCString::createWithFormat("%i", num)->getCString();
        this->updateNumberState();
    }
}

void NumberInputLayer::onDone(cocos2d::CCObject* sender) {
    if (m_delegate) m_delegate->numberInputClosed(this);
    this->onClose(nullptr);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

