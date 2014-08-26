accessing - defaults
defaultSearchDescription
	^(MAToManyRelationDescription new)
		classes: self classes;
		label: 'Select ', self label;
		accessor: #ownedIn;
		beDefinitive;
		yourself