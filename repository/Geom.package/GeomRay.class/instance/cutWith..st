properties
cutWith: frame
| coll |
coll := OrderedCollection new.
frame geomEdges
	collect: [ :edge | edge geomIntersectionPointWithRay: self ]
	thenDo: [ :p |
		(p notNil and: [ coll noneSatisfy: [ :p2 | p2 =~ p ] ])
			ifTrue: [ coll add: p ] ] .
coll isEmpty ifTrue:[^ nil]
				 ifFalse:[coll size = 2 
					ifTrue:  [ ^GeomSegment with: coll first with: coll second ]
					ifFalse: [ ^GeomSegment with: coll first with: self origin ] ]