accessing-magritte
reportOptions
	^reportOptions ifNil: [ reportOptions := self createReportOptions ]