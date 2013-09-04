private
createReportBasedOn: reportChooser

	| theReport |
	
	theReport := TWBSQCMagritteReport rows: self demoRows description: TWBSMagritteExampleFormDescription new magritteDescription. 
	theReport
		doubleClickCommand: (QCCommand on: '' condition: nil action: [ :row | self doubleClickRow: row ]);
		showBatchFirstLast: reportChooser showBatchFirstLast ;
		showBordered: reportChooser bordered ;
		showStriped: reportChooser striped ;
		showCondensed: reportChooser condensed.
	
	^ TWBSMagritteReportWrapper new
		report: theReport ;
		yourself