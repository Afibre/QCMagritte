rendering
renderEditorForUngroupedOn: html ajaxScripts: aScriptList
	| tag |
	tag := html textInput
		id: self labelId.
	aScriptList do: [ :each | tag onChange: each ].
	tag
		script: (html jQuery this autocomplete
			sourceCallback: [ :term | self valuesFor: term ]);
		text: (self labelForOption: self value);
		callback: [ :value | self value: value ]