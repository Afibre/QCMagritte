rendering
renderGroupHeadingFor: aGroupId
	html heading
		level: 3;
		with: [
			| tmp |
			tmp := group.
			html anchor
				callback: [ component setCollapsed: (component isGroupCollapsed: tmp) not for: tmp ];
				with: group ]