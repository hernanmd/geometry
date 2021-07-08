as yet unclassified
testEncompassingRectangle
	self
		assert: (GeomEllipse center: 2 @ 2 a: 3 b: 2) encompassingRectangle
		equals: (-1 @ 0 corner: 5 @ 4)