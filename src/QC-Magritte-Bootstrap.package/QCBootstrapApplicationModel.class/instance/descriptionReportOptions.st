magritte-description
descriptionReportOptions
	<magritteDescription>
	self canEditReportOptions ifFalse: [ ^nil ].
	^MAToOneRelationDescription new
		label: 'Report options';
		accessor: #reportOptions;
		priority: 2000;
		classes: { QCBReportOptions };
		beRequired;
		yourself