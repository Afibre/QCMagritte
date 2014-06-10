magrittes-descriptions
descriptionRowCount
	<magritteDescription>
	^ MASingleOptionDescription new 
		label: 'Row count';
		accessor: #rowCount;
		default: 10;
		priority: 170;
		comment: 'The number of rows shown in the report';
		options: self rowCountOptions;
		yourself