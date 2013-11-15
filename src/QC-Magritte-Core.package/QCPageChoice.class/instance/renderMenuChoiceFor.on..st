rendering
renderMenuChoiceFor: aPage on: canvas
	| tag |
	tag := canvas listItem
		class: self menuItemClass.
	(currentPage = aPage) ifTrue: [ tag class: 'active' ].
	tag with: [ self renderMenuChoiceContentFor: aPage on: canvas ]