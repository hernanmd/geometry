properties
cutWith: frame
| coll |
coll := OrderedCollection new.
frame geomEdges
	collect: [ :edge | edge intersectionPointWithSegment: self ]
	thenDo: [ :p |
		(p notNil and: [ coll noneSatisfy: [ :p2 | p2 =~ p ] ])
			ifTrue: [ coll add: p ] ].
coll ifEmpty: [ "self halt".
	(frame geomHasPoint: self v1)
		ifTrue:  [ ^ self ]
		ifFalse: [ ^ nil ] ].

coll size = 2 
	ifTrue: [ ^ GeomSegment with: coll first with: coll second ].

(frame geomHasPoint: self v1) 
	ifTrue:  [ ^ GeomSegment with: coll first with: self v1 ] 
	ifFalse: [ ^ GeomSegment with: coll first with: self v2 ]
							
	
