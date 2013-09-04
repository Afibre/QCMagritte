rendering
renderButtonsOn: canvas
	canvas div
		class: 'report-buttons';
		with: [
			self canAdd ifTrue: [
				self renderSelectListOn: canvas ].
			self hasChanged ifTrue: [
				canvas submitButton
					callback: [ self save ];
					with: (QCMultilanguageString on: 'Confirm removal') ].
			canvas span
				class: 'button-space';
				with: [  canvas space ].
			self renderExportMenuOn: canvas.
			self renderReportCommandsOn: canvas ]