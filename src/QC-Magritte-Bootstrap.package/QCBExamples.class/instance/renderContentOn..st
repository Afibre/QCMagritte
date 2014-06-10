rendering
renderContentOn: html
	html tbsContainer: [
		html tbsRow: [
			html heading level1; with: [
				html text: 'Twitter Bootstrap '; small: 'Seaside and Magritte rendering examples' ] ].
		
		html tbsRow: [ html render: self menu ] ].