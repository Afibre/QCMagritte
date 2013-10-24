accessing
tableClass

	^ String streamContents: [:stream |
		stream 
			nextPutAll: 'report'; nextPut: Character space;
			nextPutAll: 'table'.				
		self showBordered 
			ifTrue: [stream nextPut: Character space; nextPutAll: 'table-bordered'].
		self showStriped 
			ifTrue: [stream nextPut: Character space; nextPutAll: 'table-striped' ].
		self showCondensed 
			ifTrue: [stream nextPut: Character space; nextPutAll: 'table-condensed' ].
		self showHover 
			ifTrue: [stream nextPut: Character space; nextPutAll: 'table-hover']].
