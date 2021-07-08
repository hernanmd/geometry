tests
testRotateBy
	point := 5 , 5.
	point rotateBy: 90 degrees.
	self assert: point =~ (-5 , 5).
	point rotateBy: 90 degrees.
	self assert: point =~ (-5 , -5)