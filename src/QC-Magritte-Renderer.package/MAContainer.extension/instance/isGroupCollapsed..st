*qc-magritte-renderer
isGroupCollapsed: aGroup
	^(self propertyAt: #collapsedGroups ifAbsent: [ self defaultCollapsedGroups ]) includes: aGroup