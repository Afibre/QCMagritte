actions
showDetails: anAnnouncement 
	(self currentPage showsObject: anAnnouncement target)
		ifFalse: [ 
			super showDetails: anAnnouncement ]