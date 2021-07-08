tests
testIntersectionsWithPoint
	| point |
	point := 2 , 4.
	ray := GeomRay origin: 5 , 6 direction: 7 , 102.
	self assert: (ray intersectionsWith: point) isEmpty.

	ray := GeomRay origin: 1 , 3 direction: 0 , 2.
	self assert: (ray intersectionsWith: point) isEmpty.

	ray := GeomRay origin: 0 , 2 direction: 1 , 3.
	self assert: (ray intersectionsWith: point) hasCloseElementsTo: {(2 , 4)}.

	ray := GeomRay origin: 1 , 3 direction: 3 , 5.
	self assert: (ray intersectionsWith: point) hasCloseElementsTo: {(2 , 4)}.
	self assertCollection: (ray intersectionsWith: point) hasSameElements: (ray intersectionsWithPoint: point)