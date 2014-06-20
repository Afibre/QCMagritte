accessing
savePreference: anArray settings: aReportSettings columns: aColumnList
	| preferences |
	preferences := self reportSettings at: aReportSettings description ifAbsentPut: [ QCReportOptions new ].
	(preferences isDictionary) ifTrue: [
		preferences := self reportSettings at: aReportSettings description put: (QCReportOptions on: preferences) ].
	preferences saveProperties: anArray settings: aReportSettings columns: aColumnList