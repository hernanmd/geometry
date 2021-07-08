as yet unclassified
testLength
	self
		assert: (( GeomRay origin: 0 @ 0 direction: -12 @ 16 ) length )
		equals: 400 sqrt.
	self
		assert: (( GeomRay origin: 0 @ 0 direction: 12 @ 9) length )
		equals: 225 sqrt.	