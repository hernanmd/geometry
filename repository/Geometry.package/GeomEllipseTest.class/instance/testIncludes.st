tests
testIncludes
	ellipse := (GeomEllipse center: 4 , 1 vertex: 6 , 1 coVertex: 4 , 2).
	self assert: (ellipse includes: 4, 1).
	self assert: (ellipse includes: 6, 1).
	self assert: (ellipse includes: 4, 2).
	self assert: (ellipse includes: 3, 1).
	self deny: (ellipse includes: 2.1, 0.1).
	self deny: (ellipse includes: 3, 0.13).
	self assert: (ellipse includes: 3, 0.15).