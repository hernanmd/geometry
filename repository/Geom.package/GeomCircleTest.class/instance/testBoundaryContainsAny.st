tests
testBoundaryContainsAny
	circle := GeomCircle center: 2 , 2 radius: 3.
	self assert: (circle boundaryContainsAny: {(2 , 2) . (5 , 2)})