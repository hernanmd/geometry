tests
testIntersectionsWithPolygon
	| polygon |
	ray := GeomRay origin: 0 , -1 direction: 0 , 4.
	polygon := GeomPolygon vertices: {(1 , 4) . (6 , 4) . (6 , 1) . (3 , 2)}.
	self assert: (ray intersectionsWith: polygon) isEmpty.

	ray := GeomRay origin: 1 , 3 direction: 0 , -1.
	self assert: (ray intersectionsWith: polygon) isEmpty.

	ray := GeomRay origin: 0 , 1 direction: 5 , 6.
	self assert: (ray intersectionsWith: polygon) hasCloseElementsTo: {(2 , 3) . (3 , 4)}.
	self assertCollection: (ray intersectionsWith: polygon) hasSameElements: (ray intersectionsWithPolygon: polygon)