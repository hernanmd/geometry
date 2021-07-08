*Geometry
geomSideWhichHas: point
	
	^ self geomEdges detect: [ :edge | edge geomHasPoint: point ]
