rendering
renderContentOn: canvas
	self canShowForm
		ifTrue: [ self renderFormOn: canvas ]
		ifFalse: [ self renderInvalidQueryMessageOn: canvas ]