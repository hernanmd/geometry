tests
testFociLocation
	ellipse := GeomEllipse center: 4 , -1 vertex: 9 , -1 coVertex: 4 , 2.
	self assert: ellipse fociLocation equals: 4