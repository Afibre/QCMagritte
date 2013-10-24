initialization
initialize
	| application |
	application := WAAdmin register: self asApplicationAt: 'bootstrap-examples'.
	application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator	