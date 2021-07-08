tests
testAngleWith
	| ray2 |
	ray := GeomRay origin: 0 , 0 direction: 5 , 24.
	ray2 := GeomRay origin: 3 , 4 direction: 4 , 7.
	self assert: (ray angleWith: ray2) equals: -0.11635 radians