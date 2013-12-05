rendering
renderContentOn: html
	html tbsContainer: [
		html tbsRow: [
			html twbsSpan: 12 with: [
				html heading level1; with: [
					html text: 'Twitter Bootstrap '; small: 'Seaside and Magritte rendering examples' ] ] ].
		
		html twbsRow: [
			html twbsSpan: 7 with: self menu ] ].