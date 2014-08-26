accessing
reportComponent
	^reportComponent ifNil: [ reportComponent := self createReportComponent ]