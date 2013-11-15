accessing
allPages
	self rootPage ifNil: [ ^self subMenuPage allPages ].
	^self subMenuPage allPages copyWith: self rootPage