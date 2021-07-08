tests
testBoundaryContains
	ellipse := (GeomEllipse center: 4 , 1 vertex: 6 , 1 coVertex: 4 , 2).
	self deny: (ellipse boundaryContains: 4, 1).
	self assert: (ellipse boundaryContains: 6, 1).
	self assert: (ellipse boundaryContains: 4, 2).
	self deny: (ellipse boundaryContains: 3, 1).
	self deny: (ellipse boundaryContains: 2.1, 0.1).
	self deny: (ellipse boundaryContains: 3, 0.13).