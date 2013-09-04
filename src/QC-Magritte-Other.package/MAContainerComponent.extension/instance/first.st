*QC-Magritte-Other
first 
	| anObject |
	self children ifEmpty: [ ^nil ].
	self children size > 1 ifTrue: [ ^nil ].
	"self halt."
	^self children first first.