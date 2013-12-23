random
nextRandom
	^ ((RandomProvider nextInt: 16rFFFFFFFF) asString, '00000000') first: 8