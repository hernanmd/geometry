*Geom
geomLesserOrDifferentThan: other
	^ self < other or: [ self =~ other ]