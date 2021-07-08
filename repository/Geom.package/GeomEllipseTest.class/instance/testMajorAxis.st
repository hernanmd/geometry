tests
testMajorAxis
	ellipse := GeomEllipse center: 10 , 10 vertex: 7.1715 , 10 coVertex: 10 , 8.
	self assert: (ellipse) majorAxis equals: (GeomSegment with: 7.1715 , 10 with: 12.8285 , 10)