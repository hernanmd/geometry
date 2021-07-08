*Geom
geomSideWhichHas: point
	
	^ self geomEdges detect: [ :edge | edge geomHasPoint: point ]
