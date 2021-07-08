as yet unclassified
testSideWhichHas

self assert:((Rectangle origin:  1 @ 3 corner: 3 @ 0) geomSideWhichHas: 1 @ 2.5)
	equals: (GeomSegment with: 1 @ 3 with: 1 @ 0)  