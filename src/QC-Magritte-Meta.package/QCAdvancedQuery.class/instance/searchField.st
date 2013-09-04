accessing
searchField
	searchField ifNil: [ ^'' ].
	searchField isString ifTrue: [ ^searchField ].
	^String streamContents: [ :s |
		searchField do: [ :each | s nextPutAll: each ] separatedBy: [ s nextPut: $.] ] 