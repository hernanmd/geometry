accessing
edgesByOpositeVertex

	^ edgesByOpositeVertex ifNil: [
		edgesByOpositeVertex := {
			v1 -> (GeomSegment with: v2 with: v3) .
			v2 -> (GeomSegment with: v3 with: v1) .
	   		v3 -> (GeomSegment with: v1 with: v2)  } asDictionary ]