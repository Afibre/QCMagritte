*qc-magritte-renderer
isGroupCollapsed: aGroup
	^(self propertyAt: #collapsedGroups ifAbsentPut: [ self defaultCollapsedGroups ]) includes: aGroup