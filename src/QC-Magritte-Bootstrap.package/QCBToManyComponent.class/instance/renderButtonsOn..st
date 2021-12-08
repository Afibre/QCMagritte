rendering
renderButtonsOn: canvas

	canvas tbsButtonToolbar with: [ 
		self isReadOnly ifFalse: [ self renderSelectButtonsOn: canvas ].
		self canExport ifTrue: [ self renderExportMenuOn: canvas ].
		self renderReportCommandsOn: canvas ]