as yet unclassified
testEncompasingRectangle
self
	assert: (GeomPolygon newVertices:{ 0 @ -20 . 0 @ 10 . 30 @ -30 . 40 @ 0 . -10 @ 0 . 40 @ -20 }) encompassingRectangle 
	equals: (Rectangle left: -10  right:40  top: 10 bottom: -30)