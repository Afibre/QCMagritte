accessing
childDescriptionFor: aClassList label: aLabel
	^self setReferenceFor: (MAToManyRelationDescription new
		label: aLabel;
		classes: aClassList;
		reportColumnClass: QCToManyColumn;
		visibleInReport: false;
		visibleInLabel: false;
		tabDisplay: false;
		yourself)