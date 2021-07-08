tests
testFitInExtent
	ellipse := GeomEllipse center: 10 , 10 vertex: 20 , 10 coVertex: 10 , 15.
	ellipse fitInExtent: #(100 100) asGVector.
	self assert: ellipse center equals: 10 , 10.
	self assert: ellipse vertex equals: 60 , 10.
	self assert: ellipse coVertex equals: 10 , 60.

	ellipse := GeomEllipse center: 10 , 10 vertex: 20 , 10 coVertex: 10 , 15.
	ellipse fitInExtent: #(100 60) asGVector.
	self assert: ellipse center equals: 10 , 10.
	self assert: ellipse vertex equals: 60 , 10.
	self assert: ellipse coVertex equals: 10 , 40