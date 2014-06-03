exporting
latexDocument
	^WAMimeDocument
		on: self latexData
		mimeType: (WAMimeType main: 'text' sub: 'latex')
		fileName: (self exportFilename, '.tex')