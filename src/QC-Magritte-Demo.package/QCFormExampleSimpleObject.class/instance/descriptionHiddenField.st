magritte-description
descriptionHiddenField
	<magritteDescription>
	^MAStringDescription new
		accessor: #hiddenField;
		label: 'Hidden field';
		beReadonly;
		comment: 'This field is only shown when the boolean is tagged';
		group: 'Hidden';
		priority: 110;
		yourself