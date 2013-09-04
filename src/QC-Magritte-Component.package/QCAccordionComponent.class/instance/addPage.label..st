accessing
addPage: aPage label: aLabel
	self labels add: aLabel.
	^self pageDictionary at: aLabel put: aPage.
