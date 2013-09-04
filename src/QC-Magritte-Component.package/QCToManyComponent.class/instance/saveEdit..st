actions
saveEdit: aRow
	(self mementoCache at: aRow) commit.
	self cancelEdit: aRow