accessing
detectPage: aBlock 
	(aBlock value: self rootPage) ifTrue: [ ^self ].
	(aBlock value: self subMenuPage) ifTrue: [ ^self ].
	^self subMenuPage detectPage: aBlock