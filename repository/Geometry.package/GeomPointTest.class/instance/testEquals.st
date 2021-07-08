tests
testEquals
	self assert: (1 , 2) equals: (1 , 2).
	self deny: (2 , 4) = (1 , 2).
	self assert: (1 , 2) hash equals: (1 , 2) hash.
	self deny: (2 , 4) hash = (1 , 2) hash