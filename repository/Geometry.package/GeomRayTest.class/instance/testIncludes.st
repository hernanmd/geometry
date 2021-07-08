tests
testIncludes
	self deny: ((GeomRay origin: 100 , 100 direction: 80 , 110) includes: 120 , 90).
	self assert: ((GeomRay origin: 100 , 100 direction: 120 , 90) includes: 120 , 90).
	self assert: ((GeomRay origin: 100 , 100 direction: 120 , 90) includes: 100 , 100).
	self assert: ((GeomRay origin: 100 , 100 direction: 110 , 110) includes: 150 , 150).
	self assert: ((GeomRay origin: 0 , 0 direction: 12 , 9) includes: 13 , (39 / 4)).
	self assert: ((GeomRay origin: 28 , 30 direction: 9 , 1) includes: -4.97992 , -20.33777)