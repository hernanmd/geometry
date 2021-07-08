as yet unclassified
testPolygonOn
	self
		assert: (((GeomCircle  center: 1 @ 1 radius: 3) polygonOn: { -20 @ 10 ". 10 @ 40" . 40 @ 10 . 10 @ -20 }) at:1 )v1
		equals: -20 @ 10