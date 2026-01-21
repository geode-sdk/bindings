#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void FindBPMLayer::calculateBPM() {
    if (m_beats > 1) {
        m_beatsPerMinute = roundf(60.f / ((m_elapsed - m_startOffset) / (float)(m_beats - 1)));
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
void FindBPMLayer::onInfo(cocos2d::CCObject* sender) {}

bool FindBPMLayer::init(int songID) {
    if (!CreateGuidelinesLayer::init(nullptr, AudioGuidelinesType::BPMFinder)) return false;
    m_songID = songID;
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    m_bpmLabel = cocos2d::CCLabelBMFont::create("BPM", "bigFont.fnt");
    m_mainLayer->addChild(m_bpmLabel, 1);
    m_bpmLabel->setPosition(winSize * .5f);
    m_recordingObjects->addObject(m_bpmLabel);
    auto songObject = MusicDownloadManager::sharedState()->getSongInfoObject(m_songID);
    if (songObject && songObject->m_BPM > 0) {
        m_infoLabel->setString(cocos2d::CCString::createWithFormat("BPM: %i", songObject->m_BPM)->getCString());
    }
    this->toggleItems(false);
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

