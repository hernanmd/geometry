tests
testIntersectionsWithLine
	| line |
	line := GeomLine through: -5 , 1 and: -3 , 3.
	segment := GeomSegment with: -7 , 2  with: -4, 3 .
	self assert: (segment intersectionsWith: line) isEmpty.
	
	segment := GeomSegment with: -6 , 4  with: -3, 1 .
	self assert: (segment intersectionsWith: line) hasCloseElementsTo: {(-4 , 2)}.
	self assertCollection: (segment intersectionsWith: line) hasSameElements: (segment intersectionsWithLine: line)