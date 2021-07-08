tests
testEquals
	polygon := GeomPolygon vertices: {(1 , 1) . (2 , 3) . (5 , 8) . (2 , 5)}.
	self assert: polygon equals: (GeomPolygon vertices: {(1 , 1) . (2 , 3) . (5 , 8) . (2 , 5)}).
	self assert: polygon hash equals: (GeomPolygon vertices: {(1 , 1) . (2 , 3) . (5 , 8) . (2 , 5)}) hash.
	self deny: polygon = (GeomPolygon vertices: {(1 , 1) . (2 , 4) . (5 , 8) . (2 , 5)}).
	self deny: polygon hash = (GeomPolygon vertices: {(1 , 1) . (2 , 4) . (5 , 8) . (2 , 5)}) hash