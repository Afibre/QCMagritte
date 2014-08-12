*qc-magritte-renderer
defaultCollapsedGroups
	^self groupsStartCollapsed
		ifTrue: [ (self children collect: [ :each | each group ] thenSelect: [ :each | each notNil ]) asSet ]
		ifFalse: [ #() ]