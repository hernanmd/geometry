properties
intersectionPointWithLine: aLine

	^ (self asLine intersect: aLine) ifNotNil: [ :point | 
		(self geomHasPoint: point)
			ifTrue:  [ point ]
			ifFalse: [ nil ] ]
