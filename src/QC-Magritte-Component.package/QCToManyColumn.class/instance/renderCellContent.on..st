rendering
renderCellContent: anObject on: canvas
	| items |
	items := self valueFor: anObject.
	items ifEmpty: [ ^canvas space ].
	" I tried to render a single item, but this draws too much attention.
	items size = 1 ifTrue: [ ^canvas text: (self labels value: items first) ]."
	canvas select
		class: 'address';
		list: items;
		labels: self labels