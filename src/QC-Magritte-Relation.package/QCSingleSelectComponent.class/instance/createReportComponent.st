initialization
createReportComponent
	|reportDescription searchDescription|
	searchDescription := description searchDescription.
	searchDescription reference: searchDescription reference.
	searchDescription
		reference addCommand: 
			(QCCommand on: 'Select' condition: nil action: [:row | self select: row ] );
		yourself.
	reportDescription := MAPriorityContainer new
		componentClass: self componentClass;
		componentRenderer: self componentRenderer;
		descriptionBuilders: self descriptionBuilders;
		add: searchDescription;
		yourself.
	^reportDescription asComponentOn: description.
