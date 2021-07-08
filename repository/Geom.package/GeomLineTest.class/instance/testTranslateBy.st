tests
testTranslateBy
	line := GeomLine through: -1 , -4 and: 1 , -2.
	line translateBy: #(1 -2) asGVector.
	self assert: (line isParallelTo: (GeomLine through: -1 , -4 and: 1 , -2)).
	self assert: (line includes: 0 , -6).
	self assert: (line includes: 3 , -3).
	self assert: (line includes: -1 , -7)