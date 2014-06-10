rendering
renderButtonsOn: canvas
	canvas tbsButtonToolbar: [ 
		self renderSelectButtonsOn: canvas.
		self renderExportMenuOn: canvas.
		self renderReportCommandsOn: canvas ]