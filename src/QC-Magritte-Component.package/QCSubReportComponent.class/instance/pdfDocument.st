exporting
pdfDocument
	^WAMimeDocument
		on: self pdfData
		mimeType: (WAMimeType main: 'application' sub: 'pdf')
		fileName: (self exportFilename, '.pdf')