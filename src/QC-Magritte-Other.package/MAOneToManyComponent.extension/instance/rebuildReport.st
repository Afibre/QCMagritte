*QC-Magritte-Other
rebuildReport
	| batchSize |
	batchSize := self report batchSize.
	report := nil.
	self report batchSize: batchSize