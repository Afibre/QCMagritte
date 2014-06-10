accessing
children
	self hasColumnChooser ifFalse: [ ^super children ].
	^super children with: self columnChooser