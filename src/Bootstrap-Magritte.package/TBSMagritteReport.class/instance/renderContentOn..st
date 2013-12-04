rendering
renderContentOn: html
	| tag |
	tag := html tbsTable
		id: self ajaxId;
		yourself.
	self showBordered 
		ifTrue: [ tag beBordered ].
	self showStriped 
		ifTrue: [ tag beStriped ].
	self showCondensed 
		ifTrue: [ tag beCondensed ].
	self showHover 
		ifTrue: [ tag beHover ].
	
	tag with: [ self renderTableOn: html ]