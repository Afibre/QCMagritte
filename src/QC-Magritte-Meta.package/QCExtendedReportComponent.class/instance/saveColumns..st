actions
saveColumns: anArray 
	self saveReportOptions.
	self queryResultsDescription queryColumns: anArray.
	self queryResultsDescription shownColumns: self shownColumns.
	self rebuild