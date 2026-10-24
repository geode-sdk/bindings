#import mac <Geode/cocos/kazmath/include/kazmath/kazmath.h>

[[link(win, android)]]
kmAABB* const kmAABBAssign(kmAABB*, kmAABB const*) = imac 0x6c94a0, m1 0x5e14e4;
[[link(win, android)]]
int const kmAABBContainsPoint(kmVec3 const*, kmAABB const*) = imac 0x6c9450, m1 0x5e1480;
[[link(win, android)]]
kmAABB* const kmAABBScale(kmAABB*, kmAABB const*, float);
[[link(win, android)]]
unsigned char kmAlmostEqual(float, float) = imac 0x87a700, m1 0x77004c;
[[link(win, android)]]
float kmDegreesToRadians(float) = imac 0x87a6c0, m1 0x77000c, ios 0x263b94;
[[link(win, android)]]
void kmGLFreeAll() = imac 0x1eb340, m1 0x19d960, ios 0x1f13cc;
[[link(win, android)]]
void kmGLGetMatrix(unsigned int, kmMat4*) = imac 0x1eb3e0, m1 0x19da08, ios 0x1f1444;
[[link(win, android)]]
void kmGLLoadIdentity() = imac 0x1eb320, m1 0x19d940, ios 0x1f13ac;
[[link(win, android)]]
void kmGLLoadMatrix(kmMat4 const*) = imac 0x1eb3b0, m1 0x19d9d8;
[[link(win, android)]]
void kmGLMatrixMode(unsigned int) = imac 0x1eb280, m1 0x19d88c, ios 0x1f12f8;
[[link(win, android)]]
void kmGLMultMatrix(kmMat4 const*) = imac 0x1eb380, m1 0x19d9a4, ios 0x1f1410;
[[link(win, android)]]
void kmGLPopMatrix() = imac 0x1eb300, m1 0x19d918, ios 0x1f1384;
[[link(win, android)]]
void kmGLPushMatrix() = imac 0x1eb2c0, m1 0x19d8d4, ios 0x1f1340;
[[link(win, android)]]
void kmGLRotatef(float, float, float, float) = imac 0x1eb470, m1 0x19da94;
[[link(win, android)]]
void kmGLScalef(float, float, float) = imac 0x1eb4d0, m1 0x19daf8;
[[link(win, android)]]
void kmGLTranslatef(float, float, float) = imac 0x1eb430, m1 0x19da5c, ios 0x1f1498;
[[link(win, android)]]
kmMat3* const kmMat3Adjugate(kmMat3*, kmMat3 const*) = imac 0x88eb20, m1 0x782ec8;
[[link(win, android)]]
int const kmMat3AreEqual(kmMat3 const*, kmMat3 const*) = imac 0x88ef90, m1 0x7831d8;
[[link(win, android)]]
kmMat3* const kmMat3Assign(kmMat3*, kmMat3 const*) = imac 0x88ef60, m1 0x7831b0;
[[link(win, android)]]
float const kmMat3Determinant(kmMat3 const*) = imac 0x88eaa0, m1 0x782e7c;
[[link(win, android)]]
kmMat3* const kmMat3Fill(kmMat3*, float const*) = imac 0x88ea50, m1 0x782e4c;
[[link(win, android)]]
kmMat3* const kmMat3Identity(kmMat3*) = imac 0x88ea70;
[[link(win, android)]]
kmMat3* const kmMat3Inverse(kmMat3*, float const, kmMat3 const*) = imac 0x88ec10, m1 0x782f7c;
[[link(win, android)]]
int const kmMat3IsIdentity(kmMat3 const*) = m1 0x78306c;
[[link(win, android)]]
kmMat3* const kmMat3Multiply(kmMat3*, kmMat3 const*, kmMat3 const*) = imac 0x88ee10;
[[link(win, android)]]
kmMat3* const kmMat3Rotation(kmMat3*, float const) = imac 0x88f1a0;
[[link(win, android)]]
kmMat3* const kmMat3RotationAxisAngle(kmMat3*, kmVec3 const*, float) = imac 0x88f3c0, m1 0x783570;
[[link(win, android)]]
kmMat3* const kmMat3RotationQuaternion(kmMat3*, kmQuaternion const*) = imac 0x88f260, m1 0x783480;
[[link(win, android)]]
kmVec3* const kmMat3RotationToAxisAngle(kmVec3*, float*, kmMat3 const*) = imac 0x88f500, m1 0x783660;
[[link(win, android)]]
kmMat3* const kmMat3RotationX(kmMat3*, float const) = imac 0x88f540, m1 0x7836a8;
[[link(win, android)]]
kmMat3* const kmMat3RotationY(kmMat3*, float const) = imac 0x88f590, m1 0x7836e8;
[[link(win, android)]]
kmMat3* const kmMat3RotationZ(kmMat3*, float const) = imac 0x88f5f0;
[[link(win, android)]]
kmMat3* const kmMat3ScalarMultiply(kmMat3*, kmMat3 const*, float const) = imac 0x88ed40;
[[link(win, android)]]
kmMat3* const kmMat3Scaling(kmMat3*, float const, float const) = imac 0x88f1f0;
[[link(win, android)]]
kmMat3* const kmMat3Translation(kmMat3*, float const, float const) = imac 0x88f220, m1 0x783460;
[[link(win, android)]]
kmMat3* const kmMat3Transpose(kmMat3*, kmMat3 const*);
[[link(win, android)]]
int const kmMat4AreEqual(kmMat4 const*, kmMat4 const*) = imac 0x3bcc70, m1 0x342210;
[[link(win, android)]]
kmMat4* const kmMat4Assign(kmMat4*, kmMat4 const*) = imac 0x3bca50, m1 0x3420a8, ios 0x459dac;
[[link(win, android)]]
kmPlane* const kmMat4ExtractPlane(kmPlane*, kmMat4 const*, unsigned int const) = imac 0x3bdb30, m1 0x342e60;
[[link(win, android)]]
kmMat3* const kmMat4ExtractRotation(kmMat3*, kmMat4 const*);
[[link(win, android)]]
kmMat4* const kmMat4Fill(kmMat4*, float const*) = imac 0x3bbed0, m1 0x34174c;
[[link(win, android)]]
kmVec3* const kmMat4GetForwardVec3(kmVec3*, kmMat4 const*);
[[link(win, android)]]
kmVec3* const kmMat4GetRightVec3(kmVec3*, kmMat4 const*);
[[link(win, android)]]
kmVec3* const kmMat4GetUpVec3(kmVec3*, kmMat4 const*);
[[link(win, android)]]
kmMat4* const kmMat4Identity(kmMat4*) = imac 0x3bbf00, m1 0x341760, ios 0x459a74;
[[link(win, android)]]
kmMat4* const kmMat4Inverse(kmMat4*, kmMat4 const*) = imac 0x3bc9a0, m1 0x342010, ios 0x459d24;
[[link(win, android)]]
int const kmMat4IsIdentity(kmMat4 const*) = m1 0x3420d0;
[[link(win, android)]]
kmMat4* const kmMat4LookAt(kmMat4*, kmVec3 const*, kmVec3 const*, kmVec3 const*) = imac 0x3bd820, m1 0x342bf4, ios 0x459fb4;
[[link(win, android)]]
kmMat4* const kmMat4Multiply(kmMat4*, kmMat4 const*, kmMat4 const*) = imac 0x3bcb60, m1 0x34219c, ios 0x459dd4;
[[link(win, android)]]
kmMat4* const kmMat4OrthographicProjection(kmMat4*, float, float, float, float, float, float) = imac 0x3bd790, m1 0x342b84, ios 0x459f44;
[[link(win, android)]]
kmMat4* const kmMat4PerspectiveProjection(kmMat4*, float, float, float, float) = imac 0x3bd690, m1 0x342ab4, ios 0x459e74;
[[link(win, android)]]
kmMat4* const kmMat4RotationAxisAngle(kmMat4*, kmVec3 const*, float) = imac 0x3bd020, m1 0x3425e4;
[[link(win, android)]]
kmMat4* const kmMat4RotationPitchYawRoll(kmMat4*, float const, float const, float const) = imac 0x3bd2b0, m1 0x3427b4;
[[link(win, android)]]
kmMat4* const kmMat4RotationQuaternion(kmMat4*, kmQuaternion const*) = imac 0x3bd3f0, m1 0x3428b0;
[[link(win, android)]]
kmVec3* const kmMat4RotationToAxisAngle(kmVec3*, float*, kmMat4 const*) = imac 0x3bda10, m1 0x342d74;
[[link(win, android)]]
kmMat4* const kmMat4RotationTranslation(kmMat4*, kmMat3 const*, kmVec3 const*) = imac 0x3bda90, m1 0x342de8;
[[link(win, android)]]
kmMat4* const kmMat4RotationX(kmMat4*, float const) = m1 0x3426b8;
[[link(win, android)]]
kmMat4* const kmMat4RotationY(kmMat4*, float const) = imac 0x3bd1e0, m1 0x342708;
[[link(win, android)]]
kmMat4* const kmMat4RotationZ(kmMat4*, float const) = m1 0x342768;
[[link(win, android)]]
kmMat4* const kmMat4Scaling(kmMat4*, float const, float const, float const) = imac 0x3bd550, m1 0x3429a4;
[[link(win, android)]]
kmMat4* const kmMat4Translation(kmMat4*, float const, float const, float const) = imac 0x3bd580, m1 0x3429c8, ios 0x459e48;
[[link(win, android)]]
kmMat4* const kmMat4Transpose(kmMat4*, kmMat4 const*) = imac 0x3bcab0, m1 0x342118;
[[link(win, android)]]
float kmMax(float, float) = imac 0x87a6f0, m1 0x770040;
[[link(win, android)]]
float kmMin(float, float) = imac 0x87a6e0, m1 0x770034;
[[link(win, android)]]
POINT_CLASSIFICATION const kmPlaneClassifyPoint(kmPlane const*, kmVec3 const*) = imac 0x47ec60, m1 0x3e8f38;
[[link(win, android)]]
float const kmPlaneDot(kmPlane const*, kmVec4 const*);
[[link(win, android)]]
float const kmPlaneDotCoord(kmPlane const*, kmVec3 const*) = imac 0x47ea20, m1 0x3e8d4c;
[[link(win, android)]]
float const kmPlaneDotNormal(kmPlane const*, kmVec3 const*) = imac 0x47ea50, m1 0x3e8d70;
[[link(win, android)]]
kmPlane* const kmPlaneFromPointNormal(kmPlane*, kmVec3 const*, kmVec3 const*) = imac 0x47ea80, m1 0x3e8d90;
[[link(win, android)]]
kmPlane* const kmPlaneFromPoints(kmPlane*, kmVec3 const*, kmVec3 const*, kmVec3 const*) = imac 0x47eac0, m1 0x3e8dd0;
[[link(win, android)]]
kmVec3* const kmPlaneIntersectLine(kmVec3*, kmPlane const*, kmVec3 const*, kmVec3 const*);
[[link(win, android)]]
kmPlane* const kmPlaneNormalize(kmPlane*, kmPlane const*) = imac 0x47eba0, m1 0x3e8e98;
[[link(win, android)]]
kmPlane* const kmPlaneScale(kmPlane*, kmPlane const*, float);
[[link(win, android)]]
kmQuaternion* kmQuaternionAdd(kmQuaternion*, kmQuaternion const*, kmQuaternion const*);
[[link(win, android)]]
kmQuaternion* kmQuaternionAssign(kmQuaternion*, kmQuaternion const*) = imac 0x510850;
[[link(win, android)]]
kmQuaternion* const kmQuaternionConjugate(kmQuaternion*, kmQuaternion const*) = imac 0x50fe40, m1 0x46b56c;
[[link(win, android)]]
float const kmQuaternionDot(kmQuaternion const*, kmQuaternion const*);
[[link(win, android)]]
kmQuaternion* kmQuaternionExp(kmQuaternion*, kmQuaternion const*);
[[link(win, android)]]
kmQuaternion* kmQuaternionIdentity(kmQuaternion*) = imac 0x50fef0, m1 0x46b5d4;
[[link(win, android)]]
kmQuaternion* kmQuaternionInverse(kmQuaternion*, kmQuaternion const*) = imac 0x50ff10, m1 0x46b5e4;
[[link(win, android)]]
int kmQuaternionIsIdentity(kmQuaternion const*) = imac 0x510000, m1 0x46b670;
[[link(win, android)]]
float kmQuaternionLength(kmQuaternion const*) = imac 0x50ffa0, m1 0x46b640;
[[link(win, android)]]
float kmQuaternionLengthSq(kmQuaternion const*) = m1 0x46b6b0;
[[link(win, android)]]
kmQuaternion* kmQuaternionLn(kmQuaternion*, kmQuaternion const*);
[[link(win, android)]]
kmQuaternion* kmQuaternionMultiply(kmQuaternion*, kmQuaternion const*, kmQuaternion const*) = imac 0x5100c0, m1 0x46b6f4;
[[link(win, android)]]
kmVec3* kmQuaternionMultiplyVec3(kmVec3*, kmQuaternion const*, kmVec3 const*) = imac 0x510ac0, m1 0x46bedc;
[[link(win, android)]]
kmQuaternion* kmQuaternionNormalize(kmQuaternion*, kmQuaternion const*) = imac 0x5101a0, m1 0x46b770;
[[link(win, android)]]
kmQuaternion* kmQuaternionRotationAxis(kmQuaternion*, kmVec3 const*, float) = imac 0x510220, m1 0x46b7c8;
[[link(win, android)]]
kmQuaternion* kmQuaternionRotationBetweenVec3(kmQuaternion*, kmVec3 const*, kmVec3 const*, kmVec3 const*) = imac 0x510860, m1 0x46bccc;
[[link(win, android)]]
kmQuaternion* kmQuaternionRotationMatrix(kmQuaternion*, kmMat3 const*) = imac 0x510270, m1 0x46b814;
[[link(win, android)]]
kmQuaternion* kmQuaternionRotationYawPitchRoll(kmQuaternion*, float, float, float) = imac 0x510410, m1 0x46b964;
[[link(win, android)]]
kmQuaternion* kmQuaternionScale(kmQuaternion*, kmQuaternion const*, float) = imac 0x50ffe0;
[[link(win, android)]]
kmQuaternion* kmQuaternionSlerp(kmQuaternion*, kmQuaternion const*, kmQuaternion const*, float) = imac 0x5105a0, m1 0x46ba80;
[[link(win, android)]]
void kmQuaternionToAxisAngle(kmQuaternion const*, kmVec3*, float*) = imac 0x510750, m1 0x46bbd0;
[[link(win, android)]]
float kmRadiansToDegrees(float) = imac 0x87a6d0, m1 0x770020;
[[link(win, android)]]
void kmRay2Fill(kmRay2*, float, float, float, float) = m1 0x42f578;
[[link(win, android)]]
unsigned char kmRay2IntersectCircle(kmRay2 const*, kmVec2 const, float const, kmVec2*);
[[link(win, android)]]
unsigned char kmRay2IntersectLineSegment(kmRay2 const*, kmVec2 const*, kmVec2 const*, kmVec2*) = imac 0x4ccfc0, m1 0x42f584;
[[link(win, android)]]
unsigned char kmRay2IntersectTriangle(kmRay2 const*, kmVec2 const*, kmVec2 const*, kmVec2 const*, kmVec2*, kmVec2*) = imac 0x4cd240, m1 0x42f7b4;
[[link(win, android)]]
float kmSQR(float) = imac 0x87a6b0, m1 0x770004, ios 0x263b8c;
[[link(win, android)]]
kmVec2* kmVec2Add(kmVec2*, kmVec2 const*, kmVec2 const*);
[[link(win, android)]]
int kmVec2AreEqual(kmVec2 const*, kmVec2 const*) = imac 0x316cd0, m1 0x2a8c90;
[[link(win, android)]]
float kmVec2Dot(kmVec2 const*, kmVec2 const*) = imac 0x316c00, m1 0x2a8c0c;
[[link(win, android)]]
kmVec2* kmVec2Fill(kmVec2*, float, float) = imac 0x316af0;
[[link(win, android)]]
float kmVec2Length(kmVec2 const*) = imac 0x316b10, m1 0x2a8b20;
[[link(win, android)]]
float kmVec2LengthSq(kmVec2 const*) = imac 0x316b50, m1 0x2a8b60;
[[link(win, android)]]
kmVec2* kmVec2Normalize(kmVec2*, kmVec2 const*) = imac 0x316b80, m1 0x2a8b9c;
[[link(win, android)]]
kmVec2* kmVec2Scale(kmVec2*, kmVec2 const*, float const);
[[link(win, android)]]
kmVec2* kmVec2Subtract(kmVec2*, kmVec2 const*, kmVec2 const*) = imac 0x316c20, m1 0x2a8c20;
[[link(win, android)]]
kmVec2* kmVec2Transform(kmVec2*, kmVec2 const*, kmMat3 const*) = imac 0x316c40, m1 0x2a8c34;
[[link(win, android)]]
kmVec2* kmVec2TransformCoord(kmVec2*, kmVec2 const*, kmMat3 const*);
[[link(win, android)]]
kmVec3* kmVec3Add(kmVec3*, kmVec3 const*, kmVec3 const*) = imac 0x6e0a70, m1 0x5f56fc;
[[link(win, android)]]
int kmVec3AreEqual(kmVec3 const*, kmVec3 const*) = imac 0x6e0d60, m1 0x5f5918;
[[link(win, android)]]
kmVec3* kmVec3Assign(kmVec3*, kmVec3 const*) = imac 0x6e0e10, m1 0x5f59c4, ios 0x3c317c;
[[link(win, android)]]
kmVec3* kmVec3Cross(kmVec3*, kmVec3 const*, kmVec3 const*) = imac 0x6e09f0, m1 0x5f569c, ios 0x3c30ac;
[[link(win, android)]]
float kmVec3Dot(kmVec3 const*, kmVec3 const*) = imac 0x6e0a40, m1 0x5f56dc;
[[link(win, android)]]
kmVec3* kmVec3Fill(kmVec3*, float, float, float) = imac 0x6e08b0, m1 0x5f5588, ios 0x3c3008;
[[link(win, android)]]
kmVec3* kmVec3InverseTransform(kmVec3*, kmVec3 const*, kmMat4 const*) = imac 0x6e0bd0, m1 0x5f57fc;
[[link(win, android)]]
kmVec3* kmVec3InverseTransformNormal(kmVec3*, kmVec3 const*, kmMat4 const*) = imac 0x6e0b40, m1 0x5f5798;
[[link(win, android)]]
float kmVec3Length(kmVec3 const*) = imac 0x6e08d0, m1 0x5f5594, ios 0x3c3014;
[[link(win, android)]]
float kmVec3LengthSq(kmVec3 const*) = imac 0x6e0920, m1 0x5f55e0;
[[link(win, android)]]
kmVec3* kmVec3Normalize(kmVec3*, kmVec3 const*) = imac 0x6e0970, m1 0x5f5628, ios 0x3c3060;
[[link(win, android)]]
kmVec3* kmVec3Scale(kmVec3*, kmVec3 const*, float const) = imac 0x6e0d30, m1 0x5f58fc;
[[link(win, android)]]
kmVec3* kmVec3Subtract(kmVec3*, kmVec3 const*, kmVec3 const*) = imac 0x6e0aa0, m1 0x5f5720, ios 0x3c30ec;
[[link(win, android)]]
kmVec3* kmVec3Transform(kmVec3*, kmVec3 const*, kmMat4 const*) = imac 0x6e0ad0, m1 0x5f5744;
[[link(win, android)]]
kmVec3* kmVec3TransformCoord(kmVec3*, kmVec3 const*, kmMat4 const*) = imac 0x6e0c50, m1 0x5f584c, ios 0x3c3110;
[[link(win, android)]]
kmVec3* kmVec3TransformNormal(kmVec3*, kmVec3 const*, kmMat4 const*) = imac 0x6e0cd0, m1 0x5f58b8;
[[link(win, android)]]
kmVec3* kmVec3Zero(kmVec3*);
