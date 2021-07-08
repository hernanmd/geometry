tests
testBoundaryContains
	self assert: ((GeomPolygon vertices: {(10 , 10) . (-10 , 10) . (-10 , -10)}) boundaryContains: 0 , 10).
	self deny: ((GeomPolygon vertices: {(10 , 10) . (-10 , 10) . (-10 , -10)}) boundaryContains: -5 , 5)