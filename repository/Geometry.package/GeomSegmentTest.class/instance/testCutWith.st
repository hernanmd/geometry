as yet unclassified
testCutWith
	self
		assert: ((GeomSegment with: -10 @ 10 with: 20 @ 30) cutWith: (Rectangle origin: -15 @ 0 corner: 15 @ 15 )) v1
		equals: (-5/2)@15.
	self
		assert: ((GeomSegment with: -10 @ 10 with: 20 @ 30) cutWith: (Rectangle origin: -15 @ 0 corner: 15 @ 15 )) v2
		equals: -10 @ 10.	
	self
		assert: ((GeomSegment with: -30 @ 0 with: 20 @ 30) cutWith: (Rectangle origin: -15 @ 0 corner: 15 @ 15 )) v1 
		equals: (-15 @ 9) .	
	self
		assert: ((GeomSegment with: -30 @ 0 with: 20 @ 30) cutWith: (Rectangle origin: -15 @ 0 corner: 15 @ 15 )) v2 
		equals: (-5 @ 15).
	self
		assert: ((GeomSegment with: -30 @ 30 with: 20 @ 30) cutWith: (Rectangle origin: -15 @ 0 corner: 15 @ 15 ))
		equals: nil.	