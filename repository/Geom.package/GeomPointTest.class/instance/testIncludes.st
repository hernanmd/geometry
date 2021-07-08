tests
testIncludes
	point := 2 , 4.
	self deny: (point includes: 3, 4).
	self assert: (point includes: 2, 4)