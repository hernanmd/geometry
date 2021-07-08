tests
testIntersectionsWithRay
	| ray |
	point := 2 , 4.
	ray := GeomRay origin: 5 , 6 direction: 7 , 102.
	self assert: (point intersectionsWith: ray) isEmpty.

	ray := GeomRay origin: 1 , 3 direction: 0 , 2.
	self assert: (point intersectionsWith: ray) isEmpty.

	ray := GeomRay origin: 0 , 2 direction: 1 , 3.
	self assert: (point intersectionsWith: ray) hasCloseElementsTo: {(2 , 4)}.

	ray := GeomRay origin: 1 , 3 direction: 3 , 5.
	self assert: (point intersectionsWith: ray) hasCloseElementsTo: {(2 , 4)}.
	self assertCollection: (point intersectionsWith: ray) hasSameElements: (point intersectionsWithRay: ray)