*qc-magritte-ajax
renderEditorOn: html ajaxScript: aScript
	| tag |
	tag := html textArea
		id: self labelId;
		onChange: aScript;
		rows: self magritteDescription lineCount.
	self magritteDescription hasComment ifTrue: [ tag placeholder: self magritteDescription comment ].
	tag on: #string of: self
