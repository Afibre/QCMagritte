rendering
renderOn: canvas
	| tag |
	tag := canvas div.
	self cssClass ifNotNil: [ tag class: self cssClass ].
	tag with: [ canvas render: self paragraphs ]