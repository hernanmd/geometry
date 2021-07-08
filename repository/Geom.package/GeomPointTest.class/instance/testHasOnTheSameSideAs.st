tests
testHasOnTheSameSideAs
	self assert:(1@1 geomHas: 3@2 onTheSameSideAs: 2@2)
		equals: true.
	self assert:(1@1 geomHas: 1@1 onTheSameSideAs: 2@2)
		equals: true.
	self assert:(1@1 geomHas: -1@2 onTheSameSideAs: 2@2)
		equals: false.