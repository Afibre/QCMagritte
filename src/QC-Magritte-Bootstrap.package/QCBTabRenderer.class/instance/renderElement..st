rendering
renderElement: aDescription
	| tag |
	aDescription group = group
		ifFalse: [ self renderGroup: aDescription ].
	tag := html tbsNavItem.
	(self component isActiveDescription: aDescription) ifTrue: [ tag beActive ].
	tag with: [ self renderLabel: aDescription ]