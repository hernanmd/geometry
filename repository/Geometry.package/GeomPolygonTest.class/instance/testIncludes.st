tests
testIncludes
	self assert: ((GeomPolygon vertices: {(10 , 10) . (-10 , 10) . (-10 , -10)}) includes: -5 , 5)