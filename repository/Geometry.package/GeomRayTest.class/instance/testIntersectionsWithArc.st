tests
testIntersectionsWithArc
	| arc |
	ray := GeomRay origin: 0 , 0 direction: 1 , 1.
	arc := GArc center: 1 , 0 origin: 4 , 0 direction: 3 , 2.
	self assert: (ray intersectionsWith: arc) isEmpty.

	arc := GArc center: -1 , 0 origin: 4 , 0 direction: 1 , 4.
	self assert: (ray flipped intersectionsWith: arc) isEmpty.

	self assert: (ray intersectionsWith: arc) hasCloseElementsTo: {(3 , 3)}.
	self assertCollection: (ray intersectionsWith: arc) hasSameElements: (ray intersectionsWithArc: arc)