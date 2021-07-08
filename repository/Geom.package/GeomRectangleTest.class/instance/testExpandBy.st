tests
testExpandBy
	rectangle := GeomRectangle vertices: {(-1 , -1) . (-1 , 1) . (1 , 1) . (1 , -1)}.
	rectangle expandBy: 0.5.
	self assert: rectangle equals: (GeomRectangle vertices: {(-1.5 , -1.5) . (-1.5 , 1.5) . (1.5 , 1.5) . (1.5 , -1.5)}).

	rectangle := GeomRectangle vertices: {(-2 , -1) . (-2 , 1) . (2 , 1) . (2 , -1)}.
	rectangle expandBy: 0.5.
	self assert: rectangle equals: (GeomRectangle vertices: {(-2.5 , -1.5) . (-2.5 , 1.5) . (2.5 , 1.5) . (2.5 , -1.5)})