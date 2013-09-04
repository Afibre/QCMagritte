*QC-Magritte-Other
next: anObject 
	"self halt."
	^self cache after: anObject ifAbsent: [ nil ]