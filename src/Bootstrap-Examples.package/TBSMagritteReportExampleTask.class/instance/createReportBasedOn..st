private
createReportBasedOn: reportChooser

	| theReport |
	
	theReport := TBSMagritteReport rows: self demoRows description: TBSMagritteExampleFormDescription new magritteDescription. 
	theReport
		showBatchFirstLast: reportChooser showBatchFirstLast ;
		showBordered: reportChooser bordered ;
		showStriped: reportChooser striped ;
		showCondensed: reportChooser condensed.
	
	^ TBSMagritteReportWrapper new
		report: theReport ;
		yourself