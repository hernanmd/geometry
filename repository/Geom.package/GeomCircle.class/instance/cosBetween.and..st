comparing
cosBetween: p1 and: p2


^ (( GeomRay origin: self center direction: p1 ) * ( GeomRay origin: self center direction: p2 )) 
/
( ( GeomRay origin: self center direction: p1 )length * (( GeomRay origin: self center direction: p2 ) length ) )
