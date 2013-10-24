accessing
allExamples
	^TBSBootstrapExample allSubclasses sort: [:a :b | a name <= b name ]