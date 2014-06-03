exporting
csvDocument
	^WAMimeDocument
		on: (self csvData)
		mimeType: (WAMimeType main: 'text' sub: 'csv')
		fileName: (self exportFilename, '.csv')