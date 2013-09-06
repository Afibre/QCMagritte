initialization
reportOptionsFor: aComponent
	^(QCReportOptionsComponent on: aComponent)
		saveCommand: (QCCommand on: self saveLabel
			condition: nil
			action: [ self saveReportOptions ]);
		yourself