initialization
columnChooserFor: aComponent
	^(QCColumnChooser visibleOn: aComponent description: self childDescription)
		saveCommand:
			(QCCommand on: self saveLabel
				condition: nil
				action: [ :customCols | self saveColumns: customCols ]);
		yourself