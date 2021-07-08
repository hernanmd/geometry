tests
testIntersectionsWithLine
	| line |
	line := GeomLine through: 0 , 1 and: 5 , 6.
	polygon := GeomPolygon vertices: {(3 , 3) . (6 , 4) . (6 , 1) . (3 , 2)}.
	self assert: (polygon intersectionsWith: line) isEmpty.

	polygon := GeomPolygon vertices: {(1 , 4) . (6 , 4) . (6 , 1) . (3 , 2)}.
	self assert: (polygon intersectionsWith: line) hasCloseElementsTo: {(3 , 4) . (2 , 3)}.
	self assertCollection: (polygon intersectionsWith: line) hasSameElements: (polygon intersectionsWithLine: line).

	polygon := GeomPolygon vertices: {(2 , 3) . (6 , 4) . (6 , 1) . (3 , 2)}.
	self assert: (polygon intersectionsWith: line) hasCloseElementsTo: {(2 , 3)}