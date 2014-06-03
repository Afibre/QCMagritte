rendering
renderGroupContent: aList id: aGroupId
	| tmpId tmpList |
	tmpId := groupId.
	tmpList := groupDescriptions.
	[	groupId := aGroupId.
		groupDescriptions := aList.
		html heading
			level: 2;
			with: group.
		html horizontalRule.
		aList do: [ :each | self renderElementInternal: each ] ] ensure: [ 
			groupId := tmpId.
			groupDescriptions := tmpList ]