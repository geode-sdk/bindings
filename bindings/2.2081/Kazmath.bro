[[link(win, android)]]
int const kmAABBContainsPoint(kmVec3 const*, kmAABB const*) = m1 0x51f7e0, imac 0x5f6700;
[[link(win, android)]]
kmAABB* const kmAABBAssign(kmAABB*, kmAABB const*) = m1 0x51f844, imac 0x5f6750;
[[link(win, android)]]
kmAABB* const kmAABBScale(kmAABB*, kmAABB const*, float) = m1 0x51f878, imac 0x5f6780;

[[link(win, android)]]
kmMat3* const kmMat3Fill(kmMat3*, float const*) = m1 0x6b21e8, imac 0x7ab7b0;
[[link(win, android)]]
kmMat3* const kmMat3Adjugate(kmMat3*, kmMat3 const*) = m1 0x6b2264, imac 0x7ab880;
[[link(win, android)]]
kmMat3* const kmMat3Identity(kmMat3*) = m1 0x6b21fc, imac 0x7ab7d0;
[[link(win, android)]]
kmMat3* const kmMat3Inverse(kmMat3*, float const, kmMat3 const*) = m1 0x6b2318, imac 0x7ab970;
[[link(win, android)]]
int const kmMat3IsIdentity(kmMat3 const*) = m1 0x6b2408, imac 0x7abad0;
[[link(win, android)]]
kmMat3* const kmMat3Transpose(kmMat3*, kmMat3 const*) = m1 0x6b243c, imac 0x7abb00;
[[link(win, android)]]
float const kmMat3Determinant(kmMat3 const*) = m1 0x6b2218, imac 0x7ab800;
[[link(win, android)]]
kmMat3* const kmMat3Multiply(kmMat3*, kmMat3 const*, kmMat3 const*) = m1 0x6b2488, imac 0x7abb70;
[[link(win, android)]]
kmMat3* const kmMat3ScalarMultiply(kmMat3*, kmMat3 const*, float const) = m1 0x6b23e8, imac 0x7abaa0;
[[link(win, android)]]
kmMat3* const kmMat3RotationAxisAngle(kmMat3*, kmVec3 const*, float) = m1 0x6b290c, imac 0x7ac120;
[[link(win, android)]]
kmVec3* const kmMat3RotationToAxisAngle(kmVec3*, float*, kmMat3 const*) = m1 0x6b29fc, imac 0x7ac260;
[[link(win, android)]]
kmMat3* const kmMat3Assign(kmMat3*, kmMat3 const*) = m1 0x6b254c, imac 0x7abcc0;
[[link(win, android)]]
int const kmMat3AreEqual(kmMat3 const*, kmMat3 const*) = m1 0x6b2574, imac 0x7abcf0;
[[link(win, android)]]
kmMat3* const kmMat3RotationX(kmMat3*, float const) = m1 0x6b2a44, imac 0x7ac2a0;
[[link(win, android)]]
kmMat3* const kmMat3RotationY(kmMat3*, float const) = m1 0x6b2a84, imac 0x7ac2f0;
[[link(win, android)]]
kmMat3* const kmMat3RotationZ(kmMat3*, float const) = m1 0x6b2ad4, imac 0x7ac350;
[[link(win, android)]]
kmMat3* const kmMat3Rotation(kmMat3*, float const) = m1 0x6b27a0, imac 0x7abf00;
[[link(win, android)]]
kmMat3* const kmMat3Scaling(kmMat3*, float const, float const) = m1 0x6b27e0, imac 0x7abf50;
[[link(win, android)]]
kmMat3* const kmMat3Translation(kmMat3*, float const, float const) = m1 0x6b27fc, imac 0x7abf80;
[[link(win, android)]]
kmMat3* const kmMat3RotationQuaternion(kmMat3*, kmQuaternion const*) = m1 0x6b281c, imac 0x7abfc0;

[[link(win, android)]]
kmMat4* const kmMat4Fill(kmMat4*, float const*) = m1 0x3524f4, imac 0x3d2670;
[[link(win, android)]]
kmMat4* const kmMat4Identity(kmMat4*) = m1 0x352508, imac 0x3d26a0, ios 0x3b2a40;
[[link(win, android)]]
kmMat4* const kmMat4Inverse(kmMat4*, kmMat4 const*) = m1 0x352db8, imac 0x3d3140, ios 0x3b2cf0;
[[link(win, android)]]
int const kmMat4IsIdentity(kmMat4 const*) = m1 0x352e78, imac 0x3d3220;
[[link(win, android)]]
kmMat4* const kmMat4Transpose(kmMat4*, kmMat4 const*) = m1 0x352ec0, imac 0x3d3250;
[[link(win, android)]]
kmMat4* const kmMat4Multiply(kmMat4*, kmMat4 const*, kmMat4 const*) = m1 0x352f44, imac 0x3d3300, ios 0x3b2da0;
[[link(win, android)]]
kmMat4* const kmMat4Assign(kmMat4*, kmMat4 const*) = m1 0x352e50, imac 0x3d31f0, ios 0x3b2d78;
[[link(win, android)]]
int const kmMat4AreEqual(kmMat4 const*, kmMat4 const*) = m1 0x352fb8, imac 0x3d3410;
[[link(win, android)]]
kmMat4* const kmMat4RotationX(kmMat4*, float const) = m1 0x353460, imac 0x3d3920;
[[link(win, android)]]
kmMat4* const kmMat4RotationY(kmMat4*, float const) = m1 0x3534b0, imac 0x3d3980;
[[link(win, android)]]
kmMat4* const kmMat4RotationZ(kmMat4*, float const) = m1 0x353510, imac 0x3d39f0;
[[link(win, android)]]
kmMat4* const kmMat4RotationPitchYawRoll(kmMat4*, float const, float const, float const) = m1 0x35355c, imac 0x3d3a50;
[[link(win, android)]]
kmMat4* const kmMat4RotationQuaternion(kmMat4*, kmQuaternion const*) = m1 0x353658, imac 0x3d3b90;
[[link(win, android)]]
kmMat4* const kmMat4RotationTranslation(kmMat4*, kmMat3 const*, kmVec3 const*) = m1 0x353b90, imac 0x3d4230;
[[link(win, android)]]
kmMat4* const kmMat4Scaling(kmMat4*, float const, float const, float const) = m1 0x35374c, imac 0x3d3cf0;
[[link(win, android)]]
kmMat4* const kmMat4Translation(kmMat4*, float const, float const, float const) = m1 0x353770, imac 0x3d3d20, ios 0x3b2e14;
[[link(win, android)]]
kmVec3* const kmMat4GetUpVec3(kmVec3*, kmMat4 const*) = m1 0x35379c, imac 0x3d3d70;
[[link(win, android)]]
kmVec3* const kmMat4GetRightVec3(kmVec3*, kmMat4 const*) = m1 0x3537dc, imac 0x3d3db0;
[[link(win, android)]]
kmVec3* const kmMat4GetForwardVec3(kmVec3*, kmMat4 const*) = m1 0x35381c, imac 0x3d3df0;
[[link(win, android)]]
kmMat4* const kmMat4PerspectiveProjection(kmMat4*, float, float, float, float) = m1 0x35385c, imac 0x3d3e30, ios 0x3b2e40;
[[link(win, android)]]
kmMat4* const kmMat4OrthographicProjection(kmMat4*, float, float, float, float, float, float) = m1 0x35392c, imac 0x3d3f30, ios 0x3b2f10;
[[link(win, android)]]
kmMat4* const kmMat4LookAt(kmMat4*, kmVec3 const*, kmVec3 const*, kmVec3 const*) = m1 0x35399c, imac 0x3d3fc0, ios 0x3b2f80;
[[link(win, android)]]
kmMat4* const kmMat4RotationAxisAngle(kmMat4*, kmVec3 const*, float) = m1 0x35338c, imac 0x3d37c0;
[[link(win, android)]]
kmMat3* const kmMat4ExtractRotation(kmMat3*, kmMat4 const*) = m1 0x353ad0, imac 0x3d4140;
[[link(win, android)]]
kmPlane* const kmMat4ExtractPlane(kmPlane*, kmMat4 const*, unsigned int const) = m1 0x353c08, imac 0x3d42d0;
[[link(win, android)]]
kmVec3* const kmMat4RotationToAxisAngle(kmVec3*, float*, kmMat4 const*) = m1 0x353b1c, imac 0x3d41b0;

[[link(win, android)]]
float const kmPlaneDot(kmPlane const*, kmVec4 const*) = m1 0x3eecac, imac 0x4893c0;
[[link(win, android)]]
float const kmPlaneDotCoord(kmPlane const*, kmVec3 const*) = m1 0x3eecd0, imac 0x489400;
[[link(win, android)]]
float const kmPlaneDotNormal(kmPlane const*, kmVec3 const*) = m1 0x3eecf4, imac 0x489430;
[[link(win, android)]]
kmPlane* const kmPlaneFromPointNormal(kmPlane*, kmVec3 const*, kmVec3 const*) = m1 0x3eed14, imac 0x489460;
[[link(win, android)]]
kmPlane* const kmPlaneFromPoints(kmPlane*, kmVec3 const*, kmVec3 const*, kmVec3 const*) = m1 0x3eed54, imac 0x4894a0;
[[link(win, android)]]
kmVec3* const kmPlaneIntersectLine(kmVec3*, kmPlane const*, kmVec3 const*, kmVec3 const*) = m1 0x3eedf4, imac 0x489550;
[[link(win, android)]]
kmPlane* const kmPlaneNormalize(kmPlane*, kmPlane const*) = m1 0x3eee1c, imac 0x489580;
[[link(win, android)]]
kmPlane* const kmPlaneScale(kmPlane*, kmPlane const*, float) = m1 0x3eee94, imac 0x489610;
[[link(win, android)]]
POINT_CLASSIFICATION const kmPlaneClassifyPoint(kmPlane const*, kmVec3 const*) = m1 0x3eeebc, imac 0x489640;

[[link(win, android)]]
kmQuaternion* const kmQuaternionConjugate(kmQuaternion*, kmQuaternion const*) = m1 0x465ecc, imac 0x50ed10;
[[link(win, android)]]
float const kmQuaternionDot(kmQuaternion const*, kmQuaternion const*) = m1 0x465ee8, imac 0x50ed50;
[[link(win, android)]]
kmQuaternion* kmQuaternionExp(kmQuaternion*, kmQuaternion const*) = m1 0x465f0c, imac 0x50ed90;
[[link(win, android)]]
kmQuaternion* kmQuaternionIdentity(kmQuaternion*) = m1 0x465f34, imac 0x50edc0;
[[link(win, android)]]
kmQuaternion* kmQuaternionInverse(kmQuaternion*, kmQuaternion const*) = m1 0x465f44, imac 0x50ede0;
[[link(win, android)]]
int kmQuaternionIsIdentity(kmQuaternion const*) = m1 0x465fd0, imac 0x50eed0;
[[link(win, android)]]
float kmQuaternionLength(kmQuaternion const*) = m1 0x465fa0, imac 0x50ee70;
[[link(win, android)]]
float kmQuaternionLengthSq(kmQuaternion const*) = m1 0x466010, imac 0x50ef20;
[[link(win, android)]]
kmQuaternion* kmQuaternionLn(kmQuaternion*, kmQuaternion const*) = m1 0x46602c, imac 0x50ef60;
[[link(win, android)]]
kmQuaternion* kmQuaternionMultiply(kmQuaternion*, kmQuaternion const*, kmQuaternion const*) = m1 0x466054, imac 0x50ef90;
[[link(win, android)]]
kmQuaternion* kmQuaternionNormalize(kmQuaternion*, kmQuaternion const*) = m1 0x4660d0, imac 0x50f070;
[[link(win, android)]]
kmQuaternion* kmQuaternionRotationAxis(kmQuaternion*, kmVec3 const*, float) = m1 0x466128, imac 0x50f0f0;
[[link(win, android)]]
kmQuaternion* kmQuaternionRotationMatrix(kmQuaternion*, kmMat3 const*) = m1 0x466174, imac 0x50f140;
[[link(win, android)]]
kmQuaternion* kmQuaternionRotationYawPitchRoll(kmQuaternion*, float, float, float) = m1 0x4662c4, imac 0x50f2e0;
[[link(win, android)]]
kmQuaternion* kmQuaternionSlerp(kmQuaternion*, kmQuaternion const*, kmQuaternion const*, float) = m1 0x4663e0, imac 0x50f470;
[[link(win, android)]]
void kmQuaternionToAxisAngle(kmQuaternion const*, kmVec3*, float*) = m1 0x466530, imac 0x50f620;
[[link(win, android)]]
kmQuaternion* kmQuaternionScale(kmQuaternion*, kmQuaternion const*, float) = m1 0x465fc0, imac 0x50eeb0;
[[link(win, android)]]
kmQuaternion* kmQuaternionAssign(kmQuaternion*, kmQuaternion const*) = m1 0x466620, imac 0x50f720;
[[link(win, android)]]
kmQuaternion* kmQuaternionAdd(kmQuaternion*, kmQuaternion const*, kmQuaternion const*) = m1 0x46651c, imac 0x50f600;
[[link(win, android)]]
kmQuaternion* kmQuaternionRotationBetweenVec3(kmQuaternion*, kmVec3 const*, kmVec3 const*, kmVec3 const*) = m1 0x46662c, imac 0x50f730;
[[link(win, android)]]
kmVec3* kmQuaternionMultiplyVec3(kmVec3*, kmQuaternion const*, kmVec3 const*) = m1 0x46683c, imac 0x50f990;

[[link(win, android)]]
void kmRay2Fill(kmRay2*, float, float, float, float) = m1 0x42f864, imac 0x4d1430;
[[link(win, android)]]
unsigned char kmRay2IntersectLineSegment(kmRay2 const*, kmVec2 const*, kmVec2 const*, kmVec2*) = m1 0x42f870, imac 0x4d1450;
[[link(win, android)]]
unsigned char kmRay2IntersectTriangle(kmRay2 const*, kmVec2 const*, kmVec2 const*, kmVec2 const*, kmVec2*, kmVec2*) = m1 0x42faa0, imac 0x4d16d0;
[[link(win, android)]]
unsigned char kmRay2IntersectCircle(kmRay2 const*, kmVec2 const, float const, kmVec2*) = m1 0x42fce4, imac 0x4d1940;

[[link(win, android)]]
float kmSQR(float) = m1 0x6a198c, imac 0x799ef0, ios 0x1cbd6c;
[[link(win, android)]]
float kmDegreesToRadians(float) = m1 0x6a1994, imac 0x799f00, ios 0x1cbd74;
[[link(win, android)]]
float kmRadiansToDegrees(float) = m1 0x6a19a8, imac 0x799f10;
[[link(win, android)]]
float kmMin(float, float) = m1 0x6a19bc, imac 0x799f20;
[[link(win, android)]]
float kmMax(float, float) = m1 0x6a19c8, imac 0x799f30;
[[link(win, android)]]
unsigned char kmAlmostEqual(float, float) = m1 0x6a19d4, imac 0x799f40;

[[link(win, android)]]
kmVec2* kmVec2Fill(kmVec2*, float, float) = m1 0x2b8048, imac 0x32b3e0;
[[link(win, android)]]
float kmVec2Length(kmVec2 const*) = m1 0x2b8050, imac 0x32b400;
[[link(win, android)]]
float kmVec2LengthSq(kmVec2 const*) = m1 0x2b8090, imac 0x32b440;
[[link(win, android)]]
kmVec2* kmVec2Normalize(kmVec2*, kmVec2 const*) = m1 0x2b80cc, imac 0x32b470;
[[link(win, android)]]
kmVec2* kmVec2Add(kmVec2*, kmVec2 const*, kmVec2 const*) = m1 0x2b8128, imac 0x32b4d0;
[[link(win, android)]]
float kmVec2Dot(kmVec2 const*, kmVec2 const*) = m1 0x2b813c, imac 0x32b4f0;
[[link(win, android)]]
kmVec2* kmVec2Subtract(kmVec2*, kmVec2 const*, kmVec2 const*) = m1 0x2b8150, imac 0x32b510;
[[link(win, android)]]
kmVec2* kmVec2Transform(kmVec2*, kmVec2 const*, kmMat3 const*) = m1 0x2b8164, imac 0x32b530;
[[link(win, android)]]
kmVec2* kmVec2TransformCoord(kmVec2*, kmVec2 const*, kmMat3 const*) = m1 0x2b8188, imac 0x32b570;
[[link(win, android)]]
kmVec2* kmVec2Scale(kmVec2*, kmVec2 const*, float const) = m1 0x2b81b0, imac 0x32b5a0;
[[link(win, android)]]
int kmVec2AreEqual(kmVec2 const*, kmVec2 const*) = m1 0x2b81c0, imac 0x32b5c0;

[[link(win, android)]]
kmVec3* kmVec3Fill(kmVec3*, float, float, float) = m1 0x52f4c0, imac 0x608fe0, ios 0x32530c;
[[link(win, android)]]
float kmVec3Length(kmVec3 const*) = m1 0x52f4cc, imac 0x609000, ios 0x325318;
[[link(win, android)]]
float kmVec3LengthSq(kmVec3 const*) = m1 0x52f518, imac 0x609050;
[[link(win, android)]]
kmVec3* kmVec3Normalize(kmVec3*, kmVec3 const*) = m1 0x52f560, imac 0x6090a0, ios 0x325364;
[[link(win, android)]]
kmVec3* kmVec3Cross(kmVec3*, kmVec3 const*, kmVec3 const*) = m1 0x52f5d4, imac 0x609120, ios 0x3253b0;
[[link(win, android)]]
float kmVec3Dot(kmVec3 const*, kmVec3 const*) = m1 0x52f614, imac 0x609170;
[[link(win, android)]]
kmVec3* kmVec3Add(kmVec3*, kmVec3 const*, kmVec3 const*) = m1 0x52f634, imac 0x6091a0;
[[link(win, android)]]
kmVec3* kmVec3Subtract(kmVec3*, kmVec3 const*, kmVec3 const*) = m1 0x52f658, imac 0x6091d0, ios 0x3253f0;
[[link(win, android)]]
kmVec3* kmVec3Transform(kmVec3*, kmVec3 const*, kmMat4 const*) = m1 0x52f67c, imac 0x609200;
[[link(win, android)]]
kmVec3* kmVec3TransformNormal(kmVec3*, kmVec3 const*, kmMat4 const*) = m1 0x52f7f0, imac 0x609400;
[[link(win, android)]]
kmVec3* kmVec3TransformCoord(kmVec3*, kmVec3 const*, kmMat4 const*) = m1 0x52f784, imac 0x609380, ios 0x325414;
[[link(win, android)]]
kmVec3* kmVec3Scale(kmVec3*, kmVec3 const*, float const) = m1 0x52f834, imac 0x609460;
[[link(win, android)]]
int kmVec3AreEqual(kmVec3 const*, kmVec3 const*) = m1 0x52f850, imac 0x609490;
[[link(win, android)]]
kmVec3* kmVec3InverseTransform(kmVec3*, kmVec3 const*, kmMat4 const*) = m1 0x52f734, imac 0x609300;
[[link(win, android)]]
kmVec3* kmVec3InverseTransformNormal(kmVec3*, kmVec3 const*, kmMat4 const*) = m1 0x52f6d0, imac 0x609270;
[[link(win, android)]]
kmVec3* kmVec3Assign(kmVec3*, kmVec3 const*) = m1 0x52f8fc, imac 0x609540, ios 0x325480;
[[link(win, android)]]
kmVec3* kmVec3Zero(kmVec3*) = m1 0x52f918, imac 0x609560;

[[link(win, android)]]
void kmGLFreeAll() = m1 0x1b4138, imac 0x207ef0, ios 0x168620;
[[link(win, android)]]
void kmGLPushMatrix() = m1 0x1b40ac, imac 0x207e70, ios 0x168594;
[[link(win, android)]]
void kmGLPopMatrix() = m1 0x1b40f0, imac 0x207eb0, ios 0x1685d8;
[[link(win, android)]]
void kmGLMatrixMode(unsigned int) = m1 0x1b4064, imac 0x207e30, ios 0x16854c;
[[link(win, android)]]
void kmGLLoadIdentity() = m1 0x1b4118, imac 0x207ed0, ios 0x168600;
[[link(win, android)]]
void kmGLLoadMatrix(kmMat4 const*) = m1 0x1b41b0, imac 0x207f60;
[[link(win, android)]]
void kmGLMultMatrix(kmMat4 const*) = m1 0x1b417c, imac 0x207f30, ios 0x168664;
[[link(win, android)]]
void kmGLTranslatef(float, float, float) = m1 0x1b4234, imac 0x207fe0, ios 0x1686ec;
[[link(win, android)]]
void kmGLRotatef(float, float, float, float) = m1 0x1b426c, imac 0x208020;
[[link(win, android)]]
void kmGLScalef(float, float, float) = m1 0x1b42d0, imac 0x208080;
[[link(win, android)]]
void kmGLGetMatrix(unsigned int, kmMat4*) = m1 0x1b41e0, imac 0x207f90, ios 0x168698;
