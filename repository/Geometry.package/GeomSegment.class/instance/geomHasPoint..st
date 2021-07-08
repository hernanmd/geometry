properties
geomHasPoint:aPoint

  ^( ((self v1 x geomLesserOrDifferentThan: aPoint x) and: [aPoint x geomLesserOrDifferentThan: self v2 x])  or:
		[(self v2 x geomLesserOrDifferentThan: aPoint x) and: [aPoint x geomLesserOrDifferentThan: self v1 x]]  ) and: 
   [ ((self v1 y geomLesserOrDifferentThan: aPoint y) and: [aPoint y geomLesserOrDifferentThan: self v2 y])  or:
		[(self v2 y geomLesserOrDifferentThan: aPoint y) and: [aPoint y geomLesserOrDifferentThan: self v1 y]]   ]  .
   
