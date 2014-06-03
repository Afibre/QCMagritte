rendering
renderMenuChoiceFor: aPage on: canvas
	| tag |
	tag := canvas listItem
		class: self menuItemClass.
	self setClass: tag forPage: aPage.
	tag with: [ self renderMenuChoiceContentFor: aPage on: canvas ].
	self isSubMenuInListItem ifFalse: [ self renderSubMenuFor: aPage on: canvas ]