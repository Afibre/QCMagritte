accessing
searchPath
	searchPath ifNil: [ ^self target magritteDescription ].
	^ searchPath