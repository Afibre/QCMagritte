rendering
renderContentOn: canvas
	self checkData.
	self renderReportContentOn: canvas.
	self hasForm
		ifTrue: [ self renderButtonsOn: canvas ]
		ifFalse: [ canvas form: [ self renderButtonsOn: canvas ] ]