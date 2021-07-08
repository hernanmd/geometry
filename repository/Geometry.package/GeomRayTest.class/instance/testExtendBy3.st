as yet unclassified
testExtendBy3

	self
		assert: 
	 ((( GeomRay origin: 0 @ 0 direction: 12 @ 9 ) extendBy: 1 ) asLine = (( GeomRay origin: 0 @ 0 direction: 12 @ 9 ) extendBy: 5 ) asLine)
	equals: true.
	
self
		assert: 
	 ((( GeomRay origin: 0 @ 0 direction: 12 @ 9 ) extendBy: 1 ) asLine ~= (( GeomRay origin: 0 @ 0 direction: 12 @ 9 ) extendBy: 5 ) asLine)
	equals: false.