*qc-magritte-ajax
renderInputOn: html ajaxScripts: aScriptList
	| tag |
	tag := html textInput
		id: self labelId.
	aScriptList do: [ :each | tag onChange: each ].
	tag on: #string of: self