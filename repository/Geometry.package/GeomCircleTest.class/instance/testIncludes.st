tests
testIncludes
	circle := GeomCircle center: 2 , 2 radius: 3.
	self assert: (circle includes: 2 , 2).
	self deny: (circle includes: 6 , 2).

	circle := GeomCircle center: 30 , 30 radius: 20.
	self assert: (circle includes: 50 , 30).
	self assert: (circle includes: 10 , 30).
	self assert: (circle includes: 30 , 10).
	self assert: (circle includes: 30 , 30).

	circle := GeomCircle center: 0 , 0 radius: 31.62277660168381.
	self assert: (circle includes: -30 , -10).
	self assert: (circle includes: 10 , -30).
	self assert: (circle includes: 30 , 10).
	self deny: (circle includes: 30 , 30).
	self assert: (circle includes: 10 , 10).

	circle := GeomCircle center: 0 , 0 radius: 31.61277660168381.
	self deny: (circle includes: 30 , 10)