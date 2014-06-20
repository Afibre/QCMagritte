actions
showDetails: anAnnouncement 
	(self currentPage isShown: anAnnouncement target)
		ifFalse: [ 
			super showDetails: anAnnouncement ]