tests
testBoundaryContains
	circle := GeomCircle center: 609 / 17 , (10837 / 136) radius: 38.27069133568686.
	self assert: (circle boundaryContains: 5 , 57).
	self assert: (circle boundaryContains: 74 , 77).
	self deny: (circle boundaryContains: 74 , 72).

	circle := GeomCircle center: 2 , 2 radius: 3.
	self assert: (circle boundaryContains: 5 , 2)