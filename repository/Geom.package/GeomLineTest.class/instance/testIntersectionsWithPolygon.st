tests
testIntersectionsWithPolygon
	| polygon |
	line := GeomLine through: 0 , 1 and: 5 , 6.
	polygon := GeomPolygon vertices: {(3 , 3) . (6 , 4) . (6 , 1) . (3 , 2)}.
	self assert: (line intersectionsWith: polygon) isEmpty.

	polygon := GeomPolygon vertices: {(1 , 4) . (6 , 4) . (6 , 1) . (3 , 2)}.
	self assert: (line intersectionsWith: polygon) hasCloseElementsTo: {(3 , 4) . (2 , 3)}.
	self assertCollection: (line intersectionsWith: polygon) hasSameElements: (line intersectionsWithPolygon: polygon).

	polygon := GeomPolygon vertices: {(2 , 3) . (6 , 4) . (6 , 1) . (3 , 2)}.
	self assert: (line intersectionsWith: polygon) hasCloseElementsTo: {(2 , 3)}