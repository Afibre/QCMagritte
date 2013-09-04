*QC-Magritte-Other
csvData 
	^String streamContents: [ :s |
		| writer |
		writer := NeoCSVWriter on: s.
		self printableColumns do: [ :column | 
			writer writeQuotedField: column label ] separatedBy: [ writer writeSeparator ].
		writer writeEndOfLine.
		self cache
			do: [ :row |
				self printableColumns do: [ :column |
					writer writeQuotedField: (column stringValueFor: row) ] separatedBy: [ writer writeSeparator ] ] 
			separatedBy: [ writer writeEndOfLine ] ]