tests
testIntersectionsWithRay
	| ray |
	ray := GeomRay origin: 0 , -1 direction: 1 , 4.
	ellipse := GeomEllipse center: 3.5 , 2 vertex: 6 , 2 coVertex: 3.5 , 4.
	self assert: (ellipse intersectionsWith: ray) isEmpty.

	ray := GeomRay origin: 2 , 3 direction: 0 , 1.
	self assert: (ellipse intersectionsWith: ray) hasCloseElementsTo: {(1 , 2)}.

	ray := GeomRay origin: 0 , 1 direction: 5 , 6.
	self assert: (ellipse intersectionsWith: ray) hasCloseElementsTo: {(1 , 2) . (2.951219 , 3.951219)}.
	self assertCollection: (ellipse intersectionsWith: ray) hasSameElements: (ellipse intersectionsWithRay: ray)