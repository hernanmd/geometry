util
sortedIntersectionsBetween: shape and: line
	^ (shape intersectionsWith: line) asOrderedCollection 
		sorted: [ :a :b | a asPoint < b asPoint ].