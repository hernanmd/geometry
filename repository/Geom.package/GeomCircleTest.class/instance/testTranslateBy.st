tests
testTranslateBy
	circle := GeomCircle center: 3,4 radius: 2.
	circle translateBy: #(1 -2) asGVector.
	self assert: circle center equals: 4, 2.
	self assert: circle radius equals: 2