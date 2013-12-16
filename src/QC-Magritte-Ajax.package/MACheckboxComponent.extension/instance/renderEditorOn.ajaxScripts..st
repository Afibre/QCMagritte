*qc-magritte-ajax
renderEditorOn: html ajaxScripts: aScriptList
	html label: [
		| tag |
		tag := html checkbox
			id: self labelId;
			disabled: self isReadonly.
		aScriptList do: [ :each | tag onChange: each ].
		tag on: #value of: self.
		html space; render: self magritteDescription checkboxLabel ]