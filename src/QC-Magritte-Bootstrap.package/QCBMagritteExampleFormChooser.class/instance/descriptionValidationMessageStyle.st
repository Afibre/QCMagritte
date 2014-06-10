magritte descriptions
descriptionValidationMessageStyle
	<magritteDescription>
	^ MASingleOptionDescription new 
		label: 'Error message styles';
		accessor: #validationMessageStyle;
		options: self validationMessageStyles;
		comment: 'choose an error message style';
		componentClass: MASelectListRowsComponent;
		beRequired;
		yourself