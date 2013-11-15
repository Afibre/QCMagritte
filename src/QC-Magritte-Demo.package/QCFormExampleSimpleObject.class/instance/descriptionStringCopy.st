magritte-description
descriptionStringCopy
	<magritteDescription>
	^MAStringDescription new
		accessor: #stringCopy;
		label: 'String copy';
		beReadonly;
		comment: 'This simply copies the value of the string';
		group: 'Group';
		priority: 440;
		yourself