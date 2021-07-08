tests
testIntersectionsWithRay
	| ray2 |
	ray2 := GeomRay origin: -2 , 0 direction: -2 , 3.
	ray := GeomRay origin: 0 , 0 direction: 1 , 1.
	self assert: (ray2 intersectionsWithRay: ray) isEmpty.

	ray2 := GeomRay origin: 2 , 3 direction: 2 , 0.
	self assert: (ray2 intersectionsWith: ray) hasCloseElementsTo: {(2 , 2)}.
	self assertCollection: (ray2 intersectionsWith: ray) hasSameElements: (ray2 intersectionsWithRay: ray).

	ray := GeomRay origin: 1 , 1 direction: 0 , 0.
	self assert: (ray2 intersectionsWith: ray) isEmpty