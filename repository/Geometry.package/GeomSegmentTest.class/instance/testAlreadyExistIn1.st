as yet unclassified
testAlreadyExistIn1
	|segm1 segm2 segm aSet |
	segm1 := GeomSegment with:1@2  with: 3@4.
	segm2 := GeomSegment with:1@1  with:2@2.
	segm := GeomSegment with: 0@0 with: 3@3.
	aSet := Set new.
	aSet add: segm1.
	aSet add: segm2.
	self assert: (segm alreadyExistIn:aSet )
"equels:true"