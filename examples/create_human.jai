BoneId :: enum s64
{
	bone_pelvis;
	bone_spine_01;
	bone_spine_02;
	bone_spine_03;
	bone_neck;
	bone_head;
	bone_thigh_l;
	bone_calf_l;
	bone_thigh_r;
	bone_calf_r;
	bone_upper_arm_l;
	bone_lower_arm_l;
	bone_upper_arm_r;
	bone_lower_arm_r;
	bone_count;
};

Bone :: struct
{
 bodyId: b3BodyId;
 jointId: b3JointId;
 anchorId: b3BodyId;
 anchorJointId: b3JointId;
 localFrameA: b3Transform;
 localFrameB: b3Transform;
 referenceFrame: b3Transform;
 jointType: b3JointType;
 swingLimit: float;
 twistLimit: b3Vec2;
 jointFriction: float;
 parentIndex: int;
} ;

FILTER_JOINT_COUNT :: 8;

// This must be zero initialized
Human :: struct
{
	bones: [BoneId.bone_count]Bone;
	filterJoints: [FILTER_JOINT_COUNT]b3JointId ;
	filterJointCount: int;
	frictionTorque: float;
	isSpawned: bool;
};

b3OffsetPos ::( p: b3Pos, d: b3Vec3 ) -> b3Pos
{
	return  b3Pos.{ p.x + d.x, p.y + d.y, p.z + d.z };
};


CreateHuman :: (human: *Human, worldId: b3WorldId, position: b3Pos, frictionTorque: float, hertz: float, dampingRatio: float,
				  groupIndex: s32, userData: *void, colorize: bool )
{
	assert( human.isSpawned == false );


    for i: 0..BoneId.bone_count-1
	{
		human.bones[i].bodyId = {};
		human.bones[i].anchorId = {};
		human.bones[i].jointId = {};
		human.bones[i].jointFriction = 1.0;
		human.bones[i].parentIndex = -1;
	}

	for i: 0..FILTER_JOINT_COUNT-1
	{
		human.filterJoints[i] = {};
	}

    // human.frictionTorque = frictionTorque;

	bodyDef: b3BodyDef = b3DefaultBodyDef();
	bodyDef.type = .b3_dynamicBody;
	bodyDef.userData = userData;

	shapeDef: b3ShapeDef = b3DefaultShapeDef();
	// shapeDef.friction = 0.2;
	shapeDef.baseMaterial.rollingResistance = 0.2;

	shirtColor: b3HexColor =  0x48D1CC;//b3_colorMediumTurquoise;
	pantColor: b3HexColor = 0x1E90FF;//b3_colorDodgerBlue;
	skinColors: [4]b3HexColor = .[ 0xFFDEAD/*b3_colorNavajoWhite*/, 0xFFFFE0/*b3_colorLightYellow*/, 0xCD853F/*b3_colorPeru*/, 0xD2B48C/*b3_colorTan */];
	skinColor: b3HexColor = skinColors[groupIndex % 4];


	{
		bone: *Bone = human.bones.data + cast(s64)BoneId.bone_pelvis;

		bone.parentIndex = -1;

		bodyDef.name = "pelvis";
        bone.referenceFrame = b3Transform.{ { 0.0, 0.932087, -0.051708 }, { { 0.739169, 0.0, 0.0 }, 0.673520 } };
        bodyDef.rotation = bone.referenceFrame.q;
		bodyDef.position = b3OffsetPos( position, bone.referenceFrame.p );
		bone.bodyId = b3CreateBody( worldId, *bodyDef );

		capsule: b3Capsule = { { 0.07, 0.0, -0.08 }, { -0.07, 0.0, -0.08 }, 0.13 };
		shapeDef.filter.groupIndex = 0;
		shapeDef.baseMaterial.customColor = cast(u32)(ifx colorize then pantColor else 0);

		b3CreateCapsuleShape( bone.bodyId, *shapeDef, *capsule );
	}

	{
		bone: *Bone = human.bones.data + cast(s64)BoneId.bone_spine_01;
		bone.parentIndex = cast(s64)BoneId.bone_pelvis;

		bodyDef.name = "spine_01";
        bone.referenceFrame = b3Transform.{ { 0.0, 1.113505, -0.03481 }, { { 0.739973, 0.0, 0.0 }, 0.672637 } };
        bodyDef.rotation = bone.referenceFrame.q;
		bodyDef.position = b3OffsetPos( position, bone.referenceFrame.p );
		// bodyDef.type = .b3_staticBody;
		bone.bodyId = b3CreateBody( worldId, *bodyDef );
		bodyDef.type = .b3_dynamicBody;

		capsule: b3Capsule = { { 0.06, -0.0, -0.052264 }, { -0.06, 0.0, -0.052264 }, 0.12 };
		shapeDef.filter.groupIndex = -groupIndex;
		shapeDef.baseMaterial.customColor = cast(u32)(ifx colorize then shirtColor else 0);
		b3CreateCapsuleShape( bone.bodyId, *shapeDef, *capsule );

		bone.jointType = .b3_sphericalJoint;
		bone.localFrameA = b3Transform.{ { 0.000000, 0.000000, -0.182204 }, { { -0.999999, 0.000000, -0.000000 }, 0.001194 } };
		bone.localFrameB = b3Transform.{ { 0.000000, 0.000000, -0.007736 }, { { -1.000000, 0.000000, -0.000000 }, 0.000000 } };
		bone.swingLimit = 25.0 * B3_DEG_TO_RAD.(float32);
		bone.twistLimit = b3Vec2.{ -15.0 * B3_DEG_TO_RAD.(float32), 15.0 * B3_DEG_TO_RAD.(float32) };
	}

	{
		bone: *Bone = human.bones.data + cast(s64)BoneId.bone_spine_02;
		bone.parentIndex = cast(s64)BoneId.bone_spine_01;

		bodyDef.name = "spine_02";
        bone.referenceFrame = b3Transform.{ { 0.0, 1.194336, -0.027087 }, { { 0.703611, 0.0, 0.0 }, 0.710586 } };
        bodyDef.rotation = bone.referenceFrame.q;
		bodyDef.position = b3OffsetPos( position, bone.referenceFrame.p );
		bone.bodyId = b3CreateBody( worldId, *bodyDef );

		capsule: b3Capsule = { { 0.08, -0.015133, -0.091801 }, { -0.08, -0.015133, -0.091801 }, 0.10 };
		shapeDef.filter.groupIndex = 0;
		shapeDef.baseMaterial.customColor = cast(u32)(ifx colorize then shirtColor else 0);
		b3CreateCapsuleShape( bone.bodyId, *shapeDef, *capsule );

		bone.jointType = .b3_sphericalJoint;
		bone.localFrameA =
			b3Transform.{ { 0.000000, -0.000000, -0.088935 }, { { -0.998619, -0.000000, 0.000000 }, -0.052540 } };
		bone.localFrameB = b3Transform.{ { -0.000000, 0.000000, -0.008199 }, { { -1.000000, 0.000000, -0.000000 }, 0.000000 } };
		bone.swingLimit = 25.0 * B3_DEG_TO_RAD.(float32);
		bone.twistLimit = b3Vec2.{ -15.0 * B3_DEG_TO_RAD.(float32), 15.0 * B3_DEG_TO_RAD.(float32) };
	}

	{
		bone: *Bone = human.bones.data + cast(s64)BoneId.bone_spine_03;
		bone.parentIndex = cast(s64)BoneId.bone_spine_02;

		bodyDef.name = "spine_03";
		bone.referenceFrame = b3Transform.{ { -0.0, 1.31043, -0.028232 }, { { 0.669856, 0.000001, -0.000001 }, 0.742491 } };
		bodyDef.rotation = bone.referenceFrame.q;
		bodyDef.position = b3OffsetPos( position, bone.referenceFrame.p );
		bone.bodyId = b3CreateBody( worldId, *bodyDef );

		 capsule: b3Capsule = { { 0.11, -0.039753, -0.13 }, { -0.11, -0.039753, -0.13 }, 0.145 };
		shapeDef.filter.groupIndex = 0;
		shapeDef.baseMaterial.customColor = cast(u32)(ifx colorize then shirtColor else 0);
		b3CreateCapsuleShape( bone.bodyId, *shapeDef, *capsule );

		bone.jointType = .b3_sphericalJoint;
		bone.localFrameA =
			b3Transform.{ { -0.000000, 0.000000, -0.124298 }, { { -0.998921, 0.000001, -0.000001 }, -0.046434 } };
		bone.localFrameB = b3Transform.{ { 0.000000, 0.000000, 0.000000 }, { { -1.000000, 0.000000, -0.000001 }, 0.000000 } };
		bone.swingLimit = 15.0 * B3_DEG_TO_RAD.(float32);
		bone.twistLimit = b3Vec2.{ -10.0 * B3_DEG_TO_RAD.(float32), 10.0 * B3_DEG_TO_RAD.(float32) };
	}


	{
		bone: *Bone = human.bones.data + cast(s64)BoneId.bone_neck;
		bone.parentIndex = cast(s64)BoneId.bone_spine_03;

		bodyDef.name = "neck";
        bone.referenceFrame = b3Transform.{ { 0.0, 1.575582, -0.055837 }, { { 0.879922, 0.0, 0.0 }, 0.475118 } };
        bodyDef.rotation = bone.referenceFrame.q;
		bodyDef.position = b3OffsetPos( position, bone.referenceFrame.p );
		bone.bodyId = b3CreateBody( worldId, *bodyDef );

		 capsule: b3Capsule = { { -0.000001, -0.0, -0.02 }, { 0.0, -0.005, -0.08 }, 0.07 };
		shapeDef.filter.groupIndex = 0;
		shapeDef.baseMaterial.customColor = cast(u32)(ifx colorize then skinColor else 0);
		b3CreateCapsuleShape( bone.bodyId, *shapeDef, *capsule );

		bone.jointType = .b3_sphericalJoint;
		bone.localFrameA = b3Transform.{ { 0.000001, -0.000259, -0.266585 }, { { -0.942192, -0.000001, 0.000000 }, 0.335074 } };
		bone.localFrameB = b3Transform.{ { 0.000000, 0.000000, 0.000000 }, { { -1.000000, 0.000000, -0.000001 }, 0.000000 } };
		bone.swingLimit = 45.0 * B3_DEG_TO_RAD.(float32);
		bone.twistLimit = b3Vec2.{ -15.0 * B3_DEG_TO_RAD.(float32), 15.0 * B3_DEG_TO_RAD.(float32) };
		bone.jointFriction = 0.8;
	}

	{
		bone: *Bone = human.bones.data + cast(s64)BoneId.bone_head;
		bone.parentIndex = cast(s64)BoneId.bone_neck;

		bodyDef.name = "head";
        bone.referenceFrame = b3Transform.{ { 0.0, 1.653348, -0.003241 }, { { 0.750288, 0.0, 0.0 }, 0.661111 } };
        bodyDef.rotation = bone.referenceFrame.q;
		bodyDef.position = b3OffsetPos( position, bone.referenceFrame.p );
		bone.bodyId = b3CreateBody( worldId, *bodyDef );

		 capsule: b3Capsule = { { -0.000001, 0.016892, -0.05869 }, { 0.0, -0.003629, -0.115072 }, 0.0975 };
		shapeDef.filter.groupIndex = 0;
		shapeDef.baseMaterial.customColor = cast(u32)(ifx colorize then skinColor else 0);
		b3CreateCapsuleShape( bone.bodyId, *shapeDef, *capsule );

		bone.jointType = .b3_sphericalJoint;
		bone.localFrameA = b3Transform.{ { 0.000000, 0.001321, -0.093873 }, { { -0.974301, -0.000000, -0.000000 }, -0.225251 } };
		bone.localFrameB = b3Transform.{ { 0.000000, 0.001268, -0.005104 }, { { -1.000000, 0.000000, -0.00000 }, 0.000000 } };
		bone.swingLimit = 15.0 * B3_DEG_TO_RAD.(float32);
		bone.twistLimit = b3Vec2.{ -15.0 * B3_DEG_TO_RAD.(float32), 15.0 * B3_DEG_TO_RAD.(float32) };
		bone.jointFriction = 0.4;
	}

	{
		bone: *Bone = human.bones.data + cast(s64)BoneId.bone_thigh_l;
		bone.parentIndex = cast(s64)BoneId.bone_pelvis;

		bodyDef.name = "thigh_l";
		bone.referenceFrame = b3Transform.{ { 0.090416, 0.986104, -0.035090 }, { { -0.703287, -0.070715, 0.053866 }, 0.705327 } };
		bodyDef.rotation = bone.referenceFrame.q;
		bodyDef.position = b3OffsetPos( position, bone.referenceFrame.p );
		bone.bodyId = b3CreateBody( worldId, *bodyDef );

         capsule: b3Capsule = { { 0.023719, 0.006008, -0.039068 }, { -0.064492, -0.004664, -0.424718 }, 0.09 };
		shapeDef.filter.groupIndex = -groupIndex;
		shapeDef.baseMaterial.customColor = cast(u32)(ifx colorize then pantColor else 0);
		b3CreateCapsuleShape( bone.bodyId, *shapeDef, *capsule );

		bone.jointType = .b3_sphericalJoint;
		bone.localFrameA = b3Transform.{ { 0.05, 0.011537, -0.055325 }, { { -0.714896, -0.022305, -0.698361 }, -0.026790 } };
		bone.localFrameB = b3Transform.{ { 0.0, 0.0, 0.0 }, { { -0.002064, 0.758987, 0.017046 }, 0.650880 } };
		bone.swingLimit = 60.0 * B3_DEG_TO_RAD.(float32);
		bone.twistLimit = b3Vec2.{ -60.0 * B3_DEG_TO_RAD.(float32), 40.0 * B3_DEG_TO_RAD.(float32) };
	}

	{
		bone: *Bone = human.bones.data + cast(s64)BoneId.bone_calf_l;
		bone.parentIndex = cast(s64)BoneId.bone_thigh_l;

		bodyDef.name = "calf_l";
		bone.referenceFrame = b3Transform.{ { 0.101198, 0.527027, -0.037374 }, { { -0.653328, -0.066860, 0.058582 }, 0.751838 } };
		bodyDef.rotation = bone.referenceFrame.q;
		bodyDef.position = b3OffsetPos( position, bone.referenceFrame.p );
		bone.bodyId = b3CreateBody( worldId, *bodyDef );

		 capsule: b3Capsule = { { 0.001778, 0.0, 0.009841 }, { -0.078577, 0.014707, -0.41816 }, 0.075 };
		shapeDef.filter.groupIndex = 0;
		shapeDef.baseMaterial.customColor = cast(u32)(ifx colorize then pantColor else 0);
		b3CreateCapsuleShape( bone.bodyId, *shapeDef, *capsule );

		bone.jointType = .b3_revoluteJoint;
		bone.localFrameA = b3Transform.{ { -0.069989, 0.000253, -0.453844 }, { { -0.000677, 0.760087, 0.105674 }, 0.641171 } };
		bone.localFrameB = b3Transform.{ { 0.0, 0.0, 0.0 }, { { -0.044589, 0.765540, 0.053368 }, 0.639619 } };
		bone.twistLimit = b3Vec2.{ -5.0 * B3_DEG_TO_RAD.(float32), 45.0 * B3_DEG_TO_RAD.(float32) };
	}

	{
		bone: *Bone = human.bones.data + cast(s64)BoneId.bone_thigh_r;
		bone.parentIndex = cast(s64)BoneId.bone_pelvis;

		bodyDef.name = "thigh_r";
		bone.referenceFrame = b3Transform.{ { -0.090416, 0.986104, -0.03509 }, { { -0.703287, 0.070715, -0.053865 }, 0.705326 } };
		bodyDef.rotation = bone.referenceFrame.q;
		bodyDef.position = b3OffsetPos( position, bone.referenceFrame.p );
		bone.bodyId = b3CreateBody( worldId, *bodyDef );

		 capsule: b3Capsule = { { -0.023719, 0.006008, -0.039068 }, { 0.064492, -0.004664, -0.424718 }, 0.09 };
		shapeDef.filter.groupIndex = -groupIndex;
		shapeDef.baseMaterial.customColor = cast(u32)(ifx colorize then pantColor else 0);
		b3CreateCapsuleShape( bone.bodyId, *shapeDef, *capsule );

		bone.jointType = .b3_sphericalJoint;
		bone.localFrameA = b3Transform.{ { -0.05, 0.011537, -0.055326 }, { { -0.039089, -0.714094, 0.043177 }, 0.697623 } };
		bone.localFrameB = b3Transform.{ { 0.0, 0.0, 0.0 }, { { 0.758805, -0.019886, -0.651012 }, -0.001759 } };
		bone.swingLimit = 60.0 * B3_DEG_TO_RAD.(float32);
		bone.twistLimit = b3Vec2.{ -30.0 * B3_DEG_TO_RAD.(float32), 60.0 * B3_DEG_TO_RAD.(float32) };
	}

	{
		bone: *Bone = human.bones.data + cast(s64)BoneId.bone_calf_r;
		bone.parentIndex = cast(s64)BoneId.bone_thigh_r;

		bodyDef.name = "calf_r";
		bone.referenceFrame =
			b3Transform.{ { -0.101198, 0.527027, -0.037373 }, { { -0.653327, 0.06686, -0.058582 }, 0.751839 } };
		bodyDef.rotation = bone.referenceFrame.q;
		bodyDef.position = b3OffsetPos( position, bone.referenceFrame.p );
		bone.bodyId = b3CreateBody( worldId, *bodyDef );

		 capsule: b3Capsule = { { -0.001820, 0.0, 0.010071 }, { 0.077883, 0.014825, -0.418047 }, 0.075 };
		shapeDef.filter.groupIndex = 0;
		shapeDef.baseMaterial.customColor = cast(u32)(ifx colorize then pantColor else 0);
		b3CreateCapsuleShape( bone.bodyId, *shapeDef, *capsule );

		bone.jointType = .b3_revoluteJoint;
		bone.localFrameA = b3Transform.{ { 0.069988, 0.000253, -0.453844 }, { { 0.760086, -0.000675, -0.641171 }, -0.105676 } };
		bone.localFrameB = b3Transform.{ { 0.0, 0.0, 0.0 }, { { 0.765540, -0.044589, -0.639619 }, -0.053368 } };
		bone.twistLimit = b3Vec2.{ -45.0 * B3_DEG_TO_RAD.(float32), 5.0 * B3_DEG_TO_RAD.(float32) };
	}

	{
        // q: b3Quat;
        // q =b3NormalizeQuat({Vector3.{0.999737, -0.0162, -0.016201}, -0.000463});
        // q.v ={ 0.20378, 1.484275, -0.115897 };
		bone: *Bone = human.bones.data + cast(s64)BoneId.bone_upper_arm_l;
		bone.parentIndex = cast(s64)BoneId.bone_spine_03;

		bodyDef.name = "upper_arm_l";
		bone.referenceFrame =
       b3Transform.{ {  0.20378,  1.484275, -0.115897 }, { { 0.143082, 0.695980, -0.690130 }, 0.13733 } };
		bodyDef.rotation = bone.referenceFrame.q;
		bodyDef.position = b3OffsetPos( position, bone.referenceFrame.p );
		bone.bodyId = b3CreateBody( worldId, *bodyDef );

		 capsule: b3Capsule = { { 0.0, 0.0, 0.0 }, { -0.091118, 0.037775, 0.229719 }, 0.075 };
		shapeDef.filter.groupIndex = 0;
		shapeDef.baseMaterial.customColor = cast(u32)(ifx colorize then shirtColor else 0);
		b3CreateCapsuleShape( bone.bodyId, *shapeDef, *capsule );

		bone.jointType = .b3_sphericalJoint;
		bone.localFrameA = b3Transform.{ { 0.203780, -0.069369, -0.181921 }, { { -0.278486, 0.445600, -0.097014 }, 0.845266 } };
		bone.localFrameB = b3Transform.{ { 0.000000, 0.000000, 0.000000 }, { { -0.201396, -0.001586, 0.901850 }, 0.382234 } };
		bone.swingLimit = 60.0 * B3_DEG_TO_RAD.(float32);
		bone.twistLimit = b3Vec2.{ -5.0 * B3_DEG_TO_RAD.(float32), 5.0 * B3_DEG_TO_RAD.(float32) };
	}

	{
		bone: *Bone = human.bones.data + cast(s64)BoneId.bone_lower_arm_l;
		bone.parentIndex = cast(s64)BoneId.bone_upper_arm_l;

		bodyDef.name = "lower_arm_l";
		bone.referenceFrame =
			b3Transform.{ { 0.305614, 1.242908, -0.117599 }, { { 0.165048, 0.563437, -0.802002 }, 0.109959 } };
		bodyDef.rotation = bone.referenceFrame.q;
		bodyDef.position = b3OffsetPos( position, bone.referenceFrame.p );
		bone.bodyId = b3CreateBody( worldId, *bodyDef );

		 capsule: b3Capsule = { { 0.0, 0.0, 0.0 }, { -0.142406, 0.039392, 0.261092 }, 0.05 };
		shapeDef.filter.groupIndex = 0;
		shapeDef.baseMaterial.customColor = cast(u32)(ifx colorize then skinColor else 0);
		b3CreateCapsuleShape( bone.bodyId, *shapeDef, *capsule );

		bone.jointType = .b3_revoluteJoint;
		bone.localFrameA = b3Transform.{ { -0.095482, 0.039584, 0.240723 }, { { 0.512487, -0.180629, 0.839474 }, 0.003742 } };
		bone.localFrameB = b3Transform.{ { 0.0, 0.0, 0.0 }, { { 0.503803, -0.029831, 0.858168 }, 0.094017 } };
		bone.twistLimit = b3Vec2.{ -5.0 * B3_DEG_TO_RAD.(float32), 60.0 * B3_DEG_TO_RAD.(float32) };
	}

	{
		bone: *Bone = human.bones.data + cast(s64)BoneId.bone_upper_arm_r;
		bone.parentIndex = cast(s64)BoneId.bone_spine_03;

		bodyDef.name = "upper_arm_r";
		bone.referenceFrame =
			b3Transform.{ { -0.20378, 1.484276, -0.115899 }, { { 0.143083, -0.695978, 0.690132 }, 0.137329 } };
		bodyDef.rotation = bone.referenceFrame.q;
		bodyDef.position = b3OffsetPos( position, bone.referenceFrame.p );
		bone.bodyId = b3CreateBody( worldId, *bodyDef );

		 capsule: b3Capsule = { { 0.0, 0.0, 0.0 }, { 0.091118, 0.037775, 0.229718 }, 0.075 };
		shapeDef.filter.groupIndex = 0;
		shapeDef.baseMaterial.customColor = cast(u32)(ifx colorize then shirtColor else 0);
		b3CreateCapsuleShape( bone.bodyId, *shapeDef, *capsule );

		bone.jointType = .b3_sphericalJoint;
		bone.localFrameA =
			b3Transform.{ { -0.203779, -0.069371, -0.181922 }, { { -0.253621, -0.414842, 0.106962 }, 0.867261 } };
		bone.localFrameB = b3Transform.{ { 0.000000, 0.000000, 0.000000 }, { { -0.201397, 0.001587, -0.901850 }, 0.382233 } };
		bone.swingLimit = 60.0 * B3_DEG_TO_RAD.(float32);
		bone.twistLimit = b3Vec2.{ -5.0 * B3_DEG_TO_RAD.(float32), 5.0 * B3_DEG_TO_RAD.(float32) };
	}

	{
		bone: *Bone = human.bones.data + cast(s64)BoneId.bone_lower_arm_r;
		bone.parentIndex = cast(s64)BoneId.bone_upper_arm_r;

		bodyDef.name = "lower_arm_r";
		bone.referenceFrame =
			b3Transform.{ { -0.305614, 1.242907, -0.117599 }, { { 0.165048, -0.563437, 0.802002 }, 0.109959 } };
		bodyDef.rotation = bone.referenceFrame.q;
		bodyDef.position = b3OffsetPos( position, bone.referenceFrame.p );
		bone.bodyId = b3CreateBody( worldId, *bodyDef );

		 capsule: b3Capsule = { { 0.0, 0.0, 0.0 }, { 0.142406, 0.039392, 0.261092 }, 0.05 };
		shapeDef.filter.groupIndex = 0;
		shapeDef.baseMaterial.customColor = cast(u32)(ifx colorize then skinColor else 0);
		b3CreateCapsuleShape( bone.bodyId, *shapeDef, *capsule );

		bone.jointType = .b3_revoluteJoint;
		bone.localFrameA = b3Transform.{ { 0.095484, 0.039585, 0.240723 }, { { -0.180627, 0.512487, -0.003744 }, -0.839474 } };
		bone.localFrameB = b3Transform.{ { 0.0, 0.0, 0.0 }, { { -0.029831, 0.503803, -0.094017 }, -0.858169 } };
		bone.twistLimit = b3Vec2.{ -60.0 * B3_DEG_TO_RAD.(float32), 5.0 * B3_DEG_TO_RAD.(float32) };
	}

    for i: 1..BoneId.bone_count - 1
	{
		bone: *Bone = human.bones.data + cast(s64)i;
		parent: *Bone = human.bones.data + bone.parentIndex;

		 bodyIdA: b3BodyId = parent.bodyId;
		 bodyIdB: b3BodyId = bone.bodyId;

		bone.localFrameA.q = b3NormalizeQuat( bone.localFrameA.q );
		bone.localFrameB.q = b3NormalizeQuat( bone.localFrameB.q );

		if ( bone.jointType == .b3_revoluteJoint )
		{
			jointDef: b3RevoluteJointDef = b3DefaultRevoluteJointDef();
			jointDef.base.bodyIdA = bodyIdA;
			jointDef.base.bodyIdB = bodyIdB;
			jointDef.base.localFrameA = bone.localFrameA;
			jointDef.base.localFrameB = bone.localFrameB;
			jointDef.enableLimit = true;
			jointDef.lowerAngle = bone.twistLimit.x;
			jointDef.upperAngle = bone.twistLimit.y;
			jointDef.enableSpring = hertz > 0.0;
			jointDef.hertz = hertz;
			jointDef.dampingRatio = dampingRatio;
			jointDef.enableMotor = true;
			jointDef.maxMotorTorque = bone.jointFriction * frictionTorque;
			bone.jointId = b3CreateRevoluteJoint( worldId, *jointDef );
		}
		else if ( bone.jointType == .b3_sphericalJoint )
		{
			jointDef: b3SphericalJointDef = b3DefaultSphericalJointDef();
			jointDef.base.bodyIdA = bodyIdA;
			jointDef.base.bodyIdB = bodyIdB;
			jointDef.base.localFrameA = bone.localFrameA;
			jointDef.base.localFrameB = bone.localFrameB;
			jointDef.enableConeLimit = true;
			jointDef.coneAngle = bone.swingLimit;
			jointDef.enableTwistLimit = true;
			jointDef.lowerTwistAngle = bone.twistLimit.x;
			jointDef.upperTwistAngle = bone.twistLimit.y;
			jointDef.enableSpring = hertz > 0.0;
			jointDef.hertz = hertz;
			jointDef.dampingRatio = dampingRatio;
			jointDef.enableMotor = true;
			jointDef.maxMotorTorque = bone.jointFriction * frictionTorque;
			bone.jointId = b3CreateSphericalJoint( worldId, *jointDef );
		}
	}

	// Disable some collisions
	{
	 filterDef: b3FilterJointDef = b3DefaultFilterJointDef();
	 filterDef.base.bodyIdA = human.bones[BoneId.bone_thigh_l].bodyId;
	 filterDef.base.bodyIdB = human.bones[BoneId.bone_thigh_r].bodyId;
	 human.filterJoints[0] = b3CreateFilterJoint( worldId, *filterDef );
	 human.filterJointCount += 1;
    }
    // {
    //  filterDef: b3FilterJointDef = b3DefaultFilterJointDef();
    //  filterDef.base.bodyIdA = human.bones[BoneId.bone_pelvis].bodyId;
    //  filterDef.base.bodyIdB = human.bones[BoneId.bone_spine_01].bodyId;
    //  human.filterJoints[1] = b3CreateFilterJoint( worldId, *filterDef );
    //  human.filterJointCount += 1;
    // }
    // {
    //  filterDef: b3FilterJointDef = b3DefaultFilterJointDef();
    //  filterDef.base.bodyIdA = human.bones[BoneId.bone_spine_01].bodyId;
    //  filterDef.base.bodyIdB = human.bones[BoneId.bone_spine_02].bodyId;
    //  human.filterJoints[2] = b3CreateFilterJoint( worldId, *filterDef );
    //  human.filterJointCount += 1;
    // }
    //  {
    //  filterDef: b3FilterJointDef = b3DefaultFilterJointDef();
    //  filterDef.base.bodyIdA = human.bones[BoneId.bone_spine_02].bodyId;
    //  filterDef.base.bodyIdB = human.bones[BoneId.bone_spine_03].bodyId;
    //  human.filterJoints[3] = b3CreateFilterJoint( worldId, *filterDef );
    //  human.filterJointCount += 1;
    // }

	human.isSpawned = true;
}

DestroyHuman :: ( human: *Human )
{
	assert( human.isSpawned == true );

	for i:0..human.filterJointCount-1
	{
		b3DestroyJoint( human.filterJoints[i], false );
		human.filterJoints[i] = {};
	}


    for i: 0..BoneId.bone_count-1
	{
		if ( B3_IS_NULL( human.bones[i].jointId ) )
		{
			continue;
		}

		b3DestroyJoint( human.bones[i].jointId, false );
		human.bones[i].jointId = {};
	}


    for i: 0..BoneId.bone_count-1
	{
		if ( B3_IS_NULL( human.bones[i].bodyId ) )
		{
			continue;
		}

		b3DestroyBody( human.bones[i].bodyId );
		human.bones[i].bodyId = {};
	}

	human.isSpawned = false;
}

Human_SetVelocity :: ( human: *Human, velocity: b3Vec3 )
{

    for i: 0..BoneId.bone_count-1
	{
		 bodyId: b3BodyId = human.bones[i].bodyId;

		if ( B3_IS_NULL( bodyId ) )
		{
			continue;
		}

		b3Body_SetLinearVelocity( bodyId, velocity );
	}
}

// Human_ApplyRandomAngularImpulse :: ( human: *Human, magnitude: float )
// {
// 	assert( human.isSpawned == true );
// 	range:b3Vec3 = { magnitude, magnitude, magnitude };
// 	impulse:b3Vec3 = RandomVec3( b3Neg( range ), range );
// 	b3Body_ApplyAngularImpulse( human.bones[bone_spine_01].bodyId, impulse, true );
// }

Human_SetJointFrictionTorque :: ( human: *Human, torque: float )
{
	assert( human.isSpawned == true );
	human.frictionTorque = torque;

    // for ( int i = 1; i < BoneId.bone_count; ++i )
    for i: 1..BoneId.bone_count - 1
	{
		bone: *Bone = human.bones.data + cast(s64)i;
		if ( bone.jointType == .b3_revoluteJoint )
		{
			b3RevoluteJoint_SetMaxMotorTorque( bone.jointId, bone.jointFriction * torque );
		}
		else
		{
			b3SphericalJoint_SetMaxMotorTorque( bone.jointId, bone.jointFriction * torque );
		}
	}
}

Human_SetJointSpringHertz :: ( human: *Human, hertz: float )
{
	assert( human.isSpawned == true );
    for i: 1..BoneId.bone_count - 1
	{
		bone: *Bone = human.bones.data + cast(s64)i;
		if ( bone.jointType == .b3_revoluteJoint )
		{
			b3RevoluteJoint_SetSpringHertz( bone.jointId, hertz );
		}
		else
		{
			b3SphericalJoint_SetSpringHertz( bone.jointId, hertz );
		}
	}
}

Human_SetJointDampingRatio :: ( human: *Human, dampingRatio:float )
{
	assert( human.isSpawned == true );
    for i: 1..BoneId.bone_count - 1
	{
		bone: *Bone = human.bones.data + cast(s64)i;
		if ( bone.jointType == .b3_revoluteJoint )
		{
			b3RevoluteJoint_SetSpringDampingRatio( bone.jointId, dampingRatio );
		}
		else
		{
			b3SphericalJoint_SetSpringDampingRatio( bone.jointId, dampingRatio );
		}
	}
}

Human_AlignSpring :: ( human: *Human, worldId: b3WorldId, groundId: b3BodyId, hertz: float, dampingRatio: float )
{
	assert( human.isSpawned == true );

	bone: *Bone = human.bones.data + cast(s64)BoneId.bone_pelvis;
	assert( B3_IS_NULL( bone.jointId ) == true );
	q: b3Quat = b3ComputeQuatBetweenUnitVectors( {0,0,1}, {0,1,0} );
	qb: b3Quat = b3Body_GetRotation( bone.bodyId );

	jointDef: b3ParallelJointDef = b3DefaultParallelJointDef();
	jointDef.base.bodyIdA = groundId;
	jointDef.base.bodyIdB = bone.bodyId;
	jointDef.base.localFrameA.q = q;
	jointDef.base.localFrameB.q = b3InvMulQuat( qb, q );
	jointDef.base.drawScale = 2.0;
	jointDef.base.collideConnected = true;
	jointDef.hertz = hertz;
	jointDef.dampingRatio = dampingRatio;

	bone.jointId = b3CreateParallelJoint( worldId, *jointDef );
}

Human_CreateMotorAnchors :: ( human: *Human, worldId: b3WorldId )
{
	anchorDef: b3BodyDef = b3DefaultBodyDef();
	anchorDef.type = .b3_kinematicBody;

	motorDef: b3MotorJointDef = b3DefaultMotorJointDef();
	motorDef.angularHertz = 5.0;
	motorDef.angularDampingRatio = 1.0;
	motorDef.linearHertz = 5.0;
	motorDef.linearDampingRatio = 1.0;
	motorDef.maxSpringForce = FLOAT32_MAX;
	motorDef.maxSpringTorque = FLOAT32_MAX;


    for i: 0..BoneId.bone_count-1
	{
		bone: *Bone = human.bones.data + cast(s64)i;

		bodyTransform: b3WorldTransform = b3Body_GetTransform( bone.bodyId );
		anchorDef.position = bodyTransform.p;
		anchorDef.rotation = bodyTransform.q;
		bone.anchorId = b3CreateBody( worldId, *anchorDef );

		motorDef.base.bodyIdA = bone.anchorId;
		motorDef.base.bodyIdB = bone.bodyId;

		bone.anchorJointId = b3CreateMotorJoint( worldId, *motorDef );
	}
}

Human_CreateParallelAnchors :: ( human: *Human, worldId: b3WorldId )
{
	anchorDef: b3BodyDef = b3DefaultBodyDef();
	anchorDef.type = .b3_kinematicBody;

	qFrameWorld: b3Quat = b3ComputeQuatBetweenUnitVectors( {0,0,1}, {0,1,0} );
	jointDef: b3ParallelJointDef = b3DefaultParallelJointDef();
	jointDef.hertz = 8.0;
	jointDef.dampingRatio = 1.0;
	jointDef.maxTorque = 800.0;


    for i: 0..BoneId.bone_count-1
	{
		bone: *Bone = human.bones.data + cast(s64)i;

		bodyTransform: b3WorldTransform = b3Body_GetTransform( bone.bodyId );
		anchorDef.position = bodyTransform.p;
		anchorDef.rotation = bodyTransform.q;
		bone.anchorId = b3CreateBody( worldId, *anchorDef );

		jointDef.base.bodyIdA = bone.anchorId;
		jointDef.base.bodyIdB = bone.bodyId;

		frameQuat: b3Quat = b3InvMulQuat( bodyTransform.q, qFrameWorld );
		jointDef.base.localFrameA.q = frameQuat;
		jointDef.base.localFrameB.q = frameQuat;

		bone.anchorJointId = b3CreateParallelJoint( worldId, *jointDef );
	}
}

Human_SetBullet :: ( human: *Human, flag: bool )
{

    for i: 0..BoneId.bone_count-1
	{
		bone: *Bone = human.bones.data + cast(s64)i;
		b3Body_SetBullet( bone.bodyId, flag );
	}
}

#if 0 {
EnablePoseControl :: (using human: *Human,  world: *b3World,  springHertz: float,  poseControl: bool )
{
	if ( poseControl == m_poseControl )
	{
		return;
	}

	if ( m_poseControl )
	{
    for i: 0..BoneId.bone_count-1
		{
			bone: *Bone = human.bones.data + cast(s64)i;

			world.RemoveJoint( bone.poseJoint, true );
			bone.poseJoint = null;
		}

		world.DestroyBody( m_rootBody, true );
		m_rootBody = null;
	}
	else
	{
		rootDef: b3BodyDef = b3DefaultBodyDef();
		rootDef.type = .b3_kinematicBody;
		rootDef.position = m_baseTransform.p;
		rootDef.rotation = m_baseTransform.q;
		m_rootBody = world.CreateBody( *rootDef );

		dampingRatio: float = 0.9;

    for i: 0..BoneId.bone_count-1
		{
			bone: *Bone = human.bones.data + cast(s64)i;

			bodyIdA: *b3Body = m_rootBody;
			bodyIdB: *b3Body = bone.bodyId;

			enableCollision: bool = false;
			useBlockSolver: bool = false;

			// bone.poseJoint = world.AddRigidJoint( bodyIdA, bodyIdB, bodyIdB->GetPosition(), enableCollision, useBlockSolver );
			bone.poseJoint = world.AddRigidJoint( bodyIdA, bone.referenceFrame, bodyIdB, b3Transform_identity,
													b3Transform_identity, enableCollision, useBlockSolver );
			bone.poseJoint.SetAngularFrequency( springHertz );
			bone.poseJoint.SetAngularDampingRatio( dampingRatio );
			bone.poseJoint.SetLinearFrequency( springHertz );
			bone.poseJoint.SetLinearDampingRatio( dampingRatio );
		}
	}

	m_poseControl = poseControl;
}

AdjustPoseControl :: (using human: *Human, springHertz: float )
{
	if ( m_poseControl == false )
	{
		return;
	}


    for i: 0..BoneId.bone_count-1
	{
		bone: *Bone = human.bones.data + cast(s64)i;

		bone.poseJoint.SetAngularFrequency( springHertz );
		bone.poseJoint.SetLinearFrequency( springHertz );
	}
}

DriveBase :: (using human: *Human, transform: b3Transform, timeStep: float )
{
	m_rootBody.SetVelocityFromKeyframe( transform, timeStep );
	m_baseTransform = transform;
}

EnableMotors :: (using human: *Human, enableMotors: bool )
{
	if ( enableMotors == m_motorized )
	{
		return;
	}

    for i: 1..BoneId.bone_count - 1
	{
		bone: *Bone = human.bones.data + cast(s64)i;

		if ( bone.joint == null )
		{
			continue;
		}

		if ( bone.joint.mType == .b3_revoluteJoint )
		{
			joint := cast(*b3RevoluteJoint)( bone.joint );
			if ( enableMotors )
			{
				joint.SetMotorMode( B3_POSITION_MODE );
			}
			else
			{
				joint.SetMotorFriction( bone.jointFriction );
			}
		}
		else if ( bone.joint.mType == .b3_sphericalJoint )
		{
			joint := cast(*b3SphericalJoint)( bone.joint );
			if ( enableMotors )
			{
				joint.SetMotorMode( B3_POSITION_MODE );
			}
			else
			{
				joint.SetMotorFriction( bone.jointFriction );
			}
		}
	}

	m_motorized = enableMotors;
}

AdjustMotors :: (using human: *Human,  springHertz: float )
{
	if ( m_motorized == false )
	{
		return;
	}


    for i: 1..BoneId.bone_count - 1
	{
		bone: *Bone = human.bones.data + cast(s64)i;

		if ( bone.joint == null )
		{
			continue;
		}

		if ( bone.joint.mType == .b3_revoluteJoint )
		{
			joint := cast(*b3RevoluteJoint)( bone.joint );
			joint.mAngularSpring.Frequency = springHertz;
		}
		else if ( bone.joint.mType == .b3_sphericalJoint )
		{
			b3SphericalJoint* joint = cast(*b3SphericalJoint)( bone.joint );
			joint.mAngularSpring.Frequency = springHertz;
		}
	}
}

}