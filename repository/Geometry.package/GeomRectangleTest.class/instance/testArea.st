tests
testArea
	self assert: (GeomRectangle origin: 0 , 0 corner: 5 , 5) area equals: 25.
	self assert: (GeomRectangle origin: 2 , 3 corner: 10 , 8) area equals: 40.
	self assert: (GeomRectangle origin: 5 , 5 corner: 6 , 6) area equals: 1.
	self assert: (GeomRectangle origin: -1 , -2 corner: 2 , 1) area equals: 9