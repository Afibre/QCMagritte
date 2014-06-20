hooks
children
	^self detailsPage
		ifNil: [ super children ]
		ifNotNil: [ super children copyWith: self detailsPage ]