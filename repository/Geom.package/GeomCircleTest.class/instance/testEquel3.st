as yet unclassified
testEquel3
	self
		assert: (GeomCircle  center: 1 @ 1 radius: 3) = (GeomCircle  center: 1.00000001 @ 0.9999991 radius: 2.999999999)
		equals: true
	