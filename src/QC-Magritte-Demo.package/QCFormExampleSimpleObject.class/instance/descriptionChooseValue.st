magritte-description
descriptionChooseValue
	<magritteDescription>
	^MAStringDescription new
		accessor: #chooseValue;
		label: 'Choose value';
		beReadonly;
		comment: 'When bool is set to true, this is actually the number value, as string';
		group: 'Group';
		yourself