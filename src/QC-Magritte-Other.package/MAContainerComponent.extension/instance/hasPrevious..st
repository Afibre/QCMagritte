*QC-Magritte-Other
hasPrevious: anObject 
	self children size > 1 ifTrue: [ ^false ].
	self children ifEmpty: [ ^false ].
	^self children first hasPrevious: anObject