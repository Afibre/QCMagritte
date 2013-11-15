accessing
detectPage: aBlock ifNone: anExceptionBlock
	self rootPage ifNotNil: [ (aBlock value: self rootPage) ifTrue: [ ^self ] ].
	(aBlock value: self subMenuPage) ifTrue: [ ^self ].
	^self subMenuPage detectPage: aBlock ifNone: anExceptionBlock