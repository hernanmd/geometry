as yet unclassified
testEquel1
self
	assert: ((GeomLine a:1 b:1 c: -13)= (GeomLine a:6 b:6 c: 0))
	equals: false.
self
	assert: ((GeomLine a:0 b:1 c: -13)= (GeomLine a:0 b:6 c: -78))
	equals: true.

	