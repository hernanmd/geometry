properties
extendSegmVert: v to: frame
	|points ver p|
	points := frame geomIntersectionPointsWithLine: self asLine.
	ver := self geomVertices detect:[:vi | (vi = v) not].
	( ver x = v x ) 
		ifTrue:[ ( ver y > v y )
			ifTrue: [ p := points detect:[ :pi | pi y < v y] ]
			ifFalse:[ p := points detect:[ :pi | pi y > v y] ]]
		ifFalse:	[ ( ver x > v x )
			ifTrue: [ p := points detect:[ :pi | pi x < v x] ]
			ifFalse:[ p := points detect:[ :pi | pi x > v x] ]
			 ].
^ GeomSegment with: ver with: p
							
	
