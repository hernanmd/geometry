tests
testIntersectionsWithLine
	| line |
	point := 2 , 4.
	line := GeomLine through: 5 , 6 and: 7 , 102.
	self assert: (point intersectionsWith: line) isEmpty.

	line := GeomLine through: 1 , 3 and: 3 , 5.
	self assert: (point intersectionsWith: line) hasCloseElementsTo: {(2 , 4)}.
	self assertCollection: (point intersectionsWith: line) hasSameElements: (point intersectionsWithLine: line)