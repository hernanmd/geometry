as yet unclassified
testIntersect
self
	assert: ((GeomLine a: 2 b: -3 c: 0.5) intersect: (GeomLine a: 1 b: 1 c: -2))
	equals: 1.1 @ 0.9