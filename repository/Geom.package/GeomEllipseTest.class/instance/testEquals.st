as yet unclassified
testEquals
	self
		assert: (GeomEllipse center: 10 @ 10 a: 5 b: 10)
		equals: (GeomEllipse center: 10 @ 10 a: 5 b: 10).
	self
		assert: (GeomEllipse center: 10 @ 10 a: 5 b: 10) hash
		equals: (GeomEllipse center: 10 @ 10 a: 5 b: 10) hash