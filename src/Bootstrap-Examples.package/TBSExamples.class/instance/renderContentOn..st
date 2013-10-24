rendering
renderContentOn: html
	html tbsContainer: [
		html tbsRow: [
			html tbsColumn mediumSize: 12; with: [
				html heading level1; with: [
					html text: 'Twitter Bootstrap '; small: 'Seaside and Magritte rendering examples' ] ] ].
		
		html tbsRow: [
			html tbsColumn mediumSize: 9; with: self menu ] ].