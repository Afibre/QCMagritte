*QC-Magritte-Other
previous:anObject 
	self children ifEmpty: [ ^nil ].
	self children size > 1 ifTrue: [ ^nil ].
	^self children first previous: anObject