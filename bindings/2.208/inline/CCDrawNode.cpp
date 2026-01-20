#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void cocos2d::CCDrawNode::drawCubicBezier(cocos2d::CCPoint const& p0, cocos2d::CCPoint const& p1, cocos2d::CCPoint const& p2, cocos2d::CCPoint const& p3, unsigned int p4, cocos2d::ccColor4F const& p5) {
    auto vertices = new CCPoint[p4 + 1];
    if (p4 != 0) {
        auto factor = 0.f;
        for (int i = 0; i <= p4; i++) {
            auto& vertex = vertices[i];
            auto result = 1.f - factor;
            auto num1 = powf(result, 2.f) * 3.f * factor;
            auto num2 = result * 3.f * factor * factor;
            auto num3 = factor * factor * factor;
            vertex.x = p0.x * powf(result, 3.f) + p1.x * num1 + p2.x * num2 + p3.x * num3;
            vertex.y = p0.y * powf(result, 3.f) + p1.y * num1 + p2.y * num2 + p3.y * num3;
        }
    }
    vertices[p4] = p3;
    this->drawPolygon(vertices, p4 + 1, { 0.f, 0.f, 0.f, 0.f }, 2.f, p5);
    delete[] vertices;
}

bool cocos2d::CCDrawNode::drawDot(cocos2d::CCPoint const& pos, float radius, cocos2d::ccColor4F const& color) {
    if (m_bUseArea && pos.x + radius < m_fMinAreaX || pos.x - radius > m_fMaxAreaX || pos.y + radius < m_fMinAreaY || pos.y - radius > m_fMaxAreaY) return false;

    unsigned int vertex_count = 2*3;
    cocos2d::CCDrawNode::ensureCapacity(vertex_count);

    cocos2d::ccV2F_C4B_T2F a = {{pos.x - radius, pos.y - radius}, cocos2d::ccc4BFromccc4F(color), {-1.0, -1.0} };
    cocos2d::ccV2F_C4B_T2F b = {{pos.x - radius, pos.y + radius}, cocos2d::ccc4BFromccc4F(color), {-1.0,  1.0} };
    cocos2d::ccV2F_C4B_T2F c = {{pos.x + radius, pos.y + radius}, cocos2d::ccc4BFromccc4F(color), { 1.0,  1.0} };
    cocos2d::ccV2F_C4B_T2F d = {{pos.x + radius, pos.y - radius}, cocos2d::ccc4BFromccc4F(color), { 1.0, -1.0} };

    cocos2d::ccV2F_C4B_T2F_Triangle *triangles = (cocos2d::ccV2F_C4B_T2F_Triangle *)(m_pBuffer + m_nBufferCount);
    cocos2d::ccV2F_C4B_T2F_Triangle triangle0 = {a, b, c};
    cocos2d::ccV2F_C4B_T2F_Triangle triangle1 = {a, c, d};
    triangles[0] = triangle0;
    triangles[1] = triangle1;

    m_nBufferCount += vertex_count;

    m_bDirty = true;
    return true;
}

void cocos2d::CCDrawNode::drawPreciseCubicBezier(cocos2d::CCPoint const& p0, cocos2d::CCPoint const& p1, cocos2d::CCPoint const& p2, cocos2d::CCPoint const& p3, unsigned int p4, cocos2d::ccColor4F const& p5) {
    auto d01 = ccpDistance(p0, p1);
    auto d12 = ccpDistance(p1, p2);
    auto d23 = ccpDistance(p3, p2);
    auto l = d01 + d12 + d23;
    auto t1 = d01 / l;
    auto t2 = (d01 + d12) / l;
    auto u2 = 1.f - t2;
    auto u1 = 1.f - t1;
    auto a1 = u1 * t1 * u1 * 3.f;
    auto b1 = u1 * t1 * t1 * 3.f;
    auto a2 = u2 * t2 * u2 * 3.f;
    auto b2 = u2 * t2 * t2 * 3.f;
    auto rx = p1.x - powf(u1, 3.f) * p0.x - powf(t1, 3.f) * p3.x;
    auto ry = p1.y - powf(u1, 3.f) * p0.y - powf(t1, 3.f) * p3.y;
    auto ratio = a1 / a2;
    auto denom = b1 - (b2 * a1) / a2;
    auto x = (rx - (p2.x - powf(u2, 3.f) * p0.x - powf(t2, 3.f) * p3.x) * ratio) / denom;
    auto y = (ry - (p2.y - powf(t1, 3.f) * p0.y - powf(t2, 3.f) * p3.y) * ratio) / denom;
    this->drawCubicBezier(p0, { (rx - x * b1) / a1, (ry - y * b1) / a1 }, { x, y }, p3, p4, p5);
}

bool cocos2d::CCDrawNode::is_circle_on_screen(cocos2d::CCRect const& p0, cocos2d::CCPoint const& p1, float p2) {
    return p1.x + p2 >= m_fMinAreaX && p1.x - p2 <= m_fMaxAreaX && p1.y + p2 >= m_fMinAreaY && p1.y - p2 <= m_fMaxAreaY;
}

void cocos2d::CCDrawNode::listenBackToForeground(cocos2d::CCObject* p0) {
    this->init();
}
#endif

