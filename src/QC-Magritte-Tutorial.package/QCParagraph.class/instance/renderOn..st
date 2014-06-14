rendering
renderOn: canvas
	| tag |
	tag := canvas paragraph.
	self cssClass ifNotNil: [ tag class: self cssClass ].
	tag with: self text