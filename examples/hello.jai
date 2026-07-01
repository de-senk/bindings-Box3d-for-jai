#import "Basic";
#import,file "../module.jai"; // #import "box3d";
g_bodyId: b3BodyId;
main :: () {
    worldDef := b3DefaultWorldDef();
    worldDef.gravity = .{ 0.0, -10.0, 0.0 };
    worldId := b3CreateWorld(*worldDef);

    groundBodyDef := b3DefaultBodyDef();
    groundBodyDef.position = .{0.0, -10.0, 0.0 };
    groundId := b3CreateBody(worldId, *groundBodyDef);

    groundBox := b3MakeBoxHull(50.0, 10.0, 50.0);

    groundShapeDef := b3DefaultShapeDef();
    b3CreateHullShape(groundId, *groundShapeDef, *groundBox.base);


    bodyDef := b3DefaultBodyDef();
    bodyDef.type = .b3_dynamicBody;
    bodyDef.position = .{ 0.0, 4.0, 0.0 };
    g_bodyId = b3CreateBody(worldId, *bodyDef);

    dynamicBox := b3MakeCubeHull(1.0);
    shapeDef := b3DefaultShapeDef();
    shapeDef.density = 1.0;
    shapeDef.baseMaterial.friction = 0.3;
    b3CreateHullShape(g_bodyId, *shapeDef, *dynamicBox.base);

    for 0..90 {
        b3World_Step(worldId, 1.0/60.0, 4);

        position := b3Body_GetPosition(g_bodyId);
        rotation := b3Body_GetRotation(g_bodyId);


        log("%", position );
        log("%", rotation);
    }
}