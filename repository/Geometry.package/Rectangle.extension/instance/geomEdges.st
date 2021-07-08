*Geometry
geomEdges
	^ { 
		GeomSegment with: (self origin ) with: (self origin x @ self corner y). 
		GeomSegment with: (self origin x @ self corner y) with: (self corner).
		GeomSegment with: (self corner ) with: (self corner x @ self origin y).
 		GeomSegment with: (self corner x @ self origin y) with: (self origin).
}
