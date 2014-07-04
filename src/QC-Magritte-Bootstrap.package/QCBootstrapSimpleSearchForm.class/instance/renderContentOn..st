rendering
renderContentOn: canvas
	self parent hasForm
		ifTrue: [ ^self renderSearchContentOn: canvas ].
	canvas tbsForm
		beInline;
		with: [ self renderSearchContentOn: canvas ]