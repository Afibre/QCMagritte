accessing-settings
showCondensed
	^ properties at: #showCondensed ifAbsent: [ self defaultShowCondensed ]