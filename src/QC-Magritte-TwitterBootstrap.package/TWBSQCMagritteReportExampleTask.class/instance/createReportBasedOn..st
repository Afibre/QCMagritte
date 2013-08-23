private
createReportBasedOn: reportChooser

	| theReport |
	
	theReport := TWBSMagritteReport rows: self demoRows description: TWBSMagritteExampleFormDescription new magritteDescription. 
	theReport
		showBatchFirstLast: reportChooser showBatchFirstLast ;
		showBordered: reportChooser bordered ;
		showStriped: reportChooser striped ;
		showCondensed: reportChooser condensed.
	
	^ TWBSMagritteReportWrapper new
		report: theReport ;
		yourself