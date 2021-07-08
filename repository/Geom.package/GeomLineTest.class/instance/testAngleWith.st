tests
testAngleWith
	| line2 |
	line := GeomLine through: 0 , 0 and: 5 , 24.
	line2 := GeomLine through: 3 , 4 and: 4 , 7.
	self assert: (line angleWith: line2) equals: -0.11635 radians 