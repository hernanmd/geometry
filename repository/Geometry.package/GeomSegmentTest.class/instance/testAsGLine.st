tests
testAsGLine
	| line |
	line := (GeomSegment with: 1 , 3 with: 3 , 0) asGLine.
	self assert: line a equals: 3.
	self assert: line b equals: 2.
	self assert: line c equals: -9.
	
	line := (GeomSegment with: -2 , 4 with: 2 , 4) asGLine.
	self assert: line a equals: 0.
	self assert: line b equals: 1.
	self assert: line c equals: -4.
	
	line := (GeomSegment with: 1 , 3 with: 1 , 0) asGLine.
	self assert: line a equals: 1.
	self assert: line b equals: 0.
	self assert: line c equals: -1