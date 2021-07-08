as yet unclassified
testHasPoint
	self assert:((Rectangle origin:  1 @ 3 corner: 3 @ 0) geomHasPoint: 1 @ 3)
   		equals: true.
	self assert:((Rectangle origin:  1 @ 3 corner: 3 @ 0) geomHasPoint: 2 @ 1)
   		equals: true.
	self assert:((Rectangle origin:  1 @ 3 corner: 3 @ 0) geomHasPoint: 0 @ 0)
   		equals: false.