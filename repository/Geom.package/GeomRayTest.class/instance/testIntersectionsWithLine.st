tests
testIntersectionsWithLine
	| line |
	line := GeomLine through: -5 , 1 and: -3 , 3.	
	ray := GeomRay origin: -5 , 3  direction: -7, 5 .
	self assert: (ray intersectionsWith: line) isEmpty.
	
	ray := GeomRay origin: -7 , 5  direction: -5, 3 .
	self assert: (ray intersectionsWith: line) hasCloseElementsTo: {(-4 , 2)}.
	self assertCollection: (ray intersectionsWith: line) hasSameElements: (ray intersectionsWithLine: line)