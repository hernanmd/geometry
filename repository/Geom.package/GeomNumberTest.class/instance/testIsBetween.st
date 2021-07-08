tests
testIsBetween
	self assert:(2 geomIsBetween: 2.2 and: 5 with: 0.2 )
		equals: true.
	
	self assert:( 1.8 geomIsBetween: 1.8 and: 5 with: 0.2 )
		equals: true.
		
	self assert:( 1.5 geomIsBetween: 1.8 and: 5 with: 0.2 )
		equals: true.
		
	self assert:( 1.5 geomIsBetween: 1.8 and: 5 with: 0.1 )
		equals: false.
		
	self assert:( 1.88 geomIsBetween: 1.5 and: 5 with: 0.2 )
		equals: true.