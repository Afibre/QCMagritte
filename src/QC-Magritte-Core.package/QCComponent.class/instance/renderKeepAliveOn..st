rendering
renderKeepAliveOn: canvas
	| cacheTimeout |
	cacheTimeout := self session application cache expiryPolicy configuration at: #cacheTimeout.
	canvas document addLoadScript:
		(canvas jQuery ajax
			callback: [];
			interval: (cacheTimeout - 60) seconds)
