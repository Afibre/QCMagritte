rendering
renderGroupHeadingFor: aGroupId
	html tbsPanelHeading: [ 
		html tbsPanelTitle
			level: 3;
			with: [
				| tmp isCollapsed |
				tmp := group.
				isCollapsed := (component isGroupCollapsed: tmp).
				html anchor
					callback: [ component setCollapsed: isCollapsed not for: tmp ];
					with: [ 
						isCollapsed
							ifTrue: [ html html: '&#9655' ]
							ifFalse: [ html html: '&#9661' ].
						html space.
						html text: group ] ] ]