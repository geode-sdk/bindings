#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void SongSelectNode::selectSong(int id) {
    auto songID = id;
    if (songID > 21) songID = 21;
    m_songChanged = true;
    if (songID < 0) songID = 0;
    m_selectedSongID = songID;
    this->updateAudioLabel();
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void SongSelectNode::showCustomSongSelect() {
    auto layer = CustomSongLayer::create(this);
    layer->m_delegate = this;
    layer->show();
}
#endif

