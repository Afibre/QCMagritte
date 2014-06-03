rendering
renderValueInputOn: html ajaxScript: aScript
	| tag |
	tag := html textInput
		onChange: aScript.
	self magritteDescription hasComment ifTrue: [ tag placeholder: self magritteDescription comment ].
	tag on: #amountValue of: self