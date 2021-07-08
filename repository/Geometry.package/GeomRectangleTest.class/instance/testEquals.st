tests
testEquals
	rectangle := GeomRectangle origin: 0 , 0 corner: 5 , 5.
	self assert: rectangle equals: (GeomRectangle origin: 0 , 0 corner: 5 , 5).
	self assert: rectangle hash equals: (GeomRectangle origin: 0 , 0 corner: 5 , 5) hash.
	self deny: rectangle = (GeomRectangle origin: 1 , 0 corner: 5 , 5).
	self deny: rectangle hash = (GeomRectangle origin: 1 , 0 corner: 5 , 5) hash