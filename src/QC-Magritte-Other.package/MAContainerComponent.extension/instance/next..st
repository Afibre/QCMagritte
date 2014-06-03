*QC-Magritte-Other
next: anObject 
	self children ifEmpty: [ ^nil ].
	self children size > 1 ifTrue: [ ^nil ].
	^self children first next: anObject