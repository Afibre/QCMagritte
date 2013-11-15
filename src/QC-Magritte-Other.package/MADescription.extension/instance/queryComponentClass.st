*QC-Magritte-Other
queryComponentClass
	^self propertyAt: #queryComponentClass ifAbsent: [ self componentClass defaultQueryComponentClass ]