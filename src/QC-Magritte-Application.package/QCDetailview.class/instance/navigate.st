as yet unclassified
navigate
	| to | 
	to := self prevPage findObject: self navigationSearchValue .
	to ifNotNil: [  self navigateTo: to ] .