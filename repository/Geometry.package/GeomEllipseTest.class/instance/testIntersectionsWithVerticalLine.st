tests
testIntersectionsWithVerticalLine
	| line |
	ellipse := GeomEllipse center: 3.5 , 2 vertex: 6 , 2 coVertex: 3.5 , 4.
	line := GeomLine a: 1 b: 0 c: -2.
	self assert: (ellipse intersectionsWithVerticalLine: line) hasCloseElementsTo: {(2 , 0.3999999) . (2 , 3.6)}.
	self assertCollection: (ellipse intersectionsWithLine: line) hasSameElements: (ellipse intersectionsWithVerticalLine: line)