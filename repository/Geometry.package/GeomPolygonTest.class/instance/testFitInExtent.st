tests
testFitInExtent
	polygon := GeomPolygon vertices: {(10 , 10) . (-10 , 10) . (-10 , -10)}.
	polygon fitInExtent: {20 . 20} asGVector.
	self
		assert: polygon geomVertices
		equals: {(10 , 10) . (-10 , 10) . (-10 , -10)}.
	polygon fitInExtent: {40 . 40} asGVector.
	self
		assert: polygon geomVertices
		equals: {(20 , 20) . (-20 , 20) . (-20 , -20)}.
	polygon fitInExtent: {10 . 10} asGVector.
	self
		assert: polygon geomVertices
		equals: {(5 , 5) . (-5 , 5) . (-5 , -5)}