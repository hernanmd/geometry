tests
testIncludes
	self assert: ((GeomSegment with: 1 , 3 with: 3 , 0) includes: 1 , 3).
	self assert: ((GeomSegment with: 1 , 3 with: 3 , 0) includes: 3 , 0).
	self assert: ((GeomSegment with: -1 , 1 with: 1 , -1) includes: 0 , 0).
	self deny: ((GeomSegment with: 0 , 0 with: 12 , 9) includes: 13 , (39 / 4)).
	self assert: ((GeomSegment with: 0 , 0 with: 13 , (39 / 4)) includes: 12 , 9)