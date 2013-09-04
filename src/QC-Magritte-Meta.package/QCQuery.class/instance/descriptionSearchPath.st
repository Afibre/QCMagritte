magritte-description
descriptionSearchPath
	<magritteDescription>
	^MASingleOptionDescription new
		accessor: #searchPath;
		label: (QCMultilanguageString on: 'Search area');
		options: self possibleSearchPaths;
		labels: QCCommentWriter;
		priority: 200;
		beRequired;
		visible: false;
		visibleInReport: false;
		yourself