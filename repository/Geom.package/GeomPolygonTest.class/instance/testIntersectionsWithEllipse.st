tests
testIntersectionsWithEllipse
	| ellipse |
	polygon := GeomPolygon vertices: {(5 , 1) . (9 , 1) . (8 , 0) . (6 , -1)}.
	ellipse := GeomEllipse center: 2,6 vertex: 7, 6 coVertex: 2,9 .
	self assert: (polygon intersectionsWith: ellipse) isEmpty.

	polygon := GeomPolygon vertices: {(1 , 4) . (6 , 4) . (6 , 1) . (3 , 2)}.
	self assert: (polygon intersectionsWith: ellipse) hasCloseElementsTo: {(2 , 3) . (5.7267799 , 4)}.
	self assertCollection: (polygon intersectionsWith: ellipse) hasSameElements: (polygon intersectionsWithEllipse: ellipse)