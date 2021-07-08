tests
testIntersectionsWithArc
	| arc |
	segment := GeomSegment with: 0 , 0 with: 1 , 1.
	arc := GArc center: 1 , 0 origin: 4 , 0 direction: 3 , 2.
	self assert: (segment intersectionsWith: arc) isEmpty.

	arc := GArc center: -1 , 0 origin: 4 , 0 direction: 1 , 4.
	self assert: (segment intersectionsWith: arc) isEmpty.

	segment := GeomSegment with: 0 , 0 with: 4 , 4.
	self assert: (segment intersectionsWith: arc) hasCloseElementsTo: {(3 , 3)}.
	self assertCollection: (segment intersectionsWith: arc) hasSameElements: (segment intersectionsWithArc: arc)