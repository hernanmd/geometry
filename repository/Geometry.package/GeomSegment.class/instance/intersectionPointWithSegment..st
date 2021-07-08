properties
intersectionPointWithSegment: segm

	^ (self asLine intersect: segm asLine) ifNotNil: [ :point | 
		((self geomHasPoint: point) and:[segm geomHasPoint: point])
			ifTrue:  [ point ]
			ifFalse: [ nil ] ]
