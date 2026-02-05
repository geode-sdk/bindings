#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void OBB2D::computeAxes() {
    m_edges[0] = m_corners[1] - m_corners[0];
    m_edges[1] = m_corners[3] - m_corners[0];
    for (int i = 0; i < 2; i++) {
        m_edges[i] = m_edges[i] * (1.f / (m_edges[i].x * m_edges[i].x + m_edges[i].y * m_edges[i].y));
        m_projections[i] = m_corners[0].x * m_edges[i].x + m_corners[0].y * m_edges[i].y;
    }
}

bool OBB2D::init(cocos2d::CCPoint center, float width, float height, float rotationAngle) {
    if (!CCNode::init()) return false;
    this->calculateWithCenter(center, width, height, rotationAngle);
    return true;
}

bool OBB2D::overlaps(OBB2D* other) {
    return this->overlaps1Way(other) && other->overlaps1Way(this);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

