accessing-settings
showBordered
	^ properties at: #showBordered ifAbsent: [ self defaultShowBordered ]