magritte-description
descriptionForLanguage: aLanguage
	^MAStringDescription new
		accessor: (MAChainAccessor on: #translations accessor: 
			(MADictionaryAccessor key: aLanguage));
		label: (QCMultilanguageString on: aLanguage displayName);
		priority: 200;
		comment: (QCMultilanguageString on: 'The translation in'), ' ', (QCMultilanguageString on: aLanguage displayName);
		reportColumnClass: QCDescribedColumn;
		yourself