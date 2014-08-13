rendering
renderReportContentOn: canvas
	self reportCssClass ifNil: [ ^super renderContentOn: canvas ].
	canvas div
		class: self reportCssClass;
		with: [ super renderContentOn: canvas ]