*qc-magritte-ajax
renderInputOn: html ajaxScript: aScript
	| tag |
	tag := html textInput
		id: self labelId;
		onChange: aScript.
	self magritteDescription hasComment ifTrue: [ tag placeholder: self magritteDescription comment ].
	tag on: #string of: self