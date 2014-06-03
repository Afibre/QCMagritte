accessing
refreshKeepingIndex
	| batchPage |
	batchPage := self report batchPage.
	self refresh.
	self report batchPage: batchPage