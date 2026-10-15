#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
char const* cocos2d::CCGLProgram::description() {
    return CCString::createWithFormat("<CCGLProgram = " CC_FORMAT_PRINTF_SIZE_T " | Program = %i, VertexShader = %i, FragmentShader = %i>",
        (size_t)this, m_uProgram, m_uVertShader, m_uFragShader)->getCString();
}

char const* cocos2d::CCGLProgram::fragmentShaderLog() {
    return this->logForOpenGLObject(m_uFragShader, (GLInfoFunction)&glGetShaderiv, (GLLogFunction)&glGetShaderInfoLog);
}

int cocos2d::CCGLProgram::getUniformLocationForName(char const* p0) {
    return glGetUniformLocation(m_uProgram, p0);
}

bool cocos2d::CCGLProgram::initWithVertexShaderFilename(char const* p0, char const* p1) {
    return this->initWithVertexShaderByteArray(
        CCString::createWithContentsOfFile(CCFileUtils::sharedFileUtils()->fullPathForFilename(p0, false).c_str())->getCString(),
        CCString::createWithContentsOfFile(CCFileUtils::sharedFileUtils()->fullPathForFilename(p1, false).c_str())->getCString()
    );
}

char const* cocos2d::CCGLProgram::logForOpenGLObject(unsigned int p0, GLInfoFunction p1, GLLogFunction p2) {
    GLint logLength = 0;
    p1(p0, GL_INFO_LOG_LENGTH, &logLength);
    if (logLength < 1) return nullptr;
    auto logBytes = (char*)malloc(logLength);
    GLint charsWritten = 0;
    p2(p0, logLength, &charsWritten, logBytes);
    auto log = CCString::create(logBytes);
    free(logBytes);
    return log->getCString();
}

char const* cocos2d::CCGLProgram::programLog() {
    return this->logForOpenGLObject(m_uProgram, (GLInfoFunction)&glGetProgramiv, (GLLogFunction)&glGetProgramInfoLog);
}

void cocos2d::CCGLProgram::setUniformLocationWith2fv(int p0, float* p1, unsigned int p2) {
    if (this->updateUniformLocation(p0, p1, p2 * 8)) glUniform2fv(p0, p2, p1);
}

void cocos2d::CCGLProgram::setUniformLocationWith2i(int p0, int p1, int p2) {
    GLint ints[2] = { p1, p2 };
    if (this->updateUniformLocation(p0, ints, 8)) glUniform2i(p0, p1, p2);
}

void cocos2d::CCGLProgram::setUniformLocationWith2iv(int p0, int* p1, unsigned int p2) {
    if (this->updateUniformLocation(p0, p1, p2 * 8)) glUniform2iv(p0, p2, p1);
}

void cocos2d::CCGLProgram::setUniformLocationWith3fv(int p0, float* p1, unsigned int p2) {
    if (this->updateUniformLocation(p0, p1, p2 * 12)) glUniform3fv(p0, p2, p1);
}

void cocos2d::CCGLProgram::setUniformLocationWith3i(int p0, int p1, int p2, int p3) {
    GLint ints[3] = { p1, p2, p3 };
    if (this->updateUniformLocation(p0, ints, 12)) glUniform3i(p0, p1, p2, p3);
}

void cocos2d::CCGLProgram::setUniformLocationWith3iv(int p0, int* p1, unsigned int p2) {
    if (this->updateUniformLocation(p0, p1, p2 * 12)) glUniform3iv(p0, p2, p1);
}

void cocos2d::CCGLProgram::setUniformLocationWith4i(int p0, int p1, int p2, int p3, int p4) {
    GLint ints[4] = { p1, p2, p3, p4 };
    if (this->updateUniformLocation(p0, ints, 16)) glUniform4i(p0, p1, p2, p3, p4);
}

void cocos2d::CCGLProgram::setUniformLocationWith4iv(int p0, int* p1, unsigned int p2) {
    if (this->updateUniformLocation(p0, p1, p2 * 16)) glUniform4iv(p0, p2, p1);
}

char const* cocos2d::CCGLProgram::vertexShaderLog() {
    return this->logForOpenGLObject(m_uVertShader, (GLInfoFunction)&glGetShaderiv, (GLLogFunction)&glGetShaderInfoLog);
}
#endif

