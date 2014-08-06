rendering
renderCellContent: anObject on: html
	| item |
	item := self valueFor: anObject.
	item ifNil: [ ^html space ].
	html anchor
		callback: [ self showDetailsFor: anObject ];
		with: [ super renderCellContent: anObject on: html ]