rendering
renderTabFor: aPage on: canvas
	| tag |
	tag := canvas listItem
		class: self tabItemClass.
	(currentPage = aPage) ifTrue: [ tag class: 'active' ].
	tag with: [ self renderTabContentFor: aPage on: canvas  ]