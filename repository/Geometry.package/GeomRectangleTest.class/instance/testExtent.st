tests
testExtent
	rectangle := GeomRectangle vertices: {(1 , 1) . (5 , 1) . (5 , 6) . (1 , 6)}.
	self assert: rectangle extent equals: #(4 5) asGVector.

	rectangle := GeomRectangle vertices: {(1 , 3) . (2 , 1) . (5 , 4) . (4 , 6)}.
	self assert: rectangle extent equals: #(4 5) asGVector.

	rectangle := GeomRectangle vertices: {(1 , 3) . (4 , 6) . (5 , 4) . (2 , 1)}.
	self assert: rectangle extent equals: #(4 5) asGVector