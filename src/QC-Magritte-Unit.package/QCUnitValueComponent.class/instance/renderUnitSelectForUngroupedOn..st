rendering
renderUnitSelectForUngroupedOn: html
	html select
		list: self unitOptions;
		selected: self unit;
		callback: [ :value | self unit: value ];
		labels: [ :value | self labelForUnit: value ]