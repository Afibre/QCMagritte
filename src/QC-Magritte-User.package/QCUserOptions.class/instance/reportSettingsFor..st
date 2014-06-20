accessing
reportSettingsFor: aDescription 
	^self reportSettings at: aDescription ifAbsent: [ nil ]