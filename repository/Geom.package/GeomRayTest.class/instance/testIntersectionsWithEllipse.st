tests
testIntersectionsWithEllipse
	| ellipse |
	ray := GeomRay origin: 0 , -1 direction: 1 , 4.
	ellipse := GeomEllipse center: 3.5 , 2 vertex: 6 , 2 coVertex: 3.5 , 4.
	self assert: (ray intersectionsWith: ellipse) isEmpty.

	ray := GeomRay origin: 2 , 3 direction: 0 , 1.
	self assert: (ray intersectionsWith: ellipse) hasCloseElementsTo: {(1 , 2)}.

	ray := GeomRay origin: 0 , 1 direction: 5 , 6.
	self assert: (ray intersectionsWith: ellipse) hasCloseElementsTo: {(1 , 2) . (2.951219 , 3.951219)}.
	self assertCollection: (ray intersectionsWith: ellipse) hasSameElements: (ray intersectionsWithEllipse: ellipse)