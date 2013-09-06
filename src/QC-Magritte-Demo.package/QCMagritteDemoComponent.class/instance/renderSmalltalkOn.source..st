rendering
renderSmalltalkOn: html source: aSource
	html heading level: 4; with: 'Smalltalk'.
	html div class: 'code'; with: [
		html span
			class: 'signature';
			with: [ html text: self class name; text: '>>'; text: aSource nextLine ].
		html break.
		[ aSource atEnd ] whileFalse: [ 
			[ aSource peek = Character tab ] whileTrue: [ 
				html space; space; space.
				aSource next ].
			html render: aSource nextLine; break ] ]