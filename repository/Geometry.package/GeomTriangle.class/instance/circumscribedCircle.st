figures
circumscribedCircle
	| center radius |
	center := self geomEdges first perpendicularBisector intersect: self geomEdges last perpendicularBisector.
	center isNil ifTrue: [ ^nil ] ifFalse: [ radius := (v1 dist: v2) * (v2 dist: v3) * (v3 dist: v1) / (4 * self area).
		^GeomCircle center: center radius: radius ] 
	
	"^ GCircle
		center:
			(self edges first perpendicularBisector intersect:
			 self edges last perpendicularBisector)
		radius: (v1 dist: v2) * (v2 dist: v3) * (v3 dist: v1) / (4 * self area)"