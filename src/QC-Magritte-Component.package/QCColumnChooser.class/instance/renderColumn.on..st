rendering
renderColumn: aColumn on: canvas
	canvas div
		class: 'column';
		passenger: aColumn;
		with: [ self renderColumnContent: aColumn on: canvas ]