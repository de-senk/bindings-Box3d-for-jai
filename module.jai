#load "bindings.jai";

B3_INTERFACE_HAS_INDEX1 :: struct {
    index1: s32;
};


B3_IS_NULL :: ( id: $T/interface B3_INTERFACE_HAS_INDEX1 ) -> bool {
    return id.index1 == 0;
};

/// Macro to determine if any id is non-null.
B3_IS_NON_NULL :: ( id: $T/interface B3_INTERFACE_HAS_INDEX1 ) -> bool{
    return id.index1 != 0;
};

/// Compare two ids for equality. Doesn't work for b3WorldId. Don't mix types.
// #define B3_ID_EQUALS( id1, id2 ) ( id1.index1 == id2.index1 && id1.world0 == id2.world0 && id1.generation == id2.generation )
B3_ID_EQUALS :: (id1: $T/interface b3BodyId, id2: $U/interface b3BodyId) -> bool {
    return id1.index1 == id2.index1 && id1.world0 == id2.world0 && id1.generation == id2.generation;
};


b3NormalizeQuat :: ( q: b3Quat ) -> b3Quat
{
	lengthSq: float = b3DotQuat( q, q );
	if ( lengthSq > 1000.0 * FLOAT32_MIN )
	{
		s: float = 1.0 / sqrt( lengthSq );
		qn: b3Quat = { { s * q.v.x, s * q.v.y, s * q.v.z }, s * q.s };
		return qn;
	}

	return b3Quat_identity;
}

b3DotQuat :: ( a: b3Quat, b: b3Quat ) -> float
{
	return a.v.x * b.v.x + a.v.y * b.v.y + a.v.z * b.v.z + a.s * b.s;
}


 #scope_file
 #import "Math";
