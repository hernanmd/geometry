tests
testIntersectionsWithPoint
	| point |
	point := 2 , 4.
	line := GeomLine through: 5 , 6 and: 7 , 102.
	self assert: (line intersectionsWith: point) isEmpty.

	line := GeomLine through: 1 , 3 and: 3 , 5.
	self assert: (line intersectionsWith: point) hasCloseElementsTo: {(2 , 4)}.
	self assertCollection: (line intersectionsWith: point) hasSameElements: (line intersectionsWithPoint: point)