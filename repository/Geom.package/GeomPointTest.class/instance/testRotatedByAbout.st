tests
testRotatedByAbout
	point := 5 , 5.
	self assert: (point rotatedBy: 90 degrees about: 3 , 3) =~ (1 , 5).
	self deny: (point rotatedBy: 90 degrees about: 3 , 3) == point