*QC-Magritte-Relation
overviewRenderer
	^self propertyAt: #overviewRenderer ifAbsent: [ self class defaultOverviewRenderer ]