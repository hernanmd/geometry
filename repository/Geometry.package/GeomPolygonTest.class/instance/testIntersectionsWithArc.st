tests
testIntersectionsWithArc
	| arc |
	polygon := GeomPolygon vertices: {(1 , 2) . (1 , 5) . (-3 , 5) . (-3 , 0)}.
	arc := GArc center: 1 , 0 origin: 4 , 0 direction: 3 , 2.
	self assert: (polygon intersectionsWith: arc) isEmpty.

	arc := GArc center: 1 , 0 origin: 4 , 0 direction: -1 , 2.
	self assert: (polygon intersectionsWith: arc) hasCloseElementsTo: {(1 , 3)}.
	self assertCollection: (polygon intersectionsWith: arc) hasSameElements: (polygon intersectionsWithArc: arc)