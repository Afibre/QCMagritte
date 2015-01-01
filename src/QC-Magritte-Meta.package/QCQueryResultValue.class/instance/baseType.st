accessing
baseType
	|p|
	baseType ifNil: [
		p := self parent.
		p ifNil: [ ^nil ].
		p isModel ifFalse: [ baseType := self parent resultType ] ].
	^baseType