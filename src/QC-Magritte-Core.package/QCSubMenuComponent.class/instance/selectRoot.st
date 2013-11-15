actions
selectRoot
	self rootPage
		ifNil: [ self subMenuPage goHome ]
		ifNotNil: [ rootSelected := true ]