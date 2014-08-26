rendering
renderCommand: aCommand description: aDescription
	html submitButton
				callback: [ self execute: aCommand description: aDescription];
				text: aCommand label