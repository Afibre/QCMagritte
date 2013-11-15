events
on: anEvent do: aBlock 
	self announcer ifNotNilDo: [ :ann |
		ann on: anEvent do: aBlock ]