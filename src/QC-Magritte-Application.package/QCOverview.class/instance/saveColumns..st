actions
saveColumns: anArray
	self saveReportOptions.
	self userQueryResultsDescription queryColumns: anArray.
	self userQueryResultsDescription shownColumns: self shownColumns.
	self rebuild