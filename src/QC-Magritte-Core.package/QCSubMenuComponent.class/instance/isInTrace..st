testing
isInTrace: aPage
	(self rootPage = aPage) ifTrue: [ ^true ].
	(self = aPage) ifTrue: [ ^true ].
	^self subMenuPage isInTrace: aPage