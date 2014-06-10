running
go
	| chosenReport |
	chosenReport := (self createReportBasedOn: (self call: self reportChooser)).
	
	self call: chosenReport.
	self informSuccess: [ :r | r strong: 'Thanks for looking at my report!' ]