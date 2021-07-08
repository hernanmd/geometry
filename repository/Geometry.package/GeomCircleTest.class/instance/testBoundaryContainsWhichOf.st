tests
testBoundaryContainsWhichOf
	circle := GeomCircle center: 2 , 2 radius: 3.
	self assert: (circle boundaryContainsWhichOf: {(2 , 2) . (5 , 2)}) equals: {(5 , 2)}