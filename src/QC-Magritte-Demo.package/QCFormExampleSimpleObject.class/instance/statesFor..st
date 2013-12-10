accessing-magritte
statesFor: aCountry
	aCountry = 'Nederland' ifTrue: [ ^#( 'Limburg' 'Noord-Brabant' 'Groningen' 'Friesland' 'Drenthe' 'Overijssel' 'Gelderland' 'Flevoland'  'Utrecht' 'Zuid-Holland' 'Noord-Holland' 'Zeeland' ) ].
	aCountry = 'Belgie' ifTrue: [ ^#( 'Antwerpen' 'Limburg' 'Oost-Vlaanderen' 'Vlaams-Brabant' 'West-Vlaanderen' 'Henegouwen' 'Luik' 'Luxemburg' 'Namen' 'Waals-Brabant' ) ].
	^#()
