accessing
reportOptions
	^reportOptions ifNil: [ reportOptions := self createReportOptions ]