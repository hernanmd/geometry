*Geometry
geomIntersectionPointsWithSegment: segm

^ self geomEdges collect:[ :edge | edge intersectionPointWithSegment: segm]  
				thenReject: #isNil.
	