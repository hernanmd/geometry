tests
testEquals
	| segm1 segm2 |
	self flag: #pharo6. "Use #deny:equals: when Pharo 7 will be the minimum requirement"
	segm1 := GeomSegment with: 1 , 2 with: 3 , 4.
	segm2 := GeomSegment with: 0 , 0 with: 3 , 3.
	self deny: segm1 = segm2.
	self deny: segm1 asGLine = segm2 asGLine.
	self deny: segm1 hash = segm2 hash.
	
	segm1 := GeomSegment with: 1 , 1 with: 3 , 3.
	segm2 := GeomSegment with: 0 , 0 with: 3 , 3.
	self assert: segm1 asGLine equals: segm2 asGLine.
	self deny: segm1 = segm2.
	
	segm1 := GeomSegment with: -24.494897427831784 , -24.494897427831795 with: 24.494897427831784 , 24.49489742783178.
	segm2 := GeomSegment with: 24.494897427831784 , 24.49489742783178 with: -24.494897427831784 , -24.494897427831795.
	self assert: segm1 asGLine equals: segm2 asGLine .
	
	segm1 := GeomSegment with: -24.494897427831784 , -24.494897427831795 with: 24.494897427831784 , 24.49489742783178.
	segm2 := GeomSegment with: 24.494897427831784 , 24.49489742783178 with: -24.494897427831784 , -24.494897427831795.
	self assert: segm1 equals: segm2.
	self assert: segm1 hash equals: segm2 hash.
	
	self assert: (GeomSegment with: -1 , -1 with: 1 , 1) equals: (GeomSegment with: 1 , 1 with: -1 , -1).
	self deny: (GeomSegment with: -1 , -1 with: 1 , 1) = (GeomSegment with: -1 , 1 with: -1 , 1).