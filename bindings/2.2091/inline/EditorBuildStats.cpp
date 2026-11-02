#include <Geode/binding/EditorBuildStats.hpp>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void EditorBuildStats::noteAction() {
    if (m_lastActionTime >= 0) {
        auto gap = m_editorFrames - m_lastActionTime;
        int index = 0;
        while (gap > 1 && index != 7) {
            gap /= 2;
            ++index;
        }
        m_actionGaps[index]++;
    }
    m_lastActionTime = m_editorFrames;
}
#endif

#if defined(GEODE_IS_IOS)
#endif
