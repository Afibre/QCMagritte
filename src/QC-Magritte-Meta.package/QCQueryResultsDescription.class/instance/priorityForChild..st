testing
priorityForChild: aDescription
	^100 + ((self shownColumns indexOf: aDescription) / (self shownColumns size +1))