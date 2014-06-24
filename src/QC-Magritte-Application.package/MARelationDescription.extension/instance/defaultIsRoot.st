*qc-magritte-application
defaultIsRoot
	self classes ifEmpty: [ ^false ].
	^self commonClass canBeRoot