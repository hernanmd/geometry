as yet unclassified
testExtendBy1
	self skip.
	self
		assert: (( GeomRay origin: 0 @ 0 direction: -4 @ 2) extendBy: 1 ) direction
		equals: ( -5 @ ( 5/2 )).

	self
		assert: (( GeomRay origin: 0 @ 0 direction: 4 @ -2) extendBy: 1 ) direction
		equals: ( 5 @ ( -5/2 )).