tests
testIntersectionsWithLine
	| intersections |
	intersections := (GeomRectangle origin: 1 , 3 corner: 3 , 0) intersectionsWithLine: (GeomSegment with: 0 , 3 with: 4 , 1) asGLine.
	self assert: intersections hasCloseElementsTo: {(1 , (5 / 2)) . (3 , (3 / 2))}