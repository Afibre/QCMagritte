rendering
renderEditorForUngroupedOn: html ajaxScript: aScript
	html textInput
		id: self labelId;
		onChange: aScript;
		script: (html jQuery this autocomplete
			sourceCallback: [ :term | self valuesFor: term ]);
		text: (self labelForOption: self value);
		callback: [ :value | self value: value ]