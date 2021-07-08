tests
testIntersectionsWithArc
	"Because we need the intersection between two ellipse to do that. Until we have that, we declare the test as expected failure"
	<expectedFailure>
	| arc |
	ellipse := GeomEllipse center: -4 , 3 vertex: 1 , 3 coVertex: -4 , 7.
	arc := GArc center: 1 , 0 origin: 4 , 0 direction: 3 , 2.
	self assert: (ellipse intersectionsWith: arc) isEmpty.

	arc := GArc center: 1 , 0 origin: 4 , 0 direction: -1 , 2.
	self assert: (ellipse intersectionsWith: arc) hasCloseElementsTo: {(1 , 3)}.
	self assertCollection: (ellipse intersectionsWith: arc) hasSameElements: (ellipse intersectionsWithArc: arc)