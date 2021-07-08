tests
testDistanceTo
	self assert: (0 , 0 distanceTo: 0 , 0) equals: 0.
	self assert: (0 , 0 distanceTo: 0 , 5) equals: 5.
	self assert: (5 , 0 distanceTo: 0 , 0) equals: 5.
	self assert: (3 , 0 distanceTo: 0 , 4) equals: 5.
	self assert: (5 , 0 distanceTo: 2 , 4) equals: 5.
	self deny: (0 , 0 distanceTo: 0 , 0) = 1