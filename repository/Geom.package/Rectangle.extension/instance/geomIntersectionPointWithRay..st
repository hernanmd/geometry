*Geom
geomIntersectionPointWithRay: ray

^ self geomEdges collect:[ :edge | edge geomIntersectionPointWithRay: ray]  
				thenReject: #isNil.
	