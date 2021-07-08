properties
extendWith: point and: frame
	|points v|
	(self asLine geomHasPoint: point) 
		ifTrue:[ 
			(( self v1 dist: point ) < ( self v2 dist: point ))
				ifTrue:[ v1 := point]
				ifFalse:[ v2 := point].
			v := self geomVertices detect:[:p | (p = point) not ].
			points := frame geomIntersectionPointsWithLine: (self asLine).
			points size = 2 
				ifTrue:[  ( ( GeomSegment with: point with: points first ) geomHasPoint: v )  
					ifTrue:[ ^ GeomSegment with: point with: points first ]
					ifFalse:[ ^ GeomSegment with: point with: points second] ]]
		