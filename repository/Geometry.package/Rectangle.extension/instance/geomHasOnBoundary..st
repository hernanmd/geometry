*Geometry
geomHasOnBoundary: point
| a |
	a := self geomEdges select: [:edge | a := edge geomHasPoint: point].
	^a isNotEmpty