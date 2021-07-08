tests
testFoci
	| foci |
	foci := (GeomEllipse center: 10 , 10 vertex: 7.171575 , 10 coVertex: 10 , 8) foci.
	self assert: foci hasCloseElementsTo: {(8 , 10) . (12 , 10)}