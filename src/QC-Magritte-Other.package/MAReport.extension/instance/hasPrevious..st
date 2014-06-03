*QC-Magritte-Other
hasPrevious: anObject 
	(self cache includes: anObject) ifFalse: [ ^false ].
	^(self cache indexOf: anObject) > 1