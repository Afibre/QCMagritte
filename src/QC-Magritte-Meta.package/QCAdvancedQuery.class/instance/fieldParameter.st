accessing
fieldParameter
	searchField ifEmpty: [ ^nil ].
	searchField isString ifTrue: [ ^nil ].
	^searchField allButFirst