security
canExportCsv
	^(Smalltalk at: #NeoCSVWriter ifAbsent: [ nil ]) notNil