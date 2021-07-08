as yet unclassified
testIntersectionPointWithRay
 	self assert:((Rectangle origin:  1 @ 3 corner: 3 @ 0) geomIntersectionPointWithRay: ((GeomRay origin: 2@1 direction: 4@1 )))
		  equals: {3@1}