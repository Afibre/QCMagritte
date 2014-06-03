accessing
columnChooser
	^columnChooser ifNil: [ columnChooser := QCColumnChooser visibleOn: self description: self magritteDescription ]