tests
testIntersectionsWithPoint
	| point |
	point := 2 , 4.
	polygon := GeomPolygon vertices: {(1 , 5) . (6 , 4) . (6 , 1) . (3 , 2)}.
	self assert: (polygon intersectionsWith: point) isEmpty.

	polygon := GeomPolygon vertices: {(1 , 4) . (6 , 4) . (6 , 1) . (3 , 2)}.
	self assert: (polygon intersectionsWith: point) hasCloseElementsTo: {(2 , 4)}.
	self assertCollection: (polygon intersectionsWith: point) hasSameElements: (polygon intersectionsWithPoint: point)