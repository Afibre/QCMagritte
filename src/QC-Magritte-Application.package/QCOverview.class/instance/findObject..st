accessing
findObject: aString
	| desc |
	desc := self toManyComponent magritteDescription.
	^self rows detect: [ :item | (item displayName) includesSubstring: aString ] ifNone: [ nil ]