tests
testIntersectionsWithSegment
	| segment2 |
	segment := GeomSegment with: -1 , -1 with: 1 , 1.
	segment2 := GeomSegment with: -3 , 3 with: -1 , 1.
	self assert: (segment intersectionsWith: segment2) isEmpty.

	segment := GeomSegment with: -3 , 1 with: -4 , 0.
	self assert: (segment intersectionsWith: segment2) isEmpty.

	segment := GeomSegment with: 0 , 1 with: 3 , 1.
	segment2 := GeomSegment with: 0 , 3 with: 4 , -1.
	self assert: (segment intersectionsWith: segment2) hasCloseElementsTo: {(2 , 1)}.
	self assertCollection: (segment intersectionsWith: segment2) hasSameElements: (segment intersectionsWithSegment: segment2).

	segment2 := GeomSegment with: 0 , 1 with: 2 , 8.
	self assert: (segment intersectionsWith: segment2) hasCloseElementsTo: {(0 , 1)}