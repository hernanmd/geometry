as yet unclassified
testConvexHullOn
self
	assert: ((GeomPolygon convexHullOn:{ 0 @ -20 . 0 @ 10 . 30 @ -30 . 40 @ 0 . -10 @ 0 . 40 @ -20 } ) geomVertices )
	equals:{ -10 @ 0 . 0 @ -20 . 30 @ -30 . 40 @ -20 . 40 @ 0 . 0 @ 10 } asOrderedCollection