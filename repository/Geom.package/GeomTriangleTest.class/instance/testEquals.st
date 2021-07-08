tests
testEquals
	triangle := GeomTriangle with: 0 , 0 with: 2 , 0 with: 0 , 2.
	self assert: triangle equals: (GeomTriangle with: 0 , 0 with: 2 , 0 with: 0 , 2).
	self assert: triangle hash equals: (GeomTriangle with: 0 , 0 with: 2 , 0 with: 0 , 2) hash.
	self deny: triangle = (GeomTriangle with: 1 , 0 with: 2 , 0 with: 0 , 2).
	self deny: triangle hash = (GeomTriangle with: 1 , 0 with: 2 , 0 with: 0 , 2) hash