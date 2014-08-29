magritte-description
descriptionExplanation
	<magritteDescription>
	self explanation ifEmpty: [ ^nil ].
	^QCParagraphDescription new
		priority: 250;
		label: 'Explanation';
		accessor: #explanation;
		comment: 'A full text of the tutorial item';
		beReadonly;
		visibleInReport: false;
		yourself