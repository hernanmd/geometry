tests
testIncludes
	self deny: ((GeomSegment with: 17674 / 229 , (14582 / 229) with: 76.82622578909061 , 64.97050543967634) asGLine includes: -28206 / 397 , (50382 / 397)).
	self assert: ((GeomLine through: 1 , 3 and: 3 , 0) includes: 1 , 3).
	self assert: ((GeomLine through: 1 , 3 and: 3 , 0) includes: 3 , 0).
	self assert: ((GeomLine through: -1 , 1 and: 1 , -1) includes: 0 , 0).
	self assert: ((GeomLine through: 0 , 0 and: 12 , 9) includes: 13 , (39 / 4)).
	self assert: ((GeomLine through: 0 , 0 and: 13 , (39 / 4)) includes: 12 , 9).
	self deny: ((GeomLine through: 0 , 0 and: 1 , 1) includes: 1 , 2).
	self deny: ((GeomLine through: 0 , 0 and: 1 , 1) includes: 1 , 1.01).
	self deny: ((GeomLine through: 0 , 0 and: 1 , 1) includes: 2 , 2.001)