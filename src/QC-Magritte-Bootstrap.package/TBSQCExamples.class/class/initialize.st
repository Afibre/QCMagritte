as yet unclassified
initialize
	"
	TBSQCExamples initialize
	"
	| application |
	application := WAAdmin register: self asApplicationAt: 'qc-bootstrap-examples'.
	application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator	