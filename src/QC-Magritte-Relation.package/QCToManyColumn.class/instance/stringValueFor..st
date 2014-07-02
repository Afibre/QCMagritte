private
stringValueFor: aRow
	| items |
	items := self valueFor: aRow.
	items ifEmpty: [ ^String space ].
	^String streamContents: [ :s | 
		items do: [ :each | s nextPutAll: (self labels value: each) ] separatedBy: [ s tab ] ]