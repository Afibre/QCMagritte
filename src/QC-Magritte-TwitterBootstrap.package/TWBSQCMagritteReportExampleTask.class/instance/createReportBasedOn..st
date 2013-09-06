private
createReportBasedOn: aReportChooser
	^TWBSQCReportValues new
		reportOptions: aReportChooser;
		demoRows: self demoRows;
		asComponent