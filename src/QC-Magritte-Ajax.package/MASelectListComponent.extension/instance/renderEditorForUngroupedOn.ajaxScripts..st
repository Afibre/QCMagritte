*qc-magritte-ajax
renderEditorForUngroupedOn: html ajaxScripts: aScriptList
	| tag |
	tag := html select
		id: self labelId;
		list: self options.
	aScriptList do: [ :each | tag onChange: each ].
	tag
		selected: self value;
		callback: [ :value | self value: value ];
		labels: [ :value | self labelForOption: value ]