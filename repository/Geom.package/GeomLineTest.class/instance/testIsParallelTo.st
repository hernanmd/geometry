tests
testIsParallelTo
	self deny: ((GeomLine a: 0 b: -3 c: 0.5) isParallelTo: (GeomLine a: -2 b: 0 c: 4)).
	self deny: ((GeomLine a: 0 b: -3 c: 0.5) isParallelTo: (GeomLine a: -2 b: 1 c: 4)).
	self assert: ((GeomLine a: 1 b: 2 c: 0.5) isParallelTo: (GeomLine a: 2 b: 4 c: 4)).
	self assert: ((GeomLine a: 0 b: 2 c: 0.5) isParallelTo: (GeomLine a: 0 b: 2 c: 0.5))