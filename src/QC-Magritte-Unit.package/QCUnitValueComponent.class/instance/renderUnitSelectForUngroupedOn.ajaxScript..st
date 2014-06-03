rendering
renderUnitSelectForUngroupedOn: html ajaxScript: aScript
	html select
		list: self unitOptions;
		onChange: aScript;
		selected: self unit;
		callback: [ :value | self unit: value ];
		labels: [ :value | self labelForUnit: value ]