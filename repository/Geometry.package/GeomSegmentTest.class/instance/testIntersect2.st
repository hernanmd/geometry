as yet unclassified
testIntersect2
	self
		assert: ((GeomSegment with: -1 @ -1 with: 1 @ 1) intersect:(GeomSegment with: -3 @ 3 with: 2 @ -2))
		equals: (0@0)