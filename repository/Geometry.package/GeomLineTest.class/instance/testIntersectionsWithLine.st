tests
testIntersectionsWithLine
	| line2 |
	line := GeomLine through: 0 , 0 and: 1 , 1.
	line2 := GeomLine through: 3 , 3 and: 5 , 5.
	self assert: (line intersectionsWith: line2) isEmpty.

	line := GeomLine a: 2 b: -3 c: 0.5.
	line2 := GeomLine a: 1 b: 1 c: -2.
	self assert: (line intersectionsWith: line2) hasCloseElementsTo: {(1.1 , 0.9)}.

	line2 := GeomLine a: -2 b: -2 c: 4.
	self assert: (line intersectionsWith: line2) hasCloseElementsTo: {(1.1 , 0.9)}.
	self assertCollection: (line intersectionsWith: line2) hasSameElements: (line intersectionsWithLine: line2)