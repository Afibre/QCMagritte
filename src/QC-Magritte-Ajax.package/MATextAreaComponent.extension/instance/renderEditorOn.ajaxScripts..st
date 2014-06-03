*qc-magritte-ajax
renderEditorOn: html ajaxScripts: aScriptList
	| tag |
	tag := html textArea
		id: self labelId.
	aScriptList do: [ :each | tag onChange: each ].
	self magritteDescription hasComment ifTrue: [ tag placeholder: self magritteDescription comment ].
	tag
		rows: self magritteDescription lineCount;
		on: #string of: self