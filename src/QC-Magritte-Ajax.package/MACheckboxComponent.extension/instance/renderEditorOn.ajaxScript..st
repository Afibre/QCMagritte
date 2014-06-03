*qc-magritte-ajax
renderEditorOn: html ajaxScript: aScript
	html label: [
		html checkbox
			id: self labelId;
			disabled: self isReadonly;
			onChange: aScript;
			on: #value of: self.
		html space; render: self magritteDescription checkboxLabel ]