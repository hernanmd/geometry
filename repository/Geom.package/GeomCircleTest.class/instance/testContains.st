as yet unclassified
testContains
	self
		assert: ((GeomCircle  center: 2 @ 2 radius: 3) contains: 2 @ 2)
		equals: true