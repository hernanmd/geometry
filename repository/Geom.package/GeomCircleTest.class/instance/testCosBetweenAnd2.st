as yet unclassified
testCosBetweenAnd2
	self
		assert: ((GeomCircle  center: 0@0 radius: 15) cosBetween: 15 @ 0 and: 0 @ 15 )
		equals: 0