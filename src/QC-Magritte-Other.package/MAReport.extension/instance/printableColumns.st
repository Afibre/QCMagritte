*QC-Magritte-Other
printableColumns
	^self visibleColumns select: [ :each |
		each isPrintable ]