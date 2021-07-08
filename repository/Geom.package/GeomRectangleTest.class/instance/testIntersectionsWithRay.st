tests
testIntersectionsWithRay
	self assert: ((GeomRectangle origin: 1 , 3 corner: 3 , 0) intersectionsWithRay: (GeomRay origin: 2 , 1 direction: 4 , 1)) hasCloseElementsTo: {(3 , 1)}