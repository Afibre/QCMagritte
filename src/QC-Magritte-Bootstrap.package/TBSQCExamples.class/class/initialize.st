as yet unclassified
initialize
	| application |
	application := WAAdmin register: self asApplicationAt: 'qc-bootstrap-examples'.
	application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator	