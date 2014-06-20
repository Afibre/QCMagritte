rendering
renderContentOn: canvas
	canvas tbsForm
		beInline;
		with: [ self renderSearchContentOn: canvas ]