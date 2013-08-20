rendering
renderCurrentGroup
	groupDescriptions ifNotNil: [
		groupId := html nextId.
		html div
			class: 'group';
			class: group;
			id: groupId;
			with: [
				self renderGroupContent: groupDescriptions id: groupId ] ].
	groupId := nil.
	groupDescriptions := nil