tests
testIntersectionsWithRay
	| ray |
	ray := GeomRay origin: 0 , -1 direction: 0 , 4.
	polygon := GeomPolygon vertices: {(1 , 4) . (6 , 4) . (6 , 1) . (3 , 2)}.
	self assert: (polygon intersectionsWith: ray) isEmpty.

	ray := GeomRay origin: 1 , 3 direction: 0 , -1.
	self assert: (polygon intersectionsWith: ray) isEmpty.

	ray := GeomRay origin: 0 , 1 direction: 5 , 6.
	self assert: (polygon intersectionsWith: ray) hasCloseElementsTo: {(2 , 3) . (3 , 4)}.
	self assertCollection: (polygon intersectionsWith: ray) hasSameElements: (polygon intersectionsWithRay: ray)