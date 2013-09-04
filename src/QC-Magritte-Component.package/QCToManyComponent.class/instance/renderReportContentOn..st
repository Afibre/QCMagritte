rendering
renderReportContentOn: canvas
	canvas div
		class: 'overview-report';
		with: [ super renderContentOn: canvas ]