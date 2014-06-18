actions
registerForProductionAt: anApplicationName
	| application |
	application := self registerAt: anApplicationName.
	WAAdmin disableDevelopmentTools.
	WAAdmin defaultDispatcher defaultName: anApplicationName.
	^application