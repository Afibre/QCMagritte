accessing-magritte
defaultComponentClass
	self model ifNotNil: [ ^self model defaultComponentClass ].
	^super defaultComponentClass