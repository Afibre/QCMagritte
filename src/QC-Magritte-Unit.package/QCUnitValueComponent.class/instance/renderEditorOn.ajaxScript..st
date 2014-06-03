rendering
renderEditorOn: html ajaxScript: aScript
	html span
		class: 'unit-value';
		id: self labelId;
		with: [
			self renderValueInputOn: html ajaxScript: aScript.
			self renderUnitSelectOn: html ajaxScript: aScript.
			self renderButtonOn: html ]