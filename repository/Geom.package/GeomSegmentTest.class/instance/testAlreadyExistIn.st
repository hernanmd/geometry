as yet unclassified
testAlreadyExistIn
	|segm1 segm2 segm aSet |
	segm1 := GeomSegment with:5@2  with: 3@4.
	segm2 := GeomSegment with:1@1  with:4@8.
	segm := GeomSegment with: 0@0 with: 3@3.
	aSet := Set new.
	aSet add: segm1.
	aSet add: segm2.
	self assert: (segm alreadyExistIn:aSet )
		equals: false