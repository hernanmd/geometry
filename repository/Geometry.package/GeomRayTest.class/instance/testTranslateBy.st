tests
testTranslateBy
	ray := GeomRay origin: -1 , -4 direction: 1 , -2.
	ray translateBy: #(1 -2) asGVector.
	self assert: ray initialPoint equals: 0 , -6