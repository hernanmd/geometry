tests
testIntersectionsWithEllipse
	| ellipse |
	"Test without intersection"
	ellipse := GeomEllipse center: 2 , 5 vertex: 2 , 9 coVertex: 5 , 5.
	line := (GeomLine a: -1 b: 1 c: -20).
	self assert: (line intersectionsWith: ellipse) isEmpty.
	
	"Test with an ellipse centered at the origin and a line going through the origin"
	ellipse := GeomEllipse center: 0 , 0 vertex: 0 , 3 coVertex: 2 , 0.
	line := GeomLine a: -1 b: 1 c: 0.
	self assert: (line intersectionsWith: ellipse) hasCloseElementsTo: {(1.6641 , 1.6641) . (-1.6641 , -1.6641)}.

	"Test with an ellipse centered at the origin and a line not going through the origin"
	line := GeomLine a: -1 b: 1 c: -1.
	self assert: (line intersectionsWith: ellipse) hasCloseElementsTo: {(0.9065084 , 1.9065084) . (-2.291123 , -1.291123)}.

	"Test with an ellipse not centered at the origin and a line not going through the origin"
	ellipse := GeomEllipse center: 2 , 5 vertex: 2 , 9 coVertex: 5 , 5.
	line := GeomLine a: -2 b: 1 c: -8.
	self assert: (line intersectionsWith: ellipse) hasCloseElementsTo: {(-0.263181454 , 7.473637091) . (-1.873804847 , 4.252390306)}.
	self assertCollection: (line intersectionsWith: ellipse) hasSameElements: (line intersectionsWithEllipse: ellipse).
	
	"Test with tangent"
	ellipse := GeomEllipse center: 2 , 5 vertex: 2 , 9 coVertex: 5 , 5.
	line := GeomLine a: -1 b: 1 c: -8.
	self assert: (line intersectionsWith: ellipse) hasCloseElementsTo: {(-6 / 5 , (34 / 5))}