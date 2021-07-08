properties
area
	| semiperimeter|
	semiperimeter := self semiperimeter.

	^ (self geomEdges 
		inject: semiperimeter
		into: [ :subProduct :edge |
			(semiperimeter - edge length) * subProduct ]) sqrt