tests
testIntersectionsWithEllipse
	| ellipse |
	segment := GeomSegment with: 0 , -1 with: 1 , 4.
	ellipse := GeomEllipse center: 3.5 , 2 vertex: 6 , 2 coVertex: 3.5 , 4.
	self assert: (segment intersectionsWith: ellipse) isEmpty.

	segment := GeomSegment with: 0 , 1 with: 2 , 3.
	self assert: (segment intersectionsWith: ellipse) hasCloseElementsTo: {(1 , 2)}.

	segment := GeomSegment with: 0 , 1 with: 5 , 6.
	self assert: (segment intersectionsWith: ellipse) hasCloseElementsTo: {(1 , 2) . (2.951219 , 3.951219)}.
	self assertCollection: (segment intersectionsWith: ellipse) hasSameElements: (segment intersectionsWithEllipse: ellipse)