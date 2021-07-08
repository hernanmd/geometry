tests
testTranslateBy
	| vector |
	point := (1, 2).
	vector := GVector x: 2 y: 3.
	point translateBy: vector.
	self assert: point equals: (3, 5).
	point translateBy: vector.
	self assert: point equals: (5 , 8)