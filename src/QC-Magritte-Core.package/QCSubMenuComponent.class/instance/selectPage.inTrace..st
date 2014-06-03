actions
selectPage: aComponent inTrace: aIsInTrace
	(aIsInTrace or: [ rootPage ~= aComponent ]) ifTrue: [ ^self selectPage: aComponent ]