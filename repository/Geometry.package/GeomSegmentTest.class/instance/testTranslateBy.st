tests
testTranslateBy
	segment := GeomSegment with: -1 , -4 with: 1 , -2.
	segment translateBy: #(1 -2) asGVector.
	self assert: segment v1 equals: 0 , -6.
	self assert: segment v2 equals: 2 , -4