tests
testEquals
	| ray2 |
	ray := GeomRay origin: 0 , 0 direction: 1 , 1.
	ray2 := GeomRay origin: 0 , 0 direction: 2 , 2.
	self assert: ray equals: ray2.
	self assert: ray hash equals: ray2 hash.

	ray2 := GeomRay origin: 0,0 direction: 2, 3.
	self deny: ray = ray2.
	self deny: ray hash = ray2 hash