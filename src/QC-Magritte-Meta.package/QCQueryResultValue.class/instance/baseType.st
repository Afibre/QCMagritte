accessing
baseType
	baseType ifNil: [
		self parent isModel ifFalse: [ baseType := self parent resultType ] ].
	^baseType