rendering
renderCellContent: anObject on: html
	html span
		class: 'commands';
		with: [ 
			(self useLinksFor: anObject)
				ifTrue: [ self renderCellLinkContent: anObject on: html ]
				ifFalse: [ self renderCellFormContent: anObject on: html ] ]