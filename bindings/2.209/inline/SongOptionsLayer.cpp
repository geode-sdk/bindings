#include <Geode/Bindings.hpp>

SongOptionsLayer::SongOptionsLayer() {
    m_delegate = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SongOptionsLayer* SongOptionsLayer::create(CustomSongDelegate* delegate) {
    auto ret = new SongOptionsLayer();
    if (ret->init(delegate)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void SongOptionsLayer::updatePlaybackBtn() {
    auto playbackSprite = static_cast<cocos2d::CCSprite*>(m_playbackButton->getNormalImage());
    if (FMODAudioEngine::sharedEngine()->isMusicPlaying(0)) {
        playbackSprite->setDisplayFrame(cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()->spriteFrameByName("GJ_stopMusicBtn_001.png"));
    } else {
        playbackSprite->setDisplayFrame(cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache()->spriteFrameByName("GJ_playMusicBtn_001.png"));
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

