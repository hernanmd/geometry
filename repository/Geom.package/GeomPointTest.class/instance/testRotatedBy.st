tests
testRotatedBy
	point := 5 , 5.
	self assert: (point rotatedBy: 90 degrees) =~ (-5 , 5).
	self deny: (point rotatedBy: 90 degrees) == point