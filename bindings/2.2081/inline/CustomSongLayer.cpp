#include <Geode/Geode.hpp>

CustomSongLayer::CustomSongLayer() {
    m_songDelegate = nullptr;
    m_songIDInput = nullptr;
    m_delegate = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
CustomSongLayer* CustomSongLayer::create(CustomSongDelegate* delegate) {
    auto ret = new CustomSongLayer();
    if (ret->init(delegate)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void CustomSongLayer::showNewgroundsMessage() {
    FLAlertLayer::create(
        nullptr,
        "Newgrounds Info",
        "There are thousands of great custom songs for you to choose from Newgrounds. "
        "Please do not upload music you did not create. "
        "You are only allowed to use songs from artists that have been scouted on Newgrounds. "
        "For more information, please check the <cy>Audio Guidelines</c>.",
        "OK",
        nullptr,
        380.f
    )->show();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

