private
buildReportCommands
	| retVal |
	retVal := OrderedCollection new.
	self magritteDescription customCommands do: [ :each | 
		each showInParent ifTrue: [ retVal add: each ] ].
	^retVal