tests
testAngleWith
	| segment2 |
	segment := GeomSegment with: 0 , 0 with: 5 , 24.
	segment2 := GeomSegment with: 3 , 4 with: 4 , 7.
	self assert: (segment angleWith: segment2) equals: -0.11635 radians