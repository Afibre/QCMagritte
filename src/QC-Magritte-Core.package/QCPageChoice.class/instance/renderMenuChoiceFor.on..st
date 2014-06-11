rendering
renderMenuChoiceFor: aPage on: canvas
	| tag |
	tag := canvas listItem
		class: self menuItemClass.
	self setClass: tag forPage: aPage.
	tag with: [ self renderMenuChoiceContentFor: aPage on: canvas ]