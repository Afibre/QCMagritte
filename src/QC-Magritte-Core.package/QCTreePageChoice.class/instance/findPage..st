accessing
findPage: aComponent 
	(self pages includes: aComponent) ifTrue: [ ^self ].
	self pages do: [ :each |
		(each respondsTo: #findPage:)
			ifTrue: [ (each findPage: aComponent) ifNotNilDo: [ :retVal | ^retVal ] ] ].
	^nil