magritte-description
labelDescription
	<magritteDescription>
	^MAStringDescription new
		beReadonly;
		accessor: #label;
		label: (QCMultilanguageString on: 'Name');
		comment: (QCMultilanguageString on: 'Will be shown in overview');
		yourself