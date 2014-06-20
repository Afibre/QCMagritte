accessing
saveProperties: anArray settings: aReportSettings columns: aColumnList
	anArray do: [ :each |
		(self descriptionsOptions at: each magritteDescription ifAbsentPut: [ QCDescriptionOptions new ])
			saveProperties: each settings: aReportSettings ].
	self customColumns: aColumnList