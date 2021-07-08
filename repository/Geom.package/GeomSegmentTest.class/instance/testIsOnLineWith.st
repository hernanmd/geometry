as yet unclassified
testIsOnLineWith
	self assert:((GeomSegment with:  -2 @ 4 with: 2 @ 4) isOnLineWith:  (GeomSegment with:  -2 @ 4 with: 2 @ 4) ) 
		equals: true.
	self assert:((GeomSegment with:  -4 @ 4 with: 4 @ 4) isOnLineWith:  (GeomSegment with:  -2 @ 4 with: 2 @ 4) ) 
		equals: true.
	self assert:((GeomSegment with:  -2 @ 3 with: 2 @ 4) isOnLineWith:  (GeomSegment with:  -2 @ 4 with: 2 @ 4) ) 
		equals: false.
	self assert:((GeomSegment with:  -2 @ 4 with: 2 @ 4) isOnLineWith:  (GeomSegment with:  -2 @ 2 with: 2 @ 2) ) 
		equals: false.