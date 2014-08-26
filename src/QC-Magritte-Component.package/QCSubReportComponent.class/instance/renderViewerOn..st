rendering
renderViewerOn: html
	| columns |
	columns := self report columns
		copyWithout: self commandColumn.
	self report columns: (columns copyWith: self commandColumn).
	html render: self report.
	self parent hasForm
		ifTrue: [ self renderButtonsOn: html.
			html render: self columnChooser ]
		ifFalse: [ html form: [ self renderButtonsOn: html ].
			html form: [ html render: self columnChooser ] ]	
