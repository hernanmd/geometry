tests
testIntersectionsWithSegment
	| segment |
	point := 2 , 4.
	segment := GeomSegment with: 5 , 6 with: 7 , 102.
	self assert: (point intersectionsWith: segment) isEmpty.

	segment := GeomSegment with: 1 , 3 with: 0 , 2.
	self assert: (point intersectionsWith: segment) isEmpty.

	segment := GeomSegment with: 1 , 3 with: 3 , 5.
	self assert: (point intersectionsWith: segment) hasCloseElementsTo: {(2 , 4)}.
	self assertCollection: (point intersectionsWith: segment) hasSameElements: (point intersectionsWithSegment: segment)