tests
testIntersectionsWithPoint
	point := 2 , 4.
	self assert: (point intersectionsWith: 3 , 4) isEmpty.
	self assert: (point intersectionsWith: 2 , 4) hasCloseElementsTo: {(2 , 4)}.
	self assertCollection: (point intersectionsWith: 2 , 4) hasSameElements: (point intersectionsWithPoint: 2 , 4)