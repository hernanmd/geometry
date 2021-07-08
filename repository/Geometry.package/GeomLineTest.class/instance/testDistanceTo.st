tests
testDistanceTo
	self assert: ((GeomLine a: 1 b: 0 c: -7) distanceTo: 7 , 0) equals: 0.
	self assert: ((GeomLine a: 1 b: 0 c: -7) distanceTo: 7 , 7) equals: 0.
	self assert: ((GeomLine a: 1 b: 0 c: -7) distanceTo: 0 , 0) equals: 7