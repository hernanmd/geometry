as yet unclassified
testEquel1
	self
		assert: (GeomCircle  center: 1 @ 1 radius: 3) = (GeomCircle  center: 1.002 @ 1.009 radius: 3)
		equals: false
	