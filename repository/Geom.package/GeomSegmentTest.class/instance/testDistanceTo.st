tests
testDistanceTo
	self assert: ((GeomSegment with: -2 , 4 with: 2 , 4) distanceTo: -2 , 4) equals: 0.
	self assert: ((GeomSegment with: -2 , 4 with: 2 , 4) distanceTo: 2 , 4) equals: 0.
	self assert: ((GeomSegment with: 477 / 11 , (149 / 2) with: -56.73661227723915 , 143.3189209406019) distanceTo: 36819 / 1022 , (82249 / 1022)) =~ 0.7697676365059569.
	self assert: ((GeomSegment with: 838 / 41 , (4811 / 82) with: 57583 / 914 , (56095 / 914)) distanceTo: 57.998905906959145 , 61.11074842728413) =~ (2 * 0.02757564283371476)