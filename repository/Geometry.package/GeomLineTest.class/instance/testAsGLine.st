tests
testAsGLine
	line := GeomLine through: 1 , 2 and: 3 , 5.
	self assert: line asGLine equals: line