rendering
renderViewerOn: html
	| columns |
	columns := self report columns
		copyWithout: self commandColumn.
	self hasCommands
		ifTrue: [  self report columns: (columns copyWith: self commandColumn) ]
		ifFalse: [  self report columns: columns ].
	html render: self report