copying
postCopy
	super postCopy.
	queryColumns := queryColumns copy.
	shownColumns := shownColumns copy