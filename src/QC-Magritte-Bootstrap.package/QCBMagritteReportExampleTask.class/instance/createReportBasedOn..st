private
createReportBasedOn: aReportChooser
	| theReport |
	theReport := QCBReportValues new
		reportOptions: aReportChooser;
		demoRows: self demoRows;
		asComponent.
	^ TBSMagritteReportWrapper new
		report: theReport ;
		yourself