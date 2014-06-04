accessing
childDescriptionFor: aClassList label: aLabel
	^self setReferenceFor: (MAToManyRelationDescription new
		label: aLabel;
		classes: aClassList;
		visibleInReport: false;
		visibleInLabel: false;
		tabDisplay: false;
		componentClass: self class defaultComponentClass;
		yourself)