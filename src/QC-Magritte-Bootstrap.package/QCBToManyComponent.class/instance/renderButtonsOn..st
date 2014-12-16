rendering
renderButtonsOn: canvas
	canvas tbsButtonToolbar
		with: [ 
			self isReadonly ifFalse: [
				self renderSelectButtonsOn: canvas ].
			self canExport ifTrue: [ 
				self renderExportMenuOn: canvas ].
			self renderReportCommandsOn: canvas ]