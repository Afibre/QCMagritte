rendering
renderEditorForUngroupedOn: html  ajaxScripts: aScriptList
	| tag |
	tag := html select tbsFormControl
		id: self labelId;
		list: self options;
		selected: self value;
		callback: [ :value | self value: value ];
		labels: [ :value | self labelForOption: value ];
		yourself.
	aScriptList do: [ :each | tag onChange: each ]