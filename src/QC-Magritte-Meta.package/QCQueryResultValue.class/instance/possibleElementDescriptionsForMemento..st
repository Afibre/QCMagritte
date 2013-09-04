accessing-magritte
possibleElementDescriptionsForMemento: aMemento
	| curOperation curTargetDescription |
	curOperation := aMemento readUsing: self descriptionOperation.
	curTargetDescription := aMemento readUsing: self descriptionTargetDescription.
	curOperation ifNil: [ ^#() ].
	curTargetDescription ifNil: [ ^#() ].
	^curOperation selectValidDescriptions: curTargetDescription commonClass template magritteDescription children