tests
testIncludes
	self assert: (rectangle includes: 11 , 11).
	self assert: (rectangle includes: 10 , 10).
	self deny: (rectangle includes: 9 , 9).
	self deny: (rectangle includes: 21 , 21).
	self deny: (rectangle includes: 15 , 21).
	self deny: (rectangle includes: 9 , 15).
	self assert: ((GeomRectangle origin: 1 , 3 corner: 3 , 0) includes: 2 , 1).
	self deny: ((GeomRectangle origin: 1 , 3 corner: 3 , 0) includes: 0 , 0)