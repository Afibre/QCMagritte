hooks
renderContentOn: canvas
	self isRootSelected 
		ifTrue: [ canvas render: self rootPage ]
		ifFalse: [ canvas render: self subMenuPage ]