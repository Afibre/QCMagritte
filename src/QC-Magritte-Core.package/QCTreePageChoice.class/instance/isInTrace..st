testing
isInTrace: aPage
	(self currentPage respondsTo: #isInTrace:) ifFalse: [ ^false ].
	^self currentPage isInTrace: aPage