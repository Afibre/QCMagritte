private
createReportBasedOn: aReportChooser
	| theReport |
	theReport := TWBSQCReportValues new
		reportOptions: aReportChooser;
		demoRows: self demoRows;
		asComponent.
	
	^ TWBSMagritteReportWrapper new
		report: theReport ;
		yourself