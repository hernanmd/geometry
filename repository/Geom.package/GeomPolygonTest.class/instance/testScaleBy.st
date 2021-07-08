tests
testScaleBy
	polygon := GeomPolygon vertices: {(10 , 4) . (-4 , 10) . (-10 , -8)}.
	polygon scaleBy: 1.
	self assert: polygon geomVertices equals: {(10 , 4) . (-4 , 10) . (-10 , -8)}.

	polygon := GeomPolygon vertices: {(5 , 2) . (-2 , 5) . (-5 , -5)}.
	polygon scaleBy: 2.
	self assert: polygon geomVertices equals: {(10 , 4) . (-4 , 10) . (-10 , -10)}.

	polygon := GeomPolygon vertices: {(10 , 4) . (-4 , 10) . (-10 , -10)}.
	polygon scaleBy: 1 / 2.
	self assert: polygon geomVertices equals: {(5 , 2) . (-2 , 5) . (-5 , -5)}.

	self should: [ polygon scaleBy: 0 ] raise: GeometryError