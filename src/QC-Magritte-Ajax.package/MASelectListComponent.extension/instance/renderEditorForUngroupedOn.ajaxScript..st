*qc-magritte-ajax
renderEditorForUngroupedOn: html ajaxScript: aScript
	html select
		id: self labelId;
		list: self options;
		onChange: aScript;
		selected: self value;
		callback: [ :value | self value: value ];
		labels: [ :value | self labelForOption: value ]