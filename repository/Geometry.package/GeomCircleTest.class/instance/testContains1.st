as yet unclassified
testContains1
	self
		assert: ((GeomCircle  center: 2 @ 2 radius: 3) contains: 6 @ 2)
		equals: false