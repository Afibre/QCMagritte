rendering
renderUnitSelectForUngroupedOn: html ajaxScript: aScript
	|options |
	options := self unitOptions.
	options size = 1 ifTrue: [   
		html text: (self labelForUnit: options first)]
	ifFalse: [  
		html select
			list: self unitOptions;
			onChange: aScript;
			selected: self unit;
			callback: [ :value | self unit: value ];
			labels: [ :value | self labelForUnit: value ]]