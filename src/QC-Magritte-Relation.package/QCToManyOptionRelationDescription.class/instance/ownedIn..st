accessing-properties
ownedIn: aBlock 
	" this is defined in Magritte-Json ... but we want it here too "
	^self propertyAt: #ownedIn put: aBlock