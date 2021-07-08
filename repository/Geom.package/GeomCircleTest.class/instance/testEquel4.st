as yet unclassified
testEquel4
	self
		assert: (GeomCircle  center: 1 @ 1 radius: 3) = (GeomCircle  center: 1 @ 1 radius: 34)
		equals: false
	