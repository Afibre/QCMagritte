visiting-description
visitContainer: aContainer
	aContainer commandFormClass = QCCommandFormDecoration
		ifTrue: [ aContainer commandFormClass: QCBCommandFormDecoration ].
	aContainer tabDecorationClass = QCTabDecoration
		ifTrue: [ aContainer tabDecorationClass: QCBTabDecoration ].
	super visitContainer: aContainer.
	builtDescription groupsStartCollapsed: true