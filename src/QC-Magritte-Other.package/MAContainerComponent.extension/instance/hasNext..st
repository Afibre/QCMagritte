*QC-Magritte-Other
hasNext: anObject 
	self children ifEmpty: [ ^false ].
	self children size > 1 ifTrue:  [ ^false ].
	^self children first hasNext: anObject