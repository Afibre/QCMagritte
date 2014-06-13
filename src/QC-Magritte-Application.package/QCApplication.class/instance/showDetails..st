actions
showDetails: anAnnouncement 
	| target |
	target := anAnnouncement target.
	(self findPageFor: target) 
		ifNil: [ self newPageFor: target ]
		ifNotNilDo: [ :page | self selectPage: page ]