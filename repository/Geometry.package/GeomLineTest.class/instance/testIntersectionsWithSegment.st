tests
testIntersectionsWithSegment
	| segment |
	line := GeomLine through: -5 , 1 and: -3 , 3.
	segment := GeomSegment with: -7 , 2  with: -4, 3 .
	self assert: (line intersectionsWith: segment) isEmpty.
	
	segment := GeomSegment with: -6 , 4  with: -3, 1 .
	self assert: (line intersectionsWith: segment) hasCloseElementsTo: {(-4 , 2)}.
	self assertCollection: (line intersectionsWith: segment) hasSameElements: (line intersectionsWithSegment: segment)