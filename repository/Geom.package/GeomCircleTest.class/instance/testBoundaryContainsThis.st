as yet unclassified
testBoundaryContainsThis
	self
		assert: ((GeomCircle  center: 2 @ 2 radius: 3) boundaryContainsThis: { 2 @ 2 . 5 @ 2 })
		equals: true