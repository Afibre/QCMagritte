as yet unclassified
hashPassword: aPasswordString
	^ GRPlatform current secureHashFor: salt, aPasswordString 
	