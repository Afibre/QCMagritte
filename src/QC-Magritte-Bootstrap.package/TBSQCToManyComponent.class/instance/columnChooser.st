accessing
columnChooser
	^columnChooser ifNil: [ columnChooser := self buildColumnChooser ]