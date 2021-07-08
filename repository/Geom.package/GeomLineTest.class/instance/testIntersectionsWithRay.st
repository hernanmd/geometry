tests
testIntersectionsWithRay
	| ray |
	line := GeomLine through: -5 , 1 and: -3 , 3.	
	ray := GeomRay origin: -5 , 3  direction: -7, 5 .
	self assert: (line intersectionsWith: ray) isEmpty.
	
	ray := GeomRay origin: -7 , 5  direction: -5, 3 .
	self assert: (line intersectionsWith: ray) hasCloseElementsTo: {(-4 , 2)}.
	self assertCollection: (line intersectionsWith: ray) hasSameElements: (line intersectionsWithRay: ray)