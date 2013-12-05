accessing-settings
showHover
	^ properties at: #showHover ifAbsent: [ self defaultShowHover ]