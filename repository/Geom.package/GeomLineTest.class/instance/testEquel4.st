as yet unclassified
testEquel4
self
	assert: ( ( 
	( GeomSegment with: ( -24.494897427831784 @ -24.494897427831795 ) with: ( 24.494897427831784 @ 24.49489742783178 ) ) asLine
	= (
	( GeomSegment with: ( 24.494897427831784 @ 24.49489742783178 ) with: ( -24.494897427831784 @ -24.494897427831795 ) ) asLine )
	) )
	equals: true.
