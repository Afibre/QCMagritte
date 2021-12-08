events
on: anEvent do: aBlock 
	self announcer ifNotNil: [ :ann |
		ann on: anEvent do: aBlock ]