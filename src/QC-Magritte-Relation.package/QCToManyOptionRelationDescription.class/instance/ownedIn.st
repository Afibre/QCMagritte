accessing-properties
ownedIn
	" this is defined in Magritte-Json ... but we want it here too "
	^self propertyAt: #ownedIn ifAbsent: [ #() ]