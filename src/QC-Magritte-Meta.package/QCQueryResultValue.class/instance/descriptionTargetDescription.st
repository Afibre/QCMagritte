magritte-description
descriptionTargetDescription
	<magritteDescription>
	^MASingleOptionDescription new
		label: (QCMultilanguageString on: 'Target');
		accessor: #targetDescription;
		priority: 400;
		options: self possibleDescriptions;
		labels: QCCommentWriter;
		group: (QCMultilanguageString on: 'Operation');
		yourself