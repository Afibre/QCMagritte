accessing-magritte
componentFor: aTarget from: aParent
	"can be overridden to support user (rights/preference) based changes"
	(aParent respondsTo: #componentFor:) ifTrue: [ 
		^aParent componentFor: aTarget ] 
	ifFalse: [ ^aTarget asComponent ] 