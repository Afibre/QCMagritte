actions
setBatchPageOn: aRow
	self batchPage: ((self cache indexOf: aRow) -1 // self batchSize) +1