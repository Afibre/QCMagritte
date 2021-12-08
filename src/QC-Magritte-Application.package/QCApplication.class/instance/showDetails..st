actions
showDetails: anAnnouncement 
	| target |
	target := anAnnouncement target.
	(self findPageFor: target) 
		ifNil: [ self newPageFor: target ]
		ifNotNil: [ :page | self selectPage: page ]