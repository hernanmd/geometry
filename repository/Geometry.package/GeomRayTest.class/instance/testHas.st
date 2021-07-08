as yet unclassified
testHas

	self
		assert: (( GeomRay origin: 0 @ 0 direction: 12 @ 9 ) geomHasPoint: (13@(39/4)) ) 
		equals: true.
	self
		assert: (( GeomRay origin: 0 @ 0 direction: 12 @ 9 )asSegment has: (13@(39/4)) ) 
		equals: false.
	self
		assert: (( GeomRay origin: 0 @ 0 direction: (13@(39/4))) geomHasPoint: 12 @ 9  ) 
		equals: true.
	self
		assert: (( GeomRay origin: 0 @ 0 direction: (13@(39/4))) asSegment has: 12 @ 9  ) 
		equals: true.
	
