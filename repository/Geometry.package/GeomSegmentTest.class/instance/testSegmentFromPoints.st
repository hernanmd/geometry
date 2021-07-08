tests
testSegmentFromPoints
	self assert: (1 , 2 geomSegment: 2 , 3) equals: (GeomSegment with: 1 , 2 with: 2 , 3)