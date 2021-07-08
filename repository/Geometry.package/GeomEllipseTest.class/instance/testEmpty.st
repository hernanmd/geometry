tests
testEmpty
	self should: [ GeomEllipse center: 0,0 vertex: 0,0 coVertex: 0,0. ] raise: Error.
	self should: [ GeomEllipse center: 10,10 vertex: 10,10 coVertex: 10,10. ] raise: Error.
	self should: [ GeomEllipse center: 0,0 vertex: 0,0 coVertex: 0,3. ] raise: Error.