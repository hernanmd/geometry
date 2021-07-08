tests
testIntersectionsWithSegment
	| segment |
	segment := GeomSegment with: -2 , 0 with: -2 , 3.
	ray := GeomRay origin: 0 , 0 direction: 1 , 1.
	self assert: (ray intersectionsWith: segment) isEmpty.

	segment := GeomSegment with: 2 , 0 with: 2 , 3.
	self assert: (ray intersectionsWith: segment) hasCloseElementsTo: {(2 , 2)}.
	self assertCollection: (ray intersectionsWith: segment) hasSameElements: (ray intersectionsWithSegment: segment).

	ray := GeomRay origin: 1 , 1 direction: 0 , 0.
	self assert: (ray intersectionsWith: segment) isEmpty