rendering
renderButtonsOn: canvas
	canvas div
		class: 'report-buttons';
		with: [
			self isReadonly ifFalse: [
				self renderSelectButtonsOn: canvas.
				canvas span
					class: 'button-space';
					with: [  canvas space ] ].
			self renderExportMenuOn: canvas.
			canvas span
				class: 'button-space';
				with: [  canvas space ].
			self renderReportCommandsOn: canvas ]