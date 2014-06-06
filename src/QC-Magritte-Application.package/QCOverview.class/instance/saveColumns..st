actions
saveColumns: anArray
	self saveReportOptions.
	self resultsDescription queryColumns: anArray.
	self resultsDescription shownColumns: self shownColumns.
	self rebuild