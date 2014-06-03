copying
postCopy
	super postCopy.
	self select: self select copy.
	self resultsDescription: self resultsDescription copy