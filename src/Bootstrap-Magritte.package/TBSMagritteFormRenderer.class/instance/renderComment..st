rendering
renderComment:  aDescription
	aDescription comment notNil ifTrue: [
		html paragraph
			class: 'help-block';
			with: aDescription comment ]