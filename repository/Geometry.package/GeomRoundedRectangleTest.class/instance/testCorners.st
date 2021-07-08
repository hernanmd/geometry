as yet unclassified
testCorners
	| rect |
	rect := GeomRoundedRectangle
		rectangle: (GeomRectangle origin: -40 @ -20 corner: 40 @ 20)
		borderRadius: 10.
	self
		assert: rect corners
		equals:
			(Array
				with:
					(GeomCircleArc
						center: 30 @ -10
						radius: 10
						startAngle: 0
						endAngle: Float halfPi)
				with:
					(GeomCircleArc
						center: -30 @ -10
						radius: 10
						startAngle: Float halfPi
						endAngle: Float pi)
				with:
					(GeomCircleArc
						center: -30 @ 10
						radius: 10
						startAngle: Float pi
						endAngle: Float threePi / 2)
				with:
					(GeomCircleArc
						center: 30 @ 10
						radius: 10
						startAngle: Float threePi / 2
						endAngle: Float twoPi))