rendering
renderCellFormContent: anObject on: html
	(self commandsFor: anObject)
		do: [ :each |
			html submitButton
				callback: [ self execute: each key with: anObject ];
				text: each value ]
			separatedBy: [ html space ]