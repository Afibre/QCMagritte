magritte-description
descriptionForLanguage: aLanguage
	^MAStringDescription new
		accessor: (MAChainAccessor on: #translations accessor: 
			(MADictionaryAccessor key: aLanguage));
		label: aLanguage displayName;
		priority: 200;
		comment: (QCMultilanguageString on: 'The translation in') greaseString, ' ', (QCMultilanguageString on: aLanguage displayName) greaseString;
		reportColumnClass: QCDescribedColumn;
		yourself