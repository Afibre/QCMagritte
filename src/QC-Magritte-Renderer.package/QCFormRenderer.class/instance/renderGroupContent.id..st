rendering
renderGroupContent: aList id: aGroupId
	| tmpId tmpList |
	tmpId := groupId.
	tmpList := groupDescriptions.
	[	groupId := aGroupId.
		groupDescriptions := aList.
		html heading
			level: 3;
			with: [
				| tmp |
				tmp := group.
				html anchor
					callback: [ 
						component setCollapsed: (component isGroupCollapsed: tmp) not for: tmp ];
					with: group ].
		(component isGroupCollapsed: group) ifFalse: [
			html horizontalRule.
			aList do: [ :each | self renderElementInternal: each ] ] ]
	ensure: [ 
		groupId := tmpId.
		groupDescriptions := tmpList ]