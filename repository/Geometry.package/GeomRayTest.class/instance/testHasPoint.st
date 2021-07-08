as yet unclassified
testHasPoint
	self
		assert: ((GeomRay origin: 100 @ 100 direction: 80 @ 110) geomHasPoint: 120 @ 90)
		equals: false.
	self
		assert: ((GeomRay origin: 100 @ 100 direction: 120 @ 90) geomHasPoint: 120 @ 90)
		equals: true.
	self
		assert: ((GeomRay origin: 100 @ 100 direction: 120 @ 90) geomHasPoint: 100 @ 100)
		equals: true.
	self
		assert: ((GeomRay origin: 100 @ 100 direction: 110 @ 110) geomHasPoint: 150 @ 150)
		equals: true.	