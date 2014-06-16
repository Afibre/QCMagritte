rendering
renderViewerOn: html
	| columns |
	columns := self report columns
		copyWithout: self commands.
	self report columns: (columns copyWith: self commands).
	html render: self report