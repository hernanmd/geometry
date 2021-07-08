tests
testCopy
	| pointCopy |
	point := (1, 2).
	pointCopy := point copy.
	self assert: point equals: pointCopy.
	point x: 2.
	self deny: point = pointCopy.
	self deny: point == pointCopy