as yet unclassified
testIntersect
	self
		assert: ((GeomSegment with: -1 @ -1 with: 1 @ 1) = (GeomSegment with: 1 @ 1 with: -1 @ -1))
		equals: true.
	self
		assert: ((GeomSegment with: -1 @ -1 with: 1 @ 1) = (GeomSegment with: -1 @ 1 with: -1 @ 1))
		equals: false.	