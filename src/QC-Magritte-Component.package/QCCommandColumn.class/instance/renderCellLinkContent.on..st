rendering
renderCellLinkContent: anObject on: html
	(self commandsFor: anObject)
		do: [ :each | self renderSingleLink: each key on: html for: anObject text: each value ]
		separatedBy: [ html space ]