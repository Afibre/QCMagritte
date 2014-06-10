magritte-description
descriptionExplanation
	<magritteDescription>
	^MAMemoDescription new
		priority: 250;
		label: 'Explanation';
		accessor: #explanation;
		comment: 'A full text of the tutorial item';
		beReadonly;
		visibleInReport: false;
		yourself