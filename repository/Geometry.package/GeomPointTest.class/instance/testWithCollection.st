tests
testWithCollection
	self assert: (GPoint withCollection: #(1 2)) equals: 1 , 2.
	self should: [ GPoint withCollection: #() ] raise: GeometryError