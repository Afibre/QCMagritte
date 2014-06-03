*QC-Magritte-Other
first 
	self children ifEmpty: [ ^nil ].
	self children size > 1 ifTrue: [ ^nil ].
	^self children first first.