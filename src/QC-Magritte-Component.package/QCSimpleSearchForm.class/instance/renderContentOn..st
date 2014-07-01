rendering
renderContentOn: canvas
	| tag |
	self parent hasForm
		ifTrue: [ tag := canvas div ]
		ifFalse: [ tag := canvas form ].
	tag
		class: 'search-form';
		with: [ self renderSearchContentOn: canvas ]