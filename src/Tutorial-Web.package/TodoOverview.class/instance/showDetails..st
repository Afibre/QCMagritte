actions
showDetails: anAnnouncement
	(self isShown: anAnnouncement target)
		ifTrue: [ 
			detailsPage := self createPageFor: anAnnouncement target.
			self report setActive: anAnnouncement target ]