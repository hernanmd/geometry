tests
testEncompassingRectangle
	self
		assert:
			(GeomPolygon
				vertices:
					{(0 , -20) . (0 , 10) . (30 , -30) . (40 , 0) . (-10 , 0).
					(40 , -20)}) encompassingRectangle
		equals:
			(GeomRectangle
				left: -10
				right: 40
				top: 10
				bottom: -30)