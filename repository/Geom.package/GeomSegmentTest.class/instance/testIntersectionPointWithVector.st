as yet unclassified
testIntersectionPointWithVector
	self
		assert: ((GeomSegment with: 2 @ 0 with: 2 @ 3) geomIntersectionPointWithRay: (GeomRay origin: 0 @ 0  direction:  3 @ 2))
		equals: 2 @ (4/3).
	self
		assert: ((GeomSegment with: 2 @ 0 with: 2 @ 3) geomIntersectionPointWithRay: (GeomRay origin: 0 @ 0  direction:  1 @ 1))
		equals: 2 @ 2.	
	self
		assert: ((GeomSegment with: -2 @ 0 with: -2 @ 3) geomIntersectionPointWithRay: (GeomRay origin: 0 @ 0  direction:  1 @ 1))
		equals: nil.
	self
		assert: ((GeomSegment with: 0 @ 0 with: 0 @ 3) geomIntersectionPointWithRay: (GeomRay origin: 0 @ 0  direction:  1 @ 1))
		equals: 0 @ 0.