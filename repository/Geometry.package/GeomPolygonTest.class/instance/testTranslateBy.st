tests
testTranslateBy
	polygon := GeomPolygon vertices: {(10 , 10) . (-10 , 10) . (-10 , -10)}.
	polygon translateBy: 10 , 10.
	self assert: polygon geomVertices equals: {(20 , 20) . (0 , 20) . (0 , 0)}