#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTiledGrid3D::CCTiledGrid3D()
    : m_pTexCoordinates(NULL)
    , m_pVertices(NULL)
    , m_pOriginalVertices(NULL)
    , m_pIndices(NULL)
{

}

CCTiledGrid3D::~CCTiledGrid3D(void)
{
    CC_SAFE_FREE(m_pTexCoordinates);
    CC_SAFE_FREE(m_pVertices);
    CC_SAFE_FREE(m_pOriginalVertices);
    CC_SAFE_FREE(m_pIndices);
}

CCTiledGrid3D* CCTiledGrid3D::create(const CCSize& gridSize, CCTexture2D *pTexture, bool bFlipped)
{
    CCTiledGrid3D *pRet= new CCTiledGrid3D();

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

CCTiledGrid3D* CCTiledGrid3D::create(const CCSize& gridSize)
{
    CCTiledGrid3D *pRet= new CCTiledGrid3D();

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

void CCTiledGrid3D::blit(void)
{
    int n = m_sGridSize.width * m_sGridSize.height;

    
    m_pShaderProgram->use();
    m_pShaderProgram->setUniformsForBuiltins();

    //
    // Attributes
    //
    ccGLEnableVertexAttribs( kCCVertexAttribFlag_Position | kCCVertexAttribFlag_TexCoords );
#ifdef EMSCRIPTEN
    int numQuads = m_sGridSize.width * m_sGridSize.height;

    // position
    setGLBufferData(m_pVertices, (numQuads*4*sizeof(ccVertex3F)), 0);
    glVertexAttribPointer(kCCVertexAttrib_Position, 3, GL_FLOAT, GL_FALSE, 0, 0);

    // texCoords
    setGLBufferData(m_pTexCoordinates, (numQuads*4*sizeof(ccVertex2F)), 1);
    glVertexAttribPointer(kCCVertexAttrib_TexCoords, 2, GL_FLOAT, GL_FALSE, 0, 0);

    setGLIndexData(m_pIndices, n * 12, 0);
    glDrawElements(GL_TRIANGLES, (GLsizei) n*6, GL_UNSIGNED_SHORT, 0);
#else
    // position
    glVertexAttribPointer(kCCVertexAttrib_Position, 3, GL_FLOAT, GL_FALSE, 0, m_pVertices);

    // texCoords
    glVertexAttribPointer(kCCVertexAttrib_TexCoords, 2, GL_FLOAT, GL_FALSE, 0, m_pTexCoordinates);

    glDrawElements(GL_TRIANGLES, (GLsizei)n*6, GL_UNSIGNED_SHORT, m_pIndices);
#endif // EMSCRIPTEN


    // CC_INCREMENT_GL_DRAWS(1);
}

void CCTiledGrid3D::calculateVertexPoints(void)
{
    float width = (float)m_pTexture->getPixelsWide();
    float height = (float)m_pTexture->getPixelsHigh();
    float imageH = m_pTexture->getContentSizeInPixels().height;
    
    int numQuads = m_sGridSize.width * m_sGridSize.height;
    CC_SAFE_FREE(m_pVertices);
    CC_SAFE_FREE(m_pOriginalVertices);
    CC_SAFE_FREE(m_pTexCoordinates);
    CC_SAFE_FREE(m_pIndices);

    m_pVertices = malloc(numQuads*4*sizeof(ccVertex3F));
    m_pOriginalVertices = malloc(numQuads*4*sizeof(ccVertex3F));
    m_pTexCoordinates = malloc(numQuads*4*sizeof(ccVertex2F));
    m_pIndices = (GLushort*)malloc(numQuads*6*sizeof(GLushort));

    GLfloat *vertArray = (GLfloat*)m_pVertices;
    GLfloat *texArray = (GLfloat*)m_pTexCoordinates;
    GLushort *idxArray = m_pIndices;
    
    int x, y;
    
    for( x = 0; x < m_sGridSize.width; x++ )
    {
        for( y = 0; y < m_sGridSize.height; y++ )
        {
            float x1 = x * m_obStep.x;
            float x2 = x1 + m_obStep.x;
            float y1 = y * m_obStep.y;
            float y2 = y1 + m_obStep.y;
            
            *vertArray++ = x1;
            *vertArray++ = y1;
            *vertArray++ = 0;
            *vertArray++ = x2;
            *vertArray++ = y1;
            *vertArray++ = 0;
            *vertArray++ = x1;
            *vertArray++ = y2;
            *vertArray++ = 0;
            *vertArray++ = x2;
            *vertArray++ = y2;
            *vertArray++ = 0;
            
            float newY1 = y1;
            float newY2 = y2;
            
            if (m_bIsTextureFlipped) 
            {
                newY1 = imageH - y1;
                newY2 = imageH - y2;
            }

            *texArray++ = x1 / width;
            *texArray++ = newY1 / height;
            *texArray++ = x2 / width;
            *texArray++ = newY1 / height;
            *texArray++ = x1 / width;
            *texArray++ = newY2 / height;
            *texArray++ = x2 / width;
            *texArray++ = newY2 / height;
        }
    }
    
    for (x = 0; x < numQuads; x++)
    {
        idxArray[x*6+0] = (GLushort)(x * 4 + 0);
        idxArray[x*6+1] = (GLushort)(x * 4 + 1);
        idxArray[x*6+2] = (GLushort)(x * 4 + 2);
        
        idxArray[x*6+3] = (GLushort)(x * 4 + 1);
        idxArray[x*6+4] = (GLushort)(x * 4 + 2);
        idxArray[x*6+5] = (GLushort)(x * 4 + 3);
    }
    
    memcpy(m_pOriginalVertices, m_pVertices, numQuads * 12 * sizeof(GLfloat));
}

void CCTiledGrid3D::setTile(const CCPoint& pos, const ccQuad3& coords)
{
    CCAssert( pos.x == (unsigned int)pos.x && pos.y == (unsigned int) pos.y , "Numbers must be integers");
    int idx = (m_sGridSize.height * pos.x + pos.y) * 4 * 3;
    float *vertArray = (float*)m_pVertices;
    memcpy(&vertArray[idx], &coords, sizeof(ccQuad3));
}

ccQuad3 CCTiledGrid3D::originalTile(const CCPoint& pos)
{
    CCAssert( pos.x == (unsigned int)pos.x && pos.y == (unsigned int) pos.y , "Numbers must be integers");
    int idx = (m_sGridSize.height * pos.x + pos.y) * 4 * 3;
    float *vertArray = (float*)m_pOriginalVertices;

    ccQuad3 ret;
    memcpy(&ret, &vertArray[idx], sizeof(ccQuad3));

    return ret;
}

ccQuad3 CCTiledGrid3D::tile(const CCPoint& pos)
{
    CCAssert( pos.x == (unsigned int)pos.x && pos.y == (unsigned int) pos.y , "Numbers must be integers");
    int idx = (m_sGridSize.height * pos.x + pos.y) * 4 * 3;
    float *vertArray = (float*)m_pVertices;

    ccQuad3 ret;
    memcpy(&ret, &vertArray[idx], sizeof(ccQuad3));

    return ret;
}

void CCTiledGrid3D::reuse(void)
{
    if (m_nReuseGrid > 0)
    {
        int numQuads = m_sGridSize.width * m_sGridSize.height;

        memcpy(m_pOriginalVertices, m_pVertices, numQuads * 12 * sizeof(GLfloat));
        --m_nReuseGrid;
    }
}
#endif

