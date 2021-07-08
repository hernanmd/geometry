tests
testRotateByAbout
	point := 5 , 5.
	point rotateBy: 90 degrees about: 3 , 3.
	self assert: point =~ (1 , 5).
	point rotateBy: 90 degrees about: 3 , 3.
	self assert: point =~ (1 , 1)