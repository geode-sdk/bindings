#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
const char* cocos2d::CCEGLViewProtocol::getViewName() {
    return m_szViewName;
}

void cocos2d::CCEGLViewProtocol::updateDesignResolutionSize() {
    if (m_obScreenSize.width <= 0.f || m_obScreenSize.height <= 0.f || m_obDesignResolutionSize.width <= 0.f || m_obDesignResolutionSize.height <= 0.f) {
        return;
    }

    m_fScaleX = m_obScreenSize.width / m_obDesignResolutionSize.width;
    m_fScaleY = m_obScreenSize.height / m_obDesignResolutionSize.height;

    switch (m_eResolutionPolicy) {
        case kResolutionNoBorder: {
            auto maxScale = std::max(m_fScaleX, m_fScaleY);
            m_fScaleX = maxScale;
            m_fScaleY = maxScale;
            break;
        }
        case kResolutionShowAll: {
            auto minScale = std::min(m_fScaleX, m_fScaleY);
            m_fScaleX = minScale;
            m_fScaleY = minScale;
            break;
        }
        case kResolutionFixedHeight: {
            m_fScaleX = m_fScaleY;
            m_obDesignResolutionSize.width = m_obScreenSize.width / m_fScaleX;
            break;
        }
        case kResolutionFixedWidth: {
            m_fScaleY = m_fScaleX;
            m_obDesignResolutionSize.height = m_obScreenSize.height / m_fScaleY;
            break;
        }
        default:
            break;
    }

    m_obViewPortRect.origin.x = (m_obScreenSize.width - m_obDesignResolutionSize.width * m_fScaleX) / 2.f;
    m_obViewPortRect.origin.y = (m_obScreenSize.height - m_obDesignResolutionSize.height * m_fScaleY) / 2.f;
    m_obViewPortRect.size.width = m_obDesignResolutionSize.width * m_fScaleX;
    m_obViewPortRect.size.height = m_obDesignResolutionSize.height * m_fScaleY;

    auto director = CCDirector::sharedDirector();
    director->m_obWinSizeInPoints = this->getDesignResolutionSize();
    director->createStatsLabel();
    director->setGLDefaultValues();
}
#endif

