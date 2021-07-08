tests
testIntersectionsWithPolygon
	| polygon2 |
	polygon := GeomPolygon vertices: {(1 , 4) . (6 , 4) . (6 , 1) . (3 , 2)}.
	polygon2 := GeomPolygon vertices: {(-3 , 5) . (0 , 5) . (1 , 2) . (-1 , 4)}.
	self assert: (polygon intersectionsWith: polygon2) isEmpty.

	polygon2 := GeomPolygon vertices: {(5 , 1) . (8 , 1) . (8 , 0) . (6 , -1)}.
	self assert: (polygon intersectionsWith: polygon2) hasCloseElementsTo: {(6 , 1)}.

	polygon2 := GeomPolygon vertices: {(5 , 6) . (8 , 7) . (8 , 3) . (5 , 3)}.
	self assert: (polygon intersectionsWith: polygon2) hasCloseElementsTo: {(6 , 3) . (5 , 4)}.
	self assertCollection: (polygon intersectionsWith: polygon2) hasSameElements: (polygon intersectionsWithPolygon: polygon2)