properties
geomHasPoint: aPoint
^ (( origin - direction ) geomSignFuz = ( origin - aPoint ) geomSignFuz  or:
					[ origin = aPoint ])
 
