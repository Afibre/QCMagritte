magritte-description
descriptionModelClass
	<magritteDescription>
	^MASingleOptionDescription new
		label: 'Model class';
		accessor: #rightsClass;
		options: self allRightsClasses;
		visibleInLabel: true;
		priority: 100;
		yourself