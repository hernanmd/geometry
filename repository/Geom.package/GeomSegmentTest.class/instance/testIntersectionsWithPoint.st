tests
testIntersectionsWithPoint
	| point |
	point := 2 , 4.
	segment := GeomSegment with: 5 , 6 with: 7 , 102.
	self assert: (segment intersectionsWith: point) isEmpty.

	segment := GeomSegment with: 1 , 3 with: 0 , 2.
	self assert: (segment intersectionsWith: point) isEmpty.

	segment := GeomSegment with: 1 , 3 with: 3 , 5.
	self assert: (segment intersectionsWith: point) hasCloseElementsTo: {(2 , 4)}.
	self assertCollection: (segment intersectionsWith: point) hasSameElements: (segment intersectionsWithPoint: point)