as yet unclassified
testEquel
self
	assert: ((GeomLine a:1 b:1 c: -13)= (GeomLine a:6 b:6 c: -78))
	equals: true.
self
	assert: ((GeomLine a:0 b:1 c: -13)= (GeomLine a:0 b:6 c: -78))
	equals: true.
self
	assert: ((GeomLine a:1 b:1 c: -13)= (GeomLine a:1 b:6 c: -78))
	equals: false.
self
	assert: ((GeomLine a:1 b:1 c: -13)= (GeomLine a:6 b:6 c: -7))
	equals: false.
self
	assert: ((GeomLine a:1 b:0 c: -13)= (GeomLine a:6 b:0 c: -78))
	equals: true.
self
	assert: ((GeomLine a:0 b:1 c: 0)= (GeomLine a:0 b:6 c: 0))
	equals: true.
self
	assert: ((GeomLine a:1 b:0 c: 0)= (GeomLine a:1 b:0 c: 0))
	equals: true.
