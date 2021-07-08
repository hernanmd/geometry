tests
testPerimeter
	ellipse := GeomEllipse center: 2,6 vertex: 7, 6 coVertex: 2,9.
	self assert: ellipse perimeter =~ 25.32480