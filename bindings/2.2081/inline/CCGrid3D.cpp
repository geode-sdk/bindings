#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCGrid3D* CCGrid3D::create(const CCSize& gridSize, CCTexture2D *pTexture, bool bFlipped)
{
    CCGrid3D *pRet= new CCGrid3D();

    if (pRet)
    {
        if (pRet->initWithSize(gridSize, pTexture, bFlipped))
        {
            pRet->autorelease();
        }
        else
        {
            delete pRet;
            pRet = NULL;
        }
    }

    return pRet;
}

CCGrid3D* CCGrid3D::create(const CCSize& gridSize)
{
    CCGrid3D *pRet= new CCGrid3D();

    if (pRet)
    {
        if (pRet->initWithSize(gridSize))
        {
            pRet->autorelease();
        }
        else
        {
            delete pRet;
            pRet = NULL;
        }
    }

    return pRet;
}


CCGrid3D::CCGrid3D()
    : m_pTexCoordinates(NULL)
    , m_pVertices(NULL)
    , m_pOriginalVertices(NULL)
    , m_pIndices(NULL)
{

}

CCGrid3D::~CCGrid3D(void)
{
    CC_SAFE_FREE(m_pTexCoordinates);
    CC_SAFE_FREE(m_pVertices);
    CC_SAFE_FREE(m_pIndices);
    CC_SAFE_FREE(m_pOriginalVertices);
}

void CCGrid3D::blit(void)
{
    int n = m_sGridSize.width * m_sGridSize.height;

    ccGLEnableVertexAttribs( kCCVertexAttribFlag_Position | kCCVertexAttribFlag_TexCoords );
    m_pShaderProgram->use();
    m_pShaderProgram->setUniformsForBuiltins();;

    //
    // Attributes
    //
#ifdef EMSCRIPTEN
    // Size calculations from calculateVertexPoints().
    unsigned int numOfPoints = (m_sGridSize.width+1) * (m_sGridSize.height+1);

    // position
    setGLBufferData(m_pVertices, numOfPoints * sizeof(ccVertex3F), 0);
    glVertexAttribPointer(kCCVertexAttrib_Position, 3, GL_FLOAT, GL_FALSE, 0, 0);

    // texCoords
    setGLBufferData(m_pTexCoordinates, numOfPoints * sizeof(ccVertex2F), 1);
    glVertexAttribPointer(kCCVertexAttrib_TexCoords, 2, GL_FLOAT, GL_FALSE, 0, 0);

    setGLIndexData(m_pIndices, n * 12, 0);
    glDrawElements(GL_TRIANGLES, (GLsizei) n*6, GL_UNSIGNED_SHORT, 0);
#else
    // position
    glVertexAttribPointer(kCCVertexAttrib_Position, 3, GL_FLOAT, GL_FALSE, 0, m_pVertices);

    // texCoords
    glVertexAttribPointer(kCCVertexAttrib_TexCoords, 2, GL_FLOAT, GL_FALSE, 0, m_pTexCoordinates);

    glDrawElements(GL_TRIANGLES, (GLsizei) n*6, GL_UNSIGNED_SHORT, m_pIndices);
#endif // EMSCRIPTEN
    CC_INCREMENT_GL_DRAWS(1);
}

void CCGrid3D::calculateVertexPoints(void)
{
    float width = (float)m_pTexture->getPixelsWide();
    float height = (float)m_pTexture->getPixelsHigh();
    float imageH = m_pTexture->getContentSizeInPixels().height;

    int x, y, i;
    CC_SAFE_FREE(m_pVertices);
    CC_SAFE_FREE(m_pOriginalVertices);
    CC_SAFE_FREE(m_pTexCoordinates);
    CC_SAFE_FREE(m_pIndices);

    unsigned int numOfPoints = (m_sGridSize.width+1) * (m_sGridSize.height+1);

    m_pVertices = malloc(numOfPoints * sizeof(ccVertex3F));
    m_pOriginalVertices = malloc(numOfPoints * sizeof(ccVertex3F));
    m_pTexCoordinates = malloc(numOfPoints * sizeof(ccVertex2F));
    m_pIndices = (GLushort*)malloc(m_sGridSize.width * m_sGridSize.height * sizeof(GLushort) * 6);

    GLfloat *vertArray = (GLfloat*)m_pVertices;
    GLfloat *texArray = (GLfloat*)m_pTexCoordinates;
    GLushort *idxArray = m_pIndices;

    for (x = 0; x < m_sGridSize.width; ++x)
    {
        for (y = 0; y < m_sGridSize.height; ++y)
        {
            int idx = (y * m_sGridSize.width) + x;

            GLfloat x1 = x * m_obStep.x;
            GLfloat x2 = x1 + m_obStep.x;
            GLfloat y1 = y * m_obStep.y;
            GLfloat y2= y1 + m_obStep.y;

            GLushort a = (GLushort)(x * (m_sGridSize.height + 1) + y);
            GLushort b = (GLushort)((x + 1) * (m_sGridSize.height + 1) + y);
            GLushort c = (GLushort)((x + 1) * (m_sGridSize.height + 1) + (y + 1));
            GLushort d = (GLushort)(x * (m_sGridSize.height + 1) + (y + 1));

            GLushort tempidx[6] = {a, b, d, b, c, d};

            memcpy(&idxArray[6*idx], tempidx, 6*sizeof(GLushort));

            int l1[4] = {a*3, b*3, c*3, d*3};
            ccVertex3F e = {x1, y1, 0};
            ccVertex3F f = {x2, y1, 0};
            ccVertex3F g = {x2, y2, 0};
            ccVertex3F h = {x1, y2, 0};

            ccVertex3F l2[4] = {e, f, g, h};

            int tex1[4] = {a*2, b*2, c*2, d*2};
            CCPoint tex2[4] = {ccp(x1, y1), ccp(x2, y1), ccp(x2, y2), ccp(x1, y2)};

            for (i = 0; i < 4; ++i)
            {
                vertArray[l1[i]] = l2[i].x;
                vertArray[l1[i] + 1] = l2[i].y;
                vertArray[l1[i] + 2] = l2[i].z;

                texArray[tex1[i]] = tex2[i].x / width;
                if (m_bIsTextureFlipped)
                {
                    texArray[tex1[i] + 1] = (imageH - tex2[i].y) / height;
                }
                else
                {
                    texArray[tex1[i] + 1] = tex2[i].y / height;
                }
            }
        }
    }

    memcpy(m_pOriginalVertices, m_pVertices, (m_sGridSize.width+1) * (m_sGridSize.height+1) * sizeof(ccVertex3F));
}

ccVertex3F CCGrid3D::vertex(const CCPoint& pos)
{
    CCAssert( pos.x == (unsigned int)pos.x && pos.y == (unsigned int) pos.y , "Numbers must be integers");
    
    int index = (pos.x * (m_sGridSize.height+1) + pos.y) * 3;
    float *vertArray = (float*)m_pVertices;

    ccVertex3F vert = {vertArray[index], vertArray[index+1], vertArray[index+2]};

    return vert;
}

ccVertex3F CCGrid3D::originalVertex(const CCPoint& pos)
{
    CCAssert( pos.x == (unsigned int)pos.x && pos.y == (unsigned int) pos.y , "Numbers must be integers");
    
    int index = (pos.x * (m_sGridSize.height+1) + pos.y) * 3;
    float *vertArray = (float*)m_pOriginalVertices;

    ccVertex3F vert = {vertArray[index], vertArray[index+1], vertArray[index+2]};

    return vert;
}

void CCGrid3D::setVertex(const CCPoint& pos, const ccVertex3F& vertex)
{
    CCAssert( pos.x == (unsigned int)pos.x && pos.y == (unsigned int) pos.y , "Numbers must be integers");
    int index = (pos.x * (m_sGridSize.height + 1) + pos.y) * 3;
    float *vertArray = (float*)m_pVertices;
    vertArray[index] = vertex.x;
    vertArray[index+1] = vertex.y;
    vertArray[index+2] = vertex.z;
}

void CCGrid3D::reuse(void)
{
    if (m_nReuseGrid > 0)
    {
        memcpy(m_pOriginalVertices, m_pVertices, (m_sGridSize.width+1) * (m_sGridSize.height+1) * sizeof(ccVertex3F));
        --m_nReuseGrid;
    }
}
#endif

