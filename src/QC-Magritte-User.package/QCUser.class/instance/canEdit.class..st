security
canEdit: aRow class: aModelClass 
	self roles do: [ :each | (each canEdit: aRow class: aModelClass) ifTrue: [ ^true ] ].
	(self model hasClassUserRights: aModelClass) ifTrue: [ ^false ].
	aRow hasParent ifTrue: [ ^self canEdit: aRow parent class: aRow parent class ].
	^true