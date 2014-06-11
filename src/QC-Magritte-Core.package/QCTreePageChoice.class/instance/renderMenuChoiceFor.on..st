rendering
renderMenuChoiceFor: aPage on: canvas
	super renderMenuChoiceFor: aPage on: canvas.
	self isSubMenuInListItem ifFalse: [ self renderSubMenuFor: aPage on: canvas ]