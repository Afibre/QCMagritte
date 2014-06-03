accessing
subMenuPage
	^subMenuPage ifNil: [ subMenuPage := (self treePageChoiceClass on: self)
		onCloseLastPage: [ self rootSelected: true ];
		yourself ]