tests
testIntersectionsWithArc
	| arc |
	point := 3 , 3.
	arc := GArc center: 1 , 0 origin: 4 , 0 direction: 3 , 2.
	self assert: (point intersectionsWith: arc) isEmpty.

	arc := GArc center: -1 , 0 origin: 4 , 0 direction: 1 , 4.
	self assert: (point intersectionsWith: arc) hasCloseElementsTo: {(3 , 3)}.
	self assertCollection: (point intersectionsWith: arc) hasSameElements: (point intersectionsWithArc: arc)