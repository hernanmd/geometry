as yet unclassified
testCutWith
	self
		assert: ((GeomRay origin: -10 @ 10 direction: 20 @ 30) cutWith: (Rectangle origin: -15 @ 0 corner: 15 @ 15 )) v1
		equals: (-5/2)@15.
	self
		assert: ((GeomRay origin: -10 @ 10 direction: 20 @ 30) cutWith: (Rectangle origin: -15 @ 0 corner: 15 @ 15 )) v2
		equals: -10 @ 10.	
	self
		assert: ((GeomRay origin: -30 @ 0 direction: 20 @ 30) cutWith: (Rectangle origin: -15 @ 0 corner: 15 @ 15 )) v1 
		equals: (-15 @ 9) .	
	self
		assert: ((GeomRay origin: -30 @ 0 direction: 20 @ 30) cutWith: (Rectangle origin: -15 @ 0 corner: 15 @ 15 )) v2 
		equals: (-5 @ 15).
	self
		assert: ((GeomRay origin: -30 @ 30 direction: 20 @ 30) cutWith: (Rectangle origin: -15 @ 0 corner: 15 @ 15 ))
		equals: nil.	