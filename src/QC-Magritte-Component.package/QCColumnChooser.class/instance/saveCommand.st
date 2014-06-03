accessing
saveCommand
	^saveCommand ifNil: [ saveCommand :=
		QCCommand on: 'Save' condition: nil action: [ :customCols | self parent savePreference: self report columns columns: self customColumns ] ]