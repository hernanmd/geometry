instance creation
center: aCenter radius: aRadius startAngle: aStart endAngle: anEnd
	^ self new
		setCircle: (GeomCircle center: aCenter radius: aRadius) startAngle: aStart endAngle: anEnd;
		yourself