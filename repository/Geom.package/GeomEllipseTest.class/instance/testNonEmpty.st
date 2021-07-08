tests
testNonEmpty
	| shape line intersections |
	shape := GeomEllipse center: 0@0 vertex: 0@10 coVertex: 5@10.
	line := GeomLine through: shape center and: 10@10.
	intersections := self sortedIntersectionsBetween: shape and: line.
	self assert: intersections isNotEmpty.
	self assert: (intersections first asPoint closeTo: -7.4535599249993@ -7.4535599249993).
	self assert: (intersections second asPoint closeTo: 7.4535599249993@ 7.4535599249993).