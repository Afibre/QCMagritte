rendering
renderControl: aDescription
	html div
		class: 'report-value';
		with: [ html render: (self childAt: aDescription) ]