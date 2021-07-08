tests
testAddition
	| vector |
	point := (1, 2).
	vector := GVector x: 2 y: 3.
	self assert: point + vector equals: (3, 5).
	self assert: point equals: (1, 2)