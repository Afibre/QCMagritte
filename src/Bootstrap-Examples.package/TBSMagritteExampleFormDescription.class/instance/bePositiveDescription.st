magritte descriptions
bePositiveDescription
	<magritteDescription>
	^ MABooleanDescription new
		checkboxLabel: 'Be positive';
		accessor: #bePositive;
		componentClass: TBSMagritteCheckboxComponent;
		priority: 600;
		yourself