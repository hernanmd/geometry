tests
testIntersectionsWithArc
	| arc |
	line := GeomLine through: 0 , 0 and: 1 , 1.
	arc := GArc center: 1 , 0 origin: 4 , 0 direction: 3 , 2.
	self assert: (line intersectionsWith: arc) isEmpty.

	arc := GArc center: -1 , 0 origin: 4 , 0 direction: 1 , 4.
	self assert: (line intersectionsWith: arc) hasCloseElementsTo: {(3 , 3)}.
	self assertCollection: (line intersectionsWith: arc) hasSameElements: (line intersectionsWithArc: arc)