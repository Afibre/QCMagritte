*QC-Magritte-Other
isGroupCollapsed: aGroup
	^(self propertyAt: #collapsedGroups ifAbsent: [ #() ]) includes: aGroup