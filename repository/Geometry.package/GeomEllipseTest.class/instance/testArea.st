tests
testArea
	ellipse := GeomEllipse center: 5 , -1 vertex: 10 , -1 coVertex: 5 , 2.
	self assert: ellipse area =~ 47.123889