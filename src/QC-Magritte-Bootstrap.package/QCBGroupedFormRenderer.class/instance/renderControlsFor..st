rendering
renderControlsFor: aDescription
	| tag |
	tag := html tbsColumn
		mediumSize: 10;
		yourself.
	groupId
		ifNil: [
			| id |
			 id := html nextId.
			tag
				id: id;
				with: [ self renderControlsFor: aDescription id: id ] ]
		ifNotNil: [ tag with: [ self renderControlsFor: aDescription id: groupId ] ]