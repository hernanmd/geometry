tests
testEquals
	self assert: (GeomLine a: 1 b: 1 c: -13) equals: (GeomLine a: 6 b: 6 c: -78).
	self assert: (GeomLine a: 1 b: 1 c: -13) hash equals: (GeomLine a: 1 b: 1 c: -13) hash.
	self assert: (GeomLine a: 0 b: 1 c: -13) equals: (GeomLine a: 0 b: 6 c: -78).
	self deny: (GeomLine a: 1 b: 1 c: -13) = (GeomLine a: 1 b: 6 c: -78).
	self deny: (GeomLine a: 1 b: 1 c: -13) = (GeomLine a: 6 b: 6 c: -7).
	self assert: (GeomLine a: 1 b: 0 c: -13) equals: (GeomLine a: 6 b: 0 c: -78).
	self assert: (GeomLine a: 0 b: 1 c: 0) equals: (GeomLine a: 0 b: 6 c: 0).
	self assert: (GeomLine a: 1 b: 0 c: 0) equals: (GeomLine a: 1 b: 0 c: 0).
	self deny: (GeomLine a: 1 b: 1 c: -13) = (GeomLine a: 6 b: 6 c: 0).
	self assert: (GeomLine a: 0 b: 1 c: -13) equals: (GeomLine a: 0 b: 6 c: -78).
	self assert: (GeomLine a: -48.989794855663575 b: 48.98979485566357 c: 4.547473508864641e-13) equals: (GeomLine a: -138.58803762173304 b: 138.58803762173304 c: 1.8189894035458565e-12).
	self
		assert: (GeomSegment with: -24.494897427831784 , -24.494897427831795 with: 24.494897427831784 , 24.49489742783178) asGLine
		equals: (GeomSegment with: -99.30232333601874 , -99.30232333601876 with: 39.285714285714285 , 39.28571428571428) asGLine.
	self
		assert: (GeomSegment with: -24.494897427831784 , -24.494897427831795 with: 24.494897427831784 , 24.49489742783178) asGLine
		equals: (GeomSegment with: 24.494897427831784 , 24.49489742783178 with: -24.494897427831784 , -24.494897427831795) asGLine