magritte-description
descriptionLabel
	<magritteDescription>
	^MAStringDescription new
		label: (QCMultilanguageString on: 'Label');
		accessor: #label;
		priority: 100;
		beRequired;
		yourself