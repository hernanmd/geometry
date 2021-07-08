tests
testIntersectionsWithSegment
	| segment |
	segment := GeomSegment with: 0 , -1 with: 1 , 4.
	ellipse := GeomEllipse center: 3.5 , 2 vertex: 6 , 2 coVertex: 3.5 , 4.
	self assert: (ellipse intersectionsWith: segment) isEmpty.

	segment := GeomSegment with: 0 , 1 with: 2 , 3.
	self assert: (ellipse intersectionsWith: segment) hasCloseElementsTo: {(1 , 2)}.

	segment := GeomSegment with: 0 , 1 with: 5 , 6.
	self assert: (ellipse intersectionsWith: segment) hasCloseElementsTo: {(1 , 2) . (2.951219 , 3.951219)}.
	self assertCollection: (ellipse intersectionsWith: segment) hasSameElements: (ellipse intersectionsWithSegment: segment).
	
	segment := GeomSegment with: -3, 5 with: -3, 0.
	ellipse := GeomCircle center: 1, 0 radius: 3.
	self assert: (ellipse intersectionsWith: segment) isEmpty