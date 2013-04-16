rendering
renderCurrentGroup
	groupDescriptions ifNotNil: [
		groupId := html nextId.
		html div
			class: 'group';
			class: group;
			id: groupId;
			with: [
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
					groupDescriptions do: [ :each | self renderElementInternal: each ] ] ] ].
	groupId := nil.
	groupDescriptions := nil