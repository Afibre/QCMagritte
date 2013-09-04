private
labelForOption: anObject
	self propertyAt: #labels ifPresent: [ :labels |
		labels at: anObject ifPresent: [ :value |
			^ value ] ].
	^anObject displayName