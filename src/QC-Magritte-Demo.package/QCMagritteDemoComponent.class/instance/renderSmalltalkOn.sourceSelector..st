rendering
renderSmalltalkOn: html sourceSelector: aSelector
	| source |
	html heading level: 4; with: 'Smalltalk'.
	source := ((self class whichClassIncludesSelector: aSelector) 
			sourceCodeAt: aSelector) greaseString readStream.
	html div class: 'code'; with: [
		html span
			class: 'signature';
			with: [ html text: self class name; text: '>>'; text: source nextLine ].
		html break.
		[ source atEnd ] whileFalse: [ 
			[ source peek = Character tab ] whileTrue: [ 
				html space; space; space.
				source next ].
			html render: source nextLine; break ] ]