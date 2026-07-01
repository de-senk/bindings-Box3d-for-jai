//
// This file was auto-generated using the following command:
//
// jai c:/_paths/my_modules/box3d//generate.jai modules +jails_diagnostics import_dir c:/Users/iuser/.vscode/extensions/apparentlystudio.jails-0.2.22/out/metaprogram
//





B3_ENABLE_VALIDATION :: 0;

B3_NULL_INDEX :: -1;

B3_HASH_INIT :: 5381;

B3_PI :: 3.14159265359;

B3_DEG_TO_RAD :: 0.01745329251;

B3_RAD_TO_DEG :: 57.2957795131;

B3_MIN_SCALE :: 0.01;

B3_MAX_WORKERS :: 32;

B3_MAX_TASKS :: 256;

B3_GRAPH_COLOR_COUNT :: 24;

B3_CONTACT_MANIFOLD_COUNT_BUCKETS :: 8;

B3_MAX_WORLDS :: 128;

B3_MAX_ROTATION :: 0.25 * B3_PI;

B3_CONTACT_RECYCLE_ANGULAR_DISTANCE :: 0.99240388;

B3_AABB_MARGIN_FRACTION :: 0.125;

B3_TIME_TO_SLEEP :: 0.5;

B3_BODY_NAME_LENGTH :: 18;

B3_SHAPE_NAME_LENGTH :: 18;

B3_MAX_MANIFOLD_POINTS :: 4;

B3_MAX_SHAPE_CAST_POINTS :: 64;

B3_SHAPE_POWER :: 22;
B3_CHILD_POWER :: 64 - 2 * B3_SHAPE_POWER;
B3_MAX_SHAPES :: 1 << B3_SHAPE_POWER;
B3_MAX_CHILD_SHAPES :: 1 << B3_CHILD_POWER;

B3_DYNAMIC_TREE_VERSION :: 0x93EDAF889FD30B4A;

B3_HULL_VERSION :: 0x9D4716CE3793900E;

B3_MESH_VERSION :: 0xABD11AB62A6E886D;

B3_HEIGHT_FIELD_HOLE :: 0xFF;

B3_HEIGHT_FIELD_VERSION :: 0x8B18CBD138A6BC84;

B3_COMPOUND_VERSION :: 0x830778DB07086EB4 ^ B3_DYNAMIC_TREE_VERSION ^ B3_MESH_VERSION ^ B3_HULL_VERSION;

B3_MAX_COMPOUND_MESH_MATERIALS :: 4;

b3AllocFcn :: #type (size: s32, alignment: s32) -> *void #c_call;

b3FreeFcn :: #type (mem: *void) -> void #c_call;

b3AssertFcn :: #type (condition: *u8, fileName: *u8, lineNumber: s32) -> s32 #c_call;

b3LogFcn :: #type (message: *u8) -> void #c_call;

b3SetAllocator :: (allocFcn: b3AllocFcn, freeFcn: b3FreeFcn) -> void #foreign box3d;

b3GetByteCount :: () -> s32 #foreign box3d;

b3SetAssertFcn :: (assertFcn: b3AssertFcn) -> void #foreign box3d;

b3SetLogFcn :: (logFcn: b3LogFcn) -> void #foreign box3d;

b3Version :: struct {
    major:    s32;

    minor:    s32;

    revision: s32;
}

b3GetVersion :: () -> b3Version #foreign box3d;

b3IsDoublePrecision :: () -> bool #foreign box3d;

b3GetTicks :: () -> u64 #foreign box3d;

b3GetMilliseconds :: (ticks: u64) -> float #foreign box3d;

b3GetMillisecondsAndReset :: (ticks: *u64) -> float #foreign box3d;

b3Yield :: () -> void #foreign box3d;

b3Sleep :: (milliseconds: s32) -> void #foreign box3d;

b3Hash :: (hash: u32, data: *u8, count: s32) -> u32 #foreign box3d;

b3WriteBinaryFile :: (data: *void, size: s32, fileName: *u8) -> void #foreign box3d;
b3ReadBinaryFile :: (prefix: *u8, fileName: *u8, memSize: *s32) -> *void #foreign box3d;

b3Vec2 :: struct {
    x: float;
    y: float;
}

b3Vec3 :: struct {
    x: float;
    y: float;
    z: float;
}

b3CosSin :: struct {
    cosine: float;
    sine:   float;
}

b3Quat :: struct {
    v: b3Vec3;
    s: float;
}

b3Transform :: struct {
    p: b3Vec3;
    q: b3Quat;
}

b3Pos :: b3Vec3;

b3WorldTransform :: b3Transform;

b3Matrix3 :: struct {
    cx: b3Vec3;
    cy: b3Vec3;
    cz: b3Vec3;
}

b3AABB :: struct {
    lowerBound: b3Vec3;
    upperBound: b3Vec3;
}

b3Plane :: struct {
    normal: b3Vec3;
    offset: float;
}

b3IsValidFloat :: (a: float) -> bool #foreign box3d;

b3Atan2 :: (y: float, x: float) -> float #foreign box3d;

b3ComputeCosSin :: (radians: float) -> b3CosSin #foreign box3d;

b3MakeQuatFromMatrix :: (m: *b3Matrix3) -> b3Quat #foreign box3d;

b3ComputeQuatBetweenUnitVectors :: (v1: b3Vec3, v2: b3Vec3) -> b3Quat #foreign box3d;

b3Steiner :: (mass: float, origin: b3Vec3) -> b3Matrix3 #foreign box3d;

b3SegmentDistanceResult :: struct {
    point1:    b3Vec3;
    fraction1: float;
    point2:    b3Vec3;
    fraction2: float;
}

b3PointToSegmentDistance :: (a: b3Vec3, b: b3Vec3, q: b3Vec3) -> b3Vec3 #foreign box3d;

b3LineDistance :: (p1: b3Vec3, d1: b3Vec3, p2: b3Vec3, d2: b3Vec3) -> b3SegmentDistanceResult #foreign box3d;

b3SegmentDistance :: (p1: b3Vec3, q1: b3Vec3, p2: b3Vec3, q2: b3Vec3) -> b3SegmentDistanceResult #foreign box3d;

b3IsValidVec3 :: (a: b3Vec3) -> bool #foreign box3d;

b3IsValidQuat :: (q: b3Quat) -> bool #foreign box3d;

b3IsValidTransform :: (a: b3Transform) -> bool #foreign box3d;

b3IsValidMatrix3 :: (a: b3Matrix3) -> bool #foreign box3d;

b3IsValidAABB :: (a: b3AABB) -> bool #foreign box3d;

b3IsBoundedAABB :: (a: b3AABB) -> bool #foreign box3d;

b3IsSaneAABB :: (a: b3AABB) -> bool #foreign box3d;

b3IsValidPlane :: (a: b3Plane) -> bool #foreign box3d;

b3IsValidPosition :: (p: b3Pos) -> bool #foreign box3d;

b3IsValidWorldTransform :: (t: b3WorldTransform) -> bool #foreign box3d;

b3SetLengthUnitsPerMeter :: (lengthUnits: float) -> void #foreign box3d;

b3GetLengthUnitsPerMeter :: () -> float #foreign box3d;

b3SetStallThreshold :: (seconds: float) -> void #foreign box3d;

b3GetStallThreshold :: () -> float #foreign box3d;

b3WorldId :: struct {
    index1:     u16;
    generation: u16;
}

b3BodyId :: struct {
    index1:     s32;
    world0:     u16;
    generation: u16;
}

b3ShapeId :: struct {
    index1:     s32;
    world0:     u16;
    generation: u16;
}

b3JointId :: struct {
    index1:     s32;
    world0:     u16;
    generation: u16;
}

b3ContactId :: struct {
    index1:     s32;
    world0:     u16;
    padding:    s16;
    generation: u32;
}

b3TaskCallback :: #type (taskContext: *void) -> void #c_call;

b3EnqueueTaskCallback :: #type (task: b3TaskCallback, taskContext: *void, userContext: *void, taskName: *u8) -> *void #c_call;

b3FinishTaskCallback :: #type (userTask: *void, userContext: *void) -> void #c_call;

b3CreateDebugShapeCallback :: #type (debugShape: *b3DebugShape, userContext: *void) -> *void #c_call;
b3DestroyDebugShapeCallback :: #type (userShape: *void, userContext: *void) -> void #c_call;

b3FrictionCallback :: #type (frictionA: float, userMaterialIdA: u64, frictionB: float, userMaterialIdB: u64) -> float #c_call;

b3RestitutionCallback :: #type (restitutionA: float, userMaterialIdA: u64, restitutionB: float, userMaterialIdB: u64) -> float #c_call;

b3CustomFilterFcn :: #type (shapeIdA: b3ShapeId, shapeIdB: b3ShapeId, _context: *void) -> bool #c_call;

b3PreSolveFcn :: #type (shapeIdA: b3ShapeId, shapeIdB: b3ShapeId, point: b3Pos, normal: b3Vec3, _context: *void) -> bool #c_call;

b3OverlapResultFcn :: #type (shapeId: b3ShapeId, _context: *void) -> bool #c_call;

b3CastResultFcn :: #type (shapeId: b3ShapeId, point: b3Pos, normal: b3Vec3, fraction: float, userMaterialId: u64, triangleIndex: s32, childIndex: s32, _context: *void) -> float #c_call;

b3Capacity :: struct {
    staticShapeCount:  s32;

    dynamicShapeCount: s32;

    staticBodyCount:   s32;

    dynamicBodyCount:  s32;

    contactCount:      s32;
}

b3WorldDef :: struct {
    gravity:               b3Vec3;

    restitutionThreshold:  float;

    hitEventThreshold:     float;

    contactHertz:          float;

    contactDampingRatio:   float;

    contactSpeed:          float;

    maximumLinearSpeed:    float;

    frictionCallback:      b3FrictionCallback;

    restitutionCallback:   b3RestitutionCallback;

    enableSleep:           bool;

    enableContinuous:      bool;

    workerCount:           u32;

    enqueueTask:           b3EnqueueTaskCallback;

    finishTask:            b3FinishTaskCallback;

    userTaskContext:       *void;

    userData:              *void;

    createDebugShape:      b3CreateDebugShapeCallback;

    destroyDebugShape:     b3DestroyDebugShapeCallback;

    userDebugShapeContext: *void;

    capacity:              b3Capacity;

    internalValue:         s32;
}

b3DefaultWorldDef :: () -> b3WorldDef #foreign box3d;

b3BodyType :: enum s32 {
    staticBody    :: 0;

    kinematicBody :: 1;

    dynamicBody   :: 2;

    bodyTypeCount :: 3;

    b3_staticBody    :: staticBody;

    b3_kinematicBody :: kinematicBody;

    b3_dynamicBody   :: dynamicBody;

    b3_bodyTypeCount :: bodyTypeCount;
}

b3MotionLocks :: struct {
    linearX:  bool;

    linearY:  bool;

    linearZ:  bool;

    angularX: bool;

    angularY: bool;

    angularZ: bool;
}

b3BodyDef :: struct {
    type:                   b3BodyType;

    position:               b3Pos;

    rotation:               b3Quat;

    linearVelocity:         b3Vec3;

    angularVelocity:        b3Vec3;

    linearDamping:          float;

    angularDamping:         float;

    gravityScale:           float;

    sleepThreshold:         float;

    name:                   *u8;

    userData:               *void;

    motionLocks:            b3MotionLocks;

    enableSleep:            bool;

    isAwake:                bool;

    isBullet:               bool;

    isEnabled:              bool;

    allowFastRotation:      bool;

    enableContactRecycling: bool;

    internalValue:          s32;
}

b3DefaultBodyDef :: () -> b3BodyDef #foreign box3d;

b3Filter :: struct {
    categoryBits: u64;

    maskBits:     u64;

    groupIndex:   s32;
}

b3DefaultFilter :: () -> b3Filter #foreign box3d;

b3SurfaceMaterial :: struct {
    friction:          float;

    restitution:       float;

    rollingResistance: float;

    tangentVelocity:   b3Vec3;

    userMaterialId:    u64;

    customColor:       u32;
}

b3DefaultSurfaceMaterial :: () -> b3SurfaceMaterial #foreign box3d;

b3ShapeType :: enum s32 {
    capsuleShape   :: 0;

    compoundShape  :: 1;

    heightShape    :: 2;

    hullShape      :: 3;

    meshShape      :: 4;

    sphereShape    :: 5;

    shapeTypeCount :: 6;

    b3_capsuleShape   :: capsuleShape;

    b3_compoundShape  :: compoundShape;

    b3_heightShape    :: heightShape;

    b3_hullShape      :: hullShape;

    b3_meshShape      :: meshShape;

    b3_sphereShape    :: sphereShape;

    b3_shapeTypeCount :: shapeTypeCount;
}

b3ShapeDef :: struct {
    userData:              *void;

    materials:             *b3SurfaceMaterial;

    materialCount:         s32;

    baseMaterial:          b3SurfaceMaterial;

    density:               float;

    explosionScale:        float;

    filter:                b3Filter;

    enableCustomFiltering: bool;

    isSensor:              bool;

    enableSensorEvents:    bool;

    enableContactEvents:   bool;

    enableHitEvents:       bool;

    enablePreSolveEvents:  bool;

    invokeContactCreation: bool;

    updateBodyMass:        bool;

    internalValue:         s32;
}

b3DefaultShapeDef :: () -> b3ShapeDef #foreign box3d;

b3Profile :: struct {
    step:                float;
    pairs:               float;
    collide:             float;
    solve:               float;
    solverSetup:         float;
    constraints:         float;
    prepareConstraints:  float;
    integrateVelocities: float;
    warmStart:           float;
    solveImpulses:       float;
    integratePositions:  float;
    relaxImpulses:       float;
    applyRestitution:    float;
    storeImpulses:       float;
    splitIslands:        float;
    transforms:          float;
    sensorHits:          float;
    jointEvents:         float;
    hitEvents:           float;
    refit:               float;
    bullets:             float;
    sleepIslands:        float;
    sensors:             float;
}

b3Counters :: struct {
    bodyCount:            s32;
    shapeCount:           s32;
    contactCount:         s32;
    jointCount:           s32;
    islandCount:          s32;
    stackUsed:            s32;
    arenaCapacity:        s32;
    staticTreeHeight:     s32;
    treeHeight:           s32;
    satCallCount:         s32;
    satCacheHitCount:     s32;
    byteCount:            s32;
    taskCount:            s32;
    colorCounts:          [24] s32;
    manifoldCounts:       [8] s32;

    awakeContactCount:    s32;

    recycledContactCount: s32;

    distanceIterations:   s32;
    pushBackIterations:   s32;
    rootIterations:       s32;
}

b3JointType :: enum s32 {
    parallelJoint  :: 0;
    distanceJoint  :: 1;
    filterJoint    :: 2;
    motorJoint     :: 3;
    prismaticJoint :: 4;
    revoluteJoint  :: 5;
    sphericalJoint :: 6;
    weldJoint      :: 7;
    wheelJoint     :: 8;

    b3_parallelJoint  :: parallelJoint;
    b3_distanceJoint  :: distanceJoint;
    b3_filterJoint    :: filterJoint;
    b3_motorJoint     :: motorJoint;
    b3_prismaticJoint :: prismaticJoint;
    b3_revoluteJoint  :: revoluteJoint;
    b3_sphericalJoint :: sphericalJoint;
    b3_weldJoint      :: weldJoint;
    b3_wheelJoint     :: wheelJoint;
}

b3JointDef :: struct {
    userData:               *void;

    bodyIdA:                b3BodyId;

    bodyIdB:                b3BodyId;

    localFrameA:            b3Transform;

    localFrameB:            b3Transform;

    forceThreshold:         float;

    torqueThreshold:        float;

    constraintHertz:        float;

    constraintDampingRatio: float;

    drawScale:              float;

    collideConnected:       bool;

    internalValue:          s32;
}

b3DistanceJointDef :: struct {
    base:             b3JointDef;

    length:           float;

    enableSpring:     bool;

    lowerSpringForce: float;

    upperSpringForce: float;

    hertz:            float;

    dampingRatio:     float;

    enableLimit:      bool;

    minLength:        float;

    maxLength:        float;

    enableMotor:      bool;

    maxMotorForce:    float;

    motorSpeed:       float;
}

b3DefaultDistanceJointDef :: () -> b3DistanceJointDef #foreign box3d;

b3MotorJointDef :: struct {
    base:                b3JointDef;

    linearVelocity:      b3Vec3;

    maxVelocityForce:    float;

    angularVelocity:     b3Vec3;

    maxVelocityTorque:   float;

    linearHertz:         float;

    linearDampingRatio:  float;

    maxSpringForce:      float;

    angularHertz:        float;

    angularDampingRatio: float;

    maxSpringTorque:     float;
}

b3DefaultMotorJointDef :: () -> b3MotorJointDef #foreign box3d;

b3FilterJointDef :: struct {
    base: b3JointDef;
}

b3DefaultFilterJointDef :: () -> b3FilterJointDef #foreign box3d;

b3ParallelJointDef :: struct {
    base:         b3JointDef;

    hertz:        float;

    dampingRatio: float;

    maxTorque:    float;
}

b3DefaultParallelJointDef :: () -> b3ParallelJointDef #foreign box3d;

b3PrismaticJointDef :: struct {
    base:              b3JointDef;

    enableSpring:      bool;

    hertz:             float;

    dampingRatio:      float;

    targetTranslation: float;

    enableLimit:       bool;

    lowerTranslation:  float;

    upperTranslation:  float;

    enableMotor:       bool;

    maxMotorForce:     float;

    motorSpeed:        float;
}

b3DefaultPrismaticJointDef :: () -> b3PrismaticJointDef #foreign box3d;

b3RevoluteJointDef :: struct {
    base:           b3JointDef;

    targetAngle:    float;

    enableSpring:   bool;

    hertz:          float;

    dampingRatio:   float;

    enableLimit:    bool;

    lowerAngle:     float;

    upperAngle:     float;

    enableMotor:    bool;

    maxMotorTorque: float;

    motorSpeed:     float;
}

b3DefaultRevoluteJointDef :: () -> b3RevoluteJointDef #foreign box3d;

b3SphericalJointDef :: struct {
    base:             b3JointDef;

    enableSpring:     bool;

    hertz:            float;

    dampingRatio:     float;

    targetRotation:   b3Quat;

    enableConeLimit:  bool;

    coneAngle:        float;

    enableTwistLimit: bool;

    lowerTwistAngle:  float;

    upperTwistAngle:  float;

    enableMotor:      bool;

    maxMotorTorque:   float;

    motorVelocity:    b3Vec3;
}

b3DefaultSphericalJointDef :: () -> b3SphericalJointDef #foreign box3d;

b3WeldJointDef :: struct {
    base:                b3JointDef;

    linearHertz:         float;

    angularHertz:        float;

    linearDampingRatio:  float;

    angularDampingRatio: float;
}

b3DefaultWeldJointDef :: () -> b3WeldJointDef #foreign box3d;

b3WheelJointDef :: struct {
    base:                   b3JointDef;

    enableSuspensionSpring: bool;

    suspensionHertz:        float;

    suspensionDampingRatio: float;

    enableSuspensionLimit:  bool;

    lowerSuspensionLimit:   float;

    upperSuspensionLimit:   float;

    enableSpinMotor:        bool;

    maxSpinTorque:          float;

    spinSpeed:              float;

    enableSteering:         bool;

    steeringHertz:          float;

    steeringDampingRatio:   float;

    targetSteeringAngle:    float;

    maxSteeringTorque:      float;

    enableSteeringLimit:    bool;

    lowerSteeringLimit:     float;

    upperSteeringLimit:     float;
}

b3DefaultWheelJointDef :: () -> b3WheelJointDef #foreign box3d;

b3ExplosionDef :: struct {
    maskBits:       u64;

    position:       b3Pos;

    radius:         float;

    falloff:        float;

    impulsePerArea: float;
}

b3DefaultExplosionDef :: () -> b3ExplosionDef #foreign box3d;

b3SensorBeginTouchEvent :: struct {
    sensorShapeId:  b3ShapeId;

    visitorShapeId: b3ShapeId;
}

b3SensorEndTouchEvent :: struct {
    sensorShapeId:  b3ShapeId;

    visitorShapeId: b3ShapeId;
}

b3SensorEvents :: struct {
    beginEvents: *b3SensorBeginTouchEvent;

    endEvents:   *b3SensorEndTouchEvent;

    beginCount:  s32;

    endCount:    s32;
}

b3ContactBeginTouchEvent :: struct {
    shapeIdA:  b3ShapeId;

    shapeIdB:  b3ShapeId;

    contactId: b3ContactId;
}

b3ContactEndTouchEvent :: struct {
    shapeIdA:  b3ShapeId;

    shapeIdB:  b3ShapeId;

    contactId: b3ContactId;
}

b3ContactHitEvent :: struct {
    shapeIdA:        b3ShapeId;

    shapeIdB:        b3ShapeId;

    contactId:       b3ContactId;

    point:           b3Pos;

    normal:          b3Vec3;

    approachSpeed:   float;

    userMaterialIdA: u64;

    userMaterialIdB: u64;
}

b3ContactEvents :: struct {
    beginEvents: *b3ContactBeginTouchEvent;

    endEvents:   *b3ContactEndTouchEvent;

    hitEvents:   *b3ContactHitEvent;

    beginCount:  s32;

    endCount:    s32;

    hitCount:    s32;
}

b3BodyMoveEvent :: struct {
    userData:   *void;

    transform:  b3WorldTransform;

    bodyId:     b3BodyId;

    fellAsleep: bool;
}

b3BodyEvents :: struct {
    moveEvents: *b3BodyMoveEvent;

    moveCount:  s32;
}

b3JointEvent :: struct {
    jointId:  b3JointId;

    userData: *void;
}

b3JointEvents :: struct {
    jointEvents: *b3JointEvent;

    count:       s32;
}

b3ContactData :: struct {
    contactId:     b3ContactId;

    shapeIdA:      b3ShapeId;

    shapeIdB:      b3ShapeId;

    manifolds:     *b3Manifold;

    manifoldCount: s32;
}

b3QueryFilter :: struct {
    categoryBits: u64;

    maskBits:     u64;

    id:           u64;

    name:         *u8;
}

b3DefaultQueryFilter :: () -> b3QueryFilter #foreign box3d;

b3RayCastInput :: struct {
    origin:      b3Vec3;

    translation: b3Vec3;

    maxFraction: float;
}

b3RayResult :: struct {
    shapeId:        b3ShapeId;

    point:          b3Pos;

    normal:         b3Vec3;

    userMaterialId: u64;

    fraction:       float;

    triangleIndex:  s32;

    childIndex:     s32;

    nodeVisits:     s32;

    leafVisits:     s32;

    hit:            bool;
}

b3ShapeProxy :: struct {
    points: *b3Vec3;

    count:  s32;

    radius: float;
}

b3ShapeCastInput :: struct {
    proxy:       b3ShapeProxy;

    translation: b3Vec3;

    maxFraction: float;

    canEncroach: bool;
}

b3BoxCastInput :: struct {
    box:         b3AABB;

    translation: b3Vec3;

    maxFraction: float;
}

b3CastOutput :: struct {
    normal:        b3Vec3;

    point:         b3Vec3;

    fraction:      float;

    iterations:    s32;

    triangleIndex: s32;

    childIndex:    s32;

    materialIndex: s32;

    hit:           bool;
}

b3WorldCastOutput :: b3CastOutput;

b3BodyCastResult :: struct {
    shapeId:        b3ShapeId;

    point:          b3Pos;

    normal:         b3Vec3;

    fraction:       float;

    triangleIndex:  s32;

    userMaterialId: u64;

    iterations:     s32;

    hit:            bool;
}

b3SimplexCache :: struct {
    metric: float;

    count:  u16;

    indexA: [4] u8;

    indexB: [4] u8;
}

b3ShapeCastPairInput :: struct {
    proxyA:       b3ShapeProxy;
    proxyB:       b3ShapeProxy;
    transform:    b3Transform;
    translationB: b3Vec3;
    maxFraction:  float;
    canEncroach:  bool;
}

b3DistanceInput :: struct {
    proxyA:    b3ShapeProxy;

    proxyB:    b3ShapeProxy;

    transform: b3Transform;

    useRadii:  bool;
}

b3DistanceOutput :: struct {
    pointA:       b3Vec3;
    pointB:       b3Vec3;
    normal:       b3Vec3;
    distance:     float;
    iterations:   s32;
    simplexCount: s32;
}

b3SimplexVertex :: struct {
    wA:     b3Vec3;
    wB:     b3Vec3;
    w:      b3Vec3;
    a:      float;
    indexA: s32;
    indexB: s32;
}

b3Simplex :: struct {
    vertices: [4] b3SimplexVertex;
    count:    s32;
}

b3Sweep :: struct {
    localCenter: b3Vec3;
    c1:          b3Vec3;
    c2:          b3Vec3;
    q1:          b3Quat;
    q2:          b3Quat;
}

b3TOIInput :: struct {
    proxyA:      b3ShapeProxy;
    proxyB:      b3ShapeProxy;
    sweepA:      b3Sweep;
    sweepB:      b3Sweep;
    maxFraction: float;
}

b3TOIState :: enum s32 {
    toiStateUnknown    :: 0;
    toiStateFailed     :: 1;
    toiStateOverlapped :: 2;
    toiStateHit        :: 3;
    toiStateSeparated  :: 4;

    b3_toiStateUnknown    :: toiStateUnknown;
    b3_toiStateFailed     :: toiStateFailed;
    b3_toiStateOverlapped :: toiStateOverlapped;
    b3_toiStateHit        :: toiStateHit;
    b3_toiStateSeparated  :: toiStateSeparated;
}

b3TOIOutput :: struct {
    state:              b3TOIState;

    point:              b3Vec3;

    normal:             b3Vec3;

    fraction:           float;

    distance:           float;

    distanceIterations: s32;

    pushBackIterations: s32;

    rootIterations:     s32;

    usedFallback:       bool;
}

b3TreeNodeFlags :: enum s32 {
    allocatedNode :: 1;
    enlargedNode  :: 2;
    leafNode      :: 4;

    b3_allocatedNode :: allocatedNode;
    b3_enlargedNode  :: enlargedNode;
    b3_leafNode      :: leafNode;
}

b3TreeNodeChildren :: struct {
    child1: s32;
    child2: s32;
}

b3TreeNode :: struct {
    aabb:         b3AABB;

    categoryBits: u64;

    union {
        children: b3TreeNodeChildren;

        userData: u64;
    }

    union {
        parent: s32;

        next:   s32;
    }

    height:       u16;

    flags:        u16;
}

b3DynamicTree :: struct {
    version:         u64;

    nodes:           *b3TreeNode;

    root:            s32;

    nodeCount:       s32;

    nodeCapacity:    s32;

    proxyCount:      s32;

    freeList:        s32;

    leafIndices:     *s32;

    leafBoxes:       *b3AABB;

    leafCenters:     *b3Vec3;

    binIndices:      *s32;

    rebuildCapacity: s32;
}

b3TreeStats :: struct {
    nodeVisits: s32;

    leafVisits: s32;
}

b3TreeQueryCallbackFcn :: #type (proxyId: s32, userData: u64, _context: *void) -> bool #c_call;

b3TreeQueryClosestCallbackFcn :: #type (distanceSqrMin: float, proxyId: s32, userData: u64, _context: *void) -> float #c_call;

b3TreeBoxCastCallbackFcn :: #type (input: *b3BoxCastInput, proxyId: s32, userData: u64, _context: *void) -> float #c_call;

b3TreeRayCastCallbackFcn :: #type (input: *b3RayCastInput, proxyId: s32, userData: u64, _context: *void) -> float #c_call;

b3PlaneResult :: struct {
    plane: b3Plane;

    point: b3Vec3;
}

b3CollisionPlane :: struct {
    plane:        b3Plane;

    pushLimit:    float;

    push:         float;

    clipVelocity: bool;
}

b3PlaneSolverResult :: struct {
    delta:          b3Vec3;

    iterationCount: s32;
}

b3BodyPlaneResult :: struct {
    shapeId: b3ShapeId;

    result:  b3PlaneResult;
}

b3PlaneResultFcn :: #type (shapeId: b3ShapeId, plane: *b3PlaneResult, planeCount: s32, _context: *void) -> bool #c_call;

b3MoverFilterFcn :: #type (shapeId: b3ShapeId, _context: *void) -> bool #c_call;

b3MassData :: struct {
    mass:    float;

    center:  b3Vec3;

    inertia: b3Matrix3;
}

b3Sphere :: struct {
    center: b3Vec3;

    radius: float;
}

b3Capsule :: struct {
    center1: b3Vec3;

    center2: b3Vec3;

    radius:  float;
}

b3HullVertex :: struct {
    edge: u8;
}

b3HullHalfEdge :: struct {
    next:   u8;

    twin:   u8;

    origin: u8;

    face:   u8;
}

b3HullFace :: struct {
    edge: u8;
}

b3HullData :: struct {
    version:        u64;

    byteCount:      s32;

    hash:           u32;

    aabb:           b3AABB;

    surfaceArea:    float;

    volume:         float;

    innerRadius:    float;

    center:         b3Vec3;

    centralInertia: b3Matrix3;

    vertexCount:    s32;

    vertexOffset:   s32;

    pointOffset:    s32;

    edgeCount:      s32;

    edgeOffset:     s32;

    faceCount:      s32;

    faceOffset:     s32;

    planeOffset:    s32;

    padding:        s32;
}

b3BoxHull :: struct {
    base:        b3HullData;
    boxVertices: [8] b3HullVertex;
    boxPoints:   [8] b3Vec3;
    boxEdges:    [24] b3HullHalfEdge;
    boxFaces:    [6] b3HullFace;
    padding:     [2] u8;
    boxPlanes:   [6] b3Plane;
}

b3MeshDef :: struct {
    vertices:        *b3Vec3;

    indices:         *s32;

    materialIndices: *u8;

    weldTolerance:   float;

    vertexCount:     s32;

    triangleCount:   s32;

    weldVertices:    bool;

    useMedianSplit:  bool;

    identifyEdges:   bool;
}

b3MeshEdgeFlags :: enum s32 {
    concaveEdge1        :: 1;
    concaveEdge2        :: 2;
    concaveEdge3        :: 4;

    inverseConcaveEdge1 :: 16;
    inverseConcaveEdge2 :: 32;
    inverseConcaveEdge3 :: 64;

    allConcaveEdges     :: 7;

    flatEdge1           :: 17;
    flatEdge2           :: 34;
    flatEdge3           :: 68;

    allFlatEdges        :: 119;

    b3_concaveEdge1        :: concaveEdge1;
    b3_concaveEdge2        :: concaveEdge2;
    b3_concaveEdge3        :: concaveEdge3;

    b3_inverseConcaveEdge1 :: inverseConcaveEdge1;
    b3_inverseConcaveEdge2 :: inverseConcaveEdge2;
    b3_inverseConcaveEdge3 :: inverseConcaveEdge3;

    b3_allConcaveEdges     :: allConcaveEdges;

    b3_flatEdge1           :: flatEdge1;
    b3_flatEdge2           :: flatEdge2;
    b3_flatEdge3           :: flatEdge3;

    b3_allFlatEdges        :: allFlatEdges;
}

b3MeshTriangle :: struct {
    index1: s32;
    index2: s32;
    index3: s32;
}

b3MeshNode :: struct {
    lowerBound:     b3Vec3;

    data:           union {
        asNode: struct {
            __bitfield: u32;
            /* 
                axis: u32; /* 2 bits */
                childOffset: u32; /* 30 bits */;
            */
        };

        asLeaf: struct {
            __bitfield: u32;
            /* 
                type: u32; /* 2 bits */
                triangleCount: u32; /* 30 bits */;
            */
        };
    };

    upperBound:     b3Vec3;

    triangleOffset: u32;
}

set_data_asNode_axis :: (fields: *b3MeshNode, value: u32) {
    MASK0: u32 : 0b11;
    fields.data.asNode.__bitfield = (fields.data.asNode.__bitfield & ~MASK0) | (value & MASK0);
}
get_data_asNode_axis :: (fields: b3MeshNode) -> u32 {
    return (fields.data.asNode.__bitfield & 0b11);
}

set_data_asNode_childOffset :: (fields: *b3MeshNode, value: u32) {
    MASK0: u32 : (0b11_1111_1111_1111_1111_1111_1111_1111 << 2);
    fields.data.asNode.__bitfield = (fields.data.asNode.__bitfield & ~MASK0) | ((value << 2) & MASK0);
}
get_data_asNode_childOffset :: (fields: b3MeshNode) -> u32 {
    return ((fields.data.asNode.__bitfield & (0b11_1111_1111_1111_1111_1111_1111_1111 << 2)) >> 2);
}

set_data_asLeaf_type :: (fields: *b3MeshNode, value: u32) {
    MASK0: u32 : 0b11;
    fields.data.asLeaf.__bitfield = (fields.data.asLeaf.__bitfield & ~MASK0) | (value & MASK0);
}
get_data_asLeaf_type :: (fields: b3MeshNode) -> u32 {
    return (fields.data.asLeaf.__bitfield & 0b11);
}

set_data_asLeaf_triangleCount :: (fields: *b3MeshNode, value: u32) {
    MASK0: u32 : (0b11_1111_1111_1111_1111_1111_1111_1111 << 2);
    fields.data.asLeaf.__bitfield = (fields.data.asLeaf.__bitfield & ~MASK0) | ((value << 2) & MASK0);
}
get_data_asLeaf_triangleCount :: (fields: b3MeshNode) -> u32 {
    return ((fields.data.asLeaf.__bitfield & (0b11_1111_1111_1111_1111_1111_1111_1111 << 2)) >> 2);
}


b3MeshData :: struct {
    version:         u64;

    byteCount:       s32;

    hash:            u32;

    bounds:          b3AABB;

    surfaceArea:     float;

    treeHeight:      s32;

    degenerateCount: s32;

    nodeOffset:      s32;

    nodeCount:       s32;

    vertexOffset:    s32;

    vertexCount:     s32;

    triangleOffset:  s32;

    triangleCount:   s32;

    materialOffset:  s32;

    materialCount:   s32;

    flagsOffset:     s32;
}

b3Mesh :: struct {
    data:  *b3MeshData;

    scale: b3Vec3;
}

b3HeightFieldDef :: struct {
    heights:             *float;

    materialIndices:     *u8;

    scale:               b3Vec3;

    countX:              s32;

    countZ:              s32;

    globalMinimumHeight: float;

    globalMaximumHeight: float;

    clockwiseWinding:    bool;
}

b3HeightFieldData :: struct {
    version:        u64;

    byteCount:      s32;

    hash:           u32;

    aabb:           b3AABB;

    minHeight:      float;

    maxHeight:      float;

    heightScale:    float;

    scale:          b3Vec3;

    columnCount:    s32;

    rowCount:       s32;

    heightsOffset:  s32;

    materialOffset: s32;

    flagsOffset:    s32;

    clockwise:      bool;

    padding:        [3] u8;
}

b3CompoundCapsuleDef :: struct {
    capsule:  b3Capsule;

    material: b3SurfaceMaterial;
}

b3CompoundHullDef :: struct {
    hull:      *b3HullData;

    transform: b3Transform;

    material:  b3SurfaceMaterial;
}

b3CompoundMeshDef :: struct {
    meshData:      *b3MeshData;

    transform:     b3Transform;

    scale:         b3Vec3;

    materials:     *b3SurfaceMaterial;

    materialCount: s32;
}

b3CompoundSphereDef :: struct {
    sphere:   b3Sphere;

    material: b3SurfaceMaterial;
}

b3CompoundDef :: struct {
    capsules:     *b3CompoundCapsuleDef;

    capsuleCount: s32;

    hulls:        *b3CompoundHullDef;

    hullCount:    s32;

    meshes:       *b3CompoundMeshDef;

    meshCount:    s32;

    spheres:      *b3CompoundSphereDef;

    sphereCount:  s32;
}

b3CompoundData :: struct {
    version:         u64;

    byteCount:       s32;

    nodeOffset:      s32;

    tree:            b3DynamicTree;

    materialOffset:  s32;

    materialCount:   s32;

    capsuleOffset:   s32;

    capsuleCount:    s32;

    hullOffset:      s32;

    hullCount:       s32;

    sharedHullCount: s32;

    meshOffset:      s32;

    meshCount:       s32;

    sharedMeshCount: s32;

    sphereOffset:    s32;

    sphereCount:     s32;
}

b3CompoundCapsule :: struct {
    capsule:       b3Capsule;

    materialIndex: s32;
}

b3CompoundHull :: struct {
    hull:          *b3HullData;

    transform:     b3Transform;

    materialIndex: s32;
}

b3CompoundMesh :: struct {
    meshData:        *b3MeshData;

    transform:       b3Transform;

    scale:           b3Vec3;

    materialIndices: [4] s32;
}

b3CompoundSphere :: struct {
    sphere:        b3Sphere;

    materialIndex: s32;
}

b3ChildShape :: struct {
    union {
        capsule: b3Capsule;
        hull:    *b3HullData;
        mesh:    b3Mesh;
        sphere:  b3Sphere;
    }

    transform:       b3Transform;

    materialIndices: [4] s32;

    type:            b3ShapeType;
}

b3CompoundQueryFcn :: #type (compound: *b3CompoundData, childIndex: s32, _context: *void) -> bool #c_call;

b3ManifoldPoint :: struct {
    anchorA:            b3Vec3;

    anchorB:            b3Vec3;

    separation:         float;

    baseSeparation:     float;

    normalImpulse:      float;

    totalNormalImpulse: float;

    normalVelocity:     float;

    featureId:          u32;

    triangleIndex:      s32;

    persisted:          bool;
}

b3Manifold :: struct {
    points:          [4] b3ManifoldPoint;

    normal:          b3Vec3;

    twistImpulse:    float;

    frictionImpulse: b3Vec3;

    rollingImpulse:  b3Vec3;

    pointCount:      s32;
}

b3SeparatingFeature :: enum s32 {
    invalidAxis        :: 0;
    backsideAxis       :: 1;
    faceAxisA          :: 2;
    faceAxisB          :: 3;
    edgePairAxis       :: 4;
    closestPointsAxis  :: 5;

    manualFaceAxisA    :: 6;
    manualFaceAxisB    :: 7;
    manualEdgePairAxis :: 8;

    b3_invalidAxis        :: invalidAxis;
    b3_backsideAxis       :: backsideAxis;
    b3_faceAxisA          :: faceAxisA;
    b3_faceAxisB          :: faceAxisB;
    b3_edgePairAxis       :: edgePairAxis;
    b3_closestPointsAxis  :: closestPointsAxis;

    b3_manualFaceAxisA    :: manualFaceAxisA;
    b3_manualFaceAxisB    :: manualFaceAxisB;
    b3_manualEdgePairAxis :: manualEdgePairAxis;
}

b3TriangleFeature :: enum s32 {
    featureNone         :: 0;
    featureTriangleFace :: 1;
    featureHullFace     :: 2;

    featureEdge1        :: 3;

    featureEdge2        :: 4;

    featureEdge3        :: 5;
    featureVertex1      :: 6;
    featureVertex2      :: 7;
    featureVertex3      :: 8;

    b3_featureNone         :: featureNone;
    b3_featureTriangleFace :: featureTriangleFace;
    b3_featureHullFace     :: featureHullFace;

    b3_featureEdge1        :: featureEdge1;

    b3_featureEdge2        :: featureEdge2;

    b3_featureEdge3        :: featureEdge3;
    b3_featureVertex1      :: featureVertex1;
    b3_featureVertex2      :: featureVertex2;
    b3_featureVertex3      :: featureVertex3;
}

b3SATCache :: struct {
    separation: float;

    type:       u8;

    indexA:     u8;

    indexB:     u8;

    hit:        u8;
}

b3FeaturePair :: struct {
    owner1: u8;

    index1: u8;

    owner2: u8;

    index2: u8;
}

b3LocalManifoldPoint :: struct {
    point:         b3Vec3;

    separation:    float;

    pair:          b3FeaturePair;

    triangleIndex: s32;
}

b3LocalManifold :: struct {
    normal:          b3Vec3;

    triangleNormal:  b3Vec3;

    points:          *b3LocalManifoldPoint;

    pointCount:      s32;

    triangleIndex:   s32;

    i1:              s32;
    i2:              s32;
    i3:              s32;

    squaredDistance: float;

    feature:         b3TriangleFeature;

    triangleFlags:   s32;
}

b3HexColor :: enum s32 {
    colorAliceBlue            :: 15792383;
    colorAntiqueWhite         :: 16444375;
    colorAqua                 :: 65535;
    colorAquamarine           :: 8388564;
    colorAzure                :: 15794175;
    colorBeige                :: 16119260;
    colorBisque               :: 16770244;
    colorBlack                :: 0;
    colorBlanchedAlmond       :: 16772045;
    colorBlue                 :: 255;
    colorBlueViolet           :: 9055202;
    colorBrown                :: 10824234;
    colorBurlywood            :: 14596231;
    colorCadetBlue            :: 6266528;
    colorChartreuse           :: 8388352;
    colorChocolate            :: 13789470;
    colorCoral                :: 16744272;
    colorCornflowerBlue       :: 6591981;
    colorCornsilk             :: 16775388;
    colorCrimson              :: 14423100;
    colorCyan                 :: 65535;
    colorDarkBlue             :: 139;
    colorDarkCyan             :: 35723;
    colorDarkGoldenRod        :: 12092939;
    colorDarkGray             :: 11119017;
    colorDarkGreen            :: 25600;
    colorDarkKhaki            :: 12433259;
    colorDarkMagenta          :: 9109643;
    colorDarkOliveGreen       :: 5597999;
    colorDarkOrange           :: 16747520;
    colorDarkOrchid           :: 10040012;
    colorDarkRed              :: 9109504;
    colorDarkSalmon           :: 15308410;
    colorDarkSeaGreen         :: 9419919;
    colorDarkSlateBlue        :: 4734347;
    colorDarkSlateGray        :: 3100495;
    colorDarkTurquoise        :: 52945;
    colorDarkViolet           :: 9699539;
    colorDeepPink             :: 16716947;
    colorDeepSkyBlue          :: 49151;
    colorDimGray              :: 6908265;
    colorDodgerBlue           :: 2003199;
    colorFireBrick            :: 11674146;
    colorFloralWhite          :: 16775920;
    colorForestGreen          :: 2263842;
    colorFuchsia              :: 16711935;
    colorGainsboro            :: 14474460;
    colorGhostWhite           :: 16316671;
    colorGold                 :: 16766720;
    colorGoldenRod            :: 14329120;
    colorGray                 :: 8421504;
    colorGreen                :: 32768;
    colorGreenYellow          :: 11403055;
    colorHoneyDew             :: 15794160;
    colorHotPink              :: 16738740;
    colorIndianRed            :: 13458524;
    colorIndigo               :: 4915330;
    colorIvory                :: 16777200;
    colorKhaki                :: 15787660;
    colorLavender             :: 15132410;
    colorLavenderBlush        :: 16773365;
    colorLawnGreen            :: 8190976;
    colorLemonChiffon         :: 16775885;
    colorLightBlue            :: 11393254;
    colorLightCoral           :: 15761536;
    colorLightCyan            :: 14745599;
    colorLightGoldenRodYellow :: 16448210;
    colorLightGray            :: 13882323;
    colorLightGreen           :: 9498256;
    colorLightPink            :: 16758465;
    colorLightSalmon          :: 16752762;
    colorLightSeaGreen        :: 2142890;
    colorLightSkyBlue         :: 8900346;
    colorLightSlateGray       :: 7833753;
    colorLightSteelBlue       :: 11584734;
    colorLightYellow          :: 16777184;
    colorLime                 :: 65280;
    colorLimeGreen            :: 3329330;
    colorLinen                :: 16445670;
    colorMagenta              :: 16711935;
    colorMaroon               :: 8388608;
    colorMediumAquaMarine     :: 6737322;
    colorMediumBlue           :: 205;
    colorMediumOrchid         :: 12211667;
    colorMediumPurple         :: 9662683;
    colorMediumSeaGreen       :: 3978097;
    colorMediumSlateBlue      :: 8087790;
    colorMediumSpringGreen    :: 64154;
    colorMediumTurquoise      :: 4772300;
    colorMediumVioletRed      :: 13047173;
    colorMidnightBlue         :: 1644912;
    colorMintCream            :: 16121850;
    colorMistyRose            :: 16770273;
    colorMoccasin             :: 16770229;
    colorNavajoWhite          :: 16768685;
    colorNavy                 :: 128;
    colorOldLace              :: 16643558;
    colorOlive                :: 8421376;
    colorOliveDrab            :: 7048739;
    colorOrange               :: 16753920;
    colorOrangeRed            :: 16729344;
    colorOrchid               :: 14315734;
    colorPaleGoldenRod        :: 15657130;
    colorPaleGreen            :: 10025880;
    colorPaleTurquoise        :: 11529966;
    colorPaleVioletRed        :: 14381203;
    colorPapayaWhip           :: 16773077;
    colorPeachPuff            :: 16767673;
    colorPeru                 :: 13468991;
    colorPink                 :: 16761035;
    colorPlum                 :: 14524637;
    colorPowderBlue           :: 11591910;
    colorPurple               :: 8388736;
    colorRebeccaPurple        :: 6697881;
    colorRed                  :: 16711680;
    colorRosyBrown            :: 12357519;
    colorRoyalBlue            :: 4286945;
    colorSaddleBrown          :: 9127187;
    colorSalmon               :: 16416882;
    colorSandyBrown           :: 16032864;
    colorSeaGreen             :: 3050327;
    colorSeaShell             :: 16774638;
    colorSienna               :: 10506797;
    colorSilver               :: 12632256;
    colorSkyBlue              :: 8900331;
    colorSlateBlue            :: 6970061;
    colorSlateGray            :: 7372944;
    colorSnow                 :: 16775930;
    colorSpringGreen          :: 65407;
    colorSteelBlue            :: 4620980;
    colorTan                  :: 13808780;
    colorTeal                 :: 32896;
    colorThistle              :: 14204888;
    colorTomato               :: 16737095;
    colorTurquoise            :: 4251856;
    colorViolet               :: 15631086;
    colorWheat                :: 16113331;
    colorWhite                :: 16777215;
    colorWhiteSmoke           :: 16119285;
    colorYellow               :: 16776960;
    colorYellowGreen          :: 10145074;

    colorBox2DRed             :: 14430514;
    colorBox2DBlue            :: 3190463;
    colorBox2DGreen           :: 9226532;
    colorBox2DYellow          :: 16772748;

    b3_colorAliceBlue            :: colorAliceBlue;
    b3_colorAntiqueWhite         :: colorAntiqueWhite;
    b3_colorAqua                 :: colorAqua;
    b3_colorAquamarine           :: colorAquamarine;
    b3_colorAzure                :: colorAzure;
    b3_colorBeige                :: colorBeige;
    b3_colorBisque               :: colorBisque;
    b3_colorBlack                :: colorBlack;
    b3_colorBlanchedAlmond       :: colorBlanchedAlmond;
    b3_colorBlue                 :: colorBlue;
    b3_colorBlueViolet           :: colorBlueViolet;
    b3_colorBrown                :: colorBrown;
    b3_colorBurlywood            :: colorBurlywood;
    b3_colorCadetBlue            :: colorCadetBlue;
    b3_colorChartreuse           :: colorChartreuse;
    b3_colorChocolate            :: colorChocolate;
    b3_colorCoral                :: colorCoral;
    b3_colorCornflowerBlue       :: colorCornflowerBlue;
    b3_colorCornsilk             :: colorCornsilk;
    b3_colorCrimson              :: colorCrimson;
    b3_colorCyan                 :: colorCyan;
    b3_colorDarkBlue             :: colorDarkBlue;
    b3_colorDarkCyan             :: colorDarkCyan;
    b3_colorDarkGoldenRod        :: colorDarkGoldenRod;
    b3_colorDarkGray             :: colorDarkGray;
    b3_colorDarkGreen            :: colorDarkGreen;
    b3_colorDarkKhaki            :: colorDarkKhaki;
    b3_colorDarkMagenta          :: colorDarkMagenta;
    b3_colorDarkOliveGreen       :: colorDarkOliveGreen;
    b3_colorDarkOrange           :: colorDarkOrange;
    b3_colorDarkOrchid           :: colorDarkOrchid;
    b3_colorDarkRed              :: colorDarkRed;
    b3_colorDarkSalmon           :: colorDarkSalmon;
    b3_colorDarkSeaGreen         :: colorDarkSeaGreen;
    b3_colorDarkSlateBlue        :: colorDarkSlateBlue;
    b3_colorDarkSlateGray        :: colorDarkSlateGray;
    b3_colorDarkTurquoise        :: colorDarkTurquoise;
    b3_colorDarkViolet           :: colorDarkViolet;
    b3_colorDeepPink             :: colorDeepPink;
    b3_colorDeepSkyBlue          :: colorDeepSkyBlue;
    b3_colorDimGray              :: colorDimGray;
    b3_colorDodgerBlue           :: colorDodgerBlue;
    b3_colorFireBrick            :: colorFireBrick;
    b3_colorFloralWhite          :: colorFloralWhite;
    b3_colorForestGreen          :: colorForestGreen;
    b3_colorFuchsia              :: colorFuchsia;
    b3_colorGainsboro            :: colorGainsboro;
    b3_colorGhostWhite           :: colorGhostWhite;
    b3_colorGold                 :: colorGold;
    b3_colorGoldenRod            :: colorGoldenRod;
    b3_colorGray                 :: colorGray;
    b3_colorGreen                :: colorGreen;
    b3_colorGreenYellow          :: colorGreenYellow;
    b3_colorHoneyDew             :: colorHoneyDew;
    b3_colorHotPink              :: colorHotPink;
    b3_colorIndianRed            :: colorIndianRed;
    b3_colorIndigo               :: colorIndigo;
    b3_colorIvory                :: colorIvory;
    b3_colorKhaki                :: colorKhaki;
    b3_colorLavender             :: colorLavender;
    b3_colorLavenderBlush        :: colorLavenderBlush;
    b3_colorLawnGreen            :: colorLawnGreen;
    b3_colorLemonChiffon         :: colorLemonChiffon;
    b3_colorLightBlue            :: colorLightBlue;
    b3_colorLightCoral           :: colorLightCoral;
    b3_colorLightCyan            :: colorLightCyan;
    b3_colorLightGoldenRodYellow :: colorLightGoldenRodYellow;
    b3_colorLightGray            :: colorLightGray;
    b3_colorLightGreen           :: colorLightGreen;
    b3_colorLightPink            :: colorLightPink;
    b3_colorLightSalmon          :: colorLightSalmon;
    b3_colorLightSeaGreen        :: colorLightSeaGreen;
    b3_colorLightSkyBlue         :: colorLightSkyBlue;
    b3_colorLightSlateGray       :: colorLightSlateGray;
    b3_colorLightSteelBlue       :: colorLightSteelBlue;
    b3_colorLightYellow          :: colorLightYellow;
    b3_colorLime                 :: colorLime;
    b3_colorLimeGreen            :: colorLimeGreen;
    b3_colorLinen                :: colorLinen;
    b3_colorMagenta              :: colorMagenta;
    b3_colorMaroon               :: colorMaroon;
    b3_colorMediumAquaMarine     :: colorMediumAquaMarine;
    b3_colorMediumBlue           :: colorMediumBlue;
    b3_colorMediumOrchid         :: colorMediumOrchid;
    b3_colorMediumPurple         :: colorMediumPurple;
    b3_colorMediumSeaGreen       :: colorMediumSeaGreen;
    b3_colorMediumSlateBlue      :: colorMediumSlateBlue;
    b3_colorMediumSpringGreen    :: colorMediumSpringGreen;
    b3_colorMediumTurquoise      :: colorMediumTurquoise;
    b3_colorMediumVioletRed      :: colorMediumVioletRed;
    b3_colorMidnightBlue         :: colorMidnightBlue;
    b3_colorMintCream            :: colorMintCream;
    b3_colorMistyRose            :: colorMistyRose;
    b3_colorMoccasin             :: colorMoccasin;
    b3_colorNavajoWhite          :: colorNavajoWhite;
    b3_colorNavy                 :: colorNavy;
    b3_colorOldLace              :: colorOldLace;
    b3_colorOlive                :: colorOlive;
    b3_colorOliveDrab            :: colorOliveDrab;
    b3_colorOrange               :: colorOrange;
    b3_colorOrangeRed            :: colorOrangeRed;
    b3_colorOrchid               :: colorOrchid;
    b3_colorPaleGoldenRod        :: colorPaleGoldenRod;
    b3_colorPaleGreen            :: colorPaleGreen;
    b3_colorPaleTurquoise        :: colorPaleTurquoise;
    b3_colorPaleVioletRed        :: colorPaleVioletRed;
    b3_colorPapayaWhip           :: colorPapayaWhip;
    b3_colorPeachPuff            :: colorPeachPuff;
    b3_colorPeru                 :: colorPeru;
    b3_colorPink                 :: colorPink;
    b3_colorPlum                 :: colorPlum;
    b3_colorPowderBlue           :: colorPowderBlue;
    b3_colorPurple               :: colorPurple;
    b3_colorRebeccaPurple        :: colorRebeccaPurple;
    b3_colorRed                  :: colorRed;
    b3_colorRosyBrown            :: colorRosyBrown;
    b3_colorRoyalBlue            :: colorRoyalBlue;
    b3_colorSaddleBrown          :: colorSaddleBrown;
    b3_colorSalmon               :: colorSalmon;
    b3_colorSandyBrown           :: colorSandyBrown;
    b3_colorSeaGreen             :: colorSeaGreen;
    b3_colorSeaShell             :: colorSeaShell;
    b3_colorSienna               :: colorSienna;
    b3_colorSilver               :: colorSilver;
    b3_colorSkyBlue              :: colorSkyBlue;
    b3_colorSlateBlue            :: colorSlateBlue;
    b3_colorSlateGray            :: colorSlateGray;
    b3_colorSnow                 :: colorSnow;
    b3_colorSpringGreen          :: colorSpringGreen;
    b3_colorSteelBlue            :: colorSteelBlue;
    b3_colorTan                  :: colorTan;
    b3_colorTeal                 :: colorTeal;
    b3_colorThistle              :: colorThistle;
    b3_colorTomato               :: colorTomato;
    b3_colorTurquoise            :: colorTurquoise;
    b3_colorViolet               :: colorViolet;
    b3_colorWheat                :: colorWheat;
    b3_colorWhite                :: colorWhite;
    b3_colorWhiteSmoke           :: colorWhiteSmoke;
    b3_colorYellow               :: colorYellow;
    b3_colorYellowGreen          :: colorYellowGreen;

    b3_colorBox2DRed             :: colorBox2DRed;
    b3_colorBox2DBlue            :: colorBox2DBlue;
    b3_colorBox2DGreen           :: colorBox2DGreen;
    b3_colorBox2DYellow          :: colorBox2DYellow;
}

b3DebugMaterial :: enum s32 {
    debugMaterialDefault  :: 0;
    debugMaterialMatte    :: 1;
    debugMaterialSoft     :: 2;
    debugMaterialDead     :: 3;
    debugMaterialGlossy   :: 4;
    debugMaterialMetallic :: 5;

    b3_debugMaterialDefault  :: debugMaterialDefault;
    b3_debugMaterialMatte    :: debugMaterialMatte;
    b3_debugMaterialSoft     :: debugMaterialSoft;
    b3_debugMaterialDead     :: debugMaterialDead;
    b3_debugMaterialGlossy   :: debugMaterialGlossy;
    b3_debugMaterialMetallic :: debugMaterialMetallic;
}

b3GetGraphColor :: (index: s32) -> b3HexColor #foreign box3d;

b3DebugShape :: struct {
    shapeId: b3ShapeId;

    type:    b3ShapeType;

    union {
        capsule:     *b3Capsule;
        compound:    *b3CompoundData;
        heightField: *b3HeightFieldData;
        hull:        *b3HullData;
        mesh:        *b3Mesh;
        sphere:      *b3Sphere;
    }
}

b3DebugDraw :: struct {
    DrawShapeFcn:        #type (userShape: *void, transform: b3WorldTransform, color: b3HexColor, _context: *void) -> bool #c_call;

    DrawSegmentFcn:      #type (p1: b3Pos, p2: b3Pos, color: b3HexColor, _context: *void) -> void #c_call;

    DrawTransformFcn:    #type (transform: b3WorldTransform, _context: *void) -> void #c_call;

    DrawPointFcn:        #type (p: b3Pos, size: float, color: b3HexColor, _context: *void) -> void #c_call;

    DrawSphereFcn:       #type (p: b3Pos, radius: float, color: b3HexColor, alpha: float, _context: *void) -> void #c_call;

    DrawCapsuleFcn:      #type (p1: b3Pos, p2: b3Pos, radius: float, color: b3HexColor, alpha: float, _context: *void) -> void #c_call;

    DrawBoundsFcn:       #type (aabb: b3AABB, color: b3HexColor, _context: *void) -> void #c_call;

    DrawBoxFcn:          #type (extents: b3Vec3, transform: b3WorldTransform, color: b3HexColor, _context: *void) -> void #c_call;

    DrawStringFcn:       #type (p: b3Pos, s: *u8, color: b3HexColor, _context: *void) -> void #c_call;

    drawingBounds:       b3AABB;

    forceScale:          float;

    jointScale:          float;

    drawShapes:          bool;

    drawJoints:          bool;

    drawJointExtras:     bool;

    drawBounds:          bool;

    drawMass:            bool;

    drawBodyNames:       bool;

    drawContacts:        bool;

    drawAnchorA:         s32;

    drawGraphColors:     bool;

    drawContactFeatures: bool;

    drawContactNormals:  bool;

    drawContactForces:   bool;

    drawFrictionForces:  bool;

    drawIslands:         bool;

    _context:            *void;
}

b3DefaultDebugDraw :: () -> b3DebugDraw #foreign box3d;

b3DynamicTree_Create :: (proxyCapacity: s32) -> b3DynamicTree #foreign box3d;

b3DynamicTree_Destroy :: (tree: *b3DynamicTree) -> void #foreign box3d;

b3DynamicTree_CreateProxy :: (tree: *b3DynamicTree, aabb: b3AABB, categoryBits: u64, userData: u64) -> s32 #foreign box3d;

b3DynamicTree_DestroyProxy :: (tree: *b3DynamicTree, proxyId: s32) -> void #foreign box3d;

b3DynamicTree_MoveProxy :: (tree: *b3DynamicTree, proxyId: s32, aabb: b3AABB) -> void #foreign box3d;

b3DynamicTree_EnlargeProxy :: (tree: *b3DynamicTree, proxyId: s32, aabb: b3AABB) -> void #foreign box3d;

b3DynamicTree_SetCategoryBits :: (tree: *b3DynamicTree, proxyId: s32, categoryBits: u64) -> void #foreign box3d;

b3DynamicTree_GetCategoryBits :: (tree: *b3DynamicTree, proxyId: s32) -> u64 #foreign box3d;

b3DynamicTree_Query :: (tree: *b3DynamicTree, aabb: b3AABB, maskBits: u64, requireAllBits: bool, callback: b3TreeQueryCallbackFcn, _context: *void) -> b3TreeStats #foreign box3d;

b3DynamicTree_QueryClosest :: (tree: *b3DynamicTree, point: b3Vec3, maskBits: u64, requireAllBits: bool, callback: b3TreeQueryClosestCallbackFcn, _context: *void, minDistanceSqr: *float) -> b3TreeStats #foreign box3d;

b3DynamicTree_RayCast :: (tree: *b3DynamicTree, input: *b3RayCastInput, maskBits: u64, requireAllBits: bool, callback: b3TreeRayCastCallbackFcn, _context: *void) -> b3TreeStats #foreign box3d;

b3DynamicTree_BoxCast :: (tree: *b3DynamicTree, input: *b3BoxCastInput, maskBits: u64, requireAllBits: bool, callback: b3TreeBoxCastCallbackFcn, _context: *void) -> b3TreeStats #foreign box3d;

b3DynamicTree_Validate :: (tree: *b3DynamicTree) -> void #foreign box3d;

b3DynamicTree_GetHeight :: (tree: *b3DynamicTree) -> s32 #foreign box3d;

b3DynamicTree_GetAreaRatio :: (tree: *b3DynamicTree) -> float #foreign box3d;

b3DynamicTree_GetRootBounds :: (tree: *b3DynamicTree) -> b3AABB #foreign box3d;

b3DynamicTree_GetProxyCount :: (tree: *b3DynamicTree) -> s32 #foreign box3d;

b3DynamicTree_Rebuild :: (tree: *b3DynamicTree, fullBuild: bool) -> s32 #foreign box3d;

b3DynamicTree_GetByteCount :: (tree: *b3DynamicTree) -> s32 #foreign box3d;

b3DynamicTree_ValidateNoEnlarged :: (tree: *b3DynamicTree) -> void #foreign box3d;

b3DynamicTree_Save :: (tree: *b3DynamicTree, fileName: *u8) -> void #foreign box3d;

b3DynamicTree_Load :: (fileName: *u8, scale: float) -> b3DynamicTree #foreign box3d;

b3CreateCylinder :: (height: float, radius: float, yOffset: float, sides: s32) -> *b3HullData #foreign box3d;

b3CreateCone :: (height: float, radius1: float, radius2: float, slices: s32) -> *b3HullData #foreign box3d;

b3CreateRock :: (radius: float) -> *b3HullData #foreign box3d;

b3CreateHull :: (points: *b3Vec3, pointCount: s32, maxVertexCount: s32) -> *b3HullData #foreign box3d;

b3CloneHull :: (hull: *b3HullData) -> *b3HullData #foreign box3d;

b3CloneAndTransformHull :: (original: *b3HullData, transform: b3Transform, scale: b3Vec3) -> *b3HullData #foreign box3d;

b3DestroyHull :: (hull: *b3HullData) -> void #foreign box3d;

b3MakeCubeHull :: (halfWidth: float) -> b3BoxHull #foreign box3d;

b3MakeBoxHull :: (hx: float, hy: float, hz: float) -> b3BoxHull #foreign box3d;

b3MakeOffsetBoxHull :: (hx: float, hy: float, hz: float, offset: b3Vec3) -> b3BoxHull #foreign box3d;

b3MakeTransformedBoxHull :: (hx: float, hy: float, hz: float, transform: b3Transform) -> b3BoxHull #foreign box3d;

b3MakeScaledBoxHull :: (halfWidths: b3Vec3, transform: b3Transform, postScale: b3Vec3) -> b3BoxHull #foreign box3d;

b3ScaleBox :: (halfWidths: *b3Vec3, transform: *b3Transform, postScale: b3Vec3, minHalfWidth: float) -> void #foreign box3d;

b3CreateGridMesh :: (xCount: s32, zCount: s32, cellWidth: float, materialCount: s32, identifyEdges: bool) -> *b3MeshData #foreign box3d;

b3CreateWaveMesh :: (xCount: s32, zCount: s32, cellWidth: float, amplitude: float, rowFrequency: float, columnFrequency: float) -> *b3MeshData #foreign box3d;

b3CreateTorusMesh :: (radialResolution: s32, tubularResolution: s32, radius: float, thickness: float) -> *b3MeshData #foreign box3d;

b3CreateBoxMesh :: (center: b3Vec3, extent: b3Vec3, identifyEdges: bool) -> *b3MeshData #foreign box3d;

b3CreateHollowBoxMesh :: (center: b3Vec3, extent: b3Vec3) -> *b3MeshData #foreign box3d;

b3CreatePlatformMesh :: (center: b3Vec3, height: float, topWidth: float, bottomWidth: float) -> *b3MeshData #foreign box3d;

b3CreateMesh :: (def: *b3MeshDef, degenerateTriangleIndices: *s32, degenerateCapacity: s32) -> *b3MeshData #foreign box3d;

b3DestroyMesh :: (mesh: *b3MeshData) -> void #foreign box3d;

b3GetHeight :: (mesh: *b3MeshData) -> s32 #foreign box3d;

b3CreateHeightField :: (data: *b3HeightFieldDef) -> *b3HeightFieldData #foreign box3d;

b3CreateGrid :: (rowCount: s32, columnCount: s32, scale: b3Vec3, makeHoles: bool) -> *b3HeightFieldData #foreign box3d;

b3CreateWave :: (rowCount: s32, columnCount: s32, scale: b3Vec3, rowFrequency: float, columnFrequency: float, makeHoles: bool) -> *b3HeightFieldData #foreign box3d;

b3DestroyHeightField :: (heightField: *b3HeightFieldData) -> void #foreign box3d;

b3DumpHeightData :: (data: *b3HeightFieldDef, fileName: *u8) -> void #foreign box3d;

b3LoadHeightField :: (fileName: *u8) -> *b3HeightFieldData #foreign box3d;

b3GetCompoundChild :: (compound: *b3CompoundData, childIndex: s32) -> b3ChildShape #foreign box3d;

b3QueryCompound :: (compound: *b3CompoundData, aabb: b3AABB, fcn: b3CompoundQueryFcn, _context: *void) -> void #foreign box3d;

b3GetCompoundCapsule :: (compound: *b3CompoundData, index: s32) -> b3CompoundCapsule #foreign box3d;

b3GetCompoundHull :: (compound: *b3CompoundData, index: s32) -> b3CompoundHull #foreign box3d;

b3GetCompoundMesh :: (compound: *b3CompoundData, index: s32) -> b3CompoundMesh #foreign box3d;

b3GetCompoundSphere :: (compound: *b3CompoundData, index: s32) -> b3CompoundSphere #foreign box3d;

b3GetCompoundMaterials :: (compound: *b3CompoundData) -> *b3SurfaceMaterial #foreign box3d;

b3CreateCompound :: (def: *b3CompoundDef) -> *b3CompoundData #foreign box3d;

b3DestroyCompound :: (compound: *b3CompoundData) -> void #foreign box3d;

b3ConvertCompoundToBytes :: (compound: *b3CompoundData) -> *u8 #foreign box3d;

b3ConvertBytesToCompound :: (bytes: *u8, byteCount: s32) -> *b3CompoundData #foreign box3d;

b3ComputeSphereMass :: (shape: *b3Sphere, density: float) -> b3MassData #foreign box3d;

b3ComputeCapsuleMass :: (shape: *b3Capsule, density: float) -> b3MassData #foreign box3d;

b3ComputeHullMass :: (shape: *b3HullData, density: float) -> b3MassData #foreign box3d;

b3ComputeSphereAABB :: (shape: *b3Sphere, transform: b3Transform) -> b3AABB #foreign box3d;

b3ComputeCapsuleAABB :: (shape: *b3Capsule, transform: b3Transform) -> b3AABB #foreign box3d;

b3ComputeHullAABB :: (shape: *b3HullData, transform: b3Transform) -> b3AABB #foreign box3d;

b3ComputeMeshAABB :: (shape: *b3MeshData, transform: b3Transform, scale: b3Vec3) -> b3AABB #foreign box3d;

b3ComputeHeightFieldAABB :: (shape: *b3HeightFieldData, transform: b3Transform) -> b3AABB #foreign box3d;

b3ComputeCompoundAABB :: (shape: *b3CompoundData, transform: b3Transform) -> b3AABB #foreign box3d;

b3IsValidRay :: (input: *b3RayCastInput) -> bool #foreign box3d;

b3OverlapCapsule :: (shape: *b3Capsule, shapeTransform: b3Transform, proxy: *b3ShapeProxy) -> bool #foreign box3d;

b3OverlapCompound :: (shape: *b3CompoundData, shapeTransform: b3Transform, proxy: *b3ShapeProxy) -> bool #foreign box3d;

b3OverlapHeightField :: (shape: *b3HeightFieldData, shapeTransform: b3Transform, proxy: *b3ShapeProxy) -> bool #foreign box3d;

b3OverlapHull :: (shape: *b3HullData, shapeTransform: b3Transform, proxy: *b3ShapeProxy) -> bool #foreign box3d;

b3OverlapMesh :: (shape: *b3Mesh, shapeTransform: b3Transform, proxy: *b3ShapeProxy) -> bool #foreign box3d;

b3OverlapSphere :: (shape: *b3Sphere, shapeTransform: b3Transform, proxy: *b3ShapeProxy) -> bool #foreign box3d;

b3RayCastSphere :: (shape: *b3Sphere, input: *b3RayCastInput) -> b3CastOutput #foreign box3d;

b3RayCastHollowSphere :: (shape: *b3Sphere, input: *b3RayCastInput) -> b3CastOutput #foreign box3d;

b3RayCastCapsule :: (shape: *b3Capsule, input: *b3RayCastInput) -> b3CastOutput #foreign box3d;

b3RayCastCompound :: (shape: *b3CompoundData, input: *b3RayCastInput) -> b3CastOutput #foreign box3d;

b3RayCastHull :: (shape: *b3HullData, input: *b3RayCastInput) -> b3CastOutput #foreign box3d;

b3RayCastMesh :: (shape: *b3Mesh, input: *b3RayCastInput) -> b3CastOutput #foreign box3d;

b3RayCastHeightField :: (shape: *b3HeightFieldData, input: *b3RayCastInput) -> b3CastOutput #foreign box3d;

b3ShapeCastSphere :: (shape: *b3Sphere, input: *b3ShapeCastInput) -> b3CastOutput #foreign box3d;

b3ShapeCastCapsule :: (shape: *b3Capsule, input: *b3ShapeCastInput) -> b3CastOutput #foreign box3d;

b3ShapeCastCompound :: (shape: *b3CompoundData, input: *b3ShapeCastInput) -> b3CastOutput #foreign box3d;

b3ShapeCastHull :: (shape: *b3HullData, input: *b3ShapeCastInput) -> b3CastOutput #foreign box3d;

b3ShapeCastMesh :: (shape: *b3Mesh, input: *b3ShapeCastInput) -> b3CastOutput #foreign box3d;

b3ShapeCastHeightField :: (shape: *b3HeightFieldData, input: *b3ShapeCastInput) -> b3CastOutput #foreign box3d;

b3MeshQueryFcn :: #type (a: b3Vec3, b: b3Vec3, c: b3Vec3, triangleIndex: s32, _context: *void) -> bool #c_call;

b3QueryMesh :: (mesh: *b3Mesh, bounds: b3AABB, fcn: b3MeshQueryFcn, _context: *void) -> void #foreign box3d;

b3QueryHeightField :: (heightField: *b3HeightFieldData, bounds: b3AABB, fcn: b3MeshQueryFcn, _context: *void) -> void #foreign box3d;

b3ShapeDistance :: (input: *b3DistanceInput, cache: *b3SimplexCache, simplexes: *b3Simplex, simplexCapacity: s32) -> b3DistanceOutput #foreign box3d;

b3ShapeCast :: (input: *b3ShapeCastPairInput) -> b3CastOutput #foreign box3d;

b3GetSweepTransform :: (sweep: *b3Sweep, time: float) -> b3Transform #foreign box3d;

b3TimeOfImpact :: (input: *b3TOIInput) -> b3TOIOutput #foreign box3d;

b3CollideSpheres :: (manifold: *b3LocalManifold, capacity: s32, sphereA: *b3Sphere, sphereB: *b3Sphere, transformBtoA: b3Transform) -> void #foreign box3d;

b3CollideCapsuleAndSphere :: (manifold: *b3LocalManifold, capacity: s32, capsuleA: *b3Capsule, sphereB: *b3Sphere, transformBtoA: b3Transform) -> void #foreign box3d;

b3CollideHullAndSphere :: (manifold: *b3LocalManifold, capacity: s32, hullA: *b3HullData, sphereB: *b3Sphere, transformBtoA: b3Transform, cache: *b3SimplexCache) -> void #foreign box3d;

b3CollideCapsules :: (manifold: *b3LocalManifold, capacity: s32, capsuleA: *b3Capsule, capsuleB: *b3Capsule, transformBtoA: b3Transform) -> void #foreign box3d;

b3CollideHullAndCapsule :: (manifold: *b3LocalManifold, capacity: s32, hullA: *b3HullData, capsuleB: *b3Capsule, transformBtoA: b3Transform, cache: *b3SimplexCache) -> void #foreign box3d;

b3CollideHulls :: (manifold: *b3LocalManifold, capacity: s32, hullA: *b3HullData, hullB: *b3HullData, transformBtoA: b3Transform, cache: *b3SATCache) -> void #foreign box3d;

b3CollideCapsuleAndTriangle :: (manifold: *b3LocalManifold, capacity: s32, capsuleA: *b3Capsule, triangleB: *b3Vec3, cache: *b3SimplexCache) -> void #foreign box3d;

b3CollideHullAndTriangle :: (manifold: *b3LocalManifold, capacity: s32, hullA: *b3HullData, v1: b3Vec3, v2: b3Vec3, v3: b3Vec3, triangleFlags: s32, cache: *b3SATCache) -> void #foreign box3d;

b3CollideSphereAndTriangle :: (manifold: *b3LocalManifold, capacity: s32, sphereA: *b3Sphere, triangleB: *b3Vec3) -> void #foreign box3d;

b3SolvePlanes :: (targetDelta: b3Vec3, planes: *b3CollisionPlane, count: s32) -> b3PlaneSolverResult #foreign box3d;

b3ClipVector :: (vector: b3Vec3, planes: *b3CollisionPlane, count: s32) -> b3Vec3 #foreign box3d;

b3CreateWorld :: (def: *b3WorldDef) -> b3WorldId #foreign box3d;

b3DestroyWorld :: (worldId: b3WorldId) -> void #foreign box3d;

b3GetWorldCount :: () -> s32 #foreign box3d;

b3GetMaxWorldCount :: () -> s32 #foreign box3d;

b3World_IsValid :: (id: b3WorldId) -> bool #foreign box3d;

b3World_Step :: (worldId: b3WorldId, timeStep: float, subStepCount: s32) -> void #foreign box3d;

b3World_Draw :: (worldId: b3WorldId, draw: *b3DebugDraw, maskBits: u64) -> void #foreign box3d;

b3World_GetBounds :: (worldId: b3WorldId) -> b3AABB #foreign box3d;

b3World_GetBodyEvents :: (worldId: b3WorldId) -> b3BodyEvents #foreign box3d;

b3World_GetSensorEvents :: (worldId: b3WorldId) -> b3SensorEvents #foreign box3d;

b3World_GetContactEvents :: (worldId: b3WorldId) -> b3ContactEvents #foreign box3d;

b3World_GetJointEvents :: (worldId: b3WorldId) -> b3JointEvents #foreign box3d;

b3World_OverlapAABB :: (worldId: b3WorldId, aabb: b3AABB, filter: b3QueryFilter, fcn: b3OverlapResultFcn, _context: *void) -> b3TreeStats #foreign box3d;

b3World_OverlapShape :: (worldId: b3WorldId, origin: b3Pos, proxy: *b3ShapeProxy, filter: b3QueryFilter, fcn: b3OverlapResultFcn, _context: *void) -> b3TreeStats #foreign box3d;

b3World_CastRay :: (worldId: b3WorldId, origin: b3Pos, translation: b3Vec3, filter: b3QueryFilter, fcn: b3CastResultFcn, _context: *void) -> b3TreeStats #foreign box3d;

b3World_CastRayClosest :: (worldId: b3WorldId, origin: b3Pos, translation: b3Vec3, filter: b3QueryFilter) -> b3RayResult #foreign box3d;

b3World_CastShape :: (worldId: b3WorldId, origin: b3Pos, proxy: *b3ShapeProxy, translation: b3Vec3, filter: b3QueryFilter, fcn: b3CastResultFcn, _context: *void) -> b3TreeStats #foreign box3d;

b3World_CastMover :: (worldId: b3WorldId, origin: b3Pos, mover: *b3Capsule, translation: b3Vec3, filter: b3QueryFilter, fcn: b3MoverFilterFcn, _context: *void) -> float #foreign box3d;

b3World_CollideMover :: (worldId: b3WorldId, origin: b3Pos, mover: *b3Capsule, filter: b3QueryFilter, fcn: b3PlaneResultFcn, _context: *void) -> void #foreign box3d;

b3World_EnableSleeping :: (worldId: b3WorldId, flag: bool) -> void #foreign box3d;

b3World_IsSleepingEnabled :: (worldId: b3WorldId) -> bool #foreign box3d;

b3World_EnableContinuous :: (worldId: b3WorldId, flag: bool) -> void #foreign box3d;

b3World_IsContinuousEnabled :: (worldId: b3WorldId) -> bool #foreign box3d;

b3World_SetRestitutionThreshold :: (worldId: b3WorldId, value: float) -> void #foreign box3d;

b3World_GetRestitutionThreshold :: (worldId: b3WorldId) -> float #foreign box3d;

b3World_SetHitEventThreshold :: (worldId: b3WorldId, value: float) -> void #foreign box3d;

b3World_GetHitEventThreshold :: (worldId: b3WorldId) -> float #foreign box3d;

b3World_SetCustomFilterCallback :: (worldId: b3WorldId, fcn: b3CustomFilterFcn, _context: *void) -> void #foreign box3d;

b3World_SetPreSolveCallback :: (worldId: b3WorldId, fcn: b3PreSolveFcn, _context: *void) -> void #foreign box3d;

b3World_SetGravity :: (worldId: b3WorldId, gravity: b3Vec3) -> void #foreign box3d;

b3World_GetGravity :: (worldId: b3WorldId) -> b3Vec3 #foreign box3d;

b3World_Explode :: (worldId: b3WorldId, explosionDef: *b3ExplosionDef) -> void #foreign box3d;

b3World_SetContactTuning :: (worldId: b3WorldId, hertz: float, dampingRatio: float, contactSpeed: float) -> void #foreign box3d;

b3World_SetContactRecycleDistance :: (worldId: b3WorldId, recycleDistance: float) -> void #foreign box3d;

b3World_GetContactRecycleDistance :: (worldId: b3WorldId) -> float #foreign box3d;

b3World_SetMaximumLinearSpeed :: (worldId: b3WorldId, maximumLinearSpeed: float) -> void #foreign box3d;

b3World_GetMaximumLinearSpeed :: (worldId: b3WorldId) -> float #foreign box3d;

b3World_EnableWarmStarting :: (worldId: b3WorldId, flag: bool) -> void #foreign box3d;

b3World_IsWarmStartingEnabled :: (worldId: b3WorldId) -> bool #foreign box3d;

b3World_GetAwakeBodyCount :: (worldId: b3WorldId) -> s32 #foreign box3d;

b3World_GetProfile :: (worldId: b3WorldId) -> b3Profile #foreign box3d;

b3World_GetCounters :: (worldId: b3WorldId) -> b3Counters #foreign box3d;

b3World_GetMaxCapacity :: (worldId: b3WorldId) -> b3Capacity #foreign box3d;

b3World_SetUserData :: (worldId: b3WorldId, userData: *void) -> void #foreign box3d;

b3World_GetUserData :: (worldId: b3WorldId) -> *void #foreign box3d;

b3World_SetFrictionCallback :: (worldId: b3WorldId, callback: b3FrictionCallback) -> void #foreign box3d;

b3World_SetRestitutionCallback :: (worldId: b3WorldId, callback: b3RestitutionCallback) -> void #foreign box3d;

b3World_SetWorkerCount :: (worldId: b3WorldId, count: s32) -> void #foreign box3d;

b3World_GetWorkerCount :: (worldId: b3WorldId) -> s32 #foreign box3d;

b3World_DumpMemoryStats :: (worldId: b3WorldId) -> void #foreign box3d;

b3World_DumpShapeBounds :: (worldId: b3WorldId, type: b3BodyType) -> void #foreign box3d;

b3World_RebuildStaticTree :: (worldId: b3WorldId) -> void #foreign box3d;

b3World_EnableSpeculative :: (worldId: b3WorldId, flag: bool) -> void #foreign box3d;

b3World_DumpAwake :: (worldId: b3WorldId) -> void #foreign box3d;

b3World_Dump :: (worldId: b3WorldId) -> void #foreign box3d;

b3Recording :: struct {}

b3CreateRecording :: (byteCapacity: s32) -> *b3Recording #foreign box3d;

b3DestroyRecording :: (recording: *b3Recording) -> void #foreign box3d;

b3Recording_GetData :: (recording: *b3Recording) -> *u8 #foreign box3d;

b3Recording_GetSize :: (recording: *b3Recording) -> s32 #foreign box3d;

b3World_StartRecording :: (worldId: b3WorldId, recording: *b3Recording) -> void #foreign box3d;

b3World_StopRecording :: (worldId: b3WorldId) -> void #foreign box3d;

b3SaveRecordingToFile :: (recording: *b3Recording, path: *u8) -> bool #foreign box3d;

b3LoadRecordingFromFile :: (path: *u8) -> *b3Recording #foreign box3d;

b3ValidateReplay :: (data: *void, size: s32, workerCount: s32) -> bool #foreign box3d;

b3RecPlayer :: struct {}

b3RecPlayerInfo :: struct {
    frameCount:   s32;
    workerCount:  s32;
    timeStep:     float;
    subStepCount: s32;
    lengthScale:  float;
    bounds:       b3AABB;
}

b3RecPlayer_Create :: (data: *void, size: s32, workerCount: s32) -> *b3RecPlayer #foreign box3d;

b3RecPlayer_Destroy :: (player: *b3RecPlayer) -> void #foreign box3d;

b3RecPlayer_StepFrame :: (player: *b3RecPlayer) -> bool #foreign box3d;

b3RecPlayer_Restart :: (player: *b3RecPlayer) -> void #foreign box3d;

b3RecPlayer_SeekFrame :: (player: *b3RecPlayer, targetFrame: s32) -> void #foreign box3d;

b3RecPlayer_GetWorldId :: (player: *b3RecPlayer) -> b3WorldId #foreign box3d;

b3RecPlayer_GetFrame :: (player: *b3RecPlayer) -> s32 #foreign box3d;

b3RecPlayer_GetFrameCount :: (player: *b3RecPlayer) -> s32 #foreign box3d;

b3RecPlayer_IsAtEnd :: (player: *b3RecPlayer) -> bool #foreign box3d;

b3RecPlayer_HasDiverged :: (player: *b3RecPlayer) -> bool #foreign box3d;

b3RecPlayer_GetInfo :: (player: *b3RecPlayer) -> b3RecPlayerInfo #foreign box3d;

b3RecPlayer_GetDivergeFrame :: (player: *b3RecPlayer) -> s32 #foreign box3d;

b3RecPlayer_SetWorkerCount :: (player: *b3RecPlayer, count: s32) -> void #foreign box3d;

b3RecPlayer_SetKeyframePolicy :: (player: *b3RecPlayer, budgetBytes: u64, minIntervalFrames: s32) -> void #foreign box3d;

b3RecPlayer_GetKeyframeBudget :: (player: *b3RecPlayer) -> u64 #foreign box3d;

b3RecPlayer_GetKeyframeMinInterval :: (player: *b3RecPlayer) -> s32 #foreign box3d;

b3RecPlayer_GetKeyframeInterval :: (player: *b3RecPlayer) -> s32 #foreign box3d;

b3RecPlayer_GetKeyframeBytes :: (player: *b3RecPlayer) -> u64 #foreign box3d;

b3RecPlayer_GetBodyCount :: (player: *b3RecPlayer) -> s32 #foreign box3d;

b3RecPlayer_GetBodyId :: (player: *b3RecPlayer, index: s32) -> b3BodyId #foreign box3d;

b3RecPlayer_SetDebugShapeCallbacks :: (player: *b3RecPlayer, createDebugShape: b3CreateDebugShapeCallback, destroyDebugShape: b3DestroyDebugShapeCallback, _context: *void) -> void #foreign box3d;

b3RecPlayer_DrawFrameQueries :: (player: *b3RecPlayer, draw: *b3DebugDraw, queryIndex: s32, selectedIndex: s32) -> void #foreign box3d;

b3RecQueryType :: enum s32 {
    recQueryOverlapAABB    :: 0;
    recQueryOverlapShape   :: 1;
    recQueryCastRay        :: 2;
    recQueryCastShape      :: 3;
    recQueryCastRayClosest :: 4;
    recQueryCastMover      :: 5;
    recQueryCollideMover   :: 6;

    b3_recQueryOverlapAABB    :: recQueryOverlapAABB;
    b3_recQueryOverlapShape   :: recQueryOverlapShape;
    b3_recQueryCastRay        :: recQueryCastRay;
    b3_recQueryCastShape      :: recQueryCastShape;
    b3_recQueryCastRayClosest :: recQueryCastRayClosest;
    b3_recQueryCastMover      :: recQueryCastMover;
    b3_recQueryCollideMover   :: recQueryCollideMover;
}

b3RecQueryInfo :: struct {
    type:        b3RecQueryType;
    filter:      b3QueryFilter;
    aabb:        b3AABB;
    origin:      b3Pos;
    translation: b3Vec3;
    hitCount:    s32;
    key:         u64;
    id:          u64;
    name:        *u8;
}

b3RecQueryHit :: struct {
    shape:    b3ShapeId;
    point:    b3Pos;
    normal:   b3Vec3;
    fraction: float;
}

b3RecPlayer_GetFrameQueryCount :: (player: *b3RecPlayer) -> s32 #foreign box3d;

b3RecPlayer_GetFrameQuery :: (player: *b3RecPlayer, index: s32) -> b3RecQueryInfo #foreign box3d;

b3RecPlayer_GetFrameQueryHit :: (player: *b3RecPlayer, queryIndex: s32, hitIndex: s32) -> b3RecQueryHit #foreign box3d;

b3CreateBody :: (worldId: b3WorldId, def: *b3BodyDef) -> b3BodyId #foreign box3d;

b3DestroyBody :: (bodyId: b3BodyId) -> void #foreign box3d;

b3Body_IsValid :: (id: b3BodyId) -> bool #foreign box3d;

b3Body_GetType :: (bodyId: b3BodyId) -> b3BodyType #foreign box3d;

b3Body_SetType :: (bodyId: b3BodyId, type: b3BodyType) -> void #foreign box3d;

b3Body_SetName :: (bodyId: b3BodyId, name: *u8) -> void #foreign box3d;

b3Body_GetName :: (bodyId: b3BodyId) -> *u8 #foreign box3d;

b3Body_SetUserData :: (bodyId: b3BodyId, userData: *void) -> void #foreign box3d;

b3Body_GetUserData :: (bodyId: b3BodyId) -> *void #foreign box3d;

b3Body_GetPosition :: (bodyId: b3BodyId) -> b3Pos #foreign box3d;

b3Body_GetRotation :: (bodyId: b3BodyId) -> b3Quat #foreign box3d;

b3Body_GetTransform :: (bodyId: b3BodyId) -> b3WorldTransform #foreign box3d;

b3Body_SetTransform :: (bodyId: b3BodyId, position: b3Pos, rotation: b3Quat) -> void #foreign box3d;

b3Body_GetLocalPoint :: (bodyId: b3BodyId, worldPoint: b3Pos) -> b3Vec3 #foreign box3d;

b3Body_GetWorldPoint :: (bodyId: b3BodyId, localPoint: b3Vec3) -> b3Pos #foreign box3d;

b3Body_GetLocalVector :: (bodyId: b3BodyId, worldVector: b3Vec3) -> b3Vec3 #foreign box3d;

b3Body_GetWorldVector :: (bodyId: b3BodyId, localVector: b3Vec3) -> b3Vec3 #foreign box3d;

b3Body_GetLinearVelocity :: (bodyId: b3BodyId) -> b3Vec3 #foreign box3d;

b3Body_GetAngularVelocity :: (bodyId: b3BodyId) -> b3Vec3 #foreign box3d;

b3Body_SetLinearVelocity :: (bodyId: b3BodyId, linearVelocity: b3Vec3) -> void #foreign box3d;

b3Body_SetAngularVelocity :: (bodyId: b3BodyId, angularVelocity: b3Vec3) -> void #foreign box3d;

b3Body_SetTargetTransform :: (bodyId: b3BodyId, target: b3WorldTransform, timeStep: float, wake: bool) -> void #foreign box3d;

b3Body_GetLocalPointVelocity :: (bodyId: b3BodyId, localPoint: b3Vec3) -> b3Vec3 #foreign box3d;

b3Body_GetWorldPointVelocity :: (bodyId: b3BodyId, worldPoint: b3Pos) -> b3Vec3 #foreign box3d;

b3Body_ApplyForce :: (bodyId: b3BodyId, force: b3Vec3, point: b3Pos, wake: bool) -> void #foreign box3d;

b3Body_ApplyForceToCenter :: (bodyId: b3BodyId, force: b3Vec3, wake: bool) -> void #foreign box3d;

b3Body_ApplyTorque :: (bodyId: b3BodyId, torque: b3Vec3, wake: bool) -> void #foreign box3d;

b3Body_ApplyLinearImpulse :: (bodyId: b3BodyId, impulse: b3Vec3, point: b3Pos, wake: bool) -> void #foreign box3d;

b3Body_ApplyLinearImpulseToCenter :: (bodyId: b3BodyId, impulse: b3Vec3, wake: bool) -> void #foreign box3d;

b3Body_ApplyAngularImpulse :: (bodyId: b3BodyId, impulse: b3Vec3, wake: bool) -> void #foreign box3d;

b3Body_GetMass :: (bodyId: b3BodyId) -> float #foreign box3d;

b3Body_GetLocalRotationalInertia :: (bodyId: b3BodyId) -> b3Matrix3 #foreign box3d;

b3Body_GetInverseMass :: (bodyId: b3BodyId) -> float #foreign box3d;

b3Body_GetWorldInverseRotationalInertia :: (bodyId: b3BodyId) -> b3Matrix3 #foreign box3d;

b3Body_GetLocalCenterOfMass :: (bodyId: b3BodyId) -> b3Vec3 #foreign box3d;

b3Body_GetWorldCenterOfMass :: (bodyId: b3BodyId) -> b3Pos #foreign box3d;

b3Body_SetMassData :: (bodyId: b3BodyId, massData: b3MassData) -> void #foreign box3d;

b3Body_GetMassData :: (bodyId: b3BodyId) -> b3MassData #foreign box3d;

b3Body_ApplyMassFromShapes :: (bodyId: b3BodyId) -> void #foreign box3d;

b3Body_SetLinearDamping :: (bodyId: b3BodyId, linearDamping: float) -> void #foreign box3d;

b3Body_GetLinearDamping :: (bodyId: b3BodyId) -> float #foreign box3d;

b3Body_SetAngularDamping :: (bodyId: b3BodyId, angularDamping: float) -> void #foreign box3d;

b3Body_GetAngularDamping :: (bodyId: b3BodyId) -> float #foreign box3d;

b3Body_SetGravityScale :: (bodyId: b3BodyId, gravityScale: float) -> void #foreign box3d;

b3Body_GetGravityScale :: (bodyId: b3BodyId) -> float #foreign box3d;

b3Body_IsAwake :: (bodyId: b3BodyId) -> bool #foreign box3d;

b3Body_SetAwake :: (bodyId: b3BodyId, awake: bool) -> void #foreign box3d;

b3Body_EnableSleep :: (bodyId: b3BodyId, enableSleep: bool) -> void #foreign box3d;

b3Body_IsSleepEnabled :: (bodyId: b3BodyId) -> bool #foreign box3d;

b3Body_SetSleepThreshold :: (bodyId: b3BodyId, sleepThreshold: float) -> void #foreign box3d;

b3Body_GetSleepThreshold :: (bodyId: b3BodyId) -> float #foreign box3d;

b3Body_IsEnabled :: (bodyId: b3BodyId) -> bool #foreign box3d;

b3Body_Disable :: (bodyId: b3BodyId) -> void #foreign box3d;

b3Body_Enable :: (bodyId: b3BodyId) -> void #foreign box3d;

b3Body_SetMotionLocks :: (bodyId: b3BodyId, locks: b3MotionLocks) -> void #foreign box3d;

b3Body_GetMotionLocks :: (bodyId: b3BodyId) -> b3MotionLocks #foreign box3d;

b3Body_SetBullet :: (bodyId: b3BodyId, flag: bool) -> void #foreign box3d;

b3Body_IsBullet :: (bodyId: b3BodyId) -> bool #foreign box3d;

b3Body_EnableContactRecycling :: (bodyId: b3BodyId, flag: bool) -> void #foreign box3d;

b3Body_IsContactRecyclingEnabled :: (bodyId: b3BodyId) -> bool #foreign box3d;

b3Body_EnableHitEvents :: (bodyId: b3BodyId, enableHitEvents: bool) -> void #foreign box3d;

b3Body_GetWorld :: (bodyId: b3BodyId) -> b3WorldId #foreign box3d;

b3Body_GetShapeCount :: (bodyId: b3BodyId) -> s32 #foreign box3d;

b3Body_GetShapes :: (bodyId: b3BodyId, shapeArray: *b3ShapeId, capacity: s32) -> s32 #foreign box3d;

b3Body_GetJointCount :: (bodyId: b3BodyId) -> s32 #foreign box3d;

b3Body_GetJoints :: (bodyId: b3BodyId, jointArray: *b3JointId, capacity: s32) -> s32 #foreign box3d;

b3Body_GetContactCapacity :: (bodyId: b3BodyId) -> s32 #foreign box3d;

b3Body_GetContactData :: (bodyId: b3BodyId, contactData: *b3ContactData, capacity: s32) -> s32 #foreign box3d;

b3Body_ComputeAABB :: (bodyId: b3BodyId) -> b3AABB #foreign box3d;

b3Body_GetClosestPoint :: (bodyId: b3BodyId, result: *b3Vec3, target: b3Vec3) -> float #foreign box3d;

b3Body_CastRay :: (bodyId: b3BodyId, origin: b3Pos, translation: b3Vec3, filter: b3QueryFilter, maxFraction: float, bodyTransform: b3WorldTransform) -> b3BodyCastResult #foreign box3d;

b3Body_CastShape :: (bodyId: b3BodyId, origin: b3Pos, proxy: *b3ShapeProxy, translation: b3Vec3, filter: b3QueryFilter, maxFraction: float, canEncroach: bool, bodyTransform: b3WorldTransform) -> b3BodyCastResult #foreign box3d;

b3Body_OverlapShape :: (bodyId: b3BodyId, origin: b3Pos, proxy: *b3ShapeProxy, filter: b3QueryFilter, bodyTransform: b3WorldTransform) -> bool #foreign box3d;

b3Body_CollideMover :: (bodyId: b3BodyId, bodyPlanes: *b3BodyPlaneResult, planeCapacity: s32, origin: b3Pos, mover: *b3Capsule, filter: b3QueryFilter, bodyTransform: b3WorldTransform) -> s32 #foreign box3d;

b3CreateSphereShape :: (bodyId: b3BodyId, def: *b3ShapeDef, sphere: *b3Sphere) -> b3ShapeId #foreign box3d;

b3CreateCapsuleShape :: (bodyId: b3BodyId, def: *b3ShapeDef, capsule: *b3Capsule) -> b3ShapeId #foreign box3d;

b3CreateHullShape :: (bodyId: b3BodyId, def: *b3ShapeDef, hull: *b3HullData) -> b3ShapeId #foreign box3d;

b3CreateTransformedHullShape :: (bodyId: b3BodyId, def: *b3ShapeDef, hull: *b3HullData, transform: b3Transform, scale: b3Vec3) -> b3ShapeId #foreign box3d;

b3CreateMeshShape :: (bodyId: b3BodyId, def: *b3ShapeDef, mesh: *b3MeshData, scale: b3Vec3) -> b3ShapeId #foreign box3d;

b3CreateHeightFieldShape :: (bodyId: b3BodyId, def: *b3ShapeDef, heightField: *b3HeightFieldData) -> b3ShapeId #foreign box3d;

b3CreateCompoundShape :: (bodyId: b3BodyId, def: *b3ShapeDef, compound: *b3CompoundData) -> b3ShapeId #foreign box3d;

b3DestroyShape :: (shapeId: b3ShapeId, updateBodyMass: bool) -> void #foreign box3d;

b3Shape_IsValid :: (id: b3ShapeId) -> bool #foreign box3d;

b3Shape_GetType :: (shapeId: b3ShapeId) -> b3ShapeType #foreign box3d;

b3Shape_GetBody :: (shapeId: b3ShapeId) -> b3BodyId #foreign box3d;

b3Shape_GetWorld :: (shapeId: b3ShapeId) -> b3WorldId #foreign box3d;

b3Shape_IsSensor :: (shapeId: b3ShapeId) -> bool #foreign box3d;

b3Shape_SetUserData :: (shapeId: b3ShapeId, userData: *void) -> void #foreign box3d;

b3Shape_GetUserData :: (shapeId: b3ShapeId) -> *void #foreign box3d;

b3Shape_SetDensity :: (shapeId: b3ShapeId, density: float, updateBodyMass: bool) -> void #foreign box3d;

b3Shape_GetDensity :: (shapeId: b3ShapeId) -> float #foreign box3d;

b3Shape_SetFriction :: (shapeId: b3ShapeId, friction: float) -> void #foreign box3d;

b3Shape_GetFriction :: (shapeId: b3ShapeId) -> float #foreign box3d;

b3Shape_SetRestitution :: (shapeId: b3ShapeId, restitution: float) -> void #foreign box3d;

b3Shape_GetRestitution :: (shapeId: b3ShapeId) -> float #foreign box3d;

b3Shape_SetSurfaceMaterial :: (shapeId: b3ShapeId, surfaceMaterial: b3SurfaceMaterial) -> void #foreign box3d;

b3Shape_GetSurfaceMaterial :: (shapeId: b3ShapeId) -> b3SurfaceMaterial #foreign box3d;

b3Shape_GetMeshMaterialCount :: (shapeId: b3ShapeId) -> s32 #foreign box3d;

b3Shape_SetMeshMaterial :: (shapeId: b3ShapeId, surfaceMaterial: b3SurfaceMaterial, index: s32) -> void #foreign box3d;

b3Shape_GetMeshSurfaceMaterial :: (shapeId: b3ShapeId, index: s32) -> b3SurfaceMaterial #foreign box3d;

b3Shape_GetFilter :: (shapeId: b3ShapeId) -> b3Filter #foreign box3d;

b3Shape_SetFilter :: (shapeId: b3ShapeId, filter: b3Filter, invokeContacts: bool) -> void #foreign box3d;

b3Shape_EnableSensorEvents :: (shapeId: b3ShapeId, flag: bool) -> void #foreign box3d;

b3Shape_AreSensorEventsEnabled :: (shapeId: b3ShapeId) -> bool #foreign box3d;

b3Shape_EnableContactEvents :: (shapeId: b3ShapeId, flag: bool) -> void #foreign box3d;

b3Shape_AreContactEventsEnabled :: (shapeId: b3ShapeId) -> bool #foreign box3d;

b3Shape_EnablePreSolveEvents :: (shapeId: b3ShapeId, flag: bool) -> void #foreign box3d;

b3Shape_ArePreSolveEventsEnabled :: (shapeId: b3ShapeId) -> bool #foreign box3d;

b3Shape_EnableHitEvents :: (shapeId: b3ShapeId, flag: bool) -> void #foreign box3d;

b3Shape_AreHitEventsEnabled :: (shapeId: b3ShapeId) -> bool #foreign box3d;

b3Shape_RayCast :: (shapeId: b3ShapeId, origin: b3Pos, translation: b3Vec3) -> b3WorldCastOutput #foreign box3d;

b3Shape_GetSphere :: (shapeId: b3ShapeId) -> b3Sphere #foreign box3d;

b3Shape_GetCapsule :: (shapeId: b3ShapeId) -> b3Capsule #foreign box3d;

b3Shape_GetHull :: (shapeId: b3ShapeId) -> *b3HullData #foreign box3d;

b3Shape_GetMesh :: (shapeId: b3ShapeId) -> b3Mesh #foreign box3d;

b3Shape_GetHeightField :: (shapeId: b3ShapeId) -> *b3HeightFieldData #foreign box3d;

b3Shape_SetSphere :: (shapeId: b3ShapeId, sphere: *b3Sphere) -> void #foreign box3d;

b3Shape_SetCapsule :: (shapeId: b3ShapeId, capsule: *b3Capsule) -> void #foreign box3d;

b3Shape_SetHull :: (shapeId: b3ShapeId, hull: *b3HullData) -> void #foreign box3d;

b3Shape_SetMesh :: (shapeId: b3ShapeId, meshData: *b3MeshData, scale: b3Vec3) -> void #foreign box3d;

b3Shape_GetContactCapacity :: (shapeId: b3ShapeId) -> s32 #foreign box3d;

b3Shape_GetContactData :: (shapeId: b3ShapeId, contactData: *b3ContactData, capacity: s32) -> s32 #foreign box3d;

b3Shape_GetSensorCapacity :: (shapeId: b3ShapeId) -> s32 #foreign box3d;

b3Shape_GetSensorData :: (shapeId: b3ShapeId, visitorIds: *b3ShapeId, capacity: s32) -> s32 #foreign box3d;

b3Shape_GetAABB :: (shapeId: b3ShapeId) -> b3AABB #foreign box3d;

b3Shape_ComputeMassData :: (shapeId: b3ShapeId) -> b3MassData #foreign box3d;

b3Shape_GetClosestPoint :: (shapeId: b3ShapeId, target: b3Vec3) -> b3Vec3 #foreign box3d;

b3Shape_ApplyWind :: (shapeId: b3ShapeId, wind: b3Vec3, drag: float, lift: float, maxSpeed: float, wake: bool) -> void #foreign box3d;

b3DestroyJoint :: (jointId: b3JointId, wakeAttached: bool) -> void #foreign box3d;

b3Joint_IsValid :: (id: b3JointId) -> bool #foreign box3d;

b3Joint_GetType :: (jointId: b3JointId) -> b3JointType #foreign box3d;

b3Joint_GetBodyA :: (jointId: b3JointId) -> b3BodyId #foreign box3d;

b3Joint_GetBodyB :: (jointId: b3JointId) -> b3BodyId #foreign box3d;

b3Joint_GetWorld :: (jointId: b3JointId) -> b3WorldId #foreign box3d;

b3Joint_SetLocalFrameA :: (jointId: b3JointId, localFrame: b3Transform) -> void #foreign box3d;

b3Joint_GetLocalFrameA :: (jointId: b3JointId) -> b3Transform #foreign box3d;

b3Joint_SetLocalFrameB :: (jointId: b3JointId, localFrame: b3Transform) -> void #foreign box3d;

b3Joint_GetLocalFrameB :: (jointId: b3JointId) -> b3Transform #foreign box3d;

b3Joint_SetCollideConnected :: (jointId: b3JointId, shouldCollide: bool) -> void #foreign box3d;

b3Joint_GetCollideConnected :: (jointId: b3JointId) -> bool #foreign box3d;

b3Joint_SetUserData :: (jointId: b3JointId, userData: *void) -> void #foreign box3d;

b3Joint_GetUserData :: (jointId: b3JointId) -> *void #foreign box3d;

b3Joint_WakeBodies :: (jointId: b3JointId) -> void #foreign box3d;

b3Joint_GetConstraintForce :: (jointId: b3JointId) -> b3Vec3 #foreign box3d;

b3Joint_GetConstraintTorque :: (jointId: b3JointId) -> b3Vec3 #foreign box3d;

b3Joint_GetLinearSeparation :: (jointId: b3JointId) -> float #foreign box3d;

b3Joint_GetAngularSeparation :: (jointId: b3JointId) -> float #foreign box3d;

b3Joint_SetConstraintTuning :: (jointId: b3JointId, hertz: float, dampingRatio: float) -> void #foreign box3d;

b3Joint_GetConstraintTuning :: (jointId: b3JointId, hertz: *float, dampingRatio: *float) -> void #foreign box3d;

b3Joint_SetForceThreshold :: (jointId: b3JointId, threshold: float) -> void #foreign box3d;

b3Joint_GetForceThreshold :: (jointId: b3JointId) -> float #foreign box3d;

b3Joint_SetTorqueThreshold :: (jointId: b3JointId, threshold: float) -> void #foreign box3d;

b3Joint_GetTorqueThreshold :: (jointId: b3JointId) -> float #foreign box3d;

b3CreateParallelJoint :: (worldId: b3WorldId, def: *b3ParallelJointDef) -> b3JointId #foreign box3d;

b3ParallelJoint_SetSpringHertz :: (jointId: b3JointId, hertz: float) -> void #foreign box3d;

b3ParallelJoint_SetSpringDampingRatio :: (jointId: b3JointId, dampingRatio: float) -> void #foreign box3d;

b3ParallelJoint_GetSpringHertz :: (jointId: b3JointId) -> float #foreign box3d;

b3ParallelJoint_GetSpringDampingRatio :: (jointId: b3JointId) -> float #foreign box3d;

b3ParallelJoint_SetMaxTorque :: (jointId: b3JointId, force: float) -> void #foreign box3d;

b3ParallelJoint_GetMaxTorque :: (jointId: b3JointId) -> float #foreign box3d;

b3CreateDistanceJoint :: (worldId: b3WorldId, def: *b3DistanceJointDef) -> b3JointId #foreign box3d;

b3DistanceJoint_SetLength :: (jointId: b3JointId, length: float) -> void #foreign box3d;

b3DistanceJoint_GetLength :: (jointId: b3JointId) -> float #foreign box3d;

b3DistanceJoint_EnableSpring :: (jointId: b3JointId, enableSpring: bool) -> void #foreign box3d;

b3DistanceJoint_IsSpringEnabled :: (jointId: b3JointId) -> bool #foreign box3d;

b3DistanceJoint_SetSpringForceRange :: (jointId: b3JointId, lowerForce: float, upperForce: float) -> void #foreign box3d;

b3DistanceJoint_GetSpringForceRange :: (jointId: b3JointId, lowerForce: *float, upperForce: *float) -> void #foreign box3d;

b3DistanceJoint_SetSpringHertz :: (jointId: b3JointId, hertz: float) -> void #foreign box3d;

b3DistanceJoint_SetSpringDampingRatio :: (jointId: b3JointId, dampingRatio: float) -> void #foreign box3d;

b3DistanceJoint_GetSpringHertz :: (jointId: b3JointId) -> float #foreign box3d;

b3DistanceJoint_GetSpringDampingRatio :: (jointId: b3JointId) -> float #foreign box3d;

b3DistanceJoint_EnableLimit :: (jointId: b3JointId, enableLimit: bool) -> void #foreign box3d;

b3DistanceJoint_IsLimitEnabled :: (jointId: b3JointId) -> bool #foreign box3d;

b3DistanceJoint_SetLengthRange :: (jointId: b3JointId, minLength: float, maxLength: float) -> void #foreign box3d;

b3DistanceJoint_GetMinLength :: (jointId: b3JointId) -> float #foreign box3d;

b3DistanceJoint_GetMaxLength :: (jointId: b3JointId) -> float #foreign box3d;

b3DistanceJoint_GetCurrentLength :: (jointId: b3JointId) -> float #foreign box3d;

b3DistanceJoint_EnableMotor :: (jointId: b3JointId, enableMotor: bool) -> void #foreign box3d;

b3DistanceJoint_IsMotorEnabled :: (jointId: b3JointId) -> bool #foreign box3d;

b3DistanceJoint_SetMotorSpeed :: (jointId: b3JointId, motorSpeed: float) -> void #foreign box3d;

b3DistanceJoint_GetMotorSpeed :: (jointId: b3JointId) -> float #foreign box3d;

b3DistanceJoint_SetMaxMotorForce :: (jointId: b3JointId, force: float) -> void #foreign box3d;

b3DistanceJoint_GetMaxMotorForce :: (jointId: b3JointId) -> float #foreign box3d;

b3DistanceJoint_GetMotorForce :: (jointId: b3JointId) -> float #foreign box3d;

b3CreateMotorJoint :: (worldId: b3WorldId, def: *b3MotorJointDef) -> b3JointId #foreign box3d;

b3MotorJoint_SetLinearVelocity :: (jointId: b3JointId, velocity: b3Vec3) -> void #foreign box3d;

b3MotorJoint_GetLinearVelocity :: (jointId: b3JointId) -> b3Vec3 #foreign box3d;

b3MotorJoint_SetAngularVelocity :: (jointId: b3JointId, velocity: b3Vec3) -> void #foreign box3d;

b3MotorJoint_GetAngularVelocity :: (jointId: b3JointId) -> b3Vec3 #foreign box3d;

b3MotorJoint_SetMaxVelocityForce :: (jointId: b3JointId, maxForce: float) -> void #foreign box3d;

b3MotorJoint_GetMaxVelocityForce :: (jointId: b3JointId) -> float #foreign box3d;

b3MotorJoint_SetMaxVelocityTorque :: (jointId: b3JointId, maxTorque: float) -> void #foreign box3d;

b3MotorJoint_GetMaxVelocityTorque :: (jointId: b3JointId) -> float #foreign box3d;

b3MotorJoint_SetLinearHertz :: (jointId: b3JointId, hertz: float) -> void #foreign box3d;

b3MotorJoint_GetLinearHertz :: (jointId: b3JointId) -> float #foreign box3d;

b3MotorJoint_SetLinearDampingRatio :: (jointId: b3JointId, damping: float) -> void #foreign box3d;

b3MotorJoint_GetLinearDampingRatio :: (jointId: b3JointId) -> float #foreign box3d;

b3MotorJoint_SetAngularHertz :: (jointId: b3JointId, hertz: float) -> void #foreign box3d;

b3MotorJoint_GetAngularHertz :: (jointId: b3JointId) -> float #foreign box3d;

b3MotorJoint_SetAngularDampingRatio :: (jointId: b3JointId, damping: float) -> void #foreign box3d;

b3MotorJoint_GetAngularDampingRatio :: (jointId: b3JointId) -> float #foreign box3d;

b3MotorJoint_SetMaxSpringForce :: (jointId: b3JointId, maxForce: float) -> void #foreign box3d;

b3MotorJoint_GetMaxSpringForce :: (jointId: b3JointId) -> float #foreign box3d;

b3MotorJoint_SetMaxSpringTorque :: (jointId: b3JointId, maxTorque: float) -> void #foreign box3d;

b3MotorJoint_GetMaxSpringTorque :: (jointId: b3JointId) -> float #foreign box3d;

b3CreateFilterJoint :: (worldId: b3WorldId, def: *b3FilterJointDef) -> b3JointId #foreign box3d;

b3CreatePrismaticJoint :: (worldId: b3WorldId, def: *b3PrismaticJointDef) -> b3JointId #foreign box3d;

b3PrismaticJoint_EnableSpring :: (jointId: b3JointId, enableSpring: bool) -> void #foreign box3d;

b3PrismaticJoint_IsSpringEnabled :: (jointId: b3JointId) -> bool #foreign box3d;

b3PrismaticJoint_SetSpringHertz :: (jointId: b3JointId, hertz: float) -> void #foreign box3d;

b3PrismaticJoint_GetSpringHertz :: (jointId: b3JointId) -> float #foreign box3d;

b3PrismaticJoint_SetSpringDampingRatio :: (jointId: b3JointId, dampingRatio: float) -> void #foreign box3d;

b3PrismaticJoint_GetSpringDampingRatio :: (jointId: b3JointId) -> float #foreign box3d;

b3PrismaticJoint_SetTargetTranslation :: (jointId: b3JointId, targetTranslation: float) -> void #foreign box3d;

b3PrismaticJoint_GetTargetTranslation :: (jointId: b3JointId) -> float #foreign box3d;

b3PrismaticJoint_EnableLimit :: (jointId: b3JointId, enableLimit: bool) -> void #foreign box3d;

b3PrismaticJoint_IsLimitEnabled :: (jointId: b3JointId) -> bool #foreign box3d;

b3PrismaticJoint_GetLowerLimit :: (jointId: b3JointId) -> float #foreign box3d;

b3PrismaticJoint_GetUpperLimit :: (jointId: b3JointId) -> float #foreign box3d;

b3PrismaticJoint_SetLimits :: (jointId: b3JointId, lower: float, upper: float) -> void #foreign box3d;

b3PrismaticJoint_EnableMotor :: (jointId: b3JointId, enableMotor: bool) -> void #foreign box3d;

b3PrismaticJoint_IsMotorEnabled :: (jointId: b3JointId) -> bool #foreign box3d;

b3PrismaticJoint_SetMotorSpeed :: (jointId: b3JointId, motorSpeed: float) -> void #foreign box3d;

b3PrismaticJoint_GetMotorSpeed :: (jointId: b3JointId) -> float #foreign box3d;

b3PrismaticJoint_SetMaxMotorForce :: (jointId: b3JointId, force: float) -> void #foreign box3d;

b3PrismaticJoint_GetMaxMotorForce :: (jointId: b3JointId) -> float #foreign box3d;

b3PrismaticJoint_GetMotorForce :: (jointId: b3JointId) -> float #foreign box3d;

b3PrismaticJoint_GetTranslation :: (jointId: b3JointId) -> float #foreign box3d;

b3PrismaticJoint_GetSpeed :: (jointId: b3JointId) -> float #foreign box3d;

b3CreateRevoluteJoint :: (worldId: b3WorldId, def: *b3RevoluteJointDef) -> b3JointId #foreign box3d;

b3RevoluteJoint_EnableSpring :: (jointId: b3JointId, enableSpring: bool) -> void #foreign box3d;

b3RevoluteJoint_IsSpringEnabled :: (jointId: b3JointId) -> bool #foreign box3d;

b3RevoluteJoint_SetSpringHertz :: (jointId: b3JointId, hertz: float) -> void #foreign box3d;

b3RevoluteJoint_GetSpringHertz :: (jointId: b3JointId) -> float #foreign box3d;

b3RevoluteJoint_SetSpringDampingRatio :: (jointId: b3JointId, dampingRatio: float) -> void #foreign box3d;

b3RevoluteJoint_GetSpringDampingRatio :: (jointId: b3JointId) -> float #foreign box3d;

b3RevoluteJoint_SetTargetAngle :: (jointId: b3JointId, targetRadians: float) -> void #foreign box3d;

b3RevoluteJoint_GetTargetAngle :: (jointId: b3JointId) -> float #foreign box3d;

b3RevoluteJoint_GetAngle :: (jointId: b3JointId) -> float #foreign box3d;

b3RevoluteJoint_EnableLimit :: (jointId: b3JointId, enableLimit: bool) -> void #foreign box3d;

b3RevoluteJoint_IsLimitEnabled :: (jointId: b3JointId) -> bool #foreign box3d;

b3RevoluteJoint_GetLowerLimit :: (jointId: b3JointId) -> float #foreign box3d;

b3RevoluteJoint_GetUpperLimit :: (jointId: b3JointId) -> float #foreign box3d;

b3RevoluteJoint_SetLimits :: (jointId: b3JointId, lowerLimitRadians: float, upperLimitRadians: float) -> void #foreign box3d;

b3RevoluteJoint_EnableMotor :: (jointId: b3JointId, enableMotor: bool) -> void #foreign box3d;

b3RevoluteJoint_IsMotorEnabled :: (jointId: b3JointId) -> bool #foreign box3d;

b3RevoluteJoint_SetMotorSpeed :: (jointId: b3JointId, motorSpeed: float) -> void #foreign box3d;

b3RevoluteJoint_GetMotorSpeed :: (jointId: b3JointId) -> float #foreign box3d;

b3RevoluteJoint_GetMotorTorque :: (jointId: b3JointId) -> float #foreign box3d;

b3RevoluteJoint_SetMaxMotorTorque :: (jointId: b3JointId, torque: float) -> void #foreign box3d;

b3RevoluteJoint_GetMaxMotorTorque :: (jointId: b3JointId) -> float #foreign box3d;

b3CreateSphericalJoint :: (worldId: b3WorldId, def: *b3SphericalJointDef) -> b3JointId #foreign box3d;

b3SphericalJoint_EnableConeLimit :: (jointId: b3JointId, enableLimit: bool) -> void #foreign box3d;

b3SphericalJoint_IsConeLimitEnabled :: (jointId: b3JointId) -> bool #foreign box3d;

b3SphericalJoint_GetConeLimit :: (jointId: b3JointId) -> float #foreign box3d;

b3SphericalJoint_SetConeLimit :: (jointId: b3JointId, angleRadians: float) -> void #foreign box3d;

b3SphericalJoint_GetConeAngle :: (jointId: b3JointId) -> float #foreign box3d;

b3SphericalJoint_EnableTwistLimit :: (jointId: b3JointId, enableLimit: bool) -> void #foreign box3d;

b3SphericalJoint_IsTwistLimitEnabled :: (jointId: b3JointId) -> bool #foreign box3d;

b3SphericalJoint_GetLowerTwistLimit :: (jointId: b3JointId) -> float #foreign box3d;

b3SphericalJoint_GetUpperTwistLimit :: (jointId: b3JointId) -> float #foreign box3d;

b3SphericalJoint_SetTwistLimits :: (jointId: b3JointId, lowerLimitRadians: float, upperLimitRadians: float) -> void #foreign box3d;

b3SphericalJoint_GetTwistAngle :: (jointId: b3JointId) -> float #foreign box3d;

b3SphericalJoint_EnableSpring :: (jointId: b3JointId, enableSpring: bool) -> void #foreign box3d;

b3SphericalJoint_IsSpringEnabled :: (jointId: b3JointId) -> bool #foreign box3d;

b3SphericalJoint_SetSpringHertz :: (jointId: b3JointId, hertz: float) -> void #foreign box3d;

b3SphericalJoint_GetSpringHertz :: (jointId: b3JointId) -> float #foreign box3d;

b3SphericalJoint_SetSpringDampingRatio :: (jointId: b3JointId, dampingRatio: float) -> void #foreign box3d;

b3SphericalJoint_GetSpringDampingRatio :: (jointId: b3JointId) -> float #foreign box3d;

b3SphericalJoint_SetTargetRotation :: (jointId: b3JointId, targetRotation: b3Quat) -> void #foreign box3d;

b3SphericalJoint_GetTargetRotation :: (jointId: b3JointId) -> b3Quat #foreign box3d;

b3SphericalJoint_EnableMotor :: (jointId: b3JointId, enableMotor: bool) -> void #foreign box3d;

b3SphericalJoint_IsMotorEnabled :: (jointId: b3JointId) -> bool #foreign box3d;

b3SphericalJoint_SetMotorVelocity :: (jointId: b3JointId, motorVelocity: b3Vec3) -> void #foreign box3d;

b3SphericalJoint_GetMotorVelocity :: (jointId: b3JointId) -> b3Vec3 #foreign box3d;

b3SphericalJoint_GetMotorTorque :: (jointId: b3JointId) -> b3Vec3 #foreign box3d;

b3SphericalJoint_SetMaxMotorTorque :: (jointId: b3JointId, torque: float) -> void #foreign box3d;

b3SphericalJoint_GetMaxMotorTorque :: (jointId: b3JointId) -> float #foreign box3d;

b3CreateWeldJoint :: (worldId: b3WorldId, def: *b3WeldJointDef) -> b3JointId #foreign box3d;

b3WeldJoint_SetLinearHertz :: (jointId: b3JointId, hertz: float) -> void #foreign box3d;

b3WeldJoint_GetLinearHertz :: (jointId: b3JointId) -> float #foreign box3d;

b3WeldJoint_SetLinearDampingRatio :: (jointId: b3JointId, dampingRatio: float) -> void #foreign box3d;

b3WeldJoint_GetLinearDampingRatio :: (jointId: b3JointId) -> float #foreign box3d;

b3WeldJoint_SetAngularHertz :: (jointId: b3JointId, hertz: float) -> void #foreign box3d;

b3WeldJoint_GetAngularHertz :: (jointId: b3JointId) -> float #foreign box3d;

b3WeldJoint_SetAngularDampingRatio :: (jointId: b3JointId, dampingRatio: float) -> void #foreign box3d;

b3WeldJoint_GetAngularDampingRatio :: (jointId: b3JointId) -> float #foreign box3d;

b3CreateWheelJoint :: (worldId: b3WorldId, def: *b3WheelJointDef) -> b3JointId #foreign box3d;

b3WheelJoint_EnableSuspension :: (jointId: b3JointId, flag: bool) -> void #foreign box3d;

b3WheelJoint_IsSuspensionEnabled :: (jointId: b3JointId) -> bool #foreign box3d;

b3WheelJoint_SetSuspensionHertz :: (jointId: b3JointId, hertz: float) -> void #foreign box3d;

b3WheelJoint_GetSuspensionHertz :: (jointId: b3JointId) -> float #foreign box3d;

b3WheelJoint_SetSuspensionDampingRatio :: (jointId: b3JointId, dampingRatio: float) -> void #foreign box3d;

b3WheelJoint_GetSuspensionDampingRatio :: (jointId: b3JointId) -> float #foreign box3d;

b3WheelJoint_EnableSuspensionLimit :: (jointId: b3JointId, flag: bool) -> void #foreign box3d;

b3WheelJoint_IsSuspensionLimitEnabled :: (jointId: b3JointId) -> bool #foreign box3d;

b3WheelJoint_GetLowerSuspensionLimit :: (jointId: b3JointId) -> float #foreign box3d;

b3WheelJoint_GetUpperSuspensionLimit :: (jointId: b3JointId) -> float #foreign box3d;

b3WheelJoint_SetSuspensionLimits :: (jointId: b3JointId, lower: float, upper: float) -> void #foreign box3d;

b3WheelJoint_EnableSpinMotor :: (jointId: b3JointId, flag: bool) -> void #foreign box3d;

b3WheelJoint_IsSpinMotorEnabled :: (jointId: b3JointId) -> bool #foreign box3d;

b3WheelJoint_SetSpinMotorSpeed :: (jointId: b3JointId, speed: float) -> void #foreign box3d;

b3WheelJoint_GetSpinMotorSpeed :: (jointId: b3JointId) -> float #foreign box3d;

b3WheelJoint_SetMaxSpinTorque :: (jointId: b3JointId, torque: float) -> void #foreign box3d;

b3WheelJoint_GetMaxSpinTorque :: (jointId: b3JointId) -> float #foreign box3d;

b3WheelJoint_GetSpinSpeed :: (jointId: b3JointId) -> float #foreign box3d;

b3WheelJoint_GetSpinTorque :: (jointId: b3JointId) -> float #foreign box3d;

b3WheelJoint_EnableSteering :: (jointId: b3JointId, flag: bool) -> void #foreign box3d;

b3WheelJoint_IsSteeringEnabled :: (jointId: b3JointId) -> bool #foreign box3d;

b3WheelJoint_SetSteeringHertz :: (jointId: b3JointId, hertz: float) -> void #foreign box3d;

b3WheelJoint_GetSteeringHertz :: (jointId: b3JointId) -> float #foreign box3d;

b3WheelJoint_SetSteeringDampingRatio :: (jointId: b3JointId, dampingRatio: float) -> void #foreign box3d;

b3WheelJoint_GetSteeringDampingRatio :: (jointId: b3JointId) -> float #foreign box3d;

b3WheelJoint_SetMaxSteeringTorque :: (jointId: b3JointId, torque: float) -> void #foreign box3d;

b3WheelJoint_GetMaxSteeringTorque :: (jointId: b3JointId) -> float #foreign box3d;

b3WheelJoint_EnableSteeringLimit :: (jointId: b3JointId, flag: bool) -> void #foreign box3d;

b3WheelJoint_IsSteeringLimitEnabled :: (jointId: b3JointId) -> bool #foreign box3d;

b3WheelJoint_GetLowerSteeringLimit :: (jointId: b3JointId) -> float #foreign box3d;

b3WheelJoint_GetUpperSteeringLimit :: (jointId: b3JointId) -> float #foreign box3d;

b3WheelJoint_SetSteeringLimits :: (jointId: b3JointId, lowerRadians: float, upperRadians: float) -> void #foreign box3d;

b3WheelJoint_SetTargetSteeringAngle :: (jointId: b3JointId, radians: float) -> void #foreign box3d;

b3WheelJoint_GetTargetSteeringAngle :: (jointId: b3JointId) -> float #foreign box3d;

b3WheelJoint_GetSteeringAngle :: (jointId: b3JointId) -> float #foreign box3d;

b3WheelJoint_GetSteeringTorque :: (jointId: b3JointId) -> float #foreign box3d;

b3Contact_IsValid :: (id: b3ContactId) -> bool #foreign box3d;

b3Contact_GetData :: (contactId: b3ContactId) -> b3ContactData #foreign box3d;

#scope_file


#if OS == .WINDOWS {
    box3d :: #library,no_dll "windows/box3d";
} else #if OS == .LINUX {
    box3d :: #library,no_dll "linux/box3d";
} else #if OS == .MACOS {
    box3d :: #library,no_dll "macos/box3d";
} else #if OS == .ANDROID {
    #if CPU == .X64 {
        box3d :: #library,no_dll "android/x64/box3d";
    } else #if CPU == .ARM64 {
        box3d :: #library,no_dll "android/arm64/box3d";
    }
} else #if OS == .PS5 {
    box3d :: #library,no_dll "ps5/box3d";
} else {
    #assert false;
}

