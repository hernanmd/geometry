as yet unclassified
testMultiply
	self
		assert: (( GeomRay origin: 0 @ 0 direction: -12 @ 16 ) * ( GeomRay origin: 0 @ 0 direction: 12 @ 9)  )
		equals: 0.
		