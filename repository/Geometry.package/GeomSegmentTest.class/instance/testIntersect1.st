as yet unclassified
testIntersect1
	self
		assert: ((GeomSegment with: -1 @ -1 with: 1 @ 1) intersect:(GeomSegment with: -3 @ 3 with: -1 @ 1))
		equals: nil