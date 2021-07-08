as yet unclassified
testHasOnBoundary
	self assert:((Rectangle origin:  1 @ 3 corner: 3 @ 0) geomHasOnBoundary: 1 @ 3)
   		equals: true.
	self assert:((Rectangle origin:  1 @ 3 corner: 3 @ 0) geomHasOnBoundary: 2 @ 3)
   		equals: true.
	self assert:((Rectangle origin:  1 @ 3 corner: 3 @ 0) geomHasOnBoundary: 0 @ 0)
   		equals: false.