magritte-description
buildResultsDescription
	parent ifNil: [ ^nil ].
	^self parent buildResultsDescription
		accessor: #results;
		visible: true;
		yourself