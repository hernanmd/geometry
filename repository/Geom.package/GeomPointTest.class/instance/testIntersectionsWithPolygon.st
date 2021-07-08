tests
testIntersectionsWithPolygon
	| polygon |
	point := 2 , 4.
	polygon := GeomPolygon vertices: {(1 , 5) . (6 , 4) . (6 , 1) . (3 , 2)}.
	self assert: (point intersectionsWith: polygon) isEmpty.

	polygon := GeomPolygon vertices: {(1 , 4) . (6 , 4) . (6 , 1) . (3 , 2)}.
	self assert: (point intersectionsWith: polygon) hasCloseElementsTo: {(2 , 4)}.
	self assertCollection: (point intersectionsWith: polygon) hasSameElements: (point intersectionsWithPolygon: polygon)