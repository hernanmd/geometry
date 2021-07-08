properties
geomIntersectionPointWithRay: ray

	^ (self asLine intersect: ray asLine) ifNotNil: [ :point | 
		((self geomHasPoint: point) and:
				[ray geomHasPoint: point])
			ifTrue:  [ point ]
			ifFalse: [ nil ] ]
