tests
testCenter
	| translated1 translated2 |
	rectangle := GeomRectangle vertices: {(1 , 1) . (5 , 1) . (5 , 6) . (1 , 6)}.
	self assert: rectangle center equals: 3, (7/2).

	rectangle := GeomRectangle vertices: {(1 , 3) . (2 , 1) . (5 , 4) . (4 , 6)}.
	self assert: rectangle center equals: 3, (7/2).

	rectangle := GeomRectangle vertices: {(1 , 3) . (4 , 6) . (5 , 4) . (2 , 1)}.
	self assert: rectangle center equals: 3, (7/2).
	
	rectangle := GeomRectangle vertices: {(1 , 3) . (4 , 6) . (5 , 4) . (2 , 1)}.
	translated1 := rectangle translateBy: #(1 2) asGVector.
	rectangle := GeomRectangle vertices: {(1 , 3) . (4 , 6) . (5 , 4) . (2 , 1)}.
	translated2 := rectangle translateBy: #(1 2) asGVector.
	self assert: translated1 center = translated2 center description: 'the center is translated with the rectangle'