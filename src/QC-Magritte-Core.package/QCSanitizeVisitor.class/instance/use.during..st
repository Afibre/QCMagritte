accessing
use: aTarget during: aBlock 
	| previous |
	previous := target. target := aTarget.
	^ aBlock ensure: [ target := previous ]