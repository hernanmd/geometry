as yet unclassified
testParallelTo
self
	assert: ((GeomLine a: 0 b: -3 c: 0.5) parallelTo: (GeomLine a: -2 b: 0 c: 4))
	equals: false.
self
	assert: ((GeomLine a: 0 b: -3 c: 0.5) parallelTo: (GeomLine a: -2 b: 1 c: 4))
	equals: false.
self
	assert: ((GeomLine a: 1 b: 2 c: 0.5) parallelTo: (GeomLine a: 2 b: 4 c: 4))
	equals: true.
self
	assert: ((GeomLine a: 0 b: 2 c: 0.5) parallelTo: (GeomLine a: 0 b: 2 c: 0.5))
	equals: true.