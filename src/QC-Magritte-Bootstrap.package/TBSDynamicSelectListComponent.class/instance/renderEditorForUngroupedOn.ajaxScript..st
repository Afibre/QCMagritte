rendering
renderEditorForUngroupedOn: html  ajaxScript: aScript
	html select tbsFormControl
		id: self labelId;
		list: self options;
		selected: self value;
		onChange: aScript;
		callback: [ :value | self value: value ];
		labels: [ :value | self labelForOption: value ]