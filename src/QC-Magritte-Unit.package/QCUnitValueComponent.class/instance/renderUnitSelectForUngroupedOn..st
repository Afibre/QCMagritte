rendering
renderUnitSelectForUngroupedOn: html
	|options |
	options := self unitOptions.
	options size = 1 ifTrue: [   
		html text: (self labelForUnit: options first)]
	ifFalse: [ 
		html select
			list: options;
			selected: self unit;
			callback: [ :value | self unit: value ];
			labels: [ :value | self labelForUnit: value ]]
