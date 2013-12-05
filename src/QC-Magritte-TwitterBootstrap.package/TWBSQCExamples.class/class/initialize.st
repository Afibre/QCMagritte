as yet unclassified
initialize
	| application |
	application := WAAdmin register: self asApplicationAt: 'qc-twitter-bootstrap-examples'.
	application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator	