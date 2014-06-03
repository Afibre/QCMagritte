*QC-Magritte-Other
hasTabs
	^self children contains: [ :each | each isVisible and: [  each tabDisplay and: [ each componentClass notNil ] ] ]