tests
testEquals
	circle := GeomCircle center: 1 , 1 radius: 3.
	self assert: circle equals: (GeomCircle center: 1 , 1 radius: 3).
	self assert: circle hash equals: (GeomCircle center: 1 , 1 radius: 3) hash.
	self deny: circle = (GeomCircle center: 1.002 , 1.009 radius: 3).
	self deny: circle hash = (GeomCircle center: 1.002 , 1.009 radius: 3) hash.
	self assert: circle equals: (GeomCircle center: 1 , 1 radius: 2.999999999).
	self assert: circle equals: (GeomCircle center: 1.00000001 , 0.9999991 radius: 2.999999999).
	self deny: circle = (GeomCircle center: 1 , 1 radius: 34).
	circle := GeomCircle center: 1.4 , 1 radius: 3.
	self deny: circle = (GeomCircle center: 1 , 1 radius: 34)