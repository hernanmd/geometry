as yet unclassified
testBoundaryContainsWhich
	self
		assert: ((GeomCircle  center: 2 @ 2 radius: 3) boundaryContainsWhichOf: { 2 @ 2 . 5 @ 2 })
		equals: {5 @ 2}