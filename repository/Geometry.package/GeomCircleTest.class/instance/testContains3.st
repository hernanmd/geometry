as yet unclassified
testContains3
	self
		assert: ((GeomCircle  center: 0 @ 0 radius: 31.62277660168381) contains: -30 @ -10)
		equals: false.
	self
		assert: ((GeomCircle  center:  0 @ 0 radius: 31.62277660168381) contains: 10 @ -30)
		equals: false.
	self
		assert: ((GeomCircle  center: 0 @ 0 radius: 31.62277660168381) contains: 30 @ 10)
		equals: false.
	self
		assert: ((GeomCircle  center: 0 @ 0 radius: 31.62277660168381) contains: 30 @ 30)
		equals: false.
	self
		assert: ((GeomCircle  center: 0 @ 0 radius: 31.62277660168381) contains: 10 @ 10)
		equals: true