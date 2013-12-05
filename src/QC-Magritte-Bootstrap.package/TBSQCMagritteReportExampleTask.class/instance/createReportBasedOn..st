private
createReportBasedOn: aReportChooser
	| theReport |
	theReport := TBSQCReportValues new
		reportOptions: aReportChooser;
		demoRows: self demoRows;
		asComponent.
	
	^ TBSMagritteReportWrapper new
		report: theReport ;
		yourself