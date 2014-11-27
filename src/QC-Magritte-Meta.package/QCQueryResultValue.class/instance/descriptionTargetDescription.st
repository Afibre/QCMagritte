magritte-description
descriptionTargetDescription
	<magritteDescription>
	^MASingleOptionDescription new
		label: 'Target';
		accessor: #targetDescription;
		priority: 400;
		options: self possibleDescriptions;
		labels: QCCommentWriter;
		group: 'Operation';
		yourself