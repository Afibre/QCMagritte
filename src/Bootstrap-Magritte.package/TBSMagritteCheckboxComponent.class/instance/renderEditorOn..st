rendering
renderEditorOn: html
	html div
		class: 'checkbox';
		with: [
			html label: [ 
				html checkbox
					id: self labelId;
					disabled: self isReadonly;
					on: #value of: self.
				html space; render: self magritteDescription checkboxLabel ] ]