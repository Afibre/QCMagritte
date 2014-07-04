rendering
renderButtonsOn: canvas
	canvas tbsButtonToolbar: [
		self isReadonly ifFalse: [ self renderSelectButtonsOn: canvas ].
		self canExport ifTrue: [ self renderExportMenuOn: canvas ].
		self renderReportCommandsOn: canvas ]