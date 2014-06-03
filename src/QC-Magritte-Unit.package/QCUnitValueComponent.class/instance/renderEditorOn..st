rendering
renderEditorOn: html
	html span
		class: 'unit-value';
		id: self labelId;
		with: [
			self renderValueInputOn: html.
			self renderUnitSelectOn: html.
			self renderButtonOn: html ]