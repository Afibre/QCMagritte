magritte-description
descriptionElementDescription
	<magritteDescription>
	^QCDynamicSingleOptionDescription new
		label: (QCMultilanguageString on: 'Value');
		accessor: #elementDescription;
		priority: 400;
		options: self possibleElementDescriptions;
		optionsBlock: self possibleElementDescriptionsBlock;
		labels: QCCommentWriter;
		group: (QCMultilanguageString on: 'Operation');
		hidden: self operation needsValue not;
		yourself