as yet unclassified
testEquel2
	self
		assert: (GeomCircle  center: 1 @ 1 radius: 3) = (GeomCircle  center: 1 @ 1 radius: 2.999999999)
		equals: true
	