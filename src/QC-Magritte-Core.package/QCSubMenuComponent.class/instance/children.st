hooks
children
	self rootPage ifNil: [ ^Array with: self subMenuPage ].
	^Array with: self rootPage with: self subMenuPage