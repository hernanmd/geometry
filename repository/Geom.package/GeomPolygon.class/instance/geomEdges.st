accessing
geomEdges
	| firstVert prevVert |
	edges := OrderedCollection new.	
	firstVert := vertices at: 1.
	prevVert := firstVert.
	vertices allButFirstDo: [ :curVert |
		edges add: (GeomSegment with: prevVert with: curVert).
		prevVert := curVert ].
	edges add: (GeomSegment with: (vertices at: (vertices size)) with: firstVert).
	^ edges