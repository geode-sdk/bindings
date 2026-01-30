[[link(win, android)]]
int const kmAABBContainsPoint(kmVec3 const*, kmAABB const*);
[[link(win, android)]]
kmAABB* const kmAABBAssign(kmAABB*, kmAABB const*);
[[link(win, android)]]
kmAABB* const kmAABBScale(kmAABB*, kmAABB const*, float);

[[link(win, android)]]
kmMat3* const kmMat3Fill(kmMat3*, float const*);
[[link(win, android)]]
kmMat3* const kmMat3Adjugate(kmMat3*, kmMat3 const*);
[[link(win, android)]]
kmMat3* const kmMat3Identity(kmMat3*);
[[link(win, android)]]
kmMat3* const kmMat3Inverse(kmMat3*, float const, kmMat3 const*);
[[link(win, android)]]
int const kmMat3IsIdentity(kmMat3 const*);
[[link(win, android)]]
kmMat3* const kmMat3Transpose(kmMat3*, kmMat3 const*);
[[link(win, android)]]
float const kmMat3Determinant(kmMat3 const*);
[[link(win, android)]]
kmMat3* const kmMat3Multiply(kmMat3*, kmMat3 const*, kmMat3 const*);
[[link(win, android)]]
kmMat3* const kmMat3ScalarMultiply(kmMat3*, kmMat3 const*, float const);
[[link(win, android)]]
kmMat3* const kmMat3RotationAxisAngle(kmMat3*, kmVec3 const*, float);
[[link(win, android)]]
kmVec3* const kmMat3RotationToAxisAngle(kmVec3*, float*, kmMat3 const*);
[[link(win, android)]]
kmMat3* const kmMat3Assign(kmMat3*, kmMat3 const*);
[[link(win, android)]]
int const kmMat3AreEqual(kmMat3 const*, kmMat3 const*);
[[link(win, android)]]
kmMat3* const kmMat3RotationX(kmMat3*, float const);
[[link(win, android)]]
kmMat3* const kmMat3RotationY(kmMat3*, float const);
[[link(win, android)]]
kmMat3* const kmMat3RotationZ(kmMat3*, float const);
[[link(win, android)]]
kmMat3* const kmMat3Rotation(kmMat3*, float const);
[[link(win, android)]]
kmMat3* const kmMat3Scaling(kmMat3*, float const, float const);
[[link(win, android)]]
kmMat3* const kmMat3Translation(kmMat3*, float const, float const);
[[link(win, android)]]
kmMat3* const kmMat3RotationQuaternion(kmMat3*, kmQuaternion const*);
[[link(win, android)]]
kmMat3* const kmMat3RotationAxisAngle(kmMat3*, kmVec3 const*, float);
[[link(win, android)]]
kmVec3* const kmMat3RotationToAxisAngle(kmVec3*, float*, kmMat3 const*);

[[link(win, android)]]
kmMat4* const kmMat4Fill(kmMat4*, float const*);
[[link(win, android)]]
kmMat4* const kmMat4Identity(kmMat4*);
[[link(win, android)]]
kmMat4* const kmMat4Inverse(kmMat4*, kmMat4 const*);
[[link(win, android)]]
int const kmMat4IsIdentity(kmMat4 const*);
[[link(win, android)]]
kmMat4* const kmMat4Transpose(kmMat4*, kmMat4 const*);
[[link(win, android)]]
kmMat4* const kmMat4Multiply(kmMat4*, kmMat4 const*, kmMat4 const*) = m1 0x352f44, imac 0x3d3300, ios 0x3b2da0;
[[link(win, android)]]
kmMat4* const kmMat4Assign(kmMat4*, kmMat4 const*);
[[link(win, android)]]
int const kmMat4AreEqual(kmMat4 const*, kmMat4 const*);
[[link(win, android)]]
kmMat4* const kmMat4RotationX(kmMat4*, float const);
[[link(win, android)]]
kmMat4* const kmMat4RotationY(kmMat4*, float const);
[[link(win, android)]]
kmMat4* const kmMat4RotationZ(kmMat4*, float const);
[[link(win, android)]]
kmMat4* const kmMat4RotationPitchYawRoll(kmMat4*, float const, float const, float const);
[[link(win, android)]]
kmMat4* const kmMat4RotationQuaternion(kmMat4*, kmQuaternion const*);
[[link(win, android)]]
kmMat4* const kmMat4RotationTranslation(kmMat4*, kmMat3 const*, kmVec3 const*);
[[link(win, android)]]
kmMat4* const kmMat4Scaling(kmMat4*, float const, float const, float const);
[[link(win, android)]]
kmMat4* const kmMat4Translation(kmMat4*, float const, float const, float const);
[[link(win, android)]]
kmVec3* const kmMat4GetUpVec3(kmVec3*, kmMat4 const*);
[[link(win, android)]]
kmVec3* const kmMat4GetRightVec3(kmVec3*, kmMat4 const*);
[[link(win, android)]]
kmVec3* const kmMat4GetForwardVec3(kmVec3*, kmMat4 const*);
[[link(win, android)]]
kmMat4* const kmMat4PerspectiveProjection(kmMat4*, float, float, float, float);
[[link(win, android)]]
kmMat4* const kmMat4OrthographicProjection(kmMat4*, float, float, float, float, float, float) = m1 0x35392c, imac 0x3d3f30, ios 0x3b2f10;
[[link(win, android)]]
kmMat4* const kmMat4LookAt(kmMat4*, kmVec3 const*, kmVec3 const*, kmVec3 const*);
[[link(win, android)]]
kmMat4* const kmMat4RotationAxisAngle(kmMat4*, kmVec3 const*, float);
[[link(win, android)]]
kmMat3* const kmMat4ExtractRotation(kmMat3*, kmMat4 const*);
[[link(win, android)]]
kmPlane* const kmMat4ExtractPlane(kmPlane*, kmMat4 const*, unsigned int const);
[[link(win, android)]]
kmVec3* const kmMat4RotationToAxisAngle(kmVec3*, float*, kmMat4 const*);

[[link(win, android)]]
float const kmPlaneDot(kmPlane const*, kmVec4 const*);
[[link(win, android)]]
float const kmPlaneDotCoord(kmPlane const*, kmVec3 const*);
[[link(win, android)]]
float const kmPlaneDotNormal(kmPlane const*, kmVec3 const*);
[[link(win, android)]]
kmPlane* const kmPlaneFromPointNormal(kmPlane*, kmVec3 const*, kmVec3 const*);
[[link(win, android)]]
kmPlane* const kmPlaneFromPoints(kmPlane*, kmVec3 const*, kmVec3 const*, kmVec3 const*);
[[link(win, android)]]
kmVec3* const kmPlaneIntersectLine(kmVec3*, kmPlane const*, kmVec3 const*, kmVec3 const*);
[[link(win, android)]]
kmPlane* const kmPlaneNormalize(kmPlane*, kmPlane const*);
[[link(win, android)]]
kmPlane* const kmPlaneScale(kmPlane*, kmPlane const*, float);
[[link(win, android)]]
POINT_CLASSIFICATION const kmPlaneClassifyPoint(kmPlane const*, kmVec3 const*);

[[link(win, android)]]
kmQuaternion* const kmQuaternionConjugate(kmQuaternion*, kmQuaternion const*);
[[link(win, android)]]
float const kmQuaternionDot(kmQuaternion const*, kmQuaternion const*);
[[link(win, android)]]
kmQuaternion* kmQuaternionExp(kmQuaternion*, kmQuaternion const*);
[[link(win, android)]]
kmQuaternion* kmQuaternionIdentity(kmQuaternion*);
[[link(win, android)]]
kmQuaternion* kmQuaternionInverse(kmQuaternion*, kmQuaternion const*);
[[link(win, android)]]
int kmQuaternionIsIdentity(kmQuaternion const*);
[[link(win, android)]]
float kmQuaternionLength(kmQuaternion const*);
[[link(win, android)]]
float kmQuaternionLengthSq(kmQuaternion const*);
[[link(win, android)]]
kmQuaternion* kmQuaternionLn(kmQuaternion*, kmQuaternion const*);
[[link(win, android)]]
kmQuaternion* kmQuaternionMultiply(kmQuaternion*, kmQuaternion const*, kmQuaternion const*);
[[link(win, android)]]
kmQuaternion* kmQuaternionNormalize(kmQuaternion*, kmQuaternion const*);
[[link(win, android)]]
kmQuaternion* kmQuaternionRotationAxis(kmQuaternion*, kmVec3 const*, float);
[[link(win, android)]]
kmQuaternion* kmQuaternionRotationMatrix(kmQuaternion*, kmMat3 const*);
[[link(win, android)]]
kmQuaternion* kmQuaternionRotationYawPitchRoll(kmQuaternion*, float, float, float);
[[link(win, android)]]
kmQuaternion* kmQuaternionSlerp(kmQuaternion*, kmQuaternion const*, kmQuaternion const*, float);
[[link(win, android)]]
void kmQuaternionToAxisAngle(kmQuaternion const*, kmVec3*, float*);
[[link(win, android)]]
kmQuaternion* kmQuaternionScale(kmQuaternion*, kmQuaternion const*, float);
[[link(win, android)]]
kmQuaternion* kmQuaternionAssign(kmQuaternion*, kmQuaternion const*);
[[link(win, android)]]
kmQuaternion* kmQuaternionAdd(kmQuaternion*, kmQuaternion const*, kmQuaternion const*);
[[link(win, android)]]
kmQuaternion* kmQuaternionRotationBetweenVec3(kmQuaternion*, kmVec3 const*, kmVec3 const*, kmVec3 const*);
[[link(win, android)]]
kmVec3* kmQuaternionMultiplyVec3(kmVec3*, kmQuaternion const*, kmVec3 const*);

[[link(win, android)]]
void kmRay2Fill(kmRay2*, float, float, float, float);
[[link(win, android)]]
unsigned char kmRay2IntersectLineSegment(kmRay2 const*, kmVec2 const*, kmVec2 const*, kmVec2*);
[[link(win, android)]]
unsigned char kmRay2IntersectTriangle(kmRay2 const*, kmVec2 const*, kmVec2 const*, kmVec2 const*, kmVec2*, kmVec2*);
[[link(win, android)]]
unsigned char kmRay2IntersectCircle(kmRay2 const*, kmVec2 const, float const, kmVec2*);

[[link(win, android)]]
float kmSQR(float);
[[link(win, android)]]
float kmDegreesToRadians(float);
[[link(win, android)]]
float kmRadiansToDegrees(float);
[[link(win, android)]]
float kmMin(float, float);
[[link(win, android)]]
float kmMax(float, float);
[[link(win, android)]]
unsigned char kmAlmostEqual(float, float);

[[link(win, android)]]
kmVec2* kmVec2Fill(kmVec2*, float, float);
[[link(win, android)]]
float kmVec2Length(kmVec2 const*);
[[link(win, android)]]
float kmVec2LengthSq(kmVec2 const*);
[[link(win, android)]]
kmVec2* kmVec2Normalize(kmVec2*, kmVec2 const*);
[[link(win, android)]]
kmVec2* kmVec2Add(kmVec2*, kmVec2 const*, kmVec2 const*);
[[link(win, android)]]
float kmVec2Dot(kmVec2 const*, kmVec2 const*);
[[link(win, android)]]
kmVec2* kmVec2Subtract(kmVec2*, kmVec2 const*, kmVec2 const*);
[[link(win, android)]]
kmVec2* kmVec2Transform(kmVec2*, kmVec2 const*, kmMat3 const*);
[[link(win, android)]]
kmVec2* kmVec2TransformCoord(kmVec2*, kmVec2 const*, kmMat3 const*);
[[link(win, android)]]
kmVec2* kmVec2Scale(kmVec2*, kmVec2 const*, float const);
[[link(win, android)]]
int kmVec2AreEqual(kmVec2 const*, kmVec2 const*);

[[link(win, android)]]
kmVec3* kmVec3Fill(kmVec3*, float, float, float);
[[link(win, android)]]
float kmVec3Length(kmVec3 const*);
[[link(win, android)]]
float kmVec3LengthSq(kmVec3 const*);
[[link(win, android)]]
kmVec3* kmVec3Normalize(kmVec3*, kmVec3 const*);
[[link(win, android)]]
kmVec3* kmVec3Cross(kmVec3*, kmVec3 const*, kmVec3 const*);
[[link(win, android)]]
float kmVec3Dot(kmVec3 const*, kmVec3 const*);
[[link(win, android)]]
kmVec3* kmVec3Add(kmVec3*, kmVec3 const*, kmVec3 const*);
[[link(win, android)]]
kmVec3* kmVec3Subtract(kmVec3*, kmVec3 const*, kmVec3 const*);
[[link(win, android)]]
kmVec3* kmVec3Transform(kmVec3*, kmVec3 const*, kmMat4 const*);
[[link(win, android)]]
kmVec3* kmVec3TransformNormal(kmVec3*, kmVec3 const*, kmMat4 const*);
[[link(win, android)]]
kmVec3* kmVec3TransformCoord(kmVec3*, kmVec3 const*, kmMat4 const*) = m1 0x52f784, imac 0x609380, ios 0x325414;
[[link(win, android)]]
kmVec3* kmVec3Scale(kmVec3*, kmVec3 const*, float const);
[[link(win, android)]]
int kmVec3AreEqual(kmVec3 const*, kmVec3 const*);
[[link(win, android)]]
kmVec3* kmVec3InverseTransform(kmVec3*, kmVec3 const*, kmMat4 const*);
[[link(win, android)]]
kmVec3* kmVec3InverseTransformNormal(kmVec3*, kmVec3 const*, kmMat4 const*);
[[link(win, android)]]
kmVec3* kmVec3Assign(kmVec3*, kmVec3 const*);
[[link(win, android)]]
kmVec3* kmVec3Zero(kmVec3*);

[[link(win, android)]]
void kmGLFreeAll();
[[link(win, android)]]
void kmGLPushMatrix() = m1 0x1b40ac, imac 0x207e70, ios 0x168594;
[[link(win, android)]]
void kmGLPopMatrix() = m1 0x1b40f0, imac 0x207eb0, ios 0x1685d8;
[[link(win, android)]]
void kmGLMatrixMode(unsigned int) = m1 0x1b4064, imac 0x207e30, ios 0x16854c;
[[link(win, android)]]
void kmGLLoadIdentity() = m1 0x1b4118, imac 0x207ed0, ios 0x168600;
[[link(win, android)]]
void kmGLLoadMatrix(kmMat4 const*);
[[link(win, android)]]
void kmGLMultMatrix(kmMat4 const*) = m1 0x1b417c, imac 0x207f30, ios 0x168664;
[[link(win, android)]]
void kmGLTranslatef(float, float, float) = m1 0x1b4234, imac 0x207fe0, ios 0x1686ec;
[[link(win, android)]]
void kmGLRotatef(float, float, float, float);
[[link(win, android)]]
void kmGLScalef(float, float, float);
[[link(win, android)]]
void kmGLGetMatrix(unsigned int, kmMat4*) = m1 0x1b41e0, imac 0x207f90, ios 0x168698;
