rendering
renderViewerOn: html
	| columns |
	columns := self report columns
		copyWithout: self commands.
	self hasCommands
		ifTrue: [  self report columns: (columns copyWith: self commands) ]
		ifFalse: [  self report columns: columns ].
	html render: self report