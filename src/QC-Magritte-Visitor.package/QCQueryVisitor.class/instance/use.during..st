private
use: anObject during: aBlock
	| previous |
	previous := target. target := anObject.
	^ aBlock ensure: [ target := previous ]