#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void CustomSFXWidget::updatePlaybackBtn() {}

bool CustomSFXWidget::verifySFXID(int id) {
    return m_sfxID == id && m_sfxID != 0;
}
#endif

#if defined(GEODE_IS_WINDOWS)
void CustomSFXWidget::deleteSFX() {
    FMODAudioEngine::sharedEngine()->stopAllEffects();
    MusicDownloadManager::sharedState()->deleteSFX(m_sfxObject->m_sfxID);
    this->updateSFXInfo();
    m_errorLabel->setVisible(true);
    m_errorLabel->setColor({ 255, 100, 0 });
    m_errorLabel->setString("SFX Deleted");
    m_errorLabel->limitLabelWidth(230.f, .4f, .0f);
}

void CustomSFXWidget::downloadFailed() {
    this->hideLoadingArt();
    this->unschedule(schedule_selector(CustomSFXWidget::updateDownloadProgress));
    m_showCancel = false;
    this->updateSFXInfo();
}

void CustomSFXWidget::startDownload() {
    m_showCancel = false;
    MusicDownloadManager::sharedState()->downloadSFX(m_sfxID);
    this->startMonitorDownload();
}

void CustomSFXWidget::updateError(GJSongError errorType) {
    m_errorLabel->setVisible(true);
    m_errorLabel->setColor({ 255, 50, 25 });
    switch (errorType) {
        case GJSongError::FailedToFetch:
            m_errorLabel->setString("Failed to fetch SFX info.");
            break;
        case GJSongError::NotAllowed:
            m_errorLabel->setString("SFX is not allowed for use.");
            break;
        case GJSongError::DownloadCancelled:
            m_errorLabel->setString("Download canceled.");
            break;
        default:
            m_errorLabel->setString("Download failed. Please try again later.");
            break;
    }
    m_errorLabel->limitLabelWidth(230.f, .4f, .0f);
}

void CustomSFXWidget::updateLengthMod(float mod) {
    m_lengthMod = mod;
    this->updateSFXInfo();
}

void CustomSFXWidget::updateSFXObject(SFXInfoObject* object) {
    m_errorLabel->setVisible(false);
    if (m_sfxObject != object) {
        CC_SAFE_RETAIN(object);
        CC_SAFE_RELEASE(m_sfxObject);
        m_sfxObject = object;
    }
    if (m_sfxObject) m_sfxID = m_sfxObject->m_sfxID;
    else m_sfxID = 0;
    this->updateSFXInfo();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

