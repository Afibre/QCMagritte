magritte-description
descriptionLanguage
	<magritteDescription>
	^MASingleOptionDescription new
		accessor: #language;
		label: 'Language';
		priority: 400;
		options: self allLanguages;
		labels: [ :each | each 
			ifNil: [ '' ]
			ifNotNil: [ each languageName ] ];	" we explicitly do not want to translate the languages, so we set a labels block. "
		comment: 'The language that is used';
		reportColumnClass: QCDescribedColumn;
		yourself