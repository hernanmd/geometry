tests
testVertices
	self should: [ GeomRectangle vertices: {(1 , 1) . (2 , 2) . (3 , 5)} ] raise: GeometryError.
	self should: [ GeomRectangle vertices: {(0 , 0) . (2 , 0) . (2 , -2) . (-1 , -2)} ] raise: GeometryError