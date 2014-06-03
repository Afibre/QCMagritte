rendering
renderEditorForUngroupedOn: html ajaxScript: aScript
	html textInput
		id: self labelId;
		script:
				(html jQuery this autocomplete
						sourceCallback: [ :term | self valuesFor: term ];
						onChange: aScript);
		text: (self labelForOption: self value);
		callback: [ :value | self value: value ]