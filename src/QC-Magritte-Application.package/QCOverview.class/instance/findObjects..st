accessing
findObjects: aString
	| desc |
	desc := self toManyComponent magritteDescription.
	^self rows collect: [ :item | (item displayName)  ] thenSelect: [ :each | each includesSubstring: aString ]