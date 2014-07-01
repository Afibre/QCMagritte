private
buildReport
	| retVal |
	canEdit := self model reportOptions canEdit.
	retVal := super buildReport.
	retVal
		showBatchFirstLast: self model reportOptions showBatchFirstLast ;
		showBordered: self model reportOptions bordered ;
		showStriped: self model reportOptions striped ;
		showCondensed: self model reportOptions condensed;
		batchSize: self model reportOptions rowCount.
		
	^retVal