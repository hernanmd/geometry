as yet unclassified
testBelowPoint1

self assert:((GeomSegment with:  -2 @ 4 with: 2 @ 4) belowPoint: 0 @ 5 ) 
	equals: true.
self assert:((GeomSegment with:  -2 @ 4 with: 2 @ 4) belowPoint: 0 @ -5 ) 
	equals: false.