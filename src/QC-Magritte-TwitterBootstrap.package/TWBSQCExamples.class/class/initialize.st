initialization
initialize
	| application |
	application := WAAdmin register: self asApplicationAt: 'twitter-bootstrap-QC-examples'.
	application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator	