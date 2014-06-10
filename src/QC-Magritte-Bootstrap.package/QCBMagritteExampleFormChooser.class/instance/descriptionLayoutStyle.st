magritte descriptions
descriptionLayoutStyle
	<magritteDescription>
	^ MASingleOptionDescription new 
		label: 'Layout styles';
		accessor: #layoutStyle;
		options: self layoutStyles;
		comment: 'choose a layout style';
		componentClass: TBSMagritteRadioGroupComponent;
		beRequired;
		yourself