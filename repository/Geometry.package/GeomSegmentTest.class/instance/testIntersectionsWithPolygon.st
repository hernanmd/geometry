tests
testIntersectionsWithPolygon
	| polygon |
	segment := GeomSegment with: 0 , -1 with: 0 , 4.
	polygon := GeomPolygon vertices: {(1 , 4) . (6 , 4) . (6 , 1) . (3 , 2)}.
	self assert: (segment intersectionsWith: polygon) isEmpty.

	segment := GeomSegment with: 0 , -1 with: 1 , 3.
	self assert: (segment intersectionsWith: polygon) isEmpty.

	segment := GeomSegment with: 0 , 1 with: 5 , 6.
	self assert: (segment intersectionsWith: polygon) hasCloseElementsTo: {(2 , 3) . (3 , 4)}.
	self assertCollection: (segment intersectionsWith: polygon) hasSameElements: (segment intersectionsWithPolygon: polygon)