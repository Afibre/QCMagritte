accessing
searchText
	self selectQuery isSimple ifFalse: [ ^self selectQuery queryDescription ].
	^QCMultilanguageString on: 'Search'