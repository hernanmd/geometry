tests
testTranslateBy
	ellipse := GeomEllipse center: 4 , -1 vertex: 9 , -1 coVertex: 4 , 2.
	ellipse translateBy: {1 . 1} asGVector.
	self assert: ellipse center equals: 5 , 0.
	self assert: ellipse vertex equals: 10 , 0.
	self assert: ellipse coVertex equals: 5 , 3