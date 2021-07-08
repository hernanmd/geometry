tests
testIntersectionsWithRay
	| ray |
	segment := GeomSegment with: -2 , 0 with: -2 , 3.
	ray := GeomRay origin: 0 , 0 direction: 1 , 1.
	self assert: (segment intersectionsWithRay: ray) isEmpty.

	segment := GeomSegment with: 2 , 0 with: 2 , 3.
	self assert: (segment intersectionsWith: ray) hasCloseElementsTo: {(2 , 2)}.
	self assertCollection: (segment intersectionsWith: ray) hasSameElements: (segment intersectionsWithRay: ray).

	ray := GeomRay origin: 1 , 1 direction: 0 , 0.
	self assert: (segment intersectionsWith: ray) isEmpty