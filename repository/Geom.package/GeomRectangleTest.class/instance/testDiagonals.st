tests
testDiagonals
	rectangle := GeomRectangle vertices: {(1 , 1) . (5 , 1) . (5 , 6) . (1 , 6)}.
	self assertCollection: rectangle diagonals hasSameElements: {(GeomSegment with: 1 , 6 with: 5 , 1) . (GeomSegment with: 5 , 6 with: 1 , 1)}.

	rectangle := GeomRectangle vertices: {(1 , 3) . (2 , 1) . (5 , 4) . (4 , 6)}.
	self assertCollection: rectangle diagonals hasSameElements: {(GeomSegment with: 1 , 3 with: 5 , 4) . (GeomSegment with: 4 , 6 with: 2 , 1)}.

	rectangle := GeomRectangle vertices: {(1 , 3) . (4 , 6) . (5 , 4) . (2 , 1)}.
	self assertCollection: rectangle diagonals hasSameElements: {(GeomSegment with: 1 , 3 with: 5 , 4) . (GeomSegment with: 4 , 6 with: 2 , 1)}