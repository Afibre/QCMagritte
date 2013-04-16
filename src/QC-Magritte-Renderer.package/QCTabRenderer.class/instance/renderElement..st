rendering
renderElement: aDescription
	| tag |
	aDescription group = group
		ifFalse: [ self renderGroup: aDescription ].
	tag := html listItem
		class: 'tab';
		yourself.
	(self component isActiveDescription: aDescription) ifTrue: [ tag class: 'active' ].
	tag with: [ self renderLabel: aDescription ]