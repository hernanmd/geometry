as yet unclassified
testContains2
	self
		assert: ((GeomCircle  center: 30 @ 30 radius: 20) contains: 50 @ 30)
		equals: false.
	self
		assert: ((GeomCircle  center: 30 @ 30 radius: 20) contains: 10 @ 30)
		equals: false.
	self
		assert: ((GeomCircle  center: 30 @ 30 radius: 20) contains: 30 @ 10)
		equals: false.
	self
		assert: ((GeomCircle  center: 30 @ 30 radius: 20) contains: 30 @ 30)
		equals: true