tests
testIntersectionsWithSegment
	| segment |
	segment := GeomSegment with: 0 , -1 with: 0 , 4.
	polygon := GeomPolygon vertices: {(1 , 4) . (6 , 4) . (6 , 1) . (3 , 2)}.
	self assert: (polygon intersectionsWith: segment) isEmpty.

	segment := GeomSegment with: 0 , -1 with: 1 , 3.
	self assert: (polygon intersectionsWith: segment) isEmpty.

	segment := GeomSegment with: 0 , 1 with: 5 , 6.
	self assert: (polygon intersectionsWith: segment) hasCloseElementsTo: {(2 , 3) . (3 , 4)}.
	self assertCollection: (polygon intersectionsWith: segment) hasSameElements: (polygon intersectionsWithSegment: segment)