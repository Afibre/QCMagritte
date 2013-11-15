accessing
findPage: aComponent 
	self rootPage = aComponent ifTrue: [ ^self ].
	self subMenuPage = aComponent ifTrue: [ ^self ].
	^self subMenuPage findPage: aComponent