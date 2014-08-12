rendering
renderGroupContent: aList id: aGroupId
	| tmpId tmpList |
	tmpId := groupId.
	tmpList := groupDescriptions.
	[	groupId := aGroupId.
		groupDescriptions := aList.
		self renderGroupHeadingFor: aGroupId.
		(component isGroupCollapsed: group) ifFalse: [
			html horizontalRule.
			aList do: [ :each | self renderElementInternal: each ] ] ]
	ensure: [ 
		groupId := tmpId.
		groupDescriptions := tmpList ]