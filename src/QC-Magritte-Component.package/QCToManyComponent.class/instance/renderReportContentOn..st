rendering
renderReportContentOn: canvas
	| tag |
	self hasForm
		ifTrue: [ tag := canvas div ]
		ifFalse: [ tag := canvas form ].
	self reportCssClass ifNil: [ ^tag with: [ super renderContentOn: canvas ] ].
	tag
		class: self reportCssClass;
		with: [ super renderContentOn: canvas ]