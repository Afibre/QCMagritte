rendering
renderLabel: aDescription
	| label |
	aDescription hasLabel ifFalse: [ ^ self ].
	label := html label
		class: 'control-label';
		class: 'col-sm-2';
		yourself.
	(self childAt: aDescription) hasLabelId
		ifTrue: [ label for: (self childAt: aDescription) labelId ].
	label with: [ html html: aDescription label ]