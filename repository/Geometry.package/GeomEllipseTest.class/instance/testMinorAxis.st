tests
testMinorAxis
	ellipse := GeomEllipse center: 10 , 10 vertex: 7.1715 , 10 coVertex: 10 , 8.
	self assert: ellipse minorAxis equals: (GeomSegment with: 10 , 8 with: 10 , 12)