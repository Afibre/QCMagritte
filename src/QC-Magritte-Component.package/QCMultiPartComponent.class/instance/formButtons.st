decorating
formButtons
	(self magritteDescription label = 'Query Options') ifFalse: [ self halt ].
	^#( #save #cancel )