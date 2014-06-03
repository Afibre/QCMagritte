instance creation
on: aModel accessor: anAccessor
	^self new
		selector: anAccessor;
		target: aModel;
		yourself