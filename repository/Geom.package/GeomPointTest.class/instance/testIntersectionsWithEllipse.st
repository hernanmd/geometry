tests
testIntersectionsWithEllipse
	| ellipse |
	point := 2 , 4.
	ellipse := GeomEllipse center: 1 , 3 vertex: 5 , 6 coVertex: 3 , 4.
	self assert: (point intersectionsWith: ellipse) isEmpty.

	ellipse := GeomEllipse center: 2 , 1 vertex: 5 , 1 coVertex: 2 , 4.
	self assert: (point intersectionsWith: ellipse) hasCloseElementsTo: {(2 , 4)}.
	self assertCollection: (point intersectionsWith: ellipse) hasSameElements: (point intersectionsWithEllipse: ellipse)