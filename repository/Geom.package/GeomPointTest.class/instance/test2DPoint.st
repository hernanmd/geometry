tests
test2DPoint
	point := GPoint x: 1 y: 2.
	self assert: point x equals: 1.
	self assert: point y equals: 2.
	
	point := GPoint x: -1 y: -2.
	self assert: point x equals: -1.
	self assert: point y equals: -2.
	
	point := GPoint coordinates: (G2DCoordinates x: 1 y: 2).
	self assert: point x equals: 1.
	self assert: point y equals: 2.
	
	point := (1 , 2).
	self assert: point x equals: 1.
	self assert: point y equals: 2.