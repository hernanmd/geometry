tests
testBoundaryContains
	self assert: ((GeomRectangle origin: 1 , 3 corner: 3 , 0) boundaryContains: 1 , 3).
	self assert: ((GeomRectangle origin: 1 , 3 corner: 3 , 0) boundaryContains: 2 , 3).
	self deny: ((GeomRectangle origin: 1 , 3 corner: 3 , 0) boundaryContains: 0 , 0)