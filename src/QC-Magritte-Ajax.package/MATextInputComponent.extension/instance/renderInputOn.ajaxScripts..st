*qc-magritte-ajax
renderInputOn: html ajaxScripts: aScriptList
	| tag |
	tag := html textInput
		id: self labelId.
	aScriptList do: [ :each | tag onChange: each ].
	self magritteDescription hasComment ifTrue: [ tag placeholder: self magritteDescription comment ].
	tag on: #string of: self