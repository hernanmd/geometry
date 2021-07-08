as yet unclassified
testEdges
self
	assert: ((GeomPolygon convexHullOn:{ 0 @ -20 . 0 @ 10 . 30 @ -30 . 40 @ 0 . -10 @ 0 . 40 @ -20 } ) geomEdges first )
	equals: (GeomSegment with: -10 @ 0 with: 0 @ -20).
	
self
	assert: ((GeomPolygon convexHullOn:{ 0 @ -20 . 0 @ 10 . 30 @ -30 . 40 @ 0 . -10 @ 0 . 40 @ -20 } ) geomEdges second )
	equals: (GeomSegment with: 0 @ -20 with: 30 @ -30).
	
self
	assert: ((GeomPolygon convexHullOn:{ 0 @ -20 . 0 @ 10 . 30 @ -30 . 40 @ 0 . -10 @ 0 . 40 @ -20 } ) geomEdges last )
	equals: (GeomSegment with:  -10 @ 0 with: 0 @ 10).
	