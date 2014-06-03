*QC-Magritte-Other
hasNext: anObject 
	(self cache includes: anObject) ifFalse: [ ^false ].
	^(self cache indexOf: anObject) < self cache size