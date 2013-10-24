accessing-settings
showStriped
	^ properties at: #showStriped ifAbsent: [ self defaultShowStriped ]