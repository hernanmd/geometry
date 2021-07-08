figures
isDegenerate
(v1 = v2 or:[ v1 = v3 or:[ v2 = v3 ]])
	ifTrue:[^ true]
	ifFalse:[
	^  (self geomEdges first length + self geomEdges second length ="closeTo:" (self geomEdges third length)) or: [ 
		(self geomEdges second length + self geomEdges third length ="closeTo:" (self geomEdges first length)) or: [ 
		 self geomEdges third length + self geomEdges first length ="closeTo:" (self geomEdges second length) ] ]]