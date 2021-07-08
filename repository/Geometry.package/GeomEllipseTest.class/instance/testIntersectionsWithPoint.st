tests
testIntersectionsWithPoint
	| point |
	point := 2 , 4.
	ellipse := GeomEllipse center: 1 , 3 vertex: 5 , 6 coVertex: 3 , 4.
	self assert: (ellipse intersectionsWith: point) isEmpty.

	ellipse := GeomEllipse center: 2 , 1 vertex: 5 , 1 coVertex: 2 , 4.
	self assert: (ellipse intersectionsWith: point) hasCloseElementsTo: {(2 , 4)}.
	self assertCollection: (ellipse intersectionsWith: point) hasSameElements: (ellipse intersectionsWithPoint: point)