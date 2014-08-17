magritte-description
descriptionReportOptions
	<magritteDescription>
	^MAToOneRelationDescription new
		label: 'Report options';
		accessor: #reportOptions;
		priority: 2000;
		classes: { QCBReportOptions };
		beRequired;
		visible: self canEditReportOptions;
		yourself