*QC-Magritte-Other
searchStrategy
	"Answer a Visitor that can be used to search a value according to the model described by the receiver."

	^ self propertyAt: #searchStrategy ifAbsent: [ self class defaultSearchStrategy ]