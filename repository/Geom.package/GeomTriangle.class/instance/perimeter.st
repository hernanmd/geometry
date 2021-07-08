properties
perimeter
	^ self geomEdges
		inject: 0
		into: [ :subSum :edge |
			subSum + edge length ]