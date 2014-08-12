rendering
renderGroupContent: aList id: aGroupId
	| tmpId tmpList |
	tmpId := groupId.
	tmpList := groupDescriptions.
	[	groupId := aGroupId.
		groupDescriptions := aList.
		html tbsPanel
			beDefault;
			with: [ 
				self renderGroupHeadingFor: aGroupId.
					(component isGroupCollapsed: group) ifFalse: [
					html tbsPanelBody: [ aList do: [ :each | self renderElementInternal: each ] ] ] ] ]
	ensure: [ 
		groupId := tmpId.
		groupDescriptions := tmpList ]