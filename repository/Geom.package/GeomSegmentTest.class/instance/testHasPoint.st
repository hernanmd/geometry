as yet unclassified
testHasPoint

	self assert:((GeomSegment with:  1 @ 3 with: 3 @ 0) geomHasPoint: 1 @ 3)
   		equals: true.
	self assert:((GeomSegment with:  1 @ 3 with: 3 @ 0) geomHasPoint: 3 @ 0)
   		equals: true.
	self assert:((GeomSegment with:  -1 @ 1 with: 1 @ -1) geomHasPoint: 0 @ 0)
   		equals: true.